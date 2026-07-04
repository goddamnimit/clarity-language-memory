#if os(tvOS)
import SwiftUI

// MARK: - Focus

private enum CompletionFocus: Hashable {
    case newSession
    case changeActivity
}

// MARK: - TVCompletionView

struct TVCompletionView: View {
    let score: Int
    let total: Int
    let onNewSession: () -> Void
    let onChangeActivity: () -> Void

    @FocusState private var focus: CompletionFocus?
    @State private var displayedScore = 0
    @State private var scale: CGFloat = 0.85
    @State private var opacity: Double = 0

    var body: some View {
        ZStack {
            Color(hex: "1C1C1E").ignoresSafeArea()

            // Confetti overlay — perfect score only
            if score == total {
                TVConfettiView()
            }

            VStack(spacing: 0) {
                Spacer()

                // Score display
                VStack(spacing: 12) {
                    Text("\(displayedScore) / \(total)")
                        .font(.system(size: 120, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .monospacedDigit()

                    Text("Your Score")
                        .font(.system(size: 40, weight: .regular, design: .rounded))
                        .foregroundColor(Color.white.opacity(0.45))
                }

                // Tiered praise message
                Text(praiseText)
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .foregroundColor(praiseColor)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)

                Spacer()

                // Action buttons
                VStack(spacing: 20) {
                    Button { onNewSession() } label: { NewSessionButton() }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .newSession)

                    Button { onChangeActivity() } label: { ChangeActivityButton() }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .changeActivity)
                }
                .padding(.bottom, 80)
            }
        }
        .scaleEffect(scale)
        .opacity(opacity)
        .onAppear {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.75)) {
                scale = 1.0
                opacity = 1.0
            }
            for i in 0...max(score, 0) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 + Double(i) * 0.18) {
                    withAnimation(.spring()) { displayedScore = i }
                }
            }
            if score == total { TVSoundManager.play(.complete) }
            focus = .newSession
        }
        .onChange(of: focus) { _, newValue in
            if newValue != nil { TVSoundManager.play(.select) }
        }
    }

    // MARK: - Tiered praise

    private var praiseText: String {
        switch score {
        case total:     return "Perfect Score! 🎉"
        case total - 1: return "Excellent Work!"
        case total - 2: return "Good Effort!"
        case total - 3: return "Keep Practicing!"
        default:        return "Every Session Counts!"
        }
    }

    private var praiseColor: Color {
        switch score {
        case total:     return Color(hex: "FFD700")
        case total - 1: return Color(hex: "2ECC71")
        case total - 2: return Color(hex: "3498DB")
        case total - 3: return Color(hex: "F39C12")
        default:        return Color(hex: "9B59B6")
        }
    }
}

// MARK: - NewSessionButton

private struct NewSessionButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text("New Session")
            .font(.system(size: 56, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .frame(minWidth: 600, minHeight: 90)
            .background(
                RoundedRectangle(cornerRadius: 22)
                    .fill(
                        LinearGradient(
                            colors: isFocused
                                ? [Color(hex: "FFAA00"), Color(hex: "FF7A00")]
                                : [Color(hex: "FF9500").opacity(0.85), Color(hex: "FF6500").opacity(0.85)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
            )
            .scaleEffect(isFocused ? 1.06 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - ChangeActivityButton

private struct ChangeActivityButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text("Change Activity")
            .font(.system(size: 56, weight: .semibold, design: .rounded))
            .foregroundColor(Color.white.opacity(0.65))
            .frame(minWidth: 600, minHeight: 90)
            .background(
                RoundedRectangle(cornerRadius: 22)
                    .fill(Color.white.opacity(isFocused ? 0.14 : 0.07))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 22)
                    .stroke(Color.white.opacity(0.18), lineWidth: 1.5)
            )
            .scaleEffect(isFocused ? 1.06 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

// MARK: - TVConfettiParticle

private struct TVConfettiParticle: Identifiable {
    let id = UUID()
    let x: CGFloat
    let color: Color
    let size: CGFloat
    let delay: Double
    let duration: Double
}

// MARK: - TVConfettiView

private struct TVConfettiView: View {
    @State private var particles: [TVConfettiParticle] = []
    @State private var dropped = false

    private let palette: [Color] = [
        Color(hex: "FFD700"), Color(hex: "2ECC71"), Color(hex: "3498DB"),
        Color(hex: "F39C12"), Color(hex: "9B59B6"), .pink, .red, .cyan
    ]

    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(particles) { p in
                    Circle()
                        .fill(p.color)
                        .frame(width: p.size, height: p.size)
                        .position(x: p.x, y: dropped ? geo.size.height + 40 : -20)
                        .animation(
                            .easeIn(duration: p.duration).delay(p.delay),
                            value: dropped
                        )
                }
            }
            .onAppear {
                particles = (0..<20).map { _ in
                    TVConfettiParticle(
                        x: CGFloat.random(in: 60...(geo.size.width - 60)),
                        color: palette.randomElement()!,
                        size: CGFloat.random(in: 14...28),
                        delay: Double.random(in: 0...1.2),
                        duration: Double.random(in: 2.5...4.0)
                    )
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                    dropped = true
                }
            }
        }
        .ignoresSafeArea()
        .allowsHitTesting(false)
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
