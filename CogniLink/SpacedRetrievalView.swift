#if os(iOS)
import Combine
import SwiftUI

/// F5 — expanding-interval recall of a personal target (see SpacedRetrieval.swift).
/// Between recalls the person can do a normal exercise as the filler task.
struct SpacedRetrievalView: View {
    private enum Phase: Equatable {
        case list
        case teach(reteach: Bool)
        case waiting
        case asking
        case revealed
        case finished
    }

    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var targets = SpacedRetrievalStore.usableTargets
    @State private var active: MemoryTarget?
    @State private var scheduler = SpacedRetrievalScheduler()
    @State private var phase: Phase = .list
    @State private var dueDate = Date()
    @State private var now = Date()
    @State private var fillerExercise: Exercise?
    @State private var logged = false

    private let ticker = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    private var locale: Locale { Locale(identifier: SpeechOutput.bcp47(for: languageManager.currentLanguage)) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                switch phase {
                case .list: listView
                case .teach(let reteach): teachView(reteach: reteach)
                case .waiting: waitingView
                case .asking: askingView
                case .revealed: revealedView
                case .finished: finishedView
                }
            }
            .padding()
        }
        .navigationTitle(FS.srtTitle)
        .navigationBarTitleDisplayMode(.inline)
        .appBackground()
        .onAppear {
            targets = SpacedRetrievalStore.usableTargets
            UIApplication.shared.isIdleTimerDisabled = false
        }
        .onDisappear {
            UIApplication.shared.isIdleTimerDisabled = false
            logIfNeeded(completed: false)
        }
        .onReceive(ticker) { date in
            now = date
            if phase == .waiting && date >= dueDate { becomeDue() }
        }
        .sheet(item: $fillerExercise) { exercise in
            NavigationStack { ExerciseContainerView(exercise: exercise) }
        }
    }

    // MARK: - Screens

    private var listView: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(FS.srtSubtitle)
                .font(.headline)
                .foregroundColor(.secondary)
            if targets.isEmpty {
                Text(FS.srtNoTargets)
                    .font(.body)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
            }
            ForEach(targets) { target in
                Button { begin(target) } label: {
                    let summary = SpacedRetrievalStore.summary(for: target.id)
                    VStack(alignment: .leading, spacing: 6) {
                        Text(target.question)
                            .font(.title3.weight(.semibold))
                            .multilineTextAlignment(.leading)
                        if summary.sessions > 0 {
                            Text(FS.srtBest(durationText(summary.bestSeconds)))
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 64, alignment: .leading)
                    .background(Color.secondaryGroupedBackground)
                    .foregroundColor(.primary)
                    .cornerRadius(14)
                }
                .buttonStyle(.plain)
            }
        }
    }

    private func teachView(reteach: Bool) -> some View {
        VStack(alignment: .leading, spacing: 18) {
            if reteach { Text(FS.srtMissed).font(.headline) }
            questionText
            Text(FS.srtSayIt).font(.subheadline).foregroundColor(.secondary)
            answerText
            primaryButton(FS.srtISaidIt) { afterTeach() }
        }
    }

    private var waitingView: some View {
        let remaining = max(0, Int(dueDate.timeIntervalSince(now).rounded(.up)))
        return VStack(alignment: .leading, spacing: 18) {
            Text(FS.srtNextIn(clock(remaining)))
                .font(.system(.largeTitle, design: .rounded).weight(.bold))
                .accessibilityLabel(FS.srtNextIn(durationText(remaining)))
            Button {
                fillerExercise = randomFiller()
            } label: {
                Label(FS.srtWhileWait, systemImage: "puzzlepiece.extension")
                    .font(.headline)
                    .frame(maxWidth: .infinity, minHeight: 56)
                    .background(Color.accentColor.opacity(0.15))
                    .cornerRadius(14)
            }
            .buttonStyle(.plain)
            Button(FS.srtAskNow) { becomeDue() }
                .font(.subheadline.weight(.semibold))
                .frame(minHeight: 44)
        }
    }

    private var askingView: some View {
        VStack(alignment: .leading, spacing: 18) {
            questionText
            Text(FS.srtCanYou).font(.headline)
            primaryButton(FS.showAnswer) { phase = .revealed }
        }
    }

    private var revealedView: some View {
        VStack(alignment: .leading, spacing: 18) {
            questionText
            answerText
            primaryButton(FS.srtRemembered) { recordPass() }
            Button { recordMiss() } label: {
                Text(FS.srtNeededHelp)
                    .font(.headline)
                    .frame(maxWidth: .infinity, minHeight: 54)
                    .background(Color.secondaryGroupedBackground)
                    .foregroundColor(.primary)
                    .cornerRadius(14)
            }
            .buttonStyle(.plain)
        }
    }

    private var finishedView: some View {
        VStack(spacing: 20) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 64))
                .foregroundColor(.green)
                .accessibilityHidden(true)
            Text(FS.srtCompleted(durationText(scheduler.bestPassedSeconds)))
                .font(.title3.weight(.bold))
                .multilineTextAlignment(.center)
            primaryButton(FS.done) {
                phase = .list
                targets = SpacedRetrievalStore.usableTargets
            }
        }
        .frame(maxWidth: .infinity)
    }

    // MARK: - Pieces

    private var questionText: some View {
        Text(active?.question ?? "")
            .font(.title2.weight(.bold))
            .fixedSize(horizontal: false, vertical: true)
    }

    private var answerText: some View {
        Text(active?.answer ?? "")
            .font(.title2.weight(.semibold))
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.accentColor.opacity(0.15))
            .cornerRadius(12)
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

    // MARK: - Flow

    private func begin(_ target: MemoryTarget) {
        active = target
        scheduler = SpacedRetrievalScheduler()
        logged = false
        UIApplication.shared.isIdleTimerDisabled = true
        phase = .teach(reteach: false)
    }

    private func afterTeach() {
        schedule(after: scheduler.nextWaitSeconds)
    }

    private func schedule(after seconds: Int) {
        if seconds <= 0 {
            phase = .asking
        } else {
            dueDate = Date().addingTimeInterval(TimeInterval(seconds))
            now = Date()
            phase = .waiting
        }
    }

    private func becomeDue() {
        fillerExercise = nil
        phase = .asking
        UIAccessibility.post(notification: .screenChanged, argument: active?.question)
    }

    private func recordPass() {
        switch scheduler.recordPass() {
        case .finished:
            logIfNeeded(completed: true)
            UserProfileStore.shared.recordCompletion(on: Date())
            NotificationManager.shared.rescheduleAll()
            WidgetSnapshotWriter.refresh()
            UIApplication.shared.isIdleTimerDisabled = false
            phase = .finished
        case .waitThenAsk(let seconds):
            schedule(after: seconds)
        }
    }

    private func recordMiss() {
        _ = scheduler.recordMiss()
        phase = .teach(reteach: true)
    }

    private func logIfNeeded(completed: Bool) {
        guard let target = active, !logged, (scheduler.bestPassed >= 0 || scheduler.misses > 0) else { return }
        logged = true
        SpacedRetrievalStore.append(SRTLogEntry(
            targetID: target.id, date: Date(),
            bestIntervalSeconds: scheduler.bestPassedSeconds,
            misses: scheduler.misses, completed: completed))
    }

    private func randomFiller() -> Exercise? {
        let pool = languageManager.exercisesForSection(.language) + languageManager.exercisesForSection(.cognition)
        let easy = pool.filter { $0.difficulty == .easy && $0.items.count >= 5 && $0.type != .openEnded && $0.type != .sequencing }
        return (easy.isEmpty ? pool : easy).randomElement()
    }

    // MARK: - Formatting

    private func durationText(_ seconds: Int) -> String {
        if seconds <= 0 { return FS.srtImmediate }
        let f = DateComponentsFormatter()
        var cal = Calendar(identifier: .gregorian)
        cal.locale = locale
        f.calendar = cal
        f.allowedUnits = seconds >= 60 ? [.minute, .second] : [.second]
        f.unitsStyle = .full
        f.zeroFormattingBehavior = .dropAll
        return f.string(from: TimeInterval(seconds)) ?? "\(seconds)"
    }

    private func clock(_ seconds: Int) -> String {
        let nf = NumberFormatter()
        nf.locale = locale
        nf.minimumIntegerDigits = 2
        let m = NumberFormatter()
        m.locale = locale
        return "\(m.string(from: NSNumber(value: seconds / 60)) ?? "0"):\(nf.string(from: NSNumber(value: seconds % 60)) ?? "00")"
    }
}
#endif
