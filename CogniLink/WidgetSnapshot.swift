import Foundation

/// The data the Home Screen widget renders, written by the app into the
/// shared App Group container and read by the ClarityWidget extension.
/// Pure Foundation — compiled into both the app and the widget extension.
struct WidgetSnapshot: Codable {
    let currentStreak: Int
    let recommendedTitle: String
    let recommendedSection: String
    let recommendedHeadline: String
    let lastUpdated: Date

    static let appGroupID = "group.com.nimitdesai.clarity.shared"
    static let storageKey = "widgetSnapshot"

    static func load() -> WidgetSnapshot? {
        guard let data = UserDefaults(suiteName: appGroupID)?.data(forKey: storageKey) else { return nil }
        return try? JSONDecoder().decode(WidgetSnapshot.self, from: data)
    }
}
