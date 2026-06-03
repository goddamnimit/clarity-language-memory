import Foundation
import Combine

// CLOUD MIGRATION: To add cloud sync, replace the UserDefaults
// calls in saveProfile() and the init loader with your preferred
// backend (Firebase, Supabase, CloudKit). The UserProfile struct
// is already Codable and ready to serialize.

/// An ObservableObject managing local persistence, metadata modifications, and streak calculation rules.
@MainActor
class UserProfileStore: ObservableObject {
    /// Global shared instance for application-wide access.
    static let shared = UserProfileStore()

    @Published var profile: UserProfile

    private let userDefaultsKey = "userProfile"

    private init() {
        // Attempt to load an existing profile from local device memory
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
           let decoded = try? JSONDecoder().decode(UserProfile.self, from: data) {
            self.profile = decoded
            checkStreakValidity() // Check if the streak was broken since last launch
        } else {
            // If no profile is found, generate and save a fresh one
            let newProfile = UserProfile.makeNew()
            self.profile = newProfile
            
            if let encoded = try? JSONEncoder().encode(newProfile) {
                UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
            }
        }
    }

    /// Encodes the current profile state to JSON and writes it to disk.
    func saveProfile() {
        profile.lastModified = Date() // Mark change timing
        if let encoded = try? JSONEncoder().encode(profile) {
            UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
        }
    }

    // MARK: - Streak & Progress Logging Logic (NEW)

    /// Logs an exercise session completion, updating consecutive day streaks.
    func recordCompletion(on date: Date = Date()) {
        let calendar = Calendar.current
        
        // 1. Prevent double-counting: if they already completed an exercise today, simply log the timestamp
        if let lastActive = profile.lastActiveDate, calendar.isDate(lastActive, inSameDayAs: date) {
            profile.completionHistory.append(date)
            saveProfile()
            return
        }
        
        // 2. Evaluate consecutive day continuity
        if let lastActive = profile.lastActiveDate {
            if calendar.isDateInYesterday(lastActive) {
                // Practiced yesterday: increment current streak
                profile.currentStreak += 1
            } else {
                // Missed yesterday: reset active streak to 1
                profile.currentStreak = 1
            }
        } else {
            // First ever completion logged
            profile.currentStreak = 1
        }
        
        // 3. Update all-time highest record
        if profile.currentStreak > profile.longestStreak {
            profile.longestStreak = profile.currentStreak
        }
        
        profile.lastActiveDate = date
        profile.completionHistory.append(date)
        saveProfile()
    }

    /// Verifies if the active streak is still valid or if the user missed yesterday's practice window.
    func checkStreakValidity() {
        let calendar = Calendar.current
        guard let lastActive = profile.lastActiveDate else { return }
        
        // If the last activity was neither today nor yesterday, the consecutive streak is broken
        if !calendar.isDateInToday(lastActive) && !calendar.isDateInYesterday(lastActive) {
            profile.currentStreak = 0
            saveProfile()
        }
    }

    // MARK: - Profile Update Methods

    func updateName(_ name: String) {
        profile.name = name
        saveProfile()
    }

    func updateDiagnosis(_ type: DiagnosisType?) {
        profile.diagnosisType = type
        saveProfile()
    }

    func updateTherapistName(_ name: String) {
        profile.therapistName = name
        saveProfile()
    }

    func updateNotes(_ notes: String) {
        profile.notes = notes
        saveProfile()
    }

    func updateAvatar(_ imageData: Data?) {
        profile.avatarImageData = imageData
        saveProfile()
    }

    func resetProfile() {
        let freshProfile = UserProfile.makeNew()
        self.profile = freshProfile
        saveProfile()

        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "CogniLink_ExercisePlays")
        defaults.removeObject(forKey: "CogniLink_AttemptedTasksCount")
        ProgressTracker.resetAllProgress()
        defaults.removeObject(forKey: "clarity_session_log")

        let allKeys = defaults.dictionaryRepresentation().keys
        allKeys.filter { $0.hasPrefix("clarity_recent_") }
               .forEach { defaults.removeObject(forKey: $0) }
    }
}
