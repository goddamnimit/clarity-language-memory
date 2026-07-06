import Foundation
import UIKit

enum BackgroundPlatform {
    case iOS
    case tvOS
}

extension Notification.Name {
    static let clarityBackgroundChanged = Notification.Name("clarity_background_changed")
}

class BackgroundManager {
    static let shared = BackgroundManager()

    private static let overrideIndexKey = "clarity_background_override_index"

    private let imageNames: [String] = {
        var names: [String] = []
        for i in 1...51 {
            names.append(String(format: "bg_met_%03d", i))
        }
        for i in 1...24 {
            names.append(String(format: "bg_nasa_%03d", i))
        }
        return names
    }()

    /// The override index, read live from UserDefaults, if one has been set via `randomizeBackground()`.
    private var overrideIndex: Int? {
        let defaults = UserDefaults.standard
        guard defaults.object(forKey: Self.overrideIndexKey) != nil else { return nil }
        let stored = defaults.integer(forKey: Self.overrideIndexKey)
        guard imageNames.indices.contains(stored) else { return nil }
        return stored
    }

    private func currentIndex() -> Int {
        if let overrideIndex {
            return overrideIndex
        }
        // Ordinality of the day in the year (1-366)
        let seed = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1
        return (seed - 1) % imageNames.count
    }

    func dailyImageName(for platform: BackgroundPlatform) -> String {
        let index = currentIndex()

        switch platform {
        case .iOS:
            #if os(iOS)
            return imageNames[index]
            #else
            return ""
            #endif
        case .tvOS:
            #if os(tvOS)
            return "tv_" + imageNames[index]
            #else
            return ""
            #endif
        }
    }

    func imageExists(named name: String) -> Bool {
        !name.isEmpty && UIImage(named: name) != nil
    }

    /// Picks a new random background, distinct from the current one, and persists it
    /// as an override to the daily rotation. Posts `.clarityBackgroundChanged` so any
    /// visible background views can update.
    func randomizeBackground() {
        guard imageNames.count > 1 else { return }
        let current = currentIndex()
        var newIndex = Int.random(in: 0..<imageNames.count)
        while newIndex == current {
            newIndex = Int.random(in: 0..<imageNames.count)
        }
        UserDefaults.standard.set(newIndex, forKey: Self.overrideIndexKey)
        NotificationCenter.default.post(name: .clarityBackgroundChanged, object: nil)
    }

    /// Removes the override so the background reverts to the daily rotation.
    func clearOverride() {
        UserDefaults.standard.removeObject(forKey: Self.overrideIndexKey)
    }
}
