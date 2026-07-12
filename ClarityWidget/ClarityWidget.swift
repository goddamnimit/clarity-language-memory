import WidgetKit
import SwiftUI

// MARK: - Timeline

struct ClarityWidgetEntry: TimelineEntry {
    let date: Date
    let snapshot: WidgetSnapshot?
}

struct ClarityWidgetProvider: TimelineProvider {
    func placeholder(in context: Context) -> ClarityWidgetEntry {
        ClarityWidgetEntry(
            date: Date(),
            snapshot: WidgetSnapshot(
                currentStreak: 3,
                recommendedTitle: "Word Association",
                recommendedSection: "language",
                recommendedHeadline: "Today's exercise",
                lastUpdated: Date()))
    }

    func getSnapshot(in context: Context, completion: @escaping (ClarityWidgetEntry) -> Void) {
        if context.isPreview {
            completion(placeholder(in: context))
        } else {
            completion(ClarityWidgetEntry(date: Date(), snapshot: WidgetSnapshot.load()))
        }
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<ClarityWidgetEntry>) -> Void) {
        let entry = ClarityWidgetEntry(date: Date(), snapshot: WidgetSnapshot.load())
        // Single entry; refresh after the next local midnight so the
        // day-seeded recommendation rolls over with the calendar day.
        let nextMidnight = Calendar.current.nextDate(
            after: Date(),
            matching: DateComponents(hour: 0, minute: 0),
            matchingPolicy: .nextTime) ?? Date().addingTimeInterval(86_400)
        completion(Timeline(entries: [entry], policy: .after(nextMidnight)))
    }
}

// MARK: - Section presentation

private func sectionDisplayName(_ key: String) -> String {
    switch key {
    case "language":         return "Language"
    case "cognition":        return "Cognition"
    case "functionalSkills": return "Functional Skills"
    default:                 return key
    }
}

private func sectionColor(_ key: String) -> Color {
    switch key {
    case "language":         return AppTheme.languageColor
    case "cognition":        return AppTheme.cognitionColor
    case "functionalSkills": return AppTheme.functionalColor
    default:                 return .accentColor
    }
}

private func deepLinkURL(for snapshot: WidgetSnapshot) -> URL? {
    var components = URLComponents()
    components.scheme = "clarity"
    components.host = "exercise"
    components.queryItems = [
        URLQueryItem(name: "title", value: snapshot.recommendedTitle),
        URLQueryItem(name: "section", value: snapshot.recommendedSection),
    ]
    return components.url
}

// MARK: - Views

struct StreakBadgeView: View {
    let streak: Int

    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: "flame.fill")
                .font(.system(size: 28))
                .foregroundStyle(.orange)
            Text("\(streak)")
                .font(.system(size: 34, weight: .bold, design: .rounded))
                .foregroundStyle(.primary)
                .contentTransition(.numericText())
            Text("day streak")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

struct ClarityWidgetSmallView: View {
    let entry: ClarityWidgetEntry

    var body: some View {
        if let snapshot = entry.snapshot {
            StreakBadgeView(streak: snapshot.currentStreak)
        } else {
            VStack(spacing: 4) {
                Image(systemName: "flame")
                    .font(.system(size: 28))
                    .foregroundStyle(.secondary)
                Text("0")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundStyle(.secondary)
                Text("Open Clarity to get started")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ClarityWidgetMediumView: View {
    let entry: ClarityWidgetEntry

    var body: some View {
        if let snapshot = entry.snapshot {
            HStack(spacing: 16) {
                StreakBadgeView(streak: snapshot.currentStreak)
                    .frame(minWidth: 80)

                Divider()

                VStack(alignment: .leading, spacing: 6) {
                    Text(snapshot.recommendedHeadline)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(1)
                    Text(snapshot.recommendedTitle)
                        .font(.system(.headline, design: .rounded))
                        .foregroundStyle(.primary)
                        .lineLimit(2)
                    Text(sectionDisplayName(snapshot.recommendedSection))
                        .font(.caption2)
                        .fontWeight(.semibold)
                        .foregroundStyle(sectionColor(snapshot.recommendedSection))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 3)
                        .background(sectionColor(snapshot.recommendedSection).opacity(0.12))
                        .clipShape(Capsule())
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .widgetURL(deepLinkURL(for: snapshot))
        } else {
            VStack(spacing: 6) {
                Image(systemName: "flame")
                    .font(.system(size: 24))
                    .foregroundStyle(.secondary)
                Text("Open Clarity to get started")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

struct ClarityWidgetEntryView: View {
    @Environment(\.widgetFamily) private var family
    let entry: ClarityWidgetEntry

    var body: some View {
        Group {
            switch family {
            case .systemMedium:
                ClarityWidgetMediumView(entry: entry)
            default:
                ClarityWidgetSmallView(entry: entry)
            }
        }
        .containerBackground(for: .widget) {
            Color.systemBackground
        }
    }
}

// MARK: - Widget

struct ClarityWidget: Widget {
    let kind = "ClarityWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ClarityWidgetProvider()) { entry in
            ClarityWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Clarity Streak")
        .description("Your practice streak and today's recommended exercise.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}
