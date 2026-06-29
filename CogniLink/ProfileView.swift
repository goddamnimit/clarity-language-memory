import SwiftUI
#if os(iOS)
import PhotosUI
#endif

struct AdaptiveOverrideItem: Identifiable {
    let id: String
    let name: String
}

struct ProfileView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @ObservedObject private var store = UserProfileStore.shared

    @State private var nameInput: String = ""
    @State private var therapistInput: String = ""
    @State private var notesInput: String = ""
    #if os(iOS)
    @State private var selectedPhotoItem: PhotosPickerItem? = nil
    #endif
    @State private var showDiagnosisPicker = false
    @State private var showTherapistSheet = false
    @State private var showNotesSheet = false
    @State private var showResetAlert = false
    @State private var showShareSheet = false
    @State private var exportURL: URL? = nil
    @State private var showKeyboardTip = false
    @State private var keyboardTipLanguage: AppLanguage? = nil
    @State private var showResetAdaptiveAlert = false
    @ObservedObject private var adaptiveStore = AdaptiveDifficultyStore.shared

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

    private var firstTryAccuracyText: String {
        let log = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey)
                  as? [[String: Any]] ?? []
        let totalItems      = log.compactMap { $0["total"]           as? Int }.reduce(0, +)
        let firstTryCorrect = log.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
        guard totalItems > 0 else { return "—" }
        let pct = Int((Double(firstTryCorrect) / Double(totalItems)) * 100)
        return "\(pct)%"
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

                        #if os(iOS)
                        PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                            Image(systemName: "camera.circle.fill")
                                .font(.system(size: 32))
                                .foregroundColor(.accentColor)
                                .background(
                                    Circle()
                                        .fill(Color.systemBackground)
                                        .frame(width: 28, height: 28)
                                )
                        }
                        .offset(x: 4, y: 4)
                        #endif
                    }
                    .frame(width: 120, height: 120)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 8)
                #if os(iOS)
                .onChange(of: selectedPhotoItem) {
                    Task {
                        if let data = try? await selectedPhotoItem?.loadTransferable(type: Data.self) {
                            store.updateAvatar(data)
                        }
                    }
                }
                #endif

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
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)
                .sheet(isPresented: $showDiagnosisPicker) { diagnosisPickerSheet }
                .sheet(isPresented: $showTherapistSheet) { therapistSheet }
                .sheet(isPresented: $showNotesSheet) { notesSheet }

                // MARK: 4. Stats Card (2×2 grid)
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        statCell(value: "\(totalSessions)", label: "Sessions")
                        Divider().frame(height: 40)
                        statCell(value: "\(exercisesCompleted)", label: "Completed")
                    }
                    Divider()
                    HStack(spacing: 0) {
                        statCell(value: "\(daysActive)", label: "Days Active")
                        Divider().frame(height: 40)
                        statCell(value: firstTryAccuracyText, label: "Accuracy")
                    }
                }
                .background(Color.secondaryGroupedBackground)
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
                                let nonLatin: [AppLanguage] = [.hindi, .gujarati, .chinese, .farsi]
                                let tipKey = "clarity_keyboard_tip_shown_\(language.rawValue)"
                                if nonLatin.contains(language) &&
                                    !UserDefaults.standard.bool(forKey: tipKey) {
                                    keyboardTipLanguage = language
                                    showKeyboardTip = true
                                    UserDefaults.standard.set(true, forKey: tipKey)
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
                                        : Color.secondaryGroupedBackground
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
                        Text("એપ પસંદ કરેલી ભાષામાં બધી કસરત બતાવશે.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Text("应用将以所选语言显示所有练习。")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Text("اپ همه تمرین‌ها را به زبان انتخابی نمایش می‌دهد.")
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
                        .background(Color.secondaryGroupedBackground)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                }

                // MARK: 7. Research Export
                VStack(alignment: .leading, spacing: 12) {
                    Text("Research")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 10) {
                        Text("This exports anonymous performance data only. No personal information (name, photo, or contact details) is included. Share with researchers or therapists.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .padding(.horizontal)

                        Button {
                            exportResearchData()
                        } label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.blue)
                                Text("Export Research Data")
                                    .foregroundColor(.blue)
                                Spacer()
                            }
                            .padding()
                            .frame(minHeight: 50)
                            .background(Color.secondaryGroupedBackground)
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
                    }
                }

                // MARK: - 7.5. Therapy Settings
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 8) {
                        Image(systemName: "lock.fill")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text(languageManager.currentLanguage.therapySettingsTitle)
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)

                    VStack(spacing: 12) {
                        // Master Toggle
                        VStack(alignment: .leading, spacing: 4) {
                            Toggle(isOn: Binding<Bool>(
                                get: { AdaptiveDifficultyStore.shared.isMasterToggleOn },
                                set: { val in AdaptiveDifficultyStore.shared.isMasterToggleOn = val }
                            )) {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(languageManager.currentLanguage.adaptiveDifficultyLabel)
                                        .font(.body)
                                        .foregroundColor(.primary)
                                    Text(languageManager.currentLanguage.adaptiveDifficultySubtitle)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                        }
                        .padding()
                        .background(Color.secondaryGroupedBackground)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                        .padding(.horizontal)

                        // Per-Exercise Overrides (only if master toggle is on)
                        if AdaptiveDifficultyStore.shared.isMasterToggleOn {
                            VStack(spacing: 0) {
                                let overrideItems = [
                                    AdaptiveOverrideItem(id: "homonym", name: "Homonyms"),
                                    AdaptiveOverrideItem(id: "analogyChoice", name: "Analogies"),
                                    AdaptiveOverrideItem(id: "wordassociation", name: "Word Association"),
                                    AdaptiveOverrideItem(id: "sentencecompletion", name: "Sentence Completion"),
                                    AdaptiveOverrideItem(id: "sequencing", name: "Sequencing"),
                                    AdaptiveOverrideItem(id: "causeeffect", name: "Cause and Effect"),
                                    AdaptiveOverrideItem(id: "whatswrong", name: "What's Wrong Here?"),
                                    AdaptiveOverrideItem(id: "completesaying", name: "Complete the Saying")
                                ]
                                ForEach(overrideItems) { item in
                                    HStack {
                                        Text(item.name)
                                            .font(.body)
                                            .foregroundColor(.primary)
                                        
                                        Spacer()
                                        
                                        Picker("", selection: Binding<String>(
                                            get: {
                                                AdaptiveDifficultyStore.shared.getManualOverride(for: item.id)?.rawValue ?? "auto"
                                            },
                                            set: { val in
                                                let diff = (val == "auto") ? nil : Difficulty(rawValue: val)
                                                AdaptiveDifficultyStore.shared.setManualOverride(diff, for: item.id)
                                            }
                                        )) {
                                            Text(languageManager.currentLanguage.exerciseAuto).tag("auto")
                                            Text(languageManager.currentLanguage.exerciseEasy).tag("easy")
                                            Text(languageManager.currentLanguage.exerciseMedium).tag("medium")
                                            Text(languageManager.currentLanguage.exerciseHard).tag("hard")
                                        }
                                        .pickerStyle(MenuPickerStyle())
                                        .labelsHidden()
                                    }
                                    .padding(.horizontal, 16)
                                    .frame(minHeight: 50)
                                    
                                    if item.id != overrideItems.last?.id {
                                        Divider().padding(.leading, 16)
                                    }
                                }
                            }
                            .background(Color.secondaryGroupedBackground)
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                            .padding(.horizontal)
                        }

                        // Reset Adaptive Progress Button
                        Button(action: { showResetAdaptiveAlert = true }) {
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(languageManager.currentLanguage.resetDifficultyProgressLabel)
                                        .font(.body)
                                        .foregroundColor(.red)
                                    Text(languageManager.currentLanguage.resetDifficultyProgressSubtitle)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                Spacer()
                            }
                            .padding()
                            .background(Color.red.opacity(0.08))
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
                        .alert(languageManager.currentLanguage.resetDifficultyProgressAlertTitle, isPresented: $showResetAdaptiveAlert) {
                            Button(languageManager.currentLanguage.resetDifficultyProgressAlertCancel, role: .cancel) {}
                            Button(languageManager.currentLanguage.resetDifficultyProgressAlertConfirm, role: .destructive) {
                                adaptiveStore.resetAll()
                            }
                        } message: {
                            Text(languageManager.currentLanguage.resetDifficultyProgressAlertMessage)
                        }
                    }
                }

                // MARK: 8. Reset Profile
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
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
        .background(Color.groupedBackground)
        .onAppear {
            nameInput = store.profile.name
            therapistInput = store.profile.therapistName ?? ""
            notesInput = store.profile.notes ?? ""
        }
        // Keyboard tip alert — shown once per non-Latin language selection
        .alert("Keyboard Tip", isPresented: $showKeyboardTip) {
            Button("Got it") { }
            Button("Open Settings") {
                #if os(iOS)
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
                #endif
            }
        } message: {
            Text("For the best experience with \(keyboardTipLanguage?.displayName ?? "this language"), add the keyboard in iPhone Settings → General → Keyboard → Keyboards → Add New Keyboard.")
        }
        // Sheet must live at the ScrollView level — attaching to inner views causes blank presentation
        #if os(iOS)
        .sheet(isPresented: $showShareSheet) {
            if let url = exportURL {
                ShareSheet(items: [url])
            }
        }
        #endif
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
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
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
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                    .padding(.horizontal)
                Spacer()
            }
            .padding(.top, 24)
            .navigationTitle("Therapist")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
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
            #if os(iOS)
            TextEditor(text: $notesInput)
                .font(.body)
                .padding()
            #else
            Text(notesInput.isEmpty ? "No notes." : notesInput)
                .font(.body)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            #endif
        }
        .navigationTitle("Notes")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
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

    // MARK: - Research Export

    private func exportResearchData() {
        print("[Export] Button tapped — starting export")
        guard let data = ResearchExportManager.generateExport() else {
            print("[Export] ERROR: generateExport() returned nil — aborting")
            return
        }
        print("[Export] Export data ready: \(data.count) bytes")

        let dateFormatter        = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let filename = "clarity_research_export_\(dateFormatter.string(from: Date())).json"
        let url = FileManager.default.temporaryDirectory.appendingPathComponent(filename)
        print("[Export] Writing to: \(url.path)")

        do {
            try data.write(to: url, options: .atomic)
            print("[Export] File written successfully")
            exportURL      = url
            print("[Export] exportURL set to \(url.lastPathComponent) — presenting share sheet")
            showShareSheet = true
        } catch {
            print("[Export] ERROR: File write failed: \(error) — using fallback path")
            let fallback = FileManager.default.temporaryDirectory
                .appendingPathComponent("clarity_export.json")
            do {
                try data.write(to: fallback, options: .atomic)
                exportURL      = fallback
                showShareSheet = true
            } catch {
                print("[Export] ERROR: Fallback write also failed: \(error)")
            }
        }
    }
}

// MARK: - ShareSheet (UIActivityViewController wrapper)

#if os(iOS)
struct ShareSheet: UIViewControllerRepresentable {
    let items: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
        controller.completionWithItemsHandler = { activityType, completed, returnedItems, error in
            for item in items {
                if let url = item as? URL {
                    try? FileManager.default.removeItem(at: url)
                    print("[ShareSheet] Cleaned up temporary file: \(url.lastPathComponent)")
                }
            }
        }
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
#endif
