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
    @State private var sessionRecorded = false
    @State private var showConfetti = false
    @State private var confettiParticles: [ConfettiParticle] = []
    
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
                GeometryReader { geo in
                    ZStack {
                        VStack(spacing: 28) {
                            Spacer()

                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.green)

                            Text(sessionCompleteText)
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.bold)

                            if score == sessionItems.count {
                                Text(perfectScoreText)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.orange)
                            }

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
                        .onAppear {
                            if !sessionRecorded {
                                recordSessionCompletion()
                                sessionRecorded = true
                            }
                            if score == sessionItems.count {
                                triggerConfetti(screenSize: geo.size)
                            }
                        }

                        // MARK: Confetti overlay — perfect score only
                        if showConfetti {
                            ZStack {
                                ForEach(confettiParticles) { particle in
                                    RoundedRectangle(cornerRadius: 2)
                                        .fill(particle.color)
                                        .frame(width: 8, height: 6)
                                        .scaleEffect(particle.scale)
                                        .rotationEffect(.degrees(particle.rotation))
                                        .position(x: particle.x, y: particle.y)
                                }
                            }
                            .ignoresSafeArea()
                            .allowsHitTesting(false)
                        }
                    }
                }
            } else {
                // MARK: - Active Exercise Screen
                let currentItem = sessionItems[currentIndex]

                VStack(spacing: 0) {
                    // MARK: Scrollable content area
                    ScrollView {
                        VStack(spacing: 20) {
                            // Progress Header (e.g. Question 1 of 5)
                            HStack {
                                Text("\(questionLabel) \(currentIndex + 1) \(ofLabel) \(sessionItems.count)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .fontWeight(.medium)

                                Spacer()
                            }

                            // Progress Bar
                            ProgressBarView(progress: CGFloat(currentIndex + 1) / CGFloat(sessionItems.count))
                                .frame(height: 8)

                            // Exercise title and instructions header
                            VStack(spacing: 4) {
                                Text(exercise.title)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                    .textCase(.uppercase)
                                    .tracking(0.5)
                                    .multilineTextAlignment(.center)
                                Text(exercise.instructions)
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(.primary)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.vertical, 8)

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
                        }
                        .padding(.horizontal)
                        .padding(.vertical)
                    }

                    // MARK: Pinned footer — never scrolls
                    VStack(spacing: 0) {
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
                        .padding(.bottom, 8)
                    }
                    .background(Color(.systemBackground))
                    .shadow(color: .black.opacity(0.06), radius: 4, x: 0, y: -2)
                }
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
    
    private var recentSessionKey: String {
        "clarity_recent_\(exercise.title)"
    }

    private func loadRecentIDs() -> Set<UUID> {
        guard let strings = UserDefaults.standard.stringArray(forKey: recentSessionKey)
        else { return [] }
        return Set(strings.compactMap { UUID(uuidString: $0) })
    }

    private func saveRecentIDs(_ items: [ExerciseItem]) {
        UserDefaults.standard.set(items.map { $0.id.uuidString }, forKey: recentSessionKey)
    }

    private func initializeSession() {
        let recentIDs = loadRecentIDs()
        let selected = exercise.randomSession(excluding: recentIDs)
        sessionItems = selected.map { item in
            ExerciseItem(id: item.id, prompt: item.prompt, options: item.options.shuffled(), correctAnswer: item.correctAnswer, explanation: item.explanation)
        }
        saveRecentIDs(sessionItems)
        currentIndex = 0
        score = 0
        isComplete = false
        currentQuestionAnswered = false
        sessionRecorded = false
        showConfetti = false
        confettiParticles = []
    }
    
    private func resetSession() {
        initializeSession()
    }
    
    private func recordSessionCompletion() {
        UserProfileStore.shared.recordCompletion(on: Date())
        ProgressTracker.markAsCompleted(exerciseTitle: exercise.title)
        var plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        plays[exercise.title] = (plays[exercise.title] ?? 0) + 1
        UserDefaults.standard.set(plays, forKey: "CogniLink_ExercisePlays")

        // Log this session for anonymous research export
        let startDate = UserProfileStore.shared.profile.startDate
        let dayOffset = Calendar.current.dateComponents([.day], from: startDate, to: Date()).day ?? 0
        let record: [String: Any] = [
            "dayOffset": dayOffset,
            "score": score,
            "total": sessionItems.count,
            "section": ResearchExportManager.string(for: exercise.section),
            "exerciseType": ResearchExportManager.string(for: exercise.type),
            "difficulty": ResearchExportManager.string(for: exercise.difficulty),
            "language": ResearchExportManager.string(for: languageManager.currentLanguage)
        ]
        ResearchExportManager.appendSessionRecord(record)
    }

    private func triggerConfetti(screenSize: CGSize) {
        let colors: [Color] = [.blue, .green, .orange, .pink, .purple, .yellow, Color(red: 0.9, green: 0.3, blue: 0.3)]
        confettiParticles = (0..<80).map { _ in
            ConfettiParticle(
                x: CGFloat.random(in: 0...screenSize.width),
                y: -20,
                color: colors.randomElement()!,
                rotation: Double.random(in: 0...360),
                scale: CGFloat.random(in: 0.5...1.5),
                velocity: CGFloat.random(in: 400...(screenSize.height + 120))
            )
        }
        showConfetti = true
        // Let initial positions render for one frame before animating
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            withAnimation(.easeIn(duration: 3.0)) {
                for i in confettiParticles.indices {
                    confettiParticles[i].y = confettiParticles[i].velocity
                    confettiParticles[i].x += CGFloat.random(in: -60...60)
                    confettiParticles[i].rotation += Double.random(in: 180...720)
                }
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            showConfetti = false
            confettiParticles = []
        }
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
    
    private var perfectScoreText: String {
        switch languageManager.currentLanguage {
        case .english: return "Perfect Score! 🎉"
        case .spanish: return "¡Puntuación Perfecta! 🎉"
        case .hindi: return "शानदार! पूरे अंक! 🎉"
        case .gujarati: return "અદ્ભુત! પૂરા ગુણ! 🎉"
        }
    }

    private var sessionCompleteText: String {
        switch languageManager.currentLanguage {
        case .english: return "Session Complete!"
        case .spanish: return "¡Sesión Completada!"
        case .hindi: return "सत्र पूर्ण!"
        case .gujarati: return "સત્ર પૂર્ણ!"
        }
    }

    private var scoreText: String {
        switch languageManager.currentLanguage {
        case .english: return "Score"
        case .spanish: return "Puntuación"
        case .hindi: return "स्कोर"
        case .gujarati: return "સ્કોર"
        }
    }

    private var newSessionButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "New Session"
        case .spanish: return "Nueva Sesión"
        case .hindi: return "नया सत्र"
        case .gujarati: return "નવું સત્ર"
        }
    }

    private var backToExercisesButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Back to Exercises"
        case .spanish: return "Volver a Ejercicios"
        case .hindi: return "अभ्यासों पर वापस जाएं"
        case .gujarati: return "કસરત પર પાછા જાઓ"
        }
    }

    private var questionLabel: String {
        switch languageManager.currentLanguage {
        case .english: return "Question"
        case .spanish: return "Pregunta"
        case .hindi: return "प्रश्न"
        case .gujarati: return "પ્રશ્ન"
        }
    }

    private var ofLabel: String {
        switch languageManager.currentLanguage {
        case .english: return "of"
        case .spanish: return "de"
        case .hindi: return "का"
        case .gujarati: return "નો"
        }
    }

    private var previousButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Previous"
        case .spanish: return "Anterior"
        case .hindi: return "पीछे"
        case .gujarati: return "પાછળ"
        }
    }

    private var skipButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Skip"
        case .spanish: return "Omitir"
        case .hindi: return "छोड़ें"
        case .gujarati: return "છોડો"
        }
    }
}

// MARK: - Confetti Particle Model
struct ConfettiParticle: Identifiable {
    let id = UUID()
    var x: CGFloat
    var y: CGFloat
    var color: Color
    var rotation: Double
    var scale: CGFloat
    var velocity: CGFloat
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
