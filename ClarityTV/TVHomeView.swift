#if os(tvOS)
import SwiftUI
import AudioToolbox

// MARK: - Focus tracking

private enum TVHomeFocus: Hashable {
    case card(AppSection)
    case surpriseMe
    case twoPlayers
    case soundToggle
    case language(AppLanguage)
}

// MARK: - Section card metadata

private struct SectionCardInfo: Identifiable {
    var id: AppSection { section }
    let section: AppSection
    let title: String
    let icon: String
    let color: Color
}

private let sectionCards: [SectionCardInfo] = [
    .init(section: .language,         title: "Language",          icon: "text.bubble",       color: Color(red: 0.424, green: 0.388, blue: 1.000)),
    .init(section: .cognition,        title: "Cognition",         icon: "brain.head.profile", color: Color(red: 0.263, green: 0.722, blue: 0.612)),
    .init(section: .functionalSkills, title: "Functional Skills", icon: "heart.text.square",  color: Color(red: 0.957, green: 0.635, blue: 0.380))
]

// MARK: - TVHomeView

struct TVHomeView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: TVHomeFocus?
    @State private var selectedLanguage: AppLanguage = LanguageManager.shared.currentLanguage
    @State private var destination: AppSection? = nil
    @State private var showingTwoPlayer = false
    @State private var appeared = false
    @AppStorage("tvSoundEnabled") private var soundEnabled: Bool = true

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.1, green: 0.1, blue: 0.18).ignoresSafeArea()

                VStack(spacing: 48) {
                    headerView
                    sectionCardsView
                    HStack(spacing: 32) {
                        surpriseMeButton
                        twoPlayersButton
                    }
                    .opacity(appeared ? 1 : 0)
                    .animation(.easeOut(duration: 0.4).delay(0.4), value: appeared)
                    languageSelectorView
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 60)
                .onAppear { appeared = true }

                // Sound toggle — top-right corner
                VStack {
                    HStack {
                        Spacer()
                        soundToggleButton
                            .padding(.trailing, 80)
                            .padding(.top, 60)
                    }
                    Spacer()
                }
            }
            .navigationDestination(item: $destination) { section in
                TVExerciseContainerView(section: section, language: selectedLanguage)
            }
            .fullScreenCover(isPresented: $showingTwoPlayer) {
                TVTwoPlayerView(
                    section: AppSection.allCases.randomElement()!,
                    language: selectedLanguage
                )
            }
        }
    }

    // MARK: - Header

    private var headerView: some View {
        VStack(spacing: 12) {
            Text("Clarity")
                .font(.system(size: 80, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            Text("Language & Memory")
                .font(.system(size: 40, weight: .light))
                .foregroundColor(Color.white.opacity(0.55))
        }
    }

    // MARK: - Section Cards

    private var sectionCardsView: some View {
        HStack(spacing: 40) {
            ForEach(Array(sectionCards.enumerated()), id: \.element.id) { index, card in
                Button {
                    destination = card.section
                } label: {
                    TVSectionCard(info: card)
                }
                .buttonStyle(.plain)
                .focused($focus, equals: .card(card.section))
                .offset(y: appeared ? 0 : 20)
                .opacity(appeared ? 1 : 0)
                .animation(.easeOut(duration: 0.4).delay(Double(index + 1) * 0.1), value: appeared)
            }
        }
    }

    // MARK: - Sound Toggle

    private var soundToggleButton: some View {
        Button {
            soundEnabled.toggle()
        } label: {
            TVSoundToggleButton(soundEnabled: soundEnabled)
        }
        .buttonStyle(.plain)
        .focused($focus, equals: .soundToggle)
    }

    // MARK: - Two Players

    private var twoPlayersButton: some View {
        Button {
            showingTwoPlayer = true
        } label: {
            TVTwoPlayersLabel()
        }
        .buttonStyle(.plain)
        .focused($focus, equals: .twoPlayers)
    }

    // MARK: - Surprise Me

    private var surpriseMeButton: some View {
        Button {
            destination = AppSection.allCases.randomElement()
        } label: {
            TVSurpriseMeLabel()
        }
        .buttonStyle(.plain)
        .focused($focus, equals: .surpriseMe)
    }

    // MARK: - Language Selector

    private var languageSelectorView: some View {
        HStack(spacing: 24) {
            ForEach(AppLanguage.allCases) { lang in
                Button {
                    selectedLanguage = lang
                    languageManager.currentLanguage = lang
                } label: {
                    TVLanguageChip(language: lang, isSelected: selectedLanguage == lang)
                }
                .buttonStyle(.plain)
                .focused($focus, equals: .language(lang))
            }
        }
        .padding(.horizontal, 60)
    }
}

// MARK: - TVSectionCard

private struct TVSectionCard: View {
    let info: SectionCardInfo
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: info.icon)
                .font(.system(size: 64))
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
                .background(Color.white.opacity(0.15))
                .cornerRadius(20)

            Text(info.title)
                .font(.system(size: 48, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 380, height: 280)
        .background(isFocused ? info.color : info.color.opacity(0.72))
        .cornerRadius(24)
        .scaleEffect(isFocused ? 1.08 : 1.0)
        .shadow(color: isFocused ? info.color.opacity(0.6) : .clear, radius: 30, x: 0, y: 10)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVSurpriseMeLabel

private struct TVSurpriseMeLabel: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "shuffle")
                .font(.system(size: 32, weight: .medium))
            Text("Surprise Me")
                .font(.system(size: 36, weight: .semibold, design: .rounded))
        }
        .foregroundColor(.white)
        .padding(.horizontal, 60)
        .padding(.vertical, 24)
        .background(
            Capsule().fill(
                LinearGradient(
                    colors: isFocused ? [.orange, .pink] : [.orange.opacity(0.7), .pink.opacity(0.7)],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
        )
        .scaleEffect(isFocused ? 1.08 : 1.0)
        .shadow(color: isFocused ? .orange.opacity(0.5) : .clear, radius: 20, x: 0, y: 8)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVTwoPlayersLabel

private struct TVTwoPlayersLabel: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "person.2.fill")
                .font(.system(size: 32, weight: .medium))
            Text("Two Players")
                .font(.system(size: 36, weight: .semibold, design: .rounded))
        }
        .foregroundColor(.white)
        .padding(.horizontal, 60)
        .padding(.vertical, 24)
        .background(
            Capsule().fill(
                LinearGradient(
                    colors: isFocused
                        ? [Color(red: 0.2, green: 0.5, blue: 1.0), Color(red: 0.1, green: 0.3, blue: 0.9)]
                        : [Color(red: 0.2, green: 0.5, blue: 1.0).opacity(0.7), Color(red: 0.1, green: 0.3, blue: 0.9).opacity(0.7)],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
        )
        .scaleEffect(isFocused ? 1.08 : 1.0)
        .shadow(color: isFocused ? Color.blue.opacity(0.5) : .clear, radius: 20, x: 0, y: 8)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVSoundToggleButton

private struct TVSoundToggleButton: View {
    let soundEnabled: Bool
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Image(systemName: soundEnabled ? "speaker.wave.3.fill" : "speaker.slash.fill")
            .font(.system(size: 36))
            .foregroundColor(Color.white.opacity(isFocused ? 0.9 : 0.5))
            .scaleEffect(isFocused ? 1.15 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVLanguageChip

private struct TVLanguageChip: View {
    let language: AppLanguage
    let isSelected: Bool
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        HStack(spacing: 12) {
            Text(language.flagEmoji)
                .font(.system(size: 36))
            Text(language.displayName)
                .font(.system(size: 28, weight: isSelected ? .semibold : .regular))
                .foregroundColor(isSelected ? .white : Color.white.opacity(0.7))
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(isFocused || isSelected ? Color.white.opacity(0.2) : Color.white.opacity(0.07))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(isSelected ? Color.white.opacity(0.6) : Color.clear, lineWidth: 2)
        )
        .scaleEffect(isFocused ? 1.08 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVSound

enum TVSound {
    case correct, wrong, complete, select
}

// MARK: - TVSoundManager

struct TVSoundManager {
    static func play(_ sound: TVSound) {
        let isEnabled = UserDefaults.standard.object(forKey: "tvSoundEnabled") as? Bool ?? true
        guard isEnabled else { return }
        switch sound {
        case .correct:  AudioServicesPlaySystemSound(1057)
        case .wrong:    AudioServicesPlaySystemSound(1053)
        case .complete: AudioServicesPlaySystemSound(1025)
        case .select:   AudioServicesPlaySystemSound(1104)
        }
    }
}

#endif
