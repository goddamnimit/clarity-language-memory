import Foundation

struct FarsiLanguageExerciseData {

    static let allExercises: [Exercise] = [
        categoryCrossOutEasy,
        categoryCrossOutHard,
        proverbCompletion,
        synonymsEasy,
        synonymsHard,
        antonymsEasy,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencing
    ]

    // MARK: - Exercise 1: Category Cross-Out — Easy (30 items)
    private static let categoryCrossOutEasy = Exercise(
        id: UUID(),
        title: "دسته‌بندی — ساده",
        instructions: "کلمه‌ای را انتخاب کنید که در گروه جای نمی‌گیرد.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "سیب (sib) | موز (moz) | هویج (havij) | پرتقال (porteqāl)", options: ["سیب (sib)", "موز (moz)", "هویج (havij)", "پرتقال (porteqāl)"], correctAnswer: "هویج (havij)", explanation: "سیب، موز و پرتقال میوه هستند؛ هویج سبزی است."),
            ExerciseItem(id: UUID(), prompt: "گربه (gorbe) | سگ (sag) | اسب (asb) | عقاب (oqāb)", options: ["گربه (gorbe)", "سگ (sag)", "اسب (asb)", "عقاب (oqāb)"], correctAnswer: "عقاب (oqāb)", explanation: "گربه، سگ و اسب پستاندار هستند؛ عقاب یک پرنده است."),
            ExerciseItem(id: UUID(), prompt: "قرمز (qermez) | آبی (ābi) | سبز (sabz) | صندلی (sandali)", options: ["قرمز (qermez)", "آبی (ābi)", "سبز (sabz)", "صندلی (sandali)"], correctAnswer: "صندلی (sandali)", explanation: "قرمز، آبی و سبز رنگ هستند؛ صندلی یک وسیله مبلمان است."),
            ExerciseItem(id: UUID(), prompt: "برنج (berenj) | نان (nān) | ماکارونی (mākkāroni) | چای (chāy)", options: ["برنج (berenj)", "نان (nān)", "ماکارونی (mākkāroni)", "چای (chāy)"], correctAnswer: "چای (chāy)", explanation: "برنج، نان و ماکارونی خوراکی هستند؛ چای یک نوشیدنی است."),
            ExerciseItem(id: UUID(), prompt: "تهران (Tehrān) | اصفهان (Esfahān) | شیراز (Shirāz) | آلمان (Ālmān)", options: ["تهران (Tehrān)", "اصفهان (Esfahān)", "شیراز (Shirāz)", "آلمان (Ālmān)"], correctAnswer: "آلمان (Ālmān)", explanation: "تهران، اصفهان و شیراز شهرهای ایران هستند؛ آلمان یک کشور است."),
            ExerciseItem(id: UUID(), prompt: "دست (dast) | پا (pā) | چشم (cheshm) | کتاب (ketāb)", options: ["دست (dast)", "پا (pā)", "چشم (cheshm)", "کتاب (ketāb)"], correctAnswer: "کتاب (ketāb)", explanation: "دست، پا و چشم اعضای بدن هستند؛ کتاب یک وسیله است."),
            ExerciseItem(id: UUID(), prompt: "بهار (bahār) | تابستان (tābestan) | پاییز (pāyiz) | دوشنبه (doshanbe)", options: ["بهار (bahār)", "تابستان (tābestan)", "پاییز (pāyiz)", "دوشنبه (doshanbe)"], correctAnswer: "دوشنبه (doshanbe)", explanation: "بهار، تابستان و پاییز فصل هستند؛ دوشنبه یک روز هفته است."),
            ExerciseItem(id: UUID(), prompt: "دکتر (doktor) | معلم (mo'allem) | راننده (rānande) | بیمارستان (bimārestān)", options: ["دکتر (doktor)", "معلم (mo'allem)", "راننده (rānande)", "بیمارستان (bimārestān)"], correctAnswer: "بیمارستان (bimārestān)", explanation: "دکتر، معلم و راننده شغل هستند؛ بیمارستان یک مکان است."),
            ExerciseItem(id: UUID(), prompt: "ماشین (māshin) | هواپیما (havāpeymā) | قطار (qatār) | خیابان (khiyābān)", options: ["ماشین (māshin)", "هواپیما (havāpeymā)", "قطار (qatār)", "خیابان (khiyābān)"], correctAnswer: "خیابان (khiyābān)", explanation: "ماشین، هواپیما و قطار وسیله نقلیه هستند؛ خیابان یک مکان است."),
            ExerciseItem(id: UUID(), prompt: "قاشق (qāshoq) | چنگال (changāl) | کارد (kārd) | میز (miz)", options: ["قاشق (qāshoq)", "چنگال (changāl)", "کارد (kārd)", "میز (miz)"], correctAnswer: "میز (miz)", explanation: "قاشق، چنگال و کارد ظروف غذاخوری هستند؛ میز یک وسیله مبلمان است."),
            ExerciseItem(id: UUID(), prompt: "یک‌شنبه (yekshanbe) | دوشنبه (doshanbe) | سه‌شنبه (seshanbe) | فروردین (Farvardin)", options: ["یک‌شنبه (yekshanbe)", "دوشنبه (doshanbe)", "سه‌شنبه (seshanbe)", "فروردین (Farvardin)"], correctAnswer: "فروردین (Farvardin)", explanation: "یک‌شنبه، دوشنبه و سه‌شنبه روزهای هفته هستند؛ فروردین یک ماه ایرانی است."),
            ExerciseItem(id: UUID(), prompt: "شیر (shir) | آب (āb) | آبمیوه (āb-mive) | نمک (namak)", options: ["شیر (shir)", "آب (āb)", "آبمیوه (āb-mive)", "نمک (namak)"], correctAnswer: "نمک (namak)", explanation: "شیر، آب و آبمیوه نوشیدنی هستند؛ نمک یک چاشنی است."),
            ExerciseItem(id: UUID(), prompt: "پیراهن (pirāhan) | شلوار (shalvār) | کفش (kafsh) | آشپزخانه (āshpazkhāne)", options: ["پیراهن (pirāhan)", "شلوار (shalvār)", "کفش (kafsh)", "آشپزخانه (āshpazkhāne)"], correctAnswer: "آشپزخانه (āshpazkhāne)", explanation: "پیراهن، شلوار و کفش پوشاک هستند؛ آشپزخانه یک اتاق است."),
            ExerciseItem(id: UUID(), prompt: "گل رز (gol-e raz) | لاله (lāle) | نسترن (nastaran) | بلوط (balut)", options: ["گل رز (gol-e raz)", "لاله (lāle)", "نسترن (nastaran)", "بلوط (balut)"], correctAnswer: "بلوط (balut)", explanation: "گل رز، لاله و نسترن گل هستند؛ بلوط یک درخت است."),
            ExerciseItem(id: UUID(), prompt: "حافظ (Hāfez) | رومی (Rumi) | فردوسی (Ferdowsi) | داوینچی (dāvinchi)", options: ["حافظ (Hāfez)", "رومی (Rumi)", "فردوسی (Ferdowsi)", "داوینچی (dāvinchi)"], correctAnswer: "داوینچی (dāvinchi)", explanation: "حافظ، رومی و فردوسی شاعر هستند؛ داوینچی یک هنرمند ایتالیایی بود."),
            ExerciseItem(id: UUID(), prompt: "مداد (medād) | خودکار (khodkār) | ماژیک (māzhik) | صابون (sābun)", options: ["مداد (medād)", "خودکار (khodkār)", "ماژیک (māzhik)", "صابون (sābun)"], correctAnswer: "صابون (sābun)", explanation: "مداد، خودکار و ماژیک وسیله نوشتن هستند؛ صابون یک وسیله بهداشتی است."),
            ExerciseItem(id: UUID(), prompt: "شتر (shotor) | شیر (shir) | فیل (fil) | کبوتر (kabutar)", options: ["شتر (shotor)", "شیر (shir)", "فیل (fil)", "کبوتر (kabutar)"], correctAnswer: "کبوتر (kabutar)", explanation: "شتر، شیر و فیل پستاندار هستند؛ کبوتر یک پرنده است."),
            ExerciseItem(id: UUID(), prompt: "خانه (khāne) | مدرسه (madrase) | مسجد (masjed) | باران (bārān)", options: ["خانه (khāne)", "مدرسه (madrase)", "مسجد (masjed)", "باران (bārān)"], correctAnswer: "باران (bārān)", explanation: "خانه، مدرسه و مسجد ساختمان هستند؛ باران یک پدیده جوی است."),
            ExerciseItem(id: UUID(), prompt: "شادی (shādi) | غم (gham) | خشم (khashm) | کوه (kuh)", options: ["شادی (shādi)", "غم (gham)", "خشم (khashm)", "کوه (kuh)"], correctAnswer: "کوه (kuh)", explanation: "شادی، غم و خشم احساس هستند؛ کوه یک پدیده طبیعی است."),
            ExerciseItem(id: UUID(), prompt: "پنیر (panir) | ماست (māst) | کره (kare) | نارنج (nāranj)", options: ["پنیر (panir)", "ماست (māst)", "کره (kare)", "نارنج (nāranj)"], correctAnswer: "نارنج (nāranj)", explanation: "پنیر، ماست و کره لبنیات هستند؛ نارنج یک میوه است."),
            ExerciseItem(id: UUID(), prompt: "پیانو (piāno) | ویولن (violen) | تار (tār) | طبل (tabl)", options: ["پیانو (piāno)", "ویولن (violen)", "تار (tār)", "طبل (tabl)"], correctAnswer: "طبل (tabl)", explanation: "پیانو، ویولن و تار سازهای زهی هستند؛ طبل یک ساز کوبه‌ای است."),
            ExerciseItem(id: UUID(), prompt: "لس‌آنجلس (Los Angeles) | سان‌فرانسیسکو (San Francisco) | سن‌دیگو (San Diego) | نیویورک (New York)", options: ["لس‌آنجلس (Los Angeles)", "سان‌فرانسیسکو (San Francisco)", "سن‌دیگو (San Diego)", "نیویورک (New York)"], correctAnswer: "نیویورک (New York)", explanation: "لس‌آنجلس، سان‌فرانسیسکو و سن‌دیگو در ایالت کالیفرنیا هستند؛ نیویورک در ایالت نیویورک است."),
            ExerciseItem(id: UUID(), prompt: "صبحانه (sobhāne) | ناهار (nāhār) | شام (shām) | خواب (khāb)", options: ["صبحانه (sobhāne)", "ناهار (nāhār)", "شام (shām)", "خواب (khāb)"], correctAnswer: "خواب (khāb)", explanation: "صبحانه، ناهار و شام وعده‌های غذایی هستند؛ خواب یک وعده غذایی نیست."),
            ExerciseItem(id: UUID(), prompt: "قرمز (qermez) | زرد (zard) | آبی (ābi) | شور (shur)", options: ["قرمز (qermez)", "زرد (zard)", "آبی (ābi)", "شور (shur)"], correctAnswer: "شور (shur)", explanation: "قرمز، زرد و آبی رنگ هستند؛ شور یک مزه است."),
            ExerciseItem(id: UUID(), prompt: "سرماخوردگی (sarmā-khordegi) | تب (tab) | سردرد (sar-dard) | شادی (shādi)", options: ["سرماخوردگی (sarmā-khordegi)", "تب (tab)", "سردرد (sar-dard)", "شادی (shādi)"], correctAnswer: "شادی (shādi)", explanation: "سرماخوردگی، تب و سردرد نشانه بیماری هستند؛ شادی یک احساس است."),
            ExerciseItem(id: UUID(), prompt: "گوشت (gusht) | مرغ (morgh) | ماهی (māhi) | تخم‌مرغ (tokhm-morgh)", options: ["گوشت (gusht)", "مرغ (morgh)", "ماهی (māhi)", "تخم‌مرغ (tokhm-morgh)"], correctAnswer: "تخم‌مرغ (tokhm-morgh)", explanation: "گوشت، مرغ و ماهی منابع پروتئین اصلی هستند؛ تخم‌مرغ در دسته دیگری از خوراکی‌ها قرار می‌گیرد."),
            ExerciseItem(id: UUID(), prompt: "نوروز (Nowruz) | یلدا (Yaldā) | عید فطر (Eid-e Fetr) | دوشنبه (doshanbe)", options: ["نوروز (Nowruz)", "یلدا (Yaldā)", "عید فطر (Eid-e Fetr)", "دوشنبه (doshanbe)"], correctAnswer: "دوشنبه (doshanbe)", explanation: "نوروز، یلدا و عید فطر جشن و مناسبت هستند؛ دوشنبه یک روز هفته است."),
            ExerciseItem(id: UUID(), prompt: "کتاب (ketāb) | روزنامه (ruznāme) | مجله (majalle) | تلفن (telefon)", options: ["کتاب (ketāb)", "روزنامه (ruznāme)", "مجله (majalle)", "تلفن (telefon)"], correctAnswer: "تلفن (telefon)", explanation: "کتاب، روزنامه و مجله مطالب خواندنی هستند؛ تلفن یک وسیله ارتباطی است."),
            ExerciseItem(id: UUID(), prompt: "سرد (sard) | گرم (garm) | خنک (khanak) | تند (tond)", options: ["سرد (sard)", "گرم (garm)", "خنک (khanak)", "تند (tond)"], correctAnswer: "تند (tond)", explanation: "سرد، گرم و خنک توصیف دما هستند؛ تند سرعت یا مزه تند را توصیف می‌کند، نه دما را."),
            ExerciseItem(id: UUID(), prompt: "دریای خزر (Daryā-ye Khazar) | خلیج فارس (Khalij-e Fārs) | دریاچه ارومیه (Daryāche-ye Orumiye) | کوه دماوند (Kuh-e Damāvand)", options: ["دریای خزر (Daryā-ye Khazar)", "خلیج فارس (Khalij-e Fārs)", "دریاچه ارومیه (Daryāche-ye Orumiye)", "کوه دماوند (Kuh-e Damāvand)"], correctAnswer: "کوه دماوند (Kuh-e Damāvand)", explanation: "دریای خزر، خلیج فارس و دریاچه ارومیه پهنه‌های آبی هستند؛ کوه دماوند یک کوه است.")
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out — Hard (24 items)
    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "دسته‌بندی — دشوار",
        instructions: "کلمه‌ای را انتخاب کنید که در گروه جای نمی‌گیرد.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "حافظ (Hāfez) | سعدی (Sa'di) | فردوسی (Ferdowsi) | ابن‌سینا (Ebn-e Sinā)", options: ["حافظ (Hāfez)", "سعدی (Sa'di)", "فردوسی (Ferdowsi)", "ابن‌سینا (Ebn-e Sinā)"], correctAnswer: "ابن‌سینا (Ebn-e Sinā)", explanation: "حافظ، سعدی و فردوسی از بزرگ‌ترین شاعران زبان فارسی هستند، در حالی که ابن‌سینا پزشک و فیلسوف بود، نه شاعر."),
            ExerciseItem(id: UUID(), prompt: "نثر (nasr) | شعر (she'r) | غزل (ghazal) | سمفونی (semfoni)", options: ["نثر (nasr)", "شعر (she'r)", "غزل (ghazal)", "سمفونی (semfoni)"], correctAnswer: "سمفونی (semfoni)", explanation: "نثر، شعر و غزل انواع قالب‌های ادبی‌اند، اما سمفونی یک قالب موسیقایی است و به ادبیات مربوط نمی‌شود."),
            ExerciseItem(id: UUID(), prompt: "مثنوی (Masnavi) | شاهنامه (Shāhnāme) | بوستان (Bustān) | سه‌تار (se-tār)", options: ["مثنوی (Masnavi)", "شاهنامه (Shāhnāme)", "بوستان (Bustān)", "سه‌تار (se-tār)"], correctAnswer: "سه‌تار (se-tār)", explanation: "مثنوی، شاهنامه و بوستان آثار برجستهٔ ادبیات کلاسیک فارسی‌اند، در حالی که سه‌تار یک ساز موسیقی است."),
            ExerciseItem(id: UUID(), prompt: "تخت‌جمشید (Takht-e Jamshid) | کاخ گلستان (Kākh-e Golestān) | برج آزادی (Borj-e Āzādi) | کلیسای جامع نوتردام (Kelisā-ye Notre-Dame)", options: ["تخت‌جمشید (Takht-e Jamshid)", "کاخ گلستان (Kākh-e Golestān)", "برج آزادی (Borj-e Āzādi)", "کلیسای جامع نوتردام (Kelisā-ye Notre-Dame)"], correctAnswer: "کلیسای جامع نوتردام (Kelisā-ye Notre-Dame)", explanation: "تخت‌جمشید، کاخ گلستان و برج آزادی از بناهای تاریخی ایران‌اند، اما کلیسای جامع نوتردام در فرانسه واقع شده است."),
            ExerciseItem(id: UUID(), prompt: "غزل (ghazal) | رباعی (robā'i) | مثنوی (masnavi) | سونت (sonat)", options: ["غزل (ghazal)", "رباعی (robā'i)", "مثنوی (masnavi)", "سونت (sonat)"], correctAnswer: "سونت (sonat)", explanation: "غزل، رباعی و مثنوی از قالب‌های شعر سنتی فارسی هستند، در حالی که سونت یک قالب شعری اروپایی است."),
            ExerciseItem(id: UUID(), prompt: "قرمه‌سبزی (ghorme-sabzi) | فسنجان (fesenjan) | آش رشته (āsh-e reshte) | سوشی (sushi)", options: ["قرمه‌سبزی (ghorme-sabzi)", "فسنجان (fesenjan)", "آش رشته (āsh-e reshte)", "سوشی (sushi)"], correctAnswer: "سوشی (sushi)", explanation: "قرمه‌سبزی، فسنجان و آش رشته غذاهای سنتی ایرانی‌اند، اما سوشی از غذاهای ژاپنی است."),
            ExerciseItem(id: UUID(), prompt: "دماوند (Damāvand) | البرز (Alborz) | زاگرس (Zāgros) | آند (Ānd)", options: ["دماوند (Damāvand)", "البرز (Alborz)", "زاگرس (Zāgros)", "آند (Ānd)"], correctAnswer: "آند (Ānd)", explanation: "دماوند، البرز و زاگرس رشته‌کوه‌ها یا قله‌های واقع در ایران‌اند، در حالی که آند در قارهٔ آمریکای جنوبی قرار دارد."),
            ExerciseItem(id: UUID(), prompt: "هخامنشی (Hakhamaneshi) | ساسانی (Sāsāni) | اشکانی (Ashkāni) | عثمانی (Osmāni)", options: ["هخامنشی (Hakhamaneshi)", "ساسانی (Sāsāni)", "اشکانی (Ashkāni)", "عثمانی (Osmāni)"], correctAnswer: "عثمانی (Osmāni)", explanation: "هخامنشی، ساسانی و اشکانی سلسله‌های باستانی ایران بوده‌اند، اما عثمانی یک امپراتوری ترک بود که در آسیای صغیر شکل گرفت."),
            ExerciseItem(id: UUID(), prompt: "سبزه (sabze) | سنجد (senjed) | سیب (sib) | شمع (sham')", options: ["سبزه (sabze)", "سنجد (senjed)", "سیب (sib)", "شمع (sham')"], correctAnswer: "شمع (sham')", explanation: "سبزه، سنجد و سیب از اقلام سفرهٔ هفت‌سین نوروزی‌اند، در حالی که شمع جزو اقلام هفت‌سین به شمار نمی‌رود."),
            ExerciseItem(id: UUID(), prompt: "تهران (Tehrān) | اصفهان (Esfahān) | شیراز (Shirāz) | بغداد (Baghdād)", options: ["تهران (Tehrān)", "اصفهان (Esfahān)", "شیراز (Shirāz)", "بغداد (Baghdād)"], correctAnswer: "بغداد (Baghdād)", explanation: "تهران، اصفهان و شیراز از شهرهای مهم ایران‌اند، اما بغداد پایتخت کشور عراق است."),
            ExerciseItem(id: UUID(), prompt: "دانشگاه (dāneshgāh) | بیمارستان (bimārestān) | زندان (zendān) | درخت (derakht)", options: ["دانشگاه (dāneshgāh)", "بیمارستان (bimārestān)", "زندان (zendān)", "درخت (derakht)"], correctAnswer: "درخت (derakht)", explanation: "دانشگاه، بیمارستان و زندان ساختمان‌ها یا نهادهای اجتماعی‌اند، در حالی که درخت یک موجود گیاهی است."),
            ExerciseItem(id: UUID(), prompt: "آنتی‌بیوتیک (ānti-biyotik) | مسکن (mosaken) | ویتامین (vitāmin) | دماسنج (damāsanj)", options: ["آنتی‌بیوتیک (ānti-biyotik)", "مسکن (mosaken)", "ویتامین (vitāmin)", "دماسنج (damāsanj)"], correctAnswer: "دماسنج (damāsanj)", explanation: "آنتی‌بیوتیک، مسکن و ویتامین انواع دارو محسوب می‌شوند، اما دماسنج ابزاری پزشکی برای اندازه‌گیری است، نه دارو."),
            ExerciseItem(id: UUID(), prompt: "فوتبال (futbāl) | والیبال (vāleybāl) | شنا (shenā) | شطرنج (shatranj)", options: ["فوتبال (futbāl)", "والیبال (vāleybāl)", "شنا (shenā)", "شطرنج (shatranj)"], correctAnswer: "شطرنج (shatranj)", explanation: "فوتبال، والیبال و شنا ورزش‌های بدنی هستند، در حالی که شطرنج یک بازی فکری و تخته‌ای است."),
            ExerciseItem(id: UUID(), prompt: "اپرا (operā) | جاز (jāz) | کلاسیک (kelāsik) | مجسمه‌سازی (mojasame-sāzi)", options: ["اپرا (operā)", "جاز (jāz)", "کلاسیک (kelāsik)", "مجسمه‌سازی (mojasame-sāzi)"], correctAnswer: "مجسمه‌سازی (mojasame-sāzi)", explanation: "اپرا، جاز و کلاسیک سبک‌های موسیقی‌اند، اما مجسمه‌سازی یک هنر تجسمی است، نه شاخه‌ای از موسیقی."),
            ExerciseItem(id: UUID(), prompt: "استخوان (ostakhvān) | عضله (azale) | رگ (rag) | احساس (ehsās)", options: ["استخوان (ostakhvān)", "عضله (azale)", "رگ (rag)", "احساس (ehsās)"], correctAnswer: "احساس (ehsās)", explanation: "استخوان، عضله و رگ اجزای فیزیکی بدن هستند، در حالی که احساس یک پدیدهٔ روانی است، نه بخشی از ساختار بدن."),
            ExerciseItem(id: UUID(), prompt: "کنسولگری (konsulgari) | سفارت (sefārat) | ویزا (vizā) | آزادراه (āzādrāh)", options: ["کنسولگری (konsulgari)", "سفارت (sefārat)", "ویزا (vizā)", "آزادراه (āzādrāh)"], correctAnswer: "آزادراه (āzādrāh)", explanation: "کنسولگری، سفارت و ویزا به امور دیپلماتیک و سفر بین‌المللی مربوط‌اند، اما آزادراه صرفاً یک نوع جاده است."),
            ExerciseItem(id: UUID(), prompt: "دموکراسی (demokrāsi) | جمهوری (jomhuri) | سلطنت (saltanat) | اقتصاد (eqtesād)", options: ["دموکراسی (demokrāsi)", "جمهوری (jomhuri)", "سلطنت (saltanat)", "اقتصاد (eqtesād)"], correctAnswer: "اقتصاد (eqtesād)", explanation: "دموکراسی، جمهوری و سلطنت نظام‌های حکومتی‌اند، در حالی که اقتصاد به حوزهٔ دیگری از علوم اجتماعی تعلق دارد."),
            ExerciseItem(id: UUID(), prompt: "خورشید (khorshid) | ماه (māh) | ستاره (setāre) | ابر (abr)", options: ["خورشید (khorshid)", "ماه (māh)", "ستاره (setāre)", "ابر (abr)"], correctAnswer: "ابر (abr)", explanation: "خورشید، ماه و ستاره اجرام آسمانی‌اند، اما ابر پدیده‌ای جوّی است که در آسمان زمین شکل می‌گیرد."),
            ExerciseItem(id: UUID(), prompt: "مترجم (motarjem) | وکیل (vakil) | حسابدار (hesābdār) | قانون (qānun)", options: ["مترجم (motarjem)", "وکیل (vakil)", "حسابدار (hesābdār)", "قانون (qānun)"], correctAnswer: "قانون (qānun)", explanation: "مترجم، وکیل و حسابدار عناوین مشاغل‌اند، در حالی که قانون یک مفهوم حقوقی است، نه یک شغل."),
            ExerciseItem(id: UUID(), prompt: "تورم (tavarom) | بیکاری (bikāri) | رکود (rokud) | تعطیلات (ta'tilāt)", options: ["تورم (tavarom)", "بیکاری (bikāri)", "رکود (rokud)", "تعطیلات (ta'tilāt)"], correctAnswer: "تعطیلات (ta'tilāt)", explanation: "تورم، بیکاری و رکود مشکلات اقتصادی محسوب می‌شوند، اما تعطیلات ربطی به مسائل اقتصادی ندارد."),
            ExerciseItem(id: UUID(), prompt: "سرو (sarv) | چنار (chenār) | بید (bid) | گل محمدی (gol-e Mohammadi)", options: ["سرو (sarv)", "چنار (chenār)", "بید (bid)", "گل محمدی (gol-e Mohammadi)"], correctAnswer: "گل محمدی (gol-e Mohammadi)", explanation: "سرو، چنار و بید درختان تنومند هستند، در حالی که گل محمدی یک گل یا بوته است، نه درخت."),
            ExerciseItem(id: UUID(), prompt: "لهجه (lahje) | گویش (guyesh) | زبان (zabān) | حروف الفبا (horuf-e alefbā)", options: ["لهجه (lahje)", "گویش (guyesh)", "زبان (zabān)", "حروف الفبا (horuf-e alefbā)"], correctAnswer: "حروف الفبا (horuf-e alefbā)", explanation: "لهجه، گویش و زبان به شیوهٔ گفتار و تلفظ مربوط‌اند، اما حروف الفبا به نظام نوشتاری تعلق دارد."),
            ExerciseItem(id: UUID(), prompt: "چهارشنبه‌سوری (Chahārshanbe-Suri) | سیزده‌بدر (Sizdah-Bedar) | نوروز (Nowruz) | رمضان (Ramazān)", options: ["چهارشنبه‌سوری (Chahārshanbe-Suri)", "سیزده‌بدر (Sizdah-Bedar)", "نوروز (Nowruz)", "رمضان (Ramazān)"], correctAnswer: "رمضان (Ramazān)", explanation: "چهارشنبه‌سوری، سیزده‌بدر و نوروز آیین‌های باستانی جشن سال نوی ایرانی‌اند، در حالی که رمضان یک ماه مذهبی اسلامی بر پایهٔ تقویم قمری است."),
            ExerciseItem(id: UUID(), prompt: "خمینی (Khomeyni) | مصدق (Mosaddeq) | کیارستمی (Kiyārostami) | داریوش (Dāriush)", options: ["خمینی (Khomeyni)", "مصدق (Mosaddeq)", "کیارستمی (Kiyārostami)", "داریوش (Dāriush)"], correctAnswer: "کیارستمی (Kiyārostami)", explanation: "خمینی، مصدق و داریوش چهره‌های سیاسی و تاریخی ایران بوده‌اند، اما عباس کیارستمی یک کارگردان سینما بود، نه سیاستمدار.")
        ]
    )

    // MARK: - Exercise 3: Proverb Completion — ضرب‌المثل (20 items)
    // 🚩 FLAG: Full native speaker review recommended for all items.
    private static let proverbCompletion = Exercise(
        id: UUID(),
        title: "ضرب‌المثل",
        instructions: "ضرب‌المثل را کامل کنید.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "هر که بامش بیش، ...", options: ["برفش بیشتر است", "خانه‌اش بزرگ‌تر است", "ثروتش کمتر است", "دوستانش کمترند"], correctAnswer: "برفش بیشتر است", explanation: "این ضرب‌المثل به این معناست که هر که مقام یا مسئولیت بالاتری داشته باشد، بار سنگین‌تری از مشکلات و انتقادها بر دوش او خواهد بود."),
            ExerciseItem(id: UUID(), prompt: "عجله کار ...", options: ["شیطان را خوشحال می‌کند", "مردم را ناراحت می‌کند", "شیطان است", "همیشه خوب است"], correctAnswer: "شیطان است", explanation: "این ضرب‌المثل هشدار می‌دهد که تصمیم‌گیری و کار عجولانه معمولاً به نتیجهٔ بد می‌انجامد."),
            ExerciseItem(id: UUID(), prompt: "آدم عاقل دوبار ...", options: ["اشتباه می‌کند", "به یک سنگ نمی‌خورد", "غذا می‌خورد", "پول خرج می‌کند"], correctAnswer: "به یک سنگ نمی‌خورد", explanation: "این ضرب‌المثل به این معناست که فرد عاقل از اشتباهات گذشتهٔ خود درس می‌گیرد و آن را تکرار نمی‌کند."),
            ExerciseItem(id: UUID(), prompt: "دوست آن است که گیرد دست دوست، ...", options: ["در روز خوشی و شادی", "در وقت ناتوانی و درماندگی", "وقتی که پول دارد", "هنگام جشن و عروسی"], correctAnswer: "در وقت ناتوانی و درماندگی", explanation: "این عبارت که از گلستان سعدی برگرفته شده، بیان می‌کند که دوست واقعی کسی است که در روزهای سختی و ناتوانی یار انسان باشد."),
            ExerciseItem(id: UUID(), prompt: "سنگ مفت، گنجشک ...", options: ["می‌خواند", "مفت", "فرار می‌کند", "می‌میرد"], correctAnswer: "مفت", explanation: "این ضرب‌المثل دربارهٔ کسی به کار می‌رود که چون چیزی رایگان و بی‌زحمت به دست می‌آید، بدون درنگ از آن استفاده می‌کند."),
            ExerciseItem(id: UUID(), prompt: "کاچی به از هیچی، ...", options: ["ولی هیچی بهتر از کاچی است", "ولی کاچی هم خوب است", "پس شکایت نکن", "اما هیچی هم بد نیست"], correctAnswer: "ولی هیچی بهتر از کاچی است", explanation: "این ضرب‌المثل می‌گوید که داشتن چیزی اندک بهتر از نداشتن است، هرچند در ادامه با طنز یادآوری می‌کند که گاهی سادگی و قناعت ارزش بیشتری دارد."),
            ExerciseItem(id: UUID(), prompt: "هر که طاووس خواهد، ...", options: ["باید صبور باشد", "جور هندوستان باید کشید", "باید پول بدهد", "باید سفر کند"], correctAnswer: "جور هندوستان باید کشید", explanation: "این ضرب‌المثل بیان می‌کند که رسیدن به هر خواسته یا پاداش ارزشمند، مستلزم تحمل سختی و دشواری است."),
            ExerciseItem(id: UUID(), prompt: "دروغگو حافظه ...", options: ["قوی دارد", "خوبی ندارد", "ضعیفی دارد", "ندارد"], correctAnswer: "ندارد", explanation: "این ضرب‌المثل اشاره دارد به این که آدم دروغگو معمولاً حرف‌های پیشین خود را فراموش می‌کند و در دام تناقض‌گویی می‌افتد."),
            ExerciseItem(id: UUID(), prompt: "نان به نرخ روز ...", options: ["خوردن", "گران است", "پیدا می‌شود", "فروختن"], correctAnswer: "خوردن", explanation: "این اصطلاح دربارهٔ کسی به کار می‌رود که مواضع و نظرات خود را بر اساس منفعت یا شرایط روز تغییر می‌دهد."),
            ExerciseItem(id: UUID(), prompt: "آب رفته به جوی ...", options: ["دوباره می‌آید", "باز نمی‌گردد", "تمیز است", "سرد است"], correctAnswer: "باز نمی‌گردد", explanation: "این ضرب‌المثل به این معناست که کاری که انجام شده و فرصتی که از دست رفته، دیگر قابل بازگشت نیست."),
            ExerciseItem(id: UUID(), prompt: "مرغ همسایه ...", options: ["بهتر از مرغ خودت است", "غاز است", "بیشتر تخم می‌گذارد", "همیشه بزرگ‌تر است"], correctAnswer: "غاز است", explanation: "این ضرب‌المثل بیان می‌کند که انسان معمولاً دارایی و اوضاع دیگران را بهتر از خود می‌پندارد."),
            ExerciseItem(id: UUID(), prompt: "از کوزه همان برون تراود ...", options: ["که در اوست", "که آب است", "که مایع است", "که بریزی"], correctAnswer: "که در اوست", explanation: "این ضرب‌المثل می‌گوید که رفتار و گفتار هر کس بازتاب باطن و شخصیت واقعی اوست."),
            ExerciseItem(id: UUID(), prompt: "چراغی که به خانه رواست، ...", options: ["به مسجد حرام است", "به کوچه ببر", "روشن بماند", "به دیگران بده"], correctAnswer: "به مسجد حرام است", explanation: "این ضرب‌المثل به تبعیض یا رفتار دوگانه اشاره دارد؛ کاری که برای یک نفر یا مکان پذیرفتنی است، برای دیگری ممنوع شمرده می‌شود."),
            ExerciseItem(id: UUID(), prompt: "صبر و ظفر هر دو ...", options: ["با هم می‌آیند", "دوستان قدیمی‌اند", "به هم می‌رسند", "ارزش دارند"], correctAnswer: "به هم می‌رسند", explanation: "این ضرب‌المثل بیان می‌کند که پشتکار و شکیبایی سرانجام به موفقیت منجر می‌شود."),
            ExerciseItem(id: UUID(), prompt: "آفتاب همیشه ...", options: ["می‌درخشد", "زیر ابر نمی‌ماند", "طلوع می‌کند", "گرم است"], correctAnswer: "زیر ابر نمی‌ماند", explanation: "این ضرب‌المثل به این معناست که حقیقت هرچند پنهان بماند، سرانجام آشکار خواهد شد."),
            ExerciseItem(id: UUID(), prompt: "گربه را دم حجله ...", options: ["نگه دار", "می‌کشند", "ببین", "رها کن"], correctAnswer: "می‌کشند", explanation: "این ضرب‌المثل به این نکته اشاره دارد که باید کار سخت یا تعیین‌کننده را در همان لحظهٔ حساس و بدون تعلل انجام داد."),
            ExerciseItem(id: UUID(), prompt: "هر که سنگ‌اندازد به باغ مردم، ...", options: ["سنگ به خودش می‌رسد", "سنگ از او دریغ مدار", "میوه می‌خواهد", "دشمن است"], correctAnswer: "سنگ از او دریغ مدار", explanation: "این ضرب‌المثل هشدار می‌دهد کسی که به دیگران آسیب یا اذیت می‌رساند، باید منتظر واکنش مشابه از سوی آنان نیز باشد."),
            ExerciseItem(id: UUID(), prompt: "عقل سالم در ...", options: ["ذهن سالم است", "جسم سالم است", "بدن سالم است", "قلب سالم است"], correctAnswer: "بدن سالم است", explanation: "این عبارت که برگرفته از ضرب‌المثل لاتین است، بیان می‌کند که سلامت جسم زمینه‌ساز سلامت روان و ذهن است."),
            ExerciseItem(id: UUID(), prompt: "هر چه بکاری، ...", options: ["همان را درو می‌کنی", "باید آب بدهی", "ممکن است نروید", "خدا کمک می‌کند"], correctAnswer: "همان را درو می‌کنی", explanation: "این ضرب‌المثل بیان می‌کند که نتیجهٔ کارهای هر کس دقیقاً متناسب با اعمال خود اوست؛ همان‌طور که در کشاورزی محصول برداشت‌شده بستگی به بذر کاشته‌شده دارد."),
            ExerciseItem(id: UUID(), prompt: "از دست رفته را ...", options: ["باید فراموش کرد", "نمی‌توان بازگرداند", "هنوز می‌شود یافت", "دیگران می‌دانند"], correctAnswer: "نمی‌توان بازگرداند", explanation: "این ضرب‌المثل به این معناست که باید آنچه از دست رفته را پذیرفت، زیرا امکان بازگرداندن آن وجود ندارد.")
        ]
    )

    // MARK: - Exercise 4: Synonyms Easy — مترادف ساده (10 items)
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "مترادف — ساده",
        instructions: "کلمه‌ای را انتخاب کنید که هم‌معنی کلمه داده‌شده است.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «خوشحال» کدام است؟", options: ["شاد (shād)", "غمگین (ghamgin)", "خسته (khaste)", "عصبانی (asabāni)"], correctAnswer: "شاد (shād)", explanation: "Both خوشحال and شاد mean happy/joyful."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «بزرگ» کدام است؟", options: ["کوچک (kuchek)", "زیبا (zibā)", "عظیم (azim)", "سریع (sari')"], correctAnswer: "عظیم (azim)", explanation: "Both بزرگ and عظیم mean large/great."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «خانه» کدام است؟", options: ["مغازه (maghāze)", "منزل (manzel)", "مدرسه (madrase)", "بازار (bāzār)"], correctAnswer: "منزل (manzel)", explanation: "Both خانه and منزل mean home/residence."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «سریع» کدام است؟", options: ["آهسته (āheste)", "تند (tond)", "سنگین (sangin)", "دیر (dir)"], correctAnswer: "تند (tond)", explanation: "Both سریع and تند mean fast/quick."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «زیبا» کدام است؟", options: ["زشت (zesht)", "قشنگ (ghashang)", "ترسناک (tarsnāk)", "خسته‌کننده (khaste-konande)"], correctAnswer: "قشنگ (ghashang)", explanation: "Both زیبا and قشنگ mean beautiful/pretty."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «پیر» کدام است؟", options: ["جوان (javān)", "مسن (mosen)", "بیمار (bimār)", "ضعیف (za'if)"], correctAnswer: "مسن (mosen)", explanation: "Both پیر and مسن mean old/elderly in age."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «شروع کردن» کدام است؟", options: ["تمام کردن (tamām kardan)", "آغاز کردن (āghāz kardan)", "فراموش کردن (farāmush kardan)", "برگشتن (bargashtan)"], correctAnswer: "آغاز کردن (āghāz kardan)", explanation: "Both شروع کردن and آغاز کردن mean to begin/start."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «خوردن» کدام است؟", options: ["نوشیدن (nushidan)", "میل کردن (meyl kardan)", "پختن (pokhtan)", "خریدن (kharidan)"], correctAnswer: "میل کردن (meyl kardan)", explanation: "Both خوردن and میل کردن mean to eat — میل کردن is the more polite/formal form."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «راه» کدام است؟", options: ["مسیر (masir)", "دیوار (divār)", "پنجره (panjare)", "سقف (saqf)"], correctAnswer: "مسیر (masir)", explanation: "Both راه and مسیر mean road/path/route."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «دوست» کدام است؟", options: ["دشمن (doshman)", "رفیق (rafiq)", "همسایه (hamsāye)", "غریبه (gharibe)"], correctAnswer: "رفیق (rafiq)", explanation: "Both دوست and رفیق mean friend/companion — رفیق carries a warmer, more familiar tone.")
        ]
    )

    // MARK: - Exercise 5: Synonyms Hard — مترادف دشوار (10 items)
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "مترادف — دشوار",
        instructions: "کلمه‌ای را انتخاب کنید که هم‌معنی کلمه داده‌شده است.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «مشتاق» کدام است؟", options: ["بی‌تفاوت (bi-tafāvot)", "علاقه‌مند (alāqe-mand)", "ناراحت (nārāhat)", "خسته (khaste)"], correctAnswer: "علاقه‌مند (alāqe-mand)", explanation: "Both مشتاق and علاقه‌مند convey eagerness and keen interest."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «صبور» کدام است؟", options: ["شتابزده (shetābzade)", "بردبار (bordbār)", "تندخو (tondkhu)", "بی‌توجه (bi-tavajjoh)"], correctAnswer: "بردبار (bordbār)", explanation: "Both صبور and بردبار mean patient/tolerant — بردبار is the more classical/literary form."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «پنهان» کدام است؟", options: ["آشکار (āshkār)", "نهان (nahān)", "واضح (vāzeh)", "روشن (roshan)"], correctAnswer: "نهان (nahān)", explanation: "Both پنهان and نهان mean hidden/concealed — نهان is the more poetic/classical form."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «اندوه» کدام است؟", options: ["شادمانی (shādmāni)", "غم (gham)", "آرامش (ārāmesh)", "امید (omid)"], correctAnswer: "غم (gham)", explanation: "Both اندوه and غم mean grief/sorrow — اندوه is more literary; غم is the everyday word for sadness."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «استوار» کدام است؟", options: ["سست (sost)", "پایدار (pāydār)", "لرزان (larzān)", "ناپایدار (nāpāydār)"], correctAnswer: "پایدار (pāydār)", explanation: "Both استوار and پایدار mean firm/stable/steadfast."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «خِرَد» کدام است؟", options: ["جهل (jahl)", "حکمت (hekmat)", "ثروت (servat)", "قدرت (qodrat)"], correctAnswer: "حکمت (hekmat)", explanation: "Both خِرَد and حکمت mean wisdom — خِرَد is classical Persian; حکمت comes from Arabic."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «آزاد» کدام است؟", options: ["اسیر (asir)", "رها (rahā)", "محبوس (mahbus)", "بسته (baste)"], correctAnswer: "رها (rahā)", explanation: "Both آزاد and رها mean free/liberated — رها implies released from a constraint."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «نیک» کدام است؟", options: ["بد (bad)", "شرور (sharur)", "نیکو (niku)", "ناپسند (nāpasand)"], correctAnswer: "نیکو (niku)", explanation: "Both نیک and نیکو mean good/virtuous — نیکو is the elaborated classical form, common in poetry."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «سپاسگزار» کدام است؟", options: ["ناسپاس (nāsepās)", "ممنون (mamnun)", "شاکی (shāki)", "بی‌اعتنا (bi-e'tenā)"], correctAnswer: "ممنون (mamnun)", explanation: "Both سپاسگزار and ممنون express gratitude — سپاسگزار is more formal; ممنون is everyday."),
            ExerciseItem(id: UUID(), prompt: "هم‌معنی «خاموش» کدام است؟", options: ["پرسروصدا (por-saro-sedā)", "ساکت (sāket)", "روشن (roshan)", "فعال (fa'āl)"], correctAnswer: "ساکت (sāket)", explanation: "Both خاموش and ساکت can mean silent/quiet — خاموش also means extinguished, carrying richer literary weight.")
        ]
    )

    // MARK: - Exercise 6: Antonyms Easy — متضاد ساده (10 items)
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "متضاد — ساده",
        instructions: "کلمه‌ای را انتخاب کنید که مخالف کلمه داده‌شده است.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "مخالف «گرم» کدام است؟", options: ["سرد (sard)", "خوشایند (khoshāyand)", "نرم (narm)", "روشن (roshan)"], correctAnswer: "سرد (sard)", explanation: "گرم means warm; سرد means cold."),
            ExerciseItem(id: UUID(), prompt: "مخالف «بزرگ» کدام است؟", options: ["سنگین (sangin)", "کوچک (kuchek)", "بلند (boland)", "پهن (pahn)"], correctAnswer: "کوچک (kuchek)", explanation: "بزرگ means big/large; کوچک means small/little."),
            ExerciseItem(id: UUID(), prompt: "مخالف «روز» کدام است؟", options: ["صبح (sobh)", "عصر (asr)", "شب (shab)", "ظهر (zohr)"], correctAnswer: "شب (shab)", explanation: "روز means day; شب means night."),
            ExerciseItem(id: UUID(), prompt: "مخالف «خوشحال» کدام است؟", options: ["خسته (khaste)", "غمگین (ghamgin)", "گرسنه (gorosne)", "بیمار (bimār)"], correctAnswer: "غمگین (ghamgin)", explanation: "خوشحال means happy; غمگین means sad/sorrowful."),
            ExerciseItem(id: UUID(), prompt: "مخالف «پیر» کدام است؟", options: ["بزرگ (bozorg)", "جوان (javān)", "مریض (mariz)", "کوتاه (kutāh)"], correctAnswer: "جوان (javān)", explanation: "پیر means old/elderly; جوان means young."),
            ExerciseItem(id: UUID(), prompt: "مخالف «سخت» کدام است؟", options: ["آسان (āsān)", "بلند (boland)", "سنگین (sangin)", "تاریک (tārik)"], correctAnswer: "آسان (āsān)", explanation: "سخت means hard/difficult; آسان means easy."),
            ExerciseItem(id: UUID(), prompt: "مخالف «سفید» کدام است؟", options: ["آبی (ābi)", "سبز (sabz)", "سیاه (siyāh)", "زرد (zard)"], correctAnswer: "سیاه (siyāh)", explanation: "سفید means white; سیاه means black."),
            ExerciseItem(id: UUID(), prompt: "مخالف «باز» کدام است؟", options: ["بسته (baste)", "خالی (khāli)", "پر (por)", "تمیز (tamiz)"], correctAnswer: "بسته (baste)", explanation: "باز means open; بسته means closed/shut."),
            ExerciseItem(id: UUID(), prompt: "مخالف «تمیز» کدام است؟", options: ["خیس (khis)", "کهنه (kohne)", "کثیف (kasif)", "شکسته (shekaste)"], correctAnswer: "کثیف (kasif)", explanation: "تمیز means clean; کثیف means dirty."),
            ExerciseItem(id: UUID(), prompt: "مخالف «دوست» کدام است؟", options: ["همسایه (hamsāye)", "دشمن (doshman)", "غریبه (gharibe)", "همکار (hamkār)"], correctAnswer: "دشمن (doshman)", explanation: "دوست means friend; دشمن means enemy.")
        ]
    )

    // MARK: - Exercise 7: Sentence Completion Easy — جمله‌سازی ساده (20 items)
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "جمله‌سازی — ساده",
        instructions: "بهترین کلمه را برای کامل کردن جمله انتخاب کنید.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "من هر صبح یک فنجان ___ می‌نوشم.", options: ["چای (chāy)", "نمک (namak)", "برنج (berenj)", "صابون (sābun)"], correctAnswer: "چای (chāy)", explanation: "چای نوشیدنی رایج صبحگاهی است، به همین دلیل با فعل «نوشیدن» و زمان «هر صبح» در این جمله هم‌خوانی دارد."),
            ExerciseItem(id: UUID(), prompt: "هوا امروز خیلی ___ است.", options: ["آبی (ābi)", "گرم (garm)", "شیرین (shirin)", "گرسنه (gorosne)"], correctAnswer: "گرم (garm)", explanation: "گرم (warm/hot) is the natural adjective to describe weather."),
            ExerciseItem(id: UUID(), prompt: "من کتابم را از ___ قرض گرفتم.", options: ["کوه (kuh)", "کتابخانه (ketābkhāne)", "آشپزخانه (āshpazkhāne)", "باغ (bāgh)"], correctAnswer: "کتابخانه (ketābkhāne)", explanation: "کتاب معمولاً از کتابخانه قرض گرفته می‌شود، پس «کتابخانه» تنها گزینه‌ای است که با معنای جمله سازگار است."),
            ExerciseItem(id: UUID(), prompt: "دندان‌هایم را هر شب با ___ مسواک می‌زنم.", options: ["شامپو (shāmpu)", "خمیردندان (khamir-dandān)", "آب‌میوه (āb-mive)", "روغن (roqan)"], correctAnswer: "خمیردندان (khamir-dandān)", explanation: "مسواک زدن دندان‌ها با خمیردندان انجام می‌شود، بنابراین این واژه با فعل «مسواک زدن» تناسب معنایی دارد."),
            ExerciseItem(id: UUID(), prompt: "نوروز اول ___ شروع می‌شود.", options: ["زمستان (zemestān)", "پاییز (pāyiz)", "بهار (bahār)", "تابستان (tābestan)"], correctAnswer: "بهار (bahār)", explanation: "نوروز جشن آغاز سال نو ایرانی است که همزمان با اولین روز فصل بهار برگزار می‌شود."),
            ExerciseItem(id: UUID(), prompt: "برای پختن برنج به ___ نیاز داریم.", options: ["قیچی (qeychi)", "آب (āb)", "رنگ (rang)", "چکش (chekosh)"], correctAnswer: "آب (āb)", explanation: "برای پختن برنج به آب نیاز است، زیرا برنج در آب جوشانده یا دم می‌شود."),
            ExerciseItem(id: UUID(), prompt: "وقتی سرما می‌خورم، ___ می‌نوشم.", options: ["بنزین (benzin)", "سیمان (simān)", "آب و چای (āb o chāy)", "رنگ (rang)"], correctAnswer: "آب و چای (āb o chāy)", explanation: "آب و چای نوشیدنی‌های معمول برای تسکین سرماخوردگی هستند و بدن را گرم و آبرسانی می‌کنند."),
            ExerciseItem(id: UUID(), prompt: "پدرم هر روز روزنامه ___ می‌کند.", options: ["می‌پزد (mi-pazad)", "می‌خواند (mi-khānad)", "می‌شوید (mi-shuyyad)", "می‌کارد (mi-kārad)"], correctAnswer: "می‌خواند (mi-khānad)", explanation: "Reading (خواندن) is the natural verb for newspaper."),
            ExerciseItem(id: UUID(), prompt: "در ایران، مردم سر سفره هفت‌سین ___ می‌نشینند.", options: ["جمعه (jom'e)", "عید نوروز (Eyd-e Nowruz)", "رمضان (Ramazān)", "یلدا (Yaldā)"], correctAnswer: "عید نوروز (Eyd-e Nowruz)", explanation: "سفره هفت‌سین یکی از نمادهای اصلی جشن عید نوروز است که ایرانیان دور آن گرد هم می‌آیند."),
            ExerciseItem(id: UUID(), prompt: "برای رفتن به دکتر باید ___ بگیرم.", options: ["تاکسی (tāksi)", "وقت (vaqt)", "نان (nān)", "خواب (khāb)"], correctAnswer: "وقت (vaqt)", explanation: "وقت گرفتن means to make an appointment."),
            ExerciseItem(id: UUID(), prompt: "شب یلدا خانواده دور هم جمع می‌شوند و ___ می‌خوانند.", options: ["روزنامه (ruznāme)", "حافظ (Hāfez)", "دستورالعمل (dasturol-amal)", "نامه (nāme)"], correctAnswer: "حافظ (Hāfez)", explanation: "خواندن فال حافظ در شب یلدا رسمی دیرینه در فرهنگ ایرانی است که خانواده‌ها دور هم انجام می‌دهند."),
            ExerciseItem(id: UUID(), prompt: "وقتی گرسنه هستم، به ___ می‌روم.", options: ["بیمارستان (bimārestān)", "بانک (bānk)", "آشپزخانه (āshpazkhāne)", "گاراژ (gārāzh)"], correctAnswer: "آشپزخانه (āshpazkhāne)", explanation: "هنگام گرسنگی، انسان طبیعتاً به آشپزخانه می‌رود تا غذا تهیه یا پیدا کند."),
            ExerciseItem(id: UUID(), prompt: "هر شب قبل از خواب ___ می‌کنم.", options: ["شنا (shenā)", "مسواک (mesvāk)", "خرید (kharid)", "رانندگی (rānandegi)"], correctAnswer: "مسواک (mesvāk)", explanation: "مسواک زدن دندان‌ها پیش از خواب یک عادت بهداشتی روزانه است."),
            ExerciseItem(id: UUID(), prompt: "تهران ___ ایران است.", options: ["رودخانه (rudkhāne)", "پایتخت (pāytakht)", "کوه (kuh)", "دریا (daryā)"], correctAnswer: "پایتخت (pāytakht)", explanation: "Tehran is the capital (پایتخت) of Iran."),
            ExerciseItem(id: UUID(), prompt: "برای نوشتن به ___ نیاز دارم.", options: ["چتر (chatr)", "قلم (qalam)", "جاروبرقی (jārubarqi)", "بالش (bālesh)"], correctAnswer: "قلم (qalam)", explanation: "قلم ابزار اصلی برای نوشتن است، پس با نیاز مطرح‌شده در جمله هم‌خوانی دارد."),
            ExerciseItem(id: UUID(), prompt: "وقتی سردم است، یک ___ می‌پوشم.", options: ["کلاه (kolāh)", "سبد (sabad)", "بشقاب (boshqāb)", "آینه (āyine)"], correctAnswer: "کلاه (kolāh)", explanation: "کلاه برای گرم نگه‌داشتن سر در هوای سرد پوشیده می‌شود."),
            ExerciseItem(id: UUID(), prompt: "دکتر گفت باید هر روز ___ بخورم.", options: ["سنگ (sang)", "دارو (dāru)", "ماسه (māse)", "درخت (derakht)"], correctAnswer: "دارو (dāru)", explanation: "دارو چیزی است که پزشک برای درمان تجویز می‌کند و باید طبق دستور مصرف شود."),
            ExerciseItem(id: UUID(), prompt: "مادرم قرمه‌سبزی را با ___ سرو می‌کند.", options: ["بستنی (bastani)", "برنج (berenj)", "کیک (keyk)", "آبمیوه (āb-mive)"], correctAnswer: "برنج (berenj)", explanation: "قرمه‌سبزی در آشپزی ایرانی همیشه همراه با برنج سرو می‌شود."),
            ExerciseItem(id: UUID(), prompt: "برای رفتن به فروشگاه به ___ نیاز دارم.", options: ["چتر (chatr)", "پول (pul)", "آواز (āvāz)", "باد (bād)"], correctAnswer: "پول (pul)", explanation: "برای خرید از فروشگاه، داشتن پول ضروری است."),
            ExerciseItem(id: UUID(), prompt: "وقتی خسته هستم، می‌خواهم ___.", options: ["بدوم (bedavam)", "بخوابم (bekhābam)", "بخندم (bekhandam)", "برقصم (beraqsam)"], correctAnswer: "بخوابم (bekhābam)", explanation: "خوابیدن پاسخ طبیعی بدن به احساس خستگی است.")
        ]
    )

    // MARK: - Exercise 8: Morphology — صرف و نحو (20 items)
    // 🚩 FLAG: Full native speaker review recommended for all items.
    private static let morphology = Exercise(
        id: UUID(),
        title: "صرف و نحو",
        instructions: "کلمه یا شکل درست را برای کامل کردن جمله انتخاب کنید.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "دیروز من به پارک ___ .", options: ["می‌روم (mi-ravam)", "رفتم (raftam)", "خواهم رفت (khāham raft)", "می‌رفتم (mi-raftam)"], correctAnswer: "رفتم (raftam)", explanation: "رفتم is simple past tense first person singular — correct for a completed action yesterday."),
            ExerciseItem(id: UUID(), prompt: "فردا ما به بازار ___ .", options: ["رفتیم (raftim)", "می‌رویم (mi-ravim)", "خواهیم رفت (khāhim raft)", "رفته‌ایم (rafte-im)"], correctAnswer: "خواهیم رفت (khāhim raft)", explanation: "خواهیم رفت is the formal future tense for first person plural — appropriate for a planned future action."),
            ExerciseItem(id: UUID(), prompt: "این کتاب‌ها ___ من است.", options: ["مال (māl)", "برای (barāye)", "از (az)", "با (bā)"], correctAnswer: "مال (māl)", explanation: "مال is the possessive marker in Persian — مال من means 'mine/belonging to me.'"),
            ExerciseItem(id: UUID(), prompt: "او دیروز ___ بود.", options: ["خسته (khaste)", "خستگی (khastegi)", "می‌خوابد (mi-khābad)", "خوابیده (khābide)"], correctAnswer: "خسته (khaste)", explanation: "خسته is the adjective meaning tired — correct after the verb بود (was)."),
            ExerciseItem(id: UUID(), prompt: "من هر روز داروهایم را ___ .", options: ["خوردم (khordam)", "می‌خورم (mi-khoram)", "خورده‌ام (khorde-am)", "بخورم (bekhoram)"], correctAnswer: "می‌خورم (mi-khoram)", explanation: "می‌خورم is the present habitual tense — correct for something done every day as a routine."),
            ExerciseItem(id: UUID(), prompt: "این غذا خیلی ___ است.", options: ["خوشمزگی (khoshmazegi)", "خوشمزه (khoshmaze)", "خوردن (khordan)", "خوشمزه‌تر (khoshmaze-tar)"], correctAnswer: "خوشمزه (khoshmaze)", explanation: "خوشمزه is the base adjective meaning delicious — correct after خیلی (very)."),
            ExerciseItem(id: UUID(), prompt: "بچه‌ها در حیاط ___ .", options: ["بازی کردند (bāzi kardand)", "بازی می‌کنند (bāzi mi-konand)", "بازی کرده‌اند (bāzi karde-and)", "بازی کنند (bāzi konand)"], correctAnswer: "بازی می‌کنند (bāzi mi-konand)", explanation: "بازی می‌کنند is the present continuous — correct for an action happening now or regularly."),
            ExerciseItem(id: UUID(), prompt: "کتاب ___ روی میز است.", options: ["یک (yek)", "این (in)", "چند (chand)", "هیچ (hich)"], correctAnswer: "این (in)", explanation: "این (this) is the demonstrative adjective pointing to a specific book."),
            ExerciseItem(id: UUID(), prompt: "مادرم از من ___ که زود بخوابم.", options: ["گفتم (goftam)", "خواست (khāst)", "دیدم (didam)", "پرسیدم (porssidam)"], correctAnswer: "خواست (khāst)", explanation: "خواست (wanted/asked) is correct — خواستن از کسی که means 'to ask/want someone to do something.'"),
            ExerciseItem(id: UUID(), prompt: "ما سال گذشته به اصفهان ___ .", options: ["می‌رویم (mi-ravim)", "رفتیم (raftim)", "خواهیم رفت (khāhim raft)", "می‌رفتیم (mi-raftim)"], correctAnswer: "رفتیم (raftim)", explanation: "رفتیم is simple past tense first person plural — correct for a completed trip last year."),
            ExerciseItem(id: UUID(), prompt: "او ___ از ایران آمده است.", options: ["خیلی وقت (kheyli vaqt)", "کمی (kami)", "امروز (emruz)", "هرگز (hargez)"], correctAnswer: "خیلی وقت (kheyli vaqt)", explanation: "خیلی وقت پیش means 'a long time ago' — natural for describing immigration from Iran."),
            ExerciseItem(id: UUID(), prompt: "من به فارسی ___ صحبت می‌کنم.", options: ["بد (bad)", "روان (ravān)", "دیر (dir)", "کم (kam)"], correctAnswer: "روان (ravān)", explanation: "روان means fluent/flowing — روان صحبت کردن means to speak fluently."),
            ExerciseItem(id: UUID(), prompt: "پدرم ___ از کار بازنشسته شد.", options: ["هرگز (hargez)", "چند سال پیش (chand sāl pish)", "فردا (fardā)", "الان (alān)"], correctAnswer: "چند سال پیش (chand sāl pish)", explanation: "چند سال پیش (a few years ago) pairs naturally with the past tense شد and the life context of retirement."),
            ExerciseItem(id: UUID(), prompt: "دارو را ___ از غذا بخور.", options: ["قبل (qabl)", "بعد (ba'd)", "کنار (kenār)", "زیر (zir)"], correctAnswer: "بعد (ba'd)", explanation: "بعد از غذا (after food) is the standard medical instruction for taking medicine with meals."),
            ExerciseItem(id: UUID(), prompt: "این داروخانه ___ از ساعت ۹ صبح باز است.", options: ["تا (tā)", "از (az)", "بعد (ba'd)", "قبل (qabl)"], correctAnswer: "از (az)", explanation: "از (from/since) is the correct preposition for indicating the start of a time period."),
            ExerciseItem(id: UUID(), prompt: "بچه‌ها ___ از مدرسه برگشتند.", options: ["دیر (dir)", "تازه (tāze)", "هرگز (hargez)", "شاید (shāyad)"], correctAnswer: "تازه (tāze)", explanation: "تازه in this context means 'just now/recently' — تازه برگشتند means 'just returned.'"),
            ExerciseItem(id: UUID(), prompt: "من ___ فارسی یاد می‌گیرم.", options: ["هنوز (hanuz)", "هرگز (hargez)", "دیروز (diruz)", "فردا (fardā)"], correctAnswer: "هنوز (hanuz)", explanation: "هنوز (still/yet) — هنوز دارم یاد می‌گیرم means 'I am still learning.'"),
            ExerciseItem(id: UUID(), prompt: "لطفاً در را ___ ببند.", options: ["آهسته (āheste)", "سریع‌ترین (sari'-tarin)", "بلندترین (boland-tarin)", "گرم‌ترین (garm-tarin)"], correctAnswer: "آهسته (āheste)", explanation: "آهسته (gently/quietly) is the natural adverb for closing a door."),
            ExerciseItem(id: UUID(), prompt: "این ___ کفش‌های من نیستند.", options: ["دیگر (digar)", "همه (hame)", "هیچ‌کدام (hich-kodām)", "چند (chand)"], correctAnswer: "هیچ‌کدام (hich-kodām)", explanation: "هیچ‌کدام means 'none of these' — the most natural fit for a negative identification sentence."),
            ExerciseItem(id: UUID(), prompt: "آن‌ها هنوز نرسیده‌اند.", options: ["هرگز (hargez)", "هنوز (hanuz)", "دیروز (diruz)", "همیشه (hamishe)"], correctAnswer: "هنوز (hanuz)", explanation: "هنوز (yet/still) pairs naturally with the negative present perfect نرسیده‌اند.")
        ]
    )

    // MARK: - Exercise 9: Analogies — قیاس (15 items)
    private static let analogies = Exercise(
        id: UUID(),
        title: "قیاس",
        instructions: "رابطه را پیدا کنید و جای خالی را پر کنید.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "روز به شب مثل بهار است به ___", options: ["بارش (bāresh)", "پاییز (pāyiz)", "آفتاب (āftāb)", "گل (gol)"], correctAnswer: "پاییز (pāyiz)", explanation: "روز و شب دو فصل متضاد شبانه‌روزند، همان‌طور که بهار و پاییز دو فصل متضاد در چرخهٔ سال هستند."),
            ExerciseItem(id: UUID(), prompt: "حافظ به شعر مثل ابن‌سینا است به ___", options: ["موسیقی (musiqi)", "پزشکی (pezeshki)", "نقاشی (naqqāshi)", "ریاضی (riyāzi)"], correctAnswer: "پزشکی (pezeshki)", explanation: "حافظ در زمینهٔ شعر شهرت دارد، همان‌طور که ابن‌سینا در زمینهٔ پزشکی شناخته‌شده است."),
            ExerciseItem(id: UUID(), prompt: "برنج به قابلمه مثل نان است به ___", options: ["کره (kare)", "فر (for)", "بشقاب (boshqāb)", "چاقو (chāqu)"], correctAnswer: "فر (for)", explanation: "برنج در قابلمه پخته می‌شود، همان‌طور که نان در فر پخته می‌شود."),
            ExerciseItem(id: UUID(), prompt: "تهران به ایران مثل واشنگتن است به ___", options: ["کالیفرنیا (Kāliforniā)", "آمریکا (Āmrikā)", "کانادا (Kānādā)", "تگزاس (Tegzās)"], correctAnswer: "آمریکا (Āmrikā)", explanation: "تهران پایتخت ایران است، همان‌طور که واشنگتن پایتخت آمریکاست."),
            ExerciseItem(id: UUID(), prompt: "گرسنگی به غذا مثل تشنگی است به ___", options: ["آب (āb)", "خواب (khāb)", "نمک (namak)", "هوا (havā)"], correctAnswer: "آب (āb)", explanation: "غذا گرسنگی را برطرف می‌کند، همان‌طور که آب تشنگی را برطرف می‌کند."),
            ExerciseItem(id: UUID(), prompt: "قلم به نوشتن مثل قاشق است به ___", options: ["پختن (pokhtan)", "خوردن (khordan)", "شستن (shostan)", "بریدن (boridan)"], correctAnswer: "خوردن (khordan)", explanation: "قلم ابزار نوشتن است، همان‌طور که قاشق ابزار خوردن است."),
            ExerciseItem(id: UUID(), prompt: "دماوند به ایران مثل اورست است به ___", options: ["ژاپن (Zhāpon)", "چین (Chin)", "نپال (Nepāl)", "هند (Hend)"], correctAnswer: "نپال (Nepāl)", explanation: "دماوند بلندترین قله ایران است، همان‌طور که اورست بلندترین قلهٔ مرتبط با نپال است."),
            ExerciseItem(id: UUID(), prompt: "پزشک به بیمارستان مثل معلم است به ___", options: ["کتاب (ketāb)", "دانشگاه (dāneshgāh)", "مدرسه (madrase)", "دفتر (daftar)"], correctAnswer: "مدرسه (madrase)", explanation: "پزشک در بیمارستان کار می‌کند، همان‌طور که معلم در مدرسه کار می‌کند."),
            ExerciseItem(id: UUID(), prompt: "قرمه‌سبزی به ایران مثل پیتزا است به ___", options: ["فرانسه (Farānse)", "اسپانیا (Espāniā)", "ایتالیا (Itāliā)", "آلمان (Ālmān)"], correctAnswer: "ایتالیا (Itāliā)", explanation: "قرمه‌سبزی غذای نمادین ایران است، همان‌طور که پیتزا غذای نمادین ایتالیاست."),
            ExerciseItem(id: UUID(), prompt: "خوشحال به غمگین مثل گرم است به ___", options: ["خنک (khanak)", "آفتابی (āftābi)", "سرد (sard)", "ابری (abri)"], correctAnswer: "سرد (sard)", explanation: "خوشحال و غمگین دو حس متضادند، همان‌طور که گرم و سرد دو دمای متضادند."),
            ExerciseItem(id: UUID(), prompt: "فردوسی به شاهنامه مثل حافظ است به ___", options: ["بوستان (Bustān)", "دیوان (Divān)", "گلستان (Golestān)", "مثنوی (Masnavi)"], correctAnswer: "دیوان (Divān)", explanation: "فردوسی سرایندهٔ شاهنامه است، همان‌طور که مجموعهٔ اشعار حافظ دیوان نام دارد."),
            ExerciseItem(id: UUID(), prompt: "چشم به دیدن مثل گوش است به ___", options: ["بوییدن (bu'idan)", "چشیدن (cheshidan)", "شنیدن (shenidan)", "لمس کردن (lams kardan)"], correctAnswer: "شنیدن (shenidan)", explanation: "چشم برای دیدن به کار می‌رود، همان‌طور که گوش برای شنیدن به کار می‌رود."),
            ExerciseItem(id: UUID(), prompt: "بهار به نوروز مثل زمستان است به ___", options: ["عید فطر (Eyd-e Fetr)", "یلدا (Yaldā)", "مهرگان (Mehregān)", "چهارشنبه‌سوری (Chahārshanbe-Suri)"], correctAnswer: "یلدا (Yaldā)", explanation: "بهار با جشن نوروز شناخته می‌شود، همان‌طور که زمستان با شب یلدا شناخته می‌شود."),
            ExerciseItem(id: UUID(), prompt: "لس‌آنجلس به کالیفرنیا مثل شیراز است به ___", options: ["تهران (Tehrān)", "ایران (Irān)", "فارس (Fārs)", "اصفهان (Esfahān)"], correctAnswer: "فارس (Fārs)", explanation: "لس‌آنجلس شهری مهم در کالیفرنیاست، همان‌طور که شیراز مرکز استان فارس است."),
            ExerciseItem(id: UUID(), prompt: "کودک به جوان مثل صبح است به ___", options: ["شب (shab)", "ظهر (zohr)", "غروب (qorub)", "نیمه‌شب (nime-shab)"], correctAnswer: "ظهر (zohr)", explanation: "کودکی به جوانی می‌رسد همان‌طور که صبح به ظهر می‌رسد؛ هر دو مراحلی رو به جلو در یک چرخه‌اند.")
        ]
    )

    // MARK: - Exercise 10: Fact or Opinion — واقعیت یا نظر (25 items)
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "واقعیت یا نظر",
        instructions: "آیا این جمله واقعیت است یا نظر شخصی؟",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "تهران پایتخت ایران است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا پایتخت بودن تهران را می‌توان با اسناد رسمی و نقشه‌های جغرافیایی به‌طور عینی تأیید کرد."),
            ExerciseItem(id: UUID(), prompt: "غذای ایرانی بهترین غذای دنیاست.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا «بهترین» بودن یک غذا به سلیقه و ذائقه شخصی افراد بستگی دارد و قابل اندازه‌گیری عینی نیست."),
            ExerciseItem(id: UUID(), prompt: "نوروز اول بهار شروع می‌شود.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا آغاز نوروز با اعتدال بهاری بر اساس محاسبات نجومی و تقویمی قابل بررسی و اثبات است."),
            ExerciseItem(id: UUID(), prompt: "شب یلدا طولانی‌ترین شب سال است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا شب یلدا مصادف با انقلاب زمستانی است و طول آن با ابزارهای نجومی قابل اندازه‌گیری است."),
            ExerciseItem(id: UUID(), prompt: "حافظ بزرگ‌ترین شاعر تاریخ بشر است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا «بزرگ‌ترین شاعر تاریخ» یک قضاوت ذوقی و ادبی است که هیچ معیار عینی برای سنجش آن وجود ندارد."),
            ExerciseItem(id: UUID(), prompt: "کوه دماوند بلندترین کوه ایران است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا ارتفاع کوه دماوند با اندازه‌گیری‌های دقیق نقشه‌برداری مشخص و قابل تأیید است."),
            ExerciseItem(id: UUID(), prompt: "زندگی در کالیفرنیا از زندگی در ایران بهتر است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا کیفیت زندگی بسته به ارزش‌ها و اولویت‌های شخصی هر فرد متفاوت است و نمی‌توان آن را عینی سنجید."),
            ExerciseItem(id: UUID(), prompt: "دریای خزر بزرگ‌ترین دریاچه جهان است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا وسعت دریای خزر با اندازه‌گیری‌های جغرافیایی مشخص و به‌عنوان بزرگ‌ترین دریاچه جهان ثبت شده است."),
            ExerciseItem(id: UUID(), prompt: "یادگیری زبان فارسی آسان است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا آسان یا دشوار بودن یادگیری یک زبان بسته به توانایی و تجربه هر فرد فرق می‌کند."),
            ExerciseItem(id: UUID(), prompt: "ابن‌سینا پزشک و فیلسوف ایرانی بود.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا هویت ابن‌سینا به‌عنوان پزشک و فیلسوف ایرانی در منابع تاریخی مستند شده است."),
            ExerciseItem(id: UUID(), prompt: "قرمه‌سبزی خوشمزه‌ترین غذای ایرانی است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا خوشمزه بودن یک غذا به ذائقه فردی بستگی دارد و ممکن است دیگران غذای دیگری را ترجیح دهند."),
            ExerciseItem(id: UUID(), prompt: "تخت‌جمشید توسط داریوش اول ساخته شد.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا ساخت تخت‌جمشید توسط داریوش اول در منابع تاریخی و باستان‌شناسی مستند و قابل تأیید است."),
            ExerciseItem(id: UUID(), prompt: "آمریکا پنجاه ایالت دارد.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا تعداد ایالت‌های آمریکا عددی ثابت و رسمی است که به‌راحتی قابل بررسی است."),
            ExerciseItem(id: UUID(), prompt: "ایرانی‌ها مهمان‌نوازترین مردم دنیا هستند.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا «مهمان‌نوازترین مردم دنیا» یک قضاوت مقایسه‌ای است که با هیچ معیار عینی نمی‌توان آن را اثبات کرد."),
            ExerciseItem(id: UUID(), prompt: "فروردین اولین ماه سال شمسی است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا فروردین به‌طور رسمی اولین ماه تقویم شمسی ایرانی است و این موضوع قابل تأیید است."),
            ExerciseItem(id: UUID(), prompt: "یادگیری زبان دوم برای مغز مفید است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا فواید شناختی یادگیری زبان دوم برای مغز از طریق پژوهش‌های علمی متعدد ثابت شده است."),
            ExerciseItem(id: UUID(), prompt: "بهترین فصل سال بهار است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا انتخاب بهترین فصل سال کاملاً به سلیقه و علاقه شخصی افراد بستگی دارد."),
            ExerciseItem(id: UUID(), prompt: "قلب خون را در بدن پمپ می‌کند.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا عملکرد قلب در پمپاژ خون یک اصل پایه‌ای و اثبات‌شده در علم آناتومی بدن انسان است."),
            ExerciseItem(id: UUID(), prompt: "موسیقی سنتی ایرانی زیباتر از موسیقی غربی است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا زیبایی موسیقی امری کاملاً ذهنی است و به سلیقه شخصی و پیشینه فرهنگی هر شنونده بستگی دارد."),
            ExerciseItem(id: UUID(), prompt: "ورزش منظم به سلامتی کمک می‌کند.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا فواید ورزش منظم برای سلامتی با مطالعات علمی و پزشکی فراوان تأیید شده است."),
            ExerciseItem(id: UUID(), prompt: "لس‌آنجلس بزرگ‌ترین شهر کالیفرنیاست.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا جمعیت شهرهای کالیفرنیا قابل شمارش است و لس‌آنجلس رسماً پرجمعیت‌ترین شهر آن ایالت است."),
            ExerciseItem(id: UUID(), prompt: "زبان فارسی زیباترین زبان دنیاست.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا زیبایی یک زبان به احساسات شخصی و فرهنگی افراد بستگی دارد و معیار عینی برای سنجش آن وجود ندارد."),
            ExerciseItem(id: UUID(), prompt: "خوردن میوه و سبزیجات برای بدن مفید است.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا فواید تغذیه‌ای میوه و سبزیجات برای بدن از طریق پژوهش‌های علمی اثبات شده است."),
            ExerciseItem(id: UUID(), prompt: "ایران یکی از قدیمی‌ترین تمدن‌های جهان را دارد.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "این جمله یک واقعیت است، زیرا قدمت هزاران‌ساله تمدن ایران در منابع تاریخی و باستان‌شناسی مستند و قابل بررسی است."),
            ExerciseItem(id: UUID(), prompt: "مهاجرت به کشور جدید همیشه تجربه سختی است.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "این جمله یک نظر است، زیرا تجربه مهاجرت برای هر فرد متفاوت است و نمی‌توان آن را به‌طور کلی و عینی سخت یا آسان دانست.")
        ]
    )

    // MARK: - Exercise 11: Sequencing — ترتیب (8 items)
    private static let sequencing = Exercise(
        id: UUID(),
        title: "ترتیب",
        instructions: "مراحل را به ترتیب درست مرتب کنید.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "فرستادن ایمیل (Ferestādan-e email) — Sending an email",
                options: ["کامپیوتر یا گوشی را روشن کن (kāmpiyutar yā gushi rā roshan kon)", "برنامه ایمیل را باز کن (barnāme-ye email rā bāz kon)", "آدرس ایمیل گیرنده را بنویس (ādress-e email-e girande rā benevis)", "پیام را بنویس (payām rā benevis)", "دکمه ارسال را بزن (dokme-ye ersāl rā bezan)"],
                correctAnswer: "کامپیوتر یا گوشی را روشن کن (kāmpiyutar yā gushi rā roshan kon) | برنامه ایمیل را باز کن (barnāme-ye email rā bāz kon) | آدرس ایمیل گیرنده را بنویس (ādress-e email-e girande rā benevis) | پیام را بنویس (payām rā benevis) | دکمه ارسال را بزن (dokme-ye ersāl rā bezan)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "دم کردن چای (Dam kardan-e chāy) — Brewing tea",
                options: ["کتری را پر از آب کن (ketri rā por az āb kon)", "آب را بجوشان (āb rā bejushān)", "چای را در قوری بریز (chāy rā dar quri beriz)", "آب جوش را روی چای بریز (āb-e jush rā ruye chāy beriz)", "چند دقیقه صبر کن تا چای دم بکشد (chand daqiqe sabr kon tā chāy dam bekeshad)"],
                correctAnswer: "کتری را پر از آب کن (ketri rā por az āb kon) | آب را بجوشان (āb rā bejushān) | چای را در قوری بریز (chāy rā dar quri beriz) | آب جوش را روی چای بریز (āb-e jush rā ruye chāy beriz) | چند دقیقه صبر کن تا چای دم بکشد (chand daqiqe sabr kon tā chāy dam bekeshad)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "رفتن به داروخانه (Raftan be dārukhāne) — Going to the pharmacy",
                options: ["نسخه دکتر را پیدا کن (noskheh-ye doktor rā peydā kon)", "آدرس داروخانه را پیدا کن (ādress-e dārukhāne rā peydā kon)", "به داروخانه برو (be dārukhāne boro)", "نسخه را به داروساز بده (noskheh rā be dārusāz bede)", "داروها را بگیر و پول بپرداز (dāru-hā rā begir o pul bepardāz)"],
                correctAnswer: "نسخه دکتر را پیدا کن (noskheh-ye doktor rā peydā kon) | آدرس داروخانه را پیدا کن (ādress-e dārukhāne rā peydā kon) | به داروخانه برو (be dārukhāne boro) | نسخه را به داروساز بده (noskheh rā be dārusāz bede) | داروها را بگیر و پول بپرداز (dāru-hā rā begir o pul bepardāz)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "پختن تاهدیگ (Pokhtan-e tāhdig) — Making tahdig",
                options: ["برنج را بشور و خیس کن (berenj rā beshu o khis kon)", "آب و نمک را بجوشان و برنج را اضافه کن (āb o namak rā bejushān o berenj rā ezāfe kon)", "برنج را نیم‌پز آبکش کن (berenj rā nim-paz ābkesh kon)", "ته قابلمه روغن بریز و برنج را اضافه کن (tah-e qāblamme roqan beriz o berenj rā ezāfe kon)", "در قابلمه را ببند و با حرارت کم بگذار تاهدیگ ببندد (dar-e qāblamme rā bebband o bā harārat-e kam begozār tāhdig beband)"],
                correctAnswer: "برنج را بشور و خیس کن (berenj rā beshu o khis kon) | آب و نمک را بجوشان و برنج را اضافه کن (āb o namak rā bejushān o berenj rā ezāfe kon) | برنج را نیم‌پز آبکش کن (berenj rā nim-paz ābkesh kon) | ته قابلمه روغن بریز و برنج را اضافه کن (tah-e qāblamme roqan beriz o berenj rā ezāfe kon) | در قابلمه را ببند و با حرارت کم بگذار تاهدیگ ببندد (dar-e qāblamme rā bebband o bā harārat-e kam begozār tāhdig beband)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "گرفتن وقت دکتر (Gereftan-e vaqt-e doktor) — Making a doctor's appointment",
                options: ["شماره مطب دکتر را پیدا کن (shomāre-ye matabb-e doktor rā peydā kon)", "با مطب تماس بگیر (bā matabb tamās begir)", "نام و مشکل پزشکی خود را توضیح بده (nām o moshkel-e pezeshki-ye khod rā towzih bede)", "روز و ساعت مناسب را انتخاب کن (ruz o sā'at-e monāseb rā entekhāb kon)", "وقت را یادداشت کن و یادآوری تنظیم کن (vaqt rā yāddāsht kon o yādāvari tanzim kon)"],
                correctAnswer: "شماره مطب دکتر را پیدا کن (shomāre-ye matabb-e doktor rā peydā kon) | با مطب تماس بگیر (bā matabb tamās begir) | نام و مشکل پزشکی خود را توضیح بده (nām o moshkel-e pezeshki-ye khod rā towzih bede) | روز و ساعت مناسب را انتخاب کن (ruz o sā'at-e monāseb rā entekhāb kon) | وقت را یادداشت کن و یادآوری تنظیم کن (vaqt rā yāddāsht kon o yādāvari tanzim kon)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "آماده شدن برای نوروز (Āmāde shodan barāye Nowruz) — Preparing for Nowruz",
                options: ["خانه را تمیز کن (خانه‌تکانی) (khāne rā tamiz kon — khāne-takāni)", "لباس نو بخر (lebās-e now bekhar)", "سفره هفت‌سین را بچین (sofre-ye haft-sin rā bechin)", "با خانواده و دوستان دید و بازدید کن (bā khānevāde o dustān did o bāzdid kon)", "عیدی بده و بگیر (eydi bede o begir)"],
                correctAnswer: "خانه را تمیز کن (خانه‌تکانی) (khāne rā tamiz kon — khāne-takāni) | لباس نو بخر (lebās-e now bekhar) | سفره هفت‌سین را بچین (sofre-ye haft-sin rā bechin) | با خانواده و دوستان دید و بازدید کن (bā khānevāde o dustān did o bāzdid kon) | عیدی بده و بگیر (eydi bede o begir)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "نوشتن نامه (Neveshtan-e nāme) — Writing a letter",
                options: ["کاغذ و قلم آماده کن (kāqhaz o qalam āmāde kon)", "تاریخ و آدرس را بنویس (tārikh o ādress rā benevis)", "سلام و خطاب را بنویس (salām o khetāb rā benevis)", "متن نامه را بنویس (matn-e nāme rā benevis)", "نامه را امضا کن و پاکت بگذار (nāme rā emzā kon o pākat begozār)"],
                correctAnswer: "کاغذ و قلم آماده کن (kāqhaz o qalam āmāde kon) | تاریخ و آدرس را بنویس (tārikh o ādress rā benevis) | سلام و خطاب را بنویس (salām o khetāb rā benevis) | متن نامه را بنویس (matn-e nāme rā benevis) | نامه را امضا کن و پاکت بگذار (nāme rā emzā kon o pākat begozār)"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "رفتن به فروشگاه مواد غذایی (Raftan be forushgāh-e mavādd-e ghazāyi) — Going to the grocery store",
                options: ["لیست خرید بنویس (list-e kharid benevis)", "کیف و پول آماده کن (kif o pul āmāde kon)", "به فروشگاه برو (be forushgāh boro)", "اجناس را از روی لیست پیدا کن (ejnās rā az ruye list peydā kon)", "پول بپرداز و به خانه برگرد (pul bepardāz o be khāne bargard)"],
                correctAnswer: "لیست خرید بنویس (list-e kharid benevis) | کیف و پول آماده کن (kif o pul āmāde kon) | به فروشگاه برو (be forushgāh boro) | اجناس را از روی لیست پیدا کن (ejnās rā az ruye list peydā kon) | پول بپرداز و به خانه برگرد (pul bepardāz o be khāne bargard)"
            )
        ]
    )
}
