#if os(tvOS)
import SwiftUI

struct TVSequencingView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @FocusState private var focusedIndex: Int?
    @State private var steps: [String] = []
    @State private var liftedIndex: Int? = nil
    @State private var hasChecked = false
    @State private var correctStates: [Bool]? = nil
    @State private var showHint = false
    @ObservedObject private var languageManager = LanguageManager.shared

    private static var hasShownHintThisSession = false

    static func resetHint() {
        hasShownHintThisSession = false
    }

    private var isRTL: Bool {
        let currentLanguage = languageManager.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        VStack(spacing: 24) {
            // Hint Banner
            if showHint {
                Text(sequencingHint)
                    .font(.system(size: 28, weight: .semibold, design: .rounded))
                    .foregroundColor(Color(hex: "FF9500"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 32)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(hex: "FF9500").opacity(0.15))
                    )
                    .transition(.move(edge: .top).combined(with: .opacity))
            }

            // Prompt
            Text(item.prompt)
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 80)
                .frame(maxHeight: 120)

            // Steps List
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(steps.indices, id: \.self) { index in
                        Button {
                            handleSelection(at: index)
                        } label: {
                            stepTile(at: index)
                        }
                        .buttonStyle(.plain)
                        .focused($focusedIndex, equals: index)
                        .disabled(hasChecked)
                    }

                    if !hasChecked {
                        Button {
                            checkAnswer()
                        } label: {
                            submitButton
                        }
                        .buttonStyle(.plain)
                        .focused($focusedIndex, equals: steps.count)
                        .padding(.top, 20)
                    }
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 100)
            }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        .onAppear {
            steps = item.options.shuffled()
            focusedIndex = 0
            if !TVSequencingView.hasShownHintThisSession {
                showHint = true
            }
        }
        // Menu button cancels the lift state without dismissing if a tile is lifted
        .onExitCommand(perform: liftedIndex != nil ? { liftedIndex = nil } : nil)
    }

    @ViewBuilder
    private func stepTile(at index: Int) -> some View {
        let isLifted = liftedIndex == index
        let isFocused = focusedIndex == index
        let text = steps[index]
        let state = stepState(at: index)

        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(tileBackground(isFocused: isFocused, isLifted: isLifted, state: state))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(borderColor(isFocused: isFocused, isLifted: isLifted, state: state), lineWidth: 3)
                        .shadow(color: isFocused || isLifted ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
                )

            HStack(spacing: 24) {
                // Index Indicator
                Text("\(index + 1)")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 48, height: 48)
                    .background(Color.white.opacity(0.2))
                    .clipShape(Circle())

                Text(text)
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)

                Spacer()

                if let correctStates = correctStates {
                    Image(systemName: correctStates[index] ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .font(.system(size: 48))
                        .foregroundColor(Color.white.opacity(0.9))
                }
            }
            .padding(.horizontal, 32)
        }
        .frame(height: 110)
        .scaleEffect(isLifted ? 1.08 : (isFocused ? 1.04 : 1.0))
        .opacity(state == .dimmed ? 0.35 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isLifted)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    private var submitButton: some View {
        let isFocused = focusedIndex == steps.count
        return Text(submitButtonTitle)
            .font(.system(size: 36, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 80)
            .padding(.vertical, 20)
            .background(
                Capsule().fill(
                    isFocused ? Color(hex: "FF9500") : Color(hex: "FF9500").opacity(0.7)
                )
            )
            .scaleEffect(isFocused ? 1.06 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    private func handleSelection(at index: Int) {
        // Dismiss hint on first action
        if showHint {
            withAnimation {
                showHint = false
                TVSequencingView.hasShownHintThisSession = true
            }
        }

        if let lifted = liftedIndex {
            if lifted == index {
                liftedIndex = nil
            } else {
                // Swap steps
                steps.swapAt(lifted, index)
                liftedIndex = nil
            }
        } else {
            liftedIndex = index
        }
    }

    private func checkAnswer() {
        hasChecked = true
        
        let patientOrder = steps.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }.joined(separator: " | ")
        let expectedOrder = item.correctAnswer.components(separatedBy: " | ").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }.joined(separator: " | ")
        let allCorrect = patientOrder.lowercased() == expectedOrder.lowercased()

        let correctSteps = item.correctAnswer.components(separatedBy: " | ").map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
        var states: [Bool] = []
        for i in 0..<steps.count {
            let stepText = steps[i].trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
            if i < correctSteps.count {
                states.append(stepText == correctSteps[i])
            } else {
                states.append(false)
            }
        }
        correctStates = states

        TVSoundManager.play(allCorrect ? .correct : .wrong)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            onAnswered(allCorrect)
        }
    }

    private enum TileVisualState {
        case idle, correct, wrong, dimmed
    }

    private func stepState(at index: Int) -> TileVisualState {
        guard hasChecked, let correctStates = correctStates else { return .idle }
        if correctStates[index] { return .correct }
        return .wrong
    }

    private func tileBackground(isFocused: Bool, isLifted: Bool, state: TileVisualState) -> Color {
        if isLifted { return Color(hex: "FF9500").opacity(0.3) }
        switch state {
        case .idle:    return isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44")
        case .correct: return Color(hex: "2ECC71")
        case .wrong:   return Color(hex: "E74C3C")
        case .dimmed:  return Color(hex: "2D2D44")
        }
    }

    private func borderColor(isFocused: Bool, isLifted: Bool, state: TileVisualState) -> Color {
        if isLifted { return Color(hex: "FF9500") }
        guard state == .idle else { return .clear }
        return isFocused ? .white : Color(hex: "FF9500").opacity(0.5)
    }

    // MARK: - Localized Copy

    private var sequencingHint: String {
        switch languageManager.currentLanguage {
        case .english:    return "Select a step, then select where it goes"
        case .spanish:    return "Seleccione un paso, luego seleccione a dónde va"
        case .hindi:      return "एक चरण चुनें, फिर चुनें कि वह कहाँ जाता है"
        case .gujarati:   return "એક પગલું પસંદ કરો, પછી તે ક્યાં જાય છે તે પસંદ કરો"
        case .chinese:    return "选择一个步骤，然后选择它去哪里"
        case .farsi:      return "یک مرحله را انتخاب کنید، سپس انتخاب کنید که به کجا می‌رود"
        case .korean:     return "단계를 선택한 다음 이동할 위치를 선택하세요"
        case .vietnamese: return "Chọn một bước, sau đó chọn nơi nó đến"
        case .arabic:     return "حدد خطوة، ثم حدد المكان الذي تذهب إليه"
        case .portuguese: return "Selecione uma etapa, depois selecione para onde ela vai"
        case .tagalog:    return "Pumili ng hakbang, pagkatapos ay piliin kung saan ito pupunta"
        case .punjabi:    return "ਇੱਕ ਕਦਮ ਚੁਣੋ, ਫਿਰ ਚੁਣੋ ਕਿ ਇਹ ਕਿੱਥੇ ਜਾਂਦਾ ਹੈ"
        case .armenian:   return "Ընտրեք քայլ, այնուհետև ընտրեք, թե ուր է այն գնում"
        case .japanese:   return "ステップを選択し、次に移動先を選択してください"
        case .french:     return "Sélectionnez une étape, puis sélectionnez où elle va"
        case .amharic:    return "አንድ እርምጃ ይምረጡ፣ ከዚያ የት እንደሚሄድ ይምረጡ"
        }
    }

    private var submitButtonTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Submit"
        case .spanish:    return "Enviar"
        case .hindi:      return "जमा करें"
        case .gujarati:   return "સબમિટ કરો"
        case .chinese:    return "提交"
        case .farsi:      return "ارسال"
        case .korean:     return "제출"
        case .vietnamese: return "Gửi"
        case .arabic:     return "إرسال"
        case .portuguese: return "Enviar"
        case .tagalog:    return "I-submit"
        case .punjabi:    return "ਜਮ੍ਹਾਂ ਕਰੋ"
        case .armenian:   return "Ներկայացնել"
        case .japanese:   return "送信"
        case .french:     return "Soumettre"
        case .amharic:    return "አስገባ"
        }
    }
}

// MARK: - Hex Color Helper

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
