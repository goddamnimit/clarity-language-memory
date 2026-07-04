#if os(tvOS)
import SwiftUI

// MARK: - Focus enum

private enum DifficultyFocus: Hashable {
    case easy, medium, hard, all
}

// MARK: - TVDifficultyPickerView

struct TVDifficultyPickerView: View {
    let sectionName: String
    let onSelect: (Difficulty?) -> Void

    @FocusState private var focus: DifficultyFocus?

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            VStack(spacing: 48) {
                // Header
                VStack(spacing: 16) {
                    Text("Choose Difficulty")
                        .font(.system(size: 64, weight: .bold, design: .rounded))
                        .foregroundColor(.white)

                    Text("Select a level for this session")
                        .font(.system(size: 40, weight: .light))
                        .foregroundColor(Color.white.opacity(0.55))
                }

                // 2×2 grid
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())],
                    spacing: 32
                ) {
                    DifficultyTile(
                        label: "Easy",
                        stars: "⭐",
                        color: Color(hex: "2ECC71")
                    ) {
                        onSelect(.easy)
                    }
                    .focused($focus, equals: .easy)

                    DifficultyTile(
                        label: "Medium",
                        stars: "⭐⭐",
                        color: Color(hex: "3498DB")
                    ) {
                        onSelect(.medium)
                    }
                    .focused($focus, equals: .medium)

                    DifficultyTile(
                        label: "Hard",
                        stars: "⭐⭐⭐",
                        color: Color(hex: "E74C3C")
                    ) {
                        onSelect(.hard)
                    }
                    .focused($focus, equals: .hard)

                    DifficultyTile(
                        label: "All Levels",
                        stars: "🎯",
                        gradient: LinearGradient(
                            colors: [Color(hex: "F39C12"), Color(hex: "E67E22")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    ) {
                        onSelect(nil)
                    }
                    .focused($focus, equals: .all)
                }
                .padding(.horizontal, 120)
            }
        }
        .onAppear {
            focus = .all
        }
    }
}

// MARK: - DifficultyTile

private struct DifficultyTile: View {
    let label: String
    let stars: String
    var color: Color? = nil
    var gradient: LinearGradient? = nil
    let action: () -> Void

    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Button(action: action) {
            ZStack {
                if let gradient = gradient {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(gradient)
                } else {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(color ?? Color.gray)
                }

                VStack(spacing: 16) {
                    Text(label)
                        .font(.system(size: 44, weight: .bold, design: .rounded))
                        .foregroundColor(.white)

                    Text(stars)
                        .font(.system(size: 36))
                }
            }
            .frame(width: 380, height: 180)
            .scaleEffect(isFocused ? 1.06 : 1.0)
            .shadow(
                color: isFocused ? (color ?? .orange).opacity(0.6) : .clear,
                radius: 30, x: 0, y: 10
            )
            .animation(.easeInOut(duration: 0.15), value: isFocused)
        }
        .buttonStyle(.plain)
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
