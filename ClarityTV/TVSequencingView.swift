#if os(tvOS)
import SwiftUI

// MARK: - Focus tag

private enum SeqFocus: Hashable {
    case left(Int)
    case right(Int)
    case check
}

// MARK: - TVSequencingView

struct TVSequencingView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @FocusState private var focus: SeqFocus?
    @State private var shuffledSteps: [String] = []
    @State private var pickedUp: String? = nil
    @State private var slots: [String?] = []
    @State private var hasChecked = false
    @State private var slotResults: [Bool] = []

    private var correctSteps: [String] {
        item.correctAnswer.components(separatedBy: " | ")
    }

    private var allSlotsFilled: Bool {
        !slots.isEmpty && slots.allSatisfy { $0 != nil }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            // Question prompt
            Text(item.prompt)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(3)

            // Two-column layout: left tiles | right drop zones
            HStack(alignment: .top, spacing: 60) {
                // LEFT: shuffled step tiles
                VStack(alignment: .leading, spacing: 14) {
                    Text("Steps (shuffled)")
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(Color.white.opacity(0.45))

                    ForEach(shuffledSteps.indices, id: \.self) { i in
                        let step = shuffledSteps[i]
                        Button { handleLeftTap(step) } label: {
                            LeftStepTile(
                                letter: stepLetter(i),
                                text: step,
                                isPickedUp: pickedUp == step,
                                isPlaced: slots.contains(where: { $0 == step })
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .left(i))
                        .disabled(hasChecked)
                    }
                }
                .frame(maxWidth: .infinity)

                // RIGHT: ordered drop zones
                VStack(alignment: .leading, spacing: 14) {
                    Text("Put in order")
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(Color.white.opacity(0.45))

                    ForEach(slots.indices, id: \.self) { i in
                        Button { handleRightTap(i) } label: {
                            DropZone(
                                stepNumber: i + 1,
                                content: slots[i],
                                hasPickedUp: pickedUp != nil,
                                hasChecked: hasChecked,
                                isCorrect: slotResult(at: i)
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .right(i))
                        .disabled(hasChecked)
                    }
                }
                .frame(maxWidth: .infinity)
            }

            // Check Answer — amber pill, only when all zones filled
            if allSlotsFilled && !hasChecked {
                HStack {
                    Spacer()
                    Button { checkAnswer() } label: { CheckAnswerButton() }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .check)
                    Spacer()
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .onAppear {
            shuffledSteps = item.options.shuffled()
            slots = Array(repeating: nil, count: correctSteps.count)
            focus = .left(0)
        }
    }

    // MARK: - Helpers

    private func stepLetter(_ index: Int) -> String {
        guard index < 26 else { return "\(index + 1)" }
        return String(UnicodeScalar(UInt32(65 + index))!)
    }

    private func slotResult(at index: Int) -> Bool? {
        guard hasChecked, index < slotResults.count else { return nil }
        return slotResults[index]
    }

    // MARK: - Interaction

    private func handleLeftTap(_ step: String) {
        if pickedUp == step {
            // Cancel pickup
            pickedUp = nil
            return
        }
        // Remove from any slot if already placed
        if let idx = slots.firstIndex(where: { $0 == step }) {
            withAnimation(.spring(response: 0.25, dampingFraction: 0.8)) {
                slots[idx] = nil
            }
        }
        pickedUp = step
    }

    private func handleRightTap(_ index: Int) {
        guard let held = pickedUp else {
            // Nothing in hand — pick up from this zone
            if let content = slots[index] {
                withAnimation(.spring(response: 0.25, dampingFraction: 0.8)) {
                    slots[index] = nil
                }
                pickedUp = content
            }
            return
        }
        // Place or swap
        let displaced = slots[index]
        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
            slots[index] = held
        }
        pickedUp = displaced  // nil → placement done; non-nil → carry displaced tile
    }

    private func checkAnswer() {
        let results = slots.indices.map { i -> Bool in
            guard let step = slots[i], i < correctSteps.count else { return false }
            return step == correctSteps[i]
        }
        slotResults = results
        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
            hasChecked = true
        }
        focus = nil
        let allCorrect = results.allSatisfy { $0 }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            onAnswered(allCorrect)
        }
    }
}

// MARK: - LeftStepTile

private struct LeftStepTile: View {
    let letter: String
    let text: String
    let isPickedUp: Bool
    let isPlaced: Bool

    @Environment(\.isFocused) private var isFocused
    @State private var pulseOpacity: Double = 1.0

    var body: some View {
        HStack(spacing: 16) {
            Text(letter)
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(width: 44, height: 44)
                .background(isPickedUp ? Color.orange : Color.white.opacity(0.18))
                .clipShape(Circle())

            Text(text)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundColor(isPlaced && !isPickedUp ? Color.white.opacity(0.35) : .white)
                .lineLimit(2)
                .multilineTextAlignment(.leading)

            Spacer()
        }
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .background(tileBg)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    isPickedUp ? Color.orange : (isFocused ? Color.white.opacity(0.6) : Color.clear),
                    lineWidth: 3
                )
                .opacity(isPickedUp ? pulseOpacity : 1.0)
        )
        .scaleEffect(isPickedUp ? 1.1 : (isFocused ? 1.04 : 1.0))
        .opacity(isPlaced && !isPickedUp ? 0.5 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
        .animation(.spring(response: 0.25, dampingFraction: 0.7), value: isPickedUp)
        .onChange(of: isPickedUp) {
            if isPickedUp {
                pulseOpacity = 1.0
                withAnimation(.easeInOut(duration: 0.65).repeatForever(autoreverses: true)) {
                    pulseOpacity = 0.25
                }
            } else {
                withAnimation(.easeInOut(duration: 0.2)) { pulseOpacity = 1.0 }
            }
        }
    }

    private var tileBg: Color {
        if isPickedUp { return Color.orange.opacity(0.2) }
        if isFocused  { return Color(red: 0.24, green: 0.24, blue: 0.38) }
        return Color(red: 0.18, green: 0.18, blue: 0.27)
    }
}

// MARK: - DropZone

private struct DropZone: View {
    let stepNumber: Int
    let content: String?
    let hasPickedUp: Bool
    let hasChecked: Bool
    let isCorrect: Bool?

    @Environment(\.isFocused) private var isFocused

    var body: some View {
        ZStack(alignment: .leading) {
            if let step = content {
                // Filled zone
                RoundedRectangle(cornerRadius: 16)
                    .fill(filledBg)
                HStack(spacing: 16) {
                    Text("\(stepNumber)")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 44, height: 44)
                        .background(badgeBg)
                        .clipShape(Circle())
                    Text(step)
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .lineLimit(2)
                    Spacer()
                    if hasChecked {
                        Image(systemName: isCorrect == true ? "checkmark.circle.fill" : "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(Color.white.opacity(0.9))
                            .transition(.scale.combined(with: .opacity))
                    }
                }
                .padding(.horizontal, 24)
            } else {
                // Empty zone — dashed border
                RoundedRectangle(cornerRadius: 16)
                    .fill(emptyBg)
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [12, 6]))
                    .foregroundColor(dashedBorderColor)
                Text("Step \(stepNumber)")
                    .font(.system(size: 28, weight: .light))
                    .foregroundColor(Color.white.opacity(0.30))
                    .padding(.horizontal, 24)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .scaleEffect(isFocused && (hasPickedUp || content != nil) ? 1.04 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    private var filledBg: Color {
        if hasChecked {
            if isCorrect == true  { return Color(red: 0.12, green: 0.55, blue: 0.30) }
            if isCorrect == false { return Color(red: 0.70, green: 0.18, blue: 0.14) }
        }
        return isFocused ? Color(red: 0.24, green: 0.24, blue: 0.38)
                         : Color(red: 0.18, green: 0.18, blue: 0.27)
    }

    private var badgeBg: Color {
        if hasChecked {
            if isCorrect == true  { return Color.green.opacity(0.35) }
            if isCorrect == false { return Color.red.opacity(0.35) }
        }
        return Color.white.opacity(0.2)
    }

    private var emptyBg: Color {
        isFocused && hasPickedUp ? Color.orange.opacity(0.08) : Color.white.opacity(0.04)
    }

    private var dashedBorderColor: Color {
        isFocused && hasPickedUp ? Color.orange.opacity(0.7) : Color.white.opacity(0.25)
    }
}

// MARK: - CheckAnswerButton

private struct CheckAnswerButton: View {
    @Environment(\.isFocused) private var isFocused

    var body: some View {
        Text("Check Answer")
            .font(.system(size: 36, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 80)
            .padding(.vertical, 24)
            .background(Capsule().fill(isFocused ? Color.orange : Color.orange.opacity(0.7)))
            .scaleEffect(isFocused ? 1.08 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}
#endif
