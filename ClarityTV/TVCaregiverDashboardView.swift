#if os(tvOS)
import SwiftUI

private enum TVCaregiverFocus: Hashable {
    case baseline
    case backToProfile
}

struct TVCaregiverDashboardView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var languageManager = LanguageManager.shared
    @State private var showBaselineNotice = false
    @FocusState private var focus: TVCaregiverFocus?

    private var currentLanguage: AppLanguage {
        languageManager.currentLanguage
    }

    private var isRTL: Bool {
        currentLanguage == .farsi || currentLanguage == .arabic
    }

    var body: some View {
        ZStack {
            Color(hex: "16213E").ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 50) {
                    // Header
                    VStack(spacing: 12) {
                        Text("🛠️")
                            .font(.system(size: 80))
                        
                        Text(dashboardTitle)
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        
                        Text(dashboardSub)
                            .font(.system(size: 30, weight: .light))
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                    .padding(.top, 40)

                    // Notifications Settings Block (Explicitly Non-Functional)
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Daily Practice Reminders")
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .foregroundColor(.white.opacity(0.85))
                            .padding(.horizontal, 80)

                        VStack(alignment: .leading, spacing: 16) {
                            HStack {
                                Image(systemName: "bell.slash.fill")
                                    .font(.system(size: 36))
                                    .foregroundColor(.orange)
                                Text("Reminders are iOS-only")
                                    .font(.system(size: 28, weight: .bold))
                                    .foregroundColor(.white)
                            }
                            Text("Apple TV (tvOS) does not support local notification delivery in this version. Daily diagnostic practice reminders must be configured and triggered from the patient's iOS companion application.")
                                .font(.system(size: 22, weight: .light))
                                .foregroundColor(Color.white.opacity(0.7))
                        }
                        .padding(40)
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color(hex: "2D2D44").opacity(0.5))
                                .padding(.horizontal, 80)
                        )
                    }

                    // Action Controls Block
                    VStack(spacing: 24) {
                        // Baseline Assessment Button
                        Button {
                            showBaselineNotice = true
                        } label: {
                            HStack {
                                Image(systemName: "list.clipboard.fill")
                                    .font(.system(size: 30))
                                Text("Run Baseline Assessment")
                                    .font(.system(size: 30, weight: .bold))
                            }
                            .foregroundColor(.white)
                            .frame(width: 600, height: 80)
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .fill(focus == .baseline ? Color(hex: "FF9500") : Color.white.opacity(0.1))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(focus == .baseline ? Color.white : Color.clear, lineWidth: 3)
                            )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .baseline)

                        // Back to profile
                        Button {
                            dismiss()
                        } label: {
                            Text("Back to Settings")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(.white.opacity(0.7))
                                .frame(width: 600, height: 80)
                                .background(
                                    RoundedRectangle(cornerRadius: 18)
                                        .fill(focus == .backToProfile ? Color.white.opacity(0.2) : Color.white.opacity(0.05))
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 18)
                                        .stroke(focus == .backToProfile ? Color.white : Color.clear, lineWidth: 1.5)
                                )
                        }
                        .buttonStyle(.plain)
                        .focused($focus, equals: .backToProfile)
                    }
                    .padding(.top, 20)

                    Spacer(minLength: 40)
                }
                .padding(.vertical, 40)
            }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        .onAppear {
            focus = .baseline
        }
        .alert("Baseline Assessment", isPresented: $showBaselineNotice) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Baseline Assessment is iOS-only for now.\n\nPlease initiate clinical evaluation and initial difficulty mapping from the patient's companion iOS application.")
        }
    }

    // MARK: - Localized strings

    private var dashboardTitle: String {
        switch currentLanguage {
        case .english:    return "Caregiver Hub"
        case .spanish:    return "Centro de Cuidadores"
        case .hindi:      return "देखभालकर्ता हब"
        case .gujarati:   return "કેરગિવર હબ"
        case .chinese:    return "照护者中心"
        case .farsi:      return "مرکز مراقب"
        case .korean:     return "보호자 허브"
        case .vietnamese: return "Trung tâm người chăm sóc"
        case .arabic:     return "مركز مقدم الرعاية"
        case .portuguese: return "Central do Cuidador"
        case .tagalog:    return "Sentro ng Tagapag-alaga"
        case .punjabi:    return "ਦੇਖਭਾਲ ਕਰਤਾ ਹੱਬ"
        case .armenian:   return "Խնամակալի Կենտրոն"
        case .japanese:   return "介護者ハブ"
        case .french:     return "Espace aidant"
        case .amharic:    return "የእንክብካቤ ሰጪ ማዕከል"
        }
    }

    private var dashboardSub: String {
        switch currentLanguage {
        case .english:    return "Manage clinical tracking and assessments"
        case .spanish:    return "Gestionar el seguimiento clínico"
        case .hindi:      return "क्लिनिकल ट्रैकिंग और मूल्यांकन प्रबंधित करें"
        case .gujarati:   return "ક્લિનિકલ ટ્રેકિંગ અને મૂલ્યાંકન સંચાલિત કરો"
        case .chinese:    return "管理临床追踪与评估"
        case .farsi:      return "مدیریت ردیابی بالینی و ارزیابی‌ها"
        case .korean:     return "임상 추적 및 평가 관리"
        case .vietnamese: return "Quản lý theo dõi lâm sàng và đánh giá"
        case .arabic:     return "إدارة التتبع السريري والتقييمات"
        case .portuguese: return "Gerencie o acompanhamento clínico e as avaliações"
        case .tagalog:    return "Pamahalaan ang klinikal na pagsubaybay at mga pagtatasa"
        case .punjabi:    return "ਕਲੀਨਿਕਲ ਟਰੈਕਿੰਗ ਅਤੇ ਮੁਲਾਂਕਣ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ"
        case .armenian:   return "Կառավարեք կլինիկական հետևումը և գնահատումները"
        case .japanese:   return "臨床トラッキングと評価を管理"
        case .french:     return "Gérez le suivi clinique et les évaluations"
        case .amharic:    return "ክሊኒካዊ ክትትልን እና ግምገማዎችን ያስተዳድሩ"
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
