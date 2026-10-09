#if os(iOS)
import SwiftUI

/// F7 — partner-mode conversation cards. The partner reads (or plays) the
/// question and scores the *behaviour* (see ConversationKind.targetBehavior)
/// as yes / with help / not yet. English only; callers hide it elsewhere.
struct ConversationStartersView: View {
    private enum Phase { case setup, card, summary }
    private enum Level: Hashable { case easier, harder, mixed }
    private enum Score { case yes, help, notYet }

    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var phase: Phase = .setup
    @State private var level: Level = .easier
    @State private var typeOnly = false
    @State private var deck: [(topic: ConversationTopic, kind: ConversationKind)] = []
    @State private var index = 0
    @State private var scored: Score?
    @State private var tally: [Score: Int] = [:]

    private var voiceOK: Bool { SpeechOutput.voiceAvailable(for: languageManager.currentLanguage) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                switch phase {
                case .setup: setupView
                case .card: cardView
                case .summary: summaryView
                }
            }
            .padding()
        }
        .navigationTitle("Conversation Starters")
        .navigationBarTitleDisplayMode(.inline)
        .appBackground()
        .onDisappear { SpeechOutput.shared.stop() }
    }

    // MARK: - Setup

    private var setupView: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("For two people. One reads a card and asks the question; the other answers. Then the partner scores what they heard.")
                .font(.headline)
                .foregroundColor(.secondary)

            Picker("Question level", selection: $level) {
                Text("Easier").tag(Level.easier)
                Text("Harder").tag(Level.harder)
                Text("Mixed").tag(Level.mixed)
            }
            .pickerStyle(SegmentedPickerStyle())

            Text(levelHelp)
                .font(.subheadline)
                .foregroundColor(.secondary)

            Toggle(isOn: $typeOnly) {
                Text("Show only the question type, so the partner can ask in their own words")
                    .font(.body)
            }

            primaryButton("Start") { start() }
        }
    }

    private var levelHelp: String {
        switch level {
        case .easier: return "Describe, remember, decide, feel."
        case .harder: return "Predict, explain, evaluate, brainstorm."
        case .mixed: return "All eight question types."
        }
    }

    // MARK: - Card

    private var cardView: some View {
        let entry = deck[index]
        let kind = entry.kind
        let question = entry.topic.question(for: kind)
        return VStack(alignment: .leading, spacing: 16) {
            Text("Card \(index + 1) of \(deck.count)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            VStack(alignment: .leading, spacing: 12) {
                Text(entry.topic.title.uppercased())
                    .font(.caption.weight(.semibold))
                    .foregroundColor(.secondary)
                Label(kind.label, systemImage: kind.symbol)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                if !typeOnly {
                    Text(question)
                        .font(.title2.weight(.bold))
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.secondaryGroupedBackground)
            .cornerRadius(16)
            .accessibilityElement(children: .combine)

            if voiceOK && !typeOnly {
                Button {
                    SpeechOutput.shared.speak(question, language: languageManager.currentLanguage)
                } label: {
                    Label("Read the question aloud", systemImage: "speaker.wave.2.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity, minHeight: 52)
                        .background(Color.accentColor.opacity(0.15))
                        .cornerRadius(14)
                }
                .buttonStyle(.plain)
            }

            Text("Listen for: \(kind.targetBehavior)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            if scored == nil {
                scoreButton("Yes", "checkmark.circle", .yes)
                scoreButton("With help", "hand.raised", .help)
                scoreButton("Not yet", "circle", .notYet)
            } else {
                primaryButton(index + 1 < deck.count ? "Next card" : "Finish") { next() }
            }

            Button("Finish now") { phase = .summary }
                .font(.subheadline)
                .frame(minHeight: 44)
        }
    }

    private func scoreButton(_ title: String, _ symbol: String, _ value: Score) -> some View {
        Button {
            scored = value
            tally[value, default: 0] += 1
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        } label: {
            Label(title, systemImage: symbol)
                .font(.headline)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, minHeight: 56, alignment: .leading)
                .background(Color.secondaryGroupedBackground)
                .foregroundColor(.primary)
                .cornerRadius(14)
        }
        .buttonStyle(.plain)
    }

    // MARK: - Summary

    private var summaryView: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Session finished").font(.title2.weight(.bold))
            summaryLine("Yes", tally[.yes] ?? 0, "checkmark.circle")
            summaryLine("With help", tally[.help] ?? 0, "hand.raised")
            summaryLine("Not yet", tally[.notYet] ?? 0, "circle")
            primaryButton("New session") { phase = .setup }
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

    private func start() {
        let kinds: [ConversationKind] = {
            switch level {
            case .easier: return ConversationKind.allCases.filter { !$0.isHarder }
            case .harder: return ConversationKind.allCases.filter { $0.isHarder }
            case .mixed: return ConversationKind.allCases
            }
        }()
        deck = Self.makeDeck(kinds: kinds, count: 8)
        index = 0
        scored = nil
        tally = [:]
        phase = .card
    }

    /// Different topics where possible, kinds cycled so each appears evenly.
    static func makeDeck(kinds: [ConversationKind], count: Int) -> [(topic: ConversationTopic, kind: ConversationKind)] {
        let topics = ConversationTopicData.all.shuffled()
        let kindOrder = kinds.shuffled()
        return (0..<count).map { i in (topics[i % topics.count], kindOrder[i % kindOrder.count]) }
    }

    private func next() {
        SpeechOutput.shared.stop()
        if index + 1 < deck.count {
            index += 1
            scored = nil
        } else {
            UserProfileStore.shared.recordCompletion(on: Date())
            NotificationManager.shared.rescheduleAll()
            WidgetSnapshotWriter.refresh()
            phase = .summary
        }
    }
}
#endif
