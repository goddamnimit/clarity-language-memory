import SwiftUI

/// Represents a reward badge that the user can unlock through progress.
struct Badge: Identifiable, Equatable {
    let id: String                  // Unique identifier for program logic
    let title: String               // Friendly display name
    let description: String         // Detail of what the badge represents
    let iconName: String            // SF Symbol name
    let color: Color                // Accent color for the badge
    let isUnlocked: Bool            // Calculated current status
    let requirementText: String     // Instructions on how to earn the badge
}

/// Dynamic calculations engine that evaluates user statistics on-the-fly to award badges.
class BadgeManager {
    
    /// Evaluates stored progress lists and returns the active checklist of locked and unlocked badges.
    static func evaluateBadges() -> [Badge] {
        let completedList = ProgressTracker.getCompletedExercises()
        
        // Fetch run count parameters
        let playedDict = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        let totalPlays = playedDict.values.reduce(0, +)
        let longestStreak = UserProfileStore.shared.profile.longestStreak
        
        // Map category completed quantities
        let languageCompletedCount = LanguageExerciseData.allExercises.filter { completedList.contains($0.title) }.count
        let cognitionCompletedCount = CognitionExerciseData.allExercises.filter { completedList.contains($0.title) }.count
        let functionalCompletedCount = FunctionalSkillsExerciseData.allExercises.filter { completedList.contains($0.title) }.count
        
        return [
            Badge(
                id: "first_steps",
                title: "First Steps",
                description: "You completed your first practice activity!",
                iconName: "figure.walk",
                color: .blue,
                isUnlocked: !completedList.isEmpty,
                requirementText: "Complete 1 practice exercise."
            ),
            Badge(
                id: "streak_3",
                title: "Streak Starter",
                description: "You practiced for 3 consecutive days!",
                iconName: "bolt.fill",
                color: .orange,
                isUnlocked: longestStreak >= 3,
                requirementText: "Reach a 3-day consecutive practice streak."
            ),
            Badge(
                id: "streak_7",
                title: "Weekly Habit",
                description: "You maintained a practice streak for a full week!",
                iconName: "calendar.badge.checkmark",
                color: .red,
                isUnlocked: longestStreak >= 7,
                requirementText: "Reach a 7-day consecutive practice streak."
            ),
            Badge(
                id: "lang_champ",
                title: "Language Star",
                description: "You completed multiple Language exercises!",
                iconName: "text.bubble.fill",
                color: AppTheme.languageColor,
                isUnlocked: languageCompletedCount >= 3,
                requirementText: "Complete 3 different Language exercises."
            ),
            Badge(
                id: "cog_champ",
                title: "Logic Master",
                description: "You demonstrated great focus in Cognition exercises!",
                iconName: "brain.head.profile",
                color: AppTheme.cognitionColor,
                isUnlocked: cognitionCompletedCount >= 3,
                requirementText: "Complete 3 different Cognition exercises."
            ),
            Badge(
                id: "func_champ",
                title: "Daily Hero",
                description: "You successfully completed Functional Skills exercises!",
                iconName: "house.fill",
                color: AppTheme.functionalColor,
                isUnlocked: functionalCompletedCount >= 2,
                requirementText: "Complete 2 different Functional Skills exercises."
            ),
            Badge(
                id: "dedicated",
                title: "Dedicated Mind",
                description: "You completed many practice runs!",
                iconName: "medal.fill",
                color: .yellow,
                isUnlocked: totalPlays >= 15,
                requirementText: "Complete a total of 15 practice runs."
            )
        ]
    }
}

