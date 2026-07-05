#if os(tvOS)
import SwiftUI

struct TVTabView: View {
    @ObservedObject private var languageManager = LanguageManager.shared

    private var isRTL: Bool {
        let currentLanguage = languageManager.currentLanguage
        return currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        TabView {
            TVHomeView()
                .tabItem {
                    Label(languageManager.currentLanguage.homeTabTitle, systemImage: "house.fill")
                }

            TVActivitiesView()
                .tabItem {
                    Label(languageManager.currentLanguage.activitiesTabTitle, systemImage: "play.circle.fill")
                }

            TVProgressView()
                .tabItem {
                    Label(languageManager.currentLanguage.progressTabTitle, systemImage: "chart.bar.fill")
                }

            TVProfileView()
                .tabItem {
                    Label(languageManager.currentLanguage.profileTabTitle, systemImage: "person.crop.circle.fill")
                }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
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
