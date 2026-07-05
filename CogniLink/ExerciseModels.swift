import Foundation

enum AppSection: CaseIterable, Hashable {
    case language
    case cognition
    case functionalSkills
}

enum Difficulty: String, CaseIterable, Hashable {
    case easy
    case medium
    case hard
}

/// The 8 exercise categories tracked by AdaptiveDifficultyStore for
/// per-category difficulty progression. Set explicitly at authoring time
/// on every Exercise literal — never inferred from title text or ExerciseType.
enum TrackedExerciseType: String, CaseIterable, Hashable {
    case homonym
    case analogyChoice
    case wordAssociation
    case sentenceCompletion
    case sequencing
    case causeAndEffect
    case whatsWrongHere
    case completeTheSaying

    /// Caregiver-facing label for the Therapy Settings manual override list.
    var displayName: String {
        switch self {
        case .homonym: return "Homonyms"
        case .analogyChoice: return "Analogies"
        case .wordAssociation: return "Word Association"
        case .sentenceCompletion: return "Sentence Completion"
        case .sequencing: return "Sequencing"
        case .causeAndEffect: return "Cause and Effect"
        case .whatsWrongHere: return "What's Wrong Here?"
        case .completeTheSaying: return "Complete the Saying"
        }
    }
}

enum ExerciseType: CaseIterable, Hashable {
    case categoryCrossOut      // Tap the word that does not belong
    case multipleChoice        // Standard question with 4 options
    case yesNo                 // Binary YES or NO selection
    case comparison            // Binary A vs B best-value choice (exactly 2 options)
    case factOrOpinion         // Tap Fact (F) or Opinion (O)
    case openEnded             // Spoken or typed response; model answer is shown
    case sentenceCompletion    // Fill in the blank from 3 options
    case homonym               // Pick the correct homonym pair for 2 blanks
    case matching              // Connect left column items to right column
    case sequencing            // Put scrambled steps in the correct order
    case analogyChoice         // A is to B as C is to ___
    case minimalPairs          // Distinguish words differing by one phoneme (visual discrimination)
}

struct ExerciseItem: Identifiable, Equatable, Hashable {
    let id: UUID
    let prompt: String
    let options: [String]
    let correctAnswer: String
    let explanation: String
    let passage: String?
    
    init(id: UUID = UUID(), prompt: String, options: [String], correctAnswer: String, explanation: String = "", passage: String? = nil) {
        self.id = id
        self.prompt = prompt
        self.options = options
        self.correctAnswer = correctAnswer
        self.explanation = explanation
        self.passage = passage
    }
}

struct Exercise: Identifiable, Hashable {
    let id: UUID
    let title: String
    let instructions: String
    let section: AppSection
    let type: ExerciseType
    let trackedType: TrackedExerciseType?
    let difficulty: Difficulty
    let items: [ExerciseItem]

    let sessionSize = 5

    init(id: UUID = UUID(), title: String, instructions: String, section: AppSection, type: ExerciseType, trackedType: TrackedExerciseType? = nil, difficulty: Difficulty, items: [ExerciseItem]) {
        self.id = id
        self.title = title
        self.instructions = instructions
        self.section = section
        self.type = type
        self.trackedType = trackedType
        self.difficulty = difficulty
        self.items = items
    }
    
    func randomSession(excluding recentIDs: Set<UUID> = []) -> [ExerciseItem] {
        let fresh = items.filter { !recentIDs.contains($0.id) }.shuffled()
        let recent = items.filter { recentIDs.contains($0.id) }.shuffled()
        let ordered = fresh + recent
        return Array(ordered.prefix(sessionSize))
    }
}
