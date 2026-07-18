#if os(iOS)
import SwiftUI

/// Caregiver-facing insight cards: plain-language observations synthesized
/// from the existing session log and adaptive-difficulty windows by
/// InsightEngine. Read-only — no new data is collected or stored.
struct CaregiverInsightsView: View {
    @ObservedObject private var languageManager = LanguageManager.shared

    @State private var insights: [Insight] = []
    @State private var hasEnoughData = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                if insights.isEmpty {
                    emptyState
                } else {
                    ForEach(insights) { insight in
                        insightCard(insight)
                    }
                }
            }
            .padding()
        }
        .background(Color.groupedBackground.ignoresSafeArea())
        .navigationTitle(languageManager.currentLanguage.cgInsights)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            hasEnoughData = InsightEngine.hasEnoughData
            let exercises = languageManager.allExercises[languageManager.currentLanguage] ?? []
            insights = InsightEngine.generateInsights(
                language: languageManager.currentLanguage,
                exercises: exercises)
        }
    }

    // MARK: - Insight Card

    @ViewBuilder
    private func insightCard(_ insight: Insight) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: insight.sfSymbolName)
                .font(.system(size: 22, weight: .semibold))
                .foregroundColor(.accentColor)
                .frame(width: 32, height: 32)
            VStack(alignment: .leading, spacing: 4) {
                Text(insight.headline)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                Text(insight.explanation)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                if let disclaimer = insight.disclaimer {
                    DisclaimerText(text: disclaimer, style: .inline)
                }
            }
            Spacer()
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
    }

    // MARK: - Empty State

    private var emptyState: some View {
        VStack(spacing: 12) {
            Image(systemName: hasEnoughData ? "checkmark.seal" : "hourglass")
                .font(.system(size: 44))
                .foregroundColor(.secondary)
            Text(hasEnoughData
                 ? languageManager.currentLanguage.insightsSteadyTitle
                 : languageManager.currentLanguage.insightsEmptyTitle)
                .font(.headline)
                .foregroundColor(.primary)
            Text(hasEnoughData
                 ? languageManager.currentLanguage.insightsSteadyMessage
                 : languageManager.currentLanguage.insightsEmptyMessage)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 60)
        .padding(.horizontal, 24)
    }
}

// MARK: - Insights Localization

extension AppLanguage {
    var cgInsights: String {
        switch self {
        case .english:    return "Insights"
        case .spanish:    return "Observaciones"
        case .hindi:      return "अंतर्दृष्टि"
        case .gujarati:   return "અવલોકનો"
        case .chinese:    return "洞察"
        case .farsi:      return "بینش‌ها"
        case .korean:     return "인사이트"
        case .vietnamese: return "Thông tin chi tiết"
        case .arabic:     return "ملاحظات"
        case .portuguese: return "Observações"
        case .tagalog:    return "Mga Obserbasyon"
        case .punjabi:    return "ਸੂਝ"
        case .armenian:   return "Դիտարկումներ"
        case .japanese:   return "インサイト"
        case .french:     return "Observations"
        case .amharic:    return "ግንዛቤዎች"
        }
    }

    var insightsEmptyTitle: String {
        switch self {
        case .english:    return "Not enough data yet"
        case .spanish:    return "Aún no hay suficientes datos"
        case .hindi:      return "अभी पर्याप्त डेटा नहीं है"
        case .gujarati:   return "હજુ પૂરતો ડેટા નથી"
        case .chinese:    return "数据还不够"
        case .farsi:      return "هنوز داده کافی نیست"
        case .korean:     return "아직 데이터가 충분하지 않아요"
        case .vietnamese: return "Chưa đủ dữ liệu"
        case .arabic:     return "لا توجد بيانات كافية بعد"
        case .portuguese: return "Ainda não há dados suficientes"
        case .tagalog:    return "Kulang pa ang datos"
        case .punjabi:    return "ਹਾਲੇ ਕਾਫ਼ੀ ਡਾਟਾ ਨਹੀਂ ਹੈ"
        case .armenian:   return "Դեռ բավարար տվյալներ չկան"
        case .japanese:   return "まだデータが足りません"
        case .french:     return "Pas encore assez de données"
        case .amharic:    return "እስካሁን በቂ መረጃ የለም"
        }
    }

    var insightsEmptyMessage: String {
        switch self {
        case .english:    return "Insights will appear after about 10 practice sessions."
        case .spanish:    return "Las observaciones aparecerán después de unas 10 sesiones de práctica."
        case .hindi:      return "लगभग 10 अभ्यास सत्रों के बाद अंतर्दृष्टि दिखाई देगी।"
        case .gujarati:   return "લગભગ 10 અભ્યાસ સત્રો પછી અવલોકનો દેખાશે."
        case .chinese:    return "完成约 10 次练习后将显示洞察。"
        case .farsi:      return "بینش‌ها پس از حدود ۱۰ جلسه تمرین نمایش داده می‌شوند."
        case .korean:     return "약 10회의 연습 세션 후에 인사이트가 표시됩니다."
        case .vietnamese: return "Thông tin chi tiết sẽ xuất hiện sau khoảng 10 buổi luyện tập."
        case .arabic:     return "ستظهر الملاحظات بعد حوالي 10 جلسات تدريب."
        case .portuguese: return "As observações aparecerão após cerca de 10 sessões de prática."
        case .tagalog:    return "Lalabas ang mga obserbasyon pagkatapos ng humigit-kumulang 10 session ng pagsasanay."
        case .punjabi:    return "ਲਗਭਗ 10 ਅਭਿਆਸ ਸੈਸ਼ਨਾਂ ਤੋਂ ਬਾਅਦ ਸੂਝ ਦਿਖਾਈ ਦੇਵੇਗੀ।"
        case .armenian:   return "Դիտարկումները կհայտնվեն մոտ 10 պարապմունքից հետո։"
        case .japanese:   return "約10回の練習セッション後にインサイトが表示されます。"
        case .french:     return "Les observations apparaîtront après environ 10 séances de pratique."
        case .amharic:    return "ግንዛቤዎች ከ10 ገደማ የልምምድ ክፍለ-ጊዜዎች በኋላ ይታያሉ።"
        }
    }

    var insightsSteadyTitle: String {
        switch self {
        case .english:    return "All steady"
        case .spanish:    return "Todo estable"
        case .hindi:      return "सब कुछ स्थिर है"
        case .gujarati:   return "બધું સ્થિર છે"
        case .chinese:    return "一切平稳"
        case .farsi:      return "همه چیز پایدار است"
        case .korean:     return "모두 안정적이에요"
        case .vietnamese: return "Mọi thứ ổn định"
        case .arabic:     return "كل شيء مستقر"
        case .portuguese: return "Tudo estável"
        case .tagalog:    return "Panay-panay ang lahat"
        case .punjabi:    return "ਸਭ ਕੁਝ ਸਥਿਰ ਹੈ"
        case .armenian:   return "Ամեն ինչ կայուն է"
        case .japanese:   return "すべて安定しています"
        case .french:     return "Tout est stable"
        case .amharic:    return "ሁሉም ነገር የተረጋጋ ነው"
        }
    }

    var insightsSteadyMessage: String {
        switch self {
        case .english:    return "No notable changes right now. Check back after more practice."
        case .spanish:    return "No hay cambios notables por ahora. Vuelva después de más práctica."
        case .hindi:      return "अभी कोई उल्लेखनीय बदलाव नहीं। अधिक अभ्यास के बाद फिर देखें।"
        case .gujarati:   return "હમણાં કોઈ નોંધપાત્ર ફેરફાર નથી. વધુ અભ્યાસ પછી ફરી જુઓ."
        case .chinese:    return "目前没有明显变化。多加练习后再来查看。"
        case .farsi:      return "در حال حاضر تغییر قابل توجهی وجود ندارد. پس از تمرین بیشتر دوباره بررسی کنید."
        case .korean:     return "현재 눈에 띄는 변화가 없습니다. 연습 후 다시 확인하세요."
        case .vietnamese: return "Hiện không có thay đổi đáng chú ý. Hãy quay lại sau khi luyện tập thêm."
        case .arabic:     return "لا توجد تغييرات ملحوظة حاليًا. عد بعد مزيد من التدريب."
        case .portuguese: return "Sem mudanças notáveis no momento. Volte após mais prática."
        case .tagalog:    return "Walang kapansin-pansing pagbabago sa ngayon. Bumalik pagkatapos ng mas maraming pagsasanay."
        case .punjabi:    return "ਹੁਣ ਕੋਈ ਖਾਸ ਬਦਲਾਅ ਨਹੀਂ। ਹੋਰ ਅਭਿਆਸ ਤੋਂ ਬਾਅਦ ਫਿਰ ਦੇਖੋ।"
        case .armenian:   return "Այս պահին նշանակալի փոփոխություններ չկան։ Ստուգեք ավելի շատ պարապմունքից հետո։"
        case .japanese:   return "現在、目立った変化はありません。練習を重ねてからもう一度ご確認ください。"
        case .french:     return "Aucun changement notable pour le moment. Revenez après plus de pratique."
        case .amharic:    return "አሁን ጉልህ ለውጦች የሉም። ተጨማሪ ልምምድ በኋላ እንደገና ይመልከቱ።"
        }
    }

    func insightDropHeadline(_ name: String) -> String {
        switch self {
        case .english:    return "\(name) accuracy is declining"
        case .spanish:    return "La precisión en \(name) está bajando"
        case .hindi:      return "\(name) में सटीकता घट रही है"
        case .gujarati:   return "\(name) માં ચોકસાઈ ઘટી રહી છે"
        case .chinese:    return "\(name)的正确率在下降"
        case .farsi:      return "دقت در \(name) در حال کاهش است"
        case .korean:     return "\(name) 정확도가 낮아지고 있어요"
        case .vietnamese: return "Độ chính xác \(name) đang giảm"
        case .arabic:     return "دقة \(name) في انخفاض"
        case .portuguese: return "A precisão em \(name) está caindo"
        case .tagalog:    return "Bumababa ang katumpakan sa \(name)"
        case .punjabi:    return "\(name) ਵਿੱਚ ਸਟੀਕਤਾ ਘਟ ਰਹੀ ਹੈ"
        case .armenian:   return "\(name)-ի ճշգրտությունը նվազում է"
        case .japanese:   return "\(name)の正答率が低下しています"
        case .french:     return "La précision en \(name) diminue"
        case .amharic:    return "የ\(name) ትክክለኛነት እየቀነሰ ነው"
        }
    }

    func insightDropDetail(from: Int, to: Int) -> String {
        switch self {
        case .english:    return "Accuracy dropped from \(from)% to \(to)% across the last 20 questions."
        case .spanish:    return "La precisión bajó de \(from)% a \(to)% en las últimas 20 preguntas."
        case .hindi:      return "पिछले 20 प्रश्नों में सटीकता \(from)% से घटकर \(to)% हो गई।"
        case .gujarati:   return "છેલ્લા 20 પ્રશ્નોમાં ચોકસાઈ \(from)% થી ઘટીને \(to)% થઈ."
        case .chinese:    return "最近 20 题中，正确率从 \(from)% 降至 \(to)%。"
        case .farsi:      return "در ۲۰ سوال اخیر، دقت از \(from)٪ به \(to)٪ کاهش یافت."
        case .korean:     return "최근 20문제에서 정확도가 \(from)%에서 \(to)%로 떨어졌습니다."
        case .vietnamese: return "Độ chính xác giảm từ \(from)% xuống \(to)% trong 20 câu hỏi gần nhất."
        case .arabic:     return "انخفضت الدقة من \(from)٪ إلى \(to)٪ في آخر 20 سؤالًا."
        case .portuguese: return "A precisão caiu de \(from)% para \(to)% nas últimas 20 questões."
        case .tagalog:    return "Bumaba ang katumpakan mula \(from)% hanggang \(to)% sa huling 20 tanong."
        case .punjabi:    return "ਪਿਛਲੇ 20 ਸਵਾਲਾਂ ਵਿੱਚ ਸਟੀਕਤਾ \(from)% ਤੋਂ ਘਟ ਕੇ \(to)% ਹੋ ਗਈ।"
        case .armenian:   return "Վերջին 20 հարցերում ճշգրտությունը \(from)%-ից նվազել է մինչև \(to)%։"
        case .japanese:   return "直近20問で正答率が\(from)%から\(to)%に低下しました。"
        case .french:     return "La précision est passée de \(from) % à \(to) % sur les 20 dernières questions."
        case .amharic:    return "ባለፉት 20 ጥያቄዎች ትክክለኛነት ከ\(from)% ወደ \(to)% ቀንሷል።"
        }
    }

    func insightImproveHeadline(_ name: String) -> String {
        switch self {
        case .english:    return "\(name) is improving"
        case .spanish:    return "\(name) está mejorando"
        case .hindi:      return "\(name) में सुधार हो रहा है"
        case .gujarati:   return "\(name) માં સુધારો થઈ રહ્યો છે"
        case .chinese:    return "\(name)在进步"
        case .farsi:      return "\(name) در حال بهبود است"
        case .korean:     return "\(name)이(가) 좋아지고 있어요"
        case .vietnamese: return "\(name) đang tiến bộ"
        case .arabic:     return "\(name) في تحسن"
        case .portuguese: return "\(name) está melhorando"
        case .tagalog:    return "Umuunlad ang \(name)"
        case .punjabi:    return "\(name) ਵਿੱਚ ਸੁਧਾਰ ਹੋ ਰਿਹਾ ਹੈ"
        case .armenian:   return "\(name)-ը բարելավվում է"
        case .japanese:   return "\(name)が上達しています"
        case .french:     return "\(name) s'améliore"
        case .amharic:    return "\(name) እየተሻሻለ ነው"
        }
    }

    func insightImproveDetail(from: Int, to: Int) -> String {
        switch self {
        case .english:    return "Accuracy rose from \(from)% to \(to)% across the last 20 questions."
        case .spanish:    return "La precisión subió de \(from)% a \(to)% en las últimas 20 preguntas."
        case .hindi:      return "पिछले 20 प्रश्नों में सटीकता \(from)% से बढ़कर \(to)% हो गई।"
        case .gujarati:   return "છેલ્લા 20 પ્રશ્નોમાં ચોકસાઈ \(from)% થી વધીને \(to)% થઈ."
        case .chinese:    return "最近 20 题中，正确率从 \(from)% 升至 \(to)%。"
        case .farsi:      return "در ۲۰ سوال اخیر، دقت از \(from)٪ به \(to)٪ افزایش یافت."
        case .korean:     return "최근 20문제에서 정확도가 \(from)%에서 \(to)%로 올랐습니다."
        case .vietnamese: return "Độ chính xác tăng từ \(from)% lên \(to)% trong 20 câu hỏi gần nhất."
        case .arabic:     return "ارتفعت الدقة من \(from)٪ إلى \(to)٪ في آخر 20 سؤالًا."
        case .portuguese: return "A precisão subiu de \(from)% para \(to)% nas últimas 20 questões."
        case .tagalog:    return "Tumaas ang katumpakan mula \(from)% hanggang \(to)% sa huling 20 tanong."
        case .punjabi:    return "ਪਿਛਲੇ 20 ਸਵਾਲਾਂ ਵਿੱਚ ਸਟੀਕਤਾ \(from)% ਤੋਂ ਵਧ ਕੇ \(to)% ਹੋ ਗਈ।"
        case .armenian:   return "Վերջին 20 հարցերում ճշգրտությունը \(from)%-ից բարձրացել է մինչև \(to)%։"
        case .japanese:   return "直近20問で正答率が\(from)%から\(to)%に上昇しました。"
        case .french:     return "La précision est passée de \(from) % à \(to) % sur les 20 dernières questions."
        case .amharic:    return "ባለፉት 20 ጥያቄዎች ትክክለኛነት ከ\(from)% ወደ \(to)% ጨምሯል።"
        }
    }

    func insightGapHeadline(_ name: String) -> String {
        switch self {
        case .english:    return "No recent \(name) practice"
        case .spanish:    return "Sin práctica reciente de \(name)"
        case .hindi:      return "\(name) का हाल में अभ्यास नहीं"
        case .gujarati:   return "\(name) નો તાજેતરમાં અભ્યાસ નથી"
        case .chinese:    return "最近没有练习\(name)"
        case .farsi:      return "اخیراً \(name) تمرین نشده است"
        case .korean:     return "최근 \(name) 연습이 없어요"
        case .vietnamese: return "Gần đây chưa luyện tập \(name)"
        case .arabic:     return "لا يوجد تدريب حديث على \(name)"
        case .portuguese: return "Sem prática recente de \(name)"
        case .tagalog:    return "Walang kamakailang pagsasanay sa \(name)"
        case .punjabi:    return "\(name) ਦਾ ਹਾਲੀਆ ਅਭਿਆਸ ਨਹੀਂ"
        case .armenian:   return "\(name)-ի վերջին պարապմունք չկա"
        case .japanese:   return "最近\(name)の練習がありません"
        case .french:     return "Pas de pratique récente de \(name)"
        case .amharic:    return "የቅርብ ጊዜ የ\(name) ልምምድ የለም"
        }
    }

    func insightGapDetail(_ days: Int) -> String {
        switch self {
        case .english:    return "No practice in this exercise for \(days) days."
        case .spanish:    return "Sin práctica en este ejercicio durante \(days) días."
        case .hindi:      return "इस अभ्यास में \(days) दिनों से कोई अभ्यास नहीं।"
        case .gujarati:   return "આ કસરતમાં \(days) દિવસથી કોઈ અભ્યાસ નથી."
        case .chinese:    return "此练习已 \(days) 天未进行。"
        case .farsi:      return "این تمرین \(days) روز است انجام نشده."
        case .korean:     return "이 연습을 \(days)일 동안 하지 않았습니다."
        case .vietnamese: return "Không luyện tập bài này trong \(days) ngày."
        case .arabic:     return "لم يتم التدريب على هذا التمرين منذ \(days) يومًا."
        case .portuguese: return "Sem prática neste exercício há \(days) dias."
        case .tagalog:    return "\(days) araw nang walang pagsasanay sa ehersisyong ito."
        case .punjabi:    return "ਇਸ ਅਭਿਆਸ ਵਿੱਚ \(days) ਦਿਨਾਂ ਤੋਂ ਕੋਈ ਅਭਿਆਸ ਨਹੀਂ।"
        case .armenian:   return "Այս վարժությունը \(days) օր չի կատարվել։"
        case .japanese:   return "この演習は\(days)日間行われていません。"
        case .french:     return "Aucune pratique de cet exercice depuis \(days) jours."
        case .amharic:    return "ይህ መልመጃ ለ\(days) ቀናት አልተለማመደም።"
        }
    }

    func insightStallHeadline(_ name: String) -> String {
        switch self {
        case .english:    return "\(name) may be too easy"
        case .spanish:    return "\(name) puede ser demasiado fácil"
        case .hindi:      return "\(name) शायद बहुत आसान है"
        case .gujarati:   return "\(name) કદાચ ખૂબ સરળ છે"
        case .chinese:    return "\(name)可能太简单了"
        case .farsi:      return "\(name) شاید خیلی آسان باشد"
        case .korean:     return "\(name)이(가) 너무 쉬울 수 있어요"
        case .vietnamese: return "\(name) có thể quá dễ"
        case .arabic:     return "قد يكون \(name) سهلًا جدًا"
        case .portuguese: return "\(name) pode estar fácil demais"
        case .tagalog:    return "Maaaring masyadong madali ang \(name)"
        case .punjabi:    return "\(name) ਸ਼ਾਇਦ ਬਹੁਤ ਆਸਾਨ ਹੈ"
        case .armenian:   return "\(name)-ը հնարավոր է չափազանց հեշտ է"
        case .japanese:   return "\(name)は簡単すぎるかもしれません"
        case .french:     return "\(name) est peut-être trop facile"
        case .amharic:    return "\(name) በጣም ቀላል ሊሆን ይችላል"
        }
    }

    func insightStallDetail(_ accuracy: Int) -> String {
        switch self {
        case .english:    return "Accuracy is \(accuracy)% but difficulty has stayed at Easy. Consider raising the level in Therapy Settings."
        case .spanish:    return "La precisión es \(accuracy)% pero la dificultad sigue en Fácil. Considere subir el nivel en Ajustes de Terapia."
        case .hindi:      return "सटीकता \(accuracy)% है लेकिन कठिनाई आसान पर बनी हुई है। थेरेपी सेटिंग्स में स्तर बढ़ाने पर विचार करें।"
        case .gujarati:   return "ચોકસાઈ \(accuracy)% છે પણ મુશ્કેલી સરળ પર જ રહી છે. થેરાપી સેટિંગ્સમાં સ્તર વધારવાનું વિચારો."
        case .chinese:    return "正确率为 \(accuracy)%，但难度一直保持在简单。可考虑在治疗设置中提高难度。"
        case .farsi:      return "دقت \(accuracy)٪ است اما سطح دشواری روی آسان مانده است. افزایش سطح را در تنظیمات درمان در نظر بگیرید."
        case .korean:     return "정확도가 \(accuracy)%인데 난이도가 쉬움에 머물러 있습니다. 치료 설정에서 난이도를 높여 보세요."
        case .vietnamese: return "Độ chính xác là \(accuracy)% nhưng độ khó vẫn ở mức Dễ. Cân nhắc tăng mức độ trong Cài đặt Trị liệu."
        case .arabic:     return "الدقة \(accuracy)٪ لكن الصعوبة ما زالت على السهل. فكّر في رفع المستوى من إعدادات العلاج."
        case .portuguese: return "A precisão é de \(accuracy)%, mas a dificuldade permanece em Fácil. Considere aumentar o nível nas Configurações de Terapia."
        case .tagalog:    return "\(accuracy)% ang katumpakan pero nananatili sa Madali ang antas. Isaalang-alang na itaas ang antas sa Therapy Settings."
        case .punjabi:    return "ਸਟੀਕਤਾ \(accuracy)% ਹੈ ਪਰ ਮੁਸ਼ਕਲ ਆਸਾਨ 'ਤੇ ਹੀ ਰਹੀ ਹੈ। ਥੈਰੇਪੀ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਪੱਧਰ ਵਧਾਉਣ ਬਾਰੇ ਸੋਚੋ।"
        case .armenian:   return "Ճշգրտությունը \(accuracy)% է, բայց բարդությունը մնացել է Հեշտ մակարդակում։ Դիտարկեք մակարդակի բարձրացումը Թերապիայի կարգավորումներում։"
        case .japanese:   return "正答率は\(accuracy)%ですが、難易度は「やさしい」のままです。セラピー設定でレベルを上げることをご検討ください。"
        case .french:     return "La précision est de \(accuracy) % mais la difficulté est restée sur Facile. Envisagez d'augmenter le niveau dans les Réglages de thérapie."
        case .amharic:    return "ትክክለኛነት \(accuracy)% ነው ነገር ግን አስቸጋሪነት በቀላል ላይ ቆይቷል። በሕክምና ቅንብሮች ውስጥ ደረጃውን ማሳደግ ያስቡበት።"
        }
    }
}
#endif
