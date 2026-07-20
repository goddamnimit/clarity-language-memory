#if os(iOS)
import SwiftUI

/// Structured baseline assessment: 3 rounds × 5 questions (easy → medium →
/// hard), clinical minimal UI — no scores, no confetti, no praise. On
/// completion the assessed starting difficulty is written to
/// AdaptiveDifficultyStore for all 8 tracked exercise types.
struct BaselineAssessmentView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var languageManager = LanguageManager.shared

    private enum Phase { case intro, question, complete }

    @State private var phase: Phase = .intro
    @State private var questions: [BaselineQuestion] = []
    @State private var currentIndex = 0
    @State private var selectedOption: String? = nil
    @State private var shuffledOptions: [String] = []
    @State private var correctByDifficulty: [Difficulty: Int] = [:]
    @State private var totalByDifficulty: [Difficulty: Int] = [:]

    @ScaledMetric private var introIconSize: CGFloat = 48
    @ScaledMetric private var completeIconSize: CGFloat = 56

    var body: some View {
        NavigationStack {
            Group {
                switch phase {
                case .intro:    introScreen
                case .question: questionScreen
                case .complete: completionScreen
                }
            }
            .background(Color.groupedBackground.ignoresSafeArea())
            .navigationTitle(languageManager.currentLanguage.baTitle)
            .navigationBarTitleDisplayMode(.inline)
            .interactiveDismissDisabled(phase == .question)
        }
        .environment(\.layoutDirection,
            [.farsi, .arabic].contains(languageManager.currentLanguage) ? .rightToLeft : .leftToRight)
    }

    // MARK: - Intro

    private var introScreen: some View {
        VStack(spacing: 24) {
            Spacer()

            Image(systemName: "list.clipboard")
                .font(.system(size: introIconSize))
                .foregroundColor(.accentColor)
                .accessibilityHidden(true)

            Text(languageManager.currentLanguage.baTitle)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text(languageManager.currentLanguage.baIntroMessage)
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Spacer()

            VStack(spacing: 12) {
                Button(action: startAssessment) {
                    Text(languageManager.currentLanguage.baStart)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 56)
                        .background(Color.accentColor)
                        .cornerRadius(16)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: skipAssessment) {
                    Text(languageManager.currentLanguage.baSkip)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .frame(minHeight: 44)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
        }
    }

    // MARK: - Question

    @ViewBuilder
    private var questionScreen: some View {
        if currentIndex < questions.count {
            let question = questions[currentIndex]
            VStack(alignment: .leading, spacing: 20) {

                // "Question 3 of 15"
                Text(languageManager.currentLanguage.baQuestionProgress(currentIndex + 1, questions.count))
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)

                ProgressBarView(progress: CGFloat(currentIndex + 1) / CGFloat(questions.count))
                    .frame(height: 8)

                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        // Exercise title and instructions header
                        VStack(spacing: 4) {
                            Text(question.exerciseTitle)
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .textCase(.uppercase)
                                .tracking(0.5)
                                .multilineTextAlignment(.center)
                            Text(question.instructions)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.vertical, 8)

                        Text(question.item.prompt)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.top, 8)

                        VStack(spacing: 14) {
                            ForEach(shuffledOptions, id: \.self) { option in
                                Button(action: { selectedOption = option }) {
                                    HStack {
                                        Text(option)
                                            .font(.body)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                        if selectedOption == option {
                                            Image(systemName: "circle.inset.filled")
                                                .foregroundColor(.accentColor)
                                        } else {
                                            Image(systemName: "circle")
                                                .foregroundColor(.secondary.opacity(0.5))
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                    .frame(maxWidth: .infinity)
                                    .frame(minHeight: 56)
                                    .background(Color.secondaryGroupedBackground)
                                    .cornerRadius(16)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(selectedOption == option
                                                    ? Color.accentColor
                                                    : Color.gray.opacity(0.3), lineWidth: 2)
                                    )
                                }
                                .buttonStyle(PlainButtonStyle())
                                .accessibilityLabel(option)
                                .accessibilityAddTraits(selectedOption == option ? .isSelected : [])
                            }
                        }
                    }
                }

                // Next — enabled once an option is selected. No feedback shown.
                Button(action: advance) {
                    Text(languageManager.currentLanguage.baNext)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 56)
                        .background(selectedOption == nil
                                    ? Color.accentColor.opacity(0.4)
                                    : Color.accentColor)
                        .cornerRadius(16)
                }
                .buttonStyle(PlainButtonStyle())
                .disabled(selectedOption == nil)

                Button(action: skipAssessment) {
                    Text(languageManager.currentLanguage.baSkip)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, minHeight: 44)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(20)
        }
    }

    // MARK: - Completion

    private var completionScreen: some View {
        VStack(spacing: 24) {
            Spacer()

            Image(systemName: "checkmark.seal")
                .font(.system(size: completeIconSize))
                .foregroundColor(.accentColor)
                .accessibilityHidden(true)

            Text(languageManager.currentLanguage.baCompleteTitle)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text(languageManager.currentLanguage.baCompleteMessage)
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Spacer()

            Button(action: { dismiss() }) {
                Text(languageManager.currentLanguage.baDone)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 56)
                    .background(Color.accentColor)
                    .cornerRadius(16)
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
        }
    }

    // MARK: - Flow

    private func startAssessment() {
        let pool = languageManager.exercisesForSection(.language) +
                   languageManager.exercisesForSection(.cognition) +
                   languageManager.exercisesForSection(.functionalSkills)
        questions = BaselineAssessmentEngine.buildAssessment(from: pool)
        guard !questions.isEmpty else {
            skipAssessment()
            return
        }
        currentIndex = 0
        correctByDifficulty = [:]
        totalByDifficulty = [:]
        prepareCurrentQuestion()
        phase = .question
    }

    private func prepareCurrentQuestion() {
        selectedOption = nil
        shuffledOptions = questions[currentIndex].item.options.shuffled()
    }

    private func advance() {
        guard currentIndex < questions.count, let selected = selectedOption else { return }
        let question = questions[currentIndex]
        totalByDifficulty[question.difficulty, default: 0] += 1
        if selected == question.item.correctAnswer {
            correctByDifficulty[question.difficulty, default: 0] += 1
        }

        if currentIndex + 1 < questions.count {
            currentIndex += 1
            prepareCurrentQuestion()
        } else {
            finishAssessment()
        }
    }

    private func finishAssessment() {
        let placement = BaselineAssessmentEngine.placementDifficulty(
            easyCorrect: correctByDifficulty[.easy] ?? 0,
            easyTotal: totalByDifficulty[.easy] ?? 0,
            mediumCorrect: correctByDifficulty[.medium] ?? 0,
            mediumTotal: totalByDifficulty[.medium] ?? 0)
        BaselineAssessmentEngine.applyPlacement(placement)
        withAnimation { phase = .complete }
    }

    private func skipAssessment() {
        BaselineAssessmentEngine.markSkipped()
        dismiss()
    }
}
#endif
