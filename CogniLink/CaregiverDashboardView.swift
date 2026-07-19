#if os(iOS)
import SwiftUI

/// Caregiver dashboard shown after a successful PIN entry: patient summary,
/// quick stats, navigation to caregiver tools, and the Therapy Settings
/// section (moved here from the Profile tab).
struct CaregiverDashboardView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @ObservedObject private var store = UserProfileStore.shared
    @ObservedObject private var adaptiveStore = AdaptiveDifficultyStore.shared
    @ObservedObject private var trajectoryStore = TrajectorySettingsStore.shared

    @State private var showChangePIN = false
    @State private var showResetAdaptiveAlert = false
    @State private var showBaselineAssessment = false
    @State private var showGuidanceInfoPrompt = false
    @State private var navigateToGuidanceInfo = false
    @ObservedObject private var notificationManager = NotificationManager.shared

    // Supersedes the two old one-time prompts ("clarity_trajectory_settings_prompt_shown"
    // and "clarity_maintenance_mode_disclaimer_shown"), merged into a single
    // app-wide popup pointing at AppGuidanceInfoView.
    private static let guidanceInfoPromptShownKey = "clarity_guidance_info_prompt_shown"

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
                    Divider().padding(.leading, 52)
                    NavigationLink(destination: AppGuidanceInfoView()) {
                        dashboardRow(icon: "info.circle", label: languageManager.currentLanguage.trajAboutGuidanceLabel)
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

                // Hidden trigger for the guidance-info prompt's "About this
                // app's guidance" button — programmatic push, not shown directly.
                NavigationLink(destination: AppGuidanceInfoView(), isActive: $navigateToGuidanceInfo) {
                    EmptyView()
                }
                .hidden()
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
            if !UserDefaults.standard.bool(forKey: Self.guidanceInfoPromptShownKey) {
                // Set the flag immediately, before display, so a kill mid-display
                // can never cause the prompt to reappear.
                UserDefaults.standard.set(true, forKey: Self.guidanceInfoPromptShownKey)
                showGuidanceInfoPrompt = true
            }
        }
        .alert(languageManager.currentLanguage.trajGuidanceFeaturesAlertTitle, isPresented: $showGuidanceInfoPrompt) {
            Button(languageManager.currentLanguage.trajAboutGuidanceLabel) { navigateToGuidanceInfo = true }
            Button(languageManager.currentLanguage.trajOK, role: .cancel) {}
        } message: {
            Text(languageManager.currentLanguage.trajGuidanceFeaturesAlertBody)
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

                // Trajectory-Aware Insights (Goal Orientation + Fluctuation)
                trajectorySettingsCard

                // Reset Adaptive Progress Button
                resetAdaptiveButton
            }
        }
    }

    // MARK: - Trajectory-Aware Insights Settings

    private var trajectorySettingsCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Goal Orientation
            VStack(alignment: .leading, spacing: 8) {
                Text(languageManager.currentLanguage.trajGoalOrientationLabel)
                    .font(.body)
                    .foregroundColor(.primary)

                Picker(languageManager.currentLanguage.trajGoalOrientationLabel, selection: Binding<GoalOrientation>(
                    get: { trajectoryStore.goalOrientation },
                    set: { trajectoryStore.goalOrientation = $0 }
                )) {
                    ForEach(GoalOrientation.allCases, id: \.self) { orientation in
                        Text(languageManager.currentLanguage.trajGoalOrientationDisplayName(orientation)).tag(orientation)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())

                Text(languageManager.currentLanguage.trajRecoveryMaintenanceSubtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Divider()

            // Expect Day-to-Day Fluctuation
            VStack(alignment: .leading, spacing: 8) {
                Toggle(isOn: Binding<Bool>(
                    get: { trajectoryStore.expectFluctuation },
                    set: { trajectoryStore.expectFluctuation = $0 }
                )) {
                    Text(languageManager.currentLanguage.trajFluctuationToggleLabel)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                Text(languageManager.currentLanguage.trajFluctuationToggleSubtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Divider()

            // Persistent feature-maturity notice — always visible while this
            // section is shown, regardless of toggle values. Not dismissible;
            // this is a standing status note, not a one-time prompt. Wording
            // owned by AppGuidanceInfoView so this and the central "About
            // this app's guidance" screen can never drift apart.
            DisclaimerText(
                text: AppGuidanceInfoView.featureMaturityNoticeText(patientName: store.profile.displayName),
                style: .inline)
        }
        .padding()
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        .padding(.horizontal)
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

// MARK: - Trajectory-Aware Insights Localization

extension AppLanguage {
    var trajGoalOrientationLabel: String {
        switch self {
        case .english:    return "Goal Orientation"
        case .spanish:    return "Orientación hacia los objetivos"
        case .hindi:      return "लक्ष्य अभिविन्यास"
        case .gujarati:   return "લક્ષ્ય-મુખીકરણ"
        case .chinese:    return "目标导向"
        case .farsi:      return "گرایش به هدف"
        case .korean:     return "목표 지향성"
        case .vietnamese: return "Định hướng mục tiêu"
        case .arabic:     return "التوجه نحو الأهداف"
        case .portuguese: return "Orientação para metas"
        case .tagalog:    return "Oryentasyong Nakatuon sa Layunin"
        case .punjabi:    return "ਲਕਸ਼-ਕੇਂਦ੍ਰਿਤਤਾ"
        case .armenian:   return "Նպատակային կողմնորոշում"
        case .japanese:   return "目標志向"
        case .french:     return "Orientation vers les objectifs"
        case .amharic:    return "የግብ አቅጣጫ"
        }
    }

    func trajGoalOrientationDisplayName(_ orientation: GoalOrientation) -> String {
        switch orientation {
        case .recovery:
            switch self {
            case .english:    return "Recovery"
            case .spanish:    return "Recuperación"
            case .hindi:      return "पुनर्प्राप्ति"
            case .gujarati:   return "પુનઃપ્રાપ્તિ"
            case .chinese:    return "恢复"
            case .farsi:      return "بازیابی"
            case .korean:     return "회복"
            case .vietnamese: return "Phục hồi"
            case .arabic:     return "التعافي"
            case .portuguese: return "Recuperação"
            case .tagalog:    return "Pagbawi"
            case .punjabi:    return "ਸੁਧਾਰ"
            case .armenian:   return "Վերականգնում"
            case .japanese:   return "回復"
            case .french:     return "Rétablissement"
            case .amharic:    return "ማገገም"
            }
        case .maintenance:
            switch self {
            case .english:    return "Maintenance"
            case .spanish:    return "Mantenimiento"
            case .hindi:      return "रखरखाव"
            case .gujarati:   return "જાળવણી"
            case .chinese:    return "维护"
            case .farsi:      return "نگهداری"
            case .korean:     return "유지보수"
            case .vietnamese: return "Bảo trì"
            case .arabic:     return "الصيانة"
            case .portuguese: return "Manutenção"
            case .tagalog:    return "Pananatili"
            case .punjabi:    return "ਰਖ-ਰਖਾਅ"
            case .armenian:   return "Պահպանում"
            case .japanese:   return "メンテナンス"
            case .french:     return "Entretien"
            case .amharic:    return "ሁኔታን ጠብቆ ማቆየት"
            }
        }
    }

    var trajRecoveryMaintenanceSubtitle: String {
        switch self {
        case .english:    return "Recovery: framing assumes improvement is the goal. Maintenance: framing treats steady performance as a positive outcome."
        case .spanish:    return "Recuperación: este enfoque parte de la base de que el objetivo es la mejora. Mantenimiento: este enfoque considera que un rendimiento estable es un resultado positivo."
        case .hindi:      return "रिकवरी: फ्रेमिंग यह मानती है कि सुधार ही लक्ष्य है। मेंटेनेंस: फ्रेमिंग स्थिर प्रदर्शन को सकारात्मक परिणाम मानती है।"
        case .gujarati:   return "પુનઃપ્રાપ્તિ: ફ્રેમિંગ એવું માનવામાં આવે છે કે સુધારણા જ લક્ષ્ય છે. જાળવણી: ફ્રેમિંગ સ્થિર કામગીરીને સકારાત્મક પરિણામ માનવામાં આવે છે."
        case .chinese:    return "恢复：这种框架假设改善是目标。维护：这种框架将表现稳定视为积极结果。"
        case .farsi:      return "بازیابی: چارچوب‌بندی فرض می‌کند که بهبود هدف است. نگهداری: چارچوب‌بندی عملکرد پایدار را به‌عنوان یک نتیجه مثبت در نظر می‌گیرد."
        case .korean:     return "회복: 이러한 관점은 개선을 목표로 삼습니다. 유지보수: 이러한 관점은 꾸준한 성과를 긍정적인 결과로 간주합니다."
        case .vietnamese: return "Phục hồi: Cách tiếp cận này coi việc cải thiện là mục tiêu. Bảo trì: Cách tiếp cận này coi việc duy trì hiệu suất ổn định là một kết quả tích cực."
        case .arabic:     return "التعافي: يفترض هذا النهج أن الهدف هو التحسن. الصيانة: يعتبر هذا النهج أن الأداء الثابت يمثل نتيجة إيجابية."
        case .portuguese: return "Recuperação: essa abordagem parte do princípio de que o objetivo é a melhora. Manutenção: essa abordagem considera o desempenho estável como um resultado positivo."
        case .tagalog:    return "Pagbawi: ipinapalagay ng pagframe na ang pag-unlad ang layunin. Pananatili: tinuturing ng pagframe ang matatag na pagganap bilang isang positibong kinalabasan."
        case .punjabi:    return "ਸੁਧਾਰ: ਫਰੇਮਿੰਗ ਇਹ ਮੰਨਦੀ ਹੈ ਕਿ ਸੁਧਾਰ ਹੀ ਟੀਚਾ ਹੈ। ਰਖ-ਰਖਾਅ: ਫਰੇਮਿੰਗ ਸਥਿਰ ਕਾਰਗੁਜ਼ਾਰੀ ਨੂੰ ਇੱਕ ਸਕਾਰਾਤਮਕ ਨਤੀਜੇ ਵਜੋਂ ਵੇਖਦੀ ਹੈ।"
        case .armenian:   return "Վերականգնում. այս մոտեցումը ենթադրում է, որ նպատակը բարելավումն է։ Պահպանում. այս մոտեցումը կայուն կատարողականությունը դիտարկում է որպես դրական արդյունք։"
        case .japanese:   return "回復：この枠組みでは、改善が目標であると想定される。メンテナンス：この枠組みでは、安定したパフォーマンスを肯定的な成果として捉える。"
        case .french:     return "Rétablissement : cette approche part du principe que l'objectif est l'amélioration. Entretien : cette approche considère qu'un rendement stable constitue un résultat positif."
        case .amharic:    return "ማገገም፡ ዋናው ግብ መሻሻል መሆኑን ያሳያል። ሁኔታን ጠብቆ ማቆየት፡ አፈጻጸም ሳይቀያየር በተመሳሳይ ሁኔታ መቀጠሉን እንደ ጥሩ ውጤት ይቆጥረዋል።"
        }
    }

    var trajFluctuationToggleLabel: String {
        switch self {
        case .english:    return "Expect Day-to-Day Fluctuation"
        case .spanish:    return "Es de esperar que se produzcan fluctuaciones diarias"
        case .hindi:      return "दैनिक उतार-चढ़ाव की अपेक्षा करें"
        case .gujarati:   return "દૈનિક ઉતાર-ચઢાવની અપેક્ષા રાખો"
        case .chinese:    return "请注意日常波动"
        case .farsi:      return "انتظار نوسانات روزمره را داشته باشید"
        case .korean:     return "일일 변동은 예상됩니다"
        case .vietnamese: return "Hãy chuẩn bị tinh thần cho những biến động hàng ngày"
        case .arabic:     return "توقع حدوث تقلبات يومية"
        case .portuguese: return "Espere flutuações diárias"
        case .tagalog:    return "Asahan ang araw-araw na pagbabago."
        case .punjabi:    return "ਰੋਜ਼ਾਨਾ ਉਤਾਰ-ਚੜ੍ਹਾਅ ਦੀ ਉਮੀਦ ਰੱਖੋ"
        case .armenian:   return "Սպասեք օրական տատանումներին"
        case .japanese:   return "日々の変動が見込まれます"
        case .french:     return "Prévoyez des fluctuations quotidiennes"
        case .amharic:    return "የዕለት ተዕለት መለዋወጥን ጠብቅ"
        }
    }

    var trajFluctuationToggleSubtitle: String {
        switch self {
        case .english:    return "Turn this on if day-to-day ups and downs are expected for reasons unrelated to how your loved one is doing in therapy."
        case .spanish:    return "Activa esta opción si se prevén altibajos cotidianos por motivos ajenos a la evolución de tu ser querido en la terapia."
        case .hindi:      return "यदि आपके प्रियजन के थेरेपी में प्रदर्शन से असंबंधित कारणों से दिन-प्रतिदिन उतार-चढ़ाव की उम्मीद है, तो इसे चालू करें।"
        case .gujarati:   return "જો તમારા પ્રિયજનની થેરાપીમાં પ્રગતિ કે પછડાટ સિવાયના કારણોસર રોજબરોજ ઉતાર-ચઢાવની અપેક્ષા હોય, તો આ ચાલુ કરો."
        case .chinese:    return "如果预计会出现日常情绪波动，且这些波动与您所爱之人在治疗中的表现无关，请开启此功能。"
        case .farsi:      return "اگر نوسانات روزمره به دلایلی غیر از پیشرفت عزیزتان در درمان پیش‌بینی می‌شود، این را فعال کنید."
        case .korean:     return "사랑하는 사람의 치료 진행 상황과 무관한 이유로 일상적인 기복이 예상될 경우 이 기능을 켜두세요."
        case .vietnamese: return "Hãy bật tùy chọn này nếu bạn dự đoán sẽ có những biến động hàng ngày do các nguyên nhân không liên quan đến tiến trình điều trị của người thân bạn."
        case .arabic:     return "قم بتفعيل هذه الخيار إذا كان من المتوقع حدوث تقلبات يومية لأسباب لا علاقة لها بتقدم أحبائك في العلاج."
        case .portuguese: return "Ative essa opção se forem esperados altos e baixos no dia a dia por motivos não relacionados ao desempenho do seu ente querido na terapia."
        case .tagalog:    return "I-on ito kung inaasahan ang araw-araw na pagtaas at pagbaba na hindi kaugnay sa progreso ng iyong mahal sa buhay sa therapy."
        case .punjabi:    return "ਜੇਕਰ ਤੁਹਾਡੇ ਪਿਆਰੇ ਦੀ ਥੈਰੇਪੀ ਵਿੱਚ ਤਰੱਕੀ ਨਾਲ ਸਬੰਧਤ ਨਾ ਹੋਣ ਵਾਲੇ ਕਾਰਨਾਂ ਕਰਕੇ ਰੋਜ਼ਾਨਾ ਉਤਰਾਅ-ਚੜ੍ਹਾਅ ਦੀ ਉਮੀਦ ਹੈ, ਤਾਂ ਇਸਨੂੰ ਚਾਲੂ ਕਰੋ।"
        case .armenian:   return "Այս տարբերակը միացրեք, եթե առօրյայում սպասվում են տատանումներ, որոնք չեն կապված ձեր սիրելիի թերապիայում ընթացքին։"
        case .japanese:   return "治療における大切な方の経過とは関係のない理由で、日々の浮き沈みが予想される場合は、この設定をオンにしてください。"
        case .french:     return "Cochez cette case si vous vous attendez à des hauts et des bas au quotidien pour des raisons qui n'ont rien à voir avec les progrès de votre proche en thérapie."
        case .amharic:    return "የምትወዱት ሰው በሕክምናው ላይ ካለው ሁኔታ ውጭ፣ በሌሎች ምክንያቶች የዕለት ተዕለት መለዋወጥ (መውረድ እና መውጣት) የሚጠበቅ ከሆነ ይህንን ያብሩት።"
        }
    }

    var trajAboutGuidanceLabel: String {
        switch self {
        case .english:    return "About this app's guidance"
        case .spanish:    return "Acerca de la guía de esta aplicación"
        case .hindi:      return "इस ऐप के मार्गदर्शन के बारे में"
        case .gujarati:   return "આ એપની માર્ગદર્શિકા વિશે"
        case .chinese:    return "关于本应用的指引"
        case .farsi:      return "درباره راهنمای این برنامه"
        case .korean:     return "이 앱의 안내에 대하여"
        case .vietnamese: return "Giới thiệu về hướng dẫn sử dụng ứng dụng này"
        case .arabic:     return "حول إرشادات هذا التطبيق"
        case .portuguese: return "Sobre as orientações deste aplicativo"
        case .tagalog:    return "Tungkol sa gabay ng app na ito"
        case .punjabi:    return "ਇਸ ਐਪ ਦੀ ਮਾਰਗਦਰਸ਼ਨ ਬਾਰੇ"
        case .armenian:   return "Այս հավելվածի ուղեցույցի մասին"
        case .japanese:   return "このアプリのガイドについて"
        case .french:     return "À propos des conseils de cette application"
        case .amharic:    return "ስለዚሁ መተግበሪያ መመሪያ"
        }
    }

    var trajGuidanceFeaturesAlertTitle: String {
        switch self {
        case .english:    return "Guidance Features"
        case .spanish:    return "Funciones de orientación"
        case .hindi:      return "मार्गदर्शन सुविधाएँ"
        case .gujarati:   return "માર્ગદર્શક વિશેષતાઓ"
        case .chinese:    return "指导功能"
        case .farsi:      return "ویژگی‌های راهنما"
        case .korean:     return "가이드 기능"
        case .vietnamese: return "Các tính năng hướng dẫn"
        case .arabic:     return "ميزات الدليل"
        case .portuguese: return "Recursos de orientação"
        case .tagalog:    return "Mga Tampok ng Gabay"
        case .punjabi:    return "ਮਾਰਗਦਰਸ਼ਨ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ"
        case .armenian:   return "Ուղեցույցի առանձնահատկություններ"
        case .japanese:   return "ガイダンス機能"
        case .french:     return "Fonctionnalités d'orientation"
        case .amharic:    return "የመመሪያ ባህሪያት"
        }
    }

    var trajGuidanceFeaturesAlertBody: String {
        switch self {
        case .english:    return "This app includes some experimental guidance features — see [About this app's guidance] anytime for details in your Caregiver menu."
        case .spanish:    return "Esta aplicación incluye algunas funciones de orientación experimentales; para obtener más información, consulta en cualquier momento la sección [Acerca de la orientación de esta aplicación] en el menú «Cuidador»."
        case .hindi:      return "इस ऐप में कुछ प्रयोगात्मक मार्गदर्शन सुविधाएँ शामिल हैं — विवरण के लिए किसी भी समय अपने केयरगिवर मेनू में [इस ऐप के मार्गदर्शन के बारे में] देखें।"
        case .gujarati:   return "આ એપમાં કેટલીક પ્રયોગાત્મક માર્ગદર્શક સુવિધાઓ છે — વિગતવાર માહિતી માટે કોઈપણ સમયે તમારા કેરગિવર મેનૂમાં [આ એપની માર્ગદર્શક વિશે] જુઓ."
        case .chinese:    return "该应用包含一些实验性的指导功能——您可随时在\"护理人员\"菜单中查看[关于本应用的指导]以了解详情。"
        case .farsi:      return "این برنامه شامل برخی ویژگی‌های راهنمای آزمایشی است — برای جزئیات، هر زمان در منوی «مراقب» خود به [دربارهٔ راهنمای این برنامه] مراجعه کنید."
        case .korean:     return "이 앱에는 몇 가지 실험적인 안내 기능이 포함되어 있습니다. 자세한 내용은 '보호자' 메뉴에서 언제든지 [이 앱의 안내 정보]를 참조해 주세요."
        case .vietnamese: return "Ứng dụng này bao gồm một số tính năng hướng dẫn đang trong giai đoạn thử nghiệm — bạn có thể xem [Giới thiệu về tính năng hướng dẫn của ứng dụng này] bất cứ lúc nào để biết thêm chi tiết trong menu \"Người chăm sóc\"."
        case .arabic:     return "يتضمن هذا التطبيق بعض ميزات التوجيه التجريبية — يمكنك الاطلاع على [حول ميزات التوجيه في هذا التطبيق] في أي وقت للحصول على التفاصيل من قائمة «مقدم الرعاية»."
        case .portuguese: return "Este aplicativo inclui alguns recursos experimentais de orientação — consulte [Sobre a orientação deste aplicativo] a qualquer momento para obter mais detalhes no menu \"Cuidador\"."
        case .tagalog:    return "Kasama sa app na ito ang ilang eksperimentoal na tampok sa gabay — tingnan ang [Tungkol sa gabay ng app na ito] anumang oras para sa mga detalye sa iyong menu ng Tagapag-alaga."
        case .punjabi:    return "ਇਸ ਐਪ ਵਿੱਚ ਕੁਝ ਪ੍ਰਯੋਗਾਤਮਕ ਮਾਰਗਦਰਸ਼ਨ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਸ਼ਾਮਲ ਹਨ — ਵੇਰਵਿਆਂ ਲਈ ਕਿਸੇ ਵੀ ਸਮੇਂ ਆਪਣੇ ਕੇਅਰਗਿਵਰ ਮੀਨੂ ਵਿੱਚ [ਇਸ ਐਪ ਦੇ ਮਾਰਗਦਰਸ਼ਨ ਬਾਰੇ] ਵੇਖੋ।"
        case .armenian:   return "Այս հավելվածը ներառում է մի քանի փորձարկման ուղեցույցային հնարավորություններ — ցանկացած պահի մանրամասների համար «Այս հավելվածի ուղեցույցի մասին» բաժինը դիտեք ձեր խնամողի մենյուում։"
        case .japanese:   return "このアプリには、いくつかの試験的なガイダンス機能が搭載されています。詳細については、いつでも「介護者」メニュー内の[このアプリのガイダンスについて]をご覧ください。"
        case .french:     return "Cette application comprend certaines fonctionnalités d'accompagnement à caractère expérimental — pour plus de détails, consultez à tout moment la section [À propos des fonctionnalités d'accompagnement de cette application] dans votre menu « Aidant »."
        case .amharic:    return "ይህ መተግበሪያ አንዳንድ በሙከራ ላይ ያሉ የመመሪያ ባህሪያትን ያካትታል — ዝርዝሩን በማንኛውም ጊዜ ተንከባካቢ ማውጫ ውስጥ «ስለዚሁ መተግበሪያ መመሪያ» በሚለው ስር ይመልከቱ።"
        }
    }

    var trajOK: String {
        switch self {
        case .english:    return "OK"
        case .spanish:    return "De acuerdo"
        case .hindi:      return "ठीक है"
        case .gujarati:   return "બરાબર"
        case .chinese:    return "好的"
        case .farsi:      return "باشه"
        case .korean:     return "알겠습니다"
        case .vietnamese: return "Được rồi"
        case .arabic:     return "حسنًا"
        case .portuguese: return "Tudo bem"
        case .tagalog:    return "Sige"
        case .punjabi:    return "ਠੀਕ ਹੈ"
        case .armenian:   return "Լավ է"
        case .japanese:   return "わかった"
        case .french:     return "D'accord"
        case .amharic:    return "እሺ"
        }
    }
}

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
