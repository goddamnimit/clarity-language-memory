#if os(tvOS)
import SwiftUI
import AudioToolbox

// MARK: - TVHomeFocus

private enum TVHomeFocus: Hashable {
    case surpriseMe
    case twoPlayerMode
    case recommendation(String)
    case section(AppSection)
}

// MARK: - ExerciseDestination

private struct ExerciseDestination: Identifiable, Hashable {
    let id = UUID()
    let section: AppSection
    let targetExercise: Exercise?
}

// MARK: - TVHomeView

struct TVHomeView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: TVHomeFocus?
    @State private var destination: ExerciseDestination? = nil
    @State private var recommendations: [Recommendation] = []

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var personalizedGreeting: String {
        let name = UserProfileStore.shared.profile.name
        let hasName = !name.trimmingCharacters(in: .whitespaces).isEmpty
        let dayOfYear = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1

        switch currentLanguage {
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
                    "ਕਲੈਰਿਟੀ ਵਿੱਚ ਤੁਹਾਡา ਸੁਆਗਤ ਹੈ!",
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
            }
        case .french:
            if hasName {
                return "Bonjour, \(name)!"
            } else {
                return "Bonjour !"
            }
        case .amharic:
            if hasName {
                return "ሰላም፣ \(name)!"
            } else {
                return "ሰላም!"
            }
        }
    }

    private var surpriseMeText: String {
        switch currentLanguage {
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
        case .japanese:   return "ランダムスタート 🎲"
        case .french:     return "Surprenez-moi ! 🎲"
        case .amharic:    return "አስገረመኝ! 🎲"
        }
    }

    private var twoPlayerModeText: String {
        switch currentLanguage {
        case .english:    return "Two Player Mode 👥"
        case .spanish:    return "Modo 2 Jugadores 👥"
        case .hindi:      return "दो खिलाड़ी मोड 👥"
        case .gujarati:   return "બે ખેલાડી સ્થિતિ 👥"
        case .chinese:    return "双人模式 👥"
        case .farsi:      return "حالت دو نفره 👥"
        case .korean:     return "2인용 모드 👥"
        case .vietnamese: return "Chế độ 2 người 👥"
        case .arabic:     return "وضع لاعبين 👥"
        case .portuguese: return "Modo 2 Jogadores 👥"
        case .tagalog:    return "Two Player Mode 👥"
        case .punjabi:    return "ਦੋ ਖਿਡਾਰੀ ਮੋਡ 👥"
        case .armenian:   return "Երկու Խաղացող 👥"
        case .japanese:   return "2人プレイ 👥"
        case .french:     return "Mode 2 joueurs 👥"
        case .amharic:    return "ባለ ሁለት ተጫዋች 👥"
        }
    }

    private var recommendedTitle: String {
        switch currentLanguage {
        case .english:    return "Recommended for You"
        case .spanish:    return "Recomendado para ti"
        case .hindi:      return "आपके लिए अनुशंसित"
        case .gujarati:   return "તમારા માટે ભલામણ કરેલ"
        case .chinese:    return "为你推荐"
        case .farsi:      return "توصیه شده برای شما"
        case .korean:     return "회원님을 위한 추천"
        case .vietnamese: return "Được đề xuất cho bạn"
        case .arabic:     return "موصى به لك"
        case .portuguese: return "Recomendado para você"
        case .tagalog:    return "Inirerekomenda para sa Iyo"
        case .punjabi:    return "ਤੁਹਾਡੇ ਲਈ ਸਿਫਾਰਸ਼ ਕੀਤੀ ਗਈ"
        case .armenian:   return "Առաջարկվում է ձեզ"
        case .japanese:   return "おすすめ"
        case .french:     return "Recommandé pour vous"
        case .amharic:    return "ለእርስዎ የሚመከር"
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "16213E").ignoresSafeArea()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 50) {
                        // Greeting Header
                        VStack(spacing: 12) {
                            Text(personalizedGreeting)
                                .font(.system(size: 60, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 40)
                            
                            Text("Clarity — Language & Memory")
                                .font(.system(size: 30, weight: .light))
                                .foregroundColor(Color.white.opacity(0.55))
                        }
                        .padding(.top, 40)

                        // Main Actions: Surprise Me + Two Player Mode
                        HStack(spacing: 40) {
                            Button {
                                launchSurpriseMe()
                            } label: {
                                Text(surpriseMeText)
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 60)
                                    .padding(.vertical, 28)
                                    .background(
                                        RoundedRectangle(cornerRadius: 24)
                                            .fill(focus == .surpriseMe ? Color(hex: "FF9500") : Color.white.opacity(0.1))
                                    )
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 24)
                                            .stroke(focus == .surpriseMe ? Color.white : Color.clear, lineWidth: 3)
                                            .shadow(color: focus == .surpriseMe ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
                                    )
                            }
                            .buttonStyle(.plain)
                            .focused($focus, equals: .surpriseMe)

                            NavigationLink(destination: TVTwoPlayerSetupView()) {
                                Text(twoPlayerModeText)
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 60)
                                    .padding(.vertical, 28)
                                    .background(
                                        RoundedRectangle(cornerRadius: 24)
                                            .fill(focus == .twoPlayerMode ? Color(hex: "6C63FF") : Color.white.opacity(0.1))
                                    )
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 24)
                                            .stroke(focus == .twoPlayerMode ? Color.white : Color.clear, lineWidth: 3)
                                            .shadow(color: focus == .twoPlayerMode ? Color(hex: "6C63FF").opacity(0.6) : .clear, radius: 10)
                                    )
                            }
                            .buttonStyle(.plain)
                            .focused($focus, equals: .twoPlayerMode)
                        }

                        // Recommendations Row (entirely hidden if empty)
                        if !recommendations.isEmpty {
                            VStack(alignment: .leading, spacing: 20) {
                                Text(recommendedTitle)
                                    .font(.system(size: 36, weight: .semibold, design: .rounded))
                                    .foregroundColor(.white.opacity(0.85))
                                    .padding(.horizontal, 80)

                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 32) {
                                        ForEach(recommendations) { rec in
                                            Button {
                                                launchRecommendation(rec)
                                            } label: {
                                                recommendationCardView(rec)
                                            }
                                            .buttonStyle(.plain)
                                            .focused($focus, equals: .recommendation(rec.id))
                                        }
                                    }
                                    .padding(.horizontal, 80)
                                    .padding(.vertical, 10)
                                }
                            }
                        }

                        // AppSection Cards
                        VStack(alignment: .leading, spacing: 20) {
                            Text(currentLanguage.activitiesTabTitle)
                                .font(.system(size: 36, weight: .semibold, design: .rounded))
                                .foregroundColor(.white.opacity(0.85))
                                .padding(.horizontal, 80)

                            HStack(spacing: 32) {
                                ForEach(AppSection.allCases, id: \.self) { section in
                                    Button {
                                        launchRandomInSection(section)
                                    } label: {
                                        sectionCardView(section)
                                    }
                                    .buttonStyle(.plain)
                                    .focused($focus, equals: .section(section))
                                }
                            }
                            .padding(.horizontal, 80)
                        }

                        Spacer(minLength: 40)
                    }
                }
            }
            .navigationDestination(item: $destination) { dest in
                TVExerciseContainerView(
                    section: dest.section,
                    language: currentLanguage,
                    targetExercise: dest.targetExercise
                )
            }
            .onAppear {
                refreshRecommendations()
            }
        }
    }

    // MARK: - Recommendation Card Render

    @ViewBuilder
    private func recommendationCardView(_ rec: Recommendation) -> some View {
        let isFocused = focus == .recommendation(rec.id)
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: rec.sfSymbolName)
                .font(.system(size: 40))
                .foregroundColor(isFocused ? .white : Color(hex: "FF9500"))

            Text(rec.headline)
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .lineLimit(1)

            Text(rec.explanation)
                .font(.system(size: 20, weight: .light))
                .foregroundColor(Color.white.opacity(0.7))
                .lineLimit(2)
                .multilineTextAlignment(.leading)
        }
        .padding(24)
        .frame(width: 420, height: 220)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
                .shadow(color: isFocused ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
        )
        .scaleEffect(isFocused ? 1.04 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    // MARK: - Section Card Render

    @ViewBuilder
    private func sectionCardView(_ section: AppSection) -> some View {
        let isFocused = focus == .section(section)
        let name = currentLanguage.recSectionName(section)
        let (icon, color) = sectionMeta(section)

        VStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 50))
                .foregroundColor(.white)

            Text(name)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(1)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 180)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(isFocused ? color : color.opacity(0.6))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
                .shadow(color: isFocused ? color.opacity(0.6) : .clear, radius: 10)
        )
        .scaleEffect(isFocused ? 1.04 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    private func sectionMeta(_ section: AppSection) -> (String, Color) {
        switch section {
        case .language:
            return ("text.bubble.fill", Color(hex: "6C63FF"))
        case .cognition:
            return ("brain.head.profile.fill", Color(hex: "43B89C"))
        case .functionalSkills:
            return ("heart.text.square.fill", Color(hex: "FF9500"))
        }
    }

    // MARK: - Recommendations & Launch Logic

    private func refreshRecommendations() {
        let allExercises = languageManager.exercisesForSection(.language) +
                           languageManager.exercisesForSection(.cognition) +
                           languageManager.exercisesForSection(.functionalSkills)
        recommendations = RecommendationEngine.generateRecommendations(language: currentLanguage, exercises: allExercises)
    }

    private func launchSurpriseMe() {
        if let randomSection = AppSection.allCases.randomElement() {
            destination = ExerciseDestination(section: randomSection, targetExercise: nil)
        }
    }

    private func launchRecommendation(_ rec: Recommendation) {
        let allExercises = languageManager.exercisesForSection(.language) +
                           languageManager.exercisesForSection(.cognition) +
                           languageManager.exercisesForSection(.functionalSkills)
        
        if let title = rec.targetExerciseTitle,
           let exercise = allExercises.first(where: { $0.title == title }) {
            destination = ExerciseDestination(section: exercise.section, targetExercise: exercise)
        } else if let section = rec.targetSection {
            destination = ExerciseDestination(section: section, targetExercise: nil)
        }
    }

    private func launchRandomInSection(_ section: AppSection) {
        destination = ExerciseDestination(section: section, targetExercise: nil)
    }
}

// MARK: - TVSound & TVSoundManager (Preserved from original TVHomeView.swift)

enum TVSound {
    case correct, wrong, complete, select
}

struct TVSoundManager {
    static func play(_ sound: TVSound) {
        let isEnabled = UserDefaults.standard.object(forKey: "tvSoundEnabled") as? Bool ?? true
        guard isEnabled else { return }
        switch sound {
        case .correct:  AudioServicesPlaySystemSound(1057)
        case .wrong:    AudioServicesPlaySystemSound(1053)
        case .complete: AudioServicesPlaySystemSound(1025)
        case .select:   AudioServicesPlaySystemSound(1104)
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
