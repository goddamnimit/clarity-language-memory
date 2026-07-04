import Foundation

/// Holds the 14 new Hindi exercises.
struct HindiNewExercisesData {

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

    // MARK: - Exercise 1: Rhyming Pairs
    private static let exercise1 = Exercise(
        title: "तुकबंदी वाले शब्द",
        instructions: "दिए गए शब्द के साथ तुकबंदी करने वाला (समान ध्वनि वाला) शब्द चुनें।",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "कौन सा शब्द 'राजा' के साथ तुकबंदी करता है?", options: ["कुत्ता", "बाजा", "सूरज", "पेड़"], correctAnswer: "बाजा", explanation: "राजा और बाजा की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'पानी' के साथ तुकबंदी करता है?", options: ["दूध", "नानी", "हरा", "चम्मच"], correctAnswer: "नानी", explanation: "पानी और नानी की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'रात' के साथ तुकबंदी करता है?", options: ["दिन", "बात", "सुबह", "चलना"], correctAnswer: "बात", explanation: "रात और बात की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'आम' के साथ तुकबंदी करता है?", options: ["काम", "सेब", "पेड़", "पत्ता"], correctAnswer: "काम", explanation: "आम और काम की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'हवा' के साथ तुकबंदी करता है?", options: ["पानी", "दवा", "आकाश", "जंगल"], correctAnswer: "दवा", explanation: "हवा और दवा की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'काला' के साथ तुकबंदी करता है?", options: ["पीला", "माला", "सफ़ेद", "लाल"], correctAnswer: "माला", explanation: "काला और माला की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'खाना' के साथ तुकबंदी करता है?", options: ["गाना", "पीना", "रोटी", "सब्जी"], correctAnswer: "गाना", explanation: "खाना और गाना की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'लाल' के साथ तुकबंदी करता है?", options: ["पीला", "बाल", "नीला", "हरा"], correctAnswer: "बाल", explanation: "लाल और बाल की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'दिन' के साथ तुकबंदी करता है?", options: ["रात", "पिन", "सुबह", "शाम"], correctAnswer: "पिन", explanation: "दिन और पिन की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'मोर' के साथ तुकबंदी करता है?", options: ["चोर", "चिड़िया", "पंख", "पेड़"], correctAnswer: "चोर", explanation: "मोर और चोर की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'फूल' के साथ तुकबंदी करता है?", options: ["पत्ता", "धूल", "कांटा", "बगीचा"], correctAnswer: "धूल", explanation: "फूल और धूल की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'घर' के साथ तुकबंदी करता है?", options: ["कमरा", "पर", "छत", "दरवाज़ा"], correctAnswer: "पर", explanation: "घर और पर की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'आज' के साथ तुकबंदी करता है?", options: ["कल", "लाज", "समय", "घंटा"], correctAnswer: "लाज", explanation: "आज और लाज की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'खेल' के साथ तुकबंदी करता है?", options: ["रेल", "जीत", "मैदान", "दौड़"], correctAnswer: "रेल", explanation: "खेल और रेल की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'ताला' के साथ तुकबंदी करता है?", options: ["चाबी", "नाला", "लोहा", "दरवाज़ा"], correctAnswer: "नाला", explanation: "ताला और नाला की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'जाग' के साथ तुकबंदी करता है?", options: ["सोना", "भाग", "उठना", "सुबह"], correctAnswer: "भाग", explanation: "जाग और भाग की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'सात' के साथ तुकबंदी करता है?", options: ["हाथ", "आठ", "नौ", "दस"], correctAnswer: "हाथ", explanation: "सात और हाथ की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'नदी' के साथ तुकबंदी करता है?", options: ["पानी", "सदी", "तालाब", "समुद्र"], correctAnswer: "सदी", explanation: "नदी और सदी की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'हरा' के साथ तुकबंदी करता है?", options: ["पीला", "भरा", "नीला", "लाल"], correctAnswer: "भरा", explanation: "हरा और भरा की अंत ध्वनि समान है।"),
            ExerciseItem(prompt: "कौन सा शब्द 'केला' के साथ तुकबंदी करता है?", options: ["मेला", "आम", "सेब", "फल"], correctAnswer: "मेला", explanation: "केला और मेला की अंत ध्वनि समान है।")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "शब्द साहचर्य",
        instructions: "दिए गए शब्द के साथ सबसे निकटता से जुड़े शब्द को चुनें।",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "डॉक्टर", options: ["अस्पताल", "हवाई अड्डा", "पुस्तकालय", "खेत"], correctAnswer: "अस्पताल", explanation: "डॉक्टर मरीजों की देखभाल के लिए अस्पताल में काम करते हैं।"),
            ExerciseItem(prompt: "रोटी", options: ["मक्खन", "हथौड़ा", "साबुन", "पेंसिल"], correctAnswer: "मक्खन", explanation: "रोटी या ब्रेड पर आमतौर पर मक्खन लगाया जाता है।"),
            ExerciseItem(prompt: "रसोई", options: ["चूल्हा", "बिस्तर", "शावर", "कार"], correctAnswer: "चूल्हा", explanation: "चूल्हा रसोई का एक मुख्य उपकरण है।"),
            ExerciseItem(prompt: "पुस्तकालय", options: ["पुस्तकें", "कपड़े", "औज़ार", "किराना"], correctAnswer: "पुस्तकें", explanation: "पुस्तकालय में पुस्तकें संग्रहीत और उधार दी जाती हैं।"),
            ExerciseItem(prompt: "जूता", options: ["मोज़ा", "टोपी", "दस्ताने", "बेल्ट"], correctAnswer: "मोज़ा", explanation: "जूतों के अंदर मोज़े पहने जाते हैं।"),
            ExerciseItem(prompt: "अंतरिक्ष यात्री", options: ["अंतरिक्ष", "महासागर", "जंगल", "रेगिस्तान"], correctAnswer: "अंतरिक्ष", explanation: "अंतरिक्ष यात्री अंतरिक्ष की यात्रा करते हैं।"),
            ExerciseItem(prompt: "शिक्षक", options: ["विद्यालय", "कारखाना", "थिएटर", "जिम"], correctAnswer: "विद्यालय", explanation: "शिक्षक विद्यालय में छात्रों को पढ़ाते हैं।"),
            ExerciseItem(prompt: "महासागर", options: ["मछली", "चिड़िया", "गाय", "मकड़ी"], correctAnswer: "मछली", explanation: "मछलियां महासागर में रहती हैं।"),
            ExerciseItem(prompt: "कार", options: ["टायर", "पंख", "काठी", "पाल"], correctAnswer: "टायर", explanation: "टायर कार के अनिवार्य हिस्से हैं।"),
            ExerciseItem(prompt: "बारिश", options: ["छाता", "धूप का चश्मा", "दस्ताने", "मफ़लर"], correctAnswer: "छाता", explanation: "छाता आपको बारिश से बचाता है।"),
            ExerciseItem(prompt: "आग", options: ["धुआं", "बर्फ", "पत्ता", "सिक्का"], correctAnswer: "धुआं", explanation: "आग से धुआं निकलता है।"),
            ExerciseItem(prompt: "दंत चिकित्सक", options: ["दांत", "बाल", "आंखें", "पैर"], correctAnswer: "दांत", explanation: "दंत चिकित्सक दांतों और मौखिक स्वास्थ्य के विशेषज्ञ होते हैं।"),
            ExerciseItem(prompt: "कॉफ़ी", options: ["मग", "कटोरा", "प्लेट", "कांटा"], correctAnswer: "मग", explanation: "कॉफ़ी आमतौर पर मग में परोसी जाती है।"),
            ExerciseItem(prompt: "बगीचा", options: ["फूल", "कंप्यूटर", "चूल्हा", "कोट"], correctAnswer: "फूल", explanation: "बगीचे में फूल उगते हैं।"),
            ExerciseItem(prompt: "चाबी", options: ["ताला", "खिड़की", "छत", "फर्श"], correctAnswer: "ताला", explanation: "चाबी का उपयोग ताला खोलने के लिए किया जाता है।"),
            ExerciseItem(prompt: "डाकघर", options: ["पत्र", "रोटी", "दवा", "टिकट"], correctAnswer: "पत्र", explanation: "डाकघर के माध्यम से पत्र भेजे जाते हैं।"),
            ExerciseItem(prompt: "पियानो", options: ["संगीत", "पेंट", "मिट्टी", "लकड़ी"], correctAnswer: "संगीत", explanation: "पियानो संगीत बजाने के लिए इस्तेमाल होने वाला वाद्य यंत्र है।"),
            ExerciseItem(prompt: "मधुमक्खी", options: ["शहद", "दूध", "ऊन", "रेशम"], correctAnswer: "शहद", explanation: "मधुमक्खियां शहद बनाती हैं।"),
            ExerciseItem(prompt: "मकड़ी", options: ["जाला", "घोंसला", "छत्ता", "गुफा"], correctAnswer: "जाला", explanation: "मकड़ियां जाला बुनती हैं।"),
            ExerciseItem(prompt: "किसान", options: ["टैक्टर", "हवाई जहाज़", "पनडुब्बी", "ट्रेन"], correctAnswer: "टैक्टर", explanation: "किसान खेतों में काम करने के लिए ट्रैक्टर का उपयोग करते हैं।")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "कहावत पूरी करें",
        instructions: "प्रसिद्ध हिंदी कहावत या मुहावरे को पूरा करें।",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "अधजल गगरी ___ जाये।", options: ["छलकत", "भरत", "गिरत", "बहत"], correctAnswer: "छलकत", explanation: "कहावत है: 'अधजल गगरी छलकत जाये', यानी कम ज्ञान वाला अधिक दिखावा करता है।"),
            ExerciseItem(prompt: "अब पछताए होत क्या जब चिड़िया चुग गई ___।", options: ["खेत", "दाना", "पानी", "घर"], correctAnswer: "खेत", explanation: "समय निकल जाने के बाद पछताना व्यर्थ है।"),
            ExerciseItem(prompt: "एक हाथ से ___ नहीं बजती।", options: ["ताली", "ढोलक", "घंटी", "बांसुरी"], correctAnswer: "ताली", explanation: "झगड़ा दोनों पक्षों की गलती से होता है।"),
            ExerciseItem(prompt: "जंगल में मोर नाचा, किसने ___।", options: ["देखा", "सुना", "गाया", "हंसा"], correctAnswer: "देखा", explanation: "ऐसी जगह कोई खूबी दिखाना जहां उसकी कद्र करने वाला कोई न हो।"),
            ExerciseItem(prompt: "नाच न जाने ___ टेढ़ा।", options: ["आंगन", "कमरा", "रास्ता", "पैर"], correctAnswer: "आंगन", explanation: "अपनी कमी छुपाने के लिए दूसरों या साधनों में दोष निकालना।"),
            ExerciseItem(prompt: "जैसी करनी वैसी ___।", options: ["भरनी", "तरनी", "करनी", "रहनी"], correctAnswer: "भरनी", explanation: "मनुष्य को अपने कर्मों के अनुसार ही फल मिलता है।"),
            ExerciseItem(prompt: "दूध का जला ___ भी फूंक-फूंक कर पीता है।", options: ["छाछ", "पानी", "चाय", "दूध"], correctAnswer: "छाछ", explanation: "एक बार धोखा खाने के बाद व्यक्ति अत्यधिक सावधान हो जाता है।"),
            ExerciseItem(prompt: "खोदा पहाड़ निकली ___।", options: ["चुहिया", "बिल्ली", "मिट्टी", "सोना"], correctAnswer: "चुहिया", explanation: "कठिन परिश्रम के बाद बहुत कम लाभ मिलना।"),
            ExerciseItem(prompt: "घर की मुर्गी ___ बराबर।", options: ["दाल", "सब्जी", "अंडा", "भाजी"], correctAnswer: "दाल", explanation: "घर की मूल्यवान वस्तु या व्यक्ति का भी आदर नहीं होता।"),
            ExerciseItem(prompt: "धोबी का कुत्ता न घर का न ___ का।", options: ["घाट", "बाज़ार", "गांव", "दुकान"], correctAnswer: "घाट", explanation: "कहीं का न रहना, निरर्थक भटकना।"),
            ExerciseItem(prompt: "चोर की दाढ़ी में ___।", options: ["तिनका", "बाल", "सोना", "काला"], correctAnswer: "तिनका", explanation: "दोषी व्यक्ति हमेशा सशंकित रहता है।"),
            ExerciseItem(prompt: "बहती गंगा में ___ धोना।", options: ["हाथ", "पैर", "मुंह", "कपड़े"], correctAnswer: "हाथ", explanation: "अवसर का लाभ उठा लेना।"),
            ExerciseItem(prompt: "सौ सुनार की, एक ___ की।", options: ["लोहार", "सुनार", "चोर", "राजा"], correctAnswer: "लोहार", explanation: "कमज़ोर के सौ प्रहारों के सामने बलवान का एक प्रहार ही काफ़ी होता है।"),
            ExerciseItem(prompt: "हाथ कंगन को ___ क्या।", options: ["आरसी", "दर्पण", "सोना", "कंगना"], correctAnswer: "आरसी", explanation: "प्रत्यक्ष को प्रमाण की आवश्यकता नहीं होती।"),
            ExerciseItem(prompt: "बगल में छोरा, शहर में ___।", options: ["ढिंढोरा", "शोर", "सन्नाटा", "मेला"], correctAnswer: "ढिंढोरा", explanation: "पास में रखी वस्तु को हर जगह खोजना।"),
            ExerciseItem(prompt: "काला अक्षर ___ बराबर।", options: ["भैंस", "गाय", "कागज", "कलम"], correctAnswer: "भैंस", explanation: "बिल्कुल अनपढ़ होना।"),
            ExerciseItem(prompt: "ऊँट के मुँह में ___।", options: ["जीरा", "सौंफ", "पानी", "घास"], correctAnswer: "जीरा", explanation: "ज़रूरत से बहुत कम वस्तु मिलना।"),
            ExerciseItem(prompt: "आम के आम, गुठलियों के ___।", options: ["दाम", "नाम", "काम", "पेड़"], correctAnswer: "दाम", explanation: "दोहरा लाभ प्राप्त होना।"),
            ExerciseItem(prompt: "दूर के ढोल ___ लगते हैं।", options: ["सुहावने", "डरावने", "तेज", "धीमे"], correctAnswer: "सुहावने", explanation: "दूर से चीजें अच्छी दिखाई देती हैं।"),
            ExerciseItem(prompt: "जिसकी लाठी उसकी ___।", options: ["भैंस", "गाय", "जीत", "हार"], correctAnswer: "भैंस", explanation: "शक्तिशाली व्यक्ति की ही जीत होती है।")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "संयुक्त शब्द",
        instructions: "संयुक्त शब्द को पूरा करने के लिए सही शब्द चुनें।",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "रसोई + ___", options: ["घर", "शाला", "कक्ष", "स्थान"], correctAnswer: "घर", explanation: "रसोई + घर = रसोईघर (खाना बनाने की जगह)।"),
            ExerciseItem(prompt: "बैल + ___", options: ["गाड़ी", "वान", "सवार", "घोड़ा"], correctAnswer: "गाड़ी", explanation: "बैल + गाड़ी = बैलगाड़ी।"),
            ExerciseItem(prompt: "पाठ + ___", options: ["शाला", "गृह", "लय", "घर"], correctAnswer: "शाला", explanation: "पाठ + शाला = पाठशाला।"),
            ExerciseItem(prompt: "हिम + ___", options: ["आलय", "घर", "पर्वत", "शिला"], correctAnswer: "आलय", explanation: "हिम + आलय = हिमालय।"),
            ExerciseItem(prompt: "डाक + ___", options: ["घर", "खाना", "पेटी", "पत्र"], correctAnswer: "घर", explanation: "डाक + घर = डाकघर।"),
            ExerciseItem(prompt: "राज + ___", options: ["कुमार", "पुरुष", "महल", "दूत"], correctAnswer: "कुमार", explanation: "राज + कुमार = राजकुमार।"),
            ExerciseItem(prompt: "सूर्य + ___", options: ["ोदय", "अस्त", "प्रकाश", "किरण"], correctAnswer: "ोदय", explanation: "सूर्य + उदय = सूर्योदय।"),
            ExerciseItem(prompt: "विद्या + ___", options: ["आलय", "शाला", "पीठ", "मंदिर"], correctAnswer: "आलय", explanation: "विद्या + आलय = विद्यालय।"),
            ExerciseItem(prompt: "गंगा + ___", options: ["जल", "नदी", "धार", "तट"], correctAnswer: "जल", explanation: "गंगा + जल = गंगाजल।"),
            ExerciseItem(prompt: "चिड़िया + ___", options: ["घर", "वन", "पिंजरा", "घोंसला"], correctAnswer: "घर", explanation: "चिड़िया + घर = चिड़ियाघर।"),
            ExerciseItem(prompt: "देव + ___", options: ["आलय", "दूत", "लोक", "पूजा"], correctAnswer: "आलय", explanation: "देव + आलय = देवालय।"),
            ExerciseItem(prompt: "चाय + ___", options: ["पत्ती", "पानी", "दूध", "कप"], correctAnswer: "पत्ती", explanation: "चाय + पत्ती = चायपत्ती।"),
            ExerciseItem(prompt: "रेल + ___", options: ["गाड़ी", "पटरी", "इंजन", "सफ़र"], correctAnswer: "गाड़ी", explanation: "रेल + गाड़ी = रेलगाड़ी।"),
            ExerciseItem(prompt: "प्रधान + ___", options: ["मंत्री", "अध्यापक", "कार्यालय", "नेता"], correctAnswer: "मंत्री", explanation: "प्रधान + मंत्री = प्रधानमंत्री।"),
            ExerciseItem(prompt: "महा + ___", options: ["राज", "वीर", "देव", "पुरुष"], correctAnswer: "राज", explanation: "महा + राज = महाराज।"),
            ExerciseItem(prompt: "देश + ___", options: ["वासी", "भक्त", "द्रोह", "सेवा"], correctAnswer: "वासी", explanation: "देश + वासी = देशवासी।"),
            ExerciseItem(prompt: "वायु + ___", options: ["यान", "सेना", "मंडल", "मार्ग"], correctAnswer: "यान", explanation: "वायु + यान = वायुयान।"),
            ExerciseItem(prompt: "काम + ___", options: ["चोर", "धंधा", "काज", "गार"], correctAnswer: "चोर", explanation: "काम + चोर = कामचोर।"),
            ExerciseItem(prompt: "धर्म + ___", options: ["शाला", "पत्नी", "ग्रंथ", "वीर"], correctAnswer: "शाला", explanation: "धर्म + शाला = धर्मशाला।"),
            ExerciseItem(prompt: "नील + ___", options: ["कमल", "गगन", "कंठ", "गाय"], correctAnswer: "कमल", explanation: "नील + कमल = नीलकमल।")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "उपसर्ग और प्रत्यय",
        instructions: "सही उपसर्ग या प्रत्यय की पहचान करें।",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "'अनपढ़' शब्द में उपसर्ग (prefix) क्या है?", options: ["अन", "पढ़", "अ", "न"], correctAnswer: "अन", explanation: "'अनपढ़' में 'अन' उपसर्ग है जो नकारात्मक अर्थ देता है।"),
            ExerciseItem(prompt: "'सुंदरता' शब्द में प्रत्यय (suffix) क्या है?", options: ["ता", "सुंदर", "सु", "रता"], correctAnswer: "ता", explanation: "'ता' प्रत्यय लगाने से विशेषण भाववाचक संज्ञा में बदल जाता है।"),
            ExerciseItem(prompt: "'कमज़ोर' शब्द में उपसर्ग क्या है?", options: ["कम", "ज़ोर", "क", "म"], correctAnswer: "कम", explanation: "'कम' उपसर्ग फारसी का है जिसका अर्थ अल्प या हीन होता है।"),
            ExerciseItem(prompt: "'दुकानदार' शब्द में प्रत्यय क्या है?", options: ["दार", "दुकान", "कार", "वाला"], correctAnswer: "दार", explanation: "'दार' प्रत्यय स्वामी या धारक का बोध कराता है।"),
            ExerciseItem(prompt: "'उपकार' शब्द में उपसर्ग क्या है?", options: ["उप", "कार", "उ", "प"], correctAnswer: "उप", explanation: "'उप' उपसर्ग पास या सहायक का बोध कराता है।"),
            ExerciseItem(prompt: "'लिखाई' शब्द में प्रत्यय क्या है?", options: ["आई", "लिख", "खाई", "ई"], correctAnswer: "आई", explanation: "'आई' प्रत्यय लगाने से क्रिया भाववाचक संज्ञा में परिवर्तित होती है।"),
            ExerciseItem(prompt: "'अधपका' शब्द में उपसर्ग क्या है?", options: ["अध", "पका", "अ", "ध"], correctAnswer: "अध", explanation: "'अध' उपसर्ग का अर्थ 'आधा' होता है।"),
            ExerciseItem(prompt: "'सजावट' शब्द में प्रत्यय क्या है?", options: ["आवट", "सजा", "वट", "ट"], correctAnswer: "आवट", explanation: "'आवट' प्रत्यय भाववाचक संज्ञा बनाता है।"),
            ExerciseItem(prompt: "'बेकसूर' शब्द में उपसर्ग क्या है?", options: ["बे", "कसूर", "ब", "सुर"], correctAnswer: "बे", explanation: "'बे' उपसर्ग का अर्थ 'बिना' होता है।"),
            ExerciseItem(prompt: "'सफलता' शब्द में प्रत्यय क्या है?", options: ["ता", "सफल", "स", "फल"], correctAnswer: "ता", explanation: "'ता' प्रत्यय भाव प्रकट करता है।"),
            ExerciseItem(prompt: "'प्रतिदिन' शब्द में उपसर्ग क्या है?", options: ["प्रति", "दिन", "प्र", "ति"], correctAnswer: "प्रति", explanation: "'प्रति' उपसर्ग का अर्थ 'हरेक' होता है।"),
            ExerciseItem(prompt: "'घबराहट' शब्द में प्रत्यय क्या है?", options: ["आहट", "घबरा", "हट", "ट"], correctAnswer: "आहट", explanation: "'आहट' भाववाचक प्रत्यय है।"),
            ExerciseItem(prompt: "'नासमझ' शब्द में उपसर्ग क्या है?", options: ["ना", "समझ", "न", "साम"], correctAnswer: "ना", explanation: "'ना' उपसर्ग का अर्थ 'रहित' या 'नहीं' होता है।"),
            ExerciseItem(prompt: "'भारतीय' शब्द में प्रत्यय क्या है?", options: ["ईय", "भारत", "तीय", "य"], correctAnswer: "ईय", explanation: "'ईय' प्रत्यय संबंध या विशेषता दर्शाता है।"),
            ExerciseItem(prompt: "'असंभव' शब्द में उपसर्ग क्या है?", options: ["अ", "संभव", "अस", "म"], correctAnswer: "अ", explanation: "'अ' उपसर्ग का अर्थ 'नहीं' या 'अभाव' होता है।"),
            ExerciseItem(prompt: "'दूधवाला' शब्द में प्रत्यय क्या है?", options: ["वाला", "दूध", "आला", "ला"], correctAnswer: "वाला", explanation: "'वाला' प्रत्यय व्यवसाय या स्वामित्व दर्शाता है।"),
            ExerciseItem(prompt: "'बदनाम' शब्द में उपसर्ग क्या है?", options: ["बद", "नाम", "ब", "द"], correctAnswer: "बद", explanation: "'बद' उपसर्ग का अर्थ 'बुरा' होता है।"),
            ExerciseItem(prompt: "'खिलौना' शब्द में प्रत्यय क्या है?", options: ["औना", "खिल", "ना", "औन"], correctAnswer: "औना", explanation: "'औना' प्रत्यय खेल की वस्तु का निर्माण करता है।"),
            ExerciseItem(prompt: "'खुशबू' शब्द में उपसर्ग क्या है?", options: ["खुश", "बू", "खु", "श"], correctAnswer: "खुश", explanation: "'खुश' उपसर्ग का अर्थ 'अच्छा' होता है।"),
            ExerciseItem(prompt: "'ईमानदार' शब्द में प्रत्यय क्या है?", options: ["दार", "ईमान", "कार", "हार"], correctAnswer: "दार", explanation: "'दार' प्रत्यय स्वामित्व या गुण दर्शाता है।")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "कहानी स्मरण",
        instructions: "छोटी कहानी पढ़ें और फिर उसके बारे में पूछे गए प्रश्न का उत्तर दें।",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "मारिया दूध और ब्रेड खरीदने किराना दुकान गई। वह अपना बटुआ रसोई के काउंटर पर भूल गई। मारिया घर पर क्या छोड़ गई थी?", options: ["अपना बटुआ", "अपनी चाबियां", "अपनी खरीदारी की सूची", "अपना फोन"], correctAnswer: "अपना बटुआ", explanation: "कहानी में लिखा है कि वह अपना बटुआ रसोई के काउंटर पर भूल गई।"),
            ExerciseItem(prompt: "थॉमस शनिवार को जल्दी जागकर मछली पकड़ने गया। उसने एक बड़ी ट्राउट मछली पकड़ी लेकिन उसे वापस छोड़ना पड़ा क्योंकि वह बहुत छोटी थी। थॉमस ने कौन सी मछली पकड़ी थी?", options: ["एक ट्राउट", "एक सैल्मन", "एक बास", "एक कैटफ़िश"], correctAnswer: "एक ट्राउट", explanation: "कहानी में कहा गया है कि उसने एक बड़ी ट्राउट पकड़ी थी।"),
            ExerciseItem(prompt: "आर्थर ने अपनी नीली कार एक छायादार ओक के पेड़ के नीचे खड़ी की। जब वह लौटा, तो उसने देखा कि कार पीले पत्तों से ढकी हुई थी। आर्थर की कार का रंग क्या है?", options: ["नीला", "पीला", "लाल", "हरा"], correctAnswer: "नीला", explanation: "कहानी बताती है कि आर्थर ने अपनी नीली कार खड़ी की थी।"),
            ExerciseItem(prompt: "लिंडा ने अपनी बेटी के जन्मदिन की पार्टी के लिए चॉकलेट केक बनाया। उसने केक पर दस लाल मोमबत्तियां लगाईं। लिंडा ने केक पर कितनी मोमबत्तियां लगाईं?", options: ["दस", "पांच", "आठ", "बारह"], correctAnswer: "दस", explanation: "कहानी में कहा गया है कि उसने दस लाल मोमबत्तियां लगाईं।"),
            ExerciseItem(prompt: "रॉबर्ट शिकागो में अपने भाई को एक पार्सल भेजने के लिए डाकघर गया। क्लर्क ने उसे बताया कि यह मंगलवार को पहुंचेगा। रॉबर्ट का भाई कहाँ रहता है?", options: ["शिकागो", "न्यूयार्क", "बोस्टन", "मियामी"], correctAnswer: "शिकागो", explanation: "कहानी बताती है कि उसने शिकागो में अपने भाई को पार्सल भेजा था।"),
            ExerciseItem(prompt: "सारा ने कल दौड़ने वाले नए जूते खरीदे। वे सफ़ेद धारियों वाले चमकीले हरे रंग के हैं। सारा के नए दौड़ने वाले जूते किस रंग के हैं?", options: ["चमकीला हरा", "नीला", "लाल", "काला"], correctAnswer: "चमकीला हरा", explanation: "कहानी कहती है कि वे सफेद धारियों वाले चमकीले हरे रंग के हैं।"),
            ExerciseItem(prompt: "जेम्स पार्क में टहल रहा था जब बारिश शुरू हो गई। सूखा रहने के लिए उसने अपना पीला छाता खोला। जेम्स ने किस रंग के छाते का उपयोग किया था?", options: ["पीला", "लाल", "नीला", "काला"], correctAnswer: "पीला", explanation: "कहानी कहती है कि उसने अपना पीला छाता खोला था।"),
            ExerciseItem(prompt: "स्थानीय बेकरी मरम्मत के लिए सोमवार को बंद थी। उन्होंने मंगलवार सुबह छह बजे फिर से खोलने की योजना बनाई। बेकरी किस दिन बंद थी?", options: ["सोमवार", "मंगलवार", "बुधवार", "रविवार"], correctAnswer: "सोमवार", explanation: "कहानी कहती है कि बेकरी सोमवार को बंद थी।"),
            ExerciseItem(prompt: "अन्ना ने एक प्लंबर को बुलाया क्योंकि उसकी रसोई का सिंक लीक हो रहा था। प्लंबर एक घंटे में आया और पाइप ठीक कर दिया। अन्ना ने प्लंबर को क्यों बुलाया था?", options: ["उसका सिंक लीक हो रहा था", "उसका चूल्हा खराब था", "उसकी बत्ती गुल थी", "उसका दरवाज़ा बंद था"], correctAnswer: "उसका सिंक लीक हो रहा था", explanation: "कहानी कहती है कि उसने प्लंबर को बुलाया क्योंकि उसका रसोई का सिंक लीक हो रहा था।"),
            ExerciseItem(prompt: "डेविड ने अपने कुत्ते मैक्स को घुमाया। मैक्स ने एक गिलहरी देखी और उस पर ज़ोर से भौंका। डेविड के कुत्ते का नाम क्या है?", options: ["मैक्स", "बडी", "चार्ली", "रॉकी"], correctAnswer: "मैक्स", explanation: "कहानी में डेविड के कुत्ते का नाम मैक्स बताया गया है।"),
            ExerciseItem(prompt: "हेलेन रात के खाने के लिए सब्जियों का सूप बना रही थी। उसे एहसास हुआ कि उसकी गाजर खत्म हो गई हैं, इसलिए उसने आलू का इस्तेमाल किया। हेलेन के पास कौन सी सब्जी खत्म हो गई थी?", options: ["गाजर", "आलू", "प्याज", "अजवाइन"], correctAnswer: "गाजर", explanation: "कहानी बताती है कि उसे एहसास हुआ कि उसकी गाजर खत्म हो गई थी।"),
            ExerciseItem(prompt: "पीटर ने दोपहर के भोजन के लिए एक पेपरोनी पिज्जा और एक सोडा ऑर्डर किया। कुल खर्च पंद्रह डॉलर था। पीटर के दोपहर के भोजन का खर्च कितना था?", options: ["पंद्रह डॉलर", "दस डॉलर", "बीस डॉलर", "बारह डॉलर"], correctAnswer: "पंद्रह डॉलर", explanation: "कहानी में कहा गया है कि कुल लागत पंद्रह डॉलर थी।"),
            ExerciseItem(prompt: "एलिस बागवानी के बारे में एक किताब उधार लेने पुस्तकालय गई। उसने इतिहास की एक डीवीडी भी उधार ली। एलिस द्वारा उधार ली गई किताब किस विषय पर थी?", options: ["बागवानी", "इतिहास", "खाना बनाना", "यात्रा"], correctAnswer: "बागवानी", explanation: "कहानी में कहा गया है कि उसने बागवानी के बारे में एक किताब उधार ली थी।"),
            ExerciseItem(prompt: "जॉर्ज नौकरी के इंटरव्यू के लिए सुबह की ट्रेन से शहर गया। पटरियों के रखरखाव के कारण उसकी ट्रेन पंद्रह मिनट देरी से चल रही थी। ट्रेन में देरी क्यों हुई थी?", options: ["पटरियों का रखरखाव", "भारी तूफ़ान", "बिजली कटौती", "कर्मचारी की अनुपस्थिति"], correctAnswer: "पटरियों का रखरखाव", explanation: "कहानी बताती है कि पटरियों के रखरखाव के कारण ट्रेन में देरी हुई थी।"),
            ExerciseItem(prompt: "नैन्सी लाल गुलाब खरीदने नर्सरी गई। वे बिक चुके थे, इसलिए उसने उनके स्थान पर गुलाबी कार्नेशन खरीदे। नैन्सी ने कौन सा फूल खरीदा?", options: ["गुलाबी कार्नेशन", "लाल गुलाब", "पीले ट्यूलिप", "सफेद लिली"], correctAnswer: "गुलाबी कार्नेशन", explanation: "कहानी में कहा गया है कि उसने गुलाबी कार्नेशन खरीदे।")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "संख्या अनुक्रम",
        instructions: "अनुक्रम में अगली संख्या कौन सी आएगी?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "अनुक्रम प्रत्येक बार 2 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "अनुक्रम प्रत्येक बार 5 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "अनुक्रम प्रत्येक बार 10 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "अनुक्रम प्रत्येक बार 3 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "अनुक्रम प्रत्येक बार 1 घटाकर कम होता है।"),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "अनुक्रम प्रत्येक बार 2 घटाकर कम होता है।"),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "विषम संख्याओं का अनुक्रम प्रत्येक बार 2 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "अनुक्रम प्रत्येक बार 4 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "अनुक्रम प्रत्येक बार 5 घटाकर कम होता है।"),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "अनुक्रम प्रत्येक बार 10 घटाकर कम होता है।"),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "अनुक्रम प्रत्येक बार 11 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "अनुक्रम प्रत्येक बार 2 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "अनुक्रम प्रत्येक बार 3 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "अनुक्रम प्रत्येक बार 3 घटाकर कम होता है।"),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "अनुक्रम प्रत्येक बार 7 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "अनुक्रम प्रत्येक बार 4 घटाकर कम होता है।"),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "अनुक्रम प्रत्येक बार 6 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "अनुक्रम प्रत्येक बार 5 जोड़कर बढ़ता है।"),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "अनुक्रम प्रत्येक बार 10 घटाकर कम होता है।"),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "अनुक्रम प्रत्येक बार 2 जोड़कर बढ़ता है।")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "कार्य और कारण",
        instructions: "वर्णित स्थिति का सबसे संभावित परिणाम चुनें।",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "आप गर्म दिन में रसोई के काउंटर पर दो घंटे के लिए आइसक्रीम छोड़ देते हैं। क्या होगा?", options: ["यह और कठोर हो जाएगी", "यह पिघल जाएगी", "इसका रंग बदल जाएगा", "यह गायब हो जाएगी"], correctAnswer: "यह पिघल जाएगी", explanation: "गर्मी के कारण जमी हुई आइसक्रीम पिघल जाती है।"),
            ExerciseItem(prompt: "आप तीन सप्ताह तक अपने घर के पौधे को पानी देना भूल जाते हैं। सबसे संभावित परिणाम क्या होगा?", options: ["इसमें फूल उगेंगे", "यह हरा रहेगा", "यह मुरझाकर सूख जाएगा", "यह नीला हो जाएगा"], correctAnswer: "यह मुरझाकर सूख जाएगा", explanation: "पौधों को जीवित रहने के लिए पानी की आवश्यकता होती है; इसके बिना वे मुरझाकर सूख जाते हैं।"),
            ExerciseItem(prompt: "आसमान में काले बादल छा जाते हैं और बिजली चमकती है। आगे क्या होने की संभावना है?", options: ["बारिश होगी", "गर्मी बढ़ेगी", "तुरंत बर्फ गिरेगी", "तारे निकल आएंगे"], correctAnswer: "बारिश होगी", explanation: "काले बादल और बिजली कड़कना बारिश आने के संकेत हैं।"),
            ExerciseItem(prompt: "आप कांच के कटोरे को कठोर टाइल वाले फर्श पर गिरा देते हैं। सबसे संभावित परिणाम क्या होगा?", options: ["यह वापस उछल जाएगा", "इसका रंग बदल जाएगा", "यह टुकड़ों में टूट जाएगा", "यह पानी बन जाएगा"], correctAnswer: "यह टुकड़ों में टूट जाएगा", explanation: "कांच नाज़ुक होता है और कठोर सतह पर गिरने पर टूट जाता है।"),
            ExerciseItem(prompt: "आप टोस्टर में ब्रेड का एक टुकड़ा डालते हैं और इसे उच्चतम सेटिंग पर छोड़ देते हैं। क्या होगा?", options: ["यह गीला हो जाएगा", "यह जलकर काला हो जाएगा", "यह नरम और सफ़ेद रहेगा", "यह गायब हो जाएगा"], correctAnswer: "यह जलकर काला हो जाएगा", explanation: "टोस्टर की अत्यधिक गर्मी से ब्रेड जल जाएगी।"),
            ExerciseItem(prompt: "आप कार की हेडलाइट्स रात भर चालू छोड़ देते हैं। सुबह क्या होगा?", options: ["कार तेज़ चलेगी", "बैटरी डिस्चार्ज (खत्म) हो जाएगी", "कार का रंग बदल जाएगा", "इंजन तुरंत चालू हो जाएगा"], correctAnswer: "बैटरी डिस्चार्ज (खत्म) हो जाएगी", explanation: "लाइट्स चालू छोड़ने से बैटरी की बिजली खत्म हो जाती है।"),
            ExerciseItem(prompt: "रात भर भारी बर्फबारी होती है और छह इंच बर्फ जमा हो जाती है। सड़कों का क्या होगा?", options: ["वे सूखी रहेंगी", "वे फिसलन भरी और बर्फ से ढक जाएंगी", "वे हरी हो जाएंगी", "वे गायब हो जाएंगी"], correctAnswer: "वे फिसलन भरी और बर्फ से ढक जाएंगी", explanation: "सड़क पर बर्फ जमा होने से वे फिसलन भरी और खतरनाक हो जाती हैं।"),
            ExerciseItem(prompt: "आप पानी से भरी ट्रे को फ्रीज़र में रख देते हैं। कुछ घंटों बाद क्या होगा?", options: ["पानी उबलने लगेगा", "पानी बर्फ बन जाएगा", "पानी भाप बन जाएगा", "पानी का रंग बदल जाएगा"], correctAnswer: "पानी बर्फ बन जाएगा", explanation: "ठंडा तापमान तरल पानी को ठोस बर्फ में बदल देता है।"),
            ExerciseItem(prompt: "आप गर्मियों के गर्म दिन में मोटे ऊनी मोज़े और भारी जूते पहनते हैं। आपके पैरों का क्या होगा?", options: ["उन्हें ठंड लगेगी", "वे सूखे रहेंगे", "वे गर्म होकर पसीने से भीग जाएंगे", "वे नीले हो जाएंगे"], correctAnswer: "वे गर्म होकर पसीने से भीग जाएंगे", explanation: "मोटे कपड़े गर्मी रोकते हैं, जिससे पैरों में पसीना आता है।"),
            ExerciseItem(prompt: "कोई व्यक्ति लगातार 24 घंटे तक नहीं सोता है। उसे कैसा महसूस होगा?", options: ["बहुत ऊर्जावान", "थका हुआ और नींद से भरा", "भूखा", "अत्यंत खुश"], correctAnswer: "थका हुआ और नींद से भरा", explanation: "नींद की कमी से थकान और नींद आती है।"),
            ExerciseItem(prompt: "आप गर्म चाय के कप में चीनी मिलाते हैं और इसे हिलाते हैं। चीनी का क्या होता है?", options: ["यह बर्फ बन जाती है", "यह कप से गायब हो जाती है", "यह चाय में घुल जाती है", "यह जल जाती है"], correctAnswer: "यह चाय में घुल जाती है", explanation: "गर्म तरल को हिलाने से चीनी उसमें घुल जाती है।"),
            ExerciseItem(prompt: "आप बिना छाते या रेनकोट के भारी बारिश में बाहर कदम रखते हैं। इसका क्या परिणाम होगा?", options: ["आप सूखे रहेंगे", "आपके कपड़े भीग जाएंगे", "आप नीले हो जाएंगे", "आपको गर्मी लगेगी"], correctAnswer: "आपके कपड़े भीग जाएंगे", explanation: "बारिश का पानी सीधे गिरने से आपके कपड़े गीले हो जाएंगे।"),
            ExerciseItem(prompt: "आप गुब्बारे में तब तक हवा भरते हैं जब तक वह बहुत अधिक न भर जाए। क्या होगा?", options: ["यह चाँद पर उड़ जाएगा", "यह फट जाएगा", "यह चिड़िया बन जाएगा", "यह सिकुड़ जाएगा"], correctAnswer: "यह फट जाएगा", explanation: "गुब्बारे की क्षमता से अधिक हवा का दबाव होने पर वह फट जाता है।"),
            ExerciseItem(prompt: "आप रात में बिना खिड़की वाले कमरे की सभी लाइटें बंद कर देते हैं। क्या होता है?", options: ["कमरा अधिक चमकीला हो जाता है", "कमरे में पूरी तरह अंधेरा हो जाता है", "कमरा हरा हो जाता है", "कमरा रोशनी से भर जाता् है"], correctAnswer: "कमरे में पूरी तरह अंधेरा हो जाता है", explanation: "रोशनी का कोई स्रोत न होने पर अंधेरा छा जाता है।"),
            ExerciseItem(prompt: "आप किसी कठिन परीक्षा के लिए पढ़ाई या तैयारी नहीं करते हैं। सबसे संभावित परिणाम क्या होगा?", options: ["आपको पूरे अंक मिलेंगे", "आपका प्रदर्शन खराब रहेगा", "आप अपना नाम भूल जाएंगे", "परीक्षा रद्द हो जाएगी"], correctAnswer: "आपका प्रदर्शन खराब रहेगा", explanation: "बिना तैयारी के कठिन परीक्षाओं में उत्तीर्ण होना मुश्किल होता है।")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "भावना की पहचान",
        instructions: "स्थिति पढ़ें और उस भावना को चुनें जिसे व्यक्ति महसूस कर रहा है।",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "सारा को पता चला कि उसने प्रतियोगिता में प्रथम स्थान प्राप्त किया है। वह कैसा महसूस करती है?", options: ["उदास", "नाराज़", "खुश", "डरी हुई"], correctAnswer: "खुश", explanation: "प्रतियोगिता जीतना एक खुशी का क्षण होता है।"),
            ExerciseItem(prompt: "डेविड को आधी रात में नीचे एक अजीब, तेज़ आवाज़ सुनाई देती है। वह कैसा महसूस करता है?", options: ["खुश", "डरा हुआ", "ऊबा हुआ", "उत्साहित"], correctAnswer: "डरा हुआ", explanation: "अंधेरे में अचानक सुनाई देने वाली आवाज़ें डर पैदा करती हैं।"),
            ExerciseItem(prompt: "मैरी की सबसे अच्छी सहेली बहुत दूर दूसरे राज्य में रहने जा रही है। मैरी को कैसा महसूस हो रहा है?", options: ["उदास", "नाराज़", "उत्साहित", "ईर्ष्यालु"], correctAnswer: "उदास", explanation: "करीबी दोस्तों की विदाई दुःख का कारण बनती है।"),
            ExerciseItem(prompt: "दुकान पर एक लंबी लाइन में कोई व्यक्ति जॉन के आगे आ जाता है। जॉन को कैसा महसूस होता है?", options: ["खुश", "डरा हुआ", "चिढ़", "शर्मिंदा"], correctAnswer: "चिढ़", explanation: "दूसरों का अशिष्ट व्यवहार चिढ़ पैदा करता है।"),
            ExerciseItem(prompt: "एमिली बहुत बड़े दर्शकों के सामने भाषण देने वाली है। वह कैसा महसूस कर रही है?", options: ["घबराहट", "ऊबी हुई", "उदास", "नाराज़"], correctAnswer: "घबराहट", explanation: "सार्वजनिक भाषण देने से पहले घबराहट होना स्वाभाविक है।"),
            ExerciseItem(prompt: "रॉबर्ट की उड़ान रद्द हो गई, जिससे उसकी छुट्टियां दो दिन आगे बढ़ गईं। वह कैसा महसूस करता है?", options: ["हताश", "खुश", "डरा हुआ", "गर्वित"], correctAnswer: "हताश", explanation: "योजनाओं में बाधा आने पर हताशा महसूस होती है।"),
            ExerciseItem(prompt: "लिसा का बेटा विश्वविद्यालय से प्रथम श्रेणी में पास हुआ। लिसा को कैसा महसूस हो रहा है?", options: ["गर्व", "ईर्ष्या", "उदासी", "डर"], correctAnswer: "गर्व", explanation: "परिवार के सदस्यों की सफलता पर गर्व महसूस होता है।"),
            ExerciseItem(prompt: "एक क्लर्क चौथी बार एक कठिन फ़ॉर्म समझा रहा है, लेकिन आर्थर अभी भी समझ नहीं पा रहा है। आर्थर कैसा महसूस कर रहा है?", options: ["उलझन", "खुश", "उत्साहित", "गर्वित"], correctAnswer: "उलझन", explanation: "जानकारी समझ न आने पर उलझन या असमंजस महसूस होता है।"),
            ExerciseItem(prompt: "जेम्स दो घंटे से एक शांत प्रतीक्षालय में प्रतीक्षा कर रहा है और पढ़ने के लिए कुछ नहीं है। वह कैसा महसूस कर रहा है?", options: ["ऊबा हुआ", "डरा हुआ", "नाराज़", "खुश"], correctAnswer: "ऊबा हुआ", explanation: "बिना किसी गतिविधि के लंबी प्रतीक्षा करने से ऊब महसूस होती है।"),
            ExerciseItem(prompt: "केटी के परिवार ने उसके सभी दोस्तों के साथ एक सरप्राइज बर्थडे पार्टी का आयोजन किया। वह कैसा महसूस करती है?", options: ["आश्चर्यचकित", "नाराज़", "उदास", "डरी हुई"], correctAnswer: "आश्चर्यचकित", explanation: "अचानक मिली खुशी से व्यक्ति आश्चर्यचकित महसूस करता है।"),
            ExerciseItem(prompt: "एक आवारा कुत्ता झपटा और टहलते समय करेन पर आक्रामक रूप से भौंकने लगा। वह कैसा महसूस करती है?", options: ["भयभीत", "खुश", "ऊबी हुई", "गर्वित"], correctAnswer: "भयभीत", explanation: "आक्रामक जानवरों के सामने भयभीत महसूस होना सामान्य है।"),
            ExerciseItem(prompt: "विलियम की शादी की अंगूठी बागवानी करते समय खो गई। वह कैसा महसूस करता है?", options: ["परेशान", "उत्साहित", "ऊबा हुआ", "शांत"], correctAnswer: "परेशान", explanation: "महत्वपूर्ण या भावनात्मक मूल्य की वस्तु खोने पर व्यक्ति परेशान हो जाता है।"),
            ExerciseItem(prompt: "पेट्रीसिया को अपने पोते-पोतियों से एक सुंदर कार्ड और फूल मिले। वह कैसा महसूस करती है?", options: ["प्रिय", "नाराज़", "डरी हुई", "उलझन में"], correctAnswer: "प्रिय", explanation: "अपनों से प्यार और सम्मान पाकर व्यक्ति खुद को प्रिय (Loved) महसूस करता है।"),
            ExerciseItem(prompt: "किराने की दुकान पर रिचर्ड की पसंद की ब्रेड खत्म हो गई थी, इसलिए उसे दूसरा ब्रांड खरीदना पड़ा। वह कैसा महसूस करता है?", options: ["थोड़ा निराश", "आतंकित", "अत्यंत क्रोधित", "अति उत्साहित"], correctAnswer: "थोड़ा निराश", explanation: "मनपसंद चीज़ न मिलने पर थोड़ी निराशा होना स्वाभाविक है।"),
            ExerciseItem(prompt: "चार्ल्स ने पूरी दोपहर बुकशेल्फ़ बनाने में बिताई और वह बिल्कुल सही बनी। वह कैसा महसूस कर रहा है?", options: ["संतुष्ट", "उदास", "डरा हुआ", "ऊबा हुआ"], correctAnswer: "संतुष्ट", explanation: "काम सफलतापूर्वक पूरा होने पर संतोष (संतुष्ट) महसूस होता है।"),
            ExerciseItem(prompt: "लिंडा ने एक शांत रेस्तरां में गलती से पेय पदार्थों की ट्रे गिरा दी। वह कैसा महसूस करती है?", options: ["शर्मिंदा", "खुश", "नाराज़", "ऊबी हुई"], correctAnswer: "शर्मिंदा", explanation: "सार्वजनिक स्थान पर गलती होने से शर्मिंदगी महसूस होती है।"),
            ExerciseItem(prompt: "थॉमस कल सुबह हवाई की अपनी पहली यात्रा पर जा रहा है। वह कैसा महसूस कर रहा है?", options: ["उत्साहित", "उदास", "नाराज़", "ऊबा हुआ"], correctAnswer: "उत्साहित", explanation: "पहली यात्रा या छुट्टियों के अवसर पर व्यक्ति उत्साहित महसूस करता है।"),
            ExerciseItem(prompt: "सुसान की बिल्ली तीन दिनों तक लापता रहने के बाद सुरक्षित घर लौट आई। वह कैसा महसूस करती है?", options: ["राहत", "नाराज़", "डरी हुई", "उलझन में"], correctAnswer: "राहत", explanation: "चिंता का विषय समाप्त होने पर राहत महसूस होती है।"),
            ExerciseItem(prompt: "जॉर्ज जब काम करने की कोशिश कर रहा है, तो इंटरनेट कनेक्शन हर पांच मिनट में कट जाता है। वह कैसा महसूस कर रहा है?", options: ["परेशान", "डरा हुआ", "खुश", "ऊबा हुआ"], correctAnswer: "परेशान", explanation: "बार-बार आ रही बाधाओं से चिढ़ या झुंझलाहट (परेशान) होती है।"),
            ExerciseItem(prompt: "हेलेन ने तनावपूर्ण दिन के बाद लंबे समय तक गर्म पानी से स्नान किया। वह कैसा महसूस कर रही है?", options: ["शांत व शिथिल", "नाराज़", "डरी हुई", "घबराई हुई"], correctAnswer: "शांत व शिथिल", explanation: "गर्म पानी के स्नान से शरीर और मन को शांत व शिथिल (Relaxed) महसूस होता है।")
        ]
    )

    // MARK: - Exercise 10: What's Wrong Here?
    private static let exercise10 = Exercise(
        title: "यहाँ क्या गलत है?",
        instructions: "चुनें कि वाक्य में क्या गलत या असंभव है।",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "जॉन ने सोने जाने से पहले आधी रात को नाश्ता (ब्रेकफास्ट) किया।", options: ["लोग खाना नहीं खाते हैं", "नाश्ता सुबह का भोजन है, आधी रात का नहीं", "जॉन को सोना नहीं चाहिए", "आधी रात दोपहर में होती है"], correctAnswer: "नाश्ता सुबह का भोजन है, आधी रात का नहीं", explanation: "नाश्ता या ब्रेकफास्ट दिन का पहला भोजन होता है जो सुबह खाया जाता है।"),
            ExerciseItem(prompt: "कुत्ता डाकिया पर भौंका और फिर एक पक्षी को पकड़ने के लिए छत के ऊपर उड़ गया।", options: ["कुत्ते भौंकते नहीं हैं", "कुत्ते उड़ नहीं सकते", "डाकिया पत्र नहीं बांटते", "पक्षी उड़ते नहीं हैं"], correctAnswer: "कुत्ते उड़ नहीं सकते", explanation: "कुत्तों के पंख नहीं होते हैं, वे उड़ नहीं सकते।"),
            ExerciseItem(prompt: "सारा ने जुलाई के दौरान आउटडोर पूल में तैरने जाने के लिए अपना गर्म विंटर कोट और मोज़े पहने।", options: ["लोग जुलाई में नहीं तैरते", "तैरने के लिए विंटर कोट और दस्ताने/मोज़े नहीं पहने जाते", "आउटडोर पूल नहीं होते हैं", "कोट गर्मियों में पहने जाते हैं"], correctAnswer: "तैरने के लिए विंटर कोट और दस्ताने/मोज़े नहीं पहने जाते", explanation: "तैराकी के लिए उपयुक्त तैरने के कपड़े चाहिए, सर्दियों के कोट नहीं।"),
            ExerciseItem(prompt: "दीवार की घड़ी ने तेरह बजाए, इसलिए आर्थर समझ गया कि यह उसकी सुबह की कॉफ़ी का समय था।", options: ["घड़ियाँ दीवारों पर नहीं लगतीं", "मानक घड़ियों में केवल बारह घंटे होते हैं", "कॉफ़ी सुबह का पेय नहीं है", "आर्थर कॉफ़ी नहीं पीता"], correctAnswer: "मानक घड़ियों में केवल बारह घंटे होते हैं", explanation: "पारंपरिक घड़ियों में केवल 12 घंटे तक का ही समय प्रदर्शित होता है।"),
            ExerciseItem(prompt: "पॉल अपने दोस्त से मिलने के लिए गहरी झील के ऊपर साइकिल चलाकर गया।", options: ["साइकिल पानी पर नहीं चल सकती", "झीलों में मछलियाँ नहीं होतीं", "दोस्त एक-दूसरे से नहीं मिलते", "साइकिल में पैडल नहीं होते"], correctAnswer: "साइकिल पानी पर नहीं चल सकती", explanation: "साइकिल ज़मीन पर चलने वाला वाहन है और पानी में डूब जाएगी।"),
            ExerciseItem(prompt: "लिंडा ने पीने का ठंडा पानी बनाने के लिए एक बर्तन में बर्फ के कुछ टुकड़े उबाले।", options: ["बर्फ के टुकड़े जैसी कोई चीज़ नहीं होती", "बर्फ के टुकड़ों को उबालने से वे गर्म पानी बनते हैं, ठंडा नहीं", "बर्तन में बर्फ नहीं रखी जा सकती", "पीने का पानी सेहत के लिए अच्छा नहीं है"], correctAnswer: "बर्फ के टुकड़ों को उबालने से वे गर्म पानी बनते हैं, ठंडा नहीं", explanation: "उबालने से पानी गर्म होता है, ठंडा नहीं।"),
            ExerciseItem(prompt: "भूखी बिल्ली से बचने के लिए मछली पेड़ पर चढ़ गई।", options: ["मछलियाँ पेड़ पर नहीं चढ़ सकतीं", "बिल्लियाँ मछली नहीं खातीं", "पेड़ों पर पत्तियाँ नहीं उगतीं", "मछलियाँ पेड़ों पर रहती हैं"], correctAnswer: "मछलियाँ पेड़ पर नहीं चढ़ सकतीं", explanation: "मछलियाँ पानी में रहती हैं और उनके हाथ-पैर नहीं होते कि वे पेड़ पर चढ़ सकें।"),
            ExerciseItem(prompt: "रॉबर्ट ने चिकन नूडल सूप पीने के लिए कांटे का इस्तेमाल किया।", options: ["कांटे से तरल सूप नहीं पिया जा सकता", "सूप चिकन से नहीं बनता", "रॉबर्ट को चाकू का उपयोग करना चाहिए", "सूप बर्तनों से नहीं खाया जाता"], correctAnswer: "कांटे से तरल सूप नहीं पिया जा सकता", explanation: "कांटे में छेद होते हैं जिससे तरल बह जाता है; सूप पीने के लिए चम्मच का उपयोग किया जाता है।"),
            ExerciseItem(prompt: "चूंकि तेज़ बारिश हो रही थी, नैन्सी ने अपने गीले कपड़े सुखाने के लिए बाहर की रस्सी पर लटका दिए।", options: ["बारिश से चीजें गीली नहीं होतीं", "बारिश में बाहर कपड़े नहीं सूखेंगे", "कपड़े सुखाने की रस्सी केवल अंदर उपयोग की जाती है", "नैन्सी कपड़े नहीं पहनती"], correctAnswer: "बारिश में बाहर कपड़े नहीं सूखेंगे", explanation: "बारिश में कपड़े और अधिक गीले हो जाएंगे, वे सूखेंगे नहीं।"),
            ExerciseItem(prompt: "विमान हवाई अड्डे पर सुरक्षित रूप से उतरा, और सभी यात्री ट्रेन की पटरियों पर बाहर आ गए।", options: ["हवाई जहाज़ हवाई अड्डे पर नहीं उतरते", "यात्री हवाई जहाज़ से यात्रा नहीं करते", "हवाई अड्डे के गेट पर ट्रेन की पटरियाँ नहीं होतीं", "ट्रेनें पटरियों पर नहीं चलतीं"], correctAnswer: "हवाई अड्डे के गेट पर ट्रेन की पटरियाँ नहीं होतीं", explanation: "हवाई जहाज़ रनवे और गेट पर उतरते हैं, रेलवे पटरियों पर नहीं।"),
            ExerciseItem(prompt: "हेलेन ने लिविंग रूम को गर्म करने के लिए एयर कंडीशनर चालू किया।", options: ["एयर कंडीशनर कमरे ठंडे करते हैं, गर्म नहीं", "लिविंग रूम में दीवारें नहीं होतीं", "हेलेन के पास घर नहीं है", "एयर कंडीशनर बिजली का उपयोग नहीं करते"], correctAnswer: "एयर कंडीशनर कमरे ठंडे करते हैं, गर्म नहीं", explanation: "एसी का काम तापमान कम करना है, बढ़ाना नहीं।"),
            ExerciseItem(prompt: "खरगोश ने जंगल में बड़े भूरे भेड़िये का पीछा किया।", options: ["खरगोश जंगलों में नहीं रहते", "भेड़िये दौड़ते नहीं हैं", "खरगोश भेड़िये का पीछा नहीं करते", "भेड़िये भूरे नहीं होते"], correctAnswer: "खरगोश भेड़िये का पीछा नहीं करते", explanation: "भेड़िये शिकारी हैं और खरगोश उनका शिकार; खरगोश उनसे दूर भागते हैं।"),
            ExerciseItem(prompt: "जेम्स ने सर्दियों में अपने हाथों को गर्म रखने के लिए उनके लिए चमड़े के जूते खरीदे।", options: ["जूते पैरों में पहने जाते हैं, हाथों में नहीं", "जूते बनाने के लिए चमड़े का उपयोग नहीं किया जाता है", "हाथ ठंडे नहीं होते", "सर्दी ठंडी नहीं होती"], correctAnswer: "जूते पैरों में पहने जाते हैं, हाथों में नहीं", explanation: "हाथों में दस्ताने पहने जाते हैं; जूते पैरों के लिए होते हैं।"),
            ExerciseItem(prompt: "सूरज आधी रात को उगा, जिससे सुबह का आसमान चमक उठा।", options: ["सूरज सुबह उगता है, आधी रात को नहीं", "आधी रात दोपहर में होती है", "सूरज चमकीला नहीं होता", "सुबह अंधेरा होता है"], correctAnswer: "सूरज सुबह उगता है, आधी रात को नहीं", explanation: "आधी रात को सूरज दिखाई नहीं देता, वह सुबह ही उगता है।"),
            ExerciseItem(prompt: "एलिस ने अपने पसंदीदा रेडियो स्टेशन को सुनने के लिए टेलीविज़न चालू किया।", options: ["टेलीविज़न वीडियो दिखाता है, वे रेडियो नहीं हैं", "रेडियो संगीत नहीं बजाते", "एलिस को संगीत पसंद नहीं है", "टेलीविज़न में स्पीकर नहीं होते"], correctAnswer: "टेलीविज़न वीडियो दिखाता है, वे रेडियो नहीं हैं", explanation: "टेलीविज़न एक देखने का उपकरण है; रेडियो स्टेशन सुनने के लिए रेडियो का उपयोग किया जाता है।")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "पर्चे को पढ़ना",
        instructions: "दिए गए पर्चे की जानकारी पढ़ें और प्रश्न का उत्तर दें।",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "लेबल: भोजन के साथ प्रतिदिन दो बार 1 गोली लें। आपको हर दिन कुल कितनी गोलियाँ लेनी चाहिए?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "दिन में दो बार 1 गोली लेने का मतलब है 1 + 1 = 2 गोलियाँ।"),
            ExerciseItem(prompt: "लेबल: सोते समय 2 गोलियाँ लें। आपको यह दवा कब लेनी चाहिए?", options: ["सुबह में", "दोपहर के भोजन के साथ", "सोते समय", "व्यायाम से पहले"], correctAnswer: "सोते समय", explanation: "लेबल स्पष्ट रूप से सोते समय लेने का निर्देश देता है।"),
            ExerciseItem(prompt: "लेबल: दर्द के लिए आवश्यकतानुसार प्रत्येक 8 घंटे में 1 कैप्सूल लें। 24 घंटे के दिन में आप इसे कितनी बार ले सकते हैं?", options: ["2 बार", "3 बार", "4 बार", "6 बार"], correctAnswer: "3 बार", explanation: "एक दिन में 24 घंटे होते हैं। 24 को 8 से भाग देने पर 3 बार आता है।"),
            ExerciseItem(prompt: "लेबल: एमोक्सिसिलिन 250mg। दिन में तीन बार 1 गोली लें। फ्रिज में रखें। आपको यह दवा कैसे संग्रहीत करनी चाहिए?", options: ["फ्रीज़र में", "रेफ्रिजरेटर (फ्रिज) में", "गर्म अलमारी में", "सीधे धूप में"], correctAnswer: "रेफ्रिजरेटर (फ्रिज) में", explanation: "लेबल पर लिखा है 'फ्रिज में रखें' (Keep refrigerated)।"),
            ExerciseItem(prompt: "लेबल: इस दवा को लेने के दौरान शराब न पीएं। उनींदापन (नींद आना) हो सकता है। इस दवा का क्या दुष्प्रभाव चेतावनी में दिया गया है?", options: ["उनींदापन", "ऊर्जा में वृद्धि", "उच्च रक्तचाप", "छींक आना"], correctAnswer: "उनींदापन", explanation: "लेबल चेतावनी देता है कि इससे 'उनींदापन हो सकता है'।"),
            ExerciseItem(prompt: "लेबल: खाली पेट सुबह रोजाना 1 गोली लें। आपको नाश्ता कब करना चाहिए?", options: ["गोली लेने से पहले", "गोली लेने के बाद", "गोली लेने के साथ", "नाश्ता न करें"], correctAnswer: "गोली लेने के बाद", explanation: "खाली पेट दवा लेने का मतलब है कि इसे नाश्ते से पहले लेना है।"),
            ExerciseItem(prompt: "लेबल: प्रतिदिन मुँह से 1 गोली लें। मात्रा: 30। रिफिल: 2। कितनी बार रिफिल की अनुमति है?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "पर्चे पर 'रिफिल: 2' लिखा है।"),
            ExerciseItem(prompt: "लेबल: प्रभावित त्वचा क्षेत्र पर दिन में दो बार पतली परत लगाएं। निगलें नहीं। यह दवा कैसे लगाई जाती है?", options: ["इसे निगलकर", "त्वचा पर रगड़कर", "नाक में स्प्रे करके", "पानी में घोलकर"], correctAnswer: "त्वचा पर रगड़कर", explanation: "लेबल पर लिखा है 'प्रभावित त्वचा क्षेत्र पर लगाएं', यानी बाहरी प्रयोग।"),
            ExerciseItem(prompt: "लेबल: 15/10/2026 के बाद फेंक दें। आज 01/11/2026 है। क्या आप सुरक्षित रूप से यह दवा ले सकते हैं?", options: ["हाँ", "नहीं", "केवल भोजन के साथ", "केवल रात में"], correctAnswer: "नहीं", explanation: "दवा 15/10/2026 को समाप्त (एक्सपायर) हो चुकी है, जो आज से पहले थी।"),
            ExerciseItem(prompt: "लेबल: दिन में दो बार 1 गोली लें। डेयरी उत्पादों के साथ न लें। इस गोली को लेते समय आपको किस पेय से बचना चाहिए?", options: ["पानी", "दूध", "सेब का रस", "काली कॉफ़ी"], correctAnswer: "दूध", explanation: "दूध एक डेयरी उत्पाद है और लेबल के अनुसार इससे बचना चाहिए।"),
            ExerciseItem(prompt: "लेबल: उड़ान से 1 घंटा पहले 2 गोलियाँ लें। आप यह दवा क्यों लेंगे?", options: ["यात्रा के दौरान मोशन सिकनेस (उल्टी/जी मिचलाना) को रोकने के लिए", "घर पर बेहतर सोने के लिए", "सिरदर्द ठीक करने के लिए", "त्वचा के रैशेज के इलाज के लिए"], correctAnswer: "यात्रा के दौरान मोशन सिकनेस (उल्टी/जी मिचलाना) को रोकने के लिए", explanation: "उड़ान से पहले ली जाने वाली दवा आमतौर पर मोशन सिकनेस के लिए होती है।"),
            ExerciseItem(prompt: "लेबल: आई ड्रॉप। प्रत्येक आँख में दिन में दो बार 1 बूंद डालें। आपको यह दवा कहाँ डालनी चाहिए?", options: ["मुँह में", "कानों में", "आँखों में", "त्वचा पर"], correctAnswer: "आँखों में", explanation: "यह आई ड्रॉप है, जिसे आँखों में डाला जाना चाहिए।"),
            ExerciseItem(prompt: "लेबल: सिरदर्द के लिए आवश्यकतानुसार प्रत्येक 4 से 6 घंटे में 1 गोली लें। अधिकतम 4 गोलियाँ प्रतिदिन। आप एक दिन में अधिकतम कितनी गोलियाँ ले सकते हैं?", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "लेबल स्पष्ट रूप से 'अधिकतम 4 गोलियाँ प्रतिदिन' निर्देशित करता है।"),
            ExerciseItem(prompt: "लेबल: पानी के एक पूरे गिलास के साथ लें। इस गोली के साथ पानी की आवश्यकता क्यों है?", options: ["त्वचा पर घोलने के लिए", "निगलने में सहायता और पेट की खराबी से बचने के लिए", "रंग बदलने के लिए", "बेहतर स्वाद के लिए"], correctAnswer: "निगलने में सहायता और पेट की खराबी से बचने के लिए", explanation: "पानी गोली को निगलने और पेट की परत की सुरक्षा में मदद करता है।"),
            ExerciseItem(prompt: "लेबल: शाम के भोजन के साथ रोजाना 1 गोली लें। इसे लेने का सबसे अच्छा समय क्या है?", options: ["नाश्ते के समय", "दोपहर के भोजन के समय", "रात के खाने (डिनर) के समय", "आधी रात को"], correctAnswer: "रात के खाने (डिनर) के समय", explanation: "शाम का भोजन रात का खाना (डिनर) होता है।")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "मेन्यू पढ़ना",
        instructions: "मेन्यू की जानकारी का उपयोग करके प्रश्न का उत्तर दें।",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "मेन्यू: चीज़बर्गर $8.00, फ़्रेंच फ़्राइज़ $3.00, सोडा $2.00। चीज़बर्गर की कीमत कितनी है?", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "मेन्यू में चीज़बर्गर की कीमत $8.00 दी गई है।"),
            ExerciseItem(prompt: "मेन्यू: कॉफ़ी $2.50, चाय $2.00, मफ़िन $3.00। कौन सी चीज़ सबसे सस्ती है?", options: ["कॉफ़ी", "चाय", "मफ़िन", "सभी की कीमत समान है"], correctAnswer: "चाय", explanation: "$2.00 सबसे कम कीमत है जो चाय की है।"),
            ExerciseItem(prompt: "मेन्यू: टमाटर का सूप $5.00, ग्रीन सलाद $6.00, चिकन सीज़र $9.00। टमाटर सूप के एक कटोरे की कीमत कितनी है?", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "टमाटर का सूप $5.00 का सूचीबद्ध है।"),
            ExerciseItem(prompt: "मेन्यू: पैनकेक ब्रेकफास्ट $10.00, फ़्रेंच टोस्ट $9.00, बेकन साइड $4.00। फ़्रेंच टोस्ट की कीमत क्या है?", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "फ़्रेंच टोस्ट की कीमत $9.00 सूचीबद्ध है।"),
            ExerciseItem(prompt: "मेन्यू: चीज़ पिज्जा स्लाइस $4.00, पेपरोनी पिज्जा स्लाइस $4.50। पेपरोनी स्लाइस की कीमत चीज़ स्लाइस से कितनी अधिक है?", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "$4.50 में से $4.00 घटाने पर $0.50 आता है।"),
            ExerciseItem(prompt: "मेन्यू: चिकन सैंडविच $7.00, फ़िश एंड चिप्स $11.00। आपके पास $10.00 हैं। आप कौन सा भोजन खरीद सकते हैं?", options: ["चिकन सैंडविच", "फ़िश एंड चिप्स", "दोनों भोजन", "कोई भी नहीं"], correctAnswer: "चिकन सैंडविच", explanation: "$7.00 आपके बजट $10.00 से कम है, जबकि $11.00 अधिक है।"),
            ExerciseItem(prompt: "मेन्यू: किड्स मील (12 वर्ष से कम) $6.00, वयस्क बर्गर $12.00। 8 वर्ष के बच्चे के भोजन की कीमत कितनी होगी?", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "8 वर्ष का बच्चा 12 से कम है, इसलिए किड्स मील की कीमत $6.00 लागू होगी।"),
            ExerciseItem(prompt: "मेन्यू: चॉकलेट आइसक्रीम $4.00, एप्पल पाई $5.00, पाई के साथ वैनिला आइसक्रीम जोड़ने पर $1.50 अतिरिक्त। वैनिला आइसक्रीम के साथ एप्पल पाई की कीमत कितनी होगी?", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "$5.00 (पाई) + $1.50 (आइसक्रीम) = $6.50 होते हैं।"),
            ExerciseItem(prompt: "मेन्यू: टर्की रैप $8.50, चिप्स $1.50, जूस $2.00। टर्की रैप और जूस की कुल कीमत क्या है?", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "$8.50 + $2.00 = $10.50 होते हैं।"),
            ExerciseItem(prompt: "मेन्यू: लंच स्पेशल (सुबह 11 बजे से दोपहर 3 बजे तक) $9.00। सामान्य डिनर मेन्यू $15.00। दोपहर के 1:00 बजे हैं। लंच स्पेशल की कीमत क्या होगी?", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "दोपहर 1:00 बजे का समय लंच स्पेशल के समय के भीतर है, इसलिए कीमत $9.00 होगी।"),
            ExerciseItem(prompt: "मेन्यू: कॉफ़ी $2.00 (फ्री रिफिल), गर्म चाय $2.50। यदि आप तीन कप कॉफ़ी पीते हैं, तो कुल कितना भुगतान करेंगे?", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "कॉफ़ी में फ्री रिफिल है, इसलिए आप केवल शुरुआती $2.00 का भुगतान करेंगे।"),
            ExerciseItem(prompt: "मेन्यू: सब्जियों का सूप $4.00, बीफ़ स्ट्यू $7.00। किस व्यंजन में मांस है?", options: ["सब्जियों का सूप", "बीफ़ स्ट्यू", "दोनों", "कोई नहीं"], correctAnswer: "बीफ़ स्ट्यू", explanation: "बीफ़ एक प्रकार का मांस है; सब्जियां नहीं।"),
            ExerciseItem(prompt: "मेन्यू: टैको $3.00, क्वेसाडिला $6.00, सोडा $2.00। क्वेसाडिला की कीमत क्या है?", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "मेन्यू में क्वेसाडिला की कीमत $6.00 दी गई है।"),
            ExerciseItem(prompt: "मेन्यू: स्पैगेटी $12.00, लासग्ना $14.00, गार्लिक ब्रेड $3.00। गार्लिक ब्रेड की कीमत कितनी है?", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "गार्लिक ब्रेड $3.00 की सूचीबद्ध है।"),
            ExerciseItem(prompt: "मेन्यू: एग्स बेनी $11.00, ओटमील $6.00, फ्रूट बाउल $5.00। कौन सा नाश्ता सबसे महंगा है?", options: ["एग्स बेनी", "ओटमील", "फ्रूट बाउल", "सभी की कीमत समान है"], correctAnswer: "एग्स बेनी", explanation: "$11.00 सबसे अधिक कीमत है जो एग्स बेनी की है।")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "बिल समझना",
        instructions: "बिल की जानकारी पढ़ें और प्रश्न का उत्तर दें।",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "बिजली बिल: कुल देय राशि: $45.00। देय तिथि: 15 जुलाई। आपको कितनी राशि का भुगतान करना है?", options: ["$15.00", "$45.00", "15 जुलाई", "मुफ़्त"], correctAnswer: "$45.00", explanation: "कुल देय राशि $45.00 है।"),
            ExerciseItem(prompt: "पानी का बिल: देय तिथि: 10 अक्टूबर। विलंब शुल्क: $5.00। आज 12 अक्टूबर है। यदि आप आज भुगतान करते हैं तो क्या होगा?", options: ["आप सामान्य राशि का भुगतान करेंगे", "आपको $5.00 विलंब शुल्क देना होगा", "आपको छूट मिलेगी", "कुछ नहीं"], correctAnswer: "आपको $5.00 विलंब शुल्क देना होगा", explanation: "चूंकि आज देय तिथि के बाद की तारीख है, इसलिए विलंब शुल्क लागू होगा।"),
            ExerciseItem(prompt: "इंटरनेट बिल: मासिक शुल्क: $60.00। ऑटोपे छूट: -$5.00। ऑटोपे के साथ अंतिम कीमत क्या होगी?", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "$60.00 में से $5.00 घटाने पर $55.00 होते हैं।"),
            ExerciseItem(prompt: "गैस बिल: वर्तमान शुल्क: $30.00। बकाया राशि: $10.00। कुल शेष: $40.00। पिछले महीने की कितनी बकाया राशि आगे बढ़ाई गई है?", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "बकाया राशि (Unpaid Balance) पिछले महीने से आगे लाई गई राशि है, जो $10.00 है।"),
            ExerciseItem(prompt: "फ़ोन बिल: देय तिथि: 20 जून। वर्तमान तिथि: 15 जून। समय पर बिल का भुगतान करने के लिए आपके पास कितने दिन बचे हैं?", options: ["5 दिन", "20 दिन", "15 दिन", "1 दिन"], correctAnswer: "5 दिन", explanation: "20 जून में से 15 जून घटाने पर 5 दिन बचते हैं।"),
            ExerciseItem(prompt: "कचरा बिल: त्रैमासिक शुल्क (3 महीने): $36.00। प्रति माह इसके समकक्ष लागत क्या होगी?", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "$36.00 को 3 महीनों से भाग देने पर $12.00 प्रति माह आता है।"),
            ExerciseItem(prompt: "केबल बिल: कुल देय राशि: $80.00। भुगतान पाने वाला: 'XYZ केबल कंपनी'। चेक किसके नाम पर बनाया जाना चाहिए?", options: ["$80.00", "XYZ केबल कंपनी", "केबल कर्मचारी", "नकद"], correctAnswer: "XYZ केबल कंपनी", explanation: "बिल में भुगतान पाने वाले का नाम 'XYZ केबल कंपनी' निर्दिष्ट किया गया है।"),
            ExerciseItem(prompt: "उपयोगिता बिल: पानी: $20.00, गैस: $30.00, बिजली: $50.00। कुल: $100.00। किस सेवा की लागत सबसे अधिक थी?", options: ["पानी", "गैस", "बिजली", "सभी की लागत समान थी"], correctAnswer: "बिजली", explanation: "बिजली की लागत $50.00 थी, जो सबसे अधिक है।"),
            ExerciseItem(prompt: "कार बीमा: अर्ध-वार्षिक प्रीमियम: $600.00। आप इस बिल का भुगतान कितनी बार करते हैं?", options: ["हर महीने", "हर 6 महीने में (साल में दो बार)", "साल में एक बार", "हर सप्ताह"], correctAnswer: "हर 6 महीने में (साल में दो बार)", explanation: "अर्ध-वार्षिक का अर्थ है साल में दो बार, यानी हर 6 महीने में।"),
            ExerciseItem(prompt: "स्ट्रीमिंग सेवा बिल: खाता स्थिति: निलंबित (SUSPENDED)। देय शेष राशि: $15.00। सेवा क्यों काम नहीं कर रही है?", options: ["इंटरनेट बंद है", "टीवी खराब है", "बकाया राशि के कारण खाता निलंबित है", "वीडियो बफर हो रहा है"], correctAnswer: "बकाया राशि के कारण खाता निलंबित है", explanation: "बिल में लिखा है कि खाते की स्थिति निलंबित (suspended) है।"),
            ExerciseItem(prompt: "जिम सदस्यता: वार्षिक शुल्क: $120.00। मासिक शुल्क: $10.00। सालाना शुल्क कितना है?", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "वार्षिक (सालाना) शुल्क $120.00 है।"),
            ExerciseItem(prompt: "हीटिंग बिल: जनवरी: $110.00। जुलाई: $20.00। जनवरी में बिल अधिक क्यों है?", options: ["गर्मियों में गैस अधिक महंगी होती है", "सर्दियों के महीने जनवरी में अधिक हीटिंग का उपयोग किया जाता है", "जनवरी में घर खाली रहता है", "समय बदल गया था"], correctAnswer: "सर्दियों के महीने जनवरी में अधिक हीटिंग का उपयोग किया जाता है", explanation: "सर्दियों में घर को गर्म रखने के लिए हीटर का अधिक उपयोग होता है, जिससे बिल बढ़ जाता है।"),
            ExerciseItem(prompt: "क्रेडिट कार्ड बिल: न्यूनतम भुगतान: $25.00। कुल शेष राशि: $500.00। विलंब दंड से बचने के लिए आप इस महीने न्यूनतम कितनी राशि दे सकते हैं?", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "न्यूनतम भुगतान (Minimum Payment) के रूप में $25.00 स्वीकार्य है।"),
            ExerciseItem(prompt: "मेडिकल बिल: कुल शुल्क: $150.00। बीमा कवर: $120.00। मरीज की जिम्मेदारी: $30.00। आपका कितना बकाया है?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "मरीज की जिम्मेदारी (Patient Responsibility) वह राशि है जो मरीज को देनी है, जो $30.00 है।"),
            ExerciseItem(prompt: "समाचार पत्र सदस्यता: अगली नवीनीकरण तिथि: 31 दिसंबर, 2026। यदि आप नवीनीकृत करने से पहले रद्द करना चाहते हैं, तो आपको कब कॉल करना चाहिए?", options: ["31 दिसंबर, 2026 से पहले", "31 दिसंबर, 2026 के बाद", "जनवरी 2027 में", "कभी नहीं"], correctAnswer: "31 दिसंबर, 2026 से पहले", explanation: "नवीनीकरण की तारीख से पहले रद्द करने से अगला बिलिंग चक्र रुक जाता है।")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "आप क्या करेंगे?",
        instructions: "वर्णित स्थिति के लिए सबसे अच्छा विकल्प चुनें।",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "आपको अपनी रसोई में धुएं की गंध आती है लेकिन कोई आग नहीं दिखती। आपको सबसे पहले क्या करना चाहिए?", options: ["इसे अनदेखा करें", "खिड़कियां खोलें और चूल्हे की जांच करें", "बात करने के लिए किसी मित्र को कॉल करें", "वापस सो जाएं"], correctAnswer: "खिड़कियां खोलें और चूल्हे की जांच करें", explanation: "धुएं के स्रोत की जांच करना और खिड़की खोलना सुरक्षा का पहला कदम है।"),
            ExerciseItem(prompt: "आप किराने की दुकान पर हैं और महसूस करते हैं कि आप अपना बटुआ घर भूल गए हैं। सबसे अच्छा विकल्प क्या है?", options: ["बिना भुगतान किए सामान ले जाएं", "कैशियर से अपना सामान रखने के लिए कहें और इसे लेने घर जाएं", "रोते हुए दुकान से बाहर निकलें", "मैनेजर से बहस करें"], correctAnswer: "कैशियर से अपना सामान रखने के लिए कहें और इसे लेने घर जाएं", explanation: "कैशियर से सामान सुरक्षित रखने का अनुरोध करना और घर से बटुआ लाना सबसे सही व्यवहार है।"),
            ExerciseItem(prompt: "आपसे रसोई के फर्श पर एक कच्चा अंडा गिर जाता है और टूट जाता है। आपको क्या करना चाहिए?", options: ["इसे कल तक वहीं छोड़ दें", "इसे तुरंत कागज़ के तौलिये और साबुन से पोंछ लें", "इसे कालीन से ढक दें", "बिल्ली को इसे खाने दें"], correctAnswer: "इसे तुरंत कागज़ के तौलिये और साबुन से पोंछ लें", explanation: "कच्चा अंडा फर्श पर फिसलन पैदा करता है और बैक्टीरिया को आकर्षित करता है, इसलिए इसे तुरंत साफ करना चाहिए।"),
            ExerciseItem(prompt: "आपका मित्र आपको बताता है कि कल उसके पालतू कुत्ते की मृत्यु हो गई। आपको क्या कहना चाहिए?", options: ["यह तो मज़ेदार है", "मुझे आपके नुकसान के लिए बहुत खेद है", "आपको इसके बजाय एक बिल्ली पालनी चाहिए", "क्या मुझे उसके खिलौने मिल सकते हैं?"], correctAnswer: "मुझे आपके नुकसान के लिए बहुत खेद है", explanation: "दुःख के समय संवेदना व्यक्त करना ही संवेदनशील और सही प्रतिक्रिया है।"),
            ExerciseItem(prompt: "आपको किसी अज्ञात नंबर से फोन आता है जिसमें दावा किया जाता है कि आपने लॉटरी जीती है और आपके बैंक विवरण मांगे जाते हैं। आपको क्या करना चाहिए?", options: ["उन्हें तुरंत अपना विवरण दें", "फोन काट दें और कोई भी व्यक्तिगत विवरण साझा न करें", "उन्हें बाद में कॉल करने के लिए कहें", "उत्सव मनाने के लिए अपने परिवार को बुलाएं"], correctAnswer: "फोन काट दें और कोई भी व्यक्तिगत विवरण साझा न करें", explanation: "अज्ञान कॉल करने वालों द्वारा बैंक विवरण मांगना आमतौर पर धोखाधड़ी (स्कैम) होता है।"),
            ExerciseItem(prompt: "आपको गर्म कमरे में खड़े होने पर चक्कर और कमजोरी महसूस होती है। आपको क्या करना चाहिए?", options: ["खड़े रहें और अपनी आँखें बंद करें", "तुरंत बैठ जाएं और थोड़ा पानी पीएं", "बाथरूम की तरफ दौड़ें", "गोल चक्कर काटें"], correctAnswer: "तुरंत बैठ जाएं और थोड़ा पानी पीएं", explanation: "बैठने से गिरने का डर नहीं रहता और पानी पीने से कमजोरी में राहत मिलती है।"),
            ExerciseItem(prompt: "आपको रसोई के सिंक के नीचे से पानी रिसता हुआ दिखाई देता है। आपको सबसे पहले क्या करना चाहिए?", options: ["पेंटर को बुलाएं", "पानी को इकट्ठा करने के लिए रिसाव के नीचे एक बाल्टी रखें", "रसोई के फर्श को बाद में साफ करें", "बत्तियां बंद कर दें"], correctAnswer: "पानी को इकट्ठा करने के लिए रिसाव के नीचे एक बाल्टी रखें", explanation: "बाल्टी रखने से पानी फर्श पर फैलने से रुकता है और नुकसान से बचाव होता है।"),
            ExerciseItem(prompt: "आपको एक डिनर पार्टी में आमंत्रित किया गया है लेकिन आप जा नहीं सकते। आपको क्या करना चाहिए?", options: ["बस वहां न जाएं", "मेजबान को पहले ही सूचित कर दें कि आप उपस्थित नहीं हो पाएंगे", "बिना बताए देर से पहुंचे", "जवाब देने के बजाय उपहार भेजें"], correctAnswer: "मेजबान को पहले ही सूचित कर दें कि आप उपस्थित नहीं हो पाएंगे", explanation: "मेजबान को पहले बताना विनम्रता है ताकि वे अपनी व्यवस्था में सुधार कर सकें।"),
            ExerciseItem(prompt: "आप दुर्घटनावश किसी मित्र के घर पर एक सजावटी फूलदान तोड़ देते हैं। सही प्रतिक्रिया क्या है?", options: ["टुकड़ों को सोफे के नीचे छिपा दें", "माफ़ी मांगें और इसे बदलने की पेशकश करें", "दिखावा करें कि आपने ऐसा नहीं किया", "कुत्ते पर दोष मढ़ें"], correctAnswer: "माफ़ी मांगें और इसे बदलने की पेशकश करें", explanation: "ईमानदारी और नुकसान को ठीक करने की पेशकश करना विनम्र और जिम्मेदार व्यवहार है।"),
            ExerciseItem(prompt: "आपको अपने घर की चाबियां नहीं मिल रही हैं और आप बाहर बंद हैं। सबसे अच्छा कदम क्या है?", options: ["अंदर जाने के लिए खिड़की तोड़ दें", "किसी परिवार के सदस्य को बुलाएं जिसके पास अतिरिक्त चाबी हो या किसी ताला बनाने वाले को बुलाएं", "हमेशा के लिए बरामदे में प्रतीक्षा करें", "दरवाज़े पर लात मारें"], correctAnswer: "किसी परिवार के सदस्य को बुलाएं जिसके पास अतिरिक्त चाबी हो या किसी ताला बनाने वाले को बुलाएं", explanation: "अतिरिक्त चाबी की व्यवस्था करना या पेशेवर की मदद लेना सबसे सुरक्षित है।"),
            ExerciseItem(prompt: "आप देखते हैं कि सड़क की बत्तियां जल रही हैं लेकिन आपके घर में बिजली नहीं है। आपको क्या करना चाहिए?", options: ["अपने सर्किट ब्रेकर बॉक्स की जांच करें", "एक नया टेलीविज़न खरीदें", "तुरंत सो जाएं", "पुलिस को बुलाएं"], correctAnswer: "अपने सर्किट ब्रेकर बॉक्स की जांच करें", explanation: "सर्किट ब्रेकर की जांच करने से पता चलता है कि समस्या केवल आपके घर की है या पूरे क्षेत्र की।"),
            ExerciseItem(prompt: "आप एक बुजुर्ग पड़ोसी को किराने का भारी सामान ले जाने में संघर्ष करते हुए देखते हैं। आपको क्या करना चाहिए?", options: ["उनके पास से तेजी से निकल जाएं", "उन्हें सामान ले जाने में मदद की पेशकश करें", "उनकी एक फोटो लें", "उन्हें तेज चलने के लिए कहें"], correctAnswer: "उन्हें सामान ले जाने में मदद की पेशकश करें", explanation: "मदद की पेशकश करना सामाजिक शिष्टाचार और दयालुता दर्शाता है।"),
            ExerciseItem(prompt: "आप कॉफ़ी की एक चुस्की लेते हैं और महसूस करते हैं कि यह बहुत गर्म है और इससे आपका मुँह जल जाता है। आपको क्या करना चाहिए?", options: ["बाकी कॉफ़ी जल्दी से पी लें", "इसे सावधानी से थूक दें और ठंडा पानी पीएं", "ज़ोर से चिल्लाएं", "मग फेंक दें"], correctAnswer: "इसे सावधानी से थूक दें और ठंडा पानी पीएं", explanation: "ठंडा पानी जलन को शांत करने और आराम पहुंचाने में मदद करता है।"),
            ExerciseItem(prompt: "डॉक्टर एक नई दवा लिखते हैं लेकिन आप नहीं समझ पाते कि इसे कैसे लेना है। आपको क्या करना चाहिए?", options: ["खुराक का अंदाज़ा लगाएं", "फार्मासिस्ट (दवा विक्रेता) या डॉक्टर से इसे समझाने के लिए कहें", "दवा न लें", "सोशल मीडिया पर खोजें"], correctAnswer: "फार्मासिस्ट (दवा विक्रेता) या डॉक्टर से इसे समझाने के लिए कहें", explanation: "चिकित्सा पेशेवर ही दवा लेने के सही निर्देश देने का सबसे भरोसेमंद स्रोत हैं।"),
            ExerciseItem(prompt: "आपसे गलती से अपने दोस्त के सफ़ेद कालीन पर रेड वाइन गिर जाती है। आपको क्या करना चाहिए?", options: ["दाग पर एक कुर्सी रख दें", "माफी मांगें और इसे तुरंत साफ करने में मदद करें", "पार्टी से जल्दी चले जाएं", "उन्हें बताएं कि यह अंगूर का रस था"], correctAnswer: "माफी मांगें और इसे तुरंत साफ करने में मदद करें", explanation: "तुरंत साफ करने से कालीन पर जिद्दी दाग बनने से रोका जा सकता है।"),
            ExerciseItem(prompt: "आप अपने स्मोक अलार्म को हर मिनट एक छोटी बीप की आवाज़ करते हुए सुनते हैं। इसका क्या मतलब है?", options: ["आग लगी है", "बैटरी कम है और इसे बदलने की आवश्यकता है", "अलार्म टूट गया है", "कुछ नहीं"], correctAnswer: "बैटरी कम है और इसे बदलने की आवश्यकता है", explanation: "लगातार छोटी बीप की आवाज बैटरी खत्म होने का संकेत देती है।"),
            ExerciseItem(prompt: "आप गाड़ी चला रहे हैं और अपने पीछे फ्लैशिंग लाइट के साथ एक आपातकालीन वाहन (एंबुलेंस/फायर ब्रिगेड) देखते हैं। आपको क्या करना चाहिए?", options: ["उसके आगे रहने के लिए गति बढ़ाएं", "सड़क के किनारे सुरक्षित रूप से गाड़ी रोकें और रुक जाएं", "लेन के बीच में तुरंत रुक जाएं", "इसे अनदेखा करें"], correctAnswer: "सड़क के किनारे सुरक्षित रूप से गाड़ी रोकें और रुक जाएं", explanation: "आपातकालीन वाहन को रास्ता देना कानूनन आवश्यक है और यह दूसरों की जान बचाता है।"),
            ExerciseItem(prompt: "आपको अपने बैंक से एक ईमेल मिलता है जिसमें आपसे पासवर्ड सत्यापित करने के लिए एक लिंक पर क्लिक करने को कहा जाता है। आपको क्या करना चाहिए?", options: ["लिंक पर क्लिक करें और अपना पासवर्ड डालें", "ईमेल को डिलीट करें या अपने बैंक के आधिकारिक नंबर पर संपर्क करें", "इसे अपने दोस्तों को फॉरवर्ड करें", "पासवर्ड के साथ ईमेल का उत्तर दें"], correctAnswer: "ईमेल को डिलीट करें या अपने बैंक के आधिकारिक नंबर पर संपर्क करें", explanation: "बैंक कभी भी ईमेल लिंक के ज़रिए पासवर्ड नहीं मांगते; यह एक धोखाधड़ी (फ़िशिंग) है।"),
            ExerciseItem(prompt: "आपको फुटपाथ पर एक बटुआ मिलता है जिसमें पैसे और एक आईडी कार्ड है। आपको क्या करना चाहिए?", options: ["पैसे रख लें और बटुआ फेंक दें", "इसे पुलिस को सौंप दें या आईडी का उपयोग करके मालिक से संपर्क करने का प्रयास करें", "इसे फुटपाथ पर छोड़ दें", "इसे किसी अजनबी को दे दें"], correctAnswer: "इसे पुलिस को सौंप दें या आईडी का उपयोग करके मालिक से संपर्क करने का प्रयास करें", explanation: "खोई हुई वस्तु को उसके असली मालिक तक पहुँचाना ही ईमानदारी है।"),
            ExerciseItem(prompt: "आपका स्मोक अलार्म तेज़ और निरंतर आवाज़ के साथ बजता है। आपको क्या करना चाहिए?", options: ["इसे अनदेखा करें और इसके रुकने का इंतज़ार करें", "आग की जांच करें और यदि आवश्यक हो तो सुरक्षित रूप से इमारत से बाहर निकलें", "तुरंत बैटरी बदलें", "सोने चले जाएं"], correctAnswer: "आग की जांच करें और यदि आवश्यक हो तो सुरक्षित रूप से इमारत से बाहर निकलें", explanation: "निरंतर बजता अलार्म संभावित आग या धुएं का संकेत है, इसलिए तुरंत सुरक्षित बाहर निकलना चाहिए।")
        ]
    )
}
