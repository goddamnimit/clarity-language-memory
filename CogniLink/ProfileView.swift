import SwiftUI

struct ProfileView: View {
    @ObservedObject var languageManager = LanguageManager.shared
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                
                // MARK: - Language Selection Section
                VStack(alignment: .leading, spacing: 12) {
                    // Header in all three languages
                    Text("🌐 Language / Idioma / भाषा")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                    
                    // Vertical row selection list
                    VStack(spacing: 12) {
                        ForEach(AppLanguage.allCases) { language in
                            Button(action: {
                                withAnimation {
                                    languageManager.currentLanguage = language
                                }
                            }) {
                                HStack(spacing: 16) {
                                    // Large flag emoji
                                    Text(language.flagEmoji)
                                        .font(.system(size: 32))
                                    
                                    // Language Name in Native Script
                                    Text(language.displayName)
                                        .font(.system(size: 18, weight: .medium))
                                        .foregroundColor(languageManager.currentLanguage == language ? .white : .primary)
                                    
                                    Spacer()
                                    
                                    // Selection Indicator Checkmark
                                    if languageManager.currentLanguage == language {
                                        Image(systemName: "checkmark")
                                            .font(.system(size: 18, weight: .bold))
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(.horizontal, 16)
                                .frame(height: 60) // Enforce minimum height rule
                                .frame(maxWidth: .infinity)
                                .background(
                                    languageManager.currentLanguage == language ? Color.accentColor : Color(.secondarySystemGroupedBackground)
                                )
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(.horizontal)
                    
                    // Multilingual Instructions Block
                    VStack(alignment: .leading, spacing: 8) {
                        Text("The app will display all exercises in the selected language.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        Text("La app mostrará todos los ejercicios en el idioma seleccionado.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        Text("ऐप चयनित भाषा में सभी अभ्यास दिखाएगा।")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }

                // MARK: - Achievements Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Achievements")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    NavigationLink(destination: BadgesGridView()) {
                        HStack {
                            Image(systemName: "rosette")
                                .foregroundColor(.yellow)
                            Text("My Badges")
                                .font(.body)
                                .foregroundColor(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.caption.bold())
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .frame(minHeight: 50)
                        .background(Color(.secondarySystemGroupedBackground))
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                }

            }
            .padding(.vertical)
        }
        .navigationTitle("Profile")
        .background(Color(.systemGroupedBackground))
    }
}
