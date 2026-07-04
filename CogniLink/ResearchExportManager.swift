import Foundation
import os

/// Builds and manages the anonymous research data export.
/// All methods are static; no instance is ever created.
struct ResearchExportManager {

    static let sessionLogKey  = "clarity_session_log"
    static let maxLogSize     = 500

    // MARK: - Public API

    /// Builds the full anonymous JSON export and returns it as UTF-8 encoded Data.
    /// Returns nil only if JSON serialisation fails (should never happen in practice).
    @MainActor
    static func generateExport() -> Data? {
        print("[ResearchExport] generateExport() started")
        let profile  = UserProfileStore.shared.profile
        let calendar = Calendar.current
        let today    = Date()

        // -- Profile fields --
        let daysUsingApp = calendar.dateComponents([.day], from: profile.startDate, to: today).day ?? 0
        let diagnosis    = profile.diagnosisType?.rawValue ?? "Not specified"
        
        if #available(iOS 14.0, *) {
            let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "com.clarity.app", category: "ResearchExport")
            logger.debug("[ResearchExport] diagnosis=\(diagnosis, privacy: .private), daysUsingApp=\(daysUsingApp, privacy: .public)")
        }

        // -- Exercise activity --
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays")
                    as? [String: Int] ?? [:]
        let totalSessions       = plays.values.reduce(0, +)
        let totalItemsAttempted = UserProgressStore.shared.getTotalAttempts()
        let exercisesEverCompleted = ProgressTracker.getCompletedExercises().sorted()
        print("[ResearchExport] totalSessions=\(totalSessions), exercises=\(exercisesEverCompleted.count)")

        // -- Session dates as day-offsets (no real calendar dates exposed) --
        let sessionDates: [Int] = profile.completionHistory
            .compactMap { calendar.dateComponents([.day], from: profile.startDate, to: $0).day }
            .sorted()

        // -- Session log: re-encode through JSON to guarantee clean plist→JSON types --
        let rawLog = UserDefaults.standard.array(forKey: sessionLogKey) ?? []
        let sessionLog: [[String: Any]]
        if let jsonData = try? JSONSerialization.data(withJSONObject: rawLog),
           let cleaned  = try? JSONSerialization.jsonObject(with: jsonData) as? [[String: Any]] {
            sessionLog = cleaned
        } else {
            sessionLog = []
        }
        print("[ResearchExport] sessionLog entries=\(sessionLog.count)")

        // -- Export date & app version --
        let dateFormatter        = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let exportDateString     = dateFormatter.string(from: today)
        let appVersion           = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
                                   as? String ?? "1.0"

        // -- Accuracy stats across all logged sessions --
        let logTotalAttempts   = sessionLog.compactMap { $0["totalAttempts"]   as? Int }.reduce(0, +)
        let logWrongAttempts   = sessionLog.compactMap { $0["wrongAttempts"]   as? Int }.reduce(0, +)
        let logFirstTryCorrect = sessionLog.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        let logTotalItems      = sessionLog.compactMap { $0["total"]           as? Int }.reduce(0, +)
        let avgFirstTryAccuracy: Double = logTotalItems > 0
            ? Double(logFirstTryCorrect) / Double(logTotalItems)
            : 0.0

        // -- Assemble top-level dict --
        let exportDict: [String: Any] = [
            "exportDate": exportDateString,
            "appVersion": appVersion,
            "anonymous":  true,

            "profile": [
                "diagnosisCategory":      diagnosis,
                "daysUsingApp":           daysUsingApp,
                "currentStreak":          profile.currentStreak,
                "longestStreak":          profile.longestStreak,
                "totalSessionsCompleted": totalSessions,
                "totalItemsAttempted":    totalItemsAttempted
            ],

            "exerciseActivity": [
                "exercisesEverCompleted": exercisesEverCompleted,
                "playCountByExercise":    plays
            ],

            "sessionDates": sessionDates,
            "sessionLog":   sessionLog,

            "accuracyStats": [
                "averageFirstTryAccuracy": avgFirstTryAccuracy,
                "totalWrongAttempts":      logWrongAttempts,
                "totalAttempts":           logTotalAttempts
            ]
        ]

        guard JSONSerialization.isValidJSONObject(exportDict) else {
            print("[ResearchExport] ERROR: exportDict failed isValidJSONObject check")
            return nil
        }

        do {
            let data = try JSONSerialization.data(
                withJSONObject: exportDict,
                options: [.prettyPrinted, .sortedKeys]
            )
            print("[ResearchExport] JSON serialised successfully — \(data.count) bytes")
            return data
        } catch {
            print("[ResearchExport] ERROR: JSONSerialization failed: \(error)")
            return nil
        }
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
        case .comparison:         return "comparison"
        case .yesNo:              return "yesNo"
        case .factOrOpinion:      return "factOrOpinion"
        case .openEnded:          return "openEnded"
        case .sentenceCompletion: return "sentenceCompletion"
        case .homonym:            return "homonym"
        case .matching:           return "matching"
        case .sequencing:         return "sequencing"
        case .analogyChoice:      return "analogyChoice"
        case .minimalPairs:       return "minimalPairs"
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
        case .english:    return "english"
        case .spanish:    return "spanish"
        case .hindi:      return "hindi"
        case .gujarati:   return "gujarati"
        case .chinese:    return "chinese"
        case .farsi:      return "farsi"
        case .korean:     return "korean"
        case .vietnamese: return "vietnamese"
        case .arabic:     return "arabic"
        case .portuguese: return "portuguese"
        case .tagalog:    return "tagalog"
        case .punjabi:    return "punjabi"
        case .armenian:   return "armenian"
        case .japanese:   return "japanese"
        case .french:     return "french"
        case .amharic:    return "amharic"
        }
    }
}
