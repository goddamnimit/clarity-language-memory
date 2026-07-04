#if os(tvOS)
import SwiftUI

private enum TVSetupFocus: Hashable {
    case p1Name
    case p2Name
    case section(AppSection?) // nil represents Surprise Me
    case start
}

struct TVTwoPlayerSetupView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @FocusState private var focus: TVSetupFocus?
    @State private var p1Index = 0
    @State private var p2Index = 0
    @State private var selectedSection: AppSection? = nil // nil = Surprise Me
    @State private var launchGame = false

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    private var p1Names: [String] {
        localizedP1Presets(for: currentLanguage)
    }

    private var p2Names: [String] {
        localizedP2Presets(for: currentLanguage)
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "16213E").ignoresSafeArea()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 50) {
                        // Title
                        VStack(spacing: 12) {
                            Text(twoPlayerTitle)
                                .font(.system(size: 60, weight: .bold, design: .rounded))
                                .foregroundColor(.white)

                            Text(twoPlayerSub)
                                .font(.system(size: 30, weight: .light))
                                .foregroundColor(Color.white.opacity(0.6))
                        }
                        .padding(.top, 40)

                        // Player Names Configuration
                        HStack(spacing: 60) {
                            // Player 1 Card
                            Button {
                                p1Index = (p1Index + 1) % p1Names.count
                                TVSoundManager.play(.select)
                            } label: {
                                nameCard(playerTitle: currentLanguage.player1Default, currentName: p1Names[p1Index], isFocused: focus == .p1Name)
                            }
                            .buttonStyle(.plain)
                            .focused($focus, equals: .p1Name)

                            // Player 2 Card
                            Button {
                                p2Index = (p2Index + 1) % p2Names.count
                                TVSoundManager.play(.select)
                            } label: {
                                nameCard(playerTitle: currentLanguage.player2Default, currentName: p2Names[p2Index], isFocused: focus == .p2Name)
                            }
                            .buttonStyle(.plain)
                            .focused($focus, equals: .p2Name)
                        }

                        // Section Selector
                        VStack(alignment: .center, spacing: 20) {
                            Text(selectSectionTitle)
                                .font(.system(size: 36, weight: .semibold, design: .rounded))
                                .foregroundColor(.white.opacity(0.85))

                            HStack(spacing: 32) {
                                // Surprise Me Section option
                                Button {
                                    selectedSection = nil
                                    TVSoundManager.play(.select)
                                } label: {
                                    sectionTile(title: surpriseMeOptionTitle, isSelected: selectedSection == nil, isFocused: focus == .section(nil))
                                }
                                .buttonStyle(.plain)
                                .focused($focus, equals: .section(nil))

                                ForEach(AppSection.allCases, id: \.self) { sec in
                                    Button {
                                        selectedSection = sec
                                        TVSoundManager.play(.select)
                                    } label: {
                                        sectionTile(title: currentLanguage.recSectionName(sec), isSelected: selectedSection == sec, isFocused: focus == .section(sec))
                                    }
                                    .buttonStyle(.plain)
                                    .focused($focus, equals: .section(sec))
                                }
                            }
                        }

                        // Start Button
                        Button {
                            launchGame = true
                        } label: {
                            Text(currentLanguage.startButtonTitle)
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.horizontal, 80)
                                .padding(.vertical, 28)
                                .background(
                                    RoundedRectangle(cornerRadius: 24)
                                        .fill(focus == .start ? Color(hex: "FF9500") : Color.white.opacity(0.1))
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 24)
                                        .stroke(focus == .start ? Color.white : Color.clear, lineWidth: 3)
                                )
                                .scaleEffect(focus == .start ? 1.04 : 1.0)
                                .animation(.easeInOut(duration: 0.15), value: focus == .start)
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .start)
                        .padding(.top, 20)

                        Spacer(minLength: 40)
                    }
                }
            }
            .navigationDestination(isPresented: $launchGame) {
                TVTwoPlayerContainerView(
                    player1Name: p1Names[p1Index],
                    player2Name: p2Names[p2Index],
                    section: selectedSection
                )
            }
            .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
            .onAppear {
                focus = .p1Name
            }
        }
    }

    @ViewBuilder
    private func nameCard(playerTitle: String, currentName: String, isFocused: Bool) -> some View {
        VStack(spacing: 16) {
            Text(playerTitle)
                .font(.system(size: 30, weight: .semibold))
                .foregroundColor(Color.white.opacity(0.6))

            Text(currentName)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(1)
            
            Text("Click to Cycle 🔄")
                .font(.system(size: 20))
                .foregroundColor(Color.white.opacity(0.4))
        }
        .frame(width: 450, height: 220)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(isFocused ? Color(hex: "3D3D60") : Color(hex: "2D2D44"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isFocused ? Color.white : Color.clear, lineWidth: 3)
                .shadow(color: isFocused ? Color(hex: "FF9500").opacity(0.6) : .clear, radius: 10)
        )
        .scaleEffect(isFocused ? 1.04 : 1.0)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    @ViewBuilder
    private func sectionTile(title: String, isSelected: Bool, isFocused: Bool) -> some View {
        Text(title)
            .font(.system(size: 28, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
            .background(
                RoundedRectangle(cornerRadius: 18)
                    .fill(isFocused ? Color(hex: "3D3D60") : (isSelected ? Color(hex: "FF9500").opacity(0.8) : Color(hex: "2D2D44")))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(isFocused ? Color.white : (isSelected ? Color(hex: "FF9500") : Color.clear), lineWidth: 3)
            )
            .scaleEffect(isFocused ? 1.04 : 1.0)
            .animation(.easeInOut(duration: 0.15), value: isFocused)
    }

    // MARK: - Setup UI Localization Copy

    private var twoPlayerTitle: String {
        switch currentLanguage {
        case .english:    return "Two Player Mode"
        case .spanish:    return "Modo de Dos Jugadores"
        case .hindi:      return "दो खिलाड़ी मोड"
        case .gujarati:   return "બે ખેલાડી સ્થિતિ"
        case .chinese:    return "双人模式"
        case .farsi:      return "حالت دو نفره"
        case .korean:     return "2인용 모드"
        case .vietnamese: return "Chế độ hai người"
        case .arabic:     return "وضع اللاعبين"
        case .portuguese: return "Modo de Dois Jogadores"
        case .tagalog:    return "Two Player Mode"
        case .punjabi:    return "ਦੋ ਖਿਡਾਰੀ ਮੋਡ"
        case .armenian:   return "Երկու Խաղացողի Ռեժիմ"
        case .japanese:   return "2人プレイ"
        case .french:     return "Mode deux joueurs"
        case .amharic:    return "ባለ ሁለት ተጫዋች ሁኔታ"
        }
    }

    private var twoPlayerSub: String {
        switch currentLanguage {
        case .english:    return "Take turns and practice together!"
        case .spanish:    return "¡Turnense y practiquen juntos!"
        case .hindi:      return "बारी-बारी से खेलें और साथ अभ्यास करें!"
        case .gujarati:   return "વારાફરતી રમો અને સાથે અભ્યાસ કરો!"
        case .chinese:    return "轮流作答，共同练习！"
        case .farsi:      return "نوبتی بازی کنید و با هم تمرین کنید!"
        case .korean:     return "교대로 함께 연습해 보세요!"
        case .vietnamese: return "Thay phiên nhau và luyện tập cùng nhau!"
        case .arabic:     return "تبادلوا الأدوار وتدربوا معاً!"
        case .portuguese: return "Revezem-se e pratiquem juntos!"
        case .tagalog:    return "Magpalit-palit ng turno at mag-ensayo nang sabay!"
        case .punjabi:    return "ਵਾਰੀ-ਵਾਰੀ ਅਭਿਆਸ ਕਰੋ!"
        case .armenian:   return "Հերթով խաղացեք և միասին մարզվեք:"
        case .japanese:   return "交代で一緒に練習しましょう！"
        case .french:     return "Chacun son tour pour s'entraîner ensemble !"
        case .amharic:    return "በተራ ይጫወቱ እና አብረው ይለማመዱ!"
        }
    }

    private var selectSectionTitle: String {
        switch currentLanguage {
        case .english:    return "Choose a Category"
        case .spanish:    return "Elegir una Categoría"
        case .hindi:      return "एक श्रेणी चुनें"
        case .gujarati:   return "કેટેગરી પસંદ કરો"
        case .chinese:    return "选择类别"
        case .farsi:      return "یک دسته را انتخاب کنید"
        case .korean:     return "카테고리 선택"
        case .vietnamese: return "Chọn một danh mục"
        case .arabic:     return "اختر الفئة"
        case .portuguese: return "Escolher uma Categoria"
        case .tagalog:    return "Pumili ng Kategorya"
        case .punjabi:    return "ਸ਼੍ਰੇਣੀ ਚੁਣੋ"
        case .armenian:   return "Ընտրեք Կատեգորիան"
        case .japanese:   return "カテゴリーを選択"
        case .french:     return "Choisir une catégorie"
        case .amharic:    return "ምድብ ይምረጡ"
        }
    }

    private var surpriseMeOptionTitle: String {
        switch currentLanguage {
        case .english:    return "Random Mix 🎲"
        case .spanish:    return "Mezcla Aleatoria 🎲"
        case .hindi:      return "मिश्रित अभ्यास 🎲"
        case .gujarati:   return "મિશ્ર પ્રવૃત્તિઓ 🎲"
        case .chinese:    return "随机混合 🎲"
        case .farsi:      return "ترکیب تصادفی 🎲"
        case .korean:     return "무작위 믹스 🎲"
        case .vietnamese: return "Trộn ngẫu nhiên 🎲"
        case .arabic:     return "مزيج عشوائي 🎲"
        case .portuguese: return "Mistura Aleatória 🎲"
        case .tagalog:    return "Random Mix 🎲"
        case .punjabi:    return "ਮਿਕਸ ਅਭਿਆਸ 🎲"
        case .armenian:   return "Խառը 🎲"
        case .japanese:   return "おまかせ 🎲"
        case .french:     return "Mélange aléatoire 🎲"
        case .amharic:    return "የተቀላቀለ 🎲"
        }
    }

    private func localizedP1Presets(for lang: AppLanguage) -> [String] {
        switch lang {
        case .english:    return ["Player 1", "Mom", "Grandma", "Friend", "Player A"]
        case .spanish:    return ["Jugador 1", "Mamá", "Abuela", "Amiga", "Jugador A"]
        case .hindi:      return ["खिलाड़ी 1", "माँ", "दादी", "सहेली", "खिलाड़ी A"]
        case .gujarati:   return ["ખેલાડી 1", "બા", "દાદી", "મિત્ર", "ખેલાડી A"]
        case .chinese:    return ["玩家 1", "妈妈", "奶奶", "朋友", "玩家 A"]
        case .farsi:      return ["بازیکن ۱", "مادر", "مادربزرگ", "دوست", "بازیکن آ"]
        case .korean:     return ["플레이어 1", "엄마", "할머니", "친구", "플레이어 A"]
        case .vietnamese: return ["Người chơi 1", "Mẹ", "Bà", "Bạn", "Người chơi A"]
        case .arabic:     return ["اللاعب 1", "الأم", "الجدة", "الصديق", "اللاعب أ"]
        case .portuguese: return ["Jogador 1", "Mãe", "Avó", "Amigo", "Jogador A"]
        case .tagalog:    return ["Manlalaro 1", "Nanay", "Lola", "Kaibigan", "Manlalaro A"]
        case .punjabi:    return ["ਖਿਡਾਰੀ 1", "ਮਾਤਾ ਜੀ", "ਦਾਦੀ ਜੀ", "ਦੋਸਤ", "ਖਿਡਾਰੀ A"]
        case .armenian:   return ["Խաղացող 1", "Մայրիկ", "Տատիկ", "Ընկեր", "Խաղացող Ա"]
        case .japanese:   return ["プレイヤー1", "お母さん", "おばあちゃん", "ともだち", "プレイヤーA"]
        case .french:     return ["Joueur 1", "Maman", "Grand-mère", "Ami", "Joueur A"]
        case .amharic:    return ["ተጫዋች 1", "እናት", "አያት", "ጓደኛ", "ተጫዋች A"]
        }
    }

    private func localizedP2Presets(for lang: AppLanguage) -> [String] {
        switch lang {
        case .english:    return ["Player 2", "Dad", "Grandpa", "Friend", "Player B"]
        case .spanish:    return ["Jugador 2", "Papá", "Abuelo", "Amigo", "Jugador B"]
        case .hindi:      return ["खिलाड़ी 2", "पापा", "दादा", "मित्र", "खिलाड़ी B"]
        case .gujarati:   return ["ખેલાડી 2", "બાપા", "દાદા", "મિત્ર", "ખેલાડી B"]
        case .chinese:    return ["玩家 2", "爸爸", "爷爷", "朋友", "玩家 B"]
        case .farsi:      return ["بازیکن ۲", "پدر", "پدربزرگ", "دوست", "بازیکن ب"]
        case .korean:     return ["플레이어 2", "아빠", "할아버지", "친구", "플레이어 B"]
        case .vietnamese: return ["Người chơi 2", "Bố", "Ông", "Bạn", "Người chơi B"]
        case .arabic:     return ["اللاعب 2", "الأب", "الجد", "الصديق", "اللاعب ب"]
        case .portuguese: return ["Jogador 2", "Pai", "Avô", "Amigo", "Jogador B"]
        case .tagalog:    return ["Manlalaro 2", "Tatay", "Lolo", "Kaibigan", "Manlalaro B"]
        case .punjabi:    return ["ਖਿਡਾਰੀ 2", "ਪਿਤਾ ਜੀ", "ਦਾਦਾ ਜੀ", "ਦੋਸਤ", "ਖਿਡਾਰੀ B"]
        case .armenian:   return ["Խաղացող 2", "Հայրիկ", "Պապիկ", "Ընկեր", "Խաղացող Բ"]
        case .japanese:   return ["プレイヤー2", "お父さん", "おじいちゃん", "ともだち", "プレイヤーB"]
        case .french:     return ["Joueur 2", "Papa", "Grand-père", "Ami", "Joueur B"]
        case .amharic:    return ["ተጫዋች 2", "አባት", "አያት", "ጓደኛ", "ተጫዋች B"]
        }
    }
}

fileprivate extension AppLanguage {
    var player1Default: String {
        switch self {
        case .english:    return "Player 1"
        case .spanish:    return "Jugador 1"
        case .hindi:      return "खिलाड़ी 1"
        case .gujarati:   return "ખેલાડી 1"
        case .chinese:    return "玩家 1"
        case .farsi:      return "بازیکن ۱"
        case .korean:     return "플레이어 1"
        case .vietnamese: return "Người chơi 1"
        case .arabic:     return "اللاعب 1"
        case .portuguese: return "Jogador 1"
        case .tagalog:    return "Manlalaro 1"
        case .punjabi:    return "ਖਿਡਾਰੀ 1"
        case .armenian:   return "Խաղացող 1"
        case .japanese:   return "プレイヤー1"
        case .french:     return "Joueur 1"
        case .amharic:    return "ተጫዋች 1"
        }
    }
    
    var player2Default: String {
        switch self {
        case .english:    return "Player 2"
        case .spanish:    return "Jugador 2"
        case .hindi:      return "खिलाड़ी 2"
        case .gujarati:   return "ખેલાડી 2"
        case .chinese:    return "玩家 2"
        case .farsi:      return "بازیکن ۲"
        case .korean:     return "플레이어 2"
        case .vietnamese: return "Người chơi 2"
        case .arabic:     return "اللاعب 2"
        case .portuguese: return "Jogador 2"
        case .tagalog:    return "Manlalaro 2"
        case .punjabi:    return "ਖਿਡਾਰੀ 2"
        case .armenian:   return "Խաղացող 2"
        case .japanese:   return "プレイヤー2"
        case .french:     return "Joueur 2"
        case .amharic:    return "ተጫዋች 2"
        }
    }
    
    var startButtonTitle: String {
        switch self {
        case .english:    return "Start Game"
        case .spanish:    return "Iniciar Juego"
        case .hindi:      return "खेल शुरू करें"
        case .gujarati:   return "રમત શરૂ કરો"
        case .chinese:    return "开始游戏"
        case .farsi:      return "شروع بازی"
        case .korean:     return "게임 시작"
        case .vietnamese: return "Bắt đầu trò chơi"
        case .arabic:     return "ابدأ اللعبة"
        case .portuguese: return "Iniciar Jogo"
        case .tagalog:    return "Simulan ang Laro"
        case .punjabi:    return "ਖੇਡ ਸ਼ੁਰੂ ਕਰੋ"
        case .armenian:   return "Սկսել խաղը"
        case .japanese:   return "スタート"
        case .french:     return "Commencer"
        case .amharic:    return "ጨዋታ ጀምር"
        }
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
