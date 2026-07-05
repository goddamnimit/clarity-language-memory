import SwiftUI
#if os(iOS)
import UIKit
#endif

/// Minimal Pairs exercise: two words differing by one phoneme are shown
/// prominently, and the patient answers a disambiguating question from
/// 4 options. Same visual language as MultipleChoiceView.
struct MinimalPairsView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var shuffledOptions: [String] = []
    @State private var tappedOption: String? = nil
    @State private var shakeOption: String? = nil

    /// The contrasting pair: the correct answer plus the option closest to it
    /// (fewest character edits), e.g. "CAT" and "BAT".
    private var pair: (String, String)? {
        let target = item.correctAnswer
        let rivals = item.options.filter { $0 != target }
        guard let closest = rivals.min(by: {
            editDistance($0, target) < editDistance($1, target)
        }) else { return nil }
        return (target, closest)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {

            // The minimal pair, displayed prominently
            if let pair {
                HStack(spacing: 14) {
                    pairWord(pair.0)
                    Text("·")
                        .font(.title2)
                        .foregroundColor(.secondary)
                        .accessibilityHidden(true)
                    pairWord(pair.1)
                }
                .frame(maxWidth: .infinity)
                .accessibilityElement(children: .combine)
            }

            // Discrimination question
            Text(item.prompt)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .padding(.vertical, 4)
                .fixedSize(horizontal: false, vertical: true)

            // 4 large answer options
            VStack(spacing: 14) {
                ForEach(shuffledOptions, id: \.self) { option in
                    Button(action: {
                        selectOption(option)
                    }) {
                        HStack {
                            Text(option)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(textColor(for: option))
                                .multilineTextAlignment(.leading)

                            Spacer()

                            if hasAnswered {
                                if isCorrectOption(option) {
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.white)
                                        .font(.title3)
                                } else if selectedOption == option {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.white)
                                        .font(.title3)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(backgroundColor(for: option))
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(borderColor(for: option), lineWidth: 2)
                        )
                    }
                    .disabled(hasAnswered)
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()
                    .accessibilityLabel(option)
                    .opacity(buttonOpacity(for: option))
                    .scaleEffect(tappedOption == option ? 1.05 : 1.0)
                    .modifier(ShakeEffect(animatableData: shakeOption == option ? 1 : 0))
                    .animation(.spring(response: 0.2, dampingFraction: 0.6), value: tappedOption)
                }
            }

            // Try Again after a wrong answer (matches MultipleChoiceView)
            if hasAnswered && !answeredCorrectly {
                Button(action: {
                    resetQuestion()
                }) {
                    HStack {
                        Image(systemName: "arrow.clockwise")
                        Text("Try Again")
                    }
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.systemBackground)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.top, 10)
                }
                .buttonStyle(PlainButtonStyle())
                .tvFocusEffect()
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .padding(20)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        .onAppear {
            shuffledOptions = item.options.shuffled()
        }
    }

    // MARK: - Pair Word Tile

    @ViewBuilder
    private func pairWord(_ word: String) -> some View {
        Text(word)
            .font(.system(size: 32, weight: .bold, design: .rounded))
            .foregroundColor(.primary)
            .padding(.horizontal, 18)
            .padding(.vertical, 10)
            .background(Color.systemBackground)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.accentColor.opacity(0.4), lineWidth: 2)
            )
    }

    // MARK: - Selection Logic (mirrors MultipleChoiceView)

    private func selectOption(_ option: String) {
        tappedOption = option
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            tappedOption = nil
        }
        selectedOption = option
        let isCorrect = isCorrectOption(option)
        answeredCorrectly = isCorrect
        if !isCorrect {
            shakeOption = option
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                shakeOption = nil
            }
        }
        #if os(iOS)
        if isCorrect {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        } else {
            UINotificationFeedbackGenerator().notificationOccurred(.warning)
        }
        #endif
        withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
            hasAnswered = true
        }
        onAnswered(isCorrect)
    }

    private func resetQuestion() {
        selectedOption = nil
        hasAnswered = false
        answeredCorrectly = false
    }

    private func isCorrectOption(_ option: String) -> Bool {
        option.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
        item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    private func backgroundColor(for option: String) -> Color {
        guard hasAnswered else { return Color.systemBackground }
        if isCorrectOption(option) { return .green }
        if selectedOption == option { return .red }
        return Color.systemBackground
    }

    private func borderColor(for option: String) -> Color {
        guard hasAnswered else { return Color.gray.opacity(0.3) }
        if isCorrectOption(option) { return .green }
        if selectedOption == option { return .red }
        return Color.gray.opacity(0.2)
    }

    private func textColor(for option: String) -> Color {
        guard hasAnswered else { return .primary }
        if isCorrectOption(option) || selectedOption == option { return .white }
        return .primary
    }

    private func buttonOpacity(for option: String) -> Double {
        guard hasAnswered else { return 1.0 }
        if isCorrectOption(option) || selectedOption == option { return 1.0 }
        return 0.5
    }

    // MARK: - Edit Distance (for pair detection)

    private func editDistance(_ a: String, _ b: String) -> Int {
        let aChars = Array(a.lowercased()), bChars = Array(b.lowercased())
        var dist = [[Int]](repeating: [Int](repeating: 0, count: bChars.count + 1),
                           count: aChars.count + 1)
        for i in 0...aChars.count { dist[i][0] = i }
        for j in 0...bChars.count { dist[0][j] = j }
        guard !aChars.isEmpty && !bChars.isEmpty else { return max(aChars.count, bChars.count) }
        for i in 1...aChars.count {
            for j in 1...bChars.count {
                if aChars[i - 1] == bChars[j - 1] {
                    dist[i][j] = dist[i - 1][j - 1]
                } else {
                    dist[i][j] = min(dist[i - 1][j - 1], dist[i - 1][j], dist[i][j - 1]) + 1
                }
            }
        }
        return dist[aChars.count][bChars.count]
    }
}
