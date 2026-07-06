#if os(tvOS)
import SwiftUI
import Combine

private enum TVTab: Hashable {
    case home
    case activities
    case progress
    case profile
}

struct TVTabView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var backgroundOpacity: Double = 0.0
    @State private var backgroundImageName: String = BackgroundManager.shared.dailyImageName(for: .tvOS)
    @State private var selectedTab: TVTab = .home
    @State private var homeTabId = UUID()
    @State private var activitiesTabId = UUID()

    private var isRTL: Bool {
        let currentLanguage = languageManager.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        ZStack {
            Group {
                if BackgroundManager.shared.imageExists(named: backgroundImageName) {
                    Image(backgroundImageName)
                        .resizable()
                        .scaledToFill()
                        .id(backgroundImageName)
                        .transition(.opacity)
                } else {
                    Color.black
                }
            }
            .ignoresSafeArea()
            .opacity(backgroundOpacity)

            Color.black.opacity(0.45)
            
            TabView(selection: $selectedTab) {
                TVHomeView()
                    .id(homeTabId)
                    .tag(TVTab.home)
                    .tabItem {
                        Label(languageManager.currentLanguage.homeTabTitle, systemImage: "house.fill")
                    }

                TVActivitiesView()
                    .id(activitiesTabId)
                    .tag(TVTab.activities)
                    .tabItem {
                        Label(languageManager.currentLanguage.activitiesTabTitle, systemImage: "play.circle.fill")
                    }

                TVProgressView()
                    .tag(TVTab.progress)
                    .tabItem {
                        Label(languageManager.currentLanguage.progressTabTitle, systemImage: "chart.bar.fill")
                    }

                TVProfileView()
                    .tag(TVTab.profile)
                    .tabItem {
                        Label(languageManager.currentLanguage.profileTabTitle, systemImage: "person.crop.circle.fill")
                    }
            }
            .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
            .onChange(of: selectedTab) { oldTab, newTab in
                if oldTab == .home && newTab != .home {
                    homeTabId = UUID()
                } else if oldTab == .activities && newTab != .activities {
                    activitiesTabId = UUID()
                }
            }
        }
        .onAppear {
            withAnimation(.easeIn(duration: 0.8)) {
                backgroundOpacity = 1.0
            }
        }
        .onReceive(
            NotificationCenter.default.publisher(for: .clarityBackgroundChanged)
                .receive(on: DispatchQueue.main)
        ) { _ in
            withAnimation(.easeInOut(duration: 0.6)) {
                backgroundImageName = BackgroundManager.shared.dailyImageName(for: .tvOS)
            }
        }
    }
}

extension AppLanguage {
    var progressTabTitle: String {
        switch self {
        case .english:    return "Progress"
        case .spanish:    return "Progreso"
        case .hindi:      return "प्रगति"
        case .gujarati:   return "પ્રગતિ"
        case .chinese:    return "进度"
        case .farsi:      return "پیشرفت"
        case .korean:     return "진행 상황"
        case .vietnamese: return "Tiến trình"
        case .arabic:     return "التقدم"
        case .portuguese: return "Progresso"
        case .tagalog:    return "Progreso"
        case .punjabi:    return "ਪ੍ਰਗਤੀ"
        case .armenian:   return "Առաջընթաց"
        case .japanese:   return "進捗"
        case .french:     return "Progrès"
        case .amharic:    return "እድገት"
        }
    }

    var homeTabTitle: String {
        switch self {
        case .english:    return "Home"
        case .spanish:    return "Inicio"
        case .hindi:      return "मुख्य"
        case .gujarati:   return "ઘર"
        case .chinese:    return "主页"
        case .farsi:      return "خانه"
        case .korean:     return "홈"
        case .vietnamese: return "Trang chủ"
        case .arabic:     return "الرئيسية"
        case .portuguese: return "Início"
        case .tagalog:    return "Home"
        case .punjabi:    return "ਹੋਮ"
        case .armenian:   return "Գլխավոր"
        case .japanese:   return "ホーム"
        case .french:     return "Accueil"
        case .amharic:    return "መነሻ"
        }
    }

    var activitiesTabTitle: String {
        switch self {
        case .english:    return "Activities"
        case .spanish:    return "Actividades"
        case .hindi:      return "गतिविधियाँ"
        case .gujarati:   return "પ્રવૃત્તિઓ"
        case .chinese:    return "活动"
        case .farsi:      return "فعالیت‌ها"
        case .korean:     return "활동"
        case .vietnamese: return "Hoạt động"
        case .arabic:     return "الأنشطة"
        case .portuguese: return "Atividades"
        case .tagalog:    return "Mga Aktibidad"
        case .punjabi:    return "ਗਤੀਵਿਧੀਆਂ"
        case .armenian:   return "Վարժություններ"
        case .japanese:   return "アクティビティ"
        case .french:     return "Activités"
        case .amharic:    return "ተግባራት"
        }
    }

    var profileTabTitle: String {
        switch self {
        case .english:    return "Profile"
        case .spanish:    return "Perfil"
        case .hindi:      return "प्रोफ़ाइल"
        case .gujarati:   return "પ્રોફાઇલ"
        case .chinese:    return "我的"
        case .farsi:      return "پروفایل"
        case .korean:     return "프로필"
        case .vietnamese: return "Hồ sơ"
        case .arabic:     return "الملف"
        case .portuguese: return "Perfil"
        case .tagalog:    return "Profile"
        case .punjabi:    return "ਪ੍ਰੋਫਾਈਲ"
        case .armenian:   return "Պրոֆիլ"
        case .japanese:   return "プロフィール"
        case .french:     return "Profil"
        case .amharic:    return "መገለጫ"
        }
    }
}
#endif
