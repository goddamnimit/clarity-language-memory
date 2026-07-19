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
    @State private var customDiagnosisInput: String = ""
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
        #if os(iOS)
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
                TextField(languageManager.currentLanguage.pvNamePlaceholder, text: $nameInput)
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
                    Button(action: {
                        customDiagnosisInput = store.profile.customDiagnosisText ?? ""
                        showDiagnosisPicker = true
                    }) {
                        infoRow(
                            icon: "stethoscope",
                            label: languageManager.currentLanguage.pvDiagnosis,
                            value: store.profile.diagnosisDisplayText ?? languageManager.currentLanguage.pvNotSet,
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
                            label: languageManager.currentLanguage.pvTherapist,
                            value: (store.profile.therapistName?.isEmpty == false)
                                ? store.profile.therapistName! : languageManager.currentLanguage.pvNotSet,
                            showChevron: true
                        )
                    }
                    .buttonStyle(PlainButtonStyle())

                    Divider().padding(.leading, 52)

                    infoRow(
                        icon: "calendar",
                        label: languageManager.currentLanguage.pvUsingSince,
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
                            label: languageManager.currentLanguage.pvNotes,
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
                        statCell(value: "\(totalSessions)", label: languageManager.currentLanguage.pvSessions)
                        Divider().frame(height: 40)
                        statCell(value: "\(exercisesCompleted)", label: languageManager.currentLanguage.pvCompleted)
                    }
                    Divider()
                    HStack(spacing: 0) {
                        statCell(value: "\(daysActive)", label: languageManager.currentLanguage.pvDaysActive)
                        Divider().frame(height: 40)
                        statCell(value: firstTryAccuracyText, label: languageManager.currentLanguage.pvAccuracy)
                    }
                }
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)

                // MARK: 5. Language Selector (collapsible to avoid layout/scrolling fold issue)
                VStack(alignment: .leading, spacing: 12) {
                    DisclosureGroup {
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
                        .padding(.top, 8)
                    } label: {
                        HStack {
                            Image(systemName: "globe")
                                .font(.body)
                                .foregroundColor(.accentColor)
                            Text(languageManager.currentLanguage.pvLanguageHeader)
                                .font(.body)
                                .foregroundColor(.primary)
                            Spacer()
                            Text(languageManager.currentLanguage.displayName)
                                .font(.body)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .frame(minHeight: 50)
                        .background(Color.secondaryGroupedBackground)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    }
                    .accentColor(.secondary)
                    .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 8) {
                        Text(languageManager.currentLanguage.pvLanguageFootnote)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                    .padding(.top, 4)
                }

                // MARK: 6. Achievements (unchanged)
                VStack(alignment: .leading, spacing: 12) {
                    Text(languageManager.currentLanguage.pvAchievements)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    NavigationLink(destination: BadgesGridView()) {
                        HStack {
                            Image(systemName: "rosette")
                                .foregroundColor(.yellow)
                            Text(languageManager.currentLanguage.pvMyBadges)
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
                    Text(languageManager.currentLanguage.pvResearch)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 10) {
                        Text(languageManager.currentLanguage.pvResearchDisclaimer)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .padding(.horizontal)

                        Button {
                            exportResearchData()
                        } label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.blue)
                                Text(languageManager.currentLanguage.pvExportResearchData)
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

                        #if os(iOS)
                        Button {
                            exportPDFReport()
                        } label: {
                            HStack {
                                Image(systemName: "doc.richtext")
                                    .foregroundColor(.blue)
                                Text(languageManager.currentLanguage.cgExportPDF)
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
                        #endif
                    }
                }

                // MARK: - 7.5. Caregiver Mode (Therapy Settings moved inside)
                #if os(iOS)
                VStack(alignment: .leading, spacing: 12) {
                    NavigationLink(destination: CaregiverModeView()) {
                        HStack {
                            Image(systemName: "lock.shield")
                                .foregroundColor(.accentColor)
                            Text(languageManager.currentLanguage.cgCaregiverMode)
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

                    NavigationLink(destination: AppGuidanceInfoView()) {
                        HStack {
                            Image(systemName: "info.circle")
                                .foregroundColor(.accentColor)
                            Text(languageManager.currentLanguage.pvAboutGuidance)
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
                #endif

                // MARK: 8. Reset Profile
                Button(action: { showResetAlert = true }) {
                    Text(languageManager.currentLanguage.pvResetProfile)
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
                .alert(languageManager.currentLanguage.pvResetProfileAlertTitle, isPresented: $showResetAlert) {
                    Button(languageManager.currentLanguage.pvCancel, role: .cancel) {}
                    Button(languageManager.currentLanguage.pvReset, role: .destructive) {
                        store.resetProfile()
                        nameInput = ""
                        therapistInput = ""
                        notesInput = ""
                    }
                } message: {
                    Text(languageManager.currentLanguage.pvResetProfileMessage)
                }

            }
            .padding(.vertical)
        }
        .navigationTitle(languageManager.currentLanguage.pvMyProfileTitle)
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
        .alert(languageManager.currentLanguage.pvKeyboardTipTitle, isPresented: $showKeyboardTip) {
            Button(languageManager.currentLanguage.pvGotIt) { }
            Button(languageManager.currentLanguage.pvOpenSettings) {
                #if os(iOS)
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
                #endif
            }
        } message: {
            Text(languageManager.currentLanguage.pvKeyboardTipMessage(keyboardTipLanguage?.displayName ?? "this language"))
        }
        // Sheet must live at the ScrollView level — attaching to inner views causes blank presentation
        #if os(iOS)
        .sheet(isPresented: $showShareSheet) {
            if let url = exportURL {
                ShareSheet(items: [url])
            }
        }
        #endif
        #else
        EmptyView()
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
            List {
                ForEach(DiagnosisType.allCases) { diagnosis in
                    Button(action: {
                        store.updateDiagnosis(diagnosis)
                        if diagnosis == .other {
                            customDiagnosisInput = store.profile.customDiagnosisText ?? ""
                        } else {
                            showDiagnosisPicker = false
                        }
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

                if store.profile.diagnosisType == .other {
                    Section {
                        TextField(languageManager.currentLanguage.pvPleaseSpecify, text: $customDiagnosisInput)
                            .onSubmit {
                                store.updateCustomDiagnosisText(customDiagnosisInput)
                            }
                    }
                }
            }
            .navigationTitle(languageManager.currentLanguage.pvDiagnosis)
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(languageManager.currentLanguage.pvCancel) { showDiagnosisPicker = false }
                }
                if store.profile.diagnosisType == .other {
                    ToolbarItem(placement: .confirmationAction) {
                        Button(languageManager.currentLanguage.pvSave) {
                            store.updateCustomDiagnosisText(customDiagnosisInput)
                            showDiagnosisPicker = false
                        }
                    }
                }
            }
        }
    }

    private var therapistSheet: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField(languageManager.currentLanguage.pvTherapistNamePlaceholder, text: $therapistInput)
                    .font(.body)
                    .padding()
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                    .padding(.horizontal)
                Spacer()
            }
            .padding(.top, 24)
            .navigationTitle(languageManager.currentLanguage.pvTherapist)
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(languageManager.currentLanguage.pvCancel) { showTherapistSheet = false }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button(languageManager.currentLanguage.pvSave) {
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
            Text(notesInput.isEmpty ? languageManager.currentLanguage.pvNoNotes : notesInput)
                .font(.body)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            #endif
        }
        .navigationTitle(languageManager.currentLanguage.pvNotes)
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button(languageManager.currentLanguage.pvCancel) { showNotesSheet = false }
            }
            ToolbarItem(placement: .confirmationAction) {
                Button(languageManager.currentLanguage.pvSave) {
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

    // MARK: - PDF Report Export

    #if os(iOS)
    private func exportPDFReport() {
        let data = PDFReportManager.generateReport()
        let url = FileManager.default.temporaryDirectory
            .appendingPathComponent(PDFReportManager.suggestedFilename())
        do {
            try data.write(to: url, options: .atomic)
            exportURL = url
            showShareSheet = true
        } catch {
            print("[Export] ERROR: PDF write failed: \(error)")
        }
    }
    #endif
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
