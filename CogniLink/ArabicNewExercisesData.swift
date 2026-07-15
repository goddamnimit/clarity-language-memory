import Foundation

/// Holds the 14 new Arabic exercises translated and adapted from EnglishNewExercisesData.swift.
struct ArabicNewExercisesData {

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

    // MARK: - Exercise 1: Rhyming Pairs (الكلمات المتناغمة)
    private static let exercise1 = Exercise(
        title: "الكلمات المتناغمة",
        instructions: "اختر الكلمة التي تتناغم (لها نفس القافية) مع الكلمة المعطاة.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “كتاب”؟", options: ["شمس", "باب", "شجرة", "كلب"], correctAnswer: "باب", explanation: "كتاب وباب يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “قمر”؟", options: ["سماء", "ثمر", "بحر", "ليل"], correctAnswer: "ثمر", explanation: "قمر وثمر يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “جميل”؟", options: ["طويل", "ورد", "شجر", "كبير"], correctAnswer: "طويل", explanation: "جميل وطويل يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “سعيد”؟", options: ["حزين", "جديد", "بعيد", "قريب"], correctAnswer: "جديد", explanation: "سعيد وجديد يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “نور”؟", options: ["سرور", "ظلام", "شمس", "يوم"], correctAnswer: "سرور", explanation: "نور وسرور يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “سماء”؟", options: ["ماء", "أرض", "غيمة", "نجم"], correctAnswer: "ماء", explanation: "سماء وماء يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “دار”؟", options: ["بيت", "نار", "شارع", "ساحة"], correctAnswer: "نار", explanation: "دار ونار يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “ورد”؟", options: ["زهر", "برد", "حار", "عشب"], correctAnswer: "برد", explanation: "ورد وبرد يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “عين”؟", options: ["حرف", "دين", "أنف", "رأس"], correctAnswer: "دين", explanation: "عين ودين يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “كلام”؟", options: ["صوت", "سلام", "صمت", "قول"], correctAnswer: "سلام", explanation: "كلام وسلام يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “بحر”؟", options: ["نهر", "سحر", "ماء", "رمل"], correctAnswer: "سحر", explanation: "بحر وسحر يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “حمار”؟", options: ["حصان", "قطار", "طائر", "كلب"], correctAnswer: "قطار", explanation: "حمار وقطار يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “طير”؟", options: ["خير", "عش", "ريش", "جناح"], correctAnswer: "خير", explanation: "طير وخير يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “سيف”؟", options: ["خنجر", "ضيف", "حرب", "درع"], correctAnswer: "ضيف", explanation: "سيف وضيف يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “مال”؟", options: ["ذهب", "حال", "غني", "فقر"], correctAnswer: "حال", explanation: "مال وحال يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “نجم”؟", options: ["هلال", "حلم", "قمر", "فضاء"], correctAnswer: "حلم", explanation: "نجم وحلم يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “صديق”؟", options: ["رفيق", "طريق", "عدو", "حب"], correctAnswer: "طريق", explanation: "صديق وطريق يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “رأس”؟", options: ["فأس", "شعر", "عقل", "وجه"], correctAnswer: "فأس", explanation: "رأس وفأس يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “عيد”؟", options: ["فرح", "سعيد", "يوم", "سنة"], correctAnswer: "سعيد", explanation: "عيد وسعيد يشتركان في نفس الصوت النهائي."),
            ExerciseItem(prompt: "أي كلمة تتناغم مع كلمة “صوم”؟", options: ["نوم", "فطور", "رمضان", "عبادة"], correctAnswer: "نوم", explanation: "صوم ونوم يشتركان في نفس الصوت النهائي.")
        ]
    )

    // MARK: - Exercise 2: Word Association (ارتباط الكلمات)
    private static let exercise2 = Exercise(
        title: "ارتباط الكلمات",
        instructions: "اختر الكلمة الأكثر ارتباطاً بالكلمة المعطاة.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "طبيب", options: ["مستشفى", "مطار", "مكتبة", "مزرعة"], correctAnswer: "مستشفى", explanation: "الأطباء يعملون في المستشفيات لرعاية المرضى."),
            ExerciseItem(prompt: "خبز", options: ["زبدة", "مطرقة", "صابون", "قلم رصاص"], correctAnswer: "زبدة", explanation: "الزبدة تُدهن عادة على الخبز."),
            ExerciseItem(prompt: "مطبخ", options: ["موقد", "سرير", "مستحم", "سيارة"], correctAnswer: "موقد", explanation: "الموقد هو الجهاز الأساسي في المطبخ."),
            ExerciseItem(prompt: "مكتبة", options: ["كتب", "ملابس", "أدوات", "خضروات"], correctAnswer: "كتب", explanation: "المكتبات تخزن وتعير الكتب."),
            ExerciseItem(prompt: "حذاء", options: ["جورب", "قبعة", "قفاز", "حزام"], correctAnswer: "جورب", explanation: "الجوارب تُلبس داخل الأحذية."),
            ExerciseItem(prompt: "رائد فضاء", options: ["الفضاء", "المحيط", "الغابة", "الصحراء"], correctAnswer: "الفضاء", explanation: "رواد الفضاء يسافرون إلى الفضاء الخارجي."),
            ExerciseItem(prompt: "معلم", options: ["مدرسة", "مصنع", "مسرح", "صالة ألعاب"], correctAnswer: "مدرسة", explanation: "المعلمون يدرسون الطلاب في المدارس."),
            ExerciseItem(prompt: "محيط", options: ["سمك", "طائر", "بقرة", "عنكبوت"], correctAnswer: "سمك", explanation: "الأسماك تعيش في المحيط."),
            ExerciseItem(prompt: "سيارة", options: ["إطار", "جناح", "سرج", "شراع"], correctAnswer: "إطار", explanation: "الإطارات هي أجزاء أساسية في السيارات."),
            ExerciseItem(prompt: "مطر", options: ["مظلة", "نظارات شمسية", "قفازات", "وشاح"], correctAnswer: "مظلة", explanation: "المظلة تحميك من المطر."),
            ExerciseItem(prompt: "نار", options: ["دخان", "جليد", "ورقة شجر", "عملة معدنية"], correctAnswer: "دخان", explanation: "النار تنتج الدخان."),
            ExerciseItem(prompt: "طبيب أسنان", options: ["أسنان", "شعر", "عيون", "أقدام"], correctAnswer: "أسنان", explanation: "أطباء الأسنان متخصصون في صحة الفم والأسنان."),
            ExerciseItem(prompt: "قهوة", options: ["كوب", "وعاء", "طبق", "شوكة"], correctAnswer: "كوب", explanation: "القهوة تقدم عادة في كوب."),
            ExerciseItem(prompt: "حديقة", options: ["زهور", "حواسيب", "مواقد", "معاطف"], correctAnswer: "زهور", explanation: "الزهور تنمو في الحديقة."),
            ExerciseItem(prompt: "مفتاح", options: ["قفل", "نافذة", "سقف", "أرضية"], correctAnswer: "قفل", explanation: "المفاتيح تستخدم لفتح الأقفال."),
            ExerciseItem(prompt: "مكتب بريد", options: ["رسالة", "خبز", "دواء", "تذكرة"], correctAnswer: "رسالة", explanation: "الرسائل تُرسل من مكتب البريد."),
            ExerciseItem(prompt: "بيانو", options: ["موسيقى", "رسم", "طين", "خشب"], correctAnswer: "موسيقى", explanation: "البيانو آلة تستخدم لعزف الموسيقى."),
            ExerciseItem(prompt: "نحلة", options: ["عسل", "حليب", "صوف", "حرير"], correctAnswer: "عسل", explanation: "النحل ينتج العسل."),
            ExerciseItem(prompt: "عنكبوت", options: ["شبكة", "عش", "خلية", "عرين"], correctAnswer: "شبكة", explanation: "العناكب تبني شبكات."),
            ExerciseItem(prompt: "فلاح", options: ["جرار", "طائرة", "غواصة", "قطار"], correctAnswer: "جرار", explanation: "الفلاحون يستخدمون الجرارات للعمل في الأرض.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying (إكمال الأمثال الشعبية)
    private static let exercise3 = Exercise(
        title: "إكمال الأمثال الشعبية",
        instructions: "أكمل المثل أو الحكمة الشعبية المعروفة.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "الوقت كالسيف إن لم تقطعه ___.", options: ["قطعك", "نفعك", "فاتك", "تركك"], correctAnswer: "قطعك", explanation: "الحكمة المعروفة هي: الوقت كالسيف إن لم تقطعه قطعك، للدلالة على أهمية استغلال الوقت."),
            ExerciseItem(prompt: "عصفور في اليد خير من عشرة على ___.", options: ["الشجرة", "الأرض", "البيت", "السماء"], correctAnswer: "الشجرة", explanation: "يدل المثل على الرضا بالقليل المضمون بدلاً من الكثير غير المضمون."),
            ExerciseItem(prompt: "الصبر مفتاح ___.", options: ["الفرج", "النجاح", "الجنة", "البيت"], correctAnswer: "الفرج", explanation: "الصبر مفتاح الفرج هو تعبير يحث على الصبر في الأوقات الصعبة."),
            ExerciseItem(prompt: "من جدّ ___.", options: ["وجد", "خسر", "تعب", "نام"], correctAnswer: "وجد", explanation: "المثل الشهير: من جدّ وجد ومن زرع حصد."),
            ExerciseItem(prompt: "العلم في الصغر كالنقش على ___.", options: ["الحجر", "الرمل", "الماء", "الخشب"], correctAnswer: "الحجر", explanation: "يدل على ثبات العلم والمعلومات التي يتم تعلمها في الصغر."),
            ExerciseItem(prompt: "مصائب قوم عند قوم ___.", options: ["فوائد", "أحزان", "أفراح", "خسائر"], correctAnswer: "فوائد", explanation: "يعني أن مصيبة شخص قد تكون منفعة لشخص آخر."),
            ExerciseItem(prompt: "لا تؤجل عمل اليوم إلى ___.", options: ["الغد", "الليل", "الأسبوع المقبل", "المساء"], correctAnswer: "الغد", explanation: "نصيحة معروفة تدعو إلى عدم التسويف وإنجاز الأعمال أولاً بأول."),
            ExerciseItem(prompt: "من حفر حفرة لأخيه وقع ___.", options: ["فيها", "جنبها", "خارجها", "فوقها"], correctAnswer: "فيها", explanation: "يعني أن من يتآمر على الآخرين يقع في شر أعماله."),
            ExerciseItem(prompt: "في التأني السلامة وفي العجلة ___.", options: ["الندامة", "الخسارة", "الفوز", "الصحة"], correctAnswer: "الندامة", explanation: "يدعو المثل إلى الهدوء وعدم الاستعجال لتجنب الأخطاء والمشاكل."),
            ExerciseItem(prompt: "لسانك حصانك إن صنته ___.", options: ["صانك", "خانك", "أهانك", "باعك"], correctAnswer: "صانك", explanation: "يدل على أهمية حفظ اللسان وتجنب كثرة الكلام السيء."),
            ExerciseItem(prompt: "حبل الكذب ___.", options: ["قصير", "طويل", "سميك", "مقطوع"], correctAnswer: "قصير", explanation: "يعني أن الكذب ينكشف بسرعة دائماً مهما طال الوقت."),
            ExerciseItem(prompt: "اطلبوا العلم ولو في ___.", options: ["الصين", "الهند", "البيت", "المدرسة"], correctAnswer: "الصين", explanation: "قول مأثور يحث على السعي لطلب العلم مهما كانت المسافة بعيدة."),
            ExerciseItem(prompt: "جنت على نفسها ___.", options: ["براقش", "حليمة", "ليلى", "سعاد"], correctAnswer: "براقش", explanation: "مأخوذ من قصة كلبة تسببت في أذية نفسها وأهلها بسبب نباحها."),
            ExerciseItem(prompt: "العين بصيرة واليد ___.", options: ["قصيرة", "طويلة", "مغلولة", "بيضاء"], correctAnswer: "قصيرة", explanation: "مثل يدل على الرغبة في المساعدة أو الفعل مع قلة الحيلة أو ضعف الإمكانيات المادية."),
            ExerciseItem(prompt: "الطيور على أشكالها ___.", options: ["تقع", "تطير", "تغرد", "تموت"], correctAnswer: "تقع", explanation: "يعني أن الأشخاص ذوي الطباع المتشابهة ينجذبون لبعضهم البعض."),
            ExerciseItem(prompt: "رُبّ أخٍ لك لم تلده ___.", options: ["أمك", "أختك", "زوجتك", "ابنتك"], correctAnswer: "أمك", explanation: "يدل على الصديق الوفي الذي يقف معك كأخ حقيقي."),
            ExerciseItem(prompt: "من تدخل فيما لا يعنيه لقي ما لا ___.", options: ["يرضيه", "يحبه", "يفهمه", "يسره"], correctAnswer: "يرضيه", explanation: "حكمة تدعو لعدم التدخل في شؤون الآخرين الخاصة لتجنب المشاكل."),
            ExerciseItem(prompt: "التجارب خير ___.", options: ["معلم", "صديق", "كتاب", "طريق"], correctAnswer: "معلم", explanation: "الخبرة المكتسبة من التجارب هي أفضل ما يعلم الإنسان في حياته."),
            ExerciseItem(prompt: "رضا الناس غاية لا ___.", options: ["تدرك", "تنتهي", "تطلب", "تباع"], correctAnswer: "تدرك", explanation: "يعني أنه من المستحيل إرضاء جميع البشر مهما فعلت."),
            ExerciseItem(prompt: "لكل جواد ___.", options: ["كبوة", "فارس", "سرج", "لجام"], correctAnswer: "كبوة", explanation: "يعني أن الشخص الماهر أو الناجح قد يتعرض للفشل أو الخطأ أحياناً.")
        ]
    )

    // MARK: - Exercise 4: Compound Words (التركيبات اللفظية)
    private static let exercise4 = Exercise(
        title: "التركيبات اللفظية",
        instructions: "اختر الكلمة المناسبة لتكوين مصطلح مركب مفيد.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "كرة + ___", options: ["القدم", "الماء", "الهواء", "العشب"], correctAnswer: "القدم", explanation: "كرة + القدم = كرة القدم (الرياضة الشعبية)."),
            ExerciseItem(prompt: "رائد + ___", options: ["فضاء", "بحر", "طائرة", "جيش"], correctAnswer: "فضاء", explanation: "رائد + فضاء = رائد فضاء."),
            ExerciseItem(prompt: "قوس + ___", options: ["قزح", "سماء", "نصر", "رماية"], correctAnswer: "قزح", explanation: "قوس + قزح = قوس قزح (الألوان التي تظهر في السماء بعد المطر)."),
            ExerciseItem(prompt: "دار + ___", options: ["نشر", "كتب", "رسم", "تلفاز"], correctAnswer: "نشر", explanation: "دار + نشر = دار نشر (المؤسسة التي تطبع الكتب)."),
            ExerciseItem(prompt: "بيت + ___", options: ["العنكبوت", "النحل", "الأسد", "النمل"], correctAnswer: "العنكبوت", explanation: "بيت + العنكبوت = بيت العنكبوت (أوهن البيوت)."),
            ExerciseItem(prompt: "محطة + ___", options: ["القطار", "السفينة", "الشارع", "السكة"], correctAnswer: "القطار", explanation: "محطة + القطار = محطة القطار."),
            ExerciseItem(prompt: "فرشاة + ___", options: ["أسنان", "شعر", "ثياب", "أرضية"], correctAnswer: "أسنان", explanation: "فرشاة + أسنان = فرشاة أسنان."),
            ExerciseItem(prompt: "نظارة + ___", options: ["شمسية", "طبية", "سوداء", "بصرية"], correctAnswer: "شمسية", explanation: "نظارة + شمسية = نظارة شمسية."),
            ExerciseItem(prompt: "جهاز + ___", options: ["تحكم", "اتصال", "تلفاز", "راديو"], correctAnswer: "تحكم", explanation: "جهاز + تحكم = جهاز تحكم (الريموت)."),
            ExerciseItem(prompt: "كوب + ___", options: ["قهوة", "ماء", "حليب", "عصير"], correctAnswer: "قهوة", explanation: "كوب + قهوة = كوب قهوة."),
            ExerciseItem(prompt: "شلال + ___", options: ["ماء", "نهر", "بحر", "مطر"], correctAnswer: "ماء", explanation: "شلال + ماء = شلال ماء."),
            ExerciseItem(prompt: "رجل + ___", options: ["ثلج", "خشب", "حديد", "طين"], correctAnswer: "ثلج", explanation: "رجل + ثلج = رجل ثلج (الدمية المصنوعة من الثلج)."),
            ExerciseItem(prompt: "إشارة + ___", options: ["مرور", "طريق", "سيارة", "شرطي"], correctAnswer: "مرور", explanation: "إشارة + مرور = إشارة مرور."),
            ExerciseItem(prompt: "بطاقة + ___", options: ["ائتمان", "هوية", "سفر", "دخول"], correctAnswer: "ائتمان", explanation: "بطاقة + ائتمان = بطاقة ائتمان (الفيزا)."),
            ExerciseItem(prompt: "حديقة + ___", options: ["حيوان", "زهور", "عامة", "ألعاب"], correctAnswer: "حيوان", explanation: "حديقة + حيوان = حديقة حيوان."),
            ExerciseItem(prompt: "خدمة + ___", options: ["عملاء", "هاتف", "سفر", "مطبخ"], correctAnswer: "عملاء", explanation: "خدمة + عملاء = خدمة عملاء."),
            ExerciseItem(prompt: "حزام + ___", options: ["أمان", "بنطال", "جلد", "حقيبة"], correctAnswer: "أمان", explanation: "حزام + أمان = حزام أمان (في السيارة أو الطائرة)."),
            ExerciseItem(prompt: "بطارية + ___", options: ["سيارة", "هاتف", "ساعة", "مصباح"], correctAnswer: "سيارة", explanation: "بطارية + سيارة = بطارية سيارة."),
            ExerciseItem(prompt: "صندوق + ___", options: ["بريد", "ألعاب", "خشب", "حديد"], correctAnswer: "بريد", explanation: "صندوق + بريد = صندوق بريد."),
            ExerciseItem(prompt: "كيس + ___", options: ["شاي", "سكر", "دقيق", "ملح"], correctAnswer: "شاي", explanation: "كيس + شاي = كيس شاي.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix (السوابق واللواحق)
    private static let exercise5 = Exercise(
        title: "السوابق واللواحق",
        instructions: "اختر السابقة أو اللاحقة الصحيحة بناءً على معناها اللغوي.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ما هي السابقة التي تدل على طلب الشيء في كلمة “استغفر”؟", options: ["استـ", "تـ", "مـ", "يـ"], correctAnswer: "استـ", explanation: "السابقة “استـ” في الأفعال تدل غالباً على الطلب والسعي (مثل استغفر: طلب المغفرة)."),
            ExerciseItem(prompt: "ما هي اللاحقة التي تدل على جمع المذكر السالم في كلمة “معلمون”؟", options: ["ـون", "ـات", "ـان", "ـين"], correctAnswer: "ـون", explanation: "اللاحقة “ـون” تستخدم لجمع المذكر السالم في حالة الرفع."),
            ExerciseItem(prompt: "ما هي اللاحقة التي تحول الكلمة إلى صفة نسبية في كلمة “وطني”؟", options: ["ـي", "ـية", "ـة", "ـات"], correctAnswer: "ـي", explanation: "ياء النسب “ـي” تضاف إلى أواخر الأسماء للنسبة إليها."),
            ExerciseItem(prompt: "السابقة التي تدل على المستقبل القريب في كلمة “سيذهب” هي:", options: ["سـ", "سوف", "لـ", "بـ"], correctAnswer: "سـ", explanation: "السين “سـ” تدخل على الفعل المضارع لتدل على المستقبل القريب."),
            ExerciseItem(prompt: "السابقة التي تعني النفي في كلمة “لافقاري” هي:", options: ["لا", "غير", "ليس", "ما"], correctAnswer: "لا", explanation: "النافية للجنس “لا” هنا تدخل لتدل على خلو الكائن من العمود الفقري."),
            ExerciseItem(prompt: "اللاحقة التي تدل على جمع المؤنث السالم في كلمة “طالبات” هي:", options: ["ـات", "ـون", "ـين", "ـان"], correctAnswer: "ـات", explanation: "اللاحقة “ـات” تستخدم لجمع المؤنث السالم."),
            ExerciseItem(prompt: "ما هي السابقة في اسم المفعول “مفتوح” التي تحوله من الفعل؟", options: ["مـ", "تـ", "أ", "نـ"], correctAnswer: "مـ", explanation: "الميم المفتوحة “مـ” في بداية الوزن “مفعول” تحول الفعل الثلاثي إلى اسم مفعول."),
            ExerciseItem(prompt: "اللاحقة التي تدل على ياء المتكلم (الملكية) في كلمة “كتابي” هي:", options: ["ـي", "ـنا", "ـه", "ـك"], correctAnswer: "ـي", explanation: "ياء المتكلم “ـي” تدل على ملكية الشيء للمتكلم."),
            ExerciseItem(prompt: "اللاحقة التي تدل على المصدر الصناعي في كلمة “حرية” هي:", options: ["ـية", "ـة", "ـات", "ـون"], correctAnswer: "ـية", explanation: "اللاحقة “ـية” (الياء المشددة والتاء المربوطة) تصيغ المصدر الصناعي من الأسماء."),
            ExerciseItem(prompt: "السابقة التي تدل على الاستفهام في كلمة “أكتبتَ؟” هي:", options: ["أ", "هل", "ما", "من"], correctAnswer: "أ", explanation: "همزة الاستفهام “أ” تدخل في بداية الجملة لطلب الفهم والاستعلام."),
            ExerciseItem(prompt: "السابقة التي تفيد التشبيه في كلمة “كالأسد” هي:", options: ["كـ", "بـ", "لـ", "فـ"], correctAnswer: "كـ", explanation: "حرف الكاف “كـ” من حروف الجر التي تفيد التشبيه."),
            ExerciseItem(prompt: "السابقة التي تفيد القسم في كلمة “والله” هي:", options: ["و", "ب", "ت", "أ"], correctAnswer: "و", explanation: "واو القسم “و” تدخل على المقسم به وتجر الاسم بعدها."),
            ExerciseItem(prompt: "اللاحقة التي تدل على نون النسوة في فعل “كتبنَ” هي:", options: ["ـن", "ـنا", "ـت", "ـوا"], correctAnswer: "ـن", explanation: "نون النسوة “ـن” تتصل بالأفعال للدلالة على جماعة الإناث."),
            ExerciseItem(prompt: "السابقة التي تدل على تاء المضارعة للمخاطب في كلمة “تكتب” هي:", options: ["تـ", "يـ", "أ", "نـ"], correctAnswer: "تـ", explanation: "التاء “تـ” في بداية الفعل المضارع تدل على المخاطب أو الغائبة المؤنثة."),
            ExerciseItem(prompt: "اللاحقة التي تدل على تاء الفاعل المتحركة في كلمة “كتبتُ” هي:", options: ["ـتُ", "ـتَ", "ـتِ", "ـت"], correctAnswer: "ـتُ", explanation: "تاء الفاعل المضمومة “ـتُ” تدل على المتكلم في الفعل الماضي."),
            ExerciseItem(prompt: "السابقة التي تفيد التعليل أو السببية في كلمة “لأدرس” هي:", options: ["لـ", "فـ", "بـ", "كـ"], correctAnswer: "لـ", explanation: "لام التعليل “لـ” تدخل لتوضيح سبب الفعل الذي قبلها."),
            ExerciseItem(prompt: "السابقة التي تفيد الترتيب والتعقيب السريع في كلمة “فدخل” هي:", options: ["فـ", "ثم", "و", "أو"], correctAnswer: "فـ", explanation: "حرف العطف الفاء “فـ” يفيد الترتيب مع التعقيب المباشر بدون تراخٍ."),
            ExerciseItem(prompt: "اللاحقة التي تدل على المثنى المذكر في كلمة “كتابان” هي:", options: ["ـان", "ـين", "ـون", "ـات"], correctAnswer: "ـان", explanation: "اللاحقة “ـان” (الألف والنون) تدل على التثنية في حالة الرفع للأسماء."),
            ExerciseItem(prompt: "اللاحقة التي تدل على كاف الخطاب للمذكر في كلمة “كتابكَ” هي:", options: ["ـكَ", "ـكِ", "ـكما", "ـكم"], correctAnswer: "ـكَ", explanation: "كاف الخطاب المفتوحة “ـكَ” تستخدم لمخاطبة المفرد المذكر."),
            ExerciseItem(prompt: "السابقة التي تفيد الاستقبال البعيد في عبارة “سوف أدرس” هي:", options: ["سوف", "سـ", "قد", "لن"], correctAnswer: "سوف", explanation: "الكلمة “سوف” تفيد تسويف الفعل وتدل على المستقبل البعيد مقارنة بالسين.")
        ]
    )

    // MARK: - Exercise 6: Story Recall (تذكر القصة)
    private static let exercise6 = Exercise(
        title: "تذكر القصة",
        instructions: "اقرأ القصة القصيرة التالية ثم أجب عن السؤال عنها.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ماذا تركت ماريا في المنزل؟", options: ["محفظتها", "مفاتيحها", "قائمة التسوق", "هاتفها"], correctAnswer: "محفظتها", explanation: "تذكر القصة أنها نسيت محفظتها على طاولة المطبخ.", passage: "ذهبت ماريا إلى البقالة لشراء الحليب والخبز. ونسيت محفظتها على طاولة المطبخ."),
            ExerciseItem(prompt: "ما نوع السمكة التي اصطادها توماس؟", options: ["سمكة تونة", "سمكة سالمون", "سمكة هامور", "سمكة قرش"], correctAnswer: "سمكة تونة", explanation: "تذكر القصة أنه اصطاد سمكة تونة كبيرة.", passage: "استيقظ توماس باكراً يوم السبت للذهاب للصيد. اصطاد سمكة تونة كبيرة لكنه اضطر لإعادتها للماء لأنها كانت صغيرة جداً."),
            ExerciseItem(prompt: "ما لون سيارة آرثر؟", options: ["أزرق", "أصفر", "أحمر", "أخضر"], correctAnswer: "أزرق", explanation: "تذكر القصة أن آرثر أوقف سيارته الزرقاء.", passage: "أوقف آرثر سيارته الزرقاء تحت شجرة بلوط ظليلة. وعندما عاد، رأى أن السيارة مغطاة بأوراق شجر صفراء."),
            ExerciseItem(prompt: "كم شمعة وضعت ليندا على الكعكة؟", options: ["عشرة", "خمسة", "ثمانية", "اثنتا عشرة"], correctAnswer: "عشرة", explanation: "تذكر القصة أنها وضعت عشر شموع حمراء على الكعكة.", passage: "خبزت ليندا كعكة شوكولاتة لحفلة عيد ميلاد ابنتها. وضعت عشر شموع حمراء على الكعكة."),
            ExerciseItem(prompt: "أين يعيش شقيق روبرت؟", options: ["شيكاغو", "نيويورك", "بوسطن", "ميامي"], correctAnswer: "شيكاغو", explanation: "تذكر القصة أنه أرسل طرداً لأخيه في شيكاغو.", passage: "ذهب روبرت إلى مكتب البريد لإرسال طرد لأخيه في شيكاغو. وأخبره الموظف أنه سيصل يوم الثلاثاء."),
            ExerciseItem(prompt: "ما لون حذاء الجري الجديد لسارة؟", options: ["أخضر فاتح", "أزرق", "أحمر", "أسود"], correctAnswer: "أخضر فاتح", explanation: "تذكر القصة أن لون الحذاء أخضر فاتح مع خطوط بيضاء.", passage: "اشترت سارة زوجاً جديداً من أحذية الجري بالأمس. لونها أخضر فاتح مع خطوط بيضاء."),
            ExerciseItem(prompt: "ما لون المظلة التي استخدمها جيمس؟", options: ["أصفر", "أحمر", "أزرق", "أسود"], correctAnswer: "أصفر", explanation: "تذكر القصة أنه فتح مظلته الصفراء.", passage: "كان جيمس يمشي في الحديقة عندما بدأت تمطر. فتح مظلته الصفراء ليظل جافاً."),
            ExerciseItem(prompt: "في أي يوم كان المخبز مغلقاً؟", options: ["الاثنين", "الثلاثاء", "الأربعاء", "الأحد"], correctAnswer: "الاثنين", explanation: "تذكر القصة أن المخبز كان مغلقاً يوم الاثنين.", passage: "كان المخبز المحلي مغلقاً يوم الاثنين لإجراء بعض الإصلاحات. وخططوا لإعادة الفتح صباح الثلاثاء في الساعة السادسة."),
            ExerciseItem(prompt: "لماذا اتصلت آنا بسباك؟", options: ["حوض المطبخ يسرب الماء", "الموقد كان معطلاً", "الضوء كان مطفأً", "الباب كان مغلقاً"], correctAnswer: "حوض المطبخ يسرب الماء", explanation: "تذكر القصة أنها اتصلت بسباك لأن حوض المطبخ كان يسرب الماء.", passage: "اتصلت آنا بسباك لأن حوض المطبخ كان يسرب الماء. وصل السباك خلال ساعة وأصلح الأنبوب."),
            ExerciseItem(prompt: "ما اسم كلب ديفيد؟", options: ["مكس", "بودي", "تشارلي", "روكي"], correctAnswer: "مكس", explanation: "تذكر القصة أن اسم كلب ديفيد هو مكس.", passage: "أخذ ديفيد كلبه مكس في نزهة حول الحي. رأى مكس سنجاباً ونبح عليه بصوت عالٍ."),
            ExerciseItem(prompt: "ما هو المكون الذي نفد من هيلين؟", options: ["الجزر", "البطاطس", "البصل", "الكرفس"], correctAnswer: "الجزر", explanation: "تذكر القصة أنها أدركت أن الجزر قد نفد منها.", passage: "كانت هيلين تحضر حساء الخضار لتناول العشاء. وأدركت أن الجزر قد نفد منها، فاستخدمت البطاطس بدلاً منه."),
            ExerciseItem(prompt: "كم كلف غداء بيتر؟", options: ["خمسة عشر دولاراً", "عشرة دولارات", "عشرون دولاراً", "اثنا عشر دولاراً"], correctAnswer: "خمسة عشر دولاراً", explanation: "تذكر القصة أن التكلفة الإجمالية كانت خمسة عشر دولاراً.", passage: "طلب بيتر بيتزا ببروني وزجاجة صودا لتناول الغداء. وكان التكلفة الإجمالية خمسة عشر دولاراً."),
            ExerciseItem(prompt: "ما هو موضوع الكتاب الذي استعارته أليس؟", options: ["البستنة", "التاريخ", "الطبخ", "السفر"], correctAnswer: "البستنة", explanation: "تذكر القصة أنها استعارت كتاباً عن البستنة.", passage: "ذهبت أليس إلى المكتبة لاستعارة كتاب عن البستنة. واستعارت أيضاً قرص DVD عن التاريخ."),
            ExerciseItem(prompt: "لماذا تأخر القطار؟", options: ["صيانة السكك الحديدية", "عاصفة قوية", "انقطاع الكهرباء", "نقص الموظفين"], correctAnswer: "صيانة السكك الحديدية", explanation: "تذكر القصة أن القطار تأخر بسبب صيانة السكك الحديدية.", passage: "استقل جورج قطار الصباح إلى المدينة لإجراء مقابلة عمل. وتأخر قطاره لمدة خمس عشرة دقيقة بسبب صيانة السكك الحديدية."),
            ExerciseItem(prompt: "ما هي الزهرة التي اشترتها نانسي في النهاية؟", options: ["القرنفل الوردي", "الورد الأحمر", "الزنابق الصفراء", "الزنابق البيضاء"], correctAnswer: "القرنفل الوردي", explanation: "تذكر القصة أنها اشترت زهور القرنفل الوردي في النهاية.", passage: "ذهبت نانسي إلى مركز الحدائق لشراء زهور الورد الأحمر. كانت قد نفدت، فاشترت زهور القرنفل الوردي بدلاً من ذلك.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences (المتتاليات الرقمية)
    private static let exercise7 = Exercise(
        title: "المتتاليات الرقمية",
        instructions: "ما الرقم الذي يأتي بعد ذلك في المتتالية؟",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2، 4، 6، 8، ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "المتتالية تزداد بإضافة 2 في كل مرة."),
            ExerciseItem(prompt: "5، 10، 15، 20، ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "المتتالية تزداد بإضافة 5 في كل مرة."),
            ExerciseItem(prompt: "10، 20، 30، 40، ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "المتتالية تزداد بإضافة 10 في كل مرة."),
            ExerciseItem(prompt: "3، 6، 9، 12، ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "المتتالية تزداد بإضافة 3 في كل مرة."),
            ExerciseItem(prompt: "9، 8، 7، 6، ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "المتتالية تنقص بطرح 1 في كل مرة."),
            ExerciseItem(prompt: "20، 18، 16، 14، ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "المتتالية تنقص بطرح 2 في كل مرة."),
            ExerciseItem(prompt: "1، 3، 5، 7، ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "متتالية الأعداد الفردية تزداد بإضافة 2 في كل مرة."),
            ExerciseItem(prompt: "4، 8، 12، 16، ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "المتتالية تزداد بإضافة 4 في كل مرة."),
            ExerciseItem(prompt: "50، 45، 40، 35، ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "المتتالية تنقص بطرح 5 في كل مرة."),
            ExerciseItem(prompt: "100، 90، 80، 70، ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "المتتالية تنقص بطرح 10 في كل مرة."),
            ExerciseItem(prompt: "11، 22، 33، 44، ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "المتتالية تزداد بإضافة 11 في كل مرة."),
            ExerciseItem(prompt: "8، 10، 12، 14، ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "المتتالية تزداد بإضافة 2 في كل مرة."),
            ExerciseItem(prompt: "12، 15، 18، 21، ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "المتتالية تزداد بإضافة 3 في كل مرة."),
            ExerciseItem(prompt: "30، 27، 24، 21، ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "المتتالية تنقص بطرح 3 في كل مرة."),
            ExerciseItem(prompt: "7، 14، 21، 28، ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "المتتالية تزداد بإضافة 7 في كل مرة."),
            ExerciseItem(prompt: "40، 36، 32، 28، ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "المتتالية تنقص بطرح 4 في كل مرة."),
            ExerciseItem(prompt: "6، 12، 18، 24، ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "المتتالية تزداد بإضافة 6 في كل مرة."),
            ExerciseItem(prompt: "15، 20، 25، 30، ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "المتتالية تزداد بإضافة 5 في كل مرة."),
            ExerciseItem(prompt: "90، 80، 70، 60، ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "المتتالية تنقص بطرح 10 في كل مرة."),
            ExerciseItem(prompt: "13، 15، 17، 19، ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "المتتالية تزداد بإضافة 2 في كل مرة.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect (السبب والنتيجة)
    private static let exercise8 = Exercise(
        title: "السبب والنتيجة",
        instructions: "اختر النتيجة الأكثر احتمالاً للموقف الموصوف.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "تركت الآيس كريم على طاولة المطبخ لمدة ساعتين في يوم دافئ. ماذا يحدث؟", options: ["يصبح أكثر صلابة", "يذوب", "يتغير لونه", "يختفي"], correctAnswer: "يذوب", explanation: "الحرارة تؤدي إلى ذوبان الآيس كريم المجمد."),
            ExerciseItem(prompt: "نسيت أن تسقي نبتتك المنزلية لمدة ثلاثة أسابيع. ما هي النتيجة الأكثر احتمالاً؟", options: ["تنمو لها زهور", "تبقى خضراء", "تذبل وتجف", "تتحول للون الأزرق"], correctAnswer: "تذبل وتجف", explanation: "النباتات تحتاج للماء لتعيش؛ بدونها تذبل وتموت."),
            ExerciseItem(prompt: "سحابة عاصفة داكنة تحجب الشمس ويرعد البرق. ما الذي يحتمل حدوثه بعد ذلك؟", options: ["سوف تمطر", "ستصبح أكثر سخونة", "سوف يتساقط الثلج فوراً", "ستظهر النجوم"], correctAnswer: "سوف تمطر", explanation: "السحب الداكنة والرعد من مؤشرات قرب هطول المطر."),
            ExerciseItem(prompt: "أسقطت وعاءً زجاجياً على أرضية من بلاط صلب. ما هي النتيجة الأكثر احتمالاً؟", options: ["يرتد للأعلى", "يتغير لونه", "ينكسر إلى قطع", "يتحول إلى ماء"], correctAnswer: "ينكسر إلى قطع", explanation: "الزجاج هش وينكسر عند سقوطه على أسطح صلبة."),
            ExerciseItem(prompt: "وضعت شريحة خبز في المحمصة وتركتها على أعلى درجة حرارة. ماذا يحدث؟", options: ["تصبح رطبة ولينة", "تحترق وتتحول للأسود", "تبقى ناعمة وبيضاء", "تختفي"], correctAnswer: "تحترق وتتحول للأسود", explanation: "الحرارة الزائدة في المحمصة تحرق الخبز."),
            ExerciseItem(prompt: "تركت مصابيح السيارة الأمامية مضاءة طوال الليل. ماذا سيحدث في الصباح؟", options: ["ستسير السيارة أسرع", "ستفرغ البطارية تماماً", "ستتغير ألوان السيارة", "سيعمل المحرك فوراً"], correctAnswer: "ستفرغ البطارية تماماً", explanation: "ترك المصابيح مضاءة يستنزف طاقة البطارية ويفرغها."),
            ExerciseItem(prompt: "تساقطت عاصفة ثلجية شديدة طوال الليل، وتراكم الثلج بارتفاع 15 سم. ماذا يحدث للطرق؟", options: ["تبقى جافة", "تصبح زلقة ومغطاة بالثلوج", "تتحول للون الأخضر", "تتبخر"], correctAnswer: "تصبح زلقة ومغطاة بالثلوج", explanation: "تراكم الثلوج يجعل القيادة على الطرق خطرة وزلقة."),
            ExerciseItem(prompt: "وضعت صينية مليئة بالماء في الفريزر. ماذا يحدث بعد بضع ساعات؟", options: ["يغلي الماء", "يتحول الماء إلى ثلج", "يتبخر الماء", "يتغير لون الماء"], correctAnswer: "يتحول الماء إلى ثلج", explanation: "درجات الحرارة المتجمدة تحول الماء السائل إلى ثلج صلب."),
            ExerciseItem(prompt: "ارتديت جوارب صوفية سميكة وحذاء ثقيلاً في يوم صيفي حار. ماذا يحدث لقدميك؟", options: ["تشعران بالبرد", "تبقيان جافتين", "تصبحان حارتين وتعرقان", "تتحولان للون الأزرق"], correctAnswer: "تصبحان حارتين وتعرقان", explanation: "الملابس السميكة تحتفظ بالحرارة وتؤدي للتعرق في الطقس الحار."),
            ExerciseItem(prompt: "لم ينم شخص لمدة 24 ساعة متواصلة. كيف سيشعر على الأرجح؟", options: ["نشيط جداً", "متعب وينعس", "جائع", "سعيد للغاية"], correctAnswer: "متعب وينعس", explanation: "قلة النوم تؤدي إلى الشعور بالتعب والإرهاق الشديدين."),
            ExerciseItem(prompt: "أضفت السكر إلى كوب من الشاي الساخن وحركته. ماذا يحدث للسكر؟", options: ["يتحول إلى ثلج", "يختفي من الكوب", "يذوب في الشاي", "يحترق"], correctAnswer: "يذوب في الشاي", explanation: "تحريك السكر في سائل ساخن يجعله يذوب فيه."),
            ExerciseItem(prompt: "خرجت تحت مطر غزير دون مظلة أو معطف واقٍ من المطر. ما النتيجة؟", options: ["تبقى جافاً", "تتبلل ملابسك تماماً", "تتحول للون الأزرق", "تشعر بالدفء"], correctAnswer: "تتبلل ملابسك تماماً", explanation: "مياه المطر تسقط عليك مباشرة وتبلل ملابسك بالكامل."),
            ExerciseItem(prompt: "تنفخ الهواء في بالون حتى يصبح ممتلئاً أكثر من اللازم. ماذا يحدث؟", options: ["يطير إلى القمر", "ينفجر", "يتحول إلى طائر", "ينكمش"], correctAnswer: "ينفجر", explanation: "زيادة ضغط الهواء عن حد البالون يؤدي إلى انفجاره."),
            ExerciseItem(prompt: "أطفأت جميع الأنوار في غرفة بدون نوافذ ليلاً. ماذا يحدث؟", options: ["تصبح الغرفة أكثر إشراقاً", "تصبح الغرفة مظلمة تماماً", "تتحول الغرفة للون الأخضر", "تمتلئ الغرفة بالضوء"], correctAnswer: "تصبح الغرفة مظلمة تماماً", explanation: "انعدام مصدر الضوء ينتج عنه ظلمة تامة."),
            ExerciseItem(prompt: "لم تدرس ولم تستعد لامتحان صعب. ما هي النتيجة الأكثر احتمالاً؟", options: ["تحصل على درجة كاملة", "يكون أداؤك سيئاً", "تنسى اسمك", "يلغى الامتحان"], correctAnswer: "يكون أداؤك سيئاً", explanation: "عدم الاستعداد يجعل النجاح في الاختبارات الصعبة أمراً مستبعداً.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This? (ما هو هذا الشعور؟)
    private static let exercise9 = Exercise(
        title: "ما هو هذا الشعور؟",
        instructions: "اقرأ الموقف واختر المشاعر التي يشعر بها الشخص على الأرجح.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "عرفت سارة للتو أنها فازت بالمركز الأول في مسابقة. كيف تشعر؟", options: ["حزينة", "غاضبة", "سعيدة", "خائفة"], correctAnswer: "سعيدة", explanation: "الفوز بالمسابقات يجلب البهجة والسرور."),
            ExerciseItem(prompt: "سمع ديفيد ضوضاء غريبة وعالية في الطابق السفلي في منتصف الليل. كيف يشعر؟", options: ["سعيد", "خائف", "ملول", "متحمس"], correctAnswer: "خائف", explanation: "الأصوات غير المتوقعة في الظلام تثير الخوف والقلق."),
            ExerciseItem(prompt: "صديقة ماري المقربة تنتقل للعيش في ولاية أخرى بعيدة. كيف تشعر ماري؟", options: ["حزينة", "غاضبة", "متحمسة", "حسودة"], correctAnswer: "حزينة", explanation: "وداع الأصدقاء المقربين يسبب الحزن والأسى."),
            ExerciseItem(prompt: "تخطى شخص ما جون في طابور طويل في المتجر. كيف يشعر جون؟", options: ["سعيد", "خائف", "متضايق", "محرج"], correctAnswer: "متضايق", explanation: "التصرفات غير المهذبة من الآخرين تسبب الضيق والغضب."),
            ExerciseItem(prompt: "إيميلي على وشك إلقاء خطاب أمام جمهور كبير جداً. كيف تشعر؟", options: ["متوترة", "ملولة", "حزينة", "غاضبة"], correctAnswer: "متوترة", explanation: "التحدث أمام الجمهور غالباً ما يثير التوتر والقلق."),
            ExerciseItem(prompt: "أُلغيت رحلة روبرت الجوية، مما أخر إجازته لمدة يومين. كيف يشعر؟", options: ["محبَط", "سعيد", "خائف", "فخور"], correctAnswer: "محبَط", explanation: "إلغاء الرحلات وتعطيل الخطط يؤدي للشعور بالإحباط والضيق."),
            ExerciseItem(prompt: "تخرج ابن ليزا من الجامعة بمرتبة الشرف الأولى. كيف تشعر ليزا؟", options: ["فخورة", "حسودة", "حزينة", "خائفة"], correctAnswer: "فخورة", explanation: "رؤية أفراد العائلة ينجحون تجعل الشخص فخوراً بهم."),
            ExerciseItem(prompt: "يشرح الموظف استمارة معقدة للمرة الرابعة، لكن آرثر ما زال لا يفهم. كيف يشعر آرثر؟", options: ["مشوش", "سعيد", "متحمس", "فخور"], correctAnswer: "مشوش", explanation: "عدم القدرة على استيعاب المعلومات يسبب التشوش والحيرة."),
            ExerciseItem(prompt: "ينتظر جيمس في غرفة انتظار هادئة منذ أكثر من ساعتين دون أي شيء يقرأه. كيف يشعر؟", options: ["ملول", "خائف", "غاضب", "سعيد"], correctAnswer: "ملول", explanation: "الانتظار الطويل دون وجود ما يشغل الذهن يسبب الملل."),
            ExerciseItem(prompt: "أقامت عائلة إلين حفلة مفاجئة لعيد ميلادها ودعوا جميع صديقاتها. كيف تشعر؟", options: ["متفاجئة", "غاضبة", "حزينة", "خائفة"], correctAnswer: "متفاجئة", explanation: "الاحتفالات غير المتوقعة تثير مشاعر المفاجأة والفرح."),
            ExerciseItem(prompt: "ركض كلب ضال ونبح بعدوانية على كارين أثناء سيرها. كيف تشعر؟", options: ["مرعوبة", "سعيدة", "ملولة", "فخورة"], correctAnswer: "مرعوبة", explanation: "الحيوانات العدوانية تثير مشاعر الخوف والذعر."),
            ExerciseItem(prompt: "فقد ويليام خاتم زفافه أثناء العمل في الحديقة. كيف يشعر؟", options: ["مستاء", "متحمس", "ملول", "هادئ"], correctAnswer: "مستاء", explanation: "فقدان الأشياء ذات القيمة العاطفية يسبب الاستياء والحزن."),
            ExerciseItem(prompt: "تلقّت باتريشيا بطاقة جميلة وزهوراً من أحفادها. كيف تشعر؟", options: ["محبوبة", "غاضبة", "خائفة", "مشوشة"], correctAnswer: "محبوبة", explanation: "اللفتات الطيبة من أفراد الأسرة تجعل الشخص يشعر بالحب والتقدير."),
            ExerciseItem(prompt: "نفد الخبز المعين الذي يريده ريتشارد من البقالة، فاضطر لشراء علامة تجارية أخرى. كيف يشعر؟", options: ["بخيبة أمل طفيفة", "مرعوب", "غاضب بشدة", "مبتهج"], correctAnswer: "بخيبة أمل طفيفة", explanation: "عدم الحصول على الخيار المفضل بدقة يسبب خيبة أمل بسيطة."),
            ExerciseItem(prompt: "قضى تشارلز كل بعد الظهر في بناء رف كتب، وخرج بشكل مثالي. كيف يشعر؟", options: ["راضٍ", "حزين", "خائف", "ملول"], correctAnswer: "راضٍ", explanation: "إتمام المهام بنجاح يولد شعوراً بالرضا والإنجاز."),
            ExerciseItem(prompt: "أسقطت ليندا بالخطأ صينية مشروبات في مطعم هادئ. كيف تشعر؟", options: ["محرجة", "سعيدة", "غاضبة", "ملولة"], correctAnswer: "محرجة", explanation: "لفت انتباه الآخرين لخطأ ارتكبته يسبب الحرج الشديد."),
            ExerciseItem(prompt: "يذهب توماس في رحلته الأولى إلى هاواي غداً صباحاً. كيف يشعر؟", options: ["متحمس", "حزين", "غاضب", "ملول"], correctAnswer: "متحمس", explanation: "توقع قضاء عطلة ممتعة يثير الحماس والتشوق."),
            ExerciseItem(prompt: "عاد قط سوزان المفقود إلى المنزل سالماً بعد اختفائه لثلاثة أيام. كيف تشعر؟", options: ["بارتياح", "غاضبة", "خائفة", "مشوشة"], correctAnswer: "بارتياح", explanation: "الحل الإيجابي لموقف مقلق يجلب شعوراً كبيراً بالارتياح والهدوء."),
            ExerciseItem(prompt: "يستمر اتصال الإنترنت في الانقطاع كل خمس دقائق بينما يحاول جورج العمل. كيف يشعر؟", options: ["مستثار وغاضب", "خائف", "سعيد", "ملول"], correctAnswer: "مستثار وغاضب", explanation: "الانقطاعات المتكررة أثناء العمل تسبب الاستثارة والضيق."),
            ExerciseItem(prompt: "أخذت هيلين حماماً دافئاً طويلاً بعد يوم حافل بالضغوط. كيف تشعر؟", options: ["مسترخية", "غاضبة", "خائفة", "متوترة"], correctAnswer: "مسترخية", explanation: "الحمام الدافئ والراحة يساعدان على الاسترخاء والهدوء النفسي.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here? (ما هو الخطأ هنا؟)
    private static let exercise10 = Exercise(
        title: "ما هو الخطأ هنا؟",
        instructions: "اختر ما هو خاطئ أو مستحيل في الجملة المعطاة.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "تناول جون وجبة الإفطار في منتصف الليل قبل الذهاب للنوم.", options: ["الناس لا يأكلون الطعام", "الإفطار وجبة صباحية وليست في منتصف الليل", "لا ينبغي لجون أن ينام", "منتصف الليل في فترة بعد الظهر"], correctAnswer: "الإفطار وجبة صباحية وليست في منتصف الليل", explanation: "وجبة الإفطار هي بالتعريف الوجبة الصباحية التي تكسر صيام الليل."),
            ExerciseItem(prompt: "نبح الكلب على موزع البريد ثم طار فوق السطح ليمسك بطائر.", options: ["الكلاب لا تنبح", "الكلاب لا تستطيع الطيران", "موزعو البريد لا يوزعون البريد", "الطيور لا تطير"], correctAnswer: "الكلاب لا تستطيع الطيران", explanation: "الكلاب ليس لها أجنحة وهي غير قادرة على الطيران."),
            ExerciseItem(prompt: "ارتدت سارة معطفها الشتوي الدافئ وقفازاتها لتذهب للسباحة في المسبح الخارجي خلال شهر يوليو.", options: ["الناس لا يسبحون في يوليو", "لا يرتدي أحد معطف شتاء وقفازات للسباحة", "المسابح الخارجية غير موجودة", "المعاطف تُرتدى في الصيف"], correctAnswer: "لا يرتدي أحد معطف شتاء وقفازات للسباحة", explanation: "السباحة تتطلب ملابس سباحة مخصصة، والملابس الشتوية تعيق الحركة في الماء."),
            ExerciseItem(prompt: "دقت الساعة على الجدار ثلاثة عشرة دقة، فعلم آرثر أن وقت قهوته الصباحية قد حان.", options: ["الساعات لا توضع على الجدران", "الساعات القياسية لا تعرض سوى اثنتي عشرة ساعة فقط", "القهوة ليست مشروباً صباحياً", "آرثر لا يشرب القهوة"], correctAnswer: "الساعات القياسية لا تعرض سوى اثنتي عشرة ساعة فقط", explanation: "الساعات التقليدية ذات العقارب تعرض اثنتي عشرة ساعة فقط."),
            ExerciseItem(prompt: "ركب بول دراجته عابراً البحيرة العميقة ليزور صديقه.", options: ["الدراجات لا تسير فوق الماء", "البحيرات لا تحتوي على أسماك", "الأصدقاء لا يزورون بعضهم", "الدراجات ليس لها دواسات"], correctAnswer: "الدراجات لا تسير فوق الماء", explanation: "الدراجات مركبات برية وتغرق في المياه العميقة."),
            ExerciseItem(prompt: "غلت ليندا بعض مكعبات الثلج في وعاء لصنع ماء شرب بارد.", options: ["مكعبات الثلج غير موجودة", "غلي مكعبات الثلج يجعلها ماءً حاراً وليس بارداً", "الأوعية لا تتسع للثلج", "ماء الشرب غير صحي"], correctAnswer: "غلي مكعبات الثلج يجعلها ماءً حاراً وليس بارداً", explanation: "عملية الغليان تسخن السوائل وتجعلها حارة وليست باردة."),
            ExerciseItem(prompt: "تسلق السمكة الشجرة للهرب من القطة الجائعة.", options: ["الأسماك لا تتسلق الأشجار", "القطط لا تأكل الأسماك", "الأشجار لا تنبت أوراقاً", "الأسماك تعيش في الأشجار"], correctAnswer: "الأسماك لا تتسلق الأشجار", explanation: "الأسماك كائنات مائية وليس لها أطراف تمكنها من تسلق الأشجار."),
            ExerciseItem(prompt: "استخدم روبرت شوكة لتناول حساء الدجاج بالنودلز.", options: ["الشوكة لا تستطيع حمل الحساء السائل", "الحساء لا يصنع من الدجاج", "كان يجب على روبرت استخدام سكين", "الحساء لا يؤكل بأدوات"], correctAnswer: "الشوكة لا تستطيع حمل الحساء السائل", explanation: "الشوكة تحتوي على فتحات ينسكب السائل منها، والحساء يتطلب ملعقة."),
            ExerciseItem(prompt: "بما أن السماء كانت تمطر بغزارة، علقت نانسي ملابسها المبللة على حبل الغسيل الخارجي لتجف.", options: ["المطر لا يبلل الأشياء", "الملابس لن تجف في الخارج تحت المطر", "حبال الغسيل تستخدم بالداخل فقط", "نانسي لا ترتدي الملابس"], correctAnswer: "الملابس لن تجف في الخارج تحت المطر", explanation: "المطر يبقي الملابس رطبة ومبللة، مما يمنع جفافها."),
            ExerciseItem(prompt: "هبطت الطائرة بسلام في المطار، ونزل جميع الركاب على قضبان القطار.", options: ["الطائرات لا تهبط في المطارات", "الركاب لا يسافرون بالطائرات", "بوابات المطار لا تحتوي على قضبان قطار", "القطارات لا تسير على القضبان"], correctAnswer: "بوابات المطار لا تحتوي على قضبان قطار", explanation: "الطائرات تهبط في المدارج المخصصة وتتوقف عند البوابات وليس على السكك الحديدية."),
            ExerciseItem(prompt: "شغلت هيلين مكيف الهواء لجعل غرفة المعيشة أكثر دفئاً.", options: ["مكيفات الهواء تبرد الغرف ولا تدفئها", "غرف المعيشة ليس لها جدران", "هيلين لا تملك منزلاً", "مكيفات الهواء لا تستخدم الكهرباء"], correctAnswer: "مكيفات الهواء تبرد الغرف ولا تدفئها", explanation: "مكيفات الهواء التقليدية مصممة لتبريد الغرف وخفض حرارتها وليس لتدفئتها."),
            ExerciseItem(prompt: "طارد الأرنب الذئب الرمادي الكبير في الغابة وأخافه.", options: ["الأرانب لا تعيش في الغابات", "الذئاب لا تركض", "الأرانب لا تطارد الذئاب بل تهرب منها", "الذئاب ليست رمادية"], correctAnswer: "الأرانب لا تطارد الذئاب بل تهرب منها", explanation: "الذئاب كائنات مفترسة والأرانب فرائس؛ الطبيعي أن يهرب الأرنب من الذئب."),
            ExerciseItem(prompt: "اشترى جيمس زوجاً من الأحذية الجلدية ليديه لتبقيا دافئتين في الشتاء.", options: ["الأحذية تُرتدى في القدمين وليس اليدين", "الجلد لا يستخدم لصنع الأحذية", "الأيدي لا تبرد", "الشتاء ليس بارداً"], correctAnswer: "الأحذية تُرتدى في القدمين وليس اليدين", explanation: "القفازات هي التي توضع في اليدين للتدفئة، أما الأحذية فهي للأقدام."),
            ExerciseItem(prompt: "أشرقت الشمس في منتصف الليل، لتضيء سماء الصباح.", options: ["تشرق الشمس في الصباح وليس في منتصف الليل", "منتصف الليل في فترة بعد الظهر", "الشمس ليست مضيئة", "الصباح مظلم"], correctAnswer: "تشرق الشمس في الصباح وليس في منتصف الليل", explanation: "منتصف الليل هو وقت الليل المظلم وتكون الشمس فيه في الجهة الأخرى من الأرض."),
            ExerciseItem(prompt: "شغلت أليس التلفاز لتستمع إلى محطتها الإذاعية المفضلة.", options: ["التلفاز يعرض الفيديو وليس محطة راديو", "الراديو لا يشغل الموسيقى", "أليس تكره الموسيقى", "التلفاز لا يحتوي على مكبرات صوت"], correctAnswer: "التلفاز يعرض الفيديو وليس محطة راديو", explanation: "التلفاز جهاز عرض مرئي وبث القنوات التلفزيونية، أما المحطات الإذاعية فتسمع عبر الراديو.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription (قراءة الوصفة الطبية)
    private static let exercise11 = Exercise(
        title: "قراءة الوصفة الطبية",
        instructions: "اقرأ معلومات الوصفة الطبية وأجب عن السؤال المعطى.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "الملصق: تناول قرصاً واحداً مرتين يومياً مع الطعام. كم قرصاً يجب أن تتناول في المجموع كل يوم؟", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "تناول قرص واحد مرتين في اليوم يعني قرص + قرص = 2 قرص."),
            ExerciseItem(prompt: "الملصق: تناول قرصين عند النوم. متى يجب عليك تناول هذا الدواء؟", options: ["في الصباح", "مع الغداء", "عند النوم", "قبل التمرين الرياضي"], correctAnswer: "عند النوم", explanation: "يوضح الملصق صراحة وجوب تناوله عند النوم."),
            ExerciseItem(prompt: "الملصق: تناول كبسولة واحدة كل 8 ساعات حسب الحاجة لتخفيف الألم. كم مرة يمكنك تناول هذا الدواء في يوم كامل (24 ساعة)؟", options: ["مرتين", "3 مرات", "4 مرات", "6 مرات"], correctAnswer: "3 مرات", explanation: "اليوم يحتوي على 24 ساعة. 24 مقسومة على 8 تساوي 3 مرات."),
            ExerciseItem(prompt: "الملصق: أموكسيسيلين 250 ملغ. تناول قرصاً واحداً ثلاث مرات يومياً. يحفظ مبرداً. كيف يجب عليك تخزين هذا الدواء؟", options: ["في الفريزر", "في الثلاجة", "في خزانة دافئة", "تحت أشعة الشمس المباشرة"], correctAnswer: "في الثلاجة", explanation: "الملصق ينص على “يحفظ مبرداً” مما يعني حفظه في الثلاجة."),
            ExerciseItem(prompt: "الملصق: لا تشرب الكحول أثناء تناول هذا الدواء. قد يسبب النعاس. ما هو العرض الجانبي المحذر منه لهذا الدواء؟", options: ["النعاس", "زيادة الطاقة", "ارتفاع ضغط الدم", "العطس"], correctAnswer: "النعاس", explanation: "الملصق ينبه بوضوح إلى أنه “قد يسبب النعاس”."),
            ExerciseItem(prompt: "الملصق: تناول قرصاً واحداً يومياً في الصباح على معدة فارغة. متى يجب عليك تناول وجبة الإفطار؟", options: ["قبل تناول القرص", "بعد تناول القرص", "أثناء تناول القرص", "لا تتناول وجبة الإفطار"], correctAnswer: "بعد تناول القرص", explanation: "تناوله على معدة فارغة يعني تناوله قبل تناول الإفطار، وبالتالي الإفطار يكون بعده."),
            ExerciseItem(prompt: "الملصق: تناول قرصاً واحداً عن طريق الفم يومياً. الكمية: 30. عدد مرات إعادة التعبئة المسموحة: 2. كم مرة يسمح بإعادة تعبئة هذا الدواء؟", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "الملصق يوضح أن “عدد مرات إعادة التعبئة: 2”."),
            ExerciseItem(prompt: "الملصق: ضع طبقة رقيقة على منطقة الجلد المصابة مرتين يومياً. لا تبتلع الدواء. كيف يتم استخدام هذا الدواء؟", options: ["عن طريق بلعه", "عن طريق دهنه على الجلد", "عن طريق الرش في الأنف", "عن طريق تذويبه في الماء"], correctAnswer: "عن طريق دهنه على الجلد", explanation: "ينص الملصق على “ضع طبقة رقيقة على منطقة الجلد المصابة”."),
            ExerciseItem(prompt: "الملصق: تخلص من الدواء بعد 15/10/2026. اليوم هو 01/11/2026. هل يمكنك تناول هذا الدواء بأمان؟", options: ["نعم", "لا", "فقط مع الطعام", "فقط في الليل"], correctAnswer: "لا", explanation: "انتهت صلاحية الدواء في 15/10/2026، وهو تاريخ سابق لليوم."),
            ExerciseItem(prompt: "الملصق: تناول قرصاً واحداً مرتين يومياً. لا تتناول الدواء مع منتجات الألبان. أي المشروبات يجب تجنبها عند تناول هذا القرص؟", options: ["الماء", "الحليب", "عصير التفاح", "القهوة السوداء"], correctAnswer: "الحليب", explanation: "الحليب من منتجات الألبان ويجب تجنبه بناءً على التعليمات."),
            ExerciseItem(prompt: "الملصق: تناول قرصين قبل ساعة من الرحلة الجوية. لماذا تتناول هذا الدواء؟", options: ["لمنع دوار الحركة أثناء السفر", "للنوم بشكل أفضل في المنزل", "لعلاج الصداع", "لعلاج طفح جلدي"], correctAnswer: "لمنع دوار الحركة أثناء السفر", explanation: "تناول الدواء قبل الرحلة الجوية يكون عادة لمنع دوار السفر والمواصلات."),
            ExerciseItem(prompt: "الملصق: قطرة عين. ضغ قطرة واحدة في كل عين مرتين يومياً. أين يجب وضع هذا الدواء؟", options: ["في الفم", "في الأذنين", "في العينين", "على الجلد"], correctAnswer: "في العينين", explanation: "الملصق يوضح أنه “قطرة عين” ويوصي بوضعها في العينين."),
            ExerciseItem(prompt: "الملصق: تناول قرصاً واحداً كل 4 إلى 6 ساعات حسب الحاجة لعلاج الصداع. الحد الأقصى 4 أقراص يومياً. ما هو أكثر عدد من الأقراص يمكنك تناولها في يوم واحد؟", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "الملصق يحدد بوضوح “الحد الأقصى 4 أقراص يومياً”."),
            ExerciseItem(prompt: "الملصق: تناوله مع كوب كامل من الماء. لماذا تحتاج إلى الماء مع هذا القرص؟", options: ["لتذويبه على جلدك", "للمساعدة في بلعه وتجنب اضطراب المعدة", "لتغيير لونه", "ليصبح طعمه أفضل"], correctAnswer: "للمساعدة في بلعه وتجنب اضطراب المعدة", explanation: "شرب كوب كامل من الماء يسهل البلع الآمن ويحمي جدار المعدة من التهيج."),
            ExerciseItem(prompt: "الملصق: تناول قرصاً واحداً يومياً مع وجبة المساء. ما هو أفضل وقت لتناول هذا الدواء؟", options: ["عند الإفطار", "عند الغداء", "عند العشاء", "في منتصف الليل"], correctAnswer: "عند العشاء", explanation: "وجبة المساء هي وجبة العشاء.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu (قراءة قائمة الطعام)
    private static let exercise12 = Exercise(
        title: "قراءة قائمة الطعام",
        instructions: "استخدم معلومات قائمة الطعام للإجابة عن السؤال.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "القائمة: تشيز برجر 8.00 دولارات، بطاطس مقلية 3.00 دولارات، صودا 2.00 دولار. كم تبلغ تكلفة التشيز برجر؟", options: ["8.00 دولارات", "3.00 دولارات", "2.00 دولار", "11.00 دولاراً"], correctAnswer: "8.00 دولارات", explanation: "توضح القائمة أن سعر التشيز برجر هو 8.00 دولارات."),
            ExerciseItem(prompt: "القائمة: قهوة 2.50 دولار، شاي 2.00 دولار، مافن 3.00 دولارات. أي الأصناف هو الأرخص؟", options: ["قهوة", "شاي", "مافن", "كلها بنفس السعر"], correctAnswer: "شاي", explanation: "سعر الشاي هو 2.00 دولار وهو الأقل قيمة بين الأصناف."),
            ExerciseItem(prompt: "القائمة: شوربة طماطم 5.00 دولارات، سلطة خضراء 6.00 دولارات، سلطة سيزر بالدجاج 9.00 دولارات. كم سعر وعاء شوربة الطماطم؟", options: ["5.00 دولارات", "6.00 دولارات", "9.00 دولارات", "14.00 دولاراً"], correctAnswer: "5.00 دولارات", explanation: "شوربة الطماطم معروضة بسعر 5.00 دولارات."),
            ExerciseItem(prompt: "القائمة: وجبة إفطار بانكيك 10.00 دولارات، توست فرنسي 9.00 دولارات، جانب من اللحم المقدد 4.00 دولارات. ما هي تكلفة التوست الفرنسي؟", options: ["10.00 دولارات", "9.00 دولارات", "4.00 دولارات", "13.00 دولاراً"], correctAnswer: "9.00 دولارات", explanation: "سعر التوست الفرنسي هو 9.00 دولارات."),
            ExerciseItem(prompt: "القائمة: شريحة بيتزا بالجبن 4.00 دولارات، شريحة بيتزا ببروني 4.50 دولار. كم تزيد تكلفة شريحة الببروني عن شريحة الجبن؟", options: ["0.50 دولار", "1.00 دولار", "4.50 دولار", "8.50 دولارات"], correctAnswer: "0.50 دولار", explanation: "4.50 دولار ناقص 4.00 دولارات يساوي 0.50 دولار."),
            ExerciseItem(prompt: "القائمة: ساندوتش دجاج 7.00 دولارات، سمك وبطاطس 11.00 دولاراً. معك 10.00 دولارات. أي الوجبتين يمكنك شراؤها؟", options: ["ساندوتش دجاج", "سمك وبطاطس", "كلتا الوجبتين", "ولا واحدة منهما"], correctAnswer: "ساندوتش دجاج", explanation: "سعر ساندوتش الدجاج 7.00 دولارات وهو أقل من 10 دولارات، بينما السمك والبطاطس يتجاوز ميزانيتك."),
            ExerciseItem(prompt: "القائمة: وجبة أطفال (تحت 12 سنة) 6.00 دولارات، برجر كبار 12.00 دولاراً. كم تبلغ تكلفة الوجبة لطفل عمره 8 سنوات؟", options: ["6.00 دولارات", "12.00 دولاراً", "8.00 دولارات", "18.00 دولاراً"], correctAnswer: "6.00 دولارات", explanation: "الطفل ذو الـ 8 سنوات تحت سن 12، وبالتالي تنطبق عليه وجبة الأطفال وسعرها 6.00 دولارات."),
            ExerciseItem(prompt: "القائمة: آيس كريم شوكولاتة 4.00 دولارات، فطيرة تفاح 5.00 دولارات، إضافة آيس كريم فانيليا للفطيرة 1.50 دولار. كم سعر فطيرة التفاح مع آيس كريم الفانيليا؟", options: ["5.00 دولارات", "6.50 دولارات", "9.00 دولارات", "4.00 دولارات"], correctAnswer: "6.50 دولارات", explanation: "5.00 دولارات (الفطيرة) + 1.50 دولار (الآيس كريم المضاف) = 6.50 دولارات."),
            ExerciseItem(prompt: "القائمة: لفافة تركي 8.50 دولارات، رقائق بطاطس 1.50 دولار، عصير 2.00 دولار. ما هي التكلفة الإجمالية للفافة التركي والعصير؟", options: ["8.50 دولارات", "10.00 دولارات", "10.50 دولارات", "12.00 دولاراً"], correctAnswer: "10.50 دولارات", explanation: "8.50 دولارات + 2.00 دولار = 10.50 دولارات."),
            ExerciseItem(prompt: "القائمة: عروض الغداء الخاصة (تقدم من 11 صباحاً - 3 مساءً) 9.00 دولارات. قائمة العشاء العادية 15.00 دولاراً. الوقت الآن 1:00 ظهراً. كم سعر وجبة الغداء الخاصة؟", options: ["9.00 دولارات", "15.00 دولاراً", "11.00 دولاراً", "3.00 دولارات"], correctAnswer: "9.00 دولارات", explanation: "الساعة 1:00 ظهراً تقع بين 11 صباحاً و 3 مساءً، لذا ينطبق سعر عرض الغداء الخاص وهو 9.00 دولارات."),
            ExerciseItem(prompt: "القائمة: قهوة 2.00 دولار (إعادة تعبئة مجانية)، شاي ساخن 2.50 دولار. إذا شربت ثلاثة أكواب من القهوة، كم ستدفع في المجموع؟", options: ["2.00 دولار", "6.00 دولارات", "2.50 دولار", "7.50 دولارات"], correctAnswer: "2.00 دولار", explanation: "القهوة تقدم مع إعادة تعبئة مجانية، لذا تدفع فقط سعر الكوب الأول وهو 2.00 دولار."),
            ExerciseItem(prompt: "القائمة: شوربة خضار 4.00 دولارات، يخنة لحم البقر 7.00 دولارات. أي الطبقين يحتوي على لحوم؟", options: ["شوربة خضار", "يخنة لحم البقر", "كلاهما", "لا أحد منهما"], correctAnswer: "يخنة لحم البقر", explanation: "لحم البقر هو نوع من اللحوم، بينما شوربة الخضار خالية منها."),
            ExerciseItem(prompt: "القائمة: تاكو 3.00 دولارات، كيساديا 6.00 دولارات، صودا 2.00 دولار. ما هي تكلفة الكيساديا؟", options: ["3.00 دولارات", "6.00 دولارات", "2.00 دولار", "8.00 دولارات"], correctAnswer: "6.00 دولارات", explanation: "الكيساديا معروضة بسعر 6.00 دولارات."),
            ExerciseItem(prompt: "القائمة: سباغيتي 12.00 دولاراً، لازانيا 14.00 دولاراً، خبز بالثوم 3.00 دولارات. كم سعر خبز الثوم الجانبي؟", options: ["12.00 دولاراً", "14.00 دولاراً", "3.00 دولارات", "15.00 دولاراً"], correctAnswer: "3.00 دولارات", explanation: "سعر خبز الثوم في القائمة هو 3.00 دولارات."),
            ExerciseItem(prompt: "القائمة: بيض بنديكت 11.00 دولاراً، دقيق الشوفان 6.00 دولارات، وعاء فاكهة 5.00 دولارات. أي أطباق الإفطار هو الأغلى؟", options: ["بيض بنديكت", "دقيق الشوفان", "وعاء فاكهة", "جميعها بنفس السعر"], correctAnswer: "بيض بنديكت", explanation: "سعر بيض بنديكت 11.00 دولاراً وهو الأعلى في القائمة.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills (فهم الفواتير)
    private static let exercise13 = Exercise(
        title: "فهم الفواتير",
        instructions: "اقرأ معلومات الفاتورة وأجب عن السؤال.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "فاتورة الكهرباء: المبلغ المستحق: 45.00 دولاراً. تاريخ الاستحقاق: 15 يوليو. ما هو المبلغ الذي يتعين عليك دفعه؟", options: ["15.00 دولاراً", "45.00 دولاراً", "15 يوليو", "مجاني"], correctAnswer: "45.00 دولاراً", explanation: "إجمالي المبلغ المستحق للدفع هو 45.00 دولاراً."),
            ExerciseItem(prompt: "فاتورة المياه: تاريخ الاستحقاق: 10 أكتوبر. رسوم التأخير: 5.00 دولارات. اليوم هو 12 أكتوبر. ماذا يحدث إذا دفعت اليوم؟", options: ["تدفع المبلغ العادي", "تدفع رسوم تأخير بقيمة 5.00 دولارات إضافية", "تحصل على خصم", "لا شيء"], correctAnswer: "تدفع رسوم تأخير بقيمة 5.00 دولارات إضافية", explanation: "بما أن اليوم بعد تاريخ الاستحقاق، يتم تطبيق رسوم التأخير."),
            ExerciseItem(prompt: "فاتورة الإنترنت: الرسوم الشهرية: 60.00 دولاراً. خصم الدفع التلقائي: -5.00 دولارات. ما السعر النهائي مع الدفع التلقائي؟", options: ["60.00 دولاراً", "65.00 دولاراً", "55.00 دولاراً", "5.00 دولارات"], correctAnswer: "55.00 دولاراً", explanation: "60.00 دولاراً مطروحاً منها 5.00 دولارات تساوي 55.00 دولاراً."),
            ExerciseItem(prompt: "فاتورة الغاز: الرسوم الحالية: 30.00 دولاراً. الرصيد غير المدفوع: 10.00 دولارات. الرصيد الإجمالي: 40.00 دولاراً. كم تبلغ قيمة المتأخرات المرحلة من الشهر الماضي؟", options: ["30.00 دولاراً", "10.00 دولارات", "40.00 دولاراً", "0.00 دولار"], correctAnswer: "10.00 دولارات", explanation: "الرصيد غير المدفوع يمثل المبلغ المرحل من الشهر الماضي وهو 10.00 دولارات."),
            ExerciseItem(prompt: "فاتورة الهاتف: تاريخ الاستحقاق: 20 يونيو. التاريخ الحالي: 15 يونيو. كم يوماً متبقياً لديك لدفع هذه الفاتورة في الوقت المحدد؟", options: ["5 أيام", "20 يوماً", "15 يوماً", "يوم واحد"], correctAnswer: "5 أيام", explanation: "20 يونيو ناقص 15 يونيو يساوي 5 أيام متبقية."),
            ExerciseItem(prompt: "فاتورة النفايات: رسوم ربع سنوية (3 أشهر): 36.00 دولاراً. ما التكلفة المعادلة شهرياً؟", options: ["36.00 دولاراً", "12.00 دولاراً", "18.00 دولاراً", "6.00 دولارات"], correctAnswer: "12.00 دولاراً", explanation: "36.00 دولاراً مقسومة على 3 أشهر تساوي 12.00 دولاراً شهرياً."),
            ExerciseItem(prompt: "فاتورة الكابل: إجمالي المستحق: 80.00 دولاراً. الدفع لصالح: “XYZ Cable Co.” لمن يجب كتابة الشيك؟", options: ["80.00 دولاراً", "XYZ Cable Co.", "عامل التركيب", "نقداً"], correctAnswer: "XYZ Cable Co.", explanation: "تحدد الفاتورة كتابة الشيك وإرسال الدفعات لصالح جهة “XYZ Cable Co.”."),
            ExerciseItem(prompt: "فاتورة الخدمات العامة: المياه: 20.00 دولاراً، الغاز: 30.00 دولاراً، الكهرباء: 50.00 دولاراً. المجموع: 100.00 دولار. أي خدمة كلفتك أكثر؟", options: ["المياه", "الغاز", "الكهرباء", "تكلفتها متساوية"], correctAnswer: "الكهرباء", explanation: "تكلفة الكهرباء 50.00 دولاراً وهي الأعلى بين الخدمات المعروضة."),
            ExerciseItem(prompt: "تأمين السيارة: القسط نصف السنوي: 600.00 دولار. كم مرة تدفع هذه الفاتورة؟", options: ["كل شهر", "كل 6 أشهر (مرتين في السنة)", "مرة واحدة في السنة", "كل أسبوع"], correctAnswer: "كل 6 أشهر (مرتين في السنة)", explanation: "نصف سنوي يعني مرتين في السنة، أو كل 6 أشهر."),
            ExerciseItem(prompt: "فاتورة خدمة البث الرقمي: حالة الحساب: معلق. المبلغ المستحق: 15.00 دولاراً. لماذا لا تعمل الخدمة؟", options: ["الإنترنت معطل", "التلفاز مكسور", "تم تعليق الحساب بسبب الرصيد غير المدفوع", "البث في حالة تحميل مؤقت"], correctAnswer: "تم تعليق الحساب بسبب الرصيد غير المدفوع", explanation: "توضح الفاتورة أن حالة الحساب معلقة لعدم سداد المبلغ المستحق."),
            ExerciseItem(prompt: "اشتراك النادي الرياضي: الرسوم السنوية: 120.00 دولاراً. الرسوم الشهرية: 10.00 دولارات. كم تبلغ الرسوم السنوية؟", options: ["10.00 دولارات", "120.00 دولاراً", "130.00 دولاراً", "12.00 دولاراً"], correctAnswer: "120.00 دولاراً", explanation: "الرسوم السنوية للاشتراك تبلغ 120.00 دولاراً."),
            ExerciseItem(prompt: "فاتورة التدفئة: يناير: 110.00 دولارات. يوليو: 20.00 دولاراً. لماذا الفاتورة أعلى بكثير في يناير؟", options: ["الغاز أغلى في الصيف", "يتم استخدام تدفئة أكبر في شهر يناير الشتوي البارد", "المنزل يكون خالياً في يناير", "تغير التوقيت الزمني"], correctAnswer: "يتم استخدام تدفئة أكبر في شهر يناير الشتوي البارد", explanation: "أجواء الشتاء الباردة تتطلب تشغيل أنظمة التدفئة المنزلية بكثافة، مما يرفع استهلاك الطاقة."),
            ExerciseItem(prompt: "فاتورة بطاقة الائتمان: الحد الأدنى للدفع: 25.00 دولاراً. الرصيد الإجمالي: 500.00 دولار. ما هو أقل مبلغ يمكنك دفعه هذا الشهر لتجنب غرامة التأخير؟", options: ["25.00 دولاراً", "500.00 دولار", "0.00 دولار", "475.00 دولاراً"], correctAnswer: "25.00 دولاراً", explanation: "دفع “الحد الأدنى للمبلغ المستحق” البالغ 25.00 دولاراً يجنبك غرامات التأخير في السداد."),
            ExerciseItem(prompt: "فاتورة طبية: الرسوم الإجمالية: 150.00 دولاراً. التغطية التأمينية: 120.00 دولاراً. مسؤولية المريض: 30.00 دولاراً. كم يترتب عليك دفعه؟", options: ["150.00 دولاراً", "120.00 دولاراً", "30.00 دولاراً", "0.00 دولار"], correctAnswer: "30.00 دولاراً", explanation: "مسؤولية المريض هي القيمة المتبقية التي يتوجب عليك سدادها من مالك الخاص وهي 30.00 دولاراً."),
            ExerciseItem(prompt: "اشتراك الصحيفة: تاريخ التجديد التالي: 31 ديسمبر 2026. إذا كنت ترغب في إلغاء الاشتراك قبل التجديد، متى يجب عليك الاتصال؟", options: ["قبل 31 ديسمبر 2026", "بعد 31 ديسمبر 2026", "في يناير 2027", "أبداً"], correctAnswer: "قبل 31 ديسمبر 2026", explanation: "الإلغاء قبل تاريخ التجديد يمنع سحب الرسوم لدورة الاشتراك الجديدة تلقائياً.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do? (كيف تتصرف؟)
    private static let exercise14 = Exercise(
        title: "كيف تتصرف؟",
        instructions: "اختر الاستجابة الفضلى والأكثر أماناً للموقف الموصوف.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "تشتم رائحة دخان في مطبخك ولكنك لا ترى أي نيران. ما الذي يجب عليك فعله أولاً؟", options: ["تجاهل الأمر", "فتح النوافذ وتفقد الموقد", "الاتصال بصديق للدردشة", "العودة إلى النوم"], correctAnswer: "فتح النوافذ وتفقد الموقد", explanation: "تفقد موقد الطهي هو الخطوة الأولى لتحديد وحل مسببات الأدخنة البسيطة والشائعة بأمان."),
            ExerciseItem(prompt: "أنت في البقالة وأدركت أنك نسيت محفظتك في المنزل. ما هو الخيار الأفضل؟", options: ["أخذ المشتريات دون دفع ثمنها", "الطلب من أمين الصندوق الاحتفاظ بعربتك والذهاب للمنزل لإحضار المحفظة", "مغادرة المتجر باكياً", "الجدال مع المدير"], correctAnswer: "الطلب من أمين الصندوق الاحتفاظ بعربتك والذهاب للمنزل لإحضار المحفظة", explanation: "طلب الاحتفاظ بالعربة لحين العودة بالمال هو التصرف المعياري المهذب."),
            ExerciseItem(prompt: "أسقطت بيضة نيئة على أرضية المطبخ وانكسرت. ماذا يجب أن تفعل؟", options: ["تركها هناك حتى الغد", "مسحها فوراً بمنشفة ورقية وصابون", "تغطيتها بسجادة صغيرة", "ترك القطة لتأكلها"], correctAnswer: "مسحها فوراً بمنشفة ورقية وصابون", explanation: "البيض النيئ يسبب الانزلاق ويجذب البكتيريا، لذا يجب تنظيفه سريعاً."),
            ExerciseItem(prompt: "أخبرك صديقك بأن كلبه قد نفق بالأمس. ماذا يجب أن تقول له؟", options: ["هذا أمر مضحك", "أنا آسف جداً لخسارتك وأعزيك في رفيقك", "يجب عليك شراء قطة بدلاً منه", "هل يمكنني أخذ ألعابه؟"], correctAnswer: "أنا آسف جداً لخسارتك وأعزيك في رفيقك", explanation: "تقديم العزاء والمواساة هو الرد الإنساني المناسب لمواساة الحزين."),
            ExerciseItem(prompt: "تلقيت مكالمة من رقم غير معروف يدعي أنك فزت باليانصيب ويطلب تفاصيل حسابك المصرفي. ماذا تفعل؟", options: ["إعطاؤهم تفاصيل حسابك فوراً", "إنهاء المكالمة وعدم مشاركة أي تفاصيل شخصية", "طلب الاتصال بك في وقت لاحق", "الاتصال بعائلتك للاحتفال"], correctAnswer: "إنهاء المكالمة وعدم مشاركة أي تفاصيل شخصية", explanation: "طلب البيانات البنكية الحساسة من متصلين مجهولين هو أسلوب احتيال شائع جداً."),
            ExerciseItem(prompt: "تشعر بدوار وخفة في الرأس أثناء الوقوف في غرفة دافئة ومغلقة. ماذا يجب أن تفعل؟", options: ["الاستمرار في الوقوف وإغلاق عينيك", "الجلوس فوراً وشرب بعض الماء", "الركض سريعاً نحو الحمام", "الدوران حول نفسك"], correctAnswer: "الجلوس فوراً وشرب بعض الماء", explanation: "الجلوس الفوري يمنع خطر السقوط والإغماء، ويساعد شرب الماء في تعويض السوائل والتعافي."),
            ExerciseItem(prompt: "تلاحظ تسرب مياه من أسفل حوض المطبخ. ما هو أول شيء يجب عليك فعله؟", options: ["الاتصال بدهان الجدران", "وضع دلو أسفل التسريب لتجميع المياه", "مسح الأرضية لاحقاً في المساء", "إطفاء الأنوار"], correctAnswer: "وضع دلو أسفل التسريب لتجميع المياه", explanation: "وضع وعاء يمنع انتشار المياه وتضرر أرضيات المطبخ أثناء انتظار الإصلاح."),
            ExerciseItem(prompt: "تمت دعوتك لحفلة عشاء ولكنك لا تستطيع الذهاب. ماذا تفعل؟", options: ["عدم الحضور ببساطة دون إبلاغهم", "إخبار المضيف مسبقاً بأنك لن تتمكن من الحضور", "الحضور متأخراً دون سابق إنذار", "إرسال هدية بدلاً من الرد"], correctAnswer: "إخبار المضيف مسبقاً بأنك لن تتمكن من الحضور", explanation: "إبلاغ المضيف مسبقاً تصرف لبق يتيح له تعديل تحضيراته وعدد الحضور."),
            ExerciseItem(prompt: "كسرت عن طريق الخطأ زهرية مزخرفة في منزل صديقك. ما هي الاستجابة الصحيحة؟", options: ["إخفاء القطع المكسورة أسفل الأريكة", "الاعتذار وعرض استبدالها أو شراء زهرية جديدة له", "التظاهر بأنك لم تفعل ذلك", "إلقاء اللوم على الكلب"], correctAnswer: "الاعتذار وعرض استبدالها أو شراء زهرية جديدة له", explanation: "الأمانة وتحمل المسؤولية وعرض التعويض هو السلوك اللائق بين الأصدقاء."),
            ExerciseItem(prompt: "لا يمكنك العثور على مفاتيح منزلك وأنت مقفل عليك بالخارج. ما هي أفضل خطوة؟", options: ["كسر نافذة للدخول إلى الداخل", "الاتصال بأحد أفراد العائلة ممن لديهم مفتاح احتياطي أو بقفال محترف", "الانتظار على الشرفة للأبد", "ركل الباب بقوة"], correctAnswer: "الاتصال بأحد أفراد العائلة ممن لديهم مفتاح احتياطي أو بقفال محترف", explanation: "الاستعانة بالمفتاح الاحتياطي أو خبير الأقفال هو الطريقة الآمنة للدخول دون إتلاف الممتلكات."),
            ExerciseItem(prompt: "تلاحظ أن مصابيح الشارع مضاءة ولكن منزلك يفتقر للكهرباء تماماً. ماذا يجب أن تفعل؟", options: ["تفقد صندوق قواطع الدورة الكهربائية (العداد) في منزلك", "شراء جهاز تلفاز جديد", "الذهاب للنوم فوراً", "الاتصال بالشرطة"], correctAnswer: "تفقد صندوق قواطع الدورة الكهربائية (العداد) في منزلك", explanation: "تفقد القواطع يساعد في معرفة ما إذا كانت المشكلة انقطاعاً عاماً أم زيادة حمل كهربائي موضعي بالمنزل."),
            ExerciseItem(prompt: "ترى جاراً مسناً يكافح من أجل حمل أكياس البقالة الثقيلة. ماذا يجب أن تفعل؟", options: ["المشي بجانبه بسرعة دون مبالاة", "عرض المساعدة عليه لحمل الحقائب", "التقاط صورة له", "إخباره بأن يمشي بشكل أسرع"], correctAnswer: "عرض المساعدة عليه لحمل الحقائب", explanation: "تقديم العون لكبار السن يعزز روح التعاون والمودة بين الجيران."),
            ExerciseItem(prompt: "أخذت رشفة من القهوة وأدركت أنها ساخنة جداً وحرقت فمك. ماذا تفعل؟", options: ["شرب الباقي بسرعة", "بصقها بعناية وشرب ماء بارد", "الصراخ بصوت عالٍ", "رمي الكوب"], correctAnswer: "بصقها بعناية وشرب ماء بارد", explanation: "الماء البارد يساعد في تبريد الحروق الفموية وتخفيف الألم بسرعة."),
            ExerciseItem(prompt: "وصف لك الطبيب دواءً جديداً ولكنك لم تفهم كيفية تناوله. ماذا تفعل؟", options: ["تخمين الجرعة بنفسك وتناولها", "طلب التوضيح من الصيدلي أو الطبيب لشرح الجرعة وطريقة التناول", "عدم تناول الدواء مطلقاً", "البحث عنه في مواقع التواصل الاجتماعي"], correctAnswer: "طلب التوضيح من الصيدلي أو الطبيب لشرح الجرعة وطريقة التناول", explanation: "الأطباء والصيادلة هم المصدر الطبي الوحيد الموثوق للاستفسار عن العلاجات والجرعات السليمة."),
            ExerciseItem(prompt: "سكبت العصير الأحمر بالخطأ على سجادة صديقك البيضاء. ماذا تفعل؟", options: ["وضع كرسي فوق البقعة لتغطيتها", "الاعتذار والمساعدة في تنظيفها فوراً", "مغادرة الحفلة باكراً وهرباً", "إخباره بأنه كان عصير عنب أبيض"], correctAnswer: "الاعتذار والمساعدة في تنظيفها فوراً", explanation: "البدء في تنظيف السوائل المسكوبة فوراً يمنع البقع من أن تصبح دائمة في نسيج السجاد."),
            ExerciseItem(prompt: "تسمع إنذار الدخان يصدر صوتاً قصيراً (رنين/صفارة) كل دقيقة. ماذا يعني هذا؟", options: ["هناك حريق نشط في المبنى", "البطارية الاحتياطية منخفضة وتحتاج إلى استبدال", "جهاز الإنذار معطل بالكامل", "لا شيء على الإطلاق"], correctAnswer: "البطارية الاحتياطية منخفضة وتحتاج إلى استبدال", explanation: "أصوات الصفير القصيرة المتقطعة والمنتظمة تشير إلى انخفاض طاقة بطارية كاشف الدخان."),
            ExerciseItem(prompt: "أنت تقود سيارتك ورأيت سيارة إسعاف تومض أضواء الطوارئ خلفك. ماذا تفعل؟", options: ["زيادة السرعة للبقاء أمامها", "الانحراف بجانب الطريق والتوقف بأمان لإفساح المجال", "التوقف فجأة في منتصف مسار السير", "تجاهلها"], correctAnswer: "الانحراف بجانب الطريق والتوقف بأمان لإفساح المجال", explanation: "إفساح الطريق لمرور مركبات الطوارئ واجب مروري لإنقاذ الأرواح."),
            ExerciseItem(prompt: "تلقيت بريداً إلكترونياً من مصرفك يطلب منك النقر على رابط للتحقق من كلمة مرورك. ماذا تفعل؟", options: ["النقر على الرابط وإدخال كلمة المرور", "حذف البريد أو الاتصال بالبنك مباشرة عبر رقمهم الرسمي المعتمد", "إعادة توجيه الرسالة لأصدقائك", "الرد على الرسالة بكتابة كلمة مرورك"], correctAnswer: "حذف البريد أو الاتصال بالبنك مباشرة عبر رقمهم الرسمي المعتمد", explanation: "المصارف لا تطلب التحقق من كلمات المرور عبر روابط بريدية؛ هذه عملية اصطياد احتيالي (Phishing)."),
            ExerciseItem(prompt: "وجدت محفظة على الرصيف تحتوي على نقود وبطاقة هوية شخصية. ماذا تفعل؟", options: ["أخذ النقود والتخلص من المحفظة", "تسليمها للشرطة أو محاولة الاتصال بالمالك باستخدام معلومات الهوية", "تركها على الرصيف كما هي", "إعطاؤها لشخص غريب بالشارع"], correctAnswer: "تسليمها للشرطة أو محاولة الاتصال بالمالك باستخدام معلومات الهوية", explanation: "إعادة الأمانات لأصحابها هو السلوك القانوني والأخلاقي القويم."),
            ExerciseItem(prompt: "يصدر إنذار الدخان في منزلك صوتاً مستمراً وعالياً للغاية. ماذا يجب أن تفعل؟", options: ["تجاهله والانتظار حتى يتوقف", "التحقق من وجود حريق وإخلاء المبنى بسلام إذا لزم الأمر", "تغيير البطاريات على الفور", "الذهاب للنوم"], correctAnswer: "التحقق من وجود حريق وإخلاء المبنى بسلام إذا لزم الأمر", explanation: "الإنذار المستمر يشير لتهديد حريق داهم يتطلب اتخاذ تدابير السلامة والإخلاء فوراً.")
        ]
    )
}
