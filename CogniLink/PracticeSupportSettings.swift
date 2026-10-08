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

    private init() {}

    /// F1 — Today card on Home (default on).
    var showOrientationCard: Bool {
        get { defaults.object(forKey: orientationKey) as? Bool ?? true }
        set {
            defaults.set(newValue, forKey: orientationKey)
            objectWillChange.send()
        }
    }
}
