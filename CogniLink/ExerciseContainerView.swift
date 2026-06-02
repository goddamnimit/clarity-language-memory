import SwiftUI

struct ExerciseContainerView: View {
    let exercise: Exercise
    @ObservedObject var languageManager = LanguageManager.shared
    @Environment(\.dismiss) var dismiss
    
    // MARK: - State Properties
    @State private var sessionItems: [ExerciseItem] = []
    @State private var currentIndex = 0
    @State private var score = 0
    @State private var isComplete = false
    @State private var currentQuestionAnswered = false
    
    var body: some View {
        VStack {
            if sessionItems.isEmpty {
                // Loading / Initialization fallback
                VStack(spacing: 12) {
                    ProgressView()
                        .scaleEffect(1.2)
                    Text("सत्र की तैयारी हो रही है...")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                .onAppear {
                    initializeSession()
                }
            } else if isComplete {
                // MARK: - Session Complete Screen
                VStack(spacing: 28) {
                    Spacer()
                    
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.green)
                    
                    Text(sessionCompleteText)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                    
                    // Score Box using sessionItems.count (always matches sessionSize)
                    VStack(spacing: 8) {
                        Text("\(scoreText): \(score) / \(sessionItems.count)")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 16)
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1.5)
                    
                    Spacer()
                    
                    // Control Actions
                    VStack(spacing: 12) {
                        Button(action: {
                            // Generates a fresh randomized set of 5 questions
                            withAnimation {
                                resetSession()
                            }
                        }) {
                            Text(newSessionButtonText)
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(Color.accentColor)
                                .cornerRadius(12)
                        }
                        
                        Button(action: {
                            dismiss()
                        }) {
                            Text(backToExercisesButtonText)
                                .font(.headline)
                                .foregroundColor(.primary)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(Color(.secondarySystemGroupedBackground))
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                                )
                        }
                    }
                    .padding(.horizontal)
                }
                .padding()
            } else {
                // MARK: - Active Exercise Screen
                let currentItem = sessionItems[currentIndex]
                
                VStack(spacing: 20) {
                    // Progress Header (e.g. Question 1 of 5)
                    HStack {
                        Text("\(questionLabel) \(currentIndex + 1) \(ofLabel) \(sessionItems.count)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    // Progress Bar
                    ProgressBarView(progress: CGFloat(currentIndex + 1) / CGFloat(sessionItems.count))
                        .frame(height: 8)
                        .padding(.horizontal)
                    
                    // Exercise Type Dispatch
                    Group {
                        switch exercise.type {
                        case .multipleChoice, .sentenceCompletion, .homonym, .analogyChoice:
                            MultipleChoiceView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        case .categoryCrossOut:
                            CategoryCrossOutView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        case .yesNo:
                            YesNoView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        case .factOrOpinion:
                            FactOrOpinionView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        case .openEnded:
                            OpenEndedView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        case .sequencing:
                            SequencingView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        case .matching:
                            MultipleChoiceView(item: currentItem, onAnswered: { correct in handleAnswer(correct) })
                        }
                    }
                    .id(currentItem.id) // Forces full view recreation on question change, resetting all @State
                    .padding(.horizontal)

                    // LEGACY: Generic option list (kept for quick restore if needed)
                    // VStack(spacing: 12) {
                    //     ForEach(currentItem.options, id: \.self) { option in
                    //         Button(action: {
                    //             handleOptionSelected(option, item: currentItem)
                    //         }) {
                    //             Text(option)
                    //                 .font(.body)
                    //                 .frame(maxWidth: .infinity)
                    //                 .frame(minHeight: 50)
                    //                 .background(Color(.secondarySystemGroupedBackground))
                    //                 .foregroundColor(.primary)
                    //                 .cornerRadius(10)
                    //                 .padding(.horizontal)
                    //         }
                    //     }
                    // }
                    
                    // Navigation Buttons (Previous / Next)
                    HStack {
                        Button(action: {
                            if currentIndex > 0 {
                                withAnimation {
                                    currentIndex -= 1
                                }
                            }
                        }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text(previousButtonText)
                            }
                            .font(.subheadline)
                            .foregroundColor(currentIndex > 0 ? Color.accentColor : Color.secondary.opacity(0.5))
                            .frame(minWidth: 44, minHeight: 44)
                        }
                        .disabled(currentIndex == 0)
                        
                        Spacer()

                        if currentQuestionAnswered {
                            Button(action: {
                                advanceToNext()
                            }) {
                                Text("Next Question →")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50)
                                    .background(Color.blue)
                                    .cornerRadius(12)
                            }
                        } else {
                            Button(action: {
                                advanceToNext()
                            }) {
                                HStack {
                                    Text(skipButtonText)
                                    Image(systemName: "chevron.right")
                                }
                                .font(.subheadline)
                                .foregroundColor(Color.accentColor)
                                .frame(minWidth: 44, minHeight: 44)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
                .padding(.vertical)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground))
        .onAppear {
            if sessionItems.isEmpty {
                initializeSession()
            }
        }
        .onChange(of: currentIndex) {
            currentQuestionAnswered = false
        }
    }
    
    // MARK: - Core Logic Helpers
    
    private func initializeSession() {
        sessionItems = exercise.randomSession().map { item in
            ExerciseItem(id: item.id, prompt: item.prompt, options: item.options.shuffled(), correctAnswer: item.correctAnswer, explanation: item.explanation)
        }
        currentIndex = 0
        score = 0
        isComplete = false
        currentQuestionAnswered = false
    }
    
    private func resetSession() {
        initializeSession()
    }
    
    private func handleAnswer(_ correct: Bool) {
        if correct {
            score += 1
            currentQuestionAnswered = true
        }
    }

    private func advanceToNext() {
        currentQuestionAnswered = false
        if currentIndex + 1 < sessionItems.count {
            withAnimation { currentIndex += 1 }
        } else {
            withAnimation { isComplete = true }
        }
    }

    private func handleOptionSelected(_ selected: String, item: ExerciseItem) {
        if selected == item.correctAnswer {
            score += 1
        }
        
        // Progress evaluation
        if currentIndex + 1 < sessionItems.count {
            withAnimation {
                currentIndex += 1
            }
        } else {
            withAnimation {
                isComplete = true
            }
        }
    }
    
    // MARK: - Localized Properties
    
    private var sessionCompleteText: String {
        switch languageManager.currentLanguage {
        case .english: return "Session Complete!"
        case .spanish: return "¡Sesión Completada!"
        case .hindi: return "सत्र पूर्ण!"
        }
    }
    
    private var scoreText: String {
        switch languageManager.currentLanguage {
        case .english: return "Score"
        case .spanish: return "Puntuación"
        case .hindi: return "स्कोर"
        }
    }
    
    private var newSessionButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "New Session"
        case .spanish: return "Nueva Sesión"
        case .hindi: return "नया सत्र"
        }
    }
    
    private var backToExercisesButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Back to Exercises"
        case .spanish: return "Volver a Ejercicios"
        case .hindi: return "अभ्यासों पर वापस जाएं"
        }
    }
    
    private var questionLabel: String {
        switch languageManager.currentLanguage {
        case .english: return "Question"
        case .spanish: return "Pregunta"
        case .hindi: return "प्रश्न"
        }
    }
    
    private var ofLabel: String {
        switch languageManager.currentLanguage {
        case .english: return "of"
        case .spanish: return "de"
        case .hindi: return "का"
        }
    }
    
    private var previousButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Previous"
        case .spanish: return "Anterior"
        case .hindi: return "पीछे"
        }
    }
    
    private var skipButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Skip"
        case .spanish: return "Omitir"
        case .hindi: return "छोड़ें"
        }
    }
}

// MARK: - Inline ProgressBarView Helper
struct ProgressBarView: View {
    var progress: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.secondary.opacity(0.15))
                
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.accentColor)
                    .frame(width: geometry.size.width * min(max(progress, 0.0), 1.0))
                    .animation(.linear, value: progress)
            }
        }
    }
}
