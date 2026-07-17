#if os(iOS)
import SwiftUI

/// Shared helpers for the weekly session goal (stored in UserDefaults).
struct WeeklyGoalStore {
    static let goalKey = "clarity_weekly_goal"
    static let options = [3, 5, 7, 10, 14]

    /// 0 means no goal set.
    static var goal: Int {
        get { UserDefaults.standard.integer(forKey: goalKey) }
        set {
            UserDefaults.standard.set(newValue, forKey: goalKey)
            // The goal count feeds the widget's weekly-progress bar — republish the snapshot.
            WidgetSnapshotWriter.refresh()
        }
    }

    @MainActor
    static func sessionsThisWeek() -> Int {
        let calendar = Calendar.current
        guard let weekStart = calendar.dateInterval(of: .weekOfYear, for: Date())?.start else { return 0 }
        return UserProfileStore.shared.profile.completionHistory.filter { $0 >= weekStart }.count
    }
}

/// Caregiver screen to set a weekly session goal (3 / 5 / 7 / 10 / 14 per week).
struct GoalSettingView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var selectedGoal: Int = WeeklyGoalStore.goal

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                VStack(alignment: .leading, spacing: 12) {
                    Text(languageManager.currentLanguage.cgWeeklyGoal)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    VStack(spacing: 0) {
                        ForEach(WeeklyGoalStore.options, id: \.self) { option in
                            goalRow(value: option, label: "\(option) \(languageManager.currentLanguage.cgSessionsPerWeek)")
                            if option != WeeklyGoalStore.options.last {
                                Divider().padding(.leading, 16)
                            }
                        }
                    }
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    .padding(.horizontal)
                }

                if selectedGoal > 0 {
                    // Live progress preview
                    let done = WeeklyGoalStore.sessionsThisWeek()
                    VStack(alignment: .leading, spacing: 8) {
                        Text(languageManager.currentLanguage.cgGoalProgress(done, selectedGoal))
                            .font(.subheadline)
                            .fontWeight(.medium)
                        GeometryReader { geo in
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.accentColor.opacity(0.15))
                                    .frame(height: 8)
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.accentColor)
                                    .frame(width: geo.size.width * CGFloat(min(Double(done) / Double(selectedGoal), 1.0)), height: 8)
                            }
                        }
                        .frame(height: 8)
                    }
                    .padding()
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .navigationTitle(languageManager.currentLanguage.cgWeeklyGoal)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.groupedBackground.ignoresSafeArea())
    }

    @ViewBuilder
    private func goalRow(value: Int, label: String) -> some View {
        Button(action: {
            selectedGoal = value
            WeeklyGoalStore.goal = value
        }) {
            HStack {
                Text(label)
                    .font(.body)
                    .foregroundColor(.primary)
                Spacer()
                if selectedGoal == value {
                    Image(systemName: "checkmark")
                        .foregroundColor(.accentColor)
                }
            }
            .padding(.horizontal, 16)
            .frame(minHeight: 50)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
#endif
