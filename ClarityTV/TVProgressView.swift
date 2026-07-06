#if os(tvOS)
import SwiftUI
import Charts

// MARK: - TVProgressFocus

private enum TVProgressFocus: Hashable {
    case card(String)
    case badge(String)
}

// MARK: - TVProgressView

struct TVProgressView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @ObservedObject private var profileStore = UserProfileStore.shared
    @FocusState private var focus: TVProgressFocus?
    @State private var sessionLog: [[String: Any]] = []

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 50) {
                    // Header
                    VStack(spacing: 12) {
                        Text(progressHeader)
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        
                        Text(progressSub)
                            .font(.system(size: 30, weight: .light))
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                    .padding(.top, 40)

                    // Streak and Overall Stats Grid
                    HStack(spacing: 40) {
                        // Current Streak Card
                        progressMetricCard(
                            id: "current_streak",
                            title: currentStreakTitle,
                            value: "\(profileStore.profile.currentStreak)",
                            sub: streakDaysLabel,
                            icon: "flame.fill",
                            iconColor: Color(hex: "FF9500")
                        )

                        // Longest Streak Card
                        progressMetricCard(
                            id: "longest_streak",
                            title: longestStreakTitle,
                            value: "\(profileStore.profile.longestStreak)",
                            sub: streakDaysLabel,
                            icon: "crown.fill",
                            iconColor: Color(hex: "FFD700")
                        )

                        // Overall Accuracy Card
                        progressMetricCard(
                            id: "overall_accuracy",
                            title: overallAccuracyTitle,
                            value: overallAccuracyString(),
                            sub: firstTryAccuracySub,
                            icon: "checkmark.seal.fill",
                            iconColor: Color(hex: "2ECC71")
                        )
                    }
                    .padding(.horizontal, 80)

                    // Weekly Sessions Activity Chart
                    VStack(alignment: .leading, spacing: 20) {
                        Text(weeklyActivityTitle)
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .foregroundColor(.white.opacity(0.85))
                            .padding(.horizontal, 80)

                        VStack(alignment: .leading, spacing: 20) {
                            let activity = weeklyActivity()
                            Chart(activity) { day in
                                BarMark(
                                    x: .value("Day", day.day),
                                    y: .value("Sessions", day.count)
                                )
                                .foregroundStyle(day.isToday ? Color(hex: "FF9500") : Color(hex: "6C63FF"))
                            }
                            .chartYAxis {
                                AxisMarks(position: .leading, values: .automatic(desiredCount: 4)) { value in
                                    AxisValueLabel()
                                        .font(.system(size: 20))
                                        .foregroundStyle(Color.white.opacity(0.6))
                                    AxisGridLine(stroke: StrokeStyle(lineWidth: 1, dash: [3]))
                                        .foregroundStyle(Color.white.opacity(0.15))
                                }
                            }
                            .chartXAxis {
                                AxisMarks { value in
                                    AxisValueLabel()
                                        .font(.system(size: 20))
                                        .foregroundStyle(Color.white.opacity(0.6))
                                }
                            }
                            .frame(height: 250)

                            HStack(spacing: 24) {
                                legendDot(color: Color(hex: "FF9500"), label: todayLabel)
                                legendDot(color: Color(hex: "6C63FF"), label: previousDaysLabel)
                            }
                            .font(.system(size: 22))
                            .foregroundColor(.white.opacity(0.6))
                        }
                        .padding(40)
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color(hex: "2D2D44").opacity(0.5))
                                .padding(.horizontal, 80)
                        )
                        .focusable()
                        .focused($focus, equals: .card("weekly_chart"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(focus == .card("weekly_chart") ? Color.white : Color.clear, lineWidth: 3)
                                .padding(.horizontal, 80)
                        )
                    }

                    // Streaks & Achievements Section
                    VStack(alignment: .leading, spacing: 20) {
                        Text(achievementsSectionTitle)
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .foregroundColor(.white.opacity(0.85))
                            .padding(.horizontal, 80)

                        HStack(spacing: 40) {
                            // Current Streak Info Card
                            VStack(spacing: 8) {
                                Text("\(profileStore.profile.currentStreak)")
                                    .font(.system(size: 48, weight: .bold, design: .rounded))
                                    .foregroundColor(Color(hex: "FF9500"))
                                Text(dayStreakSuffix)
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundColor(.white.opacity(0.6))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 24)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color(hex: "2D2D44").opacity(0.4)))

                            // Longest Streak Info Card
                            VStack(spacing: 8) {
                                Text("\(profileStore.profile.longestStreak)")
                                    .font(.system(size: 48, weight: .bold, design: .rounded))
                                    .foregroundColor(Color(hex: "FFD700"))
                                Text(longestStreakTitle)
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundColor(.white.opacity(0.6))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 24)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color(hex: "2D2D44").opacity(0.4)))

                            // Total Sessions Info Card
                            VStack(spacing: 8) {
                                Text("\(profileStore.profile.completionHistory.count)")
                                    .font(.system(size: 48, weight: .bold, design: .rounded))
                                    .foregroundColor(Color(hex: "2ECC71"))
                                Text(totalSessionsTitle)
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundColor(.white.opacity(0.6))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 24)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color(hex: "2D2D44").opacity(0.4)))
                        }
                        .padding(.horizontal, 80)

                        // 7 Achievement Badges horizontal row
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 24) {
                                ForEach(BadgeManager.evaluateBadges()) { badge in
                                    Button {
                                        // Focus navigation only
                                    } label: {
                                        badgeCard(badge)
                                    }
                                    .buttonStyle(.plain)
                                    .focused($focus, equals: .badge(badge.id))
                                }
                            }
                            .padding(.horizontal, 80)
                            .padding(.vertical, 16)
                        }
                    }

                    // Section Accuracy Breakdown
                    VStack(alignment: .leading, spacing: 24) {
                        Text(categoryAccuracyTitle)
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .foregroundColor(.white.opacity(0.85))
                            .padding(.horizontal, 80)

                        VStack(spacing: 20) {
                            accuracyCard(title: currentLanguage.recSectionName(.language), key: "language", icon: "text.bubble.fill", baseColor: Color(hex: "6C63FF"))
                            accuracyCard(title: currentLanguage.recSectionName(.cognition), key: "cognition", icon: "brain.head.profile.fill", baseColor: Color(hex: "43B89C"))
                            accuracyCard(title: currentLanguage.recSectionName(.functionalSkills), key: "functionalSkills", icon: "heart.text.square.fill", baseColor: Color(hex: "FF9500"))
                        }
                        .padding(.horizontal, 80)
                    }

                    // Explicit Note about PDF Export Omission
                    Text(pdfExportNotice)
                        .font(.system(size: 22, weight: .light))
                        .foregroundColor(Color.white.opacity(0.4))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 100)
                        .padding(.top, 20)

                    Spacer(minLength: 40)
                }
                .padding(.vertical, 40)
            }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        .onAppear {
            loadSessionLog()
        }
    }

    // MARK: - Accuracy Card Helper

    @ViewBuilder
    private func accuracyCard(title: String, key: String, icon: String, baseColor: Color) -> some View {
        let isFocused = focus == .card(key)
        let accuracyVal = sectionAccuracy(for: key)
        let percentString = accuracyVal != nil ? "\(Int(accuracyVal! * 100))%" : "—"

        HStack(spacing: 24) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(baseColor)

            Text(title)
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            Spacer()

            if let val = accuracyVal {
                // Progress Bar
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        Capsule()
                            .fill(Color.white.opacity(0.1))
                            .frame(height: 16)
                        Capsule()
                            .fill(baseColor)
                            .frame(width: geo.size.width * CGFloat(val), height: 16)
                    }
                    .frame(height: 16)
                    .position(x: geo.size.width / 2, y: geo.size.height / 2)
                }
                .frame(width: 300)
            }

            Text(percentString)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(width: 100, alignment: .trailing)
        }
        .padding(30)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44").opacity(0.5))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
        )
        .scaleEffect(isFocused ? 1.02 : 1.0)
        .focusable()
        .focused($focus, equals: .card(key))
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    // MARK: - Metric Card Helper

    @ViewBuilder
    private func progressMetricCard(id: String, title: String, value: String, sub: String, icon: String, iconColor: Color) -> some View {
        let isFocused = focus == .card(id)
        VStack(spacing: 12) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 36))
                    .foregroundColor(iconColor)
                Spacer()
            }

            Spacer()

            Text(value)
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            Text(title)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(Color.white.opacity(0.8))

            Text(sub)
                .font(.system(size: 18))
                .foregroundColor(Color.white.opacity(0.5))
        }
        .padding(30)
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44").opacity(0.5))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
        )
        .scaleEffect(isFocused ? 1.03 : 1.0)
        .focusable()
        .focused($focus, equals: .card(id))
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    @ViewBuilder
    private func legendDot(color: Color, label: String) -> some View {
        HStack(spacing: 8) {
            Circle().fill(color).frame(width: 14, height: 14)
            Text(label)
        }
    }

    // MARK: - Progress Calculations

    private func loadSessionLog() {
        let raw = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) ?? []
        if let data = try? JSONSerialization.data(withJSONObject: raw),
           let cleaned = try? JSONSerialization.jsonObject(with: data) as? [[String: Any]] {
            sessionLog = cleaned
        } else {
            sessionLog = []
        }
    }

    private func overallAccuracyString() -> String {
        let correct = sessionLog.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        let total = sessionLog.compactMap { $0["total"] as? Int }.reduce(0, +)
        guard total > 0 else { return "—" }
        return "\(Int(Double(correct) / Double(total) * 100))%"
    }

    private func sectionAccuracy(for key: String) -> Double? {
        let entries = sessionLog.filter { ($0["section"] as? String) == key }
        guard !entries.isEmpty else { return nil }
        let correct = entries.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        let total = entries.compactMap { $0["total"] as? Int }.reduce(0, +)
        guard total > 0 else { return nil }
        return Double(correct) / Double(total)
    }

    private func weeklyActivity() -> [DayActivity] {
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"

        return (0..<7).reversed().map { offset in
            let date = calendar.date(byAdding: .day, value: -offset, to: today)!
            let dayString = formatter.string(from: date)
            let isToday = offset == 0
            let count = profileStore.profile.completionHistory.filter {
                calendar.isDate($0, inSameDayAs: date)
            }.count

            return DayActivity(day: dayString, date: date, count: count, isToday: isToday)
        }
    }

    // MARK: - UI Localized Copy

    private var progressHeader: String {
        switch currentLanguage {
        case .english:    return "Progress Dashboard"
        case .spanish:    return "Panel de Progreso"
        case .hindi:      return "प्रगति डैशबोर्ड"
        case .gujarati:   return "પ્રગતિ ડેશબોર્ડ"
        case .chinese:    return "进度仪表盘"
        case .farsi:      return "داشبورد پیشرفت"
        case .korean:     return "진행 상황 대시보드"
        case .vietnamese: return "Bảng tiến trình"
        case .arabic:     return "لوحة المتابعة"
        case .portuguese: return "Painel de Progresso"
        case .tagalog:    return "Progress Dashboard"
        case .punjabi:    return "ਪ੍ਰਗਤੀ ਡੈਸ਼ਬੋਰਡ"
        case .armenian:   return "Առաջընթացի Վահանակ"
        case .japanese:   return "進捗ダッシュボード"
        case .french:     return "Tableau de bord"
        case .amharic:    return "የእድገት ዳሽቦርድ"
        }
    }

    private var progressSub: String {
        switch currentLanguage {
        case .english:    return "Keep tracking your daily achievements!"
        case .spanish:    return "¡Sigue registrando tus logros diarios!"
        case .hindi:      return "अपनी दैनिक उपलब्धियों को ट्रैक करते रहें!"
        case .gujarati:   return "તમારી દૈનિક સિદ્ધિઓ ટ્રૅક કરવાનું ચાલુ રાખો!"
        case .chinese:    return "继续跟踪你的每日成就！"
        case .farsi:      return "دستاوردهای روزانه خود را دنبال کنید!"
        case .korean:     return "매일의 성과를 계속 기록해 보세요!"
        case .vietnamese: return "Tiếp tục theo dõi những thành tựu hàng ngày của bạn!"
        case .arabic:     return "تابع إنجازاتك اليومية!"
        case .portuguese: return "Continue acompanhando suas conquistas diárias!"
        case .tagalog:    return "Patuloy na subaybayan ang iyong pang-araw-araw na tagumpay!"
        case .punjabi:    return "ਆਪਣੀਆਂ ਰੋਜ਼ਾਨਾ ਪ੍ਰਾਪਤੀਆਂ ਨੂੰ ਟਰੈਕ ਕਰਦੇ ਰਹੋ!"
        case .armenian:   return "Շարունակեք հետևել ձեր օրական նվաճումներին:"
        case .japanese:   return "毎日の成果を記録し続けましょう！"
        case .french:     return "Suivez vos progrès quotidiens !"
        case .amharic:    return "የዕለት ተዕለት ውጤቶችዎን መከታተልዎን ይቀጥሉ!"
        }
    }

    private var currentStreakTitle: String {
        switch currentLanguage {
        case .english:    return "Current Streak"
        case .spanish:    return "Racha Actual"
        case .hindi:      return "वर्तमान लकीर"
        case .gujarati:   return "વર્તમાન સાતત્ય"
        case .chinese:    return "当前连续"
        case .farsi:      return "پیوستگی فعلی"
        case .korean:     return "현재 연속 기록"
        case .vietnamese: return "Chuỗi hiện tại"
        case .arabic:     return "النشاط الحالي"
        case .portuguese: return "Racha Atual"
        case .tagalog:    return "Kasalukuyang Streak"
        case .punjabi:    return "ਮੌਜੂਦਾ ਲੜੀ"
        case .armenian:   return "Ընթացիկ Շարք"
        case .japanese:   return "現在の継続日数"
        case .french:     return "Série actuelle"
        case .amharic:    return "የአሁኑ ተከታታይ ቀናት"
        }
    }

    private var longestStreakTitle: String {
        switch currentLanguage {
        case .english:    return "Longest Streak"
        case .spanish:    return "Racha Más Larga"
        case .hindi:      return "सबसे लंबी लकीर"
        case .gujarati:   return "મહત્તમ સાતત્ય"
        case .chinese:    return "最长连续"
        case .farsi:      return "طولانی‌ترین پیوستگی"
        case .korean:     return "최장 연속 기록"
        case .vietnamese: return "Chuỗi dài nhất"
        case .arabic:     return "أطول نشاط"
        case .portuguese: return "Recorde de Racha"
        case .tagalog:    return "Pinakamahabang Streak"
        case .punjabi:    return "ਸਭ ਤੋਂ ਲੰਬੀ ਲੜੀ"
        case .armenian:   return "Ամենաերկար Շարքը"
        case .japanese:   return "最長継続日数"
        case .french:     return "Série record"
        case .amharic:    return "ረጅሙ ተከታታይ ቀናት"
        }
    }

    private var overallAccuracyTitle: String {
        switch currentLanguage {
        case .english:    return "First-Try Accuracy"
        case .spanish:    return "Precisión al Primer Intento"
        case .hindi:      return "प्रथम प्रयास सटीकता"
        case .gujarati:   return "પ્રથમ પ્રયાસ ચોકસાઈ"
        case .chinese:    return "首试正确率"
        case .farsi:      return "دقت در اولین تلاش"
        case .korean:     return "첫 시도 정확도"
        case .vietnamese: return "Độ chính xác lần đầu"
        case .arabic:     return "دقة المحاولة الأولى"
        case .portuguese: return "Precisão na Primeira Tentativa"
        case .tagalog:    return "First-Try Accuracy"
        case .punjabi:    return "ਪਹਿਲੀ ਕੋਸ਼ਿਸ਼ ਸੁੱਧਤਾ"
        case .armenian:   return "Ճշգրտություն 1-ին փորձից"
        case .japanese:   return "最初の正解率"
        case .french:     return "Précision 1er essai"
        case .amharic:    return "የመጀመሪያ ሙከራ ትክክለኛነት"
        }
    }

    private var streakDaysLabel: String {
        switch currentLanguage {
        case .english:    return "days in a row"
        case .spanish:    return "días seguidos"
        case .hindi:      return "लगातार दिन"
        case .gujarati:   return "સળંગ દિવસો"
        case .chinese:    return "天连续"
        case .farsi:      return "روز متوالی"
        case .korean:     return "일 연속"
        case .vietnamese: return "ngày liên tiếp"
        case .arabic:     return "يوماً متتالياً"
        case .portuguese: return "dias seguidos"
        case .tagalog:    return "araw na sunod-sunod"
        case .punjabi:    return "ਲਗਾਤਾਰ ਦਿਨ"
        case .armenian:   return "օր անընդմեջ"
        case .japanese:   return "日連続"
        case .french:     return "jours d'affilée"
        case .amharic:    return "ተከታታይ ቀናት"
        }
    }

    private var firstTryAccuracySub: String {
        switch currentLanguage {
        case .english:    return "based on initial session answers"
        case .spanish:    return "basado en las respuestas iniciales"
        case .hindi:      return "प्रारंभिक सत्र के उत्तरों के आधार पर"
        case .gujarati:   return "પ્રારંભિક સત્રના જવાબોના આધારે"
        case .chinese:    return "根据初次练习的答案"
        case .farsi:      return "بر اساس پاسخ‌های جلسه اولیه"
        case .korean:     return "초기 세션 답변 기준"
        case .vietnamese: return "dựa trên câu trả lời của phiên đầu tiên"
        case .arabic:     return "بناءً على إجابات الجلسة الأولى"
        case .portuguese: return "com base nas respostas da sessão inicial"
        case .tagalog:    return "batay sa mga sagot sa unang sesyon"
        case .punjabi:    return "ਸ਼ੁਰੂਆਤੀ ਸੈਸ਼ਨ ਦੇ ਜਵਾਬਾਂ ਦੇ ਆਧਾਰ 'ਤੇ"
        case .armenian:   return "հիմնված սկզբնական փուլի պատասխանների վրա"
        case .japanese:   return "初回セッションの回答に基づく"
        case .french:     return "basé sur les réponses de la première session"
        case .amharic:    return "በመጀመሪያው ክፍለ ጊዜ መልሶች ላይ የተመሠረተ"
        }
    }

    private var weeklyActivityTitle: String {
        switch currentLanguage {
        case .english:    return "Weekly Activity"
        case .spanish:    return "Actividad Semanal"
        case .hindi:      return "साप्ताहिक गतिविधि"
        case .gujarati:   return "સાપ્તાહિક પ્રવૃત્તિ"
        case .chinese:    return "每周活动"
        case .farsi:      return "فعالیت هفتگی"
        case .korean:     return "주간 활동"
        case .vietnamese: return "Hoạt động hàng tuần"
        case .arabic:     return "النشاط الأسبوعي"
        case .portuguese: return "Atividade Semanal"
        case .tagalog:    return "Lingguhang Aktibidad"
        case .punjabi:    return "ਹਫ਼ਤਾਵਾਰੀ ਗਤੀਵਿਧੀ"
        case .armenian:   return "Շաբաթական Ակտիվություն"
        case .japanese:   return "週間の活動"
        case .french:     return "Activité hebdomadaire"
        case .amharic:    return "የሳምንት እንቅስቃሴ"
        }
    }

    private var categoryAccuracyTitle: String {
        switch currentLanguage {
        case .english:    return "Accuracy by Category"
        case .spanish:    return "Precisión por Categoría"
        case .hindi:      return "श्रेणी के अनुसार सटीकता"
        case .gujarati:   return "કેટેગરી મુજબ ચોકસાઈ"
        case .chinese:    return "类别正确率"
        case .farsi:      return "دقت بر اساس دسته‌بندی"
        case .korean:     return "카테고리별 정확도"
        case .vietnamese: return "Độ chính xác theo danh mục"
        case .arabic:     return "الدقة حسب الفئة"
        case .portuguese: return "Precisão por Categoria"
        case .tagalog:    return "Accuracy kada Kategorya"
        case .punjabi:    return "ਸ਼੍ਰੇਣੀ ਮੁਤਾਬਕ ਸੁੱਧਤਾ"
        case .armenian:   return "Ճշգրտությունն ըստ Կատեգորիաների"
        case .japanese:   return "カテゴリー別の正解率"
        case .french:     return "Précision par catégorie"
        case .amharic:    return "ትክክለኛነት በምድብ"
        }
    }

    private var todayLabel: String {
        switch currentLanguage {
        case .english:    return "Today"
        case .spanish:    return "Hoy"
        case .hindi:      return "आज"
        case .gujarati:   return "આજે"
        case .chinese:    return "今天"
        case .farsi:      return "امروز"
        case .korean:     return "오늘"
        case .vietnamese: return "Hôm nay"
        case .arabic:     return "اليوم"
        case .portuguese: return "Hoje"
        case .tagalog:    return "Ngayon"
        case .punjabi:    return "ਅੱਜ"
        case .armenian:   return "Այսօր"
        case .japanese:   return "今日"
        case .french:     return "Aujourd'hui"
        case .amharic:    return "ዛሬ"
        }
    }

    private var previousDaysLabel: String {
        switch currentLanguage {
        case .english:    return "Previous Days"
        case .spanish:    return "Días Anteriores"
        case .hindi:      return "पिछले दिन"
        case .gujarati:   return "પાછલા દિવસો"
        case .chinese:    return "过去几天"
        case .farsi:      return "روزهای گذشته"
        case .korean:     return "이전 일수"
        case .vietnamese: return "Những ngày trước"
        case .arabic:     return "الأيام السابقة"
        case .portuguese: return "Dias Anteriores"
        case .tagalog:    return "Nakaraang mga Araw"
        case .punjabi:    return "ਪਿਛਲੇ ਦਿਨ"
        case .armenian:   return "Նախորդ Օրեր"
        case .japanese:   return "過去の日々"
        case .french:     return "Jours précédents"
        case .amharic:    return "ያለፉ ቀናት"
        }
    }

    private var pdfExportNotice: String {
        switch currentLanguage {
        case .english:    return "Note: PDF Report Exporting is only supported on the mobile app."
        case .spanish:    return "Nota: La exportación de informes PDF solo se admite en la aplicación móvil."
        case .hindi:      return "नोट: PDF रिपोर्ट एक्सपोर्ट करना केवल मोबाइल ऐप पर समर्थित है।"
        case .gujarati:   return "નોંધ: PDF રિપોર્ટ એક્સપોર્ટ ફક્ત મોબાઇલ એપ પર જ સપોર્ટેડ છે."
        case .chinese:    return "注意：PDF 报告导出功能仅在手机应用中支持。"
        case .farsi:      return "توجه: خروجی گرفتن گزارش PDF فقط در اپلیکیشن موبایل پشتیبانی می‌شود."
        case .korean:     return "참고: PDF 보고서 내보내기는 모바일 앱에서만 지원됩니다."
        case .vietnamese: return "Lưu ý: Xuất báo cáo PDF chỉ được hỗ trợ trên ứng dụng di động."
        case .arabic:     return "ملاحظة: تصدير تقرير PDF مدعوم فقط في تطبيق الهاتف المحمول."
        case .portuguese: return "Nota: A exportação de relatórios em PDF só é compatível com o aplicativo móvel."
        case .tagalog:    return "Paalala: Ang pag-export ng PDF Report ay suportado lamang sa mobile app."
        case .punjabi:    return "ਨੋਟ: PDF ਰਿਪੋਰਟ ਐਕਸਪੋਰਟ ਕਰਨਾ ਸਿਰਫ਼ ਮੋਬਾਈਲ ਐਪ 'ਤੇ ਸਮਰਥਿਤ ਹੈ।"
        case .armenian:   return "Նշում. PDF հաշվետվության արտահանումը հասանելի է միայն բջջային հավելվածում:"
        case .japanese:   return "注：PDFレポートのエクスポートはモバイルアプリでのみサポートされています。"
        case .french:     return "Remarque : L'exportation de rapports PDF n'est prise en charge que sur l'application mobile."
        case .amharic:    return "ማሳሰቢያ፡ የPDF ሪፖርት ወደ ውጪ መላክ የሚደገፈው በሞባይል መተግበሪያ ላይ ብቻ ነው።"
        }
    }

    // MARK: - Achievements Helper

    @ViewBuilder
    private func badgeCard(_ badge: Badge) -> some View {
        let isBadgeFocused = focus == .badge(badge.id)
        let isUnlocked = badge.isUnlocked
        
        VStack(spacing: 12) {
            ZStack {
                Circle()
                    .fill(isUnlocked ? badge.color.opacity(0.15) : Color.white.opacity(0.05))
                    .frame(width: 100, height: 100)
                
                Image(systemName: badge.iconName)
                    .font(.system(size: 44))
                    .foregroundColor(isUnlocked ? badge.color : .gray)
            }
            .shadow(color: (isUnlocked && isBadgeFocused) ? badge.color.opacity(0.6) : .clear, radius: 10)

            Text(badge.title)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .foregroundColor(isUnlocked ? .white : .white.opacity(0.4))
                .multilineTextAlignment(.center)
                .lineLimit(1)
        }
        .padding(20)
        .frame(width: 220, height: 200)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(isBadgeFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44").opacity(0.3))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(isBadgeFocused ? Color.white : Color.clear, lineWidth: 3)
        )
        .scaleEffect(isBadgeFocused ? 1.04 : 1.0)
        .grayscale(isUnlocked ? 0.0 : 1.0)
        .opacity(isUnlocked ? 1.0 : 0.65)
        .animation(.easeInOut(duration: 0.15), value: isBadgeFocused)
    }

    private var achievementsSectionTitle: String {
        switch currentLanguage {
        case .english:    return "Streaks & Badges"
        case .spanish:    return "Rachas y Insignias"
        case .hindi:      return "लकीरें और बैज"
        case .gujarati:   return "સાતત્ય અને બેજ"
        case .chinese:    return "连续和徽章"
        case .farsi:      return "پیوستگی‌ها و نشان‌ها"
        case .korean:     return "연속 및 배지"
        case .vietnamese: return "Chuỗi & Huy hiệu"
        case .arabic:     return "النشاط والشارات"
        case .portuguese: return "Rachas e Medalhas"
        case .tagalog:    return "Mga Streak at Badge"
        case .punjabi:    return "ਲੜੀ ਅਤੇ ਬੈਜ"
        case .armenian:   return "Շարքեր և Կրծքանշաններ"
        case .japanese:   return "継続とバッジ"
        case .french:     return "Séries & Badges"
        case .amharic:    return "ተከታታይ ቀናት እና ባጆች"
        }
    }

    private var dayStreakSuffix: String {
        switch currentLanguage {
        case .english:    return "day streak"
        case .spanish:    return "días de racha"
        case .hindi:      return "दिनों का सिलसिला"
        case .gujarati:   return "દિવસ સાતત્ય"
        case .chinese:    return "天连续"
        case .farsi:      return "روز متوالی"
        case .korean:     return "일 연속"
        case .vietnamese: return "ngày liên tiếp"
        case .arabic:     return "يوماً متتالياً"
        case .portuguese: return "dias de racha"
        case .tagalog:    return "araw na streak"
        case .punjabi:    return "ਦਿਨਾਂ ਦੀ ਲੜੀ"
        case .armenian:   return "օրվա շարք"
        case .japanese:   return "日連続"
        case .french:     return "jours d'affilée"
        case .amharic:    return "ተከታታይ ቀናት"
        }
    }

    private var totalSessionsTitle: String {
        switch currentLanguage {
        case .english:    return "Total Sessions"
        case .spanish:    return "Sesiones Totales"
        case .hindi:      return "कुल सत्र"
        case .gujarati:   return "કુલ સત્રો"
        case .chinese:    return "总组数"
        case .farsi:      return "کل جلسات"
        case .korean:     return "총 세션"
        case .vietnamese: return "Tổng số phiên"
        case .arabic:     return "إجمالي الجلسات"
        case .portuguese: return "Total de Sessões"
        case .tagalog:    return "Kabuuang Session"
        case .punjabi:    return "ਕੁੱਲ ਸੈਸ਼ਨ"
        case .armenian:   return "Ընդհանուր Փուլեր"
        case .japanese:   return "総セッション数"
        case .french:     return "Sessions totales"
        case .amharic:    return "ጠቅላላ ክፍለ ጊዜዎች"
        }
    }
}

fileprivate extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        self.init(
            red:   Double((int >> 16) & 0xFF) / 255,
            green: Double((int >> 8)  & 0xFF) / 255,
            blue:  Double( int        & 0xFF) / 255
        )
    }
}
#endif
