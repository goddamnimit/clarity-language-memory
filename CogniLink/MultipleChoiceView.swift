import SwiftUI
#if os(iOS)
import UIKit
#endif

/// A reusable multiple-choice option selector designed with randomized choice ordering.
struct MultipleChoiceView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var shuffledOptions: [String] = [] // Stores the randomized choice order
    @State private var tappedOption: String? = nil
    @State private var shakeOption: String? = nil

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Large question prompt text at top
            Text(item.prompt)
                .font(.title3) // Highly legible font size
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .padding(.vertical, 8)
                .fixedSize(horizontal: false, vertical: true)

            // Stacking option buttons vertically
            VStack(spacing: 14) {
                ForEach(shuffledOptions, id: \.self) { option in
                    Button(action: {
                        selectOption(option)
                    }) {
                        #if os(tvOS)
                        AnswerOptionCard(
                            option: option,
                            hasAnswered: hasAnswered,
                            isCorrect: isCorrectOption(option),
                            isSelected: selectedOption == option
                        )
                        #else
                        HStack {
                            Text(option)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(textColor(for: option))
                                .multilineTextAlignment(.leading)

                            Spacer()

                            // Visual feedback icons revealed post-answer
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
                        #endif
                    }
                    .disabled(hasAnswered) // Disable further tapping after an answer is chosen
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()
                    .opacity(buttonOpacity(for: option)) // Slightly fades unselected wrong buttons
                    .scaleEffect(tappedOption == option ? 1.05 : 1.0)
                    .modifier(ShakeEffect(animatableData: shakeOption == option ? 1 : 0))
                    .animation(.spring(response: 0.2, dampingFraction: 0.6), value: tappedOption)
                }
            }

            // Try Again button appears only after a wrong answer
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
                    .frame(height: 50) // Tap target height > 44pt
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
        .padding(20) // Generous container padding
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        // FIXED: Only onAppear is needed because the view is completely destroyed and recreated on transitions
        .onAppear {
            shuffledOptions = item.options.shuffled()
        }
    }

    // MARK: - State and Layout Helper Functions

    private func selectOption(_ option: String) {
        // Brief scale pulse on tap
        tappedOption = option
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            tappedOption = nil
        }
        selectedOption = option
        let isCorrect = isCorrectOption(option)
        answeredCorrectly = isCorrect
        // Shake wrong answer
        if !isCorrect {
            shakeOption = option
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                shakeOption = nil
            }
        }
        // Haptic feedback
        #if os(iOS)
        if isCorrect {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        } else {
            UINotificationFeedbackGenerator().notificationOccurred(.warning)
        }
        #endif
        // Animate hasAnswered so Try Again slides in
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

    // Value-based correct answer verification (fully independent of array index positions)
    private func isCorrectOption(_ option: String) -> Bool {
        return option.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
               item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    private func backgroundColor(for option: String) -> Color {
        guard hasAnswered else {
            return Color.systemBackground
        }
        if isCorrectOption(option) {
            return .green
        } else if selectedOption == option {
            return .red
        }
        return Color.systemBackground
    }

    private func borderColor(for option: String) -> Color {
        guard hasAnswered else {
            return Color.gray.opacity(0.3) // Neutral gray border before selection
        }
        if isCorrectOption(option) {
            return .green
        } else if selectedOption == option {
            return .red
        }
        return Color.gray.opacity(0.2)
    }

    private func textColor(for option: String) -> Color {
        guard hasAnswered else {
            return .primary
        }
        if isCorrectOption(option) || selectedOption == option {
            return .white // White text for selected or correct buttons
        }
        return .primary
    }

    private func buttonOpacity(for option: String) -> Double {
        guard hasAnswered else { return 1.0 }
        if isCorrectOption(option) || selectedOption == option {
            return 1.0
        }
        return 0.5 // Non-selected wrong answers fade out to highlight feedback
    }
}

// MARK: - tvOS Answer Option Card

#if os(tvOS)
private struct AnswerOptionCard: View {
    let option: String
    let hasAnswered: Bool
    let isCorrect: Bool
    let isSelected: Bool

    @Environment(\.isFocused) var isFocused

    var body: some View {
        HStack {
            Text(option)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(resolvedTextColor)
                .multilineTextAlignment(.leading)
            Spacer()
            if hasAnswered {
                if isCorrect {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.white)
                        .font(.title3)
                } else if isSelected {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .font(.title3)
                }
            }
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .frame(minHeight: 110)
        .background(resolvedBackground)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(resolvedBorder, lineWidth: 2)
        )
    }

    private var resolvedTextColor: Color {
        if hasAnswered { return (isCorrect || isSelected) ? .white : .primary }
        return isFocused ? .white : .primary
    }

    private var resolvedBackground: Color {
        if hasAnswered {
            if isCorrect { return .green }
            if isSelected { return .red }
            return Color.systemBackground
        }
        return isFocused ? Color.accentColor : Color.systemBackground
    }

    private var resolvedBorder: Color {
        if hasAnswered {
            if isCorrect { return .green }
            if isSelected { return .red }
            return Color.gray.opacity(0.2)
        }
        return isFocused ? Color.accentColor : Color.gray.opacity(0.3)
    }
}
#endif

// MARK: - Shake Effect

struct ShakeEffect: GeometryEffect {
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        let translation = 6 * sin(animatableData * .pi * 3)
        return ProjectionTransform(
            CGAffineTransform(translationX: translation, y: 0)
        )
    }
}
