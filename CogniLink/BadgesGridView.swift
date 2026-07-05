import SwiftUI

/// A grid interface showcasing unlocked achievements and locked progress milestones.
struct BadgesGridView: View {
    @State private var badges: [Badge] = []
    @State private var selectedBadge: Badge? = nil

    private let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    private var unlockedCount: Int {
        badges.filter { $0.isUnlocked }.count
    }

    var body: some View {
        VStack(spacing: 0) {
            // MARK: - Achievements Summary Header
            VStack(spacing: 8) {
                Text("My Achievements")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("\(unlockedCount) of \(badges.count) Unlocked")
                    .font(.body) // 17pt minimum size
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
                ProgressView(value: Double(unlockedCount), total: Double(badges.count))
                    .tint(AppTheme.languageColor)
                    .padding(.horizontal, 40)
                    .padding(.top, 4)
            }
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background(Color.secondaryGroupedBackground)
            .shadow(color: Color.black.opacity(0.02), radius: 3, x: 0, y: 1)

            // MARK: - Badges Scroll Grid
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(badges) { badge in
                        Button(action: {
                            selectedBadge = badge
                        }) {
                            VStack(spacing: 12) {
                                // Badge Icon Circle
                                ZStack {
                                    Circle()
                                        .fill(badge.isUnlocked ? badge.color.opacity(0.12) : Color.systemGray5Adaptive)
                                        .frame(width: 80, height: 80)
                                    
                                    Image(systemName: badge.isUnlocked ? badge.iconName : "lock.fill")
                                        .font(.system(size: 34, weight: .bold))
                                        .foregroundColor(badge.isUnlocked ? badge.color : .gray)
                                }
                                
                                Text(badge.title)
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundColor(badge.isUnlocked ? .primary : .secondary)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                            }
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .frame(minHeight: 140) // Generous 140pt card height
                            .background(Color.secondaryGroupedBackground)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(badge.isUnlocked ? badge.color.opacity(0.2) : Color.clear, lineWidth: 1.5)
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                        // Combined elements for clean VoiceOver output
                        .accessibilityElement(children: .combine)
                        .accessibilityLabel("\(badge.title) badge. \(badge.isUnlocked ? "Unlocked! \(badge.description)" : "Locked. Goal: \(badge.requirementText)")")
                    }
                }
                .padding(20)
            }
        }
        .navigationTitle("Achievements")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
        .background(Color.groupedBackground.edgesIgnoringSafeArea(.all))
        .onAppear {
            badges = BadgeManager.evaluateBadges()
        }
        // Detail sheet presenting the selected badge's information
        .sheet(item: $selectedBadge) { badge in
            badgeDetailSheet(for: badge)
        }
    }

    // MARK: - Detail Sheet View Builder

    @ViewBuilder
    private func badgeDetailSheet(for badge: Badge) -> some View {
        NavigationStack {
            VStack(spacing: 24) {
                Spacer()
                
                // Giant Graphic
                ZStack {
                    Circle()
                        .fill(badge.isUnlocked ? badge.color.opacity(0.12) : Color.systemGray5Adaptive)
                        .frame(width: 140, height: 140)
                    
                    Image(systemName: badge.isUnlocked ? badge.iconName : "lock.fill")
                        .font(.system(size: 60, weight: .bold))
                        .foregroundColor(badge.isUnlocked ? badge.color : .gray)
                }
                
                VStack(spacing: 10) {
                    Text(badge.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text(badge.isUnlocked ? "UNLOCKED" : "LOCKED")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(badge.isUnlocked ? .green : .secondary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(badge.isUnlocked ? Color.green.opacity(0.12) : Color.gray.opacity(0.12))
                        .cornerRadius(8)
                }
                
                VStack(spacing: 12) {
                    Text(badge.isUnlocked ? badge.description : "This milestone is currently locked.")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                    
                    Text("Requirement:")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .fontWeight(.bold)
                        .padding(.top, 4)
                    
                    Text(badge.requirementText)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                // Dismiss Action Button
                Button(action: {
                    selectedBadge = nil
                }) {
                    Text("Close")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56) // > 44pt tap target
                        .background(AppTheme.languageColor)
                        .cornerRadius(16)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(24)
            .navigationTitle("Achievement Details")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
        }
        #if os(iOS)
        .presentationDetents([.medium, .large]) // Custom sheet heights
        #endif
    }
}
