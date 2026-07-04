#if os(iOS)
import SwiftUI

// MARK: - Caregiver Notes Store (Keychain-backed)

struct CaregiverNote: Codable, Identifiable, Equatable {
    let id: UUID
    let date: Date
    let text: String
}

/// Persists caregiver/therapist notes as JSON in the iOS Keychain.
/// Capped at 50 notes; the oldest are dropped when over the limit.
struct CaregiverNotesStore {
    static let notesKey = "clarity_caregiver_notes"
    static let maxNotes = 50

    static func loadNotes() -> [CaregiverNote] {
        guard let json = KeychainHelper.load(key: notesKey),
              let data = json.data(using: .utf8),
              let notes = try? JSONDecoder().decode([CaregiverNote].self, from: data) else {
            return []
        }
        return notes
    }

    static func addNote(_ text: String) {
        let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        var notes = loadNotes()
        notes.append(CaregiverNote(id: UUID(), date: Date(), text: trimmed))
        if notes.count > maxNotes {
            // Drop oldest first
            notes.sort { $0.date < $1.date }
            notes = Array(notes.suffix(maxNotes))
        }
        save(notes)
    }

    static func deleteNote(id: UUID) {
        var notes = loadNotes()
        notes.removeAll { $0.id == id }
        save(notes)
    }

    private static func save(_ notes: [CaregiverNote]) {
        guard let data = try? JSONEncoder().encode(notes),
              let json = String(data: data, encoding: .utf8) else { return }
        KeychainHelper.save(json, key: notesKey)
    }
}

// MARK: - Therapy Notes View

/// Free-text session notes for caregivers and therapists, with timestamps.
struct TherapyNotesView: View {
    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var notes: [CaregiverNote] = []
    @State private var draft: String = ""

    private let timestampFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .medium
        f.timeStyle = .short
        return f
    }()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                // Note composer
                VStack(alignment: .leading, spacing: 10) {
                    Text(languageManager.currentLanguage.cgAddNote)
                        .font(.headline)
                        .foregroundColor(.secondary)

                    TextEditor(text: $draft)
                        .font(.body)
                        .frame(minHeight: 100)
                        .padding(8)
                        .background(Color.secondaryGroupedBackground)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)

                    Button(action: saveDraft) {
                        Text(languageManager.currentLanguage.cgSave)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(draft.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
                                        ? Color.accentColor.opacity(0.4)
                                        : Color.accentColor)
                            .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .disabled(draft.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
                .padding(.horizontal)

                // Notes list (newest first)
                VStack(alignment: .leading, spacing: 12) {
                    Text(languageManager.currentLanguage.cgTherapyNotes)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    if notes.isEmpty {
                        Text(languageManager.currentLanguage.cgNoNotes)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.horizontal)
                    } else {
                        VStack(spacing: 12) {
                            ForEach(notes.sorted(by: { $0.date > $1.date })) { note in
                                VStack(alignment: .leading, spacing: 6) {
                                    HStack {
                                        Text(timestampFormatter.string(from: note.date))
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                        Spacer()
                                        Button(action: {
                                            CaregiverNotesStore.deleteNote(id: note.id)
                                            notes = CaregiverNotesStore.loadNotes()
                                        }) {
                                            Image(systemName: "trash")
                                                .font(.caption)
                                                .foregroundColor(.red)
                                                .frame(width: 32, height: 32)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .accessibilityLabel(languageManager.currentLanguage.cgDelete)
                                    }
                                    Text(note.text)
                                        .font(.body)
                                        .foregroundColor(.primary)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.secondaryGroupedBackground)
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
        .navigationTitle(languageManager.currentLanguage.cgTherapyNotes)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.groupedBackground.ignoresSafeArea())
        .onAppear { notes = CaregiverNotesStore.loadNotes() }
    }

    private func saveDraft() {
        CaregiverNotesStore.addNote(draft)
        draft = ""
        notes = CaregiverNotesStore.loadNotes()
    }
}
#endif
