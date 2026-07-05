#if os(tvOS)
import SwiftUI

private enum TVOnboardingFocus: Hashable {
    case getStarted
    case next
    case language(AppLanguage)
    case startPracticing
}

struct TVOnboardingView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: TVOnboardingFocus?
    @State private var currentPage = 0
    @Binding var isPresented: Bool

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            Group {
                if currentPage == 0 {
                    welcomeScreen
                } else if currentPage == 1 {
                    howItWorksScreen
                } else {
                    languageSelectScreen
                }
            }
            .transition(.asymmetric(
                insertion: .move(edge: isRTL ? .leading : .trailing),
                removal: .move(edge: isRTL ? .trailing : .leading)
            ))
        }
        .onAppear {
            focus = .getStarted
        }
    }

    // MARK: - Screen 1: Welcome
    private var welcomeScreen: some View {
        VStack(spacing: 40) {
            Spacer()

            VStack(spacing: 24) {
                ZStack {
                    Circle()
                        .fill(Color(hex: "FF9500").opacity(0.15))
                        .frame(width: 180, height: 180)
                    Image(systemName: "brain.head.profile.fill")
                        .font(.system(size: 90))
                        .foregroundColor(Color(hex: "FF9500"))
                }

                Text(currentLanguage.onboardingWelcomeHeadline)
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .foregroundColor(.white)

                Text(currentLanguage.onboardingWelcomeSubtext)
                    .font(.system(size: 32, weight: .light))
                    .foregroundColor(Color.white.opacity(0.75))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 80)
            }

            Spacer()

            Button {
                withAnimation(.easeInOut(duration: 0.4)) {
                    currentPage = 1
                    focus = .next
                }
            } label: {
                Text(currentLanguage.onboardingGetStarted)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(focus == .getStarted ? Color(hex: "FF9500") : Color.white.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(focus == .getStarted ? Color.white : Color.clear, lineWidth: 3)
                            .shadow(color: focus == .getStarted ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
                    )
            }
            .buttonStyle(.plain)
            .focused($focus, equals: .getStarted)
            .padding(.bottom, 80)
        }
    }

    // MARK: - Screen 2: How It Works
    private var howItWorksScreen: some View {
        VStack(spacing: 40) {
            Spacer()

            Text(currentLanguage.onboardingHowItWorksHeadline)
                .font(.system(size: 60, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            VStack(alignment: .leading, spacing: 30) {
                bulletRow(icon: "play.circle.fill", color: Color(hex: "6C63FF"), text: currentLanguage.onboardingBullet1)
                bulletRow(icon: "questionmark.circle.fill", color: Color(hex: "43B89C"), text: currentLanguage.onboardingBullet2)
                bulletRow(icon: "chart.bar.fill", color: Color(hex: "FF9500"), text: currentLanguage.onboardingBullet3)
            }
            .frame(width: 800)

            Spacer()

            Button {
                withAnimation(.easeInOut(duration: 0.4)) {
                    currentPage = 2
                    focus = .language(currentLanguage)
                }
            } label: {
                Text(currentLanguage.onboardingNext)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(focus == .next ? Color(hex: "6C63FF") : Color.white.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(focus == .next ? Color.white : Color.clear, lineWidth: 3)
                            .shadow(color: focus == .next ? Color(hex: "6C63FF").opacity(0.6) : .clear, radius: 10)
                    )
            }
            .buttonStyle(.plain)
            .focused($focus, equals: .next)
            .padding(.bottom, 80)
        }
    }

    @ViewBuilder
    private func bulletRow(icon: String, color: Color, text: String) -> some View {
        HStack(spacing: 24) {
            Image(systemName: icon)
                .font(.system(size: 44))
                .foregroundColor(color)
                .frame(width: 60)

            Text(text)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(24)
        .background(Color.white.opacity(0.05))
        .cornerRadius(16)
    }

    // MARK: - Screen 3: Language Select
    private var languageSelectScreen: some View {
        VStack(spacing: 30) {
            Text(currentLanguage.onboardingChooseLanguage)
                .font(.system(size: 56, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .padding(.top, 40)

            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(
                    columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ],
                    spacing: 20
                ) {
                    ForEach(AppLanguage.allCases) { language in
                        Button {
                            languageManager.currentLanguage = language
                        } label: {
                            languageTile(language, isSelected: currentLanguage == language)
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .language(language))
                    }
                }
                .padding(.horizontal, 80)
                .padding(.vertical, 10)
            }
            .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)

            Button {
                UserDefaults.standard.set(true, forKey: "clarity_tv_onboarding_complete")
                isPresented = false
            } label: {
                Text(currentLanguage.onboardingStartPracticing)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(focus == .startPracticing ? Color(hex: "2ECC71") : Color.white.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(focus == .startPracticing ? Color.white : Color.clear, lineWidth: 3)
                            .shadow(color: focus == .startPracticing ? Color(hex: "2ECC71").opacity(0.6) : .clear, radius: 10)
                    )
            }
            .buttonStyle(.plain)
            .focused($focus, equals: .startPracticing)
            .padding(.bottom, 60)
        }
    }

    @ViewBuilder
    private func languageTile(_ language: AppLanguage, isSelected: Bool) -> some View {
        let isTileFocused = focus == .language(language)
        HStack(spacing: 16) {
            Text(language.flagEmoji)
                .font(.system(size: 36))
            
            Text(language.displayName)
                .font(.system(size: 26, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            Spacer()

            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 28))
                    .foregroundColor(Color(hex: "2ECC71"))
            }
        }
        .padding(.horizontal, 24)
        .frame(height: 90)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(isTileFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(isTileFocused ? Color.white : (isSelected ? Color(hex: "FF9500") : Color.clear), lineWidth: 3)
        )
        .scaleEffect(isTileFocused ? 1.04 : 1.0)
    }
}

// MARK: - AppLanguage Onboarding Localization Extensions
extension AppLanguage {
    var onboardingWelcomeHeadline: String {
        switch self {
        case .english:    return "Welcome to Clarity"
        case .spanish:    return "Bienvenido a Clarity"
        case .hindi:      return "Clarity में आपका स्वागत है"
        case .gujarati:   return "Clarity માં આપનું સ્વાગત છે"
        case .chinese:    return "欢迎使用 Clarity"
        case .farsi:      return "به Clarity خوش آمدید"
        case .korean:     return "Clarity에 오신 걸 환영합니다"
        case .vietnamese: return "Chào mừng đến với Clarity"
        case .arabic:     return "مرحباً بك في Clarity"
        case .portuguese: return "Bem-vindo ao Clarity"
        case .tagalog:    return "Maligayang pagdating sa Clarity"
        case .punjabi:    return "ਕਲੈਰਿਟੀ ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ"
        case .armenian:   return "Բարի գալուստ Clarity"
        case .japanese:   return "Clarityへようこそ"
        case .french:     return "Bienvenue sur Clarity"
        case .amharic:    return "ወደ Clarity እንኳን በደህና መጡ"
        }
    }
    
    var onboardingWelcomeSubtext: String {
        switch self {
        case .english:    return "Practice language and memory exercises at home."
        case .spanish:    return "Practica ejercicios de lenguaje y memoria en casa."
        case .hindi:      return "घर पर भाषा और स्मृति अभ्यास करें।"
        case .gujarati:   return "ઘરે ભાષા અને યાદશક્તિની કસરતોનો અભ્યાસ કરો."
        case .chinese:    return "在家进行语言和记忆练习。"
        case .farsi:      return "تمرین‌های زبان و حافظه را در خانه انجام دهید."
        case .korean:     return "집에서 언어 및 기억력 연습을 해보세요."
        case .vietnamese: return "Luyện tập các bài tập ngôn ngữ và trí nhớ tại nhà."
        case .arabic:     return "تدرب على تمارين اللغة والذاكرة في المنزل."
        case .portuguese: return "Pratique exercícios de linguagem e memória em casa."
        case .tagalog:    return "Magsanay ng mga ehersisyo sa wika at memorya sa bahay."
        case .punjabi:    return "ਘਰ ਵਿੱਚ ਭਾਸ਼ਾ ਅਤੇ ਯਾਦਦਾਸ਼ਤ ਦੇ ਅਭਿਆਸ ਕਰੋ।"
        case .armenian:   return "Մարզեք ձեր լեզվական հմտություններն ու հիշողությունը տանը:"
        case .japanese:   return "ご自宅で言語と記憶のトレーニングができます。"
        case .french:     return "Pratiquez des exercices de langue et de mémoire à la maison."
        case .amharic:    return "የቋንቋ እና የማስታወስ ልምምዶችን በቤት ውስጥ ያድርጉ።"
        }
    }
    
    var onboardingGetStarted: String {
        switch self {
        case .english:    return "Get Started"
        case .spanish:    return "Comenzar"
        case .hindi:      return "शुरू करें"
        case .gujarati:   return "શરૂ કરો"
        case .chinese:    return "开始体验"
        case .farsi:      return "شروع کنید"
        case .korean:     return "시작하기"
        case .vietnamese: return "Bắt đầu"
        case .arabic:     return "ابدأ الآن"
        case .portuguese: return "Começar"
        case .tagalog:    return "Magsimula"
        case .punjabi:    return "ਸ਼ੁਰੂ ਕਰੋ"
        case .armenian:   return "Սկսել"
        case .japanese:   return "始める"
        case .french:     return "Commencer"
        case .amharic:    return "ይጀምሩ"
        }
    }
    
    var onboardingHowItWorksHeadline: String {
        switch self {
        case .english:    return "How It Works"
        case .spanish:    return "Cómo Funciona"
        case .hindi:      return "यह कैसे काम करता है"
        case .gujarati:   return "તે કેવી રીતે કામ કરે છે"
        case .chinese:    return "使用说明"
        case .farsi:      return "طرز کار"
        case .korean:     return "사용 방법"
        case .vietnamese: return "Cách hoạt động"
        case .arabic:     return "كيف يعمل"
        case .portuguese: return "Como Funciona"
        case .tagalog:    return "Paano Ito Gumagana"
        case .punjabi:    return "ਇਹ ਕਿਵੇਂ ਕੰਮ ਕਰਦਾ ਹੈ"
        case .armenian:   return "Ինչպես է այն աշխատում"
        case .japanese:   return "使い方"
        case .french:     return "Comment ça marche"
        case .amharic:    return "እንዴት እንደሚሰራ"
        }
    }
    
    var onboardingBullet1: String {
        switch self {
        case .english:    return "Choose an exercise from the Activities tab"
        case .spanish:    return "Elige un ejercicio de la pestaña Actividades"
        case .hindi:      return "गतिविधियाँ टैब से एक अभ्यास चुनें"
        case .gujarati:   return "પ્રવૃત્તિઓ ટેબમાંથી એક કસરત પસંદ કરો"
        case .chinese:    return "从“活动”标签中选择一项练习"
        case .farsi:      return "یک تمرین را از برگه فعالیت‌ها انتخاب کنید"
        case .korean:     return "활동 탭에서 연습을 선택하세요"
        case .vietnamese: return "Chọn một bài tập từ tab Hoạt động"
        case .arabic:     return "اختر تمريناً من تبويب الأنشطة"
        case .portuguese: return "Escolha um exercício na guia Atividades"
        case .tagalog:    return "Pumili ng ehersisyo mula sa tab na Mga Aktibidad"
        case .punjabi:    return "ਗਤੀਵਿਧੀਆਂ ਟੈਬ ਤੋਂ ਇੱਕ ਅਭਿਆਸ ਚੁਣੋ"
        case .armenian:   return "Ընտրեք վարժություն «Վարժություններ» բաժնից"
        case .japanese:   return "アクティビティタブから演習を選択します"
        case .french:     return "Choisissez un exercice dans l'onglet Activités"
        case .amharic:    return "ከቫርዥነቶች ትር ውስጥ አንድ ልምምድ ይምረጡ"
        }
    }
    
    var onboardingBullet2: String {
        switch self {
        case .english:    return "Answer 5 questions per session"
        case .spanish:    return "Responde 5 preguntas por sesión"
        case .hindi:      return "प्रति सत्र 5 प्रश्नों के उत्तर दें"
        case .gujarati:   return "સત્ર દીઠ 5 પ્રશ્નોના ઉત્તર આપો"
        case .chinese:    return "每组练习回答 5 个问题"
        case .farsi:      return "در هر جلسه به ۵ سوال پاسخ دهید"
        case .korean:     return "세션당 5개의 질문에 답하세요"
        case .vietnamese: return "Trả lời 5 câu hỏi mỗi phiên"
        case .arabic:     return "أجب عن 5 أسئلة في كل جلسة"
        case .portuguese: return "Responda a 5 perguntas por sessão"
        case .tagalog:    return "Sagutin ang 5 tanong bawat session"
        case .punjabi:    return "ਪ੍ਰਤੀ ਸੈਸ਼ਨ 5 ਸਵਾਲਾਂ ਦੇ ਜਵਾਬ ਦਿਓ"
        case .armenian:   return "Պատասխանեք 5 հարցի յուրաքանչյուր փուլում"
        case .japanese:   return "セッションごとに5つの質問に答えます"
        case .french:     return "Répondez à 5 questions par session"
        case .amharic:    return "በእያንዳንዱ ክፍለ ጊዜ 5 ጥያቄዎችን ይመልሱ"
        }
    }
    
    var onboardingBullet3: String {
        switch self {
        case .english:    return "Track your progress over time"
        case .spanish:    return "Sigue tu progreso a lo largo del tiempo"
        case .hindi:      return "समय के साथ अपनी प्रगति को ट्रैक करें"
        case .gujarati:   return "સમય સાથે તમારી પ્રગતિને ટ્રૅક કરો"
        case .chinese:    return "随着时间的推移跟踪您的进度"
        case .farsi:      return "پیشرفت خود را در طول زمان دنبال کنید"
        case .korean:     return "시간에 따른 진행 상황을 추적하세요"
        case .vietnamese: return "Theo dõi tiến trình của bạn theo thời gian"
        case .arabic:     return "تابع تقدمك بمرور الوقت"
        case .portuguese: return "Acompanhe seu progresso ao longo do tempo"
        case .tagalog:    return "Subaybayan ang iyong progreso sa paglipas ng panahon"
        case .punjabi:    return "ਸਮੇਂ ਦੇ ਨਾਲ ਆਪਣੀ ਪ੍ਰਗਤੀ ਨੂੰ ਟਰੈਕ ਕਰੋ"
        case .armenian:   return "Հետևեք ձեր առաջընթացին ժամանակի ընթացքում"
        case .japanese:   return "日々の進捗状況を記録できます"
        case .french:     return "Suivez vos progrès au fil du temps"
        case .amharic:    return "በጊዜ ሂደት የእርስዎን እድገት ይከታተሉ"
        }
    }
    
    var onboardingNext: String {
        switch self {
        case .english:    return "Next"
        case .spanish:    return "Siguiente"
        case .hindi:      return "आगे"
        case .gujarati:   return "આગળ"
        case .chinese:    return "下一步"
        case .farsi:      return "بعدی"
        case .korean:     return "다음"
        case .vietnamese: return "Tiếp theo"
        case .arabic:     return "التالي"
        case .portuguese: return "Avançar"
        case .tagalog:    return "Susunod"
        case .punjabi:    return "ਅਗਲਾ"
        case .armenian:   return "Հաջորդը"
        case .japanese:   return "次へ"
        case .french:     return "Suivant"
        case .amharic:    return "ቀጣይ"
        }
    }
    
    var onboardingChooseLanguage: String {
        switch self {
        case .english:    return "Choose your language"
        case .spanish:    return "Elige tu idioma"
        case .hindi:      return "अपनी भाषा चुनें"
        case .gujarati:   return "તમારી ભાષા પસંદ કરો"
        case .chinese:    return "选择您的语言"
        case .farsi:      return "زبان خود را انتخاب کنید"
        case .korean:     return "언어를 선택하세요"
        case .vietnamese: return "Chọn ngôn ngữ của bạn"
        case .arabic:     return "اختر لغتك"
        case .portuguese: return "Escolha o seu idioma"
        case .tagalog:    return "Piliin ang iyong wika"
        case .punjabi:    return "ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ"
        case .armenian:   return "Ընտրեք ձեր լեզուն"
        case .japanese:   return "言語を選択してください"
        case .french:     return "Choisissez votre langue"
        case .amharic:    return "ቋንቋዎን ይምረጡ"
        }
    }
    
    var onboardingStartPracticing: String {
        switch self {
        case .english:    return "Start Practicing"
        case .spanish:    return "Empezar a Practicar"
        case .hindi:      return "अभ्यास शुरू करें"
        case .gujarati:   return "અભ્યાસ શરૂ કરો"
        case .chinese:    return "开始练习"
        case .farsi:      return "شروع تمرین"
        case .korean:     return "연습 시작하기"
        case .vietnamese: return "Bắt đầu luyện tập"
        case .arabic:     return "ابدأ الممارسة"
        case .portuguese: return "Começar a Praticar"
        case .tagalog:    return "Magsimulang Magsanay"
        case .punjabi:    return "ਅਭਿਆਸ ਸ਼ੁਰੂ ਕਰੋ"
        case .armenian:   return "Սկսել մարզվելը"
        case .japanese:   return "練習を始める"
        case .french:     return "Commencer à pratiquer"
        case .amharic:    return "ልምምድ ይጀምሩ"
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
