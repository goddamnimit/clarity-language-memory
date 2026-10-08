import Foundation

/// UI strings for the Practice Supports features. Every string must supply all
/// 16 languages (enforced by the labelled parameters of `L`), so a missing
/// translation is a compile error instead of English leaking into another UI.
enum FS {

    // swiftlint:disable:next function_parameter_count
    private static func L(
        en: String, es: String, hi: String, gu: String, zh: String, fa: String,
        ko: String, vi: String, ar: String, pt: String, tl: String, pa: String,
        hy: String, ja: String, fr: String, am: String
    ) -> String {
        switch LanguageManager.shared.currentLanguage {
        case .english: return en
        case .spanish: return es
        case .hindi: return hi
        case .gujarati: return gu
        case .chinese: return zh
        case .farsi: return fa
        case .korean: return ko
        case .vietnamese: return vi
        case .arabic: return ar
        case .portuguese: return pt
        case .tagalog: return tl
        case .punjabi: return pa
        case .armenian: return hy
        case .japanese: return ja
        case .french: return fr
        case .amharic: return am
        }
    }

    // MARK: - Shared

    static var practiceSupportsTitle: String {
        L(en: "Practice Supports", es: "Apoyos para la práctica", hi: "अभ्यास सहायता",
          gu: "અભ્યાસ સહાય", zh: "练习辅助", fa: "پشتیبان‌های تمرین", ko: "연습 지원",
          vi: "Hỗ trợ luyện tập", ar: "دعم التمرين", pt: "Apoios à prática",
          tl: "Mga Suporta sa Pagsasanay", pa: "ਅਭਿਆਸ ਸਹਾਇਤਾ",
          hy: "Վարժությունների աջակցություն", ja: "練習サポート", fr: "Aides à l’exercice",
          am: "የልምምድ ድጋፎች")
    }

    // MARK: - F1 Today card

    static var today: String {
        L(en: "Today", es: "Hoy", hi: "आज", gu: "આજે", zh: "今天", fa: "امروز", ko: "오늘",
          vi: "Hôm nay", ar: "اليوم", pt: "Hoje", tl: "Ngayon", pa: "ਅੱਜ", hy: "Այսօր",
          ja: "今日", fr: "Aujourd’hui", am: "ዛሬ")
    }

    static var morning: String {
        L(en: "Morning", es: "Mañana", hi: "सुबह", gu: "સવાર", zh: "上午", fa: "صبح", ko: "아침",
          vi: "Buổi sáng", ar: "الصباح", pt: "Manhã", tl: "Umaga", pa: "ਸਵੇਰ", hy: "Առավոտ",
          ja: "朝", fr: "Matin", am: "ጠዋት")
    }

    static var afternoon: String {
        L(en: "Afternoon", es: "Tarde", hi: "दोपहर", gu: "બપોર", zh: "下午", fa: "بعدازظهر", ko: "오후",
          vi: "Buổi chiều", ar: "بعد الظهر", pt: "Tarde", tl: "Hapon", pa: "ਦੁਪਹਿਰ", hy: "Կեսօր",
          ja: "午後", fr: "Après-midi", am: "ከሰዓት")
    }

    static var evening: String {
        L(en: "Evening", es: "Atardecer", hi: "शाम", gu: "સાંજ", zh: "傍晚", fa: "عصر", ko: "저녁",
          vi: "Buổi tối", ar: "المساء", pt: "Entardecer", tl: "Gabi", pa: "ਸ਼ਾਮ", hy: "Երեկո",
          ja: "夕方", fr: "Soir", am: "ምሽት")
    }

    static var night: String {
        L(en: "Night", es: "Noche", hi: "रात", gu: "રાત", zh: "夜晚", fa: "شب", ko: "밤",
          vi: "Ban đêm", ar: "الليل", pt: "Noite", tl: "Hatinggabi", pa: "ਰਾਤ", hy: "Գիշեր",
          ja: "夜", fr: "Nuit", am: "ሌሊት")
    }

    static var orientationToggle: String {
        L(en: "Today card on Home", es: "Tarjeta de hoy en Inicio", hi: "होम पर आज का कार्ड",
          gu: "હોમ પર આજનું કાર્ડ", zh: "主页显示今日卡片", fa: "کارت امروز در صفحه اصلی",
          ko: "홈 화면의 오늘 카드", vi: "Thẻ hôm nay trên Trang chủ",
          ar: "بطاقة اليوم في الشاشة الرئيسية", pt: "Cartão de hoje no Início",
          tl: "Card ng ngayon sa Home", pa: "ਹੋਮ 'ਤੇ ਅੱਜ ਦਾ ਕਾਰਡ",
          hy: "Այսօրվա քարտը Գլխավոր էջում", ja: "ホームに今日のカードを表示",
          fr: "Carte du jour sur l’accueil", am: "በመነሻ ገጽ የዛሬ ካርድ")
    }

    static var orientationSubtitle: String {
        L(en: "Shows the day, date and time of day on the Home screen to help with orientation.",
          es: "Muestra el día, la fecha y el momento del día en Inicio para ayudar con la orientación.",
          hi: "ओरिएंटेशन में मदद के लिए होम स्क्रीन पर दिन, तारीख़ और दिन का समय दिखाता है।",
          gu: "દિશાસૂઝમાં મદદ માટે હોમ સ્ક્રીન પર વાર, તારીખ અને દિવસનો સમય બતાવે છે.",
          zh: "在主页显示星期、日期和一天中的时段，帮助定向认知。",
          fa: "برای کمک به جهت‌یابی زمانی، روز هفته، تاریخ و بخش روز را در صفحه اصلی نشان می‌دهد.",
          ko: "홈 화면에 요일, 날짜, 하루 중 시간대를 표시해 시간 감각을 돕습니다.",
          vi: "Hiển thị thứ, ngày và buổi trong ngày trên Trang chủ để hỗ trợ định hướng thời gian.",
          ar: "يعرض اليوم والتاريخ وفترة اليوم في الشاشة الرئيسية للمساعدة على التوجّه الزمني.",
          pt: "Mostra o dia da semana, a data e o período do dia no Início para ajudar na orientação.",
          tl: "Ipinapakita ang araw, petsa, at bahagi ng araw sa Home para makatulong sa oryentasyon.",
          pa: "ਸੇਧ ਵਿੱਚ ਮਦਦ ਲਈ ਹੋਮ ਸਕ੍ਰੀਨ 'ਤੇ ਦਿਨ, ਤਾਰੀਖ਼ ਅਤੇ ਦਿਨ ਦਾ ਸਮਾਂ ਦਿਖਾਉਂਦਾ ਹੈ।",
          hy: "Գլխավոր էջում ցույց է տալիս շաբաթվա օրը, ամսաթիվը և օրվա ժամը՝ կողմնորոշմանը օգնելու համար։",
          ja: "ホーム画面に曜日・日付・時間帯を表示し、見当識を助けます。",
          fr: "Affiche le jour, la date et le moment de la journée sur l’accueil pour aider à s’orienter.",
          am: "አቅጣጫን ለመርዳት በመነሻ ገጽ ላይ ቀን፣ ቀነ-ወር እና የቀኑን ክፍል ያሳያል።")
    }

    // MARK: - F2 Answer choices

    static var choicesLabel: String {
        L(en: "Answer choices", es: "Opciones de respuesta", hi: "उत्तर के विकल्प",
          gu: "જવાબના વિકલ્પો", zh: "答案选项数", fa: "تعداد گزینه‌های پاسخ", ko: "답안 선택지 수",
          vi: "Số lựa chọn trả lời", ar: "عدد خيارات الإجابة", pt: "Opções de resposta",
          tl: "Bilang ng mga pagpipilian", pa: "ਜਵਾਬ ਦੇ ਵਿਕਲਪ", hy: "Պատասխանի տարբերակներ",
          ja: "選択肢の数", fr: "Choix de réponse", am: "የመልስ አማራጮች")
    }

    static var choicesSubtitle: String {
        L(en: "Show fewer options on multiple-choice questions to make them easier. The correct answer is always included.",
          es: "Muestra menos opciones en las preguntas de opción múltiple para facilitarlas. La respuesta correcta siempre se incluye.",
          hi: "बहुविकल्पीय प्रश्नों में कम विकल्प दिखाएँ ताकि वे आसान हों। सही उत्तर हमेशा शामिल रहता है।",
          gu: "બહુવિકલ્પ પ્રશ્નોમાં ઓછા વિકલ્પો બતાવો જેથી તે સરળ બને. સાચો જવાબ હંમેશાં હાજર રહે છે.",
          zh: "在选择题中显示较少的选项以降低难度。正确答案始终会保留。",
          fa: "برای ساده‌تر شدن پرسش‌های چندگزینه‌ای، گزینه‌های کمتری نشان داده می‌شود. پاسخ درست همیشه وجود دارد.",
          ko: "객관식 문제의 선택지를 줄여 더 쉽게 만듭니다. 정답은 항상 포함됩니다.",
          vi: "Hiển thị ít lựa chọn hơn ở câu hỏi trắc nghiệm để dễ hơn. Đáp án đúng luôn được giữ lại.",
          ar: "عرض خيارات أقل في أسئلة الاختيار من متعدد لتسهيلها. تبقى الإجابة الصحيحة موجودة دائمًا.",
          pt: "Mostra menos opções nas perguntas de múltipla escolha para facilitá-las. A resposta correta sempre é incluída.",
          tl: "Magpakita ng mas kaunting pagpipilian sa multiple-choice para mas madali. Laging kasama ang tamang sagot.",
          pa: "ਬਹੁ-ਚੋਣ ਸਵਾਲਾਂ ਵਿੱਚ ਘੱਟ ਵਿਕਲਪ ਦਿਖਾਓ ਤਾਂ ਜੋ ਉਹ ਆਸਾਨ ਹੋਣ। ਸਹੀ ਜਵਾਬ ਹਮੇਸ਼ਾ ਸ਼ਾਮਲ ਰਹਿੰਦਾ ਹੈ।",
          hy: "Ցույց տալ ավելի քիչ տարբերակ բազմակի ընտրության հարցերում՝ դրանք հեշտացնելու համար։ Ճիշտ պատասխանը միշտ ներառված է։",
          ja: "選択式の問題で選択肢を減らし、答えやすくします。正解は必ず含まれます。",
          fr: "Affiche moins de choix dans les questions à choix multiples pour les faciliter. La bonne réponse est toujours incluse.",
          am: "ጥያቄዎችን ለማቅለል በበርካታ ምርጫ ጥያቄዎች ውስጥ አማራጮችን ይቀንሳል። ትክክለኛው መልስ ሁልጊዜ ይካተታል።")
    }
}
