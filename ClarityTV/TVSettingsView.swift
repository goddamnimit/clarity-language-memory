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
                    Text(settingsTitle)
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
                                    Text(readQuestionsAloudLabel)
                                        .font(.system(size: 48, weight: .semibold, design: .rounded))
                                        .foregroundColor(.white)
                                    Spacer()
                                    Text(speechEnabled ? onLabel : offLabel)
                                        .font(.system(size: 36, weight: .medium))
                                        .foregroundColor(speechEnabled ? Color(hex: "2ECC71") : Color.white.opacity(0.45))
                                }
                                Text(readQuestionsAloudSubtitle)
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

                                Text(soundEffectsLabel)
                                    .font(.system(size: 48, weight: .semibold, design: .rounded))
                                    .foregroundColor(.white)

                                Spacer()

                                Text(soundEnabled ? onLabel : offLabel)
                                    .font(.system(size: 36, weight: .medium))
                                    .foregroundColor(soundEnabled ? Color(hex: "2ECC71") : Color.white.opacity(0.45))
                            }
                        } action: {
                            soundEnabled.toggle()
                        }
                        .focused($focus, equals: .sound)

                        // Language section
                        VStack(alignment: .leading, spacing: 16) {
                            Text(languageSectionTitle)
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
                                    Text(aboutLabel)
                                        .font(.system(size: 48, weight: .semibold, design: .rounded))
                                        .foregroundColor(.white)
                                }
                                Text(aboutDetailsText)
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

    // MARK: - Localized Copy

    private var settingsTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Settings"
        case .spanish:    return "Ajustes"
        case .hindi:      return "सेटिंग्स"
        case .gujarati:   return "સેટિંગ્સ"
        case .chinese:    return "设置"
        case .farsi:      return "تنظیمات"
        case .korean:     return "설정"
        case .vietnamese: return "Cài đặt"
        case .arabic:     return "الإعدادات"
        case .portuguese: return "Configurações"
        case .tagalog:    return "Mga Setting"
        case .punjabi:    return "ਸੈਟਿੰਗਾਂ"
        case .armenian:   return "Կարգավորումներ"
        case .japanese:   return "設定"
        case .french:     return "Paramètres"
        case .amharic:    return "ቅንብሮች"
        }
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

    private var readQuestionsAloudSubtitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Reads each question aloud using text-to-speech"
        case .spanish:    return "Lee cada pregunta en voz alta usando texto a voz"
        case .hindi:      return "टेक्स्ट-टू-स्पीच का उपयोग करके प्रत्येक प्रश्न को जोर से पढ़ता है"
        case .gujarati:   return "ટેક્સ્ટ-ટુ-સ્પીચનો ઉપયોગ કરીને દરેક પ્રશ્ન મોટેથી વાંચે છે"
        case .chinese:    return "使用文本转语音大声朗读每个问题"
        case .farsi:      return "هر سوال را با استفاده از تبدیل متن به گفتار با صدای بلند می‌خواند"
        case .korean:     return "텍스트 음성 변환을 사용하여 각 질문을 소리 내어 읽습니다"
        case .vietnamese: return "Đọc to từng câu hỏi bằng tính năng chuyển văn bản thành giọng nói"
        case .arabic:     return "يقرأ كل سؤال بصوت عالٍ باستخدام تحويل النص إلى كلام"
        case .portuguese: return "Lê cada pergunta em voz alta usando conversão de texto em fala"
        case .tagalog:    return "Binabasa nang malakas ang bawat tanong gamit ang text-to-speech"
        case .punjabi:    return "ਟੈਕਸਟ-ਟੂ-ਸਪੀਚ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਹਰ ਸਵਾਲ ਨੂੰ ਉੱਚੀ ਆਵਾਜ਼ ਵਿੱਚ ਪੜ੍ਹਦਾ ਹੈ"
        case .armenian:   return "Կարդում է յուրաքանչյուր հարց բարձրաձայն՝ օգտագործելով տեքստից խոսք գործառույթը"
        case .japanese:   return "テキスト読み上げ機能を使用して各質問を読み上げます"
        case .french:     return "Lit chaque question à voix haute en utilisant la synthèse vocale"
        case .amharic:    return "ጽሑፍን ወደ ንግግር በመቀየር እያንዳንዱን ጥያቄ በታላቅ ድምፅ ያነብባል"
        }
    }

    private var soundEffectsLabel: String {
        switch languageManager.currentLanguage {
        case .english:    return "Sound Effects"
        case .spanish:    return "Efectos de sonido"
        case .hindi:      return "ध्वनि प्रभाव"
        case .gujarati:   return "સાઉન્ડ ઇફેક્ટ્સ"
        case .chinese:    return "音效"
        case .farsi:      return "جلوه‌های صوتی"
        case .korean:     return "효과음"
        case .vietnamese: return "Hiệu ứng âm thanh"
        case .arabic:     return "مؤثرات صوتية"
        case .portuguese: return "Efeitos sonoros"
        case .tagalog:    return "Mga Sound Effect"
        case .punjabi:    return "ਸਾਊਂਡ ਇਫੈਕਟਸ"
        case .armenian:   return "Ձայնային էֆեկտներ"
        case .japanese:   return "効果音"
        case .french:     return "Effets sonores"
        case .amharic:    return "የድምፅ ውጤቶች"
        }
    }

    private var languageSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Language"
        case .spanish:    return "Idioma"
        case .hindi:      return "भाषा"
        case .gujarati:   return "ભાષા"
        case .chinese:    return "语言"
        case .farsi:      return "زبان"
        case .korean:     return "언어"
        case .vietnamese: return "Ngôn ngữ"
        case .arabic:     return "اللغة"
        case .portuguese: return "Idioma"
        case .tagalog:    return "Wika"
        case .punjabi:    return "ਭਾਸ਼ਾ"
        case .armenian:   return "Լեզու"
        case .japanese:   return "言語"
        case .french:     return "Langue"
        case .amharic:    return "ቋንቋ"
        }
    }

    private var aboutLabel: String {
        switch languageManager.currentLanguage {
        case .english:    return "About"
        case .spanish:    return "Acerca de"
        case .hindi:      return "के बारे में"
        case .gujarati:   return "વિશે"
        case .chinese:    return "关于"
        case .farsi:      return "درباره"
        case .korean:     return "정보"
        case .vietnamese: return "Giới thiệu"
        case .arabic:     return "حول"
        case .portuguese: return "Sobre"
        case .tagalog:    return "Tungkol sa"
        case .punjabi:    return "ਬਾਰੇ"
        case .armenian:   return "Մասին"
        case .japanese:   return "アプリについて"
        case .french:     return "À propos"
        case .amharic:    return "ስለ"
        }
    }

    private var aboutDetailsText: String {
        switch languageManager.currentLanguage {
        case .english:    return "Clarity: Language & Memory\nDesigned for Aphasia & FTD therapy.\n© 2024 Clarity App"
        case .spanish:    return "Clarity: Lenguaje y Memoria\nDiseñado para terapia de afasia y DFT.\n© 2024 Clarity App"
        case .hindi:      return "Clarity: भाषा और स्मृति (Language & Memory)\nअफ़ेज़िया (Aphasia) और FTD थेरेपी के लिए डिज़ाइन किया गया।\n© 2024 Clarity App"
        case .gujarati:   return "Clarity: ભાષા અને સ્મૃતિ (Language & Memory)\nઅફેસિયા (Aphasia) અને FTD થેરાપી માટે રચાયેલ.\n© 2024 Clarity App"
        case .chinese:    return "Clarity: 语言与记忆\n专为失语症和额颞叶痴呆（FTD）治疗而设计。\n© 2024 Clarity App"
        case .farsi:      return "Clarity: زبان و حافظه\nطراحی شده برای گفتاردرمانی (آفازی) و FTD.\n© 2024 Clarity App"
        case .korean:     return "Clarity: 언어 및 기억력\n실어증 및 FTD 치료를 위해 설계되었습니다.\n© 2024 Clarity App"
        case .vietnamese: return "Clarity: Ngôn ngữ & Trí nhớ\nĐược thiết kế cho liệu pháp điều trị chứng mất ngôn ngữ (Aphasia) và FTD.\n© 2024 Clarity App"
        case .arabic:     return "Clarity: اللغة والذاكرة\nمصمم لعلاج الحبسة الكلامية (Aphasia) والخرف الجبهي الصدغي (FTD).\n© 2024 Clarity App"
        case .portuguese: return "Clarity: Linguagem e Memória\nProjetado para terapia de afasia e DFT.\n© 2024 Clarity App"
        case .tagalog:    return "Clarity: Wika at Memorya\nIdinisenyo para sa Aphasia at FTD therapy.\n© 2024 Clarity App"
        case .punjabi:    return "Clarity: ਭਾਸ਼ਾ ਅਤੇ ਯਾਦਾਸ਼ਤ (Language & Memory)\nਅਫੇਜ਼ੀਆ (Aphasia) ਅਤੇ FTD ਥੈਰੇਪੀ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ।\n© 2024 Clarity App"
        case .armenian:   return "Clarity. Լեզու և հիշողություն\nՆախատեսված է աֆազիայի և FTD թերապիայի համար:\n© 2024 Clarity App"
        case .japanese:   return "Clarity: 言語と記憶\n失語症およびFTD（前頭側頭型認知症）治療のために設計されています。\n© 2024 Clarity App"
        case .french:     return "Clarity : Langage et Mémoire\nConçu pour la thérapie de l'aphasie et de la DFT.\n© 2024 Clarity App"
        case .amharic:    return "Clarity: ቋንቋ እና ትውስታ (Language & Memory)\nለአፋዚያ (Aphasia) እና ለኤፍቲዲ (FTD) ሕክምና የተነደፈ።\n© 2024 Clarity App"
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
