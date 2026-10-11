import SwiftUI
#if os(iOS)
import UIKit
#endif

/// An interactive input screen designed for cognitive reflection, typing, and self-assessment.
struct OpenEndedView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var userInput = ""
    @State private var isAnswerVisible = false
    @State private var hasCalledOnAnswered = false

    @FocusState private var isInputActive: Bool
    @ObservedObject private var languageManager = LanguageManager.shared

    #if os(iOS)
    @StateObject private var speechInput = SpeechInputManager()
    @State private var showMicPermissionAlert = false
    @State private var textBeforeDictation = ""
    #endif

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Large question prompt text at top
            Text(item.prompt)
                .font(.title3) // Highly legible font
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)

            #if os(iOS)
            // Multiline text editor with placeholder overlay
            ZStack(alignment: .topLeading) {
                if userInput.isEmpty {
                    Text(XS.typeYourAnswer.text)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .allowsHitTesting(false)
                }

                TextEditor(text: Binding(
                    get: { userInput },
                    set: { newValue in
                        userInput = newValue
                        handleTyping()
                    }
                ))
                .font(.body)
                .padding(8)
                .frame(minHeight: 120)
                .background(Color.systemBackground)
                .cornerRadius(12)
                .focused($isInputActive)
                .environment(\.locale,
                    Locale(identifier: languageManager.currentLanguage.localeIdentifier))
            }
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1.5)
            )

            if isSpeechAvailableForCurrentLanguage {
                Button(action: toggleDictation) {
                    HStack {
                        Image(systemName: speechInput.isRecording ? "mic.fill" : "mic")
                        Text(speechInput.isRecording ? XS.listeningTapToStop.text : XS.speakYourAnswer.text)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 50)
                    .background(speechInput.isRecording ? Color.red : Color.blue)
                    .cornerRadius(16)
                }
                .buttonStyle(PlainButtonStyle())
            } else {
                Text(XS.voiceUnavailable.text)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            #else
            Text(XS.textInputUnavailable.text)
                .font(.body)
                .foregroundColor(.secondary)
                .frame(minHeight: 80)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1.5)
                )
            #endif

            // Action Row: Clear and Show Answer Buttons
            HStack(spacing: 16) {
                // Clear Response Button
                Button(action: {
                    userInput = ""
                }) {
                    HStack {
                        Image(systemName: "trash")
                        Text(XS.clear.text)
                    }
                    .font(.headline)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 50) // High visibility target
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(16)
                }
                .buttonStyle(PlainButtonStyle())
                .accessibilityLabel(XS.clear.text)

                // Show Answer button is hidden if there is no hardcoded model answer
                if !item.correctAnswer.isEmpty {
                    Button(action: {
                        isAnswerVisible.toggle()
                        triggerOnAnswered()
                    }) {
                        HStack {
                            Image(systemName: isAnswerVisible ? "eye.slash" : "eye")
                            Text(isAnswerVisible ? XS.hideAnswer.text : XS.showAnswer.text)
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 50)
                        .background(Color.blue)
                        .cornerRadius(16)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .accessibilityLabel(isAnswerVisible ? XS.hideAnswer.text : XS.showAnswer.text)
                }
            }

            // Model Answer revealed in a green card below
            if isAnswerVisible && !item.correctAnswer.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "checkmark.shield.fill")
                            .foregroundColor(.green)
                            .accessibilityHidden(true)
                        Text(XS.modelAnswer.text)
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
                .accessibilityElement(children: .combine)
                .transition(.opacity) // Smooth fade entry
            }
        }
        .padding(20)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
        // Keyboard Tool bar addition: Dismiss key
        #if os(iOS)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button(XS.done.text) {
                    isInputActive = false
                }
            }
        }
        .onChange(of: speechInput.transcribedText) { _, newValue in
            guard speechInput.isRecording else { return }
            let separator = textBeforeDictation.isEmpty ? "" : " "
            userInput = textBeforeDictation + separator + newValue
            handleTyping()
        }
        .onDisappear {
            speechInput.stop()
        }
        .alert(XS.micAccessTitle.text, isPresented: $showMicPermissionAlert) {
            Button(XS.openSettings.text) {
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
            }
            Button(XS.notNow.text, role: .cancel) {}
        } message: {
            Text(XS.micAccessMessage.text)
        }
        #endif
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

    #if os(iOS)
    private var isSpeechAvailableForCurrentLanguage: Bool {
        SpeechInputManager.isRecognitionAvailable(
            forLocaleIdentifier: languageManager.currentLanguage.localeIdentifier)
    }

    private func toggleDictation() {
        if speechInput.isRecording {
            speechInput.stop()
            return
        }

        textBeforeDictation = userInput
        speechInput.requestAuthorization { granted in
            if granted {
                speechInput.start(locale: languageManager.currentLanguage.localeIdentifier)
            } else {
                showMicPermissionAlert = true
            }
        }
    }
    #endif
}

