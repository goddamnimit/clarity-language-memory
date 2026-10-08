import Foundation

/// One day's completed-session count for the weekly activity chart.
/// Shared by the iOS progress views and ClarityTV (tvOS compiles CogniLink/).
struct DayActivity: Identifiable {
    var id = UUID()
    var day: String      // e.g. "Mon"
    var date: Date
    var count: Int
    var isToday: Bool
}
