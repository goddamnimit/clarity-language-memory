import SwiftUI
#if os(iOS)
import UIKit
#endif

/// A reusable multiple-choice option selector designed with randomized choice ordering.
struct MultipleChoiceView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void
    var exerciseTitle: String = ""

    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var shuffledOptions: [String] = []
    @State private var tappedOption: String? = nil
    @State private var shakeOption: String? = nil
    @State private var memoryPhase: MemoryPhase = .words

    private enum MemoryPhase { case words, ready, choices }

    private var isMemoryExercise: Bool {
        exerciseTitle == "Memory: Repeat the List"
    }

    var body: some View {
        Group {
            if isMemoryExercise && memoryPhase != .choices {
                memoryRevealOverlay
            } else {
                choiceContent
            }
        }
        .onAppear {
            shuffledOptions = item.options.shuffled()
            if isMemoryExercise {
                memoryPhase = .words
                startMemoryTimer()
            }
        }
    }

    // MARK: - Memory Reveal Overlay

    @ViewBuilder
    private var memoryRevealOverlay: some View {
        VStack(spacing: 28) {
            if memoryPhase == .words {
                Text("Remember these words:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                VStack(spacing: 12) {
                    ForEach(extractMemoryWords(from: item.prompt), id: \.self) { word in
                        Text(word)
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .foregroundColor(.primary)
                    }
                }
            } else {
                Text("Ready?")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .foregroundColor(.accentColor)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 220)
        .padding(20)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
    }

    // MARK: - Normal Choice Content

    @ViewBuilder
    private var choiceContent: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Large question prompt text at top
            Text(item.prompt)
                .font(.title3)
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
                    .disabled(hasAnswered)
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()
                    .opacity(buttonOpacity(for: option))
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
    }

    // MARK: - Memory Timer

    private func startMemoryTimer() {
        let capturedID = item.id
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            guard item.id == capturedID else { return }
            withAnimation(.easeInOut(duration: 0.25)) {
                memoryPhase = .ready
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                guard item.id == capturedID else { return }
                withAnimation(.easeInOut(duration: 0.25)) {
                    memoryPhase = .choices
                }
            }
        }
    }

    private func extractMemoryWords(from prompt: String) -> [String] {
        guard let labelRange = prompt.range(of: "Words shown: ") else { return [] }
        let after = String(prompt[labelRange.upperBound...])
        let wordSection: String
        if let dashRange = after.range(of: " —") {
            wordSection = String(after[..<dashRange.lowerBound])
        } else if let newlineRange = after.range(of: "\n") {
            wordSection = String(after[..<newlineRange.lowerBound])
        } else {
            wordSection = after
        }
        return wordSection
            .components(separatedBy: " / ")
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .filter { !$0.isEmpty }
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
            return Color.gray.opacity(0.3)
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
            return .white
        }
        return .primary
    }

    private func buttonOpacity(for option: String) -> Double {
        guard hasAnswered else { return 1.0 }
        if isCorrectOption(option) || selectedOption == option {
            return 1.0
        }
        return 0.5
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
