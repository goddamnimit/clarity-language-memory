import SwiftUI

/// F1 — "Today" orientation card: weekday, date and part of day, formatted by
/// the app language's locale (Gregorian calendar, so dates match the phone's
/// calendar app for US households). No content translation needed.
struct OrientationCardView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @Environment(\.scenePhase) private var scenePhase
    @State private var now = Date()

    private var locale: Locale {
        Locale(identifier: languageManager.currentLanguage.localeIdentifier.replacingOccurrences(of: "_", with: "-"))
    }

    private var weekday: String { Self.format(now, template: "EEEE", locale: locale) }
    private var fullDate: String { Self.format(now, template: "yMMMMd", locale: locale) }

    private var part: (label: String, symbol: String) {
        switch Self.partOfDay(for: now) {
        case .morning: return (FS.morning, "sunrise.fill")
        case .afternoon: return (FS.afternoon, "sun.max.fill")
        case .evening: return (FS.evening, "sunset.fill")
        case .night: return (FS.night, "moon.stars.fill")
        }
    }

    var body: some View {
        let p = part
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: p.symbol)
                .font(.largeTitle)
                .foregroundColor(.orange)
                .accessibilityHidden(true)
            VStack(alignment: .leading, spacing: 2) {
                Text(FS.today)
                    .font(.caption)
                    .textCase(.uppercase)
                    .foregroundColor(.secondary)
                Text(weekday)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text(fullDate)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(p.label)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer(minLength: 0)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("\(FS.today): \(weekday), \(fullDate), \(p.label)")
        .onChange(of: scenePhase) { _, phase in
            if phase == .active { now = Date() }
        }
        .onAppear { now = Date() }
    }

    enum PartOfDay { case morning, afternoon, evening, night }

    static func partOfDay(for date: Date, calendar: Calendar = .current) -> PartOfDay {
        switch calendar.component(.hour, from: date) {
        case 5..<12: return .morning
        case 12..<17: return .afternoon
        case 17..<21: return .evening
        default: return .night
        }
    }

    static func format(_ date: Date, template: String, locale: Locale) -> String {
        let f = DateFormatter()
        f.locale = locale
        f.calendar = Calendar(identifier: .gregorian)
        f.setLocalizedDateFormatFromTemplate(template)
        return f.string(from: date)
    }
}
