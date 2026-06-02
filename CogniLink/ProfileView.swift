import SwiftUI
import PhotosUI

struct ProfileView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @ObservedObject private var store = UserProfileStore.shared

    @State private var nameInput: String = ""
    @State private var therapistInput: String = ""
    @State private var notesInput: String = ""
    @State private var selectedPhotoItem: PhotosPickerItem? = nil
    @State private var showDiagnosisPicker = false
    @State private var showTherapistSheet = false
    @State private var showNotesSheet = false
    @State private var showResetAlert = false

    // MARK: - Computed Stats

    private var totalSessions: Int {
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        return plays.values.reduce(0, +)
    }

    private var exercisesCompleted: Int {
        ProgressTracker.getCompletedExercises().count
    }

    private var daysActive: Int {
        Calendar.current.dateComponents([.day], from: store.profile.startDate, to: Date()).day ?? 0
    }

    private var notesPreview: String {
        let notes = store.profile.notes ?? ""
        if notes.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty { return "Add a note" }
        return notes.count > 30 ? String(notes.prefix(30)) + "..." : notes
    }

    private let startDateFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "MMMM yyyy"
        return f
    }()

    // MARK: - Body

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {

                // MARK: 1. Avatar Section
                VStack(spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        Group {
                            if let data = store.profile.avatarImageData,
                               let uiImage = UIImage(data: data) {
                                Image(uiImage: uiImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                    .clipShape(Circle())
                            } else {
                                Image(systemName: "person.circle.fill")
                                    .font(.system(size: 120))
                                    .foregroundColor(.accentColor)
                            }
                        }

                        PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                            Image(systemName: "camera.circle.fill")
                                .font(.system(size: 32))
                                .foregroundColor(.accentColor)
                                .background(
                                    Circle()
                                        .fill(Color(.systemBackground))
                                        .frame(width: 28, height: 28)
                                )
                        }
                        .offset(x: 4, y: 4)
                    }
                    .frame(width: 120, height: 120)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 8)
                .onChange(of: selectedPhotoItem) {
                    Task {
                        if let data = try? await selectedPhotoItem?.loadTransferable(type: Data.self) {
                            store.updateAvatar(data)
                        }
                    }
                }

                // MARK: 2. Name Section
                TextField("Enter your name", text: $nameInput)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .onSubmit {
                        store.updateName(nameInput)
                    }
                    .onChange(of: nameInput) {
                        store.updateName(nameInput)
                    }

                // MARK: 3. Info Card
                VStack(spacing: 0) {
                    Button(action: { showDiagnosisPicker = true }) {
                        infoRow(
                            icon: "stethoscope",
                            label: "Diagnosis",
                            value: store.profile.diagnosisType?.rawValue ?? "Not set",
                            showChevron: true
                        )
                    }
                    .buttonStyle(PlainButtonStyle())

                    Divider().padding(.leading, 52)

                    Button(action: {
                        therapistInput = store.profile.therapistName ?? ""
                        showTherapistSheet = true
                    }) {
                        infoRow(
                            icon: "person.badge.plus",
                            label: "Therapist",
                            value: (store.profile.therapistName?.isEmpty == false)
                                ? store.profile.therapistName! : "Not set",
                            showChevron: true
                        )
                    }
                    .buttonStyle(PlainButtonStyle())

                    Divider().padding(.leading, 52)

                    infoRow(
                        icon: "calendar",
                        label: "Using since",
                        value: startDateFormatter.string(from: store.profile.startDate),
                        showChevron: false
                    )

                    Divider().padding(.leading, 52)

                    Button(action: {
                        notesInput = store.profile.notes ?? ""
                        showNotesSheet = true
                    }) {
                        infoRow(
                            icon: "note.text",
                            label: "Notes",
                            value: notesPreview,
                            showChevron: true
                        )
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .background(Color(.secondarySystemGroupedBackground))
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)
                .sheet(isPresented: $showDiagnosisPicker) { diagnosisPickerSheet }
                .sheet(isPresented: $showTherapistSheet) { therapistSheet }
                .sheet(isPresented: $showNotesSheet) { notesSheet }

                // MARK: 4. Stats Card
                HStack(spacing: 0) {
                    statCell(value: "\(totalSessions)", label: "Sessions")
                    Divider().frame(height: 40)
                    statCell(value: "\(exercisesCompleted)", label: "Completed")
                    Divider().frame(height: 40)
                    statCell(value: "\(daysActive)", label: "Days Active")
                }
                .background(Color(.secondarySystemGroupedBackground))
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)

                // MARK: 5. Language Selector (unchanged)
                VStack(alignment: .leading, spacing: 12) {
                    Text("🌐 Language / Idioma / भाषा")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    VStack(spacing: 12) {
                        ForEach(AppLanguage.allCases) { language in
                            Button(action: {
                                withAnimation {
                                    languageManager.currentLanguage = language
                                }
                            }) {
                                HStack(spacing: 16) {
                                    Text(language.flagEmoji)
                                        .font(.system(size: 32))

                                    Text(language.displayName)
                                        .font(.system(size: 18, weight: .medium))
                                        .foregroundColor(languageManager.currentLanguage == language ? .white : .primary)

                                    Spacer()

                                    if languageManager.currentLanguage == language {
                                        Image(systemName: "checkmark")
                                            .font(.system(size: 18, weight: .bold))
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(.horizontal, 16)
                                .frame(height: 60)
                                .frame(maxWidth: .infinity)
                                .background(
                                    languageManager.currentLanguage == language
                                        ? Color.accentColor
                                        : Color(.secondarySystemGroupedBackground)
                                )
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("The app will display all exercises in the selected language.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Text("La app mostrará todos los ejercicios en el idioma seleccionado.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Text("ऐप चयनित भाषा में सभी अभ्यास दिखाएगा।")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }

                // MARK: 6. Achievements (unchanged)
                VStack(alignment: .leading, spacing: 12) {
                    Text("Achievements")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    NavigationLink(destination: BadgesGridView()) {
                        HStack {
                            Image(systemName: "rosette")
                                .foregroundColor(.yellow)
                            Text("My Badges")
                                .font(.body)
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.caption.bold())
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .frame(minHeight: 50)
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                }

                // MARK: 7. Reset Profile
                Button(action: { showResetAlert = true }) {
                    Text("Reset Profile")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.red.opacity(0.08))
                        .cornerRadius(12)
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.horizontal)
                .alert("Reset Profile?", isPresented: $showResetAlert) {
                    Button("Cancel", role: .cancel) {}
                    Button("Reset", role: .destructive) {
                        store.resetProfile()
                        nameInput = ""
                        therapistInput = ""
                        notesInput = ""
                    }
                } message: {
                    Text("This will clear your name, photo, diagnosis, and notes. Your exercise history and session counts will not be affected, but your streak will reset to zero.")
                }

            }
            .padding(.vertical)
        }
        .navigationTitle("My Profile")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground))
        .onAppear {
            nameInput = store.profile.name
            therapistInput = store.profile.therapistName ?? ""
            notesInput = store.profile.notes ?? ""
        }
    }

    // MARK: - Reusable Row

    @ViewBuilder
    private func infoRow(icon: String, label: String, value: String, showChevron: Bool) -> some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.body)
                .foregroundColor(.accentColor)
                .frame(width: 28, height: 28)

            Text(label)
                .font(.body)
                .foregroundColor(.primary)

            Spacer()

            Text(value)
                .font(.body)
                .foregroundColor(.secondary)
                .lineLimit(1)

            if showChevron {
                Image(systemName: "chevron.right")
                    .font(.caption.bold())
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 16)
        .frame(minHeight: 50)
    }

    // MARK: - Stat Cell

    @ViewBuilder
    private func statCell(value: String, label: String) -> some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.primary)
            Text(label)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
    }

    // MARK: - Sheets

    private var diagnosisPickerSheet: some View {
        NavigationStack {
            List(DiagnosisType.allCases) { diagnosis in
                Button(action: {
                    store.updateDiagnosis(diagnosis)
                    showDiagnosisPicker = false
                }) {
                    HStack {
                        Text(diagnosis.rawValue)
                            .foregroundColor(.primary)
                        Spacer()
                        if store.profile.diagnosisType == diagnosis {
                            Image(systemName: "checkmark")
                                .foregroundColor(.accentColor)
                        }
                    }
                }
            }
            .navigationTitle("Diagnosis")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { showDiagnosisPicker = false }
                }
            }
        }
    }

    private var therapistSheet: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField("Therapist name", text: $therapistInput)
                    .font(.body)
                    .padding()
                    .background(Color(.secondarySystemGroupedBackground))
                    .cornerRadius(12)
                    .padding(.horizontal)
                Spacer()
            }
            .padding(.top, 24)
            .navigationTitle("Therapist")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { showTherapistSheet = false }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        store.updateTherapistName(therapistInput)
                        showTherapistSheet = false
                    }
                }
            }
        }
    }

    private var notesSheet: some View {
        NavigationStack {
            TextEditor(text: $notesInput)
                .font(.body)
                .padding()
                .navigationTitle("Notes")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") { showNotesSheet = false }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Save") {
                            store.updateNotes(notesInput)
                            showNotesSheet = false
                        }
                    }
                }
        }
    }
}
