import Foundation

struct ArabicLanguageExerciseData {

    static let allExercises: [Exercise] = [
        categoryCrossoutEasy,
        categoryCrossoutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonymsEasy,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencingSteps,
        rhymingPairs,
        wordAssociation,
        completeTheSaying,
        compoundWords,
        prefixAndSuffix
    ]

    // MARK: - Exercise 1: Category Cross-Out (Easy)
    private static let categoryCrossoutEasy = Exercise(
        id: UUID(),
        title: "شطب الفئة (سهل)",
        instructions: "اضغط على الكلمة التي لا تنتمي إلى المجموعة.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "التفاح، الكمثرى، الجزر، البرقوق",
                options: ["أبل", "الكمثرى", "جزرة", "بلوم"],
                correctAnswer: "جزرة",
                explanation: "خضار وليست فاكهة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "سيارة، حافلة، ملعقة، شاحنة",
                options: ["سيارة", "حافلة", "ملعقة", "شاحنة"],
                correctAnswer: "ملعقة",
                explanation: "ليست مركبة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الذهب، القط، الكلب، الطيور",
                options: ["الذهب", "قطة", "كلب", "بيرد"],
                correctAnswer: "الذهب",
                explanation: "معدن وليس حيوان"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قميص، سروال، شوكة، قبعة",
                options: ["قميص", "السراويل", "شوكة", "قبعة"],
                correctAnswer: "شوكة",
                explanation: "ليس الملابس"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كرسي، طاولة، أبل، سرير",
                options: ["كرسي", "الجدول", "أبل", "سرير"],
                correctAnswer: "أبل",
                explanation: "الطعام وليس الأثاث"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مطرقة، مفتاح ربط، وسادة، مثقاب",
                options: ["مطرقة", "مفتاح الربط", "وسادة", "حفر"],
                correctAnswer: "وسادة",
                explanation: "ليست أداة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "يناير، مارس، الجمعة، مايو",
                options: ["يناير", "مارس", "الجمعة", "مايو"],
                correctAnswer: "الجمعة",
                explanation: "يوم من الاسبوع وليس شهر"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "باريس، لندن، المشتري، روما",
                options: ["باريس", "لندن", "كوكب المشتري", "روما"],
                correctAnswer: "كوكب المشتري",
                explanation: "كوكب وليس مدينة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كلب، قطة، شجرة، فأر",
                options: ["كلب", "قطة", "شجرة", "ماوس"],
                correctAnswer: "شجرة",
                explanation: "ليس حيوانا"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "العين والأنف والسيارة والأذن",
                options: ["عين", "الأنف", "سيارة", "الأذن"],
                correctAnswer: "سيارة",
                explanation: "ليس جزء من الجسم"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الحليب والعصير والخبز والماء",
                options: ["حليب", "عصير", "خبز", "الماء"],
                correctAnswer: "خبز",
                explanation: "طعام وليس شراب"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أريكة، سرير، موقد، كرسي",
                options: ["أريكة", "سرير", "موقد", "كرسي"],
                correctAnswer: "موقد",
                explanation: "الأجهزة، وليس أثاث الجلوس أو النوم"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "روز، توليب، ديزي، سيارة",
                options: ["روز", "توليب", "ديزي", "سيارة"],
                correctAnswer: "سيارة",
                explanation: "ليست زهرة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قلم، قلم رصاص، قلم تلوين، شوكة",
                options: ["قلم", "قلم رصاص", "تلوين", "شوكة"],
                correctAnswer: "شوكة",
                explanation: "ليست أداة للكتابة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الأريكة، البساط، المصباح، الدجاج",
                options: ["الأريكة", "سجادة", "مصباح", "دجاج"],
                correctAnswer: "دجاج",
                explanation: "ليست مادة منزلية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الشمس، المطر، الرياح، القميص",
                options: ["شمس", "المطر", "الرياح", "قميص"],
                correctAnswer: "قميص",
                explanation: "ليست كلمة الطقس"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "طبق، وعاء، كوب، سيارة",
                options: ["لوحة", "وعاء", "كأس", "سيارة"],
                correctAnswer: "سيارة",
                explanation: "ليس طبقًا أو حاوية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "حافلة، قطار، قارب، قطة",
                options: ["حافلة", "قطار", "قارب", "قطة"],
                correctAnswer: "قطة",
                explanation: "ليست مركبة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قبعة، جوارب، أحذية، وعاء",
                options: ["قبعة", "الجوارب", "أحذية", "وعاء"],
                correctAnswer: "وعاء",
                explanation: "أدوات الطبخ، وليس الملابس"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قطة، كلب، طائر، شاحنة",
                options: ["قطة", "كلب", "بيرد", "شاحنة"],
                correctAnswer: "شاحنة",
                explanation: "ليس حيوانا"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مارس، أبريل، الثلاثاء، يونيو",
                options: ["مارس", "أبريل", "الثلاثاء", "يونيو"],
                correctAnswer: "الثلاثاء",
                explanation: "يوم من الاسبوع وليس شهر"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الأحمر والأزرق والطاولة والأخضر",
                options: ["أحمر", "أزرق", "الجدول", "أخضر"],
                correctAnswer: "الجدول",
                explanation: "ليس لونا"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "سكين، شوكة، ملعقة، سرير",
                options: ["سكين", "شوكة", "ملعقة", "سرير"],
                correctAnswer: "سرير",
                explanation: "الأثاث، وليس أدوات المائدة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "النسر، الصقر، البومة، السمك",
                options: ["نسر", "هوك", "البومة", "سمك"],
                correctAnswer: "سمك",
                explanation: "ليس طائرا"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قرش، نيكل، دايم، سترة",
                options: ["بيني", "النيكل", "الدايم", "سترة"],
                correctAnswer: "سترة",
                explanation: "ليست العملة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الأسد، الدب، النمر، البيتزا",
                options: ["أسد", "الدب", "النمر", "بيتزا"],
                correctAnswer: "بيتزا",
                explanation: "ليس حيوانا"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "التفاح، الموز، الجزر، العنب",
                options: ["أبل", "الموز", "جزرة", "العنب"],
                correctAnswer: "جزرة",
                explanation: "خضار وليست فاكهة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كرسي، طاولة، مكتب، دولفين",
                options: ["كرسي", "الجدول", "مكتب", "دولفين"],
                correctAnswer: "دولفين",
                explanation: "حيوان بحري وليس أثاث"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "روبن، النسر، السلمون، الببغاء",
                options: ["روبن", "نسر", "سمك السلمون", "ببغاء"],
                correctAnswer: "سمك السلمون",
                explanation: "سمكة وليست طير"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "البيسبول، التنس، الشطرنج، كرة القدم",
                options: ["البيسبول", "تنس", "الشطرنج", "كرة القدم"],
                correctAnswer: "الشطرنج",
                explanation: "لعبة لوحية وليست رياضة بدنية"
            )
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out (Hard)
    private static let categoryCrossoutHard = Exercise(
        id: UUID(),
        title: "الفئة المتقاطعة (الصلبة)",
        instructions: "اضغط على الكلمة التي لا تنتمي إلى المجموعة.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "التشبيه، الاستعارة، المبالغة، الفقرة",
                options: ["مشابه", "استعارة", "مبالغة", "فقرة"],
                correctAnswer: "فقرة",
                explanation: "بنية النص، وليس الشكل الكلامي"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "عظم الفخذ، الظنبوب، نصف القطر، القرنية",
                options: ["عظم الفخذ", "الظنبوب", "نصف القطر", "القرنية"],
                correctAnswer: "القرنية",
                explanation: "جزء من العين وليس عظم"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "بيتهوفن، موزارت، بيكاسو، شوبان",
                options: ["بيتهوفن", "موزارت", "بيكاسو", "شوبان"],
                correctAnswer: "بيكاسو",
                explanation: "رسام وليس ملحن"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "سترة صوفية، سترة، ياقة مدورة، خنجر",
                options: ["كارديجان", "بليزر", "الياقة المدورة", "خنجر"],
                correctAnswer: "خنجر",
                explanation: "حذاء، وليس ملابس الجزء العلوي من الجسم"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "التايمز، النيل، أمازون، إيفرست",
                options: ["التايمز", "النيل", "أمازون", "ايفرست"],
                correctAnswer: "ايفرست",
                explanation: "جبل وليس نهر"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مذكرات، سيرة ذاتية، سيرة ذاتية، سونيت",
                options: ["مذكرات", "السيرة الذاتية", "السيرة الذاتية", "السوناتة"],
                correctAnswer: "السوناتة",
                explanation: "قصيدة وليست قصة حياة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الأنسولين، الأدرينالين، الإستروجين، الإيبوبروفين",
                options: ["الأنسولين", "الأدرينالين", "الاستروجين", "ايبوبروفين"],
                correctAnswer: "ايبوبروفين",
                explanation: "دواء مصنع وليس هرمون طبيعي"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مئوية، فهرنهايت، كلفن، ديسيبل",
                options: ["مئوية", "فهرنهايت", "كلفن", "ديسيبل"],
                correctAnswer: "ديسيبل",
                explanation: "يقيس الصوت وليس درجة الحرارة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "هيئة المحلفين، القاضي، المحضر، المدعي",
                options: ["هيئة المحلفين", "القاضي", "المحضر", "المدعي"],
                correctAnswer: "المدعي",
                explanation: "طرف في القضية وليس موظف محكمة"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "السوناتة، هايكو، ليمريك، النثر",
                options: ["السوناتة", "هايكو", "ليمريك", "نثر"],
                correctAnswer: "نثر",
                explanation: "ليس شكلاً شعرياً"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "سوبرانو، ألتو، تينور، موصل",
                options: ["سوبرانو", "ألتو", "تينور", "موصل"],
                correctAnswer: "موصل",
                explanation: "يقود الأوركسترا، وليس نوع صوت الغناء"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الانطباعية، السريالية، التكعيبية، الجاز",
                options: ["الانطباعية", "السريالية", "التكعيبية", "موسيقى الجاز"],
                correctAnswer: "موسيقى الجاز",
                explanation: "نوع موسيقي، وليس حركة فنية بصرية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ستوكهولم، أوسلو، هلسنكي، بروكسل",
                options: ["ستوكهولم", "أوسلو", "هلسنكي", "بروكسل"],
                correctAnswer: "بروكسل",
                explanation: "بلجيكا ليست عاصمة إسكندنافية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "روبي، الياقوت، الزمرد، الجرانيت",
                options: ["روبي", "الياقوت", "الزمرد", "الجرانيت"],
                correctAnswer: "الجرانيت",
                explanation: "صخرة وليست حجر كريم"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الملحق، المرارة، البنكرياس، عظم الفخذ",
                options: ["الملحق", "المرارة", "البنكرياس", "عظم الفخذ"],
                correctAnswer: "عظم الفخذ",
                explanation: "عظم وليس عضو"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "التشيلو، الفيولا، القيثارة، المزمار",
                options: ["التشيلو", "فيولا", "القيثارة", "المزمار"],
                correctAnswer: "المزمار",
                explanation: "آلة نفخ خشبية، وليست آلة وترية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "فريسكو، موزاييك، ليثوغراف، سوناتا",
                options: ["فريسكو", "فسيفساء", "طباعة حجرية", "سوناتا"],
                correctAnswer: "سوناتا",
                explanation: "الموسيقى، وليست شكلاً من أشكال الفن البصري"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الأرخبيل، المضيق البحري، الهضبة، اللهجة",
                options: ["أرخبيل", "المضيق البحري", "الهضبة", "اللهجة"],
                correctAnswer: "اللهجة",
                explanation: "اختلاف اللغة، وليس ميزة جغرافية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المغنيسيوم، الكالسيوم، البوتاسيوم، البترول",
                options: ["المغنيسيوم", "الكالسيوم", "البوتاسيوم", "البترول"],
                correctAnswer: "البترول",
                explanation: "وقود أحفوري وليس عنصر معدني"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الفلامنكو، التانجو، الفالس، الأوبرا",
                options: ["الفلامنكو", "تانجو", "الفالس", "أوبرا"],
                correctAnswer: "أوبرا",
                explanation: "فن الأداء الصوتي وليس الرقص"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الشريان، الوريد، الشعيرات الدموية، الوتر",
                options: ["الشريان", "الوريد", "الشعرية", "وتر"],
                correctAnswer: "وتر",
                explanation: "يربط العضلات بالعظام، وليس الأوعية الدموية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "التندرا، التايغا، السافانا، الدلتا",
                options: ["تندرا", "تايغا", "السافانا", "دلتا"],
                correctAnswer: "دلتا",
                explanation: "شكل أرضي عند مصب نهر، وليس منطقة حيوية"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "إعصار، إعصار، الرياح الموسمية، زلزال",
                options: ["تايفون", "إعصار", "الرياح الموسمية", "الهزة"],
                correctAnswer: "الهزة",
                explanation: "حركة زلزالية وليست حدثًا مناخيًا"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الغضروف، الرباط، الأوتار، الخلايا العصبية",
                options: ["الغضروف", "الرباط", "وتر", "نيورون"],
                correctAnswer: "نيورون",
                explanation: "خلية عصبية وليست نسيج ضام"
            )
        ]
    )

    // MARK: - Exercise 3: Phrase Completion
    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "إكمال العبارات الشائعة",
        instructions: "اختر الكلمة الأكثر ملاءمة لإكمال التعبير الشائع.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “تناول ___”",
                options: ["الفطور", "السيارة", "الكتاب", "الباب"],
                correctAnswer: "الفطور",
                explanation: "في اللغة العربية نقول ‘تناول الفطور’ للإشارة إلى أكل وجبة الصباح."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “شرب ___”",
                options: ["الماء", "الخبز", "القلم", "الساعة"],
                correctAnswer: "الماء",
                explanation: "نقول ‘شرب الماء’ لسد العطش."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “كتب ___”",
                options: ["الرسالة", "الباب", "السيارة", "الماء"],
                correctAnswer: "الرسالة",
                explanation: "نقول ‘كتب الرسالة’ للتواصل مع شخص ما."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “قراءة ___”",
                options: ["الكتاب", "الباب", "السيارة", "الماء"],
                correctAnswer: "الكتاب",
                explanation: "نقول ‘قراءة الكتاب’ للمطالعة وكسب المعرفة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “ركوب ___”",
                options: ["السيارة", "الكتاب", "الماء", "الباب"],
                correctAnswer: "السيارة",
                explanation: "نقول ‘ركوب السيارة’ للتنقل والمواصلات."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “لبس ___”",
                options: ["الملابس", "الطعام", "الماء", "الكتاب"],
                correctAnswer: "الملابس",
                explanation: "نقول ‘لبس الملابس’ لارتدائها."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “غسل ___”",
                options: ["اليدين", "الطعام", "الماء", "الكتاب"],
                correctAnswer: "اليدين",
                explanation: "نقول ‘غسل اليدين’ للحفاظ على النظافة الشخصية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “فتح ___”",
                options: ["الباب", "الماء", "الطعام", "السيارة"],
                correctAnswer: "الباب",
                explanation: "نقول ‘فتح الباب’ للسماح بالدخول."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “إغلاق ___”",
                options: ["النافذة", "الماء", "الطعام", "السيارة"],
                correctAnswer: "النافذة",
                explanation: "نقول ‘إغلاق النافذة’ لحماية المنزل."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “ذهب إلى ___”",
                options: ["المدرسة", "السيارة", "الماء", "الباب"],
                correctAnswer: "المدرسة",
                explanation: "نقول ‘ذهب إلى المدرسة’ لتلقي العلم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “لعب ___”",
                options: ["الكرة", "الماء", "الطعام", "الكتاب"],
                correctAnswer: "الكرة",
                explanation: "نقول ‘لعب الكرة’ لممارسة الرياضة والترفيه."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “ركب ___”",
                options: ["الحافلة", "الماء", "الطعام", "الكتاب"],
                correctAnswer: "الحافلة",
                explanation: "نقول ‘ركب الحافلة’ للتنقل العام."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “فرشاة ___”",
                options: ["الأسنان", "الماء", "الطعام", "الكتاب"],
                correctAnswer: "الأسنان",
                explanation: "نقول ‘فرشاة الأسنان’ لتنظيف الأسنان."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “مشاهدة ___”",
                options: ["التلفاز", "الماء", "الطعام", "الكتاب"],
                correctAnswer: "التلفاز",
                explanation: "نقول ‘مشاهدة التلفاز’ لمتابعة البرامج."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “استماع إلى ___”",
                options: ["الموسيقى", "الماء", "الطعام", "الكتاب"],
                correctAnswer: "الموسيقى",
                explanation: "نقول ‘استماع إلى الموسيقى’ للاسترخاء."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “طهي ___”",
                options: ["الطعام", "الماء", "الكتاب", "الباب"],
                correctAnswer: "الطعام",
                explanation: "نقول ‘طهي الطعام’ لتحضير الوجبات الغذائية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “النوم في ___”",
                options: ["السرير", "الماء", "الطعام", "الكتاب"],
                correctAnswer: "السرير",
                explanation: "نقول ‘النوم في السرير’ لأخذ قسط من الراحة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “شراء ___”",
                options: ["البقالة", "الماء", "الكتاب", "الباب"],
                correctAnswer: "البقالة",
                explanation: "نقول ‘شراء البقالة’ لتأمين لوازم البيت."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “الاتصال بـ ___”",
                options: ["الصديق", "الماء", "الكتاب", "الباب"],
                correctAnswer: "الصديق",
                explanation: "نقول ‘الاتصال بالصديق’ للسؤال عنه."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل العبارة الشائعة: “قيادة ___”",
                options: ["السيارة", "الماء", "الكتاب", "الباب"],
                correctAnswer: "السيارة",
                explanation: "نقول ‘قيادة السيارة’ للتحكم بها أثناء السير."
            )
        ]
    )

    // MARK: - Exercise 4: Synonyms (Easy)
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "مرادفات (سهل)",
        instructions: "اختر الكلمة التي تعني نفس الكلمة المحددة.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: غاضب",
                options: ["سعيد", "غاضب", "الهدوء", "حزين"],
                correctAnswer: "غاضب",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: بارد",
                options: ["دافئ", "تجميد", "حار", "خفيف"],
                correctAnswer: "تجميد",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: كبير",
                options: ["صغير", "كبير", "قصيرة", "رقيقة"],
                correctAnswer: "كبير",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: متعب",
                options: ["تنبيه", "مستيقظا", "استنفدت", "استراح"],
                correctAnswer: "استنفدت",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: خائفة",
                options: ["شجاع", "مرعوب", "الهدوء", "جريئة"],
                correctAnswer: "مرعوب",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: النوع",
                options: ["يعني", "قاسية", "لطيف", "فظ"],
                correctAnswer: "لطيف",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: سريع",
                options: ["بطيء", "سريع", "كسول", "مملة"],
                correctAnswer: "سريع",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: قديم",
                options: ["شاب", "القديمة", "جديد", "طازجة"],
                correctAnswer: "القديمة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: القذرة",
                options: ["نظيفة", "قذرة", "أنيق", "مرتب"],
                correctAnswer: "قذرة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: مشرق",
                options: ["خافت", "داكن", "رائعة", "مملة"],
                correctAnswer: "رائعة",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 5: Synonyms (Hard)
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "مرادفات (صعب)",
        instructions: "اختر الكلمة التي تعني نفس الكلمة المحددة.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: حزن",
                options: ["بهيجة", "حزين", "متحمس", "المحتوى"],
                correctAnswer: "حزين",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: هادئ",
                options: ["صاخبة", "مضطرب", "سلمية", "المحمومة"],
                correctAnswer: "سلمية",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: شجاع",
                options: ["خجول", "مخيف", "شجاع", "جبان"],
                correctAnswer: "شجاع",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: غريب",
                options: ["عادي", "غريب", "عادي", "نموذجي"],
                correctAnswer: "غريب",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: غزير",
                options: ["نادر", "وفيرة", "نادر", "محدودة"],
                correctAnswer: "وفيرة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: ضعيف",
                options: ["قوي", "عظيم", "ضعيف", "قوية"],
                correctAnswer: "ضعيف",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: حية",
                options: ["مملة", "خافت", "ملون", "شاحب"],
                correctAnswer: "ملون",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: مقتصد",
                options: ["مسرف", "مقتصد", "فخم", "سخية"],
                correctAnswer: "مقتصد",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: فصيح",
                options: ["الغمغمة", "واضح", "هادئ", "أخرق"],
                correctAnswer: "واضح",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: المثابر",
                options: ["ضعيف", "الإقلاع عن التدخين", "مستمر", "مرنة"],
                correctAnswer: "مستمر",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 6: Antonyms (Easy)
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "المتضادات (سهل)",
        instructions: "اختر الكلمة التي تعني عكس الكلمة المحددة.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: حار",
                options: ["دافئ", "بارد", "رائع", "فاتر"],
                correctAnswer: "بارد",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: سعيد",
                options: ["سعيد", "بهيجة", "حزين", "المحتوى"],
                correctAnswer: "حزين",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: كبير",
                options: ["ضخمة", "كبير", "صغير", "طويل القامة"],
                correctAnswer: "صغير",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: سريع",
                options: ["سريع", "بطيء", "سريع", "سريع"],
                correctAnswer: "بطيء",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: نظيفة",
                options: ["أنيق", "مرتب", "قذر", "طازجة"],
                correctAnswer: "قذر",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: مستيقظا",
                options: ["تنبيه", "على علم", "نائما", "نشط"],
                correctAnswer: "نائما",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: بصوت عال",
                options: ["صاخبة", "هادئ", "مزدهر", "قوي"],
                correctAnswer: "هادئ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: مفتوح",
                options: ["مغلق", "واسعة", "واضح", "مجانا"],
                correctAnswer: "مغلق",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: كامل",
                options: ["معبأة", "فارغ", "محملة", "كامل"],
                correctAnswer: "فارغ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلمة: الحب",
                options: ["أعشق", "مثل", "الكراهية", "رعاية"],
                correctAnswer: "الكراهية",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 7: Sentence Completion (Easy)
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "إكمال الجملة (سهل)",
        instructions: "اختر الكلمة التي تكمل الجملة بشكل أفضل.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "لقد سقي ___.",
                options: ["زهور", "طوابق", "دقيق"],
                correctAnswer: "زهور",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "لقد ارتدى ___.",
                options: ["معطف", "قارب", "عنزة"],
                correctAnswer: "معطف",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أحتاج إلى كوب من ___.",
                options: ["الماء", "نادل", "الخواض"],
                correctAnswer: "الماء",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اتصلت بها ___.",
                options: ["الأم", "يزعج", "رغوة الصابون"],
                correctAnswer: "الأم",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "هز الكلب ___.",
                options: ["حكاية", "الذيل", "طويل القامة"],
                correctAnswer: "الذيل",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قام بإيقاف ___.",
                options: ["قتال", "ضوء", "ليلة"],
                correctAnswer: "ضوء",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "لقد خبزت ___.",
                options: ["مزيف", "بحيرة", "كعكة"],
                correctAnswer: "كعكة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "بنى الطائر ___.",
                options: ["عش", "راحة", "اختبار"],
                correctAnswer: "عش",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قرأ ___.",
                options: ["صحيفة", "سلة المهملات", "ورق زجاج"],
                correctAnswer: "صحيفة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "لعب الأطفال في ___.",
                options: ["حديقة", "النباح", "داكن"],
                correctAnswer: "حديقة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "قام بإصلاح ___.",
                options: ["بالوعة", "رابط", "غمزة"],
                correctAnswer: "بالوعة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كان الحساء أيضًا ___.",
                options: ["حار", "الكثير", "نقطة"],
                correctAnswer: "حار",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "فتحت لها ___.",
                options: ["مظلة", "الفانيليا", "غوريلا"],
                correctAnswer: "مظلة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "لقد دفع ___.",
                options: ["فاتورة", "ملء", "مطحنة"],
                correctAnswer: "فاتورة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "جلست القطة على ___.",
                options: ["حصيرة", "الخفافيش", "فأر"],
                correctAnswer: "حصيرة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كانت ترتدي ___ دافئة.",
                options: ["سترة", "منشة", "مبعثر"],
                correctAnswer: "سترة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "زرعت ___.",
                options: ["حديقة", "عفوا", "آمر"],
                correctAnswer: "حديقة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كتبت فيها ___.",
                options: ["مذكرات", "منتجات الألبان", "ديزي"],
                correctAnswer: "مذكرات",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "لقد دفع ___.",
                options: ["فاتورة", "ملء", "مطحنة"],
                correctAnswer: "فاتورة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الطفل ___.",
                options: ["النوم", "كنس", "تتسرب"],
                correctAnswer: "النوم",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 8: Morphology
    private static let morphology = Exercise(
        id: UUID(),
        title: "الصرف والنحو",
        instructions: "اختر الصيغة الصرفية الصحيحة للكلمة لتناسب الجملة.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “الأطفال ___ في الحديقة.”",
                options: ["يلعبون", "تلعب", "يلعب", "يلعبان"],
                correctAnswer: "يلعبون",
                explanation: "الفعل يجب أن يطابق الفاعل الجمع (الأطفال) في صيغة الجمع للغائب المذكر."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “هي ___ واجبها المدرسي كل يوم.”",
                options: ["تكتب", "يكتب", "تكتبين", "يكتبون"],
                correctAnswer: "تكتب",
                explanation: "الفعل المضارع للمفردة المؤنثة الغائبة يبدأ بالتاء (هي تكتب)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “أنا ___ كتاباً شيقاً الآن.”",
                options: ["أقرأ", "تقرأ", "يقرأ", "نقرأ"],
                correctAnswer: "أقرأ",
                explanation: "الفعل المضارع للمتكلم المفرد يبدأ بالهمزة (أنا أقرأ)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “المعلمان ___ الدرس بوضوح.”",
                options: ["يشرحان", "تشرحان", "يشرح", "يشرحون"],
                correctAnswer: "يشرحان",
                explanation: "الفعل يجب أن يطابق المثنى المذكر (المعلمان) في صيغة المثنى للغائب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “الأمهات ___ الطعام بحب.”",
                options: ["يطهين", "يطهي", "تطهي", "يطهون"],
                correctAnswer: "يطهين",
                explanation: "الفعل يسند إلى نون النسوة لجمع المؤنث الغائب (الأمهات يطهين)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “نحن ___ كرة القدم مساءً.”",
                options: ["نلعب", "يلعب", "تلعب", "ألعاب"],
                correctAnswer: "نلعب",
                explanation: "الفعل المضارع للمتكلمين الجمع يبدأ بالنون (نحن نلعب)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “الطالبان ___ في الاختبار أمس.”",
                options: ["نجحا", "نجحتا", "نجحوا", "نجح"],
                correctAnswer: "نجحا",
                explanation: "الفعل الماضي للمثنى المذكر الغائب ينتهي بألف الاثنين (نجحا)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “أنتِ ___ خطاً جميلاً جداً.”",
                options: ["تكتبين", "تكتب", "يكتب", "تكتبون"],
                correctAnswer: "تكتبين",
                explanation: "الفعل المضارع للمخاطبة المؤنثة ينتهي بياء ونون (أنتِ تكتبين)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “هو ___ إلى والديه دائماً.”",
                options: ["يستمع", "تستمع", "يستمعان", "يستمعون"],
                correctAnswer: "يستمع",
                explanation: "الفعل المضارع للمفرد المذكر الغائب يبدأ بالياء (هو يستمع)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “المهندسون ___ المشروع بنجاح.”",
                options: ["أنجزوا", "أنجزت", "أنجزا", "أنجزن"],
                correctAnswer: "أنجزوا",
                explanation: "الفعل الماضي لجمع المذكر الغائب يتصل بواو الجماعة (أنجزوا)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “أنتما ___ الجائزة بجدارة.”",
                options: ["تستحقان", "يستحقان", "تستحق", "تستحقون"],
                correctAnswer: "تستحقان",
                explanation: "الفعل المضارع للمثنى المخاطب ينتهي بألف ونون (أنتما تستحقان)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “البنات ___ واجباتهن بانتظام.”",
                options: ["يكتبن", "يكتبون", "تكتب", "يكتب"],
                correctAnswer: "يكتبن",
                explanation: "الفعل المضارع المسند لنون النسوة لجمع الإناث الغائب (يكتبن)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “أنا ___ والديّ في أعمال البيت.”",
                options: ["أساعد", "تساعد", "يساعد", "نساعد"],
                correctAnswer: "أساعد",
                explanation: "المضارع للمتكلم يبدأ بالهمزة (أنا أساعد)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “الطبيبات ___ المرضى في المستشفى.”",
                options: ["يعالجن", "يعالجون", "تعالج", "يعالج"],
                correctAnswer: "يعالجن",
                explanation: "المضارع المسند لنون النسوة لجمع المؤنث الغائب هو يعالجن."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “هو ___ مهاراته باستمرار.”",
                options: ["يطور", "تطور", "يطورون", "يطوران"],
                correctAnswer: "يطور",
                explanation: "المضارع للمفرد المذكر الغائب هو يطور."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “نحن ___ اللغة العربية بطلاقة.”",
                options: ["نتحدث", "يتحدث", "تتحدث", "أتحدث"],
                correctAnswer: "نتحدث",
                explanation: "المضارع للمتكلم الجمع يبدأ بالنون (نتحدث)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “أنتَ ___ الرياضة بانتظام.”",
                options: ["تمارس", "تمارسين", "يمارس", "تمارسون"],
                correctAnswer: "تمارس",
                explanation: "المضارع للمخاطب المفرد المذكر يبدأ بالتاء (تمارس)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “اللاعبون ___ في الملعب الآن.”",
                options: ["يتدربون", "تتدرب", "يتدرب", "يتدربان"],
                correctAnswer: "يتدربون",
                explanation: "المضارع لجمع المذكر الغائب ينتهي بالواو والنون (يتدربون)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “هي ___ طفلتها الصغيرة.”",
                options: ["ترعى", "يرعى", "يرعون", "ترعيان"],
                correctAnswer: "ترعى",
                explanation: "المضارع للمفردة المؤนثة الغائبة هو ترعى."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "اختر الصيغة الصرفية الصحيحة للكلمة: “السيارتان ___ بسرعة كبيرة.”",
                options: ["تسيران", "يسيران", "تسير", "تسيرون"],
                correctAnswer: "تسيران",
                explanation: "الفعل المضارع للمثنى المؤنث الغائب (السيارتان) يبدأ بالتاء وينتهي بألف ونون (تسيران)."
            )
        ]
    )

    // MARK: - Exercise 10: Analogies
    private static let analogies = Exercise(
        id: UUID(),
        title: "القياسات",
        instructions: "اختر الكلمة التي تكمل التشبيه بشكل أفضل.",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "الجرو بالنسبة إلى الكلب كما هو الحال مع KITTEN ___",
                options: ["قطة", "كلب", "طائر", "السمك"],
                correctAnswer: "قطة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "البرد إلى الشتاء كما هو حار إلى ___",
                options: ["الربيع", "سقوط", "الصيف", "المطر"],
                correctAnswer: "الصيف",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "العين هي التي ترى كما الأذن هي ___",
                options: ["المس", "اسمع", "رائحة", "الذوق"],
                correctAnswer: "اسمع",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الشيف إلى المطبخ كما الطبيب إلى ___",
                options: ["مكتبة", "مستشفى", "المدرسة", "متجر"],
                correctAnswer: "مستشفى",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "القفاز في اليد كما هو الحال في الجورب ___",
                options: ["ذراع", "الركبة", "قدم", "رئيس"],
                correctAnswer: "قدم",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "السعادة هي أن تضحك كما أن الحزن هو ___",
                options: ["ابتسم", "النوم", "صرخة", "تشغيل"],
                correctAnswer: "صرخة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BIRD هو NEST كما BEAR هو ___",
                options: ["شجرة", "كهف", "المحيط", "الميدان"],
                correctAnswer: "كهف",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "يجب على قلم الرصاص أن يكتب كما تفعل الفرشاة ___",
                options: ["قطع", "الطلاء", "اكتساح", "اثارة"],
                correctAnswer: "الطلاء",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "النهار إلى الليل كما الأسود إلى ___",
                options: ["الظلام", "رمادي", "أبيض", "أزرق"],
                correctAnswer: "أبيض",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الجندي بالنسبة للجيش كما البحار هو ___",
                options: ["القوة الجوية", "مشاة البحرية", "البحرية", "حارس"],
                correctAnswer: "البحرية",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "العجلة بالنسبة إلى السيارة كما هو الحال مع الجناح ___",
                options: ["قارب", "طائرة", "قطار", "حافلة"],
                correctAnswer: "طائرة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المعلم هو المدرسة كما القاضي هو ___",
                options: ["مكتب", "مستشفى", "قاعة المحكمة", "متجر"],
                correctAnswer: "قاعة المحكمة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "تمثل اليرقة الفراشة مثل الشرغوف ___",
                options: ["السمك", "سلحفاة", "الضفدع", "سحلية"],
                correctAnswer: "الضفدع",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الطعام للجوع مثل الماء لـ ___",
                options: ["مبلل", "عطشان", "بارد", "كامل"],
                correctAnswer: "عطشان",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الصوف للأغنام كما الحرير ___",
                options: ["العنكبوت", "دودة القز", "قطن", "الكتان"],
                correctAnswer: "دودة القز",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 11: Fact or Opinion
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "حقيقة أم رأي",
        instructions: "قرر: هل هذا البيان حقيقة أم رأي؟",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "هناك 7 أيام في الأسبوع.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الفانيليا هي أفضل نكهة للآيس كريم.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "يتجمد الماء عند درجة حرارة 32 درجة فهرنهايت.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الكلاب هي أفضل الحيوانات الأليفة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المثلث له ثلاثة جوانب.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "هذا البرنامج التلفزيوني مضحك.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كان أبراهام لينكولن رئيسًا للولايات المتحدة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الأرض هي أفضل كوكب.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "هناك 60 دقيقة في الساعة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "التوليب أجمل من الورد .",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "واشنطن العاصمة هي عاصمة الولايات المتحدة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "من الوقاحة أن تتحدث وفمك ممتلئ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "هناك 12 شهرا في السنة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الاستيقاظ مبكرًا مفيد لك.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "2 + 2 = 4.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المحيط مصنوع من المياه المالحة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "البستنة هي هواية عظيمة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الصخور أثقل من الريش من نفس الحجم.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الولايات المتحدة لديها 50 ولاية.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "البيتزا هي أفضل طعام.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ممارسة الرياضة مفيدة لصحتك.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الموسيقى الكلاسيكية مملة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "التفاح والبرتقال كلاهما فاكهة.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "رعاية القطط أسهل من رعاية الكلاب.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "هناك 24 ساعة في اليوم.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 12: Sequencing Steps
    private static let sequencingSteps = Exercise(
        id: UUID(),
        title: "خطوات التسلسل",
        instructions: "يتم عرض الخطوات بالترتيب الخاطئ. قم بترقيمها 1، 2، 3... لوضعها بالتسلسل الصحيح.",
        section: .language,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "صنع الخبز المحمص",
                options: ["ادهني الخبز المحمص بالزبدة", "ضعي الخبز في المحمصة", "إزالة من محمصة", "أكل"],
                correctAnswer: "ادهني الخبز المحمص بالزبدة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "غسل اليدين",
                options: ["تجفيف اليدين بمنشفة", "ضع الصابون على اليدين", "قم بتشغيل الماء", "فرك لمدة 20 ثانية", "شطف الصابون", "بلل يديك"],
                correctAnswer: "تجفيف اليدين بمنشفة",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "صنع القهوة",
                options: ["صب القهوة في فنجانك", "أضف القهوة المطحونة إلى الفلتر", "اضغط على زر المشروب", "ملء خزان المياه"],
                correctAnswer: "صب القهوة في فنجانك",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "إجراء مكالمة هاتفية",
                options: ["قل مرحبا", "شنق", "التقط الهاتف", "اطلب الرقم", "قم بمحادثتك"],
                correctAnswer: "قل مرحبا",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ارتداء الملابس",
                options: ["ارتدي حذاءً", "ارتدي القميص", "ارتدي الملابس الداخلية", "ارتدي الجوارب", "ارتدي البنطال"],
                correctAnswer: "ارتدي حذاءً",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كنس الكلمة",
                options: ["تجاهل في سلة المهملات", "اخرج المكنسة", "مغرفة الحطام في مجرود", "اكتساح الحطام في كومة"],
                correctAnswer: "تجاهل في سلة المهملات",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "الطلب في مطعم",
                options: ["تناول وجبتك", "أخبر الخادم طلبك", "اجلس", "انتظر طعامك", "قم بمراجعة القائمة"],
                correctAnswer: "تناول وجبتك",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "خبز الكوكيز",
                options: ["دع ملفات تعريف الارتباط تبرد", "اخبز في الفرن", "سخني الفرن", "امزج المكونات", "اغرفي العجينة على صينية الخبز"],
                correctAnswer: "دع ملفات تعريف الارتباط تبرد",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 33: Rhyming Pairs
    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "القافية المتطابقة",
        instructions: "اختر الكلمة التي لها نفس قافية الكلمة المعطاة.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “بيت”؟",
                options: ["كلب", "زيت", "شمس", "شجرة"],
                correctAnswer: "زيت",
                explanation: "“بيت” و“زيت” لهما نفس الصوت والقافية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “كتاب”؟",
                options: ["قمر", "باب", "مدرسة", "سماء"],
                correctAnswer: "باب",
                explanation: "“كتاب” و“باب” ينتهيان بنفس القافية (ـاب)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “سماء”؟",
                options: ["جبل", "ماء", "نهر", "أرض"],
                correctAnswer: "ماء",
                explanation: "“سماء” و“ماء” لهما نفس القافية (ـاء)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “جبل”؟",
                options: ["بحر", "جمل", "شجرة", "ورقة"],
                correctAnswer: "جمل",
                explanation: "“جبل” و“جمل” لهما نفس الوزن والقافية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “شمس”؟",
                options: ["نجم", "همس", "قمر", "غيمة"],
                correctAnswer: "همس",
                explanation: "“شمس” و“همس” تنتهيان بنفس الحروف (ـمس)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “قمر”؟",
                options: ["شمس", "تمر", "ليل", "بحر"],
                correctAnswer: "تمر",
                explanation: "“قمر” و“تمر” لهما نفس القافية (ـمر)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “سعيد”؟",
                options: ["حزين", "بعيد", "طيب", "جميل"],
                correctAnswer: "بعيد",
                explanation: "“سعيد” و“بعيد” لهما نفس القافية (ـيد)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “كبير”؟",
                options: ["صغير", "سرير", "واسع", "جديد"],
                correctAnswer: "سرير",
                explanation: "“كبير” و“سرير” لهما نفس القافية (ـير)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “حليب”؟",
                options: ["عصير", "طبيب", "ماء", "خبز"],
                correctAnswer: "طبيب",
                explanation: "“حليب” و“طبيب” لهما نفس القافية (ـيب)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “قلم”؟",
                options: ["دفتر", "علم", "كتاب", "حقيبة"],
                correctAnswer: "علم",
                explanation: "“قلم” و“علم” لهما نفس القافية (ـلم)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “ولد”؟",
                options: ["بنت", "بلد", "مدرسة", "بيت"],
                correctAnswer: "بلد",
                explanation: "“ولد” و“بلد” لهما نفس القافية (ـلد)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “طين”؟",
                options: ["رمل", "تين", "أرض", "ماء"],
                correctAnswer: "تين",
                explanation: "“طين” و“تين” لهما نفس القافية (ـين)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “نار”؟",
                options: ["دخان", "دار", "حطب", "رماد"],
                correctAnswer: "دار",
                explanation: "“nنار” و“دار” لهما نفس القافية (ـار)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “ليل”؟",
                options: ["نهار", "خيل", "قمر", "نجم"],
                correctAnswer: "خيل",
                explanation: "“ليل” و“خيل” لهما نفس القافية (ـيل)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “عين”؟",
                options: ["وجه", "تين", "أنف", "أذن"],
                correctAnswer: "تين",
                explanation: "“عين” و“تين” لهما نفس القافية (ـين)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “رمل”؟",
                options: ["بحر", "نمل", "صحراء", "جبل"],
                correctAnswer: "نمل",
                explanation: "“رمل” و“نمل” لهما نفس القافية (ـمل)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “ورد”؟",
                options: ["زهر", "برد", "حديقة", "عطر"],
                correctAnswer: "برد",
                explanation: "“ورد” و“برد” لهما نفس القافية (ـرد)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “بحر”؟",
                options: ["سمك", "نهر", "رمل", "موج"],
                correctAnswer: "نهر",
                explanation: "“بحر” و“نهر” لهما نفس القافية (ـهر)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “سمك”؟",
                options: ["بحر", "ملك", "صيد", "شبكة"],
                correctAnswer: "ملك",
                explanation: "“سمك” و“ملك” لهما نفس القافية (ـمك)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أي كلمة لها قافية متطابقة مع “خبز”؟",
                options: ["طعام", "رمز", "فرن", "دقيق"],
                correctAnswer: "رمز",
                explanation: "“خبز” و“رمز” لهما نفس القافية (ـبز)."
            )
        ]
    )

    // MARK: - Exercise 34: Word Association
    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "جمعية الكلمة",
        instructions: "اختر الكلمة الأكثر ارتباطًا بالكلمة المحددة.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "دكتور",
                options: ["مستشفى", "المطار", "مكتبة", "مزرعة"],
                correctAnswer: "مستشفى",
                explanation: "يعمل الأطباء في المستشفيات لرعاية المرضى."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "خبز",
                options: ["زبدة", "مطرقة", "صابون", "قلم رصاص"],
                correctAnswer: "زبدة",
                explanation: "تنتشر الزبدة عادة على الخبز."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المطبخ",
                options: ["موقد", "سرير", "دش", "سيارة"],
                correctAnswer: "موقد",
                explanation: "الموقد هو الجهاز الأساسي في المطبخ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مكتبة",
                options: ["كتب", "ملابس", "أدوات", "بقالة"],
                correctAnswer: "كتب",
                explanation: "تقوم المكتبات بتخزين وإعارة الكتب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "حذاء",
                options: ["جورب", "قبعة", "قفاز", "حزام"],
                correctAnswer: "جورب",
                explanation: "يتم ارتداء الجوارب داخل الأحذية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "رائد فضاء",
                options: ["الفضاء", "المحيط", "الغابة", "الصحراء"],
                correctAnswer: "الفضاء",
                explanation: "رواد الفضاء يسافرون إلى الفضاء."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المعلم",
                options: ["المدرسة", "مصنع", "المسرح", "صالة ألعاب رياضية"],
                correctAnswer: "المدرسة",
                explanation: "يقوم المعلمون بتعليم الطلاب في المدارس."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المحيط",
                options: ["السمك", "طائر", "بقرة", "العنكبوت"],
                correctAnswer: "السمك",
                explanation: "تعيش الأسماك في المحيط."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "سيارة",
                options: ["صور", "الجناح", "سرج", "الشراع"],
                correctAnswer: "صور",
                explanation: "الإطارات هي مكونات أساسية للسيارات."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "المطر",
                options: ["مظلة", "النظارات الشمسية", "قفازات", "وشاح"],
                correctAnswer: "مظلة",
                explanation: "مظلة تحميك من المطر."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "حريق",
                options: ["دخان", "الجليد", "ورقة", "عملة"],
                correctAnswer: "دخان",
                explanation: "النار تنتج الدخان."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "طبيب أسنان",
                options: ["أسنان", "شعر", "عيون", "قدم"],
                correctAnswer: "أسنان",
                explanation: "أطباء الأسنان متخصصون في صحة الفم والأسنان."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "القهوة",
                options: ["قدح", "وعاء", "لوحة", "شوكة"],
                correctAnswer: "قدح",
                explanation: "يتم تقديم القهوة عادة في كوب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "حديقة",
                options: ["زهور", "أجهزة الكمبيوتر", "مواقد", "معاطف"],
                correctAnswer: "زهور",
                explanation: "تنمو الزهور في الحديقة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مفتاح",
                options: ["قفل", "نافذة", "سقف", "الكلمة"],
                correctAnswer: "قفل",
                explanation: "تستخدم المفاتيح لفتح الأقفال."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مكتب بريد",
                options: ["رسالة", "خبز", "الطب", "تذكرة"],
                correctAnswer: "رسالة",
                explanation: "يتم إرسال الرسائل بالبريد في مكتب البريد."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "بيانو",
                options: ["موسيقى", "الطلاء", "الطين", "خشب"],
                correctAnswer: "موسيقى",
                explanation: "البيانو هو أداة تستخدم لتشغيل الموسيقى."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "نحلة",
                options: ["عسل", "الحليب", "الصوف", "الحرير"],
                correctAnswer: "عسل",
                explanation: "النحل ينتج العسل ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "العنكبوت",
                options: ["ويب", "عش", "خلية", "دن"],
                correctAnswer: "ويب",
                explanation: "العناكب تدور شبكاتها."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "مزارع",
                options: ["جرار", "طائرة", "غواصة", "قطار"],
                correctAnswer: "جرار",
                explanation: "يستخدم المزارعون الجرارات لزراعة الأرض."
            )
        ]
    )

    // MARK: - Exercise 35: Complete the Saying
    private static let completeTheSaying = Exercise(
        id: UUID(),
        title: "إكمال الأمثال الشعبية",
        instructions: "أكمل المثل الشعبي باختيار الكلمة المناسبة.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “الصبر مفتاح ___”",
                options: ["الفرج", "الحياة", "البيت", "النجاح"],
                correctAnswer: "الفرج",
                explanation: "يُضرب هذا المثل للحث على الصبر والتحمل بانتظار الفرج وزوال الشدة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “عصفور في اليد خير من عشرة على ___”",
                options: ["الشجرة", "الأرض", "السماء", "البيت"],
                correctAnswer: "الشجرة",
                explanation: "يعني أن القليل المضمون خير من الكثير غير المضمون."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “في التأني السلامة وفي العجلة ___”",
                options: ["الندامة", "الخسارة", "السرعة", "الصحة"],
                correctAnswer: "الندامة",
                explanation: "ينصح بالتأني والصبر وعدم التسرع في اتخاذ القرارات تجنباً للندم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “الوقت كالسيف إن لم تقطعه ___”",
                options: ["قطعك", "تركك", "أفادك", "ذهب"],
                correctAnswer: "قطعك",
                explanation: "يدل على أهمية استغلال الوقت قبل ضياعه دون فائدة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “من جدّ ___”",
                options: ["وجد", "خسر", "تعب", "نام"],
                correctAnswer: "وجد",
                explanation: "يحث على العمل بجد ونشاط لتحقيق الأهداف والنجاح."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “لولا اختلاف الأذواق لبارت ___”",
                options: ["السلع", "البيوت", "الحياة", "الناس"],
                correctAnswer: "السلع",
                explanation: "يدل على أن اختلاف أذواق الناس هو سبب رواج التجارة وتنوع السلع."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “اطلبوا العلم من المهد إلى ___”",
                options: ["اللحد", "المدرسة", "العمل", "البيت"],
                correctAnswer: "اللحد",
                explanation: "يحث على استمرار طلب المعرفة والتعلم طوال حياة الإنسان."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “ربّ أخٍ لك لم تلده ___”",
                options: ["أمك", "أختك", "زوجتك", "ابنتك"],
                correctAnswer: "أمك",
                explanation: "يُقال للتعبير عن عمق الصداقة والمحبة لشخص كأنه شقيق فعلي."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “الجار قبل ___”",
                options: ["الدار", "المال", "العمل", "الصديق"],
                correctAnswer: "الدار",
                explanation: "يحث على اختيار الجار الصالح والاهتمام به قبل شراء أو بناء المنزل."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “مصائب قوم عند قوم ___”",
                options: ["فوائد", "خسائر", "أفراح", "أحزان"],
                correctAnswer: "فوائد",
                explanation: "يعني أن المشاكل التي تصيب البعض قد تعود بالنفع والفائدة على آخرين."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “لا تؤجل عمل اليوم إلى ___”",
                options: ["الغد", "المساء", "الأسبوع المقبل", "الشهر المقبل"],
                correctAnswer: "الغد",
                explanation: "ينصح بعدم المماطلة وتأجيل الواجبات والمهام اليومية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “الطيور على أشكالها ___”",
                options: ["تقع", "تطير", "تغرد", "تبني عشها"],
                correctAnswer: "تقع",
                explanation: "يعني أن الأشخاص المتشابهين في الطباع والأخلاق يميلون للتوافق والاجتماع."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “خير الكلام ما قلّ و___”",
                options: ["دلّ", "طال", "زاد", "أفاد"],
                correctAnswer: "دلّ",
                explanation: "يدل على فضل البلاغة والإيجاز في الكلام والابتعاد عن التكرار."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “العقل السليم في الجسم ___”",
                options: ["السليم", "القوي", "الجميل", "النشيط"],
                correctAnswer: "السليم",
                explanation: "يشير إلى العلاقة بين الحفاظ على الصحة البدنية ونشاط العقل وسلامة التفكير."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “اتقِ شر من أحسنت ___”",
                options: ["إليه", "عليه", "معه", "به"],
                correctAnswer: "إليه",
                explanation: "يُضرب للتحذير من إمكانية مواجهة نكران الجميل أو الإساءة من بعض من ساعدتهم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “حبل الكذب ___”",
                options: ["قصير", "طويل", "سميك", "ضعيف"],
                correctAnswer: "قصير",
                explanation: "يعني أن الكذب ينكشف بسرعة ولا يمكن الاستمرار فيه طويلاً."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “رضا الناس غاية لا ___”",
                options: ["تدرك", "تنفع", "تضر", "تسهل"],
                correctAnswer: "تدرك",
                explanation: "يعني أنه من المستحيل نيل إعجاب وموافقة كل الناس مهما فعلت."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “فاقد الشيء لا ___”",
                options: ["يعطيه", "يملكه", "يبحث عنه", "يجده"],
                correctAnswer: "يعطيه",
                explanation: "يشير إلى أن من لا يمتلك قيمة أو خصلة معينة لا يمكنه منحها لغيره."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “يد واحدة لا ___”",
                options: ["تصّفق", "تعمل", "تكتب", "تساعد"],
                correctAnswer: "تصّفق",
                explanation: "يحث على التعاون والتكاتف الجماعي لإنجاز الأعمال بنجاح."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "أكمل المثل الشعبي التالي: “الصديق وقت ___”",
                options: ["الضيق", "الفرح", "العمل", "اللعب"],
                correctAnswer: "الضيق",
                explanation: "يدل على أن الصديق الحقيقي هو من يقف بجانبك ويساندك في الشدائد."
            )
        ]
    )

    // MARK: - Exercise 36: Compound Words
    private static let compoundWords = Exercise(
        id: UUID(),
        title: "الكلمات المركبة",
        instructions: "اختر الكلمة المركبة الصحيحة الناتجة عن دمج الكلمتين.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: كرة + قدم = ___",
                options: ["كرة السلة", "كرة القدم", "كرة اليد", "كرة الطائرة"],
                correctAnswer: "كرة القدم",
                explanation: "الرياضة الشعبية التي تُلعب بالرجلين هي كرة القدم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: قوس + قزح = ___",
                options: ["قوس قزح", "قوس النصر", "قوس الرماية", "قوس السماء"],
                correctAnswer: "قوس قزح",
                explanation: "الألوان التي تظهر في السماء بعد المطر تسمى قوس قزح."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: رئيس + وزراء = ___",
                options: ["رئيس الوزراء", "رئيس الدولة", "رئيس البرلمان", "رئيس البلدية"],
                correctAnswer: "رئيس الوزراء",
                explanation: "الشخص الذي يرأس مجلس الوزراء يسمى رئيس الوزراء."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: بيت + عنكبوت = ___",
                options: ["بيت النمل", "بيت عنكبوت", "خلية النحل", "عش العصفور"],
                correctAnswer: "بيت عنكبوت",
                explanation: "النسيج الرقيق الذي تبنيه العنكبوت يسمى بيت عنكبوت."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: وجبة + سريعة = ___",
                options: ["وجبة سريعة", "وجبة خفيفة", "وجبة دسمة", "وجبة منزلية"],
                correctAnswer: "وجبة سريعة",
                explanation: "الأطعمة التي تحضر بسرعة في المطاعم تسمى وجبة سريعة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: سكة + حديد = ___",
                options: ["سكة حديد", "شارع عام", "طريق بري", "طريق جوي"],
                correctAnswer: "سكة حديد",
                explanation: "المسار الحديدي الذي تسير عليه القطارات يسمى سكة حديد."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: طاقة + شمسية = ___",
                options: ["طاقة شمسية", "طاقة الرياح", "طاقة كهربائية", "طاقة نووية"],
                correctAnswer: "طاقة شمسية",
                explanation: "الطاقة المستمدة من أشعة الشمس تسمى طاقة شمسية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: رجل + فضاء = ___",
                options: ["رجل فضاء", "طيار", "مهندس", "طبيب"],
                correctAnswer: "رجل فضاء",
                explanation: "الشخص الذي يسافر إلى الفضاء الخارجي يسمى رجل فضاء."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: جهاز + تحكم = ___",
                options: ["جهاز تحكم", "تلفاز", "هاتف", "حاسوب"],
                correctAnswer: "جهاز تحكم",
                explanation: "الآلة الصغيرة المستخدمة لتغيير القنوات عن بعد تسمى جهاز تحكم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: بطاقة + هوية = ___",
                options: ["بطاقة هوية", "بطاقة بنكية", "رخصة قيادة", "جواز سفر"],
                correctAnswer: "بطاقة هوية",
                explanation: "الوثيقة الرسمية التي تثبت شخصية الفرد تسمى بطاقة هوية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: حزام + أمان = ___",
                options: ["حزام أمان", "حزام جلدي", "حقيبة يد", "سترة واقية"],
                correctAnswer: "حزام أمان",
                explanation: "الحزام المستخدم في السيارة لحماية الركاب يسمى حزام أمان."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: طبيب + أسنان = ___",
                options: ["طبيب أسنان", "طبيب عيون", "طبيب أطفال", "جراح"],
                correctAnswer: "طبيب أسنان",
                explanation: "المختص بعلاج المشاكل المتعلقة بالأسنان واللثة يسمى طبيب أسنان."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: محطة + وقود = ___",
                options: ["محطة وقود", "موقف سيارات", "ورشة تصليح", "مغسلة سيارات"],
                correctAnswer: "محطة وقود",
                explanation: "المكان الذي تُعبأ منه السيارات بالبنزين يسمى محطة وقود."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: لوحة + مفاتيح = ___",
                options: ["لوحة مفاتيح", "شاشة عرض", "فأرة حاسوب", "سماعة"],
                correctAnswer: "لوحة مفاتيح",
                explanation: "الجهاز المستخدم للكتابة على الحاسوب يسمى لوحة مفاتيح."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: بيت + مال = ___",
                options: ["بيت المال", "البنك", "المحكمة", "المكتبة"],
                correctAnswer: "بيت المال",
                explanation: "المصطلح التاريخي للمؤسسة المالية وخزينة الدولة هو بيت المال."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: علم + آثار = ___",
                options: ["علم الآثار", "علم الفلك", "علم الجغرافيا", "التاريخ"],
                correctAnswer: "علم الآثار",
                explanation: "العلم الذي يدرس بقايا الحضارات القديمة يسمى علم الآثار."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: مياه + جوفية = ___",
                options: ["مياه جوفية", "مياه البحر", "مياه الأمطار", "شلال"],
                correctAnswer: "مياه جوفية",
                explanation: "المياه المخزنة في باطن الأرض تسمى مياه جوفية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: شبكة + عنكبوتية = ___",
                options: ["الشبكة العنكبوتية", "الاتصالات", "الحاسوب", "التلفاز"],
                correctAnswer: "الشبكة العنكبوتية",
                explanation: "المصطلح العربي لشبكة الإنترنت هو الشبكة العنكبوتية."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: جدول + أعمال = ___",
                options: ["جدول أعمال", "قائمة طعام", "برنامج تلفزيوني", "تقرير مالي"],
                correctAnswer: "جدول أعمال",
                explanation: "المواضيع والمهام المحددة لمناقشتها في اجتماع تسمى جدول أعمال."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "كون كلمة مركبة: سلك + شائك = ___",
                options: ["سلك شائك", "سلك كهربائي", "حبل متين", "شبكة صيد"],
                correctAnswer: "سلك شائك",
                explanation: "الأسلاك المعدنية المزودة بقطع مدببة لحماية الحدود تسمى سلك شائك."
            )
        ]
    )

    // MARK: - Exercise 37: Prefix and Suffix
    private static let prefixAndSuffix = Exercise(
        id: UUID(),
        title: "اشتقاق الكلمات والأوزان",
        instructions: "اختر الوزن الصرفي أو المشتق الصحيح للكلمة المذكورة.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الآلة من الفعل “فتح”؟",
                options: ["مفتاح", "فاتح", "مفتوح", "مفتحة"],
                correctAnswer: "مفتاح",
                explanation: "الآلة المستخدمة لفتح الأبواب هي مفتاح."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “درس”؟",
                options: ["مدرسة", "دارس", "مدروس", "دراسة"],
                correctAnswer: "مدرسة",
                explanation: "المكان الذي يُدرس فيه الطلاب هو مدرسة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “كتب”؟",
                options: ["مكتب", "كاتب", "مكتوب", "كتاب"],
                correctAnswer: "مكتب",
                explanation: "المكان الذي يُكتب عليه أو يمارس فيه العمل هو مكتب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الآلة من الفعل “غسل”؟",
                options: ["غسالة", "مغسل", "مغسول", "غسيل"],
                correctAnswer: "غسالة",
                explanation: "الآلة الكهربائية المستخدمة لغسيل الملابس هي غسالة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الآلة من الفعل “سير”؟",
                options: ["سيارة", "سائر", "مسار", "سيرة"],
                correctAnswer: "سيارة",
                explanation: "الوسيلة البرية الشائعة للتنقل هي سيارة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الآلة من الفعل “طير”؟",
                options: ["طيارة", "طيار", "مطار", "طيران"],
                correctAnswer: "طيارة",
                explanation: "الوسيلة الجوية الشائعة للسفر هي طيارة."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الآلة من الفعل “حرث”؟",
                options: ["محراث", "حارث", "محروث", "حراثة"],
                correctAnswer: "محراث",
                explanation: "الآلة المستخدمة لقلب وحرث التربة هي محراث."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “طبخ”؟",
                options: ["مطبخ", "طباخ", "مطبوخ", "طبخة"],
                correctAnswer: "مطبخ",
                explanation: "المكان المخصص لإعداد وطهي الطعام هو مطبخ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “خبز”؟",
                options: ["مخبز", "خَبَّاز", "مخبوز", "خبز"],
                correctAnswer: "مخبز",
                explanation: "المكان المخصص لصنع الخبز والمعجنات هو مخبز."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “سكن”؟",
                options: ["مسكن", "ساكن", "مستقر", "سكن"],
                correctAnswer: "مسكن",
                explanation: "المكان المخصص للعيش والإقامة هو مسكن."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “لعب”؟",
                options: ["ملعب", "لاعب", "لعبة", "ملعوب"],
                correctAnswer: "ملعب",
                explanation: "المكان المخصص لممارسة الرياضة واللعب هو ملعب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المكان من الفعل “صنع”؟",
                options: ["مصنع", "صانع", "مصنوع", "صناعة"],
                correctAnswer: "مصنع",
                explanation: "المنشأة المخصصة لإنتاج وصنع السلع هي مصنع."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الآلة من الفعل “نظر”؟",
                options: ["منظار", "ناظر", "منظور", "نظارة"],
                correctAnswer: "منظار",
                explanation: "الآلة المستخدمة لتقريب وتوضيح الرؤية هي منظار."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الفاعل من الفعل “كتب” على وزن “فَاعِل”؟",
                options: ["كاتب", "مكتوب", "مكتب", "كتابة"],
                correctAnswer: "كاتب",
                explanation: "الشخص الذي يقوم بالكتابة هو كاتب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المفعول من الفعل “كتب” على وزن “مَفْعُول”؟",
                options: ["مكتوب", "كاتب", "مكتب", "كتابة"],
                correctAnswer: "مكتوب",
                explanation: "الشيء الذي وقعت عليه الكتابة هو مكتوب."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الفاعل من الفعل “علم” على وزن “فَاعِل”؟",
                options: ["عالم", "معلوم", "تعليم", "مدرسة"],
                correctAnswer: "عالم",
                explanation: "الشخص الذي يتصف بكثرة العلم والمعرفة هو عالم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المفعول من الفعل “علم” على وزن “مَفْعُول”؟",
                options: ["معلوم", "عالم", "علامة", "علم"],
                correctAnswer: "معلوم",
                explanation: "الشيء المعروف والمؤكد يسمى معلوم."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق المفعول من الفعل “صنع” على وزن “مَفْعُول”؟",
                options: ["مصنوع", "صانع", "مصنع", "صناعة"],
                correctAnswer: "مصنوع",
                explanation: "المنتج الذي تم إعداده وصنعه يسمى مصنوع."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الفاعل من الفعل “صنع” على وزن “فَاعِل”؟",
                options: ["صانع", "مصنوع", "مصنع", "صناعة"],
                correctAnswer: "صانع",
                explanation: "الشخص الذي يقوم بالإنتاج وصنع السلع هو صانع."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ما اسم مشتق الفاعل من الفعل “زرع” على وزن “فَاعِل”؟",
                options: ["زارع", "مزرعة", "مزروع", "زراعة"],
                correctAnswer: "زارع",
                explanation: "الشخص الذي يقوم بزراعة الأرض والنباتات هو زارع."
            )
        ]
    )

}
