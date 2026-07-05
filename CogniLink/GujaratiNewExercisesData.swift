import Foundation

/// Holds the 14 new Gujarati exercises.
struct GujaratiNewExercisesData {

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
        title: "પ્રાસવાળા શબ્દો",
        instructions: "આપેલા શબ્દ સાથે સમાન પ્રાસ ધરાવતો શબ્દ પસંદ કરો.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "કયો શબ્દ 'પાણી' સાથે પ્રાસ ધરાવે છે?", options: ["દૂધ", "રાણી", "લીલો", "ચમચી"], correctAnswer: "રાણી", explanation: "પાણી અને રાણી બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'રાત' સાથે પ્રાસ ધરાવે છે?", options: ["દિવસ", "વાત", "સવાર", "ચાલવું"], correctAnswer: "વાત", explanation: "રાત અને વાત બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'સાત' સાથે પ્રાસ ધરાવે છે?", options: ["આઠ", "ભાત", "નવ", "દસ"], correctAnswer: "ભાત", explanation: "સાત અને ભાત બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'તાળું' સાથે પ્રાસ ધરાવે છે?", options: ["ચાવી", "માળું", "લોખંડ", "દરવાજો"], correctAnswer: "માળું", explanation: "તાળું અને માળું બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'લાલ' સાથે પ્રાસ ધરાવે છે?", options: ["પીળો", "ગાલ", "વાદળી", "લીલો"], correctAnswer: "ગાલ", explanation: "લાલ અને ગાલ બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'પાન' સાથે પ્રાસ ધરાવે છે?", options: ["ઝાડ", "વાન", "ખીલવું", "મૂળ"], correctAnswer: "વાન", explanation: "પાન અને વાન બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'મન' સાથે પ્રાસ ધરાવે છે?", options: ["હૃદય", "તન", "વિચાર", "શાંતિ"], correctAnswer: "તન", explanation: "મન અને તન બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'ઘર' સાથે પ્રાસ ધરાવે છે?", options: ["રૂમ", "વર", "દીવાલ", "છત"], correctAnswer: "વર", explanation: "ઘર અને વર બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'મોર' સાથે પ્રાસ ધરાવે છે?", options: ["પક્ષી", "ચોર", "પંખ", "ઝાડ"], correctAnswer: "ચોર", explanation: "મોર અને ચોર બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'ગીત' સાથે પ્રાસ ધરાવે છે?", options: ["સૂર", "મીત", "રાગ", "ગાવું"], correctAnswer: "મીત", explanation: "ગીત અને મીત બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'નદી' સાથે પ્રાસ ધરાવે છે?", options: ["પાણી", "સદી", "તળાવ", "દરિયો"], correctAnswer: "સદી", explanation: "નદી અને સદી બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'કેળા' સાથે પ્રાસ ધરાવે છે?", options: ["ફળ", "મેળા", "સફરજન", "કેરી"], correctAnswer: "મેળા", explanation: "કેળા અને મેળા બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'સાદ' સાથે પ્રાસ ધરાવે છે?", options: ["અવાજ", "વાદ", "શાંતિ", "बोલવું"], correctAnswer: "વાદ", explanation: "સાદ અને વાદ બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'તેલ' સાથે પ્રાસ ધરાવે છે?", options: ["ઘી", "ખેલ", "પાણી", "રસોઈ"], correctAnswer: "ખેલ", explanation: "તેલ અને ખેલ બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'બાલ' સાથે પ્રાસ ધરાવે છે?", options: ["ચહેરા", "ગાલ", "હાથ", "આંખ"], correctAnswer: "ગાલ", explanation: "બાલ અને ગાલ બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'ગામ' સાથે પ્રાસ ધરાવે છે?", options: ["શહેર", "નામ", "નગર", "રસ્તો"], correctAnswer: "નામ", explanation: "ગામ અને નામ બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'ચોપડી' સાથે પ્રાસ ધરાવે છે?", options: ["પેન", "ટોપડી", "પાનું", "વાંચવું"], correctAnswer: "ટોપડી", explanation: "ચોપડી અને ટોપડી બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'તીર' સાથે પ્રાસ ધરાવે છે?", options: ["ધનુષ", "વીર", "શિકાર", "પક્ષી"], correctAnswer: "વીર", explanation: "તીર અને વીર બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'હાર' સાથે પ્રાસ ધરાવે છે?", options: ["જીત", "તાર", "ગળા", "ફૂલ"], correctAnswer: "તાર", explanation: "હાર અને તાર બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે."),
            ExerciseItem(prompt: "કયો શબ્દ 'ફૂલ' સાથે પ્રાસ ધરાવે છે?", options: ["ભૂલ", "પાન", "છોડ", "બગીચો"], correctAnswer: "ભૂલ", explanation: "ફૂલ અને ભૂલ બંને શબ્દોનો અંતિમ ઉચ્ચાર પ્રાસ સમાન છે.")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "શબ્દ જોડાણ",
        instructions: "આપેલા શબ્દ સાથે સૌથી નજીકથી જોડાયેલો શબ્દ પસંદ કરો.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ડૉક્ટર", options: ["હોસ્પિટલ", "એરપોર્ટ", "લાઇબ્રેરી", "ખેતર"], correctAnswer: "હોસ્પિટલ", explanation: "ડૉક્ટરો દર્દીઓની સારવાર માટે હોસ્પિટલમાં કામ કરે છે."),
            ExerciseItem(prompt: "રોટલી", options: ["માખણ", "હથોડી", "સાબુ", "પેન્સિલ"], correctAnswer: "માખણ", explanation: "રોટલી કે બ્રેડ પર સામાન્ય રીતે માખણ લગાવવામાં આવે છે."),
            ExerciseItem(prompt: "રસોડું", options: ["ચૂલો", "પલંગ", "બાથરૂમ", "કાર"], correctAnswer: "ચૂલો", explanation: "ચૂલો રસોડાનું એક મુખ્ય સાધન છે."),
            ExerciseItem(prompt: "લાઇબ્રેરી", options: ["પુસ્તકો", "કપડાં", "સાધનો", "કરિયાણું"], correctAnswer: "પુસ્તકો", explanation: "લાઇબ્રેરીમાં પુસ્તકોનો સંગ્રહ હોય છે અને ત્યાંથી વાંચવા માટે મળે છે."),
            ExerciseItem(prompt: "જૂતા", options: ["મોજાં", "ટોપી", "હાથમોજાં", "બેલ્ટ"], correctAnswer: "મોજાં", explanation: "જૂતાની અંદર મોજાં પહેરવામાં આવે છે."),
            ExerciseItem(prompt: "અવકાશયાત્રી", options: ["અંતરિક્ષ", "મહાસાગર", "જંગલ", "રણ"], correctAnswer: "અંતરિક્ષ", explanation: "અવકાશયાત્રીઓ અંતરિક્ષમાં મુસાફરી કરે છે."),
            ExerciseItem(prompt: "શિક્ષક", options: ["શાળા", "ફેક્ટરી", "થિયેટર", "જીમ"], correctAnswer: "શાળા", explanation: "શિક્ષકો શાળામાં વિદ્યાર્થીઓને ભણાવે છે."),
            ExerciseItem(prompt: "મહાસાગર", options: ["માછલી", "પક્ષી", "ગાય", "કરોળિયો"], correctAnswer: "માછલી", explanation: "માછલીઓ મહાસાગરમાં રહે છે."),
            ExerciseItem(prompt: "કાર", options: ["ટાયર", "પાંખ", "કાઠી", "સઢ"], correctAnswer: "ટાયર", explanation: "ટાયર એ કારના અગત્યના ભાગ છે."),
            ExerciseItem(prompt: "વરસાદ", options: ["છત્રી", "ગોગલ્સ", "હાથમોજાં", "મફલર"], correctAnswer: "છત્રી", explanation: "છત્રી આપણને વરસાદથી બચાવે છે."),
            ExerciseItem(prompt: "આગ", options: ["ધુમાડો", "બર્ફ", "પાંદડું", "સિક્કો"], correctAnswer: "ધુમાડો", explanation: "આગ લાગવાથી ધુમાડો નીકળે છે."),
            ExerciseItem(prompt: "દંત ચિકિત્સક", options: ["દાંત", "વાળ", "આંખો", "પગ"], correctAnswer: "દાંત", explanation: "દંત ચિકિત્સકો દાંતના સ્વાસ્થ્યના નિષ્ણાત હોય છે."),
            ExerciseItem(prompt: "કોફી", options: ["મગ", "વાટકો", "ડીશ", "કાંટો"], correctAnswer: "મગ", explanation: "કોફી સામાન્ય રીતે મગ કે કપમાં પીવાય છે."),
            ExerciseItem(prompt: "બગીચો", options: ["ફૂલો", "કમ્પ્યુટર", "ચૂલો", "કોટ"], correctAnswer: "ફૂલો", explanation: "બગીચામાં ફૂલો ઉગે છે."),
            ExerciseItem(prompt: "ચાવી", options: ["તાળું", "બારી", "છત", "ભોંયતળિયું"], correctAnswer: "તાળું", explanation: "ચાવીનો ઉપયોગ તાળું ખોલવા માટે થાય છે."),
            ExerciseItem(prompt: "પોસ્ટ ઓફિસ", options: ["પત્ર", "રોટલી", "દવા", "ટિકિટ"], correctAnswer: "પત્ર", explanation: "પત્ર ટપાલ કે પોસ્ટ ઓફિસ દ્વારા મોકલવામાં આવે છે."),
            ExerciseItem(prompt: "પિયાનો", options: ["સંગીત", "રંગો", "માટી", "લાકડું"], correctAnswer: "સંગીત", explanation: "પિયાનો સંગીત વગાડવા માટેનું એક વાદ્ય છે."),
            ExerciseItem(prompt: "મધમાખી", options: ["મધ", "દૂધ", "ऊन", "રેશમ"], correctAnswer: "મધ", explanation: "મધમાખીઓ મધ બનાવે છે."),
            ExerciseItem(prompt: "કરોળિયો", options: ["જાળું", "માળો", "છત્તો", "ગુફા"], correctAnswer: "જાળું", explanation: "કરોળિયો જાળું ગૂંથે છે."),
            ExerciseItem(prompt: "ખેડૂત", options: ["ટ્રેક્ટર", "હવાઈ જહાજ", "સબમરીન", "ટ્રેન"], correctAnswer: "ટ્રેક્ટર", explanation: "ખેડૂત ખેતરમાં કામ કરવા માટે ટ્રેક્ટરનો ઉપયોગ કરે છે.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "કહેવત પૂર્ણ કરો",
        instructions: "પ્રસિદ્ધ ગુજરાતી કહેવત કે રૂઢિપ્રયોગ પૂર્ણ કરો.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ઝાઝા હાથ ___ રળિયામણા.", options: ["રળિયામણા", "ભારે", "કાળા", "મોટા"], correctAnswer: "રળિયામણા", explanation: "મળીને કામ કરવાથી મુશ્કેલ કામ પણ સહેલાઈથી પૂરું થાય છે."),
            ExerciseItem(prompt: "ખાડો ખોદે તે ___ પડે.", options: ["પડે", "હસે", "રડે", "બચે"], correctAnswer: "પડે", explanation: "બીજાનું બૂરું ઈચ્છનાર વ્યક્તિ પોતે જ મુશ્કેલીમાં મુકાય છે."),
            ExerciseItem(prompt: "પાણી પહેલાં ___ બાંધવી.", options: ["પાળ", "નદી", "દિવાલ", "સેતુ"], correctAnswer: "પાળ", explanation: "MUશ્કેલી આવે તે પહેલાં જ સાવચેતીના પગલાં લેવા જોઈએ."),
            ExerciseItem(prompt: "નમ્રતા એ જ સાચું ___ છે.", options: ["આભૂષણ", "ધન", "બળ", "માન"], correctAnswer: "આભૂષણ", explanation: "નમ્રતા એ મનુષ્યનું સૌથી મોટું અને સાચું ઘરેણું છે."),
            ExerciseItem(prompt: "બોલે તેના ___ વેચાય.", options: ["બોર", "ચણા", "ફળ", "શાક"], correctAnswer: "બોર", explanation: "બોલવાથી કે જાહેરાત કરવાથી જ વસ્તુ વેચાય કે કામ થાય છે."),
            ExerciseItem(prompt: "ઉતાવળે ___ ના પાકે.", options: ["આંબા", "કેળા", "ચીકુ", "જામફળ"], correctAnswer: "આંબા", explanation: "કોઈપણ કામ ધિરજ રાખવાથી જ સરખું પૂરું થાય છે, ઉતાવળ કરવાથી બગડે છે."),
            ExerciseItem(prompt: "મન હોય તો ___ જવાય.", options: ["માળવે", "દિલ્હી", "મુંબઈ", "ગામ"], correctAnswer: "માળવે", explanation: "ઈચ્છાશક્તિ મજબૂત હોય તો ગમે તેવો મુશ્કેલ માર્ગ પણ સરળ બને છે."),
            ExerciseItem(prompt: "ઝાઝી કીડીઓ ___ ને તાણે.", options: ["સાપ", "હાથી", "ઉંદર", "કીડો"], correctAnswer: "સાપ", explanation: "નાના અને નબળા લોકો પણ એક થઈને મોટા શત્રુને હરાવી શકે છે."),
            ExerciseItem(prompt: "દરેક ચળકતી વસ્તુ ___ હોતી નથી.", options: ["સોનું", "રૂપું", "હીરો", "મોતી"], correctAnswer: "સોનું", explanation: "બાહ્ય દેખાવથી છેતરાવું ન જોઈએ, વસ્તુની ખરી કિંમત ગુણોથી થાય છે."),
            ExerciseItem(prompt: "પારકી આશ સદા ___.", options: ["નિરાશ", "આશા", "ખુશ", "શાંત"], correctAnswer: "નિરાશ", explanation: "બીજા પર આધાર રાખનાર હંમેશા નિરાશ જ થાય છે, સ્વાશ્રય જ સાચો છે."),
            ExerciseItem(prompt: "જેવા સાથે ___.", options: ["તેવા", "ભલા", "બૂરા", "નવા"], correctAnswer: "તેવા", explanation: "જેવો સામેવાળાનો વ્યવહાર હોય, તેની સાથે તેવો જ વ્યવહાર કરવો જોઈએ."),
            ExerciseItem(prompt: "કૂવામાં હોય તો ___ માં આવે.", options: ["હવાડા", "નદી", "ઘડા", "ગ્લાસ"], correctAnswer: "હવાડા", explanation: "જો મનમાં જ્ઞાન કે સંસ્કાર હોય, તો જ તે બહાર વર્તનમાં દેખાય છે."),
            ExerciseItem(prompt: "દૂધનો દાઝેલો ___ પણ ફૂંકીને પીવે.", options: ["છાશ", "પાણી", "દૂધ", "ચા"], correctAnswer: "છાશ", explanation: "એકવાર નુકસાન થયા પછી વ્યક્તિ અતિશય સાવધ બની જાય છે."),
            ExerciseItem(prompt: "લોભ એ પાપનું ___ છે.", options: ["મૂળ", "ફળ", "બીજ", "વૃક્ષ"], correctAnswer: "મૂળ", explanation: "લોભ કરવાથી જ મનુષ્ય પાપના માર્ગે વળે છે."),
            ExerciseItem(prompt: "નવરો બેઠો નખ ___.", options: ["ખોતરે", "કાપે", "સાફ કરે", "રંગે"], correctAnswer: "ખોતરે", explanation: "કામ વગરનો માણસ નકામી કે બિનજરૂરી પ્રવૃત્તિઓ કરે છે."),
            ExerciseItem(prompt: "સંપ ત્યાં ___.", options: ["જંપ", "શાંતિ", "ઝઘડો", "સુખ"], correctAnswer: "જંપ", explanation: "જ્યાં એકતા કે સંપ હોય, ત્યાં જ સુખ અને શાંતિ રહે છે."),
            ExerciseItem(prompt: "ટીંપે ટીંપે ___ ભરાય.", options: ["સરોવર", "ગ્લાસ", "ડોલ", "કૂવો"], correctAnswer: "સરોવર", explanation: "ધીમે ધીમે પણ સતત પ્રયાસ કરવાથી મોટું કાર્ય સફળ થાય છે."),
            ExerciseItem(prompt: "નિશાન ચૂક માફ, નહીં માફ નીચું ___.", options: ["નિશાન", "કામ", "ભૂલ", "પગલું"], correctAnswer: "નિશાન", explanation: "ઊંચું ધ્યેય રાખવું જોઈએ, નિષ્ફળતા કદાચ માફ થાય પણ નીચું ધ્યેય નહીં."),
            ExerciseItem(prompt: "સહુ સારા વાના, જેનો અંત ___.", options: ["સારો", "ખરાબ", "મોડો", "વહેલો"], correctAnswer: "સારો", explanation: "જો કાર્યનું અંતિમ પરિણામ સારું આવે, તો બધું સારું ગણાય છે."),
            ExerciseItem(prompt: "સેવા કરે એને ___ મળે.", options: ["મેવો", "દેવો", "ફળ", "પૈસા"], correctAnswer: "મેવો", explanation: "આ કહેવતનો અર્થ છે કે સેવા કરવાથી સારું ફળ (મેવો) મળે છે.")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "જોડાક્ષર / સામાસિક શબ્દો",
        instructions: "સંયુક્ત શબ્દને પૂર્ણ કરવા માટે સાચો શબ્દ પસંદ કરો.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "રસોઈ + ___", options: ["ઘર", "રૂમ", "ઓરડો", "ખંડ"], correctAnswer: "ઘર", explanation: "રસોઈ + ઘર = રસોઈઘર (રસોઈ બનાવવાની જગ્યા)."),
            ExerciseItem(prompt: "બળદ + ___", options: ["ગાડું", "વાન", "ચાલક", "ગાડી"], correctAnswer: "ગાડું", explanation: "બળદ + ગાડું = બળદગાડું."),
            ExerciseItem(prompt: "પાઠ + ___", options: ["શાળા", "ખંડ", "ગૃહ", "મંદિર"], correctAnswer: "શાળા", explanation: "પાઠ + શાળા = પાઠશાળા (ભણવાની જગ્યા)."),
            ExerciseItem(prompt: "ડાક + ___", options: ["ઘર", "ખાતું", "પેટી", "ટિકિટ"], correctAnswer: "ઘર", explanation: "ડાક + ઘર = ડાકઘર (પોસ્ટ ઓફિસ)."),
            ExerciseItem(prompt: "દેવ + ___", options: ["આલય", "મંદિર", "લોક", "પૂજા"], correctAnswer: "આલય", explanation: "દેવ + આલય = દેવાલય (મંદિર)."),
            ExerciseItem(prompt: "રેલ + ___", options: ["ગાડી", "પાટા", "એન્જિન", "સફર"], correctAnswer: "ગાડી", explanation: "રેલ + ગાડી = રેલગાડી."),
            ExerciseItem(prompt: "મહા + ___", options: ["રાજા", "વીર", "દેવ", "પુરૂષ"], correctAnswer: "રાજા", explanation: "મહા + રાજા = મહારાજા."),
            ExerciseItem(prompt: "પ્રધાન + ___", options: ["મંત્રી", "શિક્ષક", "કચેરી", "મંડળ"], correctAnswer: "મંત્રી", explanation: "પ્રધાન + મંત્રી = પ્રધાનમંત્રી."),
            ExerciseItem(prompt: "વિદ્યા + ___", options: ["આલય", "શાળા", "પીઠ", "મંદિર"], correctAnswer: "આલય", explanation: "વિદ્યા + આલય = વિદ્યાલય (શાળા)."),
            ExerciseItem(prompt: "સૂર્ય + ___", options: ["ઉદય", "અસ્ત", "કિરણ", "પ્રકાશ"], correctAnswer: "ઉદય", explanation: "સૂર્ય + ઉદય = સૂર્યોદય (સૂરજ ઊગવો)."),
            ExerciseItem(prompt: "ચરણ + ___", options: ["કમળ", "સ્પર્શ", "રજ", "પૂજા"], correctAnswer: "કમળ", explanation: "ચરણ + કમળ = ચરણકમળ (કમળ જેવા કોમળ ચરણ)."),
            ExerciseItem(prompt: "માતૃ + ___", options: ["ભાષા", "ભૂમિ", "પ્રેમ", "દેવો"], correctAnswer: "ભાષા", explanation: "માતૃ + ભાષા = માતૃભાષા."),
            ExerciseItem(prompt: "વાયુ + ___", options: ["વેગ", "સેના", "યાન", "ચક્ર"], correctAnswer: "વેગ", explanation: "વાયુ + વેગ = વાયુવેગ (પવન જેવી ઝડપ)."),
            ExerciseItem(prompt: "મહા + ___ = મહાસાગર", options: ["સાગર", "નદી", "તળાવ", "પર્વત"], correctAnswer: "સાગર", explanation: "મહા + સાગર = મહાસાગર."),
            ExerciseItem(prompt: "રણ + ___", options: ["ભૂમિ", "મેદાન", "તલવાર", "શૂર"], correctAnswer: "ભૂમિ", explanation: "રણ + ભૂમિ = રણભૂમિ (યુદ્ધનું મેદાન)."),
            ExerciseItem(prompt: "ધન + ___", options: ["વાન", "લાભ", "ચોર", "સંચય"], correctAnswer: "વાન", explanation: "ધન + વાન = ધનવાન (પૈસાદાર)."),
            ExerciseItem(prompt: "ફળ + ___", options: ["દ્રુપ", "હાર", "ફૂલ", "ઝાડ"], correctAnswer: "દ્રુપ", explanation: "ફળ + દ્રુપ = ફળદ્રુપ (ઉપજાવ જમીન)."),
            ExerciseItem(prompt: "રાષ્ટ્ર + ___", options: ["ગીત", "ધ્વજ", "પિતા", "વાસી"], correctAnswer: "ગીત", explanation: "રાષ્ટ્ર + ગીત = રાષ્ટ્રગીત."),
            ExerciseItem(prompt: "જન્મ + ___", options: ["ભૂમિ", "દિવસ", "સ્થાન", "કુંડળી"], correctAnswer: "ભૂમિ", explanation: "જન્મ + ભૂમિ = જન્મભૂમિ (જ્યાં જન્મ થયો હોય તે ધરતી)."),
            ExerciseItem(prompt: "ચિત્ર + ___", options: ["કળા", "કાર", "શાળા", "લેખન"], correctAnswer: "કળા", explanation: "ચિત્ર + કળા = ચિત્રકળા.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "પૂર્વપ્રત્યય અને પરપ્રત્યય",
        instructions: "શબ્દમાં વપરાયેલા પૂર્વપ્રત્યય (prefix) કે પરપ્રત્યય (suffix) ઓળખો.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "'અણસમજુ' શબ્દમાં પૂર્વપ્રત્યય (prefix) કયો છે?", options: ["અણ", "સમજુ", "અ", "ણ"], correctAnswer: "અણ", explanation: "'અણસમજુ'માં 'અણ' એ નકારાત્મક અર્થ આપતો પૂર્વપ્રત્યય છે."),
            ExerciseItem(prompt: "'સુંદરતા' શબ્દમાં પરપ્રત્યય (suffix) કયો છે?", options: ["તા", "સુંદર", "સુ", "અરતા"], correctAnswer: "તા", explanation: "'તા' પ્રત્યય વિશેષણને ભાવવાચક સંજ્ઞામાં બદલે છે."),
            ExerciseItem(prompt: "'નિર્બળ' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["નિર્", "બળ", "નિ", "ર"], correctAnswer: "નિર્", explanation: "'નિર્' પૂર્વપ્રત્યયનો અર્થ 'વગરનો' કે 'અભાવ' થાય છે."),
            ExerciseItem(prompt: "'દુકાનદાર' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["દાર", "દુકાન", "કાર", "વાળો"], correctAnswer: "દાર", explanation: "'દાર' પ્રત્યય કોઈ વસ્તુ કે વ્યવસાયના સ્વામીનો નિર્દેશ કરે છે."),
            ExerciseItem(prompt: "'ઉપકાર' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["ઉપ", "કાર", "ઉ", "પ"], correctAnswer: "ઉપ", explanation: "'ઉપ' પૂર્વપ્રત્યય સહાયક કે નાનું હોવાનો ભાવ દર્શાવે છે."),
            ExerciseItem(prompt: "'લખાણ' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["આણ", "લખ", "ખાણ", "ણ"], correctAnswer: "આણ", explanation: "'આણ' પ્રત્યય ક્રિયાપદને સંજ્ઞામાં ફેરવે છે (લખવું -> લખાણ)."),
            ExerciseItem(prompt: "'અધકચરો' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["અધ", "કચરો", "અ", "ધ"], correctAnswer: "અધ", explanation: "'અધ' પૂર્વપ્રત્યયનો અર્થ 'અડધું' થાય છે."),
            ExerciseItem(prompt: "'સજાવટ' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["આવટ", "સજ", "વટ", "ટ"], correctAnswer: "આવટ", explanation: "'આવટ' પ્રત્યય ભાવવાચક સંજ્ઞા બનાવે છે."),
            ExerciseItem(prompt: "'બેગુનાહ' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["બે", "ગુનાહ", "બ", "નાહ"], correctAnswer: "બે", explanation: "'બે' પૂર્વપ્રત્યયનો અર્થ 'વગરનો' કે 'رહિત' થાય છે."),
            ExerciseItem(prompt: "'સફળતા' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["તા", "સફળ", "સ", "ફળ"], correctAnswer: "તા", explanation: "'તા' એ સંજ્ઞા બનાવતો ભાવવાચક પ્રત્યય છે."),
            ExerciseItem(prompt: "'પ્રતિદિન' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["પ્રતિ", "દિન", "પ્ર", "તિ"], correctAnswer: "પ્રતિ", explanation: "'પ્રતિ' પૂર્વપ્રત્યયનો અર્થ 'દરેક' થાય છે."),
            ExerciseItem(prompt: "'ગભરામણ' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["ામણ", "ગભરા", "મણ", "ણ"], correctAnswer: "ામણ", explanation: "'ામણ' પ્રત્યય ભાવ દર્શાવે છે."),
            ExerciseItem(prompt: "'ગેરસમજ' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["ગેર", "સમજ", "ગે", "ર"], correctAnswer: "ગેર", explanation: "'ગેર' પૂર્વપ્રત્યય વિરોધી કે નકારાત્મક ભાવ દર્શાવે છે."),
            ExerciseItem(prompt: "'ભારતીય' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["ઈય", "ભારત", "તીય", "ય"], correctAnswer: "ઈય", explanation: "'ઈય' પ્રત્યય સંબંધ અથવા તે દેશ કે વતનના હોવાનો ભાવ દર્શાવે છે."),
            ExerciseItem(prompt: "'અશક્ય' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["અ", "શક્ય", "અશ", "ય"], correctAnswer: "અ", explanation: "'અ' પૂર્વપ્રત્યય અભાવ કે વિરોધી અર્થ પ્રગટ કરે છે."),
            ExerciseItem(prompt: "'દૂધવાળો' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["વાળો", "દૂધ", "આળો", "ળો"], correctAnswer: "વાળો", explanation: "'વાળો' પ્રત્યય કોઈ વ્યવસાય કે સાધન સાથે સંકળાયેલી વ્યક્તિ દર્શાવે છે."),
            ExerciseItem(prompt: "'અપમાન' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["અપ", "मान", "અ", "પ"], correctAnswer: "અપ", explanation: "'અપ' પૂર્વપ્રત્યય વિપરીત કે નીચું હોવાનો અર્થ દર્શાવે છે."),
            ExerciseItem(prompt: "'રમકડું' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["કડું", "રમ", "ડું", "ઉ"], correctAnswer: "કડું", explanation: "'કડું' પ્રત્યય રમવાની વસ્તુનો નિર્દેશ કરે છે."),
            ExerciseItem(prompt: "'સુવાસ' શબ્દમાં પૂર્વપ્રત્યય કયો છે?", options: ["સુ", "વાસ", "સુવ", "સ"], correctAnswer: "સુ", explanation: "'સુ' પૂર્વપ્રત્યય 'સારું' હોવાનો અર્થ દર્શાવે છે."),
            ExerciseItem(prompt: "'આબરૂદાર' શબ્દમાં પરપ્રત્યય કયો છે?", options: ["દાર", "આબરૂ", "કાર", "વાળો"], correctAnswer: "દાર", explanation: "'દાર' પ્રત્યય વિશિષ્ટ ગુણ ધરાવતી વ્યક્તિ દર્શાવે છે.")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "વાર્તા સ્મરણ",
        instructions: "ટૂંકી વાર્તા વાંચો અને પછી તેના આધારે પૂછાયેલા પ્રશ્નનો ઉત્તર આપો.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "મારિયા ઘરે શું ભૂલી ગઈ હતી?", options: ["તેનું પાકીટ", "તેની ચાવીઓ", "તેની ખરીદીની યાદી", "તેનો ફોન"], correctAnswer: "તેનું પાકીટ", explanation: "વાર્તામાં સ્પષ્ટ લખ્યું છે કે તે પોતાનું પાકીટ રસોડાના પ્લેટફોર્મ પર ભૂલી ગઈ હતી.", passage: "મારિયા દૂધ અને બ્રેડ ખરીદવા કરિયાણાની દુકાને ગઈ. તે પોતાનું પાકીટ રસોડાના પ્લેટફોર્મ પર ભૂલી ગઈ."),
            ExerciseItem(prompt: "થોમસે કઈ માછલી પકડી હતી?", options: ["ટ્રાઉટ", "સાલ્મન", "બાસ", "કેટફિશ"], correctAnswer: "ટ્રાઉટ", explanation: "વાર્તામાં જણાવ્યું છે કે તેણે એક મોટી ટ્રાઉટ માછલી પકડી હતી.", passage: "થોમસ શનિવારે સવારે વહેલો જાગીને માછલી પકડવા ગયો. તેણે એક મોટી ટ્રાઉટ માછલી પકડી પણ તે બહુ નાની હોવાથી તેણે પાણીમાં પાછી છોડવી પડી."),
            ExerciseItem(prompt: "આર્થરની કાર કયા રંગની છે?", options: ["વાદળી", "પીળો", "લાલ", "લીલો"], correctAnswer: "વાદળી", explanation: "વાર્તા અનુસાર આર્થરે તેની વાદળી કાર પાર્ક કરી હતી.", passage: "આર્થરે તેની વાદળી કાર એક છાંયડાવાળા વૃક્ષ નીચે પાર્ક કરી. જ્યારે તે પાછો આવ્યો, ત્યારે તેણે જોયું કે કાર પીળા પાંદડાઓથી ઢંકાયેલી હતી."),
            ExerciseItem(prompt: "લિન્ડાએ કેક પર કેટલી મીણબત્તીઓ લગાવી?", options: ["દસ", "પાંચ", "આઠ", "બાર"], correctAnswer: "દસ", explanation: "વાર્તામાં જણાવ્યું છે કે તેણે દસ લાલ મીણબત્તીઓ લગાવી હતી.", passage: "લિન્ડાએ તેની પુત્રીના જન્મદિવસની પાર્ટી માટે ચોકલેટ કેક બનાવી. તેણે કેક પર દસ લાલ મીણબત્તીઓ લગાવી."),
            ExerciseItem(prompt: "રોબર્ટનો ભાઈ ક્યાં રહે છે?", options: ["શિકાગો", "ન્યૂયોર્ક", "બોસ્ટન", "માયામી"], correctAnswer: "શિકાગો", explanation: "વાર્તામાં સ્પષ્ટ છે કે તેણે શિકાગોમાં રહેતા તેના ભાઈને પાર્સલ મોકલ્યું હતું.", passage: "રોબર્ટ શિકાગોમાં રહેતા તેના ભાઈને પાર્સલ મોકલવા પોસ્ટ ઓફિસ ગયો. ક્લર્કે તેને કહ્યું કે તે મંગળવારે પહોંચશે."),
            ExerciseItem(prompt: "સારાના દોડવાના શૂઝ કયા રંગના છે?", options: ["ચમકતો લીલો", "વાદળી", "લાલ", "કાળો"], correctAnswer: "ચમકતો લીલો", explanation: "વાર્તા અનુસાર શૂઝ સફેદ પટ્ટાવાળા ચમકતા લીલા રંગના છે.", passage: "સારાએ ગઈકાલે દોડવા માટે નવા શૂઝ ખરીદ્યા. તે સફેદ પટ્ટાવાળા ચમકતા લીલા રંગના છે."),
            ExerciseItem(prompt: "જેમ્સે કયા રંગની છત્રી વાપરી હતી?", options: ["પીળી", "લાલ", "વાદળી", "કાળી"], correctAnswer: "પીળી", explanation: "વાર્તા જણાવે છે કે તેણે પોતાની પીળી છત્રી ખોલી હતી.", passage: "જેમ્સ બગીચામાં ટહેલી રહ્યો હતો ત્યારે અચાનક વરસાદ શરૂ થયો. સૂકા રહેવા માટે તેણે પોતાની પીળી છત્રી ખોલી."),
            ExerciseItem(prompt: "બેકરી કયા દિવસે બંધ હતી?", options: ["સોમવાર", "મંગળવાર", "બુધવાર", "રવિવાર"], correctAnswer: "સોમવાર", explanation: "વાર્તા અનુસાર બેકરી સોમવારે બંધ હતી.", passage: "સ્થાનિક બેકરી સમારકામ માટે સોમવારે બંધ હતી. તેઓએ મંગળવારે સવારે છ વાગ્યે ફરીથી ખોલવાનું આયોજન કર્યું હતું."),
            ExerciseItem(prompt: "અન્નાએ પ્લમ્બરને શા માટે બોલાવ્યો હતો?", options: ["તેની સિંક લીક થતી હતી", "તેનો ચૂલો બગડેલો હતો", "તેની લાઈટ જતી રહી હતી", "તેનો દરવાજો લોક હતો"], correctAnswer: "તેની સિંક લીક થતી હતી", explanation: "વાર્તા મુજબ તેણે પ્લમ્બરને રસોડાની સિંક લીક થતી હોવાને લીધે બોલાવ્યો હતો.", passage: "અન્નાએ પ્લમ્બરને બોલાવ્યો કારણ કે તેના રસોડાની સિંક લીક થતી હતી. પ્લમ્બર એક કલાકમાં આવ્યો અને પાઇપ સમી કરી દીધી."),
            ExerciseItem(prompt: "ડેવિડના કૂતરાનું નામ શું છે?", options: ["મેક્સ", "બડી", "ચાર્લી", "રોકી"], correctAnswer: "મેક્સ", explanation: "વાર્તામાં ડેવિડના કૂતરાનું નામ મેક્સ હોવાનું જણાવ્યું છે.", passage: "ડેવિડે તેના કૂતરા મેક્સને ફેરવ્યો. મેક્સે એક ખિસકોલી જોઈ અને તેના પર જોરથી ભસ્યો."),
            ExerciseItem(prompt: "હેલન પાસે કયું શાક ખૂટી ગયું હતું?", options: ["ગાજર", "બટાકા", "ડુંગળી", "કોથમીર"], correctAnswer: "ગાજર", explanation: "વાર્તા જણાવે છે કે રાંધતી વખતે તેને ખબર પડી કે ગાજર ખૂટી ગયા છે.", passage: "હેલન રાત્રિના ભોજન માટે શાકભાજીનો સૂપ બનાવી રહી હતી. તેને ખબર પડી કે તેની ગાજર ખૂટી ગઈ છે, તેથી તેણે બટાકા વાપર્યા."),
            ExerciseItem(prompt: "પીટરના ભોજનનું બિલ કેટલું હતું?", options: ["પંદર ડોલર", "દસ ડોલર", "વીસ ડોલર", "બાર ડોલર"], correctAnswer: "પંદર ડોલર", explanation: "વાર્તામાં સ્પષ્ટ જણાવ્યું છે કે કુલ ખર્ચ પંદર ડોલર હતું.", passage: "પીટરે બપોરના ભોજન માટે એક પેપરોની પિઝા અને સોડા ઓર્ડર કર્યો. કુલ બિલ પંદર ડોલર હતું."),
            ExerciseItem(prompt: "એલિસે લીધેલું પુસ્તક કયા વિષય પર હતું?", options: ["બાગાયત", "ઇતિહાસ", "રસોઈ", "પ્રવાસ"], correctAnswer: "બાગાયત", explanation: "વાર્તામાં જણાવ્યું છે કે તે બાગાયત વિશેનું પુસ્તક લેવા ગઈ હતી.", passage: "એલિસ બાગાયત વિશે પુસ્તક લેવા લાઇબ્રેરી ગઈ. તેણે ઇતિહાસની ડીવીડી પણ લીધી."),
            ExerciseItem(prompt: "ટ્રેન મોડી થવાનું કારણ શું હતું?", options: ["ટ્રેકનું સમારકામ", "ભારે તોફાન", "પાવર કટ", "કર્મચારીની ગેરહાજરી"], correctAnswer: "ટ્રેકનું સમારકામ", explanation: "વાર્તા મુજબ ટ્રેક રિપેરિંગની કામગીરીને કારણે ટ્રેન મોડી પડી હતી.", passage: "જ્યોર્જ નોકરીના ઇન્ટરવ્યુ માટે સવારની ટ્રેન દ્વારા શહેરમાં ગયો. રેલ્વે ટ્રેકના સમારકામને કારણે ટ્રેન પંદર મિનિટ મોડી ચાલી રહી હતી."),
            ExerciseItem(prompt: "નેન્સીએ કયું ફૂલ ખરીદ્યું?", options: ["ગુલાબી કાર્નેશન", "લાલ ગુલાબ", "પીળા ટ્યૂલિપ", "સફેદ લીલી"], correctAnswer: "ગુલાબી કાર્નેશન", explanation: "વાર્તામાં જણાવ્યું છે કે તેણે ગુલાબી કાર્નેશન ખરીદ્યા.", passage: "네ન્સી લાલ ગુલાબ ખરીદવા નર્સરી ગઈ. ગુલાબ ખલાસ થઈ ગયા હતા, તેથી તેણે ગુલાબી કાર્નેશન ખરીદ્યા.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "સંખ્યાત્મક શ્રેણી",
        instructions: "શ્રેણીમાં હવે પછી કઈ સંખ્યા આવશે?",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "આ શ્રેણીમાં દરેક વખતે 2 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "આ શ્રેણીમાં દરેક વખતે 5 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "આ શ્રેણીમાં દરેક વખતે 10 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "આ શ્રેણીમાં દરેક વખતે 3 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "આ શ્રેણીમાં દરેક વખતે 1 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "આ શ્રેણીમાં દરેક વખતે 2 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "આ એકી સંખ્યાઓની શ્રેણી છે જેમાં દરેક વખતે 2 ઉમેરાય છે."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "આ શ્રેણીમાં દરેક વખતે 4 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "આ શ્રેણીમાં દરેક વખતે 5 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "આ શ્રેણીમાં દરેક વખતે 10 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "આ શ્રેણીમાં દરેક વખતે 11 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "આ શ્રેણીમાં દરેક વખતે 2 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "આ શ્રેણીમાં દરેક વખતે 3 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "આ શ્રેણીમાં દરેક વખતે 3 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "આ શ્રેણીમાં દરેક વખતે 7 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "આ શ્રેણીમાં દરેક વખતે 4 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "આ શ્રેણીમાં દરેક વખતે 6 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "આ શ્રેણીમાં દરેક વખતે 5 ઉમેરવામાં આવે છે."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "આ શ્રેણીમાં દરેક વખતે 10 બાદ કરવામાં આવે છે."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "આ શ્રેણીમાં દરેક વખતે 2 ઉમેરવામાં આવે છે.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "કાર્ય અને કારણ",
        instructions: "વર્ણવેલી પરિસ્થિતિનું સૌથી સંભવિત પરિણામ પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ગરમ દિવસે તમે રસોડાના કાઉન્ટર પર બે કલાક આઈસ્ક્રીમ ખુલ્લો રાખો છો. શું થશે?", options: ["તે વધુ કઠણ થશે", "તે પીગળી જશે", "તેનો રંગ બદલાશે", "તે ગાયબ થઈ જશે"], correctAnswer: "તે પીગળી જશે", explanation: "ગરમીને કારણે થીજી ગયેલો આઈસ્ક્રીમ પીગળીને પ્રવાહી બને છે."),
            ExerciseItem(prompt: "તમે ત્રણ અઠવાડિયા સુધી તમારા ઘરના છોડને પાણી પાવાનું ભૂલી જાઓ છો. સૌથી સંભવિત પરિણામ શું હશે?", options: ["તેમાં ફૂલો આવશે", "તે લીલો રહેશે", "તે કરમાઈને સૂકાઈ જશે", "તે વાદળી થઈ જશે"], correctAnswer: "તે કરમાઈને સૂકાઈ જશે", explanation: "છોડને જીવવા માટે પાણીની જરૂર હોય છે; તેના વિના તે સૂકાઈ જાય છે."),
            ExerciseItem(prompt: "આકાશમાં કાળા વાદળો છવાઈ જાય છે અને વીજળીના કડાકા થાય છે. હવે પછી શું થવાની સંભાવના છે?", options: ["વરસાદ પડશે", "ગરમી વધશે", "તરત જ બરફ પડશે", "તારા નીકળી આવશે"], correctAnswer: "વરસાદ પડશે", explanation: "કાળા વાદળો અને વીજળીના કડાકા એ વરસાદ આવવાના સંકેતો છે."),
            ExerciseItem(prompt: "તમારા હાથમાંથી કાચનો વાટકો કઠણ ટાઇલ્સ વાળા ભોંયતળિયે પડે છે. સૌથી સંભવિત પરિણામ શું થશે?", options: ["તે પાછો ઉછળશે", "તેનો રંગ બદલાશે", "તે ટુકડાઓમાં તૂટી જશે", "તે પાણી બની જશે"], correctAnswer: "તે ટુકડાઓમાં તૂટી જશે", explanation: "કાચ નાજુક હોય છે અને કઠણ સપાટી પર પડતા તૂટી જાય છે."),
            ExerciseItem(prompt: "તમે ટોસ્ટરમાં બ્રેડનો ટુકડો મૂકો છો અને તેને સૌથી ઊંચા તાપમાન પર રાખો છો. શું થશે?", options: ["તે ભીનો થશે", "તે બળીને કાળો થઈ જશે", "તે નરમ અને સફેદ રહેશે", "તે ગાયબ થઈ જશે"], correctAnswer: "તે બળીને કાળો થઈ જશે", explanation: "ટોસ્ટરની વધુ પડતી ગરમી બ્રેડને બાળી નાખે છે."),
            ExerciseItem(prompt: "તમે કારની હેડલાઈટ્સ આખી રાત ચાલુ રાખો છો. સવારે શું થશે?", options: ["કાર વધુ ઝડપી ચાલશે", "બેટરી ડિસ્ચાર્જ (ખલાસ) થઈ જશે", "કારનો રંગ બદલાશે", "એન્જિન તરત જ શરૂ થશે"], correctAnswer: "બેટરી ડિસ્ચાર્જ (ખલાસ) થઈ જશે", explanation: "હેડલાઇટ્સ લાંબો સમય ચાલુ રાખવાથી બેટરી પાવર ખલાસ થઈ જાય છે."),
            ExerciseItem(prompt: "રાત્રે ભારે હિમવર્ષા કે બરફ પડે છે અને છ ઇંચ બરફ જમા થઈ જાય છે. રસ્તાઓનું શું થશે?", options: ["તે સૂકા રહેશે", "તે લપસણા અને બરફથી ઢંકાઈ જશે", "તે લીલા થઈ જશે", "તે ગાયબ થઈ જશે"], correctAnswer: "તે લપસણા અને બરફથી ઢંકાઈ જશે", explanation: "રસ્તા પર બરફ જમા થવાથી ત્યાં લપસણું થઈ જાય છે અને વાહન ચલાવવું જોખમી બને છે."),
            ExerciseItem(prompt: "તમે પાણીથી ભરેલી ટ્રે ફ્રીઝરમાં મૂકો છો. થોડા કલાકો પછી શું થશે?", options: ["પાણી ઉકળશે", "પાણી બરફ બની જશે", "પાણીની વરાળ થઈ જશે", "પાણીનો રંગ બદલાશે"], correctAnswer: "પાણી બરફ બની જશે", explanation: "ઠંડું તાપમાન પ્રવાહી પાણીને ઘન બરફમાં ફેરવી દે છે."),
            ExerciseItem(prompt: "તમે ઉનાળાના ગરમ દિવસે જાડા ઊની મોજાં અને ભારે બૂટ પહેરો છો. તમારા પગનું શું થશે?", options: ["તેમને ઠંડી લાગશે", "તે સૂકા રહેશે", "તે ગરમ થઈને પરસેવે રેબઝેબ થશે", "તે વાદળી થઈ જશે"], correctAnswer: "તે ગરમ થઈને પરસેવે રેબઝેબ થશે", explanation: "જાડા કપડાં ગરમી પકડી રાખે છે, જેનાથી ગરમ વાતાવરણમાં પરસેવો થાય છે."),
            ExerciseItem(prompt: "કોઈ વ્યક્તિ સતત 24 કલાક સુધી સૂતી નથી. તેને કેવું લાગશે?", options: ["ખૂબ જ ઊર્જાસભર", "થાકેલું અને ઊંઘથી ભરેલું", "ભૂખ્યું", "ખૂબ જ ખુશ"], correctAnswer: "થાકેલું અને ઊંઘથી ભરેલું", explanation: "ઊંઘનો અભાવ થાક અને સુસ્તી લાવે છે."),
            ExerciseItem(prompt: "તમે ગરમ ચાના કપમાં ખાંડ ઉમેરો છો અને તેને હલાવો છો. ખાંડનું શું થાય છે?", options: ["તે બરફ બની જાય છે", "તે કપમાંથી ગાયબ થાય છે", "તે ચામાં ઓગળી જાય છે", "તે બળી જાય છે"], correctAnswer: "તે ચામાં ઓગળી જાય છે", explanation: "ગરમ પ્રવાહીમાં હલાવવાથી ખાંડ તેમાં સંપૂર્ણપણે ભળી જાય છે (ઓગળે છે)."),
            ExerciseItem(prompt: "તમે છત્રી કે રેઈનકોટ વગર ભારે વરસાદમાં બહાર નીકળો છો. શું પરિણામ આવશે?", options: ["તમે સૂકા રહેશો", "તમારા કપડાં પલળી જશે", "તમે વાદળી થઈ જશો", "તમને ગરમી લાગશે"], correctAnswer: "તમારા કપડાં પલળી જશે", explanation: "વરસાદના પાણીથી બચવા કોઈ સાધન ન હોવાથી શરીર પલળી જાય છે."),
            ExerciseItem(prompt: "તમે ફુગ્ગામાં હદ કરતાં વધુ હવા ભરો છો. શું થશે?", options: ["તે ચંદ્ર પર ઉડી જશે", "તે ફૂટી જશે", "તે પક્ષી બની જશે", "તે સંકોચાઈ જશે"], correctAnswer: "તે ફૂટી જશે", explanation: "ફુગ્ગાની ક્ષમતા કરતાં હવાનું દબાણ વધી જતાં તે ફાટી (ફૂટી) જાય છે."),
            ExerciseItem(prompt: "તમે રાત્રે બારી વગરના રૂમની બધી લાઈટો બંધ કરી દો છો. શું થાય છે?", options: ["રૂમ વધુ પ્રકાશિત થાય છે", "રૂમમાં સંપૂર્ણ અંધારું થઈ જાય છે", "રૂમ લીલો થઈ જાય છે", "રૂમ પ્રકાશથી ભરાઈ જાય છે"], correctAnswer: "રૂમમાં સંપૂર્ણ અંધારું થઈ જાય છે", explanation: "પ્રકાશનો કોઈ સ્ત્રોત ન હોવાથી અંધારું છવાઈ જાય છે."),
            ExerciseItem(prompt: "તમે કોઈ મુશ્કેલ પરીક્ષા માટે ભણતા નથી કે તૈયારી કરતા નથી. સૌથી સંભવિત પરિણામ શું આવશે?", options: ["તમને પૂરા માર્ક્સ મળશે", "તમારું પ્રદર્શન ખરાબ રહેશે", "તમે તમારું નામ ભૂલી જશો", "પરીક્ષા રદ થશે"], correctAnswer: "તમારું પ્રદર્શન ખરાબ રહેશે", explanation: "તૈયારીના અભાવે અઘરી પરીક્ષામાં સફળ થવું મુશ્કેલ છે.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "લાગણીની ઓળખ",
        instructions: "પરિસ્થિતિ વાંચો અને વ્યક્તિ જે લાગણી અનુભવી રહ્યો છે તે પસંદ કરો.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "સારાને ખબર પડી કે તેણે સ્પર્ધામાં પ્રથમ સ્થાન મેળવ્યું છે. તે કેવું અનુભવે છે?", options: ["ઉદાસ", "ગુસ્સે", "ખુશ", "ડરેલી"], correctAnswer: "ખુશ", explanation: "SPર્ધા જીતવી એ આનંદ અને ઉત્સાહનો વિષય છે."),
            ExerciseItem(prompt: "ડેવિડને અડધી રાત્રે નીચે અજાણ્યો અને મોટો અવાજ સંભળાય છે. તે કેવું અનુભવે છે?", options: ["ખુશ", "ડરેલો", "કંટાળેલો", "ઉત્સાહિત"], correctAnswer: "ડરેલો", explanation: "અંધારામાં અચાનક થતો અવાજ ભય કે ડર પેદા કરે છે."),
            ExerciseItem(prompt: "મેરીની ખાસ બહેનપણી દૂર બીજા રાજ્યમાં રહેવા જઈ રહી છે. મેરીને કેવું લાગશે?", options: ["ઉદાસ", "ગુસ્સે", "ઉત્સાહિત", "ઈર્ષ્યાળુ"], correctAnswer: "ઉદાસ", explanation: "નજીકના મિત્રોથી છૂટા પડવું દુઃખ અને ઉદાસી લાવે છે."),
            ExerciseItem(prompt: "દુકાનની લાંબી લાઈનમાં કોઈ વ્યક્તિ જોનની આગળ આવી જાય છે. જોનને કેવું લાગશે?", options: ["ખુશ", "ડર", "ચીડ / ગુસ્સો", "શરમ"], correctAnswer: "ચીડ / ગુસ્સો", explanation: "અસભ્ય વ્યવહાર સામાન્ય રીતે ચીડ કે નારાજગી પેદા કરે છે."),
            ExerciseItem(prompt: "એમિલી ઘણા બધા લોકોની સામે ભાષણ આપવાની છે. તે કેવું અનુભવે છે?", options: ["ગભરામણ", "કંટાળો", "ઉદાસી", "ગુસ્સો"], correctAnswer: "ગભરામણ", explanation: "જાહેરમાં બોલતા પહેલાં ગભરામણ કે ચિંતા થવી સ્વાભાવિક છે."),
            ExerciseItem(prompt: "ROબર્ટની ફ્લાઇટ રદ થઈ ગઈ, જેથી તેની રજાઓ બે દિવસ પાછી ઠેલાઈ. તે કેવું અનુભવે છે?", options: ["હતાશ", "ખુશ", "ડરેલો", "ગર્વ"], correctAnswer: "હતાશ", explanation: "આયોજન બગડી જવાથી હતાશા કે નિરાશાની લાગણી જન્મે છે."),
            ExerciseItem(prompt: "લિસાનો પુત્ર યુનિવર્સિટીમાંથી પ્રથમ વર્ગમાં પાસ થયો. લિસાને કેવું લાગશે?", options: ["ગર્વ", "ઈર્ષ્યા", "ઉદાસી", "ડર"], correctAnswer: "ગર્વ", explanation: "સંતાનની સફળતા પર પરિવાર ગર્વ અનુભવે છે."),
            ExerciseItem(prompt: "એક ક્લર્ક ચોથી વાર અઘરું ફોર્મ સમજાવે છે, પણ આર્થર હજુ પણ સમજી શકતો નથી. તે કેવું અનુભવે છે?", options: ["મૂંઝવણ", "ખુશ", "ઉત્સાહિત", "ગર્વ"], correctAnswer: "મૂંઝવણ", explanation: "સતત સમજાવવા છતાં ખ્યાલ ન આવતાં મૂંઝવણ અનુભવાય છે."),
            ExerciseItem(prompt: "જેમ્સ બે કલાકથી શાંત વેઇટિંગ રૂમમાં કોઈ પુસ્તક વિના રાહ જોઈ રહ્યો છે. તે કેવું અનુભવે છે?", options: ["કંટાળો", "ડર", "ગુસ્સો", "ખુશ"], correctAnswer: "કંટાળો", explanation: "કોઈ પ્રવૃત્તિ વિના લાંબો સમય બેસી રહેવાથી કંટાળો આવે છે."),
            ExerciseItem(prompt: "કેટીના પરિવારે તેના બધા મિત્રો સાથે મળીને સરપ્રાઈઝ બર્થડે પાર્ટી રાખી. તે કેવું અનુભવે છે?", options: ["આશ્ચર્યચકિત", "ગુસ્સે", "ઉદાસ", "ડરેલી"], correctAnswer: "આશ્ચર્યચકિત", explanation: "અચાનક મળેલા સુખદ આશ્ચર્યથી વ્યક્તિ આશ્ચર્યચકિત થઈ જાય છે."),
            ExerciseItem(prompt: "એક રખડતો કૂતરો ચાલતી વખતે કારેન પર ધસી આવ્યો અને જોરથી ભસવા લાગ્યો. તે કેવું અનુભવે છે?", options: ["ભયભીત", "ખુશ", "કંટાળેલી", "ગર્વ"], correctAnswer: "ભયભીત", explanation: "હિંસક પ્રાણી સામે ભયભીત થવું સ્વાભાવિક છે."),
            ExerciseItem(prompt: "વિલિયમની લગ્નની વીંટી બાગકામ કરતી વખતે ખોવાઈ ગઈ. તે કેવું અનુભવે છે?", options: ["પરેશાન", "ઉત્સાહિત", "કંટાળેલો", "શાંત"], correctAnswer: "પરેશાન", explanation: "ભાવનાત્મક મૂલ્ય ધરાવતી કિંમતી વસ્તુ ખોવાતાં પરેશાની થાય છે."),
            ExerciseItem(prompt: "પેટ્રિશિયાને તેના પૌત્ર-પૌત્રીઓ તરફથી સુંદર ગ્રીટિંગ કાર્ડ અને ફૂલો મળ્યા. તે કેવું અનુભવે છે?", options: ["વ્હાલી / વ્હાલપ", "ગુસ્સે", "ડરેલી", "મૂંઝવણમાં"], correctAnswer: "વ્હાલી / વ્હાલપ", explanation: "સ્નેહીજનોનો પ્રેમ મેળવીને સ્નેહ કે વ્હાલપ અનુભવાય છે."),
            ExerciseItem(prompt: "કરિયાણાની દુકાને રિચર્ડને ગમતી બ્રેડ ખલાસ થઈ ગઈ હતી, તેથી તેણે બીજું બ્રાન્ડ ખરીદવું પડ્યું. તે કેવું અનુભવે છે?", options: ["થોડો નિરાશ", "આતંકિત", "અત્યંત ક્રોધિત", "ખૂબ જ ઉત્સાહિત"], correctAnswer: "થોડો નિરાશ", explanation: "પોતાની મનપસંદ વસ્તુ ન મળવાને કારણે સહેજ નિરાશા થાય છે."),
            ExerciseItem(prompt: "ચાર્લ્સે આખી બપોર પુસ્તકની અભરાઈ (રેક) બનાવવામાં ગાળી અને તે એકદમ બરાબર બની. તે કેવું અનુભવે છે?", options: ["સંતુષ્ટ", "ઉદાસ", "ડરેલો", "કંટાળેલો"], correctAnswer: "સંતુષ્ટ", explanation: "કોઈ ધાર્યું કામ બરાબર પૂરું થવાથી મન સંતુષ્ટ થાય છે."),
            ExerciseItem(prompt: "લિન્ડાએ શાંત રેસ્ટોરન્ટમાં ભૂલથી પીણાંની ટ્રે પાડી દીધી. તે કેવું અનુભવે છે?", options: ["શર્મિંદગી", "ખુશ", "ગુસ્સે", "કંટાળેલી"], correctAnswer: "શર્મિંદગી", explanation: "જાહેરમાં નાની ભૂલ થવાને લીધે શરમ કે શર્મિંદગી અનુભવાય છે."),
            ExerciseItem(prompt: "થોમસ કાલે સવારે હવાઈની તેની પ્રથમ પ્રવાસ પર જઈ રહ્યો છે. તે કેવું અનુભવે છે?", options: ["ઉત્સાહિત", "ઉદાસ", "ગુસ્સે", "કંટાળેલો"], correctAnswer: "ઉત્સાહિત", explanation: "લાંબા પ્રવાસ પર જતાં પહેલાં વ્યક્તિ ઉત્સાહ અનુભવે છે."),
            ExerciseItem(prompt: "સુસાનની બિલાડી ત્રણ દિવસ ગુમ રહ્યા પછી સુરક્ષિત ઘરે પાછી આવી. તે કેવું અનુભવે છે?", options: ["રાહત", "ગુસ્સે", "ડરેલી", "મૂંઝવણમાં"], correctAnswer: "રાહત", explanation: "ચિંતાનો અંત આવતાં મનને શાંતિ કે રાહત મળે છે."),
            ExerciseItem(prompt: "જ્યોર્જ કામ કરવાનો પ્રયત્ન કરે છે ત્યારે ઈન્ટરનેટ કનેક્શન દર પાંચ મિનિટે કપાઈ જાય છે. તે કેવું અનુભવે છે?", options: ["પરેશાન", "ડર", "ખુશ", "કંટાળો"], correctAnswer: "પરેશાન", explanation: "કામમાં વારંવાર ખલેલ પહોંચવાથી પરેશાની કે અકળામણ થાય છે."),
            ExerciseItem(prompt: "હેલને તણાવપૂર્ણ દિવસ પછી ગરમ પાણીથી સ્નાન કર્યું. તે કેવું અનુભવે છે?", options: ["હળવાશ / શાંત", "ગુસ્સે", "ડરેલી", "ગભરાયેલી"], correctAnswer: "હળવાશ / શાંત", explanation: "ગરમ પાણીના સ્નાનથી મન અને શરીર હળવાશ (Relaxed) અનુભવે છે.")
        ]
    )

    // MARK: - Exercise 10: What's Wrong Here?
    private static let exercise10 = Exercise(
        title: "અહીં શું ખોટું છે?",
        instructions: "આપેલા વાક્યમાં શું અસંગત કે અશક્ય છે તે શોધો.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "જોને સુવા જતાં પહેલાં મધ્યરાત્રિએ સવારનો નાસ્તો (બ્રેકફાસ્ટ) કર્યો.", options: ["લોકો ખોરાક ખાતા નથી", "નાસ્તો સવારનું ભોજન છે, મધ્યરાત્રિનું નહીં", "જોને સુવું ન જોઈએ", "મધ્યરાત્રિ બપોરે હોય છે"], correctAnswer: "નાસ્તો સવારનું ભોજન છે, મધ્યરાત્રિનું નહીં", explanation: "નાસ્તો એ દિવસનું પ્રથમ ભોજન છે જે સવારના સમયે જ લેવાય છે."),
            ExerciseItem(prompt: "કૂતરો ટપાલી પર ભસ્યો અને પછી પક્ષી પકડવા માટે છત ઉપર ઉડી ગયો.", options: ["કૂતરા ભસતા નથી", "કૂતરા ઉડી શકતા નથી", "ટપાલી ટપાલ લાવતા નથી", "પક્ષીઓ ઉડતા નથી"], correctAnswer: "કૂતરા ઉડી શકતા નથી", explanation: "કૂતરાઓ જમીન પર રહેનારા પ્રાણી છે, તેમને પાંખો હોતી નથી તેથી ઉડી ન શકે."),
            ExerciseItem(prompt: "સારાએ જુલાઈ મહિનામાં આઉટડોર પૂલમાં તરવા જવા માટે ગરમ વિન્ટર કોટ અને હાથમોજાં પહેર્યા.", options: ["લોકો જુલાઈમાં તરતા નથી", "તરવા જવા માટે વિન્ટર કોટ અને હાથમોજાં પહેરાતા નથી", "આઉટડોર પૂલ હોતા નથી", "કોટ ઉનાળામાં પહેરાય છે"], correctAnswer: "તરવા જવા માટે વિન્ટર કોટ અને હાથમોજાં પહેરાતા નથી", explanation: "તરવા માટે સ્વિમસૂટ જોઈએ, ગરમ કપડાં પાણીમાં નકામા નીવડે છે."),
            ExerciseItem(prompt: "દીવાલ પરની ઘડિયાળે તેર વગાડ્યા, તેથી આર્થર સમજી ગયો કે તેની સવારની કોફીનો સમય થયો છે.", options: ["ઘડિયાળ દીવાલ પર લટકાવી ન શકાય", "સામાન્ય ઘડિયાળમાં બાર કલાક જ દર્શાવેલા હોય છે", "કોફી સવારનું પીણું નથી", "આર્થર કોફી પીતો નથી"], correctAnswer: "સામાન્ય ઘડિયાળમાં બાર કલાક જ દર્શાવેલા હોય છે", explanation: "સામાન્ય એનાલોગ ઘડિયાળોમાં અંક ૧ થી ૧૨ જ હોય છે."),
            ExerciseItem(prompt: "પોલ તેના મિત્રને મળવા માટે ઊંડી નદી ઉપર સાયકલ ચલાવીને ગયો.", options: ["સાયકલ પાણી પર ન ચાલી શકે", "નદીઓમાં માછલીઓ હોતી નથી", "મિત્રો એકબીજાને મળતા નથી", "સાયકલમાં પેડલ હોતા નથી"], correctAnswer: "સાયકલ પાણી પર ન ચાલી શકે", explanation: "સાયકલ જમીનનું વાહન છે, પાણી પર તે ડૂબી જશે."),
            ExerciseItem(prompt: "લિન્ડાએ પીવાનું ઠંડું પાણી બનાવવા માટે તપેલીમાં બરફના ટુકડા ઉકાળ્યા.", options: ["બરફના ટુકડા અસ્તિત્વમાં નથી", "બરફ ઉકાળવાથી તે ગરમ પાણી બને છે, ઠંડું નહીં", "તપેલીમાં બરફ ન મૂકી શકાય", "પીવાનું પાણી સ્વાસ્થ્યપ્રદ નથી"], correctAnswer: "બરફ ઉકાળવાથી તે ગરમ પાણી બને છે, ઠંડું નહીં", explanation: "બરફ ઉકાળવાથી તે ગરમ પાણી બને છે, ઠંડું નથી બનતું."),
            ExerciseItem(prompt: "ભૂખી બિલાડીથી બચવા માટે માછલી વૃક્ષ પર ચઢી ગઈ.", options: ["માછલીઓ ઝાડ પર ચઢી શકતી નથી", "બિલાડીઓ માછલી ખાતી નથી", "ઝાડ પર પાંદડા ઉગતા નથી", "માછલીઓ ઝાડ પર રહે છે"], correctAnswer: "માછલીઓ ઝાડ પર ચઢી શકતી નથી", explanation: "માછલી પાણીનું પ્રાણી છે, તેને ઝાડ પર ચઢવા માટે હાથપગ નથી હોતા."),
            ExerciseItem(prompt: "રોબર્ટે ચિકન નૂડલ સૂપ પીવા માટે કાંટાની ચમચી (ફોર્ક) નો ઉપયોગ કર્યો.", options: ["કાંટાથી પ્રવાહી સૂપ પી શકાય નહીં", "સૂપ ચિકનથી નથી બનતો", "ROબર્ટે ચપ્પુ વાપરવું જોઈતું હતું", "સૂપ વાસણ વગર ખવાય છે"], correctAnswer: "કાંટાથી પ્રવાહી સૂપ પી શકાય નહીં", explanation: "કાંટાની ચમચીમાં ખાંચા હોય છે જેથી પ્રવાહી વહી જાય, સૂપ પીવા માટે સાદી ચમચી જોઈએ."),
            ExerciseItem(prompt: "ખૂબ જ ધોધમાર વરસાદ પડી રહ્યો હોવા છતાં, નેન્સીએ પોતાના ભીના કપડાં સૂકવવા માટે બહાર દોરી પર લટકાવ્યા.", options: ["વરસાદથી કપડાં ભીના ન થાય", "વરસાદમાં બહાર કપડાં ન સુકાય", "દોરી માત્ર ઘરની અંદર જ વપરાય", "નેન્સી કપડાં પહેરતી નથી"], correctAnswer: "વરસાદમાં બહાર કપડાં ન સુકાય", explanation: "વરસાદને કારણે કપડાં વધારે ભીના થશે, સુકાશે નહીં."),
            ExerciseItem(prompt: "વિમાન રનવે પર સુરક્ષિત રીતે ઉતર્યું અને બધા મુસાફરો સીધા રેલ્વે ટ્રેક પર ચાલવા લાગ્યા.", options: ["વિમાન એરપોર્ટ પર નથી ઉતરતા", "મુસાફરો વિમાનમાં મુસાફરી કરતા નથી", "એરપોર્ટના ગેટ પર રેલ્વે ટ્રેક ન હોય", "ટ્રેન પાટા પર ન ચાલે"], correctAnswer: "એરપોર્ટના ગેટ પર રેલ્વે ટ્રેક ન હોય", explanation: "એરપોર્ટ પર વિમાન ઉતરાણ માટે રનવે અને ટર્મિનલ હોય છે, રેલ્વે ટ્રેક નહીં."),
            ExerciseItem(prompt: "હેલને ડ્રોઈંગરૂમને વધુ ગરમ કરવા માટે એર કંડિશનર (AC) ચાલુ કર્યું.", options: ["એર કંડિશનર રૂમ ઠંડો કરે છે, ગરમ નહીં", "ડ્રોઈંગરૂમમાં દીવાલો નથી હોતી", "હેલન પાસે ઘર નથી", "એસી વીજળી વાપરતું નથી"], correctAnswer: "એર કંડિશનર રૂમ ઠંડો કરે છે, ગરમ નહીં", explanation: "AC નું મુખ્ય કાર્ય તાપમાન ઘટાડવાનું (ઠંડું કરવાનું) છે, ગરમ કરવાનું નહીં."),
            ExerciseItem(prompt: "સસલાએ જંગલમાં મોટા કદના ભૂખરા વરુનો પીછો કર્યો.", options: ["સસલા જંગલમાં નથી રહેતા", "વરુ દોડતા નથી", "સસલા વરુનો પીછો કરતા નથી", "વરુ ભૂખરા નથી હોતા"], correctAnswer: "સસલા વરુનો પીછો કરતા નથી", explanation: "વરુ શિકારી પ્રાણી છે અને સસલું તેનો શિકાર છે; સસલું વરુથી બચવા ભાગે છે."),
            ExerciseItem(prompt: "જેમ્સે શિયાળામાં હાથને ગરમ રાખવા માટે ચામડાના બૂટ ખરીદ્યા.", options: ["બૂટ પગમાં પહેરાય છે, હાથમાં નહીં", "ચામડું બૂટ બનાવવા માટે વપરાતું નથી", "હાથ ઠંડા થતા નથી", "શિયાળો ઠંડો હોતો નથી"], correctAnswer: "બૂટ પગમાં પહેરાય છે, હાથમાં નહીં", explanation: "બૂટ કે જોડા પગમાં પહેરાય છે, હાથ ગરમ રાખવા માટે હાથમોજાં (ગ્લોવ્ઝ) વપરાય છે."),
            ExerciseItem(prompt: "સૂરજ મધ્યરાત્રિએ ઊગ્યો, જેનાથી સવારનું આકાશ ચમકી ઉઠ્યું.", options: ["સૂર્ય સવારે ઊગે છે, મધ્યરાત્રિએ નહીં", "મધ્યરાત્રિ બપોરે હોય છે", "સૂરજ તેજસ્વી નથી હોતો", "સવારે અંધારું હોય છે"], correctAnswer: "સૂર્ય સવારે ઊગે છે, મધ્યરાત્રિએ નહીં", explanation: "મધ્યરાત્રિએ સૂર્ય આકાશમાં દેખાતો નથી, તે સવારના જ ઊગે છે."),
            ExerciseItem(prompt: "એલિસે પોતાનું મનપસંદ રેડિયો સ્ટેશન સાંભળવા માટે ટીવી ચાલુ કર્યું.", options: ["ટીવી ચિત્રો બતાવે છે, તે રેડિયો નથી", "રેડિયો સંગીત નથી વગાડતા", "એલિસને સંગીત ગમતું નથી", "ટીવીમાં સ્પીકર નથી હોતા"], correctAnswer: "ટીવી ચિત્રો બતાવે છે, તે રેડિયો નથી", explanation: "રેડિયો કાર્યક્રમ સાંભળવા રેડિયો સાધન જોઈએ, ટીવી એ વિડિયો જોવા માટેનું સાધન છે.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "દવાની પ્રિસ્ક્રિપ્શન વાંચવું",
        instructions: "દવાની ચબરખી કે પ્રિસ્ક્રિપ્શન વાંચો અને પ્રશ્નનો ઉત્તર આપો.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "લેબલ: જમ્યા પછી દિવસમાં બે વાર ૧ ગોળી લેવી. તમારે આખો દિવસ થઈને કુલ કેટલી ગોળી લેવી જોઈએ?", options: ["૧", "૨", "૩", "૪"], correctAnswer: "૨", explanation: "દિવસમાં બે વાર ૧ ગોળી એટલે ૧ + ૧ = ૨ ગોળીઓ થાય."),
            ExerciseItem(prompt: "લેબલ: સુતી વખતે ૨ ગોળીઓ લેવી. તમારે આ દવા ક્યારે લેવી જોઈએ?", options: ["સવારે", "બપોરે જમતી વખતે", "સુતી વખતે", "કસરત કરતાં પહેલાં"], correctAnswer: "સુતી વખતે", explanation: "લેબલ પર સ્પષ્ટપણે સુતી વખતે લેવાની સૂચના છે."),
            ExerciseItem(prompt: "લેબલ: દુઃખાવા માટે જરૂરિયાત મુજબ દર ૮ કલાકે ૧ કેપ્સ્યુલ લેવી. ૨૪ કલાકના એક દિવસમાં તમે આ કેટલી વાર લઈ શકો?", options: ["૨ વાર", "૩ વાર", "૪ વાર", "૬ વાર"], correctAnswer: "૩ વાર", explanation: "એક દિવસમાં ૨૪ કલાક હોય છે. ૨૪ ભાગ્યા ૮ કરવાથી ૩ વાર મહત્તમ માત્રા મળે."),
            ExerciseItem(prompt: "લેબલ: એમોક્સિસિલિન ૨૫૦ મિગ્રા. દિવસમાં ત્રણ વાર ૧ ગોળી લો. ફ્રીઝમાં રાખો. તમારે આ દવા ક્યાં સંગ્રહવી જોઈએ?", options: ["ફ્રીઝર (બરફખાના) માં", "રેફ્રિજરેટર (ફ્રીઝ) માં", "ગરમ કબાટમાં", "તડકામાં"], correctAnswer: "રેફ્રિજરેટર (ફ્રીઝ) માં", explanation: "‘ફ્રીઝમાં રાખો’ (Keep refrigerated) એટલે કે દવા રેફ્રિજરેટરમાં રાખવી જોઈએ."),
            ExerciseItem(prompt: "લેબલ: આ દવા લેતી વખતે દારૂ પીવો નહીં. સુસ્તી / ઊંઘ આવી શકે છે. આ દવાની કઈ આડઅસર દર્શાવી છે?", options: ["સુસ્તી / ઊંઘ", "ઊર્જા વધવી", "હાઈ બ્લડ પ્રેશર", "છીંક આવવી"], correctAnswer: "સુસ્તી / ઊંઘ", explanation: "લેબલ ચેતવણી આપે છે કે આ દવા લેવાથી ‘સુસ્તી / ઊંઘ આવી શકે છે’."),
            ExerciseItem(prompt: "લેબલ: સવારે ભૂખ્યા પેટે રોજ ૧ ગોળી લેવી. તમારે સવારનો નાસ્તો ક્યારે કરવો જોઈએ?", options: ["ગોળી લીધા પહેલાં", "ગોળી લીધા પછી", "ગોળી લેતી વખતે જ", "નાસ્તો કરવો જ નહીં"], correctAnswer: "ગોળી લીધા પછી", explanation: "ભૂખ્યા પેટે લેવાનો અર્થ એ છે કે નાસ્તો કરતાં પહેલાં ગોળી ગળી લેવી."),
            ExerciseItem(prompt: "લેબલ: મોં વાટે રોજ ૧ ગોળી લેવી. જથ્થો: ૩૦. રિફિલ (ફરી આપવાની મંજૂરી): ૨. આ દવા કેટલી વાર ફરી મળી શકે?", options: ["૧", "૨", "૩", "૩૦"], correctAnswer: "૨", explanation: "લેબલ પર દર્શાવેલ છે ‘રિફિલ: ૨’."),
            ExerciseItem(prompt: "લેબલ: ત્વચાના અસરગ્રસ્ત ભાગ પર દિવસમાં બે વાર પાતળું પડ લગાવો. ગળવી નહીં. આ દવા કઈ રીતે વપરાય?", options: ["ગળી જવાથી", "ત્વચા પર ઘસવાથી / લગાડવાથી", "નાકમાં સ્પ્રે કરવાથી", "પાણીમાં ઓગાળવાથી"], correctAnswer: "ત્વચા પર ઘસવાથી / લગાડવાથી", explanation: "લેબલ પર ત્વચાના ભાગ પર લગાવવાની સૂચના છે જે બાહ્ય મલમ કે ક્રીમ છે."),
            ExerciseItem(prompt: "લેબલ: ૧૫/૧૦/૨૦૨૬ પછી વાપરવી નહીં. આજે ૦૧/૧૧/૨૦૨૬ છે. શું આ દવા લેવી સુરક્ષિત છે?", options: ["હા", "ના", "માત્ર જમ્યા પછી", "માત્ર રાત્રે"], correctAnswer: "ના", explanation: "દવાની મુદત ૧૫/૧૦/૨૦૨૬ ના રોજ પૂરી થઈ ગઈ છે, તેથી તે વાપરવી હિતાવહ નથી."),
            ExerciseItem(prompt: "લેબલ: દિવસમાં બે વાર ૧ ગોળી લેવી. ડેરી ઉત્પાદનો (દૂધ વગેરે) સાથે લેવી નહીં. કયા પીણાંથી દૂર રહેવું જોઈએ?", options: ["પાણી", "દૂધ", "સફરજનનો જ્યુસ", "બ્લેક કોફી"], correctAnswer: "દૂધ", explanation: "દૂધ એ ડેરી પ્રોડક્ટ છે જેને દવા સાથે લેવાની મનાઈ છે."),
            ExerciseItem(prompt: "લેબલ: ફ્લાઇટના ૧ કલાક પહેલાં ૨ ગોળી લો. આ દવા શા માટે લેવાય?", options: ["મુસાફરી દરમિયાન ઊલટી / જીવ મુંઝાવો રોકવા", "ઘરે સારી ઊંઘ માટે", "માથું મટાડવા", "ચામડીના ચકામાં મટાડવા"], correctAnswer: "મુસાફરી દરમિયાન ઊલટી / જીવ મુંઝાવો રોકવા", explanation: "ઉડાન પહેલાં લેવાતી દવા સામાન્ય રીતે પ્રવાસની ઉબકા કે મોશન સિકનેસ રોકવા માટે હોય છે."),
            ExerciseItem(prompt: "લેબલ: આઈ ડ્રોપ્સ. બંને આંખમાં દિવસમાં બે વાર ૧ ટીપું નાખો. આ દવા ક્યાં નાખવાની છે?", options: ["મોંમાં", "કાનમાં", "આંખમાં", "ચામડી પર"], correctAnswer: "આંખમાં", explanation: "આ આઈ ડ્રોપ્સ છે, જે આંખોમાં જ નાખવાના હોય છે."),
            ExerciseItem(prompt: "લેબલ: માથાના દુઃખાવા માટે દર ૪ થી ૬ કલાકે ૧ ગોળી લેવી. મહત્તમ ૪ ગોળી રોજની. એક દિવસમાં વધુમાં વધુ કેટલી ગોળી લઈ શકાય?", options: ["૧", "૨", "૪", "૬"], correctAnswer: "૪", explanation: "લેબલ પર સ્પષ્ટ લખ્યું છે ‘મહત્તમ ૪ ગોળી રોજની’."),
            ExerciseItem(prompt: "લેબલ: પાણીના આખા ગ્લાસ સાથે લો. આ દવા સાથે પાણી શા માટે જરૂરી છે?", options: ["ચામડી પર ઓગાળવા માટે", "ગળવામાં સરળતા રહે અને પેટમાં બળતરા ન થાય તે માટે", "રંગ બદલવા માટે", "સ્વાદ સારો કરવા માટે"], correctAnswer: "ગળવામાં સરળતા રહે અને પેટમાં બળતરા ન થાય તે માટે", explanation: "પાણી ગોળીને ગળામાંથી સરળતાથી ઉતારે છે અને જઠરની દીવાલોને નુકસાનથી બચાવે છે."),
            ExerciseItem(prompt: "લેબલ: સાંજના ભોજન સાથે રોજ ૧ ગોળી લેવી. આ દવા લેવાનો શ્રેષ્ઠ સમય કયો?", options: ["સવારે નાસ્તામાં", "બપોરે લંચમાં", "રાત્રે ડિનરમાં (સાંજના ભોજનમાં)", "અડધી રાત્રે"], correctAnswer: "રાત્રે ડિનરમાં (સાંજના ભોજનમાં)", explanation: "સાંજનું ભોજન એટલે રાત્રિભોજન કે ડિનર ગણાય.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "મેનૂ વાંચન",
        instructions: "મેનૂની વિગતોનો ઉપયોગ કરીને પ્રશ્નનો સાચો જવાબ આપો.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "મેનૂ: ચીઝબર્ગર $8.00, ફ્રેન્ચ ફ્રાઈઝ $3.00, સોડા $2.00. ચીઝબર્ગરની કિંમત કેટલી છે?", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "મેનૂ પર ચીઝબર્ગરની સામે કિંમત $8.00 દર્શાવેલી છે."),
            ExerciseItem(prompt: "મેનૂ: કોફી $2.50, ચા $2.00, મફિન $3.00. કઈ વસ્તુ સૌથી સસ્તી છે?", options: ["કોફી", "ચા", "મફિન", "બધાના ભાવ સરખા છે"], correctAnswer: "ચા", explanation: "આપેલી યાદીમાં $2.00 એ સૌથી ઓછી કિંમત છે જે ચાની છે."),
            ExerciseItem(prompt: "મેનૂ: ટામેટાનો સૂપ $5.00, ગ્રીન સલાડ $6.00, ચિકન સીઝર $9.00. એક બાઉલ ટામેટાના સૂપની કિંમત કેટલી?", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "ટામેટાના સૂપની કિંમત $5.00 દર્શાવેલી છે."),
            ExerciseItem(prompt: "મેનૂ: પેનકેક બ્રેકફાસ્ટ $10.00, French ટોસ્ટ $9.00, સાઇડ બેકન $4.00. ફ્રેન્ચ ટોસ્ટના કેટલા રૂપિયા થાય?", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "ફ્રેન્ચ ટોસ્ટની કિંમત $9.00 આપેલી છે."),
            ExerciseItem(prompt: "મેનૂ: ચીઝ પિઝા સ્લાઇસ $4.00, પેપરોની પિઝા સ્લાઇસ $4.50. પેપરોની સ્લાઇસ ચીઝ સ્લાઇસ કરતાં કેટલી મોંઘી છે?", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "$4.50 માંથી $4.00 બાદ કરતાં $0.50 તફાવત આવે છે."),
            ExerciseItem(prompt: "મેનૂ: ચિકન સેન્ડવીચ $7.00, ફિશ એન્ડ ચિપ્સ $11.00. તમારી પાસે $10.00 છે. તમે કઈ વસ્તુ ખરીદી શકો?", options: ["ચિકન સેન્ડવીચ", "ફિશ એન્ડ ચિપ્સ", "બંને વસ્તુઓ", "એક પણ નહીં"], correctAnswer: "ચિકન સેન્ડવીચ", explanation: "$7.00 એ તમારી પાસેના $10.00 થી ઓછા છે, જ્યારે $11.00 વધુ છે."),
            ExerciseItem(prompt: "મેનૂ: કિડ્સ મીલ (૧૨ વર્ષથી નાની ઉંમર) $6.00, એડલ્ટ બર્ગર $12.00. ૮ વર્ષના બાળકના ભોજનની કિંમત કેટલી થાય?", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "૮ વર્ષનું બાળક ૧૨ વર્ષથી નાનું હોવાને લીધે બાળ દર $6.00 લાગુ પડશે."),
            ExerciseItem(prompt: "મેનૂ: ચોકલેટ આઈસ્ક્રીમ $4.00, એપલ પાઈ $5.00, પાઈ સાથે વેનીલા આઈસ્ક્રીમ ઉમેરવાના $1.50. વેનીલા આઈસ્ક્રીમ સાથે એપલ પાઈની કિંમત કેટલી થાય?", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "$5.00 (પાઈ) + $1.50 (આઈસ્ક્રીમ) = $6.50 થાય."),
            ExerciseItem(prompt: "મેનૂ: ટર્કી રેપ $8.50, ચિપ્સ $1.50, જ્યુસ $2.00. ટર્કી રેપ અને એક જ્યુસની કુલ કિંમત કેટલી થાય?", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "$8.50 (રેપ) + $2.00 (જ્યુસ) = $10.50 થાય."),
            ExerciseItem(prompt: "મેનૂ: લંચ સ્પેશિયલ (સવારે ૧૧ થી બપોરે ૩ વાગ્યા સુધી) $9.00. રેગ્યુલર ડિનર મેનૂ $15.00. બપોરના ૧:૦૦ વાગ્યા છે. લંચ સ્પેશિયલની કિંમત શું હશે?", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "બપોરે ૧:૦૦ વાગ્યાનો સમય લંચ સ્પેશિયલ ગાળામાં આવતો હોવાથી ભાવ $9.00 રહેશે."),
            ExerciseItem(prompt: "મેનૂ: કોફી $2.00 (ફ્રી રિફિલ), ગરમ ચા $2.50. જો તમે ત્રણ કપ કોફી પીઓ, તો તમારે કુલ કેટલા ચૂકવવા પડે?", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "કોફી પર ફ્રી રિફિલ હોવાથી ગમે તેટલા કપ પીવા છતાં માત્ર $2.00 ચૂકવવા પડશે."),
            ExerciseItem(prompt: "મેનૂ: વેજીટેબલ સૂપ $4.00, બીફ સ્ટ્યૂ $7.00. કઈ વાનગીમાં માંસ (મીટ) આવે છે?", options: ["વેજીટેબલ સૂપ", "બીફ સ્ટ્યૂ", "બંનેમાં", "એક પણ નહીં"], correctAnswer: "બીફ સ્ટ્યૂ", explanation: "બીફ એ ગાયનું માંસ છે જે માંસાહારી વાનગી છે, શાકભાજી નહીં."),
            ExerciseItem(prompt: "મેનૂ: ટેકો $3.00, ક્યુસાડિલા $6.00, સોડા $2.00. ક્યુસાડિલાની કિંમત કેટલી છે?", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "મેનૂ પર ક્યુસાડિલાની કિંમત $6.00 દર્શાવેલી છે."),
            ExerciseItem(prompt: "મેનૂ: સ્પાઘેટ્ટી $12.00, લઝાનિયા $14.00, ગાર્લિક બ્રેડ $3.00. ગાર્લિક બ્રેડની કિંમત કેટલી થાય?", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "ગાર્લિક બ્રેડની કિંમત $3.00 આપણી યાદીમાં છે."),
            ExerciseItem(prompt: "મેનૂ: એગ્સ બેની $11.00, ઓટમીલ $6.00, ફ્રૂટ બાઉલ $5.00. કયો નાસ્તો સૌથી મોંઘો છે?", options: ["એગ્સ બેની", "ઓટમીલ", "ફ્રૂટ બાઉલ", "તમામની કિંમત સમાન છે"], correctAnswer: "એગ્સ બેની", explanation: "$11.00 એ નાસ્તાની વસ્તુઓમાં સૌથી વધુ કિંમત છે.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "બિલ સમજવું",
        instructions: "બિલની વિગતો વાંચો અને સાચો ઉત્તર પસંદ કરો.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "લાઈટ બિલ (ઇલેક્ટ્રિક બિલ): ચૂકવવાપાત્ર રકમ: $45.00. છેલ્લી તારીખ: ૧૫ જુલાઈ. તમારે કેટલા રૂપિયા ચૂકવવાના રહેશે?", options: ["$15.00", "$45.00", "૧૫ જુલાઈ", "મફત"], correctAnswer: "$45.00", explanation: "ચૂકવવાપાત્ર કુલ રકમ $45.00 છે."),
            ExerciseItem(prompt: "પાણીનું બિલ: છેલ્લી તારીખ: ૧૦ ઓક્ટોબર. લેટ ફી (વિલંબ શુલ્ક): $5.00. આજે ૧૨ ઓક્ટોબર છે. જો તમે આજે બિલ ભરો તો શું થાય?", options: ["નિયમિત રકમ ભરવી પડે", "નિયમિત રકમ ઉપરાંત $5.00 લેટ ફી ભરવી પડે", "ડિસ્કાઉન્ટ મળશે", "કાંઈ નહીં"], correctAnswer: "નિયમિત રકમ ઉપરાંત $5.00 લેટ ફી ભરવી પડે", explanation: "છેલ્લી તારીખ વીતી ગઈ હોવાને લીધે લેટ ફી લાગુ પડશે."),
            ExerciseItem(prompt: "ઈન્ટરનેટ બિલ: માસિક ચાર્જ: $60.00. ઓટોપે ડિસ્કાઉન્ટ: -$5.00. ઓટોપે (ખાતામાંથી સીધા પૈસા કપાવા) સાથે બિલની કિંમત શું થાય?", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "$60.00 માસિક ચાર્જમાંથી $5.00 ડિસ્કાઉન્ટ બાદ થતાં $55.00 વધે."),
            ExerciseItem(prompt: "ગેસ બિલ: ચાલુ માસના ચાર્જ: $30.00. બાકી રકમ (છેલ્લા મહિનાની): $10.00. કુલ ચૂકવવાપાત્ર રકમ: $40.00. ગયા મહિનાની કેટલી રકમ બાકી તરીકે બિલમાં જોડેલી છે?", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "ગયા મહિનાની બાકી રકમ (Unpaid Balance) $10.00 છે."),
            ExerciseItem(prompt: "ફોન બિલ: છેલ્લી તારીખ: ૨૦ જૂન. આજની તારીખ: ૧૫ જૂન. બિલ સમયસર ભરવા માટે તમારી પાસે કેટલા દિવસ બાકી છે?", options: ["૫ દિવસ", "૨૦ દિવસ", "૧૫ દિવસ", "૧ દિવસ"], correctAnswer: "૫ દિવસ", explanation: "૨૦ જૂન અને ૧૫ જૂન વચ્ચે ૫ દિવસનો સમયગાળો બાકી રહે છે."),
            ExerciseItem(prompt: "કચરા નિકાલ બિલ: ત્રિમાસિક ચાર્જ (૩ મહિનાના): $36.00. દર મહિને સરેરાશ કેટલો ખર્ચ ગણાય?", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "૩ મહિનાના $36.00 છે, માટે ૩૬ ભાગ્યા ૩ કરતાં દર મહિને $12.00 નો ખર્ચ થાય."),
            ExerciseItem(prompt: "કેબલ બિલ: કુલ ચૂકવવાપાત્ર: $80.00. ચેક કોના નામે બનાવવાનો રહેશે: “XYZ કેબલ કંપની”. ચેક પર કોનું નામ લખવું પડશે?", options: ["$80.00", "XYZ કેબલ કંપની", "કેબલ ઓપરેટર", "રોકડા"], correctAnswer: "XYZ કેબલ કંપની", explanation: "બિલની વિગત મુજબ ચેક ‘XYZ કેબલ કંપની’ ના નામે બનાવવાનો રહેશે."),
            ExerciseItem(prompt: "યુટિલિટી બિલ: પાણી: $20.00, ગેસ: $30.00, ઇલેક્ટ્રિક: $50.00. કુલ: $100.00. કઈ સેવાનો ખર્ચ સૌથી વધુ છે?", options: ["પાણી", "ગેસ", "ઇલેક્ટ્રિક", "બધાનો ખર્ચ સમાન છે"], correctAnswer: "ઇલેક્ટ્રિક", explanation: "ઇલેક્ટ્રિક (વીજળી) નો ચાર્જ $50.00 છે, જે સૌથી વધુ રકમ છે."),
            ExerciseItem(prompt: "ગાડીનો વીમો: અર્ધવાર્ષિક પ્રીમિયમ: $600.00. તમારે આ બિલ કેટલા સમયે ભરવું પડે છે?", options: ["દર મહિને", "દર ૬ મહિને (વર્ષમાં બે વાર)", "વર્ષમાં એક વાર", "દર અઠવાડિયે"], correctAnswer: "દર ૬ મહિને (વર્ષમાં બે વાર)", explanation: "અર્ધવાર્ષિક એટલે દર ૬ મહિને અથવા વર્ષમાં બે વાર થાય."),
            ExerciseItem(prompt: "સ્ટ્રીમિંગ સર્વિસ બિલ: ખાતાની સ્થિતિ: સસ્પેન્ડેડ (બંધ). બાકી રકમ: $15.00. આ સેવા શા માટે ચાલુ નથી?", options: ["નેટ બંધ છે", "ટીવી બગડેલું છે", "બાકી બિલ ન ભરવાને કારણે ખાતું બંધ છે", "વિડીયો બફર થાય છે"], correctAnswer: "બાકી બિલ ન ભરવાને કારણે ખાતું બંધ છે", explanation: "ખાતાની સ્થિતિ ‘સસ્પેન્ડેડ’ દર્શાવે છે જે બિલ ન ભરવાને લીધે સેવા કામચલાઉ બંધ હોવાનો સંકેત આપે છે."),
            ExerciseItem(prompt: "જીમ મેમ્બરશિપ: વાર્ષિક ફી: $120.00. માસિક ફી: $10.00. આખા વર્ષની ફી કેટલી થાય?", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "વાર્ષિક (આખા વર્ષની) ફી $120.00 દર્શાવેલી છે."),
            ExerciseItem(prompt: "હીટિંગ બિલ (ઘર ગરમ રાખવાનું બિલ): જાન્યુઆરી: $110.00. જુલાઈ: $20.00. જાન્યુઆરીમાં બિલ આટલું ઊંચું કેમ આવ્યું?", options: ["ઉનાળામાં ગેસ મોંઘો હોય છે", "શિયાળાના જાન્યુઆરી મહિનામાં ઘર ગરમ રાખવા હીટિંગ વધુ વપરાય છે", "જાન્યુઆરીમાં ઘર ખાલી હતું", "સમય બદલાયો હતો"], correctAnswer: "શિયાળાના જાન્યુઆરી મહિનામાં ઘર ગરમ રાખવા હીટિંગ વધુ વપરાય છે", explanation: "શિયાળાના ઠંડા દિવસોમાં ઘરને ગરમ રાખવા માટે વધુ એનર્જી વપરાય છે, જેથી બિલ ઊંચું આવે છે."),
            ExerciseItem(prompt: "ક્રેડિટ કાર્ડ બિલ: લઘુત્તમ ચૂકવણી (મિનિમમ પેમેન્ટ): $25.00. કુલ બાકી રકમ: $500.00. ચાર્જ ન લાગે તે માટે તમે ચાલુ મહિને ઓછામાં ઓછી કેટલી રકમ ભરી શકો?", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "બિલની ચાલુ માસની લઘુત્તમ ચૂકવણી $25.00 સ્વીકાર્ય રહેશે."),
            ExerciseItem(prompt: "તબીબી બિલ (મેડિકલ બિલ): કુલ ચાર્જ: $150.00. વીમા કંપની દ્વારા ચૂકવેલ: $120.00. દર્દીની જવાબદારી: $30.00. તમારે કેટલા પૈસા ચૂકવવાના રહેશે?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "દર્દીએ પોતે ચૂકવવાની રકમ $30.00 દર્શાવેલી છે."),
            ExerciseItem(prompt: "અખબાર સબ્સ્ક્રિપ્શન: આગામી રીન્યુઅલ તારીખ: ૩૧ ડિસેમ્બર, 2026. જો તમારે રીન્યુ કર્યા વગર બંધ કરવું હોય, તો ક્યારે ફોન કરવો જોઈએ?", options: ["૩૧ ડિસેમ્બર, 2026 પહેલાં", "૩૧ ડિસેમ્બર, 2026 પછી", "જાન્યુઆરી 2027 માં", "ક્યારેય નહીં"], correctAnswer: "૩૧ ડિસેમ્બર, 2026 પહેલાં", explanation: "આગામી સબ્સ્ક્રિપ્શન તારીખ પહેલાં કેન્સલ કરવા માટે કૉલ કરવો જરૂરી છે.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "તમે શું કરશો?",
        instructions: "આપેલી પ્રતિકૂળ પરિસ્થિતિમાં યોગ્ય પ્રતિક્રિયા કે ઉકેલ પસંદ કરો.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "તમને રસોડામાં ધુમાડાની ગંધ આવે છે પણ આગ દેખાતી નથી. તમારે સૌથી પહેલાં શું કરવું જોઈએ?", options: ["અવગણના કરવી", "બારીઓ ખોલવી અને ગેસનો ચૂલો તપાસવો", "મિત્ર સાથે ફોન પર વાત કરવી", "પાછા સુઈ જવું"], correctAnswer: "બારીઓ ખોલવી અને ગેસનો ચૂલો તપાસવો", explanation: "રસોઈનો ચૂલો ચેક કરવો એ કોઈ પણ ખતરાને આગળ વધતો અટકાવવાનું પ્રથમ પગલું છે."),
            ExerciseItem(prompt: "તમે કરિયાણાની દુકાને છો અને ખબર પડી કે પાકીટ ઘરે ભૂલી ગયા છો. આ સમયે સૌથી સારો રસ્તો કયો?", options: ["પૈસા આપ્યા વિના સામાન લઈ જવો", "કેશિયરને માલ રાખવા વિનંતી કરવી અને ઘરેથી પાકીટ લઈ આવવું", "દુકાનમાંથી રડતાં રડતાં નીકળી જવું", "મેનેજર સાથે દલીલ કરવી"], correctAnswer: "કેશિયરને માલ રાખવા વિનંતી કરવી અને ઘરેથી પાકીટ લઈ આવવું", explanation: "કર્મચારીને સામાન થોડીવાર સાચવવા કહીને ઘરેથી પાકીટ લાવવું એ સૌથી સભ્ય અને વ્યવહારુ રસ્તો છે."),
            ExerciseItem(prompt: "રસોડાના ફ્લોર પર તમારાથી કાચું ઈંડું પડી ગયું અને તૂટી ગયું. તમારે શું કરવું જોઈએ?", options: ["તેને આવતીકાલ સુધી ત્યાં જ રાખવું", "તેને તરત જ કાગળના રૂમાલ અને સાબુથી સાફ કરવું", "તેને ચટ્ટાઈથી ઢાંકી દેવું", "બિલાડીને તે ખાવા દેવું"], correctAnswer: "તેને તરત જ કાગળના રૂમાલ અને સાબુથી સાફ કરવું", explanation: "કાચું ઈંડું ચીકણું હોવાથી કોઈ લપસી શકે છે અને બેક્ટેરિયા પેદા કરે છે, તેથી તેને તરત સાફ કરવું જરૂરી છે."),
            ExerciseItem(prompt: "તમારા મિત્રએ જણાવ્યું કે ગઈકાલે તેના પાલતુ કૂતરાનું મૃત્યુ થયું. તમારે તેને શું કહેવું જોઈએ?", options: ["એ તો રમુજી વાત છે", "તમારા આ નુકસાન બદલ મને દિલગીરી છે", "તમારે તેના બદલે બિલાડી પાળવી જોઈએ", "શું મને તેના રમકડાં મળી શકે?"], correctAnswer: "તમારા આ નુકસાન બદલ મને દિલગીરી છે", explanation: "દુઃખના સમયે આશ્વાસન આપવું એ સહાનુભૂતિપૂર્ણ વ્યવહાર છે."),
            ExerciseItem(prompt: "તમને અજાણ્યા નંબર પરથી ફોન આવે છે જેમાં દાવો કરાય છે કે તમે લોટરી જીતી છે અને બેંક ખાતાની વિગત માંગવામાં આવે છે. તમે શું કરશો?", options: ["તેમને તરત જ બેંકની બધી માહિતી આપવી", "ફોન કાપી નાખવો અને કોઈ ખાનગી વિગત આપવી નહીં", "તેમને પછીથી ફોન કરવા કહેવું", "ખુશી મનાવવા કુટુંબીજનોને ફોન કરવો"], correctAnswer: "ફોન કાપી નાખવો અને કોઈ ખાનગી વિગત આપવી નહીં", explanation: "અજાણ્યા લોકો દ્વારા બેંક માહિતી માંગવી એ ઓનલાઈન છેતરપિંડી કે સ્કેમ હોઈ શકે છે."),
            ExerciseItem(prompt: "ગરમ રૂમમાં ઊભા હોવાને લીધે તમને ચક્કર અને અશક્તિ જેવું લાગે છે. તમારે શું કરવું જોઈએ?", options: ["ત્યાં જ ઊભા રહેવું અને આંખો બંધ કરવી", "તરત જ બેસી જવું અને થોડું પાણી પીવું", "બાથરૂમ તરફ દોડવું", "ગોળ ગોળ ઘૂમવું"], correctAnswer: "તરત જ બેસી જવું અને થોડું પાણી પીવું", explanation: "તરત બેસી જવાથી પડી જવાનો ભય રહેતો નથી અને પાણી અશક્તિમાં રાહત આપે છે."),
            ExerciseItem(prompt: "રસોડાના સિંકની નીચેથી પાણી ટપકતું દેખાય છે. તમારું પ્રથમ પગલું શું હશે?", options: ["રંગ કરનારને ફોન કરવો", "ટપકતા પાણીની નીચે ડોલ કે વાસણ મૂકી દેવું", "રસોડાનો ફ્લોર પછીથી સાફ કરવો", "બધી લાઈટો બંધ કરી દેવી"], correctAnswer: "ટપકતા પાણીની નીચે ડોલ કે વાસણ મૂકી દેવું", explanation: "ડોલ કે વાસણ મૂકવાથી પાણી વધુ ફેલાતું અટકે છે અને લાકડા કે ભોંયતળિયાનું નુકસાન ટળે છે."),
            ExerciseItem(prompt: "તમને કોઈ ડીનર પાર્ટીમાં આમંત્રિત કર્યા છે પણ તમે જઈ શકો તેમ નથી. તમારે શું કરવું જોઈએ?", options: ["કાંઈ પણ કહ્યા વગર ગેરહાજર રહેવું", "યજમાનને અગાઉથી જાણ કરી દેવી કે તમે આવી શકશો નહીં", "મોડા પહોંચવું કોઈને કહ્યા વગર", "જવાબ આપવાને બદલે ભેટ મોકલી આપવી"], correctAnswer: "યજમાનને અગાઉથી જાણ કરી દેવી કે તમે આવી શકશો નહીં", explanation: "અગાઉથી ન આવી શકવાની જાણ કરવી એ સભ્યતા છે જેથી તેઓ આયોજન વ્યવસ્થિત કરી શકે."),
            ExerciseItem(prompt: "મિત્રના ઘરે તમારાથી ભૂલથી સજાવટની ફૂલદાની તૂટી ગઈ. સાચી પ્રતિક્રિયા શું હોવી જોઈએ?", options: ["તેના ટુકડા સોફા નીચે છુપાવી દેવા", "માફી માંગવી અને તેના બદલે નવી ફૂલદાની લઈ આપવાની ઓફર કરવી", "એવું નાટક કરવું કે તમે કંઈ જાણતા જ નથી", "કૂતરા પર વાંક કાઢવો"], correctAnswer: "માફી માંગવી અને તેના બદલે નવી ફૂલદાની લઈ આપવાની ઓફર કરવી", explanation: "પોતાની ભૂલનો પ્રામાણિક સ્વીકાર કરવો અને નુકસાન ભરપાઈ કરવાની તૈયારી દર્શાવવી એ યોગ્ય માર્ગ છે."),
            ExerciseItem(prompt: "તમારી ઘરની ચાવી ખોવાઈ ગઈ છે અને તમે બહાર લોક થઈ ગયા છો. સૌથી યોગ્ય પગલું કયું?", options: ["અંદર જવા બારીનો કાચ તોડી નાખવો", "કુટુંબના સભ્યને ફોન કરવો જેમની પાસે વધારાની ચાવી હોય અથવા ચાવી બનાવનારને બોલાવવો", "ઓટલા પર બેસી રહેવું કાયમ માટે", "દરવાજા પર લાતો મારવી"], correctAnswer: "કુટુંબના સભ્યને ફોન કરવો જેમની પાસે વધારાની ચાવી હોય અથવા ચાવી બનાવનારને બોલાવવો", explanation: "બીજી ચાવીની સગવડ કરવી કે વ્યવસાયી લોકસ્મિથની મદદ લેવી એ સુરક્ષિત રસ્તો છે."),
            ExerciseItem(prompt: "શેરીની લાઈટો ચાલુ છે પણ તમારા ઘરમાં પાવર નથી. તમારે શું કરવું જોઈએ?", options: ["પાવર કંટ્રોલ કે મેઈન સ્વીચ બોક્સ તપાસવું", "નવું ટીવી ખરીદવું", "તરત સુઈ જવું", "પોલીસને ફોન કરવો"], correctAnswer: "પાવર કંટ્રોલ કે મેઈન સ્વીચ બોક્સ તપાસવું", explanation: "મેઈન ફ્યુઝ કે સ્વીચ બોક્સ ચેક કરવાથી ખ્યાલ આવે કે પ્રોબ્લેમ આપણા ઘરમાં જ છે કે આખી લાઈનમાં."),
            ExerciseItem(prompt: "તમે એક વૃદ્ધ પાડોશીને કરિયાણાની ભારે થેલીઓ ઊંચકીને જતા જુઓ છો. તમે શું કરશો?", options: ["તેમનાથી આગળ ઝડપથી ચાલવા માંડવું", "તેમને થેલીઓ ઊંચકવામાં મદદ કરવા પૂછવું", "તેમનો ફોટો પાડવો", "તેમને ઝડપથી ચાલવા કહેવું"], correctAnswer: "તેમને થેલીઓ ઊંચકવામાં મદદ કરવા પૂછવું", explanation: "મદદરૂપ થવું એ પાડોશી ધર્મ અને માનવતાનું ઉત્તમ ઉદાહરણ છે."),
            ExerciseItem(prompt: "તમે ગરમ કોફીનો ઘૂંટડો ભરો છો અને તમારી જીભ બળી જાય છે. તમે શું કરશો?", options: ["બાકીની કોફી ઝડપથી પી જવી", "તેને બહાર કાઢી નાખવી અને મોંમાં ઠંડું પાણી લેવું", "મોટેથી બૂમો પાડવી", "કપ ફેંકી દેવો"], correctAnswer: "તેને બહાર કાઢી નાખવી અને મોંમાં ઠંડું પાણી લેવું", explanation: "મોંમાં ઠંડું પાણી રાખવાથી બળતરામાં તાત્કાલિક રાહત મળે છે."),
            ExerciseItem(prompt: "ડૉક્ટર નવી દવા લખી આપે છે પણ તમને તે કેવી રીતે લેવી તેની ખબર નથી. તમે શું કરશો?", options: ["અંદાજે યોગ્ય લાગે તેટલી દવા લેવી", "દવા આપનાર ફાર્માસિસ્ટ કે ડૉક્ટરને તે વિગતવાર સમજાવવા વિનંતી કરવી", "દવા લેવી જ નહીં", "સોશિયલ મીડિયા પર તેની વિગત શોધવી"], correctAnswer: "દવા આપનાર ફાર્માસિસ્ટ કે ડૉક્ટરને તે વિગતવાર સમજાવવા વિનંતી કરવી", explanation: "દવાના ડોઝ અંગે માત્ર તબીબી નિષ્ણાતો પર જ ભરોસો રાખવો જોઈએ."),
            ExerciseItem(prompt: "ભૂલથી તમારાથી મિત્રના સફેદ કાર્પેટ પર રેડ વાઈન ઢોળાઈ ગયો. તમે શું કરશો?", options: ["ડાઘ પર ખુરશી મૂકી દેવી", "માફી માંગવી અને ડાઘ તરત સાફ કરવામાં મદદ કરવી", "પાર્ટીમાંથી વહેલા જતાં રહેવું", "તેમને કહેવું કે આ દ્રાક્ષનો જ્યુસ હતો"], correctAnswer: "માફી માંગવી અને ડાઘ તરત સાફ કરવામાં મદદ કરવી", explanation: "તાત્કાલિક ડાઘ સાફ કરવાથી કાર્પેટ બગડતું અટકે છે અને પ્રામાણિકતા રહે છે."),
            ExerciseItem(prompt: "તમારો સ્મોક એલાર્મ દર મિનિટે એક નાની બીપનો અવાજ કરે છે. આનો અર્થ શું થાય?", options: ["આગ લાગી છે", "બેટરી ઓછી છે અને તેને બદલવાની જરૂર છે", "એલાર્મ બગડી ગયો છે", "કાંઈ જ નહીં"], correctAnswer: "બેટરી ઓછી છે અને તેને બદલવાની જરૂર છે", explanation: "દર મિનિટે થતી ટૂંકી બીપ એ દર્શાવે છે કે બેકઅપ બેટરી બદલવાનો સમય થઈ ગયો છે."),
            ExerciseItem(prompt: "તમે વાહન ચલાવી રહ્યા છો અને તમારી પાછળ ફ્લેશિંગ લાઈટ સાથે ફાયર બ્રિગેડ કે એમ્બ્યુલન્સ આવે છે. તમે શું કરશો?", options: ["તેનાથી આગળ જવા વાહનની સ્પીડ વધારવી", "રસ્તાની બાજુ પર વાહન સુરક્ષિત રીતે લાવીને ઊભું રાખી દેવું", "રસ્તાની વચ્ચોવચ વાહન રોકી દેવું", "અવગણના કરવી"], correctAnswer: "રસ્તાની બાજુ પર વાહન સુરક્ષિત રીતે લાવીને ઊભું રાખી દેવું", explanation: "ઈમરજન્સી વાહનોને જગ્યા કરી આપવી એ કાયદાકીય ફરજ અને આપણી નૈતિકતા છે."),
            ExerciseItem(prompt: "તમારા બેંકના નામે ઈમેલ આવે છે જેમાં પાસવર્ડ કન્ફર્મ કરવા લિંક પર ક્લિક કરવાનું કહે છે. તમે શું કરશો?", options: ["લિંક ખોલવી અને પાસવર્ડ નાખવો", "ઈમેલ ડિલીટ કરવો અથવા બેંકના સત્તાવાર નંબર પર ફોન કરી ચકાસવું", "મિત્રોને ઈમેલ ફોરવર્ડ કરવો", "મેલના જવાબમાં પાસવર્ડ લખી મોકલવો"], correctAnswer: "ઈમેલ ડિલીટ કરવો અથવા બેંકના સત્તાવાર નંબર પર ફોન કરી ચકાસવું", explanation: "બેંક ક્યારેય મેલ લિંકથી પાસવર્ડ નથી માંગતી, આ ઓનલાઈન ફ્રોડ (ફિશિંગ) છે."),
            ExerciseItem(prompt: "તમને રસ્તા પરથી એક વોલેટ મળે છે જેમાં પૈસા અને ઓળખપત્ર છે. તમે શું કરશો?", options: ["પૈસા રાખી લઈ વોલેટ ફેંકી દેવું", "પોલીસ મથકે જમા કરાવવું અથવા ઓળખપત્ર પરથી માલિકનો સંપર્ક કરવા પ્રયાસ કરવો", "રસ્તા પર જ રહેવા દેવું", "કોઈ અજાણ્યાને આપી દેવું"], correctAnswer: "પોલીસ મથકે જમા કરાવવું અથવા ઓળખપત્ર પરથી માલિકનો સંપર્ક કરવા પ્રયાસ કરવો", explanation: "બીજાની ગયેલી વસ્તુ સાચી જગ્યાએ પહોંચાડવી એ પ્રામાણિકતા છે."),
            ExerciseItem(prompt: "તમારો સ્મોક એલાર્મ મોટો અને સતત અવાજ કરે છે. તમારે શું કરવું જોઈએ?", options: ["તેને અવગણવો અને બંધ થવાની રાહ જોવી", "તપાસ કરવી કે ક્યાંય આગ છે કે નહીં, અને જરૂર જણાયે સલામત રીતે બિલ્ડિંગની બહાર નીકળી જવું", "તરત બેટરી બદલવા બેસી જવું", "સુઈ જવું"], correctAnswer: "તપાસ કરવી કે ક્યાંય આગ છે કે નહીં, અને જરૂર જણાયે સલામત રીતે બિલ્ડિંગની બહાર નીકળી જવું", explanation: "સતત વાગતો એલાર્મ આગ અથવા ધુમાડાનો ગંભીર સંકેત છે જેથી બચાવ કામગીરી તાત્કાલિક કરવી જોઈએ.")
        ]
    )
}
