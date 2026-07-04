#if os(tvOS)
import SwiftUI

struct TVAnalogyChoiceView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var shuffledOptions: [String] = []

    private var formattedPrompt: String {
        formatAnalogyPrompt(item.prompt)
    }

    private var isRTL: Bool {
        let currentLanguage = LanguageManager.shared.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        VStack(spacing: 0) {
            if !shuffledOptions.isEmpty {
                TVOptionGridView(
                    prompt: formattedPrompt,
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

    private func formatAnalogyPrompt(_ prompt: String) -> String {
        var formatted = prompt
        
        let toSeparators = [" is to ", " es a ", " est à ", " está para ", "之于", " به ", " -to- ", " to ", " to: ", " is to: "]
        let asSeparators = [" as ", " como ", " comme ", "犹如", " مثل ", " -as- ", " as: ", "，犹如", "、犹如"]
        
        for sep in asSeparators {
            formatted = formatted.replacingOccurrences(of: sep, with: " :: ", options: [.caseInsensitive, .literal])
        }
        
        for sep in toSeparators {
            formatted = formatted.replacingOccurrences(of: sep, with: " : ", options: [.caseInsensitive, .literal])
        }
        
        formatted = formatted.replacingOccurrences(of: " است : ", with: " : ")
        formatted = formatted.replacingOccurrences(of: "， :: ", with: " :: ")
        formatted = formatted.replacingOccurrences(of: " ::，", with: " :: ")
        formatted = formatted.replacingOccurrences(of: " :  : ", with: " : ")
        
        return formatted.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
#endif
