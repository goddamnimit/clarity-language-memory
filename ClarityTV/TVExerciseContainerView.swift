#if os(tvOS)
import SwiftUI

// MARK: - TVExerciseContainerView

struct TVExerciseContainerView: View {
    let section: AppSection
    let language: AppLanguage

    @ObservedObject private var languageManager = LanguageManager.shared
    @Environment(\.dismiss) private var dismiss

    // MARK: Session state (verbatim from ExerciseContainerView)
    @State private var currentExercise: Exercise? = nil
    @State private var sessionItems: [ExerciseItem] = []
    @State private var currentIndex = 0
    @State private var score = 0
    @State private var isComplete = false
    @State private var currentQuestionAnswered = false
    @State private var sessionRecorded = false
    @State private var sessionAttempts: [[String: Any]] = []
    @State private var completionScale: CGFloat = 0.8
    @State private var completionOpacity: Double = 0
    @State private var displayedScore: Int = 0

    // MARK: tvOS-only pulse state
    @State private var dotPulse = false

    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.18).ignoresSafeArea()

            if isComplete {
                TVCompletionView(
                    score: score,
                    total: sessionItems.count,
                    displayedScore: $displayedScore,
                    completionScale: $completionScale,
                    completionOpacity: $completionOpacity,
                    onNewSession: { withAnimation { resetSession() } },
                    onDismiss: { dismiss() }
                )
            } else if let exercise = currentExercise, !sessionItems.isEmpty {
                questionView(exercise: exercise)
            } else {
                loadingView
            }
        }
        .onAppear {
            if currentExercise == nil { pickExerciseAndInit() }
            startPulse()
        }
        .onChange(of: currentIndex) {
            currentQuestionAnswered = false
            restartPulse()
        }
        .onChange(of: isComplete) {
            if isComplete, !sessionRecorded {
                recordSessionCompletion()
                sessionRecorded = true
            }
        }
    }

    // MARK: - Loading

    private var loadingView: some View {
        VStack(spacing: 20) {
            ProgressView().scaleEffect(2)
            Text("Preparing session…")
                .font(.system(size: 32))
                .foregroundColor(Color.white.opacity(0.6))
        }
        .onAppear { pickExerciseAndInit() }
    }

    // MARK: - Active Question

    @ViewBuilder
    private func questionView(exercise: Exercise) -> some View {
        let currentItem = sessionItems[currentIndex]

        VStack(spacing: 0) {
            // Top bar: progress dots (left) + score (right)
            HStack(alignment: .center) {
                progressDots
                Spacer()
                scoreLabel
            }
            .padding(.horizontal, 80)
            .padding(.top, 60)
            .padding(.bottom, 40)

            // Exercise title + instructions
            VStack(spacing: 10) {
                Text(exercise.title)
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(Color.white.opacity(0.45))
                    .textCase(.uppercase)
                    .tracking(1)
                    .multilineTextAlignment(.center)

                Text(exercise.instructions)
                    .font(.system(size: 36, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 100)
            }
            .padding(.bottom, 40)

            // Exercise type dispatch
            Group {
                switch exercise.type {
                case .multipleChoice, .sentenceCompletion, .analogyChoice,
                     .homonym, .yesNo, .factOrOpinion, .matching:
                    TVMultipleChoiceView(item: currentItem, onAnswered: handleAnswer)
                case .categoryCrossOut:
                    TVCategoryCrossOutView(item: currentItem, onAnswered: handleAnswer)
                case .sequencing:
                    TVSequencingView(item: currentItem, onAnswered: handleAnswer)
                case .openEnded:
                    TVOpenEndedView(item: currentItem, onAnswered: handleAnswer)
                }
            }
            .id(currentItem.id)
            .padding(.horizontal, 80)

            Spacer()

            // Footer: Next / Skip
            HStack {
                Spacer()
                Button(action: { advanceToNext() }) {
                    TVNextButton(
                        label: currentQuestionAnswered ? "Next Question →" : "Skip →",
                        isPrimary: currentQuestionAnswered
                    )
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal, 80)
            .padding(.bottom, 60)
        }
    }

    // MARK: - Progress Dots

    private var progressDots: some View {
        HStack(spacing: 32) {
            ForEach(0..<max(sessionItems.count, 1), id: \.self) { idx in
                Circle()
                    .fill(idx < currentIndex ? Color.white : Color.clear)
                    .overlay(
                        Circle()
                            .stroke(
                                idx <= currentIndex ? Color.white : Color.white.opacity(0.25),
                                lineWidth: idx == currentIndex ? 3 : 1.5
                            )
                    )
                    .frame(width: 20, height: 20)
                    .scaleEffect(idx == currentIndex && dotPulse ? 1.25 : 1.0)
                    .animation(
                        idx == currentIndex
                            ? .easeInOut(duration: 0.75).repeatForever(autoreverses: true)
                            : .easeInOut(duration: 0.15),
                        value: dotPulse
                    )
            }
        }
    }

    // MARK: - Score Label

    private var scoreLabel: some View {
        Text("Score: \(score)/\(sessionItems.count)")
            .font(.system(size: 36, weight: .medium, design: .rounded))
            .foregroundColor(.white)
    }

    // MARK: - Pulse Helpers

    private func startPulse() {
        dotPulse = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation(.easeInOut(duration: 0.75).repeatForever(autoreverses: true)) {
                dotPulse = true
            }
        }
    }

    private func restartPulse() {
        dotPulse = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            withAnimation(.easeInOut(duration: 0.75).repeatForever(autoreverses: true)) {
                dotPulse = true
            }
        }
    }

    // MARK: - Session Logic (verbatim from ExerciseContainerView)

    private func loadRecentIDs(for exercise: Exercise) -> Set<UUID> {
        let key = "clarity_recent_\(exercise.title)"
        guard let strings = UserDefaults.standard.stringArray(forKey: key)
        else { return [] }
        return Set(strings.compactMap { UUID(uuidString: $0) })
    }

    private func saveRecentIDs(_ items: [ExerciseItem], for exercise: Exercise) {
        let key = "clarity_recent_\(exercise.title)"
        UserDefaults.standard.set(items.map { $0.id.uuidString }, forKey: key)
    }

    private func pickExerciseAndInit() {
        let exercises = languageManager.exercisesForSection(section)
        guard let picked = exercises.randomElement() else { return }
        currentExercise = picked
        initializeSession(exercise: picked)
    }

    private func initializeSession(exercise: Exercise) {
        let recentIDs = loadRecentIDs(for: exercise)
        let selected = exercise.randomSession(excluding: recentIDs)
        sessionItems = selected.map { item in
            ExerciseItem(
                id: item.id,
                prompt: item.prompt,
                options: item.options.shuffled(),
                correctAnswer: item.correctAnswer,
                explanation: item.explanation
            )
        }
        saveRecentIDs(sessionItems, for: exercise)
        currentIndex = 0
        score = 0
        isComplete = false
        currentQuestionAnswered = false
        sessionRecorded = false
        sessionAttempts = []
        completionScale = 0.8
        completionOpacity = 0
        displayedScore = 0
    }

    private func resetSession() {
        guard let exercise = currentExercise else { return }
        initializeSession(exercise: exercise)
    }

    private func recordSessionCompletion() {
        guard let exercise = currentExercise else { return }
        UserProfileStore.shared.recordCompletion(on: Date())
        ProgressTracker.markAsCompleted(exerciseTitle: exercise.title)
        var plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        plays[exercise.title] = (plays[exercise.title] ?? 0) + 1
        UserDefaults.standard.set(plays, forKey: "CogniLink_ExercisePlays")

        let totalAttempts = sessionAttempts.count
        let wrongAttempts = sessionAttempts.filter { ($0["correct"] as? Bool) == false }.count
        let firstTryCorrect = sessionItems.indices.filter { idx in
            let attemptsForItem = sessionAttempts.filter { ($0["itemIndex"] as? Int) == idx }
            return attemptsForItem.first.flatMap { $0["correct"] as? Bool } == true
        }.count

        let startDate = UserProfileStore.shared.profile.startDate
        let dayOffset = Calendar.current.dateComponents([.day], from: startDate, to: Date()).day ?? 0
        let record: [String: Any] = [
            "dayOffset": dayOffset,
            "score": score,
            "total": sessionItems.count,
            "totalAttempts": totalAttempts,
            "wrongAttempts": wrongAttempts,
            "firstTryCorrect": firstTryCorrect,
            "section": ResearchExportManager.string(for: exercise.section),
            "exerciseType": ResearchExportManager.string(for: exercise.type),
            "difficulty": ResearchExportManager.string(for: exercise.difficulty),
            "language": ResearchExportManager.string(for: languageManager.currentLanguage)
        ]
        ResearchExportManager.appendSessionRecord(record)
    }

    private func attemptsForCurrentItem() -> Int {
        sessionAttempts.filter { ($0["itemIndex"] as? Int) == currentIndex }.count + 1
    }

    private func handleAnswer(_ correct: Bool) {
        let attempt: [String: Any] = [
            "itemIndex": currentIndex,
            "correct": correct,
            "attemptNumber": attemptsForCurrentItem()
        ]
        sessionAttempts.append(attempt)
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
}

// MARK: - TVNextButton

private struct TVNextButton: View {
    let label: String
    let isPrimary: Bool
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text(label)
            .font(.system(size: 32, weight: .semibold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 48)
            .padding(.vertical, 20)
            .background(
                RoundedRectangle(cornerRadius: 16).fill(
                    isPrimary
                        ? (isFocused ? Color.blue : Color.blue.opacity(0.7))
                        : (isFocused ? Color.white.opacity(0.25) : Color.white.opacity(0.1))
                )
            )
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white.opacity(isPrimary ? 0 : 0.3), lineWidth: 1.5)
            )
            .scaleEffect(isFocused ? 1.08 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVCompletionView

struct TVCompletionView: View {
    let score: Int
    let total: Int
    @Binding var displayedScore: Int
    @Binding var completionScale: CGFloat
    @Binding var completionOpacity: Double
    let onNewSession: () -> Void
    let onDismiss: () -> Void

    @ObservedObject private var languageManager = LanguageManager.shared

    var body: some View {
        VStack(spacing: 40) {
            Spacer()

            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 120))
                .foregroundColor(.green)

            Text(sessionCompleteText)
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            if let praise = praiseText {
                Text(praise)
                    .font(.system(size: 48, weight: .bold))
                    .foregroundColor(.orange)
            }

            Text("Score: \(displayedScore) / \(total)")
                .font(.system(size: 48, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                .padding(.horizontal, 48)
                .padding(.vertical, 24)
                .background(Color.white.opacity(0.1))
                .cornerRadius(20)

            Spacer()

            HStack(spacing: 40) {
                Button(action: onNewSession) {
                    TVCompletionButton(label: newSessionText, isPrimary: true)
                }
                .buttonStyle(.plain)

                Button(action: onDismiss) {
                    TVCompletionButton(label: backText, isPrimary: false)
                }
                .buttonStyle(.plain)
            }
            .padding(.bottom, 80)
        }
        .scaleEffect(completionScale)
        .opacity(completionOpacity)
        .onAppear {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                completionScale = 1.0
                completionOpacity = 1.0
            }
            for i in 0...max(score, 0) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 + Double(i) * 0.15) {
                    withAnimation(.spring()) { displayedScore = i }
                }
            }
        }
    }

    private var praiseText: String? {
        switch score {
        case total:             return perfectScoreText
        case total - 1:        return "Almost perfect! 🌟"
        case total - 2 where total >= 4: return "Great effort! 💪"
        default:               return nil
        }
    }

    private var perfectScoreText: String {
        switch languageManager.currentLanguage {
        case .english:  return "Perfect Score! 🎉"
        case .spanish:  return "¡Puntuación Perfecta! 🎉"
        case .hindi:    return "शानदार! पूरे अंक! 🎉"
        case .gujarati: return "અદ્ભુત! પૂરા ગુણ! 🎉"
        case .chinese:  return "太棒了！满分！🎉"
        case .farsi:    return "عالی! نمره کامل! 🎉"
        }
    }

    private var sessionCompleteText: String {
        switch languageManager.currentLanguage {
        case .english:  return "Session Complete!"
        case .spanish:  return "¡Sesión Completada!"
        case .hindi:    return "सत्र पूर्ण!"
        case .gujarati: return "સત્ર પૂર્ણ!"
        case .chinese:  return "练习完成！"
        case .farsi:    return "تمرین کامل شد!"
        }
    }

    private var newSessionText: String {
        switch languageManager.currentLanguage {
        case .english:  return "New Session"
        case .spanish:  return "Nueva Sesión"
        case .hindi:    return "नया सत्र"
        case .gujarati: return "નવું સત્ર"
        case .chinese:  return "新练习"
        case .farsi:    return "تمرین جدید"
        }
    }

    private var backText: String {
        switch languageManager.currentLanguage {
        case .english:  return "Back to Home"
        case .spanish:  return "Volver al Inicio"
        case .hindi:    return "मुख्य पर वापस"
        case .gujarati: return "ઘर પर पाछा"
        case .chinese:  return "返回主页"
        case .farsi:    return "بازگشت به خانه"
        }
    }
}

private struct TVCompletionButton: View {
    let label: String
    let isPrimary: Bool
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text(label)
            .font(.system(size: 36, weight: .semibold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 60)
            .padding(.vertical, 24)
            .background(
                RoundedRectangle(cornerRadius: 16).fill(
                    isPrimary
                        ? (isFocused ? Color.blue : Color.blue.opacity(0.75))
                        : (isFocused ? Color.white.opacity(0.25) : Color.white.opacity(0.1))
                )
            )
            .scaleEffect(isFocused ? 1.08 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - Exercise View Stubs (replace progressively)

struct TVMultipleChoiceView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    var body: some View {
        Text("Multiple Choice — Coming Soon")
            .font(.system(size: 40, weight: .medium, design: .rounded))
            .foregroundColor(Color.white.opacity(0.6))
    }
}

struct TVCategoryCrossOutView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    var body: some View {
        Text("Category Cross-Out — Coming Soon")
            .font(.system(size: 40, weight: .medium, design: .rounded))
            .foregroundColor(Color.white.opacity(0.6))
    }
}

struct TVSequencingView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    var body: some View {
        Text("Sequencing — Coming Soon")
            .font(.system(size: 40, weight: .medium, design: .rounded))
            .foregroundColor(Color.white.opacity(0.6))
    }
}

struct TVOpenEndedView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    var body: some View {
        Text("Open Ended — Coming Soon")
            .font(.system(size: 40, weight: .medium, design: .rounded))
            .foregroundColor(Color.white.opacity(0.6))
    }
}
#endif
