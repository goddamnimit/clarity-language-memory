#if os(iOS)
import Foundation

/// A single plain-language observation surfaced in Caregiver Mode.
struct Insight: Identifiable, Equatable {
    let id: String
    let headline: String
    let explanation: String
    let sfSymbolName: String
    /// Relative significance used for ranking (bigger swings / longer gaps first).
    let score: Double
}

/// Analyzes the local session log and the adaptive-difficulty rolling windows
/// to produce up to 5 prioritized caregiver insights. Pure Swift — no SwiftUI.
/// Read-only: consumes data already collected by ExerciseContainerView and
/// AdaptiveDifficultyStore; creates no new storage.
struct InsightEngine {

    private struct SessionEntry {
        let dayOffset: Int
        let exerciseType: String
        let difficulty: String
        let firstTryCorrect: Int
        let total: Int
    }

    static let minimumSessionCount = 10
    static let maxInsights = 5
    /// Same rolling window AdaptiveDifficultyStore caps history at.
    static let windowSize = 20
    static let halfWindow = 10
    static let swingThreshold = 0.15
    static let gapDaysThreshold = 7
    static let stallAccuracyThreshold = 0.75

    /// Computes insights for the current language.
    /// `exercises` is the full pool for the active language (used to resolve
    /// logged exercise-type keys to localized exercise titles), mirroring
    /// RecommendationEngine.generateRecommendations.
    @MainActor
    static func generateInsights(language: AppLanguage, exercises: [Exercise]) -> [Insight] {
        let entries = loadEntries()
        guard entries.count >= minimumSessionCount else { return [] }

        var insights: [Insight] = []

        // 1 & 2. Accuracy swings + difficulty stalls per tracked category,
        // from the same 20-attempt rolling window AdaptiveDifficultyStore
        // maintains (first 10 attempts vs most recent 10).
        for tracked in TrackedExerciseType.allCases {
            let history = adaptiveHistory(for: tracked.rawValue)
            guard history.count >= windowSize else { continue }

            let window = Array(history.suffix(windowSize))
            let olderAcc  = accuracy(of: Array(window.prefix(halfWindow)))
            let recentAcc = accuracy(of: Array(window.suffix(halfWindow)))
            let windowAcc = accuracy(of: window)

            let olderPct  = Int((olderAcc * 100).rounded())
            let recentPct = Int((recentAcc * 100).rounded())
            var hasSwing = false

            if olderAcc - recentAcc >= swingThreshold {
                hasSwing = true
                insights.append(Insight(
                    id: "drop_\(tracked.rawValue)",
                    headline: language.insightDropHeadline(tracked.displayName),
                    explanation: language.insightDropDetail(from: olderPct, to: recentPct),
                    sfSymbolName: "chart.line.downtrend.xyaxis",
                    score: (olderAcc - recentAcc) * 100))
            } else if recentAcc - olderAcc >= swingThreshold {
                hasSwing = true
                insights.append(Insight(
                    id: "improve_\(tracked.rawValue)",
                    headline: language.insightImproveHeadline(tracked.displayName),
                    explanation: language.insightImproveDetail(from: olderPct, to: recentPct),
                    sfSymbolName: "chart.line.uptrend.xyaxis",
                    score: (recentAcc - olderAcc) * 100 * 0.8))
            }

            // Stall: consistently accurate across the full window yet still at
            // Easy — same signal RecommendationEngine's challenge card uses.
            if !hasSwing,
               windowAcc >= stallAccuracyThreshold,
               AdaptiveDifficultyStore.shared.effectiveDifficulty(for: tracked.rawValue) == .easy {
                insights.append(Insight(
                    id: "stall_\(tracked.rawValue)",
                    headline: language.insightStallHeadline(tracked.displayName),
                    explanation: language.insightStallDetail(Int((windowAcc * 100).rounded())),
                    sfSymbolName: "dial.low",
                    score: 14))
            }
        }

        // 3. Practice gaps per logged exercise type (session log has the
        // day-offset signal the adaptive window lacks).
        let startDate = UserProfileStore.shared.profile.startDate
        let todayOffset = Calendar.current.dateComponents([.day], from: startDate, to: Date()).day ?? 0
        let byType = Dictionary(grouping: entries, by: { $0.exerciseType })

        for (typeKey, typeEntries) in byType.sorted(by: { $0.key < $1.key }) {
            guard let exercise = representativeExercise(forTypeKey: typeKey, in: exercises),
                  let lastDay = typeEntries.map({ $0.dayOffset }).max() else { continue }
            let gapDays = todayOffset - lastDay
            if gapDays >= gapDaysThreshold {
                insights.append(Insight(
                    id: "gap_\(typeKey)",
                    headline: language.insightGapHeadline(exercise.title),
                    explanation: language.insightGapDetail(gapDays),
                    sfSymbolName: "clock.arrow.circlepath",
                    score: Double(gapDays) * 1.2))
            }
        }

        return Array(insights.sorted { $0.score > $1.score }.prefix(maxInsights))
    }

    /// True once the log has enough sessions for insights to be meaningful.
    static var hasEnoughData: Bool {
        (UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) ?? []).count >= minimumSessionCount
    }

    // MARK: - Helpers

    private static func loadEntries() -> [SessionEntry] {
        let raw = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) as? [[String: Any]] ?? []
        return raw.compactMap { dict in
            guard let dayOffset = dict["dayOffset"] as? Int,
                  let type = dict["exerciseType"] as? String,
                  let total = dict["total"] as? Int else { return nil }
            return SessionEntry(
                dayOffset: dayOffset,
                exerciseType: type,
                difficulty: dict["difficulty"] as? String ?? "easy",
                firstTryCorrect: dict["firstTryCorrect"] as? Int ?? 0,
                total: total)
        }
    }

    /// Reads the rolling attempt window AdaptiveDifficultyStore persists per
    /// tracked category (read-only; same key it writes).
    private static func adaptiveHistory(for trackedId: String) -> [Bool] {
        UserDefaults.standard.array(forKey: "clarity_adaptive_history_\(trackedId)") as? [Bool] ?? []
    }

    private static func accuracy(of window: [Bool]) -> Double {
        guard !window.isEmpty else { return 0 }
        return Double(window.filter { $0 }.count) / Double(window.count)
    }

    /// Picks a launchable exercise of the given logged type in the current language.
    private static func representativeExercise(forTypeKey typeKey: String, in exercises: [Exercise]) -> Exercise? {
        let matching = exercises.filter { ResearchExportManager.string(for: $0.type) == typeKey }
        return matching.first(where: { $0.difficulty == .easy }) ?? matching.first
    }
}
#endif
