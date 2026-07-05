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
        case .hindi:      return "देखभालकर्ता मोड"
        case .gujarati:   return "કેરગિવર મોડ"
        case .chinese:    return "照护者模式"
        case .farsi:      return "حالت مراقب"
        case .korean:     return "보호자 모드"
        case .vietnamese: return "Chế độ người chăm sóc"
        case .arabic:     return "وضع مقدم الرعاية"
        case .portuguese: return "Modo Cuidador"
        case .tagalog:    return "Mode ng Tagapag-alaga"
        case .punjabi:    return "ਦੇਖਭਾਲ ਕਰਤਾ ਮੋਡ"
        case .armenian:   return "Խնամակալի Ռեժիմ"
        case .japanese:   return "介護者モード"
        case .french:     return "Mode aidant"
        case .amharic:    return "የእንክብካቤ ሰጪ ሁነታ"
        }
    }

    private var enterPINInstructions: String {
        switch currentLanguage {
        case .english:    return "Enter 4-Digit PIN to Access Settings"
        case .spanish:    return "Ingrese el PIN de 4 dígitos para acceder"
        case .hindi:      return "सेटिंग्स तक पहुंचने के लिए 4-अंकीय पिन दर्ज करें"
        case .gujarati:   return "સેટિંગ્સ ઍક્સેસ કરવા માટે 4-અંકનો પિન દાખલ કરો"
        case .chinese:    return "输入4位PIN码以访问设置"
        case .farsi:      return "برای دسترسی به تنظیمات، پین ۴ رقمی را وارد کنید"
        case .korean:     return "설정에 접근하려면 4자리 PIN을 입력하세요"
        case .vietnamese: return "Nhập mã PIN gồm 4 chữ số để truy cập Cài đặt"
        case .arabic:     return "أدخل رمز PIN المكون من 4 أرقام للوصول إلى الإعدادات"
        case .portuguese: return "Digite o PIN de 4 dígitos para acessar as configurações"
        case .tagalog:    return "Ilagay ang 4-Digit na PIN para ma-access ang Mga Setting"
        case .punjabi:    return "ਸੈਟਿੰਗਾਂ ਤੱਕ ਪਹੁੰਚਣ ਲਈ 4-ਅੰਕਾਂ ਦਾ ਪਿੰਨ ਦਾਖਲ ਕਰੋ"
        case .armenian:   return "Մուտքագրեք 4-նիշանոց PIN կոդը՝ կարգավորումներ մուտք գործելու համար"
        case .japanese:   return "設定にアクセスするには4桁のPINを入力してください"
        case .french:     return "Entrez le code PIN à 4 chiffres pour accéder aux paramètres"
        case .amharic:    return "ቅንብሮችን ለመድረስ የ4-አሃዝ ፒን ያስገቡ"
        }
    }

    private var incorrectPINError: String {
        switch currentLanguage {
        case .english:    return "Incorrect PIN. Please try again."
        case .spanish:    return "PIN incorrecto. Inténtelo de nuevo."
        case .hindi:      return "गलत पिन। कृपया पुनः प्रयास करें।"
        case .gujarati:   return "ખોટો પિન. કૃપા કરી ફરી પ્રયાસ કરો."
        case .chinese:    return "PIN码错误，请重试。"
        case .farsi:      return "پین اشتباه است. لطفاً دوباره امتحان کنید."
        case .korean:     return "PIN이 올바르지 않습니다. 다시 시도해 주세요."
        case .vietnamese: return "Mã PIN không đúng. Vui lòng thử lại."
        case .arabic:     return "رمز PIN غير صحيح. يرجى المحاولة مرة أخرى."
        case .portuguese: return "PIN incorreto. Tente novamente."
        case .tagalog:    return "Maling PIN. Pakisubukang muli."
        case .punjabi:    return "ਗਲਤ ਪਿੰਨ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।"
        case .armenian:   return "Սխալ PIN կոդ։ Խնդրում ենք փորձել կրկին։"
        case .japanese:   return "PINが正しくありません。もう一度お試しください。"
        case .french:     return "Code PIN incorrect. Veuillez réessayer."
        case .amharic:    return "የተሳሳተ ፒን። እባክዎ እንደገና ይሞክሩ።"
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
