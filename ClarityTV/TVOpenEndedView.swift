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
    @ObservedObject private var languageManager = LanguageManager.shared

    private var isRTL: Bool {
        let currentLanguage = languageManager.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        VStack(spacing: 40) {
            // Prompt Label
            Text(discussionPromptTitle)
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
                        Text(modelAnswerTitle)
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(Color.white.opacity(0.6))
                        
                        Text(item.correctAnswer)
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .lineLimit(6)
                            .minimumScaleFactor(0.6)
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
                                text: gotItRightTitle,
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
                                text: needMorePracticeTitle,
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

            Text(showAnswerTitle)
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

    // MARK: - Localized Copy

    private var discussionPromptTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Discussion Prompt"
        case .spanish:    return "Consigna de discusión"
        case .hindi:      return "चर्चा का विषय"
        case .gujarati:   return "ચર્ચાનો વિષય"
        case .chinese:    return "讨论提示"
        case .farsi:      return "موضوع بحث"
        case .korean:     return "토론 주제"
        case .vietnamese: return "Chủ đề thảo luận"
        case .arabic:     return "موضوع النقاش"
        case .portuguese: return "Tópico de discussão"
        case .tagalog:    return "Paksa ng talakayan"
        case .punjabi:    return "ਚਰਚา ਦਾ ਵਿਸ਼ਾ"
        case .armenian:   return "Քննարկման թեմա"
        case .japanese:   return "議論のヒント"
        case .french:     return "Sujet de discussion"
        case .amharic:    return "የውይይት ርዕስ"
        }
    }

    private var modelAnswerTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Model Answer"
        case .spanish:    return "Respuesta modelo"
        case .hindi:      return "आदर्श उत्तर"
        case .gujarati:   return "આદર્શ ઉત્તર"
        case .chinese:    return "标准答案"
        case .farsi:      return "پاسخ نمونه"
        case .korean:     return "모범 답안"
        case .vietnamese: return "Đáp án mẫu"
        case .arabic:     return "نموذج الإجابة"
        case .portuguese: return "Resposta modelo"
        case .tagalog:    return "Huwarang sagot"
        case .punjabi:    return "ਮਾਡਲ ਉੱਤਰ"
        case .armenian:   return "Նմուշային պատասխան"
        case .japanese:   return "モデル解答"
        case .french:     return "Réponse modèle"
        case .amharic:    return "የሞዴል መልስ"
        }
    }

    private var gotItRightTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "I got it right"
        case .spanish:    return "Lo hice bien"
        case .hindi:      return "मेरा सही है"
        case .gujarati:   return "મેં સાચો જવાબ આપ્યો"
        case .chinese:    return "我做对了"
        case .farsi:      return "درست گفتم"
        case .korean:     return "정답이에요"
        case .vietnamese: return "Tôi đã làm đúng"
        case .arabic:     return "لقد أجبت بشكل صحيح"
        case .portuguese: return "Acertei"
        case .tagalog:    return "Tama ako"
        case .punjabi:    return "ਮੈਂ ਸਹੀ ਕੀਤਾ"
        case .armenian:   return "Ես ճիշտ պատասխանեցի"
        case .japanese:   return "正解しました"
        case .french:     return "J'ai trouvé la bonne réponse"
        case .amharic:    return "ትክክል ነኝ"
        }
    }

    private var needMorePracticeTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "I need more practice"
        case .spanish:    return "Necesito más práctica"
        case .hindi:      return "मुझे और अभ्यास की आवश्यकता है"
        case .gujarati:   return "મારે વધુ અભ્યાસની જરૂર છે"
        case .chinese:    return "我需要更多练习"
        case .farsi:      return "نیاز به تمرین بیشتری دارم"
        case .korean:     return "더 연습해야 해요"
        case .vietnamese: return "Tôi cần luyện tập thêm"
        case .arabic:     return "أحتاج إلى مزيد من التدريب"
        case .portuguese: return "Preciso de mais prática"
        case .tagalog:    return "Kailangan ko pa ng pagsasanay"
        case .punjabi:    return "ਮੈਨੂੰ ਹੋਰ ਅਭਿਆਸ ਦੀ ਲੋੜ ਹੈ"
        case .armenian:   return "Ես ավելի շատ պրակտիկայի կարիք ունեմ"
        case .japanese:   return "もっと練習が必要です"
        case .french:     return "J'ai besoin de plus d'entraînement"
        case .amharic:    return "ተጨማሪ ልምምድ እፈልጋለሁ"
        }
    }

    private var showAnswerTitle: String {
        switch languageManager.currentLanguage {
        case .english:    return "Show Answer"
        case .spanish:    return "Mostrar respuesta"
        case .hindi:      return "उत्तर दिखाएं"
        case .gujarati:   return "જવાબ બતાવો"
        case .chinese:    return "显示答案"
        case .farsi:      return "نمایش پاسخ"
        case .korean:     return "정답 보기"
        case .vietnamese: return "Hiện đáp án"
        case .arabic:     return "إظهر الإجابة"
        case .portuguese: return "Mostrar resposta"
        case .tagalog:    return "Ipakita ang sagot"
        case .punjabi:    return "ਉੱਤਰ ਦਿਖਾਓ"
        case .armenian:   return "Ցույց տալ պատասխանը"
        case .japanese:   return "解答を表示"
        case .french:     return "Afficher la réponse"
        case .amharic:    return "መልሱን አሳይ"
        }
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
