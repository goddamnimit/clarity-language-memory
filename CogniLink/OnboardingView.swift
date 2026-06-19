import SwiftUI

struct OnboardingView: View {
    @Binding var isPresented: Bool
    @StateObject private var languageManager = LanguageManager.shared
    @ObservedObject private var profileStore = UserProfileStore.shared
    @State private var currentPage = 0
    @State private var name = ""
    @State private var selectedLanguage: AppLanguage = .english

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
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.12))
                    .frame(width: 140, height: 140)
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 64))
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 40)

            Text("Welcome to Clarity")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: 34, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Text("Language and memory exercises,\ndesigned for you — in your language.")
                #if os(tvOS)
                .font(.title2)
                #else
                .font(.system(size: 18, design: .rounded))
                #endif
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
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
        VStack(spacing: 0) {
            Spacer().frame(height: 60)

            Text("Choose Your Language")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: 30, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Text("You can change this anytime in Settings.")
                #if os(tvOS)
                .font(.title2)
                #else
                .font(.system(size: 16, design: .rounded))
                #endif
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
                .padding(.top, 10)

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
                    .font(.system(size: 28))
                Text(language.displayName)
                    .font(.system(size: 18, weight: .medium, design: .rounded))
                    .foregroundColor(isSelected ? .white : .primary)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 22))
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            .frame(height: 60)
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
                .font(.system(size: 28))
            Text(name)
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .foregroundColor(.secondary)
            Spacer()
            Text("Coming Soon")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(.secondary)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(Color.tertiaryGroupedBackground)
                .cornerRadius(8)
        }
        .padding(.horizontal, 20)
        .frame(height: 60)
        .background(Color.secondaryGroupedBackground.opacity(0.5))
        .cornerRadius(14)
    }

    // MARK: - Screen 3: Name Entry

    private var namePage: some View {
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                Circle()
                    .fill(Color.orange.opacity(0.12))
                    .frame(width: 100, height: 100)
                Image(systemName: "person.fill")
                    .font(.system(size: 44))
                    .foregroundColor(.orange)
            }
            .padding(.bottom, 32)

            Text("What should we call you?")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: 30, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Text("We'll use your name to personalize\nyour experience.")
                #if os(tvOS)
                .font(.title2)
                #else
                .font(.system(size: 16, design: .rounded))
                #endif
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
                .padding(.top, 12)

            TextField("Enter your name", text: $name)
                .font(.system(size: 18, design: .rounded))
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
                .font(.system(size: 16, design: .rounded))
                .foregroundColor(.secondary)
                .tvFocusEffect()
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 60)
        }
    }

    // MARK: - Screen 4: Ready

    private var readyPage: some View {
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                Circle()
                    .fill(Color.green.opacity(0.12))
                    .frame(width: 100, height: 100)
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 56))
                    .foregroundColor(.green)
            }
            .padding(.bottom, 32)

            let displayName = name.trimmingCharacters(in: .whitespaces)
            Text(displayName.isEmpty ? "You're all set!" : "You're all set, \(displayName)!")
                #if os(tvOS)
                .font(.system(size: 52, weight: .bold))
                #else
                .font(.system(size: 30, weight: .bold, design: .rounded))
                #endif
                .multilineTextAlignment(.center)
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
                isPresented = false
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
                    .font(.system(size: 22))
                    .foregroundColor(color)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .foregroundColor(.primary)
                Text(subtitle)
                    .font(.system(size: 14, design: .rounded))
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
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
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
