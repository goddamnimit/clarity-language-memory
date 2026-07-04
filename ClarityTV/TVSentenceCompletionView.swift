#if os(tvOS)
import SwiftUI

struct TVSentenceCompletionView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var shuffledOptions: [String] = []

    var body: some View {
        VStack(spacing: 0) {
            if !shuffledOptions.isEmpty {
                TVOptionGridView(
                    prompt: item.prompt,
                    options: shuffledOptions,
                    correctAnswer: item.correctAnswer,
                    onAnswered: onAnswered
                )
            }
        }
        .onAppear {
            shuffledOptions = Array(item.options.shuffled().prefix(4))
        }
    }
}
#endif
