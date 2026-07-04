import Foundation

struct HindiLanguageExerciseData {

    static let allExercises: [Exercise] = [
        categoryCrossOutEasy,
        categoryCrossOutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonymsEasy,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencing
    ]

    // MARK: - Exercise 1: Category Cross-Out — Easy
    private static let categoryCrossOutEasy = Exercise(
        id: UUID(),
        title: "वर्ग से बाहर — आसान",
        instructions: "वह शब्द चुनें जो समूह में नहीं आता।",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "सेब, नाशपाती, गाजर, बेर", options: ["सेब", "नाशपाती", "गाजर", "बेर"], correctAnswer: "गाजर", explanation: "सब्जी, फल नहीं"),
            ExerciseItem(id: UUID(), prompt: "कार, बस, चम्मच, ट्रक", options: ["कार", "बस", "चम्मच", "ट्रक"], correctAnswer: "चम्मच", explanation: "वाहन नहीं"),
            ExerciseItem(id: UUID(), prompt: "सोना, बिल्ली, कुत्ता, पक्षी", options: ["सोना", "बिल्ली", "कुत्ता", "पक्षी"], correctAnswer: "सोना", explanation: "धातु, जानवर नहीं"),
            ExerciseItem(id: UUID(), prompt: "कमीज, पैंट, कांटा, टोपी", options: ["कमीज", "पैंट", "कांटा", "टोपी"], correctAnswer: "कांटा", explanation: "कपड़ा नहीं"),
            ExerciseItem(id: UUID(), prompt: "कुर्सी, मेज, सेब, बिस्तर", options: ["कुर्सी", "मेज", "सेब", "बिस्तर"], correctAnswer: "सेब", explanation: "खाना, फर्नीचर नहीं"),
            ExerciseItem(id: UUID(), prompt: "हथौड़ा, पाना, तकिया, ड्रिल", options: ["हथौड़ा", "पाना", "तकिया", "ड्रिल"], correctAnswer: "तकिया", explanation: "औजार नहीं"),
            ExerciseItem(id: UUID(), prompt: "जनवरी, मार्च, शुक्रवार, मई", options: ["जनवरी", "मार्च", "शुक्रवार", "मई"], correctAnswer: "शुक्रवार", explanation: "सप्ताह का दिन, महीना नहीं"),
            ExerciseItem(id: UUID(), prompt: "पेरिस, लंदन, बृहस्पति, रोम", options: ["पेरिस", "लंदन", "बृहस्पति", "रोम"], correctAnswer: "बृहस्पति", explanation: "ग्रह, शहर नहीं"),
            ExerciseItem(id: UUID(), prompt: "कुत्ता, बिल्ली, पेड़, चूहा", options: ["कुत्ता", "बिल्ली", "पेड़", "चूहा"], correctAnswer: "पेड़", explanation: "जानवर नहीं"),
            ExerciseItem(id: UUID(), prompt: "आँख, नाक, कार, कान", options: ["आँख", "नाक", "कार", "कान"], correctAnswer: "कार", explanation: "शरीर का अंग नहीं"),
            ExerciseItem(id: UUID(), prompt: "दूध, जूस, रोटी, पानी", options: ["दूध", "जूस", "रोटी", "पानी"], correctAnswer: "रोटी", explanation: "पेय नहीं"),
            ExerciseItem(id: UUID(), prompt: "सोफा, बिस्तर, चूल्हा, कुर्सी", options: ["सोफा", "बिस्तर", "चूल्हा", "कुर्सी"], correctAnswer: "चूल्हा", explanation: "उपकरण, फर्नीचर नहीं"),
            ExerciseItem(id: UUID(), prompt: "गुलाब, ट्यूलिप, डेज़ी, कार", options: ["गुलाब", "ट्यूलिप", "डेज़ी", "कार"], correctAnswer: "कार", explanation: "फूल नहीं"),
            ExerciseItem(id: UUID(), prompt: "कलम, पेंसिल, क्रेयॉन, कांटा", options: ["कलम", "पेंसिल", "क्रेयॉन", "कांटा"], correctAnswer: "कांटा", explanation: "लिखने का उपकरण नहीं"),
            ExerciseItem(id: UUID(), prompt: "सोफा, कालीन, लैम्प, मुर्गा", options: ["सोफा", "कालीन", "लैम्प", "मुर्गा"], correctAnswer: "मुर्गा", explanation: "घर की वस्तु नहीं"),
            ExerciseItem(id: UUID(), prompt: "सूरज, बारिश, हवा, कमीज", options: ["सूरज", "बारिश", "हवा", "कमीज"], correctAnswer: "कमीज", explanation: "मौसम नहीं"),
            ExerciseItem(id: UUID(), prompt: "थाली, कटोरी, कप, कार", options: ["थाली", "कटोरी", "कप", "कार"], correctAnswer: "कार", explanation: "बर्तन नहीं"),
            ExerciseItem(id: UUID(), prompt: "बस, ट्रेन, नाव, बिल्ली", options: ["बस", "ट्रेन", "नाव", "बिल्ली"], correctAnswer: "बिल्ली", explanation: "वाहन नहीं"),
            ExerciseItem(id: UUID(), prompt: "टोपी, मोजे, जूते, कड़ाही", options: ["टोपी", "मोजे", "जूते", "कड़ाही"], correctAnswer: "कड़ाही", explanation: "रसोई का बर्तन, कपड़ा नहीं"),
            ExerciseItem(id: UUID(), prompt: "बिल्ली, कुत्ता, पक्षी, ट्रक", options: ["बिल्ली", "कुत्ता", "पक्षी", "ट्रक"], correctAnswer: "ट्रक", explanation: "जानवर नहीं"),
            ExerciseItem(id: UUID(), prompt: "मार्च, अप्रैल, मंगलवार, जून", options: ["मार्च", "अप्रैल", "मंगलवार", "जून"], correctAnswer: "मंगलवार", explanation: "सप्ताह का दिन, महीना नहीं"),
            ExerciseItem(id: UUID(), prompt: "लाल, नीला, मेज, हरा", options: ["लाल", "नीला", "मेज", "हरा"], correctAnswer: "मेज", explanation: "रंग नहीं"),
            ExerciseItem(id: UUID(), prompt: "चाकू, कांटा, चम्मच, बिस्तर", options: ["चाकू", "कांटा", "चम्मच", "बिस्तर"], correctAnswer: "बिस्तर", explanation: "फर्नीचर, बर्तन नहीं"),
            ExerciseItem(id: UUID(), prompt: "चील, बाज, उल्लू, मछली", options: ["चील", "बाज", "उल्लू", "मछली"], correctAnswer: "मछली", explanation: "पक्षी नहीं"),
            ExerciseItem(id: UUID(), prompt: "रुपया, निकेल, डॉलर, जैकेट", options: ["रुपया", "निकेल", "डॉलर", "जैकेट"], correctAnswer: "जैकेट", explanation: "मुद्रा नहीं"),
            ExerciseItem(id: UUID(), prompt: "शेर, भालू, बाघ, पिज़्ज़ा", options: ["शेर", "भालू", "बाघ", "पिज़्ज़ा"], correctAnswer: "पिज़्ज़ा", explanation: "जानवर नहीं"),
            ExerciseItem(id: UUID(), prompt: "सेब, केला, गाजर, अंगूर", options: ["सेब", "केला", "गाजर", "अंगूर"], correctAnswer: "गाजर", explanation: "सब्जी, फल नहीं"),
            ExerciseItem(id: UUID(), prompt: "कुर्सी, मेज, डेस्क, डॉल्फिन", options: ["कुर्सी", "मेज", "डेस्क", "डॉल्फिन"], correctAnswer: "डॉल्फिन", explanation: "समुद्री जानवर, फर्नीचर नहीं"),
            ExerciseItem(id: UUID(), prompt: "रॉबिन, चील, सालमन, तोता", options: ["रॉबिन", "चील", "सालमन", "तोता"], correctAnswer: "सालमन", explanation: "मछली, पक्षी नहीं"),
            ExerciseItem(id: UUID(), prompt: "क्रिकेट, टेनिस, शतरंज, फुटबॉल", options: ["क्रिकेट", "टेनिस", "शतरंज", "फुटबॉल"], correctAnswer: "शतरंज", explanation: "बोर्ड गेम, खेल नहीं")
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out — Hard
    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "वर्ग से बाहर — कठिन",
        instructions: "वह शब्द चुनें जो समूह में नहीं आता।",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "उपमा, रूपक, अतिशयोक्ति, अनुच्छेद", options: ["उपमा", "रूपक", "अतिशयोक्ति", "अनुच्छेद"], correctAnswer: "अनुच्छेद", explanation: "पाठ संरचना, अलंकार नहीं"),
            ExerciseItem(id: UUID(), prompt: "जांघ की हड्डी, पिंडली, त्रिज्या, कॉर्निया", options: ["जांघ की हड्डी", "पिंडली", "त्रिज्या", "कॉर्निया"], correctAnswer: "कॉर्निया", explanation: "आँख का भाग, हड्डी नहीं"),
            ExerciseItem(id: UUID(), prompt: "बीथोवेन, मोज़ार्ट, पिकासो, चोपिन", options: ["बीथोवेन", "मोज़ार्ट", "पिकासो", "चोपिन"], correctAnswer: "पिकासो", explanation: "चित्रकार, संगीतकार नहीं"),
            ExerciseItem(id: UUID(), prompt: "कार्डिगन, ब्लेज़र, टर्टलनेक, स्टिलेटो", options: ["कार्डिगन", "ब्लेज़र", "टर्टलनेक", "स्टिलेटो"], correctAnswer: "स्टिलेटो", explanation: "जूता, ऊपरी कपड़ा नहीं"),
            ExerciseItem(id: UUID(), prompt: "टेम्स, नील, अमेज़न, एवरेस्ट", options: ["टेम्स", "नील", "अमेज़न", "एवरेस्ट"], correctAnswer: "एवरेस्ट", explanation: "पर्वत, नदी नहीं"),
            ExerciseItem(id: UUID(), prompt: "संस्मरण, जीवनी, आत्मकथा, सॉनेट", options: ["संस्मरण", "जीवनी", "आत्मकथा", "सॉनेट"], correctAnswer: "सॉनेट", explanation: "कविता, जीवन वृत्तांत नहीं"),
            ExerciseItem(id: UUID(), prompt: "इंसुलिन, एड्रेनालिन, एस्ट्रोजन, इबुप्रोफेन", options: ["इंसुलिन", "एड्रेनालिन", "एस्ट्रोजन", "इबुप्रोफेन"], correctAnswer: "इबुप्रोफेन", explanation: "निर्मित दवा, प्राकृतिक हार्मोन नहीं"),
            ExerciseItem(id: UUID(), prompt: "सेल्सियस, फ़ारेनहाइट, केल्विन, डेसिबल", options: ["सेल्सियस", "फ़ारेनहाइट", "केल्विन", "डेसिबल"], correctAnswer: "डेसिबल", explanation: "ध्वनि मापता है, तापमान नहीं"),
            ExerciseItem(id: UUID(), prompt: "जूरी, जज, बेलिफ, वादी", options: ["जूरी", "जज", "बेलिफ", "वादी"], correctAnswer: "वादी", explanation: "मुकदमे का पक्ष, न्यायालय का अधिकारी नहीं"),
            ExerciseItem(id: UUID(), prompt: "सॉनेट, हाइकू, लिमरिक, गद्य", options: ["सॉनेट", "हाइकू", "लिमरिक", "गद्य"], correctAnswer: "गद्य", explanation: "काव्य रूप नहीं"),
            ExerciseItem(id: UUID(), prompt: "सोप्रानो, ऑल्टो, टेनर, कंडक्टर", options: ["सोप्रानो", "ऑल्टो", "टेनर", "कंडक्टर"], correctAnswer: "कंडक्टर", explanation: "गायन स्वर नहीं"),
            ExerciseItem(id: UUID(), prompt: "प्रभाववाद, अतियथार्थवाद, क्यूबिज़्म, जैज़", options: ["प्रभाववाद", "अतियथार्थवाद", "क्यूबिज़्म", "जैज़"], correctAnswer: "जैज़", explanation: "संगीत शैली, कला आंदोलन नहीं"),
            ExerciseItem(id: UUID(), prompt: "स्टॉकहोम, ओस्लो, हेलसिंकी, ब्रसेल्स", options: ["स्टॉकहोम", "ओस्लो", "हेलसिंकी", "ब्रसेल्स"], correctAnswer: "ब्रसेल्स", explanation: "बेल्जियम, स्कैंडिनेवियाई राजधानी नहीं"),
            ExerciseItem(id: UUID(), prompt: "माणिक, नीलम, पन्ना, ग्रेनाइट", options: ["माणिक", "नीलम", "पन्ना", "ग्रेनाइट"], correctAnswer: "ग्रेनाइट", explanation: "पत्थर, रत्न नहीं"),
            ExerciseItem(id: UUID(), prompt: "अपेंडिक्स, पित्ताशय, अग्न्याशय, जांघ की हड्डी", options: ["अपेंडिक्स", "पित्ताशय", "अग्न्याशय", "जांघ की हड्डी"], correctAnswer: "जांघ की हड्डी", explanation: "हड्डी, अंग नहीं"),
            ExerciseItem(id: UUID(), prompt: "चेलो, वायोला, हार्प, ओबो", options: ["चेलो", "वायोला", "हार्प", "ओबो"], correctAnswer: "ओबो", explanation: "वायु वाद्य, तार वाद्य नहीं"),
            ExerciseItem(id: UUID(), prompt: "फ्रेस्को, मोज़ेक, लिथोग्राफ, सोनाटा", options: ["फ्रेस्को", "मोज़ेक", "लिथोग्राफ", "सोनाटा"], correctAnswer: "सोनाटा", explanation: "संगीत, दृश्य कला नहीं"),
            ExerciseItem(id: UUID(), prompt: "द्वीपसमूह, फियोर्ड, पठार, बोली", options: ["द्वीपसमूह", "फियोर्ड", "पठार", "बोली"], correctAnswer: "बोली", explanation: "भाषा भिन्नता, भौगोलिक विशेषता नहीं"),
            ExerciseItem(id: UUID(), prompt: "मैग्नीशियम, कैल्शियम, पोटेशियम, पेट्रोलियम", options: ["मैग्नीशियम", "कैल्शियम", "पोटेशियम", "पेट्रोलियम"], correctAnswer: "पेट्रोलियम", explanation: "जीवाश्म ईंधन, खनिज तत्व नहीं"),
            ExerciseItem(id: UUID(), prompt: "फ्लेमेंको, टैंगो, वॉल्ट्ज़, ओपेरा", options: ["फ्लेमेंको", "टैंगो", "वॉल्ट्ज़", "ओपेरा"], correctAnswer: "ओपेरा", explanation: "स्वर कला, नृत्य नहीं"),
            ExerciseItem(id: UUID(), prompt: "धमनी, शिरा, केशिका, कण्डरा", options: ["धमनी", "शिरा", "केशिका", "कण्डरा"], correctAnswer: "कण्डरा", explanation: "मांसपेशी को हड्डी से जोड़ती है, रक्त वाहिका नहीं"),
            ExerciseItem(id: UUID(), prompt: "टुंड्रा, टैगा, सवाना, डेल्टा", options: ["टुंड्रा", "टैगा", "सवाना", "डेल्टा"], correctAnswer: "डेल्टा", explanation: "नदी का भूरूप, जीवोम नहीं"),
            ExerciseItem(id: UUID(), prompt: "तूफान, चक्रवात, मानसून, भूकंप", options: ["तूफान", "चक्रवात", "मानसून", "भूकंप"], correctAnswer: "भूकंप", explanation: "भूकंपीय, मौसम नहीं"),
            ExerciseItem(id: UUID(), prompt: "उपास्थि, स्नायु, कण्डरा, न्यूरॉन", options: ["उपास्थि", "स्नायु", "कण्डरा", "न्यूरॉन"], correctAnswer: "न्यूरॉन", explanation: "तंत्रिका कोशिका, संयोजी ऊतक नहीं")
        ]
    )

    // MARK: - Exercise 3: Phrase Completion — Kahavaten
    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "कहावतें पूरी करें",
        instructions: "सही शब्द चुनकर कहावत पूरी करें।",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "अब पछताए होत क्या जब ___ चुग गए खेत।", options: ["चिड़िया", "कौवा", "तोता", "मोर"], correctAnswer: "चिड़िया"),
            ExerciseItem(id: UUID(), prompt: "नाच न जाने ___ टेढ़ा।", options: ["आंगन", "दरवाज़ा", "रास्ता", "मंच"], correctAnswer: "आंगन"),
            ExerciseItem(id: UUID(), prompt: "दूध का दूध ___ का पानी।", options: ["पानी", "नीर", "जल", "रस"], correctAnswer: "पानी"),
            ExerciseItem(id: UUID(), prompt: "जैसी करनी वैसी ___।", options: ["भरनी", "करनी", "मरनी", "धरनी"], correctAnswer: "भरनी"),
            ExerciseItem(id: UUID(), prompt: "अकेला चना भाड़ नहीं ___।", options: ["फोड़ता", "तोड़ता", "मोड़ता", "जोड़ता"], correctAnswer: "फोड़ता"),
            ExerciseItem(id: UUID(), prompt: "सौ सुनार की एक ___।", options: ["लुहार की", "बढ़ई की", "कुम्हार की", "मोची की"], correctAnswer: "लुहार की"),
            ExerciseItem(id: UUID(), prompt: "जो गरजते हैं वो ___ नहीं।", options: ["बरसते", "गरजते", "चमकते", "तपते"], correctAnswer: "बरसते"),
            ExerciseItem(id: UUID(), prompt: "घर की मुर्गी ___ बराबर।", options: ["दाल", "चावल", "रोटी", "सब्जी"], correctAnswer: "दाल"),
            ExerciseItem(id: UUID(), prompt: "लातों के भूत ___ से नहीं मानते।", options: ["बातों", "लातों", "हातों", "पातों"], correctAnswer: "बातों"),
            ExerciseItem(id: UUID(), prompt: "बंदर क्या जाने ___ का स्वाद।", options: ["अदरक", "मिर्च", "नमक", "शक्कर"], correctAnswer: "अदरक"),
            ExerciseItem(id: UUID(), prompt: "अंधों में ___ राजा।", options: ["काना", "अंधा", "बहरा", "लंगड़ा"], correctAnswer: "काना"),
            ExerciseItem(id: UUID(), prompt: "मन चंगा तो ___ में गंगा।", options: ["कठौती", "नदी", "तालाब", "कुएं"], correctAnswer: "कठौती"),
            ExerciseItem(id: UUID(), prompt: "जहाँ चाह वहाँ ___।", options: ["राह", "काह", "वाह", "साह"], correctAnswer: "राह"),
            ExerciseItem(id: UUID(), prompt: "थोथा चना ___ बाजे।", options: ["घना", "सना", "बना", "तना"], correctAnswer: "घना"),
            ExerciseItem(id: UUID(), prompt: "बोया पेड़ बबूल का तो ___ कहाँ से होय।", options: ["आम", "जाम", "धाम", "काम"], correctAnswer: "आम"),
            ExerciseItem(id: UUID(), prompt: "खोदा पहाड़ निकली ___।", options: ["चुहिया", "बिलाई", "मकड़ी", "चींटी"], correctAnswer: "चुहिया"),
            ExerciseItem(id: UUID(), prompt: "नेकी कर ___ में डाल।", options: ["दरिया", "नदी", "तालाब", "कुएं"], correctAnswer: "दरिया"),
            ExerciseItem(id: UUID(), prompt: "आम के आम ___ के दाम।", options: ["गुठलियों", "पत्तियों", "डालियों", "जड़ों"], correctAnswer: "गुठलियों"),
            ExerciseItem(id: UUID(), prompt: "पानी में रहकर ___ से बैर।", options: ["मगर", "मछली", "कछुआ", "मेंढक"], correctAnswer: "मगर"),
            ExerciseItem(id: UUID(), prompt: "करत करत अभ्यास के ___ होत सुजान।", options: ["जड़मति", "मंदमति", "अल्पमति", "कुमति"], correctAnswer: "जड़मति")
        ]
    )

    // MARK: - Exercise 4: Synonyms — Easy
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "पर्यायवाची शब्द — आसान",
        instructions: "वह शब्द चुनें जो दिए गए शब्द के समान अर्थ रखता है।",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "शब्द: गुस्सा", options: ["खुश", "क्रोधित", "शांत", "उदास"], correctAnswer: "क्रोधित"),
            ExerciseItem(id: UUID(), prompt: "शब्द: ठंडा", options: ["गर्म", "जमा हुआ", "गुनगुना", "तपता"], correctAnswer: "जमा हुआ"),
            ExerciseItem(id: UUID(), prompt: "शब्द: बड़ा", options: ["छोटा", "विशाल", "पतला", "नीचा"], correctAnswer: "विशाल"),
            ExerciseItem(id: UUID(), prompt: "शब्द: थका हुआ", options: ["सतर्क", "जागा हुआ", "थकान से चूर", "आराम से"], correctAnswer: "थकान से चूर"),
            ExerciseItem(id: UUID(), prompt: "शब्द: डरा हुआ", options: ["बहादुर", "भयभीत", "शांत", "निडर"], correctAnswer: "भयभीत"),
            ExerciseItem(id: UUID(), prompt: "शब्द: दयालु", options: ["क्रूर", "कोमल", "रूखा", "बुरा"], correctAnswer: "कोमल"),
            ExerciseItem(id: UUID(), prompt: "शब्द: तेज़", options: ["धीमा", "फुर्तीला", "आलसी", "सुस्त"], correctAnswer: "फुर्तीला"),
            ExerciseItem(id: UUID(), prompt: "शब्द: बूढ़ा", options: ["जवान", "प्राचीन", "नया", "ताज़ा"], correctAnswer: "प्राचीन"),
            ExerciseItem(id: UUID(), prompt: "शब्द: गंदा", options: ["साफ", "मैला", "स्वच्छ", "करीने से"], correctAnswer: "मैला"),
            ExerciseItem(id: UUID(), prompt: "शब्द: चमकीला", options: ["धुंधला", "अंधेरा", "प्रकाशमान", "फीका"], correctAnswer: "प्रकाशमान")
        ]
    )

    // MARK: - Exercise 5: Synonyms — Hard
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "पर्यायवाची शब्द — कठिन",
        instructions: "वह शब्द चुनें जो दिए गए शब्द के समान अर्थ रखता है।",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "शब्द: उदासीन", options: ["प्रसन्न", "दुःखी", "उत्साहित", "संतुष्ट"], correctAnswer: "दुःखी"),
            ExerciseItem(id: UUID(), prompt: "शब्द: शांत", options: ["शोरगुल", "बेचैन", "प्रशांत", "उन्मत्त"], correctAnswer: "प्रशांत"),
            ExerciseItem(id: UUID(), prompt: "शब्द: साहसी", options: ["डरपोक", "भयभीत", "वीर", "कायर"], correctAnswer: "वीर"),
            ExerciseItem(id: UUID(), prompt: "शब्द: अनोखा", options: ["साधारण", "विचित्र", "सामान्य", "सरल"], correctAnswer: "विचित्र"),
            ExerciseItem(id: UUID(), prompt: "शब्द: प्रचुर", options: ["दुर्लभ", "विपुल", "सीमित", "कम"], correctAnswer: "विपुल"),
            ExerciseItem(id: UUID(), prompt: "शब्द: कमज़ोर", options: ["शक्तिशाली", "बलवान", "निर्बल", "मजबूत"], correctAnswer: "निर्बल"),
            ExerciseItem(id: UUID(), prompt: "शब्द: स्पष्ट", options: ["धुंधला", "हल्का", "रंगीन", "फीका"], correctAnswer: "रंगीन"),
            ExerciseItem(id: UUID(), prompt: "शब्द: मितव्ययी", options: ["फिजूलखर्च", "किफायती", "उदार", "खर्चीला"], correctAnswer: "किफायती"),
            ExerciseItem(id: UUID(), prompt: "शब्द: वाकपटु", options: ["हकलाने वाला", "स्पष्टवक्ता", "चुप", "अनाड़ी"], correctAnswer: "स्पष्टवक्ता"),
            ExerciseItem(id: UUID(), prompt: "शब्द: दृढ़", options: ["कमज़ोर", "हार मानने वाला", "अटल", "लचीला"], correctAnswer: "अटल")
        ]
    )

    // MARK: - Exercise 6: Antonyms — Easy
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "विलोम शब्द — आसान",
        instructions: "वह शब्द चुनें जो दिए गए शब्द का विपरीत अर्थ रखता है।",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "शब्द: गर्म", options: ["गुनगुना", "ठंडा", "सुहाना", "तपता"], correctAnswer: "ठंडा"),
            ExerciseItem(id: UUID(), prompt: "शब्द: खुश", options: ["प्रसन्न", "आनंदित", "दुखी", "संतुष्ट"], correctAnswer: "दुखी"),
            ExerciseItem(id: UUID(), prompt: "शब्द: बड़ा", options: ["विशाल", "लंबा", "छोटा", "ऊंचा"], correctAnswer: "छोटा"),
            ExerciseItem(id: UUID(), prompt: "शब्द: तेज़", options: ["फुर्तीला", "धीमा", "चुस्त", "तत्पर"], correctAnswer: "धीमा"),
            ExerciseItem(id: UUID(), prompt: "शब्द: साफ", options: ["करीने से", "स्वच्छ", "गंदा", "ताज़ा"], correctAnswer: "गंदा"),
            ExerciseItem(id: UUID(), prompt: "शब्द: जागा हुआ", options: ["सतर्क", "सजग", "सोया हुआ", "चुस्त"], correctAnswer: "सोया हुआ"),
            ExerciseItem(id: UUID(), prompt: "शब्द: शोरगुल", options: ["कोलाहल", "शांत", "गूंजता", "तेज़"], correctAnswer: "शांत"),
            ExerciseItem(id: UUID(), prompt: "शब्द: खुला", options: ["बंद", "विस्तृत", "स्पष्ट", "मुक्त"], correctAnswer: "बंद"),
            ExerciseItem(id: UUID(), prompt: "शब्द: भरा हुआ", options: ["लदा हुआ", "खाली", "पूर्ण", "भरपूर"], correctAnswer: "खाली"),
            ExerciseItem(id: UUID(), prompt: "शब्द: प्यार", options: ["स्नेह", "चाहत", "नफ़रत", "ममता"], correctAnswer: "नफ़रत")
        ]
    )

    // MARK: - Exercise 7: Sentence Completion — Easy
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "वाक्य पूरा करें — आसान",
        instructions: "वाक्य पूरा करने के लिए सही शब्द चुनें।",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "उसने ___ को पानी दिया।", options: ["पौधों", "फर्श", "आटा", "दीवार"], correctAnswer: "पौधों"),
            ExerciseItem(id: UUID(), prompt: "उसने अपना ___ पहना।", options: ["कोट", "नाव", "बकरी", "थाली"], correctAnswer: "कोट"),
            ExerciseItem(id: UUID(), prompt: "मुझे एक गिलास ___ चाहिए।", options: ["पानी", "वेटर", "उथला", "पत्थर"], correctAnswer: "पानी"),
            ExerciseItem(id: UUID(), prompt: "उसने अपनी ___ को फोन किया।", options: ["माँ", "परेशानी", "झाग", "बादल"], correctAnswer: "माँ"),
            ExerciseItem(id: UUID(), prompt: "कुत्ते ने अपनी ___ हिलाई।", options: ["कहानी", "पूंछ", "ऊंचाई", "छत"], correctAnswer: "पूंछ"),
            ExerciseItem(id: UUID(), prompt: "उसने ___ बंद किया।", options: ["लड़ाई", "बत्ती", "रात", "पहाड़"], correctAnswer: "बत्ती"),
            ExerciseItem(id: UUID(), prompt: "उसने एक ___ बनाया।", options: ["झूठ", "झील", "केक", "पत्ता"], correctAnswer: "केक"),
            ExerciseItem(id: UUID(), prompt: "पक्षी ने ___ बनाया।", options: ["घोंसला", "आराम", "परीक्षा", "बाज़ार"], correctAnswer: "घोंसला"),
            ExerciseItem(id: UUID(), prompt: "उसने ___ पढ़ा।", options: ["अखबार", "रद्दी कागज", "सैंडपेपर", "कंकड़"], correctAnswer: "अखबार"),
            ExerciseItem(id: UUID(), prompt: "बच्चे ___ में खेले।", options: ["पार्क", "छाल", "अंधेरे", "पत्थर"], correctAnswer: "पार्क"),
            ExerciseItem(id: UUID(), prompt: "उसने ___ ठीक किया।", options: ["नल", "कड़ी", "पलक", "बादल"], correctAnswer: "नल"),
            ExerciseItem(id: UUID(), prompt: "सूप बहुत ___ था।", options: ["गर्म", "बहुत", "बिंदु", "गोल"], correctAnswer: "गर्म"),
            ExerciseItem(id: UUID(), prompt: "उसने अपनी ___ खोली।", options: ["छतरी", "वेनिला", "गोरिल्ला", "पहाड़ी"], correctAnswer: "छतरी"),
            ExerciseItem(id: UUID(), prompt: "उसने ___ चुकाया।", options: ["बिल", "भराव", "मिल", "पत्थर"], correctAnswer: "बिल"),
            ExerciseItem(id: UUID(), prompt: "बिल्ली ___ पर बैठी।", options: ["दरी", "चमगादड़", "चूहा", "बादल"], correctAnswer: "दरी"),
            ExerciseItem(id: UUID(), prompt: "उसने गर्म ___ पहना।", options: ["स्वेटर", "मक्खी मारने वाला", "बिखरा", "पत्थर"], correctAnswer: "स्वेटर"),
            ExerciseItem(id: UUID(), prompt: "उसने ___ लगाया।", options: ["बगीचा", "माफी", "वार्डन", "पहाड़"], correctAnswer: "बगीचा"),
            ExerciseItem(id: UUID(), prompt: "उसने अपनी ___ में लिखा।", options: ["डायरी", "डेयरी", "डेज़ी", "दीवार"], correctAnswer: "डायरी"),
            ExerciseItem(id: UUID(), prompt: "बच्चा ___ रहा था।", options: ["सो", "झाड़ू", "रिस", "उड़"], correctAnswer: "सो"),
            ExerciseItem(id: UUID(), prompt: "उसने ___ का बिल चुकाया।", options: ["दुकान", "भराव", "मिल", "पत्थर"], correctAnswer: "दुकान")
        ]
    )

    // MARK: - Exercise 8: Morphology
    // NOTE: Flagged for native Hindi speaker review before publishing —
    // grammatical gender agreements and verb forms need verification.
    private static let morphology = Exercise(
        id: UUID(),
        title: "शब्द रूप",
        instructions: "वाक्य पूरा करने के लिए सही रूप चुनें।",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "बच्चे तेज़ी से ___।", options: ["दौड़", "दौड़े", "दौड़ना", "दौड़ता"], correctAnswer: "दौड़े"),
            ExerciseItem(id: UUID(), prompt: "वह कक्षा की सबसे ___ छात्रा है।", options: ["होशियार", "होशियारी", "होशियारता", "होशियारन"], correctAnswer: "होशियार"),
            ExerciseItem(id: UUID(), prompt: "उसे अपना निबंध ___ है।", options: ["लिखना", "दोबारा लिखना", "अनलिखना", "प्रीलिखना"], correctAnswer: "दोबारा लिखना"),
            ExerciseItem(id: UUID(), prompt: "लंबी सैर के बाद वह ___ गई।", options: ["थकना", "थक", "थकान", "थकावट"], correctAnswer: "थक"),
            ExerciseItem(id: UUID(), prompt: "दरवाज़ा ___ था।", options: ["बंद करना", "बंद", "बंद होना", "बंदिश"], correctAnswer: "बंद"),
            ExerciseItem(id: UUID(), prompt: "उसने बहुत ___ व्यवहार किया।", options: ["बच्चा", "बचकाना", "बचपन", "बचपना"], correctAnswer: "बचकाना"),
            ExerciseItem(id: UUID(), prompt: "उसके दो ___ हैं।", options: ["बच्चा", "बच्चे", "बच्चों", "बच्ची"], correctAnswer: "बच्चे"),
            ExerciseItem(id: UUID(), prompt: "उसने दुर्घटना के बारे में ___ बात की।", options: ["सावधान", "सावधानी से", "सावधानी", "सावधानीपूर्ण"], correctAnswer: "सावधानी से"),
            ExerciseItem(id: UUID(), prompt: "केक ___ था।", options: ["ठंडा करना", "ठंडा", "ठंडा करते हुए", "ठंडक"], correctAnswer: "ठंडा"),
            ExerciseItem(id: UUID(), prompt: "वह अपने भाई से ___ है।", options: ["लंबा", "लंबी", "लंबाई", "लंबाइयाँ"], correctAnswer: "लंबी"),
            ExerciseItem(id: UUID(), prompt: "मैंने फिर अपनी चाबियाँ ___ दीं।", options: ["खोना", "खो", "खोते हुए", "खोकर"], correctAnswer: "खो"),
            ExerciseItem(id: UUID(), prompt: "निर्देश ___ थे।", options: ["स्पष्ट", "स्पष्टता से", "अस्पष्ट", "स्पष्टता"], correctAnswer: "अस्पष्ट"),
            ExerciseItem(id: UUID(), prompt: "उसने कल खिड़की ___।", options: ["तोड़ना", "तोड़ी", "टूटना", "तोड़ते"], correctAnswer: "तोड़ी"),
            ExerciseItem(id: UUID(), prompt: "वह बहुत ___ इंसान है।", options: ["मदद", "मददगार", "मदद करते हुए", "मददगारी"], correctAnswer: "मददगार"),
            ExerciseItem(id: UUID(), prompt: "फ़िल्म ___ थी।", options: ["बोर करना", "बोरिंग", "बोर हो गई", "बोरियत"], correctAnswer: "बोरिंग"),
            ExerciseItem(id: UUID(), prompt: "उसकी तीन ___ हैं।", options: ["पत्नी", "पत्नियाँ", "पत्नियों", "पत्नीयाँ"], correctAnswer: "पत्नियाँ"),
            ExerciseItem(id: UUID(), prompt: "वह ___ गाती है।", options: ["सुंदर", "सुंदरता से", "सुंदरता", "सुंदरतम"], correctAnswer: "सुंदरता से"),
            ExerciseItem(id: UUID(), prompt: "मुझे फ्रिज ___ है।", options: ["डीफ्रॉस्ट करना", "अनफ्रॉस्ट करना", "प्री-फ्रॉस्ट करना", "रीफ्रॉस्ट करना"], correctAnswer: "डीफ्रॉस्ट करना"),
            ExerciseItem(id: UUID(), prompt: "पैकेज ___ आया।", options: ["नुकसान", "नुकसानों", "नुकसान में", "क्षतिग्रस्त"], correctAnswer: "क्षतिग्रस्त"),
            ExerciseItem(id: UUID(), prompt: "मोनिका मौसम के बारे में ___ थी।", options: ["नाखुश", "प्रसन्न", "उदासीन", "चिंतित"], correctAnswer: "नाखुश")
        ]
    )

    // MARK: - Exercise 9: Analogies
    private static let analogies = Exercise(
        id: UUID(),
        title: "सादृश्य",
        instructions: "सही शब्द चुनें जो सादृश्य पूरा करे।",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "पिल्ला : कुत्ता :: बिल्ली का बच्चा : ___", options: ["बिल्ली", "कुत्ता", "पक्षी", "मछली"], correctAnswer: "बिल्ली"),
            ExerciseItem(id: UUID(), prompt: "ठंड : सर्दी :: गर्मी : ___", options: ["वसंत", "पतझड़", "गर्मी", "बारिश"], correctAnswer: "गर्मी"),
            ExerciseItem(id: UUID(), prompt: "आँख : देखना :: कान : ___", options: ["छूना", "सुनना", "सूंघना", "चखना"], correctAnswer: "सुनना"),
            ExerciseItem(id: UUID(), prompt: "रसोइया : रसोई :: डॉक्टर : ___", options: ["पुस्तकालय", "अस्पताल", "स्कूल", "दुकान"], correctAnswer: "अस्पताल"),
            ExerciseItem(id: UUID(), prompt: "दस्ताना : हाथ :: मोजा : ___", options: ["बाँह", "घुटना", "पैर", "सिर"], correctAnswer: "पैर"),
            ExerciseItem(id: UUID(), prompt: "खुश : हँसना :: दुखी : ___", options: ["मुस्कुराना", "सोना", "रोना", "दौड़ना"], correctAnswer: "रोना"),
            ExerciseItem(id: UUID(), prompt: "पक्षी : घोंसला :: भालू : ___", options: ["पेड़", "गुफा", "समुद्र", "खेत"], correctAnswer: "गुफा"),
            ExerciseItem(id: UUID(), prompt: "पेंसिल : लिखना :: ब्रश : ___", options: ["काटना", "रंगना", "झाड़ना", "हिलाना"], correctAnswer: "रंगना"),
            ExerciseItem(id: UUID(), prompt: "दिन : रात :: काला : ___", options: ["अंधेरा", "धूसर", "सफेद", "नीला"], correctAnswer: "सफेद"),
            ExerciseItem(id: UUID(), prompt: "सैनिक : सेना :: नाविक : ___", options: ["वायु सेना", "मरीन", "नौसेना", "गार्ड"], correctAnswer: "नौसेना"),
            ExerciseItem(id: UUID(), prompt: "पहिया : कार :: पंख : ___", options: ["नाव", "हवाई जहाज़", "ट्रेन", "बस"], correctAnswer: "हवाई जहाज़"),
            ExerciseItem(id: UUID(), prompt: "शिक्षक : स्कूल :: जज : ___", options: ["दफ्तर", "अस्पताल", "अदालत", "दुकान"], correctAnswer: "अदालत"),
            ExerciseItem(id: UUID(), prompt: "इल्ली : तितली :: टैडपोल : ___", options: ["मछली", "कछुआ", "मेंढक", "छिपकली"], correctAnswer: "मेंढक"),
            ExerciseItem(id: UUID(), prompt: "खाना : भूख :: पानी : ___", options: ["गीला", "प्यास", "ठंडा", "भरा"], correctAnswer: "प्यास"),
            ExerciseItem(id: UUID(), prompt: "ऊन : भेड़ :: रेशम : ___", options: ["मकड़ी", "रेशमकीड़ा", "कपास", "सन"], correctAnswer: "रेशमकीड़ा")
        ]
    )

    // MARK: - Exercise 10: Fact or Opinion
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "तथ्य या राय",
        instructions: "तय करें: यह कथन तथ्य है या राय?",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "एक सप्ताह में 7 दिन होते हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "वनीला सबसे अच्छा आइसक्रीम का स्वाद है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "पानी 0 डिग्री सेल्सियस पर जम जाता है।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "कुत्ते सबसे अच्छे पालतू जानवर हैं।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "त्रिभुज की तीन भुजाएँ होती हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "वह टीवी शो मज़ेदार है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "अब्राहम लिंकन संयुक्त राज्य अमेरिका के राष्ट्रपति थे।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "पृथ्वी सबसे अच्छा ग्रह है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "एक घंटे में 60 मिनट होते हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "ट्यूलिप गुलाब से ज़्यादा सुंदर है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "वाशिंगटन डी.सी. अमेरिका की राजधानी है।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "मुँह भरकर खाना बदतमीजी है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "एक साल में 12 महीने होते हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "सुबह जल्दी उठना अच्छा है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "2 + 2 = 4 होता है।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "समुद्र का पानी नमकीन होता है।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "बागवानी एक अच्छा शौक है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "पत्थर एक जैसे आकार के पंखों से भारी होते हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "संयुक्त राज्य अमेरिका में 50 राज्य हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "पिज़्ज़ा सबसे अच्छा खाना है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "व्यायाम स्वास्थ्य के लिए फायदेमंद है।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "शास्त्रीय संगीत उबाऊ है।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "सेब और संतरे दोनों फल हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "बिल्लियाँ कुत्तों से पालने में आसान हैं।", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "एक दिन में 24 घंटे होते हैं।", options: ["Fact", "Opinion"], correctAnswer: "Fact")
        ]
    )

    // MARK: - Exercise 11: Sequencing Steps
    private static let sequencing = Exercise(
        id: UUID(),
        title: "क्रम लगाएं",
        instructions: "ये चरण गलत क्रम में हैं। उन्हें सही क्रम में लगाएं।",
        section: .language,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "रोटी बनाना",
                options: ["बेलन से गोल बेलें", "तवा गरम करें", "एक तरफ सेंकें जब बुलबुले आएं", "दूसरी तरफ पलटें", "आटा गूंधें और रखें", "छोटी लोई बनाएं", "घी लगाकर परोसें"],
                correctAnswer: "आटा गूंधें और रखें | छोटी लोई बनाएं | बेलन से गोल बेलें | तवा गरम करें | एक तरफ सेंकें जब बुलबुले आएं | दूसरी तरफ पलटें | घी लगाकर परोसें"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "हाथ धोना",
                options: ["तौलिए से सुखाएं", "साबुन लगाएं", "पानी चालू करें", "20 सेकंड रगड़ें", "साबुन धोएं", "हाथ गीले करें"],
                correctAnswer: "पानी चालू करें | हाथ गीले करें | साबुन लगाएं | 20 सेकंड रगड़ें | साबुन धोएं | तौलिए से सुखाएं"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "चाय बनाना",
                options: ["छानकर कप में डालें", "दूध डालें", "पानी उबालें", "चीनी डालें", "चाय पत्ती और अदरक डालें"],
                correctAnswer: "पानी उबालें | चाय पत्ती और अदरक डालें | दूध डालें | चीनी डालें | छानकर कप में डालें"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "फोन करना",
                options: ["अलविदा कहें", "नंबर डायल करें", "फोन उठाएं", "बातचीत करें", "नमस्ते कहें", "फोन रखें"],
                correctAnswer: "फोन उठाएं | नंबर डायल करें | नमस्ते कहें | बातचीत करें | अलविदा कहें | फोन रखें"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "कपड़े पहनना",
                options: ["जूते पहनें", "कमीज़ पहनें", "अंदरूनी कपड़े पहनें", "मोजे पहनें", "पैंट पहनें"],
                correctAnswer: "अंदरूनी कपड़े पहनें | कमीज़ पहनें | पैंट पहनें | मोजे पहनें | जूते पहनें"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "फर्श झाड़ना",
                options: ["कूड़ेदान में डालें", "झाड़ू निकालें", "डस्टपैन से उठाएं", "कूड़ा एक जगह इकट्ठा करें"],
                correctAnswer: "झाड़ू निकालें | कूड़ा एक जगह इकट्ठा करें | डस्टपैन से उठाएं | कूड़ेदान में डालें"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "रेस्तरां में खाना ऑर्डर करना",
                options: ["खाएं", "ऑर्डर दें", "बैठें", "खाने का इंतज़ार करें", "मेनू देखें"],
                correctAnswer: "बैठें | मेनू देखें | ऑर्डर दें | खाने का इंतज़ार करें | खाएं"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "बिस्कुट बनाना",
                options: ["ठंडा होने दें", "ओवन गर्म करें", "बेकिंग ट्रे पर डालें", "सामग्री मिलाएं", "बेक करें"],
                correctAnswer: "ओवन गर्म करें | सामग्री मिलाएं | बेकिंग ट्रे पर डालें | बेक करें | ठंडा होने दें"
            )
        ]
    )
}
