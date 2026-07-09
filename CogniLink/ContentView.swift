import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @State private var selectedTab = 0
    @State private var showOnboarding = !UserDefaults.standard.bool(forKey: "clarity_onboarding_complete")
    @State private var hasResetTabOnLaunch = false
    @State private var backgroundOpacity: Double = 0.0
    @State private var backgroundImageName: String = BackgroundManager.shared.dailyImageName(for: .iOS)

    private var isRTL: Bool {
        [.farsi, .arabic].contains(languageManager.currentLanguage)
    }

    var body: some View {
        ZStack {
            Group {
                if BackgroundManager.shared.imageExists(named: backgroundImageName) {
                    GeometryReader { geo in
                        Image(backgroundImageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width, height: geo.size.height)
                            .clipped()
                    }
                    .id(backgroundImageName)
                    .transition(.opacity)
                } else {
                    Color.black
                }
            }
            .ignoresSafeArea()
            .opacity(backgroundOpacity)

            Color.black.opacity(0.35)
                .ignoresSafeArea()

            tabViewBody
                .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
                .id(languageManager.currentLanguage)
        }
        .fullScreenCover(isPresented: $showOnboarding) {
            OnboardingView(isPresented: $showOnboarding)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 0.8)) {
                backgroundOpacity = 1.0
            }
            #if os(iOS)
            if !hasResetTabOnLaunch {
                selectedTab = 0
                hasResetTabOnLaunch = true
            }
            NotificationManager.shared.refreshPermissionStatus()
            NotificationManager.shared.rescheduleAll()
            #endif
        }
        .onReceive(
            NotificationCenter.default.publisher(for: .clarityBackgroundChanged)
                .receive(on: DispatchQueue.main)
        ) { _ in
            withAnimation(.easeInOut(duration: 0.6)) {
                backgroundImageName = BackgroundManager.shared.dailyImageName(for: .iOS)
            }
        }
    }

    // MARK: - Tab View

    @ViewBuilder
    private var tabViewBody: some View {
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
                Label(activitiesTabTitle, systemImage: "brain.head.profile")
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
        case .japanese:   return "Գլխավոր" // TODO: translate
        case .french:     return "Գլխավոր" // TODO: translate
        case .amharic:    return "Գլխավոր" // TODO: translate
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
        case .japanese:   return "Վարժություններ" // TODO: translate
        case .french:     return "Վարժություններ" // TODO: translate
        case .amharic:    return "Վարժություններ" // TODO: translate
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
        case .japanese:   return "Պրոֆիլ" // TODO: translate
        case .french:     return "Պրոֆիլ" // TODO: translate
        case .amharic:    return "Պրոֆիլ" // TODO: translate
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
                .frame(maxWidth: .infinity)
                .padding(.vertical)
            }
            .onAppear {
                loadSessionsCount()
                refreshRecommendations()
                refreshWeeklyGoal()
                
                // Clear any active exercise navigation destinations on launch
                surpriseExercise = nil
                sectionExercise = nil
                recommendedExercise = nil
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
            .appBackground()
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
        case .japanese:
            if hasName {
                return "こんにちは、\(name)!"
            } else {
                return "こんにちは！"
            } // TODO: translate
        case .french:
            if hasName {
                return "Bonjour, \(name)!"
            } else {
                return "Bonjour !"
            } // TODO: translate
        case .amharic:
            if hasName {
                return "ሰላም፣ \(name)!"
            } else {
                return "ሰላም!"
            } // TODO: translate
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
        case .japanese:   return "Անակնկալե՛լ ինձ: 🎲" // TODO: translate
        case .french:     return "Անակնկալե՛լ ինձ: 🎲" // TODO: translate
        case .amharic:    return "Անակնկալե՛լ ինձ: 🎲" // TODO: translate
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
        case .japanese:   return "Հպեք պատահական վարժության համար" // TODO: translate
        case .french:     return "Հպեք պատահական վարժության համար" // TODO: translate
        case .amharic:    return "Հպեք պատահական վարժության համար" // TODO: translate
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
        case .japanese:   return "Լեզու" // TODO: translate
        case .french:     return "Լեզու" // TODO: translate
        case .amharic:    return "Լեզու" // TODO: translate
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
        case .japanese:   return "Ճանաչողություն" // TODO: translate
        case .french:     return "Ճանաչողություն" // TODO: translate
        case .amharic:    return "Ճանաչողություն" // TODO: translate
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
        case .japanese:   return "Գործնական Հմտություններ" // TODO: translate
        case .french:     return "Գործնական Հմտություններ" // TODO: translate
        case .amharic:    return "Գործնական Հմտություններ" // TODO: translate
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
        case .armenian:   return "\(sessionsCount) սեսիա խաղացվել է"
        case .japanese:   return "\(sessionsCount) սեսիա խաղացվել է" // TODO: translate
        case .french:     return "\(sessionsCount) սեսիա խաղացվել է" // TODO: translate
        case .amharic:    return "\(sessionsCount) սեսիա խաղացվել է" // TODO: translate
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

// MARK: - Notification Copy Localization
extension AppLanguage {

    /// Rotating daily-reminder messages. `name` may be empty.
    func notifDailyMessages(name: String) -> [String] {
        let hasName = !name.isEmpty
        switch self {
        case .english:
            return [
                hasName ? "Time for your Clarity practice, \(name)." : "Time for your Clarity practice.",
                "A few minutes of practice goes a long way.",
                "Your streak is waiting — keep it going.",
                "Ready when you are. Open Clarity."
            ]
        case .spanish:
            return [
                hasName ? "Hora de tu práctica de Clarity, \(name)." : "Hora de tu práctica de Clarity.",
                "Unos minutos de práctica ayudan mucho.",
                "Tu racha te espera — mantenla viva.",
                "Cuando estés listo, abre Clarity."
            ]
        case .hindi:
            return [
                hasName ? "\(name), आपके Clarity अभ्यास का समय हो गया।" : "आपके Clarity अभ्यास का समय हो गया।",
                "कुछ मिनट का अभ्यास बहुत काम आता है।",
                "आपकी स्ट्रीक इंतज़ार कर रही है — इसे जारी रखें।",
                "जब आप तैयार हों, Clarity खोलें।"
            ]
        case .gujarati:
            return [
                hasName ? "\(name), તમારા Clarity અભ્યાસનો સમય થયો." : "તમારા Clarity અભ્યાસનો સમય થયો.",
                "થોડી મિનિટનો અભ્યાસ ઘણો ફાયદો કરે છે.",
                "તમારી સ્ટ્રીક રાહ જુએ છે — ચાલુ રાખો.",
                "તમે તૈયાર હો ત્યારે Clarity ખોલો."
            ]
        case .chinese:
            return [
                hasName ? "\(name)，该进行 Clarity 练习了。" : "该进行 Clarity 练习了。",
                "几分钟的练习就有很大帮助。",
                "你的连续记录在等你——继续保持。",
                "准备好了就打开 Clarity。"
            ]
        case .farsi:
            return [
                hasName ? "\(name)، وقت تمرین Clarity شماست." : "وقت تمرین Clarity شماست.",
                "چند دقیقه تمرین تأثیر زیادی دارد.",
                "روند شما منتظر است — ادامه دهید.",
                "هر وقت آماده بودید، Clarity را باز کنید."
            ]
        case .korean:
            return [
                hasName ? "\(name)님, Clarity 연습 시간이에요." : "Clarity 연습 시간이에요.",
                "몇 분의 연습이 큰 도움이 됩니다.",
                "연속 기록이 기다리고 있어요 — 이어가세요.",
                "준비되면 Clarity를 열어 주세요."
            ]
        case .vietnamese:
            return [
                hasName ? "\(name), đến giờ luyện tập Clarity rồi." : "Đến giờ luyện tập Clarity rồi.",
                "Vài phút luyện tập cũng rất hữu ích.",
                "Chuỗi ngày của bạn đang chờ — hãy duy trì.",
                "Sẵn sàng thì mở Clarity nhé."
            ]
        case .arabic:
            return [
                hasName ? "\(name)، حان وقت تدريب Clarity." : "حان وقت تدريب Clarity.",
                "دقائق قليلة من التدريب تحدث فرقًا كبيرًا.",
                "سلسلتك بانتظارك — واصل التقدم.",
                "افتح Clarity متى كنت مستعدًا."
            ]
        case .portuguese:
            return [
                hasName ? "Hora da sua prática no Clarity, \(name)." : "Hora da sua prática no Clarity.",
                "Alguns minutos de prática fazem muita diferença.",
                "Sua sequência está esperando — continue.",
                "Quando estiver pronto, abra o Clarity."
            ]
        case .tagalog:
            return [
                hasName ? "\(name), oras na ng iyong Clarity practice." : "Oras na ng iyong Clarity practice.",
                "Malaki ang naitutulong ng ilang minutong pagsasanay.",
                "Naghihintay ang iyong streak — ipagpatuloy mo.",
                "Handa ka na? Buksan ang Clarity."
            ]
        case .punjabi:
            return [
                hasName ? "\(name), ਤੁਹਾਡੇ Clarity ਅਭਿਆਸ ਦਾ ਸਮਾਂ ਹੋ ਗਿਆ।" : "ਤੁਹਾਡੇ Clarity ਅਭਿਆਸ ਦਾ ਸਮਾਂ ਹੋ ਗਿਆ।",
                "ਕੁਝ ਮਿੰਟਾਂ ਦਾ ਅਭਿਆਸ ਬਹੁਤ ਫਾਇਦੇਮੰਦ ਹੁੰਦਾ ਹੈ।",
                "ਤੁਹਾਡੀ ਸਟ੍ਰੀਕ ਉਡੀਕ ਰਹੀ ਹੈ — ਇਸਨੂੰ ਜਾਰੀ ਰੱਖੋ।",
                "ਜਦੋਂ ਤਿਆਰ ਹੋਵੋ, Clarity ਖੋਲ੍ਹੋ।"
            ]
        case .armenian:
            return [
                hasName ? "\(name), ձեր Clarity մարզման ժամանակն է:" : "Ձեր Clarity մարզման ժամանակն է:",
                "Մի քանի րոպե մարզումը մեծ օգուտ է տալիս:",
                "Ձեր շարքը սպասում է — շարունակեք:",
                "Երբ պատրաստ լինեք, բացեք Clarity-ն:"
            ]
        case .japanese:
            return [
                hasName ? "\(name)さん、Clarityの練習時間です。" : "Clarityの練習時間です。",
                "数分間の練習が大きな効果をもたらします。",
                "継続記録が待っています。続けましょう。",
                "準備ができたら、Clarityを開いてください。"
            ] // TODO: translate
        case .french:
            return [
                hasName ? "C'est l'heure de votre entraînement Clarity, \(name)." : "C'est l'heure de votre entraînement Clarity.",
                "Quelques minutes d'entraînement font une grande différence.",
                "Votre série vous attend — continuez.",
                "Quand vous êtes prêt, ouvrez Clarity."
            ] // TODO: translate
        case .amharic:
            return [
                hasName ? "\(name)፣ የClarity ልምምድ ጊዜዎ ነው።" : "የClarity ልምምድ ጊዜዎ ነው።",
                "የጥቂት ደቂቃዎች ልምምድ ትልቅ ለውጥ ያመጣል።",
                "ቀጣይነትዎ እየጠበቀዎት ነው — ይቀጥሉበት።",
                "ዝግጁ ሲሆኑ Clarityን ይክፈቱ።"
            ] // TODO: translate
        }
    }

    func notifStreakAtRisk(name: String, days: Int) -> String {
        let hasName = !name.isEmpty
        switch self {
        case .english:
            return hasName
                ? "\(name), your \(days)-day streak ends at midnight. Practice now to keep it going."
                : "Your \(days)-day streak ends at midnight. Practice now to keep it going."
        case .spanish:
            return hasName
                ? "\(name), tu racha de \(days) días termina a medianoche. Practica ahora para mantenerla."
                : "Tu racha de \(days) días termina a medianoche. Practica ahora para mantenerla."
        case .hindi:
            return hasName
                ? "\(name), आपकी \(days)-दिन की स्ट्रीक आधी रात को समाप्त हो जाएगी। इसे जारी रखने के लिए अभी अभ्यास करें।"
                : "आपकी \(days)-दिन की स्ट्रीक आधी रात को समाप्त हो जाएगी। इसे जारी रखने के लिए अभी अभ्यास करें।"
        case .gujarati:
            return hasName
                ? "\(name), તમારી \(days)-દિવસની સ્ટ્રીક મધરાતે પૂરી થશે. ચાલુ રાખવા હમણાં અભ્યાસ કરો."
                : "તમારી \(days)-દિવસની સ્ટ્રીક મધરાતે પૂરી થશે. ચાલુ રાખવા હમણાં અભ્યાસ કરો."
        case .chinese:
            return hasName
                ? "\(name)，你 \(days) 天的连续记录将在午夜结束。现在练习以保持记录。"
                : "你 \(days) 天的连续记录将在午夜结束。现在练习以保持记录。"
        case .farsi:
            return hasName
                ? "\(name)، روند \(days) روزه شما نیمه‌شب پایان می‌یابد. برای ادامه، اکنون تمرین کنید."
                : "روند \(days) روزه شما نیمه‌شب پایان می‌یابد. برای ادامه، اکنون تمرین کنید."
        case .korean:
            return hasName
                ? "\(name)님, \(days)일 연속 기록이 자정에 끝나요. 지금 연습해서 이어가세요."
                : "\(days)일 연속 기록이 자정에 끝나요. 지금 연습해서 이어가세요."
        case .vietnamese:
            return hasName
                ? "\(name), chuỗi \(days) ngày của bạn sẽ kết thúc lúc nửa đêm. Luyện tập ngay để duy trì."
                : "Chuỗi \(days) ngày của bạn sẽ kết thúc lúc nửa đêm. Luyện tập ngay để duy trì."
        case .arabic:
            return hasName
                ? "\(name)، سلسلتك البالغة \(days) أيام تنتهي عند منتصف الليل. تدرب الآن للحفاظ عليها."
                : "سلسلتك البالغة \(days) أيام تنتهي عند منتصف الليل. تدرب الآن للحفاظ عليها."
        case .portuguese:
            return hasName
                ? "\(name), sua sequência de \(days) dias termina à meia-noite. Pratique agora para mantê-la."
                : "Sua sequência de \(days) dias termina à meia-noite. Pratique agora para mantê-la."
        case .tagalog:
            return hasName
                ? "\(name), magtatapos ang iyong \(days)-araw na streak sa hatinggabi. Mag-ensayo na ngayon."
                : "Magtatapos ang iyong \(days)-araw na streak sa hatinggabi. Mag-ensayo na ngayon."
        case .punjabi:
            return hasName
                ? "\(name), ਤੁਹਾਡੀ \(days)-ਦਿਨ ਦੀ ਸਟ੍ਰੀਕ ਅੱਧੀ ਰਾਤ ਨੂੰ ਖਤਮ ਹੋ ਜਾਵੇਗੀ। ਜਾਰੀ ਰੱਖਣ ਲਈ ਹੁਣੇ ਅਭਿਆਸ ਕਰੋ।"
                : "ਤੁਹਾਡੀ \(days)-ਦਿਨ ਦੀ ਸਟ੍ਰੀਕ ਅੱਧੀ ਰਾਤ ਨੂੰ ਖਤਮ ਹੋ ਜਾਵੇਗੀ। ਜਾਰੀ ਰੱਖਣ ਲਈ ਹੁਣੇ ਅਭਿਆਸ ਕਰੋ।"
        case .armenian:
            return hasName
                ? "\(name), ձեր \(days)-օրյա շարքն ավարտվում է կեսգիշերին: Մարզվեք հիմա՝ այն պահպանելու համար:"
                : "Ձեր \(days)-օրյա շարքն ավարտվում է կեսգիշերին: Մարզվեք հիմա՝ այն պահպանելու համար:"
        case .japanese:
            return hasName
                ? "\(name)さん、継続記録はあと \(days)日です。"
                : "継続記録はあと \(days)日です。" // TODO: translate
        case .french:
            return hasName
                ? "\(name), votre série de \(days) jours se termine à minuit. Entraînez-vous maintenant."
                : "Votre série de \(days) jours se termine à minuit. Entraînez-vous maintenant." // TODO: translate
        case .amharic:
            return hasName
                ? "\(name)፣ የ\(days) ቀናት ቀጣይነትዎ እኩለ ሌሊት ላይ ያበቃል። አሁኑኑ ይለማመዱ።"
                : "የ\(days) ቀናት ቀጣይነትዎ እኩለ ሌሊት ላይ ያበቃል። አሁኑኑ ይለማመዱ።" // TODO: translate
        }
    }

    var notifWelcomeBack: String {
        switch self {
        case .english:    return "It's been a few days. Clarity is here whenever you're ready."
        case .spanish:    return "Han pasado unos días. Clarity está aquí cuando estés listo."
        case .hindi:      return "कुछ दिन हो गए हैं। जब आप तैयार हों, Clarity यहीं है।"
        case .gujarati:   return "થોડા દિવસ થઈ ગયા. તમે તૈયાર હો ત્યારે Clarity અહીં જ છે."
        case .chinese:    return "已经好几天了。Clarity 随时等着你。"
        case .farsi:      return "چند روزی گذشته است. هر وقت آماده بودید، Clarity اینجاست."
        case .korean:     return "며칠이 지났네요. 준비되면 언제든 Clarity가 기다리고 있어요."
        case .vietnamese: return "Đã vài ngày rồi. Clarity luôn ở đây khi bạn sẵn sàng."
        case .arabic:     return "مرت بضعة أيام. Clarity هنا متى كنت مستعدًا."
        case .portuguese: return "Já se passaram alguns dias. O Clarity está aqui quando você estiver pronto."
        case .tagalog:    return "Ilang araw na ang lumipas. Nandito ang Clarity kapag handa ka na."
        case .punjabi:    return "ਕੁਝ ਦਿਨ ਹੋ ਗਏ ਹਨ। ਜਦੋਂ ਤੁਸੀਂ ਤਿਆਰ ਹੋਵੋ, Clarity ਇੱਥੇ ਹੈ।"
        case .armenian:   return "Մի քանի օր է անցել: Clarity-ն այստեղ է, երբ պատրաստ լինեք:"
        case .japanese:   return "Մի քանի օր է անցել: Clarity-ն այստեղ է, երբ պատրաստ լինեք:" // TODO: translate
        case .french:     return "Մի քանի օր է անցել: Clarity-ն այստեղ է, երբ պատրաստ լինեք:" // TODO: translate
        case .amharic:    return "Մի քանի օր է անցել: Clarity-ն այստեղ է, երբ պատրաստ լինեք:" // TODO: translate
        }
    }
}

// MARK: - Baseline Assessment Localization
extension AppLanguage {

    var baTitle: String {
        switch self {
        case .english:    return "Baseline Assessment"
        case .spanish:    return "Evaluación Inicial"
        case .hindi:      return "आधारभूत मूल्यांकन"
        case .gujarati:   return "બેઝલાઇન મૂલ્યાંકન"
        case .chinese:    return "基线评估"
        case .farsi:      return "ارزیابی پایه"
        case .korean:     return "기초 평가"
        case .vietnamese: return "Đánh giá cơ bản"
        case .arabic:     return "التقييم الأساسي"
        case .portuguese: return "Avaliação Inicial"
        case .tagalog:    return "Baseline Assessment"
        case .punjabi:    return "ਬੇਸਲਾਈਨ ਮੁਲਾਂਕਣ"
        case .armenian:   return "Սկզբնական Գնահատում"
        case .japanese:   return "Սկզբնական Գնահատում" // TODO: translate
        case .french:     return "Սկզբնական Գնահատում" // TODO: translate
        case .amharic:    return "Սկզբնական Գնահատում" // TODO: translate
        }
    }

    var baIntroMessage: String {
        switch self {
        case .english:    return "Answer 15 short questions so we can set the right starting level for your practice. It takes about 10 minutes."
        case .spanish:    return "Responde 15 preguntas cortas para que fijemos el nivel inicial adecuado para tu práctica. Toma unos 10 minutos."
        case .hindi:      return "15 छोटे प्रश्नों के उत्तर दें ताकि हम आपके अभ्यास के लिए सही शुरुआती स्तर तय कर सकें। इसमें लगभग 10 मिनट लगते हैं।"
        case .gujarati:   return "15 ટૂંકા પ્રશ્નોના જવાબ આપો જેથી અમે તમારા અભ્યાસ માટે યોગ્ય શરૂઆતનું સ્તર નક્કી કરી શકીએ. લગભગ 10 મિનિટ લાગે છે."
        case .chinese:    return "回答 15 个简短问题，帮助我们为你的练习设置合适的起始难度。大约需要 10 分钟。"
        case .farsi:      return "به ۱۵ سوال کوتاه پاسخ دهید تا سطح شروع مناسب تمرین شما را تعیین کنیم. حدود ۱۰ دقیقه طول می‌کشد."
        case .korean:     return "15개의 짧은 질문에 답하면 알맞은 시작 난이도를 설정해 드립니다. 약 10분 걸립니다."
        case .vietnamese: return "Trả lời 15 câu hỏi ngắn để chúng tôi đặt mức khởi đầu phù hợp cho việc luyện tập của bạn. Mất khoảng 10 phút."
        case .arabic:     return "أجب عن 15 سؤالًا قصيرًا لنحدد مستوى البداية المناسب لتدريبك. يستغرق حوالي 10 دقائق."
        case .portuguese: return "Responda 15 perguntas curtas para definirmos o nível inicial certo para a sua prática. Leva cerca de 10 minutos."
        case .tagalog:    return "Sagutin ang 15 maikling tanong para maitakda namin ang tamang panimulang antas ng iyong pagsasanay. Aabutin ng mga 10 minuto."
        case .punjabi:    return "15 ਛੋਟੇ ਸਵਾਲਾਂ ਦੇ ਜਵਾਬ ਦਿਓ ਤਾਂ ਜੋ ਅਸੀਂ ਤੁਹਾਡੇ ਅਭਿਆਸ ਲਈ ਸਹੀ ਸ਼ੁਰੂਆਤੀ ਪੱਧਰ ਤੈਅ ਕਰ ਸਕੀਏ। ਲਗਭਗ 10 ਮਿੰਟ ਲੱਗਦੇ ਹਨ।"
        case .armenian:   return "Պատասխանեք 15 կարճ հարցերի, որպեսզի սահմանենք ձեր մարզման ճիշտ սկզբնական մակարդակը: Տևում է մոտ 10 րոպե:"
        case .japanese:   return "Պատասխանեք 15 կարճ հարցերի, որպեսզի սահմանենք ձեր մարզման ճիշտ սկզբնական մակարդակը: Տևում է մոտ 10 րոպե:" // TODO: translate
        case .french:     return "Պատասխանեք 15 կարճ հարցերի, որպեսզի սահմանենք ձեր մարզման ճիշտ սկզբնական մակարդակը: Տևում է մոտ 10 րոպե:" // TODO: translate
        case .amharic:    return "Պատասխանեք 15 կարճ հարցերի, որպեսզի սահմանենք ձեր մարզման ճիշտ սկզբնական մակարդակը: Տևում է մոտ 10 րոպե:" // TODO: translate
        }
    }

    func baQuestionProgress(_ current: Int, _ total: Int) -> String {
        switch self {
        case .english:    return "Question \(current) of \(total)"
        case .spanish:    return "Pregunta \(current) de \(total)"
        case .hindi:      return "प्रश्न \(current) / \(total)"
        case .gujarati:   return "પ્રશ્ન \(current) / \(total)"
        case .chinese:    return "第 \(current) 题，共 \(total) 题"
        case .farsi:      return "سوال \(current) از \(total)"
        case .korean:     return "질문 \(current) / \(total)"
        case .vietnamese: return "Câu hỏi \(current) trên \(total)"
        case .arabic:     return "سؤال \(current) من \(total)"
        case .portuguese: return "Questão \(current) de \(total)"
        case .tagalog:    return "Tanong \(current) ng \(total)"
        case .punjabi:    return "ਸਵਾਲ \(current) / \(total)"
        case .armenian:   return "Հարց \(current) / \(total)"
        case .japanese:   return "Հարց \(current) / \(total)" // TODO: translate
        case .french:     return "Հարց \(current) / \(total)" // TODO: translate
        case .amharic:    return "Հարց \(current) / \(total)" // TODO: translate
        }
    }

    var baNext: String {
        switch self {
        case .english:    return "Next"
        case .spanish:    return "Siguiente"
        case .hindi:      return "आगे"
        case .gujarati:   return "આગળ"
        case .chinese:    return "下一题"
        case .farsi:      return "بعدی"
        case .korean:     return "다음"
        case .vietnamese: return "Tiếp"
        case .arabic:     return "التالي"
        case .portuguese: return "Próxima"
        case .tagalog:    return "Susunod"
        case .punjabi:    return "ਅੱਗੇ"
        case .armenian:   return "Հաջորդ"
        case .japanese:   return "Հաջորդ" // TODO: translate
        case .french:     return "Հաջորդ" // TODO: translate
        case .amharic:    return "Հաջորդ" // TODO: translate
        }
    }

    var baStart: String {
        switch self {
        case .english:    return "Start Assessment"
        case .spanish:    return "Comenzar Evaluación"
        case .hindi:      return "मूल्यांकन शुरू करें"
        case .gujarati:   return "મૂલ્યાંકન શરૂ કરો"
        case .chinese:    return "开始评估"
        case .farsi:      return "شروع ارزیابی"
        case .korean:     return "평가 시작"
        case .vietnamese: return "Bắt đầu đánh giá"
        case .arabic:     return "بدء التقييم"
        case .portuguese: return "Iniciar Avaliação"
        case .tagalog:    return "Simulan ang Assessment"
        case .punjabi:    return "ਮੁਲਾਂਕਣ ਸ਼ੁਰੂ ਕਰੋ"
        case .armenian:   return "Սկսել Գնահատումը"
        case .japanese:   return "Սկսել Գնահատումը" // TODO: translate
        case .french:     return "Սկսել Գնահատումը" // TODO: translate
        case .amharic:    return "Սկսել Գնահատումը" // TODO: translate
        }
    }

    var baSkip: String {
        switch self {
        case .english:    return "Skip for now"
        case .spanish:    return "Omitir por ahora"
        case .hindi:      return "अभी छोड़ें"
        case .gujarati:   return "હમણાં છોડો"
        case .chinese:    return "暂时跳过"
        case .farsi:      return "فعلاً رد شوید"
        case .korean:     return "지금은 건너뛰기"
        case .vietnamese: return "Bỏ qua bây giờ"
        case .arabic:     return "التخطي الآن"
        case .portuguese: return "Pular por enquanto"
        case .tagalog:    return "Laktawan muna"
        case .punjabi:    return "ਹਾਲੇ ਛੱਡੋ"
        case .armenian:   return "Բաց թողնել առայժմ"
        case .japanese:   return "Բաց թողնել առայժմ" // TODO: translate
        case .french:     return "Բաց թողնել առայժմ" // TODO: translate
        case .amharic:    return "Բաց թողնել առայժմ" // TODO: translate
        }
    }

    var baCompleteTitle: String {
        switch self {
        case .english:    return "Assessment complete."
        case .spanish:    return "Evaluación completada."
        case .hindi:      return "मूल्यांकन पूर्ण।"
        case .gujarati:   return "મૂલ્યાંકન પૂર્ણ."
        case .chinese:    return "评估完成。"
        case .farsi:      return "ارزیابی کامل شد."
        case .korean:     return "평가가 완료되었습니다."
        case .vietnamese: return "Đánh giá hoàn tất."
        case .arabic:     return "اكتمل التقييم."
        case .portuguese: return "Avaliação concluída."
        case .tagalog:    return "Tapos na ang assessment."
        case .punjabi:    return "ਮੁਲਾਂਕਣ ਪੂਰਾ ਹੋਇਆ।"
        case .armenian:   return "Գնահատումն ավարտված է:"
        case .japanese:   return "Գնահատումն ավարտված է:" // TODO: translate
        case .french:     return "Գնահատումն ավարտված է:" // TODO: translate
        case .amharic:    return "Գնահատումն ավարտված է:" // TODO: translate
        }
    }

    var baCompleteMessage: String {
        switch self {
        case .english:    return "We've set up your practice based on your responses."
        case .spanish:    return "Hemos configurado tu práctica según tus respuestas."
        case .hindi:      return "हमने आपके उत्तरों के आधार पर आपका अभ्यास सेट कर दिया है।"
        case .gujarati:   return "તમારા જવાબોના આધારે અમે તમારો અભ્યાસ સેટ કર્યો છે."
        case .chinese:    return "我们已根据你的回答设置好你的练习。"
        case .farsi:      return "تمرین شما را بر اساس پاسخ‌هایتان تنظیم کردیم."
        case .korean:     return "응답을 바탕으로 연습을 설정했습니다."
        case .vietnamese: return "Chúng tôi đã thiết lập việc luyện tập dựa trên câu trả lời của bạn."
        case .arabic:     return "قمنا بإعداد تدريبك بناءً على إجاباتك."
        case .portuguese: return "Configuramos sua prática com base nas suas respostas."
        case .tagalog:    return "Na-set up na namin ang iyong pagsasanay batay sa iyong mga sagot."
        case .punjabi:    return "ਅਸੀਂ ਤੁਹਾਡੇ ਜਵਾਬਾਂ ਦੇ ਅਧਾਰ 'ਤੇ ਤੁਹਾਡਾ ਅਭਿਆਸ ਸੈੱਟ ਕਰ ਦਿੱਤਾ ਹੈ।"
        case .armenian:   return "Ձեր պատասխանների հիման վրա կարգավորել ենք ձեր մարզումը:"
        case .japanese:   return "Ձեր պատասխանների հիման վրա կարգավորել ենք ձեր մարզումը:" // TODO: translate
        case .french:     return "Ձեր պատասխանների հիման վրա կարգավորել ենք ձեր մարզումը:" // TODO: translate
        case .amharic:    return "Ձեր պատասխանների հիման վրա կարգավորել ենք ձեր մարզումը:" // TODO: translate
        }
    }

    var baDone: String {
        switch self {
        case .english:    return "Done"
        case .spanish:    return "Listo"
        case .hindi:      return "हो गया"
        case .gujarati:   return "થઈ ગયું"
        case .chinese:    return "完成"
        case .farsi:      return "تمام"
        case .korean:     return "완료"
        case .vietnamese: return "Xong"
        case .arabic:     return "تم"
        case .portuguese: return "Concluído"
        case .tagalog:    return "Tapos"
        case .punjabi:    return "ਹੋ ਗਿਆ"
        case .armenian:   return "Պատրաստ է"
        case .japanese:   return "Պատրաստ է" // TODO: translate
        case .french:     return "Պատրաստ է" // TODO: translate
        case .amharic:    return "Պատրաստ է" // TODO: translate
        }
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
            case .japanese:   return "Լեզու" // TODO: translate
            case .french:     return "Լեզու" // TODO: translate
            case .amharic:    return "Լեզու" // TODO: translate
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
            case .japanese:   return "Ճանաչողություն" // TODO: translate
            case .french:     return "Ճանաչողություն" // TODO: translate
            case .amharic:    return "Ճանաչողություն" // TODO: translate
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
            case .japanese:   return "Գործնական Հմտություններ" // TODO: translate
            case .french:     return "Գործնական Հմտություններ" // TODO: translate
            case .amharic:    return "Գործնական Հմտություններ" // TODO: translate
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
        case .japanese:   return "Վերադարձ դեպի \(exerciseName)" // TODO: translate
        case .french:     return "Վերադարձ դեպի \(exerciseName)" // TODO: translate
        case .amharic:    return "Վերադարձ դեպի \(exerciseName)" // TODO: translate
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
        case .japanese:   return "Դուք \(days) օր չեք մարզվել" // TODO: translate
        case .french:     return "Դուք \(days) օր չեք մարզվել" // TODO: translate
        case .amharic:    return "Դուք \(days) օր չեք մարզվել" // TODO: translate
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
        case .japanese:   return "\(exerciseName)-ը ուշադրության կարիք ունի" // TODO: translate
        case .french:     return "\(exerciseName)-ը ուշադրության կարիք ունի" // TODO: translate
        case .amharic:    return "\(exerciseName)-ը ուշադրության կարիք ունի" // TODO: translate
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
        case .japanese:   return "Ճշգրտությունը վերջերս նվազել է" // TODO: translate
        case .french:     return "Ճշգրտությունը վերջերս նվազել է" // TODO: translate
        case .amharic:    return "Ճշգրտությունը վերջերս նվազել է" // TODO: translate
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
        case .japanese:   return "Փորձեք նոր բան" // TODO: translate
        case .french:     return "Փորձեք նոր բան" // TODO: translate
        case .amharic:    return "Փորձեք նոր բան" // TODO: translate
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
        case .japanese:   return "Այս շաբաթ դուք չեք զբաղվել \(sectionName)-ով" // TODO: translate
        case .french:     return "Այս շաբաթ դուք չեք զբաղվել \(sectionName)-ով" // TODO: translate
        case .amharic:    return "Այս շաբաթ դուք չեք զբաղվել \(sectionName)-ով" // TODO: translate
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
        case .japanese:   return "Պատրա՞ստ եք մարտահրավերի:" // TODO: translate
        case .french:     return "Պատրա՞ստ եք մարտահրավերի:" // TODO: translate
        case .amharic:    return "Պատրա՞ստ եք մարտահրավերի:" // TODO: translate
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
        case .japanese:   return "Դուք անընդհատ գերազանց եք \(exerciseName)-ում" // TODO: translate
        case .french:     return "Դուք անընդհատ գերազանց եք \(exerciseName)-ում" // TODO: translate
        case .amharic:    return "Դուք անընդհատ գերազանց եք \(exerciseName)-ում" // TODO: translate
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
        case .japanese:   return "Թերապիայի Կարգավորումներ" // TODO: translate
        case .french:     return "Թերապիայի Կարգավորումներ" // TODO: translate
        case .amharic:    return "Թերապիայի Կարգավորումներ" // TODO: translate
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
        case .japanese:   return "Ադապտիվ Դժվարություն" // TODO: translate
        case .french:     return "Ադապտիվ Դժվարություն" // TODO: translate
        case .amharic:    return "Ադապտիվ Դժվարություն" // TODO: translate
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
        case .japanese:   return "Ավտոմատ կերպով կարգավորում է հարցերի դժվարությունը՝ հիմնվելով կատարողականի վրա" // TODO: translate
        case .french:     return "Ավտոմատ կերպով կարգավորում է հարցերի դժվարությունը՝ հիմնվելով կատարողականի վրա" // TODO: translate
        case .amharic:    return "Ավտոմատ կերպով կարգավորում է հարցերի դժվարությունը՝ հիմնվելով կատարողականի վրա" // TODO: translate
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
        case .japanese:   return "Վերակայել Դժվարության Առաջընթացը" // TODO: translate
        case .french:     return "Վերակայել Դժվարության Առաջընթացը" // TODO: translate
        case .amharic:    return "Վերակայել Դժվարության Առաջընթացը" // TODO: translate
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
        case .japanese:   return "Վերադարձնում է բոլոր վարժությունները Հեշտ դժվարության և մաքրում կատարողականի պատմությունը" // TODO: translate
        case .french:     return "Վերադարձնում է բոլոր վարժությունները Հեշտ դժվարության և մաքրում կատարողականի պատմությունը" // TODO: translate
        case .amharic:    return "Վերադարձնում է բոլոր վարժությունները Հեշտ դժվարության և մաքրում կատարողականի պատմությունը" // TODO: translate
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
        case .japanese:   return "Վերակայե՞լ դժվարության առաջընթացը:" // TODO: translate
        case .french:     return "Վերակայե՞լ դժվարության առաջընթացը:" // TODO: translate
        case .amharic:    return "Վերակայե՞լ դժվարության առաջընթացը:" // TODO: translate
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
        case .japanese:   return "Սա կմաքրի ձեր ճշգրտության պատմությունը և կվերակայի բոլոր վարժությունները Ավտո/Հեշտ վիճակի: Սա հնարավոր չէ չեղարկել:" // TODO: translate
        case .french:     return "Սա կմաքրի ձեր ճշգրտության պատմությունը և կվերակայի բոլոր վարժությունները Ավտո/Հեշտ վիճակի: Սա հնարավոր չէ չեղարկել:" // TODO: translate
        case .amharic:    return "Սա կմաքրի ձեր ճշգրտության պատմությունը և կվերակայի բոլոր վարժությունները Ավտո/Հեշտ վիճակի: Սա հնարավոր չէ չեղարկել:" // TODO: translate
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
        case .japanese:   return "Ավտո" // TODO: translate
        case .french:     return "Ավտո" // TODO: translate
        case .amharic:    return "Ավտո" // TODO: translate
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
        case .japanese:   return "Հեշտ" // TODO: translate
        case .french:     return "Հեշտ" // TODO: translate
        case .amharic:    return "Հեշտ" // TODO: translate
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
        case .japanese:   return "Միջին" // TODO: translate
        case .french:     return "Միջին" // TODO: translate
        case .amharic:    return "Միջին" // TODO: translate
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
        case .japanese:   return "Դժվար" // TODO: translate
        case .french:     return "Դժվար" // TODO: translate
        case .amharic:    return "Դժվար" // TODO: translate
        }
    }
}

