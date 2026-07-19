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

// MARK: - ProfileView Localization

extension AppLanguage {
    var pvNamePlaceholder: String {
        switch self {
        case .english: return "Enter your name"
        case .spanish: return "Ingresa tu nombre"
        case .hindi: return "अपना नाम दर्ज करें"
        case .gujarati: return "તમારું નામ દાખલ કરો"
        case .chinese: return "输入您的姓名"
        case .farsi: return "نام خود را وارد کنید"
        case .korean: return "이름을 입력하세요"
        case .vietnamese: return "Nhập tên của bạn"
        case .arabic: return "أدخل اسمك"
        case .portuguese: return "Digite seu nome"
        case .tagalog: return "Ilagay ang iyong pangalan"
        case .punjabi: return "ਆਪਣਾ ਨਾਮ ਦਰਜ ਕਰੋ"
        case .armenian: return "Մուտքագրեք ձեր անունը"
        case .japanese: return "お名前を入力してください"
        case .french: return "Entrez votre nom"
        case .amharic: return "ስምዎን ያስገቡ"
        }
    }

    var pvDiagnosis: String {
        switch self {
        case .english: return "Diagnosis"
        case .spanish: return "Diagnóstico"
        case .hindi: return "निदान"
        case .gujarati: return "નિદાન"
        case .chinese: return "诊断"
        case .farsi: return "تشخیص"
        case .korean: return "진단"
        case .vietnamese: return "Chẩn đoán"
        case .arabic: return "التشخيص"
        case .portuguese: return "Diagnóstico"
        case .tagalog: return "Diagnosis"
        case .punjabi: return "ਨਿਦਾਨ"
        case .armenian: return "Ախտորոշում"
        case .japanese: return "診断"
        case .french: return "Diagnostic"
        case .amharic: return "ምርመራ"
        }
    }

    var pvNotSet: String {
        switch self {
        case .english: return "Not set"
        case .spanish: return "No establecido"
        case .hindi: return "सेट नहीं है"
        case .gujarati: return "સેટ નથી"
        case .chinese: return "未设置"
        case .farsi: return "تنظیم نشده"
        case .korean: return "설정되지 않음"
        case .vietnamese: return "Chưa thiết lập"
        case .arabic: return "غير محدد"
        case .portuguese: return "Não definido"
        case .tagalog: return "Hindi naitakda"
        case .punjabi: return "ਸੈੱਟ ਨਹੀਂ ਹੈ"
        case .armenian: return "Սահմանված չէ"
        case .japanese: return "未設定"
        case .french: return "Non défini"
        case .amharic: return "አልተቀናበረም"
        }
    }

    var pvTherapist: String {
        switch self {
        case .english: return "Therapist"
        case .spanish: return "Terapeuta"
        case .hindi: return "चिकित्सक"
        case .gujarati: return "થેરાપિસ્ટ"
        case .chinese: return "治疗师"
        case .farsi: return "درمانگر"
        case .korean: return "치료사"
        case .vietnamese: return "Nhà trị liệu"
        case .arabic: return "المعالج"
        case .portuguese: return "Terapeuta"
        case .tagalog: return "Therapist"
        case .punjabi: return "ਥੈਰੇਪਿਸਟ"
        case .armenian: return "Թերապևտ"
        case .japanese: return "セラピスト"
        case .french: return "Thérapeute"
        case .amharic: return "ቴራፒስት"
        }
    }

    var pvUsingSince: String {
        switch self {
        case .english: return "Using since"
        case .spanish: return "Usando desde"
        case .hindi: return "उपयोग शुरू किया"
        case .gujarati: return "થી ઉપયોગ કરી રહ્યાં છે"
        case .chinese: return "使用起始于"
        case .farsi: return "از تاریخ استفاده"
        case .korean: return "사용 시작일"
        case .vietnamese: return "Sử dụng từ"
        case .arabic: return "تُستخدم منذ"
        case .portuguese: return "Usando desde"
        case .tagalog: return "Gumagamit simula"
        case .punjabi: return "ਵਰਤੋਂ ਸ਼ੁਰੂ"
        case .armenian: return "Օգտագործում է սկսած"
        case .japanese: return "利用開始日"
        case .french: return "Utilisation depuis"
        case .amharic: return "ከጀመሩበት"
        }
    }

    var pvNotes: String {
        switch self {
        case .english: return "Notes"
        case .spanish: return "Notas"
        case .hindi: return "टिप्पणियाँ"
        case .gujarati: return "નોંધો"
        case .chinese: return "备注"
        case .farsi: return "یادداشت‌ها"
        case .korean: return "메모"
        case .vietnamese: return "Ghi chú"
        case .arabic: return "ملاحظات"
        case .portuguese: return "Notas"
        case .tagalog: return "Mga Tala"
        case .punjabi: return "ਨੋਟਸ"
        case .armenian: return "Նշումներ"
        case .japanese: return "メモ"
        case .french: return "Notes"
        case .amharic: return "ማስታወሻዎች"
        }
    }

    var pvSessions: String {
        switch self {
        case .english: return "Sessions"
        case .spanish: return "Sesiones"
        case .hindi: return "सत्र"
        case .gujarati: return "સત્રો"
        case .chinese: return "训练次数"
        case .farsi: return "جلسات"
        case .korean: return "세션"
        case .vietnamese: return "Buổi tập"
        case .arabic: return "الجلسات"
        case .portuguese: return "Sessões"
        case .tagalog: return "Mga Sesyon"
        case .punjabi: return "ਸੈਸ਼ਨ"
        case .armenian: return "Սեսիաներ"
        case .japanese: return "セッション"
        case .french: return "Séances"
        case .amharic: return "ክፍለ ጊዜዎች"
        }
    }

    var pvCompleted: String {
        switch self {
        case .english: return "Completed"
        case .spanish: return "Completado"
        case .hindi: return "पूर्ण"
        case .gujarati: return "પૂર્ણ"
        case .chinese: return "已完成"
        case .farsi: return "تکمیل‌شده"
        case .korean: return "완료됨"
        case .vietnamese: return "Đã hoàn thành"
        case .arabic: return "مكتمل"
        case .portuguese: return "Concluído"
        case .tagalog: return "Nakumpleto"
        case .punjabi: return "ਮੁਕੰਮਲ"
        case .armenian: return "Ավարտված"
        case .japanese: return "完了"
        case .french: return "Terminé"
        case .amharic: return "ተጠናቋል"
        }
    }

    var pvDaysActive: String {
        switch self {
        case .english: return "Days Active"
        case .spanish: return "Días activos"
        case .hindi: return "सक्रिय दिन"
        case .gujarati: return "સક્રિય દિવસો"
        case .chinese: return "活跃天数"
        case .farsi: return "روزهای فعال"
        case .korean: return "활동 일수"
        case .vietnamese: return "Số ngày hoạt động"
        case .arabic: return "أيام النشاط"
        case .portuguese: return "Dias ativos"
        case .tagalog: return "Mga Araw na Aktibo"
        case .punjabi: return "ਸਰਗਰਮ ਦਿਨ"
        case .armenian: return "Ակտիվ օրեր"
        case .japanese: return "活動日数"
        case .french: return "Jours actifs"
        case .amharic: return "ንቁ ቀናት"
        }
    }

    var pvAccuracy: String {
        switch self {
        case .english: return "Accuracy"
        case .spanish: return "Precisión"
        case .hindi: return "सटीकता"
        case .gujarati: return "ચોકસાઈ"
        case .chinese: return "准确率"
        case .farsi: return "دقت"
        case .korean: return "정확도"
        case .vietnamese: return "Độ chính xác"
        case .arabic: return "الدقة"
        case .portuguese: return "Precisão"
        case .tagalog: return "Katumpakan"
        case .punjabi: return "ਸ਼ੁੱਧਤਾ"
        case .armenian: return "Ճշգրտություն"
        case .japanese: return "正解率"
        case .french: return "Précision"
        case .amharic: return "ትክክለኛነት"
        }
    }

    var pvLanguageHeader: String {
        switch self {
        case .english: return "Language"
        case .spanish: return "Idioma"
        case .hindi: return "भाषा"
        case .gujarati: return "ભાષા"
        case .chinese: return "语言"
        case .farsi: return "زبان"
        case .korean: return "언어"
        case .vietnamese: return "Ngôn ngữ"
        case .arabic: return "اللغة"
        case .portuguese: return "Idioma"
        case .tagalog: return "Wika"
        case .punjabi: return "ਭਾਸ਼ਾ"
        case .armenian: return "Լեզու"
        case .japanese: return "言語"
        case .french: return "Langue"
        case .amharic: return "ቋንቋ"
        }
    }

    var pvLanguageFootnote: String {
        switch self {
        case .english: return "The app will display all exercises in the selected language."
        case .spanish: return "La app mostrará todos los ejercicios en el idioma seleccionado."
        case .hindi: return "ऐप सभी अभ्यासों को चुनी गई भाषा में दिखाएगा।"
        case .gujarati: return "એપ્લિકેશન બધી કસરતોને પસંદ કરેલી ભાષામાં બતાવશે."
        case .chinese: return "应用将以所选语言显示所有练习。"
        case .farsi: return "برنامه تمام تمرین‌ها را به زبان انتخاب‌شده نمایش می‌دهد."
        case .korean: return "앱은 선택한 언어로 모든 연습 문제를 표시합니다."
        case .vietnamese: return "Ứng dụng sẽ hiển thị tất cả bài tập bằng ngôn ngữ đã chọn."
        case .arabic: return "سيعرض التطبيق جميع التمارين باللغة المختارة."
        case .portuguese: return "O aplicativo exibirá todos os exercícios no idioma selecionado."
        case .tagalog: return "Ipapakita ng app ang lahat ng ehersisyo sa napiling wika."
        case .punjabi: return "ਐਪ ਚੁਣੀ ਗਈ ਭਾਸ਼ਾ ਵਿੱਚ ਸਾਰੀਆਂ ਕਸਰਤਾਂ ਦਿਖਾਏਗੀ।"
        case .armenian: return "Հավելվածը բոլոր վարժությունները կցուցադրի ընտրված լեզվով:"
        case .japanese: return "アプリはすべての練習問題を選択した言語で表示します。"
        case .french: return "L'application affichera tous les exercices dans la langue sélectionnée."
        case .amharic: return "መተግበሪያው ሁሉንም ልምምዶች በተመረጠው ቋንቋ ያሳያል።"
        }
    }

    var pvAchievements: String {
        switch self {
        case .english: return "Achievements"
        case .spanish: return "Logros"
        case .hindi: return "उपलब्धियाँ"
        case .gujarati: return "સિદ્ધિઓ"
        case .chinese: return "成就"
        case .farsi: return "دستاوردها"
        case .korean: return "업적"
        case .vietnamese: return "Thành tích"
        case .arabic: return "الإنجازات"
        case .portuguese: return "Conquistas"
        case .tagalog: return "Mga Tagumpay"
        case .punjabi: return "ਪ੍ਰਾਪਤੀਆਂ"
        case .armenian: return "Ձեռքբերումներ"
        case .japanese: return "実績"
        case .french: return "Réussites"
        case .amharic: return "ስኬቶች"
        }
    }

    var pvMyBadges: String {
        switch self {
        case .english: return "My Badges"
        case .spanish: return "Mis insignias"
        case .hindi: return "मेरे बैज"
        case .gujarati: return "મારા બેજ"
        case .chinese: return "我的徽章"
        case .farsi: return "نشان‌های من"
        case .korean: return "내 배지"
        case .vietnamese: return "Huy hiệu của tôi"
        case .arabic: return "شاراتي"
        case .portuguese: return "Minhas insígnias"
        case .tagalog: return "Aking mga Badge"
        case .punjabi: return "ਮੇਰੇ ਬੈਜ"
        case .armenian: return "Իմ կրծքանշանները"
        case .japanese: return "マイバッジ"
        case .french: return "Mes badges"
        case .amharic: return "የእኔ ባጆች"
        }
    }

    var pvResearch: String {
        switch self {
        case .english: return "Research"
        case .spanish: return "Investigación"
        case .hindi: return "शोध"
        case .gujarati: return "સંશોધન"
        case .chinese: return "研究"
        case .farsi: return "پژوهش"
        case .korean: return "연구"
        case .vietnamese: return "Nghiên cứu"
        case .arabic: return "البحث"
        case .portuguese: return "Pesquisa"
        case .tagalog: return "Pananaliksik"
        case .punjabi: return "ਖੋਜ"
        case .armenian: return "Հետազոտություն"
        case .japanese: return "研究"
        case .french: return "Recherche"
        case .amharic: return "ምርምር"
        }
    }

    var pvResearchDisclaimer: String {
        switch self {
        case .english: return "This exports anonymous performance data only. No personal information (name, photo, or contact details) is included. Share with researchers or therapists."
        case .spanish: return "Esto exporta únicamente datos de rendimiento anónimos. No se incluye información personal (nombre, foto o datos de contacto). Compártelo con investigadores o terapeutas."
        case .hindi: return "यह केवल गुमनाम प्रदर्शन डेटा निर्यात करता है। कोई व्यक्तिगत जानकारी (नाम, फोटो या संपर्क विवरण) शामिल नहीं है। शोधकर्ताओं या चिकित्सकों के साथ साझा करें।"
        case .gujarati: return "આ ફક્ત અનામી પ્રદર્શન ડેટા નિકાસ કરે છે. કોઈ વ્યક્તિગત માહિતી (નામ, ફોટો અથવા સંપર્ક વિગતો) શામેલ નથી. સંશોધકો અથવા ચિકિત્સકો સાથે શેર કરો."
        case .chinese: return "此操作仅导出匿名的表现数据，不包含任何个人信息（姓名、照片或联系方式）。可与研究人员或治疗师分享。"
        case .farsi: return "این کار فقط داده‌های عملکرد ناشناس را صادر می‌کند. هیچ اطلاعات شخصی (نام، عکس یا اطلاعات تماس) گنجانده نشده است. با پژوهشگران یا درمانگران به اشتراک بگذارید."
        case .korean: return "이 기능은 익명의 수행 데이터만 내보냅니다. 개인 정보(이름, 사진, 연락처)는 포함되지 않습니다. 연구자나 치료사와 공유하세요."
        case .vietnamese: return "Thao tác này chỉ xuất dữ liệu hiệu suất ẩn danh. Không bao gồm thông tin cá nhân (tên, ảnh hoặc thông tin liên hệ). Chia sẻ với các nhà nghiên cứu hoặc nhà trị liệu."
        case .arabic: return "يقوم هذا بتصدير بيانات الأداء المجهولة فقط. لا يتم تضمين أي معلومات شخصية (الاسم أو الصورة أو تفاصيل الاتصال). شاركها مع الباحثين أو المعالجين."
        case .portuguese: return "Isso exporta apenas dados de desempenho anônimos. Nenhuma informação pessoal (nome, foto ou dados de contato) é incluída. Compartilhe com pesquisadores ou terapeutas."
        case .tagalog: return "Ini-export lamang nito ang anonymous na data ng performance. Walang kasamang personal na impormasyon (pangalan, larawan, o detalye ng contact). Ibahagi sa mga mananaliksik o therapist."
        case .punjabi: return "ਇਹ ਸਿਰਫ਼ ਅਗਿਆਤ ਪ੍ਰਦਰਸ਼ਨ ਡੇਟਾ ਨਿਰਯਾਤ ਕਰਦਾ ਹੈ। ਕੋਈ ਨਿੱਜੀ ਜਾਣਕਾਰੀ (ਨਾਮ, ਫੋਟੋ, ਜਾਂ ਸੰਪਰਕ ਵੇਰਵੇ) ਸ਼ਾਮਲ ਨਹੀਂ ਹੈ। ਖੋਜਕਰਤਾਵਾਂ ਜਾਂ ਥੈਰੇਪਿਸਟਾਂ ਨਾਲ ਸਾਂਝਾ ਕਰੋ।"
        case .armenian: return "Սա արտահանում է միայն անանուն կատարողականության տվյալներ: Անձնական տեղեկություններ (անուն, լուսանկար կամ կոնտակտային տվյալներ) չեն ներառվում: Կիսվեք հետազոտողների կամ թերապևտների հետ:"
        case .japanese: return "これは匿名のパフォーマンスデータのみをエクスポートします。個人情報（氏名、写真、連絡先など）は含まれません。研究者やセラピストと共有してください。"
        case .french: return "Cette action exporte uniquement des données de performance anonymes. Aucune information personnelle (nom, photo ou coordonnées) n'est incluse. Partagez avec des chercheurs ou des thérapeutes."
        case .amharic: return "ይህ የማይታወቅ የአፈጻጸም መረጃ ብቻ ይልካል። ምንም የግል መረጃ (ስም፣ ፎቶ ወይም የመገናኛ ዝርዝሮች) አልተካተተም። ከተመራማሪዎች ወይም ከቴራፒስቶች ጋር ያጋሩ።"
        }
    }

    var pvExportResearchData: String {
        switch self {
        case .english: return "Export Research Data"
        case .spanish: return "Exportar datos de investigación"
        case .hindi: return "शोध डेटा निर्यात करें"
        case .gujarati: return "સંશોધન ડેટા નિકાસ કરો"
        case .chinese: return "导出研究数据"
        case .farsi: return "صادرات داده‌های پژوهشی"
        case .korean: return "연구 데이터 내보내기"
        case .vietnamese: return "Xuất dữ liệu nghiên cứu"
        case .arabic: return "تصدير بيانات البحث"
        case .portuguese: return "Exportar dados de pesquisa"
        case .tagalog: return "I-export ang Data ng Pananaliksik"
        case .punjabi: return "ਖੋਜ ਡੇਟਾ ਨਿਰਯਾਤ ਕਰੋ"
        case .armenian: return "Արտահանել հետազոտության տվյալները"
        case .japanese: return "研究データをエクスポート"
        case .french: return "Exporter les données de recherche"
        case .amharic: return "የምርምር መረጃ ላክ"
        }
    }

    var pvAboutGuidance: String {
        switch self {
        case .english: return "About this app's guidance"
        case .spanish: return "Acerca de las recomendaciones de esta app"
        case .hindi: return "इस ऐप के मार्गदर्शन के बारे में"
        case .gujarati: return "આ એપ્લિકેશનના માર્ગદર્શન વિશે"
        case .chinese: return "关于本应用的指导说明"
        case .farsi: return "درباره راهنمایی‌های این برنامه"
        case .korean: return "이 앱의 안내에 대하여"
        case .vietnamese: return "Về hướng dẫn của ứng dụng này"
        case .arabic: return "حول إرشادات هذا التطبيق"
        case .portuguese: return "Sobre as orientações deste aplicativo"
        case .tagalog: return "Tungkol sa gabay ng app na ito"
        case .punjabi: return "ਇਸ ਐਪ ਦੀ ਸੇਧ ਬਾਰੇ"
        case .armenian: return "Այս հավելվածի ուղեցույցի մասին"
        case .japanese: return "本アプリのガイダンスについて"
        case .french: return "À propos des conseils de cette application"
        case .amharic: return "ስለዚህ መተግበሪያ መመሪያ"
        }
    }

    var pvResetProfile: String {
        switch self {
        case .english: return "Reset Profile"
        case .spanish: return "Restablecer perfil"
        case .hindi: return "प्रोफ़ाइल रीसेट करें"
        case .gujarati: return "પ્રોફાઇલ રીસેટ કરો"
        case .chinese: return "重置个人资料"
        case .farsi: return "بازنشانی پروفایل"
        case .korean: return "프로필 초기화"
        case .vietnamese: return "Đặt lại hồ sơ"
        case .arabic: return "إعادة تعيين الملف الشخصي"
        case .portuguese: return "Redefinir perfil"
        case .tagalog: return "I-reset ang Profile"
        case .punjabi: return "ਪ੍ਰੋਫਾਈਲ ਰੀਸੈੱਟ ਕਰੋ"
        case .armenian: return "Վերականգնել պրոֆիլը"
        case .japanese: return "プロフィールをリセット"
        case .french: return "Réinitialiser le profil"
        case .amharic: return "መገለጫ ዳግም አስጀምር"
        }
    }

    var pvResetProfileAlertTitle: String {
        switch self {
        case .english: return "Reset Profile?"
        case .spanish: return "¿Restablecer perfil?"
        case .hindi: return "प्रोफ़ाइल रीसेट करें?"
        case .gujarati: return "પ્રોફાઇલ રીસેટ કરવી છે?"
        case .chinese: return "要重置个人资料吗？"
        case .farsi: return "پروفایل بازنشانی شود؟"
        case .korean: return "프로필을 초기화하시겠습니까?"
        case .vietnamese: return "Đặt lại hồ sơ?"
        case .arabic: return "هل تريد إعادة تعيين الملف الشخصي؟"
        case .portuguese: return "Redefinir perfil?"
        case .tagalog: return "I-reset ang Profile?"
        case .punjabi: return "ਕੀ ਪ੍ਰੋਫਾਈਲ ਰੀਸੈੱਟ ਕਰਨੀ ਹੈ?"
        case .armenian: return "Վերականգնե՞լ պրոֆիլը:"
        case .japanese: return "プロフィールをリセットしますか？"
        case .french: return "Réinitialiser le profil ?"
        case .amharic: return "መገለጫ ዳግም ማስጀመር ይፈልጋሉ?"
        }
    }

    var pvCancel: String {
        switch self {
        case .english: return "Cancel"
        case .spanish: return "Cancelar"
        case .hindi: return "रद्द करें"
        case .gujarati: return "રદ કરો"
        case .chinese: return "取消"
        case .farsi: return "لغو"
        case .korean: return "취소"
        case .vietnamese: return "Hủy"
        case .arabic: return "إلغاء"
        case .portuguese: return "Cancelar"
        case .tagalog: return "Kanselahin"
        case .punjabi: return "ਰੱਦ ਕਰੋ"
        case .armenian: return "Չեղարկել"
        case .japanese: return "キャンセル"
        case .french: return "Annuler"
        case .amharic: return "ይቅር"
        }
    }

    var pvReset: String {
        switch self {
        case .english: return "Reset"
        case .spanish: return "Restablecer"
        case .hindi: return "रीसेट करें"
        case .gujarati: return "રીસેટ કરો"
        case .chinese: return "重置"
        case .farsi: return "بازنشانی"
        case .korean: return "초기화"
        case .vietnamese: return "Đặt lại"
        case .arabic: return "إعادة تعيين"
        case .portuguese: return "Redefinir"
        case .tagalog: return "I-reset"
        case .punjabi: return "ਰੀਸੈੱਟ ਕਰੋ"
        case .armenian: return "Վերականգնել"
        case .japanese: return "リセット"
        case .french: return "Réinitialiser"
        case .amharic: return "ዳግም አስጀምር"
        }
    }

    var pvResetProfileMessage: String {
        switch self {
        case .english: return "This will clear your name, photo, diagnosis, and notes. Your exercise history and session counts will not be affected, but your streak will reset to zero."
        case .spanish: return "Esto borrará tu nombre, foto, diagnóstico y notas. Tu historial de ejercicios y el número de sesiones no se verán afectados, pero tu racha se restablecerá a cero."
        case .hindi: return "यह आपका नाम, फोटो, निदान और टिप्पणियाँ हटा देगा। आपके अभ्यास का इतिहास और सत्रों की संख्या प्रभावित नहीं होगी, लेकिन आपकी लगातार श्रृंखला शून्य पर रीसेट हो जाएगी।"
        case .gujarati: return "આ તમારું નામ, ફોટો, નિદાન અને નોંધો સાફ કરશે. તમારો કસરત ઇતિહાસ અને સત્રોની સંખ્યા પ્રભાવિત નહીં થાય, પરંતુ તમારી શ્રેણી શૂન્ય પર રીસેટ થશે."
        case .chinese: return "此操作将清除您的姓名、照片、诊断信息和备注。您的练习历史和训练次数不受影响，但连续天数将重置为零。"
        case .farsi: return "این کار نام، عکس، تشخیص و یادداشت‌های شما را پاک می‌کند. تاریخچه تمرین‌ها و تعداد جلسات شما تحت تأثیر قرار نمی‌گیرد، اما روند پیوسته شما به صفر بازنشانی می‌شود."
        case .korean: return "이 작업은 이름, 사진, 진단, 메모를 삭제합니다. 연습 기록과 세션 수는 영향을 받지 않지만, 연속 기록은 0으로 초기화됩니다."
        case .vietnamese: return "Thao tác này sẽ xóa tên, ảnh, chẩn đoán và ghi chú của bạn. Lịch sử bài tập và số buổi tập sẽ không bị ảnh hưởng, nhưng chuỗi ngày liên tiếp sẽ đặt lại về 0."
        case .arabic: return "سيؤدي هذا إلى مسح اسمك وصورتك وتشخيصك وملاحظاتك. لن يتأثر سجل تمارينك وعدد جلساتك، لكن سلسلة أيامك المتتالية ستُعاد إلى الصفر."
        case .portuguese: return "Isso apagará seu nome, foto, diagnóstico e notas. Seu histórico de exercícios e contagem de sessões não serão afetados, mas sua sequência será reiniciada para zero."
        case .tagalog: return "Ito ay magbubura ng iyong pangalan, larawan, diagnosis, at mga tala. Hindi maaapektuhan ang kasaysayan ng ehersisyo at bilang ng sesyon, ngunit ang iyong streak ay mare-reset sa zero."
        case .punjabi: return "ਇਹ ਤੁਹਾਡਾ ਨਾਮ, ਫੋਟੋ, ਨਿਦਾਨ, ਅਤੇ ਨੋਟਸ ਸਾਫ਼ ਕਰ ਦੇਵੇਗਾ। ਤੁਹਾਡੇ ਅਭਿਆਸ ਦਾ ਇਤਿਹਾਸ ਅਤੇ ਸੈਸ਼ਨਾਂ ਦੀ ਗਿਣਤੀ ਪ੍ਰਭਾਵਿਤ ਨਹੀਂ ਹੋਵੇਗੀ, ਪਰ ਤੁਹਾਡੀ ਲੜੀ ਜ਼ੀਰੋ 'ਤੇ ਰੀਸੈੱਟ ਹੋ ਜਾਵੇਗੀ।"
        case .armenian: return "Սա կջնջի ձեր անունը, լուսանկարը, ախտորոշումը և նշումները: Ձեր վարժությունների պատմությունը և սեսիաների քանակը չեն ազդի, բայց ձեր շարքը կվերականգնվի զրոյի:"
        case .japanese: return "これにより、名前、写真、診断、メモが消去されます。練習履歴とセッション数には影響しませんが、連続記録はゼロにリセットされます。"
        case .french: return "Cela effacera votre nom, votre photo, votre diagnostic et vos notes. Votre historique d'exercices et le nombre de séances ne seront pas affectés, mais votre série sera réinitialisée à zéro."
        case .amharic: return "ይህ ስምዎን፣ ፎቶዎን፣ ምርመራዎን እና ማስታወሻዎችን ያጸዳል። የልምምድ ታሪክዎ እና የክፍለ ጊዜ ብዛትዎ አይነካም፣ ነገር ግን ተከታታይነትዎ ወደ ዜሮ ዳግም ይጀመራል።"
        }
    }

    var pvMyProfileTitle: String {
        switch self {
        case .english: return "My Profile"
        case .spanish: return "Mi perfil"
        case .hindi: return "मेरी प्रोफ़ाइल"
        case .gujarati: return "મારી પ્રોફાઇલ"
        case .chinese: return "我的资料"
        case .farsi: return "پروفایل من"
        case .korean: return "내 프로필"
        case .vietnamese: return "Hồ sơ của tôi"
        case .arabic: return "ملفي الشخصي"
        case .portuguese: return "Meu perfil"
        case .tagalog: return "Aking Profile"
        case .punjabi: return "ਮੇਰੀ ਪ੍ਰੋਫਾਈਲ"
        case .armenian: return "Իմ պրոֆիլը"
        case .japanese: return "マイプロフィール"
        case .french: return "Mon profil"
        case .amharic: return "የእኔ መገለጫ"
        }
    }

    var pvKeyboardTipTitle: String {
        switch self {
        case .english: return "Keyboard Tip"
        case .spanish: return "Consejo de teclado"
        case .hindi: return "कीबोर्ड सुझाव"
        case .gujarati: return "કીબોર્ડ ટિપ"
        case .chinese: return "键盘提示"
        case .farsi: return "نکته صفحه‌کلید"
        case .korean: return "키보드 팁"
        case .vietnamese: return "Mẹo bàn phím"
        case .arabic: return "نصيحة لوحة المفاتيح"
        case .portuguese: return "Dica de teclado"
        case .tagalog: return "Tip sa Keyboard"
        case .punjabi: return "ਕੀਬੋਰਡ ਸੁਝਾਅ"
        case .armenian: return "Ստեղնաշարի խորհուրդ"
        case .japanese: return "キーボードのヒント"
        case .french: return "Astuce clavier"
        case .amharic: return "የቁልፍ ሰሌዳ ምክር"
        }
    }

    var pvGotIt: String {
        switch self {
        case .english: return "Got it"
        case .spanish: return "Entendido"
        case .hindi: return "समझ गया"
        case .gujarati: return "સમજાઈ ગયું"
        case .chinese: return "知道了"
        case .farsi: return "متوجه شدم"
        case .korean: return "확인"
        case .vietnamese: return "Đã hiểu"
        case .arabic: return "فهمت"
        case .portuguese: return "Entendi"
        case .tagalog: return "Nakuha ko"
        case .punjabi: return "ਸਮਝ ਗਿਆ"
        case .armenian: return "Հասկացա"
        case .japanese: return "了解"
        case .french: return "Compris"
        case .amharic: return "ገባኝ"
        }
    }

    var pvOpenSettings: String {
        switch self {
        case .english: return "Open Settings"
        case .spanish: return "Abrir configuración"
        case .hindi: return "सेटिंग्स खोलें"
        case .gujarati: return "સેટિંગ્સ ખોલો"
        case .chinese: return "打开设置"
        case .farsi: return "باز کردن تنظیمات"
        case .korean: return "설정 열기"
        case .vietnamese: return "Mở Cài đặt"
        case .arabic: return "فتح الإعدادات"
        case .portuguese: return "Abrir Configurações"
        case .tagalog: return "Buksan ang Settings"
        case .punjabi: return "ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ"
        case .armenian: return "Բացել կարգավորումները"
        case .japanese: return "設定を開く"
        case .french: return "Ouvrir les réglages"
        case .amharic: return "ቅንብሮችን ክፈት"
        }
    }

    func pvKeyboardTipMessage(_ languageName: String) -> String {
        switch self {
        case .english: return "For the best experience with \(languageName), add the keyboard in iPhone Settings → General → Keyboard → Keyboards → Add New Keyboard."
        case .spanish: return "Para la mejor experiencia con \(languageName), agrega el teclado en Configuración del iPhone → General → Teclado → Teclados → Agregar nuevo teclado."
        case .hindi: return "\(languageName) के साथ बेहतरीन अनुभव के लिए, iPhone सेटिंग्स → सामान्य → कीबोर्ड → कीबोर्ड्स → नया कीबोर्ड जोड़ें में कीबोर्ड जोड़ें।"
        case .gujarati: return "\(languageName) સાથે શ્રેષ્ઠ અનુભવ માટે, iPhone સેટિંગ્સ → સામાન્ય → કીબોર્ડ → કીબોર્ડ્સ → નવું કીબોર્ડ ઉમેરો માં કીબોર્ડ ઉમેરો."
        case .chinese: return "为了获得最佳的\(languageName)使用体验，请在 iPhone 设置 → 通用 → 键盘 → 键盘 → 添加新键盘 中添加该键盘。"
        case .farsi: return "برای بهترین تجربه با \(languageName)، صفحه‌کلید را از مسیر تنظیمات آیفون → عمومی → صفحه‌کلید → صفحه‌کلیدها → افزودن صفحه‌کلید جدید اضافه کنید."
        case .korean: return "\(languageName)(으)로 최상의 경험을 위해 iPhone 설정 → 일반 → 키보드 → 키보드 → 새로운 키보드 추가에서 키보드를 추가하세요."
        case .vietnamese: return "Để có trải nghiệm tốt nhất với \(languageName), hãy thêm bàn phím trong Cài đặt iPhone → Cài đặt chung → Bàn phím → Bàn phím → Thêm bàn phím mới."
        case .arabic: return "للحصول على أفضل تجربة مع \(languageName)، أضف لوحة المفاتيح من إعدادات iPhone → عام → لوحة المفاتيح → لوحات المفاتيح → إضافة لوحة مفاتيح جديدة."
        case .portuguese: return "Para a melhor experiência com \(languageName), adicione o teclado em Ajustes do iPhone → Geral → Teclado → Teclados → Adicionar Novo Teclado."
        case .tagalog: return "Para sa pinakamahusay na karanasan sa \(languageName), idagdag ang keyboard sa iPhone Settings → General → Keyboard → Keyboards → Add New Keyboard."
        case .punjabi: return "\(languageName) ਨਾਲ ਸਭ ਤੋਂ ਵਧੀਆ ਅਨੁਭਵ ਲਈ, iPhone ਸੈਟਿੰਗਾਂ → ਜਨਰਲ → ਕੀਬੋਰਡ → ਕੀਬੋਰਡਸ → ਨਵਾਂ ਕੀਬੋਰਡ ਸ਼ਾਮਲ ਕਰੋ ਵਿੱਚ ਕੀਬੋਰਡ ਸ਼ਾਮਲ ਕਰੋ।"
        case .armenian: return "\(languageName)-ի հետ լավագույն փորձի համար ավելացրեք ստեղնաշարը iPhone-ի Կարգավորումներ → Ընդհանուր → Ստեղնաշար → Ստեղնաշարեր → Ավելացնել նոր ստեղնաշար բաժնում:"
        case .japanese: return "\(languageName)を快適にご利用いただくには、iPhoneの「設定」→「一般」→「キーボード」→「キーボード」→「新しいキーボードを追加」からキーボードを追加してください。"
        case .french: return "Pour la meilleure expérience avec \(languageName), ajoutez le clavier dans Réglages iPhone → Général → Clavier → Claviers → Ajouter un clavier."
        case .amharic: return "ከ\(languageName) ጋር ምርጥ ተሞክሮ ለማግኘት፣ በ iPhone ቅንብሮች → አጠቃላይ → የቁልፍ ሰሌዳ → የቁልፍ ሰሌዳዎች → አዲስ የቁልፍ ሰሌዳ ጨምር ውስጥ የቁልፍ ሰሌዳውን ያክሉ።"
        }
    }

    var pvPleaseSpecify: String {
        switch self {
        case .english: return "Please specify"
        case .spanish: return "Por favor, especifica"
        case .hindi: return "कृपया स्पष्ट करें"
        case .gujarati: return "કૃપા કરી સ્પષ્ટ કરો"
        case .chinese: return "请注明"
        case .farsi: return "لطفاً مشخص کنید"
        case .korean: return "명시해 주세요"
        case .vietnamese: return "Vui lòng ghi rõ"
        case .arabic: return "يرجى التحديد"
        case .portuguese: return "Por favor, especifique"
        case .tagalog: return "Pakisaad"
        case .punjabi: return "ਕਿਰਪਾ ਕਰਕੇ ਸਪੱਸ਼ਟ ਕਰੋ"
        case .armenian: return "Խնդրում ենք նշել"
        case .japanese: return "詳細を入力してください"
        case .french: return "Veuillez préciser"
        case .amharic: return "እባክዎ ይግለጹ"
        }
    }

    var pvSave: String {
        switch self {
        case .english: return "Save"
        case .spanish: return "Guardar"
        case .hindi: return "सहेजें"
        case .gujarati: return "સાચવો"
        case .chinese: return "保存"
        case .farsi: return "ذخیره"
        case .korean: return "저장"
        case .vietnamese: return "Lưu"
        case .arabic: return "حفظ"
        case .portuguese: return "Salvar"
        case .tagalog: return "I-save"
        case .punjabi: return "ਸੁਰੱਖਿਅਤ ਕਰੋ"
        case .armenian: return "Պահպանել"
        case .japanese: return "保存"
        case .french: return "Enregistrer"
        case .amharic: return "አስቀምጥ"
        }
    }

    var pvTherapistNamePlaceholder: String {
        switch self {
        case .english: return "Therapist name"
        case .spanish: return "Nombre del terapeuta"
        case .hindi: return "चिकित्सक का नाम"
        case .gujarati: return "થેરાપિસ્ટનું નામ"
        case .chinese: return "治疗师姓名"
        case .farsi: return "نام درمانگر"
        case .korean: return "치료사 이름"
        case .vietnamese: return "Tên nhà trị liệu"
        case .arabic: return "اسم المعالج"
        case .portuguese: return "Nome do terapeuta"
        case .tagalog: return "Pangalan ng Therapist"
        case .punjabi: return "ਥੈਰੇਪਿਸਟ ਦਾ ਨਾਮ"
        case .armenian: return "Թերապևտի անունը"
        case .japanese: return "セラピスト名"
        case .french: return "Nom du thérapeute"
        case .amharic: return "የቴራፒስት ስም"
        }
    }

    var pvNoNotes: String {
        switch self {
        case .english: return "No notes."
        case .spanish: return "Sin notas."
        case .hindi: return "कोई टिप्पणी नहीं।"
        case .gujarati: return "કોઈ નોંધ નથી."
        case .chinese: return "暂无备注。"
        case .farsi: return "بدون یادداشت."
        case .korean: return "메모 없음."
        case .vietnamese: return "Không có ghi chú."
        case .arabic: return "لا توجد ملاحظات."
        case .portuguese: return "Sem notas."
        case .tagalog: return "Walang tala."
        case .punjabi: return "ਕੋਈ ਨੋਟਸ ਨਹੀਂ।"
        case .armenian: return "Նշումներ չկան:"
        case .japanese: return "メモはありません。"
        case .french: return "Aucune note."
        case .amharic: return "ማስታወሻ የለም።"
        }
    }
}
