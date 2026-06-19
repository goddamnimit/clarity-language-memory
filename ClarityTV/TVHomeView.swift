#if os(tvOS)
import SwiftUI

// MARK: - Focus tracking

private enum TVHomeFocus: Hashable {
    case card(AppSection)
    case surpriseMe
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

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.1, green: 0.1, blue: 0.18).ignoresSafeArea()

                VStack(spacing: 48) {
                    headerView
                    sectionCardsView
                    surpriseMeButton
                    languageSelectorView
                    Spacer()
                }
                .padding(.vertical, 60)
            }
            .navigationDestination(item: $destination) { section in
                TVExerciseContainerView(section: section, language: selectedLanguage)
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
            ForEach(sectionCards) { card in
                Button {
                    destination = card.section
                } label: {
                    TVSectionCard(info: card)
                }
                .buttonStyle(.plain)
                .focused($focus, equals: .card(card.section))
            }
        }
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
        ScrollView(.horizontal, showsIndicators: false) {
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
            .padding(.horizontal, 80)
        }
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

// MARK: - TVExerciseContainerView (stub)

struct TVExerciseContainerView: View {
    let section: AppSection
    let language: AppLanguage

    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.18).ignoresSafeArea()
            Text("Exercises — Coming Soon")
                .font(.system(size: 60, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        }
    }
}
#endif
