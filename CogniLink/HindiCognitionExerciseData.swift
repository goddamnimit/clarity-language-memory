import Foundation

struct HindiCognitionExerciseData {

    static let allExercises: [Exercise] = [
        whatQuestions,
        whereQuestions,
        whoQuestions,
        whenQuestions,
        whyQuestions,
        howQuestions,
        yesNoQuestions,
        historyKnowledge,
        geographyKnowledge,
        entertainmentKnowledge,
        idioms,
        estimationLogic,
        deductiveReasoning,
        personalMemory,
        roteMemory
    ]

    // MARK: - Exercise 1: WH Questions — What
    private static let whatQuestions = Exercise(
        id: UUID(),
        title: "WH प्रश्न — क्या",
        instructions: "प्रत्येक प्रश्न का सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "बाल काटने और संवारने वाले को क्या कहते हैं?", options: ["नाई या हेयरस्टाइलिस्ट", "प्लंबर", "इलेक्ट्रीशियन", "ऑप्टोमेट्रिस्ट"], correctAnswer: "नाई या हेयरस्टाइलिस्ट"),
            ExerciseItem(id: UUID(), prompt: "दुनिया की सबसे लंबी नदी कौन सी है?", options: ["अमेज़न", "मिसिसिपी", "नील नदी", "यांग्त्ज़े"], correctAnswer: "नील नदी"),
            ExerciseItem(id: UUID(), prompt: "दोपहर के खाने को क्या कहते हैं?", options: ["नाश्ता", "ब्रंच", "रात का खाना", "दोपहर का खाना"], correctAnswer: "दोपहर का खाना"),
            ExerciseItem(id: UUID(), prompt: "फर्श झाड़ने के लिए क्या उपयोग करते हैं?", options: ["पोछा", "डस्टपैन", "झाड़ू", "वैक्यूम"], correctAnswer: "झाड़ू"),
            ExerciseItem(id: UUID(), prompt: "हम जिस ग्रह पर रहते हैं उसका नाम क्या है?", options: ["मंगल", "शुक्र", "पृथ्वी", "बृहस्पति"], correctAnswer: "पृथ्वी"),
            ExerciseItem(id: UUID(), prompt: "हवाई जहाज़ उड़ाने वाले को क्या कहते हैं?", options: ["इंजीनियर", "कंडक्टर", "कैप्टन", "पायलट"], correctAnswer: "पायलट"),
            ExerciseItem(id: UUID(), prompt: "गर्मी के बाद कौन सी ऋतु आती है?", options: ["वसंत", "सर्दी", "पतझड़ या शरद ऋतु", "दोबारा गर्मी"], correctAnswer: "पतझड़ या शरद ऋतु"),
            ExerciseItem(id: UUID(), prompt: "चित्र और मूर्तियाँ बनाने वाले को क्या कहते हैं?", options: ["वास्तुकार", "कलाकार", "लेखक", "संगीतकार"], correctAnswer: "कलाकार"),
            ExerciseItem(id: UUID(), prompt: "31 अक्टूबर को कौन सा त्योहार मनाया जाता है?", options: ["दिवाली", "क्रिसमस", "हैलोवीन", "होली"], correctAnswer: "हैलोवीन"),
            ExerciseItem(id: UUID(), prompt: "टूटी हुई पाइपों को ठीक करने वाले को क्या कहते हैं?", options: ["इलेक्ट्रीशियन", "बढ़ई", "प्लंबर", "ताला बनाने वाला"], correctAnswer: "प्लंबर"),
            ExerciseItem(id: UUID(), prompt: "बिना उठे टीवी चैनल बदलने के लिए क्या उपयोग करते हैं?", options: ["मोबाइल फोन", "रिमोट कंट्रोल", "टैबलेट", "कीबोर्ड"], correctAnswer: "रिमोट कंट्रोल"),
            ExerciseItem(id: UUID(), prompt: "उस खेल का नाम क्या है जिसमें छोटी सफेद गेंद को छेद में मारते हैं?", options: ["टेनिस", "क्रिकेट", "गोल्फ", "क्रोकेट"], correctAnswer: "गोल्फ"),
            ExerciseItem(id: UUID(), prompt: "लाल और सफेद रंग मिलाने से कौन सा रंग बनता है?", options: ["बैंगनी", "नारंगी", "गुलाबी", "आड़ू रंग"], correctAnswer: "गुलाबी"),
            ExerciseItem(id: UUID(), prompt: "समय जानने के लिए किस उपकरण का उपयोग करते हैं?", options: ["थर्मामीटर", "कम्पास", "कैलकुलेटर", "घड़ी"], correctAnswer: "घड़ी"),
            ExerciseItem(id: UUID(), prompt: "कागज़ काटने के लिए क्या उपयोग करते हैं?", options: ["चाकू", "कैंची", "रेज़र", "बॉक्स कटर"], correctAnswer: "कैंची"),
            ExerciseItem(id: UUID(), prompt: "खाना ठंडा रखने वाले उपकरण को क्या कहते हैं?", options: ["ओवन", "माइक्रोवेव", "फ्रिज या रेफ्रिजरेटर", "डिशवॉशर"], correctAnswer: "फ्रिज या रेफ्रिजरेटर"),
            ExerciseItem(id: UUID(), prompt: "आग बुझाने वाले को क्या कहते हैं?", options: ["पुलिसकर्मी", "पैरामेडिक", "अग्निशमन कर्मी", "सुरक्षा गार्ड"], correctAnswer: "अग्निशमन कर्मी"),
            ExerciseItem(id: UUID(), prompt: "मुफ्त में किताबें उधार लेने की जगह को क्या कहते हैं?", options: ["किताब की दुकान", "संग्रहालय", "पुस्तकालय", "स्कूल"], correctAnswer: "पुस्तकालय"),
            ExerciseItem(id: UUID(), prompt: "दांत को सुरक्षित रखने वाली कठोर बाहरी परत को क्या कहते हैं?", options: ["डेंटिन", "गूदा", "इनेमल", "क्राउन"], correctAnswer: "इनेमल"),
            ExerciseItem(id: UUID(), prompt: "देशों के बीच यात्रा के लिए किस दस्तावेज़ की ज़रूरत होती है?", options: ["ड्राइविंग लाइसेंस", "जन्म प्रमाण पत्र", "पासपोर्ट", "आधार कार्ड"], correctAnswer: "पासपोर्ट")
        ]
    )

    // MARK: - Exercise 2: WH Questions — Where
    private static let whereQuestions = Exercise(
        id: UUID(),
        title: "WH प्रश्न — कहाँ",
        instructions: "प्रत्येक प्रश्न का सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "इनडोर में तैरने के लिए कहाँ जाते हैं?", options: ["जिम", "पार्क", "तरणताल या स्विमिंग पूल", "झील"], correctAnswer: "तरणताल या स्विमिंग पूल"),
            ExerciseItem(id: UUID(), prompt: "स्वतंत्रता की मूर्ति कहाँ है?", options: ["वाशिंगटन डी.सी.", "शिकागो", "लॉस एंजिल्स", "न्यूयॉर्क"], correctAnswer: "न्यूयॉर्क"),
            ExerciseItem(id: UUID(), prompt: "बाल कटवाने कहाँ जाते हैं?", options: ["फार्मेसी", "नाई की दुकान या सैलून", "डॉक्टर के पास", "स्पा"], correctAnswer: "नाई की दुकान या सैलून"),
            ExerciseItem(id: UUID(), prompt: "जज और जूरी कहाँ मिलते हैं?", options: ["नगर पालिका", "पुलिस स्टेशन", "अदालत या न्यायालय", "स्कूल"], correctAnswer: "अदालत या न्यायालय"),
            ExerciseItem(id: UUID(), prompt: "चीन की दीवार कहाँ है?", options: ["जापान", "भारत", "चीन", "दक्षिण कोरिया"], correctAnswer: "चीन"),
            ExerciseItem(id: UUID(), prompt: "हाई स्कूल के बाद पढ़ाई के लिए कहाँ जाते हैं?", options: ["केवल तकनीकी स्कूल", "दोबारा हाई स्कूल", "विश्वविद्यालय या कॉलेज", "व्यावसायिक केंद्र"], correctAnswer: "विश्वविद्यालय या कॉलेज"),
            ExerciseItem(id: UUID(), prompt: "कोलोसियम कहाँ है?", options: ["एथेंस", "पेरिस", "मैड्रिड", "रोम, इटली"], correctAnswer: "रोम, इटली"),
            ExerciseItem(id: UUID(), prompt: "टिकट खरीदने और पार्सल भेजने कहाँ जाते हैं?", options: ["बैंक", "फार्मेसी", "किराने की दुकान", "डाकघर"], correctAnswer: "डाकघर"),
            ExerciseItem(id: UUID(), prompt: "बिग बेन कहाँ है?", options: ["पेरिस", "बर्लिन", "लंदन, इंग्लैंड", "एम्स्टर्डम"], correctAnswer: "लंदन, इंग्लैंड"),
            ExerciseItem(id: UUID(), prompt: "अमेज़न वर्षावन कहाँ है?", options: ["अफ्रीका", "दक्षिण पूर्व एशिया", "मध्य अमेरिका", "दक्षिण अमेरिका"], correctAnswer: "दक्षिण अमेरिका"),
            ExerciseItem(id: UUID(), prompt: "दवाई लेने कहाँ जाते हैं?", options: ["अस्पताल", "डॉक्टर के पास", "दवाई की दुकान या फार्मेसी", "क्लिनिक"], correctAnswer: "दवाई की दुकान या फार्मेसी"),
            ExerciseItem(id: UUID(), prompt: "माउंट रशमोर कहाँ है?", options: ["मोंटाना", "व्योमिंग", "कोलोराडो", "साउथ डकोटा, अमेरिका"], correctAnswer: "साउथ डकोटा, अमेरिका"),
            ExerciseItem(id: UUID(), prompt: "ताज महल कहाँ है?", options: ["चीन", "पाकिस्तान", "बांग्लादेश", "आगरा, भारत"], correctAnswer: "आगरा, भारत"),
            ExerciseItem(id: UUID(), prompt: "पैसे जमा करने या निकालने कहाँ जाते हैं?", options: ["डाकघर", "बैंक", "फार्मेसी", "किराने की दुकान"], correctAnswer: "बैंक"),
            ExerciseItem(id: UUID(), prompt: "मेडिकल इमरजेंसी में कहाँ जाते हैं?", options: ["फार्मेसी", "अर्जेंट केयर", "अस्पताल का आपातकालीन विभाग", "डॉक्टर का दफ्तर"], correctAnswer: "अस्पताल का आपातकालीन विभाग"),
            ExerciseItem(id: UUID(), prompt: "एफिल टॉवर कहाँ है?", options: ["बेल्जियम", "इटली", "स्पेन", "पेरिस, फ्रांस"], correctAnswer: "पेरिस, फ्रांस"),
            ExerciseItem(id: UUID(), prompt: "दांत का इलाज करवाने कहाँ जाते हैं?", options: ["आँखों का डॉक्टर", "त्वचा रोग विशेषज्ञ", "दंत चिकित्सक", "कान का डॉक्टर"], correctAnswer: "दंत चिकित्सक"),
            ExerciseItem(id: UUID(), prompt: "मुफ्त में किताबें, सीडी या डीवीडी कहाँ से उधार लें?", options: ["किताब की दुकान", "संग्रहालय", "सिनेमाघर", "पुस्तकालय"], correctAnswer: "पुस्तकालय"),
            ExerciseItem(id: UUID(), prompt: "गीज़ा के पिरामिड कहाँ हैं?", options: ["मोरक्को", "सूडान", "लीबिया", "मिस्र"], correctAnswer: "मिस्र"),
            ExerciseItem(id: UUID(), prompt: "बड़े पर्दे पर फिल्म देखने कहाँ जाते हैं?", options: ["थिएटर", "ड्राइव-इन", "सिनेमाघर", "ऑडिटोरियम"], correctAnswer: "सिनेमाघर")
        ]
    )

    // MARK: - Exercise 3: WH Questions — Who
    private static let whoQuestions = Exercise(
        id: UUID(),
        title: "WH प्रश्न — कौन",
        instructions: "प्रत्येक प्रश्न का सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "रोमियो और जूलियट किसने लिखा?", options: ["चार्ल्स डिकेंस", "विलियम शेक्सपियर", "जेन ऑस्टेन", "रवींद्रनाथ टैगोर"], correctAnswer: "विलियम शेक्सपियर"),
            ExerciseItem(id: UUID(), prompt: "नोबेल पुरस्कार जीतने वाली पहली महिला कौन थी?", options: ["रोज़ालिंड फ्रैंकलिन", "फ्लोरेंस नाइटिंगेल", "मैरी क्यूरी", "एडा लवलेस"], correctAnswer: "मैरी क्यूरी"),
            ExerciseItem(id: UUID(), prompt: "मोना लिसा किसने बनाई?", options: ["माइकेलएंजेलो", "राफेल", "लियोनार्डो दा विंची", "बोटिसेली"], correctAnswer: "लियोनार्डो दा विंची"),
            ExerciseItem(id: UUID(), prompt: "बिजली का बल्ब किसने बनाया?", options: ["निकोला टेस्ला", "बेंजामिन फ्रैंकलिन", "अलेक्जेंडर ग्राहम बेल", "थॉमस एडिसन"], correctAnswer: "थॉमस एडिसन"),
            ExerciseItem(id: UUID(), prompt: "भारत के पहले प्रधानमंत्री कौन थे?", options: ["महात्मा गांधी", "सरदार पटेल", "जवाहरलाल नेहरू", "डॉ. अंबेडकर"], correctAnswer: "जवाहरलाल नेहरू"),
            ExerciseItem(id: UUID(), prompt: "दांतों का पेशेवर इलाज कौन करता है?", options: ["ऑप्टोमेट्रिस्ट", "त्वचा रोग विशेषज्ञ", "दंत चिकित्सक", "ऑडियोलॉजिस्ट"], correctAnswer: "दंत चिकित्सक"),
            ExerciseItem(id: UUID(), prompt: "अब्राहम लिंकन कौन थे?", options: ["अमेरिका के पहले राष्ट्रपति", "अमेरिका के दसवें राष्ट्रपति", "अमेरिका के सोलहवें राष्ट्रपति", "अमेरिका के बत्तीसवें राष्ट्रपति"], correctAnswer: "अमेरिका के सोलहवें राष्ट्रपति"),
            ExerciseItem(id: UUID(), prompt: "महात्मा गांधी कौन थे?", options: ["भारत के पहले राष्ट्रपति", "अहिंसक आंदोलन से भारत की आज़ादी के नेता", "भारत के पहले प्रधानमंत्री", "भारतीय संविधान के निर्माता"], correctAnswer: "अहिंसक आंदोलन से भारत की आज़ादी के नेता"),
            ExerciseItem(id: UUID(), prompt: "डॉ. बी.आर. अंबेडकर कौन थे?", options: ["भारत के पहले प्रधानमंत्री", "भारतीय संविधान के मुख्य निर्माता", "भारत के पहले राष्ट्रपति", "स्वतंत्रता सेनानी"], correctAnswer: "भारतीय संविधान के मुख्य निर्माता"),
            ExerciseItem(id: UUID(), prompt: "रोज़ा पार्क्स कौन थीं?", options: ["अलाबामा से सीनेटर", "बस में सीट देने से मना करने वाली नागरिक अधिकार कार्यकर्ता", "पहली अश्वेत महिला जिसने मतदान किया", "सुप्रीम कोर्ट की न्यायाधीश"], correctAnswer: "बस में सीट देने से मना करने वाली नागरिक अधिकार कार्यकर्ता"),
            ExerciseItem(id: UUID(), prompt: "विंस्टन चर्चिल कौन थे?", options: ["द्वितीय विश्व युद्ध में अमेरिका के राष्ट्रपति", "द्वितीय विश्व युद्ध में यूके के प्रधानमंत्री", "फ्रांसीसी प्रतिरोध के जनरल", "कनाडा के प्रधानमंत्री"], correctAnswer: "द्वितीय विश्व युद्ध में यूके के प्रधानमंत्री"),
            ExerciseItem(id: UUID(), prompt: "हैरियट टबमैन कौन थीं?", options: ["पहली अश्वेत कांग्रेसवुमन", "दासता से मुक्त होकर दूसरों को भी मुक्त कराने वाली", "नोबेल पुरस्कार जीतने वाली पहली अश्वेत महिला", "1960 के दशक की नागरिक अधिकार नेता"], correctAnswer: "दासता से मुक्त होकर दूसरों को भी मुक्त कराने वाली"),
            ExerciseItem(id: UUID(), prompt: "चाँद पर चलने वाले पहले इंसान कौन थे?", options: ["बज़ एल्ड्रिन", "यूरी गागरिन", "जॉन ग्लेन", "नील आर्मस्ट्रांग"], correctAnswer: "नील आर्मस्ट्रांग"),
            ExerciseItem(id: UUID(), prompt: "डाक कौन पहुंचाता है?", options: ["कूरियर", "डिलीवरी ड्राइवर", "डाकिया", "डिस्पैचर"], correctAnswer: "डाकिया"),
            ExerciseItem(id: UUID(), prompt: "ए.पी.जे. अब्दुल कलाम कौन थे?", options: ["भारत के पहले प्रधानमंत्री", "भारत के मिसाइल कार्यक्रम के जनक और पूर्व राष्ट्रपति", "भारतीय क्रिकेट टीम के कप्तान", "बॉलीवुड के महान अभिनेता"], correctAnswer: "भारत के मिसाइल कार्यक्रम के जनक और पूर्व राष्ट्रपति")
        ]
    )

    // MARK: - Exercise 4: WH Questions — When
    private static let whenQuestions = Exercise(
        id: UUID(),
        title: "WH प्रश्न — कब",
        instructions: "प्रत्येक प्रश्न का सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "अमेरिकी स्वतंत्रता दिवस कब मनाया जाता है?", options: ["4 जून", "4 जुलाई", "4 अगस्त", "4 सितंबर"], correctAnswer: "4 जुलाई"),
            ExerciseItem(id: UUID(), prompt: "वेलेंटाइन डे कब होता है?", options: ["14 जनवरी", "14 मार्च", "14 फरवरी", "14 अप्रैल"], correctAnswer: "14 फरवरी"),
            ExerciseItem(id: UUID(), prompt: "दिवाली कब मनाई जाती है?", options: ["अक्टूबर या नवंबर में", "दिसंबर में", "जनवरी में", "मार्च में"], correctAnswer: "अक्टूबर या नवंबर में"),
            ExerciseItem(id: UUID(), prompt: "होली कब मनाई जाती है?", options: ["जनवरी में", "फरवरी या मार्च में", "अप्रैल में", "मई में"], correctAnswer: "फरवरी या मार्च में"),
            ExerciseItem(id: UUID(), prompt: "भारत का स्वतंत्रता दिवस कब है?", options: ["15 जुलाई", "26 जनवरी", "15 अगस्त", "2 अक्टूबर"], correctAnswer: "15 अगस्त"),
            ExerciseItem(id: UUID(), prompt: "भारत का गणतंत्र दिवस कब है?", options: ["15 अगस्त", "26 जनवरी", "2 अक्टूबर", "14 नवंबर"], correctAnswer: "26 जनवरी"),
            ExerciseItem(id: UUID(), prompt: "द्वितीय विश्व युद्ध कब लड़ा गया था?", options: ["1914 से 1918", "1929 से 1935", "1939 से 1945", "1941 से 1949"], correctAnswer: "1939 से 1945"),
            ExerciseItem(id: UUID(), prompt: "अमेरिका में थैंक्सगिविंग कब मनाया जाता है?", options: ["नवंबर का पहला गुरुवार", "नवंबर का दूसरा गुरुवार", "नवंबर का तीसरा गुरुवार", "नवंबर का चौथा गुरुवार"], correctAnswer: "नवंबर का चौथा गुरुवार"),
            ExerciseItem(id: UUID(), prompt: "नया साल कब मनाया जाता है?", options: ["31 दिसंबर", "2 जनवरी", "1 जनवरी", "25 दिसंबर"], correctAnswer: "1 जनवरी"),
            ExerciseItem(id: UUID(), prompt: "क्रिसमस कब मनाया जाता है?", options: ["24 दिसंबर", "26 दिसंबर", "25 दिसंबर", "6 जनवरी"], correctAnswer: "25 दिसंबर"),
            ExerciseItem(id: UUID(), prompt: "नवरात्रि कब मनाई जाती है?", options: ["केवल मार्च में", "केवल अक्टूबर में", "साल में दो बार — चैत्र और शारदीय नवरात्रि", "केवल जनवरी में"], correctAnswer: "साल में दो बार — चैत्र और शारदीय नवरात्रि"),
            ExerciseItem(id: UUID(), prompt: "ईद उल-फित्र कब मनाई जाती है?", options: ["रमज़ान के शुरू में", "रमज़ान के अंत में", "मोहर्रम के बाद", "हर शुक्रवार को"], correctAnswer: "रमज़ान के अंत में"),
            ExerciseItem(id: UUID(), prompt: "बैसाखी कब मनाई जाती है?", options: ["13 या 14 जनवरी", "13 या 14 अप्रैल", "13 या 14 जुलाई", "13 या 14 अक्टूबर"], correctAnswer: "13 या 14 अप्रैल"),
            ExerciseItem(id: UUID(), prompt: "लोग नाश्ता कब करते हैं?", options: ["दोपहर में", "शाम को", "सुबह", "आधी रात को"], correctAnswer: "सुबह"),
            ExerciseItem(id: UUID(), prompt: "पक्षी दक्षिण की ओर कब प्रवास करते हैं?", options: ["वसंत में", "गर्मी में", "सर्दी में", "पतझड़ में"], correctAnswer: "पतझड़ में")
        ]
    )

    // MARK: - Exercise 5: WH Questions — Why
    private static let whyQuestions = Exercise(
        id: UUID(),
        title: "WH प्रश्न — क्यों",
        instructions: "प्रत्येक प्रश्न का सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "खाने से पहले हाथ क्यों धोते हैं?", options: ["हाथ गर्म करने के लिए", "कीटाणु हटाने और बीमारी से बचाने के लिए", "शिष्टाचार के लिए", "त्वचा को मुलायम बनाने के लिए"], correctAnswer: "कीटाणु हटाने और बीमारी से बचाने के लिए"),
            ExerciseItem(id: UUID(), prompt: "कुत्ते हांफते क्यों हैं?", options: ["क्योंकि वे भूखे हैं", "खुद को ठंडा करने के लिए", "डरे हुए हैं", "ध्यान आकर्षित करने के लिए"], correctAnswer: "खुद को ठंडा करने के लिए"),
            ExerciseItem(id: UUID(), prompt: "सीट बेल्ट क्यों लगाते हैं?", options: ["क्योंकि आरामदायक है", "दुर्घटना में चोट का खतरा कम करने के लिए", "कार के लिए ज़रूरी है", "गर्म रहने के लिए"], correctAnswer: "दुर्घटना में चोट का खतरा कम करने के लिए"),
            ExerciseItem(id: UUID(), prompt: "कुछ खाना फ्रिज में क्यों रखते हैं?", options: ["स्वाद बेहतर करने के लिए", "जमा रखने के लिए", "बैक्टीरिया की वृद्धि धीमी करने के लिए", "जगह बचाने के लिए"], correctAnswer: "बैक्टीरिया की वृद्धि धीमी करने के लिए"),
            ExerciseItem(id: UUID(), prompt: "पतझड़ में पत्ते रंग क्यों बदलते हैं?", options: ["पाले से पत्ते मर जाते हैं", "दिन छोटे होने पर पेड़ क्लोरोफिल बनाना बंद कर देते हैं", "बारिश कम होने से", "जानवर हरे भाग खा लेते हैं"], correctAnswer: "दिन छोटे होने पर पेड़ क्लोरोफिल बनाना बंद कर देते हैं"),
            ExerciseItem(id: UUID(), prompt: "डॉक्टर ब्लड प्रेशर क्यों मापते हैं?", options: ["वज़न जांचने के लिए", "हृदय स्वास्थ्य की निगरानी और उच्च रक्तचाप का पता लगाने के लिए", "फिटनेस स्तर मापने के लिए", "मधुमेह की जांच के लिए"], correctAnswer: "हृदय स्वास्थ्य की निगरानी और उच्च रक्तचाप का पता लगाने के लिए"),
            ExerciseItem(id: UUID(), prompt: "ट्रैफिक लाइटें क्यों होती हैं?", options: ["यातायात धीमा करने के लिए", "पैदल चलने वालों की मदद के लिए", "यातायात प्रवाह को नियंत्रित करने और दुर्घटनाएं कम करने के लिए", "पुलिसकर्मियों की जगह लेने के लिए"], correctAnswer: "यातायात प्रवाह को नियंत्रित करने और दुर्घटनाएं कम करने के लिए"),
            ExerciseItem(id: UUID(), prompt: "सनस्क्रीन क्यों लगाते हैं?", options: ["ठंडा रहने के लिए", "झाइयाँ रोकने के लिए", "यूवी किरणों से त्वचा की रक्षा के लिए", "त्वचा को नम रखने के लिए"], correctAnswer: "यूवी किरणों से त्वचा की रक्षा के लिए"),
            ExerciseItem(id: UUID(), prompt: "मच्छर के काटने पर खुजली क्यों होती है?", options: ["मच्छर जो खून लेता है उससे", "जो बैक्टीरिया छोड़ता है उससे", "मच्छर की लार से प्रतिरक्षा प्रतिक्रिया होती है", "क्योंकि वह ज़हर इंजेक्ट करता है"], correctAnswer: "मच्छर की लार से प्रतिरक्षा प्रतिक्रिया होती है"),
            ExerciseItem(id: UUID(), prompt: "मतदान क्यों महत्वपूर्ण है?", options: ["क्योंकि यह कानून के लिए ज़रूरी है", "सरकारी प्रतिनिधि चुनने में आवाज़ उठाने के लिए", "जुर्माने से बचने के लिए", "नियोक्ता की ज़रूरत के लिए"], correctAnswer: "सरकारी प्रतिनिधि चुनने में आवाज़ उठाने के लिए"),
            ExerciseItem(id: UUID(), prompt: "हमें नींद क्यों आती है?", options: ["केवल मांसपेशियों को आराम देने के लिए", "अधिक खाने से बचने के लिए", "शरीर खुद की मरम्मत करता है और दिमाग यादें संजोता है", "केवल ऊर्जा बचाने के लिए"], correctAnswer: "शरीर खुद की मरम्मत करता है और दिमाग यादें संजोता है"),
            ExerciseItem(id: UUID(), prompt: "दांत क्यों साफ करते हैं?", options: ["केवल सांस ताज़ी रखने के लिए", "दांत सफेद करने के लिए", "दांतों की सड़न पैदा करने वाली पट्टिका और बैक्टीरिया हटाने के लिए", "केवल इनेमल मज़बूत करने के लिए"], correctAnswer: "दांतों की सड़न पैदा करने वाली पट्टिका और बैक्टीरिया हटाने के लिए"),
            ExerciseItem(id: UUID(), prompt: "सर्दियों में कोट क्यों पहनते हैं?", options: ["फैशन के लिए", "बारिश में भीगने से बचने के लिए", "शरीर को इंसुलेट करने और गर्म रखने के लिए", "केवल हवा से बचाने के लिए"], correctAnswer: "शरीर को इंसुलेट करने और गर्म रखने के लिए"),
            ExerciseItem(id: UUID(), prompt: "रीसाइकल क्यों करते हैं?", options: ["रीसाइकल केंद्रों से पैसे कमाने के लिए", "कचरा कम करने और प्राकृतिक संसाधन बचाने के लिए", "क्योंकि सरकार ज़रूरी बनाती है", "घर साफ रखने के लिए"], correctAnswer: "कचरा कम करने और प्राकृतिक संसाधन बचाने के लिए"),
            ExerciseItem(id: UUID(), prompt: "लोग वसीयत क्यों बनाते हैं?", options: ["कर से बचने के लिए", "अंतिम संस्कार की योजना बनाने के लिए", "मृत्यु के बाद अपनी संपत्ति किसे मिलेगी यह कानूनी रूप से तय करने के लिए", "मुकदमों से बचाने के लिए"], correctAnswer: "मृत्यु के बाद अपनी संपत्ति किसे मिलेगी यह कानूनी रूप से तय करने के लिए")
        ]
    )

    // MARK: - Exercise 6: WH Questions — How
    private static let howQuestions = Exercise(
        id: UUID(),
        title: "WH प्रश्न — कैसे",
        instructions: "प्रत्येक प्रश्न का सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "एक सप्ताह में कितने दिन होते हैं?", options: ["5", "6", "7", "8"], correctAnswer: "7"),
            ExerciseItem(id: UUID(), prompt: "एक साल में कितने सप्ताह होते हैं?", options: ["48", "50", "52", "54"], correctAnswer: "52"),
            ExerciseItem(id: UUID(), prompt: "षट्भुज में कितनी भुजाएँ होती हैं?", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "एक किलोग्राम में कितने ग्राम होते हैं?", options: ["100", "500", "1000", "2000"], correctAnswer: "1000"),
            ExerciseItem(id: UUID(), prompt: "एक मीटर में कितने सेंटीमीटर होते हैं?", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "एक साल में कितने महीने होते हैं?", options: ["10", "11", "12", "13"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "अप्रैल महीने में कितने दिन होते हैं?", options: ["28", "29", "30", "31"], correctAnswer: "30"),
            ExerciseItem(id: UUID(), prompt: "एक दर्जन में कितने अंडे होते हैं?", options: ["6", "10", "12", "24"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "अमेरिका में कितने राज्य हैं?", options: ["48", "49", "50", "52"], correctAnswer: "50"),
            ExerciseItem(id: UUID(), prompt: "सामान्य गर्भावस्था कितने समय तक चलती है?", options: ["6 महीने", "7 महीने", "8 महीने", "लगभग 9 महीने या 40 सप्ताह"], correctAnswer: "लगभग 9 महीने या 40 सप्ताह"),
            ExerciseItem(id: UUID(), prompt: "एक दिन में कितने घंटे होते हैं?", options: ["20", "22", "24", "26"], correctAnswer: "24"),
            ExerciseItem(id: UUID(), prompt: "छोटी जलन का इलाज कैसे करते हैं?", options: ["मक्खन या तेल लगाते हैं", "सीधे बर्फ लगाते हैं", "कम से कम 10 मिनट ठंडे बहते पानी से ठंडा करते हैं", "तुरंत कसकर पट्टी बांधते हैं"], correctAnswer: "कम से कम 10 मिनट ठंडे बहते पानी से ठंडा करते हैं"),
            ExerciseItem(id: UUID(), prompt: "नाक से खून बहना कैसे रोकते हैं?", options: ["सिर पीछे झुकाते हैं", "ज़ोर से नाक साफ करते हैं", "नाक का नरम हिस्सा दबाकर थोड़ा आगे झुकते हैं", "सीधे लेट जाते हैं"], correctAnswer: "नाक का नरम हिस्सा दबाकर थोड़ा आगे झुकते हैं"),
            ExerciseItem(id: UUID(), prompt: "मकड़ी के कितने पैर होते हैं?", options: ["4", "6", "8", "10"], correctAnswer: "8"),
            ExerciseItem(id: UUID(), prompt: "एक डॉलर में कितने सेंट होते हैं?", options: ["50", "75", "100", "200"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "एक सदी में कितने साल होते हैं?", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "खाना खराब होने का पता कैसे चलता है?", options: ["पैकेजिंग के रंग से", "ब्रांड के नाम से", "फफूंद, बदबू, असामान्य रंग या बनावट, या एक्सपायरी डेट से", "कितना भारी लगता है उससे"], correctAnswer: "फफूंद, बदबू, असामान्य रंग या बनावट, या एक्सपायरी डेट से"),
            ExerciseItem(id: UUID(), prompt: "एक मिनट में कितने सेकंड होते हैं?", options: ["30", "45", "60", "90"], correctAnswer: "60"),
            ExerciseItem(id: UUID(), prompt: "त्रिभुज में कितनी भुजाएँ होती हैं?", options: ["2", "3", "4", "5"], correctAnswer: "3"),
            ExerciseItem(id: UUID(), prompt: "एक हज़ार साल को क्या कहते हैं?", options: ["शताब्दी", "पाँच सौ साल", "सहस्राब्दी", "दस हज़ार साल"], correctAnswer: "सहस्राब्दी")
        ]
    )

    // MARK: - Exercise 7: Yes or No
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "हाँ या नहीं",
        instructions: "हाँ या नहीं में जवाब दें।",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "क्या सूर्य एक तारा है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या बर्फ पानी में तैरती है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या पेरिस जर्मनी की राजधानी है?", options: ["Yes", "No"], correctAnswer: "No", explanation: "बर्लिन जर्मनी की राजधानी है"),
            ExerciseItem(id: UUID(), prompt: "क्या चंद्रमा अपनी रोशनी खुद बनाता है?", options: ["Yes", "No"], correctAnswer: "No", explanation: "यह सूर्य की रोशनी को परावर्तित करता है"),
            ExerciseItem(id: UUID(), prompt: "क्या प्रशांत महासागर पृथ्वी का सबसे बड़ा महासागर है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या मानव हृदय में चार कक्ष होते हैं?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या चमगादड़ एक स्तनपायी है?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "चमगादड़ पक्षी नहीं है"),
            ExerciseItem(id: UUID(), prompt: "क्या नील आर्मस्ट्रांग चाँद पर चलने वाले पहले इंसान थे?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "20 जुलाई 1969"),
            ExerciseItem(id: UUID(), prompt: "क्या बच्चे के शरीर में वयस्क से अधिक हड्डियाँ होती हैं?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या सहारा दुनिया का सबसे बड़ा गर्म रेगिस्तान है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या ब्राज़ील दक्षिण अमेरिका में है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या निकेल डाइम से ज़्यादा कीमती है?", options: ["Yes", "No"], correctAnswer: "No", explanation: "डाइम 10 सेंट का है, निकेल 5 सेंट का"),
            ExerciseItem(id: UUID(), prompt: "क्या पेंगुइन एक प्रकार का पक्षी है?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "पेंगुइन उड़ नहीं सकते लेकिन पक्षी हैं"),
            ExerciseItem(id: UUID(), prompt: "क्या डॉल्फिन एक स्तनपायी है?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "डॉल्फिन हवा में सांस लेती है"),
            ExerciseItem(id: UUID(), prompt: "क्या सूर्य पूर्व दिशा में उगता है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या अलास्का भूमि क्षेत्र के हिसाब से सबसे बड़ा अमेरिकी राज्य है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या भारत एशिया में है?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "क्या मुंबई भारत की राजधानी है?", options: ["Yes", "No"], correctAnswer: "No", explanation: "नई दिल्ली भारत की राजधानी है"),
            ExerciseItem(id: UUID(), prompt: "क्या ब्राज़ील में पुर्तगाली बोली जाती है?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "स्पेनिश नहीं"),
            ExerciseItem(id: UUID(), prompt: "क्या गंगा भारत की सबसे पवित्र नदी मानी जाती है?", options: ["Yes", "No"], correctAnswer: "Yes")
        ]
    )

    // MARK: - Exercise 8: General Knowledge — History
    private static let historyKnowledge = Exercise(
        id: UUID(),
        title: "सामान्य ज्ञान — इतिहास",
        instructions: "सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "अमेरिका के पहले राष्ट्रपति कौन थे?", options: ["जॉन एडम्स", "जॉर्ज वाशिंगटन", "थॉमस जेफरसन", "बेंजामिन फ्रैंकलिन"], correctAnswer: "जॉर्ज वाशिंगटन"),
            ExerciseItem(id: UUID(), prompt: "टाइटैनिक किस साल डूबा था?", options: ["1901", "1912", "1918", "1935"], correctAnswer: "1912"),
            ExerciseItem(id: UUID(), prompt: "अमेरिका ने किस देश से स्वतंत्रता ली थी?", options: ["फ्रांस", "स्पेन", "ग्रेट ब्रिटेन", "जर्मनी"], correctAnswer: "ग्रेट ब्रिटेन"),
            ExerciseItem(id: UUID(), prompt: "भारत को अंग्रेज़ों से स्वतंत्रता कब मिली?", options: ["1945", "1947", "1950", "1952"], correctAnswer: "1947"),
            ExerciseItem(id: UUID(), prompt: "भारत का संविधान कब लागू हुआ?", options: ["15 अगस्त 1947", "26 जनवरी 1950", "2 अक्टूबर 1952", "26 नवंबर 1949"], correctAnswer: "26 जनवरी 1950"),
            ExerciseItem(id: UUID(), prompt: "पहले आधुनिक ओलंपिक खेल 1896 में किस शहर में हुए?", options: ["पेरिस", "लंदन", "रोम", "एथेंस"], correctAnswer: "एथेंस"),
            ExerciseItem(id: UUID(), prompt: "जोनास साल्क ने किस बीमारी का टीका बनाया?", options: ["चेचक", "तपेदिक", "पोलियो", "खसरा"], correctAnswer: "पोलियो"),
            ExerciseItem(id: UUID(), prompt: "प्रथम विश्व युद्ध किस साल शुरू हुआ?", options: ["1914", "1918", "1939", "1905"], correctAnswer: "1914"),
            ExerciseItem(id: UUID(), prompt: "चाँद पर पहला इंसान किस देश ने भेजा?", options: ["रूस", "फ्रांस", "ग्रेट ब्रिटेन", "संयुक्त राज्य अमेरिका"], correctAnswer: "संयुक्त राज्य अमेरिका"),
            ExerciseItem(id: UUID(), prompt: "1440 के आसपास प्रिंटिंग प्रेस किसने बनाया?", options: ["लियोनार्डो दा विंची", "गैलीलियो", "जोहान्स गुटेनबर्ग", "आइज़क न्यूटन"], correctAnswer: "जोहान्स गुटेनबर्ग"),
            ExerciseItem(id: UUID(), prompt: "1964 के नागरिक अधिकार अधिनियम पर किसने हस्ताक्षर किए?", options: ["जॉन एफ. केनेडी", "रिचर्ड निक्सन", "लिंडन बी. जॉनसन", "ड्वाइट आइज़नहावर"], correctAnswer: "लिंडन बी. जॉनसन"),
            ExerciseItem(id: UUID(), prompt: "1620 में तीर्थयात्री किस जहाज़ से अमेरिका आए?", options: ["द नीना", "द पिंटा", "द मेफ्लावर", "द विक्टोरिया"], correctAnswer: "द मेफ्लावर"),
            ExerciseItem(id: UUID(), prompt: "1963 में I Have a Dream भाषण किसने दिया?", options: ["मैल्कम एक्स", "बराक ओबामा", "मार्टिन लूथर किंग जूनियर", "फ्रेडरिक डगलस"], correctAnswer: "मार्टिन लूथर किंग जूनियर"),
            ExerciseItem(id: UUID(), prompt: "जापान पर परमाणु बम गिराकर कौन सा युद्ध समाप्त हुआ?", options: ["प्रथम विश्व युद्ध", "कोरियाई युद्ध", "वियतनाम युद्ध", "द्वितीय विश्व युद्ध"], correctAnswer: "द्वितीय विश्व युद्ध"),
            ExerciseItem(id: UUID(), prompt: "भारत की पहली महिला प्रधानमंत्री कौन थीं?", options: ["सरोजिनी नायडू", "प्रतिभा पाटिल", "इंदिरा गांधी", "सुषमा स्वराज"], correctAnswer: "इंदिरा गांधी")
        ]
    )

    // MARK: - Exercise 9: General Knowledge — Geography
    private static let geographyKnowledge = Exercise(
        id: UUID(),
        title: "सामान्य ज्ञान — भूगोल",
        instructions: "सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "अमेरिका के उत्तर में कौन सा देश है?", options: ["मेक्सिको", "रूस", "कनाडा", "ग्रीनलैंड"], correctAnswer: "कनाडा"),
            ExerciseItem(id: UUID(), prompt: "ग्रैंड कैन्यन किस अमेरिकी राज्य में है?", options: ["कोलोराडो", "यूटा", "नेवादा", "एरिज़ोना"], correctAnswer: "एरिज़ोना"),
            ExerciseItem(id: UUID(), prompt: "टोक्यो किस देश की राजधानी है?", options: ["चीन", "दक्षिण कोरिया", "जापान", "थाईलैंड"], correctAnswer: "जापान"),
            ExerciseItem(id: UUID(), prompt: "भूमि क्षेत्र के हिसाब से सबसे बड़ा अमेरिकी राज्य कौन सा है?", options: ["टेक्सास", "कैलिफोर्निया", "मोंटाना", "अलास्का"], correctAnswer: "अलास्का"),
            ExerciseItem(id: UUID(), prompt: "फ्रांस की राजधानी क्या है?", options: ["ल्योन", "मार्सेई", "पेरिस", "बोर्डो"], correctAnswer: "पेरिस"),
            ExerciseItem(id: UUID(), prompt: "कौन सा देश जूते की आकृति का है?", options: ["स्पेन", "ग्रीस", "इटली", "पुर्तगाल"], correctAnswer: "इटली"),
            ExerciseItem(id: UUID(), prompt: "भारत की राजधानी क्या है?", options: ["मुंबई", "कोलकाता", "चेन्नई", "नई दिल्ली"], correctAnswer: "नई दिल्ली"),
            ExerciseItem(id: UUID(), prompt: "दुनिया का सबसे ऊंचा पर्वत कौन सा है?", options: ["K2", "किलिमंजारो", "माउंट एवरेस्ट", "देनाली"], correctAnswer: "माउंट एवरेस्ट"),
            ExerciseItem(id: UUID(), prompt: "गंगा नदी किस देश में बहती है?", options: ["पाकिस्तान", "बांग्लादेश", "भारत", "नेपाल"], correctAnswer: "भारत"),
            ExerciseItem(id: UUID(), prompt: "ताज महल किस शहर में है?", options: ["दिल्ली", "मुंबई", "आगरा, भारत", "जयपुर"], correctAnswer: "आगरा, भारत"),
            ExerciseItem(id: UUID(), prompt: "अमेरिका की राजधानी क्या है?", options: ["न्यूयॉर्क", "लॉस एंजिल्स", "वाशिंगटन डी.सी.", "शिकागो"], correctAnswer: "वाशिंगटन डी.सी."),
            ExerciseItem(id: UUID(), prompt: "दुनिया का सबसे बड़ा लोकतंत्र कौन सा देश है?", options: ["अमेरिका", "चीन", "भारत", "रूस"], correctAnswer: "भारत"),
            ExerciseItem(id: UUID(), prompt: "ऑस्ट्रेलिया की राजधानी क्या है?", options: ["सिडनी", "मेलबर्न", "कैनबरा", "ब्रिस्बेन"], correctAnswer: "कैनबरा"),
            ExerciseItem(id: UUID(), prompt: "नील नदी किस देश से होकर बहती है?", options: ["कांगो", "नाइजर", "मिस्र", "ज़ाम्बेज़ी"], correctAnswer: "मिस्र"),
            ExerciseItem(id: UUID(), prompt: "कनाडा की राजधानी क्या है?", options: ["टोरंटो", "वैंकूवर", "ओटावा", "मॉन्ट्रियल"], correctAnswer: "ओटावा"),
            ExerciseItem(id: UUID(), prompt: "भारत का सबसे बड़ा शहर कौन सा है?", options: ["दिल्ली", "कोलकाता", "चेन्नई", "मुंबई"], correctAnswer: "मुंबई"),
            ExerciseItem(id: UUID(), prompt: "मक्का किस देश में है?", options: ["ईरान", "इराक", "सऊदी अरब", "संयुक्त अरब अमीरात"], correctAnswer: "सऊदी अरब"),
            ExerciseItem(id: UUID(), prompt: "हिमालय पर्वत श्रृंखला किस महाद्वीप में है?", options: ["यूरोप", "अफ्रीका", "दक्षिण अमेरिका", "एशिया"], correctAnswer: "एशिया"),
            ExerciseItem(id: UUID(), prompt: "पाकिस्तान की राजधानी क्या है?", options: ["कराची", "लाहौर", "इस्लामाबाद", "पेशावर"], correctAnswer: "इस्लामाबाद"),
            ExerciseItem(id: UUID(), prompt: "गोल्डन गेट ब्रिज किस अमेरिकी शहर में है?", options: ["लॉस एंजिल्स", "सिएटल", "सैन फ्रांसिस्को", "सैन डिएगो"], correctAnswer: "सैन फ्रांसिस्को")
        ]
    )

    // MARK: - Exercise 10: General Knowledge — Entertainment
    private static let entertainmentKnowledge = Exercise(
        id: UUID(),
        title: "सामान्य ज्ञान — मनोरंजन",
        instructions: "सही उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "रॉस, रेचल, मोनिका, चैंडलर, जोई और फोबे किस टीवी शो के पात्र हैं?", options: ["सेनफेल्ड", "फ्रेंड्स", "द ऑफिस", "चीयर्स"], correctAnswer: "फ्रेंड्स"),
            ExerciseItem(id: UUID(), prompt: "Respect गाने वाली Queen of Soul कौन थीं?", options: ["व्हिटनी ह्यूस्टन", "डायना रॉस", "अरेथा फ्रैंकलिन", "टीना टर्नर"], correctAnswer: "अरेथा फ्रैंकलिन"),
            ExerciseItem(id: UUID(), prompt: "किस एनिमेटेड फिल्म में एक क्लाउनफिश अपने लापता बेटे को ढूंढता है?", options: ["शार्क टेल", "द लिटिल मरमेड", "फाइंडिंग नेमो", "हैप्पी फीट"], correctAnswer: "फाइंडिंग नेमो"),
            ExerciseItem(id: UUID(), prompt: "1994 की फिल्म Forrest Gump में मुख्य भूमिका किसने निभाई?", options: ["टॉम क्रूज़", "टॉम हैंक्स", "केविन कोस्टनर", "डस्टिन हॉफमैन"], correctAnswer: "टॉम हैंक्स"),
            ExerciseItem(id: UUID(), prompt: "दिलवाले दुल्हनिया ले जाएंगे में मुख्य भूमिका किसने निभाई?", options: ["आमिर खान", "सलमान खान", "शाहरुख खान", "अक्षय कुमार"], correctAnswer: "शाहरुख खान"),
            ExerciseItem(id: UUID(), prompt: "बॉलीवुड के सदी के महानायक किसे कहा जाता है?", options: ["दिलीप कुमार", "राज कपूर", "देव आनंद", "अमिताभ बच्चन"], correctAnswer: "अमिताभ बच्चन"),
            ExerciseItem(id: UUID(), prompt: "स्वर कोकिला के नाम से कौन जानी जाती थीं?", options: ["आशा भोसले", "एस.डी. बर्मन", "मुहम्मद रफी", "लता मंगेशकर"], correctAnswer: "लता मंगेशकर"),
            ExerciseItem(id: UUID(), prompt: "हैरी पॉटर श्रृंखला किसने लिखी?", options: ["रोल्ड डाल", "जे.आर.आर. टॉल्किन", "जे.के. रोलिंग", "सी.एस. लुईस"], correctAnswer: "जे.के. रोलिंग"),
            ExerciseItem(id: UUID(), prompt: "Rock and Roll के राजा किसे कहा जाता है?", options: ["चक बेरी", "जेरी ली लुईस", "एल्विस प्रेस्ली", "बडी होली"], correctAnswer: "एल्विस प्रेस्ली"),
            ExerciseItem(id: UUID(), prompt: "Lord of the Rings त्रयी में हॉबिट फ्रोडो बैगिन्स है?", options: ["नार्निया की कहानियाँ", "हैरी पॉटर", "द लॉर्ड ऑफ द रिंग्स", "एरागॉन"], correctAnswer: "द लॉर्ड ऑफ द रिंग्स"),
            ExerciseItem(id: UUID(), prompt: "भारत के क्रिकेट के भगवान किसे कहा जाता है?", options: ["कपिल देव", "सौरव गांगुली", "विराट कोहली", "सचिन तेंदुलकर"], correctAnswer: "सचिन तेंदुलकर"),
            ExerciseItem(id: UUID(), prompt: "शोले 1975 में जय और वीरू की भूमिका किसने निभाई?", options: ["राजेश खन्ना और देव आनंद", "अमिताभ बच्चन और धर्मेंद्र", "जीतेंद्र और ऋषि कपूर", "अनिल कपूर और जैकी श्रॉफ"], correctAnswer: "अमिताभ बच्चन और धर्मेंद्र"),
            ExerciseItem(id: UUID(), prompt: "1939 की क्लासिक फिल्म जिसमें डोरोथी और एक टिन मैन है?", options: ["स्नो व्हाइट", "स्लीपिंग ब्यूटी", "द विज़ार्ड ऑफ ओज़", "फैंटेसिया"], correctAnswer: "द विज़ार्ड ऑफ ओज़"),
            ExerciseItem(id: UUID(), prompt: "1995 की Pixar फिल्म जिसमें Woody नाम का काउबॉय खिलौना है?", options: ["A Bugs Life", "टॉय स्टोरी", "कार्स", "मॉन्स्टर्स इंक"], correctAnswer: "टॉय स्टोरी"),
            ExerciseItem(id: UUID(), prompt: "स्प्रिंगफील्ड शहर में पीले रंग के परिवार वाले एनिमेटेड शो का नाम?", options: ["फैमिली गाय", "बॉब्स बर्गर्स", "अमेरिकन डैड", "द सिम्प्सन्स"], correctAnswer: "द सिम्प्सन्स")
        ]
    )

    // MARK: - Exercise 11: Idioms — Muhavare
    private static let idioms = Exercise(
        id: UUID(),
        title: "मुहावरे",
        instructions: "मुहावरे का अर्थ अपने शब्दों में बताएं।",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "अपना उल्लू सीधा करना", options: [], correctAnswer: "अपना स्वार्थ सिद्ध करना — केवल अपने फायदे के लिए काम करना"),
            ExerciseItem(id: UUID(), prompt: "नाच न जाने आंगन टेढ़ा", options: [], correctAnswer: "जो काम खुद न आए उसके लिए बहाने बनाना"),
            ExerciseItem(id: UUID(), prompt: "दूध का दूध पानी का पानी", options: [], correctAnswer: "सही न्याय करना — सच और झूठ को अलग करना"),
            ExerciseItem(id: UUID(), prompt: "आम के आम गुठलियों के दाम", options: [], correctAnswer: "एक काम से दोहरा फायदा उठाना"),
            ExerciseItem(id: UUID(), prompt: "अंधों में काना राजा", options: [], correctAnswer: "जहाँ सब अनजान हों वहाँ थोड़ी जानकारी वाला भी बड़ा लगता है"),
            ExerciseItem(id: UUID(), prompt: "जो गरजते हैं वो बरसते नहीं", options: [], correctAnswer: "जो बहुत बोलते हैं वे अक्सर कुछ करते नहीं"),
            ExerciseItem(id: UUID(), prompt: "घर की मुर्गी दाल बराबर", options: [], correctAnswer: "अपने पास जो है उसकी कद्र नहीं होती"),
            ExerciseItem(id: UUID(), prompt: "अब पछताए होत क्या जब चिड़िया चुग गई खेत", options: [], correctAnswer: "समय निकल जाने के बाद पछताने का कोई फायदा नहीं"),
            ExerciseItem(id: UUID(), prompt: "जैसी करनी वैसी भरनी", options: [], correctAnswer: "जैसा करोगे वैसा फल मिलेगा"),
            ExerciseItem(id: UUID(), prompt: "नेकी कर दरिया में डाल", options: [], correctAnswer: "अच्छा काम करो और उसका बदला मत माँगो"),
            ExerciseItem(id: UUID(), prompt: "खोदा पहाड़ निकली चुहिया", options: [], correctAnswer: "बहुत मेहनत के बाद बहुत कम नतीजा"),
            ExerciseItem(id: UUID(), prompt: "लातों के भूत बातों से नहीं मानते", options: [], correctAnswer: "कुछ लोग केवल सख्ती से समझते हैं, बातों से नहीं"),
            ExerciseItem(id: UUID(), prompt: "जहाँ चाह वहाँ राह", options: [], correctAnswer: "दृढ़ इच्छाशक्ति हो तो रास्ता निकल आता है"),
            ExerciseItem(id: UUID(), prompt: "मन चंगा तो कठौती में गंगा", options: [], correctAnswer: "मन शुद्ध हो तो भगवान हर जगह मिलते हैं"),
            ExerciseItem(id: UUID(), prompt: "थोथा चना घना बाजे", options: [], correctAnswer: "जिसमें काम कम हो वह शोर ज़्यादा मचाता है")
        ]
    )

    // MARK: - Exercise 12: Estimation and Logic
    private static let estimationLogic = Exercise(
        id: UUID(),
        title: "अनुमान और तर्क",
        instructions: "सबसे सही और उचित उत्तर चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "नरम उबले अंडे में कितना समय लगता है?", options: ["1 मिनट", "6 मिनट", "20 मिनट", "1 घंटा"], correctAnswer: "6 मिनट"),
            ExerciseItem(id: UUID(), prompt: "एक डिब्बे में कितने अंडे होते हैं?", options: ["6", "12", "18", "24"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "एक सामान्य कार में कितने पहिए होते हैं?", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "एक भरे हुए बाथटब में लगभग कितने लीटर पानी होता है?", options: ["5 लीटर", "30 लीटर", "लगभग 120 लीटर", "500 लीटर"], correctAnswer: "लगभग 120 लीटर"),
            ExerciseItem(id: UUID(), prompt: "हाथी के कितने पैर होते हैं?", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "एक सदी में कितने साल होते हैं?", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "एक व्यक्ति सामान्यतः कितनी तेज़ी से चलता है?", options: ["लगभग 1 km/h", "लगभग 5 km/h", "लगभग 20 km/h", "लगभग 50 km/h"], correctAnswer: "लगभग 5 km/h"),
            ExerciseItem(id: UUID(), prompt: "एक सामान्य साल में कितने दिन होते हैं?", options: ["300", "356", "365", "400"], correctAnswer: "365"),
            ExerciseItem(id: UUID(), prompt: "एक सैंडविच में कितने ब्रेड के टुकड़े होते हैं?", options: ["1", "2", "3", "4"], correctAnswer: "2"),
            ExerciseItem(id: UUID(), prompt: "साल में कितने मौसम होते हैं?", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "क्या कोई इंसान बिना उपकरण के खुद एक पूरी कार उठा सकता है?", options: ["हाँ आसानी से", "हाँ प्रशिक्षण से", "नहीं कार बहुत भारी है", "हाँ एक हाथ से"], correctAnswer: "नहीं कार बहुत भारी है"),
            ExerciseItem(id: UUID(), prompt: "अगर आप दिन में 3 बार खाते हैं तो एक सप्ताह में कितनी बार खाते हैं?", options: ["3", "7", "14", "21"], correctAnswer: "21"),
            ExerciseItem(id: UUID(), prompt: "एक सदी में कितने दशक होते हैं?", options: ["5", "8", "10", "100"], correctAnswer: "10"),
            ExerciseItem(id: UUID(), prompt: "पाँच किलो के आटे के थैले का वज़न कितना होगा?", options: ["1 kg", "2 kg", "5 kg", "10 kg"], correctAnswer: "5 kg"),
            ExerciseItem(id: UUID(), prompt: "साल के कितने महीनों में 31 दिन होते हैं?", options: ["5", "6", "7", "8"], correctAnswer: "7"),
            ExerciseItem(id: UUID(), prompt: "दस लाख में कितने शून्य होते हैं?", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "एक किलो रुई और एक किलो लोहे में कौन भारी है?", options: ["लोहा", "रुई", "दोनों बराबर हैं", "निर्भर करता है"], correctAnswer: "दोनों बराबर हैं"),
            ExerciseItem(id: UUID(), prompt: "अधिकतर स्वस्थ वयस्कों को रात में कितने घंटे सोना चाहिए?", options: ["3 से 4 घंटे", "6 से 8 घंटे", "10 से 12 घंटे", "14 से 16 घंटे"], correctAnswer: "6 से 8 घंटे")
        ]
    )

    // MARK: - Exercise 13: Deductive Reasoning
    private static let deductiveReasoning = Exercise(
        id: UUID(),
        title: "तार्किक सोच",
        instructions: "प्रत्येक स्थिति पढ़ें और सबसे उचित निष्कर्ष चुनें।",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "कोई व्यक्ति स्विमसूट और धूप का चश्मा पहने है। वह शायद क्या करने जा रहा है?", options: ["सिनेमा", "समुद्र तट या तरणताल", "शादी में", "किराने का सामान लेने"], correctAnswer: "समुद्र तट या तरणताल"),
            ExerciseItem(id: UUID(), prompt: "एम्बुलेंस बत्ती जलाते और सायरन बजाते हुए गुज़र रही है। आपको क्या करना चाहिए?", options: ["तेज़ करें", "किनारे होकर रुकें", "हॉर्न बजाएं", "नज़रअंदाज़ करें"], correctAnswer: "किनारे होकर रुकें"),
            ExerciseItem(id: UUID(), prompt: "एक व्यक्ति छाता और बरसाती पहने है। मौसम कैसा होगा?", options: ["गर्म और धूपदार", "ठंडा और बर्फीला", "बरसात", "शुष्क और हवादार"], correctAnswer: "बरसात"),
            ExerciseItem(id: UUID(), prompt: "रात को आपके घर की सारी बत्तियाँ अचानक चली गईं। क्या हुआ होगा?", options: ["सूरज डूब गया", "बिजली गई", "आपने आँखें बंद कर लीं", "टीवी बंद हो गया"], correctAnswer: "बिजली गई"),
            ExerciseItem(id: UUID(), prompt: "रात में ज़ोरदार बर्फबारी हुई। सुबह गाड़ी चलानी है। पहले क्या करेंगे?", options: ["सामान्य गति से चलाएंगे", "सड़क की स्थिति जाँचेंगे और विंडशील्ड साफ करेंगे", "पुलिस को फोन करेंगे", "हमेशा के लिए घर पर रहेंगे"], correctAnswer: "सड़क की स्थिति जाँचेंगे और विंडशील्ड साफ करेंगे"),
            ExerciseItem(id: UUID(), prompt: "डिनर के लिए मोमबत्तियाँ जलाईं और 20 मिनट के लिए दूसरे कमरे में जाना है। क्या करेंगे?", options: ["जलती छोड़ देंगे", "जाने से पहले बुझा देंगे", "नज़रअंदाज़ करेंगे", "खिड़की खोल देंगे"], correctAnswer: "जाने से पहले बुझा देंगे"),
            ExerciseItem(id: UUID(), prompt: "दोस्त लंबे समय तक ठंड में रहने के बाद बेकाबू होकर काँप रहा है और भ्रमित है। क्या हो सकता है?", options: ["हीट एग्जॉशन", "हाइपोथर्मिया", "डिहाइड्रेशन", "सनबर्न"], correctAnswer: "हाइपोथर्मिया"),
            ExerciseItem(id: UUID(), prompt: "रसोई में गैस की गंध आ रही है। सबसे पहले क्या करेंगे?", options: ["माचिस जलाएंगे", "बत्ती चालू करेंगे", "तुरंत बाहर निकलेंगे और गैस कंपनी को फोन करेंगे", "ओवन खोलेंगे"], correctAnswer: "तुरंत बाहर निकलेंगे और गैस कंपनी को फोन करेंगे"),
            ExerciseItem(id: UUID(), prompt: "एक व्यक्ति चर्च की वेदी पर सफेद पोशाक पहने है। क्या हो रहा है?", options: ["दीक्षांत समारोह", "अंतिम संस्कार", "शादी", "जन्मदिन"], correctAnswer: "शादी"),
            ExerciseItem(id: UUID(), prompt: "टोपी और गाउन पहने और डिप्लोमा हाथ में लिए व्यक्ति दिखा। वह कहाँ से आ रहा है?", options: ["शादी", "दीक्षांत समारोह", "अंतिम संस्कार", "नौकरी का इंटरव्यू"], correctAnswer: "दीक्षांत समारोह"),
            ExerciseItem(id: UUID(), prompt: "ज़मीन पर एक सिक्का मिला जिस पर अब्राहम लिंकन का चित्र है। यह कौन सा सिक्का है?", options: ["क्वार्टर", "डाइम", "निकेल", "पेनी"], correctAnswer: "पेनी"),
            ExerciseItem(id: UUID(), prompt: "दूर से गड़गड़ाहट सुनाई दी। कौन सा मौसम आने वाला है?", options: ["बवंडर", "आंधी और बारिश", "भूकंप", "बर्फबारी"], correctAnswer: "आंधी और बारिश"),
            ExerciseItem(id: UUID(), prompt: "एक व्यक्ति भारी जैकेट, बूट और दस्ताने पहने है। कौन सी ऋतु है?", options: ["गर्मी", "वसंत", "सर्दी", "पतझड़"], correctAnswer: "सर्दी"),
            ExerciseItem(id: UUID(), prompt: "बिल पर लाल रंग से अतिदेय लिखा है। इसका क्या मतलब है?", options: ["आपने जल्दी भुगतान किया", "भुगतान समय पर मिला", "अभी देय नहीं है", "आप पर बकाया राशि है जो पहले चुकानी थी"], correctAnswer: "आप पर बकाया राशि है जो पहले चुकानी थी"),
            ExerciseItem(id: UUID(), prompt: "अस्पताल के गलियारे में कोई स्क्रब पहने और स्टेथोस्कोप लटकाए है। वह क्या है?", options: ["शिक्षक", "रसोइया", "डॉक्टर या नर्स", "पुलिसकर्मी"], correctAnswer: "डॉक्टर या नर्स")
        ]
    )

    // MARK: - Exercise 14: Personal Memory Reflection
    private static let personalMemory = Exercise(
        id: UUID(),
        title: "स्वयं के बारे में",
        instructions: "ये प्रश्न खुले हैं। कोई सही या गलत उत्तर नहीं है। अपनी यादें साझा करें।",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "आप किस गली या मोहल्ले में पले-बढ़े?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपकी सबसे पुरानी बचपन की याद क्या है?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "बचपन में आप बड़े होकर क्या बनना चाहते थे?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "अपनी शादी का दिन या कोई यादगार शादी का वर्णन करें।", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "कौन सा गाना आपको किसी खास वक्त की याद दिलाता है?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपका पसंदीदा शिक्षक कौन था और उन्हें क्या खास बनाता था?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "अपनी किसी पसंदीदा गाड़ी का वर्णन करें।", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपका पसंदीदा त्योहारी खाना क्या है और कौन बनाता था?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "जब कोई बड़ी ऐतिहासिक घटना हुई — जैसे इंदिरा गांधी की हत्या या 9/11 — आप कहाँ थे?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपकी पहली नौकरी क्या थी?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "किसी यात्रा या छुट्टी का वर्णन करें जो आपको बहुत पसंद आई।", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "बचपन में आप कौन से खेल खेलते थे?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "अपने बचपन के घर का जितना हो सके उतना विस्तार से वर्णन करें।", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "कौन सी गंध आपको किसी पुरानी याद की ओर ले जाती है?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपके परिवार में कौन सी पुरानी परंपरा या रिवाज था?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "कोई ऐसा हुनर या शौक बताएं जो आपको गर्व देता है।", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "कोई ऐसा पल बताएं जब आप इतना हँसे कि पेट में दर्द हो गया।", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपके माता-पिता या दादा-दादी क्या कहते थे जो आपको अभी भी याद है?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "आपको ड्राइविंग, खाना पकाना या कोई ज़रूरी काम किसने सिखाया?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "बचपन का कौन सा खाना है जो आपको आज भी पसंद है?", options: [], correctAnswer: "")
        ]
    )

    // MARK: - Exercise 15: Rote Memory Lists
    private static let roteMemory = Exercise(
        id: UUID(),
        title: "रटकर याद करने की सूचियाँ",
        instructions: "प्रत्येक श्रेणी में जितने आइटम याद हों उन्हें बताएं। फिर पूरी सूची देखें।",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "हिंदी वर्णमाला के स्वर बताएं", options: [], correctAnswer: "अ, आ, इ, ई, उ, ऊ, ए, ऐ, ओ, औ"),
            ExerciseItem(id: UUID(), prompt: "सप्ताह के सातों दिन बताएं", options: [], correctAnswer: "सोमवार, मंगलवार, बुधवार, गुरुवार, शुक्रवार, शनिवार, रविवार"),
            ExerciseItem(id: UUID(), prompt: "साल के बारह महीने बताएं", options: [], correctAnswer: "जनवरी, फरवरी, मार्च, अप्रैल, मई, जून, जुलाई, अगस्त, सितंबर, अक्टूबर, नवंबर, दिसंबर"),
            ExerciseItem(id: UUID(), prompt: "भारत की छह ऋतुएँ बताएं", options: [], correctAnswer: "वसंत, ग्रीष्म, वर्षा, शरद, हेमंत, शिशिर"),
            ExerciseItem(id: UUID(), prompt: "सौरमंडल के आठ ग्रह बताएं", options: [], correctAnswer: "बुध, शुक्र, पृथ्वी, मंगल, बृहस्पति, शनि, अरुण, वरुण"),
            ExerciseItem(id: UUID(), prompt: "भारत के पड़ोसी देश बताएं", options: [], correctAnswer: "पाकिस्तान, चीन, नेपाल, भूटान, बांग्लादेश, म्यांमार, श्रीलंका"),
            ExerciseItem(id: UUID(), prompt: "भारत की प्रमुख नदियाँ बताएं", options: [], correctAnswer: "गंगा, यमुना, ब्रह्मपुत्र, गोदावरी, कृष्णा, नर्मदा, कावेरी, सिंधु"),
            ExerciseItem(id: UUID(), prompt: "पाँच ज्ञानेंद्रियाँ बताएं", options: [], correctAnswer: "दृष्टि, श्रवण, घ्राण, स्वाद, स्पर्श"),
            ExerciseItem(id: UUID(), prompt: "सात महाद्वीपों के नाम बताएं", options: [], correctAnswer: "अफ्रीका, अंटार्कटिका, एशिया, ऑस्ट्रेलिया, यूरोप, उत्तरी अमेरिका, दक्षिण अमेरिका"),
            ExerciseItem(id: UUID(), prompt: "भारत के प्रमुख त्योहार बताएं", options: [], correctAnswer: "दिवाली, होली, दशहरा, नवरात्रि, ईद, क्रिसमस, बैसाखी, जन्माष्टमी, रक्षाबंधन, गणेश चतुर्थी"),
            ExerciseItem(id: UUID(), prompt: "परिवार के मुख्य सदस्यों के हिंदी नाम बताएं", options: [], correctAnswer: "माता, पिता, भाई, बहन, दादा, दादी, नाना, नानी, चाचा, चाची, मामा, मामी"),
            ExerciseItem(id: UUID(), prompt: "भारत के पहले पाँच प्रधानमंत्रियों के नाम बताएं", options: [], correctAnswer: "1. जवाहरलाल नेहरू, 2. लाल बहादुर शास्त्री, 3. इंदिरा गांधी, 4. मोरारजी देसाई, 5. चरण सिंह")
        ]
    )
}
