import SwiftUI
import Charts

// MARK: - Supporting Types

struct DayActivity: Identifiable {
    var id = UUID()
    var day: String      // e.g. "Mon"
    var date: Date
    var count: Int
    var isToday: Bool
}

// MARK: - AppProgressView

/// A redesigned progress hub with streak cards, weekly activity chart,
/// per-section accuracy, language-aware exercise checklist, and reset controls.
struct AppProgressView: View {

    @ObservedObject private var languageManager = LanguageManager.shared
    @ObservedObject private var profileStore    = UserProfileStore.shared

    @State private var completedExercises: [String]  = []
    @State private var attemptedExercises: Set<String> = []
    @State private var playedDict: [String: Int]     = [:]
    @State private var sessionLog: [[String: Any]]   = []
    @State private var showResetAlert                = false

    // Accordion state
    @State private var isLanguageExpanded    = true
    @State private var isCognitionExpanded   = false
    @State private var isFunctionalExpanded  = false

    // MARK: - Computed helpers

    private var totalSessionsPlayed: Int {
        playedDict.values.reduce(0, +)
    }

    private var languageExercises: [Exercise] {
        languageManager.exercisesForSection(.language)
    }
    private var cognitionExercises: [Exercise] {
        languageManager.exercisesForSection(.cognition)
    }
    private var functionalExercises: [Exercise] {
        languageManager.exercisesForSection(.functionalSkills)
    }

    // MARK: - Body

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 28) {

                    // ── Section 1: Stats Cards (2×2) ──────────────────────
                    sectionHeader("Overview")
                    statsGrid
                        .padding(.horizontal, 20)

                    // ── Section 2: Weekly Activity Chart ──────────────────
                    sectionHeader("This Week")
                    weeklyChartCard
                        .padding(.horizontal, 20)

                    // ── Section 3: Per-Section Accuracy ───────────────────
                    sectionHeader("Accuracy by Section")
                    accuracyCard
                        .padding(.horizontal, 20)

                    // ── Section 4: Exercise Checklist ─────────────────────
                    sectionHeader("Exercise Checklist")
                    VStack(spacing: 16) {
                        sectionAccordion(
                            title: "Language",
                            color: AppTheme.languageColor,
                            exercises: languageExercises,
                            isExpanded: $isLanguageExpanded
                        )
                        sectionAccordion(
                            title: "Cognition",
                            color: AppTheme.cognitionColor,
                            exercises: cognitionExercises,
                            isExpanded: $isCognitionExpanded
                        )
                        sectionAccordion(
                            title: "Daily Skills",
                            color: AppTheme.functionalColor,
                            exercises: functionalExercises,
                            isExpanded: $isFunctionalExpanded
                        )
                    }
                    .padding(.horizontal, 20)

                    // ── Section 5: Reset ──────────────────────────────────
                    resetButton
                        .padding(.horizontal, 20)
                        .padding(.top, 4)
                }
                .padding(.top, 8)
                .padding(.bottom, 32)
            }
            .navigationTitle("My Progress")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .background(Color.groupedBackground.ignoresSafeArea())
            .onAppear { loadAllData() }
            .alert("Reset All Progress", isPresented: $showResetAlert) {
                Button("Cancel", role: .cancel) {}
                Button("Reset", role: .destructive) { executeWipeAndReset() }
            } message: {
                Text("This will clear all your progress and session history. This cannot be undone.")
            }
        }
    }

    // MARK: - Section 1: Stats Grid

    private var statsGrid: some View {
        let columns = [GridItem(.flexible(), spacing: 12), GridItem(.flexible(), spacing: 12)]
        return LazyVGrid(columns: columns, spacing: 12) {
            statCard(
                value: "\(profileStore.profile.currentStreak)",
                label: "Day Streak",
                icon: "flame.fill",
                color: .orange
            )
            statCard(
                value: "\(profileStore.profile.longestStreak)",
                label: "Best Streak",
                icon: "trophy.fill",
                color: .yellow
            )
            statCard(
                value: "\(totalSessionsPlayed)",
                label: "Sessions",
                icon: "checkmark.circle.fill",
                color: .green
            )
            statCard(
                value: overallAccuracy(),
                label: "Accuracy",
                icon: "target",
                color: .blue
            )
        }
    }

    @ViewBuilder
    private func statCard(value: String, label: String, icon: String, color: Color) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(color)
                Spacer()
            }
            Text(value)
                .font(.system(size: 34, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(label)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: color.opacity(0.12), radius: 6, x: 0, y: 3)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(color.opacity(0.15), lineWidth: 1.5)
        )
    }

    // MARK: - Section 2: Weekly Activity Chart

    private var weeklyChartCard: some View {
        let activity = weeklyActivity()
        return VStack(alignment: .leading, spacing: 12) {
            Chart(activity) { day in
                BarMark(
                    x: .value("Day", day.day),
                    y: .value("Sessions", day.count)
                )
                .foregroundStyle(day.isToday ? Color.orange : Color.blue.opacity(0.75))
                .cornerRadius(6)
            }
            .chartYAxis {
                AxisMarks(position: .leading, values: .automatic(desiredCount: 4)) { value in
                    AxisValueLabel()
                        .font(.caption)
                    AxisGridLine(stroke: StrokeStyle(lineWidth: 0.5, dash: [3]))
                        .foregroundStyle(Color.secondary.opacity(0.3))
                }
            }
            .chartXAxis {
                AxisMarks { value in
                    AxisValueLabel()
                        .font(.caption)
                }
            }
            .frame(height: 140)

            HStack(spacing: 16) {
                legendDot(color: .orange, label: "Today")
                legendDot(color: .blue.opacity(0.75), label: "Previous days")
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .padding(16)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
    }

    @ViewBuilder
    private func legendDot(color: Color, label: String) -> some View {
        HStack(spacing: 4) {
            Circle().fill(color).frame(width: 8, height: 8)
            Text(label)
        }
    }

    // MARK: - Section 3: Per-Section Accuracy

    private var accuracyCard: some View {
        VStack(spacing: 0) {
            accuracyRow(
                title: "Language",
                icon: "text.bubble",
                color: AppTheme.languageColor,
                sectionKey: "language"
            )
            Divider().padding(.leading, 52)
            accuracyRow(
                title: "Cognition",
                icon: "brain.head.profile",
                color: AppTheme.cognitionColor,
                sectionKey: "cognition"
            )
            Divider().padding(.leading, 52)
            accuracyRow(
                title: "Daily Skills",
                icon: "heart.text.square",
                color: AppTheme.functionalColor,
                sectionKey: "functionalSkills"
            )
        }
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
    }

    @ViewBuilder
    private func accuracyRow(title: String, icon: String, color: Color, sectionKey: String) -> some View {
        let pct = sectionAccuracy(for: sectionKey)
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundColor(color)
                .frame(width: 28)

            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Spacer()
                    if let pct {
                        Text("\(Int(pct * 100))%")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(color)
                    } else {
                        Text("No data yet")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }

                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(color.opacity(0.12))
                            .frame(height: 8)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(color)
                            .frame(width: geo.size.width * CGFloat(pct ?? 0), height: 8)
                    }
                }
                .frame(height: 8)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 14)
    }

    // MARK: - Section 4: Exercise Accordion

    @ViewBuilder
    private func sectionAccordion(
        title: String,
        color: Color,
        exercises: [Exercise],
        isExpanded: Binding<Bool>
    ) -> some View {
        let attemptedCount = exercises.filter {
            attemptedExercises.contains($0.title) || completedExercises.contains($0.title)
        }.count

        VStack(spacing: 0) {
            // Header toggle
            Button {
                withAnimation(.easeInOut(duration: 0.2)) {
                    isExpanded.wrappedValue.toggle()
                }
            } label: {
                HStack {
                    Circle().fill(color).frame(width: 12, height: 12)
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Spacer()
                    Text("\(attemptedCount) of \(exercises.count) started")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fontWeight(.medium)
                    Image(systemName: isExpanded.wrappedValue ? "chevron.up" : "chevron.down")
                        .font(.caption.bold())
                        .foregroundColor(.secondary)
                }
                .padding(18)
                .background(Color.secondaryGroupedBackground)
            }
            .buttonStyle(PlainButtonStyle())

            if isExpanded.wrappedValue {
                Divider()
                VStack(spacing: 0) {
                    ForEach(exercises) { exercise in
                        HStack(spacing: 16) {
                            statusIcon(for: exercise.title)
                                .font(.title3)
                            Text(exercise.title)
                                .font(.body)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                            Spacer()
                            let count = playedDict[exercise.title] ?? 0
                            Text("\(count) runs")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.horizontal, 18)
                        .frame(height: 52)

                        if exercise.id != exercises.last?.id {
                            Divider().padding(.leading, 52)
                        }
                    }
                }
                .background(Color.secondaryGroupedBackground)
            }
        }
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(color.opacity(0.12), lineWidth: 1.5)
        )
    }

    @ViewBuilder
    private func statusIcon(for title: String) -> some View {
        if completedExercises.contains(title) {
            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
        } else if attemptedExercises.contains(title) {
            Image(systemName: "circle.lefthalf.filled").foregroundColor(.blue)
        } else {
            Image(systemName: "circle").foregroundColor(.gray.opacity(0.6))
        }
    }

    // MARK: - Section 5: Reset Button

    private var resetButton: some View {
        Button {
            showResetAlert = true
        } label: {
            HStack {
                Image(systemName: "arrow.clockwise")
                Text("Reset All Progress")
            }
            .font(.headline)
            .foregroundColor(.red)
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(Color.red.opacity(0.1))
            .cornerRadius(16)
        }
        .buttonStyle(PlainButtonStyle())
    }

    // MARK: - Shared Section Header

    @ViewBuilder
    private func sectionHeader(_ title: String) -> some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 4)
    }

    // MARK: - Helper: Weekly Activity

    private func weeklyActivity() -> [DayActivity] {
        let calendar = Calendar.current
        let today    = calendar.startOfDay(for: Date())
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"   // "Mon", "Tue" …

        return (0..<7).reversed().map { offset in
            let date      = calendar.date(byAdding: .day, value: -offset, to: today)!
            let dayString = formatter.string(from: date)
            let isToday   = offset == 0

            let count = profileStore.profile.completionHistory.filter {
                calendar.isDate($0, inSameDayAs: date)
            }.count

            return DayActivity(day: dayString, date: date, count: count, isToday: isToday)
        }
    }

    // MARK: - Helper: Section Accuracy

    /// Returns accuracy (0.0–1.0) for the given section key, or nil if no data.
    private func sectionAccuracy(for section: String) -> Double? {
        let entries = sessionLog.filter { ($0["section"] as? String) == section }
        guard !entries.isEmpty else { return nil }
        let correct = entries.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        let total   = entries.compactMap { $0["total"]           as? Int }.reduce(0, +)
        guard total > 0 else { return nil }
        return Double(correct) / Double(total)
    }

    // MARK: - Helper: Overall Accuracy

    private func overallAccuracy() -> String {
        let correct = sessionLog.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        let total   = sessionLog.compactMap { $0["total"]           as? Int }.reduce(0, +)
        guard total > 0 else { return "—" }
        return "\(Int(Double(correct) / Double(total) * 100))%"
    }

    // MARK: - Data Loading

    private func loadAllData() {
        completedExercises  = ProgressTracker.getCompletedExercises()
        attemptedExercises  = Set(UserDefaults.standard.stringArray(forKey: "CogniLink_AttemptedExercises") ?? [])
        playedDict          = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]

        let raw = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) ?? []
        if let data    = try? JSONSerialization.data(withJSONObject: raw),
           let cleaned = try? JSONSerialization.jsonObject(with: data) as? [[String: Any]] {
            sessionLog = cleaned
        } else {
            sessionLog = []
        }
    }

    private func executeWipeAndReset() {
        ProgressTracker.resetAllProgress()
        UserProgressStore.shared.resetAttempts()
        AdaptiveDifficultyStore.shared.resetAll()
        
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "CogniLink_ExercisePlays")
        defaults.removeObject(forKey: "CogniLink_AttemptedExercises")
        defaults.removeObject(forKey: ResearchExportManager.sessionLogKey)
        defaults.removeObject(forKey: "clarity_onboarding_complete")
        defaults.removeObject(forKey: "tvSoundEnabled")
        
        let allKeys = defaults.dictionaryRepresentation().keys
        allKeys.filter { $0.hasPrefix("clarity_keyboard_tip_shown_") }
               .forEach { defaults.removeObject(forKey: $0) }
               
        loadAllData()
    }
}
