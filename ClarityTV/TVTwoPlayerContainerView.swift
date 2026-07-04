#if os(tvOS)
import SwiftUI
import AVFoundation

private enum TVTwoPlayerStep {
    case handoff(targetIndex: Int, nextIsPlayer1: Bool)
    case playing(targetIndex: Int, isPlayer1: Bool)
    case results
}

struct TVTwoPlayerContainerView: View {
    let player1Name: String
    let player2Name: String
    let section: AppSection?

    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var currentStep: TVTwoPlayerStep = .playing(targetIndex: 0, isPlayer1: true)
    
    // Speech synthesis
    @AppStorage("tvSpeechEnabled") private var speechEnabled: Bool = false
    @State private var synthesizer = AVSpeechSynthesizer()

    // Exercise info
    @State private var activeExercise: Exercise? = nil
    @State private var activeItems: [ExerciseItem] = []
    
    // Player Scores
    @State private var p1Correct = 0
    @State private var p1Total = 0
    @State private var p2Correct = 0
    @State private var p2Total = 0
    
    // Current Question State
    @State private var currentAnswered = false
    @State private var isAnswerCorrect = false
    
    @FocusState private var transitionFocused: Bool

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            if activeExercise == nil || activeItems.isEmpty {
                VStack(spacing: 20) {
                    ProgressView().scaleEffect(2)
                    Text("Preparing session…")
                        .font(.system(size: 32))
                        .foregroundColor(Color.white.opacity(0.6))
                }
            } else {
                switch currentStep {
                case .handoff(let index, let nextIsPlayer1):
                    handoffScreen(nextIndex: index, nextIsPlayer1: nextIsPlayer1)
                case .playing(let index, let isP1):
                    playingScreen(index: index, isPlayer1: isP1)
                case .results:
                    TVTwoPlayerResultsView(
                        player1Name: player1Name,
                        player2Name: player2Name,
                        p1Correct: p1Correct,
                        p1Total: p1Total,
                        p2Correct: p2Correct,
                        p2Total: p2Total,
                        onPlayAgain: restartGame,
                        onBackHome: { dismiss() }
                    )
                }
            }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        .onDisappear {
            synthesizer.stopSpeaking(at: .immediate)
        }
        .onAppear {
            initializeSession()
        }
    }

    // MARK: - Game Handoff View

    @ViewBuilder
    private func handoffScreen(nextIndex: Int, nextIsPlayer1: Bool) -> some View {
        let incomingName = nextIsPlayer1 ? player1Name : player2Name
        VStack(spacing: 40) {
            Spacer()

            Text("🎮")
                .font(.system(size: 140))

            Text(passRemoteText(for: incomingName))
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 80)

            Text(readyNoticeText(for: incomingName))
                .font(.system(size: 36))
                .foregroundColor(Color.white.opacity(0.6))

            Spacer()

            Button {
                currentAnswered = false
                currentStep = .playing(targetIndex: nextIndex, isPlayer1: nextIsPlayer1)
            } label: {
                Text(readyButtonTitle)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(transitionFocused ? Color(hex: "FF9500") : Color.white.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(transitionFocused ? Color.white : Color.clear, lineWidth: 3)
                    )
            }
            .buttonStyle(.plain)
            .focused($transitionFocused)
            .padding(.bottom, 100)
            .onAppear {
                transitionFocused = true
            }
        }
    }

    // MARK: - Game Play View

    @ViewBuilder
    private func playingScreen(index: Int, isPlayer1: Bool) -> some View {
        let currentItem = activeItems[index]
        let currentPlayerName = isPlayer1 ? player1Name : player2Name
        let turnThemeColor = isPlayer1 ? Color(hex: "6C63FF") : Color(hex: "FF9500")

        VStack(spacing: 0) {
            // Header: Player Name indicator + Score summary
            HStack {
                HStack(spacing: 12) {
                    Circle()
                        .fill(turnThemeColor)
                        .frame(width: 20, height: 20)
                    Text(currentPlayerName)
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
                Spacer()
                // Show current session progress
                Text("Question \(index + 1) of 5")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(.white.opacity(0.6))
            }
            .padding(.horizontal, 80)
            .padding(.top, 60)
            .padding(.bottom, 30)

            // Question Prompt / Instructions
            VStack(spacing: 10) {
                Text(activeExercise?.title ?? "")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(Color.white.opacity(0.45))
                    .textCase(.uppercase)
                    .tracking(1)

                Text(activeExercise?.instructions ?? "")
                    .font(.system(size: 34, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 100)
            }
            .padding(.bottom, 30)

            // Question Content Dispatch
            Group {
                if let type = activeExercise?.type {
                    switch type {
                    case .multipleChoice, .matching, .comparison, .minimalPairs:
                        TVMultipleChoiceView(item: currentItem, exerciseType: type, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .categoryCrossOut:
                        TVCategoryCrossOutView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .sentenceCompletion:
                        TVSentenceCompletionView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .analogyChoice:
                        TVAnalogyChoiceView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .homonym:
                        TVHomonymView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .yesNo:
                        TVYesNoView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .factOrOpinion:
                        TVFactOrOpinionView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .sequencing:
                        TVSequencingView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    case .openEnded:
                        TVOpenEndedView(item: currentItem, onAnswered: { correct in handleAnswer(correct, isPlayer1: isPlayer1) })
                    }
                }
            }
            .id(currentItem.id)
            .padding(.horizontal, 80)

            Spacer()

            // Footer controls
            HStack {
                Button(action: {
                    speak(currentItem.prompt)
                }) {
                    HStack(spacing: 8) {
                        Image(systemName: "speaker.wave.2.fill")
                        Text("Replay Audio")
                    }
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(12)
                }
                .buttonStyle(.plain)

                Spacer()

                if currentAnswered {
                    Button(action: { advanceToNext(currentIndex: index, wasPlayer1: isPlayer1) }) {
                        Text("Continue →")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 16)
                            .background(Color(hex: "FF9500"))
                            .cornerRadius(12)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal, 80)
            .padding(.bottom, 60)
        }
    }

    // MARK: - Game Loop Helpers

    private func initializeSession() {
        let chosenSection = section ?? [AppSection.language, AppSection.cognition, AppSection.functionalSkills].randomElement()!
        let pool = languageManager.exercisesForSection(chosenSection)
        
        guard let picked = pool.randomElement() else { return }
        activeExercise = picked
        
        // Pick 5 random items from this exercise
        activeItems = Array(picked.items.shuffled().prefix(5))
        
        p1Correct = 0
        p1Total = 0
        p2Correct = 0
        p2Total = 0
        currentStep = .playing(targetIndex: 0, isPlayer1: true)
    }

    private func restartGame() {
        activeExercise = nil
        activeItems = []
        initializeSession()
    }

    private func handleAnswer(_ correct: Bool, isPlayer1: Bool) {
        guard !currentAnswered else { return }
        currentAnswered = true
        isAnswerCorrect = correct
        
        if isPlayer1 {
            p1Total += 1
            if correct { p1Correct += 1 }
        } else {
            p2Total += 1
            if correct { p2Correct += 1 }
        }

        if correct {
            TVSoundManager.play(.correct)
        } else {
            TVSoundManager.play(.wrong)
        }
    }

    private func advanceToNext(currentIndex: Int, wasPlayer1: Bool) {
        let nextIndex = currentIndex + 1
        if nextIndex >= 5 {
            currentStep = .results
        } else {
            // alternate turns: index 0 (P1), 1 (P2), 2 (P1), 3 (P2), 4 (P1)
            let nextIsPlayer1 = (nextIndex % 2 == 0)
            currentStep = .handoff(targetIndex: nextIndex, nextIsPlayer1: nextIsPlayer1)
        }
    }

    // MARK: - Text-to-Speech

    private func speak(_ text: String) {
        guard speechEnabled else { return }
        synthesizer.stopSpeaking(at: .immediate)
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: speechLocale)
        utterance.rate = 0.45
        utterance.pitchMultiplier = 1.0
        synthesizer.speak(utterance)
    }

    private var speechLocale: String {
        switch languageManager.currentLanguage {
        case .english:    return "en-US"
        case .spanish:    return "es-MX"
        case .hindi:      return "hi-IN"
        case .gujarati:   return "gu-IN"
        case .chinese:    return "zh-CN"
        case .farsi:      return "fa-IR"
        case .korean:     return "ko-KR"
        case .vietnamese: return "vi-VN"
        case .arabic:     return "ar-SA"
        case .portuguese: return "pt-BR"
        case .tagalog:    return "fil-PH"
        case .punjabi:    return "pa-IN"
        case .armenian:   return "hy-AM"
        case .japanese:   return "ja-JP"
        case .french:     return "fr-FR"
        case .amharic:    return "am-ET"
        }
    }

    // MARK: - Localized Chrome Copy

    private func passRemoteText(for name: String) -> String {
        switch currentLanguage {
        case .english:    return "Pass the remote to \(name)!"
        case .spanish:    return "¡Pasa el control a \(name)!"
        case .hindi:      return "रिमोट \(name) को दें!"
        case .gujarati:   return "રિમોટ \(name) ને આપો!"
        case .chinese:    return "请把遥控器交给 \(name)！"
        case .farsi:      return "کنترل را به \(name) بدهید!"
        case .korean:     return "리모컨을 \(name)에게 전달하세요!"
        case .vietnamese: return "Chuyển điều khiển cho \(name)!"
        case .arabic:     return "مرر جهاز التحكم إلى \(name)!"
        case .portuguese: return "Passe o controle para \(name)!"
        case .tagalog:    return "Iabot ang remote kay \(name)!"
        case .punjabi:    return "ਰਿਮੋਟ \(name) ਨੂੰ ਦਿਓ!"
        case .armenian:   return "Փոխանցեք հեռակառավարման վահանակը \(name)-ին:"
        case .japanese:   return "リモコンを\(name)に渡してください！"
        case .french:     return "Passez la télécommande à \(name) !"
        case .amharic:    return "ሪሞቱን ለ\(name) ይስጡ!"
        }
    }

    private func readyNoticeText(for name: String) -> String {
        switch currentLanguage {
        case .english:    return "\(name), press ready when you are holding the remote."
        case .spanish:    return "\(name), presiona listo cuando tengas el control."
        case .hindi:      return "\(name), जब रिमोट आपके हाथ में हो तो तैयार बटन दबाएं।"
        case .gujarati:   return "\(name), જ્યારે રિમોટ તમારા હાથમાં હોય ત્યારે तैयार બટન દબાવો."
        case .chinese:    return "\(name)，拿到遥控器后请按准备好。"
        case .farsi:      return "\(name)， وقتی کنترل را در دست گرفتید دکمه آماده را فشار دهید."
        case .korean:     return "\(name)님, 리모컨을 받으면 준비 완료 버튼을 눌러주세요."
        case .vietnamese: return "\(name), nhấn sẵn sàng khi bạn đang giữ điều khiển."
        case .arabic:     return "\(name)، اضغط جاهز عندما تمسك بجهاز التحكم."
        case .portuguese: return "\(name), pressione pronto quando estiver com o controle."
        case .tagalog:    return "\(name), pindutin ang handa kapag hawak mo na ang remote."
        case .punjabi:    return "\(name), ਜਦੋਂ ਰਿਮੋਟ ਤੁਹਾਡੇ ਕੋਲ ਹੋਵੇ ਤਾਂ ਤਿਆਰ ਦਬਾਓ।"
        case .armenian:   return "\(name), սեղմեք պատրաստ է, երբ վահանակը ձեր ձեռքում է:"
        case .japanese:   return "\(name)さん、準備ができたら決定ボタンを押してください。"
        case .french:     return "\(name), appuyez sur prêt lorsque vous tenez la télécommande."
        case .amharic:    return "\(name) ሪሞቱን ሲይዙ ዝግጁ የሚለውን ይጫኑ።"
        }
    }

    private var readyButtonTitle: String {
        switch currentLanguage {
        case .english:    return "I'm Ready 🎮"
        case .spanish:    return "Estoy Listo 🎮"
        case .hindi:      return "मैं तैयार हूँ 🎮"
        case .gujarati:   return "હું તૈયાર છું 🎮"
        case .chinese:    return "我准备好了 🎮"
        case .farsi:      return "من آماده‌ام 🎮"
        case .korean:     return "준비 완료 🎮"
        case .vietnamese: return "Tôi đã sẵn sàng 🎮"
        case .arabic:     return "أنا جاهز 🎮"
        case .portuguese: return "Estou Pronto 🎮"
        case .tagalog:    return "Handa na Ako 🎮"
        case .punjabi:    return "ਮੈਂ ਤਿਆਰ ਹਾਂ 🎮"
        case .armenian:   return "Պատրաստ եմ 🎮"
        case .japanese:   return "準備OK 🎮"
        case .french:     return "Je suis prêt 🎮"
        case .amharic:    return "እኔ ዝግጁ ነኝ 🎮"
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
