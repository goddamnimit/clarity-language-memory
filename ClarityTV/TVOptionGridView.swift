#if os(tvOS)
import SwiftUI

enum TVGridRevealState: Equatable {
    case idle
    case correct
    case wrong
    case dimmed
}

struct TVOptionGridView: View {
    let prompt: String
    let options: [String]
    let correctAnswer: String
    let onAnswered: (Bool) -> Void

    @FocusState private var focusedIndex: Int?
    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false
    @State private var correctRevealed = false

    private var isRTL: Bool {
        let currentLanguage = LanguageManager.shared.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                // Top prompt area
                VStack(spacing: 16) {
                    Spacer()
                    ScrollView(.vertical) {
                        Text(prompt)
                            .font(.system(size: 42, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .minimumScaleFactor(0.7)
                            .padding(.horizontal, 120)
                    }
                    .frame(maxHeight: 280)
                    Spacer()
                }
                .frame(height: geo.size.height * 0.35)

                // Options layout (2x1 for 2 options, 2x2 for 4 options).
                // Rows are flexible-height so the grid always fits the space the
                // container offers and can never overflow onto the footer below.
                Group {
                    if options.count == 2 {
                        HStack(spacing: 40) {
                            ForEach(0..<2, id: \.self) { index in
                                optionTile(index: index)
                            }
                        }
                    } else {
                        VStack(spacing: 32) {
                            ForEach(Array(stride(from: 0, to: min(options.count, 4), by: 2)), id: \.self) { rowStart in
                                HStack(spacing: 32) {
                                    optionTile(index: rowStart)
                                    if rowStart + 1 < min(options.count, 4) {
                                        optionTile(index: rowStart + 1)
                                    } else {
                                        Color.clear.frame(maxWidth: .infinity)
                                    }
                                }
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top, 16)
                .padding(.bottom, 12)
                .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
            }
        }
        .onAppear {
            focusedIndex = 0
        }
    }

    @ViewBuilder
    private func optionTile(index: Int) -> some View {
        let option = options[index]
        Button {
            guard !hasAnswered else { return }
            selectOption(option)
        } label: {
            TVOptionGridTile(
                text: option,
                revealState: revealState(for: option),
                correctRevealed: correctRevealed
            )
        }
        .buttonStyle(.plain)
        .focused($focusedIndex, equals: index)
        .disabled(hasAnswered)
    }

    private func selectOption(_ option: String) {
        selectedOption = option
        hasAnswered = true

        let isCorrect = option.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
            correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        TVSoundManager.play(isCorrect ? .correct : .wrong)

        withAnimation(.easeOut(duration: 0.4)) {
            correctRevealed = true
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            focusedIndex = -1
            onAnswered(isCorrect)
        }
    }

    private func revealState(for option: String) -> TVGridRevealState {
        guard hasAnswered else { return .idle }
        let isCorrectOption = option.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
            correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        if isCorrectOption { return .correct }
        if selectedOption == option { return .wrong }
        return .dimmed
    }
}

// MARK: - TVOptionGridTile

struct TVOptionGridTile: View {
    let text: String
    let revealState: TVGridRevealState
    let correctRevealed: Bool

    @Environment(\.isFocused) private var isFocused

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(tileBackground)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(borderColor, lineWidth: revealState == .idle ? 3 : 0)
                        .shadow(color: isFocused ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
                )

            Text(text)
                .font(.system(size: 38, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .minimumScaleFactor(0.5)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)

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
        .frame(maxWidth: .infinity, minHeight: 80, maxHeight: 160)
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
