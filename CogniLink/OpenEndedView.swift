import SwiftUI

/// An interactive input screen designed for cognitive reflection, typing, and self-assessment.
struct OpenEndedView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var userInput = ""
    @State private var isAnswerVisible = false
    @State private var hasCalledOnAnswered = false

    @FocusState private var isInputActive: Bool
    @ObservedObject private var languageManager = LanguageManager.shared

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Large question prompt text at top
            Text(item.prompt)
                .font(.title3) // Highly legible font
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)

            // Multiline text editor with placeholder overlay
            ZStack(alignment: .topLeading) {
                if userInput.isEmpty {
                    Text("Type your answer here...")
                        .font(.body) // 17pt minimum size
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .allowsHitTesting(false) // Directs keyboard focus taps to the underlying editor
                }

                // FIXED: Used a custom Binding to capture typing, removing the deprecated .onChange modifier entirely
                TextEditor(text: Binding(
                    get: { userInput },
                    set: { newValue in
                        userInput = newValue
                        handleTyping()
                    }
                ))
                .font(.body)
                .padding(8)
                .frame(minHeight: 120) // 120pt minimum height requirement
                .background(Color(.systemBackground))
                .cornerRadius(12)
                .focused($isInputActive)
                .environment(\.locale,
                    Locale(identifier: languageManager.currentLanguage.localeIdentifier))
            }
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1.5)
            )

            // Action Row: Clear and Show Answer Buttons
            HStack(spacing: 16) {
                // Clear Response Button
                Button(action: {
                    userInput = ""
                }) {
                    HStack {
                        Image(systemName: "trash")
                        Text("Clear")
                    }
                    .font(.headline)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50) // High visibility target
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(16)
                }
                .buttonStyle(PlainButtonStyle())

                // Show Answer button is hidden if there is no hardcoded model answer
                if !item.correctAnswer.isEmpty {
                    Button(action: {
                        isAnswerVisible.toggle()
                        triggerOnAnswered()
                    }) {
                        HStack {
                            Image(systemName: isAnswerVisible ? "eye.slash" : "eye")
                            Text(isAnswerVisible ? "Hide Answer" : "Show Answer")
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .cornerRadius(16)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }

            // Model Answer revealed in a green card below
            if isAnswerVisible && !item.correctAnswer.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "checkmark.shield.fill")
                            .foregroundColor(.green)
                        Text("Model Answer")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                    
                    Text(item.correctAnswer)
                        .font(.body)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green.opacity(0.08))
                .cornerRadius(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.green, lineWidth: 1.5)
                )
                .transition(.opacity) // Smooth fade entry
            }
        }
        .padding(20)
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        // Keyboard Tool bar addition: Dismiss key
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    isInputActive = false
                }
            }
        }
    }

    // MARK: - Logic and Helper Functions

    private func handleTyping() {
        // If there is no right answer, typing any character registers as attempting the task
        if item.correctAnswer.isEmpty && !hasCalledOnAnswered {
            triggerOnAnswered()
        }
    }

    private func triggerOnAnswered() {
        guard !hasCalledOnAnswered else { return }
        hasCalledOnAnswered = true
        onAnswered(true) // Register completion hook
    }
}

