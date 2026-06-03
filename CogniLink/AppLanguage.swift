import Foundation
import SwiftUI
import Combine

enum AppLanguage: String, CaseIterable, Identifiable {
    case english = "English"
    case spanish = "Español"
    case hindi = "हिन्दी"
    case gujarati = "ગુજરાતી"
    case chinese = "中文"

    var id: String { self.rawValue }

    var displayName: String {
        switch self {
        case .english: return "English"
        case .spanish: return "Español"
        case .hindi: return "हिन्दी"
        case .gujarati: return "ગુજરાતી"
        case .chinese: return "中文"
        }
    }

    var flagEmoji: String {
        switch self {
        case .english: return "🇺🇸"
        case .spanish: return "🇪🇸"
        case .hindi: return "🇮🇳"
        case .gujarati: return "🇮🇳"
        case .chinese: return "🇨🇳"
        }
    }

    var localeIdentifier: String {
        switch self {
        case .english: return "en_US"
        case .spanish: return "es_ES"
        case .hindi: return "hi_IN"
        case .gujarati: return "gu_IN"
        case .chinese: return "zh_CN"
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
                      FunctionalSkillsExerciseData.allExercises,

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
                      ChineseFunctionalSkillsExerciseData.allExercises
        ]
    }
    
    func exercisesForSection(_ section: AppSection) -> [Exercise] {
        switch currentLanguage {
        case .english:
            switch section {
            case .language: return LanguageExerciseData.allExercises
            case .cognition: return CognitionExerciseData.allExercises
            case .functionalSkills: return FunctionalSkillsExerciseData.allExercises
            }
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
        }
    }
}
