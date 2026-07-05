import SwiftUI

/// A reusable widget displaying active practice streaks and a rolling 7-day completion calendar.
struct StreakWidgetView: View {
    @ObservedObject private var store = UserProfileStore.shared

    var body: some View {
        VStack(spacing: 16) {
            // MARK: - Streak Summary Banner
            HStack(spacing: 16) {
                // Fire/Streak Icon
                Image(systemName: "flame.fill")
                    .font(.system(size: 44))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.orange, .yellow],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack(alignment: .lastTextBaseline, spacing: 4) {
                        Text("\(store.profile.currentStreak)")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.primary)
                        
                        Text(store.profile.currentStreak == 1 ? "day streak" : "day streak")
                            .font(.body) // 17pt minimum size
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }
                    
                    Text("Personal Best: \(store.profile.longestStreak) days")
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding(.horizontal, 4)
            .accessibilityElement(children: .combine)
            .accessibilityLabel("Current practice streak: \(store.profile.currentStreak) consecutive days. Personal best record is \(store.profile.longestStreak) days.")

            Divider()

            // MARK: - Rolling 7-Day Completion Grid
            VStack(alignment: .leading, spacing: 10) {
                Text("Last 7 Days Progress")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 4)
                
                HStack(spacing: 0) {
                    ForEach(getLastSevenDays(), id: \.self) { date in
                        let completed = hasCompletion(on: date)
                        let isToday = Calendar.current.isDateInToday(date)
                        
                        VStack(spacing: 8) {
                            // 3-Letter Weekday Label (e.g. "Sun", "Mon" is easier to read than single letters)
                            Text(weekdayLabel(for: date))
                                .font(.body)
                                .fontWeight(isToday ? .bold : .medium)
                                .foregroundColor(isToday ? AppTheme.languageColor : .secondary)
                            
                            // Visual Status Checkmark Icon
                            ZStack {
                                if completed {
                                    Image(systemName: "checkmark.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "circle")
                                        .font(.title2)
                                        .foregroundColor(.gray.opacity(0.5))
                                }
                            }
                            .frame(width: 32, height: 32)
                            .background(
                                Circle()
                                    .fill(completed ? Color.green.opacity(0.12) : Color.clear)
                            )
                        }
                        .frame(maxWidth: .infinity)
                        // Group each day for screen readers
                        .accessibilityElement(children: .combine)
                        .accessibilityLabel("\(accessibilityWeekdayLabel(for: date)): \(completed ? "Completed" : "Not completed")\(isToday ? " today" : "")")
                    }
                }
            }
        }
        .padding(20)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.12), lineWidth: 1.5)
        )
    }

    // MARK: - Logic and Helper Functions

    /// Returns a list of Date objects representing the rolling past 7 days, ending with today.
    private func getLastSevenDays() -> [Date] {
        var days: [Date] = []
        let calendar = Calendar.current
        let today = Date()
        
        for i in (0...6).reversed() {
            if let date = calendar.date(byAdding: .day, value: -i, to: today) {
                days.append(date)
            }
        }
        return days
    }

    /// Verifies if a completion timestamp matches a specific calendar date.
    private func hasCompletion(on date: Date) -> Bool {
        let calendar = Calendar.current
        return store.profile.completionHistory.contains { historyDate in
            calendar.isDate(historyDate, inSameDayAs: date)
        }
    }

    /// Formatting shortcut returning clean 3-letter labels.
    private func weekdayLabel(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE" // e.g., "Sun", "Mon"
        return formatter.string(from: date)
    }

    /// Spells out the full name of weekdays for clear VoiceOver speech synthesis.
    private func accessibilityWeekdayLabel(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE" // e.g., "Sunday", "Monday"
        return formatter.string(from: date)
    }
}
