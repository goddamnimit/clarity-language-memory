import SwiftUI

struct ContentView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @State private var selectedTab = 0
    @State private var showOnboarding = !UserDefaults.standard.bool(forKey: "clarity_onboarding_complete")

    var body: some View {
        TabView(selection: $selectedTab) {
            
            // Tab 1: Localized Home View
            HomeView()
                .tabItem {
                    Label(homeTabTitle, systemImage: "house.fill")
                }
                .tag(0)
            
            // Tab 2: All Activities View with dedicated NavigationStack
            NavigationStack {
                AllActivitiesView()
            }
            .tabItem {
                Label(activitiesTabTitle, systemImage: "list.bullet.rectangle.fill")
            }
            .tag(1)
            
            // Tab 3: Profile View
            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Label(profileTabTitle, systemImage: "person.fill")
            }
            .tag(2)
        }
        .environment(\.layoutDirection,
            [.farsi, .arabic].contains(languageManager.currentLanguage) ? .rightToLeft : .leftToRight)
        .fullScreenCover(isPresented: $showOnboarding) {
            OnboardingView(isPresented: $showOnboarding)
        }
    }

    // MARK: - Localized Tab Titles
    
    private var homeTabTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Home"
        case .spanish:    return "Inicio"
        case .hindi:      return "मुख्य"
        case .gujarati:   return "ઘર"
        case .chinese:    return "主页"
        case .farsi:      return "خانه"
        case .korean:     return "홈"
        case .vietnamese: return "Trang chủ"
        case .arabic:     return "الرئيسية"
        }
    }

    private var activitiesTabTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Activities"
        case .spanish:    return "Actividades"
        case .hindi:      return "गतिविधियाँ"
        case .gujarati:   return "પ્રવૃત્તિઓ"
        case .chinese:    return "活动"
        case .farsi:      return "فعالیت‌ها"
        case .korean:     return "활동"
        case .vietnamese: return "Hoạt động"
        case .arabic:     return "الأنشطة"
        }
    }

    private var profileTabTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Profile"
        case .spanish:    return "Perfil"
        case .hindi:      return "प्रोफ़ाइल"
        case .gujarati:   return "પ્રોફાઇલ"
        case .chinese:    return "我的"
        case .farsi:      return "پروفایل"
        case .korean:     return "프로필"
        case .vietnamese: return "Hồ sơ"
        case .arabic:     return "الملف"
        }
    }
}

// MARK: - Localized Home View Screen
struct HomeView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @ObservedObject private var profileStore = UserProfileStore.shared
    @State private var sessionsCount: Int = 0
    @State private var surpriseExercise: Exercise? = nil
    @State private var sectionExercise: Exercise? = nil
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Welcome Title
                    Text(personalizedGreeting)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    // Sessions Played Count Label
                    Text(sessionsPlayedText)
                        #if os(tvOS)
                        .font(.title3)
                        #else
                        .font(.subheadline)
                        #endif
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    // Streak Widget
                    StreakWidgetView()
                        .padding(.horizontal)

                    // MARK: - Surprise Me Button
                    Button(action: {
                        let allExercises = languageManager.exercisesForSection(.language) +
                                          languageManager.exercisesForSection(.cognition) +
                                          languageManager.exercisesForSection(.functionalSkills)
                        surpriseExercise = allExercises.randomElement()
                    }) {
                        HStack {
                            Image(systemName: "shuffle")
                            Text(surpriseMeText)
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(
                            LinearGradient(
                                colors: [.orange, .pink],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(16)
                        .shadow(color: .orange.opacity(0.4), radius: 8, x: 0, y: 4)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()
                    .padding(.horizontal)

                    // MARK: - Section Navigation Cards
                    VStack(spacing: 16) {
                        Button {
                            sectionExercise = randomExercise(for: .language)
                        } label: {
                            sectionCard(
                                title: languageSectionTitle,
                                subtitle: cardSubtitle,
                                systemImage: "text.bubble",
                                color: .blue
                            )
                        }
                        .buttonStyle(.plain)
                        .tvFocusEffect()

                        Button {
                            sectionExercise = randomExercise(for: .cognition)
                        } label: {
                            sectionCard(
                                title: cognitionSectionTitle,
                                subtitle: cardSubtitle,
                                systemImage: "brain.head.profile",
                                color: .purple
                            )
                        }
                        .buttonStyle(.plain)
                        .tvFocusEffect()

                        Button {
                            sectionExercise = randomExercise(for: .functionalSkills)
                        } label: {
                            sectionCard(
                                title: functionalSkillsSectionTitle,
                                subtitle: cardSubtitle,
                                systemImage: "heart.text.square",
                                color: .green
                            )
                        }
                        .buttonStyle(.plain)
                        .tvFocusEffect()
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .onAppear {
                loadSessionsCount()
            }
            .navigationDestination(item: $surpriseExercise) { exercise in
                ExerciseContainerView(exercise: exercise)
            }
            .navigationDestination(item: $sectionExercise) { exercise in
                ExerciseContainerView(exercise: exercise)
            }
            .navigationTitle("Clarity")
            .background(Color.groupedBackground)
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Text(languageManager.currentLanguage.flagEmoji)
                            .font(.system(size: 24))
                            .frame(width: 44, height: 44)
                    }
                }
                #endif
            }
        }
    }
    
    // MARK: - Localized Home Helpers

    private var personalizedGreeting: String {
        let name = profileStore.profile.name
        let hasName = !name.trimmingCharacters(in: .whitespaces).isEmpty
        let dayOfYear = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1

        switch languageManager.currentLanguage {
        case .english:
            if hasName {
                let greetings = [
                    "Good to see you, \(name)!",
                    "Ready to practice, \(name)?",
                    "Welcome back, \(name)!",
                    "Let's get started, \(name)!",
                    "Great to have you here, \(name)!",
                    "Time to shine, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Welcome to Clarity!",
                    "Ready to practice?",
                    "Let's get started!",
                    "Good to see you!",
                    "Time to shine!",
                    "Let's practice today!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .spanish:
            if hasName {
                let greetings = [
                    "¡Qué bueno verte, \(name)!",
                    "¿Listo para practicar, \(name)?",
                    "¡Bienvenido de nuevo, \(name)!",
                    "¡Empecemos, \(name)!",
                    "¡Qué alegría tenerte aquí, \(name)!",
                    "¡Hora de brillar, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "¡Bienvenido a Clarity!",
                    "¿Listo para practicar?",
                    "¡Bienvenido de nuevo!",
                    "¡Empecemos!",
                    "¡Qué alegría tenerte aquí!",
                    "¡Hora de brillar!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .hindi:
            if hasName {
                let greetings = [
                    "\(name), आपसे मिलकर अच्छा लगा!",
                    "\(name), क्या अभ्यास के लिए तैयार हैं?",
                    "वापस आने पर स्वागत है, \(name)!",
                    "चलिए शुरू करते हैं, \(name)!",
                    "\(name), आपका यहाँ होना अच्छा लगता है!",
                    "आज चमकने का समय है, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Clarity में आपका स्वागत है!",
                    "क्या अभ्यास के लिए तैयार हैं?",
                    "वापस आने पर स्वागत है!",
                    "चलिए शुरू करते हैं!",
                    "आपका यहाँ होना अच्छा लगता है!",
                    "आज चमकने का समय है!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .gujarati:
            if hasName {
                let greetings = [
                    "\(name), તમને મળીને આનંદ થયો!",
                    "\(name), શું અભ્યાસ માટે તૈયાર છો?",
                    "પાછા આવ્યા, \(name)! સ્વાગત છે!",
                    "ચાલો શરૂ કરીએ, \(name)!",
                    "\(name), તમે અહીં છો તે સારું છે!",
                    "આજે ચમકવાનો સમય છે, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Clarity માં આપનું સ્વાગત છે!",
                    "શું અભ્યાસ માટે તૈયાર છો?",
                    "પાછા આવ્યા! સ્વાગત છે!",
                    "ચાલો શરૂ કરીએ!",
                    "આજે ચમકવાનો સમય છે!",
                    "Clarity માં આપનું સ્વાગત છે!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .chinese:
            if hasName {
                let greetings = [
                    "很高兴见到您，\(name)！",
                    "\(name)，准备好练习了吗？",
                    "欢迎回来，\(name)！",
                    "我们开始吧，\(name)！",
                    "\(name)，很高兴有您在这里！",
                    "是时候大放异彩了，\(name)！"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "欢迎使用 Clarity！",
                    "准备好练习了吗？",
                    "欢迎回来！",
                    "我们开始吧！",
                    "很高兴见到您！",
                    "是时候练习了！"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .farsi:
            if hasName {
                let greetings = [
                    "خوش آمدید، \(name)!",
                    "\(name)، آماده تمرین هستید؟",
                    "خوش برگشتید، \(name)!",
                    "بیایید شروع کنیم، \(name)!",
                    "\(name)، خوشحالم که اینجا هستید!",
                    "وقت درخشیدن است، \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "به Clarity خوش آمدید!",
                    "آماده تمرین هستید؟",
                    "خوش برگشتید!",
                    "بیایید شروع کنیم!",
                    "خوشحالم که اینجا هستید!",
                    "وقت تمرین است!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .korean:
            if hasName {
                let greetings = [
                    "반갑습니다, \(name)!",
                    "연습 준비됐나요, \(name)?",
                    "어서오세요, \(name)!",
                    "시작해 봐요, \(name)!",
                    "\(name), 함께해서 기뻐요!",
                    "빛날 시간이에요, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Clarity에 오신 걸 환영합니다!",
                    "연습 준비됐나요?",
                    "어서오세요!",
                    "시작해 봐요!",
                    "잘 하고 있어요!",
                    "함께 연습해요!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .vietnamese:
            if hasName {
                let greetings = [
                    "Rất vui được gặp bạn, \(name)!",
                    "\(name), sẵn sàng luyện tập chưa?",
                    "Chào mừng trở lại, \(name)!",
                    "Hãy bắt đầu nào, \(name)!",
                    "Vui vì có bạn ở đây, \(name)!",
                    "Tỏa sáng thôi, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Chào mừng đến với Clarity!",
                    "Sẵn sàng luyện tập chưa?",
                    "Chào mừng trở lại!",
                    "Hãy bắt đầu nào!",
                    "Vui vì bạn ở đây!",
                    "Luyện tập hôm nay thôi!"
                ]
                return greetings[dayOfYear % greetings.count]
            }

        case .arabic:
            if hasName {
                let greetings = [
                    "سعيد برؤيتك، \(name)!",
                    "\(name)، هل أنت مستعد للتدريب؟",
                    "مرحباً بعودتك، \(name)!",
                    "لنبدأ، \(name)!",
                    "\(name)، يسعدني وجودك هنا!",
                    "حان وقت التألق، \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "مرحباً بك في Clarity!",
                    "هل أنت مستعد للتدريب؟",
                    "مرحباً بعودتك!",
                    "لنبدأ!",
                    "يسعدني وجودك هنا!",
                    "حان وقت الممارسة!"
                ]
                return greetings[dayOfYear % greetings.count]
            }
        }
    }

    private var surpriseMeText: String {
        switch languageManager.currentLanguage {
        case .english:    return "Surprise Me! 🎲"
        case .spanish:    return "¡Sorpréndeme! 🎲"
        case .hindi:      return "कुछ भी चलेगा! 🎲"
        case .gujarati:   return "આશ્ચર્ય કરો! 🎲"
        case .chinese:    return "随机练习！🎲"
        case .farsi:      return "شگفتی! 🎲"
        case .korean:     return "깜짝 놀라게 해봐! 🎲"
        case .vietnamese: return "Thử ngẫu nhiên! 🎲"
        case .arabic:     return "فاجئني! 🎲"
        }
    }

    private func randomExercise(for section: AppSection) -> Exercise? {
        languageManager.exercisesForSection(section).randomElement()
    }

    private var cardSubtitle: String {
        switch languageManager.currentLanguage {
        case .english:
            #if os(tvOS)
            return "Select for a random activity"
            #else
            return "Tap for a random activity"
            #endif
        case .spanish:    return "Toca para una actividad aleatoria"
        case .hindi:      return "यादृच्छिक गतिविधि के लिए टैप करें"
        case .gujarati:   return "રેન્ડમ પ્રવૃત્તિ માટે ટૅپ કરો"
        case .chinese:    return "点击随机练习"
        case .farsi:      return "برای فعالیت تصادفی ضربه بزنید"
        case .korean:     return "랜덤 활동을 위해 탭하세요"
        case .vietnamese: return "Nhấn để chọn ngẫu nhiên"
        case .arabic:     return "اضغط لنشاط عشوائي"
        }
    }

    private var languageSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Language"
        case .spanish:    return "Lenguaje"
        case .hindi:      return "भाषा"
        case .gujarati:   return "ભાષા"
        case .chinese:    return "语言"
        case .farsi:      return "زبان"
        case .korean:     return "언어"
        case .vietnamese: return "Ngôn ngữ"
        case .arabic:     return "اللغة"
        }
    }

    private var cognitionSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Cognition"
        case .spanish:    return "Cognición"
        case .hindi:      return "अनुभूति"
        case .gujarati:   return "સ્મૃતિ અને તર્ક"
        case .chinese:    return "认知与记忆"
        case .farsi:      return "شناخت و حافظه"
        case .korean:     return "인지력"
        case .vietnamese: return "Nhận thức"
        case .arabic:     return "الإدراك والذاكرة"
        }
    }

    private var functionalSkillsSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Functional Skills"
        case .spanish:    return "Habilidades Funcionales"
        case .hindi:      return "कार्यात्मक कौशल"
        case .gujarati:   return "દૈનિક કૌશલ્ય"
        case .chinese:    return "日常技能"
        case .farsi:      return "مهارت‌های روزمره"
        case .korean:     return "일상 기술"
        case .vietnamese: return "Kỹ năng hàng ngày"
        case .arabic:     return "المهارات اليومية"
        }
    }

    private var sessionsPlayedText: String {
        switch languageManager.currentLanguage {
        case .english:
            return "\(sessionsCount) sessions played"
        case .spanish:
            return "\(sessionsCount) sesiones jugadas"
        case .hindi:
            return "\(sessionsCount) \(sessionsCount == 1 ? "सत्र खेला गया" : "सत्र खेले गए")"
        case .gujarati:
            return "\(sessionsCount) સત્ર રમાયા"
        case .chinese:
            return "\(sessionsCount) 次练习"
        case .farsi:
            return "\(sessionsCount) جلسه"
        case .korean:
            return "\(sessionsCount)번 플레이"
        case .vietnamese:
            return "\(sessionsCount) phiên đã chơi"
        case .arabic:
            return "\(sessionsCount) جلسة"
        }
    }

    private func loadSessionsCount() {
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        sessionsCount = plays.values.reduce(0, +)
    }

    @ViewBuilder
    private func sectionCard(title: String, subtitle: String, systemImage: String, color: Color) -> some View {
        HStack(spacing: 16) {
            Image(systemName: systemImage)
                .font(.system(size: 24))
                .foregroundColor(color)
                .frame(width: 48, height: 48)
                .background(color.opacity(0.12))
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.primary)
                
                Text(subtitle)
                    #if os(tvOS)
                    .font(.title3)
                    #else
                    .font(.subheadline)
                    #endif
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.02), radius: 2, x: 0, y: 1)
    }
}
