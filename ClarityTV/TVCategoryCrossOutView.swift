#if os(tvOS)
import SwiftUI

// MARK: - Focus enum

private enum CrossOutFocus: Hashable {
    case tileA, tileB, tileC, tileD, nextButton
}

private let crossOutFocusCases: [CrossOutFocus] = [.tileA, .tileB, .tileC, .tileD]

// MARK: - Reveal state

private enum CrossOutRevealState: Equatable {
    case idle, correct, wrong, dimmed
}

// MARK: - TVCategoryCrossOutView

struct TVCategoryCrossOutView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @FocusState private var focus: CrossOutFocus?
    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false
    @State private var correctRevealed = false
    @State private var shuffledOptions: [String] = []

    private var options: [String] { Array(shuffledOptions.prefix(4)) }

    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                // Top 38% — type label, question prompt, instruction
                VStack(spacing: 16) {
                    Spacer()

                    Text("Category")
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(Color.white.opacity(0.45))
                        .tracking(3)
                        .textCase(.uppercase)

                    ScrollView(.vertical) {
                        Text(item.prompt)
                            .font(.system(size: 42, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .minimumScaleFactor(0.7)
                            .padding(.horizontal, 120)
                    }
                    .frame(maxHeight: 280)

                    Text("Tap the word that does NOT belong")
                        .font(.system(size: 32, weight: .light).italic())
                        .foregroundColor(Color.white.opacity(0.55))
                        .multilineTextAlignment(.center)

                    Spacer()
                }
                .frame(height: geo.size.height * 0.38)

                // Above-grid hint
                Text("Find the odd one out")
                    .font(.system(size: 22, weight: .regular))
                    .foregroundColor(Color.white.opacity(0.35))
                    .padding(.bottom, 12)

                // 2×2 word tile grid
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())],
                    spacing: 32
                ) {
                    ForEach(0..<min(options.count, crossOutFocusCases.count), id: \.self) { index in
                        let option = options[index]
                        let focusCase = crossOutFocusCases[index]
                        Button {
                            guard !hasAnswered else { return }
                            selectOption(option)
                        } label: {
                            CrossOutTile(
                                text: option,
                                revealState: revealState(for: option),
                                correctRevealed: correctRevealed
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: focusCase)
                        .disabled(hasAnswered)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 4)
            }
        }
        .onAppear {
            shuffledOptions = item.options.shuffled()
            focus = .tileA
        }
    }

    // MARK: - Logic

    private func selectOption(_ option: String) {
        selectedOption = option
        hasAnswered = true

        let isCorrect = isCorrectOption(option)
        TVSoundManager.play(isCorrect ? .correct : .wrong)

        // Trigger the 0.4s scale-up on the correct tile
        withAnimation(.easeOut(duration: 0.4)) {
            correctRevealed = true
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            focus = .nextButton
            onAnswered(isCorrect)
        }
    }

    private func isCorrectOption(_ option: String) -> Bool {
        option.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
        item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    private func revealState(for option: String) -> CrossOutRevealState {
        guard hasAnswered else { return .idle }
        if isCorrectOption(option) { return .correct }
        if selectedOption == option { return .wrong }
        return .dimmed
    }
}

// MARK: - CrossOutTile

private struct CrossOutTile: View {
    let text: String
    let revealState: CrossOutRevealState
    let correctRevealed: Bool

    @Environment(\.isFocused) private var isFocused

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(tileBackground)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(borderColor, lineWidth: revealState == .idle ? 3 : 0)
                )

            Text(text)
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)

            if revealState == .correct {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.white.opacity(0.9))
                    .transition(.scale.combined(with: .opacity))
            } else if revealState == .wrong {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.white.opacity(0.9))
                    .transition(.scale.combined(with: .opacity))
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 160)
        // Correct tile scales up 0.4s when revealed; focused idle tiles scale slightly
        .scaleEffect(correctScale)
        .opacity(revealState == .dimmed ? 0.35 : 1.0)
        .animation(.easeOut(duration: 0.4), value: correctRevealed)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    private var borderColor: Color {
        guard revealState == .idle else { return .clear }
        return isFocused ? .white : Color(hex: "FF9500")
    }

    private var correctScale: CGFloat {
        if revealState == .correct && correctRevealed { return 1.08 }
        if isFocused && revealState == .idle { return 1.06 }
        return 1.0
    }

    private var tileBackground: Color {
        switch revealState {
        case .idle:    return isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44")
        case .correct: return Color(hex: "2ECC71")
        case .wrong:   return Color(hex: "E74C3C")
        case .dimmed:  return Color(hex: "2D2D44")
        }
    }
}

// MARK: - Hex color helper

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
