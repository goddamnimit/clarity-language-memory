#if os(tvOS)
import SwiftUI

// MARK: - Focus enum

private enum SettingsFocus: Hashable {
    case speech
    case sound
    case language(AppLanguage)
    case about
}

// MARK: - TVSettingsView

struct TVSettingsView: View {
    @Binding var selectedLanguage: AppLanguage
    @AppStorage("tvSpeechEnabled") private var speechEnabled: Bool = false
    @AppStorage("tvSoundEnabled") private var soundEnabled: Bool = true
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: SettingsFocus?

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            VStack(alignment: .leading, spacing: 0) {
                // Title bar
                HStack {
                    Text("Settings")
                        .font(.system(size: 64, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal, 80)
                .padding(.top, 60)
                .padding(.bottom, 48)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 24) {
                        // Read Questions Aloud row
                        SettingsRow {
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Image(systemName: speechEnabled ? "waveform" : "waveform.slash")
                                        .font(.system(size: 36))
                                        .foregroundColor(.white)
                                        .frame(width: 52)
                                    Text("Read Questions Aloud")
                                        .font(.system(size: 48, weight: .semibold, design: .rounded))
                                        .foregroundColor(.white)
                                    Spacer()
                                    Text(speechEnabled ? "On" : "Off")
                                        .font(.system(size: 36, weight: .medium))
                                        .foregroundColor(speechEnabled ? Color(hex: "2ECC71") : Color.white.opacity(0.45))
                                }
                                Text("Reads each question aloud using text-to-speech")
                                    .font(.system(size: 28, weight: .regular))
                                    .foregroundColor(Color.white.opacity(0.55))
                                    .padding(.leading, 52)
                            }
                        } action: {
                            speechEnabled.toggle()
                        }
                        .focused($focus, equals: .speech)

                        // Sound Effects row
                        SettingsRow {
                            HStack {
                                Image(systemName: soundEnabled ? "speaker.wave.3.fill" : "speaker.slash.fill")
                                    .font(.system(size: 36))
                                    .foregroundColor(.white)
                                    .frame(width: 52)

                                Text("Sound Effects")
                                    .font(.system(size: 48, weight: .semibold, design: .rounded))
                                    .foregroundColor(.white)

                                Spacer()

                                Text(soundEnabled ? "On" : "Off")
                                    .font(.system(size: 36, weight: .medium))
                                    .foregroundColor(soundEnabled ? Color(hex: "2ECC71") : Color.white.opacity(0.45))
                            }
                        } action: {
                            soundEnabled.toggle()
                        }
                        .focused($focus, equals: .sound)

                        // Language section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Language")
                                .font(.system(size: 36, weight: .medium))
                                .foregroundColor(Color.white.opacity(0.55))
                                .padding(.horizontal, 80)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(AppLanguage.allCases) { lang in
                                        Button {
                                            selectedLanguage = lang
                                            languageManager.currentLanguage = lang
                                        } label: {
                                            TVSettingsLanguageChip(language: lang, isSelected: selectedLanguage == lang)
                                        }
                                        .buttonStyle(.plain)
                                        .focused($focus, equals: .language(lang))
                                    }
                                }
                                .padding(.horizontal, 80)
                            }
                        }

                        // About row
                        SettingsRow {
                            VStack(alignment: .leading, spacing: 12) {
                                HStack {
                                    Image(systemName: "info.circle.fill")
                                        .font(.system(size: 36))
                                        .foregroundColor(.white)
                                        .frame(width: 52)
                                    Text("About")
                                        .font(.system(size: 48, weight: .semibold, design: .rounded))
                                        .foregroundColor(.white)
                                }
                                Text("Clarity: Language & Memory\nDesigned for Aphasia & FTD therapy.\n© 2024 Clarity App")
                                    .font(.system(size: 28, weight: .regular))
                                    .foregroundColor(Color.white.opacity(0.55))
                                    .padding(.leading, 52)
                            }
                        } action: {}
                        .focused($focus, equals: .about)
                    }
                    .padding(.bottom, 80)
                }
            }
        }
        .onAppear { focus = .speech }
    }
}

// MARK: - SettingsRow

private struct SettingsRow<Content: View>: View {
    let content: Content
    let action: () -> Void
    @Environment(\.isFocused) private var isFocused

    init(@ViewBuilder content: () -> Content, action: @escaping () -> Void) {
        self.content = content()
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            content
                .padding(.horizontal, 40)
                .padding(.vertical, 28)
                .frame(maxWidth: .infinity, minHeight: 80, alignment: .leading)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(isFocused ? Color.white.opacity(0.18) : Color.white.opacity(0.07))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(isFocused ? Color.white.opacity(0.4) : Color.clear, lineWidth: 2)
                )
                .scaleEffect(isFocused ? 1.02 : 1.0)
                .animation(.easeInOut(duration: 0.15), value: isFocused)
        }
        .buttonStyle(.plain)
        .padding(.horizontal, 80)
    }
}

// MARK: - TVSettingsLanguageChip

private struct TVSettingsLanguageChip: View {
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

// MARK: - Hex color helper

fileprivate extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        self.init(
            red:   Double((int >> 16) & 0xFF) / 255,
            green: Double((int >> 8)  & 0xFF) / 255,
            blue:  Double( int        & 0xFF) / 255
        )
    }
}
#endif
