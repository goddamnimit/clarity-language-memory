#if os(tvOS)
import SwiftUI
import AVFoundation

// MARK: - TVContainerFocus

private enum TVContainerFocus: Hashable {
    case exerciseContent
    case replay
    case next
}

// MARK: - TVExerciseContainerView

struct TVExerciseContainerView: View {
    let section: AppSection
    let language: AppLanguage
    var difficulty: Difficulty? = nil
    var questionPool: [ExerciseItem]? = nil
    var targetExercise: Exercise? = nil
    var onSessionComplete: ((Int) -> Void)? = nil

    @AppStorage("tvSpeechEnabled") private var speechEnabled: Bool = false
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
    // MARK: tvOS-only pulse state
    @State private var dotPulse = false
    // MARK: Text-to-speech
    @State private var synthesizer = AVSpeechSynthesizer()

    @FocusState private var containerFocus: TVContainerFocus?

    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()

            if isComplete && onSessionComplete == nil {
                TVCompletionView(
                    score: score,
                    total: sessionItems.count,
                    onNewSession: { withAnimation { resetSession() } },
                    onChangeActivity: { dismiss() }
                )
            } else if !isComplete, let exercise = currentExercise, !sessionItems.isEmpty {
                questionView(exercise: exercise)
            } else {
                loadingView
            }
        }
        .onAppear {
            if currentExercise == nil { pickExerciseAndInit() }
            startPulse()
            containerFocus = .exerciseContent
        }
        .onChange(of: currentIndex) {
            currentQuestionAnswered = false
            restartPulse()
            if currentIndex < sessionItems.count {
                speak(sessionItems[currentIndex].prompt)
            }
            containerFocus = .exerciseContent
        }
        .onDisappear {
            synthesizer.stopSpeaking(at: .immediate)
        }
        .onChange(of: isComplete) {
            if isComplete, !sessionRecorded {
                if let onComplete = onSessionComplete {
                    onComplete(score)
                } else {
                    recordSessionCompletion()
                }
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
                case .multipleChoice, .matching, .comparison, .minimalPairs:
                    TVMultipleChoiceView(item: currentItem, exerciseType: exercise.type, onAnswered: handleAnswer)
                case .categoryCrossOut:
                    TVCategoryCrossOutView(item: currentItem, onAnswered: handleAnswer)
                case .sentenceCompletion:
                    TVSentenceCompletionView(item: currentItem, onAnswered: handleAnswer)
                case .analogyChoice:
                    TVAnalogyChoiceView(item: currentItem, onAnswered: handleAnswer)
                case .homonym:
                    TVHomonymView(item: currentItem, onAnswered: handleAnswer)
                case .yesNo:
                    TVYesNoView(item: currentItem, onAnswered: handleAnswer)
                case .factOrOpinion:
                    TVFactOrOpinionView(item: currentItem, onAnswered: handleAnswer)
                case .sequencing:
                    TVSequencingView(item: currentItem, onAnswered: handleAnswer)
                case .openEnded:
                    TVOpenEndedView(item: currentItem, onAnswered: handleAnswer)
                }
            }
            .id(currentItem.id)
            .padding(.horizontal, 80)
            .focused($containerFocus, equals: .exerciseContent)

            // Guaranteed clearance between exercise content and the footer so
            // answer tiles can never share vertical space with Replay/Skip.
            Spacer(minLength: 32)

            // Footer: Centered Replay + Right-aligned Next / Skip
            ZStack {
                // Centered Replay Button
                Button(action: { speak(sessionItems[currentIndex].prompt) }) {
                    TVReplayButton()
                }
                .buttonStyle(.plain)
                .focused($containerFocus, equals: .replay)

                // Right-aligned Next Button
                HStack {
                    Spacer()

                    Button(action: { advanceToNext() }) {
                        TVNextButton(
                            label: currentQuestionAnswered ? "Next Question →" : "Skip →",
                            isPrimary: currentQuestionAnswered
                        )
                    }
                    .buttonStyle(.plain)
                    .focused($containerFocus, equals: .next)
                }
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
        if let target = targetExercise {
            currentExercise = target
            initializeSession(exercise: target)
            return
        }
        let exercises = languageManager.exercisesForSection(section)
        // When a pool is injected, restrict dispatch to the TVMultipleChoiceView
        // family so the exercise title/type shown always matches how items render.
        let candidates: [Exercise]
        if questionPool != nil {
            let safe = exercises.filter {
                $0.type != .openEnded && $0.type != .categoryCrossOut && $0.type != .sequencing
            }
            candidates = safe.isEmpty ? exercises.filter { $0.type != .openEnded } : safe
        } else {
            candidates = exercises.filter { $0.type != .openEnded }
        }
        let diffFiltered = difficulty == nil ? candidates : candidates.filter { $0.difficulty == difficulty }
        let pool = diffFiltered.isEmpty ? candidates : diffFiltered
        guard let picked = pool.randomElement() else { return }
        currentExercise = picked
        initializeSession(exercise: picked)
    }

    private func initializeSession(exercise: Exercise) {
        TVSequencingView.resetHint()
        if let pool = questionPool, !pool.isEmpty {
            sessionItems = pool
        } else {
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
        }
        currentIndex = 0
        score = 0
        isComplete = false
        currentQuestionAnswered = false
        sessionRecorded = false
        sessionAttempts = []
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            if !sessionItems.isEmpty { speak(sessionItems[0].prompt) }
        }
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
        containerFocus = .next
    }

    private func advanceToNext() {
        currentQuestionAnswered = false
        if currentIndex + 1 < sessionItems.count {
            withAnimation { currentIndex += 1 }
        } else {
            withAnimation { isComplete = true }
        }
    }

    // MARK: - Text-to-Speech

    private func speak(_ text: String) {
        guard speechEnabled else { return }
        synthesizer.stopSpeaking(at: .immediate)
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: speechLocale)
        utterance.rate = 0.45
        utterance.pitchMultiplier = 1.0
        synthesizer.speak(utterance)
    }

    private var speechLocale: String {
        switch languageManager.currentLanguage {
        case .english:    return "en-US"
        case .spanish:    return "es-MX"
        case .hindi:      return "hi-IN"
        case .gujarati:   return "gu-IN"
        case .chinese:    return "zh-CN"
        case .farsi:      return "fa-IR"
        case .korean:     return "ko-KR"
        case .vietnamese: return "vi-VN"
        case .arabic:     return "ar-SA"
        case .portuguese: return "pt-BR"
        case .tagalog:    return "fil-PH"
        case .punjabi:    return "pa-IN"
        case .armenian:   return "hy-AM"
        case .japanese:   return "ja-JP"
        case .french:     return "fr-FR"
        case .amharic:    return "am-ET"
        }
    }
}

// MARK: - TVReplayButton

private struct TVReplayButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "speaker.wave.2.fill")
                .font(.system(size: 28, weight: .medium))
            Text("Replay")
                .font(.system(size: 28, weight: .semibold, design: .rounded))
        }
        .foregroundColor(.white)
        .padding(.horizontal, 36)
        .padding(.vertical, 20)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(isFocused ? Color.white.opacity(0.25) : Color.white.opacity(0.1))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white.opacity(0.3), lineWidth: 1.5)
        )
        .scaleEffect(isFocused ? 1.08 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
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

#endif
