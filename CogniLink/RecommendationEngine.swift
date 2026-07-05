import Foundation

/// A single personalized practice suggestion surfaced on the Home tab.
struct Recommendation: Identifiable, Equatable {
    let id: String
    let headline: String
    let explanation: String
    let sfSymbolName: String
    let targetExerciseTitle: String?
    let targetSection: AppSection?
}

/// Analyzes the local session log and produces up to 3 prioritized practice
/// recommendations. Pure Swift — no SwiftUI.
struct RecommendationEngine {

    private struct SessionEntry {
        let dayOffset: Int
        let section: String
        let exerciseType: String
        let difficulty: String
        let firstTryCorrect: Int
        let total: Int
    }

    static let staleExerciseDays = 5
    static let staleSectionDays = 7
    static let accuracyDropThreshold = 0.15
    static let stallSessionCount = 10

    /// Computes recommendations for the current language.
    /// `exercises` is the full pool for the active language (used to resolve
    /// exercise-type keys to localized, launchable exercise titles).
    @MainActor
    static func generateRecommendations(language: AppLanguage, exercises: [Exercise]) -> [Recommendation] {
        let entries = loadEntries()
        guard !entries.isEmpty else { return [] }

        let startDate = UserProfileStore.shared.profile.startDate
        let todayOffset = Calendar.current.dateComponents([.day], from: startDate, to: Date()).day ?? 0

        var accuracyDropRecs: [Recommendation] = []
        var staleExerciseRecs: [Recommendation] = []
        var sectionRecs: [Recommendation] = []
        var challengeRecs: [Recommendation] = []

        let byType = Dictionary(grouping: entries, by: { $0.exerciseType })

        for (typeKey, typeEntries) in byType.sorted(by: { $0.key < $1.key }) {
            guard let exercise = representativeExercise(forTypeKey: typeKey, in: exercises) else { continue }

            // 2. Accuracy trend: last 5 sessions vs previous 5, drop of 15%+
            if typeEntries.count >= 10 {
                let recent = Array(typeEntries.suffix(5))
                let previous = Array(typeEntries.suffix(10).prefix(5))
                if let recentAcc = accuracy(of: recent), let previousAcc = accuracy(of: previous),
                   previousAcc - recentAcc >= accuracyDropThreshold {
                    accuracyDropRecs.append(Recommendation(
                        id: "drop_\(typeKey)",
                        headline: language.recNeedsAttentionHeadline(exercise.title),
                        explanation: language.recAccuracyDroppedExplanation,
                        sfSymbolName: "chart.line.downtrend.xyaxis",
                        targetExerciseTitle: exercise.title,
                        targetSection: exercise.section))
                    continue
                }
            }

            // 1. Not practiced in 5+ days
            if let lastDay = typeEntries.map({ $0.dayOffset }).max(),
               todayOffset - lastDay >= staleExerciseDays {
                staleExerciseRecs.append(Recommendation(
                    id: "stale_\(typeKey)",
                    headline: language.recBackToHeadline(exercise.title),
                    explanation: language.recDaysSinceExplanation(todayOffset - lastDay),
                    sfSymbolName: "clock.arrow.circlepath",
                    targetExerciseTitle: exercise.title,
                    targetSection: exercise.section))
                continue
            }

            // 3. Adaptive stall: 10+ consecutive easy sessions, high accuracy, still easy
            if isAdaptiveType(typeKey) {
                let lastTen = Array(typeEntries.suffix(stallSessionCount))
                if lastTen.count >= stallSessionCount,
                   lastTen.allSatisfy({ $0.difficulty == "easy" }),
                   let acc = accuracy(of: lastTen), acc >= 0.8,
                   AdaptiveDifficultyStore.shared.effectiveDifficulty(for: adaptiveId(for: typeKey) ?? typeKey) == .easy {
                    challengeRecs.append(Recommendation(
                        id: "challenge_\(typeKey)",
                        headline: language.recChallengeHeadline,
                        explanation: language.recChallengeExplanation(exercise.title),
                        sfSymbolName: "arrow.up.forward.circle",
                        targetExerciseTitle: exercise.title,
                        targetSection: exercise.section))
                }
            }
        }

        // 4. Underused sections: entire section not practiced in 7+ days
        for (sectionKey, section) in [("language", AppSection.language),
                                      ("cognition", AppSection.cognition),
                                      ("functionalSkills", AppSection.functionalSkills)] {
            let sectionEntries = entries.filter { $0.section == sectionKey }
            let lastDay = sectionEntries.map { $0.dayOffset }.max() ?? -staleSectionDays
            if todayOffset - lastDay >= staleSectionDays {
                sectionRecs.append(Recommendation(
                    id: "section_\(sectionKey)",
                    headline: language.recTrySomethingNewHeadline,
                    explanation: language.recUntouchedSectionExplanation(language.recSectionName(section)),
                    sfSymbolName: "sparkles",
                    targetExerciseTitle: nil,
                    targetSection: section))
            }
        }

        // Prioritize: declining accuracy > stale exercise > untouched section > challenge.
        // Deduplicate by target exercise so one exercise never fills two cards.
        var seenTargets = Set<String>()
        var result: [Recommendation] = []
        for rec in accuracyDropRecs + staleExerciseRecs + sectionRecs + challengeRecs {
            if let target = rec.targetExerciseTitle {
                guard seenTargets.insert(target).inserted else { continue }
            }
            result.append(rec)
            if result.count == 3 { break }
        }
        return result
    }

    // MARK: - Helpers

    private static func loadEntries() -> [SessionEntry] {
        let raw = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) as? [[String: Any]] ?? []
        return raw.compactMap { dict in
            guard let dayOffset = dict["dayOffset"] as? Int,
                  let section = dict["section"] as? String,
                  let type = dict["exerciseType"] as? String,
                  let total = dict["total"] as? Int else { return nil }
            return SessionEntry(
                dayOffset: dayOffset,
                section: section,
                exerciseType: type,
                difficulty: dict["difficulty"] as? String ?? "easy",
                firstTryCorrect: dict["firstTryCorrect"] as? Int ?? 0,
                total: total)
        }
    }

    private static func accuracy(of entries: [SessionEntry]) -> Double? {
        let total = entries.reduce(0) { $0 + $1.total }
        guard total > 0 else { return nil }
        let correct = entries.reduce(0) { $0 + $1.firstTryCorrect }
        return Double(correct) / Double(total)
    }

    /// Exercise types with adaptive difficulty tracking (see AdaptiveDifficultyStore).
    private static func isAdaptiveType(_ typeKey: String) -> Bool {
        adaptiveId(for: typeKey) != nil
    }

    private static func adaptiveId(for typeKey: String) -> String? {
        switch typeKey {
        case "homonym":            return "homonym"
        case "analogyChoice":      return "analogyChoice"
        case "sequencing":         return "sequencing"
        case "sentenceCompletion": return "sentencecompletion"
        default:                   return nil
        }
    }

    /// Picks a launchable exercise of the given logged type in the current language.
    private static func representativeExercise(forTypeKey typeKey: String, in exercises: [Exercise]) -> Exercise? {
        let matching = exercises.filter { ResearchExportManager.string(for: $0.type) == typeKey }
        // Prefer easy variants so the re-entry point is gentle.
        return matching.first(where: { $0.difficulty == .easy }) ?? matching.first
    }
}
