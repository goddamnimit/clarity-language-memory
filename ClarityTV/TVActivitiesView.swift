#if os(tvOS)
import SwiftUI

private struct ActivityDestination: Identifiable, Hashable {
    let id = UUID()
    let section: AppSection
    let exercise: Exercise
}

struct TVActivitiesView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focusedId: String?
    @State private var destination: ActivityDestination? = nil

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "16213E").ignoresSafeArea()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 50) {
                        ForEach(AppSection.allCases, id: \.self) { section in
                            let exercises = languageManager.exercisesForSection(section)
                            if !exercises.isEmpty {
                                VStack(alignment: .leading, spacing: 20) {
                                    Text(currentLanguage.recSectionName(section))
                                        .font(.system(size: 36, weight: .bold, design: .rounded))
                                        .foregroundColor(.white.opacity(0.85))
                                        .padding(.horizontal, 80)

                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 32) {
                                            ForEach(exercises) { exercise in
                                                let focusTag = exercise.id.uuidString
                                                Button {
                                                    destination = ActivityDestination(section: section, exercise: exercise)
                                                } label: {
                                                    exerciseCard(exercise, isFocused: focusedId == focusTag)
                                                }
                                                .buttonStyle(.plain)
                                                .focused($focusedId, equals: focusTag)
                                            }
                                        }
                                        .padding(.horizontal, 80)
                                        .padding(.vertical, 10)
                                    }
                                }
                            }
                        }
                        
                        Spacer(minLength: 40)
                    }
                    .padding(.vertical, 40)
                }
            }
            .navigationDestination(item: $destination) { dest in
                TVExerciseContainerView(
                    section: dest.section,
                    language: currentLanguage,
                    targetExercise: dest.exercise
                )
            }
        }
    }

    @ViewBuilder
    private func exerciseCard(_ exercise: Exercise, isFocused: Bool) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: exerciseIcon(for: exercise.type))
                .font(.system(size: 40))
                .foregroundColor(isFocused ? .white : Color(hex: "FF9500"))

            Text(exercise.title)
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .lineLimit(1)

            Text(exercise.instructions)
                .font(.system(size: 20, weight: .light))
                .foregroundColor(Color.white.opacity(0.7))
                .lineLimit(2)
                .multilineTextAlignment(.leading)
        }
        .padding(24)
        .frame(width: 420, height: 220)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
                .shadow(color: isFocused ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
        )
        .scaleEffect(isFocused ? 1.04 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    private func exerciseIcon(for type: ExerciseType) -> String {
        switch type {
        case .multipleChoice:     return "list.bullet.rectangle.portrait"
        case .sentenceCompletion: return "text.underline"
        case .analogyChoice:      return "arrow.left.and.right"
        case .homonym:            return "abc"
        case .yesNo:              return "checkmark.circle"
        case .factOrOpinion:      return "person.bubble.fill"
        case .categoryCrossOut:   return "xmark.circle"
        case .sequencing:         return "list.number"
        case .openEnded:          return "keyboard"
        case .matching:           return "squares.below.rectangle"
        case .comparison:         return "arrow.up.arrow.down"
        case .minimalPairs:       return "waveform.path.ecg"
        }
    }
}

fileprivate extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        self.init(
            red:   Double((int >> 16) & 0xFF) / 255,
            green: Double((int >> 8)  & 0xFF) / 255,
            blue:  Double( int        & 0xFF) / 255
        )
    }
}
#endif
