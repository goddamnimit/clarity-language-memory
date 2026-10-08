import Combine
import Foundation

/// Caregiver-controlled presentation supports. Everything here changes how a
/// question is *shown*; none of it touches AdaptiveDifficultyStore's
/// algorithm, the baseline assessment, or the exercise validator rules.
/// Values are non-personal and are not part of the research export.
final class PracticeSupportSettings: ObservableObject {
    static let shared = PracticeSupportSettings()

    private let defaults = UserDefaults.standard
    private let orientationKey = "clarity_support_orientation_card"

    private let choiceCountKey = "clarity_support_answer_choice_count"

    private init() {}

    /// F2 — number of answer options shown on 4-option question types
    /// (2, 3 or 4; default 4 = unchanged).
    var answerChoiceCount: Int {
        get {
            let v = defaults.object(forKey: choiceCountKey) as? Int ?? 4
            return ChoiceCountFilter.allowedCounts.contains(v) ? v : 4
        }
        set {
            guard ChoiceCountFilter.allowedCounts.contains(newValue) else { return }
            defaults.set(newValue, forKey: choiceCountKey)
            objectWillChange.send()
        }
    }

    /// F1 — Today card on Home (default on).
    var showOrientationCard: Bool {
        get { defaults.object(forKey: orientationKey) as? Bool ?? true }
        set {
            defaults.set(newValue, forKey: orientationKey)
            objectWillChange.send()
        }
    }
}
