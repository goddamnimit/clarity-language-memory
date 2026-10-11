#if os(tvOS)
import SwiftUI

struct TVYesNoView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var yesNoOptions: [String] = []

    private var isRTL: Bool {
        let currentLanguage = LanguageManager.shared.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        VStack(spacing: 0) {
            if !yesNoOptions.isEmpty {
                TVOptionGridView(
                    prompt: item.prompt,
                    options: yesNoOptions,
                    correctAnswer: item.correctAnswer,
                    onAnswered: onAnswered,
                    displayLabel: { AnswerLabels.yesNo($0, in: LanguageManager.shared.currentLanguage) }
                )
            }
        }
        .onAppear {
            let yesOnLeft = Bool.random()
            yesNoOptions = yesOnLeft ? ["Yes", "No"] : ["No", "Yes"]
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
    }
}
#endif
