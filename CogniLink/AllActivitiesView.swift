import SwiftUI

struct AllActivitiesView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    
    // For Programmatic navigation of the "Surprise Me!" selector
    @State private var surpriseExercise: Exercise? = nil
    
    var body: some View {
        VStack(spacing: 0) {
            List {
                // MARK: - Language Exercises Section
                Section(header: Text(sectionHeaderTitle(for: .language))) {
                    let languageExercises = languageManager.exercisesForSection(.language)
                    if languageExercises.isEmpty {
                        Text(emptySectionMessage)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    } else {
                        ForEach(languageExercises) { exercise in
                            NavigationLink(destination: ExerciseContainerView(exercise: exercise)) {
                                activityRow(for: exercise)
                            }
                        }
                    }
                }
                
                // MARK: - Cognition Exercises Section
                Section(header: Text(sectionHeaderTitle(for: .cognition))) {
                    let cognitionExercises = languageManager.exercisesForSection(.cognition)
                    if cognitionExercises.isEmpty {
                        Text(emptySectionMessage)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    } else {
                        ForEach(cognitionExercises) { exercise in
                            NavigationLink(destination: ExerciseContainerView(exercise: exercise)) {
                                activityRow(for: exercise)
                            }
                        }
                    }
                }
                
                // MARK: - Functional Skills Exercises Section
                Section(header: Text(sectionHeaderTitle(for: .functionalSkills)) ) {
                    let functionalExercises = languageManager.exercisesForSection(.functionalSkills)
                    if functionalExercises.isEmpty {
                        Text(emptySectionMessage)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    } else {
                        ForEach(functionalExercises) { exercise in
                            NavigationLink(destination: ExerciseContainerView(exercise: exercise)) {
                                activityRow(for: exercise)
                            }
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            
            // MARK: - "Surprise Me!" Bottom Button Bar
            VStack {
                Button(action: {
                    triggerSurpriseExercise()
                }) {
                    HStack(spacing: 10) {
                        Image(systemName: "sparkles")
                        Text(surpriseMeButtonText)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                }
            }
            .background(Color(.systemGroupedBackground))
            // This is now fully valid as Exercise conforms to Hashable
            .navigationDestination(item: $surpriseExercise) { exercise in
                ExerciseContainerView(exercise: exercise)
            }
        }
        .navigationTitle(allActivitiesTitle)
        .navigationBarTitleDisplayMode(.large)
    }
    
    // MARK: - Row Helper
    @ViewBuilder
    private func activityRow(for exercise: Exercise) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(exercise.title)
                .font(.headline)
                .foregroundColor(.primary)
            Text(exercise.instructions)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
        .padding(.vertical, 2)
    }
    
    // MARK: - Logic Helpers
    
    private func triggerSurpriseExercise() {
        let allAvailable = languageManager.exercisesForSection(.language) +
                           languageManager.exercisesForSection(.cognition) +
                           languageManager.exercisesForSection(.functionalSkills)
        
        if let selected = allAvailable.shuffled().first {
            self.surpriseExercise = selected
        }
    }
    
    // MARK: - Localized Properties
    
    private var allActivitiesTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "All Activities"
        case .spanish: return "Todas las Actividades"
        case .hindi: return "सभी गतिविधियाँ"
        case .gujarati: return "બધી પ્રવૃત્તિઓ"
        case .chinese: return "所有活动"
        case .farsi: return "همه فعالیت‌ها"
        }
    }

    private var emptySectionMessage: String {
        switch languageManager.currentLanguage {
        case .english: return "No exercises available in this section."
        case .spanish: return "No hay ejercicios disponibles en esta sección."
        case .hindi: return "इस अनुभाग में कोई अभ्यास उपलब्ध नहीं है।"
        case .gujarati: return "આ વિભાગમાં કોઈ કસરત ઉપલબ્ધ નથી."
        case .chinese: return "此部分暂无练习。"
        case .farsi: return "تمرینی در این بخش موجود نیست."
        }
    }

    private var surpriseMeButtonText: String {
        switch languageManager.currentLanguage {
        case .english: return "Surprise Me!"
        case .spanish: return "¡Sorpréndeme!"
        case .hindi: return "मुझे आश्चर्यचकित करें!"
        case .gujarati: return "આશ્ચર્ય કરો!"
        case .chinese: return "随机练习！🎲"
        case .farsi: return "شگفتی! 🎲"
        }
    }

    private func sectionHeaderTitle(for section: AppSection) -> String {
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
        case .farsi:
            switch section {
            case .language: return "زبان"
            case .cognition: return "شناخت و حافظه"
            case .functionalSkills: return "مهارت‌های روزمره"
            }
        }
    }
}
