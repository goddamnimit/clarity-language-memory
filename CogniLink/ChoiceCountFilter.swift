import Foundation

/// F2 — presentation-only reduction of answer options.
///
/// Never mutates catalog data and never runs on the baseline assessment or in
/// the adaptive store; `ExerciseContainerView` applies it to the session copy
/// of each item. The correct answer is always kept; distractors are dropped
/// in a deterministic order (stable FNV-1a hash of prompt + option) so the
/// same question always shows the same reduced set across launches.
enum ChoiceCountFilter {

    static let allowedCounts = [2, 3, 4]

    /// Exercise types whose items are 4-option picks. yesNo/factOrOpinion
    /// (fixed 2 labels), comparison (already 2), homonym, sequencing,
    /// openEnded, matching and minimalPairs are intentionally excluded.
    static func appliesTo(_ type: ExerciseType) -> Bool {
        switch type {
        case .multipleChoice, .sentenceCompletion, .analogyChoice, .categoryCrossOut:
            return true
        default:
            return false
        }
    }

    /// Fewest options that still make the question meaningful.
    static func minimumCount(for type: ExerciseType) -> Int {
        type == .categoryCrossOut ? 3 : 2   // "odd one out" of 2 is ambiguous
    }

    static func reduce(_ item: ExerciseItem, type: ExerciseType, to requested: Int) -> ExerciseItem {
        guard appliesTo(type) else { return item }
        let target = max(requested, minimumCount(for: type))
        guard item.options.count > target,
              item.options.contains(item.correctAnswer) else { return item }

        let distractors = item.options.filter { $0 != item.correctAnswer }
        let ranked = distractors.sorted {
            let a = stableHash(item.prompt + "\u{1F}" + $0)
            let b = stableHash(item.prompt + "\u{1F}" + $1)
            return a != b ? a < b : $0 < $1
        }
        let keep = Set(ranked.prefix(target - 1))
        // Preserve the original relative order of the surviving options.
        let kept = item.options.filter { $0 == item.correctAnswer || keep.contains($0) }
        return ExerciseItem(
            id: item.id,
            prompt: item.prompt,
            options: kept,
            correctAnswer: item.correctAnswer,
            explanation: item.explanation,
            passage: item.passage
        )
    }

    /// FNV-1a 64-bit over UTF-8 — unlike `hashValue`, stable across launches.
    static func stableHash(_ text: String) -> UInt64 {
        var h: UInt64 = 0xcbf29ce484222325
        for byte in text.utf8 {
            h ^= UInt64(byte)
            h = h &* 0x100000001b3
        }
        return h
    }
}
