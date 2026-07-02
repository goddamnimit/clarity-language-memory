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
        case .portuguese: return "Início"
        case .tagalog:    return "Home"
        case .punjabi:    return "ਹੋਮ"
        case .armenian:   return "Գլխավոր"
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
        case .portuguese: return "Atividades"
        case .tagalog:    return "Mga Aktibidad"
        case .punjabi:    return "ਗਤੀਵਿਧੀਆਂ"
        case .armenian:   return "Վարժություններ"
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
        case .portuguese: return "Perfil"
        case .tagalog:    return "Profile"
        case .punjabi:    return "ਪ੍ਰੋਫਾਈਲ"
        case .armenian:   return "Պրոֆիլ"
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
    @State private var recommendations: [Recommendation] = []
    @State private var recommendedExercise: Exercise? = nil
    @State private var weeklyGoalText: String? = nil

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

                    // Weekly goal indicator (set in Caregiver Mode)
                    if let goalText = weeklyGoalText {
                        HStack(spacing: 6) {
                            Image(systemName: "trophy")
                                .font(.caption)
                            Text(goalText)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                    }

                    // Streak Widget
                    StreakWidgetView()
                        .padding(.horizontal)

                    // MARK: - Personalized Recommendations
                    if !recommendations.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(recommendations) { rec in
                                    Button {
                                        launchRecommendation(rec)
                                    } label: {
                                        recommendationCard(rec)
                                    }
                                    .buttonStyle(.plain)
                                    .tvFocusEffect()
                                }
                            }
                            .padding(.horizontal)
                        }
                    }

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
                refreshRecommendations()
                refreshWeeklyGoal()
            }
            .navigationDestination(item: $surpriseExercise) { exercise in
                ExerciseContainerView(exercise: exercise)
            }
            .navigationDestination(item: $sectionExercise) { exercise in
                ExerciseContainerView(exercise: exercise)
            }
            .navigationDestination(item: $recommendedExercise) { exercise in
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

        case .portuguese:
            if hasName {
                let greetings = [
                    "Que bom ver você, \(name)!",
                    "\(name), pronto para praticar?",
                    "Bem-vindo de volta, \(name)!",
                    "Vamos começar, \(name)!",
                    "\(name), que ótimo ter você aqui!",
                    "Hora de brilhar, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Bem-vindo ao Clarity!",
                    "Pronto para praticar?",
                    "Bem-vindo de volta!",
                    "Vamos começar!",
                    "Que bom ter você aqui!",
                    "Hora de praticar!"
                ]
                return greetings[dayOfYear % greetings.count]
            }
        case .tagalog:
            if hasName {
                let greetings = [
                    "Masaya akong makita ka, \(name)!",
                    "\(name), handa ka na bang mag-ensayo?",
                    "Maligayang pagbabalik, \(name)!",
                    "Simulan na natin, \(name)!",
                    "\(name), napakasaya na nandito ka!",
                    "Oras na para magpakitang-gilas, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Maligayang pagdating sa Clarity!",
                    "Handa ka na bang mag-ensayo?",
                    "Maligayang pagbabalik!",
                    "Simulan na natin!",
                    "Napakasaya na nandito ka!",
                    "Oras na para mag-ensayo!"
                ]
                return greetings[dayOfYear % greetings.count]
            }
        case .punjabi:
            if hasName {
                let greetings = [
                    "ਤੁਹਾਨੂੰ ਦੇਖ ਕੇ ਖੁਸ਼ੀ ਹੋਈ, \(name)!",
                    "\(name), ਅਭਿਆਸ ਲਈ ਤਿਆਰ ਹੋ?",
                    "ਜੀ ਆਇਆਂ ਨੂੰ, \(name)!",
                    "ਆਓ ਸ਼ੁਰੂ ਕਰੀਏ, \(name)!",
                    "\(name), ਤੁਹਾਡਾ ਇੱਥੇ ਹੋਣਾ ਬਹੁਤ ਵਧੀਆ ਲੱਗਿਆ!",
                    "ਚਮਕਣ ਦਾ ਸਮਾਂ ਆ ਗਿਆ ਹੈ, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "ਕਲੈਰਿਟੀ ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ!",
                    "ਅਭਿਆਸ ਲਈ ਤਿਆਰ ਹੋ?",
                    "ਜੀ ਆਇਆਂ ਨੂੰ!",
                    "ਆਓ ਸ਼ੁਰੂ ਕਰੀਏ!",
                    "ਤੁਹਾਡਾ ਇੱਥੇ ਹੋਣਾ ਬਹੁਤ ਵਧੀਆ ਲੱਗਿਆ!",
                    "ਅਭਿਆਸ ਦਾ ਸਮਾਂ!"
                ]
                return greetings[dayOfYear % greetings.count]
            }
        case .armenian:
            if hasName {
                let greetings = [
                    "Ուրախ եմ քեզ տեսնել, \(name)!",
                    "\(name), պատրա՞ստ ես մարզվելու:",
                    "Բարի վերադարձ, \(name)!",
                    "Սկսե՛նք, \(name)!",
                    "\(name), որքա՜ն հրաշալի է, որ այստեղ ես:",
                    "Ժամանակն է փայլելու, \(name)!"
                ]
                return greetings[dayOfYear % greetings.count]
            } else {
                let greetings = [
                    "Բարի գալուստ Clarity!",
                    "Պատրա՞ստ ես մարզվելու:",
                    "Բարի վերադարձ:",
                    "Սկսե՛նք:",
                    "Որքա՜ն հրաշալի է, որ այստեղ ես:",
                    "Մարզվելու ժամանակն է:"
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
        case .portuguese: return "Me Surpreenda! 🎲"
        case .tagalog:    return "Sorpresahin Ako! 🎲"
        case .punjabi:    return "ਮੈਨੂੰ ਹੈਰਾਨ ਕਰੋ! 🎲"
        case .armenian:   return "Անակնկալե՛լ ինձ: 🎲"
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
        case .portuguese: return "Toque para uma atividade aleatória"
        case .tagalog:    return "I-tap para sa random na aktibidad"
        case .punjabi:    return "ਇੱਕ ਬੇਤਰਤੀਬੇ ਅਭਿਆਸ ਲਈ ਟੈਪ ਕਰੋ"
        case .armenian:   return "Հպեք պատահական վարժության համար"
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
        case .portuguese: return "Linguagem"
        case .tagalog:    return "Wika"
        case .punjabi:    return "ਭਾਸ਼ਾ"
        case .armenian:   return "Լեզու"
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
        case .portuguese: return "Cognição"
        case .tagalog:    return "Kognisyon"
        case .punjabi:    return "ਦਿਮਾਗੀ ਕਸਰਤ"
        case .armenian:   return "Ճանաչողություն"
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
        case .portuguese: return "Habilidades Funcionais"
        case .tagalog:    return "Functional na Kasanayan"
        case .punjabi:    return "ਰੋਜ਼ਾਨa ਦੇ ਹੁਨਰ"
        case .armenian:   return "Գործնական Հմտություններ"
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
        case .portuguese:
            return "\(sessionsCount) \(sessionsCount == 1 ? "sessão jogada" : "sessões jogadas")"
        case .tagalog:
            return "\(sessionsCount) na session ang nalaro"
        case .punjabi:
            return "\(sessionsCount) ਸੈਸ਼ਨ ਖੇਡੇ ਗਏ"
        case .armenian:
            return "\(sessionsCount) սեսիա խաղացվել է"
        }
    }

    private func loadSessionsCount() {
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        sessionsCount = plays.values.reduce(0, +)
    }

    // MARK: - Recommendations

    private func refreshRecommendations() {
        let language = languageManager.currentLanguage
        let pool = languageManager.exercisesForSection(.language) +
                   languageManager.exercisesForSection(.cognition) +
                   languageManager.exercisesForSection(.functionalSkills)
        recommendations = RecommendationEngine.generateRecommendations(language: language, exercises: pool)
    }

    private func refreshWeeklyGoal() {
        #if os(iOS)
        let goal = WeeklyGoalStore.goal
        if goal > 0 {
            weeklyGoalText = languageManager.currentLanguage.cgGoalProgress(WeeklyGoalStore.sessionsThisWeek(), goal)
        } else {
            weeklyGoalText = nil
        }
        #endif
    }

    private func launchRecommendation(_ rec: Recommendation) {
        let pool = languageManager.exercisesForSection(.language) +
                   languageManager.exercisesForSection(.cognition) +
                   languageManager.exercisesForSection(.functionalSkills)
        if let title = rec.targetExerciseTitle,
           let exercise = pool.first(where: { $0.title == title }) {
            recommendedExercise = exercise
        } else if let section = rec.targetSection {
            recommendedExercise = randomExercise(for: section)
        }
    }

    @ViewBuilder
    private func recommendationCard(_ rec: Recommendation) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: rec.sfSymbolName)
                .font(.system(size: 20))
                .foregroundColor(.accentColor)
            Text(rec.headline)
                .font(.system(.subheadline, design: .rounded))
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .lineLimit(1)
            Text(rec.explanation)
                .font(.caption)
                .foregroundColor(.secondary)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
        }
        .padding(14)
        .frame(width: 220, alignment: .leading)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(14)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
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

// MARK: - Recommendation Copy Localization
extension AppLanguage {

    func recSectionName(_ section: AppSection) -> String {
        switch section {
        case .language:
            switch self {
            case .english:    return "Language"
            case .spanish:    return "Lenguaje"
            case .hindi:      return "भाषा"
            case .gujarati:   return "ભાષા"
            case .chinese:    return "语言"
            case .farsi:      return "زبان"
            case .korean:     return "언어"
            case .vietnamese: return "Ngôn ngữ"
            case .arabic:     return "اللغة"
            case .portuguese: return "Linguagem"
            case .tagalog:    return "Wika"
            case .punjabi:    return "ਭਾਸ਼ਾ"
            case .armenian:   return "Լեզու"
            }
        case .cognition:
            switch self {
            case .english:    return "Cognition"
            case .spanish:    return "Cognición"
            case .hindi:      return "अनुभूति"
            case .gujarati:   return "સ્મૃતિ અને તર્ક"
            case .chinese:    return "认知与记忆"
            case .farsi:      return "شناخت و حافظه"
            case .korean:     return "인지력"
            case .vietnamese: return "Nhận thức"
            case .arabic:     return "الإدراك والذاكرة"
            case .portuguese: return "Cognição"
            case .tagalog:    return "Kognisyon"
            case .punjabi:    return "ਦਿਮਾਗੀ ਕਸਰਤ"
            case .armenian:   return "Ճանաչողություն"
            }
        case .functionalSkills:
            switch self {
            case .english:    return "Functional Skills"
            case .spanish:    return "Habilidades Funcionales"
            case .hindi:      return "कार्यात्मक कौशल"
            case .gujarati:   return "દૈનિક કૌશલ્ય"
            case .chinese:    return "日常技能"
            case .farsi:      return "مهارت‌های روزمره"
            case .korean:     return "일상 기술"
            case .vietnamese: return "Kỹ năng hàng ngày"
            case .arabic:     return "المهارات اليومية"
            case .portuguese: return "Habilidades Funcionais"
            case .tagalog:    return "Functional na Kasanayan"
            case .punjabi:    return "ਰੋਜ਼ਾਨਾ ਦੇ ਹੁਨਰ"
            case .armenian:   return "Գործնական Հմտություններ"
            }
        }
    }

    func recBackToHeadline(_ exerciseName: String) -> String {
        switch self {
        case .english:    return "Back to \(exerciseName)"
        case .spanish:    return "Volver a \(exerciseName)"
        case .hindi:      return "\(exerciseName) पर लौटें"
        case .gujarati:   return "\(exerciseName) પર પાછા ફરો"
        case .chinese:    return "回到\(exerciseName)"
        case .farsi:      return "بازگشت به \(exerciseName)"
        case .korean:     return "\(exerciseName)(으)로 돌아가기"
        case .vietnamese: return "Quay lại \(exerciseName)"
        case .arabic:     return "العودة إلى \(exerciseName)"
        case .portuguese: return "Voltar para \(exerciseName)"
        case .tagalog:    return "Balik sa \(exerciseName)"
        case .punjabi:    return "\(exerciseName) 'ਤੇ ਵਾਪਸ ਜਾਓ"
        case .armenian:   return "Վերադարձ դեպի \(exerciseName)"
        }
    }

    func recDaysSinceExplanation(_ days: Int) -> String {
        switch self {
        case .english:    return "You haven't practiced in \(days) days"
        case .spanish:    return "No has practicado en \(days) días"
        case .hindi:      return "आपने \(days) दिनों से अभ्यास नहीं किया"
        case .gujarati:   return "તમે \(days) દિવસથી અભ્યાસ કર્યો નથી"
        case .chinese:    return "你已经 \(days) 天没有练习了"
        case .farsi:      return "\(days) روز است تمرین نکرده‌اید"
        case .korean:     return "\(days)일 동안 연습하지 않았어요"
        case .vietnamese: return "Bạn đã \(days) ngày chưa luyện tập"
        case .arabic:     return "لم تتدرب منذ \(days) أيام"
        case .portuguese: return "Você não pratica há \(days) dias"
        case .tagalog:    return "\(days) araw ka nang hindi nag-eensayo"
        case .punjabi:    return "ਤੁਸੀਂ \(days) ਦਿਨਾਂ ਤੋਂ ਅਭਿਆਸ ਨਹੀਂ ਕੀਤਾ"
        case .armenian:   return "Դուք \(days) օր չեք մարզվել"
        }
    }

    func recNeedsAttentionHeadline(_ exerciseName: String) -> String {
        switch self {
        case .english:    return "\(exerciseName) needs attention"
        case .spanish:    return "\(exerciseName) necesita atención"
        case .hindi:      return "\(exerciseName) पर ध्यान दें"
        case .gujarati:   return "\(exerciseName) પર ધ્યાન આપો"
        case .chinese:    return "\(exerciseName)需要关注"
        case .farsi:      return "\(exerciseName) نیاز به توجه دارد"
        case .korean:     return "\(exerciseName)에 관심이 필요해요"
        case .vietnamese: return "\(exerciseName) cần chú ý"
        case .arabic:     return "\(exerciseName) يحتاج إلى اهتمام"
        case .portuguese: return "\(exerciseName) precisa de atenção"
        case .tagalog:    return "Kailangan ng pansin ang \(exerciseName)"
        case .punjabi:    return "\(exerciseName) ਵੱਲ ਧਿਆਨ ਦਿਓ"
        case .armenian:   return "\(exerciseName)-ը ուշադրության կարիք ունի"
        }
    }

    var recAccuracyDroppedExplanation: String {
        switch self {
        case .english:    return "Accuracy dropped recently"
        case .spanish:    return "La precisión bajó recientemente"
        case .hindi:      return "हाल ही में सटीकता घटी है"
        case .gujarati:   return "તાજેતરમાં ચોકસાઈ ઘટી છે"
        case .chinese:    return "最近正确率有所下降"
        case .farsi:      return "دقت اخیراً کاهش یافته است"
        case .korean:     return "최근 정확도가 떨어졌어요"
        case .vietnamese: return "Độ chính xác gần đây giảm"
        case .arabic:     return "انخفضت الدقة مؤخرًا"
        case .portuguese: return "A precisão caiu recentemente"
        case .tagalog:    return "Bumaba kamakailan ang katumpakan"
        case .punjabi:    return "ਹਾਲ ਹੀ ਵਿੱਚ ਸ਼ੁੱਧਤਾ ਘਟੀ ਹੈ"
        case .armenian:   return "Ճշգրտությունը վերջերս նվազել է"
        }
    }

    var recTrySomethingNewHeadline: String {
        switch self {
        case .english:    return "Try something new"
        case .spanish:    return "Prueba algo nuevo"
        case .hindi:      return "कुछ नया आज़माएं"
        case .gujarati:   return "કંઈક નવું અજમાવો"
        case .chinese:    return "尝试新练习"
        case .farsi:      return "چیز جدیدی امتحان کنید"
        case .korean:     return "새로운 것을 시도해 보세요"
        case .vietnamese: return "Thử điều gì đó mới"
        case .arabic:     return "جرّب شيئًا جديدًا"
        case .portuguese: return "Experimente algo novo"
        case .tagalog:    return "Sumubok ng bago"
        case .punjabi:    return "ਕੁਝ ਨਵਾਂ ਅਜ਼ਮਾਓ"
        case .armenian:   return "Փորձեք նոր բան"
        }
    }

    func recUntouchedSectionExplanation(_ sectionName: String) -> String {
        switch self {
        case .english:    return "You haven't touched \(sectionName) this week"
        case .spanish:    return "No has tocado \(sectionName) esta semana"
        case .hindi:      return "इस सप्ताह आपने \(sectionName) का अभ्यास नहीं किया"
        case .gujarati:   return "આ અઠવાડિયે તમે \(sectionName) નો અભ્યાસ કર્યો નથી"
        case .chinese:    return "本周你还没有练习\(sectionName)"
        case .farsi:      return "این هفته \(sectionName) را تمرین نکرده‌اید"
        case .korean:     return "이번 주에 \(sectionName)을(를) 연습하지 않았어요"
        case .vietnamese: return "Tuần này bạn chưa luyện \(sectionName)"
        case .arabic:     return "لم تتدرب على \(sectionName) هذا الأسبوع"
        case .portuguese: return "Você não praticou \(sectionName) esta semana"
        case .tagalog:    return "Hindi mo pa nagagalaw ang \(sectionName) ngayong linggo"
        case .punjabi:    return "ਇਸ ਹਫ਼ਤੇ ਤੁਸੀਂ \(sectionName) ਦਾ ਅਭਿਆਸ ਨਹੀਂ ਕੀਤਾ"
        case .armenian:   return "Այս շաբաթ դուք չեք զբաղվել \(sectionName)-ով"
        }
    }

    var recChallengeHeadline: String {
        switch self {
        case .english:    return "Ready for a challenge?"
        case .spanish:    return "¿Listo para un desafío?"
        case .hindi:      return "चुनौती के लिए तैयार?"
        case .gujarati:   return "પડકાર માટે તૈયાર છો?"
        case .chinese:    return "准备好挑战了吗？"
        case .farsi:      return "آماده یک چالش هستید؟"
        case .korean:     return "도전할 준비 되셨나요?"
        case .vietnamese: return "Sẵn sàng thử thách?"
        case .arabic:     return "هل أنت مستعد للتحدي؟"
        case .portuguese: return "Pronto para um desafio?"
        case .tagalog:    return "Handa na ba sa hamon?"
        case .punjabi:    return "ਚੁਣੌਤੀ ਲਈ ਤਿਆਰ ਹੋ?"
        case .armenian:   return "Պատրա՞ստ եք մարտահրավերի:"
        }
    }

    func recChallengeExplanation(_ exerciseName: String) -> String {
        switch self {
        case .english:    return "You're consistently acing \(exerciseName)"
        case .spanish:    return "Dominas \(exerciseName) constantemente"
        case .hindi:      return "आप \(exerciseName) में लगातार शानदार हैं"
        case .gujarati:   return "તમે \(exerciseName) માં સતત ઉત્તમ છો"
        case .chinese:    return "你在\(exerciseName)中一直表现出色"
        case .farsi:      return "شما در \(exerciseName) پیوسته عالی هستید"
        case .korean:     return "\(exerciseName)에서 꾸준히 잘하고 있어요"
        case .vietnamese: return "Bạn liên tục làm tốt \(exerciseName)"
        case .arabic:     return "أنت تتفوق باستمرار في \(exerciseName)"
        case .portuguese: return "Você domina \(exerciseName) consistentemente"
        case .tagalog:    return "Tuloy-tuloy kang mahusay sa \(exerciseName)"
        case .punjabi:    return "ਤੁਸੀਂ \(exerciseName) ਵਿੱਚ ਲਗਾਤਾਰ ਵਧੀਆ ਕਰ ਰਹੇ ਹੋ"
        case .armenian:   return "Դուք անընդհատ գերազանց եք \(exerciseName)-ում"
        }
    }
}

// MARK: - Therapy Settings Localization
extension AppLanguage {
    var therapySettingsTitle: String {
        switch self {
        case .english:    return "Therapy Settings"
        case .spanish:    return "Ajustes de Terapia"
        case .hindi:      return "थेरेपी सेटिंग्स"
        case .gujarati:   return "થેરાપી સેટિંગ્સ"
        case .chinese:    return "治疗设置"
        case .farsi:      return "تنظیمات درمان"
        case .korean:     return "치료 설정"
        case .vietnamese: return "Cài đặt trị liệu"
        case .arabic:     return "إعدادات العلاج"
        case .portuguese: return "Configurações de Terapia"
        case .tagalog:    return "Mga Setting ng Therapy"
        case .punjabi:    return "ਥੈਰੇਪੀ ਸੈਟਿੰਗਜ਼"
        case .armenian:   return "Թերապիայի Կարգավորումներ"
        }
    }
    
    var adaptiveDifficultyLabel: String {
        switch self {
        case .english:    return "Adaptive Difficulty"
        case .spanish:    return "Dificultad Adaptativa"
        case .hindi:      return "अनुकूली कठिनाई"
        case .gujarati:   return "અનુકૂલનશીલ મુશ્કેલી"
        case .chinese:    return "自适应难度"
        case .farsi:      return "دشواری تطبیقی"
        case .korean:     return "적응형 난이도"
        case .vietnamese: return "Độ khó thích ứng"
        case .arabic:     return "الصعوبة التكيفية"
        case .portuguese: return "Dificuldade Adaptativa"
        case .tagalog:    return "Adaptive na Dificultad"
        case .punjabi:    return "ਅਨੁਕੂਲਿਤ ਮੁਸ਼ਕਲ"
        case .armenian:   return "Ադապտիվ Դժվարություն"
        }
    }

    var adaptiveDifficultySubtitle: String {
        switch self {
        case .english:    return "Automatically adjusts question difficulty based on performance"
        case .spanish:    return "Ajusta automáticamente la dificultad de las preguntas según el rendimiento"
        case .hindi:      return "प्रदर्शन के आधार पर प्रश्नों की कठिनाई को स्वचालित रूप से समायोजित करता है"
        case .gujarati:   return "પ્રદર્શનના આધારે પ્રશ્નોની મુશ્કેલીને આપમેળે સમાયોજيت કરે છે"
        case .chinese:    return "根据表现自动调整问题难度"
        case .farsi:      return "به طور خودکار سختی سوالات را بر اساس عملکرد تنظیم می کند"
        case .korean:     return "수행 능력에 따라 질문 난이도를 자동으로 조절합니다"
        case .vietnamese: return "Tự động điều chỉnh độ khó của câu hỏi dựa trên hiệu suất"
        case .arabic:     return "ضبط صعوبة الأسئلة تلقائيًا بناءً على الأداء"
        case .portuguese: return "Ajusta automaticamente a dificuldade das perguntas com base no desempenho"
        case .tagalog:    return "Awtomatikong inaayos ang hirap ng tanong batay sa pagganap"
        case .punjabi:    return "ਕਾਰਗੁਜ਼ਾਰੀ ਦੇ ਅਧਾਰ ਤੇ ਪ੍ਰਸ਼ਨ ਦੀ ਮੁਸ਼ਕਲ ਨੂੰ ਆਪਣੇ ਆਪ ਵਿਵਸਥਿਤ ਕਰਦਾ ਹੈ"
        case .armenian:   return "Ավտոմատ կերպով կարգավորում է հարցերի դժվարությունը՝ հիմնվելով կատարողականի վրա"
        }
    }

    var resetDifficultyProgressLabel: String {
        switch self {
        case .english:    return "Reset Difficulty Progress"
        case .spanish:    return "Restablecer Progreso de Dificultad"
        case .hindi:      return "कठिनाई प्रगति रीसेट करें"
        case .gujarati:   return "મુશ્કેલીની પ્રગતિ રીસેટ કરો"
        case .chinese:    return "重置难度进度"
        case .farsi:      return "بازنشانی پیشرفت سختی"
        case .korean:     return "난이도 진행 상황 초기화"
        case .vietnamese: return "Đặt lại tiến trình độ khó"
        case .arabic:     return "إعادة تعيين تقدم الصعوبة"
        case .portuguese: return "Redefinir Progresso de Dificuldade"
        case .tagalog:    return "I-reset ang Progreso ng Kahirapan"
        case .punjabi:    return "ਮੁਸ਼ਕਲ ਪ੍ਰਗਤੀ ਨੂੰ ਰੀਸੈਟ ਕਰੋ"
        case .armenian:   return "Վերակայել Դժվարության Առաջընթացը"
        }
    }

    var resetDifficultyProgressSubtitle: String {
        switch self {
        case .english:    return "Returns all exercises to Easy difficulty and clears performance history"
        case .spanish:    return "Devuelve todos los ejercicios a dificultad Fácil y borra el historial de rendimiento"
        case .hindi:      return "सभी अभ्यासों को आसान कठिनाई पर लौटाता है और प्रदर्शन इतिहास को साफ करता है"
        case .gujarati:   return "બધી કસરતોને સરળ મુશ્કેલી પર પરત કરે છે અને પ્રદર્શન ઇતિહાસ સાફ કરે છે"
        case .chinese:    return "将所有练习恢复为简单难度并清除表现记录"
        case .farsi:      return "همه تمرین ها را به سختی آسان برمی گرداند و تاریخچه عملکرد را پاک می کند"
        case .korean:     return "모든 연습을 쉬움 난이도로 되돌리고 수행 기록을 지웁니다"
        case .vietnamese: return "Trả tất cả bài tập về độ khó Dễ và xóa lịch sử hiệu suất"
        case .arabic:     return "إرجاع جميع التمارين إلى الصعوبة السهلة ومسح سجل الأداء"
        case .portuguese: return "Retorna todos os exercícios para a dificuldade Fácil e limpa o histórico de desempenho"
        case .tagalog:    return "Ipinapabalik ang lahat ng pagsasanay sa Madaling kahirapan at nililinis ang kasaysayan ng pagganap"
        case .punjabi:    return "ਸਾਰੇ ਅਭਿਆਸਾਂ ਨੂੰ ਅਸਾਨ ਮੁਸ਼ਕਲ ਵਿੱਚ ਵਾਪਸ ਲਿਆਉਂਦਾ ਹੈ ਅਤੇ ਪ੍ਰਦਰਸ਼ਨ ਦੇ ਇਤਿਹਾਸ ਨੂੰ ਸਾਫ਼ ਕਰਦਾ ਹੈ"
        case .armenian:   return "Վերադարձնում է բոլոր վարժությունները Հեշտ դժվարության և մաքրում կատարողականի պատմությունը"
        }
    }

    var resetDifficultyProgressAlertTitle: String {
        switch self {
        case .english:    return "Reset Difficulty Progress?"
        case .spanish:    return "¿Restablecer Progreso de Dificultad?"
        case .hindi:      return "कठिनाई प्रगति रीसेट करें?"
        case .gujarati:   return "મુશ્કેલીની પ્રગતિ રીસેટ કરવી?"
        case .chinese:    return "确定重置难度进度吗？"
        case .farsi:      return "بازنشانی پیشرفت سختی؟"
        case .korean:     return "난이도 진행 상황을 초기화하시겠습니까?"
        case .vietnamese: return "Đặt lại tiến trình độ khó?"
        case .arabic:     return "إعادة تعيين تقدم الصعوبة؟"
        case .portuguese: return "Redefinir Progresso de Dificuldade?"
        case .tagalog:    return "I-reset ang Progreso ng Kahirapan?"
        case .punjabi:    return "ਮੁਸ਼ਕਲ ਪ੍ਰਗਤੀ ਨੂੰ ਰੀਸੈਟ ਕਰਨਾ ਹੈ?"
        case .armenian:   return "Վերակայե՞լ դժվարության առաջընթացը:"
        }
    }

    var resetDifficultyProgressAlertMessage: String {
        switch self {
        case .english:    return "This will clear your rolling accuracy history and reset all exercises to Auto/Easy. This cannot be undone."
        case .spanish:    return "Esto borrará su historial de precisión y restablecerá todos los ejercicios a Auto/Fácil. Esto no se puede deshacer."
        case .hindi:      return "यह आपके सटीकता इतिहास को साफ कर देगा और सभी अभ्यासों को ऑटो/आसान पर रीसेट कर देगा। इसे पूर्ववत नहीं किया जा सकता।"
        case .gujarati:   return "આ તમારા સચોટતાના ઇતિહાસને સાફ કરશે અને બધી કસરતોને ઓટો/સરળ પર રીસેટ કરશે. આ પૂર્વવત્ કરી શકાતું નથી."
        case .chinese:    return "这将清除您的滚动正确率记录，并将所有练习重置为自动/简单。此操作无法撤销。"
        case .farsi:      return "این کار تاریخچه دقت شما را پاک کرده و تمام تمرین‌ها را به حالت خودکار/آسان بازنشانی می‌کند. این عمل غیرقابل بازگشت است."
        case .korean:     return "이 작업은 정확도 기록을 지우고 모든 연습을 자동/쉬움으로 초기화합니다. 이 작업은 되돌릴 수 없습니다."
        case .vietnamese: return "Thao tác này sẽ xóa lịch sử độ chính xác và đặt lại tất cả bài tập về Tự động/Dễ. Việc này không thể hoàn tác."
        case .arabic:     return "سيؤدي هذا إلى مسح سجل الدقة وإعادة تعيين جميع التمارين إلى تلقائي/سهل. لا يمكن التراجع عن هذا الإجراء."
        case .portuguese: return "Isso limpará seu histórico de precisão e redefinirá todos os exercícios para Auto/Fácil. Isso não pode ser desfeito."
        case .tagalog:    return "Lilinisin nito ang iyong kasaysayan ng katumpakan at ibabalik ang lahat ng pagsasanay sa Auto/Madali. Hindi ito maaaring bawiin."
        case .punjabi:    return "ਇਹ ਤੁਹਾਡੇ ਸ਼ੁੱਧਤਾ ਇਤਿਹਾਸ ਨੂੰ ਸਾਫ਼ ਕਰੇਗਾ ਅਤੇ ਸਾਰੇ ਅਭਿਆਸਾਂ ਨੂੰ ਆਟੋ/ਅਸਾਨ ਤੇ ਰੀਸੈਟ ਕਰੇਗਾ। ਇਸਨੂੰ ਵਾਪਸ ਨਹੀਂ ਲਿਆ ਜਾ ਸਕਦਾ।"
        case .armenian:   return "Սա կմաքրի ձեր ճշգրտության պատմությունը և կվերակայի բոլոր վարժությունները Ավտո/Հեշտ վիճակի: Սա հնարավոր չէ չեղարկել:"
        }
    }

    var exerciseAuto: String {
        switch self {
        case .english:    return "Auto"
        case .spanish:    return "Auto"
        case .hindi:      return "ऑटो"
        case .gujarati:   return "ઓટો"
        case .chinese:    return "自动"
        case .farsi:      return "خودکار"
        case .korean:     return "자동"
        case .vietnamese: return "Tự động"
        case .arabic:     return "تلقائي"
        case .portuguese: return "Auto"
        case .tagalog:    return "Auto"
        case .punjabi:    return "ਆਟੋ"
        case .armenian:   return "Ավտո"
        }
    }

    var exerciseEasy: String {
        switch self {
        case .english:    return "Easy"
        case .spanish:    return "Fácil"
        case .hindi:      return "आसान"
        case .gujarati:   return "સરળ"
        case .chinese:    return "简单"
        case .farsi:      return "آسان"
        case .korean:     return "쉬움"
        case .vietnamese: return "Dễ"
        case .arabic:     return "سهل"
        case .portuguese: return "Fácil"
        case .tagalog:    return "Madali"
        case .punjabi:    return "ਅਸਾਨ"
        case .armenian:   return "Հեշտ"
        }
    }

    var exerciseMedium: String {
        switch self {
        case .english:    return "Medium"
        case .spanish:    return "Medio"
        case .hindi:      return "मध्यम"
        case .gujarati:   return "મધ્યમ"
        case .chinese:    return "中等"
        case .farsi:      return "متوسط"
        case .korean:     return "보통"
        case .vietnamese: return "Vừa"
        case .arabic:     return "متوسط"
        case .portuguese: return "Médio"
        case .tagalog:    return "Katamtaman"
        case .punjabi:    return "ਮੱਧਮ"
        case .armenian:   return "Միջին"
        }
    }

    var exerciseHard: String {
        switch self {
        case .english:    return "Hard"
        case .spanish:    return "Difícil"
        case .hindi:      return "कठिन"
        case .gujarati:   return "કઠિન"
        case .chinese:    return "困难"
        case .farsi:      return "سخت"
        case .korean:     return "어려움"
        case .vietnamese: return "Khó"
        case .arabic:     return "صعب"
        case .portuguese: return "Difícil"
        case .tagalog:    return "Mahirap"
        case .punjabi:    return "ਕਠਿਨ"
        case .armenian:   return "Դժվար"
        }
    }
}

