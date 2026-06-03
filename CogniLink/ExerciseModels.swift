import Foundation

enum AppSection: CaseIterable, Hashable {
    case language
    case cognition
    case functionalSkills
}

enum Difficulty: CaseIterable, Hashable {
    case easy
    case medium
    case hard
}

enum ExerciseType: CaseIterable, Hashable {
    case categoryCrossOut      // Tap the word that does not belong
    case multipleChoice        // Standard question with 4 options
    case yesNo                 // Binary YES or NO selection
    case factOrOpinion         // Tap Fact (F) or Opinion (O)
    case openEnded             // Spoken or typed response; model answer is shown
    case sentenceCompletion    // Fill in the blank from 3 options
    case homonym               // Pick the correct homonym pair for 2 blanks
    case matching              // Connect left column items to right column
    case sequencing            // Put scrambled steps in the correct order
    case analogyChoice         // A is to B as C is to ___
}

struct ExerciseItem: Identifiable, Equatable, Hashable {
    let id: UUID
    let prompt: String
    let options: [String]
    let correctAnswer: String
    let explanation: String
    
    init(id: UUID = UUID(), prompt: String, options: [String], correctAnswer: String, explanation: String = "") {
        self.id = id
        self.prompt = prompt
        self.options = options
        self.correctAnswer = correctAnswer
        self.explanation = explanation
    }
}

struct Exercise: Identifiable, Hashable {
    let id: UUID
    let title: String
    let instructions: String
    let section: AppSection
    let type: ExerciseType
    let difficulty: Difficulty
    let items: [ExerciseItem]
    
    let sessionSize = 5

    init(id: UUID = UUID(), title: String, instructions: String, section: AppSection, type: ExerciseType, difficulty: Difficulty, items: [ExerciseItem]) {
        self.id = id
        self.title = title
        self.instructions = instructions
        self.section = section
        self.type = type
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
