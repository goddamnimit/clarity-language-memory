import Foundation

/// Display-time labels for the fixed answer values of `.yesNo` ("Yes"/"No") and
/// `.factOrOpinion` ("Fact"/"Opinion") exercises.
///
/// The stored values never change: `ExerciseItem.options`, `correctAnswer`, the
/// views' selection state and all comparisons use the English data values. Only the
/// text drawn on a button (and its VoiceOver label) goes through these functions.
enum AnswerLabels {
    static let yes = "Yes"
    static let no = "No"
    static let fact = "Fact"
    static let opinion = "Opinion"

    static func yesNo(_ value: String, in language: AppLanguage) -> String {
        let isYes = value == yes
        switch language {
        case .german: return isYes ? "Ja" : "Nein"
        case .english: return value
        default:
            #if os(tvOS)
            return value                       // tvOS has always shown the English data values
            #else
            return isYes ? "Sí" : "No"         // iOS legacy label for languages not yet localized
            #endif
        }
    }

    static func factOrOpinion(_ value: String, in language: AppLanguage) -> String {
        let isFact = value == fact
        switch language {
        case .german: return isFact ? "Tatsache" : "Meinung"
        default: return value                  // English labels for every other language (existing behavior)
        }
    }

    static func tryAgain(in language: AppLanguage) -> String {
        XS.tryAgain.text(in: language)
    }

    /// Languages whose Yes/No and Fact/Opinion buttons are localized.
    static let localizedLanguages: Set<AppLanguage> = [.english, .german]
}
