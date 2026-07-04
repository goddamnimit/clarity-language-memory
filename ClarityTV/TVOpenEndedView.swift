#if os(tvOS)
import SwiftUI

// MARK: - Focus

private enum OEFocus: Hashable {
    case showAnswer
    case gotIt
    case stillLearning
}

// MARK: - TVOpenEndedView

struct TVOpenEndedView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @FocusState private var focus: OEFocus?
    @State private var isAnswerVisible = false

    var body: some View {
        VStack(spacing: 0) {
            // "DISCUSSION PROMPT" type label
            Text("Discussion Prompt")
                .font(.system(size: 28, weight: .light))
                .foregroundColor(Color(hex: "6C63FF"))
                .tracking(3)
                .textCase(.uppercase)
                .padding(.bottom, 48)

            // Question — centered
            Text(item.prompt)
                .font(.system(size: 52, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(5)
                .padding(.horizontal, 40)

            Spacer()

            // Show Answer pill — fades out when answer is revealed
            if !isAnswerVisible {
                Button {
                    withAnimation(.spring(response: 0.45, dampingFraction: 0.8)) {
                        isAnswerVisible = true
                    }
                } label: {
                    ShowAnswerButton()
                }
                .buttonStyle(.plain)
                .focused($focus, equals: .showAnswer)
                .transition(.opacity)
            }

            // Answer card + action buttons — slide up from bottom
            if isAnswerVisible {
                VStack(spacing: 32) {
                    // Teal answer card
                    VStack(spacing: 14) {
                        Text("Model Answer")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(Color.white.opacity(0.65))

                        Text(item.correctAnswer)
                            .font(.system(size: 42, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .lineLimit(6)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.horizontal, 60)
                    .padding(.vertical, 44)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 28)
                            .fill(Color(hex: "43B89C"))
                    )

                    // Got It / Still Learning
                    HStack(spacing: 40) {
                        Button { onAnswered(true) } label: {
                            ResponseButton(
                                label: "Got It",
                                idleColor: Color(hex: "2ECC71").opacity(0.75),
                                focusedColor: Color(hex: "2ECC71"),
                                hasBorder: false
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .gotIt)

                        Button { onAnswered(false) } label: {
                            ResponseButton(
                                label: "Still Learning",
                                idleColor: Color.white.opacity(0.1),
                                focusedColor: Color.white.opacity(0.22),
                                hasBorder: true
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .stillLearning)
                    }
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }

            Spacer(minLength: 32)
        }
        .onAppear {
            focus = .showAnswer
        }
        .onChange(of: isAnswerVisible) {
            if isAnswerVisible { focus = .gotIt }
        }
    }
}

// MARK: - ShowAnswerButton

private struct ShowAnswerButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text("Show Answer")
            .font(.system(size: 40, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 80)
            .padding(.vertical, 28)
            .background(
                Capsule().fill(
                    isFocused ? Color(hex: "6C63FF") : Color(hex: "6C63FF").opacity(0.65)
                )
            )
            .scaleEffect(isFocused ? 1.08 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - ResponseButton

private struct ResponseButton: View {
    let label: String
    let idleColor: Color
    let focusedColor: Color
    let hasBorder: Bool

    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text(label)
            .font(.system(size: 36, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 60)
            .padding(.vertical, 24)
            .background(
                Capsule().fill(isFocused ? focusedColor : idleColor)
            )
            .overlay(
                hasBorder
                    ? Capsule().stroke(Color.white.opacity(0.3), lineWidth: 1.5)
                    : nil
            )
            .scaleEffect(isFocused ? 1.08 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - Hex color helper

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
