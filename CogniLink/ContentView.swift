import SwiftUI

struct ContentView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            // Tab 1: Localized Home View
            HomeView()
                .tabItem {
                    Label(homeTabTitle, systemImage: "house.fill")
                }
                .tag(0)
            
            // Tab 2: All Activities View with dedicated NavigationStack
            NavigationStack {
                AllActivitiesView()
            }
            .tabItem {
                Label(activitiesTabTitle, systemImage: "list.bullet.rectangle.fill")
            }
            .tag(1)
            
            // Tab 3: Profile View
            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Label(profileTabTitle, systemImage: "person.fill")
            }
            .tag(2)
        }
    }
    
    // MARK: - Localized Tab Titles
    
    private var homeTabTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Home"
        case .spanish: return "Inicio"
        case .hindi: return "मुख्य"
        case .gujarati: return "ઘર"
        }
    }

    private var activitiesTabTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Activities"
        case .spanish: return "Actividades"
        case .hindi: return "गतिविधियाँ"
        case .gujarati: return "પ્રવૃત્તિઓ"
        }
    }

    private var profileTabTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Profile"
        case .spanish: return "Perfil"
        case .hindi: return "प्रोफ़ाइल"
        case .gujarati: return "પ્રોફાઇલ"
        }
    }
}

// MARK: - Localized Home View Screen
struct HomeView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    @State private var sessionsCount: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Welcome Title
                    Text(welcomeText)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    // Sessions Played Count Label
                    Text(sessionsPlayedText)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    // Streak Widget
                    StreakWidgetView()
                        .padding(.horizontal)

                    // MARK: - Section Navigation Cards
                    VStack(spacing: 16) {
                        NavigationLink(destination: ExerciseListView(section: .language)) {
                            sectionCard(
                                title: languageSectionTitle,
                                subtitle: cardSubtitle,
                                systemImage: "bubble.left.and.bubble.right",
                                color: .blue
                            )
                        }
                        
                        NavigationLink(destination: ExerciseListView(section: .cognition)) {
                            sectionCard(
                                title: cognitionSectionTitle,
                                subtitle: cardSubtitle,
                                systemImage: "brain",
                                color: .purple
                            )
                        }
                        
                        NavigationLink(destination: ExerciseListView(section: .functionalSkills)) {
                            sectionCard(
                                title: functionalSkillsSectionTitle,
                                subtitle: cardSubtitle,
                                systemImage: "heart.text.square",
                                color: .green
                            )
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .onAppear {
                loadSessionsCount()
            }
            .navigationTitle("Clarity")
            .background(Color(.systemGroupedBackground))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Text(languageManager.currentLanguage.flagEmoji)
                            .font(.system(size: 24))
                            .frame(width: 44, height: 44)
                    }
                }
            }
        }
    }
    
    // MARK: - Localized Home Helpers
    
    private var welcomeText: String {
        switch languageManager.currentLanguage {
        case .english: return "Welcome to Clarity"
        case .spanish: return "Bienvenido a Clarity"
        case .hindi: return "Clarity में आपका स्वागत है"
        case .gujarati: return "Clarity માં આપનું સ્વાગત છે"
        }
    }

    private var cardSubtitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Tap to start"
        case .spanish: return "Toca para comenzar"
        case .hindi: return "शुरू करने के लिए टैप करें"
        case .gujarati: return "શરૂ કરવા ટૅપ કરો"
        }
    }

    private var languageSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Language"
        case .spanish: return "Lenguaje"
        case .hindi: return "भाषा"
        case .gujarati: return "ભાષા"
        }
    }

    private var cognitionSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Cognition"
        case .spanish: return "Cognición"
        case .hindi: return "अनुभूति"
        case .gujarati: return "સ્મૃતિ અને તર્ક"
        }
    }

    private var functionalSkillsSectionTitle: String {
        switch languageManager.currentLanguage {
        case .english: return "Functional Skills"
        case .spanish: return "Habilidades Funcionales"
        case .hindi: return "कार्यात्मक कौशल"
        case .gujarati: return "દૈનિક કૌશલ્ય"
        }
    }

    private var sessionsPlayedText: String {
        switch languageManager.currentLanguage {
        case .english:
            return "\(sessionsCount) sessions played"
        case .spanish:
            return "\(sessionsCount) sesiones jugadas"
        case .hindi:
            return "\(sessionsCount) \(sessionsCount == 1 ? "सत्र खेला गया" : "सत्र खेले गए")"
        case .gujarati:
            return "\(sessionsCount) સત્ર રમાયા"
        }
    }
    
    private func loadSessionsCount() {
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]
        sessionsCount = plays.values.reduce(0, +)
    }

    @ViewBuilder
    private func sectionCard(title: String, subtitle: String, systemImage: String, color: Color) -> some View {
        HStack(spacing: 16) {
            Image(systemName: systemImage)
                .font(.system(size: 24))
                .foregroundColor(color)
                .frame(width: 48, height: 48)
                .background(color.opacity(0.12))
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.primary)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.02), radius: 2, x: 0, y: 1)
    }
}
