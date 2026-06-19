import Foundation

/// A helper class to save and load completed exercises using the device's local storage (UserDefaults).
class ProgressTracker {
    private static let completedKey = "CogniLink_CompletedExercises"

    /// Marks an exercise title as completed.
    static func markAsCompleted(exerciseTitle: String) {
        var completed = getCompletedExercises()
        if !completed.contains(exerciseTitle) {
            completed.append(exerciseTitle)
            UserDefaults.standard.set(completed, forKey: completedKey)
        }
    }

    /// Retrieves the list of all completed exercise titles.
    static func getCompletedExercises() -> [String] {
        return UserDefaults.standard.stringArray(forKey: completedKey) ?? []
    }

    /// Clears all progress records (useful for testing or resetting).
    static func resetAllProgress() {
        UserDefaults.standard.removeObject(forKey: completedKey)
    }
}
