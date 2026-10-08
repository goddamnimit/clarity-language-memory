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

    // MARK: - F3 Cueing ladder

    static var hintsLabel: String {
        L(en: "Word-finding hints", es: "Pistas para encontrar palabras", hi: "शब्द खोजने के संकेत",
          gu: "શબ્દ શોધવાના સંકેતો", zh: "找词提示", fa: "راهنمای یافتن واژه", ko: "단어 찾기 힌트",
          vi: "Gợi ý tìm từ", ar: "تلميحات إيجاد الكلمات", pt: "Dicas para achar palavras",
          tl: "Mga pahiwatig sa paghanap ng salita", pa: "ਸ਼ਬਦ ਲੱਭਣ ਦੇ ਸੰਕੇਤ", hy: "Բառ գտնելու ակնարկներ",
          ja: "ことば探しのヒント", fr: "Indices pour trouver les mots", am: "ቃል ለማግኘት ፍንጮች")
    }

    static var hintsSubtitle: String {
        L(en: "Offer step-by-step hints on word-finding questions: a category clue, then the first letter, then the answer. Hinted answers don't count as first-try correct.",
          es: "Ofrece pistas paso a paso en las preguntas de buscar palabras: una pista de categoría, luego la primera letra y después la respuesta. Las respuestas con pista no cuentan como correctas al primer intento.",
          hi: "शब्द खोजने वाले प्रश्नों में चरण-दर-चरण संकेत दें: पहले श्रेणी का संकेत, फिर पहला अक्षर, फिर उत्तर। संकेत के साथ दिए गए उत्तर पहली कोशिश में सही नहीं गिने जाते।",
          gu: "શબ્દ શોધવાના પ્રશ્નોમાં તબક્કાવાર સંકેતો આપો: પહેલાં શ્રેણીનો સંકેત, પછી પહેલો અક્ષર, પછી જવાબ. સંકેત સાથે આપેલા જવાબ પહેલા પ્રયાસના સાચા ગણાતા નથી.",
          zh: "在找词类题目中提供分步提示：先给类别线索，再给首字，最后显示答案。使用提示后答对不计为首次答对。",
          fa: "در پرسش‌های یافتن واژه، راهنمای گام‌به‌گام ارائه می‌شود: ابتدا سرنخ دسته، سپس حرف اول و در پایان پاسخ. پاسخ‌های همراه با راهنما در شمار پاسخ درست در تلاش اول نمی‌آیند.",
          ko: "단어 찾기 문제에서 단계별 힌트를 제공합니다: 먼저 범주 단서, 다음 첫 글자, 마지막으로 정답. 힌트를 쓴 정답은 첫 시도 정답으로 계산되지 않습니다.",
          vi: "Đưa ra gợi ý từng bước ở câu hỏi tìm từ: trước là gợi ý về nhóm, rồi chữ cái đầu, sau đó là đáp án. Câu trả lời có dùng gợi ý không được tính là đúng ngay lần đầu.",
          ar: "تقديم تلميحات تدريجية في أسئلة إيجاد الكلمات: تلميح عن الفئة، ثم الحرف الأول، ثم الإجابة. الإجابات التي استُخدم فيها تلميح لا تُحتسب صحيحة من المحاولة الأولى.",
          pt: "Oferece dicas passo a passo nas perguntas de achar palavras: uma pista de categoria, depois a primeira letra e por fim a resposta. Respostas com dica não contam como certas na primeira tentativa.",
          tl: "Magbigay ng hakbang-hakbang na pahiwatig sa mga tanong sa paghanap ng salita: pahiwatig ng kategorya, saka unang titik, saka ang sagot. Ang mga sagot na may pahiwatig ay hindi bibilangin bilang tama sa unang subok.",
          pa: "ਸ਼ਬਦ ਲੱਭਣ ਵਾਲੇ ਸਵਾਲਾਂ ਵਿੱਚ ਕਦਮ-ਦਰ-ਕਦਮ ਸੰਕੇਤ ਦਿਓ: ਪਹਿਲਾਂ ਸ਼੍ਰੇਣੀ ਦਾ ਸੰਕੇਤ, ਫਿਰ ਪਹਿਲਾ ਅੱਖਰ, ਫਿਰ ਜਵਾਬ। ਸੰਕੇਤ ਨਾਲ ਦਿੱਤੇ ਜਵਾਬ ਪਹਿਲੀ ਕੋਸ਼ਿਸ਼ ਦੇ ਸਹੀ ਨਹੀਂ ਗਿਣੇ ਜਾਂਦੇ।",
          hy: "Բառ գտնելու հարցերում տալ քայլ առ քայլ ակնարկներ՝ նախ կատեգորիայի ակնարկ, հետո առաջին տառը, ապա պատասխանը։ Ակնարկով տրված պատասխանները չեն համարվում առաջին փորձով ճիշտ։",
          ja: "ことば探しの問題で、カテゴリーのヒント、最初の文字、答えの順に段階的なヒントを出します。ヒントを使った正解は初回正解として数えません。",
          fr: "Propose des indices progressifs aux questions de recherche de mots : un indice de catégorie, puis la première lettre, puis la réponse. Les réponses données avec indice ne comptent pas comme justes du premier coup.",
          am: "ቃል ፍለጋ ጥያቄዎች ላይ ደረጃ በደረጃ ፍንጭ ይሰጣል፦ የምድብ ፍንጭ፣ ከዚያ የመጀመሪያ ፊደል፣ ከዚያ መልሱ። በፍንጭ የተሰጡ መልሶች እንደ መጀመሪያ ሙከራ ትክክል አይቆጠሩም።")
    }

    static var needHint: String {
        L(en: "Need a hint?", es: "¿Necesita una pista?", hi: "संकेत चाहिए?", gu: "સંકેત જોઈએ?",
          zh: "需要提示吗？", fa: "راهنمایی می‌خواهید؟", ko: "힌트가 필요하세요?", vi: "Cần gợi ý không?",
          ar: "هل تحتاج إلى تلميح؟", pt: "Precisa de uma dica?", tl: "Kailangan ng pahiwatig?",
          pa: "ਸੰਕੇਤ ਚਾਹੀਦਾ ਹੈ?", hy: "Ակնարկ պե՞տք է", ja: "ヒントが必要ですか？",
          fr: "Besoin d’un indice ?", am: "ፍንጭ ይፈልጋሉ?")
    }

    static var anotherHint: String {
        L(en: "Another hint", es: "Otra pista", hi: "एक और संकेत", gu: "બીજો સંકેત", zh: "再给一个提示",
          fa: "راهنمای بیشتر", ko: "힌트 더 보기", vi: "Thêm gợi ý", ar: "تلميح آخر", pt: "Outra dica",
          tl: "Isa pang pahiwatig", pa: "ਇੱਕ ਹੋਰ ਸੰਕੇਤ", hy: "Եվս մեկ ակնարկ", ja: "もう一つヒント",
          fr: "Un autre indice", am: "ሌላ ፍንጭ")
    }

    static var showAnswer: String {
        L(en: "Show the answer", es: "Mostrar la respuesta", hi: "उत्तर दिखाएँ", gu: "જવાબ બતાવો",
          zh: "显示答案", fa: "نمایش پاسخ", ko: "정답 보기", vi: "Hiện đáp án", ar: "إظهار الإجابة",
          pt: "Mostrar a resposta", tl: "Ipakita ang sagot", pa: "ਜਵਾਬ ਦਿਖਾਓ", hy: "Ցույց տալ պատասխանը",
          ja: "答えを見る", fr: "Voir la réponse", am: "መልሱን አሳይ")
    }

    static func thinkAbout(_ category: String) -> String {
        let f = L(en: "Think about: %@", es: "Piense en: %@", hi: "सोचिए: %@", gu: "વિચારો: %@",
                  zh: "想一想：%@", fa: "به این فکر کنید: %@", ko: "생각해 보세요: %@", vi: "Hãy nghĩ về: %@",
                  ar: "فكّر في: %@", pt: "Pense em: %@", tl: "Isipin ang: %@", pa: "ਸੋਚੋ: %@",
                  hy: "Մտածեք՝ %@", ja: "考えてみましょう：%@", fr: "Pensez à : %@", am: "ያስቡ፦ %@")
        return f.replacingOccurrences(of: "%@", with: category)
    }

    static func startsWith(_ letter: String) -> String {
        let f = L(en: "Starts with: %@", es: "Empieza con: %@", hi: "शुरुआत: %@", gu: "શરૂઆત: %@",
                  zh: "首字：%@", fa: "با این حرف شروع می‌شود: %@", ko: "첫 글자: %@", vi: "Bắt đầu bằng: %@",
                  ar: "تبدأ بـ: %@", pt: "Começa com: %@", tl: "Nagsisimula sa: %@", pa: "ਸ਼ੁਰੂ ਹੁੰਦਾ ਹੈ: %@",
                  hy: "Սկսվում է՝ %@", ja: "最初の文字：%@", fr: "Commence par : %@", am: "የሚጀምረው በ፦ %@")
        return f.replacingOccurrences(of: "%@", with: letter)
    }

    static var answerShown: String {
        L(en: "The answer is marked below.", es: "La respuesta está marcada abajo.", hi: "उत्तर नीचे चिह्नित है।",
          gu: "જવાબ નીચે ચિહ્નિત છે.", zh: "答案已在下方标出。", fa: "پاسخ در پایین مشخص شده است.",
          ko: "정답이 아래에 표시되었습니다.", vi: "Đáp án được đánh dấu bên dưới.", ar: "الإجابة معلَّمة أدناه.",
          pt: "A resposta está marcada abaixo.", tl: "Naka-marka sa ibaba ang sagot.", pa: "ਜਵਾਬ ਹੇਠਾਂ ਨਿਸ਼ਾਨਬੱਧ ਹੈ।",
          hy: "Պատասխանը նշված է ներքևում։", ja: "答えは下に印が付いています。", fr: "La réponse est indiquée ci-dessous.",
          am: "መልሱ ከታች ምልክት ተደርጎበታል።")
    }

    // MARK: - F9 Second reminder

    static var secondReminderLabel: String {
        L(en: "Second daily reminder", es: "Segundo recordatorio diario", hi: "दूसरा दैनिक रिमाइंडर",
          gu: "બીજું દૈનિક રિમાઇન્ડર", zh: "第二个每日提醒", fa: "یادآور دوم روزانه",
          ko: "두 번째 일일 알림", vi: "Lời nhắc hằng ngày thứ hai", ar: "تذكير يومي ثانٍ",
          pt: "Segundo lembrete diário", tl: "Pangalawang pang-araw-araw na paalala",
          pa: "ਦੂਜੀ ਰੋਜ਼ਾਨਾ ਯਾਦ-ਦਹਾਨੀ", hy: "Երկրորդ օրական հիշեցում", ja: "2回目の毎日のリマインダー",
          fr: "Deuxième rappel quotidien", am: "ሁለተኛ ዕለታዊ ማስታወሻ")
    }

    static var secondReminderTime: String {
        L(en: "Second reminder time", es: "Hora del segundo recordatorio", hi: "दूसरे रिमाइंडर का समय",
          gu: "બીજા રિમાઇન્ડરનો સમય", zh: "第二个提醒时间", fa: "زمان یادآور دوم", ko: "두 번째 알림 시간",
          vi: "Giờ nhắc lần hai", ar: "وقت التذكير الثاني", pt: "Horário do segundo lembrete",
          tl: "Oras ng pangalawang paalala", pa: "ਦੂਜੀ ਯਾਦ-ਦਹਾਨੀ ਦਾ ਸਮਾਂ", hy: "Երկրորդ հիշեցման ժամը",
          ja: "2回目の時刻", fr: "Heure du deuxième rappel", am: "የሁለተኛ ማስታወሻ ሰዓት")
    }

    // MARK: - F4 Number skills
    static var numberSkillsTitle: String {
        L(en: "Number Skills",
          es: "Habilidades con números",
          hi: "संख्या कौशल",
          gu: "સંખ્યા કૌશલ્ય",
          zh: "数字技能",
          fa: "مهارت‌های عددی",
          ko: "숫자 연습",
          vi: "Kỹ năng về số",
          ar: "مهارات الأرقام",
          pt: "Habilidades com números",
          tl: "Kasanayan sa Numero",
          pa: "ਅੰਕ ਹੁਨਰ",
          hy: "Թվերի հմտություններ",
          ja: "数字の練習",
          fr: "Les nombres au quotidien",
          am: "የቁጥር ክህሎት")
    }
    static var numberSkillsSubtitle: String {
        L(en: "Hear it, then pick it or type it.",
          es: "Escuche, y luego elija o escriba.",
          hi: "सुनिए, फिर चुनिए या लिखिए।",
          gu: "સાંભળો, પછી પસંદ કરો અથવા લખો.",
          zh: "听一听，然后选择或输入。",
          fa: "بشنوید، سپس انتخاب کنید یا تایپ کنید.",
          ko: "듣고, 고르거나 입력하세요.",
          vi: "Nghe, rồi chọn hoặc gõ lại.",
          ar: "استمع ثم اختر أو اكتب.",
          pt: "Ouça e depois escolha ou digite.",
          tl: "Pakinggan, saka pumili o i-type.",
          pa: "ਸੁਣੋ, ਫਿਰ ਚੁਣੋ ਜਾਂ ਟਾਈਪ ਕਰੋ।",
          hy: "Լսեք, ապա ընտրեք կամ մուտքագրեք։",
          ja: "聞いて、選ぶか入力します。",
          fr: "Écoutez, puis choisissez ou tapez.",
          am: "ያዳምጡ፣ ከዚያ ይምረጡ ወይም ይጻፉ።")
    }
    static var catTime: String {
        L(en: "Times",
          es: "Horas",
          hi: "समय",
          gu: "સમય",
          zh: "时间",
          fa: "ساعت",
          ko: "시간",
          vi: "Giờ giấc",
          ar: "الأوقات",
          pt: "Horas",
          tl: "Oras",
          pa: "ਸਮਾਂ",
          hy: "Ժամեր",
          ja: "時刻",
          fr: "Heures",
          am: "ሰዓት")
    }
    static var catPrice: String {
        L(en: "Prices",
          es: "Precios",
          hi: "कीमतें",
          gu: "કિંમતો",
          zh: "价格",
          fa: "قیمت‌ها",
          ko: "가격",
          vi: "Giá tiền",
          ar: "الأسعار",
          pt: "Preços",
          tl: "Presyo",
          pa: "ਕੀਮਤਾਂ",
          hy: "Գներ",
          ja: "値段",
          fr: "Prix",
          am: "ዋጋዎች")
    }
    static var catPhone: String {
        L(en: "Phone numbers",
          es: "Teléfonos",
          hi: "फ़ोन नंबर",
          gu: "ફોન નંબર",
          zh: "电话号码",
          fa: "شماره تلفن",
          ko: "전화번호",
          vi: "Số điện thoại",
          ar: "أرقام الهاتف",
          pt: "Telefones",
          tl: "Numero ng telepono",
          pa: "ਫ਼ੋਨ ਨੰਬਰ",
          hy: "Հեռախոսահամարներ",
          ja: "電話番号",
          fr: "Numéros de téléphone",
          am: "ስልክ ቁጥሮች")
    }
    static var catDate: String {
        L(en: "Dates",
          es: "Fechas",
          hi: "तारीख़ें",
          gu: "તારીખો",
          zh: "日期",
          fa: "تاریخ‌ها",
          ko: "날짜",
          vi: "Ngày tháng",
          ar: "التواريخ",
          pt: "Datas",
          tl: "Mga petsa",
          pa: "ਤਾਰੀਖ਼ਾਂ",
          hy: "Ամսաթվեր",
          ja: "日付",
          fr: "Dates",
          am: "ቀኖች")
    }
    static var catCount: String {
        L(en: "Counts",
          es: "Cantidades",
          hi: "गिनती",
          gu: "ગણતરી",
          zh: "数量",
          fa: "تعداد",
          ko: "개수",
          vi: "Số lượng",
          ar: "الأعداد",
          pt: "Quantidades",
          tl: "Bilang",
          pa: "ਗਿਣਤੀ",
          hy: "Քանակներ",
          ja: "数",
          fr: "Quantités",
          am: "ብዛት")
    }
    static var catMixed: String {
        L(en: "Mixed",
          es: "Mezcla",
          hi: "मिश्रित",
          gu: "મિશ્ર",
          zh: "混合",
          fa: "ترکیبی",
          ko: "혼합",
          vi: "Hỗn hợp",
          ar: "متنوع",
          pt: "Misto",
          tl: "Halo-halo",
          pa: "ਮਿਲਿਆ-ਜੁਲਿਆ",
          hy: "Խառը",
          ja: "ミックス",
          fr: "Mélange",
          am: "ድብልቅ")
    }
    static var modePick: String {
        L(en: "Hear and pick",
          es: "Escuchar y elegir",
          hi: "सुनें और चुनें",
          gu: "સાંભળો અને પસંદ કરો",
          zh: "听后选择",
          fa: "بشنوید و انتخاب کنید",
          ko: "듣고 고르기",
          vi: "Nghe và chọn",
          ar: "استمع واختر",
          pt: "Ouvir e escolher",
          tl: "Making at pumili",
          pa: "ਸੁਣੋ ਅਤੇ ਚੁਣੋ",
          hy: "Լսել և ընտրել",
          ja: "聞いて選ぶ",
          fr: "Écouter et choisir",
          am: "አዳምጥ እና ምረጥ")
    }
    static var modeType: String {
        L(en: "Hear and type",
          es: "Escuchar y escribir",
          hi: "सुनें और लिखें",
          gu: "સાંભળો અને લખો",
          zh: "听后输入",
          fa: "بشنوید و تایپ کنید",
          ko: "듣고 입력하기",
          vi: "Nghe và gõ",
          ar: "استمع واكتب",
          pt: "Ouvir e digitar",
          tl: "Making at mag-type",
          pa: "ਸੁਣੋ ਅਤੇ ਟਾਈਪ ਕਰੋ",
          hy: "Լսել և մուտքագրել",
          ja: "聞いて入力",
          fr: "Écouter et taper",
          am: "አዳምጥ እና ጻፍ")
    }
    static var startPractice: String {
        L(en: "Start",
          es: "Comenzar",
          hi: "शुरू करें",
          gu: "શરૂ કરો",
          zh: "开始",
          fa: "شروع",
          ko: "시작",
          vi: "Bắt đầu",
          ar: "ابدأ",
          pt: "Começar",
          tl: "Simulan",
          pa: "ਸ਼ੁਰੂ ਕਰੋ",
          hy: "Սկսել",
          ja: "開始",
          fr: "Commencer",
          am: "ጀምር")
    }
    static var listen: String {
        L(en: "Listen",
          es: "Escuchar",
          hi: "सुनें",
          gu: "સાંભળો",
          zh: "收听",
          fa: "گوش دهید",
          ko: "듣기",
          vi: "Nghe",
          ar: "استمع",
          pt: "Ouvir",
          tl: "Makinig",
          pa: "ਸੁਣੋ",
          hy: "Լսել",
          ja: "聞く",
          fr: "Écouter",
          am: "አዳምጥ")
    }
    static var playAgain: String {
        L(en: "Play again",
          es: "Repetir",
          hi: "फिर से सुनें",
          gu: "ફરી સાંભળો",
          zh: "再听一遍",
          fa: "پخش دوباره",
          ko: "다시 듣기",
          vi: "Nghe lại",
          ar: "أعد التشغيل",
          pt: "Ouvir de novo",
          tl: "Ulitin",
          pa: "ਦੁਬਾਰਾ ਸੁਣੋ",
          hy: "Կրկնել",
          ja: "もう一度聞く",
          fr: "Réécouter",
          am: "እንደገና አጫውት")
    }
    static var pickHeard: String {
        L(en: "Which one did you hear?",
          es: "¿Cuál escuchó?",
          hi: "आपने कौन-सा सुना?",
          gu: "તમે કયું સાંભળ્યું?",
          zh: "您听到的是哪一个？",
          fa: "کدام را شنیدید؟",
          ko: "어느 것을 들으셨나요?",
          vi: "Bạn đã nghe cái nào?",
          ar: "أيّها سمعت؟",
          pt: "Qual você ouviu?",
          tl: "Alin ang narinig mo?",
          pa: "ਤੁਸੀਂ ਕਿਹੜਾ ਸੁਣਿਆ?",
          hy: "Ո՞րն եք լսել",
          ja: "どれが聞こえましたか？",
          fr: "Lequel avez-vous entendu ?",
          am: "የትኛውን ሰሙ?")
    }
    static var pickMatch: String {
        L(en: "Find the matching one.",
          es: "Encuentre el que coincide.",
          hi: "मेल खाने वाला खोजिए।",
          gu: "મેળ ખાતું શોધો.",
          zh: "找出相同的一个。",
          fa: "مورد مطابق را پیدا کنید.",
          ko: "같은 것을 찾으세요.",
          vi: "Tìm cái giống nhau.",
          ar: "اعثر على المطابق.",
          pt: "Encontre o correspondente.",
          tl: "Hanapin ang kapareho.",
          pa: "ਮੇਲ ਖਾਂਦਾ ਲੱਭੋ।",
          hy: "Գտեք համապատասխանը։",
          ja: "同じものを選んでください。",
          fr: "Trouvez celui qui correspond.",
          am: "ተመሳሳዩን ፈልግ።")
    }
    static var typeHeard: String {
        L(en: "Type what you hear.",
          es: "Escriba lo que escucha.",
          hi: "जो सुनें उसे लिखिए।",
          gu: "જે સાંભળો તે લખો.",
          zh: "输入您听到的内容。",
          fa: "آنچه می‌شنوید را تایپ کنید.",
          ko: "들은 것을 입력하세요.",
          vi: "Gõ lại những gì bạn nghe.",
          ar: "اكتب ما تسمعه.",
          pt: "Digite o que ouviu.",
          tl: "I-type ang narinig.",
          pa: "ਜੋ ਸੁਣੋ ਉਹ ਟਾਈਪ ਕਰੋ।",
          hy: "Մուտքագրեք լսածը։",
          ja: "聞こえたとおりに入力してください。",
          fr: "Tapez ce que vous entendez.",
          am: "የሰሙትን ጻፉ።")
    }
    static var typeMatch: String {
        L(en: "Type the number shown.",
          es: "Escriba el número que ve.",
          hi: "दिखाया गया नंबर लिखिए।",
          gu: "બતાવેલો નંબર લખો.",
          zh: "输入显示的数字。",
          fa: "عدد نمایش‌داده‌شده را تایپ کنید.",
          ko: "보이는 숫자를 입력하세요.",
          vi: "Gõ lại số đang hiển thị.",
          ar: "اكتب الرقم المعروض.",
          pt: "Digite o número mostrado.",
          tl: "I-type ang numerong ipinapakita.",
          pa: "ਦਿਖਾਇਆ ਨੰਬਰ ਟਾਈਪ ਕਰੋ।",
          hy: "Մուտքագրեք ցուցադրված թիվը։",
          ja: "表示された数字を入力してください。",
          fr: "Tapez le nombre affiché.",
          am: "የሚታየውን ቁጥር ጻፉ።")
    }
    static var check: String {
        L(en: "Check",
          es: "Comprobar",
          hi: "जाँचें",
          gu: "તપાસો",
          zh: "检查",
          fa: "بررسی",
          ko: "확인",
          vi: "Kiểm tra",
          ar: "تحقق",
          pt: "Verificar",
          tl: "Suriin",
          pa: "ਜਾਂਚੋ",
          hy: "Ստուգել",
          ja: "確認",
          fr: "Vérifier",
          am: "ፈትሽ")
    }
    static var correctMsg: String {
        L(en: "Correct!",
          es: "¡Correcto!",
          hi: "सही!",
          gu: "સાચું!",
          zh: "正确！",
          fa: "درست!",
          ko: "정답입니다!",
          vi: "Chính xác!",
          ar: "صحيح!",
          pt: "Correto!",
          tl: "Tama!",
          pa: "ਸਹੀ!",
          hy: "Ճիշտ է։",
          ja: "正解です！",
          fr: "Correct !",
          am: "ትክክል!")
    }
    static var next: String {
        L(en: "Next",
          es: "Siguiente",
          hi: "आगे",
          gu: "આગળ",
          zh: "下一个",
          fa: "بعدی",
          ko: "다음",
          vi: "Tiếp",
          ar: "التالي",
          pt: "Próxima",
          tl: "Susunod",
          pa: "ਅਗਲਾ",
          hy: "Հաջորդը",
          ja: "次へ",
          fr: "Suivant",
          am: "ቀጣይ")
    }
    static var done: String {
        L(en: "Done",
          es: "Listo",
          hi: "पूरा हुआ",
          gu: "પૂર્ણ",
          zh: "完成",
          fa: "پایان",
          ko: "완료",
          vi: "Xong",
          ar: "تم",
          pt: "Concluir",
          tl: "Tapos na",
          pa: "ਹੋ ਗਿਆ",
          hy: "Ավարտ",
          ja: "完了",
          fr: "Terminé",
          am: "ተጠናቀቀ")
    }
    static var phoneSettingLabel: String {
        L(en: "Phone number to practice",
          es: "Teléfono para practicar",
          hi: "अभ्यास के लिए फ़ोन नंबर",
          gu: "અભ્યાસ માટે ફોન નંબર",
          zh: "用于练习的电话号码",
          fa: "شماره تلفن برای تمرین",
          ko: "연습할 전화번호",
          vi: "Số điện thoại để luyện tập",
          ar: "رقم هاتف للتدرّب",
          pt: "Telefone para praticar",
          tl: "Numero ng telepono na pagsasanayan",
          pa: "ਅਭਿਆਸ ਲਈ ਫ਼ੋਨ ਨੰਬਰ",
          hy: "Վարժության հեռախոսահամար",
          ja: "練習用の電話番号",
          fr: "Numéro à s’exercer",
          am: "ለልምምድ የስልክ ቁጥር")
    }
    static var phoneSettingSubtitle: String {
        L(en: "Optional. Stored only on this device and never included in the research export.",
          es: "Opcional. Se guarda solo en este dispositivo y nunca se incluye en la exportación de investigación.",
          hi: "वैकल्पिक। केवल इसी डिवाइस पर सहेजा जाता है और शोध निर्यात में कभी शामिल नहीं होता।",
          gu: "વૈકલ્પિક. ફક્ત આ ઉપકરણ પર સંગ્રહાય છે અને સંશોધન નિકાસમાં ક્યારેય સામેલ થતો નથી.",
          zh: "可选。仅保存在此设备上，绝不会包含在研究数据导出中。",
          fa: "اختیاری. فقط روی همین دستگاه ذخیره می‌شود و هرگز در خروجی پژوهشی گنجانده نمی‌شود.",
          ko: "선택 사항입니다. 이 기기에만 저장되며 연구용 내보내기에는 절대 포함되지 않습니다.",
          vi: "Không bắt buộc. Chỉ lưu trên thiết bị này và không bao giờ có trong dữ liệu xuất cho nghiên cứu.",
          ar: "اختياري. يُحفظ على هذا الجهاز فقط ولا يُدرج أبدًا في تصدير البيانات البحثية.",
          pt: "Opcional. Fica salvo apenas neste dispositivo e nunca entra na exportação de pesquisa.",
          tl: "Opsyonal. Naka-save lang sa device na ito at hindi kailanman isinasama sa research export.",
          pa: "ਵਿਕਲਪਿਕ। ਸਿਰਫ਼ ਇਸ ਡਿਵਾਈਸ 'ਤੇ ਸੰਭਾਲਿਆ ਜਾਂਦਾ ਹੈ ਅਤੇ ਖੋਜ ਨਿਰਯਾਤ ਵਿੱਚ ਕਦੇ ਸ਼ਾਮਲ ਨਹੀਂ ਹੁੰਦਾ।",
          hy: "Ըստ ցանկության։ Պահվում է միայն այս սարքում և երբեք չի ներառվում հետազոտական արտահանման մեջ։",
          ja: "任意。この端末にのみ保存され、研究用エクスポートには含まれません。",
          fr: "Facultatif. Enregistré uniquement sur cet appareil et jamais inclus dans l’export de recherche.",
          am: "አማራጭ። በዚህ መሣሪያ ላይ ብቻ ይቀመጣል፣ በምርምር ወደ ውጭ መላክ ውስጥ በፍጹም አይካተትም።")
    }
    static var phonePlaceholder: String {
        L(en: "Phone number",
          es: "Número de teléfono",
          hi: "फ़ोन नंबर",
          gu: "ફોન નંબર",
          zh: "电话号码",
          fa: "شماره تلفن",
          ko: "전화번호",
          vi: "Số điện thoại",
          ar: "رقم الهاتف",
          pt: "Número de telefone",
          tl: "Numero ng telepono",
          pa: "ਫ਼ੋਨ ਨੰਬਰ",
          hy: "Հեռախոսահամար",
          ja: "電話番号",
          fr: "Numéro de téléphone",
          am: "ስልክ ቁጥር")
    }
    static func notQuite(_ answer: String) -> String {
        L(en: "Not quite. The answer is %@",
                  es: "Casi. La respuesta es %@",
                  hi: "बिल्कुल नहीं। उत्तर है %@",
                  gu: "બરાબર નથી. જવાબ છે %@",
                  zh: "不太对。答案是 %@",
                  fa: "درست نبود. پاسخ: %@",
                  ko: "아쉬워요. 정답은 %@",
                  vi: "Chưa đúng. Đáp án là %@",
                  ar: "ليس تمامًا. الإجابة هي %@",
                  pt: "Quase. A resposta é %@",
                  tl: "Hindi pa tama. Ang sagot ay %@",
                  pa: "ਪੂਰੀ ਤਰ੍ਹਾਂ ਨਹੀਂ। ਜਵਾਬ ਹੈ %@",
                  hy: "Ոչ այնքան։ Պատասխանն է՝ %@",
                  ja: "おしい。答えは %@",
                  fr: "Pas tout à fait. La réponse est %@",
                  am: "ትክክል አይደለም። መልሱ %@ ነው").replacingOccurrences(of: "%@", with: answer)
    }
    static func scoreSummary(_ a: Int, _ b: Int) -> String {
        L(en: "{a} of {b} correct",
                  es: "{a} de {b} correctas",
                  hi: "{b} में से {a} सही",
                  gu: "{b} માંથી {a} સાચા",
                  zh: "{b} 题中答对 {a} 题",
                  fa: "{a} از {b} درست",
                  ko: "{b}개 중 {a}개 정답",
                  vi: "Đúng {a}/{b}",
                  ar: "{a} من {b} صحيحة",
                  pt: "{a} de {b} corretas",
                  tl: "{a} sa {b} ang tama",
                  pa: "{b} ਵਿੱਚੋਂ {a} ਸਹੀ",
                  hy: "{a} ճիշտ՝ {b}-ից",
                  ja: "{b}問中{a}問正解",
                  fr: "{a} sur {b} correctes",
                  am: "ከ{b} {a} ትክክል").replacingOccurrences(of: "{a}", with: String(a)).replacingOccurrences(of: "{b}", with: String(b))
    }
}
