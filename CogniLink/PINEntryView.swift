#if os(iOS)
import SwiftUI

// MARK: - Caregiver PIN Manager (Keychain-backed)

/// Stores the 4-digit Caregiver Mode PIN in the iOS Keychain.
struct CaregiverPINManager {
    private static let pinKey = "clarity_caregiver_pin"
    static let defaultPIN = "0000"

    /// The active PIN. Falls back to the default when none has been set.
    static var currentPIN: String {
        KeychainHelper.load(key: pinKey) ?? defaultPIN
    }

    /// True while the user is still on the factory default PIN.
    static var isUsingDefaultPIN: Bool {
        KeychainHelper.load(key: pinKey) == nil || currentPIN == defaultPIN
    }

    static func setPIN(_ pin: String) {
        KeychainHelper.save(pin, key: pinKey)
    }

    static func resetToDefault() {
        KeychainHelper.delete(key: pinKey)
    }

    static func validate(_ pin: String) -> Bool {
        pin == currentPIN
    }
}

// MARK: - PIN Entry View

/// Custom 4-digit PIN pad — no system keyboard. Calls `onSuccess` when the
/// correct PIN is entered; wrong entries shake and clear.
struct PINEntryView: View {
    var onSuccess: () -> Void
    var onDismiss: () -> Void

    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var enteredDigits: [Int] = []
    @State private var shakeOffset: CGFloat = 0
    @State private var showResetConfirm = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            Image(systemName: "lock.shield")
                .font(.system(size: 44))
                .foregroundColor(.accentColor)
                .accessibilityHidden(true)

            Text(languageManager.currentLanguage.cgEnterPIN)
                .font(.title3)
                .fontWeight(.semibold)

            // Dot indicators
            HStack(spacing: 20) {
                ForEach(0..<4, id: \.self) { index in
                    Circle()
                        .strokeBorder(Color.secondary, lineWidth: 1.5)
                        .background(Circle().fill(index < enteredDigits.count ? Color.primary : Color.clear))
                        .frame(width: 16, height: 16)
                }
            }
            .offset(x: shakeOffset)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("\(enteredDigits.count) of 4")

            // Keypad
            VStack(spacing: 14) {
                ForEach(0..<3, id: \.self) { row in
                    HStack(spacing: 14) {
                        ForEach(1...3, id: \.self) { col in
                            keypadButton(digit: row * 3 + col)
                        }
                    }
                }
                HStack(spacing: 14) {
                    Color.clear.frame(width: 76, height: 76)
                    keypadButton(digit: 0)
                    Button(action: deleteDigit) {
                        Image(systemName: "delete.left")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .frame(width: 76, height: 76)
                            .background(Color.secondaryGroupedBackground)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    .accessibilityLabel(languageManager.currentLanguage.cgDelete)
                }
            }

            Button(languageManager.currentLanguage.cgForgotPIN) {
                showResetConfirm = true
            }
            .font(.footnote)
            .foregroundColor(.secondary)
            .padding(.top, 4)

            Spacer()

            Button(languageManager.currentLanguage.cgCancel) {
                onDismiss()
            }
            .font(.body)
            .foregroundColor(.accentColor)
            .padding(.bottom, 16)
        }
        .padding()
        .background(Color.groupedBackground.ignoresSafeArea())
        .alert(languageManager.currentLanguage.cgResetPINTitle, isPresented: $showResetConfirm) {
            Button(languageManager.currentLanguage.cgCancel, role: .cancel) {}
            Button(languageManager.currentLanguage.cgResetAction, role: .destructive) {
                CaregiverPINManager.resetToDefault()
                enteredDigits = []
            }
        } message: {
            Text(languageManager.currentLanguage.cgResetPINMessage)
        }
    }

    @ViewBuilder
    private func keypadButton(digit: Int) -> some View {
        Button(action: { appendDigit(digit) }) {
            Text("\(digit)")
                .font(.system(size: 30, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
                .frame(width: 76, height: 76)
                .background(Color.secondaryGroupedBackground)
                .clipShape(Circle())
        }
        .buttonStyle(PlainButtonStyle())
        .accessibilityLabel("\(digit)")
    }

    private func appendDigit(_ digit: Int) {
        guard enteredDigits.count < 4 else { return }
        enteredDigits.append(digit)
        if enteredDigits.count == 4 {
            let pin = enteredDigits.map(String.init).joined()
            if CaregiverPINManager.validate(pin) {
                onSuccess()
            } else {
                rejectEntry()
            }
        }
    }

    private func deleteDigit() {
        guard !enteredDigits.isEmpty else { return }
        enteredDigits.removeLast()
    }

    private func rejectEntry() {
        UINotificationFeedbackGenerator().notificationOccurred(.error)
        withAnimation(.linear(duration: 0.06).repeatCount(5, autoreverses: true)) {
            shakeOffset = 12
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            shakeOffset = 0
            enteredDigits = []
        }
    }
}

// MARK: - Change PIN View

/// Two-step flow: enter a new 4-digit PIN, then confirm it.
struct ChangePINView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var firstEntry: String? = nil
    @State private var enteredDigits: [Int] = []
    @State private var shakeOffset: CGFloat = 0
    @State private var showSaved = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            Text(firstEntry == nil
                 ? languageManager.currentLanguage.cgNewPIN
                 : languageManager.currentLanguage.cgConfirmPIN)
                .font(.title3)
                .fontWeight(.semibold)

            HStack(spacing: 20) {
                ForEach(0..<4, id: \.self) { index in
                    Circle()
                        .strokeBorder(Color.secondary, lineWidth: 1.5)
                        .background(Circle().fill(index < enteredDigits.count ? Color.primary : Color.clear))
                        .frame(width: 16, height: 16)
                }
            }
            .offset(x: shakeOffset)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("\(enteredDigits.count) of 4")

            VStack(spacing: 14) {
                ForEach(0..<3, id: \.self) { row in
                    HStack(spacing: 14) {
                        ForEach(1...3, id: \.self) { col in
                            keypadButton(digit: row * 3 + col)
                        }
                    }
                }
                HStack(spacing: 14) {
                    Color.clear.frame(width: 76, height: 76)
                    keypadButton(digit: 0)
                    Button(action: { if !enteredDigits.isEmpty { enteredDigits.removeLast() } }) {
                        Image(systemName: "delete.left")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .frame(width: 76, height: 76)
                            .background(Color.secondaryGroupedBackground)
                            .clipShape(Circle())
                    }
                    .buttonStyle(PlainButtonStyle())
                    .accessibilityLabel(languageManager.currentLanguage.cgDelete)
                }
            }

            Spacer()

            Button(languageManager.currentLanguage.cgCancel) { dismiss() }
                .font(.body)
                .foregroundColor(.accentColor)
                .padding(.bottom, 16)
        }
        .padding()
        .background(Color.groupedBackground.ignoresSafeArea())
        .alert(languageManager.currentLanguage.cgPINChanged, isPresented: $showSaved) {
            Button("OK") { dismiss() }
        }
    }

    @ViewBuilder
    private func keypadButton(digit: Int) -> some View {
        Button(action: { appendDigit(digit) }) {
            Text("\(digit)")
                .font(.system(size: 30, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
                .frame(width: 76, height: 76)
                .background(Color.secondaryGroupedBackground)
                .clipShape(Circle())
        }
        .buttonStyle(PlainButtonStyle())
        .accessibilityLabel("\(digit)")
    }

    private func appendDigit(_ digit: Int) {
        guard enteredDigits.count < 4 else { return }
        enteredDigits.append(digit)
        guard enteredDigits.count == 4 else { return }
        let pin = enteredDigits.map(String.init).joined()

        if let first = firstEntry {
            if pin == first {
                CaregiverPINManager.setPIN(pin)
                UINotificationFeedbackGenerator().notificationOccurred(.success)
                showSaved = true
            } else {
                UINotificationFeedbackGenerator().notificationOccurred(.error)
                withAnimation(.linear(duration: 0.06).repeatCount(5, autoreverses: true)) {
                    shakeOffset = 12
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    shakeOffset = 0
                    enteredDigits = []
                    firstEntry = nil
                }
            }
        } else {
            firstEntry = pin
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                enteredDigits = []
            }
        }
    }
}
#endif
