import SwiftUI

/// An interactive sequencing interface that lets users assign order positions to steps.
struct SequencingView: View {
    let item: ExerciseItem
    let onAnswered: (Bool) -> Void

    @State private var selectedStep: String? = nil
    @State private var assignments: [String: Int] = [:] // Maps Step text -> Assigned Position Number (1 to N)
    @State private var hasChecked = false
    @State private var isCorrectOrderVisible = false

    // Parse the correct steps array from the " | " separated model correct answer
    private var correctSteps: [String] {
        item.correctAnswer.components(separatedBy: " | ")
    }

    private var allStepsAssigned: Bool {
        assignments.count == item.options.count
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            // Large task name prompt
            Text(item.prompt)
                .font(.title3) // Highly legible font
                .fontWeight(.bold)
                .foregroundColor(.primary)

            // Vertical List of Scrambled Steps
            #if os(iOS)
            VStack(spacing: 12) {
                ForEach(item.options, id: \.self) { step in
                    Button(action: {
                        if !hasChecked {
                            selectedStep = step
                        }
                    }) {
                        HStack(spacing: 14) {
                            // Left Badge Number (Blank until assigned)
                            Text(badgeText(for: step))
                                .font(.headline)
                                .foregroundColor(badgeTextColor(for: step))
                                .frame(width: 36, height: 36)
                                .background(badgeColor(for: step))
                                .clipShape(Circle())

                            Text(step)
                                .font(.body)
                                .foregroundColor(.primary)
                                .multilineTextAlignment(.leading)

                            Spacer()
                        }
                        .padding(14)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(stepBackgroundColor(for: step))
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(stepBorderColor(for: step), lineWidth: selectedStep == step ? 3 : 1.5)
                        )
                    }
                    .disabled(hasChecked)
                    .buttonStyle(PlainButtonStyle())
                }
            }
            #endif

            #if os(tvOS)
            VStack(spacing: 16) {
                ForEach(item.options, id: \.self) { step in
                    HStack(spacing: 20) {
                        Text(step)
                            .font(.title3)
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, alignment: .leading)

                        HStack(spacing: 16) {
                            Button(action: {
                                let current = assignments[step] ?? 1
                                if current > 1 { assignments[step] = current - 1 }
                            }) {
                                Image(systemName: "minus.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.accentColor)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .tvFocusEffect()

                            Text("\(assignments[step] ?? 1)")
                                .font(.title3)
                                .monospacedDigit()
                                .frame(minWidth: 40, alignment: .center)

                            Button(action: {
                                let current = assignments[step] ?? 1
                                if current < item.options.count { assignments[step] = current + 1 }
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.accentColor)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .tvFocusEffect()
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 20)
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                }
            }
            .padding(.horizontal, 4)
            .onAppear {
                for step in item.options {
                    if assignments[step] == nil {
                        assignments[step] = 1
                    }
                }
            }
            #endif

            // Selector Buttons: Numbers 1 through N
            #if os(iOS)
            if !hasChecked {
                VStack(alignment: .center, spacing: 8) {
                    Text("Available Positions:")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    HStack(spacing: 10) {
                        ForEach(1...item.options.count, id: \.self) { num in
                            Button(action: {
                                assignPosition(num)
                            }) {
                                Text("\(num)")
                                    .font(.headline)
                                    .foregroundColor(selectedStep != nil ? .white : .secondary)
                                    .frame(width: 44, height: 44) // 44pt tap target minimum
                                    .background(positionButtonBackgroundColor(num))
                                    .clipShape(Circle())
                            }
                            .disabled(selectedStep == nil)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
            }
            #endif

            // Check Order / Correct Order / Try Again Buttons
            VStack(spacing: 12) {
                if allStepsAssigned && !hasChecked {
                    Button(action: {
                        checkSequence()
                    }) {
                        Text("Check Order")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue)
                            .cornerRadius(16)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()
                }

                if hasChecked {
                    // Show Correct Order Button
                    Button(action: {
                        isCorrectOrderVisible.toggle()
                    }) {
                        HStack {
                            Image(systemName: isCorrectOrderVisible ? "eye.slash" : "eye")
                            Text(isCorrectOrderVisible ? "Hide Correct Order" : "Show Correct Order")
                        }
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.systemBackground)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                    }
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()

                    // Try Again Button (Resets Everything)
                    Button(action: {
                        resetSequencing()
                    }) {
                        HStack {
                            Image(systemName: "arrow.clockwise")
                            Text("Try Again")
                        }
                        .font(.headline)
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.red.opacity(0.1))
                        .cornerRadius(16)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .tvFocusEffect()
                }
            }

            // Correct sequence revealed
            if isCorrectOrderVisible {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Correct Steps Sequence:")
                        .font(.headline)
                        .foregroundColor(.green)

                    ForEach(0..<correctSteps.count, id: \.self) { idx in
                        HStack(spacing: 12) {
                            Text("\(idx + 1)")
                                #if os(tvOS)
                                .font(.title3)
                                #else
                                .font(.subheadline)
                                #endif
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 26, height: 26)
                                .background(Color.green)
                                .clipShape(Circle())

                            Text(correctSteps[idx])
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green.opacity(0.08))
                .cornerRadius(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.green, lineWidth: 1.5)
                )
            }
        }
        .padding(20)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 3)
    }

    // MARK: - Logic and Helper Functions

    private func assignPosition(_ number: Int) {
        guard let step = selectedStep else { return }
        
        // Clean out this number if it was already assigned to another step (prevents duplicates)
        for (key, val) in assignments {
            if val == number {
                assignments.removeValue(forKey: key)
            }
        }
        
        assignments[step] = number
        selectedStep = nil // Clear active selection
    }

    private func checkSequence() {
        hasChecked = true
        
        // Determine if all steps match the parsed correct steps sequence
        var isEntirelyCorrect = true
        for step in item.options {
            let correctIndex = (correctSteps.firstIndex(of: step) ?? -1) + 1
            if assignments[step] != correctIndex {
                isEntirelyCorrect = false
                break
            }
        }
        
        onAnswered(isEntirelyCorrect)
    }

    private func resetSequencing() {
        selectedStep = nil
        assignments.removeAll()
        hasChecked = false
        isCorrectOrderVisible = false
    }

    private func badgeText(for step: String) -> String {
        if let val = assignments[step] {
            return "\(val)"
        }
        return ""
    }

    private func badgeColor(for step: String) -> Color {
        guard let val = assignments[step] else {
            return Color.gray.opacity(0.2)
        }
        
        if hasChecked {
            let correctIndex = (correctSteps.firstIndex(of: step) ?? -1) + 1
            return val == correctIndex ? .green : .red
        }
        
        return Color.blue
    }

    private func badgeTextColor(for step: String) -> Color {
        return assignments[step] != nil ? .white : .primary
    }

    private func stepBackgroundColor(for step: String) -> Color {
        if selectedStep == step {
            return Color.blue.opacity(0.08)
        }
        
        if hasChecked, let val = assignments[step] {
            let correctIndex = (correctSteps.firstIndex(of: step) ?? -1) + 1
            return val == correctIndex ? Color.green.opacity(0.08) : Color.red.opacity(0.08)
        }
        
        return Color.systemBackground
    }

    private func stepBorderColor(for step: String) -> Color {
        if selectedStep == step {
            return Color.blue
        }
        
        if hasChecked, let val = assignments[step] {
            let correctIndex = (correctSteps.firstIndex(of: step) ?? -1) + 1
            return val == correctIndex ? .green : .red
        }
        
        return Color.gray.opacity(0.2)
    }

    private func positionButtonBackgroundColor(_ num: Int) -> Color {
        if selectedStep != nil {
            let isTaken = assignments.values.contains(num)
            return isTaken ? Color.blue.opacity(0.6) : Color.blue
        }
        return Color.gray.opacity(0.2)
    }
}
