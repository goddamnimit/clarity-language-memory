import Foundation

/// UI strings for the Practice Supports features. Every string must supply all
/// 16 languages (enforced by the labelled parameters of `L`), so a missing
/// translation is a compile error instead of English leaking into another UI.
enum FS {

    // swiftlint:disable:next function_parameter_count
    private static func L(
        en: String, es: String, hi: String, gu: String, zh: String, fa: String,
        ko: String, vi: String, ar: String, pt: String, tl: String, pa: String,
        hy: String, ja: String, fr: String, am: String, ru: String, uk: String
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
        case .russian: return ru
        case .ukrainian: return uk
        }
    }

    // MARK: - Shared

    static var practiceSupportsTitle: String {
        L(en: "Practice Supports", es: "Apoyos para la práctica", hi: "अभ्यास सहायता",
          gu: "અભ્યાસ સહાય", zh: "练习辅助", fa: "پشتیبان‌های تمرین", ko: "연습 지원",
          vi: "Hỗ trợ luyện tập", ar: "دعم التمرين", pt: "Apoios à prática",
          tl: "Mga Suporta sa Pagsasanay", pa: "ਅਭਿਆਸ ਸਹਾਇਤਾ",
          hy: "Վարժությունների աջակցություն", ja: "練習サポート", fr: "Aides à l’exercice",
          am: "የልምምድ ድጋፎች",
          ru: "Помощь в занятиях",
          uk: "Підтримка під час практики")
    }

    // MARK: - F1 Today card

    static var today: String {
        L(en: "Today", es: "Hoy", hi: "आज", gu: "આજે", zh: "今天", fa: "امروز", ko: "오늘",
          vi: "Hôm nay", ar: "اليوم", pt: "Hoje", tl: "Ngayon", pa: "ਅੱਜ", hy: "Այսօր",
          ja: "今日", fr: "Aujourd’hui", am: "ዛሬ",
          ru: "Сегодня",
          uk: "Сьогодні")
    }

    static var morning: String {
        L(en: "Morning", es: "Mañana", hi: "सुबह", gu: "સવાર", zh: "上午", fa: "صبح", ko: "아침",
          vi: "Buổi sáng", ar: "الصباح", pt: "Manhã", tl: "Umaga", pa: "ਸਵੇਰ", hy: "Առավոտ",
          ja: "朝", fr: "Matin", am: "ጠዋት",
          ru: "Утро",
          uk: "Ранок")
    }

    static var afternoon: String {
        L(en: "Afternoon", es: "Tarde", hi: "दोपहर", gu: "બપોર", zh: "下午", fa: "بعدازظهر", ko: "오후",
          vi: "Buổi chiều", ar: "بعد الظهر", pt: "Tarde", tl: "Hapon", pa: "ਦੁਪਹਿਰ", hy: "Կեսօր",
          ja: "午後", fr: "Après-midi", am: "ከሰዓት",
          ru: "День",
          uk: "День")
    }

    static var evening: String {
        L(en: "Evening", es: "Atardecer", hi: "शाम", gu: "સાંજ", zh: "傍晚", fa: "عصر", ko: "저녁",
          vi: "Buổi tối", ar: "المساء", pt: "Entardecer", tl: "Gabi", pa: "ਸ਼ਾਮ", hy: "Երեկո",
          ja: "夕方", fr: "Soir", am: "ምሽት",
          ru: "Вечер",
          uk: "Вечір")
    }

    static var night: String {
        L(en: "Night", es: "Noche", hi: "रात", gu: "રાત", zh: "夜晚", fa: "شب", ko: "밤",
          vi: "Ban đêm", ar: "الليل", pt: "Noite", tl: "Hatinggabi", pa: "ਰਾਤ", hy: "Գիշեր",
          ja: "夜", fr: "Nuit", am: "ሌሊት",
          ru: "Ночь",
          uk: "Ніч")
    }

    static var orientationToggle: String {
        L(en: "Today card on Home", es: "Tarjeta de hoy en Inicio", hi: "होम पर आज का कार्ड",
          gu: "હોમ પર આજનું કાર્ડ", zh: "主页显示今日卡片", fa: "کارت امروز در صفحه اصلی",
          ko: "홈 화면의 오늘 카드", vi: "Thẻ hôm nay trên Trang chủ",
          ar: "بطاقة اليوم في الشاشة الرئيسية", pt: "Cartão de hoje no Início",
          tl: "Card ng ngayon sa Home", pa: "ਹੋਮ 'ਤੇ ਅੱਜ ਦਾ ਕਾਰਡ",
          hy: "Այսօրվա քարտը Գլխավոր էջում", ja: "ホームに今日のカードを表示",
          fr: "Carte du jour sur l’accueil", am: "በመነሻ ገጽ የዛሬ ካርድ",
          ru: "Карточка «Сегодня» на главной",
          uk: "Картка «Сьогодні» на головній")
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
          am: "አቅጣጫን ለመርዳት በመነሻ ገጽ ላይ ቀን፣ ቀነ-ወር እና የቀኑን ክፍል ያሳያል።",
          ru: "Показывает на главном экране день недели, дату и время суток, чтобы легче ориентироваться.",
          uk: "Показує на головному екрані день тижня, дату та частину доби, щоб допомогти з орієнтуванням.")
    }

    // MARK: - F2 Answer choices

    static var choicesLabel: String {
        L(en: "Answer choices", es: "Opciones de respuesta", hi: "उत्तर के विकल्प",
          gu: "જવાબના વિકલ્પો", zh: "答案选项数", fa: "تعداد گزینه‌های پاسخ", ko: "답안 선택지 수",
          vi: "Số lựa chọn trả lời", ar: "عدد خيارات الإجابة", pt: "Opções de resposta",
          tl: "Bilang ng mga pagpipilian", pa: "ਜਵਾਬ ਦੇ ਵਿਕਲਪ", hy: "Պատասխանի տարբերակներ",
          ja: "選択肢の数", fr: "Choix de réponse", am: "የመልስ አማራጮች",
          ru: "Варианты ответа",
          uk: "Варіанти відповіді")
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
          am: "ጥያቄዎችን ለማቅለል በበርካታ ምርጫ ጥያቄዎች ውስጥ አማራጮችን ይቀንሳል። ትክክለኛው መልስ ሁልጊዜ ይካተታል።",
          ru: "Показывать меньше вариантов в вопросах с выбором ответа, чтобы было проще. Правильный ответ всегда остаётся.",
          uk: "Показує менше варіантів у запитаннях з вибором відповіді, щоб полегшити їх. Правильна відповідь завжди залишається.")
    }

    // MARK: - F3 Cueing ladder

    static var hintsLabel: String {
        L(en: "Word-finding hints", es: "Pistas para encontrar palabras", hi: "शब्द खोजने के संकेत",
          gu: "શબ્દ શોધવાના સંકેતો", zh: "找词提示", fa: "راهنمای یافتن واژه", ko: "단어 찾기 힌트",
          vi: "Gợi ý tìm từ", ar: "تلميحات إيجاد الكلمات", pt: "Dicas para achar palavras",
          tl: "Mga pahiwatig sa paghanap ng salita", pa: "ਸ਼ਬਦ ਲੱਭਣ ਦੇ ਸੰਕੇਤ", hy: "Բառ գտնելու ակնարկներ",
          ja: "ことば探しのヒント", fr: "Indices pour trouver les mots", am: "ቃል ለማግኘት ፍንጮች",
          ru: "Подсказки для поиска слов",
          uk: "Підказки для пошуку слів")
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
          am: "ቃል ፍለጋ ጥያቄዎች ላይ ደረጃ በደረጃ ፍንጭ ይሰጣል፦ የምድብ ፍንጭ፣ ከዚያ የመጀመሪያ ፊደል፣ ከዚያ መልሱ። በፍንጭ የተሰጡ መልሶች እንደ መጀመሪያ ሙከራ ትክክል አይቆጠሩም።",
          ru: "Предлагать пошаговые подсказки в вопросах на поиск слов: сначала намёк на категорию, затем первая буква, затем ответ. Ответы с подсказкой не считаются верными с первой попытки.",
          uk: "Пропонує покрокові підказки до запитань на пошук слів: спочатку натяк на категорію, потім перша літера, потім відповідь. Відповіді з підказками не зараховуються як правильні з першої спроби.")
    }

    static var needHint: String {
        L(en: "Need a hint?", es: "¿Necesita una pista?", hi: "संकेत चाहिए?", gu: "સંકેત જોઈએ?",
          zh: "需要提示吗？", fa: "راهنمایی می‌خواهید؟", ko: "힌트가 필요하세요?", vi: "Cần gợi ý không?",
          ar: "هل تحتاج إلى تلميح؟", pt: "Precisa de uma dica?", tl: "Kailangan ng pahiwatig?",
          pa: "ਸੰਕੇਤ ਚਾਹੀਦਾ ਹੈ?", hy: "Ակնարկ պե՞տք է", ja: "ヒントが必要ですか？",
          fr: "Besoin d’un indice ?", am: "ፍንጭ ይፈልጋሉ?",
          ru: "Нужна подсказка?",
          uk: "Потрібна підказка?")
    }

    static var anotherHint: String {
        L(en: "Another hint", es: "Otra pista", hi: "एक और संकेत", gu: "બીજો સંકેત", zh: "再给一个提示",
          fa: "راهنمای بیشتر", ko: "힌트 더 보기", vi: "Thêm gợi ý", ar: "تلميح آخر", pt: "Outra dica",
          tl: "Isa pang pahiwatig", pa: "ਇੱਕ ਹੋਰ ਸੰਕੇਤ", hy: "Եվս մեկ ակնարկ", ja: "もう一つヒント",
          fr: "Un autre indice", am: "ሌላ ፍንጭ",
          ru: "Ещё подсказка",
          uk: "Ще одна підказка")
    }

    static var showAnswer: String {
        L(en: "Show the answer", es: "Mostrar la respuesta", hi: "उत्तर दिखाएँ", gu: "જવાબ બતાવો",
          zh: "显示答案", fa: "نمایش پاسخ", ko: "정답 보기", vi: "Hiện đáp án", ar: "إظهار الإجابة",
          pt: "Mostrar a resposta", tl: "Ipakita ang sagot", pa: "ਜਵਾਬ ਦਿਖਾਓ", hy: "Ցույց տալ պատասխանը",
          ja: "答えを見る", fr: "Voir la réponse", am: "መልሱን አሳይ",
          ru: "Показать ответ",
          uk: "Показати відповідь")
    }

    static func thinkAbout(_ category: String) -> String {
        let f = L(en: "Think about: %@", es: "Piense en: %@", hi: "सोचिए: %@", gu: "વિચારો: %@",
                  zh: "想一想：%@", fa: "به این فکر کنید: %@", ko: "생각해 보세요: %@", vi: "Hãy nghĩ về: %@",
                  ar: "فكّر في: %@", pt: "Pense em: %@", tl: "Isipin ang: %@", pa: "ਸੋਚੋ: %@",
                  hy: "Մտածեք՝ %@", ja: "考えてみましょう：%@", fr: "Pensez à : %@", am: "ያስቡ፦ %@",
          ru: "Подумайте о: %@",
          uk: "Подумайте про: %@")
        return f.replacingOccurrences(of: "%@", with: category)
    }

    static func startsWith(_ letter: String) -> String {
        let f = L(en: "Starts with: %@", es: "Empieza con: %@", hi: "शुरुआत: %@", gu: "શરૂઆત: %@",
                  zh: "首字：%@", fa: "با این حرف شروع می‌شود: %@", ko: "첫 글자: %@", vi: "Bắt đầu bằng: %@",
                  ar: "تبدأ بـ: %@", pt: "Começa com: %@", tl: "Nagsisimula sa: %@", pa: "ਸ਼ੁਰੂ ਹੁੰਦਾ ਹੈ: %@",
                  hy: "Սկսվում է՝ %@", ja: "最初の文字：%@", fr: "Commence par : %@", am: "የሚጀምረው በ፦ %@",
          ru: "Начинается с: %@",
          uk: "Починається на: %@")
        return f.replacingOccurrences(of: "%@", with: letter)
    }

    static var answerShown: String {
        L(en: "The answer is marked below.", es: "La respuesta está marcada abajo.", hi: "उत्तर नीचे चिह्नित है।",
          gu: "જવાબ નીચે ચિહ્નિત છે.", zh: "答案已在下方标出。", fa: "پاسخ در پایین مشخص شده است.",
          ko: "정답이 아래에 표시되었습니다.", vi: "Đáp án được đánh dấu bên dưới.", ar: "الإجابة معلَّمة أدناه.",
          pt: "A resposta está marcada abaixo.", tl: "Naka-marka sa ibaba ang sagot.", pa: "ਜਵਾਬ ਹੇਠਾਂ ਨਿਸ਼ਾਨਬੱਧ ਹੈ।",
          hy: "Պատասխանը նշված է ներքևում։", ja: "答えは下に印が付いています。", fr: "La réponse est indiquée ci-dessous.",
          am: "መልሱ ከታች ምልክት ተደርጎበታል።",
          ru: "Ответ отмечен ниже.",
          uk: "Відповідь позначено нижче.")
    }

    // MARK: - F9 Second reminder

    static var secondReminderLabel: String {
        L(en: "Second daily reminder", es: "Segundo recordatorio diario", hi: "दूसरा दैनिक रिमाइंडर",
          gu: "બીજું દૈનિક રિમાઇન્ડર", zh: "第二个每日提醒", fa: "یادآور دوم روزانه",
          ko: "두 번째 일일 알림", vi: "Lời nhắc hằng ngày thứ hai", ar: "تذكير يومي ثانٍ",
          pt: "Segundo lembrete diário", tl: "Pangalawang pang-araw-araw na paalala",
          pa: "ਦੂਜੀ ਰੋਜ਼ਾਨਾ ਯਾਦ-ਦਹਾਨੀ", hy: "Երկրորդ օրական հիշեցում", ja: "2回目の毎日のリマインダー",
          fr: "Deuxième rappel quotidien", am: "ሁለተኛ ዕለታዊ ማስታወሻ",
          ru: "Второе ежедневное напоминание",
          uk: "Друге щоденне нагадування")
    }

    static var secondReminderTime: String {
        L(en: "Second reminder time", es: "Hora del segundo recordatorio", hi: "दूसरे रिमाइंडर का समय",
          gu: "બીજા રિમાઇન્ડરનો સમય", zh: "第二个提醒时间", fa: "زمان یادآور دوم", ko: "두 번째 알림 시간",
          vi: "Giờ nhắc lần hai", ar: "وقت التذكير الثاني", pt: "Horário do segundo lembrete",
          tl: "Oras ng pangalawang paalala", pa: "ਦੂਜੀ ਯਾਦ-ਦਹਾਨੀ ਦਾ ਸਮਾਂ", hy: "Երկրորդ հիշեցման ժամը",
          ja: "2回目の時刻", fr: "Heure du deuxième rappel", am: "የሁለተኛ ማስታወሻ ሰዓት",
          ru: "Время второго напоминания",
          uk: "Час другого нагадування")
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
          am: "የቁጥር ክህሎት",
          ru: "Работа с числами",
          uk: "Навички роботи з числами")
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
          am: "ያዳምጡ፣ ከዚያ ይምረጡ ወይም ይጻፉ።",
          ru: "Прослушайте, затем выберите или введите.",
          uk: "Прослухайте, а потім виберіть або введіть.")
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
          am: "ሰዓት",
          ru: "Время",
          uk: "Час")
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
          am: "ዋጋዎች",
          ru: "Цены",
          uk: "Ціни")
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
          am: "ስልክ ቁጥሮች",
          ru: "Номера телефонов",
          uk: "Номери телефонів")
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
          am: "ቀኖች",
          ru: "Даты",
          uk: "Дати")
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
          am: "ብዛት",
          ru: "Количество",
          uk: "Кількості")
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
          am: "ድብልቅ",
          ru: "Смешанные",
          uk: "Змішані")
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
          am: "አዳምጥ እና ምረጥ",
          ru: "Слушать и выбирать",
          uk: "Почути й вибрати")
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
          am: "አዳምጥ እና ጻፍ",
          ru: "Слушать и вводить",
          uk: "Почути й ввести")
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
          am: "ጀምር",
          ru: "Начать",
          uk: "Почати")
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
          am: "አዳምጥ",
          ru: "Слушать",
          uk: "Слухати")
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
          am: "እንደገና አጫውት",
          ru: "Повторить",
          uk: "Відтворити ще раз")
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
          am: "የትኛውን ሰሙ?",
          ru: "Что вы услышали?",
          uk: "Що ви почули?")
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
          am: "ተመሳሳዩን ፈልግ።",
          ru: "Найдите такой же вариант.",
          uk: "Знайдіть такий самий.")
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
          am: "የሰሙትን ጻፉ።",
          ru: "Введите то, что слышите.",
          uk: "Введіть те, що чуєте.")
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
          am: "የሚታየውን ቁጥር ጻፉ።",
          ru: "Введите показанное число.",
          uk: "Введіть показане число.")
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
          am: "ፈትሽ",
          ru: "Проверить",
          uk: "Перевірити")
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
          am: "ትክክል!",
          ru: "Верно!",
          uk: "Правильно!")
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
          am: "ቀጣይ",
          ru: "Далее",
          uk: "Далі")
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
          am: "ተጠናቀቀ",
          ru: "Готово",
          uk: "Готово")
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
          am: "ለልምምድ የስልክ ቁጥር",
          ru: "Номер телефона для тренировки",
          uk: "Номер телефону для практики")
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
          am: "አማራጭ። በዚህ መሣሪያ ላይ ብቻ ይቀመጣል፣ በምርምር ወደ ውጭ መላክ ውስጥ በፍጹም አይካተትም።",
          ru: "Необязательно. Хранится только на этом устройстве и не попадает в экспорт для исследования.",
          uk: "Необов'язково. Зберігається лише на цьому пристрої й ніколи не потрапляє в експорт для досліджень.")
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
          am: "ስልክ ቁጥር",
          ru: "Номер телефона",
          uk: "Номер телефону")
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
                  am: "ትክክል አይደለም። መልሱ %@ ነው",
          ru: "Не совсем. Правильный ответ: %@",
          uk: "Не зовсім. Правильна відповідь: %@").replacingOccurrences(of: "%@", with: answer)
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
                  am: "ከ{b} {a} ትክክል",
          ru: "Верно: {a} из {b}",
          uk: "Правильно: {a} із {b}").replacingOccurrences(of: "{a}", with: String(a)).replacingOccurrences(of: "{b}", with: String(b))
    }

    // MARK: - F5 Spaced retrieval
    static var srtTitle: String {
        L(en: "Remember It",
          es: "Recuérdelo",
          hi: "याद रखें",
          gu: "યાદ રાખો",
          zh: "记住它",
          fa: "به یاد بسپارید",
          ko: "기억하기",
          vi: "Ghi nhớ",
          ar: "تذكّر",
          pt: "Lembre-se",
          tl: "Tandaan Ito",
          pa: "ਯਾਦ ਰੱਖੋ",
          hy: "Հիշեք",
          ja: "覚えておこう",
          fr: "Se souvenir",
          am: "ያስታውሱ",
          ru: "Запомните это",
          uk: "Запам'ятайте це")
    }
    static var srtSubtitle: String {
        L(en: "Practice remembering something important, with longer and longer pauses.",
          es: "Practique recordar algo importante, con pausas cada vez más largas.",
          hi: "कुछ ज़रूरी याद रखने का अभ्यास करें, हर बार लंबे अंतराल के साथ।",
          gu: "કંઈક મહત્વનું યાદ રાખવાનો અભ્યાસ કરો, દર વખતે લાંબા અંતર સાથે.",
          zh: "练习记住重要的事，间隔会越来越长。",
          fa: "یادسپاری چیزی مهم را با فاصله‌های هرچه طولانی‌تر تمرین کنید.",
          ko: "중요한 내용을 기억하는 연습을 하며, 간격이 점점 길어집니다.",
          vi: "Luyện nhớ một điều quan trọng, với quãng nghỉ ngày càng dài hơn.",
          ar: "تدرّب على تذكّر أمر مهم، مع فترات انتظار تزداد طولًا.",
          pt: "Pratique lembrar algo importante, com pausas cada vez maiores.",
          tl: "Magsanay na tandaan ang mahalagang bagay, na may paunti-unting humahabang pahinga.",
          pa: "ਕੋਈ ਜ਼ਰੂਰੀ ਗੱਲ ਯਾਦ ਰੱਖਣ ਦਾ ਅਭਿਆਸ ਕਰੋ, ਹਰ ਵਾਰ ਲੰਮੇ ਵਕਫ਼ੇ ਨਾਲ।",
          hy: "Վարժվեք հիշել կարևոր բան՝ ավելի ու ավելի երկար դադարներով։",
          ja: "大切なことを思い出す練習です。間隔は少しずつ長くなります。",
          fr: "Entraînez-vous à retenir une chose importante, avec des pauses de plus en plus longues.",
          am: "አንድ አስፈላጊ ነገር ለማስታወስ ይለማመዱ፣ በየጊዜው እየረዘሙ በሚሄዱ እረፍቶች።",
          ru: "Тренируйтесь запоминать что-то важное, делая всё более долгие паузы.",
          uk: "Тренуйтеся пам'ятати щось важливе з дедалі довшими паузами.")
    }
    static var srtNoTargets: String {
        L(en: "A caregiver can add up to three things to remember in Caregiver Mode.",
          es: "Un cuidador puede agregar hasta tres cosas para recordar en el Modo Cuidador.",
          hi: "देखभालकर्ता केयरगिवर मोड में याद रखने की तीन तक बातें जोड़ सकते हैं।",
          gu: "કેરગિવર મોડમાં સંભાળ રાખનાર યાદ રાખવા માટે ત્રણ સુધી બાબતો ઉમેરી શકે છે.",
          zh: "照护者可在照护者模式中添加最多三项需要记住的内容。",
          fa: "مراقب می‌تواند در حالت مراقب تا سه مورد برای به‌خاطر سپردن اضافه کند.",
          ko: "보호자는 보호자 모드에서 기억할 내용을 최대 세 가지까지 추가할 수 있습니다.",
          vi: "Người chăm sóc có thể thêm tối đa ba điều cần nhớ trong Chế độ Người chăm sóc.",
          ar: "يمكن لمقدّم الرعاية إضافة ما يصل إلى ثلاثة أشياء للتذكّر في وضع مقدّم الرعاية.",
          pt: "Um cuidador pode adicionar até três coisas para lembrar no Modo Cuidador.",
          tl: "Maaaring magdagdag ang tagapag-alaga ng hanggang tatlong bagay na tatandaan sa Caregiver Mode.",
          pa: "ਦੇਖਭਾਲ ਕਰਨ ਵਾਲਾ ਕੇਅਰਗਿਵਰ ਮੋਡ ਵਿੱਚ ਯਾਦ ਰੱਖਣ ਲਈ ਤਿੰਨ ਤੱਕ ਗੱਲਾਂ ਜੋੜ ਸਕਦਾ ਹੈ।",
          hy: "Խնամողը կարող է Խնամողի ռեժիմում ավելացնել մինչև երեք հիշելու բան։",
          ja: "介護者モードで、覚えたいことを3つまで追加できます。",
          fr: "Un aidant peut ajouter jusqu’à trois choses à retenir dans le mode Aidant.",
          am: "ተንከባካቢ በተንከባካቢ ሞድ እስከ ሦስት የሚታወሱ ነገሮችን ማከል ይችላል።",
          ru: "В режиме ухаживающего можно добавить до трёх вещей, которые нужно запомнить.",
          uk: "Доглядальник може додати в режимі доглядальника до трьох речей, які потрібно запам'ятати.")
    }
    static var srtTargetsTitle: String {
        L(en: "Things to remember",
          es: "Cosas para recordar",
          hi: "याद रखने की बातें",
          gu: "યાદ રાખવાની બાબતો",
          zh: "需要记住的内容",
          fa: "مواردی برای به‌خاطر سپردن",
          ko: "기억할 내용",
          vi: "Những điều cần nhớ",
          ar: "أشياء للتذكّر",
          pt: "Coisas para lembrar",
          tl: "Mga bagay na tatandaan",
          pa: "ਯਾਦ ਰੱਖਣ ਵਾਲੀਆਂ ਗੱਲਾਂ",
          hy: "Հիշելու բաներ",
          ja: "覚えておくこと",
          fr: "Choses à retenir",
          am: "የሚታወሱ ነገሮች",
          ru: "Что нужно запомнить",
          uk: "Що запам'ятати")
    }
    static var srtTargetsSubtitle: String {
        L(en: "Up to three. Write a question and its answer, for example: Where are your keys kept?",
          es: "Hasta tres. Escriba una pregunta y su respuesta, por ejemplo: ¿Dónde se guardan sus llaves?",
          hi: "अधिकतम तीन। एक प्रश्न और उसका उत्तर लिखें, जैसे: आपकी चाबियाँ कहाँ रखी जाती हैं?",
          gu: "વધુમાં વધુ ત્રણ. એક પ્રશ્ન અને તેનો જવાબ લખો, જેમ કે: તમારી ચાવીઓ ક્યાં રાખવામાં આવે છે?",
          zh: "最多三项。写下一个问题及其答案，例如：您的钥匙放在哪里？",
          fa: "حداکثر سه مورد. یک پرسش و پاسخ آن را بنویسید، مثلاً: کلیدهایتان کجا نگهداری می‌شود؟",
          ko: "최대 세 가지입니다. 질문과 답을 적어 주세요. 예: 열쇠는 어디에 두나요?",
          vi: "Tối đa ba mục. Viết một câu hỏi và câu trả lời, ví dụ: Chìa khóa của bạn để ở đâu?",
          ar: "حتى ثلاثة. اكتب سؤالًا وإجابته، مثلًا: أين تُحفظ مفاتيحك؟",
          pt: "Até três. Escreva uma pergunta e sua resposta, por exemplo: Onde ficam guardadas as suas chaves?",
          tl: "Hanggang tatlo. Magsulat ng tanong at sagot, halimbawa: Saan itinatabi ang mga susi mo?",
          pa: "ਵੱਧ ਤੋਂ ਵੱਧ ਤਿੰਨ। ਇੱਕ ਸਵਾਲ ਅਤੇ ਉਸਦਾ ਜਵਾਬ ਲਿਖੋ, ਜਿਵੇਂ: ਤੁਹਾਡੀਆਂ ਚਾਬੀਆਂ ਕਿੱਥੇ ਰੱਖੀਆਂ ਜਾਂਦੀਆਂ ਹਨ?",
          hy: "Առավելագույնը երեք։ Գրեք հարց և դրա պատասխանը, օրինակ՝ Որտե՞ղ են պահվում ձեր բանալիները։",
          ja: "最大3つまで。質問とその答えを書いてください。例：鍵はどこに置きますか？",
          fr: "Jusqu’à trois. Écrivez une question et sa réponse, par exemple : Où rangez-vous vos clés ?",
          am: "እስከ ሦስት። ጥያቄና መልሱን ጻፉ፣ ለምሳሌ፦ ቁልፎችዎ የት ይቀመጣሉ?",
          ru: "Не более трёх. Напишите вопрос и ответ, например: «Где лежат ваши ключи?»",
          uk: "До трьох. Напишіть запитання та відповідь на нього, наприклад: Де лежать ваші ключі?")
    }
    static var srtQuestionField: String {
        L(en: "Question",
          es: "Pregunta",
          hi: "प्रश्न",
          gu: "પ્રશ્ન",
          zh: "问题",
          fa: "پرسش",
          ko: "질문",
          vi: "Câu hỏi",
          ar: "السؤال",
          pt: "Pergunta",
          tl: "Tanong",
          pa: "ਸਵਾਲ",
          hy: "Հարց",
          ja: "質問",
          fr: "Question",
          am: "ጥያቄ",
          ru: "Вопрос",
          uk: "Запитання")
    }
    static var srtAnswerField: String {
        L(en: "Answer",
          es: "Respuesta",
          hi: "उत्तर",
          gu: "જવાબ",
          zh: "答案",
          fa: "پاسخ",
          ko: "답",
          vi: "Câu trả lời",
          ar: "الإجابة",
          pt: "Resposta",
          tl: "Sagot",
          pa: "ਜਵਾਬ",
          hy: "Պատասխան",
          ja: "答え",
          fr: "Réponse",
          am: "መልስ",
          ru: "Ответ",
          uk: "Відповідь")
    }
    static var srtAdd: String {
        L(en: "Add a target",
          es: "Agregar",
          hi: "जोड़ें",
          gu: "ઉમેરો",
          zh: "添加",
          fa: "افزودن",
          ko: "추가",
          vi: "Thêm",
          ar: "إضافة",
          pt: "Adicionar",
          tl: "Magdagdag",
          pa: "ਜੋੜੋ",
          hy: "Ավելացնել",
          ja: "追加",
          fr: "Ajouter",
          am: "ጨምር",
          ru: "Добавить пункт",
          uk: "Додати пункт")
    }
    static var srtRemove: String {
        L(en: "Remove",
          es: "Quitar",
          hi: "हटाएँ",
          gu: "દૂર કરો",
          zh: "删除",
          fa: "حذف",
          ko: "삭제",
          vi: "Xóa",
          ar: "إزالة",
          pt: "Remover",
          tl: "Alisin",
          pa: "ਹਟਾਓ",
          hy: "Հեռացնել",
          ja: "削除",
          fr: "Supprimer",
          am: "አስወግድ",
          ru: "Удалить",
          uk: "Вилучити")
    }
    static var srtStoredNote: String {
        L(en: "Stored only on this device. Never exported.",
          es: "Se guarda solo en este dispositivo. Nunca se exporta.",
          hi: "केवल इसी डिवाइस पर सहेजा जाता है। कभी निर्यात नहीं होता।",
          gu: "ફક્ત આ ઉપકરણ પર સંગ્રહાય છે. ક્યારેય નિકાસ થતું નથી.",
          zh: "仅保存在此设备上，绝不导出。",
          fa: "فقط روی همین دستگاه ذخیره می‌شود و هرگز خروجی گرفته نمی‌شود.",
          ko: "이 기기에만 저장되며 내보내지 않습니다.",
          vi: "Chỉ lưu trên thiết bị này. Không bao giờ xuất ra.",
          ar: "يُحفظ على هذا الجهاز فقط ولا يُصدَّر أبدًا.",
          pt: "Fica salvo apenas neste dispositivo. Nunca é exportado.",
          tl: "Naka-save lang sa device na ito. Hindi kailanman ine-export.",
          pa: "ਸਿਰਫ਼ ਇਸ ਡਿਵਾਈਸ 'ਤੇ ਸੰਭਾਲਿਆ ਜਾਂਦਾ ਹੈ। ਕਦੇ ਨਿਰਯਾਤ ਨਹੀਂ ਹੁੰਦਾ।",
          hy: "Պահվում է միայն այս սարքում։ Երբեք չի արտահանվում։",
          ja: "この端末にのみ保存され、書き出されることはありません。",
          fr: "Enregistré uniquement sur cet appareil. Jamais exporté.",
          am: "በዚህ መሣሪያ ላይ ብቻ ይቀመጣል። በፍጹም ወደ ውጭ አይላክም።",
          ru: "Хранится только на этом устройстве. Никогда не экспортируется.",
          uk: "Зберігається лише на цьому пристрої. Ніколи не експортується.")
    }
    static var srtSayIt: String {
        L(en: "Say the answer out loud:",
          es: "Diga la respuesta en voz alta:",
          hi: "उत्तर ज़ोर से बोलें:",
          gu: "જવાબ મોટેથી બોલો:",
          zh: "请大声说出答案：",
          fa: "پاسخ را بلند بگویید:",
          ko: "답을 소리 내어 말해 보세요:",
          vi: "Hãy đọc to câu trả lời:",
          ar: "قل الإجابة بصوت عالٍ:",
          pt: "Diga a resposta em voz alta:",
          tl: "Sabihin nang malakas ang sagot:",
          pa: "ਜਵਾਬ ਉੱਚੀ ਬੋਲੋ:",
          hy: "Բարձրաձայն ասեք պատասխանը՝",
          ja: "答えを声に出して言いましょう：",
          fr: "Dites la réponse à voix haute :",
          am: "መልሱን ጮክ ብለው ይናገሩ፦",
          ru: "Произнесите ответ вслух:",
          uk: "Скажіть відповідь уголос:")
    }
    static var srtISaidIt: String {
        L(en: "I said it",
          es: "Ya lo dije",
          hi: "मैंने बोल दिया",
          gu: "મેં બોલી દીધું",
          zh: "我说了",
          fa: "گفتم",
          ko: "말했어요",
          vi: "Tôi đã nói",
          ar: "قلتها",
          pt: "Eu disse",
          tl: "Nasabi ko na",
          pa: "ਮੈਂ ਬੋਲ ਦਿੱਤਾ",
          hy: "Ասացի",
          ja: "言いました",
          fr: "Je l’ai dit",
          am: "ተናገርኩ",
          ru: "Я сказал(а)",
          uk: "Сказано")
    }
    static var srtCanYou: String {
        L(en: "Can you remember the answer?",
          es: "¿Recuerda la respuesta?",
          hi: "क्या आपको उत्तर याद है?",
          gu: "શું તમને જવાબ યાદ છે?",
          zh: "您还记得答案吗？",
          fa: "پاسخ را به یاد دارید؟",
          ko: "답이 기억나세요?",
          vi: "Bạn có nhớ câu trả lời không?",
          ar: "هل تتذكّر الإجابة؟",
          pt: "Você lembra a resposta?",
          tl: "Naaalala mo ba ang sagot?",
          pa: "ਕੀ ਤੁਹਾਨੂੰ ਜਵਾਬ ਯਾਦ ਹੈ?",
          hy: "Հիշո՞ւմ եք պատասխանը",
          ja: "答えを覚えていますか？",
          fr: "Vous souvenez-vous de la réponse ?",
          am: "መልሱን ያስታውሳሉ?",
          ru: "Можете вспомнить ответ?",
          uk: "Чи можете ви згадати відповідь?")
    }
    static var srtRemembered: String {
        L(en: "I remembered",
          es: "Lo recordé",
          hi: "मुझे याद था",
          gu: "મને યાદ હતું",
          zh: "我记得",
          fa: "به یاد داشتم",
          ko: "기억했어요",
          vi: "Tôi nhớ",
          ar: "تذكّرت",
          pt: "Eu lembrei",
          tl: "Naalala ko",
          pa: "ਮੈਨੂੰ ਯਾਦ ਸੀ",
          hy: "Հիշեցի",
          ja: "思い出せた",
          fr: "Je m’en souvenais",
          am: "አስታወስኩ",
          ru: "Я вспомнил(а)",
          uk: "Згадалося")
    }
    static var srtNeededHelp: String {
        L(en: "I needed help",
          es: "Necesité ayuda",
          hi: "मुझे मदद चाहिए थी",
          gu: "મને મદદ જોઈતી હતી",
          zh: "我需要帮助",
          fa: "کمک لازم داشتم",
          ko: "도움이 필요했어요",
          vi: "Tôi cần giúp",
          ar: "احتجت إلى مساعدة",
          pt: "Precisei de ajuda",
          tl: "Kinailangan ko ng tulong",
          pa: "ਮੈਨੂੰ ਮਦਦ ਚਾਹੀਦੀ ਸੀ",
          hy: "Օգնություն պետք եղավ",
          ja: "助けが必要だった",
          fr: "J’ai eu besoin d’aide",
          am: "እርዳታ ፈለግሁ",
          ru: "Мне понадобилась помощь",
          uk: "Потрібна була допомога")
    }
    static var srtAskNow: String {
        L(en: "Ask now",
          es: "Preguntar ahora",
          hi: "अभी पूछें",
          gu: "હમણાં પૂછો",
          zh: "现在就问",
          fa: "همین حالا بپرس",
          ko: "지금 묻기",
          vi: "Hỏi ngay",
          ar: "اسأل الآن",
          pt: "Perguntar agora",
          tl: "Itanong na ngayon",
          pa: "ਹੁਣੇ ਪੁੱਛੋ",
          hy: "Հարցնել հիմա",
          ja: "今すぐ聞く",
          fr: "Demander maintenant",
          am: "አሁን ጠይቅ",
          ru: "Спросить сейчас",
          uk: "Запитати зараз")
    }
    static var srtWhileWait: String {
        L(en: "Do a quick activity while you wait",
          es: "Haga una actividad rápida mientras espera",
          hi: "इंतज़ार के दौरान एक छोटी गतिविधि करें",
          gu: "રાહ જોતી વખતે એક ટૂંકી પ્રવૃત્તિ કરો",
          zh: "等待时做个小练习",
          fa: "در حین انتظار یک فعالیت کوتاه انجام دهید",
          ko: "기다리는 동안 짧은 활동을 해 보세요",
          vi: "Làm một hoạt động ngắn trong lúc chờ",
          ar: "جرّب نشاطًا سريعًا أثناء الانتظار",
          pt: "Faça uma atividade rápida enquanto espera",
          tl: "Gumawa ng mabilis na aktibidad habang naghihintay",
          pa: "ਉਡੀਕ ਕਰਦੇ ਹੋਏ ਇੱਕ ਛੋਟੀ ਗਤੀਵਿਧੀ ਕਰੋ",
          hy: "Սպասելիս կատարեք արագ վարժություն",
          ja: "待ち時間に短いアクティビティをしましょう",
          fr: "Faites une activité rapide en attendant",
          am: "በሚጠብቁበት ጊዜ አጭር እንቅስቃሴ ያድርጉ",
          ru: "Займитесь чем-нибудь недолго, пока ждёте",
          uk: "Виконайте швидку вправу, поки чекаєте")
    }
    static var srtImmediate: String {
        L(en: "Right away",
          es: "Enseguida",
          hi: "तुरंत",
          gu: "તરત",
          zh: "立即",
          fa: "بلافاصله",
          ko: "바로",
          vi: "Ngay lập tức",
          ar: "فورًا",
          pt: "Imediatamente",
          tl: "Agad",
          pa: "ਤੁਰੰਤ",
          hy: "Անմիջապես",
          ja: "すぐに",
          fr: "Tout de suite",
          am: "ወዲያውኑ",
          ru: "Сразу",
          uk: "Одразу")
    }
    static var srtMissed: String {
        L(en: "That's okay. Here is the answer. Say it again:",
          es: "No pasa nada. Esta es la respuesta. Dígala otra vez:",
          hi: "कोई बात नहीं। यह रहा उत्तर। फिर से बोलें:",
          gu: "કોઈ વાંધો નહીં. આ રહ્યો જવાબ. ફરી બોલો:",
          zh: "没关系。这是答案。请再说一遍：",
          fa: "اشکالی ندارد. این پاسخ است. دوباره بگویید:",
          ko: "괜찮아요. 답은 이렇습니다. 다시 말해 보세요:",
          vi: "Không sao. Đây là câu trả lời. Hãy nói lại:",
          ar: "لا بأس. هذه هي الإجابة. قلها مرة أخرى:",
          pt: "Tudo bem. Esta é a resposta. Diga de novo:",
          tl: "Ayos lang. Narito ang sagot. Sabihin muli:",
          pa: "ਕੋਈ ਗੱਲ ਨਹੀਂ। ਇਹ ਹੈ ਜਵਾਬ। ਫਿਰ ਬੋਲੋ:",
          hy: "Ոչինչ։ Ահա պատասխանը։ Կրկին ասեք՝",
          ja: "大丈夫です。答えはこちら。もう一度言いましょう：",
          fr: "Ce n’est pas grave. Voici la réponse. Dites-la encore :",
          am: "ችግር የለም። መልሱ ይህ ነው። እንደገና ይናገሩ፦",
          ru: "Ничего страшного. Вот ответ. Произнесите его ещё раз:",
          uk: "Нічого страшного. Ось відповідь. Скажіть її ще раз:")
    }
    static func srtNextIn(_ x: String) -> String {
        L(en: "Next question in %@",
                  es: "Siguiente pregunta en %@",
                  hi: "अगला प्रश्न %@ में",
                  gu: "આગલો પ્રશ્ન %@ માં",
                  zh: "%@ 后提问下一次",
                  fa: "پرسش بعدی تا %@ دیگر",
                  ko: "다음 질문까지 %@",
                  vi: "Câu hỏi tiếp theo sau %@",
                  ar: "السؤال التالي بعد %@",
                  pt: "Próxima pergunta em %@",
                  tl: "Susunod na tanong sa loob ng %@",
                  pa: "ਅਗਲਾ ਸਵਾਲ %@ ਵਿੱਚ",
                  hy: "Հաջորդ հարցը %@ հետո",
                  ja: "次の質問まで %@",
                  fr: "Prochaine question dans %@",
                  am: "ቀጣዩ ጥያቄ በ%@ ውስጥ",
          ru: "Следующий вопрос через %@",
          uk: "Наступне запитання через %@").replacingOccurrences(of: "%@", with: x)
    }
    static func srtCompleted(_ x: String) -> String {
        L(en: "Well done! You remembered it after %@.",
                  es: "¡Bien hecho! Lo recordó después de %@.",
                  hi: "शाबाश! आपको %@ बाद भी याद रहा।",
                  gu: "શાબાશ! %@ પછી પણ તમને યાદ રહ્યું.",
                  zh: "做得好！隔了 %@ 您仍然记得。",
                  fa: "آفرین! بعد از %@ هم به یاد داشتید.",
                  ko: "잘하셨어요! %@ 뒤에도 기억하셨습니다.",
                  vi: "Làm tốt lắm! Bạn vẫn nhớ sau %@.",
                  ar: "أحسنت! تذكّرت بعد %@.",
                  pt: "Muito bem! Você lembrou depois de %@.",
                  tl: "Magaling! Naalala mo pa rin pagkalipas ng %@.",
                  pa: "ਸ਼ਾਬਾਸ਼! %@ ਬਾਅਦ ਵੀ ਤੁਹਾਨੂੰ ਯਾਦ ਰਿਹਾ।",
                  hy: "Բրավո՛։ Հիշեցիք նույնիսկ %@ հետո։",
                  ja: "よくできました！%@後も思い出せました。",
                  fr: "Bravo ! Vous vous en souveniez encore après %@.",
                  am: "ጎበዝ! ከ%@ በኋላም አስታውሰዋል።",
          ru: "Отлично! Вы вспомнили ответ через %@.",
          uk: "Чудово! Ви згадали це через %@.").replacingOccurrences(of: "%@", with: x)
    }
    static func srtBest(_ x: String) -> String {
        L(en: "Best: %@",
                  es: "Mejor: %@",
                  hi: "सर्वश्रेष्ठ: %@",
                  gu: "શ્રેષ્ઠ: %@",
                  zh: "最长：%@",
                  fa: "بهترین: %@",
                  ko: "최고: %@",
                  vi: "Tốt nhất: %@",
                  ar: "الأفضل: %@",
                  pt: "Melhor: %@",
                  tl: "Pinakamahusay: %@",
                  pa: "ਸਭ ਤੋਂ ਵਧੀਆ: %@",
                  hy: "Լավագույնը՝ %@",
                  ja: "最高：%@",
                  fr: "Meilleur : %@",
                  am: "ምርጡ፦ %@",
          ru: "Лучший результат: %@",
          uk: "Найкраще: %@").replacingOccurrences(of: "%@", with: x)
    }

    // MARK: - F6 Visual scanning
    static var scanTitle: String {
        L(en: "Visual Scanning",
          es: "Búsqueda visual",
          hi: "दृश्य खोज",
          gu: "દૃશ્ય શોધ",
          zh: "视觉搜索",
          fa: "جست‌وجوی دیداری",
          ko: "시각 탐색",
          vi: "Tìm kiếm bằng mắt",
          ar: "المسح البصري",
          pt: "Busca visual",
          tl: "Pagsusuri ng Paningin",
          pa: "ਦ੍ਰਿਸ਼ਟੀ ਖੋਜ",
          hy: "Տեսողական որոնում",
          ja: "視覚探索",
          fr: "Recherche visuelle",
          am: "የእይታ ፍለጋ",
          ru: "Зрительный поиск",
          uk: "Візуальний пошук")
    }
    static var scanSubtitle: String {
        L(en: "Tap every target. Start at the left edge and work across, row by row.",
          es: "Toque cada objetivo. Empiece por el borde izquierdo y avance fila por fila.",
          hi: "हर लक्ष्य पर टैप करें। बाएँ किनारे से शुरू करें और पंक्ति-दर-पंक्ति आगे बढ़ें।",
          gu: "દરેક લક્ષ્ય પર ટૅપ કરો. ડાબી કિનારેથી શરૂ કરી પંક્તિ-દર-પંક્તિ આગળ વધો.",
          zh: "点按每一个目标。从最左边开始，逐行向右查找。",
          fa: "روی هر هدف ضربه بزنید. از لبهٔ چپ شروع کنید و ردیف‌به‌ردیف پیش بروید.",
          ko: "모든 목표를 누르세요. 왼쪽 가장자리에서 시작해 줄마다 오른쪽으로 찾아가세요.",
          vi: "Chạm vào mọi mục tiêu. Bắt đầu từ mép trái và quét từng hàng.",
          ar: "المس كل هدف. ابدأ من الحافة اليسرى وتقدّم صفًّا بصف.",
          pt: "Toque em cada alvo. Comece pela borda esquerda e avance linha por linha.",
          tl: "I-tap ang bawat target. Magsimula sa kaliwang gilid at humanay-hanay.",
          pa: "ਹਰ ਨਿਸ਼ਾਨੇ 'ਤੇ ਟੈਪ ਕਰੋ। ਖੱਬੇ ਕਿਨਾਰੇ ਤੋਂ ਸ਼ੁਰੂ ਕਰੋ ਅਤੇ ਕਤਾਰ-ਦਰ-ਕਤਾਰ ਅੱਗੇ ਵਧੋ।",
          hy: "Հպեք յուրաքանչյուր թիրախի։ Սկսեք ձախ եզրից և շարունակեք տող առ տող։",
          ja: "すべてのターゲットをタップします。左端から始めて、1行ずつ進みましょう。",
          fr: "Touchez chaque cible. Commencez par le bord gauche et avancez ligne par ligne.",
          am: "እያንዳንዱን ዒላማ ይንኩ። ከግራ ጠርዝ ጀምረው ረድፍ በረድፍ ይሂዱ።",
          ru: "Нажимайте на все нужные объекты. Начните с левого края и идите по строкам.",
          uk: "Торкніться кожної цілі. Починайте з лівого краю й рухайтеся рядок за рядком.")
    }
    static var scanModeTest: String {
        L(en: "Test",
          es: "Prueba",
          hi: "परीक्षण",
          gu: "પરીક્ષણ",
          zh: "测试",
          fa: "آزمون",
          ko: "테스트",
          vi: "Kiểm tra",
          ar: "اختبار",
          pt: "Teste",
          tl: "Pagsubok",
          pa: "ਟੈਸਟ",
          hy: "Թեստ",
          ja: "テスト",
          fr: "Test",
          am: "ፈተና",
          ru: "Проверка",
          uk: "Тест")
    }
    static var scanModePractice: String {
        L(en: "Practice in order",
          es: "Práctica en orden",
          hi: "क्रम से अभ्यास",
          gu: "ક્રમમાં અભ્યાસ",
          zh: "按顺序练习",
          fa: "تمرین به ترتیب",
          ko: "순서대로 연습",
          vi: "Luyện theo thứ tự",
          ar: "تدريب بالترتيب",
          pt: "Prática em ordem",
          tl: "Pagsasanay nang sunod-sunod",
          pa: "ਕ੍ਰਮ ਵਿੱਚ ਅਭਿਆਸ",
          hy: "Վարժություն հերթականությամբ",
          ja: "順番に練習",
          fr: "Entraînement dans l’ordre",
          am: "በቅደም ተከተል ልምምድ",
          ru: "Тренировка по порядку",
          uk: "Практика за порядком")
    }
    static var scanAnchor: String {
        L(en: "Flashing marker on the left edge",
          es: "Marcador parpadeante en el borde izquierdo",
          hi: "बाएँ किनारे पर झिलमिलाता संकेत",
          gu: "ડાબી કિનારે ઝબકતું ચિહ્ન",
          zh: "左边缘闪烁标记",
          fa: "نشانگر چشمک‌زن در لبهٔ چپ",
          ko: "왼쪽 가장자리의 깜박이는 표시",
          vi: "Vạch nhấp nháy ở mép trái",
          ar: "علامة وامضة على الحافة اليسرى",
          pt: "Marcador piscando na borda esquerda",
          tl: "Kumukurap na marka sa kaliwang gilid",
          pa: "ਖੱਬੇ ਕਿਨਾਰੇ 'ਤੇ ਝਪਕਦਾ ਨਿਸ਼ਾਨ",
          hy: "Թարթող նշան ձախ եզրին",
          ja: "左端の点滅マーカー",
          fr: "Repère clignotant sur le bord gauche",
          am: "በግራ ጠርዝ የሚብለጨለጭ ምልክት",
          ru: "Мигающая метка у левого края",
          uk: "Мигаючий маркер на лівому краї")
    }
    static var scanFindThis: String {
        L(en: "Find every:",
          es: "Encuentre todos:",
          hi: "सभी खोजें:",
          gu: "બધા શોધો:",
          zh: "找出所有：",
          fa: "همه را پیدا کنید:",
          ko: "모두 찾으세요:",
          vi: "Tìm tất cả:",
          ar: "اعثر على كل:",
          pt: "Encontre todos:",
          tl: "Hanapin lahat:",
          pa: "ਸਾਰੇ ਲੱਭੋ:",
          hy: "Գտեք բոլորը՝",
          ja: "すべて見つけてください：",
          fr: "Trouvez tous :",
          am: "ሁሉንም ፈልግ፦",
          ru: "Найдите все:",
          uk: "Знайдіть усі:")
    }
    static var scanTime: String {
        L(en: "Time",
          es: "Tiempo",
          hi: "समय",
          gu: "સમય",
          zh: "用时",
          fa: "زمان",
          ko: "소요 시간",
          vi: "Thời gian",
          ar: "الوقت",
          pt: "Tempo",
          tl: "Oras",
          pa: "ਸਮਾਂ",
          hy: "Ժամանակ",
          ja: "時間",
          fr: "Temps",
          am: "ጊዜ",
          ru: "Время",
          uk: "Час")
    }
    static var scanTopLeft: String {
        L(en: "Top left",
          es: "Arriba izquierda",
          hi: "ऊपर बाएँ",
          gu: "ઉપર ડાબે",
          zh: "左上",
          fa: "بالا چپ",
          ko: "왼쪽 위",
          vi: "Trên trái",
          ar: "أعلى اليسار",
          pt: "Superior esquerdo",
          tl: "Itaas na kaliwa",
          pa: "ਉੱਪਰ ਖੱਬੇ",
          hy: "Վերև ձախ",
          ja: "左上",
          fr: "Haut gauche",
          am: "ላይ ግራ",
          ru: "Вверху слева",
          uk: "Угорі ліворуч")
    }
    static var scanTopRight: String {
        L(en: "Top right",
          es: "Arriba derecha",
          hi: "ऊपर दाएँ",
          gu: "ઉપર જમણે",
          zh: "右上",
          fa: "بالا راست",
          ko: "오른쪽 위",
          vi: "Trên phải",
          ar: "أعلى اليمين",
          pt: "Superior direito",
          tl: "Itaas na kanan",
          pa: "ਉੱਪਰ ਸੱਜੇ",
          hy: "Վերև աջ",
          ja: "右上",
          fr: "Haut droit",
          am: "ላይ ቀኝ",
          ru: "Вверху справа",
          uk: "Угорі праворуч")
    }
    static var scanBottomLeft: String {
        L(en: "Bottom left",
          es: "Abajo izquierda",
          hi: "नीचे बाएँ",
          gu: "નીચે ડાબે",
          zh: "左下",
          fa: "پایین چپ",
          ko: "왼쪽 아래",
          vi: "Dưới trái",
          ar: "أسفل اليسار",
          pt: "Inferior esquerdo",
          tl: "Ibaba na kaliwa",
          pa: "ਹੇਠਾਂ ਖੱਬੇ",
          hy: "Ներքև ձախ",
          ja: "左下",
          fr: "Bas gauche",
          am: "ታች ግራ",
          ru: "Внизу слева",
          uk: "Унизу ліворуч")
    }
    static var scanBottomRight: String {
        L(en: "Bottom right",
          es: "Abajo derecha",
          hi: "नीचे दाएँ",
          gu: "નીચે જમણે",
          zh: "右下",
          fa: "پایین راست",
          ko: "오른쪽 아래",
          vi: "Dưới phải",
          ar: "أسفل اليمين",
          pt: "Inferior direito",
          tl: "Ibaba na kanan",
          pa: "ਹੇਠਾਂ ਸੱਜੇ",
          hy: "Ներքև աջ",
          ja: "右下",
          fr: "Bas droit",
          am: "ታች ቀኝ",
          ru: "Внизу справа",
          uk: "Унизу праворуч")
    }
    static func scanLevel(_ x: String) -> String {
        L(en: "Level %@",
                  es: "Nivel %@",
                  hi: "स्तर %@",
                  gu: "સ્તર %@",
                  zh: "第 %@ 级",
                  fa: "سطح %@",
                  ko: "%@단계",
                  vi: "Cấp %@",
                  ar: "المستوى %@",
                  pt: "Nível %@",
                  tl: "Antas %@",
                  pa: "ਪੱਧਰ %@",
                  hy: "Մակարդակ %@",
                  ja: "レベル %@",
                  fr: "Niveau %@",
                  am: "ደረጃ %@",
          ru: "Уровень %@",
          uk: "Рівень %@").replacingOccurrences(of: "%@", with: x)
    }
    static func scanExtraTaps(_ x: String) -> String {
        L(en: "Extra taps: %@",
                  es: "Toques de más: %@",
                  hi: "अतिरिक्त टैप: %@",
                  gu: "વધારાના ટૅપ: %@",
                  zh: "多余点按：%@",
                  fa: "ضربه‌های اضافی: %@",
                  ko: "불필요한 터치: %@",
                  vi: "Số lần chạm thừa: %@",
                  ar: "نقرات زائدة: %@",
                  pt: "Toques extras: %@",
                  tl: "Mga sobrang tap: %@",
                  pa: "ਵਾਧੂ ਟੈਪ: %@",
                  hy: "Ավելորդ հպումներ՝ %@",
                  ja: "余分なタップ：%@",
                  fr: "Appuis en trop : %@",
                  am: "ተጨማሪ ንክኪዎች፦ %@",
          ru: "Лишние нажатия: %@",
          uk: "Зайві торкання: %@").replacingOccurrences(of: "%@", with: x)
    }

    static func scanFound(_ a: Int, _ b: Int) -> String {
        L(en: "{a} of {b} found",
                  es: "Encontró {a} de {b}",
                  hi: "{b} में से {a} मिले",
                  gu: "{b} માંથી {a} મળ્યા",
                  zh: "找到 {a} / {b}",
                  fa: "{a} از {b} پیدا شد",
                  ko: "{b}개 중 {a}개 찾음",
                  vi: "Tìm thấy {a}/{b}",
                  ar: "وجدت {a} من {b}",
                  pt: "Encontrou {a} de {b}",
                  tl: "Nahanap ang {a} sa {b}",
                  pa: "{b} ਵਿੱਚੋਂ {a} ਮਿਲੇ",
                  hy: "Գտնվել է {a}՝ {b}-ից",
                  ja: "{b}個中{a}個を発見",
                  fr: "{a} sur {b} trouvées",
                  am: "ከ{b} {a} ተገኝተዋል",
          ru: "Найдено: {a} из {b}",
          uk: "Знайдено {a} із {b}").replacingOccurrences(of: "{a}", with: String(a)).replacingOccurrences(of: "{b}", with: String(b))
    }
}
