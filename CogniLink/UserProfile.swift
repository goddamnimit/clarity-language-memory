import Foundation

/// A representation of the user's personal details, therapy context, and streak milestones.
struct UserProfile: Codable, Identifiable, Equatable {
    var id: UUID
    var name: String
    var avatarImageData: Data?      // Stored as raw Data for easy JSON serialization
    var startDate: Date             // Tracks when the user first opened the app
    var diagnosisType: DiagnosisType?
    var therapistName: String?
    var notes: String?              // Personal notes field
    var lastModified: Date          // Automatically updated to synchronize changes

    // MARK: - Streak & Calendar Properties (NEW)
    var currentStreak: Int          // Consecutive days the user has completed at least 1 exercise
    var longestStreak: Int          // The user's all-time consecutive day milestone
    var lastActiveDate: Date?       // The timestamp of their last completed exercise session
    var completionHistory: [Date]   // Standard array of dates when a full exercise was finished

    /// An accessible fallback display name if the user has not yet typed their name.
    var displayName: String {
        let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedName.isEmpty ? "My Profile" : name
    }

    /// Generates a fresh user profile configured with safe default values and empty streak milestones.
    static func makeNew() -> UserProfile {
        UserProfile(
            id: UUID(),
            name: "",
            avatarImageData: nil,
            startDate: Date(),
            diagnosisType: nil,
            therapistName: "",
            notes: "",
            lastModified: Date(),
            currentStreak: 0,
            longestStreak: 0,
            lastActiveDate: nil,
            completionHistory: []
        )
    }
}

/// Primary diagnostic categories suited for speech, language, and memory therapy tracking.
enum DiagnosisType: String, Codable, CaseIterable, Identifiable {
    case aphasia = "Aphasia"
    case ftd = "Frontotemporal Dementia"
    case ftdVariant = "FTD - Semantic/Fluent"
    case ftdBehavioral = "FTD - Behavioral"
    case tbi = "Traumatic Brain Injury"
    case stroke = "Stroke"
    case other = "Other"
    case preferNotToSay = "Prefer not to say"
    
    var id: String { self.rawValue }
}
