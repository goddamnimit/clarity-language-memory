#if os(tvOS)
import SwiftUI

struct TVPINEntryView: View {
    var onSuccess: () -> Void
    var onDismiss: () -> Void

    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var enteredPIN = ""
    @State private var errorMessage = ""
    @FocusState private var focusedButton: Int?

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            VStack(spacing: 40) {
                // Header
                VStack(spacing: 12) {
                    Text("🔒")
                        .font(.system(size: 80))
                    
                    Text(caregiverModeTitle)
                        .font(.system(size: 52, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text(enterPINInstructions)
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(Color.white.opacity(0.6))
                }
                .padding(.top, 40)

                // PIN Entry Dots Indicators
                HStack(spacing: 24) {
                    ForEach(0..<4) { index in
                        Circle()
                            .fill(index < enteredPIN.count ? Color(hex: "FF9500") : Color.white.opacity(0.15))
                            .frame(width: 32, height: 32)
                            .overlay(
                                Circle().stroke(Color.white.opacity(0.3), lineWidth: 2)
                            )
                    }
                }
                .padding(.vertical, 20)

                // Error Message Display
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.red)
                }

                // Focusable Number Pad Grid (0-9, Clear, Back)
                LazyVGrid(
                    columns: [
                        GridItem(.fixed(120)),
                        GridItem(.fixed(120)),
                        GridItem(.fixed(120))
                    ],
                    spacing: 20
                ) {
                    ForEach(1...9, id: \.self) { num in
                        pinButton(label: "\(num)", action: { addDigit("\(num)") }, focusVal: num)
                    }

                    // Bottom Row: Clear (10), 0 (0), Back (11)
                    pinButton(label: "Clear", action: clearDigits, focusVal: 10)
                    pinButton(label: "0", action: { addDigit("0") }, focusVal: 0)
                    pinButton(label: "Cancel", action: onDismiss, focusVal: 11)
                }

                Spacer(minLength: 40)
            }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        .onAppear {
            focusedButton = 1
        }
    }

    @ViewBuilder
    private func pinButton(label: String, action: @escaping () -> Void, focusVal: Int) -> some View {
        let isFocused = focusedButton == focusVal
        Button(action: action) {
            Text(label)
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 18)
                        .fill(isFocused ? Color(hex: "FF9500") : Color(hex: "2D2D44"))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
                )
        }
        .buttonStyle(.plain)
        .focused($focusedButton, equals: focusVal)
    }

    // MARK: - Input Actions

    private func addDigit(_ digit: String) {
        errorMessage = ""
        guard enteredPIN.count < 4 else { return }
        enteredPIN += digit
        TVSoundManager.play(.select)

        if enteredPIN.count == 4 {
            validatePIN()
        }
    }

    private func clearDigits() {
        enteredPIN = ""
        errorMessage = ""
        TVSoundManager.play(.select)
    }

    private func validatePIN() {
        if CaregiverPINManager.validate(enteredPIN) {
            TVSoundManager.play(.correct)
            onSuccess()
        } else {
            TVSoundManager.play(.wrong)
            errorMessage = incorrectPINError
            enteredPIN = ""
        }
    }

    // MARK: - Localized strings

    private var caregiverModeTitle: String {
        switch currentLanguage {
        case .english:    return "Caregiver Mode"
        case .spanish:    return "Modo del Cuidador"
        default:          return "Caregiver Mode"
        }
    }

    private var enterPINInstructions: String {
        switch currentLanguage {
        case .english:    return "Enter 4-Digit PIN to Access Settings"
        case .spanish:    return "Ingrese el PIN de 4 dígitos para acceder"
        default:          return "Enter 4-Digit PIN to Access Settings"
        }
    }

    private var incorrectPINError: String {
        switch currentLanguage {
        case .english:    return "Incorrect PIN. Please try again."
        case .spanish:    return "PIN incorrecto. Inténtelo de nuevo."
        default:          return "Incorrect PIN. Please try again."
        }
    }
}

// MARK: - Caregiver PIN Manager tvOS Bridge

struct CaregiverPINManager {
    private static let pinKey = "clarity_caregiver_pin"
    static let defaultPIN = "0000"

    static var currentPIN: String {
        KeychainHelper.load(key: pinKey) ?? defaultPIN
    }

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
