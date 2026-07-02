import Foundation
import SwiftUI
import Combine

enum AppLanguage: String, CaseIterable, Identifiable {
    case english = "English"
    case spanish = "Español"
    case hindi = "हिन्दी"
    case gujarati = "ગુજરાતી"
    case chinese = "中文"
    case farsi = "فارسی"
    case korean = "한국어"
    case vietnamese = "Tiếng Việt"
    case arabic = "العربية"
    case portuguese = "Português"
    case tagalog = "Tagalog"
    case punjabi = "ਪੰਜਾਬੀ"
    case armenian = "Հայերեն"




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



        }
    }

    var localeIdentifier: String {
        switch self {
        case .english: return "en_US"
        case .spanish: return "es_ES"
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
        let savedLanguage = UserDefaults.standard.string(forKey: "selected_language") ?? "English"
        self.currentLanguage = AppLanguage(rawValue: savedLanguage) ?? .english
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
                       ArmenianHardExercisesData.allExercises
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
        }
    }
}
