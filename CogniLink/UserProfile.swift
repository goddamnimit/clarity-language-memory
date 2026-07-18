import Foundation

/// A representation of the user's personal details, therapy context, and streak milestones.
struct UserProfile: Codable, Identifiable, Equatable {
    var id: UUID
    var name: String
    var avatarImageData: Data?      // Stored as raw Data for easy JSON serialization
    var startDate: Date             // Tracks when the user first opened the app
    var diagnosisType: DiagnosisType?
    var customDiagnosisText: String? // Free-text detail entered when diagnosisType is .other
    var therapistName: String?
    var notes: String?              // Personal notes field
    var lastModified: Date          // Automatically updated to synchronize changes

    // MARK: - Streak & Calendar Properties (NEW)
    var currentStreak: Int          // Consecutive days the user has completed at least 1 exercise
    var longestStreak: Int          // The user's all-time consecutive day milestone
    var lastActiveDate: Date?       // The timestamp of their last completed exercise session
    var completionHistory: [Date]   // Standard array of dates when a full exercise was finished

    enum CodingKeys: String, CodingKey {
        case id, avatarImageData, startDate, diagnosisType, lastModified, currentStreak, longestStreak, lastActiveDate, completionHistory
    }

    init(id: UUID, name: String, avatarImageData: Data?, startDate: Date, diagnosisType: DiagnosisType?, customDiagnosisText: String?, therapistName: String?, notes: String?, lastModified: Date, currentStreak: Int, longestStreak: Int, lastActiveDate: Date?, completionHistory: [Date]) {
        self.id = id
        self.name = name
        self.avatarImageData = avatarImageData
        self.startDate = startDate
        self.diagnosisType = diagnosisType
        self.customDiagnosisText = customDiagnosisText
        self.therapistName = therapistName
        self.notes = notes
        self.lastModified = lastModified
        self.currentStreak = currentStreak
        self.longestStreak = longestStreak
        self.lastActiveDate = lastActiveDate
        self.completionHistory = completionHistory
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.avatarImageData = try container.decodeIfPresent(Data.self, forKey: .avatarImageData)
        self.startDate = try container.decode(Date.self, forKey: .startDate)
        self.diagnosisType = try container.decodeIfPresent(DiagnosisType.self, forKey: .diagnosisType)
        self.lastModified = try container.decode(Date.self, forKey: .lastModified)
        self.currentStreak = try container.decode(Int.self, forKey: .currentStreak)
        self.longestStreak = try container.decode(Int.self, forKey: .longestStreak)
        self.lastActiveDate = try container.decodeIfPresent(Date.self, forKey: .lastActiveDate)
        self.completionHistory = try container.decode([Date].self, forKey: .completionHistory)
        
        self.name = ""
        self.customDiagnosisText = ""
        self.therapistName = ""
        self.notes = ""
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(avatarImageData, forKey: .avatarImageData)
        try container.encode(startDate, forKey: .startDate)
        try container.encode(diagnosisType, forKey: .diagnosisType)
        try container.encode(lastModified, forKey: .lastModified)
        try container.encode(currentStreak, forKey: .currentStreak)
        try container.encode(longestStreak, forKey: .longestStreak)
        try container.encode(lastActiveDate, forKey: .lastActiveDate)
        try container.encode(completionHistory, forKey: .completionHistory)
    }

    /// An accessible fallback display name if the user has not yet typed their name.
    var displayName: String {
        let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedName.isEmpty ? "My Profile" : name
    }

    /// The diagnosis text to show in the UI and reports: the custom text when
    /// diagnosisType is .other and text was entered, otherwise the case's rawValue.
    var diagnosisDisplayText: String? {
        guard let diagnosisType else { return nil }
        if diagnosisType == .other {
            let trimmed = customDiagnosisText?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
            if !trimmed.isEmpty { return trimmed }
        }
        return diagnosisType.rawValue
    }

    /// Generates a fresh user profile configured with safe default values and empty streak milestones.
    static func makeNew() -> UserProfile {
        UserProfile(
            id: UUID(),
            name: "",
            avatarImageData: nil,
            startDate: Date(),
            diagnosisType: nil,
            customDiagnosisText: "",
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
    case ppa = "Primary Progressive Aphasia (PPA)"
    case alzheimers = "Alzheimer's Disease"
    case vascularDementia = "Vascular Dementia"
    case lewyBodyDementia = "Dementia with Lewy Bodies"
    case mixedDementia = "Mixed Dementia"
    case parkinsonsDementia = "Parkinson's Disease Dementia"
    case mci = "Mild Cognitive Impairment (MCI)"
    case tbi = "Traumatic Brain Injury"
    case stroke = "Stroke"
    case multipleSclerosis = "Multiple Sclerosis"
    case brainTumor = "Brain Tumor"
    case other = "Other"
    case preferNotToSay = "Prefer not to say"

    var id: String { self.rawValue }
}
