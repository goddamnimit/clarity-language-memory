#if os(tvOS)
import SwiftUI

// MARK: - Phase

private enum TwoPlayerPhase: Equatable {
    case player1Playing
    case handoff
    case player2Playing
    case results
}

// MARK: - Results focus

private enum TwoPlayerResultsFocus: Hashable {
    case playAgain
    case mainMenu
}

// MARK: - TVTwoPlayerView

struct TVTwoPlayerView: View {
    let section: AppSection
    let language: AppLanguage

    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var phase: TwoPlayerPhase = .player1Playing
    @State private var player1Score = 0
    @State private var player2Score = 0
    @State private var player1Pool: [ExerciseItem] = []
    @State private var player2Pool: [ExerciseItem] = []
    @State private var sessionTotal = 5
    @State private var countdownValue = 3
    @State private var encouragement = "Fantastic effort from both players!"

    @FocusState private var resultsFocus: TwoPlayerResultsFocus?

    private let encouragements = [
        "Every round makes you stronger.",
        "Fantastic effort from both players!",
        "Practice makes perfect — play again?",
        "Two great minds, one great game!",
        "Keep shining, both of you!"
    ]

    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.18).ignoresSafeArea()

            switch phase {
            case .player1Playing:
                TVExerciseContainerView(
                    section: section,
                    language: language,
                    questionPool: player1Pool.isEmpty ? nil : player1Pool,
                    onSessionComplete: { score in
                        player1Score = score
                        withAnimation { phase = .handoff }
                        startCountdown()
                    }
                )
                .id("player1")

            case .handoff:
                handoffView

            case .player2Playing:
                TVExerciseContainerView(
                    section: section,
                    language: language,
                    questionPool: player2Pool.isEmpty ? nil : player2Pool,
                    onSessionComplete: { score in
                        player2Score = score
                        encouragement = encouragements.randomElement()!
                        withAnimation { phase = .results }
                        resultsFocus = .playAgain
                    }
                )
                .id("player2")

            case .results:
                resultsView
            }
        }
        .onAppear { buildQuestionPools() }
    }

    // MARK: - Pool building

    private func buildQuestionPools() {
        let exercises = languageManager.exercisesForSection(section)
        // Exclude openEnded so both players always get interactive questions.
        let eligible = exercises.filter { $0.type != .openEnded }
        guard let exercise = eligible.randomElement() ?? exercises.randomElement() else { return }

        let allItems = exercise.items.shuffled()
        player1Pool = Array(allItems.prefix(5)).map { itemWithShuffledOptions($0) }
        let raw2 = Array(allItems.dropFirst(5).prefix(5)).map { itemWithShuffledOptions($0) }
        // If the exercise has < 6 items, both players share the same shuffled pool.
        player2Pool = raw2.isEmpty ? Array(allItems.shuffled().prefix(5)).map { itemWithShuffledOptions($0) } : raw2
        sessionTotal = max(player1Pool.count, player2Pool.count)
    }

    private func itemWithShuffledOptions(_ item: ExerciseItem) -> ExerciseItem {
        ExerciseItem(
            id: item.id,
            prompt: item.prompt,
            options: item.options.shuffled(),
            correctAnswer: item.correctAnswer,
            explanation: item.explanation
        )
    }

    // MARK: - Handoff screen

    private var handoffView: some View {
        VStack(spacing: 40) {
            Spacer()

            Text("🎮")
                .font(.system(size: 120))

            Text("Pass the Remote!")
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            Text("Player 2, get ready!")
                .font(.system(size: 48))
                .foregroundColor(Color.white.opacity(0.6))

            Text("\(countdownValue)")
                .font(.system(size: 96, weight: .bold, design: .rounded))
                .foregroundColor(Color(red: 1.0, green: 0.84, blue: 0.0))
                .monospacedDigit()
                .contentTransition(.numericText())
                .animation(.easeInOut(duration: 0.25), value: countdownValue)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    private func startCountdown() {
        countdownValue = 3
        for tick in 1...3 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(tick)) {
                if tick < 3 {
                    withAnimation { countdownValue = 3 - tick }
                } else {
                    withAnimation { phase = .player2Playing }
                }
            }
        }
    }

    // MARK: - Results screen

    private var resultsView: some View {
        VStack(spacing: 36) {
            Spacer()

            Text("Game Over!")
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .foregroundColor(.white)

            HStack(spacing: 60) {
                TwoPlayerScoreCard(
                    playerName: "Player 1",
                    score: player1Score,
                    total: sessionTotal,
                    cardState: cardState(for: 1)
                )
                TwoPlayerScoreCard(
                    playerName: "Player 2",
                    score: player2Score,
                    total: sessionTotal,
                    cardState: cardState(for: 2)
                )
            }

            if player1Score == player2Score {
                Text("It's a Tie!")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 1.0, green: 0.84, blue: 0.0))
            }

            Text(outcomeMessage)
                .font(.system(size: 56, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)

            Text(encouragement)
                .font(.system(size: 40))
                .foregroundColor(Color.white.opacity(0.6))
                .multilineTextAlignment(.center)

            Spacer()

            VStack(spacing: 24) {
                Button { restartSession() } label: { TwoPlayerPlayAgainButton() }
                    .buttonStyle(.plain)
                    .focused($resultsFocus, equals: .playAgain)

                Button { dismiss() } label: { TwoPlayerMainMenuButton() }
                    .buttonStyle(.plain)
                    .focused($resultsFocus, equals: .mainMenu)
            }
            .padding(.bottom, 80)
        }
        .frame(maxWidth: .infinity)
        .onAppear { resultsFocus = .playAgain }
    }

    private func cardState(for player: Int) -> TwoPlayerCardState {
        if player1Score == player2Score { return .tied }
        if player == 1 { return player1Score > player2Score ? .winner : .loser }
        return player2Score > player1Score ? .winner : .loser
    }

    private var outcomeMessage: String {
        if player1Score > player2Score { return "Player 1 Wins! 🏆" }
        if player2Score > player1Score { return "Player 2 Wins! 🏆" }
        return "Great Game, Both of You! 🌟"
    }

    private func restartSession() {
        player1Score = 0
        player2Score = 0
        buildQuestionPools()
        withAnimation { phase = .player1Playing }
    }
}

// MARK: - Card state

private enum TwoPlayerCardState {
    case winner, loser, tied
}

// MARK: - TwoPlayerScoreCard

private struct TwoPlayerScoreCard: View {
    let playerName: String
    let score: Int
    let total: Int
    let cardState: TwoPlayerCardState

    private var glowColor: Color {
        switch cardState {
        case .winner: return .orange
        case .loser:  return .clear
        case .tied:   return Color(red: 1.0, green: 0.84, blue: 0.0)
        }
    }

    var body: some View {
        VStack(spacing: 20) {
            Text(playerName)
                .font(.system(size: 40, weight: .semibold, design: .rounded))
                .foregroundColor(Color.white.opacity(0.7))

            Text("\(score) / \(total)")
                .font(.system(size: 80, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .monospacedDigit()
        }
        .frame(width: 500)
        .padding(.vertical, 48)
        .background(
            RoundedRectangle(cornerRadius: 28)
                .fill(Color.white.opacity(cardState == .loser ? 0.05 : 0.1))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 28)
                .stroke(glowColor.opacity(cardState == .loser ? 0 : 0.8), lineWidth: 3)
        )
        .shadow(color: glowColor.opacity(cardState == .loser ? 0 : 0.5), radius: 30, x: 0, y: 0)
        .opacity(cardState == .loser ? 0.45 : 1.0)
    }
}

// MARK: - Play Again button

private struct TwoPlayerPlayAgainButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text("Play Again")
            .font(.system(size: 48, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .frame(minWidth: 500, minHeight: 80)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            colors: isFocused
                                ? [Color(red: 1.0, green: 0.6, blue: 0.0), Color(red: 1.0, green: 0.35, blue: 0.0)]
                                : [Color(red: 1.0, green: 0.6, blue: 0.0).opacity(0.8), Color(red: 1.0, green: 0.35, blue: 0.0).opacity(0.8)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
            )
            .scaleEffect(isFocused ? 1.06 : 1.0)
            .shadow(color: isFocused ? Color.orange.opacity(0.5) : .clear, radius: 20)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - Main Menu button

private struct TwoPlayerMainMenuButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text("Main Menu")
            .font(.system(size: 48, weight: .semibold, design: .rounded))
            .foregroundColor(Color.white.opacity(0.7))
            .frame(minWidth: 500, minHeight: 80)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(isFocused ? 0.14 : 0.07))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white.opacity(0.2), lineWidth: 1.5)
            )
            .scaleEffect(isFocused ? 1.06 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

#endif
