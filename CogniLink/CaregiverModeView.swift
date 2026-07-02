#if os(iOS)
import SwiftUI

/// Entry point for Caregiver Mode: a PIN gate that reveals the caregiver dashboard.
struct CaregiverModeView: View {
    @ObservedObject private var languageManager = LanguageManager.shared
    @Environment(\.dismiss) private var dismiss

    @State private var isUnlocked = false
    @State private var showDefaultPINNotice = false

    var body: some View {
        Group {
            if isUnlocked {
                CaregiverDashboardView()
            } else {
                PINEntryView(
                    onSuccess: {
                        withAnimation { isUnlocked = true }
                    },
                    onDismiss: { dismiss() }
                )
                .navigationBarBackButtonHidden(true)
            }
        }
        .navigationTitle(languageManager.currentLanguage.cgCaregiverMode)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            if !isUnlocked && CaregiverPINManager.isUsingDefaultPIN {
                showDefaultPINNotice = true
            }
        }
        .alert(languageManager.currentLanguage.cgDefaultPINNoticeTitle, isPresented: $showDefaultPINNotice) {
            Button("OK") {}
        } message: {
            Text(languageManager.currentLanguage.cgDefaultPINNoticeMessage)
        }
    }
}

// MARK: - Caregiver Mode Localization

extension AppLanguage {
    var cgCaregiverMode: String {
        switch self {
        case .english:    return "Caregiver Mode"
        case .spanish:    return "Modo Cuidador"
        case .hindi:      return "देखभालकर्ता मोड"
        case .gujarati:   return "સંભાળકર્તા મોડ"
        case .chinese:    return "看护者模式"
        case .farsi:      return "حالت مراقب"
        case .korean:     return "보호자 모드"
        case .vietnamese: return "Chế độ người chăm sóc"
        case .arabic:     return "وضع مقدم الرعاية"
        case .portuguese: return "Modo Cuidador"
        case .tagalog:    return "Caregiver Mode"
        case .punjabi:    return "ਦੇਖਭਾਲਕਰਤਾ ਮੋਡ"
        case .armenian:   return "Խնամողի Ռեժիմ"
        }
    }

    var cgEnterPIN: String {
        switch self {
        case .english:    return "Enter PIN"
        case .spanish:    return "Ingrese el PIN"
        case .hindi:      return "पिन दर्ज करें"
        case .gujarati:   return "PIN દાખલ કરો"
        case .chinese:    return "输入密码"
        case .farsi:      return "پین را وارد کنید"
        case .korean:     return "PIN 입력"
        case .vietnamese: return "Nhập mã PIN"
        case .arabic:     return "أدخل رمز PIN"
        case .portuguese: return "Digite o PIN"
        case .tagalog:    return "Ilagay ang PIN"
        case .punjabi:    return "PIN ਦਰਜ ਕਰੋ"
        case .armenian:   return "Մուտքագրեք PIN-ը"
        }
    }

    var cgForgotPIN: String {
        switch self {
        case .english:    return "Forgot PIN? Reset to 0000"
        case .spanish:    return "¿Olvidó el PIN? Restablecer a 0000"
        case .hindi:      return "पिन भूल गए? 0000 पर रीसेट करें"
        case .gujarati:   return "PIN ભૂલી ગયા? 0000 પર રીસેટ કરો"
        case .chinese:    return "忘记密码？重置为 0000"
        case .farsi:      return "پین را فراموش کردید؟ بازنشانی به ۰۰۰۰"
        case .korean:     return "PIN을 잊으셨나요? 0000으로 초기화"
        case .vietnamese: return "Quên mã PIN? Đặt lại về 0000"
        case .arabic:     return "نسيت رمز PIN؟ إعادة التعيين إلى 0000"
        case .portuguese: return "Esqueceu o PIN? Redefinir para 0000"
        case .tagalog:    return "Nakalimutan ang PIN? I-reset sa 0000"
        case .punjabi:    return "PIN ਭੁੱਲ ਗਏ? 0000 'ਤੇ ਰੀਸੈਟ ਕਰੋ"
        case .armenian:   return "Մոռացե՞լ եք PIN-ը: Վերակայել 0000-ի"
        }
    }

    var cgCancel: String {
        switch self {
        case .english:    return "Cancel"
        case .spanish:    return "Cancelar"
        case .hindi:      return "रद्द करें"
        case .gujarati:   return "રદ કરો"
        case .chinese:    return "取消"
        case .farsi:      return "لغو"
        case .korean:     return "취소"
        case .vietnamese: return "Hủy"
        case .arabic:     return "إلغاء"
        case .portuguese: return "Cancelar"
        case .tagalog:    return "Kanselahin"
        case .punjabi:    return "ਰੱਦ ਕਰੋ"
        case .armenian:   return "Չեղարկել"
        }
    }

    var cgDelete: String {
        switch self {
        case .english:    return "Delete"
        case .spanish:    return "Borrar"
        case .hindi:      return "हटाएं"
        case .gujarati:   return "કાઢી નાખો"
        case .chinese:    return "删除"
        case .farsi:      return "حذف"
        case .korean:     return "삭제"
        case .vietnamese: return "Xóa"
        case .arabic:     return "حذف"
        case .portuguese: return "Apagar"
        case .tagalog:    return "Burahin"
        case .punjabi:    return "ਮਿਟਾਓ"
        case .armenian:   return "Ջնջել"
        }
    }

    var cgResetPINTitle: String {
        switch self {
        case .english:    return "Reset PIN?"
        case .spanish:    return "¿Restablecer PIN?"
        case .hindi:      return "पिन रीसेट करें?"
        case .gujarati:   return "PIN રીસેટ કરવો?"
        case .chinese:    return "重置密码？"
        case .farsi:      return "بازنشانی پین؟"
        case .korean:     return "PIN을 초기화하시겠습니까?"
        case .vietnamese: return "Đặt lại mã PIN?"
        case .arabic:     return "إعادة تعيين رمز PIN؟"
        case .portuguese: return "Redefinir PIN?"
        case .tagalog:    return "I-reset ang PIN?"
        case .punjabi:    return "PIN ਰੀਸੈਟ ਕਰਨਾ ਹੈ?"
        case .armenian:   return "Վերակայե՞լ PIN-ը:"
        }
    }

    var cgResetPINMessage: String {
        switch self {
        case .english:    return "The PIN will be reset to 0000."
        case .spanish:    return "El PIN se restablecerá a 0000."
        case .hindi:      return "पिन 0000 पर रीसेट हो जाएगा।"
        case .gujarati:   return "PIN 0000 પર રીસેટ થશે."
        case .chinese:    return "密码将重置为 0000。"
        case .farsi:      return "پین به ۰۰۰۰ بازنشانی می‌شود."
        case .korean:     return "PIN이 0000으로 초기화됩니다."
        case .vietnamese: return "Mã PIN sẽ được đặt lại về 0000."
        case .arabic:     return "ستتم إعادة تعيين رمز PIN إلى 0000."
        case .portuguese: return "O PIN será redefinido para 0000."
        case .tagalog:    return "Ire-reset ang PIN sa 0000."
        case .punjabi:    return "PIN 0000 'ਤੇ ਰੀਸੈਟ ਹੋ ਜਾਵੇਗਾ।"
        case .armenian:   return "PIN-ը կվերակայվի 0000-ի:"
        }
    }

    var cgResetAction: String {
        switch self {
        case .english:    return "Reset"
        case .spanish:    return "Restablecer"
        case .hindi:      return "रीसेट करें"
        case .gujarati:   return "રીસેટ કરો"
        case .chinese:    return "重置"
        case .farsi:      return "بازنشانی"
        case .korean:     return "초기화"
        case .vietnamese: return "Đặt lại"
        case .arabic:     return "إعادة تعيين"
        case .portuguese: return "Redefinir"
        case .tagalog:    return "I-reset"
        case .punjabi:    return "ਰੀਸੈਟ ਕਰੋ"
        case .armenian:   return "Վերակայել"
        }
    }

    var cgChangePIN: String {
        switch self {
        case .english:    return "Change PIN"
        case .spanish:    return "Cambiar PIN"
        case .hindi:      return "पिन बदलें"
        case .gujarati:   return "PIN બદલો"
        case .chinese:    return "更改密码"
        case .farsi:      return "تغییر پین"
        case .korean:     return "PIN 변경"
        case .vietnamese: return "Đổi mã PIN"
        case .arabic:     return "تغيير رمز PIN"
        case .portuguese: return "Alterar PIN"
        case .tagalog:    return "Palitan ang PIN"
        case .punjabi:    return "PIN ਬਦਲੋ"
        case .armenian:   return "Փոխել PIN-ը"
        }
    }

    var cgNewPIN: String {
        switch self {
        case .english:    return "Enter new PIN"
        case .spanish:    return "Ingrese el nuevo PIN"
        case .hindi:      return "नया पिन दर्ज करें"
        case .gujarati:   return "નવો PIN દાખલ કરો"
        case .chinese:    return "输入新密码"
        case .farsi:      return "پین جدید را وارد کنید"
        case .korean:     return "새 PIN 입력"
        case .vietnamese: return "Nhập mã PIN mới"
        case .arabic:     return "أدخل رمز PIN الجديد"
        case .portuguese: return "Digite o novo PIN"
        case .tagalog:    return "Ilagay ang bagong PIN"
        case .punjabi:    return "ਨਵਾਂ PIN ਦਰਜ ਕਰੋ"
        case .armenian:   return "Մուտքագրեք նոր PIN-ը"
        }
    }

    var cgConfirmPIN: String {
        switch self {
        case .english:    return "Confirm new PIN"
        case .spanish:    return "Confirme el nuevo PIN"
        case .hindi:      return "नए पिन की पुष्टि करें"
        case .gujarati:   return "નવા PIN ની પુષ્ટિ કરો"
        case .chinese:    return "确认新密码"
        case .farsi:      return "پین جدید را تأیید کنید"
        case .korean:     return "새 PIN 확인"
        case .vietnamese: return "Xác nhận mã PIN mới"
        case .arabic:     return "تأكيد رمز PIN الجديد"
        case .portuguese: return "Confirme o novo PIN"
        case .tagalog:    return "Kumpirmahin ang bagong PIN"
        case .punjabi:    return "ਨਵੇਂ PIN ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ"
        case .armenian:   return "Հաստատեք նոր PIN-ը"
        }
    }

    var cgPINChanged: String {
        switch self {
        case .english:    return "PIN changed"
        case .spanish:    return "PIN cambiado"
        case .hindi:      return "पिन बदल गया"
        case .gujarati:   return "PIN બદલાયો"
        case .chinese:    return "密码已更改"
        case .farsi:      return "پین تغییر کرد"
        case .korean:     return "PIN이 변경되었습니다"
        case .vietnamese: return "Đã đổi mã PIN"
        case .arabic:     return "تم تغيير رمز PIN"
        case .portuguese: return "PIN alterado"
        case .tagalog:    return "Napalitan na ang PIN"
        case .punjabi:    return "PIN ਬਦਲ ਗਿਆ"
        case .armenian:   return "PIN-ը փոխվեց"
        }
    }

    var cgDefaultPINNoticeTitle: String {
        switch self {
        case .english:    return "Default PIN"
        case .spanish:    return "PIN Predeterminado"
        case .hindi:      return "डिफ़ॉल्ट पिन"
        case .gujarati:   return "ડિફૉલ્ટ PIN"
        case .chinese:    return "默认密码"
        case .farsi:      return "پین پیش‌فرض"
        case .korean:     return "기본 PIN"
        case .vietnamese: return "Mã PIN mặc định"
        case .arabic:     return "رمز PIN الافتراضي"
        case .portuguese: return "PIN Padrão"
        case .tagalog:    return "Default na PIN"
        case .punjabi:    return "ਡਿਫੌਲਟ PIN"
        case .armenian:   return "Կանխադրված PIN"
        }
    }

    var cgDefaultPINNoticeMessage: String {
        switch self {
        case .english:    return "The default PIN is 0000. Please change it after entering Caregiver Mode."
        case .spanish:    return "El PIN predeterminado es 0000. Cámbielo después de entrar al Modo Cuidador."
        case .hindi:      return "डिफ़ॉल्ट पिन 0000 है। देखभालकर्ता मोड में प्रवेश करने के बाद कृपया इसे बदलें।"
        case .gujarati:   return "ડિફૉલ્ટ PIN 0000 છે. સંભાળકર્તા મોડમાં પ્રવેશ્યા પછી કૃપા કરીને તેને બદલો."
        case .chinese:    return "默认密码为 0000。进入看护者模式后请更改密码。"
        case .farsi:      return "پین پیش‌فرض ۰۰۰۰ است. لطفاً پس از ورود به حالت مراقب آن را تغییر دهید."
        case .korean:     return "기본 PIN은 0000입니다. 보호자 모드에 들어간 후 변경해 주세요."
        case .vietnamese: return "Mã PIN mặc định là 0000. Vui lòng đổi sau khi vào Chế độ người chăm sóc."
        case .arabic:     return "رمز PIN الافتراضي هو 0000. يرجى تغييره بعد دخول وضع مقدم الرعاية."
        case .portuguese: return "O PIN padrão é 0000. Altere-o após entrar no Modo Cuidador."
        case .tagalog:    return "Ang default na PIN ay 0000. Palitan ito pagkapasok sa Caregiver Mode."
        case .punjabi:    return "ਡਿਫੌਲਟ PIN 0000 ਹੈ। ਦੇਖਭਾਲਕਰਤਾ ਮੋਡ ਵਿੱਚ ਦਾਖਲ ਹੋਣ ਤੋਂ ਬਾਅਦ ਕਿਰਪਾ ਕਰਕੇ ਇਸਨੂੰ ਬਦਲੋ।"
        case .armenian:   return "Կանխադրված PIN-ը 0000 է: Խնդրում ենք փոխել այն Խնամողի Ռեժիմ մտնելուց հետո:"
        }
    }

    var cgCurrentStreak: String {
        switch self {
        case .english:    return "Current Streak"
        case .spanish:    return "Racha Actual"
        case .hindi:      return "वर्तमान स्ट्रीक"
        case .gujarati:   return "વર્તમાન સ્ટ્રીક"
        case .chinese:    return "当前连续天数"
        case .farsi:      return "روند فعلی"
        case .korean:     return "현재 연속 기록"
        case .vietnamese: return "Chuỗi ngày hiện tại"
        case .arabic:     return "السلسلة الحالية"
        case .portuguese: return "Sequência Atual"
        case .tagalog:    return "Kasalukuyang Streak"
        case .punjabi:    return "ਮੌਜੂਦਾ ਸਟ੍ਰੀਕ"
        case .armenian:   return "Ընթացիկ Շարք"
        }
    }

    var cgOverallAccuracy: String {
        switch self {
        case .english:    return "Overall Accuracy"
        case .spanish:    return "Precisión General"
        case .hindi:      return "समग्र सटीकता"
        case .gujarati:   return "એકંદર ચોકસાઈ"
        case .chinese:    return "总体正确率"
        case .farsi:      return "دقت کلی"
        case .korean:     return "전체 정확도"
        case .vietnamese: return "Độ chính xác tổng thể"
        case .arabic:     return "الدقة الإجمالية"
        case .portuguese: return "Precisão Geral"
        case .tagalog:    return "Kabuuang Katumpakan"
        case .punjabi:    return "ਕੁੱਲ ਸ਼ੁੱਧਤਾ"
        case .armenian:   return "Ընդհանուր Ճշգրտություն"
        }
    }

    var cgSessionsThisWeek: String {
        switch self {
        case .english:    return "Sessions This Week"
        case .spanish:    return "Sesiones Esta Semana"
        case .hindi:      return "इस सप्ताह के सत्र"
        case .gujarati:   return "આ અઠવાડિયાના સત્રો"
        case .chinese:    return "本周练习次数"
        case .farsi:      return "جلسات این هفته"
        case .korean:     return "이번 주 세션"
        case .vietnamese: return "Phiên tuần này"
        case .arabic:     return "جلسات هذا الأسبوع"
        case .portuguese: return "Sessões Esta Semana"
        case .tagalog:    return "Mga Session Ngayong Linggo"
        case .punjabi:    return "ਇਸ ਹਫ਼ਤੇ ਦੇ ਸੈਸ਼ਨ"
        case .armenian:   return "Այս Շաբաթվա Սեսիաներ"
        }
    }

    var cgProgressDetail: String {
        switch self {
        case .english:    return "Progress Detail"
        case .spanish:    return "Detalle del Progreso"
        case .hindi:      return "प्रगति विवरण"
        case .gujarati:   return "પ્રગતિ વિગત"
        case .chinese:    return "进度详情"
        case .farsi:      return "جزئیات پیشرفت"
        case .korean:     return "진행 상세"
        case .vietnamese: return "Chi tiết tiến trình"
        case .arabic:     return "تفاصيل التقدم"
        case .portuguese: return "Detalhe do Progresso"
        case .tagalog:    return "Detalye ng Progreso"
        case .punjabi:    return "ਪ੍ਰਗਤੀ ਵੇਰਵਾ"
        case .armenian:   return "Առաջընթացի Մանրամասներ"
        }
    }

    var cgWeeklyGoal: String {
        switch self {
        case .english:    return "Weekly Goal"
        case .spanish:    return "Meta Semanal"
        case .hindi:      return "साप्ताहिक लक्ष्य"
        case .gujarati:   return "સાપ્તાહિક લક્ષ્ય"
        case .chinese:    return "每周目标"
        case .farsi:      return "هدف هفتگی"
        case .korean:     return "주간 목표"
        case .vietnamese: return "Mục tiêu tuần"
        case .arabic:     return "الهدف الأسبوعي"
        case .portuguese: return "Meta Semanal"
        case .tagalog:    return "Lingguhang Layunin"
        case .punjabi:    return "ਹਫ਼ਤਾਵਾਰੀ ਟੀਚਾ"
        case .armenian:   return "Շաբաթական Նպատակ"
        }
    }

    var cgTherapyNotes: String {
        switch self {
        case .english:    return "Therapy Notes"
        case .spanish:    return "Notas de Terapia"
        case .hindi:      return "थेरेपी नोट्स"
        case .gujarati:   return "થેરાપી નોંધો"
        case .chinese:    return "治疗笔记"
        case .farsi:      return "یادداشت‌های درمان"
        case .korean:     return "치료 노트"
        case .vietnamese: return "Ghi chú trị liệu"
        case .arabic:     return "ملاحظات العلاج"
        case .portuguese: return "Notas de Terapia"
        case .tagalog:    return "Mga Tala ng Therapy"
        case .punjabi:    return "ਥੈਰੇਪੀ ਨੋਟਸ"
        case .armenian:   return "Թերապիայի Նշումներ"
        }
    }

    var cgExportPDF: String {
        switch self {
        case .english:    return "Export PDF Report"
        case .spanish:    return "Exportar Informe PDF"
        case .hindi:      return "PDF रिपोर्ट निर्यात करें"
        case .gujarati:   return "PDF રિપોર્ટ નિકાસ કરો"
        case .chinese:    return "导出 PDF 报告"
        case .farsi:      return "خروجی گزارش PDF"
        case .korean:     return "PDF 보고서 내보내기"
        case .vietnamese: return "Xuất báo cáo PDF"
        case .arabic:     return "تصدير تقرير PDF"
        case .portuguese: return "Exportar Relatório PDF"
        case .tagalog:    return "I-export ang PDF Report"
        case .punjabi:    return "PDF ਰਿਪੋਰਟ ਨਿਰਯਾਤ ਕਰੋ"
        case .armenian:   return "Արտահանել PDF Հաշվետվություն"
        }
    }

    var cgSessionHistory: String {
        switch self {
        case .english:    return "Session History"
        case .spanish:    return "Historial de Sesiones"
        case .hindi:      return "सत्र इतिहास"
        case .gujarati:   return "સત્ર ઇતિહાસ"
        case .chinese:    return "练习历史"
        case .farsi:      return "تاریخچه جلسات"
        case .korean:     return "세션 기록"
        case .vietnamese: return "Lịch sử phiên"
        case .arabic:     return "سجل الجلسات"
        case .portuguese: return "Histórico de Sessões"
        case .tagalog:    return "Kasaysayan ng Session"
        case .punjabi:    return "ਸੈਸ਼ਨ ਇਤਿਹਾਸ"
        case .armenian:   return "Սեսիաների Պատմություն"
        }
    }

    var cgAccuracyTrend: String {
        switch self {
        case .english:    return "Accuracy Trend"
        case .spanish:    return "Tendencia de Precisión"
        case .hindi:      return "सटीकता की प्रवृत्ति"
        case .gujarati:   return "ચોકસાઈનું વલણ"
        case .chinese:    return "正确率趋势"
        case .farsi:      return "روند دقت"
        case .korean:     return "정확도 추세"
        case .vietnamese: return "Xu hướng chính xác"
        case .arabic:     return "اتجاه الدقة"
        case .portuguese: return "Tendência de Precisão"
        case .tagalog:    return "Trend ng Katumpakan"
        case .punjabi:    return "ਸ਼ੁੱਧਤਾ ਦਾ ਰੁਝਾਨ"
        case .armenian:   return "Ճշգրտության Միտում"
        }
    }

    var cgAll: String {
        switch self {
        case .english:    return "All"
        case .spanish:    return "Todo"
        case .hindi:      return "सभी"
        case .gujarati:   return "બધું"
        case .chinese:    return "全部"
        case .farsi:      return "همه"
        case .korean:     return "전체"
        case .vietnamese: return "Tất cả"
        case .arabic:     return "الكل"
        case .portuguese: return "Tudo"
        case .tagalog:    return "Lahat"
        case .punjabi:    return "ਸਾਰੇ"
        case .armenian:   return "Բոլորը"
        }
    }

    var cgLast7Days: String {
        switch self {
        case .english:    return "Last 7 days"
        case .spanish:    return "Últimos 7 días"
        case .hindi:      return "पिछले 7 दिन"
        case .gujarati:   return "છેલ્લા 7 દિવસ"
        case .chinese:    return "最近 7 天"
        case .farsi:      return "۷ روز گذشته"
        case .korean:     return "지난 7일"
        case .vietnamese: return "7 ngày qua"
        case .arabic:     return "آخر 7 أيام"
        case .portuguese: return "Últimos 7 dias"
        case .tagalog:    return "Huling 7 araw"
        case .punjabi:    return "ਪਿਛਲੇ 7 ਦਿਨ"
        case .armenian:   return "Վերջին 7 օր"
        }
    }

    var cgLast30Days: String {
        switch self {
        case .english:    return "Last 30 days"
        case .spanish:    return "Últimos 30 días"
        case .hindi:      return "पिछले 30 दिन"
        case .gujarati:   return "છેલ્લા 30 દિવસ"
        case .chinese:    return "最近 30 天"
        case .farsi:      return "۳۰ روز گذشته"
        case .korean:     return "지난 30일"
        case .vietnamese: return "30 ngày qua"
        case .arabic:     return "آخر 30 يومًا"
        case .portuguese: return "Últimos 30 dias"
        case .tagalog:    return "Huling 30 araw"
        case .punjabi:    return "ਪਿਛਲੇ 30 ਦਿਨ"
        case .armenian:   return "Վերջին 30 օր"
        }
    }

    var cgAddNote: String {
        switch self {
        case .english:    return "Add Note"
        case .spanish:    return "Añadir Nota"
        case .hindi:      return "नोट जोड़ें"
        case .gujarati:   return "નોંધ ઉમેરો"
        case .chinese:    return "添加笔记"
        case .farsi:      return "افزودن یادداشت"
        case .korean:     return "노트 추가"
        case .vietnamese: return "Thêm ghi chú"
        case .arabic:     return "إضافة ملاحظة"
        case .portuguese: return "Adicionar Nota"
        case .tagalog:    return "Magdagdag ng Tala"
        case .punjabi:    return "ਨੋਟ ਸ਼ਾਮਲ ਕਰੋ"
        case .armenian:   return "Ավելացնել Նշում"
        }
    }

    var cgSave: String {
        switch self {
        case .english:    return "Save"
        case .spanish:    return "Guardar"
        case .hindi:      return "सहेजें"
        case .gujarati:   return "સાચવો"
        case .chinese:    return "保存"
        case .farsi:      return "ذخیره"
        case .korean:     return "저장"
        case .vietnamese: return "Lưu"
        case .arabic:     return "حفظ"
        case .portuguese: return "Salvar"
        case .tagalog:    return "I-save"
        case .punjabi:    return "ਸੰਭਾਲੋ"
        case .armenian:   return "Պահպանել"
        }
    }

    var cgNoNotes: String {
        switch self {
        case .english:    return "No notes yet"
        case .spanish:    return "Sin notas todavía"
        case .hindi:      return "अभी तक कोई नोट नहीं"
        case .gujarati:   return "હજી કોઈ નોંધ નથી"
        case .chinese:    return "暂无笔记"
        case .farsi:      return "هنوز یادداشتی نیست"
        case .korean:     return "아직 노트가 없습니다"
        case .vietnamese: return "Chưa có ghi chú"
        case .arabic:     return "لا توجد ملاحظات بعد"
        case .portuguese: return "Nenhuma nota ainda"
        case .tagalog:    return "Wala pang tala"
        case .punjabi:    return "ਹਾਲੇ ਕੋਈ ਨੋਟ ਨਹੀਂ"
        case .armenian:   return "Դեռ նշումներ չկան"
        }
    }

    var cgNoData: String {
        switch self {
        case .english:    return "No data yet"
        case .spanish:    return "Sin datos todavía"
        case .hindi:      return "अभी तक कोई डेटा नहीं"
        case .gujarati:   return "હજી કોઈ ડેટા નથી"
        case .chinese:    return "暂无数据"
        case .farsi:      return "هنوز داده‌ای نیست"
        case .korean:     return "아직 데이터가 없습니다"
        case .vietnamese: return "Chưa có dữ liệu"
        case .arabic:     return "لا توجد بيانات بعد"
        case .portuguese: return "Nenhum dado ainda"
        case .tagalog:    return "Wala pang data"
        case .punjabi:    return "ਹਾਲੇ ਕੋਈ ਡਾਟਾ ਨਹੀਂ"
        case .armenian:   return "Դեռ տվյալներ չկան"
        }
    }

    var cgSessionsPerWeek: String {
        switch self {
        case .english:    return "sessions per week"
        case .spanish:    return "sesiones por semana"
        case .hindi:      return "सत्र प्रति सप्ताह"
        case .gujarati:   return "સત્રો દર અઠવાડિયે"
        case .chinese:    return "次练习 / 周"
        case .farsi:      return "جلسه در هفته"
        case .korean:     return "주당 세션"
        case .vietnamese: return "phiên mỗi tuần"
        case .arabic:     return "جلسات في الأسبوع"
        case .portuguese: return "sessões por semana"
        case .tagalog:    return "session bawat linggo"
        case .punjabi:    return "ਸੈਸ਼ਨ ਪ੍ਰਤੀ ਹਫ਼ਤਾ"
        case .armenian:   return "սեսիա շաբաթում"
        }
    }

    func cgGoalProgress(_ done: Int, _ goal: Int) -> String {
        switch self {
        case .english:    return "\(done) of \(goal) sessions this week"
        case .spanish:    return "\(done) de \(goal) sesiones esta semana"
        case .hindi:      return "इस सप्ताह \(goal) में से \(done) सत्र"
        case .gujarati:   return "આ અઠવાડિયે \(goal) માંથી \(done) સત્રો"
        case .chinese:    return "本周已完成 \(done) / \(goal) 次练习"
        case .farsi:      return "\(done) از \(goal) جلسه در این هفته"
        case .korean:     return "이번 주 \(goal)개 중 \(done)개 세션"
        case .vietnamese: return "\(done) trên \(goal) phiên tuần này"
        case .arabic:     return "\(done) من \(goal) جلسات هذا الأسبوع"
        case .portuguese: return "\(done) de \(goal) sessões esta semana"
        case .tagalog:    return "\(done) sa \(goal) session ngayong linggo"
        case .punjabi:    return "ਇਸ ਹਫ਼ਤੇ \(goal) ਵਿੱਚੋਂ \(done) ਸੈਸ਼ਨ"
        case .armenian:   return "\(done) \(goal)-ից սեսիա այս շաբաթ"
        }
    }
}
#endif
