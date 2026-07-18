import Combine
import Foundation

/// Manages the caregiver-facing trajectory-aware insight settings: goal
/// orientation and expected day-to-day fluctuation. Storage and audit-trail
/// shape mirror AdaptiveDifficultyStore.
final class TrajectorySettingsStore: ObservableObject {
    static let shared = TrajectorySettingsStore()

    private let defaults = UserDefaults.standard

    // Keys
    private let goalOrientationKey = "clarity_goal_orientation"
    private let expectFluctuationKey = "clarity_expect_fluctuation"

    private init() {}

    // MARK: - Goal Orientation

    var goalOrientation: GoalOrientation {
        get {
            guard let raw = defaults.string(forKey: goalOrientationKey),
                  let value = GoalOrientation(rawValue: raw) else {
                return .recovery
            }
            return value
        }
        set {
            let old = goalOrientation
            guard old != newValue else { return }
            defaults.set(newValue.rawValue, forKey: goalOrientationKey)
            ResearchExportManager.appendTrajectorySettingsRecord([
                "event": "goalOrientation",
                "timestamp": ISO8601DateFormatter().string(from: Date()),
                "from": old.rawValue,
                "to": newValue.rawValue
            ])
            objectWillChange.send()
        }
    }

    // MARK: - Expect Day-to-Day Fluctuation

    var expectFluctuation: Bool {
        get {
            defaults.object(forKey: expectFluctuationKey) as? Bool ?? false
        }
        set {
            let old = expectFluctuation
            guard old != newValue else { return }
            defaults.set(newValue, forKey: expectFluctuationKey)
            ResearchExportManager.appendTrajectorySettingsRecord([
                "event": "expectFluctuation",
                "timestamp": ISO8601DateFormatter().string(from: Date()),
                "from": old,
                "to": newValue
            ])
            objectWillChange.send()
        }
    }
}
