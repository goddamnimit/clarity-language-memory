#if os(iOS)
import SwiftUI

/// F8 — paragraph reading with supports. English content only (see
/// ReadingPassageData); callers hide the entry point in other languages.
struct ReadingSupportView: View {
    private enum Phase: Equatable { case list, reading, question, rating, summary }

    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var phase: Phase = .list
    @State private var passage: ReadingPassage?
    @State private var qIndex = 0
    @State private var options: [(text: String, isCorrect: Bool)] = []
    @State private var wrongPicks = Set<String>()
    @State private var answered = false
    @State private var showPassage = false
    @State private var hintShown = false

    // Per-passage tallies
    @State private var onOwn = 0          // right on the first try, no hint
    @State private var withHint = 0       // used the hint
    @State private var retried = 0        // needed more than one try, no hint
    @State private var hintedThisQuestion = false
    @State private var rating: Int?

    private var voiceOK: Bool { SpeechOutput.voiceAvailable(for: languageManager.currentLanguage) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                switch phase {
                case .list: listView
                case .reading: readingView
                case .question: questionView
                case .rating: ratingView
                case .summary: summaryView
                }
            }
            .padding()
        }
        .navigationTitle("Reading Passages")
        .navigationBarTitleDisplayMode(.inline)
        .appBackground()
        .onDisappear { SpeechOutput.shared.stop() }
    }

    // MARK: - List

    private var listView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Read a short passage, then answer questions. You can listen, look back, or ask for a hint.")
                .font(.headline)
                .foregroundColor(.secondary)
            ForEach(1...3, id: \.self) { level in
                Text("Level \(level)")
                    .font(.title3.weight(.bold))
                    .accessibilityAddTraits(.isHeader)
                ForEach(ReadingPassageData.all.filter { $0.level == level }) { p in
                    Button { begin(p) } label: {
                        HStack {
                            Image(systemName: icon(for: p.kind)).accessibilityHidden(true)
                            Text(p.title)
                                .font(.body.weight(.semibold))
                                .multilineTextAlignment(.leading)
                            Spacer()
                            Image(systemName: "chevron.right").foregroundColor(.secondary).accessibilityHidden(true)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 56, alignment: .leading)
                        .background(Color.secondaryGroupedBackground)
                        .foregroundColor(.primary)
                        .cornerRadius(14)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }

    private func icon(for kind: ReadingPassage.Kind) -> String {
        switch kind {
        case .story: return "book"
        case .card: return "calendar"
        case .menu: return "fork.knife"
        case .label: return "pills"
        case .notice: return "megaphone"
        case .instructions: return "list.number"
        case .note: return "envelope"
        }
    }

    // MARK: - Reading

    private var readingView: some View {
        VStack(alignment: .leading, spacing: 16) {
            if let passage {
                Text(passage.title).font(.title2.weight(.bold))
                passageView(passage, highlight: [])
                if voiceOK {
                    Button {
                        SpeechOutput.shared.speak(passage.fullText, language: languageManager.currentLanguage)
                    } label: {
                        Label("Read aloud", systemImage: "speaker.wave.2.fill")
                            .font(.headline)
                            .frame(maxWidth: .infinity, minHeight: 54)
                            .background(Color.accentColor.opacity(0.15))
                            .cornerRadius(14)
                    }
                    .buttonStyle(.plain)
                }
                primaryButton("Continue to the questions") {
                    SpeechOutput.shared.stop()
                    startQuestions()
                }
            }
        }
    }

    // MARK: - Questions

    private var questionView: some View {
        VStack(alignment: .leading, spacing: 16) {
            if let passage {
                Text("Question \(qIndex + 1) of \(passage.questions.count)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                let q = passage.questions[qIndex]
                Text(q.prompt).font(.title3.weight(.bold)).fixedSize(horizontal: false, vertical: true)

                if showPassage || hintShown {
                    passageView(passage, highlight: hintShown ? Set(q.evidence) : [])
                }

                ForEach(options, id: \.text) { option in
                    optionButton(option)
                }

                HStack(spacing: 12) {
                    Button {
                        showPassage.toggle()
                    } label: {
                        Label(showPassage ? "Hide the passage" : "Look back at the passage", systemImage: "text.book.closed")
                            .font(.subheadline.weight(.semibold))
                            .frame(minHeight: 44)
                    }
                    Spacer()
                    if !answered {
                        Button {
                            hintShown = true
                            hintedThisQuestion = true
                            UIAccessibility.post(notification: .announcement,
                                                 argument: "Hint: " + q.evidence.map { passage.sentences[$0] }.joined(separator: " "))
                        } label: {
                            Label("Hint", systemImage: "lightbulb")
                                .font(.subheadline.weight(.semibold))
                                .frame(minHeight: 44)
                        }
                        .disabled(hintShown)
                    }
                }

                if answered {
                    Label("Correct", systemImage: "checkmark.circle.fill")
                        .font(.headline)
                    primaryButton(qIndex + 1 < passage.questions.count ? "Next question" : "Continue") {
                        nextQuestion()
                    }
                }
            }
        }
    }

    private func optionButton(_ option: (text: String, isCorrect: Bool)) -> some View {
        let wrong = wrongPicks.contains(option.text)
        let right = answered && option.isCorrect
        return Button { choose(option) } label: {
            HStack {
                Text(option.text)
                    .font(.title3.weight(.semibold))
                    .multilineTextAlignment(.leading)
                Spacer()
                if right { Image(systemName: "checkmark.circle.fill").accessibilityHidden(true) }
                if wrong { Image(systemName: "xmark.circle").accessibilityHidden(true) }
            }
            .padding(.horizontal, 18)
            .frame(maxWidth: .infinity, minHeight: 60, alignment: .leading)
            .background(right ? Color.green.opacity(0.25) : Color.secondaryGroupedBackground)
            .foregroundColor(wrong ? .secondary : .primary)
            .cornerRadius(14)
            .overlay(RoundedRectangle(cornerRadius: 14)
                .stroke(right ? Color.green : Color.gray.opacity(0.3), lineWidth: right ? 4 : 1))
            .opacity(wrong ? 0.55 : 1)
        }
        .buttonStyle(.plain)
        .disabled(answered || wrong)
        .accessibilityLabel(wrong ? "\(option.text), not correct" : option.text)
    }

    // MARK: - Rating & summary

    private var ratingView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("How well did you understand this passage?").font(.title3.weight(.bold))
            ratingButton(1, "Not much", "circle")
            ratingButton(2, "Some of it", "circle.lefthalf.filled")
            ratingButton(3, "Most of it", "circle.fill")
        }
    }

    private func ratingButton(_ value: Int, _ title: String, _ symbol: String) -> some View {
        Button {
            rating = value
            saveRating(value)
            finishPassage()
        } label: {
            Label(title, systemImage: symbol)
                .font(.headline)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, minHeight: 58, alignment: .leading)
                .background(Color.secondaryGroupedBackground)
                .foregroundColor(.primary)
                .cornerRadius(14)
        }
        .buttonStyle(.plain)
    }

    private var summaryView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 56))
                .foregroundColor(.green)
                .accessibilityHidden(true)
            Text("Passage finished").font(.title2.weight(.bold))
            summaryLine("On your own", onOwn, "star")
            summaryLine("With a hint", withHint, "lightbulb")
            summaryLine("Needed another try", retried, "arrow.clockwise")
            primaryButton("Choose another passage") { phase = .list }
        }
    }

    private func summaryLine(_ title: String, _ n: Int, _ symbol: String) -> some View {
        HStack {
            Label(title, systemImage: symbol)
            Spacer()
            Text("\(n)").font(.headline.monospacedDigit())
        }
        .padding()
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .accessibilityElement(children: .combine)
    }

    // MARK: - Pieces

    private func passageView(_ p: ReadingPassage, highlight: Set<Int>) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(Array(p.sentences.enumerated()), id: \.offset) { i, sentence in
                HStack(alignment: .top, spacing: 8) {
                    if highlight.contains(i) {
                        Image(systemName: "arrow.right.circle.fill")
                            .foregroundColor(.accentColor)
                            .accessibilityHidden(true)
                    }
                    Text(sentence)
                        .font(.title3)
                        .fontWeight(highlight.contains(i) ? .bold : .regular)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(highlight.contains(i) ? Color.accentColor.opacity(0.18) : Color.clear)
                .cornerRadius(8)
                .onTapGesture {
                    if voiceOK { SpeechOutput.shared.speak(sentence, language: languageManager.currentLanguage) }
                }
            }
        }
        .padding(8)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(14)
    }

    private func primaryButton(_ title: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 54)
                .background(Color.accentColor)
                .cornerRadius(14)
        }
    }

    // MARK: - Logic

    private func begin(_ p: ReadingPassage) {
        passage = p
        qIndex = 0
        onOwn = 0; withHint = 0; retried = 0
        phase = .reading
    }

    private func startQuestions() {
        qIndex = 0
        prepareQuestion()
        phase = .question
    }

    private func prepareQuestion() {
        guard let passage else { return }
        options = ReadingPassageData.shuffledOptions(for: passage.questions[qIndex])
        wrongPicks = []
        answered = false
        showPassage = false
        hintShown = false
        hintedThisQuestion = false
    }

    private func choose(_ option: (text: String, isCorrect: Bool)) {
        guard !answered else { return }
        if option.isCorrect {
            if hintedThisQuestion { withHint += 1 }
            else if wrongPicks.isEmpty { onOwn += 1 }
            else { retried += 1 }
            answered = true
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        } else {
            wrongPicks.insert(option.text)
            UINotificationFeedbackGenerator().notificationOccurred(.warning)
        }
    }

    private func nextQuestion() {
        guard let passage else { return }
        if qIndex + 1 < passage.questions.count {
            qIndex += 1
            prepareQuestion()
        } else {
            phase = .rating
        }
    }

    private func saveRating(_ value: Int) {
        guard let id = passage?.id else { return }
        var all = UserDefaults.standard.dictionary(forKey: "clarity_reading_ratings") as? [String: [Int]] ?? [:]
        all[id, default: []].append(value)
        UserDefaults.standard.set(all, forKey: "clarity_reading_ratings")
    }

    private func finishPassage() {
        UserProfileStore.shared.recordCompletion(on: Date())
        NotificationManager.shared.rescheduleAll()
        WidgetSnapshotWriter.refresh()
        phase = .summary
    }
}
#endif
