import Foundation

/// One question in the baseline assessment.
struct BaselineQuestion: Identifiable {
    let id = UUID()
    let item: ExerciseItem
    let difficulty: Difficulty
}

/// Pure Swift engine for the baseline assessment: samples questions across
/// the adaptive exercise types, scores the result, and writes the assessed
/// starting difficulty to AdaptiveDifficultyStore.
struct BaselineAssessmentEngine {

    static let completedKey = "clarity_baseline_completed"
    static let questionsPerRound = 5

    /// The 8 exercise types tracked by the adaptive difficulty system.
    static let trackedIdentifiers = [
        "homonym", "analogyChoice", "wordassociation", "sentencecompletion",
        "sequencing", "causeeffect", "whatswrong", "completesaying"
    ]

    static var isCompleted: Bool {
        UserDefaults.standard.bool(forKey: completedKey)
    }

    // MARK: - Question Sampling

    /// Builds the 15-question assessment: 5 easy, then 5 medium, then 5 hard,
    /// sampled randomly across the adaptive exercise types. Only items that
    /// work in a generic tap-one-option UI are eligible (2–4 options,
    /// correct answer present). If a tier has too little content, it is
    /// topped up from the other tiers so the assessment always has 15 questions.
    @MainActor
    static func buildAssessment(from exercises: [Exercise]) -> [BaselineQuestion] {
        let adaptiveExercises = exercises.filter {
            AdaptiveDifficultyStore.shared.adaptiveIdentifier(for: $0) != nil
        }

        func eligibleItems(difficulty: Difficulty) -> [ExerciseItem] {
            adaptiveExercises
                .filter { $0.difficulty == difficulty }
                .flatMap { $0.items }
                .filter { (2...4).contains($0.options.count) && $0.options.contains($0.correctAnswer) }
        }

        var questions: [BaselineQuestion] = []
        var spareItems: [(ExerciseItem, Difficulty)] = []

        for difficulty in [Difficulty.easy, .medium, .hard] {
            let pool = eligibleItems(difficulty: difficulty).shuffled()
            let take = Array(pool.prefix(questionsPerRound))
            questions.append(contentsOf: take.map { BaselineQuestion(item: $0, difficulty: difficulty) })
            spareItems.append(contentsOf: pool.dropFirst(questionsPerRound).map { ($0, difficulty) })
        }

        // Top up from spares if any tier came short.
        let needed = questionsPerRound * 3 - questions.count
        if needed > 0 {
            let usedIDs = Set(questions.map { $0.item.id })
            let fillers = spareItems
                .filter { !usedIDs.contains($0.0.id) }
                .shuffled()
                .prefix(needed)
                .map { BaselineQuestion(item: $0.0, difficulty: $0.1) }
            questions.append(contentsOf: fillers)
            // Keep round ordering: easy → medium → hard
            questions.sort { order(of: $0.difficulty) < order(of: $1.difficulty) }
        }

        return questions
    }

    private static func order(of difficulty: Difficulty) -> Int {
        switch difficulty {
        case .easy: return 0
        case .medium: return 1
        case .hard: return 2
        }
    }

    // MARK: - Scoring

    /// Applies the placement rules:
    /// easy ≥ 80% and medium ≥ 60% → hard;
    /// easy ≥ 80% and medium < 60% → medium;
    /// easy < 80% → easy.
    static func placementDifficulty(easyCorrect: Int, easyTotal: Int,
                                    mediumCorrect: Int, mediumTotal: Int) -> Difficulty {
        guard easyTotal > 0 else { return .easy }
        let easyAccuracy = Double(easyCorrect) / Double(easyTotal)
        guard easyAccuracy >= 0.8 else { return .easy }

        let mediumAccuracy = mediumTotal > 0 ? Double(mediumCorrect) / Double(mediumTotal) : 0
        return mediumAccuracy >= 0.6 ? .hard : .medium
    }

    /// Writes the assessed difficulty to all 8 tracked exercise types and
    /// marks the baseline as completed.
    @MainActor
    static func applyPlacement(_ difficulty: Difficulty) {
        for identifier in trackedIdentifiers {
            AdaptiveDifficultyStore.shared.setDifficulty(difficulty, for: identifier)
        }
        UserDefaults.standard.set(true, forKey: completedKey)
    }

    /// Called when the patient skips: existing all-easy behavior is kept, but
    /// the baseline is marked complete so the sheet doesn't re-appear.
    static func markSkipped() {
        UserDefaults.standard.set(true, forKey: completedKey)
    }
}
