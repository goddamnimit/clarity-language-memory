#if os(tvOS)
import SwiftUI

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

// MARK: - Focus enum

private enum TileFocus: Hashable {
    case tileA, tileB, tileC, tileD
}

private let tileFocusCases: [TileFocus] = [.tileA, .tileB, .tileC, .tileD]

// MARK: - Reveal state

private enum TileRevealState: Equatable {
    case idle, correct, wrong, dimmed
}

// MARK: - TVMultipleChoiceView

struct TVMultipleChoiceView: View {
    let item: ExerciseItem
    let exerciseType: ExerciseType
    let onAnswered: (Bool) -> Void

    @FocusState private var focus: TileFocus?
    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false

    private var options: [String] { Array(item.options.prefix(4)) }

    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                // Top 35% — exercise type label + question prompt
                VStack(spacing: 20) {
                    Spacer()

                    Text(typeLabel)
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(Color.white.opacity(0.45))
                        .tracking(3)
                        .textCase(.uppercase)

                    Text(item.prompt)
                        .font(.system(size: 52, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(.horizontal, 120)

                    Spacer()
                }
                .frame(height: geo.size.height * 0.35)

                // Bottom — 2×2 answer tile grid
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())],
                    spacing: 32
                ) {
                    ForEach(0..<min(options.count, tileFocusCases.count), id: \.self) { index in
                        let option = options[index]
                        let focusCase = tileFocusCases[index]
                        Button {
                            guard !hasAnswered else { return }
                            selectOption(option)
                        } label: {
                            AnswerTile(text: option, revealState: revealState(for: option))
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: focusCase)
                        .disabled(hasAnswered)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 16)
            }
        }
        .onAppear {
            focus = .tileA
        }
    }

    // MARK: - Logic

    private func selectOption(_ option: String) {
        selectedOption = option
        let isCorrect = isCorrectOption(option)
        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
            hasAnswered = true
        }
        focus = nil
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            onAnswered(isCorrect)
        }
    }

    private func isCorrectOption(_ option: String) -> Bool {
        option.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
        item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    private func revealState(for option: String) -> TileRevealState {
        guard hasAnswered else { return .idle }
        if isCorrectOption(option) { return .correct }
        if selectedOption == option { return .wrong }
        return .dimmed
    }

    private var typeLabel: String {
        switch exerciseType {
        case .multipleChoice:     return "Multiple Choice"
        case .yesNo:              return "Yes or No"
        case .factOrOpinion:      return "Fact or Opinion"
        case .sentenceCompletion: return "Fill in the Blank"
        case .analogyChoice:      return "Analogy"
        case .homonym:            return "Homonym"
        case .matching:           return "Matching"
        case .categoryCrossOut:   return "Multiple Choice"
        case .openEnded:          return "Open Ended"
        case .sequencing:         return "Sequencing"
        }
    }
}

// MARK: - AnswerTile

private struct AnswerTile: View {
    let text: String
    let revealState: TileRevealState

    @Environment(\.isFocused) private var isFocused

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(tileBackground)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: (isFocused && revealState == .idle) ? 3 : 0)
                )

            Text(text)
                .font(.system(size: 38, weight: .bold, design: .rounded))
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
        .scaleEffect(isFocused && revealState == .idle ? 1.06 : 1.0)
        .opacity(revealState == .dimmed ? 0.35 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: revealState)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
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
#endif
