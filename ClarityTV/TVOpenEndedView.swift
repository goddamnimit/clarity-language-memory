#if os(tvOS)
import SwiftUI

private enum OEFocus: Hashable {
    case showAnswer
    case gotIt
    case needPractice
}

struct TVOpenEndedView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @FocusState private var focusedField: OEFocus?
    @State private var isAnswerVisible = false

    private var isRTL: Bool {
        let currentLanguage = LanguageManager.shared.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        VStack(spacing: 40) {
            // Prompt Label
            Text("Discussion Prompt")
                .font(.system(size: 28, weight: .light))
                .foregroundColor(Color.white.opacity(0.45))
                .tracking(3)
                .textCase(.uppercase)

            // Prompt
            ScrollView {
                Text(item.prompt)
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 120)
            }
            .frame(maxHeight: 180)

            Spacer()

            if !isAnswerVisible {
                Button {
                    withAnimation(.spring(response: 0.45, dampingFraction: 0.8)) {
                        isAnswerVisible = true
                        focusedField = .gotIt
                    }
                } label: {
                    showAnswerTile
                }
                .buttonStyle(.plain)
                .focused($focusedField, equals: .showAnswer)
            } else {
                VStack(spacing: 32) {
                    // Model Answer Panel
                    VStack(spacing: 12) {
                        Text("Model Answer")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(Color.white.opacity(0.6))
                        
                        Text(item.correctAnswer)
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                    }
                    .padding(.vertical, 32)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color(hex: "2D2D44"))
                            .overlay(
                                RoundedRectangle(cornerRadius: 24)
                                    .stroke(Color(hex: "FF9500").opacity(0.4), lineWidth: 2)
                            )
                    )

                    // Self-Report Options
                    HStack(spacing: 40) {
                        Button {
                            onAnswered(true)
                        } label: {
                            selfReportTile(
                                text: "I got it right",
                                isFocused: focusedField == .gotIt,
                                successColor: Color(hex: "2ECC71")
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focusedField, equals: .gotIt)

                        Button {
                            onAnswered(false)
                        } label: {
                            selfReportTile(
                                text: "I need more practice",
                                isFocused: focusedField == .needPractice,
                                successColor: Color(hex: "E74C3C")
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focusedField, equals: .needPractice)
                    }
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }

            Spacer()
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        .onAppear {
            focusedField = .showAnswer
        }
    }

    private var showAnswerTile: some View {
        let isFocused = focusedField == .showAnswer
        return ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(isFocused ? Color(hex: "FF9500") : Color(hex: "2D2D44"))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(isFocused ? Color.white : Color(hex: "FF9500"), lineWidth: 3)
                        .shadow(color: isFocused ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
                )

            Text("Show Answer")
                .font(.system(size: 38, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        }
        .frame(width: 400, height: 110)
        .scaleEffect(isFocused ? 1.06 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    @ViewBuilder
    private func selfReportTile(text: String, isFocused: Bool, successColor: Color) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(isFocused ? successColor : Color(hex: "2D2D44"))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(isFocused ? Color.white : successColor.opacity(0.5), lineWidth: 3)
                        .shadow(color: isFocused ? successColor.opacity(0.6) : .clear, radius: 10)
                )

            Text(text)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .padding(.horizontal, 16)
        }
        .frame(width: 380, height: 110)
        .scaleEffect(isFocused ? 1.06 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - Hex Color Helper

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
