#if os(tvOS)
import SwiftUI

struct TVYesNoView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var yesNoOptions: [String] = []

    var body: some View {
        VStack(spacing: 0) {
            if !yesNoOptions.isEmpty {
                TVOptionGridView(
                    prompt: item.prompt,
                    options: yesNoOptions,
                    correctAnswer: item.correctAnswer,
                    onAnswered: onAnswered
                )
            }
        }
        .onAppear {
            let yesOnLeft = Bool.random()
            yesNoOptions = yesOnLeft ? ["Yes", "No"] : ["No", "Yes"]
        }
    }
}
#endif
