import Foundation

// NOTE: Exercise 11 (Persian Idioms — اصطلاحات) is flagged for native speaker review.

struct FarsiCognitionExerciseData {

    static let allExercises: [Exercise] = [
        whatQuestions,
        whereQuestions,
        whoQuestions,
        whenQuestions,
        whyQuestions,
        howManyQuestions,
        yesNoQuestions,
        historyKnowledge,
        locationsKnowledge,
        popularMedia,
        idioms,
        estimationLogic,
        deductiveReasoning,
        personalMemory,
        roteMemory
    ]

    // MARK: - Exercise 1: WH What — چه (20 items)
    private static let whatQuestions = Exercise(
        id: UUID(),
        title: "WH سوال — چه",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "به کسی که مو می‌برد چه می‌گویند؟", options: ["آرایشگر", "لوله‌کش", "برقکار", "اپتومتریست"], correctAnswer: "آرایشگر"),
            ExerciseItem(id: UUID(), prompt: "طولانی‌ترین رودخانه جهان کدام است؟", options: ["آمازون", "می‌سی‌سی‌پی", "رود نیل", "یانگ‌تسه"], correctAnswer: "رود نیل"),
            ExerciseItem(id: UUID(), prompt: "به غذای وسط روز چه می‌گویند؟", options: ["صبحانه", "بروانچ", "شام", "ناهار"], correctAnswer: "ناهار"),
            ExerciseItem(id: UUID(), prompt: "برای جارو کردن کف اتاق از چه استفاده می‌کنیم؟", options: ["تی", "خاک‌انداز", "جارو", "جاروبرقی"], correctAnswer: "جارو"),
            ExerciseItem(id: UUID(), prompt: "نام سیاره‌ای که روی آن زندگی می‌کنیم چیست؟", options: ["مریخ", "زهره", "زمین", "مشتری"], correctAnswer: "زمین"),
            ExerciseItem(id: UUID(), prompt: "به کسی که هواپیما می‌پرد چه می‌گویند؟", options: ["مهندس", "ناخدا", "کاپیتان", "خلبان"], correctAnswer: "خلبان"),
            ExerciseItem(id: UUID(), prompt: "بعد از تابستان چه فصلی می‌آید؟", options: ["بهار", "زمستان", "پاییز", "دوباره تابستان"], correctAnswer: "پاییز"),
            ExerciseItem(id: UUID(), prompt: "به کسی که نقاشی و مجسمه می‌سازد چه می‌گویند؟", options: ["معمار", "هنرمند", "نویسنده", "موسیقی‌دان"], correctAnswer: "هنرمند"),
            ExerciseItem(id: UUID(), prompt: "بازی که در آن توپ سفید کوچک را در سوراخ می‌زنند چه نام دارد؟", options: ["تنیس", "کریکت", "گلف", "کروکه"], correctAnswer: "گلف"),
            ExerciseItem(id: UUID(), prompt: "به کسی که لوله‌های خراب را تعمیر می‌کند چه می‌گویند؟", options: ["برقکار", "نجار", "لوله‌کش", "قفل‌ساز"], correctAnswer: "لوله‌کش"),
            ExerciseItem(id: UUID(), prompt: "برای تغییر کانال تلویزیون بدون بلند شدن از چه استفاده می‌کنیم؟", options: ["موبایل", "کنترل از راه دور", "تبلت", "صفحه‌کلید"], correctAnswer: "کنترل از راه دور"),
            ExerciseItem(id: UUID(), prompt: "رنگ قرمز و سفید با هم چه رنگی می‌شوند؟", options: ["بنفش", "نارنجی", "صورتی", "هلویی"], correctAnswer: "صورتی"),
            ExerciseItem(id: UUID(), prompt: "برای دانستن ساعت از چه وسیله‌ای استفاده می‌کنیم؟", options: ["دماسنج", "قطب‌نما", "ماشین‌حساب", "ساعت"], correctAnswer: "ساعت"),
            ExerciseItem(id: UUID(), prompt: "برای بریدن کاغذ از چه استفاده می‌کنیم؟", options: ["چاقو", "قیچی", "تیغ", "کاتر"], correctAnswer: "قیچی"),
            ExerciseItem(id: UUID(), prompt: "به دستگاهی که غذا را سرد نگه می‌دارد چه می‌گویند؟", options: ["فر", "مایکروویو", "یخچال", "ماشین ظرفشویی"], correctAnswer: "یخچال"),
            ExerciseItem(id: UUID(), prompt: "به کسی که آتش را خاموش می‌کند چه می‌گویند؟", options: ["پلیس", "پارامدیک", "آتش‌نشان", "نگهبان"], correctAnswer: "آتش‌نشان"),
            ExerciseItem(id: UUID(), prompt: "جایی که می‌توان کتاب رایگان امانت گرفت کجاست؟", options: ["کتاب‌فروشی", "موزه", "کتابخانه", "مدرسه"], correctAnswer: "کتابخانه"),
            ExerciseItem(id: UUID(), prompt: "برای سفر بین کشورها به چه مدرکی نیاز است؟", options: ["گواهینامه رانندگی", "شناسنامه", "گذرنامه (پاسپورت)", "کارت ملی"], correctAnswer: "گذرنامه (پاسپورت)"),
            ExerciseItem(id: UUID(), prompt: "به پوشش سخت بیرونی دندان چه می‌گویند؟", options: ["عاج", "پالپ", "مینا", "تاج"], correctAnswer: "مینا"),
            ExerciseItem(id: UUID(), prompt: "به کسی که دندان‌ها را درمان می‌کند چه می‌گویند؟", options: ["چشم‌پزشک", "پوست‌پزشک", "دندانپزشک", "گوش‌پزشک"], correctAnswer: "دندانپزشک")
        ]
    )

    // MARK: - Exercise 2: WH Where — کجا (20 items)
    private static let whereQuestions = Exercise(
        id: UUID(),
        title: "WH سوال — کجا",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "برای شنا در داخل ساختمان به کجا می‌روند؟", options: ["باشگاه", "پارک", "استخر", "دریاچه"], correctAnswer: "استخر"),
            ExerciseItem(id: UUID(), prompt: "مجسمه آزادی کجاست؟", options: ["واشینگتن دی‌سی", "شیکاگو", "لوس‌آنجلس", "نیویورک"], correctAnswer: "نیویورک"),
            ExerciseItem(id: UUID(), prompt: "برای کوتاه کردن مو به کجا می‌روند؟", options: ["داروخانه", "آرایشگاه", "مطب پزشک", "اسپا"], correctAnswer: "آرایشگاه"),
            ExerciseItem(id: UUID(), prompt: "قاضی و هیئت‌منصفه کجا جلسه برگزار می‌کنند؟", options: ["شهرداری", "کلانتری", "دادگاه", "مدرسه"], correctAnswer: "دادگاه"),
            ExerciseItem(id: UUID(), prompt: "دیوار چین کجاست؟", options: ["ژاپن", "هند", "چین", "کره جنوبی"], correctAnswer: "چین"),
            ExerciseItem(id: UUID(), prompt: "کولوسئوم کجاست؟", options: ["آتن", "پاریس", "مادرید", "رم، ایتالیا"], correctAnswer: "رم، ایتالیا"),
            ExerciseItem(id: UUID(), prompt: "برای گرفتن دارو به کجا می‌روند؟", options: ["بیمارستان", "مطب پزشک", "داروخانه", "درمانگاه"], correctAnswer: "داروخانه"),
            ExerciseItem(id: UUID(), prompt: "برج ایفل کجاست؟", options: ["بلژیک", "ایتالیا", "اسپانیا", "پاریس، فرانسه"], correctAnswer: "پاریس، فرانسه"),
            ExerciseItem(id: UUID(), prompt: "برای واریز یا برداشت پول به کجا می‌روند؟", options: ["اداره پست", "بانک", "داروخانه", "سوپرمارکت"], correctAnswer: "بانک"),
            ExerciseItem(id: UUID(), prompt: "اهرام ثلاثه (اهرام گیزا) کجا هستند؟", options: ["مراکش", "سودان", "لیبی", "مصر"], correctAnswer: "مصر"),
            ExerciseItem(id: UUID(), prompt: "برج آزادی کجاست؟", options: ["اصفهان", "شیراز", "مشهد", "تهران، ایران"], correctAnswer: "تهران، ایران"),
            ExerciseItem(id: UUID(), prompt: "مسجد نقش جهان کجاست؟", options: ["تهران", "مشهد", "شیراز", "اصفهان، ایران"], correctAnswer: "اصفهان، ایران"),
            ExerciseItem(id: UUID(), prompt: "تخت‌جمشید کجاست؟", options: ["اصفهان", "کرمان", "تهران", "نزدیک شیراز، فارس"], correctAnswer: "نزدیک شیراز، فارس"),
            ExerciseItem(id: UUID(), prompt: "برای فوریت پزشکی به کجا می‌روند؟", options: ["داروخانه", "اورژانس فوری", "اورژانس بیمارستان", "مطب پزشک"], correctAnswer: "اورژانس بیمارستان"),
            ExerciseItem(id: UUID(), prompt: "بیگ‌بن کجاست؟", options: ["پاریس", "برلین", "لندن، انگلستان", "آمستردام"], correctAnswer: "لندن، انگلستان"),
            ExerciseItem(id: UUID(), prompt: "مرقد امام رضا (ع) کجاست؟", options: ["تهران", "اصفهان", "شیراز", "مشهد، ایران"], correctAnswer: "مشهد، ایران"),
            ExerciseItem(id: UUID(), prompt: "تاج محل کجاست؟", options: ["چین", "پاکستان", "بنگلادش", "آگرا، هند"], correctAnswer: "آگرا، هند"),
            ExerciseItem(id: UUID(), prompt: "برای درمان دندان به کجا می‌روند؟", options: ["چشم‌پزشک", "پوست‌پزشک", "مطب دندانپزشک", "گوش‌پزشک"], correctAnswer: "مطب دندانپزشک"),
            ExerciseItem(id: UUID(), prompt: "برای فیلم دیدن روی پرده بزرگ به کجا می‌روند؟", options: ["تئاتر", "درایو-این", "سینما", "آمفی‌تئاتر"], correctAnswer: "سینما"),
            ExerciseItem(id: UUID(), prompt: "پارتنون کجاست؟", options: ["رم", "استانبول", "مادرید", "آتن، یونان"], correctAnswer: "آتن، یونان")
        ]
    )

    // MARK: - Exercise 3: WH Who — چه کسی (15 items)
    private static let whoQuestions = Exercise(
        id: UUID(),
        title: "WH سوال — چه کسی",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "رمئو و ژولیت را چه کسی نوشت؟", options: ["چارلز دیکنز", "ویلیام شکسپیر", "جین آستن", "ویکتور هوگو"], correctAnswer: "ویلیام شکسپیر"),
            ExerciseItem(id: UUID(), prompt: "اولین زنی که جایزه نوبل گرفت چه کسی بود؟", options: ["رزالیند فرانکلین", "فلورانس نایتینگل", "ماری کوری", "ادا لاولیس"], correctAnswer: "ماری کوری"),
            ExerciseItem(id: UUID(), prompt: "مونالیزا را چه کسی نقاشی کرد؟", options: ["میکل‌آنژ", "رافائل", "لئوناردو داوینچی", "بوتیچلی"], correctAnswer: "لئوناردو داوینچی"),
            ExerciseItem(id: UUID(), prompt: "لامپ برق را چه کسی اختراع کرد؟", options: ["نیکولا تسلا", "بنجامین فرانکلین", "الکساندر گراهام بل", "توماس ادیسون"], correctAnswer: "توماس ادیسون"),
            ExerciseItem(id: UUID(), prompt: "شاهنامه را چه کسی سرود؟", options: ["حافظ", "سعدی", "مولانا", "فردوسی"], correctAnswer: "فردوسی"),
            ExerciseItem(id: UUID(), prompt: "مثنوی معنوی را چه کسی نوشت؟", options: ["حافظ", "سعدی", "مولانا جلال‌الدین رومی", "عمر خیام"], correctAnswer: "مولانا جلال‌الدین رومی"),
            ExerciseItem(id: UUID(), prompt: "اولین انسانی که روی ماه قدم گذاشت چه کسی بود؟", options: ["باز آلدرین", "یوری گاگارین", "جان گلن", "نیل آرمسترانگ"], correctAnswer: "نیل آرمسترانگ"),
            ExerciseItem(id: UUID(), prompt: "بوستان و گلستان را چه کسی نوشت؟", options: ["حافظ", "سعدی", "رومی", "فردوسی"], correctAnswer: "سعدی"),
            ExerciseItem(id: UUID(), prompt: "نظریه نسبیت را چه کسی ارائه داد؟", options: ["ایزاک نیوتن", "استیون هاوکینگ", "آلبرت اینشتین", "گالیله"], correctAnswer: "آلبرت اینشتین"),
            ExerciseItem(id: UUID(), prompt: "ابن‌سینا (بوعلی سینا) چه کسی بود؟", options: ["شاعر بزرگ ایرانی", "پادشاه ایران باستان", "پزشک و فیلسوف بزرگ ایرانی", "کارگردان ایرانی"], correctAnswer: "پزشک و فیلسوف بزرگ ایرانی"),
            ExerciseItem(id: UUID(), prompt: "اولین رئیس‌جمهور آمریکا چه کسی بود؟", options: ["جان آدامز", "جرج واشینگتن", "توماس جفرسون", "بنجامین فرانکلین"], correctAnswer: "جرج واشینگتن"),
            ExerciseItem(id: UUID(), prompt: "حافظ شیرازی که بود؟", options: ["پادشاه ایران", "فیلسوف یونانی", "شاعر بزرگ غزل‌سرای ایرانی", "پزشک ایرانی"], correctAnswer: "شاعر بزرگ غزل‌سرای ایرانی"),
            ExerciseItem(id: UUID(), prompt: "مارتین لوتر کینگ جونیور چه کسی بود؟", options: ["رئیس‌جمهور آمریکا", "رهبر جنبش حقوق مدنی آمریکا", "اولین سناتور سیاه‌پوست", "قاضی دادگاه عالی"], correctAnswer: "رهبر جنبش حقوق مدنی آمریکا"),
            ExerciseItem(id: UUID(), prompt: "نامه‌ها را چه کسی به درِ خانه می‌رساند؟", options: ["پیک", "راننده تحویل", "پستچی", "دیسپچر"], correctAnswer: "پستچی"),
            ExerciseItem(id: UUID(), prompt: "کورش کبیر چه کسی بود؟", options: ["شاعر بزرگ ایران", "آخرین پادشاه ماد", "بنیانگذار امپراتوری هخامنشی", "فیلسوف یونانی"], correctAnswer: "بنیانگذار امپراتوری هخامنشی")
        ]
    )

    // MARK: - Exercise 4: WH When — چه وقت (15 items)
    private static let whenQuestions = Exercise(
        id: UUID(),
        title: "WH سوال — چه وقت",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "عید نوروز کی جشن گرفته می‌شود؟", options: ["اول دی ماه", "اول بهمن", "اول فروردین (۲۱ مارس)", "اول مهر"], correctAnswer: "اول فروردین (۲۱ مارس)"),
            ExerciseItem(id: UUID(), prompt: "روز ولنتاین کی است؟", options: ["۱۴ ژانویه", "۱۴ مارس", "۱۴ فوریه", "۱۴ آوریل"], correctAnswer: "۱۴ فوریه"),
            ExerciseItem(id: UUID(), prompt: "شب یلدا کی است؟", options: ["اول دی ماه", "آخر آذر — شب اول دی (طولانی‌ترین شب سال)", "اول بهمن", "شب عید نوروز"], correctAnswer: "آخر آذر — شب اول دی (طولانی‌ترین شب سال)"),
            ExerciseItem(id: UUID(), prompt: "عید فطر کی جشن گرفته می‌شود؟", options: ["ابتدای رمضان", "پایان ماه رمضان", "بعد از محرم", "هر جمعه"], correctAnswer: "پایان ماه رمضان"),
            ExerciseItem(id: UUID(), prompt: "روز استقلال آمریکا کی است؟", options: ["۴ ژوئن", "۴ جولای", "۴ اوت", "۴ سپتامبر"], correctAnswer: "۴ جولای"),
            ExerciseItem(id: UUID(), prompt: "جنگ جهانی دوم چه سال‌هایی بود؟", options: ["۱۹۱۴ تا ۱۹۱۸", "۱۹۲۹ تا ۱۹۳۵", "۱۹۳۹ تا ۱۹۴۵", "۱۹۴۱ تا ۱۹۴۹"], correctAnswer: "۱۹۳۹ تا ۱۹۴۵"),
            ExerciseItem(id: UUID(), prompt: "کریسمس کی است؟", options: ["۲۴ دسامبر", "۲۶ دسامبر", "۲۵ دسامبر", "۶ ژانویه"], correctAnswer: "۲۵ دسامبر"),
            ExerciseItem(id: UUID(), prompt: "سیزده‌به‌در کی است؟", options: ["سیزدهم فروردین", "سیزدهم اردیبهشت", "سیزدهم بهمن", "سیزدهم آذر"], correctAnswer: "سیزدهم فروردین"),
            ExerciseItem(id: UUID(), prompt: "انقلاب اسلامی ایران کی رخ داد؟", options: ["۱۹۶۳", "۱۹۷۱", "۱۹۷۹ (۱۳۵۷)", "۱۹۸۸"], correctAnswer: "۱۹۷۹ (۱۳۵۷)"),
            ExerciseItem(id: UUID(), prompt: "مردم معمولاً صبحانه کی می‌خورند؟", options: ["ظهر", "عصر", "صبح", "نیمه شب"], correctAnswer: "صبح"),
            ExerciseItem(id: UUID(), prompt: "پرندگان مهاجر معمولاً کی به جنوب می‌روند؟", options: ["بهار", "تابستان", "زمستان", "پاییز"], correctAnswer: "پاییز"),
            ExerciseItem(id: UUID(), prompt: "جشن چهارشنبه‌سوری کی است؟", options: ["آخرین چهارشنبه سال (قبل از نوروز)", "اولین چهارشنبه سال", "چهارشنبه اول فروردین", "چهارشنبه اول آذر"], correctAnswer: "آخرین چهارشنبه سال (قبل از نوروز)"),
            ExerciseItem(id: UUID(), prompt: "سال نو میلادی کی است؟", options: ["۳۱ دسامبر", "۲ ژانویه", "۱ ژانویه", "۲۵ دسامبر"], correctAnswer: "۱ ژانویه"),
            ExerciseItem(id: UUID(), prompt: "جنگ جهانی اول چه سالی آغاز شد؟", options: ["۱۹۰۵", "۱۹۱۴", "۱۹۱۸", "۱۹۳۹"], correctAnswer: "۱۹۱۴"),
            ExerciseItem(id: UUID(), prompt: "دیوار برلین چه سالی فرو ریخت؟", options: ["۱۹۷۵", "۱۹۸۳", "۱۹۸۹", "۱۹۹۱"], correctAnswer: "۱۹۸۹")
        ]
    )

    // MARK: - Exercise 5: WH Why — چرا (15 items)
    private static let whyQuestions = Exercise(
        id: UUID(),
        title: "WH سوال — چرا",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "قبل از غذا خوردن چرا دست‌ها را می‌شوییم؟", options: ["گرم کردن دست‌ها", "از بین بردن میکروب‌ها و جلوگیری از بیماری", "رعایت ادب", "نرم کردن پوست"], correctAnswer: "از بین بردن میکروب‌ها و جلوگیری از بیماری"),
            ExerciseItem(id: UUID(), prompt: "سگ‌ها چرا نفس‌نفس می‌زنند؟", options: ["چون گرسنه هستند", "برای خنک شدن", "چون ترسیده‌اند", "برای جلب توجه"], correctAnswer: "برای خنک شدن"),
            ExerciseItem(id: UUID(), prompt: "چرا کمربند ایمنی می‌بندیم؟", options: ["چون راحت است", "برای کاهش خطر آسیب در تصادف", "برای ماشین لازم است", "برای گرم ماندن"], correctAnswer: "برای کاهش خطر آسیب در تصادف"),
            ExerciseItem(id: UUID(), prompt: "چرا بعضی غذاها را در یخچال نگه می‌داریم؟", options: ["برای بهتر شدن طعم", "برای فریز کردن", "برای کُند کردن رشد باکتری‌ها", "برای صرفه‌جویی در فضا"], correctAnswer: "برای کُند کردن رشد باکتری‌ها"),
            ExerciseItem(id: UUID(), prompt: "چرا در پاییز برگ‌ها رنگ عوض می‌کنند؟", options: ["چون یخ‌زدگی آن‌ها را می‌کشد", "چون با کوتاه‌تر شدن روز درختان کلروفیل تولید را متوقف می‌کنند", "به خاطر کمبود باران", "چون حیوانات قسمت سبز را می‌خورند"], correctAnswer: "چون با کوتاه‌تر شدن روز درختان کلروفیل تولید را متوقف می‌کنند"),
            ExerciseItem(id: UUID(), prompt: "دکتر چرا فشار خون را اندازه می‌گیرد؟", options: ["برای چک کردن وزن", "برای پایش سلامت قلب و تشخیص فشار خون بالا", "برای سنجش آمادگی جسمانی", "برای غربالگری دیابت"], correctAnswer: "برای پایش سلامت قلب و تشخیص فشار خون بالا"),
            ExerciseItem(id: UUID(), prompt: "چرا چراغ‌راهنمایی وجود دارد؟", options: ["برای کُند کردن ترافیک", "برای کمک به عابرین پیاده", "برای کنترل جریان ترافیک و کاهش تصادفات", "برای جایگزینی پلیس راهنمایی"], correctAnswer: "برای کنترل جریان ترافیک و کاهش تصادفات"),
            ExerciseItem(id: UUID(), prompt: "چرا کرم ضد آفتاب می‌زنیم؟", options: ["برای خنک ماندن", "برای جلوگیری از لک", "برای محافظت از پوست در برابر اشعه ماوراء بنفش", "برای مرطوب نگه داشتن پوست"], correctAnswer: "برای محافظت از پوست در برابر اشعه ماوراء بنفش"),
            ExerciseItem(id: UUID(), prompt: "گزش پشه چرا خارش می‌زند؟", options: ["به خاطر خونی که پشه می‌برد", "به خاطر باکتری که آزاد می‌کند", "به دلیل واکنش ایمنی بدن به بزاق پشه", "چون زهر تزریق می‌کند"], correctAnswer: "به دلیل واکنش ایمنی بدن به بزاق پشه"),
            ExerciseItem(id: UUID(), prompt: "چرا رأی دادن مهم است؟", options: ["چون قانون الزامی می‌کند", "برای داشتن صدا در انتخاب نمایندگان دولت", "برای جلوگیری از جریمه", "به درخواست کارفرما"], correctAnswer: "برای داشتن صدا در انتخاب نمایندگان دولت"),
            ExerciseItem(id: UUID(), prompt: "چرا به ما خواب دست می‌دهد؟", options: ["فقط برای استراحت عضلات", "برای جلوگیری از پرخوری", "بدن تعمیر می‌شود و مغز خاطرات را تثبیت می‌کند", "فقط برای صرفه‌جویی در انرژی"], correctAnswer: "بدن تعمیر می‌شود و مغز خاطرات را تثبیت می‌کند"),
            ExerciseItem(id: UUID(), prompt: "چرا دندان‌ها را مسواک می‌زنیم؟", options: ["فقط برای تازگی نفس", "برای سفید کردن دندان", "برای از بین بردن پلاک و باکتری‌های ایجادکننده پوسیدگی", "فقط برای تقویت مینا"], correctAnswer: "برای از بین بردن پلاک و باکتری‌های ایجادکننده پوسیدگی"),
            ExerciseItem(id: UUID(), prompt: "چرا در زمستان کُت می‌پوشیم؟", options: ["برای مُد", "برای خیس نشدن در باران", "برای عایق‌بندی و گرم نگه داشتن بدن", "فقط برای محافظت از باد"], correctAnswer: "برای عایق‌بندی و گرم نگه داشتن بدن"),
            ExerciseItem(id: UUID(), prompt: "چرا بازیافت می‌کنیم؟", options: ["برای درآمد از مراکز بازیافت", "برای کاهش زباله و حفظ منابع طبیعی", "چون دولت الزامی کرده", "برای تمیز نگه داشتن خانه"], correctAnswer: "برای کاهش زباله و حفظ منابع طبیعی"),
            ExerciseItem(id: UUID(), prompt: "چرا مردم وصیت‌نامه می‌نویسند؟", options: ["برای فرار از مالیات", "برای برنامه‌ریزی مراسم خاکسپاری", "برای تعیین قانونی توزیع دارایی پس از مرگ", "برای محافظت از دعاوی حقوقی"], correctAnswer: "برای تعیین قانونی توزیع دارایی پس از مرگ")
        ]
    )

    // MARK: - Exercise 6: WH How Many — چند تا (20 items)
    private static let howManyQuestions = Exercise(
        id: UUID(),
        title: "WH سوال — چند تا",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "یک هفته چند روز دارد؟", options: ["5", "6", "7", "8"], correctAnswer: "7"),
            ExerciseItem(id: UUID(), prompt: "یک سال چند ماه دارد؟", options: ["10", "11", "12", "13"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "یک شبانه‌روز چند ساعت دارد؟", options: ["20", "22", "24", "26"], correctAnswer: "24"),
            ExerciseItem(id: UUID(), prompt: "یک دقیقه چند ثانیه دارد؟", options: ["30", "45", "60", "90"], correctAnswer: "60"),
            ExerciseItem(id: UUID(), prompt: "یک متر چند سانتیمتر دارد؟", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "یک کیلوگرم چند گرم دارد؟", options: ["100", "500", "1000", "2000"], correctAnswer: "1000"),
            ExerciseItem(id: UUID(), prompt: "شش‌ضلعی چند ضلع دارد؟", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "مثلث چند ضلع دارد؟", options: ["2", "3", "4", "5"], correctAnswer: "3"),
            ExerciseItem(id: UUID(), prompt: "عنکبوت چند پا دارد؟", options: ["4", "6", "8", "10"], correctAnswer: "8"),
            ExerciseItem(id: UUID(), prompt: "یک سال چند هفته دارد؟", options: ["48", "50", "52", "54"], correctAnswer: "52"),
            ExerciseItem(id: UUID(), prompt: "یک سال شمسی چند روز دارد؟", options: ["300", "356", "365", "400"], correctAnswer: "365"),
            ExerciseItem(id: UUID(), prompt: "یک قرن چند سال دارد؟", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "فروردین ماه چند روز دارد؟", options: ["28", "29", "30", "31"], correctAnswer: "31"),
            ExerciseItem(id: UUID(), prompt: "فیل چند پا دارد؟", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "قاره‌های جهان چند تا هستند؟", options: ["5", "6", "7", "8"], correctAnswer: "7"),
            ExerciseItem(id: UUID(), prompt: "حواس پنجگانه چند تا هستند؟", options: ["3", "4", "5", "6"], correctAnswer: "5"),
            ExerciseItem(id: UUID(), prompt: "یک سال چند فصل دارد؟", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "یک تن چند کیلوگرم است؟", options: ["100", "500", "1000", "2000"], correctAnswer: "1000"),
            ExerciseItem(id: UUID(), prompt: "یک میلیون چند صفر دارد؟", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "یک قرن چند دهه دارد؟", options: ["5", "8", "10", "100"], correctAnswer: "10")
        ]
    )

    // MARK: - Exercise 7: Yes or No — بله یا خیر (20 items)
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "بله یا خیر",
        instructions: "بله یا خیر جواب دهید.",
        section: .cognition,
        type: .yesNo,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "آیا خورشید یک ستاره است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا یخ روی آب شناور می‌شود؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا پاریس پایتخت آلمان است؟", options: ["Yes", "No"], correctAnswer: "No", explanation: "برلین پایتخت آلمان است"),
            ExerciseItem(id: UUID(), prompt: "آیا ماه نور خودش را دارد؟", options: ["Yes", "No"], correctAnswer: "No", explanation: "ماه نور خورشید را بازتاب می‌دهد"),
            ExerciseItem(id: UUID(), prompt: "آیا اقیانوس آرام بزرگ‌ترین اقیانوس جهان است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا قلب انسان چهار حجره دارد؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا خفاش یک پستاندار است؟", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "خفاش پرنده نیست"),
            ExerciseItem(id: UUID(), prompt: "آیا نیل آرمسترانگ اولین انسانی بود که روی ماه راه رفت؟", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "۲۰ جولای ۱۹۶۹"),
            ExerciseItem(id: UUID(), prompt: "آیا تهران پایتخت ایران است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا ایران در آسیا است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا دلفین یک پستاندار است؟", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "دلفین با ریه هوا تنفس می‌کند"),
            ExerciseItem(id: UUID(), prompt: "آیا پنگوئن نوعی پرنده است؟", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "پنگوئن پرنده است اما نمی‌تواند پرواز کند"),
            ExerciseItem(id: UUID(), prompt: "آیا خورشید از شرق طلوع می‌کند؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا اهرام ثلاثه در مراکش هستند؟", options: ["Yes", "No"], correctAnswer: "No", explanation: "اهرام ثلاثه در مصر هستند"),
            ExerciseItem(id: UUID(), prompt: "آیا تهران بزرگ‌ترین شهر ایران است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا فارسی زبان رسمی ایران است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا بدن کودک استخوان‌های بیشتری نسبت به بزرگسال دارد؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا برزیل در آمریکای جنوبی است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا دریای خزر بزرگ‌ترین دریاچه جهان است؟", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "آیا زبان رسمی برزیل پرتغالی است؟", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "اسپانیایی نیست")
        ]
    )

    // MARK: - Exercise 8: History — تاریخ (15 items)
    private static let historyKnowledge = Exercise(
        id: UUID(),
        title: "دانش عمومی — تاریخ",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "اولین رئیس‌جمهور آمریکا چه کسی بود؟", options: ["جان آدامز", "جرج واشینگتن", "توماس جفرسون", "بنجامین فرانکلین"], correctAnswer: "جرج واشینگتن"),
            ExerciseItem(id: UUID(), prompt: "کشتی تایتانیک چه سالی غرق شد؟", options: ["۱۹۰۱", "۱۹۱۲", "۱۹۱۸", "۱۹۳۵"], correctAnswer: "۱۹۱۲"),
            ExerciseItem(id: UUID(), prompt: "شاهنامه را چه کسی سرود؟", options: ["حافظ", "سعدی", "عمر خیام", "فردوسی"], correctAnswer: "فردوسی"),
            ExerciseItem(id: UUID(), prompt: "انقلاب اسلامی ایران چه سالی رخ داد؟", options: ["۱۹۶۳", "۱۹۷۱", "۱۹۷۹", "۱۹۸۸"], correctAnswer: "۱۹۷۹"),
            ExerciseItem(id: UUID(), prompt: "ماشین چاپ را چه کسی اختراع کرد؟", options: ["لئوناردو داوینچی", "گالیله", "یوهانس گوتنبرگ", "ایزاک نیوتن"], correctAnswer: "یوهانس گوتنبرگ"),
            ExerciseItem(id: UUID(), prompt: "جنگ جهانی دوم چه سال‌هایی بود؟", options: ["۱۹۱۴ تا ۱۹۱۸", "۱۹۲۹ تا ۱۹۳۵", "۱۹۳۹ تا ۱۹۴۵", "۱۹۴۱ تا ۱۹۴۹"], correctAnswer: "۱۹۳۹ تا ۱۹۴۵"),
            ExerciseItem(id: UUID(), prompt: "کورش کبیر چه کسی بود؟", options: ["آخرین پادشاه بابل", "بنیانگذار امپراتوری هخامنشی", "فرمانده اسکندر مقدونی", "پادشاه اشکانی"], correctAnswer: "بنیانگذار امپراتوری هخامنشی"),
            ExerciseItem(id: UUID(), prompt: "کدام کشور اولین انسان را به ماه فرستاد؟", options: ["روسیه", "فرانسه", "بریتانیا", "ایالات متحده آمریکا"], correctAnswer: "ایالات متحده آمریکا"),
            ExerciseItem(id: UUID(), prompt: "سخنرانی «رویایی دارم» را چه کسی ایراد کرد؟", options: ["مالکوم ایکس", "باراک اوباما", "مارتین لوتر کینگ جونیور", "فردریک داگلاس"], correctAnswer: "مارتین لوتر کینگ جونیور"),
            ExerciseItem(id: UUID(), prompt: "اولین بازی‌های المپیک مدرن در ۱۸۹۶ کجا برگزار شد؟", options: ["پاریس", "لندن", "رم", "آتن"], correctAnswer: "آتن"),
            ExerciseItem(id: UUID(), prompt: "واکسن فلج اطفال را چه کسی کشف کرد؟", options: ["لویی پاستور", "الکساندر فلمینگ", "جوناس سالک", "ادوارد جنر"], correctAnswer: "جوناس سالک"),
            ExerciseItem(id: UUID(), prompt: "دیوار برلین چه سالی فرو ریخت؟", options: ["۱۹۷۵", "۱۹۸۳", "۱۹۸۹", "۱۹۹۱"], correctAnswer: "۱۹۸۹"),
            ExerciseItem(id: UUID(), prompt: "جنگ جهانی اول چه سالی آغاز شد؟", options: ["۱۹۰۵", "۱۹۱۴", "۱۹۱۸", "۱۹۲۰"], correctAnswer: "۱۹۱۴"),
            ExerciseItem(id: UUID(), prompt: "ابن‌سینا اهل کجا بود؟", options: ["عرب", "یونان", "ایران (بخارا)", "مصر"], correctAnswer: "ایران (بخارا)"),
            ExerciseItem(id: UUID(), prompt: "امپراتوری هخامنشی توسط چه کسی به پایان رسید؟", options: ["روم باستان", "اسکندر مقدونی", "اعراب مسلمان", "مغول‌ها"], correctAnswer: "اسکندر مقدونی")
        ]
    )

    // MARK: - Exercise 9: Locations — مکان‌ها (20 items)
    private static let locationsKnowledge = Exercise(
        id: UUID(),
        title: "دانش عمومی — مکان‌ها",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "پایتخت ایران کجاست؟", options: ["اصفهان", "شیراز", "مشهد", "تهران"], correctAnswer: "تهران"),
            ExerciseItem(id: UUID(), prompt: "پایتخت فرانسه کجاست؟", options: ["لیون", "مارسی", "پاریس", "بوردو"], correctAnswer: "پاریس"),
            ExerciseItem(id: UUID(), prompt: "پایتخت آمریکا کجاست؟", options: ["نیویورک", "لوس‌آنجلس", "واشینگتن دی‌سی", "شیکاگو"], correctAnswer: "واشینگتن دی‌سی"),
            ExerciseItem(id: UUID(), prompt: "پایتخت ژاپن کجاست؟", options: ["اوزاکا", "کیوتو", "توکیو", "هیروشیما"], correctAnswer: "توکیو"),
            ExerciseItem(id: UUID(), prompt: "پایتخت استرالیا کجاست؟", options: ["سیدنی", "ملبورن", "کانبرا", "بریزبن"], correctAnswer: "کانبرا"),
            ExerciseItem(id: UUID(), prompt: "بلندترین کوه جهان کجاست؟", options: ["K2 در پاکستان", "کیلیمانجارو در آفریقا", "قله اورست در هیمالیا", "دناوِست در ایران"], correctAnswer: "قله اورست در هیمالیا"),
            ExerciseItem(id: UUID(), prompt: "تخت‌جمشید کجاست؟", options: ["اصفهان", "کرمان", "تهران", "نزدیک شیراز، فارس"], correctAnswer: "نزدیک شیراز، فارس"),
            ExerciseItem(id: UUID(), prompt: "مسجد نقش جهان کجاست؟", options: ["تهران", "مشهد", "شیراز", "اصفهان"], correctAnswer: "اصفهان"),
            ExerciseItem(id: UUID(), prompt: "آرامگاه حافظ کجاست؟", options: ["تهران", "اصفهان", "شیراز", "مشهد"], correctAnswer: "شیراز"),
            ExerciseItem(id: UUID(), prompt: "مرقد امام رضا (ع) کجاست؟", options: ["تهران", "اصفهان", "شیراز", "مشهد"], correctAnswer: "مشهد"),
            ExerciseItem(id: UUID(), prompt: "دریای خزر در کجای ایران است؟", options: ["جنوب ایران", "شرق ایران", "غرب ایران", "شمال ایران"], correctAnswer: "شمال ایران"),
            ExerciseItem(id: UUID(), prompt: "خلیج فارس در کجای ایران است؟", options: ["شمال ایران", "شرق ایران", "غرب ایران", "جنوب ایران"], correctAnswer: "جنوب ایران"),
            ExerciseItem(id: UUID(), prompt: "قله دماوند کجاست؟", options: ["زاگرس، غرب ایران", "البرز، شمال ایران", "کوه‌های شرق ایران", "کویر مرکزی"], correctAnswer: "البرز، شمال ایران"),
            ExerciseItem(id: UUID(), prompt: "مسجد الحرام کجاست؟", options: ["ایران", "عراق", "مکه، عربستان سعودی", "امارات متحده عربی"], correctAnswer: "مکه، عربستان سعودی"),
            ExerciseItem(id: UUID(), prompt: "دریاچه ارومیه کجاست؟", options: ["خوزستان", "فارس", "آذربایجان غربی، ایران", "مازندران"], correctAnswer: "آذربایجان غربی، ایران"),
            ExerciseItem(id: UUID(), prompt: "تاج محل کجاست؟", options: ["چین", "پاکستان", "بنگلادش", "آگرا، هند"], correctAnswer: "آگرا، هند"),
            ExerciseItem(id: UUID(), prompt: "برج ایفل کجاست؟", options: ["بلژیک", "ایتالیا", "اسپانیا", "پاریس، فرانسه"], correctAnswer: "پاریس، فرانسه"),
            ExerciseItem(id: UUID(), prompt: "اهرام ثلاثه کجا هستند؟", options: ["مراکش", "سودان", "لیبی", "مصر"], correctAnswer: "مصر"),
            ExerciseItem(id: UUID(), prompt: "کولوسئوم کجاست؟", options: ["آتن", "مادرید", "استانبول", "رم، ایتالیا"], correctAnswer: "رم، ایتالیا"),
            ExerciseItem(id: UUID(), prompt: "بزرگ‌ترین شهر ایران کجاست؟", options: ["اصفهان", "مشهد", "شیراز", "تهران"], correctAnswer: "تهران")
        ]
    )

    // MARK: - Exercise 10: Popular Media — رسانه (15 items)
    private static let popularMedia = Exercise(
        id: UUID(),
        title: "دانش عمومی — رسانه و فرهنگ",
        instructions: "جواب درست را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "فیلم «جدایی نادر از سیمین» ساخته چه کسی است؟", options: ["مجید مجیدی", "عباس کیارستمی", "اصغر فرهادی", "داریوش مهرجویی"], correctAnswer: "اصغر فرهادی"),
            ExerciseItem(id: UUID(), prompt: "محمدرضا شجریان در چه زمینه‌ای مشهور بود؟", options: ["موسیقی پاپ", "آواز کلاسیک ایرانی (موسیقی سنتی)", "بازیگری", "نوازندگی تار"], correctAnswer: "آواز کلاسیک ایرانی (موسیقی سنتی)"),
            ExerciseItem(id: UUID(), prompt: "کتاب «بوف کور» اثر چه کسی است؟", options: ["بزرگ علوی", "صادق هدایت", "جلال آل احمد", "ابراهیم گلستان"], correctAnswer: "صادق هدایت"),
            ExerciseItem(id: UUID(), prompt: "گوگوش (فائقه آتشین) در چه زمینه‌ای مشهور است؟", options: ["نویسندگی", "کارگردانی", "خوانندگی و بازیگری ایرانی", "نقاشی"], correctAnswer: "خوانندگی و بازیگری ایرانی"),
            ExerciseItem(id: UUID(), prompt: "فیلم «گاو» ساخته چه کسی است؟", options: ["اصغر فرهادی", "مجید مجیدی", "داریوش مهرجویی", "بهرام بیضایی"], correctAnswer: "داریوش مهرجویی"),
            ExerciseItem(id: UUID(), prompt: "هری پاتر را چه کسی نوشت؟", options: ["رولد دال", "جی‌آر‌آر تالکین", "جی‌کی رولینگ", "سی‌اس لوییس"], correctAnswer: "جی‌کی رولینگ"),
            ExerciseItem(id: UUID(), prompt: "سریال «پایتخت» درباره چیست؟", options: ["زندگی در قزوین", "یک خانواده ایرانی از مازندران که به تهران می‌آید", "داستان جنگ", "زندگی در اصفهان"], correctAnswer: "یک خانواده ایرانی از مازندران که به تهران می‌آید"),
            ExerciseItem(id: UUID(), prompt: "حسین علیزاده در چه زمینه‌ای مشهور است؟", options: ["بازیگری", "نویسندگی", "نوازندگی و آهنگسازی موسیقی سنتی ایرانی", "کارگردانی"], correctAnswer: "نوازندگی و آهنگسازی موسیقی سنتی ایرانی"),
            ExerciseItem(id: UUID(), prompt: "فیلم انیمیشنی که در آن یک ماهی دلقک دنبال پسرش می‌گردد چه نام دارد؟", options: ["شارک تیل", "پری دریایی کوچک", "در جستجوی نمو", "هپی فیت"], correctAnswer: "در جستجوی نمو"),
            ExerciseItem(id: UUID(), prompt: "فیلم ۱۹۹۴ «فارست گامپ» با بازی چه کسی است؟", options: ["تام کروز", "تام هنکس", "کوین کاستنر", "داستین هافمن"], correctAnswer: "تام هنکس"),
            ExerciseItem(id: UUID(), prompt: "«پادشاه راک اند رول» چه کسی نامیده می‌شود؟", options: ["چاک بری", "جری لی لوییس", "الویس پرسلی", "بادی هالی"], correctAnswer: "الویس پرسلی"),
            ExerciseItem(id: UUID(), prompt: "فیلم ۱۹۳۹ «جادوگر اُز» با کدام شخصیت اصلی است؟", options: ["سفیدبرفی", "خفته زیبا", "دوروتی", "فانتزیا"], correctAnswer: "دوروتی"),
            ExerciseItem(id: UUID(), prompt: "اولین فیلم پیکسار با عنوان «داستان اسباب‌بازی» چه سالی اکران شد؟", options: ["۱۹۹۱", "۱۹۹۳", "۱۹۹۵", "۱۹۹۷"], correctAnswer: "۱۹۹۵"),
            ExerciseItem(id: UUID(), prompt: "مجید مجیدی به خاطر کدام فیلم بیشتر مشهور است؟", options: ["بچه‌های آسمان", "بوف کور", "گاو", "پایتخت"], correctAnswer: "بچه‌های آسمان"),
            ExerciseItem(id: UUID(), prompt: "خانواده زرد رنگ در انیمیشن «سیمپسون‌ها» در کدام شهر زندگی می‌کنند؟", options: ["فمیلی گای", "باب برگرز", "اسپرینگ‌فیلد", "آمریکن دَد"], correctAnswer: "اسپرینگ‌فیلد")
        ]
    )

    // MARK: - Exercise 11: Persian Idioms — اصطلاحات (15 items)
    // ⚠️ FLAGGED FOR NATIVE SPEAKER REVIEW — correctAnswers are approximate English-influenced explanations
    private static let idioms = Exercise(
        id: UUID(),
        title: "ضرب‌المثل‌های فارسی",
        instructions: "معنی ضرب‌المثل را به زبان خودتان توضیح دهید.",
        section: .cognition,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "آب در هاون کوبیدن", options: [], correctAnswer: "کار بیهوده انجام دادن — تلاش برای کاری که هیچ نتیجه‌ای ندارد"),
            ExerciseItem(id: UUID(), prompt: "از ماست که بر ماست", options: [], correctAnswer: "عواقب اعمال خودمان دامنگیرمان می‌شود — خودمان مقصر مشکلاتمان هستیم"),
            ExerciseItem(id: UUID(), prompt: "خانه از پای‌بست ویران است", options: [], correctAnswer: "مشکل اصلی از پایه و اساس است — وقتی اشکال در ریشه باشد"),
            ExerciseItem(id: UUID(), prompt: "دل به دریا زدن", options: [], correctAnswer: "جرئت کردن و ریسک کردن — تصمیم گرفتن با وجود ترس"),
            ExerciseItem(id: UUID(), prompt: "کار از محکم‌کاری عیب نمی‌کند", options: [], correctAnswer: "احتیاط و دقت همیشه مفید است — بهتر است مطمئن شویم"),
            ExerciseItem(id: UUID(), prompt: "تا تنور گرم است نان را بچسبان", options: [], correctAnswer: "از فرصت موجود استفاده کن — این معادل «آهن را تا داغ است بکوب» است"),
            ExerciseItem(id: UUID(), prompt: "آفتاب لب بام", options: [], correctAnswer: "چیزی آشکار و واضح که همه می‌دانند — یا کسی که سنش زیاد شده"),
            ExerciseItem(id: UUID(), prompt: "نه سیخ بسوزد نه کباب", options: [], correctAnswer: "راه‌حلی که هر دو طرف راضی باشند — حل مسئله بدون ضرر به هیچ‌کدام"),
            ExerciseItem(id: UUID(), prompt: "زبان سرخ سر سبز می‌دهد بر باد", options: [], correctAnswer: "سخن نسنجیده می‌تواند به ضررت تمام شود — حرف زدن بی‌احتیاط خطرناک است"),
            ExerciseItem(id: UUID(), prompt: "گر صبر کنی ز غوره حلوا سازی", options: [], correctAnswer: "با صبر و تلاش می‌توان سختی را به شیرینی تبدیل کرد"),
            ExerciseItem(id: UUID(), prompt: "آب که از سر گذشت چه یک نی چه صد نی", options: [], correctAnswer: "وقتی مشکل از حدی بگذرد دیگر کم یا زیادش فرق ندارد"),
            ExerciseItem(id: UUID(), prompt: "خوردن برای زیستن یا زیستن برای خوردن", options: [], correctAnswer: "سوالی درباره اولویت‌های زندگی — آیا هدف اصلی ما غذا است یا زندگی؟"),
            ExerciseItem(id: UUID(), prompt: "سیب زمین داغ", options: [], correctAnswer: "موضوع یا مسئله‌ای که هیچ‌کس نمی‌خواهد مسئولیتش را بپذیرد"),
            ExerciseItem(id: UUID(), prompt: "از کوزه همان برون تراود که در اوست", options: [], correctAnswer: "رفتار هر کس نشان‌دهنده شخصیت درونی اوست — آدم آن‌چه در دل دارد بروز می‌دهد"),
            ExerciseItem(id: UUID(), prompt: "مرغ همسایه غاز است", options: [], correctAnswer: "همیشه چیزهای دیگران بهتر از آن چیزی است که خودمان داریم")
        ]
    )

    // MARK: - Exercise 12: Estimation and Logic — تخمین (20 items)
    private static let estimationLogic = Exercise(
        id: UUID(),
        title: "تخمین و منطق",
        instructions: "مناسب‌ترین و درست‌ترین جواب را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "پختن تخم‌مرغ آب‌پز نیمه‌سفت چقدر طول می‌کشد؟", options: ["۱ دقیقه", "۶ دقیقه", "۲۰ دقیقه", "۱ ساعت"], correctAnswer: "۶ دقیقه"),
            ExerciseItem(id: UUID(), prompt: "معمولاً یک جعبه تخم‌مرغ چند تا دارد؟", options: ["۶", "۱۲", "۱۸", "۲۴"], correctAnswer: "۱۲"),
            ExerciseItem(id: UUID(), prompt: "یک ماشین معمولی چند چرخ دارد؟", options: ["۲", "۳", "۴", "۶"], correctAnswer: "۴"),
            ExerciseItem(id: UUID(), prompt: "یک وان حمام پر از آب حدود چند لیتر آب دارد؟", options: ["۵ لیتر", "۳۰ لیتر", "حدود ۱۲۰ لیتر", "۵۰۰ لیتر"], correctAnswer: "حدود ۱۲۰ لیتر"),
            ExerciseItem(id: UUID(), prompt: "آیا فیل از موش بزرگ‌تر است؟", options: ["بله", "خیر"], correctAnswer: "بله"),
            ExerciseItem(id: UUID(), prompt: "آیا یک نفر به تنهایی می‌تواند یک ماشین را بلند کند؟", options: ["بله، به راحتی", "بله، با تمرین", "خیر، ماشین خیلی سنگین است", "بله، با یک دست"], correctAnswer: "خیر، ماشین خیلی سنگین است"),
            ExerciseItem(id: UUID(), prompt: "یک نفر معمولاً با چه سرعتی پیاده‌روی می‌کند؟", options: ["حدود ۱ کیلومتر در ساعت", "حدود ۵ کیلومتر در ساعت", "حدود ۲۰ کیلومتر در ساعت", "حدود ۵۰ کیلومتر در ساعت"], correctAnswer: "حدود ۵ کیلومتر در ساعت"),
            ExerciseItem(id: UUID(), prompt: "یک ساندویچ معمولاً با چند تکه نان درست می‌شود؟", options: ["۱", "۲", "۳", "۴"], correctAnswer: "۲"),
            ExerciseItem(id: UUID(), prompt: "اگر روزی ۳ وعده غذا بخورید در یک هفته چند وعده می‌خورید؟", options: ["۳", "۷", "۱۴", "۲۱"], correctAnswer: "۲۱"),
            ExerciseItem(id: UUID(), prompt: "یک قرن چند دهه دارد؟", options: ["۵", "۸", "۱۰", "۱۰۰"], correctAnswer: "۱۰"),
            ExerciseItem(id: UUID(), prompt: "یک کیسه ۵ کیلویی برنج چقدر وزن دارد؟", options: ["۱ کیلو", "۲ کیلو", "۵ کیلو", "۱۰ کیلو"], correctAnswer: "۵ کیلو"),
            ExerciseItem(id: UUID(), prompt: "یک میلیون چند صفر دارد؟", options: ["۴", "۵", "۶", "۷"], correctAnswer: "۶"),
            ExerciseItem(id: UUID(), prompt: "یک کیلو پنبه با یک کیلو آهن کدام سنگین‌تر است؟", options: ["آهن", "پنبه", "هر دو یکسان هستند", "بستگی دارد"], correctAnswer: "هر دو یکسان هستند"),
            ExerciseItem(id: UUID(), prompt: "یک بزرگسال سالم شبانه چند ساعت باید بخوابد؟", options: ["۳ تا ۴ ساعت", "۶ تا ۸ ساعت", "۱۰ تا ۱۲ ساعت", "۱۴ تا ۱۶ ساعت"], correctAnswer: "۶ تا ۸ ساعت"),
            ExerciseItem(id: UUID(), prompt: "اگر ساعت ۸ صبح از خانه بروید و ساعت ۱۲ ظهر برگردید چند ساعت بیرون بوده‌اید؟", options: ["۲ ساعت", "۴ ساعت", "۶ ساعت", "۸ ساعت"], correctAnswer: "۴ ساعت"),
            ExerciseItem(id: UUID(), prompt: "یک تن چند کیلوگرم است؟", options: ["۱۰۰", "۵۰۰", "۱۰۰۰", "۲۰۰۰"], correctAnswer: "۱۰۰۰"),
            ExerciseItem(id: UUID(), prompt: "ماه‌های سال شمسی که ۳۱ روز دارند چند تا هستند؟", options: ["۴", "۵", "۶", "۷"], correctAnswer: "۶"),
            ExerciseItem(id: UUID(), prompt: "اگر یک ربع ساعت منتظر مانده باشید چند دقیقه صبر کرده‌اید؟", options: ["۱۰ دقیقه", "۱۵ دقیقه", "۲۰ دقیقه", "۳۰ دقیقه"], correctAnswer: "۱۵ دقیقه"),
            ExerciseItem(id: UUID(), prompt: "سال چند فصل دارد؟", options: ["۲", "۳", "۴", "۶"], correctAnswer: "۴"),
            ExerciseItem(id: UUID(), prompt: "یک ماه معمولاً چند هفته دارد؟", options: ["۲", "۳", "تقریباً ۴", "۵"], correctAnswer: "تقریباً ۴")
        ]
    )

    // MARK: - Exercise 13: Deductive Reasoning — استدلال (15 items)
    private static let deductiveReasoning = Exercise(
        id: UUID(),
        title: "استدلال و تفکر منطقی",
        instructions: "هر موقعیت را بخوانید و مناسب‌ترین نتیجه را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "کسی مایوی شنا و عینک آفتابی دارد. احتمالاً به کجا می‌رود؟", options: ["سینما", "ساحل یا استخر", "عروسی", "خرید مواد غذایی"], correctAnswer: "ساحل یا استخر"),
            ExerciseItem(id: UUID(), prompt: "آمبولانس با چراغ روشن و آژیر در حال حرکت است. چه باید کرد؟", options: ["سرعت را بیشتر کنید", "کنار بروید و توقف کنید", "بوق بزنید", "نادیده بگیرید"], correctAnswer: "کنار بروید و توقف کنید"),
            ExerciseItem(id: UUID(), prompt: "کسی چتر و باران‌پوش پوشیده. هوا چطور است؟", options: ["گرم و آفتابی", "سرد و برفی", "بارانی", "خشک و بادی"], correctAnswer: "بارانی"),
            ExerciseItem(id: UUID(), prompt: "شب هنگام ناگهان تمام چراغ‌های خانه خاموش شدند. چه اتفاقی افتاده؟", options: ["خورشید غروب کرده", "برق رفته", "چشم‌هایتان را بستید", "تلویزیون خاموش شده"], correctAnswer: "برق رفته"),
            ExerciseItem(id: UUID(), prompt: "در آشپزخانه بوی گاز می‌آید. اول چه باید کرد؟", options: ["کبریت روشن کنید", "برق را روشن کنید", "فوری از خانه خارج شوید و با اورژانس گاز تماس بگیرید", "فر را باز کنید"], correctAnswer: "فوری از خانه خارج شوید و با اورژانس گاز تماس بگیرید"),
            ExerciseItem(id: UUID(), prompt: "شب برف شدیدی باریده. صبح می‌خواهید با ماشین بروید. اول چه می‌کنید؟", options: ["با سرعت معمولی حرکت می‌کنید", "وضعیت جاده را بررسی کرده و شیشه ماشین را تمیز می‌کنید", "با پلیس تماس می‌گیرید", "برای همیشه در خانه می‌مانید"], correctAnswer: "وضعیت جاده را بررسی کرده و شیشه ماشین را تمیز می‌کنید"),
            ExerciseItem(id: UUID(), prompt: "دوستت بعد از مدت طولانی در سرما بودن بی‌اختیار می‌لرزد و گیج است. احتمالاً چه مشکلی دارد؟", options: ["گرمازدگی", "هیپوترمیا (افت دمای بدن)", "کم‌آبی", "آفتاب‌سوختگی"], correctAnswer: "هیپوترمیا (افت دمای بدن)"),
            ExerciseItem(id: UUID(), prompt: "کسی کت و شلوار رسمی پوشیده و دسته گل در دست دارد. احتمالاً کجا می‌رود؟", options: ["فارغ‌التحصیلی", "مراسم خاکسپاری", "عروسی", "تولد"], correctAnswer: "عروسی"),
            ExerciseItem(id: UUID(), prompt: "کسی در بیمارستان اسکراب پوشیده و گوشی (استتوسکوپ) دارد. احتمالاً کیست؟", options: ["معلم", "آشپز", "دکتر یا پرستار", "پلیس"], correctAnswer: "دکتر یا پرستار"),
            ExerciseItem(id: UUID(), prompt: "صدای رعد از دور می‌آید. چه آب‌وهوایی در راه است؟", options: ["گردباد", "طوفان و باران", "زلزله", "برف سنگین"], correctAnswer: "طوفان و باران"),
            ExerciseItem(id: UUID(), prompt: "کسی کُت ضخیم، بوت و دستکش پوشیده. چه فصلی است؟", options: ["تابستان", "بهار", "زمستان", "پاییز"], correctAnswer: "زمستان"),
            ExerciseItem(id: UUID(), prompt: "قبض با رنگ قرمز آمده و نوشته «معوقه». یعنی چه؟", options: ["زودتر پرداخت کردید", "به موقع پرداخت شده", "هنوز سر نرسیده", "بدهی دارید که باید قبلاً پرداخت می‌شد"], correctAnswer: "بدهی دارید که باید قبلاً پرداخت می‌شد"),
            ExerciseItem(id: UUID(), prompt: "کسی کلاه فارغ‌التحصیلی بر سر دارد و گواهینامه در دست دارد. از کجا می‌آید؟", options: ["عروسی", "مراسم فارغ‌التحصیلی", "خاکسپاری", "مصاحبه شغلی"], correctAnswer: "مراسم فارغ‌التحصیلی"),
            ExerciseItem(id: UUID(), prompt: "شمع‌های شام را روشن کردید و باید ۲۰ دقیقه به اتاق دیگری بروید. چه می‌کنید؟", options: ["روشن رهایشان می‌کنید", "قبل از رفتن خاموش می‌کنید", "نادیده می‌گیرید", "پنجره را باز می‌کنید"], correctAnswer: "قبل از رفتن خاموش می‌کنید"),
            ExerciseItem(id: UUID(), prompt: "در خیابان کسی را می‌بینید که گریه می‌کند و نگران به نظر می‌رسد. چه واکنشی مناسب است؟", options: ["نادیده بگیرید", "سریع رد شوید", "با احترام بپرسید آیا کمکی لازم دارند", "عکس بگیرید"], correctAnswer: "با احترام بپرسید آیا کمکی لازم دارند")
        ]
    )

    // MARK: - Exercise 14: Personal Memory — خاطرات (20 items)
    private static let personalMemory = Exercise(
        id: UUID(),
        title: "خاطرات شخصی",
        instructions: "این سوال‌ها باز هستند. جواب درست یا غلطی وجود ندارد. خاطرات خود را به اشتراک بگذارید.",
        section: .cognition,
        type: .openEnded,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "در کدام شهر یا محله بزرگ شدید؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "قدیمی‌ترین خاطره دوران کودکی‌تان چیست؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "در کودکی آرزو داشتید چه کاره بشوید؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "یک مهمانی یا جشن خاطره‌انگیز را توصیف کنید.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "کدام آهنگ شما را به یاد دوران یا لحظه خاصی می‌اندازد؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "معلم یا استاد محبوبتان چه کسی بود و چه چیزی او را خاص می‌کرد؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "یک ماشین یا وسیله نقلیه خاطره‌انگیز را توصیف کنید.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "غذای محبوب عید یا تعطیلاتتان چیست و چه کسی آن را می‌پخت؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "وقتی یک رویداد بزرگ تاریخی اتفاق افتاد — مثل انقلاب یا ۱۱ سپتامبر — کجا بودید؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "اولین شغلتان چه بود؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "یک سفر یادگاری یا تعطیلات خوب را توصیف کنید.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "در کودکی چه بازی‌هایی می‌کردید؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "خانه دوران کودکی‌تان را هرچه بیشتر توصیف کنید.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "کدام بوی خاص شما را به یاد خاطره‌ای می‌اندازد؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "در خانواده‌تان چه رسم یا سنتی وجود داشت؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "چه مهارت یا سرگرمی دارید که به آن افتخار می‌کنید؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "لحظه‌ای را تعریف کنید که آنقدر خندیدید که اشک در چشمتان آمد.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "پدر، مادر یا پدربزرگ و مادربزرگتان چه حرف‌هایی می‌زدند که هنوز یادتان مانده؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "رانندگی، آشپزی یا مهارت مهم دیگری را چه کسی به شما آموخت؟", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "غذای دوران کودکی‌تان که هنوز هم دوستش دارید چیست؟", options: [], correctAnswer: "")
        ]
    )

    // MARK: - Exercise 15: Rote Memory Lists — لیست‌های حفظی (12 items)
    private static let roteMemory = Exercise(
        id: UUID(),
        title: "لیست‌های حفظی",
        instructions: "در هر دسته هر چقدر که به خاطر می‌آورید بگویید. سپس لیست کامل را ببینید.",
        section: .cognition,
        type: .openEnded,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ماه‌های سال شمسی را به ترتیب بگویید", options: [], correctAnswer: "فروردین، اردیبهشت، خرداد، تیر، مرداد، شهریور، مهر، آبان، آذر، دی، بهمن، اسفند"),
            ExerciseItem(id: UUID(), prompt: "روزهای هفته را به ترتیب بگویید", options: [], correctAnswer: "شنبه، یکشنبه، دوشنبه، سه‌شنبه، چهارشنبه، پنجشنبه، جمعه"),
            ExerciseItem(id: UUID(), prompt: "فصل‌های سال را بگویید", options: [], correctAnswer: "بهار، تابستان، پاییز، زمستان"),
            ExerciseItem(id: UUID(), prompt: "هشت سیاره منظومه شمسی را بگویید", options: [], correctAnswer: "عطارد، زهره، زمین، مریخ، مشتری، زحل، اورانوس، نپتون"),
            ExerciseItem(id: UUID(), prompt: "حواس پنجگانه را بگویید", options: [], correctAnswer: "بینایی، شنوایی، بویایی، چشایی، لامسه"),
            ExerciseItem(id: UUID(), prompt: "هفت قاره جهان را بگویید", options: [], correctAnswer: "آفریقا، قطب جنوب، آسیا، اروپا، استرالیا، آمریکای شمالی، آمریکای جنوبی"),
            ExerciseItem(id: UUID(), prompt: "رنگ‌های رنگین‌کمان را بگویید", options: [], correctAnswer: "قرمز، نارنجی، زرد، سبز، آبی، نیلی، بنفش"),
            ExerciseItem(id: UUID(), prompt: "کشورهای همسایه ایران را بگویید", options: [], correctAnswer: "ترکیه، عراق، افغانستان، پاکستان، ترکمنستان، آذربایجان، ارمنستان (و از طریق دریا: کویت، عربستان، امارات، قطر، بحرین، عمان، قزاقستان)"),
            ExerciseItem(id: UUID(), prompt: "اعضای خانواده اصلی را به فارسی بگویید", options: [], correctAnswer: "پدر، مادر، برادر، خواهر، پدربزرگ، مادربزرگ، عمو، عمه، دایی، خاله"),
            ExerciseItem(id: UUID(), prompt: "اعداد ۱ تا ۱۰ به فارسی را بگویید", options: [], correctAnswer: "یک، دو، سه، چهار، پنج، شش، هفت، هشت، نه، ده"),
            ExerciseItem(id: UUID(), prompt: "پنج جشن مهم ایرانی را بگویید", options: [], correctAnswer: "نوروز، یلدا، چهارشنبه‌سوری، سیزده‌به‌در، مهرگان"),
            ExerciseItem(id: UUID(), prompt: "شش شاعر بزرگ ادب فارسی را بگویید", options: [], correctAnswer: "فردوسی، حافظ، سعدی، مولانا (رومی)، عمر خیام، رودکی")
        ]
    )
}
