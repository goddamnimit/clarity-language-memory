#if os(iOS)
import SwiftUI

/// Caregiver card (Therapy Settings) for the up-to-three personal targets used
/// by Remember It, plus a per-target success summary. Targets are stored in the
/// Keychain and are never exported.
struct MemoryTargetsCard: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var targets: [MemoryTarget] = SpacedRetrievalStore.targets

    private var locale: Locale {
        Locale(identifier: SpeechOutput.bcp47(for: languageManager.currentLanguage))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(FS.srtTargetsTitle)
                .font(.headline)
                .foregroundColor(.secondary)
                .accessibilityAddTraits(.isHeader)
            Text(FS.srtTargetsSubtitle)
                .font(.caption)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            ForEach($targets) { $target in
                VStack(alignment: .leading, spacing: 8) {
                    TextField(FS.srtQuestionField, text: $target.question)
                        .textFieldStyle(.roundedBorder)
                    TextField(FS.srtAnswerField, text: $target.answer)
                        .textFieldStyle(.roundedBorder)
                    HStack {
                        let summary = SpacedRetrievalStore.summary(for: target.id)
                        if summary.sessions > 0, let last = summary.lastDate {
                            Text("\(FS.srtBest(durationShort(summary.bestSeconds))) · \(last.formatted(.dateTime.locale(locale).month(.abbreviated).day()))")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Button(role: .destructive) {
                            targets.removeAll { $0.id == target.id }
                        } label: {
                            Text(FS.srtRemove).font(.subheadline)
                        }
                        .frame(minHeight: 44)
                    }
                }
                Divider()
            }

            if targets.count < SpacedRetrievalStore.maxTargets {
                Button {
                    targets.append(MemoryTarget())
                } label: {
                    Label(FS.srtAdd, systemImage: "plus.circle")
                        .font(.body.weight(.semibold))
                        .frame(minHeight: 44)
                }
            }

            Text(FS.srtStoredNote)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        .padding(.horizontal)
        .onChange(of: targets) { _, newValue in
            SpacedRetrievalStore.targets = newValue
        }
    }

    private func durationShort(_ seconds: Int) -> String {
        if seconds <= 0 { return FS.srtImmediate }
        let f = DateComponentsFormatter()
        var cal = Calendar(identifier: .gregorian)
        cal.locale = locale
        f.calendar = cal
        f.allowedUnits = seconds >= 60 ? [.minute, .second] : [.second]
        f.unitsStyle = .abbreviated
        f.zeroFormattingBehavior = .dropAll
        return f.string(from: TimeInterval(seconds)) ?? "\(seconds)"
    }
}
#endif
