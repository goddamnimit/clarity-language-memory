import SwiftUI

/// A reusable multiple-choice option selector designed with randomized choice ordering.
struct MultipleChoiceView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var selectedOption: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var shuffledOptions: [String] = [] // Stores the randomized choice order

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
                        HStack {
                            Text(option)
                                .font(.body) // Minimum 17pt font size
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
                        .frame(height: 56) // Generous tap target height (exceeds 44pt)
                        .background(backgroundColor(for: option))
                        .cornerRadius(16) // Explicit 16pt rounded corners
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(borderColor(for: option), lineWidth: 2)
                        )
                    }
                    .disabled(hasAnswered) // Disable further tapping after an answer is chosen
                    .buttonStyle(PlainButtonStyle())
                    .opacity(buttonOpacity(for: option)) // Slightly fades unselected wrong buttons
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
                    .background(Color(.systemBackground))
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.top, 10)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(20) // Generous container padding
        .background(Color(.secondarySystemGroupedBackground)) // Adaptive color for dark mode
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        // FIXED: Only onAppear is needed because the view is completely destroyed and recreated on transitions
        .onAppear {
            shuffledOptions = item.options.shuffled()
        }
    }

    // MARK: - State and Layout Helper Functions

    private func selectOption(_ option: String) {
        selectedOption = option
        hasAnswered = true
        let isCorrect = isCorrectOption(option)
        answeredCorrectly = isCorrect
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
            return Color(.systemBackground)
        }
        if isCorrectOption(option) {
            return .green
        } else if selectedOption == option {
            return .red
        }
        return Color(.systemBackground)
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
