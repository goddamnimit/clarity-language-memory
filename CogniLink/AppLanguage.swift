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
                      EnglishNewExercisesData2.allExercises,

            .spanish: SpanishLanguageExerciseData.allExercises +
                      SpanishCognitionExerciseData.allExercises +
                      SpanishFunctionalSkillsExerciseData.allExercises,

            .hindi: HindiLanguageExerciseData.allExercises +
                    HindiCognitionExerciseData.allExercises +
                    HindiFunctionalSkillsExerciseData.allExercises,

            .gujarati: GujaratiLanguageExerciseData.allExercises +
                       GujaratiCognitionExerciseData.allExercises +
                       GujaratiFunctionalSkillsExerciseData.allExercises,

            .chinese: ChineseLanguageExerciseData.allExercises +
                      ChineseCognitionExerciseData.allExercises +
                      ChineseFunctionalSkillsExerciseData.allExercises,

            .farsi: FarsiLanguageExerciseData.allExercises +
                    FarsiCognitionExerciseData.allExercises +
                    FarsiFunctionalSkillsExerciseData.allExercises,

            .korean: KoreanLanguageExerciseData.allExercises +
                     KoreanCognitionExerciseData.allExercises +
                     KoreanFunctionalSkillsExerciseData.allExercises,

            .vietnamese: VietnameseLanguageExerciseData.allExercises +
                         VietnameseCognitionExerciseData.allExercises +
                         VietnameseFunctionalSkillsExerciseData.allExercises,

            .arabic: ArabicLanguageExerciseData.allExercises +
                     ArabicCognitionExerciseData.allExercises +
                     ArabicFunctionalSkillsExerciseData.allExercises,

            .portuguese: PortugueseLanguageExerciseData.allExercises +
                         PortugueseCognitionExerciseData.allExercises +
                         PortugueseFunctionalSkillsExerciseData.allExercises
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
                              EnglishNewExercisesData2.allExercises
            return englishPool.filter { $0.section == section }
        case .spanish:
            switch section {
            case .language: return SpanishLanguageExerciseData.allExercises
            case .cognition: return SpanishCognitionExerciseData.allExercises
            case .functionalSkills: return SpanishFunctionalSkillsExerciseData.allExercises
            }
        case .hindi:
            switch section {
            case .language: return HindiLanguageExerciseData.allExercises
            case .cognition: return HindiCognitionExerciseData.allExercises
            case .functionalSkills: return HindiFunctionalSkillsExerciseData.allExercises
            }
        case .gujarati:
            switch section {
            case .language: return GujaratiLanguageExerciseData.allExercises
            case .cognition: return GujaratiCognitionExerciseData.allExercises
            case .functionalSkills: return GujaratiFunctionalSkillsExerciseData.allExercises
            }
        case .chinese:
            switch section {
            case .language: return ChineseLanguageExerciseData.allExercises
            case .cognition: return ChineseCognitionExerciseData.allExercises
            case .functionalSkills: return ChineseFunctionalSkillsExerciseData.allExercises
            }
        case .farsi:
            switch section {
            case .language: return FarsiLanguageExerciseData.allExercises
            case .cognition: return FarsiCognitionExerciseData.allExercises
            case .functionalSkills: return FarsiFunctionalSkillsExerciseData.allExercises
            }
        case .korean:
            switch section {
            case .language: return KoreanLanguageExerciseData.allExercises
            case .cognition: return KoreanCognitionExerciseData.allExercises
            case .functionalSkills: return KoreanFunctionalSkillsExerciseData.allExercises
            }
        case .vietnamese:
            switch section {
            case .language: return VietnameseLanguageExerciseData.allExercises
            case .cognition: return VietnameseCognitionExerciseData.allExercises
            case .functionalSkills: return VietnameseFunctionalSkillsExerciseData.allExercises
            }
        case .arabic:
            switch section {
            case .language: return ArabicLanguageExerciseData.allExercises
            case .cognition: return ArabicCognitionExerciseData.allExercises
            case .functionalSkills: return ArabicFunctionalSkillsExerciseData.allExercises
            }
        case .portuguese:
            switch section {
            case .language: return PortugueseLanguageExerciseData.allExercises
            case .cognition: return PortugueseCognitionExerciseData.allExercises
            case .functionalSkills: return PortugueseFunctionalSkillsExerciseData.allExercises
            }
        }
    }
}
