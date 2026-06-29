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
           var decoded = try? JSONDecoder().decode(UserProfile.self, from: data) {
            decoded.name = KeychainHelper.load(key: "clarity_user_name") ?? ""
            decoded.therapistName = KeychainHelper.load(key: "clarity_therapist_name")
            decoded.notes = KeychainHelper.load(key: "clarity_notes")
            self.profile = decoded
            checkStreakValidity() // Check if the streak was broken since last launch
        } else {
            // If no profile is found, generate and save a fresh one
            let newProfile = UserProfile.makeNew()
            self.profile = newProfile
            saveProfile()
        }
    }

    /// Encodes the current profile state to JSON and writes it to disk.
    func saveProfile() {
        profile.lastModified = Date() // Mark change timing
        KeychainHelper.save(profile.name, key: "clarity_user_name")
        if let therapistName = profile.therapistName {
            KeychainHelper.save(therapistName, key: "clarity_therapist_name")
        } else {
            KeychainHelper.delete(key: "clarity_therapist_name")
        }
        if let notes = profile.notes {
            KeychainHelper.save(notes, key: "clarity_notes")
        } else {
            KeychainHelper.delete(key: "clarity_notes")
        }

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
        profile.name = ""
        profile.avatarImageData = nil
        profile.diagnosisType = nil
        profile.therapistName = ""
        profile.notes = ""
        saveProfile()
    }
}

// MARK: - Keychain Helper
struct KeychainHelper {
    static func save(_ string: String, key: String) {
        guard let data = string.data(using: .utf8) else { return }
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly
        ]
        
        // Delete any existing item first
        SecItemDelete(query as CFDictionary)
        
        // Add new item
        let status = SecItemAdd(query as CFDictionary, nil)
        if status != errSecSuccess {
            print("[KeychainHelper] ERROR saving to Keychain for key \(key): \(status)")
        }
    }
    
    static func load(key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecReturnData as String: kCFBooleanTrue!,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)
        
        if status == errSecSuccess, let data = dataTypeRef as? Data {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
    
    static func delete(key: String) {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key
        ]
        SecItemDelete(query as CFDictionary)
    }
}
