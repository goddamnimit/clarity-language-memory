#if os(tvOS)
import SwiftUI

private enum TVProfileFocus: Hashable {
    case language(AppLanguage)
    case caregiverMode
    case changeBackground
    case voiceOver
}

struct TVProfileView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: TVProfileFocus?
    @State private var showPinEntry = false
    @State private var showDashboard = false
    @AppStorage("tvSpeechEnabled") private var speechEnabled: Bool = false

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

                            if let diagnosis = UserProfileStore.shared.profile.diagnosisDisplayText {
                                Text(diagnosis)
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

                    // VoiceOver Read Questions Aloud Toggle Button
                    Button {
                        speechEnabled.toggle()
                    } label: {
                        HStack(spacing: 16) {
                            Image(systemName: speechEnabled ? "waveform" : "waveform.slash")
                                .font(.system(size: 32))
                                .foregroundColor(Color(hex: "FF9500"))
                            Text("\(readQuestionsAloudLabel): \(speechEnabled ? onLabel : offLabel)")
                                .font(.system(size: 28, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                        .padding(.vertical, 24)
                        .background(
                            RoundedRectangle(cornerRadius: 18)
                                .fill(focus == .voiceOver ? Color(hex: "3D3D60") : Color(hex: "2D2D44").opacity(0.5))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(focus == .voiceOver ? Color.white : Color.clear, lineWidth: 3)
                        )
                    }
                    .buttonStyle(.plain)
                    .focused($focus, equals: .voiceOver)
                    .padding(.horizontal, 100)

                    // Change Background Tile
                    Button {
                        BackgroundManager.shared.randomizeBackground()
                    } label: {
                        HStack(spacing: 16) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 32))
                                .foregroundColor(Color(hex: "FF9500"))
                            Text("Change Background")
                                .font(.system(size: 28, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                        .padding(.vertical, 24)
                        .background(
                            RoundedRectangle(cornerRadius: 18)
                                .fill(focus == .changeBackground ? Color(hex: "3D3D60") : Color(hex: "2D2D44").opacity(0.5))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(focus == .changeBackground ? Color.white : Color.clear, lineWidth: 3)
                        )
                    }
                    .buttonStyle(.plain)
                    .focused($focus, equals: .changeBackground)
                    .padding(.horizontal, 100)

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

    private var readQuestionsAloudLabel: String {
        switch languageManager.currentLanguage {
        case .english:    return "Read Questions Aloud"
        case .spanish:    return "Leer preguntas en voz alta"
        case .hindi:      return "प्रश्नों को जोर से पढ़ें"
        case .gujarati:   return "પ્રશ્નો મોટેથી વાંચો"
        case .chinese:    return "大声朗读问题"
        case .farsi:      return "خواندن سوالات با صدای بلند"
        case .korean:     return "질문 소리 내어 읽기"
        case .vietnamese: return "Đọc to câu hỏi"
        case .arabic:     return "قراءة الأسئلة بصوت عالٍ"
        case .portuguese: return "Ler perguntas em voz alta"
        case .tagalog:    return "Basahin nang malakas ang mga tanong"
        case .punjabi:    return "ਸਵਾਲਾਂ ਨੂੰ ਉੱਚੀ ਆਵਾਜ਼ ਵਿੱਚ ਪੜ੍ਹੋ"
        case .armenian:   return "Կարդալ հարցերը բարձրաձայն"
        case .japanese:   return "質問を読み上げる"
        case .french:     return "Lire les questions à voix haute"
        case .amharic:    return "ጥያቄዎችን በታላቅ ድምፅ አንብብ"
        }
    }

    private var onLabel: String {
        switch languageManager.currentLanguage {
        case .english:    return "On"
        case .spanish:    return "Activado"
        case .hindi:      return "चालू"
        case .gujarati:   return "ચાલુ"
        case .chinese:    return "开"
        case .farsi:      return "روشن"
        case .korean:     return "켜짐"
        case .vietnamese: return "Bật"
        case .arabic:     return "تشغيل"
        case .portuguese: return "Ligado"
        case .tagalog:    return "Naka-on"
        case .punjabi:    return "ਚਾਲੂ"
        case .armenian:   return "Միացված"
        case .japanese:   return "オン"
        case .french:     return "Activé"
        case .amharic:    return "በርቷል"
        }
    }

    private var offLabel: String {
        switch languageManager.currentLanguage {
        case .english:    return "Off"
        case .spanish:    return "Desactivado"
        case .hindi:      return "बंद"
        case .gujarati:   return "બંધ"
        case .chinese:    return "关"
        case .farsi:      return "خاموش"
        case .korean:     return "꺼짐"
        case .vietnamese: return "Tắt"
        case .arabic:     return "إيقاف"
        case .portuguese: return "Desligado"
        case .tagalog:    return "Naka-off"
        case .punjabi:    return "ਬੰਦ"
        case .armenian:   return "Անջատված"
        case .japanese:   return "オフ"
        case .french:     return "Désactivé"
        case .amharic:    return "ጠፍቷል"
        }
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
