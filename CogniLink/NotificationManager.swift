#if os(iOS)
import Foundation
import Combine
@preconcurrency import UserNotifications

/// Schedules all local practice-reminder notifications. No server, no push
/// certificates — everything is UNUserNotificationCenter. iOS suppresses
/// delivery during Do Not Disturb automatically.
@MainActor
final class NotificationManager: ObservableObject {
    static let shared = NotificationManager()

    // Settings keys (per spec)
    static let enabledKey = "clarity_notifications_enabled"
    static let hourKey = "clarity_notification_time_hour"
    static let minuteKey = "clarity_notification_time_minute"
    static let streakEnabledKey = "clarity_streak_notifications_enabled"

    // Request identifiers
    private static let dailyReminderID = "clarity_daily_reminder"
    private static let streakWarningID = "clarity_streak_warning"
    private static let welcomeBackID = "clarity_welcome_back"

    @Published var permissionDenied = false

    private let defaults = UserDefaults.standard

    private init() {}

    // MARK: - Settings (defaults: on, 10:00 AM, on)

    var remindersEnabled: Bool {
        get { defaults.object(forKey: Self.enabledKey) as? Bool ?? true }
        set {
            defaults.set(newValue, forKey: Self.enabledKey)
            objectWillChange.send()
            rescheduleAll()
        }
    }

    var reminderHour: Int {
        get { defaults.object(forKey: Self.hourKey) as? Int ?? 10 }
        set {
            defaults.set(newValue, forKey: Self.hourKey)
            objectWillChange.send()
            rescheduleAll()
        }
    }

    var reminderMinute: Int {
        get { defaults.object(forKey: Self.minuteKey) as? Int ?? 0 }
        set {
            defaults.set(newValue, forKey: Self.minuteKey)
            objectWillChange.send()
            rescheduleAll()
        }
    }

    var streakRemindersEnabled: Bool {
        get { defaults.object(forKey: Self.streakEnabledKey) as? Bool ?? true }
        set {
            defaults.set(newValue, forKey: Self.streakEnabledKey)
            objectWillChange.send()
            rescheduleAll()
        }
    }

    // MARK: - Permission

    /// Asks for permission only when status is .notDetermined — never re-prompts.
    func requestPermissionIfNeeded() {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            switch settings.authorizationStatus {
            case .notDetermined:
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
                    Task { @MainActor in
                        self.permissionDenied = !granted
                        if granted { self.rescheduleAll() }
                    }
                }
            case .denied:
                Task { @MainActor in self.permissionDenied = true }
            default:
                Task { @MainActor in
                    self.permissionDenied = false
                    self.rescheduleAll()
                }
            }
        }
    }

    /// Refreshes the published denied flag without ever prompting.
    func refreshPermissionStatus() {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            Task { @MainActor in
                self.permissionDenied = settings.authorizationStatus == .denied
            }
        }
    }

    // MARK: - Scheduling

    /// Recomputes all three notifications from current app state. Call on app
    /// open, after a session completes, and whenever settings change.
    func rescheduleAll() {
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: [
            Self.dailyReminderID, Self.streakWarningID, Self.welcomeBackID
        ])

        let language = LanguageManager.shared.currentLanguage
        let profile = UserProfileStore.shared.profile
        let name = profile.name.trimmingCharacters(in: .whitespacesAndNewlines)
        let practicedToday = hasPracticedToday()

        // 1. Daily practice reminder — next occurrence of the chosen time on a
        //    day not yet practiced. Non-repeating; rescheduled on every app
        //    open / session completion so it never fires after practicing.
        if remindersEnabled {
            let calendar = Calendar.current
            var fireDate = calendar.date(bySettingHour: reminderHour, minute: reminderMinute,
                                         second: 0, of: Date()) ?? Date()
            if fireDate <= Date() || practicedToday {
                fireDate = calendar.date(byAdding: .day, value: 1, to: fireDate) ?? fireDate
            }
            let content = UNMutableNotificationContent()
            content.title = "Clarity: Language & Memory"
            content.body = language.notifDailyMessages(name: name).randomElement()
                ?? language.notifDailyMessages(name: name)[0]
            content.sound = .default
            let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: fireDate)
            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
            center.add(UNNotificationRequest(identifier: Self.dailyReminderID,
                                             content: content, trigger: trigger))
        }

        // 2. Streak at risk — 8:00 PM today, only for an active 3+ day streak
        //    and only if today's practice hasn't happened yet.
        if streakRemindersEnabled && profile.currentStreak >= 3 && !practicedToday {
            let calendar = Calendar.current
            if let eightPM = calendar.date(bySettingHour: 20, minute: 0, second: 0, of: Date()),
               eightPM > Date() {
                let content = UNMutableNotificationContent()
                content.title = "Clarity: Language & Memory"
                content.body = language.notifStreakAtRisk(name: name, days: profile.currentStreak)
                content.sound = .default
                let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: eightPM)
                let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
                center.add(UNNotificationRequest(identifier: Self.streakWarningID,
                                                 content: content, trigger: trigger))
            }
        }

        // 3. Welcome back — one non-repeating notification 3 days out.
        //    Every app open pushes it 3 days further, so it only ever fires
        //    after a genuine 3-day absence, and exactly once per absence.
        if remindersEnabled {
            let content = UNMutableNotificationContent()
            content.title = "Clarity: Language & Memory"
            content.body = language.notifWelcomeBack
            content.sound = .default
            let threeDays: TimeInterval = 3 * 24 * 60 * 60
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: threeDays, repeats: false)
            center.add(UNNotificationRequest(identifier: Self.welcomeBackID,
                                             content: content, trigger: trigger))
        }
    }

    // MARK: - Helpers

    private func hasPracticedToday() -> Bool {
        guard let lastActive = UserProfileStore.shared.profile.lastActiveDate else { return false }
        return Calendar.current.isDateInToday(lastActive)
    }
}
#endif
