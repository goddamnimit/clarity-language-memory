import Foundation

/// UI strings for the exercise screens (iOS and tvOS) that used to be hard-coded English.
///
/// Every `XS.Entry` must supply all supported languages: the memberwise initializer has one
/// labelled parameter per language, so a missing translation is a compile error. Stored data
/// values (answers, options, accessibility identifiers used by UI tests) are never routed
/// through this table; only drawn text and VoiceOver labels are.
enum XS {

    struct Entry {
        let en, es, hi, gu, zh, fa, ko, vi, ar, pt: String
        let tl, pa, hy, ja, fr, am, ru, uk, de

        func text(in language: AppLanguage) -> String {
            switch language {
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
            case .german: return de
            }
        }

        /// The string in the app's current language.
        var text: String { text(in: LanguageManager.shared.currentLanguage) }
    }

    // MARK: - iOS exercise screens

    static let nextQuestion = Entry(
        en: "Next Question →", es: "Siguiente pregunta →", hi: "अगला प्रश्न →", gu: "આગળનો પ્રશ્ન →",
        zh: "下一题 →", fa: "سؤال بعدی ←", ko: "다음 질문 →", vi: "Câu hỏi tiếp theo →",
        ar: "السؤال التالي ←", pt: "Próxima pergunta →", tl: "Susunod na Tanong →",
        pa: "ਅਗਲਾ ਸਵਾਲ →", hy: "Հաջորդ հարցը →", ja: "次の問題 →", fr: "Question suivante →",
        am: "ቀጣይ ጥያቄ →", ru: "Следующий вопрос →", uk: "Наступне запитання →",
        de: "Nächste Frage →", it: "Domanda successiva →")

    static let skipArrow = Entry(
        en: "Skip →", es: "Omitir →", hi: "छोड़ें →", gu: "છોડો →", zh: "跳过 →", fa: "رد کردن ←",
        ko: "건너뛰기 →", vi: "Bỏ qua →", ar: "تخطٍّ ←", pt: "Pular →", tl: "Laktawan →",
        pa: "ਛੱਡੋ →", hy: "Բաց թողնել →", ja: "スキップ →", fr: "Passer →", am: "ዝለል →",
        ru: "Пропустить →", uk: "Пропустити →", de: "Überspringen →", it: "Salta →")

    static let tryAgain = Entry(
        en: "Try Again", es: "Intentar de nuevo", hi: "फिर से कोशिश करें", gu: "ફરી પ્રયાસ કરો",
        zh: "再试一次", fa: "دوباره تلاش کنید", ko: "다시 시도", vi: "Thử lại", ar: "حاول مرة أخرى",
        pt: "Tentar novamente", tl: "Subukan Muli", pa: "ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ", hy: "Կրկին փորձել",
        ja: "もう一度", fr: "Réessayer", am: "እንደገና ሞክር", ru: "Попробовать снова",
        uk: "Спробувати ще раз", de: "Erneut versuchen", it: "Riprova")

    static let checkOrder = Entry(
        en: "Check Order", es: "Comprobar el orden", hi: "क्रम जाँचें", gu: "ક્રમ તપાસો",
        zh: "检查顺序", fa: "بررسی ترتیب", ko: "순서 확인", vi: "Kiểm tra thứ tự", ar: "تحقق من الترتيب",
        pt: "Verificar a ordem", tl: "Suriin ang Pagkakasunod-sunod", pa: "ਕ੍ਰਮ ਜਾਂਚੋ",
        hy: "Ստուգել հերթականությունը", ja: "順番を確認", fr: "Vérifier l’ordre",
        am: "ቅደም ተከተሉን ፈትሽ", ru: "Проверить порядок", uk: "Перевірити порядок",
        de: "Reihenfolge prüfen", it: "Controlla l'ordine")

    static let availablePositions = Entry(
        en: "Available Positions:", es: "Posiciones disponibles:", hi: "उपलब्ध स्थान:",
        gu: "ઉપલબ્ધ સ્થાનો:", zh: "可选位置：", fa: "جایگاه‌های موجود:", ko: "선택 가능한 위치:",
        vi: "Các vị trí còn trống:", ar: "المواضع المتاحة:", pt: "Posições disponíveis:",
        tl: "Mga Magagamit na Posisyon:", pa: "ਉਪਲਬਧ ਸਥਾਨ:", hy: "Հասանելի դիրքեր՝",
        ja: "選べる位置：", fr: "Positions disponibles :", am: "የሚገኙ ቦታዎች፦",
        ru: "Доступные позиции:", uk: "Доступні позиції:", de: "Verfügbare Positionen:",
        it: "Posizioni disponibili:")

    static let correctStepsSequence = Entry(
        en: "Correct Steps Sequence:", es: "Secuencia correcta de pasos:", hi: "चरणों का सही क्रम:",
        gu: "પગલાંનો સાચો ક્રમ:", zh: "正确的步骤顺序：", fa: "ترتیب درست مراحل:",
        ko: "올바른 단계 순서:", vi: "Thứ tự các bước đúng:", ar: "التسلسل الصحيح للخطوات:",
        pt: "Sequência correta dos passos:", tl: "Tamang Pagkakasunod-sunod ng mga Hakbang:",
        pa: "ਕਦਮਾਂ ਦਾ ਸਹੀ ਕ੍ਰਮ:", hy: "Քայլերի ճիշտ հաջորդականությունը՝", ja: "正しい手順の順番：",
        fr: "Ordre correct des étapes :", am: "ትክክለኛው የደረጃዎች ቅደም ተከተል፦",
        ru: "Правильная последовательность шагов:", uk: "Правильна послідовність кроків:",
        de: "Richtige Reihenfolge der Schritte:", it: "Sequenza corretta dei passaggi:")

    static let rememberTheseWords = Entry(
        en: "Remember these words:", es: "Recuerde estas palabras:", hi: "इन शब्दों को याद रखें:",
        gu: "આ શબ્દો યાદ રાખો:", zh: "请记住这些词：", fa: "این واژه‌ها را به خاطر بسپارید:",
        ko: "다음 단어를 기억하세요:", vi: "Hãy ghi nhớ những từ này:", ar: "تذكّر هذه الكلمات:",
        pt: "Memorize estas palavras:", tl: "Tandaan ang mga salitang ito:",
        pa: "ਇਹ ਸ਼ਬਦ ਯਾਦ ਰੱਖੋ:", hy: "Հիշեք այս բառերը՝", ja: "次の言葉を覚えてください：",
        fr: "Retenez ces mots :", am: "እነዚህን ቃላት ያስታውሱ፦", ru: "Запомните эти слова:",
        uk: "Запам’ятайте ці слова:", de: "Merken Sie sich diese Wörter:",
        it: "Memorizzi queste parole:")

    static let ready = Entry(
        en: "Ready?", es: "¿Listo?", hi: "तैयार?", gu: "તૈયાર?", zh: "准备好了吗？", fa: "آماده‌اید؟",
        ko: "준비되셨나요?", vi: "Sẵn sàng chưa?", ar: "هل أنت مستعد؟", pt: "Pronto?",
        tl: "Handa na?", pa: "ਤਿਆਰ?", hy: "Պատրա՞ստ եք", ja: "準備はいいですか？", fr: "Prêt ?",
        am: "ዝግጁ ነዎት?", ru: "Готовы?", uk: "Готові?", de: "Bereit?", it: "Pronto?")

    static let typeYourAnswer = Entry(
        en: "Type your answer here...", es: "Escriba su respuesta aquí…", hi: "अपना उत्तर यहाँ लिखें…",
        gu: "તમારો જવાબ અહીં લખો…", zh: "在此输入您的答案…", fa: "پاسخ خود را اینجا بنویسید…",
        ko: "여기에 답을 입력하세요…", vi: "Nhập câu trả lời của bạn tại đây…", ar: "اكتب إجابتك هنا…",
        pt: "Escreva a sua resposta aqui…", tl: "I-type dito ang iyong sagot…",
        pa: "ਆਪਣਾ ਜਵਾਬ ਇੱਥੇ ਲਿਖੋ…", hy: "Գրեք ձեր պատասխանը այստեղ…",
        ja: "ここに答えを入力してください…", fr: "Saisissez votre réponse ici…",
        am: "መልስዎን እዚህ ይጻፉ…", ru: "Введите ваш ответ здесь…", uk: "Введіть вашу відповідь тут…",
        de: "Geben Sie hier Ihre Antwort ein …", it: "Scriva qui la sua risposta…")

    static let clear = Entry(
        en: "Clear", es: "Borrar", hi: "मिटाएँ", gu: "સાફ કરો", zh: "清除", fa: "پاک کردن",
        ko: "지우기", vi: "Xóa", ar: "مسح", pt: "Limpar", tl: "Burahin", pa: "ਮਿਟਾਓ",
        hy: "Մաքրել", ja: "消去", fr: "Effacer", am: "አጥፋ", ru: "Очистить", uk: "Очистити",
        de: "Löschen", it: "Cancella")

    static let modelAnswer = Entry(
        en: "Model Answer", es: "Respuesta modelo", hi: "आदर्श उत्तर", gu: "નમૂનારૂપ જવાબ",
        zh: "参考答案", fa: "پاسخ نمونه", ko: "모범 답안", vi: "Đáp án mẫu", ar: "الإجابة النموذجية",
        pt: "Resposta modelo", tl: "Modelong Sagot", pa: "ਨਮੂਨਾ ਜਵਾਬ", hy: "Օրինակելի պատասխան",
        ja: "模範解答", fr: "Réponse type", am: "ምሳሌ መልስ", ru: "Образец ответа",
        uk: "Зразок відповіді", de: "Musterantwort", it: "Risposta modello")

    static let showAnswer = Entry(
        en: "Show Answer", es: "Mostrar respuesta", hi: "उत्तर दिखाएँ", gu: "જવાબ બતાવો",
        zh: "显示答案", fa: "نمایش پاسخ", ko: "답 보기", vi: "Hiện đáp án", ar: "إظهار الإجابة",
        pt: "Mostrar resposta", tl: "Ipakita ang Sagot", pa: "ਜਵਾਬ ਦਿਖਾਓ", hy: "Ցույց տալ պատասխանը",
        ja: "答えを表示", fr: "Afficher la réponse", am: "መልሱን አሳይ", ru: "Показать ответ",
        uk: "Показати відповідь", de: "Antwort anzeigen", it: "Mostra risposta")

    static let hideAnswer = Entry(
        en: "Hide Answer", es: "Ocultar respuesta", hi: "उत्तर छिपाएँ", gu: "જવાબ છુપાવો",
        zh: "隐藏答案", fa: "پنهان کردن پاسخ", ko: "답 숨기기", vi: "Ẩn đáp án", ar: "إخفاء الإجابة",
        pt: "Ocultar resposta", tl: "Itago ang Sagot", pa: "ਜਵਾਬ ਲੁਕਾਓ", hy: "Թաքցնել պատասխանը",
        ja: "答えを隠す", fr: "Masquer la réponse", am: "መልሱን ደብቅ", ru: "Скрыть ответ",
        uk: "Сховати відповідь", de: "Antwort ausblenden", it: "Nascondi risposta")

    static let speakYourAnswer = Entry(
        en: "Speak Your Answer", es: "Diga su respuesta", hi: "अपना उत्तर बोलें", gu: "તમારો જવાબ બોલો",
        zh: "语音回答", fa: "پاسخ خود را بگویید", ko: "음성으로 답하기", vi: "Nói câu trả lời của bạn",
        ar: "انطق إجابتك", pt: "Diga a sua resposta", tl: "Sabihin ang Iyong Sagot",
        pa: "ਆਪਣਾ ਜਵਾਬ ਬੋਲੋ", hy: "Ասեք ձեր պատասխանը", ja: "声で答える", fr: "Dites votre réponse",
        am: "መልስዎን ይናገሩ", ru: "Скажите ответ", uk: "Скажіть відповідь", de: "Antwort sprechen",
        it: "Dica la sua risposta")

    static let listeningTapToStop = Entry(
        en: "Listening… Tap to Stop", es: "Escuchando… Toque para detener",
        hi: "सुन रहा है… रोकने के लिए टैप करें", gu: "સાંભળી રહ્યું છે… રોકવા ટૅપ કરો",
        zh: "正在聆听…点击停止", fa: "در حال گوش دادن… برای توقف ضربه بزنید", ko: "듣는 중… 탭하여 중지",
        vi: "Đang nghe… Chạm để dừng", ar: "جارٍ الاستماع… اضغط للإيقاف",
        pt: "A ouvir… Toque para parar", tl: "Nakikinig… I-tap para huminto",
        pa: "ਸੁਣ ਰਿਹਾ ਹੈ… ਰੋਕਣ ਲਈ ਟੈਪ ਕਰੋ", hy: "Լսում է… Հպեք՝ կանգնեցնելու համար",
        ja: "聞き取り中…タップで停止", fr: "Écoute en cours… Touchez pour arrêter",
        am: "በማዳመጥ ላይ… ለማቆም ይንኩ", ru: "Слушаю… Нажмите, чтобы остановить",
        uk: "Слухаю… Торкніться, щоб зупинити", de: "Hört zu … Zum Beenden tippen",
        it: "In ascolto… Tocchi per interrompere")

    static let voiceUnavailable = Entry(
        en: "Voice input isn't available for this language yet.",
        es: "La entrada de voz aún no está disponible para este idioma.",
        hi: "इस भाषा के लिए वॉइस इनपुट अभी उपलब्ध नहीं है।",
        gu: "આ ભાષા માટે વૉઇસ ઇનપુટ હજી ઉપલબ્ધ નથી.",
        zh: "此语言暂不支持语音输入。", fa: "ورودی صوتی هنوز برای این زبان در دسترس نیست.",
        ko: "이 언어는 아직 음성 입력을 지원하지 않습니다.",
        vi: "Chưa hỗ trợ nhập bằng giọng nói cho ngôn ngữ này.",
        ar: "الإدخال الصوتي غير متاح لهذه اللغة بعد.",
        pt: "A entrada por voz ainda não está disponível para este idioma.",
        tl: "Hindi pa available ang voice input para sa wikang ito.",
        pa: "ਇਸ ਭਾਸ਼ਾ ਲਈ ਵੌਇਸ ਇਨਪੁੱਟ ਅਜੇ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।",
        hy: "Ձայնային մուտքը այս լեզվի համար դեռ հասանելի չէ։",
        ja: "この言語では音声入力はまだ利用できません。",
        fr: "La saisie vocale n’est pas encore disponible pour cette langue.",
        am: "ለዚህ ቋንቋ የድምፅ ግብዓት ገና አይገኝም።",
        ru: "Голосовой ввод для этого языка пока недоступен.",
        uk: "Голосове введення для цієї мови ще недоступне.",
        de: "Spracheingabe ist für diese Sprache noch nicht verfügbar.",
        it: "L'inserimento vocale non è ancora disponibile per questa lingua.")

    static let textInputUnavailable = Entry(
        en: "Text input not available on this platform.",
        es: "La entrada de texto no está disponible en esta plataforma.",
        hi: "इस प्लेटफ़ॉर्म पर टेक्स्ट इनपुट उपलब्ध नहीं है।",
        gu: "આ પ્લૅટફૉર્મ પર ટેક્સ્ટ ઇનપુટ ઉપલબ્ધ નથી.",
        zh: "此平台不支持文字输入。", fa: "ورودی متنی در این پلتفرم در دسترس نیست.",
        ko: "이 플랫폼에서는 텍스트 입력을 사용할 수 없습니다.",
        vi: "Nền tảng này không hỗ trợ nhập văn bản.",
        ar: "الإدخال النصي غير متاح على هذه المنصة.",
        pt: "A introdução de texto não está disponível nesta plataforma.",
        tl: "Hindi available ang text input sa platform na ito.",
        pa: "ਇਸ ਪਲੇਟਫ਼ਾਰਮ 'ਤੇ ਟੈਕਸਟ ਇਨਪੁੱਟ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।",
        hy: "Տեքստային մուտքը այս հարթակում հասանելի չէ։",
        ja: "このプラットフォームではテキスト入力は利用できません。",
        fr: "La saisie de texte n’est pas disponible sur cette plateforme.",
        am: "የጽሑፍ ግብዓት በዚህ መድረክ ላይ አይገኝም።",
        ru: "Ввод текста на этой платформе недоступен.",
        uk: "Введення тексту на цій платформі недоступне.",
        de: "Texteingabe ist auf dieser Plattform nicht verfügbar.",
        it: "L'inserimento di testo non è disponibile su questa piattaforma.")

    static let micAccessTitle = Entry(
        en: "Microphone Access Needed", es: "Se necesita acceso al micrófono",
        hi: "माइक्रोफ़ोन एक्सेस आवश्यक है", gu: "માઇક્રોફોન ઍક્સેસ જરૂરી છે", zh: "需要麦克风权限",
        fa: "دسترسی به میکروفون لازم است", ko: "마이크 접근 권한 필요", vi: "Cần quyền truy cập micrô",
        ar: "الوصول إلى الميكروفون مطلوب", pt: "É necessário acesso ao microfone",
        tl: "Kailangan ang Access sa Mikropono", pa: "ਮਾਈਕ੍ਰੋਫ਼ੋਨ ਪਹੁੰਚ ਦੀ ਲੋੜ ਹੈ",
        hy: "Անհրաժեշտ է խոսափողի հասանելիություն", ja: "マイクへのアクセスが必要です",
        fr: "Accès au micro requis", am: "የማይክሮፎን መዳረሻ ያስፈልጋል",
        ru: "Требуется доступ к микрофону", uk: "Потрібен доступ до мікрофона",
        de: "Mikrofonzugriff erforderlich", it: "Accesso al microfono necessario")

    static let micAccessMessage = Entry(
        en: "To speak your answers, please turn on Microphone and Speech Recognition for this app in Settings.",
        es: "Para decir sus respuestas en voz alta, active el Micrófono y el Reconocimiento de voz para esta app en Ajustes.",
        hi: "अपने उत्तर बोलने के लिए, कृपया सेटिंग्स में इस ऐप के लिए माइक्रोफ़ोन और स्पीच रिकग्निशन चालू करें।",
        gu: "તમારા જવાબ બોલવા માટે, કૃપા કરીને સેટિંગ્સમાં આ ઍપ માટે માઇક્રોફોન અને સ્પીચ રેકગ્નિશન ચાલુ કરો.",
        zh: "要语音回答，请在“设置”中为此 App 开启麦克风和语音识别。",
        fa: "برای گفتن پاسخ‌هایتان، لطفاً در تنظیمات، میکروفون و تشخیص گفتار را برای این برنامه روشن کنید.",
        ko: "음성으로 답하려면 설정에서 이 앱의 마이크와 음성 인식을 켜 주세요.",
        vi: "Để nói câu trả lời, vui lòng bật Micrô và Nhận dạng giọng nói cho ứng dụng này trong Cài đặt.",
        ar: "لقول إجاباتك، يُرجى تشغيل الميكروفون والتعرّف على الكلام لهذا التطبيق من الإعدادات.",
        pt: "Para dizer as suas respostas em voz alta, ative o Microfone e o Reconhecimento de Voz para esta app nas Definições.",
        tl: "Para masabi ang iyong mga sagot, paki-on ang Microphone at Speech Recognition para sa app na ito sa Settings.",
        pa: "ਆਪਣੇ ਜਵਾਬ ਬੋਲਣ ਲਈ, ਕਿਰਪਾ ਕਰਕੇ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਇਸ ਐਪ ਲਈ ਮਾਈਕ੍ਰੋਫ਼ੋਨ ਅਤੇ ਸਪੀਚ ਰਿਕੋਗਨੀਸ਼ਨ ਚਾਲੂ ਕਰੋ।",
        hy: "Ձեր պատասխանները բարձրաձայն ասելու համար, խնդրում ենք Կարգավորումներում միացնել խոսափողը և խոսքի ճանաչումը այս հավելվածի համար։",
        ja: "声で答えるには、「設定」でこのアプリのマイクと音声認識をオンにしてください。",
        fr: "Pour dire vos réponses à voix haute, activez le micro et la reconnaissance vocale pour cette app dans Réglages.",
        am: "መልሶችዎን ለመናገር፣ እባክዎ በቅንብሮች ውስጥ ለዚህ መተግበሪያ ማይክሮፎንና የንግግር ማወቂያን ያብሩ።",
        ru: "Чтобы говорить ответы вслух, включите для этого приложения микрофон и распознавание речи в настройках.",
        uk: "Щоб промовляти відповіді, увімкніть для цього застосунку мікрофон і розпізнавання мовлення в налаштуваннях.",
        de: "Um Ihre Antworten zu sprechen, aktivieren Sie in den Einstellungen für diese App „Mikrofon“ und „Spracherkennung“.",
        it: "Per dire a voce le sue risposte, attivi Microfono e Riconoscimento vocale per questa app in Impostazioni.")

    static let openSettings = Entry(
        en: "Open Settings", es: "Abrir Ajustes", hi: "सेटिंग्स खोलें", gu: "સેટિંગ્સ ખોલો",
        zh: "打开设置", fa: "باز کردن تنظیمات", ko: "설정 열기", vi: "Mở Cài đặt", ar: "فتح الإعدادات",
        pt: "Abrir Definições", tl: "Buksan ang Settings", pa: "ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ",
        hy: "Բացել Կարգավորումները", ja: "設定を開く", fr: "Ouvrir les Réglages", am: "ቅንብሮችን ክፈት",
        ru: "Открыть настройки", uk: "Відкрити налаштування", de: "Einstellungen öffnen",
        it: "Apri Impostazioni")

    static let notNow = Entry(
        en: "Not Now", es: "Ahora no", hi: "अभी नहीं", gu: "હમણાં નહીં", zh: "暂不", fa: "الآن نه",
        ko: "나중에", vi: "Để sau", ar: "ليس الآن", pt: "Agora não", tl: "Mamaya na lang",
        pa: "ਹੁਣ ਨਹੀਂ", hy: "Հիմա ոչ", ja: "今はしない", fr: "Pas maintenant", am: "አሁን አይደለም",
        ru: "Не сейчас", uk: "Не зараз", de: "Nicht jetzt", it: "Non ora")

    static let done = Entry(
        en: "Done", es: "Listo", hi: "हो गया", gu: "થઈ ગયું", zh: "完成", fa: "تمام", ko: "완료",
        vi: "Xong", ar: "تم", pt: "Concluído", tl: "Tapos na", pa: "ਹੋ ਗਿਆ", hy: "Պատրաստ է",
        ja: "完了", fr: "Terminé", am: "ተጠናቋል", ru: "Готово", uk: "Готово", de: "Fertig", it: "Fine")

    // MARK: - tvOS exercise and completion screens

    /// "Score: {n}/{m}" with `{n}` and `{m}` placeholders.
    static let scoreFormat = Entry(
        en: "Score: {n}/{m}", es: "Puntuación: {n}/{m}", hi: "स्कोर: {n}/{m}", gu: "સ્કોર: {n}/{m}",
        zh: "得分：{n}/{m}", fa: "امتیاز: {n}/{m}", ko: "점수: {n}/{m}", vi: "Điểm: {n}/{m}",
        ar: "النتيجة: {n}/{m}", pt: "Pontuação: {n}/{m}", tl: "Puntos: {n}/{m}", pa: "ਸਕੋਰ: {n}/{m}",
        hy: "Միավոր՝ {n}/{m}", ja: "スコア：{n}/{m}", fr: "Score : {n}/{m}", am: "ውጤት፦ {n}/{m}",
        ru: "Результат: {n}/{m}", uk: "Результат: {n}/{m}", de: "Punkte: {n}/{m}",
        it: "Punteggio: {n}/{m}")

    static func score(_ n: Int, of m: Int) -> String {
        scoreFormat.text
            .replacingOccurrences(of: "{n}", with: String(n))
            .replacingOccurrences(of: "{m}", with: String(m))
    }

    static let replay = Entry(
        en: "Replay", es: "Repetir", hi: "फिर से सुनें", gu: "ફરી સાંભળો", zh: "重播", fa: "پخش دوباره",
        ko: "다시 듣기", vi: "Phát lại", ar: "إعادة التشغيل", pt: "Repetir", tl: "I-replay",
        pa: "ਦੁਬਾਰਾ ਸੁਣੋ", hy: "Կրկնել", ja: "もう一度聞く", fr: "Réécouter", am: "እንደገና አጫውት",
        ru: "Повторить", uk: "Повторити", de: "Wiederholen", it: "Riascolta")

    static let yourScore = Entry(
        en: "Your Score", es: "Su puntuación", hi: "आपका स्कोर", gu: "તમારો સ્કોર", zh: "您的得分",
        fa: "امتیاز شما", ko: "내 점수", vi: "Điểm của bạn", ar: "نتيجتك", pt: "A sua pontuação",
        tl: "Ang Iyong Puntos", pa: "ਤੁਹਾਡਾ ਸਕੋਰ", hy: "Ձեր միավորը", ja: "あなたのスコア",
        fr: "Votre score", am: "ውጤትዎ", ru: "Ваш результат", uk: "Ваш результат",
        de: "Ihre Punktzahl", it: "Il suo punteggio")

    static let newSession = Entry(
        en: "New Session", es: "Nueva Sesión", hi: "नया सत्र", gu: "નવું સત્ર", zh: "新练习",
        fa: "تمرین جدید", ko: "새 세션", vi: "Buổi mới", ar: "جلسة جديدة", pt: "Nova Sessão",
        tl: "Bagong Session", pa: "ਨਵਾਂ ਅਭਿਆਸ", hy: "Նոր Սեսիա", ja: "新しいセッション",
        fr: "Nouvelle session", am: "አዲስ ክፍለ-ጊዜ", ru: "Новое занятие", uk: "Нове заняття",
        de: "Neue Einheit", it: "Nuova sessione")

    static let changeActivity = Entry(
        en: "Change Activity", es: "Cambiar actividad", hi: "गतिविधि बदलें", gu: "પ્રવૃત્તિ બદલો",
        zh: "更换活动", fa: "تغییر فعالیت", ko: "활동 변경", vi: "Đổi hoạt động", ar: "تغيير النشاط",
        pt: "Mudar de atividade", tl: "Palitan ang Aktibidad", pa: "ਗਤੀਵਿਧੀ ਬਦਲੋ",
        hy: "Փոխել գործունեությունը", ja: "アクティビティを変更", fr: "Changer d’activité",
        am: "እንቅስቃሴ ቀይር", ru: "Сменить задание", uk: "Змінити завдання",
        de: "Aktivität wechseln", it: "Cambia attività")

    static let tagline = Entry(
        en: "Clarity — Language & Memory", es: "Clarity — Lenguaje y memoria",
        hi: "Clarity — भाषा और स्मृति", gu: "Clarity — ભાષા અને સ્મૃતિ", zh: "Clarity — 语言与记忆",
        fa: "Clarity — زبان و حافظه", ko: "Clarity — 언어와 기억", vi: "Clarity — Ngôn ngữ & Trí nhớ",
        ar: "Clarity — اللغة والذاكرة", pt: "Clarity — Linguagem e memória",
        tl: "Clarity — Wika at Memorya", pa: "Clarity — ਭਾਸ਼ਾ ਅਤੇ ਯਾਦਦਾਸ਼ਤ",
        hy: "Clarity — Լեզու և հիշողություն", ja: "Clarity — 言語と記憶", fr: "Clarity — Langage et mémoire",
        am: "Clarity — ቋንቋና ትውስታ", ru: "Clarity — речь и память", uk: "Clarity — мова і пам’ять",
        de: "Clarity — Sprache & Gedächtnis", it: "Clarity — Linguaggio e memoria")

    // MARK: - Exercise type tags (tvOS)

    private static let typeMultipleChoice = Entry(
        en: "Multiple Choice", es: "Opción múltiple", hi: "बहुविकल्पीय", gu: "બહુવિકલ્પ", zh: "选择题",
        fa: "چندگزینه‌ای", ko: "객관식", vi: "Trắc nghiệm", ar: "اختيار من متعدد", pt: "Escolha múltipla",
        tl: "Maraming Pagpipilian", pa: "ਬਹੁ-ਚੋਣ", hy: "Բազմակի ընտրություն", ja: "選択問題",
        fr: "Choix multiple", am: "ብዙ ምርጫ", ru: "Выбор ответа", uk: "Вибір відповіді",
        de: "Auswahlfrage", it: "Scelta multipla")
    private static let typeComparison = Entry(
        en: "Best Value", es: "Mejor valor", hi: "सबसे अच्छा मूल्य", gu: "શ્રેષ્ઠ મૂલ્ય", zh: "更优选择",
        fa: "بهترین ارزش", ko: "더 나은 가치", vi: "Giá trị tốt nhất", ar: "الأفضل قيمة", pt: "Melhor valor",
        tl: "Pinakamahusay na Halaga", pa: "ਸਭ ਤੋਂ ਵਧੀਆ ਮੁੱਲ", hy: "Լավագույն արժեք", ja: "お得な方",
        fr: "Meilleur choix", am: "ምርጥ ዋጋ", ru: "Лучший вариант", uk: "Найкращий варіант",
        de: "Bester Wert", it: "Miglior valore")
    private static let typeYesNo = Entry(
        en: "Yes or No", es: "Sí o No", hi: "हाँ या नहीं", gu: "હા કે ના", zh: "是或否", fa: "بله یا خیر",
        ko: "예 또는 아니요", vi: "Có hoặc Không", ar: "نعم أو لا", pt: "Sim ou Não", tl: "Oo o Hindi",
        pa: "ਹਾਂ ਜਾਂ ਨਹੀਂ", hy: "Այո կամ ոչ", ja: "はい・いいえ", fr: "Oui ou non", am: "አዎ ወይም አይደለም",
        ru: "Да или нет", uk: "Так чи ні", de: "Ja oder Nein", it: "Sì o No")
    private static let typeFactOrOpinion = Entry(
        en: "Fact or Opinion", es: "Hecho u opinión", hi: "तथ्य या राय", gu: "હકીકત કે અભિપ્રાય",
        zh: "事实或观点", fa: "واقعیت یا نظر", ko: "사실 또는 의견", vi: "Sự thật hay ý kiến",
        ar: "حقيقة أم رأي", pt: "Facto ou opinião", tl: "Katotohanan o Opinyon",
        pa: "ਤੱਥ ਜਾਂ ਰਾਏ", hy: "Փաստ կամ կարծիք", ja: "事実か意見か", fr: "Fait ou opinion",
        am: "እውነታ ወይም አስተያየት", ru: "Факт или мнение", uk: "Факт чи думка",
        de: "Tatsache oder Meinung", it: "Fatto o opinione")
    private static let typeSentenceCompletion = Entry(
        en: "Fill in the Blank", es: "Complete el espacio", hi: "रिक्त स्थान भरें", gu: "ખાલી જગ્યા પૂરો",
        zh: "填空", fa: "جای خالی را پر کنید", ko: "빈칸 채우기", vi: "Điền vào chỗ trống",
        ar: "أكمل الفراغ", pt: "Preencher o espaço", tl: "Punan ang Patlang", pa: "ਖ਼ਾਲੀ ਥਾਂ ਭਰੋ",
        hy: "Լրացրեք բացը", ja: "空欄を埋める", fr: "Phrase à compléter", am: "ባዶውን ሙላ",
        ru: "Вставьте пропущенное", uk: "Вставте пропущене", de: "Lückentext",
        it: "Completa la frase")
    private static let typeAnalogy = Entry(
        en: "Analogy", es: "Analogía", hi: "सादृश्य", gu: "સામ્ય", zh: "类比", fa: "تشبیه", ko: "유추",
        vi: "Phép loại suy", ar: "تناظر", pt: "Analogia", tl: "Analohiya", pa: "ਸਮਾਨਤਾ", hy: "Համեմատություն",
        ja: "類推", fr: "Analogie", am: "ምሳሌያዊ ንጽጽር", ru: "Аналогия", uk: "Аналогія",
        de: "Analogie", it: "Analogia")
    private static let typeHomonym = Entry(
        en: "Homonym", es: "Homónimo", hi: "समरूप शब्द", gu: "સમાન ઉચ્ચારવાળા શબ્દો", zh: "同音词",
        fa: "هم‌آوا", ko: "동음이의어", vi: "Từ đồng âm", ar: "متجانسات", pt: "Homónimo",
        tl: "Homonym", pa: "ਸਮਰੂਪ ਸ਼ਬਦ", hy: "Համանուն", ja: "同音異義語", fr: "Homonyme",
        am: "ተመሳሳይ ድምፅ ቃላት", ru: "Омоним", uk: "Омонім", de: "Homonym", it: "Omonimo")
    private static let typeMatching = Entry(
        en: "Matching", es: "Emparejar", hi: "मिलान", gu: "જોડણી", zh: "配对", fa: "تطبیق",
        ko: "짝 맞추기", vi: "Ghép đôi", ar: "مطابقة", pt: "Associação", tl: "Pagtutugma",
        pa: "ਮੇਲ", hy: "Համապատասխանեցում", ja: "組み合わせ", fr: "Association", am: "ማጣመር",
        ru: "Соответствие", uk: "Відповідність", de: "Zuordnung", it: "Abbinamento")
    private static let typeCategory = Entry(
        en: "Category", es: "Categoría", hi: "श्रेणी", gu: "શ્રેણી", zh: "分类", fa: "دسته‌بندی",
        ko: "범주", vi: "Phân loại", ar: "الفئة", pt: "Categoria", tl: "Kategorya", pa: "ਸ਼੍ਰੇਣੀ",
        hy: "Կատեգորիա", ja: "カテゴリー", fr: "Catégorie", am: "ምድብ", ru: "Категория",
        uk: "Категорія", de: "Kategorie", it: "Categoria")
    private static let typeOpenEnded = Entry(
        en: "Open Ended", es: "Respuesta abierta", hi: "खुला उत्तर", gu: "ખુલ્લો જવાબ", zh: "开放式问题",
        fa: "پاسخ باز", ko: "자유 응답", vi: "Câu hỏi mở", ar: "سؤال مفتوح", pt: "Resposta aberta",
        tl: "Bukas na Sagot", pa: "ਖੁੱਲ੍ਹਾ ਜਵਾਬ", hy: "Բաց հարց", ja: "自由回答", fr: "Réponse libre",
        am: "ክፍት መልስ", ru: "Свободный ответ", uk: "Вільна відповідь", de: "Offene Frage",
        it: "Risposta aperta")
    private static let typeSequencing = Entry(
        en: "Sequencing", es: "Ordenar la secuencia", hi: "क्रम लगाना", gu: "ક્રમમાં ગોઠવવું", zh: "排序",
        fa: "ترتیب‌دهی", ko: "순서 배열", vi: "Sắp xếp thứ tự", ar: "ترتيب التسلسل", pt: "Sequenciação",
        tl: "Pagkakasunod-sunod", pa: "ਕ੍ਰਮ ਬਣਾਉਣਾ", hy: "Հերթականություն", ja: "順序づけ",
        fr: "Mise en ordre", am: "ቅደም ተከተል", ru: "Расстановка по порядку", uk: "Розташування за порядком",
        de: "Reihenfolge", it: "Sequenza")
    private static let typeMinimalPairs = Entry(
        en: "Minimal Pairs", es: "Pares mínimos", hi: "न्यूनतम युग्म", gu: "ન્યૂનતમ જોડીઓ", zh: "最小对立词",
        fa: "جفت‌های کمینه", ko: "최소 대립쌍", vi: "Cặp tối thiểu", ar: "الأزواج الصغرى",
        pt: "Pares mínimos", tl: "Minimal Pairs", pa: "ਨਿਊਨਤਮ ਜੋੜੇ", hy: "Նվազագույն զույգեր",
        ja: "ミニマルペア", fr: "Paires minimales", am: "አነስተኛ ጥንዶች", ru: "Минимальные пары",
        uk: "Мінімальні пари", de: "Minimalpaare", it: "Coppie minime")

    static func exerciseTypeLabel(_ type: ExerciseType) -> Entry {
        switch type {
        case .multipleChoice: return typeMultipleChoice
        case .comparison: return typeComparison
        case .yesNo: return typeYesNo
        case .factOrOpinion: return typeFactOrOpinion
        case .sentenceCompletion: return typeSentenceCompletion
        case .analogyChoice: return typeAnalogy
        case .homonym: return typeHomonym
        case .matching: return typeMatching
        case .categoryCrossOut: return typeCategory
        case .openEnded: return typeOpenEnded
        case .sequencing: return typeSequencing
        case .minimalPairs: return typeMinimalPairs
        }
    }

    // MARK: - Plural-aware strings (the count is drawn separately, in front)

    private static let daysInARowOne = Entry(
        en: "day in a row", es: "día seguido", hi: "दिन लगातार", gu: "દિવસ સળંગ", zh: "天连续",
        fa: "روز متوالی", ko: "일 연속", vi: "ngày liên tiếp", ar: "يوم متتالٍ", pt: "dia seguido",
        tl: "araw na sunod-sunod", pa: "ਦਿਨ ਲਗਾਤਾਰ", hy: "օր անընդմեջ", ja: "日連続", fr: "jour d’affilée",
        am: "ተከታታይ ቀን", ru: "дн. подряд", uk: "дн. поспіль", de: "Tag in Folge",
        it: "giorno consecutivo")
    private static let daysInARowOther = Entry(
        en: "days in a row", es: "días seguidos", hi: "दिन लगातार", gu: "દિવસ સળંગ", zh: "天连续",
        fa: "روز متوالی", ko: "일 연속", vi: "ngày liên tiếp", ar: "أيام متتالية", pt: "dias seguidos",
        tl: "araw na sunod-sunod", pa: "ਦਿਨ ਲਗਾਤਾਰ", hy: "օր անընդմեջ", ja: "日連続", fr: "jours d’affilée",
        am: "ተከታታይ ቀናት", ru: "дн. подряд", uk: "дн. поспіль", de: "Tage in Folge",
        it: "giorni consecutivi")

    /// Text that follows the day count, e.g. "1 Tag in Folge" / "5 Tage in Folge".
    static func daysInARow(_ n: Int) -> String {
        (n == 1 ? daysInARowOne : daysInARowOther).text
    }

    private static let personalBestOne = Entry(
        en: "Personal Best: {n} day", es: "Mejor marca: {n} día", hi: "सर्वश्रेष्ठ: {n} दिन",
        gu: "શ્રેષ્ઠ: {n} દિવસ", zh: "个人最佳：{n} 天", fa: "بهترین رکورد: {n} روز",
        ko: "개인 최고 기록: {n}일", vi: "Kỷ lục cá nhân: {n} ngày", ar: "أفضل رقم: {n} يوم",
        pt: "Melhor marca: {n} dia", tl: "Pinakamahusay: {n} araw", pa: "ਸਭ ਤੋਂ ਵਧੀਆ: {n} ਦਿਨ",
        hy: "Լավագույն արդյունքը՝ {n} օր", ja: "自己ベスト：{n}日", fr: "Meilleure série : {n} jour",
        am: "ምርጡ፦ {n} ቀን", ru: "Лучшая серия: {n} дн.", uk: "Найкраща серія: {n} дн.",
        de: "Persönlicher Bestwert: {n} Tag", it: "Record personale: {n} giorno")
    private static let personalBestOther = Entry(
        en: "Personal Best: {n} days", es: "Mejor marca: {n} días", hi: "सर्वश्रेष्ठ: {n} दिन",
        gu: "શ્રેષ્ઠ: {n} દિવસ", zh: "个人最佳：{n} 天", fa: "بهترین رکورد: {n} روز",
        ko: "개인 최고 기록: {n}일", vi: "Kỷ lục cá nhân: {n} ngày", ar: "أفضل رقم: {n} أيام",
        pt: "Melhor marca: {n} dias", tl: "Pinakamahusay: {n} araw", pa: "ਸਭ ਤੋਂ ਵਧੀਆ: {n} ਦਿਨ",
        hy: "Լավագույն արդյունքը՝ {n} օր", ja: "自己ベスト：{n}日", fr: "Meilleure série : {n} jours",
        am: "ምርጡ፦ {n} ቀናት", ru: "Лучшая серия: {n} дн.", uk: "Найкраща серія: {n} дн.",
        de: "Persönlicher Bestwert: {n} Tage", it: "Record personale: {n} giorni")

    static func personalBestDays(_ n: Int) -> String {
        (n == 1 ? personalBestOne : personalBestOther).text
            .replacingOccurrences(of: "{n}", with: String(n))
    }

    // MARK: - Registry (used by the unit tests)

    /// Every entry, with a name, so tests can check completeness for all languages.
    static var allEntries: [(name: String, entry: Entry)] {
        [("nextQuestion", nextQuestion), ("skipArrow", skipArrow), ("tryAgain", tryAgain),
         ("checkOrder", checkOrder), ("availablePositions", availablePositions),
         ("correctStepsSequence", correctStepsSequence), ("rememberTheseWords", rememberTheseWords),
         ("ready", ready), ("typeYourAnswer", typeYourAnswer), ("clear", clear),
         ("modelAnswer", modelAnswer), ("showAnswer", showAnswer), ("hideAnswer", hideAnswer),
         ("speakYourAnswer", speakYourAnswer), ("listeningTapToStop", listeningTapToStop),
         ("voiceUnavailable", voiceUnavailable), ("textInputUnavailable", textInputUnavailable),
         ("micAccessTitle", micAccessTitle), ("micAccessMessage", micAccessMessage),
         ("openSettings", openSettings), ("notNow", notNow), ("done", done),
         ("scoreFormat", scoreFormat), ("replay", replay), ("yourScore", yourScore),
         ("newSession", newSession), ("changeActivity", changeActivity), ("tagline", tagline),
         ("daysInARowOne", daysInARowOne), ("daysInARowOther", daysInARowOther),
         ("personalBestOne", personalBestOne), ("personalBestOther", personalBestOther)]
        + ExerciseType.allCases.map { ("type.\($0)", exerciseTypeLabel($0)) }
    }
}
