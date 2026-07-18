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
    ///
    /// Goal-orientation framing (Recovery vs Maintenance) and the
    /// expect-fluctuation persistence widening are read live from
    /// TrajectorySettingsStore at generation time — never baked into or
    /// backfilled onto session data or previously generated insights.
    @MainActor
    static func generateInsights(language: AppLanguage, exercises: [Exercise]) -> [Insight] {
        let entries = loadEntries()
        guard entries.count >= minimumSessionCount else { return [] }

        var insights: [Insight] = []

        let goalOrientation = TrajectorySettingsStore.shared.goalOrientation
        let expectFluctuation = TrajectorySettingsStore.shared.expectFluctuation
        let patientName = UserProfileStore.shared.profile.displayName
        // No stored pronoun preference exists anywhere in the app (checked
        // UserProfile/UserProfileStore); defaulting to "them" rather than
        // adding pronoun-collection UI in this prompt.
        let pronounSubject = "them"

        // 1 & 2. Accuracy swings + difficulty stalls per tracked category,
        // from the same 20-attempt rolling window AdaptiveDifficultyStore
        // maintains (first 10 attempts vs most recent 10). Read-only access
        // to AdaptiveDifficultyStore's history — never written here.
        for tracked in TrackedExerciseType.allCases {
            let history = adaptiveHistory(for: tracked.rawValue)
            guard history.count >= windowSize else { continue }

            switch goalOrientation {
            case .recovery:
                // Unchanged from pre-trajectory-framing behavior.
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

            case .maintenance:
                let currentWindow = Array(history.suffix(windowSize))
                let current = classifyShift(currentWindow)
                let currentAcc = accuracy(of: currentWindow)

                // Fluctuation ON: a candidate shift (decline or stability)
                // must be independently detected in two consecutive,
                // non-overlapping evaluation windows before it is promoted
                // to a flagged insight. Disagreement between the two
                // windows — or not having a second window yet — yields no
                // insight at all for this exercise type. That silence is
                // intentional, not a gap to fill.
                var flagged: WindowShift?
                if expectFluctuation {
                    if history.count >= windowSize * 2 {
                        let previousWindow = Array(history.suffix(windowSize * 2).prefix(windowSize))
                        let previous = classifyShift(previousWindow)
                        if current.kind == previous.kind, current.kind != .improvement {
                            flagged = current.kind
                        }
                    }
                } else if current.kind != .improvement {
                    // Fluctuation OFF: same single-window statistic as
                    // Recovery mode, just routed to Maintenance-mode copy.
                    flagged = current.kind
                }

                switch flagged {
                case .decline:
                    insights.append(Insight(
                        id: "maintDecline_\(tracked.rawValue)",
                        headline: maintenanceDeclineHeadline(exerciseType: tracked.displayName, sessionCount: windowSize),
                        explanation: maintenanceDeclineDetail(patientName: patientName) + "\n\n" + maintenanceDisclaimer(patientName: patientName),
                        sfSymbolName: "chart.line.downtrend.xyaxis",
                        score: current.magnitude * 100))
                case .stable:
                    insights.append(Insight(
                        id: "maintStable_\(tracked.rawValue)",
                        headline: maintenanceStabilityHeadline(patientName: patientName, exerciseType: tracked.displayName, sessionCount: windowSize),
                        explanation: maintenanceStabilityDetail(pronounSubject: pronounSubject) + "\n\n" + maintenanceDisclaimer(patientName: patientName),
                        sfSymbolName: "checkmark.seal",
                        score: 8))
                case .improvement, .none:
                    break
                }

                // Stall fallback: unrelated to goal orientation, same signal
                // as Recovery mode, only surfaced when no trajectory-framed
                // insight fired for this tracked type.
                if flagged == nil,
                   currentAcc >= stallAccuracyThreshold,
                   AdaptiveDifficultyStore.shared.effectiveDifficulty(for: tracked.rawValue) == .easy {
                    insights.append(Insight(
                        id: "stall_\(tracked.rawValue)",
                        headline: language.insightStallHeadline(tracked.displayName),
                        explanation: language.insightStallDetail(Int((currentAcc * 100).rounded())),
                        sfSymbolName: "dial.low",
                        score: 14))
                }
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

    // MARK: - Maintenance-Mode Shift Classification

    private enum WindowShift: Equatable {
        case decline
        case stable
        case improvement
    }

    /// Classifies a single evaluation window using the same older-half vs
    /// recent-half swing statistic Recovery mode uses. `magnitude` is the
    /// absolute accuracy delta (0 for `.stable`), used for insight ranking.
    private static func classifyShift(_ window: [Bool]) -> (kind: WindowShift, magnitude: Double) {
        let olderAcc  = accuracy(of: Array(window.prefix(halfWindow)))
        let recentAcc = accuracy(of: Array(window.suffix(halfWindow)))
        if olderAcc - recentAcc >= swingThreshold { return (.decline, olderAcc - recentAcc) }
        if recentAcc - olderAcc >= swingThreshold { return (.improvement, recentAcc - olderAcc) }
        return (.stable, 0)
    }

    // MARK: - Maintenance-Mode Copy
    //
    // Frozen English strings pending licensed-SLP review — do not paraphrase
    // or reword. Localization into other languages is explicitly out of
    // scope until that review completes.

    private static func maintenanceDeclineHeadline(exerciseType: String, sessionCount: Int) -> String {
        "Performance on \(exerciseType) has shifted over the last \(sessionCount) attempts."
    }

    private static func maintenanceDeclineDetail(patientName: String) -> String {
        "This kind of change is worth mentioning at \(patientName)'s next appointment — your clinician can help put it in context."
    }

    private static func maintenanceStabilityHeadline(patientName: String, exerciseType: String, sessionCount: Int) -> String {
        "\(patientName)'s performance on \(exerciseType) has stayed steady over the last \(sessionCount) attempts."
    }

    private static func maintenanceStabilityDetail(pronounSubject: String) -> String {
        "For \(pronounSubject), steady is a good outcome — it means this ability is being maintained."
    }

    private static func maintenanceDisclaimer(patientName: String) -> String {
        "This is not a diagnosis or medical advice. Share this with \(patientName)'s care team if you have questions about what it means."
    }

    /// Picks a launchable exercise of the given logged type in the current language.
    private static func representativeExercise(forTypeKey typeKey: String, in exercises: [Exercise]) -> Exercise? {
        let matching = exercises.filter { ResearchExportManager.string(for: $0.type) == typeKey }
        return matching.first(where: { $0.difficulty == .easy }) ?? matching.first
    }
}
#endif
