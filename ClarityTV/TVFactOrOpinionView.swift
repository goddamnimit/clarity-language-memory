#if os(tvOS)
import SwiftUI

struct TVFactOrOpinionView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var factOrOpinionOptions: [String] = []

    var body: some View {
        VStack(spacing: 0) {
            if !factOrOpinionOptions.isEmpty {
                TVOptionGridView(
                    prompt: item.prompt,
                    options: factOrOpinionOptions,
                    correctAnswer: item.correctAnswer,
                    onAnswered: onAnswered
                )
            }
        }
        .onAppear {
            let factOnLeft = Bool.random()
            factOrOpinionOptions = factOnLeft ? ["Fact", "Opinion"] : ["Opinion", "Fact"]
        }
    }
}
#endif
