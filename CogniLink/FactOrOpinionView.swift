import SwiftUI

/// An interactive layout to practice distinguishing objective facts from subjective opinions with randomized card positions.
struct FactOrOpinionView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var selectedAnswer: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var factOnLeft = true // Controls which side the "Fact" button is displayed on

    var body: some View {
        VStack(spacing: 24) {
            // Large centered statement text
            Text(item.prompt)
                .font(.title3) // Clear body size for statements
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
                .fixedSize(horizontal: false, vertical: true)

            // Side-by-side FACT and OPINION buttons
            HStack(spacing: 16) {
                // Displays the buttons dynamically based on factOnLeft boolean state
                if factOnLeft {
                    choiceButton(title: "Fact", themeColor: .blue)
                    choiceButton(title: "Opinion", themeColor: .purple)
                } else {
                    choiceButton(title: "Opinion", themeColor: .purple)
                    choiceButton(title: "Fact", themeColor: .blue)
                }
            }

            // Explanation text shown only after answering (if available)
            if hasAnswered && !item.explanation.isEmpty {
                Text(item.explanation)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                    .padding(.top, 8)
                    .fixedSize(horizontal: false, vertical: true)
            }

            // Try Again reset trigger — only after a wrong answer
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
                    .background(Color(.systemBackground))
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.top, 8)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(20)
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        // FIXED: Only onAppear is needed because the view is fully recreated on question transitions
        .onAppear {
            factOnLeft = Bool.random()
        }
    }

    /// Builder for the decision buttons.
    @ViewBuilder
    private func choiceButton(title: String, themeColor: Color) -> some View {
        Button(action: {
            selectAnswer(title)
        }) {
            VStack(spacing: 8) {
                Text(title.uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(buttonTextColor(for: title, themeColor: themeColor))

                if hasAnswered {
                    Image(systemName: buttonIconName(for: title))
                        .font(.title3)
                        .foregroundColor(buttonTextColor(for: title, themeColor: themeColor))
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 70) // 70pt minimum height requirement
            .background(buttonBackgroundColor(for: title, themeColor: themeColor))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(buttonBorderColor(for: title, themeColor: themeColor), lineWidth: 3)
            )
        }
        .disabled(hasAnswered)
        .buttonStyle(PlainButtonStyle())
        .opacity(buttonOpacity(for: title))
    }

    // MARK: - Logic and Helper Functions

    private func selectAnswer(_ answer: String) {
        selectedAnswer = answer
        hasAnswered = true
        let isCorrect = answer == item.correctAnswer
        answeredCorrectly = isCorrect
        onAnswered(isCorrect)
    }

    private func resetQuestion() {
        selectedAnswer = nil
        hasAnswered = false
        answeredCorrectly = false
    }

    private func buttonBackgroundColor(for title: String, themeColor: Color) -> Color {
        guard hasAnswered else {
            return themeColor.opacity(0.12)
        }
        
        let isCorrectOption = title == item.correctAnswer
        let isSelectedOption = title == selectedAnswer
        
        if isCorrectOption {
            return .green
        } else if isSelectedOption {
            return .red
        }
        return Color(.systemBackground)
    }

    private func buttonBorderColor(for title: String, themeColor: Color) -> Color {
        guard hasAnswered else {
            return themeColor
        }
        
        let isCorrectOption = title == item.correctAnswer
        let isSelectedOption = title == selectedAnswer
        
        if isCorrectOption {
            return .green
        } else if isSelectedOption {
            return .red
        }
        return Color.gray.opacity(0.2)
    }

    private func buttonTextColor(for title: String, themeColor: Color) -> Color {
        guard hasAnswered else {
            return themeColor
        }
        
        let isCorrectOption = title == item.correctAnswer
        let isSelectedOption = title == selectedAnswer
        
        if isCorrectOption || isSelectedOption {
            return .white
        }
        return .secondary
    }

    private func buttonIconName(for title: String) -> String {
        let isCorrectOption = title == item.correctAnswer
        return isCorrectOption ? "checkmark.circle.fill" : "xmark.circle.fill"
    }

    private func buttonOpacity(for title: String) -> Double {
        guard hasAnswered else { return 1.0 }
        let isCorrectOption = title == item.correctAnswer
        let isSelectedOption = title == selectedAnswer
        
        if isCorrectOption || isSelectedOption {
            return 1.0
        }
        return 0.4 // Fade out unselected incorrect buttons slightly
    }
}
