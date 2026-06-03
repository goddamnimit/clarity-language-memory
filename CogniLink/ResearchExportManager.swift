import Foundation

/// Builds and manages the anonymous research data export.
/// All methods are static; no instance is ever created.
struct ResearchExportManager {

    static let sessionLogKey  = "clarity_session_log"
    static let maxLogSize     = 500

    // MARK: - Public API

    /// Builds the full anonymous JSON export and returns it as UTF-8 encoded Data.
    /// Returns nil only if JSON serialisation fails (should never happen in practice).
    static func generateExport() -> Data? {
        let profile  = UserProfileStore.shared.profile
        let calendar = Calendar.current
        let today    = Date()

        // -- Profile fields --
        let daysUsingApp = calendar.dateComponents([.day], from: profile.startDate, to: today).day ?? 0
        let diagnosis    = profile.diagnosisType?.rawValue ?? "Not specified"

        // -- Exercise activity --
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays")
                    as? [String: Int] ?? [:]
        let totalSessions      = plays.values.reduce(0, +)
        let totalItemsAttempted = UserProgressStore.shared.getTotalAttempts()
        let exercisesEverCompleted = ProgressTracker.getCompletedExercises().sorted()

        // -- Session dates as day-offsets (no real calendar dates exposed) --
        let sessionDates: [Int] = profile.completionHistory
            .compactMap { calendar.dateComponents([.day], from: profile.startDate, to: $0).day }
            .sorted()

        // -- Session log --
        let sessionLog = UserDefaults.standard.array(forKey: sessionLogKey)
                         as? [[String: Any]] ?? []

        // -- Export date & app version --
        let dateFormatter        = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let exportDateString     = dateFormatter.string(from: today)
        let appVersion           = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
                                   as? String ?? "1.0"

        // -- Assemble top-level dict --
        let exportDict: [String: Any] = [
            "exportDate": exportDateString,
            "appVersion": appVersion,
            "anonymous":  true,

            "profile": [
                "diagnosisCategory":       diagnosis,
                "daysUsingApp":            daysUsingApp,
                "currentStreak":           profile.currentStreak,
                "longestStreak":           profile.longestStreak,
                "totalSessionsCompleted":  totalSessions,
                "totalItemsAttempted":     totalItemsAttempted
            ],

            "exerciseActivity": [
                "exercisesEverCompleted": exercisesEverCompleted,
                "playCountByExercise":    plays
            ],

            "sessionDates": sessionDates,
            "sessionLog":   sessionLog
        ]

        guard JSONSerialization.isValidJSONObject(exportDict) else { return nil }
        return try? JSONSerialization.data(
            withJSONObject: exportDict,
            options: [.prettyPrinted, .sortedKeys]
        )
    }

    /// Appends a session record to the log, capping at maxLogSize (drops oldest when over limit).
    static func appendSessionRecord(_ record: [String: Any]) {
        var log = UserDefaults.standard.array(forKey: sessionLogKey)
                  as? [[String: Any]] ?? []
        log.append(record)
        if log.count > maxLogSize {
            log = Array(log.suffix(maxLogSize))
        }
        UserDefaults.standard.set(log, forKey: sessionLogKey)
    }

    // MARK: - Enum → String helpers (used by ExerciseContainerView when logging)

    static func string(for section: AppSection) -> String {
        switch section {
        case .language:        return "language"
        case .cognition:       return "cognition"
        case .functionalSkills: return "functionalSkills"
        }
    }

    static func string(for type: ExerciseType) -> String {
        switch type {
        case .categoryCrossOut:   return "categoryCrossOut"
        case .multipleChoice:     return "multipleChoice"
        case .yesNo:              return "yesNo"
        case .factOrOpinion:      return "factOrOpinion"
        case .openEnded:          return "openEnded"
        case .sentenceCompletion: return "sentenceCompletion"
        case .homonym:            return "homonym"
        case .matching:           return "matching"
        case .sequencing:         return "sequencing"
        case .analogyChoice:      return "analogyChoice"
        }
    }

    static func string(for difficulty: Difficulty) -> String {
        switch difficulty {
        case .easy:   return "easy"
        case .medium: return "medium"
        case .hard:   return "hard"
        }
    }

    static func string(for language: AppLanguage) -> String {
        switch language {
        case .english:  return "english"
        case .spanish:  return "spanish"
        case .hindi:    return "hindi"
        case .gujarati: return "gujarati"
        }
    }
}
