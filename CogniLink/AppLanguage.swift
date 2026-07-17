import Foundation
import SwiftUI
import Combine

enum AppLanguage: String, CaseIterable, Identifiable {
    case english = "English"
    case spanish = "Español"
    case hindi = "हिन्दी"
    case gujarati = "ગુજરાતી"
    case chinese = "中文"
    case farsi = "فารسی"
    case korean = "한국어"
    case vietnamese = "Tiếng Việt"
    case arabic = "العربية"
    case portuguese = "Português"
    case tagalog = "Tagalog"
    case punjabi = "ਪੰਜਾਬੀ"
    case armenian = "Հայերեն"
    case japanese = "日本語"
    case french = "Français"
    case amharic = "አማርኛ"




    var id: String { self.rawValue }

    var displayName: String {
        switch self {
        case .english: return "English"
        case .spanish: return "Español"
        case .hindi: return "हिन्दी"
        case .gujarati: return "ગુજરાતી"
        case .chinese: return "中文"
        case .farsi: return "فارسی"
        case .korean: return "한국어"
        case .vietnamese: return "Tiếng Việt"
        case .arabic: return "العربية"
        case .portuguese: return "Português"
        case .tagalog: return "Tagalog"
        case .punjabi: return "ਪੰਜਾਬੀ"
        case .armenian: return "Հայերեն"
        case .japanese: return "日本語"
        case .french: return "Français"
        case .amharic: return "አማርኛ"



        }
    }

    var flagEmoji: String {
        switch self {
        case .english: return "🇺🇸"
        case .spanish: return "🇪🇸"
        case .hindi: return "🇮🇳"
        case .gujarati: return "🇮🇳"
        case .chinese: return "🇨🇳"
        case .farsi: return "🇮🇷"
        case .korean: return "🇰🇷"
        case .vietnamese: return "🇻🇳"
        case .arabic: return "🇸🇦"
        case .portuguese: return "🇧🇷"
        case .tagalog: return "🇵🇭"
        case .punjabi: return "🇮🇳"
        case .armenian: return "🇦🇲"
        case .japanese: return "🇯🇵"
        case .french: return "🇫🇷"
        case .amharic: return "🇪🇹"



        }
    }

    var localeIdentifier: String {
        switch self {
        case .english: return "en_US"
        case .spanish: return "es-MX"
        case .hindi: return "hi_IN"
        case .gujarati: return "gu_IN"
        case .chinese: return "zh_CN"
        case .farsi: return "fa_IR"
        case .korean: return "ko_KR"
        case .vietnamese: return "vi_VN"
        case .arabic: return "ar_SA"
        case .portuguese: return "pt_BR"
        case .tagalog: return "fil_PH"
        case .punjabi: return "pa_IN"
        case .armenian: return "hy_AM"
        case .japanese: return "ja_JP"
        case .french: return "fr_FR"
        case .amharic: return "am_ET"



        }
    }
}

class LanguageManager: ObservableObject {
    static let shared = LanguageManager()
    
    @Published var currentLanguage: AppLanguage {
        didSet {
            UserDefaults.standard.set(currentLanguage.rawValue, forKey: "selected_language")
        }
    }
    
    private init() {
        let savedLanguage = UserDefaults.standard.string(forKey: "selected_language")
        let initialLang: AppLanguage
        if let savedStr = savedLanguage, let appLang = AppLanguage(rawValue: savedStr) {
            initialLang = appLang
        } else {
            let systemLanguages = Locale.preferredLanguages
            if let firstLang = systemLanguages.first?.lowercased() {
                if firstLang.hasPrefix("zh-hans") || firstLang.hasPrefix("zh-cn") || firstLang.hasPrefix("zh-sg") {
                    initialLang = .chinese
                } else if firstLang.hasPrefix("zh") {
                    initialLang = .chinese
                } else if firstLang.hasPrefix("es") {
                    initialLang = .spanish
                } else if firstLang.hasPrefix("hi") {
                    initialLang = .hindi
                } else if firstLang.hasPrefix("gu") {
                    initialLang = .gujarati
                } else if firstLang.hasPrefix("fa") {
                    initialLang = .farsi
                } else if firstLang.hasPrefix("ko") {
                    initialLang = .korean
                } else if firstLang.hasPrefix("vi") {
                    initialLang = .vietnamese
                } else if firstLang.hasPrefix("ar") {
                    initialLang = .arabic
                } else if firstLang.hasPrefix("pt") {
                    initialLang = .portuguese
                } else if firstLang.hasPrefix("fil") || firstLang.hasPrefix("tl") {
                    initialLang = .tagalog
                } else if firstLang.hasPrefix("pa") {
                    initialLang = .punjabi
                } else if firstLang.hasPrefix("hy") {
                    initialLang = .armenian
                } else if firstLang.hasPrefix("ja") {
                    initialLang = .japanese
                } else if firstLang.hasPrefix("fr") {
                    initialLang = .french
                } else if firstLang.hasPrefix("am") {
                    initialLang = .amharic
                } else {
                    initialLang = .english
                }
            } else {
                initialLang = .english
            }
        }
        self.currentLanguage = initialLang
    }
    
    var allExercises: [AppLanguage: [Exercise]] {
        return [
            .english: LanguageExerciseData.allExercises +
                      CognitionExerciseData.allExercises +
                      FunctionalSkillsExerciseData.allExercises +
                      EnglishNewExercisesData.allExercises +
                      EnglishNewExercisesData2.allExercises +
                      EnglishHardExercisesData.allExercises +
                      EnglishMinimalPairsData.allExercises,

            .spanish: SpanishLanguageExerciseData.allExercises +
                      SpanishCognitionExerciseData.allExercises +
                      SpanishFunctionalSkillsExerciseData.allExercises +
                      SpanishNewExercisesData.allExercises +
                      SpanishHardExercisesData.allExercises,

            .hindi: HindiLanguageExerciseData.allExercises +
                    HindiCognitionExerciseData.allExercises +
                    HindiFunctionalSkillsExerciseData.allExercises +
                    HindiNewExercisesData.allExercises +
                    HindiHardExercisesData.allExercises,

            .gujarati: GujaratiLanguageExerciseData.allExercises +
                       GujaratiCognitionExerciseData.allExercises +
                       GujaratiFunctionalSkillsExerciseData.allExercises +
                       GujaratiNewExercisesData.allExercises +
                       GujaratiHardExercisesData.allExercises,

            .chinese: ChineseLanguageExerciseData.allExercises +
                      ChineseCognitionExerciseData.allExercises +
                      ChineseFunctionalSkillsExerciseData.allExercises +
                      ChineseNewExercisesData.allExercises +
                      ChineseHardExercisesData.allExercises,

            .farsi: FarsiLanguageExerciseData.allExercises +
                    FarsiCognitionExerciseData.allExercises +
                    FarsiFunctionalSkillsExerciseData.allExercises +
                    FarsiNewExercisesData.allExercises +
                    FarsiHardExercisesData.allExercises,

            .korean: KoreanLanguageExerciseData.allExercises +
                     KoreanCognitionExerciseData.allExercises +
                     KoreanFunctionalSkillsExerciseData.allExercises +
                     KoreanNewExercisesData.allExercises +
                     KoreanHardExercisesData.allExercises,

            .vietnamese: VietnameseLanguageExerciseData.allExercises +
                         VietnameseCognitionExerciseData.allExercises +
                         VietnameseFunctionalSkillsExerciseData.allExercises +
                         VietnameseNewExercisesData.allExercises +
                         VietnameseHardExercisesData.allExercises,

            .arabic: ArabicLanguageExerciseData.allExercises +
                     ArabicCognitionExerciseData.allExercises +
                     ArabicFunctionalSkillsExerciseData.allExercises +
                     ArabicNewExercisesData.allExercises +
                     ArabicHardExercisesData.allExercises,

            .portuguese: PortugueseLanguageExerciseData.allExercises +
                         PortugueseCognitionExerciseData.allExercises +
                         PortugueseFunctionalSkillsExerciseData.allExercises +
                         PortugueseNewExercisesData.allExercises +
                         PortugueseHardExercisesData.allExercises,

            .tagalog: TagalogLanguageExerciseData.allExercises +
                      TagalogCognitionExerciseData.allExercises +
                      TagalogFunctionalSkillsExerciseData.allExercises +
                      TagalogNewExercisesData.allExercises +
                      TagalogHardExercisesData.allExercises,

            .punjabi: PunjabiLanguageExerciseData.allExercises +
                      PunjabiCognitionExerciseData.allExercises +
                      PunjabiFunctionalSkillsExerciseData.allExercises +
                      PunjabiNewExercisesData.allExercises +
                      PunjabiHardExercisesData.allExercises,

            .armenian: ArmenianLanguageExerciseData.allExercises +
                       ArmenianCognitionExerciseData.allExercises +
                       ArmenianFunctionalSkillsExerciseData.allExercises +
                       ArmenianNewExercisesData.allExercises +
                       ArmenianHardExercisesData.allExercises,

            .japanese: JapaneseLanguageExerciseData.allExercises +
                       JapaneseCognitionExerciseData.allExercises +
                       JapaneseFunctionalSkillsExerciseData.allExercises +
                       JapaneseNewExercisesData.allExercises +
                       JapaneseHardExercisesData.allExercises,

            .french: FrenchLanguageExerciseData.allExercises +
                     FrenchCognitionExerciseData.allExercises +
                     FrenchFunctionalSkillsExerciseData.allExercises +
                     FrenchNewExercisesData.allExercises +
                     FrenchHardExercisesData.allExercises,

            .amharic: AmharicLanguageExerciseData.allExercises +
                      AmharicCognitionExerciseData.allExercises +
                      AmharicFunctionalSkillsExerciseData.allExercises +
                      AmharicNewExercisesData.allExercises +
                      AmharicHardExercisesData.allExercises
        ]
    }
    
    func exercisesForSection(_ section: AppSection) -> [Exercise] {
        switch currentLanguage {
        case .english:
            // Combine the base English content with the new exercises, then route
            // each one into its section via its own `.section` property.
            let englishPool = LanguageExerciseData.allExercises +
                              CognitionExerciseData.allExercises +
                              FunctionalSkillsExerciseData.allExercises +
                              EnglishNewExercisesData.allExercises +
                              EnglishNewExercisesData2.allExercises +
                              EnglishHardExercisesData.allExercises +
                              EnglishMinimalPairsData.allExercises
            return englishPool.filter { $0.section == section }
        case .spanish:
            let pool = SpanishLanguageExerciseData.allExercises +
                       SpanishCognitionExerciseData.allExercises +
                       SpanishFunctionalSkillsExerciseData.allExercises +
                       SpanishNewExercisesData.allExercises +
                       SpanishHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .hindi:
            let pool = HindiLanguageExerciseData.allExercises +
                       HindiCognitionExerciseData.allExercises +
                       HindiFunctionalSkillsExerciseData.allExercises +
                       HindiNewExercisesData.allExercises +
                       HindiHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .gujarati:
            let pool = GujaratiLanguageExerciseData.allExercises +
                       GujaratiCognitionExerciseData.allExercises +
                       GujaratiFunctionalSkillsExerciseData.allExercises +
                       GujaratiNewExercisesData.allExercises +
                       GujaratiHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .chinese:
            let pool = ChineseLanguageExerciseData.allExercises +
                       ChineseCognitionExerciseData.allExercises +
                       ChineseFunctionalSkillsExerciseData.allExercises +
                       ChineseNewExercisesData.allExercises +
                       ChineseHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .farsi:
            let pool = FarsiLanguageExerciseData.allExercises +
                       FarsiCognitionExerciseData.allExercises +
                       FarsiFunctionalSkillsExerciseData.allExercises +
                       FarsiNewExercisesData.allExercises +
                       FarsiHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .korean:
            let pool = KoreanLanguageExerciseData.allExercises +
                       KoreanCognitionExerciseData.allExercises +
                       KoreanFunctionalSkillsExerciseData.allExercises +
                       KoreanNewExercisesData.allExercises +
                       KoreanHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .vietnamese:
            let pool = VietnameseLanguageExerciseData.allExercises +
                       VietnameseCognitionExerciseData.allExercises +
                       VietnameseFunctionalSkillsExerciseData.allExercises +
                       VietnameseNewExercisesData.allExercises +
                       VietnameseHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .arabic:
            let pool = ArabicLanguageExerciseData.allExercises +
                       ArabicCognitionExerciseData.allExercises +
                       ArabicFunctionalSkillsExerciseData.allExercises +
                       ArabicNewExercisesData.allExercises +
                       ArabicHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .portuguese:
            let pool = PortugueseLanguageExerciseData.allExercises +
                       PortugueseCognitionExerciseData.allExercises +
                       PortugueseFunctionalSkillsExerciseData.allExercises +
                       PortugueseNewExercisesData.allExercises +
                       PortugueseHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .tagalog:
            let pool = TagalogLanguageExerciseData.allExercises +
                       TagalogCognitionExerciseData.allExercises +
                       TagalogFunctionalSkillsExerciseData.allExercises +
                       TagalogNewExercisesData.allExercises +
                       TagalogHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .punjabi:
            let pool = PunjabiLanguageExerciseData.allExercises +
                       PunjabiCognitionExerciseData.allExercises +
                       PunjabiFunctionalSkillsExerciseData.allExercises +
                       PunjabiNewExercisesData.allExercises +
                       PunjabiHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .armenian:
            let pool = ArmenianLanguageExerciseData.allExercises +
                       ArmenianCognitionExerciseData.allExercises +
                       ArmenianFunctionalSkillsExerciseData.allExercises +
                       ArmenianNewExercisesData.allExercises +
                       ArmenianHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .japanese:
            let pool = JapaneseLanguageExerciseData.allExercises +
                       JapaneseCognitionExerciseData.allExercises +
                       JapaneseFunctionalSkillsExerciseData.allExercises +
                       JapaneseNewExercisesData.allExercises +
                       JapaneseHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .french:
            let pool = FrenchLanguageExerciseData.allExercises +
                       FrenchCognitionExerciseData.allExercises +
                       FrenchFunctionalSkillsExerciseData.allExercises +
                       FrenchNewExercisesData.allExercises +
                       FrenchHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        case .amharic:
            let pool = AmharicLanguageExerciseData.allExercises +
                       AmharicCognitionExerciseData.allExercises +
                       AmharicFunctionalSkillsExerciseData.allExercises +
                       AmharicNewExercisesData.allExercises +
                       AmharicHardExercisesData.allExercises
            return pool.filter { $0.section == section }
        }
    }
}

// MARK: - Flag Content Localization
// Shared between the iOS and tvOS exercise containers and Caregiver Mode,
// so these live outside any #if os() gate.

extension AppLanguage {
    var flagButtonAccessibilityLabel: String {
        switch self {
        case .english:    return "Flag this question"
        case .spanish:    return "Marcar esta pregunta"
        case .hindi:      return "इस प्रश्न को चिह्नित करें"
        case .gujarati:   return "આ પ્રશ્નને ફ્લેગ કરો"
        case .chinese:    return "标记此题目"
        case .farsi:      return "این سوال را پرچم‌گذاری کنید"
        case .korean:     return "이 질문 신고하기"
        case .vietnamese: return "Gắn cờ câu hỏi này"
        case .arabic:     return "الإبلاغ عن هذا السؤال"
        case .portuguese: return "Sinalizar esta pergunta"
        case .tagalog:    return "I-flag ang tanong na ito"
        case .punjabi:    return "ਇਸ ਸਵਾਲ ਨੂੰ ਫਲੈਗ ਕਰੋ"
        case .armenian:   return "Դրոշակել այս հարցը"
        case .japanese:   return "この質問を報告"
        case .french:     return "Signaler cette question"
        case .amharic:    return "ይህን ጥያቄ ምልክት አድርግ"
        }
    }

    var flagContentAlertTitle: String {
        switch self {
        case .english:    return "Flag this question for review?"
        case .spanish:    return "¿Marcar esta pregunta para revisión?"
        case .hindi:      return "समीक्षा के लिए इस प्रश्न को चिह्नित करें?"
        case .gujarati:   return "સમીક્ષા માટે આ પ્રશ્નને ફ્લેગ કરવો છે?"
        case .chinese:    return "将此题目标记以供审核？"
        case .farsi:      return "این سوال برای بررسی پرچم‌گذاری شود؟"
        case .korean:     return "이 질문을 검토용으로 신고하시겠습니까?"
        case .vietnamese: return "Gắn cờ câu hỏi này để xem xét?"
        case .arabic:     return "هل تريد الإبلاغ عن هذا السؤال للمراجعة؟"
        case .portuguese: return "Sinalizar esta pergunta para revisão?"
        case .tagalog:    return "I-flag ang tanong na ito para sa pagsusuri?"
        case .punjabi:    return "ਸਮੀਖਿਆ ਲਈ ਇਸ ਸਵਾਲ ਨੂੰ ਫਲੈਗ ਕਰਨਾ ਹੈ?"
        case .armenian:   return "Դրոշակե՞լ այս հարցը վերանայման համար։"
        case .japanese:   return "この質問を確認用に報告しますか？"
        case .french:     return "Signaler cette question pour examen ?"
        case .amharic:    return "ይህ ጥያቄ ለክለሳ ምልክት ይደረግበት?"
        }
    }

    var flagContentAlertMessage: String {
        switch self {
        case .english:    return "This saves a local note for your caregiver to review. No personal information is included."
        case .spanish:    return "Esto guarda una nota local para que la revise su cuidador. No se incluye información personal."
        case .hindi:      return "यह आपके देखभालकर्ता की समीक्षा के लिए एक स्थानीय नोट सहेजता है। इसमें कोई व्यक्तिगत जानकारी शामिल नहीं है।"
        case .gujarati:   return "આ તમારા સંભાળકર્તાની સમીક્ષા માટે સ્થાનિક નોંધ સાચવે છે. તેમાં કોઈ વ્યક્તિગત માહિતી શામેલ નથી."
        case .chinese:    return "这会在本地保存一条记录，供你的看护者查看。不包含任何个人信息。"
        case .farsi:      return "این یک یادداشت محلی برای بررسی توسط مراقب شما ذخیره می‌کند. هیچ اطلاعات شخصی در آن نیست."
        case .korean:     return "보호자가 검토할 수 있도록 로컬에 메모가 저장됩니다. 개인정보는 포함되지 않습니다."
        case .vietnamese: return "Thao tác này lưu một ghi chú cục bộ để người chăm sóc xem xét. Không có thông tin cá nhân nào được lưu."
        case .arabic:     return "سيؤدي هذا إلى حفظ ملاحظة محلية ليراجعها مقدم الرعاية الخاص بك. لا يتم تضمين أي معلومات شخصية."
        case .portuguese: return "Isso salva uma nota local para o seu cuidador revisar. Nenhuma informação pessoal é incluída."
        case .tagalog:    return "Nagse-save ito ng lokal na tala para masuri ng iyong caregiver. Walang personal na impormasyong isasama."
        case .punjabi:    return "ਇਹ ਤੁਹਾਡੇ ਦੇਖਭਾਲਕਰਤਾ ਦੀ ਸਮੀਖਿਆ ਲਈ ਇੱਕ ਸਥਾਨਕ ਨੋਟ ਸੰਭਾਲਦਾ ਹੈ। ਇਸ ਵਿੱਚ ਕੋਈ ਨਿੱਜੀ ਜਾਣਕਾਰੀ ਸ਼ਾਮਲ ਨਹੀਂ ਹੈ।"
        case .armenian:   return "Սա տեղային նշում է պահպանում ձեր խնամողի վերանայման համար։ Անձնական տվյալներ չեն ներառվում։"
        case .japanese:   return "この操作により、介護者が確認できるようローカルにメモが保存されます。個人情報は含まれません。"
        case .french:     return "Cela enregistre une note locale que votre aidant pourra consulter. Aucune information personnelle n'est incluse."
        case .amharic:    return "ይህ ለእንክብካቤ ሰጪዎ ግምገማ የአካባቢ ማስታወሻ ያስቀምጣል። ምንም የግል መረጃ አልተካተተም።"
        }
    }

    var flagContentConfirm: String {
        switch self {
        case .english:    return "Flag"
        case .spanish:    return "Marcar"
        case .hindi:      return "चिह्नित करें"
        case .gujarati:   return "ફ્લેગ કરો"
        case .chinese:    return "标记"
        case .farsi:      return "پرچم‌گذاری"
        case .korean:     return "신고"
        case .vietnamese: return "Gắn cờ"
        case .arabic:     return "إبلاغ"
        case .portuguese: return "Sinalizar"
        case .tagalog:    return "I-flag"
        case .punjabi:    return "ਫਲੈਗ ਕਰੋ"
        case .armenian:   return "Դրոշակել"
        case .japanese:   return "報告"
        case .french:     return "Signaler"
        case .amharic:    return "ምልክት አድርግ"
        }
    }

    var flagContentCancel: String {
        switch self {
        case .english:    return "Cancel"
        case .spanish:    return "Cancelar"
        case .hindi:      return "रद्द करें"
        case .gujarati:   return "રદ કરો"
        case .chinese:    return "取消"
        case .farsi:      return "لغو"
        case .korean:     return "취소"
        case .vietnamese: return "Hủy"
        case .arabic:     return "إلغاء"
        case .portuguese: return "Cancelar"
        case .tagalog:    return "Kanselahin"
        case .punjabi:    return "ਰੱਦ ਕਰੋ"
        case .armenian:   return "Չեղարկել"
        case .japanese:   return "キャンセル"
        case .french:     return "Annuler"
        case .amharic:    return "ይቅር"
        }
    }

    var flagContentConfirmedToast: String {
        switch self {
        case .english:    return "Flagged for review"
        case .spanish:    return "Marcado para revisión"
        case .hindi:      return "समीक्षा के लिए चिह्नित"
        case .gujarati:   return "સમીક્ષા માટે ફ્લેગ કરાયું"
        case .chinese:    return "已标记以供审核"
        case .farsi:      return "برای بررسی پرچم‌گذاری شد"
        case .korean:     return "검토용으로 신고됨"
        case .vietnamese: return "Đã gắn cờ để xem xét"
        case .arabic:     return "تم الإبلاغ للمراجعة"
        case .portuguese: return "Sinalizado para revisão"
        case .tagalog:    return "Na-flag para sa pagsusuri"
        case .punjabi:    return "ਸਮੀਖਿਆ ਲਈ ਫਲੈਗ ਕੀਤਾ ਗਿਆ"
        case .armenian:   return "Դրոշակվել է վերանայման համար"
        case .japanese:   return "確認用に報告しました"
        case .french:     return "Signalé pour examen"
        case .amharic:    return "ለክለሳ ምልክት ተደርጓል"
        }
    }

    var flaggedContentSectionLabel: String {
        switch self {
        case .english:    return "Flagged Content"
        case .spanish:    return "Contenido Marcado"
        case .hindi:      return "चिह्नित सामग्री"
        case .gujarati:   return "ફ્લેગ કરેલ સામગ્રી"
        case .chinese:    return "已标记内容"
        case .farsi:      return "محتوای پرچم‌گذاری‌شده"
        case .korean:     return "신고된 콘텐츠"
        case .vietnamese: return "Nội dung đã gắn cờ"
        case .arabic:     return "المحتوى المُبلَّغ عنه"
        case .portuguese: return "Conteúdo Sinalizado"
        case .tagalog:    return "Na-flag na Nilalaman"
        case .punjabi:    return "ਫਲੈਗ ਕੀਤੀ ਸਮੱਗਰੀ"
        case .armenian:   return "Դրոշակված Բովանդակություն"
        case .japanese:   return "報告されたコンテンツ"
        case .french:     return "Contenu Signalé"
        case .amharic:    return "ምልክት የተደረገበት ይዘት"
        }
    }

    var flaggedContentEmptyState: String {
        switch self {
        case .english:    return "No flagged items yet"
        case .spanish:    return "Aún no hay elementos marcados"
        case .hindi:      return "अभी तक कोई चिह्नित आइटम नहीं"
        case .gujarati:   return "હજુ સુધી કોઈ ફ્લેગ કરેલ આઇટમ નથી"
        case .chinese:    return "暂无已标记的内容"
        case .farsi:      return "هنوز موردی پرچم‌گذاری نشده است"
        case .korean:     return "아직 신고된 항목이 없습니다"
        case .vietnamese: return "Chưa có mục nào được gắn cờ"
        case .arabic:     return "لا توجد عناصر مُبلَّغ عنها بعد"
        case .portuguese: return "Ainda não há itens sinalizados"
        case .tagalog:    return "Wala pang na-flag na item"
        case .punjabi:    return "ਹਾਲੇ ਤੱਕ ਕੋਈ ਫਲੈਗ ਕੀਤੀ ਆਈਟਮ ਨਹੀਂ"
        case .armenian:   return "Առայժմ դրոշակված նյութեր չկան"
        case .japanese:   return "報告された項目はまだありません"
        case .french:     return "Aucun élément signalé pour le moment"
        case .amharic:    return "እስካሁን ምልክት የተደረገበት ንጥል የለም"
        }
    }

    var flaggedContentCopyAllButton: String {
        switch self {
        case .english:    return "Copy All as Text"
        case .spanish:    return "Copiar Todo como Texto"
        case .hindi:      return "सभी को टेक्स्ट के रूप में कॉपी करें"
        case .gujarati:   return "બધું ટેક્સ્ટ તરીકે કૉપિ કરો"
        case .chinese:    return "全部复制为文本"
        case .farsi:      return "کپی همه به‌صورت متن"
        case .korean:     return "모두 텍스트로 복사"
        case .vietnamese: return "Sao chép tất cả dưới dạng văn bản"
        case .arabic:     return "نسخ الكل كنص"
        case .portuguese: return "Copiar Tudo como Texto"
        case .tagalog:    return "Kopyahin Lahat bilang Teksto"
        case .punjabi:    return "ਸਭ ਨੂੰ ਟੈਕਸਟ ਵਜੋਂ ਕਾਪੀ ਕਰੋ"
        case .armenian:   return "Պատճենել Ամբողջը որպես Տեքստ"
        case .japanese:   return "すべてをテキストとしてコピー"
        case .french:     return "Copier Tout en Texte"
        case .amharic:    return "ሁሉንም እንደ ጽሑፍ ቅዳ"
        }
    }

    var flaggedContentExportJSONButton: String {
        switch self {
        case .english:    return "Export as JSON"
        case .spanish:    return "Exportar como JSON"
        case .hindi:      return "JSON के रूप में निर्यात करें"
        case .gujarati:   return "JSON તરીકે નિકાસ કરો"
        case .chinese:    return "导出为 JSON"
        case .farsi:      return "خروجی به‌صورت JSON"
        case .korean:     return "JSON으로 내보내기"
        case .vietnamese: return "Xuất dưới dạng JSON"
        case .arabic:     return "تصدير كملف JSON"
        case .portuguese: return "Exportar como JSON"
        case .tagalog:    return "I-export bilang JSON"
        case .punjabi:    return "JSON ਵਜੋਂ ਐਕਸਪੋਰਟ ਕਰੋ"
        case .armenian:   return "Արտահանել որպես JSON"
        case .japanese:   return "JSONとしてエクスポート"
        case .french:     return "Exporter en JSON"
        case .amharic:    return "እንደ JSON ላክ"
        }
    }

    var flaggedContentCopiedConfirmation: String {
        switch self {
        case .english:    return "Copied to clipboard"
        case .spanish:    return "Copiado al portapapeles"
        case .hindi:      return "क्लिपबोर्ड पर कॉपी किया गया"
        case .gujarati:   return "ક્લિપબોર્ડ પર કૉપિ થયું"
        case .chinese:    return "已复制到剪贴板"
        case .farsi:      return "در کلیپ‌بورد کپی شد"
        case .korean:     return "클립보드에 복사됨"
        case .vietnamese: return "Đã sao chép vào bảng nhớ tạm"
        case .arabic:     return "تم النسخ إلى الحافظة"
        case .portuguese: return "Copiado para a área de transferência"
        case .tagalog:    return "Nakopya sa clipboard"
        case .punjabi:    return "ਕਲਿੱਪਬੋਰਡ 'ਤੇ ਕਾਪੀ ਕੀਤਾ ਗਿਆ"
        case .armenian:   return "Պատճենվել է սեղմատախտակին"
        case .japanese:   return "クリップボードにコピーしました"
        case .french:     return "Copié dans le presse-papiers"
        case .amharic:    return "ወደ ቅንጥብ ሰሌዳ ተቀድቷል"
        }
    }
}
