#if os(iOS)
import SwiftUI

/// Caregiver dashboard shown after a successful PIN entry: patient summary,
/// quick stats, navigation to caregiver tools, and the Therapy Settings
/// section (moved here from the Profile tab).
struct CaregiverDashboardView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @ObservedObject private var store = UserProfileStore.shared
    @ObservedObject private var adaptiveStore = AdaptiveDifficultyStore.shared

    @State private var showChangePIN = false
    @State private var showResetAdaptiveAlert = false
    @State private var showBaselineAssessment = false
    @ObservedObject private var notificationManager = NotificationManager.shared

    private var reminderTimeBinding: Binding<Date> {
        Binding(
            get: {
                Calendar.current.date(bySettingHour: notificationManager.reminderHour,
                                      minute: notificationManager.reminderMinute,
                                      second: 0, of: Date()) ?? Date()
            },
            set: { newValue in
                let components = Calendar.current.dateComponents([.hour, .minute], from: newValue)
                notificationManager.reminderHour = components.hour ?? 10
                notificationManager.reminderMinute = components.minute ?? 0
            }
        )
    }

    // MARK: - Stats

    private var sessionLog: [[String: Any]] {
        UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) as? [[String: Any]] ?? []
    }

    private var overallAccuracyText: String {
        let correct = sessionLog.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        let total   = sessionLog.compactMap { $0["total"] as? Int }.reduce(0, +)
        guard total > 0 else { return "—" }
        return "\(Int(Double(correct) / Double(total) * 100))%"
    }

    private var sessionsThisWeek: Int {
        let calendar = Calendar.current
        guard let weekStart = calendar.dateInterval(of: .weekOfYear, for: Date())?.start else { return 0 }
        return store.profile.completionHistory.filter { $0 >= weekStart }.count
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {

                // Patient header
                VStack(spacing: 6) {
                    Text(store.profile.displayName)
                        .font(.title2)
                        .fontWeight(.semibold)
                    if let diagnosis = store.profile.diagnosisDisplayText {
                        Text(diagnosis)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 12)

                // Quick stats
                HStack(spacing: 12) {
                    quickStat(value: "\(store.profile.currentStreak)", label: languageManager.currentLanguage.cgCurrentStreak, icon: "flame.fill", color: .orange)
                    quickStat(value: overallAccuracyText, label: languageManager.currentLanguage.cgOverallAccuracy, icon: "target", color: .blue)
                    quickStat(value: "\(sessionsThisWeek)", label: languageManager.currentLanguage.cgSessionsThisWeek, icon: "calendar", color: .green)
                }
                .padding(.horizontal)

                // Navigation
                VStack(spacing: 0) {
                    NavigationLink(destination: CaregiverProgressView()) {
                        dashboardRow(icon: "chart.xyaxis.line", label: languageManager.currentLanguage.cgProgressDetail)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 52)
                    NavigationLink(destination: CaregiverInsightsView()) {
                        dashboardRow(icon: "lightbulb", label: languageManager.currentLanguage.cgInsights)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 52)
                    NavigationLink(destination: GoalSettingView()) {
                        dashboardRow(icon: "trophy", label: languageManager.currentLanguage.cgWeeklyGoal)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 52)
                    NavigationLink(destination: TherapyNotesView()) {
                        dashboardRow(icon: "note.text", label: languageManager.currentLanguage.cgTherapyNotes)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 52)
                    NavigationLink(destination: FlaggedContentView()) {
                        dashboardRow(icon: "flag.fill", label: languageManager.currentLanguage.flaggedContentSectionLabel)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 52)
                    Button(action: { showBaselineAssessment = true }) {
                        dashboardRow(icon: "list.clipboard", label: languageManager.currentLanguage.cgRunBaseline)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 52)
                    Button(action: { showChangePIN = true }) {
                        dashboardRow(icon: "key", label: languageManager.currentLanguage.cgChangePIN)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)

                // Notification settings
                notificationSettingsSection

                // Therapy Settings (moved from Profile tab)
                therapySettingsSection
            }
            .padding(.vertical)
        }
        .background(Color.groupedBackground.ignoresSafeArea())
        .sheet(isPresented: $showChangePIN) {
            ChangePINView()
        }
        .sheet(isPresented: $showBaselineAssessment) {
            BaselineAssessmentView()
        }
        .onAppear {
            notificationManager.requestPermissionIfNeeded()
        }
    }

    // MARK: - Notification Settings

    private var notificationSettingsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Image(systemName: "bell.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(languageManager.currentLanguage.cgNotifications)
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)

            VStack(spacing: 0) {
                Toggle(isOn: Binding(
                    get: { notificationManager.remindersEnabled },
                    set: { notificationManager.remindersEnabled = $0 }
                )) {
                    Text(languageManager.currentLanguage.cgPracticeReminders)
                        .font(.body)
                        .foregroundColor(.primary)
                }
                .padding(.horizontal, 16)
                .frame(minHeight: 50)

                if notificationManager.remindersEnabled {
                    Divider().padding(.leading, 16)
                    DatePicker(
                        languageManager.currentLanguage.cgReminderTime,
                        selection: reminderTimeBinding,
                        displayedComponents: .hourAndMinute
                    )
                    .font(.body)
                    .padding(.horizontal, 16)
                    .frame(minHeight: 50)
                }

                Divider().padding(.leading, 16)

                Toggle(isOn: Binding(
                    get: { notificationManager.streakRemindersEnabled },
                    set: { notificationManager.streakRemindersEnabled = $0 }
                )) {
                    Text(languageManager.currentLanguage.cgStreakReminders)
                        .font(.body)
                        .foregroundColor(.primary)
                }
                .padding(.horizontal, 16)
                .frame(minHeight: 50)
            }
            .background(Color.secondaryGroupedBackground)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
            .padding(.horizontal)

            if notificationManager.permissionDenied {
                Button {
                    if let url = URL(string: UIApplication.openSettingsURLString) {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    HStack {
                        Image(systemName: "exclamationmark.triangle")
                            .foregroundColor(.orange)
                        Text(languageManager.currentLanguage.cgEnableNotificationsInSettings)
                            .font(.footnote)
                            .foregroundColor(.blue)
                        Spacer()
                    }
                    .padding()
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.horizontal)
            }
        }
    }

    // MARK: - Therapy Settings (moved from ProfileView)

    private var therapySettingsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Image(systemName: "lock.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(languageManager.currentLanguage.therapySettingsTitle)
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)

            VStack(spacing: 12) {
                // Master Toggle
                VStack(alignment: .leading, spacing: 4) {
                    Toggle(isOn: Binding<Bool>(
                        get: { AdaptiveDifficultyStore.shared.isMasterToggleOn },
                        set: { val in AdaptiveDifficultyStore.shared.isMasterToggleOn = val }
                    )) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(languageManager.currentLanguage.adaptiveDifficultyLabel)
                                .font(.body)
                                .foregroundColor(.primary)
                            Text(languageManager.currentLanguage.adaptiveDifficultySubtitle)
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    }
                }
                .padding()
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)

                // Per-Exercise Overrides (only if master toggle is on)
                if AdaptiveDifficultyStore.shared.isMasterToggleOn {
                    VStack(spacing: 0) {
                        let overrideItems = TrackedExerciseType.allCases.map {
                            AdaptiveOverrideItem(id: $0.rawValue, name: $0.displayName)
                        }
                        ForEach(overrideItems) { item in
                            AdaptiveOverrideRow(item: item)
                            if item.id != overrideItems.last?.id {
                                Divider().padding(.leading, 16)
                            }
                        }
                    }
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    .padding(.horizontal)
                }

                // Cross-Referenced Difficulty (system-level kill switch).
                // Deliberately its own card, separate from the per-type
                // manual override list above.
                if AdaptiveDifficultyStore.shared.isMasterToggleOn {
                    crossReferenceCard
                }

                // Reset Adaptive Progress Button
                resetAdaptiveButton
            }
        }
    }

    private var crossReferenceCard: some View {
        VStack(alignment: .leading, spacing: 4) {
            Toggle(isOn: Binding<Bool>(
                get: { AdaptiveDifficultyStore.shared.isCrossReferenceEnabled },
                set: { val in AdaptiveDifficultyStore.shared.isCrossReferenceEnabled = val }
            )) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(languageManager.currentLanguage.crossReferenceLabel)
                        .font(.body)
                        .foregroundColor(.primary)
                    Text(languageManager.currentLanguage.crossReferenceSubtitle)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
        .padding()
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        .padding(.horizontal)
    }

    @ViewBuilder
    private var resetAdaptiveButton: some View {
        let lang = languageManager.currentLanguage
        Button(action: { showResetAdaptiveAlert = true }) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(lang.resetDifficultyProgressLabel)
                        .font(.body)
                        .foregroundColor(.red)
                    Text(lang.resetDifficultyProgressSubtitle)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
            }
            .padding()
            .background(Color.red.opacity(0.08))
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal)
        .alert(lang.resetDifficultyProgressAlertTitle, isPresented: $showResetAdaptiveAlert) {
            Button(lang.cgCancel, role: .cancel) {}
            Button(lang.cgResetAction, role: .destructive) {
                adaptiveStore.resetAll()
            }
        } message: {
            Text(lang.resetDifficultyProgressAlertMessage)
        }
    }

    // MARK: - Reusable Pieces

    @ViewBuilder
    private func quickStat(value: String, label: String, icon: String, color: Color) -> some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(color)
            Text(value)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(label)
                .font(.caption2)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 14)
        .padding(.horizontal, 8)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
    }

    @ViewBuilder
    private func dashboardRow(icon: String, label: String) -> some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.body)
                .foregroundColor(.accentColor)
                .frame(width: 28, height: 28)
            Text(label)
                .font(.body)
                .foregroundColor(.primary)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.caption.bold())
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 16)
        .frame(minHeight: 50)
    }
}

// MARK: - AdaptiveOverrideRow (moved from ProfileView)

struct AdaptiveOverrideRow: View {
    let item: AdaptiveOverrideItem
    @ObservedObject private var languageManager = LanguageManager.shared

    private var selectionBinding: Binding<String> {
        Binding(
            get: { AdaptiveDifficultyStore.shared.getManualOverride(for: item.id)?.rawValue ?? "auto" },
            set: { val in
                let diff = (val == "auto") ? nil : Difficulty(rawValue: val)
                AdaptiveDifficultyStore.shared.setManualOverride(diff, for: item.id)
            }
        )
    }

    var body: some View {
        HStack {
            nameLabel
            Spacer()
            difficultyPicker
        }
        .padding(.horizontal, 16)
        .frame(minHeight: 50)
    }

    private var nameLabel: some View {
        Text(item.name)
            .font(.body)
            .foregroundColor(.primary)
    }

    private var difficultyPicker: some View {
        let options: [(tag: String, label: String)] = [
            ("auto",   languageManager.currentLanguage.exerciseAuto),
            ("easy",   languageManager.currentLanguage.exerciseEasy),
            ("medium", languageManager.currentLanguage.exerciseMedium),
            ("hard",   languageManager.currentLanguage.exerciseHard)
        ]
        return Picker("", selection: selectionBinding) {
            ForEach(options, id: \.tag) { opt in
                Text(opt.label).tag(opt.tag)
            }
        }
        .pickerStyle(MenuPickerStyle())
        .labelsHidden()
    }
}
#endif
