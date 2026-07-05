import Foundation

struct GujaratiCognitionExerciseData {

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
        estimationLogic,
        deductiveReasoning,
        idioms,
        personalMemory,
        roteMemory
    ]

    // MARK: - Exercise 1: WH Questions — What (20 items)
    private static let whatQuestions = Exercise(
        id: UUID(),
        title: "WH પ્રશ્નો — શું",
        instructions: "દરેક પ્રશ્નનો સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "વાળ કાપવા અને સ્ટાઇલ કરવાવાળાને શું કહે છે?", options: ["નળિયો", "વાળંદ અથવા સ્ટાઇલિસ્ટ", "વીજળી મિસ્ત્રી", "ઑપ્ટોમેટ્રિસ્ટ"], correctAnswer: "વાળંદ અથવા સ્ટાઇલિસ્ટ"),
            ExerciseItem(id: UUID(), prompt: "દુનિયાની સૌથી લાંબી નદી કઈ છે?", options: ["એમેઝોન", "મિસિસિપી", "નાઇલ", "યાંગ્ઝી"], correctAnswer: "નાઇલ"),
            ExerciseItem(id: UUID(), prompt: "બપોરના ભોજનને શું કહે છે?", options: ["નાસ્તો", "બ્રંચ", "રાત્રિ ભોજન", "બપોરનું ભોજન"], correctAnswer: "બપોરનું ભોજન"),
            ExerciseItem(id: UUID(), prompt: "ફર્શ વાળવા માટે શું વાપરે છે?", options: ["પોતું", "ઝૂડો", "સાવરણી", "વૅક્યુમ"], correctAnswer: "સાવરણી"),
            ExerciseItem(id: UUID(), prompt: "આપણે જે ગ્રહ પર રહીએ છીએ તેનું નામ શું છે?", options: ["મંગળ", "શુક્ર", "પૃથ્વી", "ગુરુ"], correctAnswer: "પૃથ્વી"),
            ExerciseItem(id: UUID(), prompt: "વિમાન ઉડાડવાવાળાને શું કહે છે?", options: ["ઇજનેર", "કંડક્ટર", "કૅપ્ટન", "પાઇલટ"], correctAnswer: "પાઇલટ"),
            ExerciseItem(id: UUID(), prompt: "ઉનાળા પછી કઈ ઋતુ આવે છે?", options: ["વસંત", "શિયાળો", "પાનખર", "ઉનાળો"], correctAnswer: "પાનખર"),
            ExerciseItem(id: UUID(), prompt: "ચિત્ર અને મૂર્તિઓ બનાવનારને શું કહે છે?", options: ["સ્થપતિ", "કલાકાર", "લેખક", "સંગીતકાર"], correctAnswer: "કલાકાર"),
            ExerciseItem(id: UUID(), prompt: "31 ઑક્ટોબરે કયો તહેવાર ઊજવાય છે?", options: ["દિવાળી", "ક્રિસમસ", "હૅલોવીન", "હોળી"], correctAnswer: "હૅલોવીન"),
            ExerciseItem(id: UUID(), prompt: "તૂટેલી પાઇપો અને નળ ઠીક કરનારને શું કહે છે?", options: ["ઇલેક્ટ્રિશિયન", "સુથાર", "પ્લમ્બર", "તાળા બનાવનાર"], correctAnswer: "પ્લમ્બર"),
            ExerciseItem(id: UUID(), prompt: "ઊઠ્યા વિના ટીવીની ચૅનલ બદલવા કયું ઉપકરણ વાપરે છે?", options: ["મોબાઇલ ફોન", "રિમોટ કંટ્રોલ", "ટૅબ્લેટ", "કીબોર્ડ"], correctAnswer: "રિમોટ કંટ્રોલ"),
            ExerciseItem(id: UUID(), prompt: "નાની સફેદ દડો છિદ્રમાં મારવાની રમતનું નામ શું છે?", options: ["ટેનિસ", "ક્રિકેટ", "ગોલ્ફ", "ક્રોકેટ"], correctAnswer: "ગોલ્ફ"),
            ExerciseItem(id: UUID(), prompt: "લાલ અને સફેદ રંગ ભેળવવાથી કયો રંગ બને છે?", options: ["જાંબલી", "નારંગી", "ગુલાબી", "ઘઉં વર્ણ"], correctAnswer: "ગુલાબી"),
            ExerciseItem(id: UUID(), prompt: "સમય જાણવા માટે કયું સાધન વાપરે છે?", options: ["થર્મોમીટર", "હોકાયંત્ર", "કૅલ્ક્યુલેટર", "ઘડિયાળ"], correctAnswer: "ઘડિયાળ"),
            ExerciseItem(id: UUID(), prompt: "કાગળ કાપવા માટે શું વાપરે છે?", options: ["છરી", "કાતર", "રેઝર", "બૉક્સ કટર"], correctAnswer: "કાતર"),
            ExerciseItem(id: UUID(), prompt: "ખોરાક ઠંડો રાખતા ઉપકરણને શું કહે છે?", options: ["ઓવન", "માઇક્રોવૅવ", "ફ્રિઝ", "ડિશવૉશર"], correctAnswer: "ફ્રિઝ"),
            ExerciseItem(id: UUID(), prompt: "આગ બુઝાવનારને શું કહે છે?", options: ["પોલીસ", "પૅરામેડિક", "અગ્નિશામક", "સુરક્ષા ગાર્ડ"], correctAnswer: "અગ્નિશામક"),
            ExerciseItem(id: UUID(), prompt: "મફત પુસ્તક ઉધાર લેવાની જગ્યાને શું કહે છે?", options: ["પુસ્તકની દુકાન", "સંગ્રહાલય", "પુસ્તકાલય", "શાળા"], correctAnswer: "પુસ્તકાલય"),
            ExerciseItem(id: UUID(), prompt: "દાંતને સુરક્ષિત રાખતા સખત બાહ્ય સ્તરને શું કહે છે?", options: ["ડૅન્ટિન", "ગર", "ઇનૅમલ", "ક્રાઉન"], correctAnswer: "ઇનૅમલ"),
            ExerciseItem(id: UUID(), prompt: "દેશો વચ્ચે પ્રવાસ કરવા કયા દસ્તાવેજની જરૂર છે?", options: ["ડ્રાઇવિંગ લાઇસન્સ", "જન્મ પ્રમાણ પત્ર", "પાસપૉર્ટ", "આધાર કાર્ડ"], correctAnswer: "પાસપૉર્ટ")
        ]
    )

    // MARK: - Exercise 2: WH Questions — Where (20 items)
    private static let whereQuestions = Exercise(
        id: UUID(),
        title: "WH પ્રશ્નો — ક્યાં",
        instructions: "દરેક પ્રશ્નનો સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ઘરની અંદર તરવા ક્યાં જઈ શકાય?", options: ["જિમ", "ઉદ્યાન", "સ્વિમિંગ પૂલ", "સરોવર"], correctAnswer: "સ્વિમિંગ પૂલ"),
            ExerciseItem(id: UUID(), prompt: "સ્વતંત્રતાની પ્રતિમા ક્યાં આવેલી છે?", options: ["વૉશિંગ્ટન ડી.સી.", "શિકાગો", "લૉસ એન્જલસ", "ન્યૂયૉર્ક"], correctAnswer: "ન્યૂયૉર્ક"),
            ExerciseItem(id: UUID(), prompt: "વાળ કપાવવા ક્યાં જઈ શકાય?", options: ["ફાર્મસી", "વાળંદની દુકાન", "ડૉક્ટર", "સ્પા"], correctAnswer: "વાળંદની દુકાન"),
            ExerciseItem(id: UUID(), prompt: "જજ અને જ્યૂરી ક્યાં મળે?", options: ["નગરપાલિકા", "પોલીસ સ્ટેશન", "અદાલત", "શાળા"], correctAnswer: "અદાલત"),
            ExerciseItem(id: UUID(), prompt: "ચીનની દીવાલ ક્યાં આવેલી છે?", options: ["જાપાન", "ભારત", "ચીન", "દક્ષિણ કોરિયા"], correctAnswer: "ચીન"),
            ExerciseItem(id: UUID(), prompt: "હાઇ સ્કૂલ પછી ભણવા ક્યાં જઈ શકાય?", options: ["ટૅક્નિકલ સ્કૂલ", "ફરી હાઇ સ્કૂલ", "વિશ્વવિદ્યાલય", "વ્યાવસાયિક કેન્દ્ર"], correctAnswer: "વિશ્વવિદ્યાલય"),
            ExerciseItem(id: UUID(), prompt: "કૉલોઝિયમ ક્યાં આવેલું છે?", options: ["એથેન્સ", "પૅરિસ", "મૅડ્રિડ", "રોમ"], correctAnswer: "રોમ"),
            ExerciseItem(id: UUID(), prompt: "ટિકિટ ખરીદવા અને પૅકેજ મોકલવા ક્યાં જઈ શકાય?", options: ["બૅન્ક", "ફાર્મસી", "કરિયાણાની દુકાન", "પોસ્ટ ઑફિસ"], correctAnswer: "પોસ્ટ ઑફિસ"),
            ExerciseItem(id: UUID(), prompt: "બિગ બેન ક્યાં આવેલું છે?", options: ["પૅરિસ", "બર્લિન", "લંડન", "ઍમ્સ્ટર્ડૅમ"], correctAnswer: "લંડન"),
            ExerciseItem(id: UUID(), prompt: "એમેઝૉન વરસાદી જંગલ ક્યાં આવેલું છે?", options: ["આફ્રિકા", "દક્ષિણ-પૂર્વ એશિયા", "મધ્ય અમેરિકા", "દક્ષિણ અમેરિકા"], correctAnswer: "દક્ષિણ અમેરિકા"),
            ExerciseItem(id: UUID(), prompt: "દવા લેવા ક્યાં જઈ શકાય?", options: ["હૉસ્પિટલ", "ડૉક્ટર", "ફાર્મસી", "ક્લિનિક"], correctAnswer: "ફાર્મસી"),
            ExerciseItem(id: UUID(), prompt: "માઉન્ટ રશ્મૉર ક્યાં આવેલું છે?", options: ["મૉન્ટાના", "વ્યૉમિંગ", "કૉલોરેડો", "સાઉથ ડૅકોટા"], correctAnswer: "સાઉથ ડૅકોટા"),
            ExerciseItem(id: UUID(), prompt: "તાજ મહેલ ક્યાં આવેલો છે?", options: ["ચીન", "પાકિસ્તાન", "બાંગ્લાદેશ", "ભારત"], correctAnswer: "ભારત"),
            ExerciseItem(id: UUID(), prompt: "પૈસા જમા કરવા અથવા ઉપાડવા ક્યાં જઈ શકાય?", options: ["પોસ્ટ ઑફિસ", "બૅન્ક", "ફાર્મસી", "કરિયાણાની દુકાન"], correctAnswer: "બૅન્ક"),
            ExerciseItem(id: UUID(), prompt: "તબીબી ઇમર્જન્સીમાં ક્યાં જઈ શકાય?", options: ["ફાર્મસી", "અર્જન્ટ કૅર", "હૉસ્પિટલ ઇમર્જન્સી", "ડૉક્ટરની ઑફિસ"], correctAnswer: "હૉસ્પિટલ ઇમર્જન્સી"),
            ExerciseItem(id: UUID(), prompt: "એફિલ ટાવર ક્યાં આવેલો છે?", options: ["બેલ્જિયમ", "ઇટાલી", "સ્પેન", "ફ્રાન્સ"], correctAnswer: "ફ્રાન્સ"),
            ExerciseItem(id: UUID(), prompt: "દાંતનો ઇલાજ કરાવવા ક્યાં જઈ શકાય?", options: ["આંખના ડૉક્ટર", "ત્વચારોગ નિષ્ણાત", "દંત ચિકિત્સક", "કાનના ડૉક્ટર"], correctAnswer: "દંત ચિકિત્સક"),
            ExerciseItem(id: UUID(), prompt: "મફત પુસ્તક ઉધાર ક્યાંથી મળી શકે?", options: ["પુસ્તકની દુકાન", "સંગ્રહાલય", "સિનેમાઘર", "પુસ્તકાલય"], correctAnswer: "પુસ્તકાલય"),
            ExerciseItem(id: UUID(), prompt: "ગીઝાના પિરામિડ ક્યાં આવેલા છે?", options: ["મોરોક્કો", "સુદાન", "લિબ્યા", "ઇજિપ્ત"], correctAnswer: "ઇજિપ્ત"),
            ExerciseItem(id: UUID(), prompt: "મોટા પડદે ફિલ્મ જોવા ક્યાં જઈ શકાય?", options: ["થિએટર", "ડ્રાઇવ-ઇન", "સિનેમાઘર", "ઑડિટોરિયમ"], correctAnswer: "સિનેમાઘર")
        ]
    )

    // MARK: - Exercise 3: WH Questions — Who (15 items)
    private static let whoQuestions = Exercise(
        id: UUID(),
        title: "WH પ્રશ્નો — કોણ",
        instructions: "દરેક પ્રશ્નનો સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "રોમિઓ અને જ્યૂલિયટ કોણે લખ્યું?", options: ["ચાર્લ્સ ડિકન્સ", "વિલ્યમ શૅક્સપિયર", "જૅન ઑસ્ટિન", "રવીન્દ્રનાથ ટાગોર"], correctAnswer: "વિલ્યમ શૅક્સપિયર"),
            ExerciseItem(id: UUID(), prompt: "નૉબેલ પ્રાઇઝ જીતનારી પ્રથમ મહિલા કોણ હતી?", options: ["રૉઝ ફ્રૅન્કલિન", "ફ્લૉરન્સ નાઇટિંગેલ", "મૅરી ક્યૂરી", "અૅડા લવ્લૅઇસ"], correctAnswer: "મૅરી ક્યૂરી"),
            ExerciseItem(id: UUID(), prompt: "મોના લિઝા કોણે બનાવી?", options: ["માઇકેલૅન્જેલો", "રૅફેલ", "લિઓનાર્દો દ વિન્ચી", "બૉટિસેલ્લી"], correctAnswer: "લિઓનાર્દો દ વિન્ચી"),
            ExerciseItem(id: UUID(), prompt: "વીજળીનો બલ્બ કોણે બનાવ્યો?", options: ["નિકોલા ટૅસ્લા", "બૅન્જામિન ફ્રૅન્કલિન", "અૅલેક્ઝૅન્ડર ગ્રેહામ બૅલ", "થૉમસ એડિસન"], correctAnswer: "થૉમસ એડિસન"),
            ExerciseItem(id: UUID(), prompt: "ભારતના પ્રથમ વડાપ્રધાન કોણ હતા?", options: ["મહાત્મા ગાંધી", "સરદાર પટેલ", "જવાહરલાલ નહેરુ", "ડૉ. આંબેડકર"], correctAnswer: "જવાહરલાલ નહેરુ"),
            ExerciseItem(id: UUID(), prompt: "સરદાર વલ્લભભાઈ પટેલ કોણ હતા?", options: ["ભારતના પ્રથમ વડાપ્રધાન", "ભારતના લોખંડી પુરુષ અને પ્રથમ ગૃહ મંત્રી", "ભારતના પ્રથમ રાષ્ટ્રપ્રમુખ", "ગુજરાતના મુખ્ય મંત્રી"], correctAnswer: "ભારતના લોખંડી પુરુષ અને પ્રથમ ગૃહ મંત્રી"),
            ExerciseItem(id: UUID(), prompt: "અબ્રાહમ લિંકન કોણ હતા?", options: ["અમેરિકાના પ્રથમ રાષ્ટ્રપ્રમુખ", "દસમા રાષ્ટ્રપ્રમુખ", "સોળમા રાષ્ટ્રપ્રમુખ", "બત્રીસમા રાષ્ટ્રપ્રમુખ"], correctAnswer: "સોળમા રાષ્ટ્રપ્રમુખ"),
            ExerciseItem(id: UUID(), prompt: "મહાત્મા ગાંધી કોણ હતા?", options: ["ભારતના પ્રથમ રાષ્ટ્રપ્રમુખ", "અહિંસક આઝાદી આંદોલનના નેતા", "ભારતના પ્રથમ વડાપ્રધાન", "ભારતીય બંધારણના ઘડવૈયા"], correctAnswer: "અહિંસક આઝાદી આંદોલનના નેતા"),
            ExerciseItem(id: UUID(), prompt: "ડૉ. બી.આર. આંબેડકર કોણ હતા?", options: ["ભારતના પ્રથમ વડાપ્રધાન", "ભારતીય બંધારણના મુખ્ય ઘડવૈયા", "ભારતના પ્રથમ રાષ્ટ્રપ્રમુખ", "સ્વાતંત્ર્ય સેનાની"], correctAnswer: "ભારતીય બંધારણના મુખ્ય ઘડવૈયા"),
            ExerciseItem(id: UUID(), prompt: "રૉઝા પાર્ક્સ કોણ હતાં?", options: ["અલૅબામાથી સૅનેટર", "બસમાં સીટ આપવાનો ઇનકાર કરનાર નાગરિક અધિકાર કાર્યકર", "પ્રથમ અશ્વેત મહિલા મતદાર", "સુપ્રીમ કોર્ટના ન્યાયાધીશ"], correctAnswer: "બસમાં સીટ આપવાનો ઇનકાર કરનાર નાગરિક અધિકાર કાર્યકર"),
            ExerciseItem(id: UUID(), prompt: "વિન્સ્ટન ચર્ચિલ કોણ હતા?", options: ["બીજા વિશ્વ યુદ્ધ વખતે અમેરિકાના રાષ્ટ્રપ્રમુખ", "બીજા વિશ્વ યુદ્ધ વખતે યુ.કે.ના વડાપ્રધાન", "ફ્રેન્ચ પ્રતિકાર આંદોલનના જનરલ", "કૅનેડાના વડાપ્રધાન"], correctAnswer: "બીજા વિશ્વ યુદ્ધ વખતે યુ.કે.ના વડાપ્રધાન"),
            ExerciseItem(id: UUID(), prompt: "હૅરિયટ ટ્યૂબમૅન કોણ હતાં?", options: ["પ્રથમ અશ્વેત કૉંગ્રેસવૂમન", "ગુલામીમાંથી છૂટી અને બીજાઓને છોડાવનાર", "નૉબેલ ઇનામ જીતનાર પ્રથમ અશ્વેત મહિલા", "1960ના દાયકાની નાગરિક અધિકાર નેતા"], correctAnswer: "ગુલામીમાંથી છૂટી અને બીજાઓને છોડાવનાર"),
            ExerciseItem(id: UUID(), prompt: "ચંદ્ર પર ચાલનાર પ્રથમ માનવ કોણ હતા?", options: ["બઝ ઓલ્ડ્રિન", "યુરી ગાગારિન", "જૉન ગ્લૅન", "નીલ આર્મસ્ટ્રૉંગ"], correctAnswer: "નીલ આર્મસ્ટ્રૉંગ"),
            ExerciseItem(id: UUID(), prompt: "ટપાલ કોણ પહોંચાડે છે?", options: ["કૂરિયર", "ડિલિવરી ડ્રાઇવર", "ટપાલી", "ડિસ્પૅચર"], correctAnswer: "ટપાલી"),
            ExerciseItem(id: UUID(), prompt: "એ.પી.જે. અબ્દુલ કલામ કોણ હતા?", options: ["ભારતના પ્રથમ વડાપ્રધાન", "ભારતના મિસાઇલ કાર્યક્રમના જનક અને ભૂ.પૂ. રાષ્ટ્રપ્રમુખ", "ભારતીય ક્રિકેટ ટીમના કૅપ્ટન", "બૉલીવૂડના મહાન અભિનેતા"], correctAnswer: "ભારતના મિસાઇલ કાર્યક્રમના જનક અને ભૂ.પૂ. રાષ્ટ્રપ્રમુખ")
        ]
    )

    // MARK: - Exercise 4: WH Questions — When (15 items)
    private static let whenQuestions = Exercise(
        id: UUID(),
        title: "WH પ્રશ્નો — ક્યારે",
        instructions: "દરેક પ્રશ્નનો સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "અમેરિકન સ્વાતંત્ર્ય દિવસ ક્યારે ઊજવાય છે?", options: ["4 જૂન", "4 જુલાઈ", "4 ઑગસ્ટ", "4 સપ્ટેમ્બર"], correctAnswer: "4 જુલાઈ"),
            ExerciseItem(id: UUID(), prompt: "વૅલેન્ટાઇન ડે ક્યારે હોય છે?", options: ["14 જાન્યુઆરી", "14 માર્ચ", "14 ફેબ્રુઆરી", "14 એપ્રિલ"], correctAnswer: "14 ફેબ્રુઆરી"),
            ExerciseItem(id: UUID(), prompt: "દિવાળી ક્યારે ઊજવાય છે?", options: ["ઑક્ટોબર અથવા નવેમ્બરમાં", "ડિસેમ્બરમાં", "જાન્યુઆરીમાં", "માર્ચમાં"], correctAnswer: "ઑક્ટોબર અથવા નવેમ્બરમાં"),
            ExerciseItem(id: UUID(), prompt: "ઉત્તરાયણ ક્યારે ઊજવાય છે?", options: ["14 જાન્યુઆરી", "26 જાન્યુઆરી", "15 ઑગસ્ટ", "2 ઑક્ટોબર"], correctAnswer: "14 જાન્યુઆરી"),
            ExerciseItem(id: UUID(), prompt: "ભારતનો સ્વાતંત્ર્ય દિવસ ક્યારે છે?", options: ["15 જુલાઈ", "26 જાન્યુઆરી", "15 ઑગસ્ટ", "2 ઑક્ટોબર"], correctAnswer: "15 ઑગસ્ટ"),
            ExerciseItem(id: UUID(), prompt: "ભારતનો પ્રજાસત્તાક દિન ક્યારે છે?", options: ["15 ઑગસ્ટ", "26 જાન્યુઆરી", "2 ઑક્ટોબર", "14 નવેમ્બર"], correctAnswer: "26 જાન્યુઆરી"),
            ExerciseItem(id: UUID(), prompt: "બીજું વિશ્વ યુદ્ધ ક્યારે લડાયું હતું?", options: ["1914 થી 1918", "1929 થી 1935", "1939 થી 1945", "1941 થી 1949"], correctAnswer: "1939 થી 1945"),
            ExerciseItem(id: UUID(), prompt: "અમેરિકામાં થૅન્ક્સગિવિંગ ક્યારે ઊજવાય છે?", options: ["નવેમ્બરનો પ્રથમ ગુરુવાર", "નવેમ્બરનો બીજો ગુરુવાર", "નવેમ્બરનો ત્રીજો ગુરુવાર", "નવેમ્બરનો ચોથો ગુરુવાર"], correctAnswer: "નવેમ્બરનો ચોથો ગુરુવાર"),
            ExerciseItem(id: UUID(), prompt: "નવું વર્ષ ક્યારે ઊજવાય છે?", options: ["31 ડિસેમ્બર", "2 જાન્યુઆરી", "1 જાન્યુઆરી", "25 ડિસેમ્બર"], correctAnswer: "1 જાન્યુઆરી"),
            ExerciseItem(id: UUID(), prompt: "ક્રિસમસ ક્યારે ઊજવાય છે?", options: ["24 ડિસેમ્બર", "26 ડિસેમ્બર", "25 ડિસેમ્બર", "6 જાન્યુઆરી"], correctAnswer: "25 ડિસેમ્બર"),
            ExerciseItem(id: UUID(), prompt: "નવરાત્રિ ક્યારે ઊજવાય છે?", options: ["ફક્ત માર્ચમાં", "ફક્ત ઑક્ટોબરમાં", "વર્ષમાં બે વાર — ચૈત્ર અને આસો", "ફક્ત જાન્યુઆરીમાં"], correctAnswer: "વર્ષમાં બે વાર — ચૈત્ર અને આસો"),
            ExerciseItem(id: UUID(), prompt: "ઈદ ઉલ-ફિત્ર ક્યારે ઊજવાય છે?", options: ["રમઝાનની શરૂઆતમાં", "રમઝાનના અંતે", "મોહર્રમ પછી", "દર શુક્રવારે"], correctAnswer: "રમઝાનના અંતે"),
            ExerciseItem(id: UUID(), prompt: "બૈસાખી ક્યારે ઊજવાય છે?", options: ["13 અથવા 14 જાન્યુઆરી", "13 અથવા 14 એપ્રિલ", "13 અથવા 14 જુલાઈ", "13 અથવા 14 ઑક્ટોબર"], correctAnswer: "13 અથવા 14 એપ્રિલ"),
            ExerciseItem(id: UUID(), prompt: "લોકો નાસ્તો ક્યારે કરે છે?", options: ["બપોરે", "સાંજે", "સવારે", "મધ્યરાત્રે"], correctAnswer: "સવારે"),
            ExerciseItem(id: UUID(), prompt: "પક્ષીઓ દક્ષિણ તરફ ક્યારે સ્થળાંતર કરે છે?", options: ["વસંતમાં", "ઉનાળામાં", "શિયાળામાં", "પાનખરમાં"], correctAnswer: "પાનખરમાં")
        ]
    )

    // MARK: - Exercise 5: WH Questions — Why (15 items)
    private static let whyQuestions = Exercise(
        id: UUID(),
        title: "WH પ્રશ્નો — શા માટે",
        instructions: "દરેક પ્રશ્નનો સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ખાવા પહેલાં હાથ શા માટે ધોઈએ છીએ?", options: ["હાથ ગરમ કરવા", "જંતુ હઠાવવા અને બીમારીથી બચવા", "શિષ્ટાચાર માટે", "ત્વચા મુલાયમ કરવા"], correctAnswer: "જંતુ હઠાવવા અને બીમારીથી બચવા"),
            ExerciseItem(id: UUID(), prompt: "કૂતરા હાંફે છે શા માટે?", options: ["ભૂખ્યા છે", "ઠંડા થવા", "ડરેલા છે", "ધ્યાન ખેંચવા"], correctAnswer: "ઠંડા થવા"),
            ExerciseItem(id: UUID(), prompt: "સીટ બેલ્ટ શા માટે પહેરીએ છીએ?", options: ["આરામ માટે", "અકસ્માતમાં ઇજા ઓછી કરવા", "કારની જરૂર", "ગરમ રહેવા"], correctAnswer: "અકસ્માતમાં ઇજા ઓછી કરવા"),
            ExerciseItem(id: UUID(), prompt: "કેટલોક ખોરાક ફ્રિઝમાં શા માટે રાખીએ છીએ?", options: ["સ્વાદ સારો કરવા", "જમા રાખવા", "બૅક્ટેરિયાની વૃદ્ધિ ધીમી કરવા", "જગ્યા બચાવવા"], correctAnswer: "બૅક્ટેરિયાની વૃદ્ધિ ધીમી કરવા"),
            ExerciseItem(id: UUID(), prompt: "પાનખરમાં પાંદડા રંગ શા માટે બદલે છે?", options: ["ઠંડીથી પાંદડા મરે", "ટૂંકા દિવસો વખતે ઝાડ ક્લોરોફિલ બનાવવાનું બંધ કરે", "ઓછો વરસાદ", "પ્રાણીઓ લીલો ભાગ ખાઈ જાય"], correctAnswer: "ટૂંકા દિવસો વખતે ઝાડ ક્લોરોફિલ બનાવવાનું બંધ કરે"),
            ExerciseItem(id: UUID(), prompt: "ડૉક્ટર બ્લડ પ્રેશર શા માટે માપે છે?", options: ["વજન તપાસવા", "હૃદય સ્વાસ્થ્ય ચકાસવા", "ફિટનેસ માપવા", "ડાયાબિટીઝ તપાસવા"], correctAnswer: "હૃદય સ્વાસ્થ્ય ચકાસવા"),
            ExerciseItem(id: UUID(), prompt: "ટ્રાફિક લાઇટ શા માટે હોય છે?", options: ["ટ્રાફિક ધીમો કરવા", "પગપાળા ચાલનારાઓને મદદ", "ટ્રાફિક પ્રવાહ નિયંત્રિત કરવા", "પોલીસની જગ્યા લેવા"], correctAnswer: "ટ્રાફિક પ્રવાહ નિયંત્રિત કરવા"),
            ExerciseItem(id: UUID(), prompt: "સનસ્ક્રીન શા માટે લગાવીએ છીએ?", options: ["ઠંડા રહેવા", "ઝાઈ રોકવા", "યુ.વી. કિરણોથી ત્વચા બચાવવા", "ત્વચા ભેજ રાખવા"], correctAnswer: "યુ.વી. કિરણોથી ત્વચા બચાવવા"),
            ExerciseItem(id: UUID(), prompt: "મચ્છર કરડે ત્યારે ખંજવાળ શા માટે આવે?", options: ["લોહી લઈ જાય", "બૅક્ટેરિયા છોડે", "મચ્છરની લાળ સામે રોગ પ્રતિકારક પ્રતિક્રિયા", "ઝેર ઇન્જેક્ટ કરે"], correctAnswer: "મચ્છરની લાળ સામે રોગ પ્રતિકારક પ્રતિક્રિયા"),
            ExerciseItem(id: UUID(), prompt: "મતદાન શા માટે મહત્ત્વનું છે?", options: ["કાયદા માટે જરૂરી", "સરકારી પ્રતિનિધિ ચૂંટવામાં અવાજ ઉઠાવવા", "દંડ ટાળવા", "નોકરીદાતાની જરૂર"], correctAnswer: "સરકારી પ્રતિનિધિ ચૂંટવામાં અવાજ ઉઠાવવા"),
            ExerciseItem(id: UUID(), prompt: "આપણને ઊઘ શા માટે આવે છે?", options: ["ફક્ત સ્નાયુ આરામ", "વધુ ખાવા ટાળવા", "શરીર સમારકામ કરે અને મગજ યાદો સંઘરે", "ફક્ત ઊર્જા બચાવવા"], correctAnswer: "શરીર સમારકામ કરે અને મગજ યાદો સંઘરે"),
            ExerciseItem(id: UUID(), prompt: "દાંત શા માટે સાફ કરીએ છીએ?", options: ["ફક્ત શ્વાસ તાજો", "દાંત સફેદ", "દાંત સડો કરતી પ્લૅક અને બૅક્ટેરિયા હઠાવવા", "ફક્ત ઇનૅમલ મજબૂત"], correctAnswer: "દાંત સડો કરતી પ્લૅક અને બૅક્ટેરિયા હઠાવવા"),
            ExerciseItem(id: UUID(), prompt: "શિયાળામાં કોટ શા માટે પહેરીએ છીએ?", options: ["ફૅશન", "વરસાદથી", "શરીર ઇન્સ્યૂલેટ કરી ગરમ રાખવા", "ફક્ત પવનથી"], correctAnswer: "શરીર ઇન્સ્યૂલેટ કરી ગરમ રાખવા"),
            ExerciseItem(id: UUID(), prompt: "રિસાઇકલ શા માટે કરીએ છીએ?", options: ["કૅન્દ્રમાંથી પૈસા", "કચરો ઘટાડવા અને કુદરતી સંસાધન બચાવવા", "સરકારી ફરજ", "ઘર સ્વચ્છ"], correctAnswer: "કચરો ઘટાડવા અને કુદરતી સંસાધન બચાવવા"),
            ExerciseItem(id: UUID(), prompt: "લોકો વસિયત શા માટે બનાવે છે?", options: ["ટૅક્સ ટાળવા", "અંતિમ સંસ્કારની યોજના", "મૃત્યુ પછી સ્વ-સંપત્તિ કોને મળશે તે કાયદેસર નક્કી કરવા", "દાવા ટાળવા"], correctAnswer: "મૃત્યુ પછી સ્વ-સંપત્તિ કોને મળશે તે કાયદેસર નક્કી કરવા")
        ]
    )

    // MARK: - Exercise 6: WH Questions — How (20 items)
    private static let howQuestions = Exercise(
        id: UUID(),
        title: "WH પ્રશ્નો — કેવી રીતે",
        instructions: "દરેક પ્રશ્નનો સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "એક અઠવાડિયામાં કેટલા દિવસ હોય છે?", options: ["5", "6", "7", "8"], correctAnswer: "7"),
            ExerciseItem(id: UUID(), prompt: "એક વર્ષમાં કેટલા મહિના હોય છે?", options: ["10", "11", "12", "13"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "એક કિલોગ્રામમાં કેટલા ગ્રામ હોય છે?", options: ["100", "500", "1000", "2000"], correctAnswer: "1000"),
            ExerciseItem(id: UUID(), prompt: "એક મીટરમાં કેટલા સેન્ટિમીટર હોય છે?", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "એક ડઝનમાં કેટલા ઈંડા હોય છે?", options: ["6", "10", "12", "24"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "અમેરિકામાં કેટલા રાજ્ય છે?", options: ["48", "49", "50", "52"], correctAnswer: "50"),
            ExerciseItem(id: UUID(), prompt: "એક દિવસમાં કેટલા કલાક હોય છે?", options: ["20", "22", "24", "26"], correctAnswer: "24"),
            ExerciseItem(id: UUID(), prompt: "એક કલાકમાં કેટલી મિનિટ હોય છે?", options: ["30", "45", "60", "90"], correctAnswer: "60"),
            ExerciseItem(id: UUID(), prompt: "એક મિનિટમાં કેટલી સેકન્ડ હોય છે?", options: ["30", "45", "60", "100"], correctAnswer: "60"),
            ExerciseItem(id: UUID(), prompt: "ષટ્ભુજમાં કેટલી બાજુઓ હોય છે?", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "ત્રિકોણમાં કેટલી બાજુઓ હોય છે?", options: ["2", "3", "4", "5"], correctAnswer: "3"),
            ExerciseItem(id: UUID(), prompt: "એપ્રિલ મહિનામાં કેટલા દિવસ હોય છે?", options: ["28", "29", "30", "31"], correctAnswer: "30"),
            ExerciseItem(id: UUID(), prompt: "એક સદીમાં કેટલા વર્ષ હોય છે?", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "એક સદીમાં કેટલા દાયકા હોય છે?", options: ["5", "8", "10", "100"], correctAnswer: "10"),
            ExerciseItem(id: UUID(), prompt: "એક ડૉલરમાં કેટલા સેન્ટ હોય છે?", options: ["50", "75", "100", "200"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "સામાન્ય ગર્ભાવસ્થા કેટલા મહિના ચાલે છે?", options: ["6", "7", "8", "9"], correctAnswer: "9"),
            ExerciseItem(id: UUID(), prompt: "માકડીને કેટલા પગ હોય છે?", options: ["4", "6", "8", "10"], correctAnswer: "8"),
            ExerciseItem(id: UUID(), prompt: "એક વર્ષમાં કેટલા અઠવાડિયા હોય છે?", options: ["48", "50", "52", "54"], correctAnswer: "52"),
            ExerciseItem(id: UUID(), prompt: "સ્વસ્થ વ્યક્તિએ રાત્રે કેટલા કલાક ઊઘવું જોઈએ?", options: ["3 થી 4", "5 થી 6", "7 થી 8", "10 થી 12"], correctAnswer: "7 થી 8"),
            ExerciseItem(id: UUID(), prompt: "એક હજાર વર્ષને શું કહે છે?", options: ["શતાબ્દી", "પાંચ સો વર્ષ", "સહસ્રાબ્દ", "દસ હજાર વર્ષ"], correctAnswer: "સહસ્રાબ્દ")
        ]
    )

    // MARK: - Exercise 7: Yes or No (20 items)
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "હા અથવા ના",
        instructions: "હા અથવા ના માં જવાબ આપો.",
        section: .cognition,
        type: .yesNo,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "શું સૂર્ય એક તારો છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું બરફ પાણીમાં તરે છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું પૅરિસ જર્મનીની રાજધાની છે?", options: ["Yes", "No"], correctAnswer: "No", explanation: "બર્લિન જર્મનીની રાજધાની છે"),
            ExerciseItem(id: UUID(), prompt: "શું ચંદ્ર પોતાનો પ્રકાશ બનાવે છે?", options: ["Yes", "No"], correctAnswer: "No", explanation: "તે સૂર્યનો પ્રકાશ પરાવર્તિત કરે છે"),
            ExerciseItem(id: UUID(), prompt: "શું પ્રશાંત મહાસાગર પૃથ્વીનો સૌથી મોટો મહાસાગર છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું માનવ હૃદયમાં ચાર ખંડ હોય છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું ચામાચીડિયું એક સસ્તન પ્રાણી છે?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "ચામાચીડિયું પક્ષી નથી"),
            ExerciseItem(id: UUID(), prompt: "શું નીલ આર્મસ્ટ્રૉંગ ચંદ્ર પર ચાલનાર પ્રથમ માનવ હતા?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "20 જુલાઈ 1969"),
            ExerciseItem(id: UUID(), prompt: "શું બાળકના શરીરમાં પુખ્ત વ્યક્તિ કરતાં વધુ હાડકાં હોય છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું સહારા દુનિયાનું સૌથી મોટું ગરમ રણ છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું બ્રાઝિલ દક્ષિણ અમેરિકામાં છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું નિકેલ ડાઇમ કરતાં વધુ કિંમતી છે?", options: ["Yes", "No"], correctAnswer: "No", explanation: "ડાઇમ 10 સેન્ટ છે, નિકેલ 5 સેન્ટ"),
            ExerciseItem(id: UUID(), prompt: "શું પેન્ગ્વિન એક પ્રકારનું પક્ષી છે?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "પેન્ગ્વિન ઉડી શકતા નથી પણ પક્ષી છે"),
            ExerciseItem(id: UUID(), prompt: "શું ડૉલ્ફિન એક સસ્તન પ્રાણી છે?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "ડૉલ્ફિન હવામાં શ્વાસ લે છે"),
            ExerciseItem(id: UUID(), prompt: "શું સૂર્ય પૂર્વ દિશામાં ઊગે છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું અલાસ્કા જમીનના ક્ષેત્રફળ પ્રમાણે સૌથી મોટું અમેરિકન રાજ્ય છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું ભારત એશિયામાં છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું મુંબઈ ભારતની રાજધાની છે?", options: ["Yes", "No"], correctAnswer: "No", explanation: "નવી દિલ્હી ભારતની રાજધાની છે"),
            ExerciseItem(id: UUID(), prompt: "શું ગુજરાત ભારતના પશ્ચિમ કિનારે છે?", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "શું સ્ટૅચ્યૂ ઑફ યુનિટી ગુજરાતમાં આવેલી છે?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "નર્મદા જિલ્લો, ગુજરાત")
        ]
    )

    // MARK: - Exercise 8: General Knowledge — History (15 items)
    private static let historyKnowledge = Exercise(
        id: UUID(),
        title: "સામાન્ય જ્ઞાન — ઇતિહાસ",
        instructions: "સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "અમેરિકાના પ્રથમ રાષ્ટ્રપ્રમુખ કોણ હતા?", options: ["જૉન એડમ્સ", "જ્યૉર્જ વૉશિંગ્ટન", "થૉમસ જૅફર્સન", "બૅન્જામિન ફ્રૅન્કલિન"], correctAnswer: "જ્યૉર્જ વૉશિંગ્ટન"),
            ExerciseItem(id: UUID(), prompt: "ટાઇટૅનિક કયા વર્ષે ડૂબ્યું હતું?", options: ["1901", "1912", "1918", "1935"], correctAnswer: "1912"),
            ExerciseItem(id: UUID(), prompt: "અમેરિકા એ કયા દેશ પાસેથી સ્વતંત્રતા મેળવી હતી?", options: ["ફ્રાન્સ", "સ્પેન", "ગ્રેટ બ્રિટન", "જર્મની"], correctAnswer: "ગ્રેટ બ્રિટન"),
            ExerciseItem(id: UUID(), prompt: "ભારતને અંગ્રેજો પાસેથી સ્વતંત્રતા ક્યારે મળી?", options: ["1945", "1947", "1950", "1952"], correctAnswer: "1947"),
            ExerciseItem(id: UUID(), prompt: "ભારતનું બંધારણ ક્યારે અમલમાં આવ્યું?", options: ["15 ઑગસ્ટ 1947", "26 જાન્યુઆરી 1950", "2 ઑક્ટોબર 1952", "26 નવેમ્બર 1949"], correctAnswer: "26 જાન્યુઆરી 1950"),
            ExerciseItem(id: UUID(), prompt: "પ્રથમ આધુનિક ઑલિમ્પિક રમતો 1896માં કયા શહેરમાં યોજાઈ?", options: ["પૅરિસ", "લંડન", "રોમ", "એથેન્સ"], correctAnswer: "એથેન્સ"),
            ExerciseItem(id: UUID(), prompt: "જૉનાસ સૉકે કઈ બીમારીની રસી બનાવી?", options: ["શીતળા", "ક્ષય", "પોલિયો", "ઓરી"], correctAnswer: "પોલિયો"),
            ExerciseItem(id: UUID(), prompt: "પ્રથમ વિશ્વ યુદ્ધ કયા વર્ષે શરૂ થયું?", options: ["1914", "1918", "1939", "1905"], correctAnswer: "1914"),
            ExerciseItem(id: UUID(), prompt: "ચંદ્ર પર પ્રથમ માનવ કયા દેશે મોકલ્યો?", options: ["રશિયા", "ફ્રાન્સ", "ગ્રેટ બ્રિટન", "અમેરિકા"], correctAnswer: "અમેરિકા"),
            ExerciseItem(id: UUID(), prompt: "1440ની આસપાસ છાપખાનું કોણે બનાવ્યું?", options: ["લિઓનાર્દો દ વિન્ચી", "ગૅલિલિઓ", "જૉહૅન્સ ગૂટનબર્ગ", "આઇઝૅક ન્યૂટન"], correctAnswer: "જૉહૅન્સ ગૂટનબર્ગ"),
            ExerciseItem(id: UUID(), prompt: "1964ના નાગરિક અધિકાર અધિનિયમ પર કયા અમેરિકન રાષ્ટ્રપ્રમુખે સહી કરી?", options: ["જૉન એફ. કૅનેડી", "રિચર્ડ નિક્સન", "લિન્ડન બી. જૉનસન", "ડ્વાઇટ આઇઝનહાવર"], correctAnswer: "લિન્ડન બી. જૉનસન"),
            ExerciseItem(id: UUID(), prompt: "1963માં I Have a Dream ભાષણ કોણે આપ્યું?", options: ["મૅલ્કમ એક્સ", "બરાક ઓબામા", "માર્ટિન લૂથર કિનગ જૂનિયર", "ફ્રેડરિક ડગલસ"], correctAnswer: "માર્ટિન લૂથર કિનગ જૂનિયર"),
            ExerciseItem(id: UUID(), prompt: "ભારતના પ્રથમ મહિલા વડાપ્રધાન કોણ હતાં?", options: ["સરોજિની નાયડુ", "પ્રતિભા પાટીલ", "ઇન્દિરા ગાંધી", "સુષ્મા સ્વરાજ"], correctAnswer: "ઇન્દિરા ગાંધી"),
            ExerciseItem(id: UUID(), prompt: "સ્ટૅચ્યૂ ઑફ યુનિટી કોની યાદમાં બાંધવામાં આવી?", options: ["મહાત્મા ગાંધી", "જવાહરલાલ નહેરુ", "સરદાર વલ્લભભાઈ પટેલ", "ડૉ. આંબેડકર"], correctAnswer: "સરદાર વલ્લભભાઈ પટેલ"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાત રાજ્ય ક્યારે અસ્તિત્વમાં આવ્યું?", options: ["1947", "1950", "1960", "1965"], correctAnswer: "1960")
        ]
    )

    // MARK: - Exercise 9: General Knowledge — Geography (20 items)
    private static let geographyKnowledge = Exercise(
        id: UUID(),
        title: "સામાન્ય જ્ઞાન — ભૂગોળ",
        instructions: "સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "અમેરિકાની ઉત્તરે કયો દેશ છે?", options: ["મૅક્સિકો", "રશિયા", "કૅનેડા", "ગ્રીનલૅન્ડ"], correctAnswer: "કૅનેડા"),
            ExerciseItem(id: UUID(), prompt: "ગ્રૅન્ડ કૅન્યન કયા અમેરિકન રાજ્યમાં છે?", options: ["કૉલોરેડો", "યૂટા", "નેવાડા", "અૅરિઝોના"], correctAnswer: "અૅરિઝોના"),
            ExerciseItem(id: UUID(), prompt: "ટોક્યો કયા દેશની રાજધાની છે?", options: ["ચીન", "દક્ષિણ કોરિયા", "જાપાન", "થાઇલૅન્ડ"], correctAnswer: "જાપાન"),
            ExerciseItem(id: UUID(), prompt: "ભૂમિ ક્ષેત્રફળ પ્રમાણે સૌથી મોટું અમેરિકન રાજ્ય કયું છે?", options: ["ટૅક્સાસ", "કૅલિફોર્નિયા", "મૉન્ટાના", "અલાસ્કા"], correctAnswer: "અલાસ્કા"),
            ExerciseItem(id: UUID(), prompt: "ફ્રાન્સની રાજધાની કઈ છે?", options: ["લ્યૉ", "માર્સેઇ", "પૅરિસ", "બૉર્ડો"], correctAnswer: "પૅરિસ"),
            ExerciseItem(id: UUID(), prompt: "કયો દેશ જૂતાના આકાર જેવો છે?", options: ["સ્પેન", "ગ્રીસ", "ઇટાલી", "પૉર્ટુગલ"], correctAnswer: "ઇટાલી"),
            ExerciseItem(id: UUID(), prompt: "ભારતની રાજધાની કઈ છે?", options: ["મુંબઈ", "કોલકાતા", "ચેન્નઈ", "નવી દિલ્હી"], correctAnswer: "નવી દિલ્હી"),
            ExerciseItem(id: UUID(), prompt: "દુનિયાનો સૌથી ઊંચો પર્વત કયો છે?", options: ["K2", "કિલિમાન્જારો", "માઉન્ટ એવરેસ્ટ", "ડેનાલી"], correctAnswer: "માઉન્ટ એવરેસ્ટ"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતની રાજધાની કઈ છે?", options: ["અમદાવાદ", "સુરત", "વડોદરા", "ગાંધીનગર"], correctAnswer: "ગાંધીનગર"),
            ExerciseItem(id: UUID(), prompt: "તાજ મહેલ કયા શહેરમાં છે?", options: ["દિલ્હી", "મુંબઈ", "આગ્રા", "જયપુર"], correctAnswer: "આગ્રા"),
            ExerciseItem(id: UUID(), prompt: "અમેરિકાની રાજધાની કઈ છે?", options: ["ન્યૂયૉર્ક", "લૉસ એન્જલસ", "વૉશિંગ્ટન ડી.સી.", "શિકાગો"], correctAnswer: "વૉશિંગ્ટન ડી.સી."),
            ExerciseItem(id: UUID(), prompt: "સ્ટૅચ્યૂ ઑફ યુનિટી ક્યાં આવેલી છે?", options: ["ગાંધીનગર", "અમદાવાદ", "નર્મદા જિલ્લો", "સુરત"], correctAnswer: "નર્મદા જિલ્લો"),
            ExerciseItem(id: UUID(), prompt: "ઑસ્ટ્રેલિયાની રાજધાની કઈ છે?", options: ["સિડની", "મેલબર્ન", "કૅનબરા", "બ્રિસ્બૅન"], correctAnswer: "કૅનબરા"),
            ExerciseItem(id: UUID(), prompt: "ગીર રાષ્ટ્રીય ઉદ્યાન ક્યાં આવેલો છે?", options: ["રાજસ્થાન", "ગુજરાત", "મધ્ય પ્રદેશ", "મહારાષ્ટ્ર"], correctAnswer: "ગુજરાત"),
            ExerciseItem(id: UUID(), prompt: "કૅનેડાની રાજધાની કઈ છે?", options: ["ટોરૉન્ટો", "વૅન્કૂવર", "ઑટવા", "મૉન્ટ્રિયલ"], correctAnswer: "ઑટવા"),
            ExerciseItem(id: UUID(), prompt: "રણ ઑફ કચ્છ ક્યાં આવેલું છે?", options: ["રાજસ્થાન", "ગુજરાત", "સિંધ", "મહારાષ્ટ્ર"], correctAnswer: "ગુજરાત"),
            ExerciseItem(id: UUID(), prompt: "મક્કા કયા દેશમાં છે?", options: ["ઈરાન", "ઇરાક", "સૌદી અરેબિયા", "UAE"], correctAnswer: "સૌદી અરેબિયા"),
            ExerciseItem(id: UUID(), prompt: "હિમાલય પર્વત શ્રેણી કયા ખંડમાં છે?", options: ["યુરોપ", "આફ્રિકા", "દક્ષિણ અમેરિકા", "એશિયા"], correctAnswer: "એશિયા"),
            ExerciseItem(id: UUID(), prompt: "પાકિસ્તાનની રાજધાની કઈ છે?", options: ["કરાચી", "લાહોર", "ઇસ્લામાબાદ", "પેશાવર"], correctAnswer: "ઇસ્લામાબાદ"),
            ExerciseItem(id: UUID(), prompt: "ગોલ્ડન ગેટ બ્રિજ કયા અમેરિકન શહેરમાં છે?", options: ["લૉસ એન્જલસ", "સિઍટલ", "સૅન ફ્રાન્સિસ્કો", "સૅન ડિયેગો"], correctAnswer: "સૅન ફ્રાન્સિસ્કો")
        ]
    )

    // MARK: - Exercise 10: General Knowledge — Entertainment (15 items)
    private static let entertainmentKnowledge = Exercise(
        id: UUID(),
        title: "સામાન્ય જ્ઞાન — મનોરંજન",
        instructions: "સાચો જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ફિલ્મ 'શોલે' (1975)માં 'ગબ્બર સિંઘ'ની ભૂમિકા કોણે ભજવી હતી?", options: ["અમિતાભ બચ્ચન", "અમજદ ખાન", "ધર્મેન્દ્ર", "સંજીવ કુમાર"], correctAnswer: "અમજદ ખાન"),
            ExerciseItem(id: UUID(), prompt: "કૌન બનેગા કરોડપતિ શોના હોસ્ટ કોણ છે?", options: ["શાહરૂખ ખાન", "સલમાન ખાન", "અમિતાભ બચ્ચન", "આમિર ખાન"], correctAnswer: "અમિતાભ બચ્ચન"),
            ExerciseItem(id: UUID(), prompt: "ફિલ્મ 'દિલ વાલે દુલ્હનિયા લે જાયેંગે'માં મુખ્ય ભૂમિકા કોણે ભજવી હતી?", options: ["આમિર ખાન", "સલમાન ખાન", "શાહરૂખ ખાન", "અક્ષય કુમાર"], correctAnswer: "શાહરૂખ ખાન"),
            ExerciseItem(id: UUID(), prompt: "લતા મંગેશકર કઈ કળા માટે જાણીતાં છે?", options: ["અભિનય", "ગાયન", "નૃત્ય", "ચિત્રકળા"], correctAnswer: "ગાયન"),
            ExerciseItem(id: UUID(), prompt: "ટીવી શ્રેણી 'ફ્રેન્ડ્સ'માં કુલ કેટલા મુખ્ય પાત્રો હતાં?", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "ફિલ્મ 'ફાઇન્ડિંગ નેમો'માં નેમો કયા પ્રકારની માછલી છે?", options: ["સૅલ્મન", "ક્લાઉનફિશ", "ટ્યૂના", "ગોલ્ડફિશ"], correctAnswer: "ક્લાઉનફિશ"),
            ExerciseItem(id: UUID(), prompt: "હૅરી પૉટર પુસ્તક-શ્રેણીના લેખક કોણ છે?", options: ["જે. કે. રૉઉલિંગ", "રૉઆલ્ડ ડાલ", "સી. એસ. લ્યૂઇસ", "જ્યૉર્જ ઑર્વેલ"], correctAnswer: "જે. કે. રૉઉલિંગ"),
            ExerciseItem(id: UUID(), prompt: "ફિલ્મ 'ટૉય સ્ટૉરી'માં વૉડીનો શ્રેષ્ઠ મિત્ર કોણ છે?", options: ["બઝ લાઇટઇયર", "રેક્સ", "હૅમ", "સ્લિંકી"], correctAnswer: "બઝ લાઇટઇયર"),
            ExerciseItem(id: UUID(), prompt: "ક્રિકેટર સચિન તૅંડુલકર ક્યા દેશ વતી રમતા હતા?", options: ["પાકિસ્તાન", "શ્રીલંકા", "ભારત", "ઑસ્ટ્રેલિયા"], correctAnswer: "ભારત"),
            ExerciseItem(id: UUID(), prompt: "ટીવી શ્રેણી 'ધ સિમ્પ્સન્સ'માં કુટુંબના પિતાનું નામ શું છે?", options: ["બાર્ટ", "હૉમર", "નેડ", "મૉઇ"], correctAnswer: "હૉમર"),
            ExerciseItem(id: UUID(), prompt: "એલ્વિસ પ્રેસ્લી કઈ કળા માટે 'કિંગ' કહેવાતા હતા?", options: ["રૉક એન્ડ રૉલ સંગીત", "ચિત્રકળા", "અભિનય", "ક્રિકેટ"], correctAnswer: "રૉક એન્ડ રૉલ સંગીત"),
            ExerciseItem(id: UUID(), prompt: "ફિલ્મ 'શોલે'માં 'જય'ની ભૂમિકા કોણે ભજવી હતી?", options: ["ધર્મેન્દ્ર", "સંજીવ કુમાર", "અમજદ ખાન", "અમિતાભ બચ્ચન"], correctAnswer: "અમિતાભ બચ્ચન"),
            ExerciseItem(id: UUID(), prompt: "હૅરી પૉટર ક્યા જાદુઈ શાળામાં ભણ્યા હતા?", options: ["ડ્યૂર્મ્સ્ટ્રૅંગ", "બ્યૂક્સ્બૅટૉન", "હૉગ્વૉર્ટ્સ", "ઇલવૅરમૉર્ની"], correctAnswer: "હૉગ્વૉર્ટ્સ"),
            ExerciseItem(id: UUID(), prompt: "'ફ્રેન્ડ્સ' ટીવી શ્રેણી ક્યા શહેરમાં આધારિત છે?", options: ["લૉસ એન્જલસ", "શિકાગો", "ન્યૂયૉર્ક", "બૉસ્ટન"], correctAnswer: "ન્યૂયૉર્ક"),
            ExerciseItem(id: UUID(), prompt: "સચિન તૅંડુલકર ક્રિકેટમાં કઈ બૅટિંગ પૉઝિશન માટે જાણીતા હતા?", options: ["ઓપનર", "મિડલ ઓર્ડર", "ટેઇલ-એન્ડર", "વિકેટ-કીપર"], correctAnswer: "ઓપનર")
        ]
    )

    // MARK: - Exercise 11: Estimation and Logic (20 items)
    private static let estimationLogic = Exercise(
        id: UUID(),
        title: "અનુમાન અને તર્ક",
        instructions: "સૌથી સાચો અને ઉચિત જવાબ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "નરમ બાફેલા ઈંડામાં કેટલો સમય લાગે છે?", options: ["1 મિનિટ", "6 મિનિટ", "20 મિનિટ", "1 કલાક"], correctAnswer: "6 મિનિટ"),
            ExerciseItem(id: UUID(), prompt: "એક ડબ્બામાં કેટલા ઈંડા હોય છે?", options: ["6", "12", "18", "24"], correctAnswer: "12"),
            ExerciseItem(id: UUID(), prompt: "સામાન્ય કારમાં કેટલા પૈડા હોય છે?", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "ભરેલા બાથટબમાં લગભગ કેટલા લિટર પાણી હોય છે?", options: ["5 લિટર", "30 લિટર", "120 લિટર", "500 લિટર"], correctAnswer: "120 લિટર"),
            ExerciseItem(id: UUID(), prompt: "હાથીને કેટલા પગ હોય છે?", options: ["2", "3", "4", "6"], correctAnswer: "4"),
            ExerciseItem(id: UUID(), prompt: "એક સદીમાં કેટલા વર્ષ હોય છે?", options: ["10", "50", "100", "1000"], correctAnswer: "100"),
            ExerciseItem(id: UUID(), prompt: "શું હાથી ઉંદર કરતાં મોટો છે?", options: ["હા", "ના", "બંને સરખા", "ખ્યાલ નથી"], correctAnswer: "હા"),
            ExerciseItem(id: UUID(), prompt: "એક સૅન્ડવિચમાં કેટલા બ્રેડના ટુકડા હોય છે?", options: ["1", "2", "3", "4"], correctAnswer: "2"),
            ExerciseItem(id: UUID(), prompt: "એક વ્યક્તિ સામાન્ય રીતે કેટલી ઝડપે ચાલે છે?", options: ["લગભગ 1 km/h", "લગભગ 5 km/h", "લગભગ 20 km/h", "લગભગ 50 km/h"], correctAnswer: "લગભગ 5 km/h"),
            ExerciseItem(id: UUID(), prompt: "સામાન્ય વર્ષમાં કેટલા દિવસ હોય છે?", options: ["300", "356", "365", "400"], correctAnswer: "365"),
            ExerciseItem(id: UUID(), prompt: "વર્ષના કેટલા મહિનામાં 31 દિવસ હોય છે?", options: ["5", "6", "7", "8"], correctAnswer: "7"),
            ExerciseItem(id: UUID(), prompt: "દસ લાખમાં કેટલા શૂન્ય હોય છે?", options: ["4", "5", "6", "7"], correctAnswer: "6"),
            ExerciseItem(id: UUID(), prompt: "એક કિલો રૂ અને એક કિલો લોઢામાં કોણ ભારે છે?", options: ["લોઢું", "રૂ", "બંને સરખા", "આધાર રાખે"], correctAnswer: "બંને સરખા"),
            ExerciseItem(id: UUID(), prompt: "જો આપ દિવસમાં 3 વાર જમો તો એક અઠવાડિયામાં કેટલી વાર જમો?", options: ["3", "7", "14", "21"], correctAnswer: "21"),
            ExerciseItem(id: UUID(), prompt: "એક સદીમાં કેટલા દાયકા હોય છે?", options: ["5", "8", "10", "100"], correctAnswer: "10"),
            ExerciseItem(id: UUID(), prompt: "પાંચ કિલોના લોટના થેલાનું વજન કેટલું?", options: ["1 kg", "2 kg", "5 kg", "10 kg"], correctAnswer: "5 kg"),
            ExerciseItem(id: UUID(), prompt: "મોટા ભાગના સ્વસ્થ વ્યક્તિઓ એ રાત્રે કેટલા કલાક ઊઘવું જોઈએ?", options: ["3 થી 4", "6 થી 8", "10 થી 12", "14 થી 16"], correctAnswer: "6 થી 8"),
            ExerciseItem(id: UUID(), prompt: "શું કોઈ ઇન્સાન બિના સાધને આખી કાર ઉઠાવી શકે?", options: ["હા સહેલાઈથી", "હા તાલીમ સાથે", "ના કાર ઘણી ભારે છે", "હા એક હાથથી"], correctAnswer: "ના કાર ઘણી ભારે છે"),
            ExerciseItem(id: UUID(), prompt: "એક સ્પાઇડરને કેટલા પગ હોય છે?", options: ["4", "6", "8", "10"], correctAnswer: "8"),
            ExerciseItem(id: UUID(), prompt: "જો આપ સવારે 8 વાગ્યે દવા લો અને દર 8 કલાકે લેવાની હોય તો આગળની ક્યારે?", options: ["બપોરે 2", "બપોરે 3", "સાંજે 4", "સાંજે 5"], correctAnswer: "સાંજે 4")
        ]
    )

    // MARK: - Exercise 12: Deductive Reasoning (15 items)
    private static let deductiveReasoning = Exercise(
        id: UUID(),
        title: "તાર્કિક વિચાર",
        instructions: "દરેક પરિસ્થિતિ વાંચો અને સૌથી ઉચિત નિષ્કર્ષ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "કોઈ વ્યક્તિ સ્વિમસૂટ અને સનગ્લાસ પહેરીને જઈ રહ્યા છે. તેઓ કદાચ ક્યાં જઈ રહ્યા છે?", options: ["સિનેમા", "દરિયાકિનારો અથવા સ્વિમિંગ પૂલ", "લગ્ન", "કરિયાણાની દુકાન"], correctAnswer: "દરિયાકિનારો અથવા સ્વિમિંગ પૂલ"),
            ExerciseItem(id: UUID(), prompt: "એમ્બ્યુલન્સ લાઇટ ચાલુ કરીને સાઇરન વગાડતી પસાર થઈ રહી છે. આપે શું કરવું જોઈએ?", options: ["ઝડપ વધારો", "બાજુ પર ખસો અને ઊભા રહો", "હૉર્ન વગાડો", "અવગણો"], correctAnswer: "બાજુ પર ખસો અને ઊભા રહો"),
            ExerciseItem(id: UUID(), prompt: "એક વ્યક્તિ છત્રી અને રેઇનકોટ પહેરીને નીકળ્યા છે. હવામાન કેવું હશે?", options: ["ગરમ અને તડકો", "ઠંડો અને બરફ", "વરસાદ", "સૂકો અને પવનવાળો"], correctAnswer: "વરસાદ"),
            ExerciseItem(id: UUID(), prompt: "રાત્રે ઘરની બધી લાઇટ અચાનક બંધ થઈ ગઈ. શું થયું હશે?", options: ["સૂરજ આથમ્યો", "વીજળી ગઈ", "આંખો બંધ કરી", "ટીવી બંધ થયું"], correctAnswer: "વીજળી ગઈ"),
            ExerciseItem(id: UUID(), prompt: "રાત્રે ભારે હિમ વરસ્યો. સવારે ગાડી ચલાવવાની છે. પહેલાં શું કરશો?", options: ["સામાન્ય ઝડપે ચલાવીશ", "રસ્તાની સ્થિતિ ચકાસીશ અને વિન્ડશીલ્ડ સાફ કરીશ", "પોલીસને ફોન કરીશ", "ઘરે જ રહીશ"], correctAnswer: "રસ્તાની સ્થિતિ ચકાસીશ અને વિન્ડશીલ્ડ સાફ કરીશ"),
            ExerciseItem(id: UUID(), prompt: "ડિનર માટે મીણબત્તી સળગાવી અને 20 મિનિટ માટે બીજા રૂમમાં જવું છે. શું કરશો?", options: ["સળગતી છોડી દઈશ", "જતા પહેલાં બુઝાવી દઈશ", "અવગણીશ", "બારી ખોલી દઈશ"], correctAnswer: "જતા પહેલાં બુઝાવી દઈશ"),
            ExerciseItem(id: UUID(), prompt: "મિત્ર લાંબા સમય ઠંડીમાં રહ્યા પછી ધ્રૂજી રહ્યા છે અને ગૂંચવાયેલા છે. શું થયું હશે?", options: ["હીટ એક્ઝૉશન", "હાઇપોથર્મિયા", "ડિહાઇડ્રેશન", "સનબર્ન"], correctAnswer: "હાઇપોથર્મિયા"),
            ExerciseItem(id: UUID(), prompt: "રસોડામાં ગૅસની વાસ આવી રહી છે. સૌ પ્રથમ શું કરશો?", options: ["માચીસ સળગાવીશ", "લાઇટ ચાલુ કરીશ", "તરત બહાર નીકળીશ અને ગૅસ કંપનીને ફોન કરીશ", "ઓવન ખોલીશ"], correctAnswer: "તરત બહાર નીકળીશ અને ગૅસ કંપનીને ફોન કરીશ"),
            ExerciseItem(id: UUID(), prompt: "એક વ્યક્તિ ચર્ચની વેદી પર સફેદ પોશાક પહેરીને ઊભા છે. શું થઈ રહ્યું છે?", options: ["દીક્ષાંત સમારોહ", "અંતિમ સંસ્કાર", "લગ્ન", "જન્મ દિવસ"], correctAnswer: "લગ્ન"),
            ExerciseItem(id: UUID(), prompt: "કોઈ ટોપી અને ગાઉન પહેરીને ડિપ્લોમા હાથમાં લઈને ઊભા છે. તેઓ ક્યાંથી આવ્યા?", options: ["લગ્ન", "દીક્ષાંત સમારોહ", "અંતિમ સંસ્કાર", "નોકરીનો ઇન્ટરવ્યૂ"], correctAnswer: "દીક્ષાંત સમારોહ"),
            ExerciseItem(id: UUID(), prompt: "જમીન પર એક સિક્કો મળ્યો જેના પર અબ્રાહમ લિંકનનું ચિત્ર છે. આ કયો સિક્કો છે?", options: ["ક્વૉર્ટર", "ડાઇમ", "નિકેલ", "પૅની"], correctAnswer: "પૅની"),
            ExerciseItem(id: UUID(), prompt: "દૂરથી ગડગડાટ સંભળાયો. કયું હવામાન આવવાનું છે?", options: ["વાવાઝોડું", "વીજળી અને વરસાદ", "ભૂકંપ", "હિમ"], correctAnswer: "વીજળી અને વરસાદ"),
            ExerciseItem(id: UUID(), prompt: "એક વ્યક્તિ ભારે જૅકેટ, બૂટ અને દસ્તાના પહેરીને છે. કઈ ઋતુ છે?", options: ["ઉનાળો", "વસંત", "શિયાળો", "પાનખર"], correctAnswer: "શિયાળો"),
            ExerciseItem(id: UUID(), prompt: "બિલ પર લાલ રંગે 'બાકી' લખ્યું છે. તેનો અર્થ શું છે?", options: ["આપે વહેલું ચૂકવ્યું", "ચૂકવણી સમયસર મળી", "હજુ દેવું નથી", "આપ પર બાકી રકમ છે"], correctAnswer: "આપ પર બાકી રકમ છે"),
            ExerciseItem(id: UUID(), prompt: "હૉસ્પિટલના કૉરિડોરમાં કોઈ સ્ક્રબ પહેરીને સ્ટેથોસ્કૉપ લટકાવીને ઊભા છે. તેઓ કોણ છે?", options: ["શિક્ષક", "રસોઇયો", "ડૉક્ટર અથવા નર્સ", "પોલીસ"], correctAnswer: "ડૉક્ટર અથવા નર્સ")
        ]
    )

    // MARK: - Exercise 13: Gujarati Idioms (15 items)
    // NOTE: Flagged for native Gujarati speaker review before publishing.
    private static let idioms = Exercise(
        id: UUID(),
        title: "ગુજરાતી રૂઢિપ્રયોગ",
        instructions: "રૂઢિપ્રયોગનો અર્થ તમારા શબ્દોમાં કહો.",
        section: .cognition,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ઊંટ ઉપર ઊંટ ચઢ્યો", options: [], correctAnswer: "એક મુશ્કેલી ઉપર બીજી મુશ્કેલી આવવી — પહેલેથી મુશ્કેલ સ્થિતિ વધુ ખરાબ થવી"),
            ExerciseItem(id: UUID(), prompt: "ઘરનો ઉજ્જડ ઘાટ", options: [], correctAnswer: "ઘરની અંદરની વ્યક્તિ જ ઘરને નુકસાન કરે — ઘરનો ભેદ ઘરની બહાર જવો"),
            ExerciseItem(id: UUID(), prompt: "દૂધ નો દૂધ, પાણી નો પાણી", options: [], correctAnswer: "સાચો ન્યાય કરવો — સત્ય અને જૂઠ અલગ કરવું"),
            ExerciseItem(id: UUID(), prompt: "ખોદ્યો ડુંગર ને નીકળ્યો ઉંદર", options: [], correctAnswer: "ઘણી મહેનત પછી ઘણું ઓછું પરિણામ — અપેક્ષા કરતાં ઘણું ઓછું મળવું"),
            ExerciseItem(id: UUID(), prompt: "જ્યાં ચાહ ત્યાં રાહ", options: [], correctAnswer: "જ્યાં ઇચ્છા હોય ત્યાં રસ્તો નીકળે — દૃઢ ઇચ્છાશક્તિ હોય તો ઉપાય મળે"),
            ExerciseItem(id: UUID(), prompt: "ઘઉં સાથે ઘૂણ પણ દળાય", options: [], correctAnswer: "નિર્દોષ વ્યક્તિ ગુનેગારની સાથે સજા ભોગવે — સારા-ખરાબ બધા સાથે સહન કરે"),
            ExerciseItem(id: UUID(), prompt: "આગ ઠારવા ઘી ન પડાય", options: [], correctAnswer: "સ્થિતિ વધુ ખરાબ ન કરવી — ખરાબ સ્થિતિમાં વધુ ઇંધણ ન ઉમેરવું"),
            ExerciseItem(id: UUID(), prompt: "કરે તે ભરે", options: [], correctAnswer: "જે જેવું કરે તેવું ફળ મળે — જેવું વાવો તેવું લણો"),
            ExerciseItem(id: UUID(), prompt: "ભૂખ્યો ઉંદર ભાગ કૂદે", options: [], correctAnswer: "ભૂખ અથવા જરૂરિયાત માણસ પાસે હિંમત કરાવે — ભૂખ લાગ્યે ગમે તે કરવું પડે"),
            ExerciseItem(id: UUID(), prompt: "રાજા ભૂખ્યો ગામ ભૂખ્યું", options: [], correctAnswer: "નેતા કે મોભી જ્યારે મુશ્કેલીમાં હોય ત્યારે બધા મુશ્કેલીમાં — નેતાની અસર આખી ટીમ પર"),
            ExerciseItem(id: UUID(), prompt: "ઊગ ત્યાં માણસ", options: [], correctAnswer: "જ્યાં તક હોય ત્યાં લોકો ભેગા થાય — સારી જગ્યા એ લોકો આવે"),
            ExerciseItem(id: UUID(), prompt: "ભગતને ત્યાં ચોર ન આવે", options: [], correctAnswer: "પ્રામાણિક અને ધાર્મિક માણસ પાસે ખરાબ વ્યક્તિ ટકી ન શકે"),
            ExerciseItem(id: UUID(), prompt: "વાંદરાને શું વૈભવ", options: [], correctAnswer: "જેને કિંમત ન સમજાય તેને સારી વસ્તુ આપવી નકામી — અયોગ્ય વ્યક્તિ સારી વસ્તુની કદર ન કરે"),
            ExerciseItem(id: UUID(), prompt: "ખૂટ ભઠ્ઠી ઠારે", options: [], correctAnswer: "સાચી વ્યક્તિ કે સાચો ઉપાય કઠિન સ્થિતિ સંભાળી શકે"),
            ExerciseItem(id: UUID(), prompt: "માગ્યા ભાગ્ય ન મળે", options: [], correctAnswer: "નસીબ કે ભાગ્ય માગ્યાથી ન મળે — ભાગ્ય પ્રયત્નથી બને, ફક્ત ઇચ્છાથી નહીં")
        ]
    )

    // MARK: - Exercise 14: Personal Memory Reflection (20 items)
    private static let personalMemory = Exercise(
        id: UUID(),
        title: "સ્વયં વિશે",
        instructions: "આ પ્રશ્નોના કોઈ સાચા કે ખોટા જવાબ નથી. તમારી યાદો અને અનુભવો શેર કરો.",
        section: .cognition,
        type: .openEnded,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "તમે કઈ ગલી કે મહોલ્લામાં ઉછર્યા?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "તમારી સૌથી જૂની બાળપણની યાદ કઈ છે?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "બાળપણમાં તમે મોટા થઈને શું બનવા માંગતા હતા?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "તમારા લગ્નનો દિવસ અથવા કોઈ યાદગાર લગ્ન સમારંભ વર્ણવો.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "કયું ગીત તમને કોઈ ખાસ સમયની યાદ અપાવે છે?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "નવરાત્રિ ગરબા રમવાની કોઈ ખાસ યાદ છે?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "ઉત્તરાયણ — પતંગ ઉડાવવાની કઈ યાદ સૌથી વધુ ગમે છે?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "અમેરિકા પ્રથમ વખત આવ્યા ત્યારે શું અનુભવ્યું?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "તમારી પ્રથમ નોકરી કઈ હતી?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "કઈ યાત્રા અથવા રજા સૌથી વધુ ગમી?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "બાળપણમાં કઈ રમતો રમતા હતા?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "તમારા બાળપણના ઘરનું જેટલું યાદ હોય તેટલું વર્ણવો.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "કઈ ગંધ તમને કોઈ જૂની યાદ તરફ લઈ જાય છે?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "તમારી સૌથી પ્રિય ગુજરાતી વાનગી કઈ છે અને કોણ બનાવતું હતું?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "કોઈ ઐતિહાસિક ઘટના — જેમ કે 2001નો ભૂકંપ અથવા 9/11 — ત્યારે તમે ક્યાં હતા?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "કોઈ એવી કળા અથવા શોખ જે તમને ગૌરવ અપાવે છે.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "કોઈ એવી ક્ષણ જ્યારે એટલું હસ્યા કે પેટ દુઃખ્યું.", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "તમારા માતા-પિતા અથવા દાદા-દાદી શું કહેતા હતા જે આજે પણ યાદ છે?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "ડ્રાઇવિંગ, રસોઈ અથવા કોઈ જરૂરી કામ કોણે શીખવ્યું?", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "બાળપણનું કયું ખાવાનું આજે પણ ગમે છે?", options: [], correctAnswer: "")
        ]
    )

    // MARK: - Exercise 15: Rote Memory Lists (12 items)
    private static let roteMemory = Exercise(
        id: UUID(),
        title: "રટણ યાદી",
        instructions: "દરેક વર્ગમાં જેટલી યાદ હોય તેટલી વસ્તુઓ કહો. પછી પૂરી યાદી જુઓ.",
        section: .cognition,
        type: .openEnded,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "અઠવાડિયાના સાત દિવસ ગુજરાતીમાં કહો.", options: [], correctAnswer: "સોમવાર, મંગળવાર, બુધવાર, ગુરુવાર, શુક્રવાર, શનિવાર, રવિવાર"),
            ExerciseItem(id: UUID(), prompt: "વર્ષના બાર મહિના ગુજરાતીમાં કહો.", options: [], correctAnswer: "જાન્યુઆરી, ફેબ્રુઆરી, માર્ચ, એપ્રિલ, મે, જૂન, જુલાઈ, ઑગસ્ટ, સપ્ટેમ્બર, ઑક્ટોબર, નવેમ્બર, ડિસેમ્બર"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતીમાં 1 થી 10 સુધી ગણો.", options: [], correctAnswer: "એક, બે, ત્રણ, ચાર, પાંચ, છ, સાત, આઠ, નવ, દસ"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતના પાડોશી રાજ્યો કહો.", options: [], correctAnswer: "રાજસ્થાન, મધ્ય પ્રદેશ, મહારાષ્ટ્ર"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતના મુખ્ય તહેવારો કહો.", options: [], correctAnswer: "નવરાત્રિ, ઉત્તરાયણ, દિવાળી, હોળી, જન્માષ્ટમી, રામ નવમી, ભાઈ બીજ, ગણેશ ચતુર્થી"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતના મુખ્ય શહેરો કહો.", options: [], correctAnswer: "અમદાવાદ, સુરત, વડોદરા, રાજકોટ, ભાવનગર, જૂનાગઢ, ગાંધીનગર, આણંદ"),
            ExerciseItem(id: UUID(), prompt: "સાત ખંડોના નામ કહો.", options: [], correctAnswer: "આફ્રિકા, એન્ટાર્કટિકા, એશિયા, ઑસ્ટ્રેલિયા, યુરોપ, ઉત્તર અમેરિકા, દક્ષિણ અમેરિકા"),
            ExerciseItem(id: UUID(), prompt: "પાંચ ઇન્દ્રિયો કહો.", options: [], correctAnswer: "દૃષ્ટિ, શ્રવણ, ઘ્રાણ, સ્વાદ, સ્પર્શ"),
            ExerciseItem(id: UUID(), prompt: "ભારતના પાડોશી દેશો કહો.", options: [], correctAnswer: "પાકિસ્તાન, ચીન, નેપાળ, ભૂટાન, બાંગ્લાદેશ, મ્યાનમાર, શ્રીલંકા"),
            ExerciseItem(id: UUID(), prompt: "સૌરમંડળના આઠ ગ્રહો કહો.", options: [], correctAnswer: "બુધ, શુક્ર, પૃથ્વી, મંગળ, ગુરુ, શનિ, યુરેનસ, નેપ્ચ્યૂન"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતી પરિવારના સભ્યોના નામ કહો.", options: [], correctAnswer: "બાપા, બા, ભાઈ, બહેન, દાદા, દાદી, નાના, નાની, કાકા, કાકી, મામા, મામી, ફઈ, ફૈઇ"),
            ExerciseItem(id: UUID(), prompt: "ગુજરાતી ખોરાકની વાનગીઓ કહો.", options: [], correctAnswer: "ઢોકળા, થેપલા, ફાફડા, જલેબી, ઊંધિયું, ખાખરા, ખીચડી, કઢી, શ્રીખંડ, ગાઠિયા, મોહનથાળ, હાંડવો")
        ]
    )
}
