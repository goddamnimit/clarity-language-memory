import Foundation

/// F3 — cueing ladder for word-finding questions.
///
/// Hint 1 = category cue (the exercise group's title), Hint 2 = first letter
/// of the answer, Hint 3 = reveal. All generated from existing item data; no
/// new content, no translation burden beyond the UI strings.
enum CueLadder {

    /// Word-finding shaped exercises: the answer is a word or short phrase
    /// the person has to retrieve.
    static func isEligible(_ exercise: Exercise) -> Bool {
        if exercise.type == .sentenceCompletion { return true }
        switch exercise.trackedType {
        case .sentenceCompletion?, .wordAssociation?, .completeTheSaying?:
            return exercise.type == .multipleChoice || exercise.type == .sentenceCompletion
        default:
            return false
        }
    }

    /// Hint 1 text. Prefers the item's own explanation with every occurrence of
    /// the answer masked (a meaning cue); falls back to the exercise group's
    /// title without a trailing "(Easy)"-style qualifier (a category cue).
    static func meaningCue(for item: ExerciseItem, fallbackCategory: String) -> String {
        let answer = item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines)
        let explanation = item.explanation.trimmingCharacters(in: .whitespacesAndNewlines)
        if answer.count >= 3, explanation.count <= 160,
           explanation.range(of: answer, options: [.caseInsensitive, .diacriticInsensitive]) != nil {
            let masked = explanation.replacingOccurrences(
                of: answer, with: "…", options: [.caseInsensitive, .diacriticInsensitive])
            // Anything of the answer still visible (e.g. a longer form) means
            // the mask failed — fall back to the category cue.
            if masked.range(of: answer, options: [.caseInsensitive, .diacriticInsensitive]) == nil {
                return masked
            }
        }
        return stripQualifier(fallbackCategory)
    }

    static func stripQualifier(_ title: String) -> String {
        var t = title
        for (open, close) in [("(", ")"), ("（", "）")] {
            if let r = t.range(of: open, options: .backwards), t.hasSuffix(close) {
                t = String(t[..<r.lowerBound])
            }
        }
        let trimmed = t.trimmingCharacters(in: .whitespaces)
        return trimmed.isEmpty ? title : trimmed
    }

    /// First letter (grapheme) of the answer, or nil when it isn't a letter
    /// (digits, symbols, empty) so the ladder skips straight to the reveal.
    static func firstLetterCue(for answer: String) -> String? {
        guard let first = answer.trimmingCharacters(in: .whitespacesAndNewlines).first,
              first.unicodeScalars.contains(where: { CharacterSet.letters.contains($0) }) else {
            return nil
        }
        return String(first).uppercased()
    }

    /// The reveal level (3) is always available; level 2 only when a first
    /// letter exists. Returns the next level after `current`.
    static func nextLevel(after current: Int, answer: String) -> Int? {
        switch current {
        case 0: return 1
        case 1: return firstLetterCue(for: answer) != nil ? 2 : 3
        case 2: return 3
        default: return nil
        }
    }
}
