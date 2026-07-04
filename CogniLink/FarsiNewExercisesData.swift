import Foundation

/// Holds the 14 new Farsi exercises translated and adapted from EnglishNewExercisesData.swift.
struct FarsiNewExercisesData {

    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5,
        exercise6,
        exercise7,
        exercise8,
        exercise9,
        exercise10,
        exercise11,
        exercise12,
        exercise13,
        exercise14
    ]

    // MARK: - Exercise 1: Rhyming Pairs (کلمات هم‌قافیه)
    private static let exercise1 = Exercise(
        title: "کلمات هم‌قافیه",
        instructions: "کلمه‌ای را انتخاب کنید که با کلمه داده شده هم‌قافیه است.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "کدام کلمه با «آب» هم‌قافیه است؟", options: ["نان", "خواب", "باد", "باران"], correctAnswer: "خواب", explanation: "آب و خواب صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «روز» هم‌قافیه است؟", options: ["شب", "سوز", "باد", "سرد"], correctAnswer: "سوز", explanation: "روز و سوز صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «تار» هم‌قافیه است? ", options: ["ساز", "کار", "مو", "تاریک"], correctAnswer: "کار", explanation: "تار و کار صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «بهار» هم‌قافیه است؟", options: ["پاییز", "سرد", "نهار", "نگار"], correctAnswer: "نگار", explanation: "بهار و نگار صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «سنگ» هم‌قافیه است؟", options: ["کلوخ", "رنگ", "نرم", "سخت"], correctAnswer: "رنگ", explanation: "سنگ و رنگ صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «شاد» هم‌قافیه است؟", options: ["غم", "باد", "خوش", "آرام"], correctAnswer: "باد", explanation: "شاد و باد صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «موش» هم‌قافیه است؟", options: ["گربه", "گوش", "پنیر", "کوچک"], correctAnswer: "گوش", explanation: "موش و گوش صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «شیر» هم‌قافیه است؟", options: ["ماست", "پیر", "زرد", "جنگل"], correctAnswer: "پیر", explanation: "شیر و پیر صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «ساز» هم‌قافیه است؟", options: ["آواز", "تار", "نت", "نوازنده"], correctAnswer: "آواز", explanation: "ساز و آواز صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «دوش» هم‌قافیه است؟", options: ["حمام", "دوشیزه", "نوش", "آب"], correctAnswer: "نوش", explanation: "دوش و نوش صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «باد» هم‌قافیه است؟", options: ["طوفان", "یاد", "خاک", "ابر"], correctAnswer: "یاد", explanation: "باد و یاد صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «ماه» هم‌قافیه است؟", options: ["سال", "شاه", "آسمان", "ستاره"], correctAnswer: "شاه", explanation: "ماه و شاه صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «راز» هم‌قافیه است؟", options: ["حرف", "نیاز", "پنهان", "پیدا"], correctAnswer: "نیاز", explanation: "راز و نیاز صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «بام» هم‌قافیه است؟", options: ["سقف", "شام", "خانه", "صبح"], correctAnswer: "شام", explanation: "بام و شام صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «کیش» هم‌قافیه است؟", options: ["مات", "خویش", "شطرنج", "بازی"], correctAnswer: "خویش", explanation: "کیش و خویش صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «تاب» هم‌قافیه است؟", options: ["بازی", "خواب", "پارک", "سرد"], correctAnswer: "خواب", explanation: "تاب و خواب صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «سیب» هم‌قافیه است؟", options: ["درخت", "جیب", "سرخ", "ترش"], correctAnswer: "جیب", explanation: "سیب و جیب صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «دست» هم‌قافیه است؟", options: ["پا", "هست", "بازو", "انگشت"], correctAnswer: "هست", explanation: "دست و هست صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «دیر» هم‌قافیه است؟", options: ["زود", "سیر", "وقت", "ساعت"], correctAnswer: "سیر", explanation: "دیر و سیر صدای پایانی یکسانی دارند."),
            ExerciseItem(prompt: "کدام کلمه با «پاک» هم‌قافیه است؟", options: ["تمیز", "خاک", "ابری", "باران"], correctAnswer: "خاک", explanation: "پاک و خاک صدای پایانی یکسانی دارند.")
        ]
    )

    // MARK: - Exercise 2: Word Association (ارتباط کلمات)
    private static let exercise2 = Exercise(
        title: "ارتباط کلمات",
        instructions: "کلمه‌ای را انتخاب کنید که بیشترین ارتباط را با کلمه داده شده دارد.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "پزشک", options: ["بیمارستان", "فرودگاه", "کتابخانه", "مزرعه"], correctAnswer: "بیمارستان", explanation: "پزشکان در بیمارستان‌ها برای مراقبت از بیماران کار می‌کنند."),
            ExerciseItem(prompt: "نان", options: ["کره", "چکش", "صابون", "مداد"], correctAnswer: "کره", explanation: "کره معمولاً روی نان مالیده می‌شود."),
            ExerciseItem(prompt: "آشپزخانه", options: ["اجاق‌گاز", "تختخواب", "دوش", "ماشین"], correctAnswer: "اجاق‌گاز", explanation: "اجاق‌گاز یکی از وسایل اصلی آشپزخانه است."),
            ExerciseItem(prompt: "کتابخانه", options: ["کتاب‌ها", "لباس‌ها", "ابزارها", "مواد غذایی"], correctAnswer: "کتاب‌ها", explanation: "کتابخانه‌ها کتاب‌ها را نگهداری و امانت می‌دهند."),
            ExerciseItem(prompt: "کفش", options: ["جوراب", "کلاه", "دستکش", "کمربند"], correctAnswer: "جوراب", explanation: "جوراب درون کفش پوشیده می‌شود."),
            ExerciseItem(prompt: "فضانورد", options: ["فضا", "اقیانوس", "جنگل", "کویر"], correctAnswer: "فضا", explanation: "فضانوردان به فضا سفر می‌کنند."),
            ExerciseItem(prompt: "معلم", options: ["مدرسه", "کارخانه", "تئاتر", "باشگاه"], correctAnswer: "مدرسه", explanation: "معلمان در مدارس به دانش‌آموزان آموزش می‌دهند."),
            ExerciseItem(prompt: "اقیانوس", options: ["ماهی", "پرنده", "گاو", "عنکبوت"], correctAnswer: "ماهی", explanation: "ماهی‌ها در اقیانوس زندگی می‌کنند."),
            ExerciseItem(prompt: "ماشین", options: ["لاستیک", "بال", "زین", "بادبان"], correctAnswer: "لاستیک", explanation: "لاستیک‌ها از اجزای اصلی ماشین هستند."),
            ExerciseItem(prompt: "باران", options: ["چتر", "عینک آفتابی", "دستکش", "شال‌گردن"], correctAnswer: "چتر", explanation: "چتر شما را در برابر باران محافظت می‌کند."),
            ExerciseItem(prompt: "آتش", options: ["دود", "یخ", "برگ", "سکه"], correctAnswer: "دود", explanation: "آتش دود تولید می‌کند."),
            ExerciseItem(prompt: "دندان‌پزشک", options: ["دندان", "مو", "چشم", "پا"], correctAnswer: "دندان", explanation: "دندان‌پزشکان در سلامت دهان و دندان تخصص دارند."),
            ExerciseItem(prompt: "قهوه", options: ["ماگ", "کاسه", "بشقاب", "چنگال"], correctAnswer: "ماگ", explanation: "قهوه معمولاً در ماگ سرو می‌شود."),
            ExerciseItem(prompt: "باغچه", options: ["گل‌ها", "کامپیوترها", "اجاق‌گازها", "کت‌ها"], correctAnswer: "گل‌ها", explanation: "گل‌ها در باغچه رشد می‌کنند."),
            ExerciseItem(prompt: "کلید", options: ["قفل", "پنجره", "سقف", "کف زمین"], correctAnswer: "قفل", explanation: "کلیدها برای باز کردن قفل‌ها استفاده می‌شوند."),
            ExerciseItem(prompt: "اداره پست", options: ["نامه", "نان", "دارو", "بلیط"], correctAnswer: "نامه", explanation: "نامه‌ها در اداره پست ارسال می‌شوند."),
            ExerciseItem(prompt: "پیانو", options: ["موسیقی", "نقاشی", "سفال", "چوب"], correctAnswer: "موسیقی", explanation: "پیانو ابزاری برای نواختن موسیقی است."),
            ExerciseItem(prompt: "زنبور", options: ["عسل", "شیر", "پشم", "ابریشم"], correctAnswer: "عسل", explanation: "زنبورها عسل تولید می‌کنند."),
            ExerciseItem(prompt: "عنکبوت", options: ["تار", "لانه", "کندو", "بیشه"], correctAnswer: "تار", explanation: "عنکبوت‌ها تار می‌بافند."),
            ExerciseItem(prompt: "کشاورز", options: ["تراکتور", "هواپیما", "زیردریایی", "قطار"], correctAnswer: "تراکتور", explanation: "کشاورزان از تراکتور برای کار روی زمین استفاده می‌کنند.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying (کامل کردن ضرب‌المثل)
    private static let exercise3 = Exercise(
        title: "کامل کردن ضرب‌المثل",
        instructions: "ضرب‌المثل یا عبارت معروف را کامل کنید.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "قطره قطره جمع گردد، وانگهی ___ شود.", options: ["دریا", "رودخانه", "سیل", "برکه"], correctAnswer: "دریا", explanation: "ضرب‌المثل معروف این است: قطره قطره جمع گردد وانگهی دریا شود."),
            ExerciseItem(prompt: "جوجه را آخر ___ می‌شمارند.", options: ["بهار", "تابستان", "پاییز", "زمستان"], correctAnswer: "پاییز", explanation: "جوجه را آخر پاییز می‌شمارند، به این معنی که نتیجه کار آخر آن مشخص می‌شود."),
            ExerciseItem(prompt: "هر که بامش بیش، ___ بیشتر.", options: ["برفش", "بادش", "سقفش", "بارانش"], correctAnswer: "برفش", explanation: "هر که بامش بیش، برفش بیشتر به مشکلات بزرگتر در کارهای بزرگ اشاره دارد."),
            ExerciseItem(prompt: "باد آورده را ___ می‌برد.", options: ["باد", "طوفان", "آب", "خاک"], correctAnswer: "باد", explanation: "چیزی که بدون زحمت به دست بیاید، آسان هم از دست می‌رود."),
            ExerciseItem(prompt: "دست بالای دست ___ است.", options: ["بسیار", "کم", "خوب", "سخت"], correctAnswer: "بسیار", explanation: "به این معنی که همیشه کسی قوی‌تر یا داناتر وجود دارد."),
            ExerciseItem(prompt: "عجله کار ___ است.", options: ["شیطان", "فرشته", "انسان", "عاقل"], correctAnswer: "شیطان", explanation: "عجله کردن کار درستی نیست و به کار شیطان تشبیه شده است."),
            ExerciseItem(prompt: "ماهی را هر وقت از آب بگیری ___ است.", options: ["تازه", "مرده", "خیس", "سرد"], correctAnswer: "تازه", explanation: "هیچ‌وقت برای شروع کار مفید دیر نیست."),
            ExerciseItem(prompt: "کار نیکو کردن از ___ کردن است.", options: ["پر", "کم", "دیر", "زود"], correctAnswer: "پر", explanation: "تکرار و تمرین زیاد باعث استاد شدن در کار می‌شود."),
            ExerciseItem(prompt: "با یک گل ___ نمی‌شود.", options: ["بهار", "پاییز", "باغچه", "گلستان"], correctAnswer: "بهار", explanation: "با یک نشانه کوچک کل وضعیت تغییر نمی‌کند."),
            ExerciseItem(prompt: "تو مو می‌بینی و من ___ مو.", options: ["پیچش", "رنگ", "ریشه", "تار"], correctAnswer: "پیچش", explanation: "به دقت نظر و دیدن جزئیات ظریف اشاره دارد."),
            ExerciseItem(prompt: "شاهنامه آخرش ___ است.", options: ["خوش", "بد", "طولانی", "غم‌انگیز"], correctAnswer: "خوش", explanation: "باید منتظر پایان کار بود و زود قضاوت نکرد."),
            ExerciseItem(prompt: "سحرخیز باش تا ___ شوی.", options: ["کامروا", "خسته", "ثروتمند", "بیدار"], correctAnswer: "کامروا", explanation: "سحرخیزی باعث موفقیت می‌شود."),
            ExerciseItem(prompt: "آشپز که دوتا شد، آش یا شور می‌شود یا ___.", options: ["بی‌نمک", "شیرین", "ترش", "تند"], correctAnswer: "بی‌نمک", explanation: "دخالت دو نفر در یک کار باعث خرابی آن می‌شود."),
            ExerciseItem(prompt: "خواستن، ___ است.", options: ["توانستن", "دانستن", "رفتن", "ماندن"], correctAnswer: "توانستن", explanation: "اراده قوی کلید انجام کارهاست."),
            ExerciseItem(prompt: "شتر در خواب بیند ___.", options: ["پنبه‌دانه", "آب", "علف", "صحرا"], correctAnswer: "پنبه‌دانه", explanation: "به آرزوهای واهی و دور از دسترس اشاره دارد."),
            ExerciseItem(prompt: "خفته را خفته کی کند ___؟", options: ["بیدار", "هشیار", "خواب", "سست"], correctAnswer: "بیدار", explanation: "کسی که خودش راه را بلد نیست نمی‌تواند راهنمای دیگران باشد."),
            ExerciseItem(prompt: "مار گزیده از ریسمان سیاه و سفید ___.", options: ["می‌ترسد", "می‌گریزد", "می‌لرزد", "می‌جهد"], correctAnswer: "می‌ترسد", explanation: "کسی که تجربه بدی داشته، بسیار محتاط می‌شود."),
            ExerciseItem(prompt: "گر صبر کنی، ز غوره ___ سازی.", options: ["حلوا", "سرکه", "مربا", "شیره"], correctAnswer: "حلوا", explanation: "صبر در کارها نتایج شیرینی به بار می‌آورد."),
            ExerciseItem(prompt: "عاقل نکند تکیه به ___.", options: ["دیوار شکسته", "درخت کهن", "کوه بلند", "زمین سفت"], correctAnswer: "دیوار شکسته", explanation: "انسان عاقل کار نامطمئن انجام نمی‌دهد."),
            ExerciseItem(prompt: "دیوار موش دارد، موش هم ___ دارد.", options: ["گوش", "چشم", "پا", "دم"], correctAnswer: "گوش", explanation: "در سخن گفتن باید رازدار بود چون خبرها پخش می‌شوند.")
        ]
    )

    // MARK: - Exercise 4: Compound Words (کلمات مرکب)
    private static let exercise4 = Exercise(
        title: "کلمات مرکب",
        instructions: "کلمه مناسب را برای کامل کردن کلمه مرکب انتخاب کنید.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "کتاب + ___", options: ["خانه", "نامه", "چه", "فروش"], correctAnswer: "خانه", explanation: "کتاب + خانه = کتابخانه."),
            ExerciseItem(prompt: "آب + ___", options: ["میوه", "باران", "هوا", "خاک"], correctAnswer: "میوه", explanation: "آب + میوه = آبمیوه."),
            ExerciseItem(prompt: "کار + ___", options: ["خانه", "گاه", "گر", "فرما"], correctAnswer: "خانه", explanation: "کار + خانه = کارخانه."),
            ExerciseItem(prompt: "گل + ___", options: ["دان", "برگ", "سرخ", "ابریشم"], correctAnswer: "دان", explanation: "گل + دان = گلدان."),
            ExerciseItem(prompt: "پناه + ___", options: ["گاه", "جو", "بخش", "ور"], correctAnswer: "گاه", explanation: "پناه + گاه = پناهگاه."),
            ExerciseItem(prompt: "روز + ___", options: ["نامه", "گار", "افزون", "شمار"], correctAnswer: "نامه", explanation: "روز + نامه = روزنامه."),
            ExerciseItem(prompt: "آش + ___", options: ["پز", "خور", "خانه", "کاه"], correctAnswer: "پز", explanation: "آش + پز = آشپز."),
            ExerciseItem(prompt: "دست + ___", options: ["بند", "کش", "مال", "گاه"], correctAnswer: "بند", explanation: "دست + بند = دستبند."),
            ExerciseItem(prompt: "کمر + ___", options: ["بند", "درد", "شکن", "خم"], correctAnswer: "بند", explanation: "کمر + بند = کمربند."),
            ExerciseItem(prompt: "چای + ___", options: ["خانه", "شور", "صاف‌کن", "داغ"], correctAnswer: "خانه", explanation: "چای + خانه = چایخانه."),
            ExerciseItem(prompt: "پیاده + ___", options: ["رو", "سوار", "راه", "گرد"], correctAnswer: "رو", explanation: "پیاده + رو = پیاده‌رو."),
            ExerciseItem(prompt: "هوا + ___", options: ["پیما", "فضا", "برش", "سنج"], correctAnswer: "پیما", explanation: "هوا + پیما = هواپیما."),
            ExerciseItem(prompt: "زیر + ___", options: ["گذر", "نویس", "دستی", "بغل"], correctAnswer: "گذر", explanation: "زیر + گذر = زیرگذر."),
            ExerciseItem(prompt: "بزرگ + ___", options: ["راه", "سال", "منش", "تر"], correctAnswer: "راه", explanation: "بزرگ + راه = بزرگراه."),
            ExerciseItem(prompt: "آفتاب + ___", options: ["گردان", "پرست", "سوخته", "گیر"], correctAnswer: "گردان", explanation: "آفتاب + گردان = آفتاب‌گردان."),
            ExerciseItem(prompt: "تخت + ___", options: ["خواب", "روان", "سنگ", "پوست"], correctAnswer: "خواب", explanation: "تخت + خواب = تختخواب."),
            ExerciseItem(prompt: "نمک + ___", options: ["دان", "سود", "شناس", "گیر"], correctAnswer: "دان", explanation: "نمک + دان = نمکدان."),
            ExerciseItem(prompt: "دفتر + ___", options: ["چه", "خانه", "دار", "خوان"], correctAnswer: "چه", explanation: "دفتر + چه = دفترچه."),
            ExerciseItem(prompt: "مداد + ___", options: ["تراش", "رنگی", "نوک", "پاک‌کن"], correctAnswer: "تراش", explanation: "مداد + تراش = مدادتراش."),
            ExerciseItem(prompt: "چوب + ___", options: ["کبریت", "شور", "دستی", "خط"], correctAnswer: "کبریت", explanation: "چوب + کبریت = چوب‌کبریت.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix (پیشوند و پسوند)
    private static let exercise5 = Exercise(
        title: "پیشوند و پسوند",
        instructions: "پیشوند یا پسوند صحیح را برای کامل کردن کلمه انتخاب کنید.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "کدام پیشوند به معنای نفی در کلمه “ناخوش” است؟", options: ["نا-", "بی-", "هم-", "پیش-"], correctAnswer: "نا-", explanation: "پیشوند “نا-” برای منفی کردن صفت به کار می‌رود."),
            ExerciseItem(prompt: "کدام پسوند دارنده در کلمه “غمگین” به کار رفته است؟", options: ["-گین", "-مند", "-بان", "-گاه"], correctAnswer: "-گین", explanation: "پسوند “-گین” نشان‌دهنده دارا بودن حالت غم است."),
            ExerciseItem(prompt: "همراه و هم‌رتبه در کار را ___کار می‌گویند.", options: ["هم", "پیش", "نا", "بی"], correctAnswer: "هم", explanation: "پیشوند “هم-” به معنای اشتراک و همراهی است."),
            ExerciseItem(prompt: "محل فراوانی گل را گل___ می‌نامند.", options: ["ستان", "دان", "زار", "بار"], correctAnswer: "ستان", explanation: "پسوند “-ستان” نشان‌دهنده محل فراوانی و تجمع است."),
            ExerciseItem(prompt: "کسی که ادب ندارد را ___ادب می‌گویند.", options: ["بی", "نا", "غیر", "کم"], correctAnswer: "بی", explanation: "پیشوند “بی-” برای نفی و نداشتن صفت به کار می‌رود."),
            ExerciseItem(prompt: "کسی که هنر دارد را هنر___ می‌گویند.", options: ["مند", "بان", "دان", "وار"], correctAnswer: "مند", explanation: "پسوند “-مند” به معنای دارا بودن صفت یا ویژگی است."),
            ExerciseItem(prompt: "چیزی که از جنس طلا باشد را طلا___ می‌گویند.", options: ["یی", "فام", "وار", "گون"], correctAnswer: "یی", explanation: "پسوند “-یی” برای انتساب و جنس به کار می‌رود."),
            ExerciseItem(prompt: "کسی که دارای ادب است را ___ادب می‌نامند.", options: ["با", "هم", "خوش", "پر"], correctAnswer: "با", explanation: "پیشوند “با-” نشان‌دهنده دارا بودن صفت است."),
            ExerciseItem(prompt: "کسی که در پی کسب دانش است را دانش___ می‌گویند.", options: ["جو", "آموز", "مند", "بان"], correctAnswer: "جو", explanation: "پسوند “-جو” به معنای جوینده و طلب‌کننده است."),
            ExerciseItem(prompt: "کسی که دارای علم فراوان است را دانش___ می‌نامند.", options: ["مند", "ور", "آموز", "جو"], correctAnswer: "مند", explanation: "پسوند “-مند” به دارا بودن دانش اشاره دارد."),
            ExerciseItem(prompt: "طرح اولیه و قبل از نوشتن نهایی را ___نویس می‌گویند.", options: ["پیش", "پس", "هم", "رو"], correctAnswer: "پیش", explanation: "پیشوند “پیش-” به معنای قبل و جلوتر است."),
            ExerciseItem(prompt: "کسی که اهل شهر تهران است را تهران___ می‌گویند.", options: ["ی", "چی", "وند", "کی"], correctAnswer: "ی", explanation: "پسوند “-ی” نسبت برای نشان دادن اصالت شهری است."),
            ExerciseItem(prompt: "گل یا صفت منسوب به فصل بهار را بهار___ می‌نامند.", options: ["ه", "ستان", "گون", "افزا"], correctAnswer: "ه", explanation: "پسوند “-ه” نسبت کلمه را به بهار متصل می‌کند."),
            ExerciseItem(prompt: "فردی که فاقد جوانمردی است را ___مرد می‌گویند.", options: ["نا", "بی", "غیر", "بد"], correctAnswer: "نا", explanation: "پیشوند “نا-” نفی جوانمردی را نشان می‌دهد."),
            ExerciseItem(prompt: "کسی که عمل نوشتن را انجام می‌دهد نویس___ نام دارد.", options: ["نده", "ندهکار", "ار", "گار"], correctAnswer: "نده", explanation: "پسوند “-نده” فاعل‌ساز است و کننده کار را نشان می‌دهد."),
            ExerciseItem(prompt: "سنگ سخت و بزرگ شبیه به کوه را کوه___ می‌گویند.", options: ["مانند", "وار", "سار", "دیس"], correctAnswer: "مانند", explanation: "پسوند “-مانند” شباهت را نشان می‌دهد."),
            ExerciseItem(prompt: "دختر کوچک را با افزودن پسوند تصغیر دختر___ می‌نامند.", options: ["ک", "چه", "و", "ی"], correctAnswer: "ک", explanation: "پسوند “-ک” برای تصغیر و محبت به کار می‌رود."),
            ExerciseItem(prompt: "رفتار شایسته مردان را مرد___ می‌گویند.", options: ["انه", "وار", "منش", "گون"], correctAnswer: "انه", explanation: "پسوند “-انه” برای نشان دادن روش و حالت به کار می‌رود."),
            ExerciseItem(prompt: "پیشوند استمراری در فعل “می‌رود” چیست؟", options: ["می-", "بـ-", "نـ-", "همی-"], correctAnswer: "می-", explanation: "پیشوند “می-” استمرار و جریان داشتن فعل را نشان می‌دهد."),
            ExerciseItem(prompt: "باغ کوچک را با پسوند باغ___ نشان می‌دهند.", options: ["چه", "ک", "کله", "ریز"], correctAnswer: "چه", explanation: "پسوند “-چه” برای تصغیر مکان به کار می‌رود.")
        ]
    )

    // MARK: - Exercise 6: Story Recall (یادآوری داستان)
    private static let exercise6 = Exercise(
        title: "یادآوری داستان",
        instructions: "داستان کوتاه زیر را بخوانید و سپس به سوال پاسخ دهید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ماریا چه چیزی را در خانه فراموش کرده بود؟", options: ["کیف پولش", "کلیدهایش", "لیست خریدش", "تلفن همراهش"], correctAnswer: "کیف پولش", explanation: "داستان می‌گوید او کیف پول خود را روی پیشخوان آشپزخانه جا گذاشت.", passage: "ماریا به خواربارفروشی رفت تا شیر و نان بخرد. او کیف پول خود را روی پیشخوان آشپزخانه جا گذاشت."),
            ExerciseItem(prompt: "توماس چه نوع ماهی‌ای گرفت؟", options: ["قزل‌آلا", "سالمون", "کپور", "گربه‌ماهی"], correctAnswer: "قزل‌آلا", explanation: "داستان اشاره می‌کند که او یک ماهی قزل‌آلا گرفت.", passage: "توماس صبح زود شنبه بیدار شد تا به ماهیگیری برود. او یک قزل‌آلای بزرگ گرفت اما مجبور شد آن را رها کند چون خیلی کوچک بود."),
            ExerciseItem(prompt: "ماشین آرتور چه رنگی است؟", options: ["آبی", "زرد", "قرمز", "سبز"], correctAnswer: "آبی", explanation: "داستان می‌گوید آرتور ماشین آبی خود را پارک کرد.", passage: "آرتور ماشین آبی خود را زیر سایه درخت بلوط پارک کرد. وقتی برگشت، دید که ماشین با برگ‌های زرد پوشیده شده است."),
            ExerciseItem(prompt: "لیندا چند شمع روی کیک گذاشت؟", options: ["ده", "پنج", "هشت", "دوازده"], correctAnswer: "ده", explanation: "داستان می‌گوید او ده شمع قرمز روی کیک گذاشت.", passage: "لیندا برای جشن تولد دخترش یک کیک شکلاتی پخت. او ده شمع قرمز روی کیک گذاشت."),
            ExerciseItem(prompt: "برادر رابرت کجا زندگی می‌کند؟", options: ["شیکاگو", "نیویورک", "بوستون", "میامی"], correctAnswer: "شیکاگو", explanation: "داستان می‌گوید او بسته را برای برادرش در شیکاگو فرستاد.", passage: "رابرت به اداره پست رفت تا بسته‌ای را برای برادرش در شیکاگو ارسال کند. متصدی گفت بسته روز سه‌شنبه می‌رسد."),
            ExerciseItem(prompt: "کفش‌های سارا چه رنگی هستند؟", options: ["سبز روشن", "آبی", "قرمز", "مشکی"], correctAnswer: "سبز روشن", explanation: "داستان می‌گوید کفش‌ها سبز روشن با خطوط سفید هستند.", passage: "سارا دیروز یک جفت کفش دویدن خرید. آن‌ها سبز روشن با خطوط سفید هستند."),
            ExerciseItem(prompt: "چتر جیمز چه رنگی بود؟", options: ["زرد", "قرمز", "آبی", "مشکی"], correctAnswer: "زرد", explanation: "داستان می‌گوید او چتر زرد خود را باز کرد.", passage: "جیمز در پارک قدم می‌زد که باران شروع شد. او چتر زرد خود را باز کرد تا خشک بماند."),
            ExerciseItem(prompt: "نانوایی چه روزی بسته بود؟", options: ["دوشنبه", "سه‌شنبه", "چهارشنبه", "یکشنبه"], correctAnswer: "دوشنبه", explanation: "داستان می‌گوید نانوایی روز دوشنبه بسته بود.", passage: "نانوایی محلی روز دوشنبه برای تعمیرات بسته بود. آن‌ها قصد داشتند روز سه‌شنبه ساعت شش صبح بازگشایی کنند."),
            ExerciseItem(prompt: "چرا آنا با لوله‌کش تماس گرفت؟", options: ["سینکش نشتی داشت", "اجاق گازش خراب بود", "لامپش سوخته بود", "درش قفل شده بود"], correctAnswer: "سینکش نشتی داشت", explanation: "داستان می‌گوید او تماس گرفت چون سینک آشپزخانه‌اش نشتی داشت.", passage: "آنا با لوله‌کش تماس گرفت زیرا سینک آشپزخانه‌اش نشتی داشت. لوله‌کش یک ساعته رسید و لوله را تعمیر کرد."),
            ExerciseItem(prompt: "نام سگ دیوید چیست؟", options: ["مکس", "بادی", "چارلی", "راکی"], correctAnswer: "مکس", explanation: "داستان می‌گوید دیوید سگش، مکس، را پیاده‌روی برد.", passage: "دیوید سگش، مکس، را به دور محله برد. مکس یک سنجاب دید و با صدای بلند پارس کرد."),
            ExerciseItem(prompt: "هلن کدام ماده غذایی را تمام کرده بود؟", options: ["هویج", "سیب‌زمینی", "پیاز", "کرفس"], correctAnswer: "هویج", explanation: "داستان می‌گوید او متوجه شد هویج ندارد.", passage: "هلن در حال درست کردن سوپ سبزیجات برای شام بود. او متوجه شد که هویج ندارد، بنابراین به جای آن از سیب‌زمینی استفاده کرد."),
            ExerciseItem(prompt: "ناهار پیتر چقدر هزینه داشت؟", options: ["پانزده دلار", "ده دلار", "بیست دلار", "دوازده دلار"], correctAnswer: "پانزده دلار", explanation: "داستان می‌گوید هزینه کل پانزده دلار شد.", passage: "پیتر برای ناهار یک پیتزای پپرونی و یک بطری نوشابه سفارش داد. هزینه کل پانزده دلار شد."),
            ExerciseItem(prompt: "موضوع کتاب آلیس چه بود؟", options: ["باغبانی", "تاریخ", "آشپزی", "سفر"], correctAnswer: "باغبانی", explanation: "داستان می‌گوید او کتابی درباره باغبانی امانت گرفت.", passage: "آلیس به کتابخانه رفت تا کتابی درباره باغبانی امانت بگیرد. او همچنین یک دی‌وی‌دی درباره تاریخ امانت گرفت."),
            ExerciseItem(prompt: "چرا قطار تأخیر داشت؟", options: ["تعمیرات ریل", "طوفان شدید", "قطعی برق", "کمبود پرسنل"], correctAnswer: "تعمیرات ریل", explanation: "داستان می‌گوید قطار به دلیل تعمیرات ریل تأخیر داشت.", passage: "جورج با قطار صبحگاهی برای مصاحبه کاری به شهر رفت. قطار او به دلیل تعمیرات ریل پانزده دقیقه تأخیر داشت."),
            ExerciseItem(prompt: "نانسی در نهایت چه گلی خرید؟", options: ["قرنفل صورتی", "رز قرمز", "لاله زرد", "زنبق سفید"], correctAnswer: "قرنفل صورتی", explanation: "داستان می‌گوید او گل قرنفل صورتی خرید.", passage: "نانسی به گل‌فروشی رفت تا رز قرمز بخرد. آن‌ها رز نداشتند، بنابراین او گل قرنفل صورتی خرید.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences (دنباله اعداد)
    private static let exercise7 = Exercise(
        title: "دنباله اعداد",
        instructions: "چه عددی در دنباله بعدی قرار می‌گیرد؟",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "هر بار ۲ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "هر بار ۵ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "هر بار ۱۰ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "هر بار ۳ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "هر بار ۱ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "هر بار ۲ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "دنباله اعداد فرد که هر بار ۲ واحد اضافه می‌شود."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "هر بار ۴ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "هر بار ۵ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "هر بار ۱۰ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "هر بار ۱۱ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "هر بار ۲ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "هر بار ۳ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "هر بار ۳ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "هر بار ۷ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "هر بار ۴ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "هر بار ۶ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "هر بار ۵ واحد به عدد قبلی اضافه می‌شود."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "هر بار ۱۰ واحد از عدد قبلی کم می‌شود."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "هر بار ۲ واحد به عدد قبلی اضافه می‌شود.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect (علت و معلول)
    private static let exercise8 = Exercise(
        title: "علت و معلول",
        instructions: "محتمل‌ترین نتیجه وضعیت توصیف شده را انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "بستنی را در یک روز گرم به مدت دو ساعت روی پیشخوان آشپزخانه رها می‌کنید. چه اتفاقی می‌افتد؟", options: ["سفت‌تر می‌شود", "آب می‌شود", "تغییر رنگ می‌دهد", "ناپدید می‌شود"], correctAnswer: "آب می‌شود", explanation: "گرما باعث ذوب شدن بستنی یخ‌زده می‌شود."),
            ExerciseItem(prompt: "فراموش می‌کنید به مدت سه هفته به گیاه خانگی خود آب بدهید. محتمل‌ترین نتیجه چیست؟", options: ["گل می‌دهد", "سبز می‌ماند", "پژمرده و خشک می‌شود", "آبی‌رنگ می‌شود"], correctAnswer: "پژمرده و خشک می‌شود", explanation: "گیاهان برای بقا به آب نیاز دارند؛ بدون آب پژمرده می‌شوند."),
            ExerciseItem(prompt: "یک ابر طوفانی تیره جلوی خورشید را می‌گیرد و صدای رعد و برق می‌آید. احتمالاً بعد از آن چه می‌شود؟", options: ["باران می‌بارد", "هوا گرم‌تر می‌شود", "بلافاصله برف می‌بارد", "ستاره‌ها بیرون می‌آیند"], correctAnswer: "باران می‌بارد", explanation: "ابرهای طوفانی و رعد و برق از نشانه‌های باران هستند."),
            ExerciseItem(prompt: "یک کاسه شیشه‌ای را روی کف کاشی سخت می‌اندازید. محتمل‌ترین نتیجه چیست؟", options: ["به بالا می‌جهد", "تغییر رنگ می‌دهد", "تکه تکه می‌شود", "تبدیل به آب می‌شود"], correctAnswer: "تکه تکه می‌شود", explanation: "شیشه شکننده است و در اثر برخورد با سطح سخت می‌شکند."),
            ExerciseItem(prompt: "یک تکه نان را در توستر قرار می‌دهید و آن را روی بالاترین درجه می‌گذارید. چه می‌شود؟", options: ["خیس می‌شود", "می‌سوزد و سیاه می‌شود", "نرم و سفید می‌ماند", "ناپدید می‌شود"], correctAnswer: "می‌سوزد و سیاه می‌شود", explanation: "حرارت بیش از حد در توستر باعث سوختن نان می‌شود."),
            ExerciseItem(prompt: "چراغ‌های جلوی ماشین را تمام شب روشن می‌گذارید. صبح چه اتفاقی می‌افتد؟", options: ["ماشین سریع‌تر حرکت می‌کند", "باتری ماشین خالی می‌شود", "رنگ ماشین تغییر می‌کند", "موتور بلافاصله روشن می‌شود"], correctAnswer: "باتری ماشین خالی می‌شود", explanation: "روشن ماندن چراغ‌ها باعث تخلیه انرژی باتری می‌شود."),
            ExerciseItem(prompt: "طوفان برف شدیدی در طول شب می‌بارد و ۱۵ سانتی‌متر برف می‌نشیند. چه بر سر جاده‌ها می‌آید؟", options: ["خشک می‌مانند", "لغزنده و پوشیده از برف می‌شوند", "سبز می‌شوند", "تبخیر می‌شوند"], correctAnswer: "لغزنده و پوشیده از برف می‌شوند", explanation: "برش برف روی زمین جاده‌ها را لغزنده و رانندگی را خطرناک می‌کند."),
            ExerciseItem(prompt: "یک سینی پر از آب را در فریزر قرار می‌دهید. بعد از چند ساعت چه اتفاقی می‌افتد؟", options: ["آب به جوش می‌آید", "آب تبدیل به یخ می‌شود", "آب تبخیر می‌شود", "آب تغییر رنگ می‌دهد"], correctAnswer: "آب تبدیل به یخ می‌شود", explanation: "دمای انجماد آب مایع را به یخ جامد تبدیل می‌کند."),
            ExerciseItem(prompt: "در یک روز گرم تابستانی یک جفت جوراب پشمی ضخیم و چکمه‌های سنگین می‌پوشید. چه بر سر پاهای شما می‌آید؟", options: ["احساس سرما می‌کنند", "خشک می‌مانند", "داغ و عرق‌کرده می‌شوند", "آبی‌رنگ می‌شوند"], correctAnswer: "داغ و عرق‌کرده می‌شوند", explanation: "پوشش ضخیم گرما را حفظ کرده و در هوای گرم باعث عرق کردن می‌شود."),
            ExerciseItem(prompt: "فردی ۲۴ ساعت متوالی نخوابیده است. او احتمالاً چه احساسی خواهد داشت؟", options: ["بسیار پرانرژی", "خسته و خواب‌آلود", "گرسنه", "بسیار شاد"], correctAnswer: "خسته و خواب‌آلود", explanation: "کمبود خواب منجر به خستگی و بی‌حالی مفرط می‌شود."),
            ExerciseItem(prompt: "به یک فنجان چای داغ شکر اضافه می‌کنید و آن را هم می‌زنید. چه بر سر شکر می‌آید؟", options: ["تبدیل به یخ می‌شود", "از فنجان ناپدید می‌شود", "در چای حل می‌شود", "می‌سوزد"], correctAnswer: "در چای حل می‌شود", explanation: "هم زدن شکر در مایع داغ باعث حل شدن آن می‌شود."),
            ExerciseItem(prompt: "بدون چتر یا بارانی وارد رگبار شدید باران می‌شوید. نتیجه چیست؟", options: ["خشک می‌مانید", "لباس‌هایتان کاملاً خیس می‌شوند", "آبی‌رنگ می‌شوید", "گرم‌تر می‌شوید"], correctAnswer: "لباس‌هایتان کاملاً خیس می‌شوند", explanation: "باران مستقیماً روی شما می‌بارد و لباس‌هایتان را خیس می‌کند."),
            ExerciseItem(prompt: "آن‌قدر در بادکنک هوا می‌دمید تا بیش از حد پر شود. چه می‌شود؟", options: ["به سمت ماه پرواز می‌کند", "می‌ترکد", "تبدیل به پرنده می‌شود", "کوچک می‌شود"], correctAnswer: "می‌ترکد", explanation: "فشار هوای زیاد از ظرفیت بادکنک فراتر رفته و باعث ترکیدن آن می‌شود."),
            ExerciseItem(prompt: "همه چراغ‌ها را در اتاقی بدون پنجره در شب خاموش می‌کنید. چه اتفاقی می‌افتد؟", options: ["اتاق روشن‌تر می‌شود", "اتاق کاملاً تاریک می‌شود", "اتاق سبز می‌شود", "اتاق پر از نور می‌شود"], correctAnswer: "اتاق کاملاً تاریک می‌شود", explanation: "نبود منبع نور منجر به تاریکی مطلق می‌شود."),
            ExerciseItem(prompt: "برای یک امتحان سخت مطالعه و آماده‌سازی نمی‌کنید. محتمل‌ترین نتیجه چیست؟", options: ["نمره کامل می‌گیرید", "عملکرد ضعیفی خواهید داشت", "نام خود را فراموش می‌کنید", "امتحان لغو می‌شود"], correctAnswer: "عملکرد ضعیفی خواهید داشت", explanation: "عدم آمادگی قبلی موفقیت در آزمون‌های سخت را ناممکن می‌سازد.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This? (چه احساسی است؟)
    private static let exercise9 = Exercise(
        title: "چه احساسی است؟",
        instructions: "موقعیت را بخوانید و احساسی را که احتمالاً فرد دارد انتخاب کنید.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "سارا متوجه شد که در یک مسابقه رتبه اول را کسب کرده است. او چه احساسی دارد؟", options: ["غمگین", "عصبانی", "خوشحال", "ترسیده"], correctAnswer: "خوشحال", explanation: "برنده شدن در مسابقه یک رویداد شاد و هیجان‌انگیز است."),
            ExerciseItem(prompt: "دیوید نیمه‌شب صدای عجیب و بلندی از طبقه پایین می‌شنود. او چه احساسی دارد؟", options: ["خوشحال", "ترسیده", "بی‌حوصله", "هیجان‌زده"], correctAnswer: "ترسیده", explanation: "صداهای غیرمنتظره در تاریکی شب باعث ترس و دلهره می‌شوند."),
            ExerciseItem(prompt: "صمیمی‌ترین دوست مری در حال نقل مکان به ایالت دیگری در دوردست است. مری چه احساسی دارد؟", options: ["غمگین", "عصبانی", "هیجان‌زده", "حسود"], correctAnswer: "غمگین", explanation: "خداحافظی با دوستان صمیمی باعث غم و اندوه می‌شود."),
            ExerciseItem(prompt: "یک نفر در صف طولانی فروشگاه بدون نوبت جلوی جان می‌زند. جان چه احساسی دارد؟", options: ["خوشحال", "ترسیده", "کلافه", "خجالت‌زده"], correctAnswer: "کلافه", explanation: "رفتارهای بی‌ادبانه دیگران معمولاً باعث کلافگی یا عصبانیت می‌شود."),
            ExerciseItem(prompt: "امیلی قرار است جلوی مخاطبان بسیار زیادی سخنرانی کند. او چه احساسی دارد؟", options: ["مضطرب", "بی‌حوصله", "غمگین", "عصبانی"], correctAnswer: "مضطرب", explanation: "سخنرانی در جمع بزرگ معمولاً باعث اضطراب و نگرانی می‌شود."),
            ExerciseItem(prompt: "پرواز رابرت لغو شد و تعطیلات او دو روز به تأخیر افتاد. او چه احساسی دارد؟", options: ["ناامید و کلافه", "خوشحال", "ترسیده", "مفتخر"], correctAnswer: "ناامید و کلافه", explanation: "لغو برنامه‌های سفر منجر به ناامیدی و کلافگی می‌شود."),
            ExerciseItem(prompt: "پسر لیزا با رتبه عالی از دانشگاه فارغ‌التحصیل شد. لیزا چه احساسی دارد؟", options: ["مفتخر", "حسود", "غمگین", "ترسیده"], correctAnswer: "مفتخر", explanation: "دیدن موفقیت اعضای خانواده باعث افتخار و سربلندی می‌شود."),
            ExerciseItem(prompt: "کارمند اداره برای چهارمین بار فرم پیچیده‌ای را توضیح می‌دهد، اما آرتور هنوز متوجه نمی‌شود. آرتور چه احساسی دارد؟", options: ["گیج", "خوشحال", "هیجان‌زده", "مفتخر"], correctAnswer: "گیج", explanation: "ناتوانی در درک اطلاعات باعث احساس سردرگمی و گیجی می‌شود."),
            ExerciseItem(prompt: "جیمز بیش از دو ساعت است که در یک اتاق انتظار ساکت بدون هیچ کتابی برای خواندن نشسته است. او چه احساسی دارد؟", options: ["بی‌حوصله", "ترسیده", "عصبانی", "خوشحال"], correctAnswer: "بی‌حوصله", explanation: "انتظار طولانی بدون هیچ سرگرمی باعث بی‌حوصلگی می‌شود."),
            ExerciseItem(prompt: "خانواده الن یک مهمانی تولد غافلگیرکننده با حضور تمام دوستانش برای او گرفتند. او چه احساسی دارد؟", options: ["غافلگیرشده", "عصبانی", "غمگین", "ترسیده"], correctAnswer: "غافلگیرشده", explanation: "یک جشن غیرمنتظره منجر به احساس غافلگیری و هیجان می‌شود."),
            ExerciseItem(prompt: "یک سگ ولگرد در طول پیاده‌روی به سمت کارن دوید و با عصبانیت پارس کرد. او چه احساسی دارد؟", options: ["وحشت‌زده", "خوشحال", "بی‌حوصله", "مفتخر"], correctAnswer: "وحشت‌زده", explanation: "حیوانات پرخاشگر باعث ترس و وحشت می‌شوند."),
            ExerciseItem(prompt: "ویلیام حلقه ازدواج خود را هنگام باغبانی گم کرد. او چه احساسی دارد؟", options: ["پریشان", "هیجان‌زده", "بی‌حوصله", "آرام"], correctAnswer: "پریشان", explanation: "گم کردن یک وسیله با ارزش معنوی باعث ناراحتی و پریشانی می‌شود."),
            ExerciseItem(prompt: "پاتریشیا کارت تبریک زیبا و گل‌هایی از نوه‌هایش دریافت کرد. او چه احساسی دارد؟", options: ["دوست‌داشته‌شده", "عصبانی", "ترسیده", "گیج"], correctAnswer: "دوست‌داشته‌شده", explanation: "محبت اعضای خانواده به انسان احساس دوست‌داشته‌شدن می‌دهد."),
            ExerciseItem(prompt: "فروشگاه خواربارفروشی نان مورد نظر ریچارد را نداشت، بنابراین او مجبور شد برند دیگری بخرد. او چه احساسی دارد؟", options: ["کمی ناامید", "وحشت‌زده", "بسیار خشمگین", "بسیار شاد"], correctAnswer: "کمی ناامید", explanation: "عدم دسترسی به اولویت‌های کوچک منجر به ناامیدی جزئی می‌شود."),
            ExerciseItem(prompt: "چارلز تمام بعدازظهر را صرف ساختن یک کتابخانه کرد و نتیجه عالی شد. او چه احساسی دارد؟", options: ["راضی", "غمگین", "ترسیده", "بی‌حوصله"], correctAnswer: "راضی", explanation: "انجام موفقیت‌آمیز کارها منجر به احساس رضایت درونی می‌شود."),
            ExerciseItem(prompt: "لیندا به طور تصادفی یک سینی نوشیدنی را در یک رستوران آرام انداخت. او چه احساسی دارد؟", options: ["خجالت‌زده", "خوشحال", "عصبانی", "بی‌حوصله"], correctAnswer: "خجالت‌زده", explanation: "جلب توجه منفی دیگران به خاطر یک اشتباه باعث خجالت می‌شود."),
            ExerciseItem(prompt: "توماس فردا صبح به اولین سفر خود به هاوایی می‌رود. او چه احساسی دارد؟", options: ["هیجان‌زده", "غمگین", "عصبانی", "بی‌حوصله"], correctAnswer: "هیجان‌زده", explanation: "انتظار برای یک سفر تفریحی باعث هیجان بالا می‌شود."),
            ExerciseItem(prompt: "گربه سوزان پس از سه روز گم شدن، سالم به خانه بازگشت. او چه احساسی دارد؟", options: ["آسوده‌خاطر", "عصبانی", "ترسیده", "گیج"], correctAnswer: "آسوده‌خاطر", explanation: "حل شدن یک موقعیت نگران‌کننده باعث آرامش و آسودگی خاطر می‌شود."),
            ExerciseItem(prompt: "اتصال اینترنت در حین کار جورج هر پنج دقیقه یک بار قطع می‌شود. او چه احساسی دارد؟", options: ["کلافه و عصبی", "ترسیده", "خوشحال", "بی‌حوصله"], correctAnswer: "کلافه و عصبی", explanation: "اختلالات مکرر در حین کار باعث عصبانیت و کلافگی می‌شود."),
            ExerciseItem(prompt: "هلن پس از یک روز پر از استرس، یک دوش آب گرم طولانی گرفت. او چه احساسی دارد؟", options: ["آرامش‌یافته", "عصبانی", "ترسیده", "مضطرب"], correctAnswer: "آرامش‌یافته", explanation: "حمام آب گرم و استراحت به فرد احساس آرامش می‌دهد.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here? (ایراد کار کجاست؟)
    private static let exercise10 = Exercise(
        title: "ایراد کار کجاست؟",
        instructions: "مشخص کنید چه چیزی در جمله اشتباه یا غیرممکن است.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "جان نیمه‌شب قبل از رفتن به رختخواب صبحانه خورد.", options: ["مردم غذا نمی‌خورند", "صبحانه وعده غذایی صبح است نه نیمه‌شب", "جان نباید بخوابد", "نیمه‌شب در بعدازظهر است"], correctAnswer: "صبحانه وعده غذایی صبح است نه نیمه‌شب", explanation: "صبحانه طبق تعریف وعده‌ای است که در صبح میل می‌شود."),
            ExerciseItem(prompt: "سگ به پستچی پارس کرد و سپس برای گرفتن پرنده روی سقف پرواز کرد.", options: ["سگ‌ها پارس نمی‌کنند", "سگ‌ها نمی‌توانند پرواز کنند", "پستچی‌ها نامه تحویل نمی‌دهند", "پرنده‌ها پرواز نمی‌کنند"], correctAnswer: "سگ‌ها نمی‌توانند پرواز کنند", explanation: "سگ‌ها بال ندارند و قادر به پرواز نیستند."),
            ExerciseItem(prompt: "سارا کت زمستانی گرم و دستکش‌هایش را پوشید تا در ماه تیر در استخر روباز شنا کند.", options: ["مردم در تیرماه شنا نمی‌کنند", "کسی با کت زمستانی و دستکش شنا نمی‌کند", "استخرهای روباز وجود ندارند", "کت در تابستان پوشیده می‌شود"], correctAnswer: "کسی با کت زمستانی و دستکش شنا نمی‌کند", explanation: "شنا نیاز به لباس شنا دارد و لباس‌های زمستانی برای آن مناسب نیستند."),
            ExerciseItem(prompt: "ساعت روی دیوار عدد سیزده را زنگ زد، بنابراین آرتور فهمید وقت قهوه صبحگاهی‌اش است.", options: ["ساعت روی دیوار نصب نمی‌شود", "ساعت‌های استاندارد فقط تا دوازده ساعت دارند", "قهوه نوشیدنی صبحگاهی نیست", "آرتور قهوه نمی‌نوشد"], correctAnswer: "ساعت‌های استاندارد فقط تا دوازده ساعت دارند", explanation: "ساعت‌های سنتی و عقربه‌ای فقط اعداد یک تا دوازده را نشان می‌دهند."),
            ExerciseItem(prompt: "پل با دوچرخه‌اش از روی دریاچه عمیق عبور کرد تا به دیدن دوستش برود.", options: ["دوچرخه نمی‌تواند روی آب حرکت کند", "دریاچه‌ها ماهی ندارند", "دوستان به دیدن هم نمی‌روند", "دوچرخه‌ها پدال ندارند"], correctAnswer: "دوچرخه نمی‌تواند روی آب حرکت کند", explanation: "دوچرخه وسیله نقلیه زمینی است و در آب غرق می‌شود."),
            ExerciseItem(prompt: "لیندا برای درست کردن آب آشامیدنی خنک، چند تکه یخ را در قابلمه جوشاند.", options: ["تکه‌های یخ وجود ندارند", "جوشاندن تکه‌های یخ آب گرم تولید می‌کند نه آب خنک", "قابلمه‌ها نمی‌توانند یخ داشته باشند", "آب آشامیدنی سالم نیست"], correctAnswer: "جوشاندن تکه‌های یخ آب گرم تولید می‌کند نه آب خنک", explanation: "جوشاندن مایعات را داغ می‌کند نه سرد."),
            ExerciseItem(prompt: "ماهی برای فرار از دست گربه گرسنه از درخت بالا رفت.", options: ["ماهی‌ها نمی‌توانند از درخت بالا بروند", "گربه‌ها ماهی نمی‌خورند", "درختان برگ ندارند", "ماهی‌ها روی درخت زندگی می‌کنند"], correctAnswer: "ماهی‌ها نمی‌توانند از درخت بالا بروند", explanation: "ماهی‌ها در آب زندگی می‌کنند و دست و پا برای بالا رفتن از درخت ندارند."),
            ExerciseItem(prompt: "رابرت از چنگال برای خوردن سوپ مرغ خود استفاده کرد.", options: ["چنگال نمی‌تواند مایع سوپ را نگه دارد", "سوپ از مرغ درست نمی‌شود", "رابرت باید از چاقو استفاده کند", "سوپ را با قاشق و چنگال نمی‌خورند"], correctAnswer: "چنگال نمی‌تواند مایع سوپ را نگه دارد", explanation: "چنگال شیارهایی دارد که مایعات از آن عبور می‌کنند؛ سوپ نیاز به قاشق دارد."),
            ExerciseItem(prompt: "از آنجا که باران شدیدی می‌بارید، نانسی لباس‌های خیس خود را روی بند رخت بیرون پهن کرد تا خشک شوند.", options: ["باران چیزها را خیس نمی‌کند", "لباس‌ها زیر باران خشک نمی‌شوند", "بند رخت فقط در داخل خانه استفاده می‌شود", "نانسی لباس نمی‌پوشد"], correctAnswer: "لباس‌ها زیر باران خشک نمی‌شوند", explanation: "باران لباس‌ها را مرطوب نگه می‌دارد و مانع از خشک شدن آن‌ها می‌شود."),
            ExerciseItem(prompt: "هواپیما به سلامت در فرودگاه نشست و همه مسافران روی ریل قطار پیاده شدند.", options: ["هواپیماها در فرودگاه فرود نمی‌آیند", "مسافران با هواپیما سفر نمی‌کنند", "بخش خروجی فرودگاه‌ها ریل قطار ندارند", "قطارها روی ریل حرکت نمی‌کنند"], correctAnswer: "بخش خروجی فرودگاه‌ها ریل قطار ندارند", explanation: "هواپیماها در باندهای پرواز فرود می‌آیند نه روی ریل راه‌آهن."),
            ExerciseItem(prompt: "هلن کولر گازی را روشن کرد تا اتاق نشیمن را گرم‌تر کند.", options: ["کولرها اتاق را خنک می‌کنند و گرم نمی‌کنند", "اتاق‌های نشیمن دیوار ندارند", "هلن صاحب خانه نیست", "کولر گازی از برق استفاده نمی‌کند"], correctAnswer: "کولرها اتاق را خنک می‌کنند و گرم نمی‌کنند", explanation: "کولر گازی برای خنک کردن فضا طراحی شده است نه گرم کردن آن."),
            ExerciseItem(prompt: "خرگوش گرگ خاکستری بزرگ را در جنگل دنبال کرد و فراری داد.", options: ["خرگوش‌ها در جنگل زندگی نمی‌کنند", "گرگ‌ها نمی‌دوند", "خرگوش‌ها گرگ‌ها را دنبال نمی‌کنند", "گرگ‌ها خاکستری نیستند"], correctAnswer: "خرگوش‌ها گرگ‌ها را دنبال نمی‌کنند", explanation: "گرگ‌ها شکارچی هستند و خرگوش‌ها طعمه؛ خرگوش‌ها از دست گرگ فرار می‌کنند."),
            ExerciseItem(prompt: "جیمز یک جفت کفش چرمی برای دست‌هایش خرید تا در زمستان گرم بمانند.", options: ["کفش‌ها برای پا هستند نه دست", "از چرم برای کفش استفاده نمی‌شود", "دست‌ها سرد نمی‌شوند", "زمستان سرد نیست"], correctAnswer: "کفش‌ها برای پا هستند نه دست", explanation: "برای دست‌ها از دستکش استفاده می‌شود و کفش مخصوص پاهاست."),
            ExerciseItem(prompt: "خورشید در نیمه‌شب طلوع کرد و آسمان صبح را روشن نمود.", options: ["خورشید در صبح طلوع می‌کند نه نیمه‌شب", "نیمه‌شب در بعدازظهر است", "خورشید روشن نیست", "صبح تاریک است"], correctAnswer: "خورشید در صبح طلوع می‌کند نه نیمه‌شب", explanation: "نیمه‌شب وسط شب است و در آن زمان خورشید قابل مشاهده نیست."),
            ExerciseItem(prompt: "آلیس تلویزیون را روشن کرد تا به ایستگاه رادیویی مورد علاقه‌اش گوش دهد.", options: ["تلویزیون تصویر نشان می‌دهد و رادیو نیست", "رادیو موسیقی پخش نمی‌کند", "آلیس موسیقی دوست ندارد", "تلویزیون‌ها بلندگو ندارند"], correctAnswer: "تلویزیون تصویر نشان می‌دهد و رادیو نیست", explanation: "تلویزیون دستگاهی تصویری است؛ ایستگاه‌های رادیویی از رادیو پخش می‌شوند.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription (خواندن نسخه پزشک)
    private static let exercise11 = Exercise(
        title: "خواندن نسخه پزشک",
        instructions: "اطلاعات روی نسخه را بخوانید و به سوال پاسخ دهید.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "دستورالعمل: روزی ۲ بار، هر بار ۱ قرص همراه با غذا مصرف شود. در مجموع چند قرص در روز باید مصرف کنید؟", options: ["۱", "۲", "۳", "۴"], correctAnswer: "۲", explanation: "روزی ۲ بار و هر بار ۱ قرص یعنی ۱ + ۱ = ۲ قرص در روز."),
            ExerciseItem(prompt: "دستورالعمل: ۲ قرص قبل از خواب مصرف شود. چه زمانی باید این دارو را مصرف کنید؟", options: ["صبح‌ها", "همراه ناهار", "قبل از خواب", "قبل از ورزش"], correctAnswer: "قبل از خواب", explanation: "روی برچسب دارو صراحتاً نوشته شده قبل از خواب."),
            ExerciseItem(prompt: "دستورالعمل: در صورت لزوم برای تسکین درد، هر ۸ ساعت ۱ کپسول مصرف شود. در یک شبانه‌روز (۲۴ ساعت) حداکثر چند بار می‌توانید این دارو را مصرف کنید؟", options: ["۲ بار", "۳ بار", "۴ بار", "۶ بار"], correctAnswer: "۳ بار", explanation: "یک شبانه‌روز ۲۴ ساعت است و ۲۴ تقسیم بر ۸ برابر با ۳ بار می‌شود."),
            ExerciseItem(prompt: "دستورالعمل: آموکسی‌سیلین ۲۵۰ میلی‌گرم. روزی ۳ بار هر بار ۱ قرص. در یخچال نگهداری شود. این دارو را چگونه باید نگهداری کرد؟", options: ["در فریزر", "در یخچال", "در کابینت گرم", "زیر نور مستقیم خورشید"], correctAnswer: "در یخچال", explanation: "دستورالعمل ذکر کرده که دارو باید در یخچال نگهداری شود."),
            ExerciseItem(prompt: "دستورالعمل: در حین مصرف این دارو از نوشیدن الکل خودداری کنید. ممکن است باعث خواب‌آلودگی شود. عارضه جانبی هشدار داده شده چیست؟", options: ["خواب‌آلودگی", "افزایش انرژی", "فشار خون بالا", "عطسه کردن"], correctAnswer: "خواب‌آلودگی", explanation: "برچسب دارو هشدار می‌دهد که این دارو ممکن است باعث خواب‌آلودگی شود."),
            ExerciseItem(prompt: "دستورالعمل: روزی ۱ قرص صبح‌ها ناشتا مصرف شود. چه زمانی باید صبحانه بخورید؟", options: ["قبل از مصرف قرص", "بعد از مصرف قرص", "همزمان با مصرف قرص", "صبحانه نخورید"], correctAnswer: "بعد از مصرف قرص", explanation: "مصرف ناشتا یعنی ابتدا باید قرص را بخورید و سپس صبحانه میل کنید."),
            ExerciseItem(prompt: "دستورالعمل: روزی ۱ قرص مصرف شود. تعداد: ۳۰ عدد. تعداد تکرار نسخه: ۲ بار. چند بار می‌توانید نسخه را تکرار کنید؟", options: ["۱", "۲", "۳", "۳۰"], correctAnswer: "۲", explanation: "تعداد تکرار مجاز نسخه روی برچسب ۲ بار ذکر شده است."),
            ExerciseItem(prompt: "دستورالعمل: یک لایه نازک روی محل آسیب‌دیده پوست روزی دو بار مالیده شود. قورت داده نشود. نحوه استفاده از این دارو چگونه است؟", options: ["قورت دادن آن", "مالیدن روی پوست", "اسپری کردن در بینی", "حل کردن در آب"], correctAnswer: "مالیدن روی پوست", explanation: "دستورالعمل می‌گوید یک لایه نازک روی پوست مالیده شود."),
            ExerciseItem(prompt: "دستورالعمل: پس از تاریخ ۱۴۰۵/۰۷/۲۴ دور ریخته شود. امروز تاریخ ۱۴۰۵/۰۸/۱۰ است. آیا مصرف این دارو ایمن است؟", options: ["بله", "خیر", "فقط همراه غذا", "فقط در شب"], correctAnswer: "خیر", explanation: "تاریخ انقضای دارو گذشته است و مصرف آن ایمن نیست."),
            ExerciseItem(prompt: "دستورالعمل: روزی ۲ بار هر بار ۱ قرص. همراه با لبنیات مصرف نشود. هنگام مصرف این قرص از کدام نوشیدنی باید خودداری کرد؟", options: ["آب", "شیر", "آب‌سیب", "قهوه تلخ"], correctAnswer: "شیر", explanation: "شیر جزو لبنیات است و طبق دستورالعمل نباید با این دارو مصرف شود."),
            ExerciseItem(prompt: "دستورالعمل: ۲ قرص ۱ ساعت قبل از پرواز مصرف شود. چرا این دارو را مصرف می‌کنید؟", options: ["برای جلوگیری از حالت تهوع در سفر", "برای خواب بهتر در خانه", "برای درمان سردرد", "برای درمان جوش‌های پوستی"], correctAnswer: "برای جلوگیری از حالت تهوع در سفر", explanation: "داروهایی که قبل از پرواز مصرف می‌شوند معمولاً برای جلوگیری از بیماری حرکت هستند."),
            ExerciseItem(prompt: "دستورالعمل: قطره چشمی. روزی دو بار، در هر چشم ۱ قطره ریخته شود. این دارو در کجا باید استفاده شود؟", options: ["در دهان", "در گوش‌ها", "در چشم‌ها", "روی پوست"], correctAnswer: "در چشم‌ها", explanation: "برچسب می‌گوید قطره چشمی و باید در چشم‌ها ریخته شود."),
            ExerciseItem(prompt: "دستورالعمل: در صورت سردرد، هر ۴ تا ۶ ساعت ۱ قرص مصرف شود. حداکثر ۴ قرص در روز. بیشترین تعداد قرصی که می‌توانید در یک روز مصرف کنید چند عدد است؟", options: ["۱", "۲", "۴", "۶"], correctAnswer: "۴", explanation: "نسخه مشخص کرده حداکثر ۴ قرص در روز مجاز است."),
            ExerciseItem(prompt: "دستورالعمل: همراه با یک لیوان کامل آب مصرف شود. چرا برای این قرص به آب نیاز دارید؟", options: ["برای حل کردن آن روی پوست", "برای کمک به بلع راحت‌تر و جلوگیری از ناراحتی معده", "برای تغییر رنگ آن", "برای طعم بهتر"], correctAnswer: "برای کمک به بلع راحت‌تر و جلوگیری از ناراحتی معده", explanation: "یک لیوان کامل آب به بلع ایمن قرص کمک کرده و از معده محافظت می‌کند."),
            ExerciseItem(prompt: "دستورالعمل: روزی ۱ قرص همراه با وعده شام مصرف شود. بهترین زمان برای مصرف این دارو چه زمانی است؟", options: ["هنگام صبحانه", "هنگام ناهار", "هنگام شام", "نیمه‌شب"], correctAnswer: "هنگام شام", explanation: "وعده غذایی عصر یا شب همان شام است.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu (خوانش منو)
    private static let exercise12 = Exercise(
        title: "خوانش منو",
        instructions: "با استفاده از اطلاعات منو به سوال پاسخ دهید.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "منو: چیزبرگر ۸۰ هزار تومان، سیب‌زمینی سرخ‌کرده ۳۰ هزار تومان، نوشابه ۲۰ هزار تومان. قیمت چیزبرگر چقدر است؟", options: ["۸۰ هزار تومان", "۳۰ هزار تومان", "۲۰ هزار تومان", "۱۱۰ هزار تومان"], correctAnswer: "۸۰ هزار تومان", explanation: "در منو قیمت چیزبرگر ۸۰ هزار تومان درج شده است."),
            ExerciseItem(prompt: "منو: قهوه ۲۵ هزار تومان، چای ۲۰ هزار تومان، مافین ۳۰ هزار تومان. کدام آیتم ارزان‌ترین است؟", options: ["قهوه", "چای", "مافین", "قیمت همه یکی است"], correctAnswer: "چای", explanation: "۲۰ هزار تومان کمترین قیمت در میان گزینه‌ها است."),
            ExerciseItem(prompt: "منو: سوپ گوجه‌فرنگی ۵۰ هزار تومان، سالاد فصل ۶۰ هزار تومان، سالاد سزار ۹۰ هزار تومان. قیمت یک کاسه سوپ گوجه‌فرنگی چقدر است؟", options: ["۵۰ هزار تومان", "۶۰ هزار تومان", "۹۰ هزار تومان", "۱۴۰ هزار تومان"], correctAnswer: "۵۰ هزار تومان", explanation: "سوپ گوجه‌فرنگی در منو ۵۰ هزار تومان است."),
            ExerciseItem(prompt: "منو: صبحانه پنکیک ۱۰۰ هزار تومان، فرنچ تست ۹۰ هزار تومان، بیکن ۴۰ هزار تومان. قیمت فرنچ تست چقدر است؟", options: ["۱۰۰ هزار تومان", "۹۰ هزار تومان", "۴۰ هزار تومان", "۱۳۰ هزار تومان"], correctAnswer: "۹۰ هزار تومان", explanation: "فرنچ تست در منو ۹۰ هزار تومان ثبت شده است."),
            ExerciseItem(prompt: "منو: پیتزا مارگاریتا اسلایسی ۴۰ هزار تومان، پیتزا پپرونی اسلایسی ۴۵ هزار تومان. تفاوت قیمت یک اسلایس پپرونی با مارگاریتا چقدر است؟", options: ["۵ هزار تومان", "۱۰ هزار تومان", "۴۵ هزار تومان", "۸۵ هزار تومان"], correctAnswer: "۵ هزار تومان", explanation: "۴۵ هزار تومان منهای ۴۰ هزار تومان برابر با ۵ هزار تومان است."),
            ExerciseItem(prompt: "منو: ساندویچ مرغ ۷۰ هزار تومان، ماهی و سیب‌زمینی ۱۱۰ هزار تومان. شما ۱۰۰ هزار تومان پول دارید. کدام غذا را می‌توانید بخرید؟", options: ["ساندویچ مرغ", "ماهی و سیب‌زمینی", "هر دو غذا", "هیچ‌کدام"], correctAnswer: "ساندویچ مرغ", explanation: "۷۰ هزار تومان کمتر از ۱۰۰ هزار تومان است اما ۱۱۰ هزار تومان بیشتر است."),
            ExerciseItem(prompt: "منو: غذای کودک (زیر ۱۲ سال) ۶۰ هزار تومان، برگر مخصوص بزرگسالان ۱۲۰ هزار تومان. قیمت غذا برای یک کودک ۸ ساله چقدر است؟", options: ["۶۰ هزار تومان", "۱۲۰ هزار تومان", "۸۰ هزار تومان", "۱۸۰ هزار تومان"], correctAnswer: "۶۰ هزار تومان", explanation: "کودک ۸ ساله زیر ۱۲ سال است، بنابراین قیمت کودک یعنی ۶۰ هزار تومان اعمال می‌شود."),
            ExerciseItem(prompt: "منو: بستنی شکلاتی ۴۰ هزار تومان، پای سیب ۵۰ هزار تومان، اضافه کردن بستنی وانیلی به پای سیب ۱۵ هزار تومان. قیمت پای سیب با بستنی وانیلی چقدر است؟", options: ["۵۰ هزار تومان", "۶۵ هزار تومان", "۹۰ هزار تومان", "۴۰ هزار تومان"], correctAnswer: "۶۵ هزار تومان", explanation: "۵۰ هزار تومان (پای سیب) + ۱۵ هزار تومان (بستنی وانیلی) = ۶۵ هزار تومان."),
            ExerciseItem(prompt: "منو: رپ بوقلمون ۸۵ هزار تومان، چیپس ۱۵ هزار تومان، آبمیوه ۲۰ هزار تومان. قیمت کل یک رپ بوقلمون و یک آبمیوه چقدر است؟", options: ["۸۵ هزار تومان", "۱۰۰ هزار تومان", "۱۰۵ هزار تومان", "۱۲۰ هزار تومان"], correctAnswer: "۱۰۵ هزار تومان", explanation: "۸۵ هزار تومان + ۲۰ هزار تومان = ۱۰۵ هزار تومان."),
            ExerciseItem(prompt: "منو: ناهار ویژه (سرو از ساعت ۱۱ تا ۱۵) ۹۰ هزار تومان. منوی عادی شام ۱۵۰ هزار تومان. اکنون ساعت ۱۳ است. قیمت ناهار ویژه چقدر است؟", options: ["۹۰ هزار تومان", "۱۵۰ هزار تومان", "۱۱۰ هزار تومان", "۳۰ هزار تومان"], correctAnswer: "۹۰ هزار تومان", explanation: "ساعت ۱۳ بین ۱۱ و ۱۵ است، بنابراین قیمت ناهار ویژه یعنی ۹۰ هزار تومان فعال است."),
            ExerciseItem(prompt: "منو: قهوه ۲۰ هزار تومان (شارژ مجدد رایگان)، چای گرم ۲۵ هزار تومان. اگر سه فنجان قهوه بنوشید، در مجموع چقدر پرداخت می‌کنید؟", options: ["۲۰ هزار تومان", "۶۰ هزار تومان", "۲۵ هزار تومان", "۷۵ هزار تومان"], correctAnswer: "۲۰ هزار تومان", explanation: "شارژ مجدد قهوه رایگان است، بنابراین فقط قیمت فنجان اول یعنی ۲۰ هزار تومان را می‌پردازید."),
            ExerciseItem(prompt: "منو: سوپ سبزیجات ۴۰ هزار تومان، خوراک گوشت ۷۰ هزار تومان. کدام غذا حاوی گوشت است؟", options: ["سوپ سبزیجات", "خوراک گوشت", "هر دو", "هیچ‌کدام"], correctAnswer: "خوراک گوشت", explanation: "خوراک گوشت حاوی گوشت است اما سوپ سبزیجات فاقد آن است."),
            ExerciseItem(prompt: "منو: تاکو ۳۰ هزار تومان، کسادیا ۶۰ هزار تومان، نوشابه ۲۰ هزار تومان. قیمت کسادیا چقدر است؟", options: ["۳۰ هزار تومان", "۶۰ هزار تومان", "۲۰ هزار تومان", "۸۰ هزار تومان"], correctAnswer: "۶۰ هزار تومان", explanation: "قیمت کسادیا در منو ۶۰ هزار تومان درج شده است."),
            ExerciseItem(prompt: "منو: اسپاگتی ۱۲۰ هزار تومان، لازانیا ۱۴۰ هزار تومان، نان سیر ۳۰ هزار تومان. قیمت نان سیر چقدر است؟", options: ["۱۲۰ هزار تومان", "۱۴۰ هزار تومان", "۳۰ هزار تومان", "۱۵۰ هزار تومان"], correctAnswer: "۳۰ هزار تومان", explanation: "قیمت نان سیر در منو ۳۰ هزار تومان درج شده است."),
            ExerciseItem(prompt: "منو: اگ بندیکت ۱۱۰ هزار تومان، حلیم ۶۰ هزار تومان، بشقاب میوه ۵۰ هزار تومان. کدام گزینه گران‌ترین صبحانه است؟", options: ["اگ بندیکت", "حلیم", "بشقاب میوه", "قیمت همه برابر است"], correctAnswer: "اگ بندیکت", explanation: "۱۱۰ هزار تومان بالاترین قیمت در این لیست است.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills (فهم قبض‌ها)
    private static let exercise13 = Exercise(
        title: "فهم قبض‌ها",
        instructions: "اطلاعات قبض را بخوانید و به سوال پاسخ دهید.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "قبض برق: مبلغ قابل پرداخت: ۴۵ هزار تومان. مهلت پرداخت: ۱۵ تیر. چه مبلغی را باید پرداخت کنید؟", options: ["۱۵ هزار تومان", "۴۵ هزار تومان", "۱۵ تیر", "رایگان"], correctAnswer: "۴۵ هزار تومان", explanation: "مبلغ قابل پرداخت ۴۵ هزار تومان است."),
            ExerciseItem(prompt: "قبض آب: مهلت پرداخت: ۱۰ مهر. جریمه دیرکرد: ۵ هزار تومان. امروز ۱۲ مهر است. اگر امروز پرداخت کنید چه می‌شود؟", options: ["مبلغ عادی را پرداخت می‌کنید", "مبلغ عادی به علاوه ۵ هزار تومان جریمه را پرداخت می‌کنید", "تخفیف می‌گیرید", "هیچ اتفاقی نمی‌افتد"], correctAnswer: "مبلغ عادی به علاوه ۵ هزار تومان جریمه را پرداخت می‌کنید", explanation: "چون امروز بعد از مهلت پرداخت است، جریمه دیرکرد اضافه می‌شود."),
            ExerciseItem(prompt: "قبض اینترنت: هزینه ماهانه: ۶۰ هزار تومان. تخفیف پرداخت خودکار: ۵ هزار تومان. قیمت نهایی با پرداخت خودکار چقدر است؟", options: ["۶۰ هزار تومان", "۶۵ هزار تومان", "۵۵ هزار تومان", "۵ هزار تومان"], correctAnswer: "۵۵ هزار تومان", explanation: "۶۰ هزار تومان منهای ۵ هزار تومان برابر با ۵۵ هزار تومان است."),
            ExerciseItem(prompt: "قبض گاز: هزینه دوره جاری: ۳۰ هزار تومان. بدهی قبلی: ۱۰ هزار تومان. جمع کل بدهی: ۴۰ هزار تومان. بدهی پرداخت‌نشده از ماه گذشته چقدر است؟", options: ["۳۰ هزار تومان", "۱۰ هزار تومان", "۴۰ هزار تومان", "۰ تومان"], correctAnswer: "۱۰ هزار تومان", explanation: "بدهی قبلی همان مبلغ پرداخت‌نشده از ماه گذشته یعنی ۱۰ هزار تومان است."),
            ExerciseItem(prompt: "قبض تلفن: مهلت پرداخت: ۳۰ خرداد. تاریخ امروز: ۲۵ خرداد. چند روز برای پرداخت به موقع فرصت دارید؟", options: ["۵ روز", "۳۰ روز", "۲۵ روز", "۱ روز"], correctAnswer: "۵ روز", explanation: "۳۰ خرداد منهای ۲۵ خرداد برابر با ۵ روز است."),
            ExerciseItem(prompt: "قبض عوارض: هزینه سه ماهه: ۳۶ هزار تومان. هزینه معادل برای هر ماه چقدر است؟", options: ["۳۶ هزار تومان", "۱۲ هزار تومان", "۱۸ هزار تومان", "۶ هزار تومان"], correctAnswer: "۱۲ هزار تومان", explanation: "۳۶ هزار تومان تقسیم بر ۳ ماه برابر با ۱۲ هزار تومان برای هر ماه است."),
            ExerciseItem(prompt: "قبض تلویزیون کابلی: مبلغ کل: ۸۰ هزار تومان. وجه در وجه: “شرکت مخابرات ایران”. چک باید در وجه چه کسی صادر شود؟", options: ["۸۰ هزار تومان", "شرکت مخابرات ایران", "مامور وصول", "حواله نقدی"], correctAnswer: "شرکت مخابرات ایران", explanation: "قبض مشخص کرده که چک باید در وجه “شرکت مخابرات ایران” باشد."),
            ExerciseItem(prompt: "قبض خدمات شهری: آب: ۲۰ هزار تومان، گاز: ۳۰ هزار تومان، برق: ۵۰ هزار تومان. جمع کل: ۱۰۰ هزار تومان. کدام خدمت بیشترین هزینه را داشته است؟", options: ["آب", "گاز", "برق", "هزینه همه برابر است"], correctAnswer: "برق", explanation: "هزینه برق ۵۰ هزار تومان و بیشترین مقدار است."),
            ExerciseItem(prompt: "بیمه ماشین: حق بیمه شش‌ماهه: ۶۰۰ هزار تومان. هر چند وقت یک‌بار باید این قبض را پرداخت کنید؟", options: ["هر ماه", "هر ۶ ماه یک‌بار (دوبار در سال)", "سالی یک‌بار", "هر هفته"], correctAnswer: "هر ۶ ماه یک‌بار (دوبار در سال)", explanation: "بیمه شش‌ماهه یعنی پرداخت هر ۶ ماه یک‌بار انجام می‌شود."),
            ExerciseItem(prompt: "اشتراک فیلیمو: وضعیت حساب: تعلیق شده. بدهی: ۱۵ هزار تومان. چرا اشتراک قطع شده است؟", options: ["اینترنت قطع است", "تلویزیون خراب است", "حساب به دلیل بدهی تعلیق شده است", "ویدیو در حال لود شدن است"], correctAnswer: "حساب به دلیل بدهی تعلیق شده است", explanation: "بدهی پرداخت‌نشده باعث تعلیق حساب شده است."),
            ExerciseItem(prompt: "شهریه باشگاه: هزینه سالانه: ۱۲۰ هزار تومان. هزینه ماهانه: ۱۰ هزار تومان. هزینه سالانه چقدر است؟", options: ["۱۰ هزار تومان", "۱۲۰ هزار تومان", "۱۳۰ هزار تومان", "۱۲ هزار تومان"], correctAnswer: "۱۲۰ هزار تومان", explanation: "هزینه سالانه ۱۲۰ هزار تومان است."),
            ExerciseItem(prompt: "قبض گاز مصرفی: دی‌ماه: ۱۱۰ هزار تومان. تیرماه: ۲۰ هزار تومان. چرا قبض در دی‌ماه بیشتر است؟", options: ["گاز در تابستان گران‌تر است", "در فصل زمستان و دی‌ماه از گرمایش بیشتری استفاده می‌شود", "خانه در دی‌ماه خالی است", "ساعت تغییر کرده است"], correctAnswer: "در فصل زمستان و دی‌ماه از گرمایش بیشتری استفاده می‌شود", explanation: "هوای سرد زمستان نیاز به استفاده بیشتر از وسایل گرمایشی دارد."),
            ExerciseItem(prompt: "قبض کارت اعتباری: حداقل پرداخت: ۲۵ هزار تومان. کل بدهی: ۵۰۰ هزار تومان. کمترین مبلغی که باید پرداخت کنید تا جریمه نشوید چقدر است؟", options: ["۲۵ هزار تومان", "۵۰۰ هزار تومان", "۰ تومان", "۴۷۵ هزار تومان"], correctAnswer: "۲۵ هزار تومان", explanation: "حداقل پرداخت مشخص شده ۲۵ هزار تومان است."),
            ExerciseItem(prompt: "قبض پزشکی: کل هزینه: ۱۵۰ هزار تومان. سهم بیمه: ۱۲۰ هزار تومان. سهم بیمار: ۳۰ هزار تومان. شما چقدر باید پرداخت کنید؟", options: ["۱۵۰ هزار تومان", "۱۲۰ هزار تومان", "۳۰ هزار تومان", "۰ تومان"], correctAnswer: "۳۰ هزار تومان", explanation: "سهم بیمار مبلغی است که خود شخص باید پرداخت کند یعنی ۳۰ هزار تومان."),
            ExerciseItem(prompt: "اشتراک روزنامه: تاریخ تمدید بعدی: ۳۰ آذر ۱۴۰۵. اگر می‌خواهید قبل از تمدید مجدد آن را لغو کنید، چه زمانی باید تماس بگیرید؟", options: ["قبل از ۳۰ آذر ۱۴۰۵", "بعد از ۳۰ آذر ۱۴۰۵", "در دی‌ماه ۱۴۰۵", "هرگز"], correctAnswer: "قبل از ۳۰ آذر ۱۴۰۵", explanation: "لغو اشتراک قبل از تاریخ تمدید مانع از شارژ مجدد می‌شود.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do? (چه کار می‌کردید؟)
    private static let exercise14 = Exercise(
        title: "چه کار می‌کردید؟",
        instructions: "بهترین واکنش را برای موقعیت توصیف شده انتخاب کنید.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "بوی دود را در آشپزخانه حس می‌کنید اما آتشی نمی‌بینید. اولین کاری که باید انجام دهید چیست؟", options: ["نادیده گرفتن آن", "باز کردن پنجره‌ها و چک کردن اجاق‌گاز", "تماس با یک دوست برای گپ زدن", "برگشتن به رختخواب و خوابیدن"], correctAnswer: "باز کردن پنجره‌ها و چک کردن اجاق‌گاز", explanation: "چک کردن اجاق‌گاز اولین قدم برای شناسایی و حل ایمن منابع دود کوچک است."),
            ExerciseItem(prompt: "در فروشگاه هستید و متوجه می‌شوید کیف پول خود را در خانه جا گذاشته‌اید. بهترین گزینه چیست؟", options: ["برداشتن خریدها بدون پرداخت پول", "درخواست از صندوق‌دار برای نگه داشتن چرخ‌دستی و رفتن به خانه برای آوردن کیف پول", "گریه کردن و ترک فروشگاه", "بحث و جدل با مدیر فروشگاه"], correctAnswer: "درخواست از صندوق‌دار برای نگه داشتن چرخ‌دستی و رفتن به خانه برای آوردن کیف پول", explanation: "درخواست از متصدی برای نگه داشتن اقلام، رفتار استاندارد و محترمانه است."),
            ExerciseItem(prompt: "یک تخم‌مرغ خام روی زمین آشپزخانه می‌افتد و می‌شکند. چه کار باید بکنید؟", options: ["رها کردن آن تا فردا", "تمیز کردن سریع آن با دستمال کاغذی و صابون", "پوشاندن آن با یک فرش کوچک", "اجازه دادن به گربه برای خوردن آن"], correctAnswer: "تمیز کردن سریع آن با دستمال کاغذی و صابون", explanation: "تخم‌مرغ خام لغزنده است و باکتری جذب می‌کند، بنابراین باید سریعاً تمیز شود."),
            ExerciseItem(prompt: "دوست شما می‌گوید که سگش دیروز مرده است. چه چیزی باید به او بگویید؟", options: ["این خنده‌دار است", "برای از دست دادن سگت خیلی متاسفم و تسلیت می‌گویم", "باید به جای آن یک گربه بخری", "آیا می‌توانم اسباب‌بازی‌هایش را داشته باشم؟"], correctAnswer: "برای از دست دادن سگت خیلی متاسفم و تسلیت می‌گویم", explanation: "ابراز همدردی رفتار مناسب در مواجهه با غم دیگران است."),
            ExerciseItem(prompt: "تلفنی از یک شماره ناشناس دریافت می‌کنید که ادعا می‌کند برنده قرعه‌کشی شده‌اید و مشخصات بانکی شما را می‌خواهد. چه کار باید بکنید؟", options: ["ارائه سریع مشخصات بانکی", "قطع کردن تماس و عدم اشتراک‌گذاری اطلاعات شخصی", "درخواست برای تماس در زمانی دیگر", "تماس با خانواده برای جشن گرفتن"], correctAnswer: "قطع کردن تماس و عدم اشتراک‌گذاری اطلاعات شخصی", explanation: "درخواست اطلاعات حساس بانکی از شماره‌های ناشناس معمولاً کلاهبرداری است."),
            ExerciseItem(prompt: "هنگام ایستادن در یک اتاق گرم احساس سرگیجه و سبکی سر می‌کنید. چه کار باید بکنید؟", options: ["ایستادن و بستن چشم‌ها", "نشستن فوری و نوشیدن کمی آب", "دویدن به سمت دستشویی", "چرخیدن به دور خود"], correctAnswer: "نشستن فوری و نوشیدن کمی آب", explanation: "نشستن مانع از افتادن می‌شود و آب به رفع کم‌آبی بدن کمک می‌کند."),
            ExerciseItem(prompt: "متوجه نشتی آب از زیر سینک آشپزخانه می‌شوید. اولین کاری که باید انجام دهید چیست؟", options: ["تماس با نقاش ساختمان", "قرار دادن یک سطل زیر محل نشتی برای جمع‌آوری آب", "طی کشیدن زمین در روزهای بعد", "خاموش کردن چراغ‌ها"], correctAnswer: "قرار دادن یک سطل زیر محل نشتی برای جمع‌آوری آب", explanation: "قرار دادن سطل بلافاصله جلوی آسیب‌های بیشتر آب را می‌گیرد تا تعمیرات انجام شود."),
            ExerciseItem(prompt: "به یک مهمانی شام دعوت شده‌اید اما نمی‌توانید بروید. چه کار باید بکنید؟", options: ["کلاً نرفتن بدون اطلاع قبلی", "اطلاع دادن به میزبان از قبل که نمی‌توانید شرکت کنید", "دیر رفتن بدون هماهنگی", "ارسال هدیه به جای پاسخ دادن"], correctAnswer: "اطلاع دادن به میزبان از قبل که نمی‌توانید شرکت کنید", explanation: "اطلاع قبلی به میزبان محترمانه است و به آن‌ها اجازه تغییر برنامه‌ها را می‌دهد."),
            ExerciseItem(prompt: "به طور تصادفی یک گلدان تزیینی را در خانه دوست خود می‌شکنید. پاسخ صحیح چیست؟", options: ["پنهان کردن تکه‌های گلدان زیر مبل", "عذرخواهی و پیشنهاد جبران خسارت یا خرید گلدان جدید", "تظاهر به این‌که شما کار را انجام نداده‌اید", "انداختن تقصیر به گردن سگ خانگی"], correctAnswer: "عذرخواهی و پیشنهاد جبران خسارت یا خرید گلدان جدید", explanation: "صداقت و پیشنهاد جبران خسارت رفتار مسئولانه و محترمانه‌ای است."),
            ExerciseItem(prompt: "کلیدهای خانه خود را پیدا نمی‌کنید و بیرون از خانه مانده‌اید. بهترین اقدام چیست؟", options: ["شکستن پنجره برای ورود به خانه", "تماس با یکی از اعضای خانواده که کلید یدک دارد یا تماس با قفل‌ساز", "منتظر ماندن روی ایوان برای همیشه", "لگد زدن به در"], correctAnswer: "تماس با یکی از اعضای خانواده که کلید یدک دارد یا تماس با قفل‌ساز", explanation: "استفاده از کلید یدک یا قفل‌ساز ایمن‌ترین راه برای ورود است."),
            ExerciseItem(prompt: "متوجه می‌شوید چراغ‌های خیابان روشن هستند اما خانه شما برق ندارد. چه کار باید بکنید؟", options: ["بررسی جعبه فیوز و کلیدهای مینیاتوری خانه", "خرید یک تلویزیون جدید", "خوابیدن فوری", "تماس با پلیس"], correctAnswer: "بررسی جعبه فیوز و کلیدهای مینیاتوری خانه", explanation: "بررسی فیوزها به تشخیص این‌که قطعی محلی است یا سراسری کمک می‌کند."),
            ExerciseItem(prompt: "یک همسایه سالخورده را می‌بینید که برای حمل کیسه‌های سنگین خرید تلاش می‌کند. چه کار باید بکنید؟", options: ["سریع رد شدن از کنار او", "پیشنهاد کمک برای حمل کیسه‌ها", "عکس گرفتن از او", "گفتن به او که سریع‌تر راه برود"], correctAnswer: "پیشنهاد کمک برای حمل کیسه‌ها", explanation: "کمک به همسایگان نشان‌دهنده همدلی و روحیه همکاری اجتماعی است."),
            ExerciseItem(prompt: "یک جرعه قهوه می‌نوشید و متوجه می‌شوید بیش از حد داغ است و دهانتان را می‌سوزاند. چه کار باید بکنید؟", options: ["نوشیدن سریع بقیه قهوه", "بیرون ریختن بااحتیاط آن و نوشیدن آب سرد", "جیغ کشیدن با صدای بلند", "پرت کردن ماگ"], correctAnswer: "بیرون ریختن بااحتیاط آن و نوشیدن آب سرد", explanation: "آب سرد سوختگی را خنک کرده و درد را تسکین می‌دهد."),
            ExerciseItem(prompt: "پزشک داروی جدیدی برای شما تجویز می‌کند اما نحوه مصرف آن را متوجه نمی‌شوید. چه کار باید بکنید؟", options: ["حدس زدن دوز مصرفی", "درخواست از داروساز یا پزشک برای توضیح مجدد دستورالعمل", "عدم مصرف دارو", "جستجوی آن در شبکه‌های اجتماعی"], correctAnswer: "درخواست از داروساز یا پزشک برای توضیح مجدد دستورالعمل", explanation: "متخصصان پزشکی تنها منبع مطمئن برای راهنمایی‌های دارویی هستند."),
            ExerciseItem(prompt: "به طور تصادفی آب‌میوه قرمز روی فرش سفید دوست خود می‌ریزید. چه کار باید بکنید؟", options: ["گذاشتن صندلی روی لکه", "عذرخواهی و کمک فوری به تمیز کردن آن", "ترک زودهنگام مهمانی", "گفتن این‌که آب ساده بوده است"], correctAnswer: "عذرخواهی و کمک فوری به تمیز کردن آن", explanation: "تمیز کردن سریع لکه‌ها از ماندگاری آن‌ها جلوگیری می‌کند."),
            ExerciseItem(prompt: "شنیدید که آژیر هشدار دود هر دقیقه یک بوق کوتاه می‌زند. این به چه معناست؟", options: ["آتشی در کار است", "باتری دستگاه ضعیف است و باید تعویض شود", "دستگاه خراب است", "هیچ معنایی ندارد"], correctAnswer: "باتری دستگاه ضعیف است و باید تعویض شود", explanation: "تک بوق‌های کوتاه و منظم نشان‌دهنده کم بودن شارژ باتری پشتیبان است."),
            ExerciseItem(prompt: "در حال رانندگی هستید و یک خودروی امدادی با چراغ‌های چشمک‌زن پشت سر خود می‌بینید. چه کار باید بکنید؟", options: ["افزایش سرعت برای جلو ماندن از آن", "کشیدن به کنار جاده و توقف ایمن", "توقف فوری در وسط لاین حرکت", "نادیده گرفتن آن"], correctAnswer: "کشیدن به کنار جاده و توقف ایمن", explanation: "کنار کشیدن مسیر را برای خودروهای امدادی باز و ایمن می‌کند."),
            ExerciseItem(prompt: "ایمیلی از بانک خود دریافت می‌کنید که از شما می‌خواهد روی لینکی کلیک کنید تا رمز عبور خود را تایید نمایید. چه کار باید بکنید؟", options: ["کلیک روی لینک و وارد کردن رمز عبور", "حذف ایمیل یا تماس مستقیم با شماره رسمی بانک", "ارسال ایمیل برای دوستانتان", "پاسخ دادن به ایمیل با ارسال رمز عبور"], correctAnswer: "حذف ایمیل یا تماس مستقیم با شماره رسمی بانک", explanation: "بانک‌ها هرگز اطلاعات حساس را از طریق لینک ایمیل درخواست نمی‌کنند؛ این یک فیشینگ است."),
            ExerciseItem(prompt: "کیف پولی را روی پیاده‌رو پیدا می‌کنید که حاوی پول و کارت شناسایی است. چه کار باید بکنید؟", options: ["برداشتن پول و دور انداختن کیف", "تحویل آن به پلیس یا تلاش برای تماس با مالک با استفاده از کارت شناسایی", "رها کردن کیف روی پیاده‌رو", "دادن آن به یک غریبه"], correctAnswer: "تحویل آن به پلیس یا تلاش برای تماس با مالک با استفاده از کارت شناسایی", explanation: "بازگرداندن مال گمشده به صاحبش رفتار درست و اخلاقی است."),
            ExerciseItem(prompt: "آژیر هشدار دود به طور مداوم و با صدای بلند به صدا در می‌آید. چه کار باید بکنید؟", options: ["نادیده گرفتن و منتظر ماندن برای قطع شدن آن", "بررسی وجود آتش‌سوزی و خروج ایمن از ساختمان در صورت نیاز", "تعویض فوری باتری‌ها", "خوابیدن"], correctAnswer: "بررسی وجود آتش‌سوزی و خروج ایمن از ساختمان در صورت نیاز", explanation: "آژیرهای مداوم نشانه وجود دود یا آتش است و خروج سریع و ایمن را می‌طلبد.")
        ]
    )
}
