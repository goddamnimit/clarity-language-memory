#if os(tvOS)
import SwiftUI

private enum TVProfileFocus: Hashable {
    case language(AppLanguage)
    case caregiverMode
}

struct TVProfileView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: TVProfileFocus?
    @State private var showPinEntry = false
    @State private var showDashboard = false

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    private var profileTitle: String {
        switch currentLanguage {
        case .english:    return "Profile"
        case .spanish:    return "Perfil"
        case .hindi:      return "प्रोफ़ाइल"
        case .gujarati:   return "પ્રોફાઇલ"
        case .chinese:    return "我的"
        case .farsi:      return "پروفایل"
        case .korean:     return "프로필"
        case .vietnamese: return "Hồ sơ"
        case .arabic:     return "الملف الشخصي"
        case .portuguese: return "Perfil"
        case .tagalog:    return "Profile"
        case .punjabi:    return "ਪ੍ਰੋਫਾਈਲ"
        case .armenian:   return "Պրոֆիլ"
        case .japanese:   return "プロフィール"
        case .french:     return "Profil"
        case .amharic:    return "መገለጫ"
        }
    }

    private var languageSelectTitle: String {
        switch currentLanguage {
        case .english:    return "Select Language"
        case .spanish:    return "Seleccionar Idioma"
        case .hindi:      return "भाषा चुनें"
        case .gujarati:   return "ભાષા પસંદ કરો"
        case .chinese:    return "选择语言"
        case .farsi:      return "انتخاب زبان"
        case .korean:     return "언어 선택"
        case .vietnamese: return "Chọn ngôn ngữ"
        case .arabic:     return "اختر اللغة"
        case .portuguese: return "Selecionar Idioma"
        case .tagalog:    return "Pumili ng Wika"
        case .punjabi:    return "ਭਾਸ਼ਾ ਚੁਣੋ"
        case .armenian:   return "Ընտրել լեզուն"
        case .japanese:   return "言語を選択"
        case .french:     return "Choisir la langue"
        case .amharic:    return "ቋንቋ ይምረጡ"
        }
    }

    var body: some View {
        ZStack {
            Color.clear.ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 50) {
                    // Profile Header Card
                    VStack(spacing: 20) {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: 120))
                            .foregroundColor(Color(hex: "FF9500"))

                        VStack(spacing: 8) {
                            Text(UserProfileStore.shared.profile.name.isEmpty ? "Clarity User" : UserProfileStore.shared.profile.name)
                                .font(.system(size: 52, weight: .bold, design: .rounded))
                                .foregroundColor(.white)

                            if let diagnosis = UserProfileStore.shared.profile.diagnosisType {
                                Text(diagnosis.rawValue)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundColor(Color.white.opacity(0.6))
                            }
                        }
                    }
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 28)
                            .fill(Color(hex: "2D2D44").opacity(0.5))
                            .padding(.horizontal, 100)
                    )

                    // Language Selector Section
                    VStack(alignment: .leading, spacing: 30) {
                        Text(languageSelectTitle)
                            .font(.system(size: 36, weight: .semibold, design: .rounded))
                            .foregroundColor(.white.opacity(0.85))
                            .padding(.horizontal, 100)

                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            spacing: 24
                        ) {
                            ForEach(AppLanguage.allCases) { language in
                                Button {
                                    languageManager.currentLanguage = language
                                } label: {
                                    languageTile(language, isSelected: currentLanguage == language)
                                }
                                .buttonStyle(.plain)
                                .focused($focus, equals: .language(language))
                            }
                        }
                        .padding(.horizontal, 100)
                    }

                    // Caregiver Mode Launch Button
                    Button {
                        showPinEntry = true
                    } label: {
                        HStack(spacing: 16) {
                            Image(systemName: "lock.shield.fill")
                                .font(.system(size: 32))
                                .foregroundColor(Color(hex: "FF9500"))
                            Text("Caregiver Mode")
                                .font(.system(size: 28, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                        .padding(.vertical, 24)
                        .background(
                            RoundedRectangle(cornerRadius: 18)
                                .fill(focus == .caregiverMode ? Color(hex: "3D3D60") : Color(hex: "2D2D44").opacity(0.5))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(focus == .caregiverMode ? Color.white : Color.clear, lineWidth: 3)
                        )
                    }
                    .buttonStyle(.plain)
                    .focused($focus, equals: .caregiverMode)
                    .padding(.horizontal, 100)

                    Spacer(minLength: 40)
                }
                .padding(.vertical, 40)
            }
        }
        .fullScreenCover(isPresented: $showPinEntry) {
            TVPINEntryView(
                onSuccess: {
                    showPinEntry = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        showDashboard = true
                    }
                },
                onDismiss: {
                    showPinEntry = false
                }
            )
        }
        .fullScreenCover(isPresented: $showDashboard) {
            TVCaregiverDashboardView()
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
    }

    @ViewBuilder
    private func languageTile(_ language: AppLanguage, isSelected: Bool) -> some View {
        let isFocused = focus == .language(language)
        HStack(spacing: 16) {
            Text(language.flagEmoji)
                .font(.system(size: 36))
            
            Text(language.displayName)
                .font(.system(size: 26, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            Spacer()

            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 28))
                    .foregroundColor(Color(hex: "2ECC71"))
            }
        }
        .padding(.horizontal, 24)
        .frame(height: 90)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(isFocused ? Color.white : (isSelected ? Color(hex: "FF9500") : Color.clear), lineWidth: 3)
                .shadow(color: isFocused ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
        )
        .scaleEffect(isFocused ? 1.04 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

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
