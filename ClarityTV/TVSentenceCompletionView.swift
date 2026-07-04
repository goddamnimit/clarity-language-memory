#if os(tvOS)
import SwiftUI

struct TVSentenceCompletionView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var shuffledOptions: [String] = []

    private var isRTL: Bool {
        let currentLanguage = LanguageManager.shared.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

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
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
    }
}
#endif
