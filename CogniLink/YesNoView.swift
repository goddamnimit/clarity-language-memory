import SwiftUI

/// A dedicated yes-or-no binary decision interface with randomized button side-swapping.
struct YesNoView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @ObservedObject private var languageManager = LanguageManager.shared
    
    @State private var selectedAnswer: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var yesOnLeft = true // Controls which side the "Yes" button is displayed on

    // Dynamically localizes the button labels based on active language
    private var yesTitle: String {
        languageManager.currentLanguage == .english ? "Yes" : "Sí"
    }

    private var noTitle: String {
        languageManager.currentLanguage == .english ? "No" : "No"
    }

    var body: some View {
        VStack(spacing: 24) {
            // Large centered question prompt text
            Text(item.prompt)
                .font(.title2) // Large font size
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
                .fixedSize(horizontal: false, vertical: true)

            // Side-by-side YES and NO buttons
            HStack(spacing: 16) {
                // Displays the buttons dynamically based on yesOnLeft boolean state
                if yesOnLeft {
                    yesNoButton(title: yesTitle, themeColor: .green)
                    yesNoButton(title: noTitle, themeColor: .red)
                } else {
                    yesNoButton(title: noTitle, themeColor: .red)
                    yesNoButton(title: yesTitle, themeColor: .green)
                }
            }

            // Explanation text shown only after answering (if available)
            if hasAnswered && !item.explanation.isEmpty {
                Text(item.explanation)
                    .font(.body) // Minimum 17pt font
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
                        Text(languageManager.currentLanguage == .english ? "Try Again" : "Intentar de Nuevo")
                    }
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50) // Accessible 50pt height
                    .background(Color.systemBackground)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.top, 8)
                }
                .buttonStyle(PlainButtonStyle())
                .tvFocusEffect()
            }
        }
        .padding(20)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        // FIXED: Only onAppear is needed because the view is fully recreated on question transitions
        .onAppear {
            yesOnLeft = Bool.random()
        }
    }

    /// Builder for the large binary choice buttons.
    @ViewBuilder
    private func yesNoButton(title: String, themeColor: Color) -> some View {
        Button(action: {
            selectAnswer(title)
        }) {
            VStack(spacing: 10) {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(buttonTextColor(for: title, themeColor: themeColor))

                if hasAnswered {
                    Image(systemName: buttonIconName(for: title))
                        .font(.title2)
                        .foregroundColor(buttonTextColor(for: title, themeColor: themeColor))
                }
            }
            .frame(maxWidth: .infinity)
            #if os(tvOS)
            .frame(minHeight: 110)
            #else
            .frame(height: 80)
            #endif
            .background(buttonBackgroundColor(for: title, themeColor: themeColor))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(buttonBorderColor(for: title, themeColor: themeColor), lineWidth: 3)
            )
        }
        .disabled(hasAnswered)
        .buttonStyle(PlainButtonStyle())
        .tvFocusEffect()
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
            return themeColor.opacity(0.12) // Low-opacity color tint before selection
        }
        
        let isCorrectOption = title == item.correctAnswer
        let isSelectedOption = title == selectedAnswer
        
        if isCorrectOption {
            return .green
        } else if isSelectedOption {
            return .red
        }
        return Color.systemBackground
    }

    private func buttonBorderColor(for title: String, themeColor: Color) -> Color {
        guard hasAnswered else {
            return themeColor // Highlighted stroke matching theme color
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
