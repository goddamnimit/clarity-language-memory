import SwiftUI

struct OnboardingView: View {
    @Binding var isPresented: Bool
    @StateObject private var languageManager = LanguageManager.shared
    @ObservedObject private var profileStore = UserProfileStore.shared
    @State private var currentPage = 0
    @State private var name = ""
    @State private var selectedLanguage: AppLanguage
    @State private var showBaselineAssessment = false
    @FocusState private var nameFieldFocused: Bool

    @ScaledMetric private var welcomeIconSize: CGFloat = 64
    @ScaledMetric private var welcomeTitleSize: CGFloat = 34
    @ScaledMetric private var welcomeSubtitleSize: CGFloat = 18
    @ScaledMetric private var languagePageTitleSize: CGFloat = 30
    @ScaledMetric private var languagePageSubtitleSize: CGFloat = 16
    @ScaledMetric private var languageCardFlagSize: CGFloat = 28
    @ScaledMetric private var languageCardNameSize: CGFloat = 18
    @ScaledMetric private var languageCardCheckmarkSize: CGFloat = 22
    @ScaledMetric private var comingSoonFlagSize: CGFloat = 28
    @ScaledMetric private var comingSoonNameSize: CGFloat = 18
    @ScaledMetric private var comingSoonTagSize: CGFloat = 12
    @ScaledMetric private var namePageIconSize: CGFloat = 44
    @ScaledMetric private var namePageTitleSize: CGFloat = 30
    @ScaledMetric private var namePageSubtitleSize: CGFloat = 16
    @ScaledMetric private var nameFieldFontSize: CGFloat = 18
    @ScaledMetric private var skipButtonFontSize: CGFloat = 16
    @ScaledMetric private var readyPageIconSize: CGFloat = 56
    @ScaledMetric private var readyPageTitleSize: CGFloat = 30
    @ScaledMetric private var featureRowIconSize: CGFloat = 22
    @ScaledMetric private var featureRowTitleSize: CGFloat = 16
    @ScaledMetric private var featureRowSubtitleSize: CGFloat = 14
    @ScaledMetric private var gradientButtonFontSize: CGFloat = 18

    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
        self._selectedLanguage = State(initialValue: LanguageManager.shared.currentLanguage)
    }

    var body: some View {
        #if os(iOS)
        ZStack(alignment: .bottom) {
            TabView(selection: $currentPage) {
                welcomePage.tag(0)
                languagePage.tag(1)
                namePage.tag(2)
                readyPage.tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .animation(.easeInOut, value: currentPage)
            .onChange(of: currentPage) {
                if currentPage != 2 { nameFieldFocused = false }
            }
        }
        .background(Color.systemBackground.ignoresSafeArea())
        #else
        ZStack {
            Color.systemBackground.ignoresSafeArea()
            Group {
                if currentPage == 0 { welcomePage }
                else if currentPage == 1 { languagePage }
                else if currentPage == 2 { namePage }
                else { readyPage }
            }
            .transition(.asymmetric(
                insertion: .move(edge: .trailing),
                removal: .move(edge: .leading)
            ))
            .animation(.easeInOut(duration: 0.3), value: currentPage)
        }
        #endif
    }

    // MARK: - Screen 1: Welcome

    private var welcomePage: some View {
        #if os(iOS)
        ScrollView {
            welcomePageContent
        }
        #else
        welcomePageContent
        #endif
    }

    private var welcomePageContent: some View {
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.12))
                    .frame(width: 140, height: 140)
                Image(systemName: "brain.head.profile")
                    .font(.system(size: welcomeIconSize))
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 40)

            Text("Welcome to Clarity")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: welcomeTitleSize, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)

            Text("Language and memory exercises,\ndesigned for you — in your language.")
                #if os(tvOS)
                .font(.title2)
                #else
                .font(.system(size: welcomeSubtitleSize, design: .rounded))
                #endif
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)
                .padding(.top, 16)

            Spacer()

            gradientButton(label: "Get Started") {
                withAnimation { currentPage = 1 }
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 60)
        }
    }

    // MARK: - Screen 2: Language Picker

    private var languagePage: some View {
        #if os(iOS)
        ScrollView {
            languagePageContent
        }
        #else
        languagePageContent
        #endif
    }

    private var languagePageContent: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 60)

            Text("Choose Your Language")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: languagePageTitleSize, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)

            Text("You can change this anytime in Settings.")
                #if os(tvOS)
                .font(.title2)
                #else
                .font(.system(size: languagePageSubtitleSize, design: .rounded))
                #endif
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)
                .padding(.top, 10)

            #if os(iOS)
            // Outer ScrollView (added for this page) already handles scrolling —
            // nesting a second vertical ScrollView here would create gesture conflicts.
            VStack(spacing: 12) {
                ForEach(AppLanguage.allCases) { language in
                    languageCard(language)
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            #else
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(AppLanguage.allCases) { language in
                        languageCard(language)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.top, 24)
                .padding(.bottom, 16)
            }
            #endif

            Spacer(minLength: 0)

            gradientButton(label: "Continue") {
                withAnimation { currentPage = 2 }
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 60)
        }
    }

    @ViewBuilder
    private func languageCard(_ language: AppLanguage) -> some View {
        let isSelected = selectedLanguage == language
        Button {
            selectedLanguage = language
            languageManager.currentLanguage = language
        } label: {
            HStack(spacing: 16) {
                Text(language.flagEmoji)
                    .font(.system(size: languageCardFlagSize))
                Text(language.displayName)
                    .font(.system(size: languageCardNameSize, weight: .medium, design: .rounded))
                    .foregroundColor(isSelected ? .white : .primary)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: languageCardCheckmarkSize))
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            .frame(minHeight: 60)
            .background(
                isSelected
                    ? LinearGradient(colors: [.orange, .pink],
                                     startPoint: .leading, endPoint: .trailing)
                    : LinearGradient(colors: [Color.secondaryGroupedBackground,
                                              Color.secondaryGroupedBackground],
                                     startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(14)
            .shadow(color: isSelected ? Color.orange.opacity(0.3) : Color.black.opacity(0.05),
                    radius: isSelected ? 6 : 2, x: 0, y: 2)
        }
        .buttonStyle(PlainButtonStyle())
        .tvFocusEffect()
    }

    @ViewBuilder
    private func comingSoonCard(flag: String, name: String) -> some View {
        HStack(spacing: 16) {
            Text(flag)
                .font(.system(size: comingSoonFlagSize))
            Text(name)
                .font(.system(size: comingSoonNameSize, weight: .medium, design: .rounded))
                .foregroundColor(.secondary)
            Spacer()
            Text("Coming Soon")
                .font(.system(size: comingSoonTagSize, weight: .medium, design: .rounded))
                .foregroundColor(.secondary)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(Color.tertiaryGroupedBackground)
                .cornerRadius(8)
        }
        .padding(.horizontal, 20)
        .frame(minHeight: 60)
        .background(Color.secondaryGroupedBackground.opacity(0.5))
        .cornerRadius(14)
    }

    // MARK: - Screen 3: Name Entry

    private var namePage: some View {
        #if os(iOS)
        ScrollView {
            namePageContent
        }
        #else
        namePageContent
        #endif
    }

    private var namePageContent: some View {
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                Circle()
                    .fill(Color.orange.opacity(0.12))
                    .frame(width: 100, height: 100)
                Image(systemName: "person.fill")
                    .font(.system(size: namePageIconSize))
                    .foregroundColor(.orange)
            }
            .padding(.bottom, 32)

            Text("What should we call you?")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: namePageTitleSize, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)

            Text("We'll use your name to personalize\nyour experience.")
                #if os(tvOS)
                .font(.title2)
                #else
                .font(.system(size: namePageSubtitleSize, design: .rounded))
                #endif
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)
                .padding(.top, 12)

            TextField("Enter your name", text: $name)
                .focused($nameFieldFocused)
                .font(.system(size: nameFieldFontSize, design: .rounded))
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(14)
                .padding(.horizontal, 32)
                .padding(.top, 32)

            Spacer()

            VStack(spacing: 12) {
                gradientButton(label: "Continue") {
                    if !name.trimmingCharacters(in: .whitespaces).isEmpty {
                        profileStore.updateName(name.trimmingCharacters(in: .whitespaces))
                    }
                    withAnimation { currentPage = 3 }
                }

                Button("Skip") {
                    withAnimation { currentPage = 3 }
                }
                .font(.system(size: skipButtonFontSize, design: .rounded))
                .foregroundColor(.secondary)
                .tvFocusEffect()
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 60)
        }
    }

    // MARK: - Screen 4: Ready

    private var readyPage: some View {
        Group {
            #if os(iOS)
            ScrollView {
                readyPageContent
            }
            #else
            readyPageContent
            #endif
        }
        #if os(iOS)
        .sheet(isPresented: $showBaselineAssessment, onDismiss: {
            isPresented = false
        }) {
            BaselineAssessmentView()
        }
        #endif
    }

    private var readyPageContent: some View {
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                Circle()
                    .fill(Color.green.opacity(0.12))
                    .frame(width: 100, height: 100)
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: readyPageIconSize))
                    .foregroundColor(.green)
            }
            .padding(.bottom, 32)

            let displayName = name.trimmingCharacters(in: .whitespaces)
            Text(displayName.isEmpty ? "You're all set!" : "You're all set, \(displayName)!")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: readyPageTitleSize, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 32)

            VStack(spacing: 16) {
                featureRow(
                    systemImage: "brain.head.profile",
                    color: .blue,
                    title: "Language & Memory Exercises",
                    subtitle: "Practice with exercises designed for Aphasia and FTD"
                )
                featureRow(
                    systemImage: "globe",
                    color: .purple,
                    title: "Your Language, Your Culture",
                    subtitle: "Content tailored for your community"
                )
                featureRow(
                    systemImage: "chart.line.uptrend.xyaxis",
                    color: .orange,
                    title: "Track Your Progress",
                    subtitle: "Streaks, achievements, and insights"
                )
            }
            .padding(.horizontal, 32)
            .padding(.top, 32)

            Spacer()

            gradientButton(label: "Start Practicing") {
                UserDefaults.standard.set(true, forKey: "clarity_onboarding_complete")
                #if os(iOS)
                if !BaselineAssessmentEngine.isCompleted {
                    showBaselineAssessment = true
                } else {
                    isPresented = false
                }
                #else
                isPresented = false
                #endif
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 60)
        }
    }

    @ViewBuilder
    private func featureRow(systemImage: String, color: Color, title: String, subtitle: String) -> some View {
        HStack(alignment: .top, spacing: 16) {
            ZStack {
                Circle()
                    .fill(color.opacity(0.12))
                    .frame(width: 48, height: 48)
                Image(systemName: systemImage)
                    .font(.system(size: featureRowIconSize))
                    .foregroundColor(color)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: featureRowTitleSize, weight: .semibold, design: .rounded))
                    .foregroundColor(.primary)
                Text(subtitle)
                    .font(.system(size: featureRowSubtitleSize, design: .rounded))
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
        }
        .padding(16)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(14)
    }

    // MARK: - Shared Gradient Button

    @ViewBuilder
    private func gradientButton(label: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: gradientButtonFontSize, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(minHeight: 56)
                .background(
                    LinearGradient(
                        colors: [.orange, .pink],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(16)
                .shadow(color: Color.orange.opacity(0.4), radius: 8, x: 0, y: 4)
        }
        .buttonStyle(PlainButtonStyle())
        .tvFocusEffect()
    }
}
