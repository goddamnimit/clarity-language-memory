#if os(tvOS)
import SwiftUI

private enum TVResultsFocus: Hashable {
    case playAgain
    case backHome
}

struct TVTwoPlayerResultsView: View {
    let player1Name: String
    let player2Name: String
    let p1Correct: Int
    let p1Total: Int
    let p2Correct: Int
    let p2Total: Int
    
    let onPlayAgain: () -> Void
    let onBackHome: () -> Void

    @FocusState private var focusedButton: TVResultsFocus?
    @ObservedObject private var languageManager = LanguageManager.shared

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var hasPerfectScore: Bool {
        (p1Correct == p1Total && p1Total > 0) || (p2Correct == p2Total && p2Total > 0)
    }

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            if hasPerfectScore {
                TVConfettiView()
            }

            VStack(spacing: 40) {
                Spacer()

                // Header / Congratulatory Phrase
                VStack(spacing: 12) {
                    Text("🌟")
                        .font(.system(size: 80))

                    Text(resultsHeadline)
                        .font(.system(size: 64, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 80)

                    Text(resultsSub)
                        .font(.system(size: 32, weight: .light))
                        .foregroundColor(Color.white.opacity(0.6))
                        .multilineTextAlignment(.center)
                }

                // Scores Side-by-Side Cards
                HStack(spacing: 80) {
                    playerScoreCard(name: player1Name, correct: p1Correct, total: p1Total, themeColor: Color(hex: "6C63FF"))
                    playerScoreCard(name: player2Name, correct: p2Correct, total: p2Total, themeColor: Color(hex: "FF9500"))
                }
                .padding(.vertical, 20)

                Spacer()

                // Focusable controls
                VStack(spacing: 24) {
                    Button(action: onPlayAgain) {
                        Text(playAgainTitle)
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 500, height: 80)
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .fill(focusedButton == .playAgain ? Color(hex: "FF9500") : Color.white.opacity(0.1))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(focusedButton == .playAgain ? Color.white : Color.clear, lineWidth: 3)
                            )
                    }
                    .buttonStyle(.plain)
                    .focused($focusedButton, equals: .playAgain)

                    Button(action: onBackHome) {
                        Text(backHomeTitle)
                            .font(.system(size: 34, weight: .semibold, design: .rounded))
                            .foregroundColor(Color.white.opacity(0.7))
                            .frame(width: 500, height: 80)
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .fill(focusedButton == .backHome ? Color.white.opacity(0.2) : Color.white.opacity(0.05))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(focusedButton == .backHome ? Color.white : Color.clear, lineWidth: 1.5)
                            )
                    }
                    .buttonStyle(.plain)
                    .focused($focusedButton, equals: .backHome)
                }
                .padding(.bottom, 80)
            }
        }
        .onAppear {
            focusedButton = .playAgain
            if hasPerfectScore {
                TVSoundManager.play(.complete)
            }
        }
    }

    @ViewBuilder
    private func playerScoreCard(name: String, correct: Int, total: Int, themeColor: Color) -> some View {
        let isPerfect = correct == total && total > 0
        VStack(spacing: 16) {
            Text(name)
                .font(.system(size: 36, weight: .semibold, design: .rounded))
                .foregroundColor(Color.white.opacity(0.7))

            Text("\(correct) / \(total)")
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .monospacedDigit()

            if isPerfect {
                Text("🌟 Perfect Score! 🌟")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color(hex: "FF9500"))
            } else {
                Text("Great Effort!")
                    .font(.system(size: 22))
                    .foregroundColor(.white.opacity(0.4))
            }
        }
        .frame(width: 420, height: 240)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color(hex: "2D2D44").opacity(0.5))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isPerfect ? Color(hex: "FF9500") : themeColor.opacity(0.4), lineWidth: 3)
        )
    }

    // MARK: - Localized Copy

    private var resultsHeadline: String {
        switch currentLanguage {
        case .english:    return "Great Practice, Both of You!"
        case .spanish:    return "¡Excelente Práctica para Ambos!"
        case .hindi:      return "शानदार अभ्यास, आप दोनों का!"
        case .gujarati:   return "સરસ અભ્યાસ, બંનેનો!"
        case .chinese:    return "很棒的练习，你们俩都太棒了！"
        case .farsi:      return "تمرین عالی بود، هر دو نفر شما!"
        case .korean:     return "두 분 모두 훌륭한 연습이었습니다!"
        case .vietnamese: return "Luyện tập rất tốt, cả hai bạn!"
        case .arabic:     return "تدريب رائع لكلاكما!"
        case .portuguese: return "Ótima Prática para Ambos!"
        case .tagalog:    return "Magandang Pag-eensayo sa Inyong Dalawa!"
        case .punjabi:    return "ਵਧੀਆ ਅਭਿਆਸ, ਦੋਵਾਂ ਦਾ!"
        case .armenian:   return "Հրաշալի Մարզում, Երկուսիդ էլ:"
        case .japanese:   return "素晴らしい練習でした、お二人とも！"
        case .french:     return "Excellent entraînement pour vous deux !"
        case .amharic:    return "ጥሩ ልምምድ፣ ለሁለታችሁም!"
        }
    }

    private var resultsSub: String {
        switch currentLanguage {
        case .english:    return "Keep exercising your memory and language skills together."
        case .spanish:    return "Sigan ejercitando la memoria y el lenguaje juntos."
        case .hindi:      return "अपनी स्मृति और भाषा कौशल का एक साथ अभ्यास करते रहें।"
        case .gujarati:   return "તમારી સ્મૃતિ અને ભાષા કૌશલ્યનો સાથે અભ્યાસ કરતા રહો."
        case .chinese:    return "继续一起锻炼你们的记忆力和语言技能吧。"
        case .farsi:      return "به تقویت حافظه و مهارت‌های زبانی خود با هم ادامه دهید."
        case .korean:     return "앞으로도 기억력과 언어 기술을 함께 연습해 보세요."
        case .vietnamese: return "Hãy tiếp tục cùng nhau rèn luyện trí nhớ và kỹ năng ngôn ngữ."
        case .arabic:     return "استمروا في تدريب الذاكرة والمهارات اللغوية معاً."
        case .portuguese: return "Continuem exercitando a memória e a linguagem juntos."
        case .tagalog:    return "Ipagpatuloy ang pag-eensayo ng memorya at wika nang magkasama."
        case .punjabi:    return "ਆਪਣੀ ਯਾਦਦਾਸ਼ਤ ਅਤੇ ਭਾਸ਼ਾ ਦੇ ਹੁਨਰ ਦਾ ਅਭਿਆਸ ਕਰਦੇ ਰਹੋ।"
        case .armenian:   return "Շարունակեք միասին մարզել ձեր հիշողությունը և լեզվական հմտությունները:"
        case .japanese:   return "これからも一緒に記憶力と言語能力を鍛えましょう。"
        case .french:     return "Continuez à entraîner votre mémoire et vos compétences linguistiques ensemble."
        case .amharic:    return "አብረው የማስታወስ እና የቋንቋ ችሎታዎን ማሰልጠንዎን ይቀጥሉ።"
        }
    }

    private var playAgainTitle: String {
        switch currentLanguage {
        case .english:    return "Play Again 🔄"
        case .spanish:    return "Jugar de Nuevo 🔄"
        case .hindi:      return "फिर से खेलें 🔄"
        case .gujarati:   return "ફરીથી રમો 🔄"
        case .chinese:    return "再玩一次 🔄"
        case .farsi:      return "دوباره بازی کنید 🔄"
        case .korean:     return "다시 플레이 🔄"
        case .vietnamese: return "Chơi lại 🔄"
        case .arabic:     return "اللعب مجدداً 🔄"
        case .portuguese: return "Jogar Novamente 🔄"
        case .tagalog:    return "Maglaro Muli 🔄"
        case .punjabi:    return "ਦੁਬਾਰਾ ਖੇਡੋ 🔄"
        case .armenian:   return "Խաղալ նորից 🔄"
        case .japanese:   return "もう一度プレイ 🔄"
        case .french:     return "Rejouer 🔄"
        case .amharic:    return "እንደገና ይጫወቱ 🔄"
        }
    }

    private var backHomeTitle: String {
        switch currentLanguage {
        case .english:    return "Back to Home"
        case .spanish:    return "Volver al Inicio"
        case .hindi:      return "होम पर वापस"
        case .gujarati:   return "ઘર પર પાછા ફરો"
        case .chinese:    return "返回主页"
        case .farsi:      return "بازگشت به خانه"
        case .korean:     return "홈으로 돌아가기"
        case .vietnamese: return "Quay lại trang chủ"
        case .arabic:     return "العودة إلى الرئيسية"
        case .portuguese: return "Voltar ao Início"
        case .tagalog:    return "Balik sa Home"
        case .punjabi:    return "ਹੋਮ ਪੇਜ 'ਤੇ ਜਾਓ"
        case .armenian:   return "Վերադառձ Գլխավոր էջ"
        case .japanese:   return "ホームに戻る"
        case .french:     return "Retour à l'accueil"
        case .amharic:    return "ወደ መነሻ ገጽ ተመለስ"
        }
    }
}

// MARK: - Local Confetti Components

private struct TVConfettiParticle: Identifiable {
    let id = UUID()
    let x: CGFloat
    let color: Color
    let size: CGFloat
    let delay: Double
    let duration: Double
}

private struct TVConfettiView: View {
    @State private var particles: [TVConfettiParticle] = []
    @State private var dropped = false

    private let palette: [Color] = [
        Color(hex: "FFD700"), Color(hex: "2ECC71"), Color(hex: "3498DB"),
        Color(hex: "F39C12"), Color(hex: "9B59B6"), .pink, .red, .cyan
    ]

    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(particles) { p in
                    Circle()
                        .fill(p.color)
                        .frame(width: p.size, height: p.size)
                        .position(x: p.x, y: dropped ? geo.size.height + 40 : -20)
                        .animation(
                            .easeIn(duration: p.duration).delay(p.delay),
                            value: dropped
                        )
                }
            }
            .onAppear {
                particles = (0..<40).map { _ in
                    TVConfettiParticle(
                        x: CGFloat.random(in: 60...(geo.size.width - 60)),
                        color: palette.randomElement()!,
                        size: CGFloat.random(in: 14...28),
                        delay: Double.random(in: 0...1.5),
                        duration: Double.random(in: 2.5...4.5)
                    )
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                    dropped = true
                }
            }
        }
        .ignoresSafeArea()
        .allowsHitTesting(false)
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
