import SwiftUI

struct ExerciseListView: View {
    let section: AppSection
    @ObservedObject var languageManager = LanguageManager.shared
    
    private var exercises: [Exercise] {
        languageManager.exercisesForSection(section)
    }
    
    var body: some View {
        List {
            // MARK: - Section Header Description
            Section {
                VStack(alignment: .leading, spacing: 8) {
                    Text(sectionTitle)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(sectionDescription)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.vertical, 8)
            }
            
            // MARK: - Exercises List Array
            if exercises.isEmpty {
                ContentUnavailableView {
                    Label("No Exercises Found", systemImage: "tray")
                }
            } else {
                ForEach(exercises) { exercise in
                    NavigationLink(destination: ExerciseContainerView(exercise: exercise)) {
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text(exercise.title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                Spacer()
                                
                                // Difficulty Tag
                                Text(difficultyLabel(for: exercise.difficulty))
                                    .font(.caption2)
                                    .fontWeight(.bold)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.accentColor.opacity(0.1))
                                    .foregroundColor(.accentColor)
                                    .cornerRadius(6)
                            }
                            
                            Text(exercise.instructions)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
        }
        .navigationTitle(sectionTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    // MARK: - Localized Properties
    
    private var sectionTitle: String {
        switch languageManager.currentLanguage {
        case .english:
            switch section {
            case .language: return "Language"
            case .cognition: return "Cognition"
            case .functionalSkills: return "Functional Skills"
            }
        case .spanish:
            switch section {
            case .language: return "Lenguaje"
            case .cognition: return "Cognición"
            case .functionalSkills: return "Habilidades Funcionales"
            }
        case .hindi:
            switch section {
            case .language: return "भाषा"
            case .cognition: return "अनुभूति"
            case .functionalSkills: return "कार्यात्मक कौशल"
            }
        case .gujarati:
            switch section {
            case .language: return "ભાષા"
            case .cognition: return "સ્મૃતિ અને તર્ક"
            case .functionalSkills: return "દૈનિક કૌશલ્ય"
            }
        case .chinese:
            switch section {
            case .language: return "语言"
            case .cognition: return "认知与记忆"
            case .functionalSkills: return "日常技能"
            }
        }
    }

    private var sectionDescription: String {
        switch languageManager.currentLanguage {
        case .english:
            switch section {
            case .language: return "Word games, synonyms, phrases and more"
            case .cognition: return "Memory, trivia, logic and reasoning"
            case .functionalSkills: return "Daily living, safety and planning"
            }
        case .spanish:
            switch section {
            case .language: return "Juegos de palabras, sinónimos, frases y más"
            case .cognition: return "Memoria, trivia, lógica y direccionamiento"
            case .functionalSkills: return "Vida diaria, seguridad y planificación"
            }
        case .hindi:
            switch section {
            case .language: return "शब्द खेल, पर्यायवाची, वाक्यांश और बहुत कुछ"
            case .cognition: return "स्मृति, सामान्य ज्ञान, तर्क और विचार"
            case .functionalSkills: return "दैनिक जीवन, सुरक्षा और योजना"
            }
        case .gujarati:
            switch section {
            case .language: return "શબ્દ રમત, સમાનાર્થી, રૂઢિઓ અને વધુ"
            case .cognition: return "સ્મૃતિ, સામાન્ય જ્ઞાન, તર્ક અને વિચાર"
            case .functionalSkills: return "દૈનિક જીવન, સુરક્ષા અને આયોજન"
            }
        case .chinese:
            switch section {
            case .language: return "词汇、成语、类比等"
            case .cognition: return "记忆、常识、推理"
            case .functionalSkills: return "日常生活、安全、计划"
            }
        }
    }

    // Resolved: explicitly maps cases for all languages, avoiding .rawValue
    private func difficultyLabel(for difficulty: Difficulty) -> String {
        switch languageManager.currentLanguage {
        case .english:
            switch difficulty {
            case .easy: return "Easy"
            case .medium: return "Medium"
            case .hard: return "Hard"
            }
        case .spanish:
            switch difficulty {
            case .easy: return "Fácil"
            case .medium: return "Medio"
            case .hard: return "Difícil"
            }
        case .hindi:
            switch difficulty {
            case .easy: return "आसान"
            case .medium: return "मध्यम"
            case .hard: return "कठिन"
            }
        case .gujarati:
            switch difficulty {
            case .easy: return "સરળ"
            case .medium: return "મધ્યમ"
            case .hard: return "કઠિન"
            }
        case .chinese:
            switch difficulty {
            case .easy: return "简单"
            case .medium: return "中等"
            case .hard: return "困难"
            }
        }
    }
}
