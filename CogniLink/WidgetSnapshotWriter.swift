#if os(iOS)
import Foundation
import WidgetKit

/// Builds the widget's data snapshot from the live app state and publishes it
/// to the shared App Group container, then asks WidgetKit to reload timelines.
/// iOS-only: WidgetKit and the Home Screen widget do not exist on tvOS.
extension Notification.Name {
    /// Posted by ContentView when a clarity://exercise deep link arrives;
    /// HomeView listens and launches the exercise.
    static let clarityOpenExerciseDeepLink = Notification.Name("clarityOpenExerciseDeepLink")
}

enum WidgetSnapshotWriter {

    /// Stable string keys for AppSection, shared with the deep-link URL format.
    static func key(for section: AppSection) -> String {
        switch section {
        case .language:         return "language"
        case .cognition:        return "cognition"
        case .functionalSkills: return "functionalSkills"
        }
    }

    static func section(forKey key: String) -> AppSection? {
        switch key {
        case "language":         return .language
        case "cognition":        return .cognition
        case "functionalSkills": return .functionalSkills
        default:                 return nil
        }
    }

    @MainActor
    static func refresh() {
        let languageManager = LanguageManager.shared
        let pool = languageManager.exercisesForSection(.language) +
                   languageManager.exercisesForSection(.cognition) +
                   languageManager.exercisesForSection(.functionalSkills)
        guard !pool.isEmpty else { return }

        let recommendations = RecommendationEngine.generateRecommendations(
            language: languageManager.currentLanguage, exercises: pool)

        let title: String
        let section: AppSection
        let headline: String
        if let top = recommendations.first,
           let targetTitle = top.targetExerciseTitle,
           let exercise = pool.first(where: { $0.title == targetTitle }) {
            title = exercise.title
            section = exercise.section
            headline = top.headline
        } else {
            // No personalized recommendation yet: pick deterministically by
            // day of year so the widget always shows a launchable exercise.
            let dayOfYear = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1
            let exercise = pool[(dayOfYear - 1) % pool.count]
            title = exercise.title
            section = exercise.section
            headline = recommendations.first?.headline ?? "Today's exercise"
        }

        let snapshot = WidgetSnapshot(
            currentStreak: UserProfileStore.shared.profile.currentStreak,
            recommendedTitle: title,
            recommendedSection: key(for: section),
            recommendedHeadline: headline,
            weeklyGoal: WeeklyGoalStore.goal,
            sessionsThisWeek: WeeklyGoalStore.sessionsThisWeek(),
            lastUpdated: Date())

        guard let data = try? JSONEncoder().encode(snapshot) else { return }
        UserDefaults(suiteName: WidgetSnapshot.appGroupID)?.set(data, forKey: WidgetSnapshot.storageKey)
        WidgetCenter.shared.reloadAllTimelines()
    }
}
#endif
