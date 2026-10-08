#if os(iOS)
import SwiftUI

/// Caregiver-facing card in Therapy Settings holding the presentation
/// supports (Today card, answer-choice count, word-finding hints).
struct PracticeSupportsCard: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @ObservedObject private var settings = PracticeSupportSettings.shared
    @State private var phoneText = NumberSkillsStore.personalPhone ?? ""

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(FS.practiceSupportsTitle)
                .font(.headline)
                .foregroundColor(.secondary)
                .accessibilityAddTraits(.isHeader)

            VStack(alignment: .leading, spacing: 4) {
                Toggle(isOn: Binding(
                    get: { settings.showOrientationCard },
                    set: { settings.showOrientationCard = $0 }
                )) {
                    Text(FS.orientationToggle)
                        .font(.body)
                        .foregroundColor(.primary)
                }
                Text(FS.orientationSubtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Divider()

            VStack(alignment: .leading, spacing: 8) {
                Text(FS.choicesLabel)
                    .font(.body)
                    .foregroundColor(.primary)
                Picker(FS.choicesLabel, selection: Binding(
                    get: { settings.answerChoiceCount },
                    set: { settings.answerChoiceCount = $0 }
                )) {
                    ForEach(ChoiceCountFilter.allowedCounts, id: \.self) { n in
                        Text("\(n)").tag(n)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                Text(FS.choicesSubtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Divider()

            VStack(alignment: .leading, spacing: 4) {
                Toggle(isOn: Binding(
                    get: { settings.cuesEnabled },
                    set: { settings.cuesEnabled = $0 }
                )) {
                    Text(FS.hintsLabel)
                        .font(.body)
                        .foregroundColor(.primary)
                }
                Text(FS.hintsSubtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Divider()

            VStack(alignment: .leading, spacing: 6) {
                Text(FS.phoneSettingLabel)
                    .font(.body)
                    .foregroundColor(.primary)
                TextField(FS.phonePlaceholder, text: $phoneText)
                    .keyboardType(.phonePad)
                    .textContentType(.telephoneNumber)
                    .padding(10)
                    .background(Color.systemBackground)
                    .cornerRadius(8)
                    .environment(\.layoutDirection, .leftToRight)
                    .onChange(of: phoneText) { _, newValue in
                        NumberSkillsStore.personalPhone = newValue
                    }
                Text(FS.phoneSettingSubtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
        .padding(.horizontal)
    }
}
#endif
