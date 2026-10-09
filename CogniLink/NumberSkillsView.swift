#if os(iOS)
import SwiftUI

/// F4 — Number skills: hear a time, price, phone number, date or count, then
/// pick it from choices or type it. Questions are generated on the fly; when
/// the app language has no system voice the number is shown instead and the
/// task becomes "find / type the number shown" (never a silent dead end).
struct NumberSkillsView: View {
    private enum Mode: Hashable { case pick, type }
    private enum Phase { case setup, question, finished }

    @ObservedObject private var languageManager = LanguageManager.shared
    @ObservedObject private var settings = PracticeSupportSettings.shared
    @Environment(\.dismiss) private var dismiss

    @State private var category: NumberCategory? = nil   // nil = mixed
    @State private var mode: Mode = .pick
    @State private var phase: Phase = .setup

    @State private var questions: [NumberQuestion] = []
    @State private var optionSets: [[String]] = []
    @State private var index = 0
    @State private var score = 0
    @State private var picked: String? = nil
    @State private var typed = ""
    @State private var checked = false
    @State private var wasCorrect = false
    @State private var hasPlayed = false

    @FocusState private var typingFocused: Bool

    private let sessionLength = 5

    private var language: AppLanguage { languageManager.currentLanguage }
    private var canSpeak: Bool { SpeechOutput.voiceAvailable(for: language) }
    private var locale: Locale {
        Locale(identifier: SpeechOutput.bcp47(for: language))
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                switch phase {
                case .setup: setupView
                case .question: questionView
                case .finished: finishedView
                }
            }
            .padding()
        }
        .navigationTitle(FS.numberSkillsTitle)
        .navigationBarTitleDisplayMode(.inline)
        .appBackground()
        .onDisappear { SpeechOutput.shared.stop() }
    }

    // MARK: - Setup

    private var setupView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(canSpeak ? FS.numberSkillsSubtitle : FS.numberSkillsSubtitleRead)
                .font(.headline)
                .foregroundColor(.secondary)

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 12)], spacing: 12) {
                categoryChip(nil, FS.catMixed, "shuffle")
                categoryChip(.time, FS.catTime, "clock")
                categoryChip(.price, FS.catPrice, "dollarsign.circle")
                categoryChip(.phone, FS.catPhone, "phone")
                categoryChip(.date, FS.catDate, "calendar")
                categoryChip(.count, FS.catCount, "number")
            }

            Picker(FS.numberSkillsTitle, selection: $mode) {
                Text(canSpeak ? FS.modePick : FS.modePickRead).tag(Mode.pick)
                Text(canSpeak ? FS.modeType : FS.modeTypeRead).tag(Mode.type)
            }
            .pickerStyle(SegmentedPickerStyle())

            Button(action: startSession) {
                Text(FS.startPractice)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 54)
                    .background(Color.accentColor)
                    .cornerRadius(14)
            }
        }
    }

    private func categoryChip(_ value: NumberCategory?, _ title: String, _ symbol: String) -> some View {
        let selected = category == value
        return Button {
            category = value
        } label: {
            HStack(spacing: 8) {
                Image(systemName: selected ? "checkmark.circle.fill" : symbol)
                    .accessibilityHidden(true)
                Text(title)
                    .font(.body.weight(.semibold))
                    .multilineTextAlignment(.leading)
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 14)
            .frame(maxWidth: .infinity, minHeight: 52, alignment: .leading)
            .background(selected ? Color.accentColor.opacity(0.18) : Color.secondaryGroupedBackground)
            .foregroundColor(.primary)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(selected ? Color.accentColor : Color.gray.opacity(0.25), lineWidth: selected ? 3 : 1)
            )
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(selected ? .isSelected : [])
    }

    // MARK: - Question

    private var question: NumberQuestion { questions[index] }

    private var questionView: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("\(index + 1) / \(questions.count)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text(prompt)
                .font(.title3.weight(.bold))
                .fixedSize(horizontal: false, vertical: true)

            if canSpeak {
                Button {
                    hasPlayed = true
                    SpeechOutput.shared.speak(question.spoken, language: language)
                } label: {
                    Label(hasPlayed ? FS.playAgain : FS.listen, systemImage: "speaker.wave.2.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 56)
                        .background(Color.accentColor.opacity(0.15))
                        .cornerRadius(14)
                }
                .buttonStyle(.plain)
            } else {
                Text(question.text)
                    .font(.system(.largeTitle, design: .rounded).weight(.bold))
                    .frame(maxWidth: .infinity, minHeight: 90)
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(14)
                    .accessibilityLabel(question.text)
            }

            if mode == .pick { pickOptions } else { typeEntry }

            if checked { feedback }
        }
        .onAppear { autoSpeak() }
        .onChange(of: index) { _, _ in autoSpeak() }
    }

    private var prompt: String {
        switch (mode, canSpeak) {
        case (.pick, true): return FS.pickHeard
        case (.pick, false): return FS.pickMatch
        case (.type, true): return FS.typeHeard
        case (.type, false): return FS.typeMatch
        }
    }

    private var pickOptions: some View {
        VStack(spacing: 12) {
            ForEach(optionSets[index], id: \.self) { option in
                Button {
                    choose(option)
                } label: {
                    HStack {
                        Text(option)
                            .font(.title3.weight(.semibold))
                            .multilineTextAlignment(.leading)
                        Spacer()
                        if checked && option == question.text {
                            Image(systemName: "checkmark.circle.fill").accessibilityHidden(true)
                        } else if checked && option == picked {
                            Image(systemName: "xmark.circle.fill").accessibilityHidden(true)
                        }
                    }
                    .padding(.horizontal, 18)
                    .frame(maxWidth: .infinity, minHeight: 60, alignment: .leading)
                    .background(background(for: option))
                    .foregroundColor(.primary)
                    .cornerRadius(14)
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(checked && option == question.text ? Color.green : Color.gray.opacity(0.3),
                                    lineWidth: checked && option == question.text ? 4 : 1)
                    )
                }
                .buttonStyle(.plain)
                .disabled(checked)
            }
        }
    }

    private func background(for option: String) -> Color {
        guard checked else { return Color.secondaryGroupedBackground }
        if option == question.text { return Color.green.opacity(0.25) }
        if option == picked { return Color.red.opacity(0.2) }
        return Color.secondaryGroupedBackground
    }

    private var typeEntry: some View {
        VStack(spacing: 12) {
            TextField("", text: $typed)
                .keyboardType(.numberPad)
                .font(.system(.title, design: .rounded).weight(.semibold))
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(14)
                .focused($typingFocused)
                .disabled(checked)
                .environment(\.layoutDirection, .leftToRight)
                .accessibilityLabel(prompt)

            if !checked {
                Button(action: checkTyped) {
                    Text(FS.check)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 54)
                        .background(typed.isEmpty ? Color.gray : Color.accentColor)
                        .cornerRadius(14)
                }
                .disabled(typed.isEmpty)
            }
        }
    }

    private var feedback: some View {
        VStack(alignment: .leading, spacing: 12) {
            Label(wasCorrect ? FS.correctMsg : FS.notQuite(question.text),
                  systemImage: wasCorrect ? "checkmark.circle.fill" : "info.circle.fill")
                .font(.headline)
                .foregroundColor(.primary)
                .fixedSize(horizontal: false, vertical: true)

            Button(action: advance) {
                Text(index + 1 < questions.count ? FS.next : FS.done)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 54)
                    .background(Color.accentColor)
                    .cornerRadius(14)
            }
        }
    }

    // MARK: - Finished

    private var finishedView: some View {
        VStack(spacing: 20) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 64))
                .foregroundColor(.green)
                .accessibilityHidden(true)
            Text(FS.scoreSummary(score, questions.count))
                .font(.title2.weight(.bold))
            Button(action: { phase = .setup }) {
                Text(FS.startPractice)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 54)
                    .background(Color.accentColor)
                    .cornerRadius(14)
            }
        }
        .frame(maxWidth: .infinity)
    }

    // MARK: - Logic

    private func startSession() {
        var rng = SystemRandomNumberGenerator()
        let pool: [NumberCategory] = {
            if let c = category { return mode == .type && c == .date ? [.count] : [c] }
            return mode == .type ? [.time, .price, .phone, .count] : NumberCategory.allCases
        }()
        let phone = NumberSkillsStore.personalPhone
        var qs: [NumberQuestion] = []
        var cats = pool.shuffled(using: &rng)
        for _ in 0..<sessionLength {
            if cats.isEmpty { cats = pool.shuffled(using: &rng) }
            qs.append(NumberDrillGenerator.make(cats.removeLast(), locale: locale, personalPhone: phone, using: &rng))
        }
        questions = qs
        let n = settings.answerChoiceCount
        optionSets = qs.map { NumberDrillGenerator.options(for: $0, count: n, using: &rng) }
        index = 0
        score = 0
        resetQuestionState()
        phase = .question
    }

    private func resetQuestionState() {
        picked = nil
        typed = ""
        checked = false
        wasCorrect = false
        hasPlayed = false
    }

    private func autoSpeak() {
        guard phase == .question, canSpeak else { return }
        // Small delay so the screen transition finishes before speech starts.
        let current = index
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            guard phase == .question, index == current, !checked else { return }
            hasPlayed = true
            SpeechOutput.shared.speak(question.spoken, language: language)
        }
    }

    private func choose(_ option: String) {
        guard !checked else { return }
        picked = option
        finishAnswer(correct: option == question.text)
    }

    private func checkTyped() {
        guard !checked else { return }
        finishAnswer(correct: NumberDrillGenerator.matches(typed: typed, answer: question))
    }

    private func finishAnswer(correct: Bool) {
        wasCorrect = correct
        checked = true
        typingFocused = false
        if correct { score += 1 }
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
        UIAccessibility.post(notification: .announcement,
                             argument: correct ? FS.correctMsg : FS.notQuite(question.text))
    }

    private func advance() {
        if index + 1 < questions.count {
            index += 1
            resetQuestionState()
        } else {
            UserProfileStore.shared.recordCompletion(on: Date())
            NotificationManager.shared.rescheduleAll()
            WidgetSnapshotWriter.refresh()
            phase = .finished
        }
    }
}
#endif
