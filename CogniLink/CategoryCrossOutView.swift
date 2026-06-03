import SwiftUI

/// An interactive word sorting game to cross out semantic outliers with randomized card grids.
struct CategoryCrossOutView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var selectedWord: String? = nil
    @State private var hasAnswered = false
    @State private var answeredCorrectly = false
    @State private var shuffledOptions: [String] = [] // Stores the randomized grid choices

    // Balanced columns for a high-contrast 2x2 layout
    private let gridColumns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    var body: some View {
        VStack(spacing: 24) {
            // Question prompt
            Text(item.prompt)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)

            // Word cards arranged in a randomized 2x2 grid
            LazyVGrid(columns: gridColumns, spacing: 16) {
                ForEach(shuffledOptions, id: \.self) { word in
                    Button(action: {
                        selectWord(word)
                    }) {
                        HStack {
                            Spacer()
                            Text(word)
                                .font(.title3) // Prominent bold text
                                .fontWeight(.bold)
                                .foregroundColor(textColor(for: word))
                                .lineLimit(1)
                                .minimumScaleFactor(0.6) // Gracefully prevents text clipping
                            Spacer()
                            
                            if hasAnswered {
                                Image(systemName: iconName(for: word))
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.horizontal, 12)
                        .frame(height: 60) // 60pt minimum height requirement
                        .background(backgroundColor(for: word))
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(borderColor(for: word), lineWidth: 3)
                        )
                    }
                    .disabled(hasAnswered) // Lock options once selected
                    .buttonStyle(PlainButtonStyle())
                    .opacity(buttonOpacity(for: word))
                }
            }

            // Explanation note revealed post-selection
            if hasAnswered && !item.explanation.isEmpty {
                Text(item.explanation)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                    .padding(.top, 8)
                    .fixedSize(horizontal: false, vertical: true)
            }

            // Try Again reset button — only after a wrong answer
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
            shuffledOptions = item.options.shuffled()
        }
    }

    // MARK: - Logic and Helper Functions

    private func selectWord(_ word: String) {
        selectedWord = word
        hasAnswered = true
        let isCorrect = isCorrectOption(word)
        answeredCorrectly = isCorrect
        onAnswered(isCorrect)
    }

    private func resetQuestion() {
        selectedWord = nil
        hasAnswered = false
        answeredCorrectly = false
    }

    // Value-based correct answer verification (independent of array indices)
    private func isCorrectOption(_ word: String) -> Bool {
        return word.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ==
               item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    private func backgroundColor(for word: String) -> Color {
        guard hasAnswered else {
            return Color(.systemBackground)
        }
        
        if isCorrectOption(word) {
            return .green
        } else if selectedWord == word {
            return .red
        }
        return Color(.systemBackground)
    }

    private func borderColor(for word: String) -> Color {
        guard hasAnswered else {
            return AppTheme.languageColor // Uses high-contrast AppTheme color before selection
        }
        
        if isCorrectOption(word) {
            return .green
        } else if selectedWord == word {
            return .red
        }
        return Color.gray.opacity(0.2)
    }

    private func textColor(for word: String) -> Color {
        guard hasAnswered else {
            return .primary
        }
        
        if isCorrectOption(word) || selectedWord == word {
            return .white
        }
        return .secondary
    }

    private func iconName(for word: String) -> String {
        return isCorrectOption(word) ? "checkmark.circle.fill" : "xmark.circle.fill"
    }

    private func buttonOpacity(for word: String) -> Double {
        guard hasAnswered else { return 1.0 }
        if isCorrectOption(word) || selectedWord == word {
            return 1.0
        }
        return 0.4 // Fade out unselected incorrect buttons slightly
    }
}
