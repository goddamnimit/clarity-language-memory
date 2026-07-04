import Foundation

struct GujaratiLanguageExerciseData {

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
        title: "વર્ગ બહાર — સરળ",
        instructions: "જે શબ્દ જૂથમાં ન આવતો હોય તે પસંદ કરો.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "સફરજન, નાસપાતી, ગાજર, જાંબુ", options: ["સફરજન", "નાસપાતી", "ગાજર", "જાંબુ"], correctAnswer: "ગાજર", explanation: "શાકભાજી, ફળ નહીં"),
            ExerciseItem(id: UUID(), prompt: "કાર, બસ, ચમચો, ટ્રક", options: ["કાર", "બસ", "ચમચો", "ટ્રક"], correctAnswer: "ચમચો", explanation: "વાહન નહીં"),
            ExerciseItem(id: UUID(), prompt: "સોનું, બિલાડી, કૂતરો, પક્ષી", options: ["સોનું", "બિલાડી", "કૂતરો", "પક્ષી"], correctAnswer: "સોનું", explanation: "ધાતુ, પ્રાણી નહીં"),
            ExerciseItem(id: UUID(), prompt: "કમીઝ, પેન્ટ, કાંટો, ટોપી", options: ["કમીઝ", "પેન્ટ", "કાંટો", "ટોપી"], correctAnswer: "કાંટો", explanation: "કપડું નહીં"),
            ExerciseItem(id: UUID(), prompt: "ખુરશી, મેજ, સફરજન, પલંગ", options: ["ખુરશી", "મેજ", "સફરજન", "પલંગ"], correctAnswer: "સફરજન", explanation: "ખાવાનું, ફર્નિચર નહીં"),
            ExerciseItem(id: UUID(), prompt: "હથોડો, પાનો, ઓશીકું, ડ્રિલ", options: ["હથોડો", "પાનો", "ઓશીકું", "ડ્રિલ"], correctAnswer: "ઓશીકું", explanation: "સાધન નહીં"),
            ExerciseItem(id: UUID(), prompt: "જાન્યુઆરી, માર્ચ, શુક્રવાર, મે", options: ["જાન્યુઆરી", "માર્ચ", "શુક્રવાર", "મે"], correctAnswer: "શુક્રવાર", explanation: "અઠવાડિયાનો દિવસ, મહિનો નહીં"),
            ExerciseItem(id: UUID(), prompt: "પેરિસ, લંડન, ગુરુ, રોમ", options: ["પેરિસ", "લંડન", "ગુરુ", "રોમ"], correctAnswer: "ગુરુ", explanation: "ગ્રહ, શહેર નહીં"),
            ExerciseItem(id: UUID(), prompt: "કૂતરો, બિલાડી, ઝાડ, ઉંદર", options: ["કૂતરો", "બિલાડી", "ઝાડ", "ઉંદર"], correctAnswer: "ઝાડ", explanation: "પ્રાણી નહીં"),
            ExerciseItem(id: UUID(), prompt: "આંખ, નાક, કાર, કાન", options: ["આંખ", "નાક", "કાર", "કાન"], correctAnswer: "કાર", explanation: "શરીરનો ભાગ નહીં"),
            ExerciseItem(id: UUID(), prompt: "દૂધ, જ્યૂસ, રોટી, પાણી", options: ["દૂધ", "જ્યૂસ", "રોટી", "પાણી"], correctAnswer: "રોટી", explanation: "પીણું નહીં"),
            ExerciseItem(id: UUID(), prompt: "સોફા, પલંગ, ચૂલો, ખુરશી", options: ["સોફા", "પલંગ", "ચૂલો", "ખુરશી"], correctAnswer: "ચૂલો", explanation: "ઉપકરણ, ફર્નિચર નહીં"),
            ExerciseItem(id: UUID(), prompt: "ગુલાબ, ટ્યૂલિપ, ડેઝી, કાર", options: ["ગુલાબ", "ટ્યૂલિપ", "ડેઝી", "કાર"], correctAnswer: "કાર", explanation: "ફૂલ નહીં"),
            ExerciseItem(id: UUID(), prompt: "કલમ, પેન્સિલ, ક્રેયોન, કાંટો", options: ["કલમ", "પેન્સિલ", "ક્રેયોન", "કાંટો"], correctAnswer: "કાંટો", explanation: "લખવાનું સાધન નહીં"),
            ExerciseItem(id: UUID(), prompt: "સોફા, ગાલીચો, દીવો, મરઘો", options: ["સોફા", "ગાલીચો", "દીવો", "મરઘો"], correctAnswer: "મરઘો", explanation: "ઘરની વસ્તુ નહીં"),
            ExerciseItem(id: UUID(), prompt: "સૂર્ય, વરસાદ, પવન, કમીઝ", options: ["સૂર્ય", "વરસાદ", "પવન", "કમીઝ"], correctAnswer: "કમીઝ", explanation: "હવામાન નહીં"),
            ExerciseItem(id: UUID(), prompt: "થાળી, વાટકી, કપ, કાર", options: ["થાળી", "વાટકી", "કપ", "કાર"], correctAnswer: "કાર", explanation: "વાસણ નહીં"),
            ExerciseItem(id: UUID(), prompt: "બસ, ટ્રેન, વહાણ, બિલાડી", options: ["બસ", "ટ્રેન", "વહાણ", "બિલાડી"], correctAnswer: "બિલાડી", explanation: "વાહન નહીં"),
            ExerciseItem(id: UUID(), prompt: "ટોપી, મોજાં, જૂતાં, કઢાઈ", options: ["ટોપી", "મોજાં", "જૂતાં", "કઢાઈ"], correctAnswer: "કઢાઈ", explanation: "રસોઈનું વાસણ, કપડું નહીં"),
            ExerciseItem(id: UUID(), prompt: "બિલાડી, કૂતરો, પક્ષી, ટ્રક", options: ["બિલાડી", "કૂતરો", "પક્ષી", "ટ્રક"], correctAnswer: "ટ્રક", explanation: "પ્રાણી નહીં"),
            ExerciseItem(id: UUID(), prompt: "માર્ચ, એપ્રિલ, મંગળવાર, જૂન", options: ["માર્ચ", "એપ્રિલ", "મંગળવાર", "જૂન"], correctAnswer: "મંગળવાર", explanation: "અઠવાડિયાનો દિવસ, મહિનો નહીં"),
            ExerciseItem(id: UUID(), prompt: "લાલ, વાદળી, મેજ, લીલો", options: ["લાલ", "વાદળી", "મેજ", "લીલો"], correctAnswer: "મેજ", explanation: "રંગ નહીં"),
            ExerciseItem(id: UUID(), prompt: "છરી, કાંટો, ચમચો, પલંગ", options: ["છરી", "કાંટો", "ચમચો", "પલંગ"], correctAnswer: "પલંગ", explanation: "ફર્નિચર, વાસણ નહીં"),
            ExerciseItem(id: UUID(), prompt: "ગરુડ, બાજ, ઘુવડ, માછલી", options: ["ગરુડ", "બાજ", "ઘુવડ", "માછલી"], correctAnswer: "માછલી", explanation: "પક્ષી નહીં"),
            ExerciseItem(id: UUID(), prompt: "રૂપિયો, નિકેલ, ડૉલર, જૅકેટ", options: ["રૂપિયો", "નિકેલ", "ડૉલર", "જૅકેટ"], correctAnswer: "જૅકેટ", explanation: "ચલણ નહીં"),
            ExerciseItem(id: UUID(), prompt: "સિંહ, રીંછ, વાઘ, પિઝ્ઝા", options: ["સિંહ", "રીંછ", "વાઘ", "પિઝ્ઝા"], correctAnswer: "પિઝ્ઝા", explanation: "પ્રાણી નહીં"),
            ExerciseItem(id: UUID(), prompt: "સફરજન, કેળું, ગાજર, દ્રાક્ષ", options: ["સફરજન", "કેળું", "ગાજર", "દ્રાક્ષ"], correctAnswer: "ગાજર", explanation: "શાકભાજી, ફળ નહીં"),
            ExerciseItem(id: UUID(), prompt: "ખુરશી, મેજ, ડેસ્ક, ડૉલ્ફિન", options: ["ખુરશી", "મેજ", "ડેસ્ક", "ડૉલ્ફિન"], correctAnswer: "ડૉલ્ફિન", explanation: "દરિયાઈ પ્રાણી, ફર્નિચર નહીં"),
            ExerciseItem(id: UUID(), prompt: "રૉબિન, ગરુડ, સૅલ્મન, પોપટ", options: ["રૉબિન", "ગરુડ", "સૅલ્મન", "પોપટ"], correctAnswer: "સૅલ્મન", explanation: "માછલી, પક્ષી નહીં"),
            ExerciseItem(id: UUID(), prompt: "ક્રિકેટ, ટેનિસ, શેતરંજ, ફૂટબૉલ", options: ["ક્રિકેટ", "ટેનિસ", "શેતરંજ", "ફૂટબૉલ"], correctAnswer: "શેતરંજ", explanation: "બૉર્ડ ગેમ, રમત નહીં")
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out — Hard
    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "વર્ગ બહાર — કઠિન",
        instructions: "જે શબ્દ જૂથમાં ન આવતો હોય તે પસંદ કરો.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "ઉપમા, રૂપક, અતિશયોક્તિ, ફકરો", options: ["ઉપમા", "રૂપક", "અતિશયોક્તિ", "ફકરો"], correctAnswer: "ફકરો", explanation: "લખાણ માળખું, અલંકાર નહીં"),
            ExerciseItem(id: UUID(), prompt: "જાંઘનો હાડકો, પગની પીંડી, ત્રિજ્યા, કોર્નિયા", options: ["જાંઘનો હાડકો", "પગની પીંડી", "ત્રિજ્યા", "કોર્નિયા"], correctAnswer: "કોર્નિયા", explanation: "આંખનો ભાગ, હાડકું નહીં"),
            ExerciseItem(id: UUID(), prompt: "બિથોવન, મોઝાર્ટ, પિકાસો, શોપિન", options: ["બિથોવન", "મોઝાર્ટ", "પિકાસો", "શોપિન"], correctAnswer: "પિકાસો", explanation: "ચિત્રકાર, સંગીતકાર નહીં"),
            ExerciseItem(id: UUID(), prompt: "કાર્ડિગન, બ્લેઝર, ટર્ટલનેક, સ્ટિલેટો", options: ["કાર્ડિગન", "બ્લેઝર", "ટર્ટલનેક", "સ્ટિલેટો"], correctAnswer: "સ્ટિલેટો", explanation: "જૂતું, ઉપરનું કપડું નહીં"),
            ExerciseItem(id: UUID(), prompt: "થેમ્સ, નાઇલ, એમેઝોન, એવરેસ્ટ", options: ["થેમ્સ", "નાઇલ", "એમેઝોન", "એવરેસ્ટ"], correctAnswer: "એવરેસ્ટ", explanation: "પર્વત, નદી નહીં"),
            ExerciseItem(id: UUID(), prompt: "સ્મૃતિગ્રંથ, જીવનચરિત્ર, આત્મચરિત્ર, સૉનેટ", options: ["સ્મૃતિગ્રંથ", "જીવનચરિત્ર", "આત્મચરિત્ર", "સૉનેટ"], correctAnswer: "સૉનેટ", explanation: "કવિતા, જીવન કથા નહીં"),
            ExerciseItem(id: UUID(), prompt: "ઇન્સ્યુલિન, એડ્રિનાલિન, એસ્ટ્રોજન, ઇબુપ્રોફેન", options: ["ઇન્સ્યુલિન", "એડ્રિનાલિન", "એસ્ટ્રોજન", "ઇબુપ્રોફેન"], correctAnswer: "ઇબુપ્રોફેન", explanation: "બનાવટી દવા, કુદરતી હોર્મોન નહીં"),
            ExerciseItem(id: UUID(), prompt: "સેલ્સિયસ, ફૅરેનહૅઇટ, કેલ્વિન, ડેસિબલ", options: ["સેલ્સિયસ", "ફૅરેનહૅઇટ", "કેલ્વિન", "ડેસિબલ"], correctAnswer: "ડેસિબલ", explanation: "અવાજ માપે, તાપમાન નહીં"),
            ExerciseItem(id: UUID(), prompt: "જ્યૂરી, જજ, બૅઇલિફ, વાદી", options: ["જ્યૂરી", "જજ", "બૅઇલિફ", "વાદી"], correctAnswer: "વાદી", explanation: "કેસનો પક્ષ, અદાલત અધિકારી નહીં"),
            ExerciseItem(id: UUID(), prompt: "સૉનેટ, હાઇકૂ, લિમેરિક, ગદ્ય", options: ["સૉનેટ", "હાઇકૂ", "લિમેરિક", "ગદ્ય"], correctAnswer: "ગદ્ય", explanation: "કાવ્ય સ્વરૂપ નહીં"),
            ExerciseItem(id: UUID(), prompt: "સૉપ્રાનો, ઑલ્ટો, ટેનર, કન્ડક્ટર", options: ["સૉપ્રાનો", "ઑલ્ટો", "ટેનર", "કન્ડક્ટર"], correctAnswer: "કન્ડક્ટર", explanation: "ગાયન અવાજ નહીં"),
            ExerciseItem(id: UUID(), prompt: "ઇમ્પ્રેશનિઝ્મ, સરરિઍલિઝ્મ, ક્યૂબિઝ્મ, જૅઝ", options: ["ઇમ્પ્રેશનિઝ્મ", "સરરિઍલિઝ્મ", "ક્યૂબિઝ્મ", "જૅઝ"], correctAnswer: "જૅઝ", explanation: "સંગીત શૈલી, કળા આંદોલન નહીં"),
            ExerciseItem(id: UUID(), prompt: "સ્ટૉકહોમ, ઑસ્લો, હેલ્સિંકી, બ્રસેલ્સ", options: ["સ્ટૉકહોમ", "ઑસ્લો", "હેલ્સિંકી", "બ્રસેલ્સ"], correctAnswer: "બ્રસેલ્સ", explanation: "બેલ્જિયમ, સ્કૅન્ડિનેવિયન રાજધાની નહીં"),
            ExerciseItem(id: UUID(), prompt: "માણેક, નીલમ, પન્ના, ગ્રેનાઇટ", options: ["માણેક", "નીલમ", "પન્ના", "ગ્રેનાઇટ"], correctAnswer: "ગ્રેનાઇટ", explanation: "પથ્થર, રત્ન નહીં"),
            ExerciseItem(id: UUID(), prompt: "અૅપેન્ડિક્સ, પિત્તાશય, સ્વાદુપિંડ, જાંઘનો હાડકો", options: ["અૅપેન્ડિક્સ", "પિત્તાશય", "સ્વાદુપિંડ", "જાંઘનો હાડકો"], correctAnswer: "જાંઘનો હાડકો", explanation: "હાડકું, અવયવ નહીં"),
            ExerciseItem(id: UUID(), prompt: "ચેલો, વિઓલા, હાર્પ, ઓબો", options: ["ચેલો", "વિઓલા", "હાર્પ", "ઓબો"], correctAnswer: "ઓબો", explanation: "વાયુ વાદ્ય, તાર વાદ્ય નહીં"),
            ExerciseItem(id: UUID(), prompt: "ફ્રેસ્કો, મોઝૅઇક, લિથોગ્રાફ, સૉનેટ", options: ["ફ્રેસ્કો", "મોઝૅઇક", "લિથોગ્રાફ", "સૉનેટ"], correctAnswer: "સૉનેટ", explanation: "સંગીત, દૃશ્ય કળા નહીં"),
            ExerciseItem(id: UUID(), prompt: "દ્વીપસમૂહ, ફ્જૉર્ડ, ઉચ્ચપ્રદેશ, બોલી", options: ["દ્વીપસમૂહ", "ફ્જૉર્ડ", "ઉચ્ચપ્રદેશ", "બોલી"], correctAnswer: "બોલી", explanation: "ભાષા ભિન્નતા, ભૌગોળિક લક્ષણ નહીં"),
            ExerciseItem(id: UUID(), prompt: "મૅગ્નેશિયમ, કૅલ્શિયમ, પોટૅશિયમ, પૅટ્રૉલિયમ", options: ["મૅગ્નેશિયમ", "કૅલ્શિયમ", "પોટૅશિયમ", "પૅટ્રૉલિયમ"], correctAnswer: "પૅટ્રૉલિયમ", explanation: "અશ્મિ ઇંધણ, ખનિજ તત્ત્વ નહીં"),
            ExerciseItem(id: UUID(), prompt: "ફ્લૅમેન્કો, ટૅન્ગો, વૉલ્ટ્ઝ, ઓપેરા", options: ["ફ્લૅમેન્કો", "ટૅન્ગો", "વૉલ્ટ્ઝ", "ઓપેરા"], correctAnswer: "ઓપેરા", explanation: "સ્વર કળા, નૃત્ય નહીં"),
            ExerciseItem(id: UUID(), prompt: "ધમની, શિરા, કેશિકા, કંડરા", options: ["ધમની", "શિરા", "કેશિકા", "કંડરા"], correctAnswer: "કંડરા", explanation: "સ્નાયુ-હાડકું જોડે, રક્તવાહિની નહીં"),
            ExerciseItem(id: UUID(), prompt: "ટુન્ડ્રા, ટૅગા, સવાના, ડેલ્ટા", options: ["ટુન્ડ્રા", "ટૅગા", "સવાના", "ડેલ્ટા"], correctAnswer: "ડેલ્ટા", explanation: "નદીનું ભૂ-સ્વરૂપ, જૈવ-ક્ષેત્ર નહીં"),
            ExerciseItem(id: UUID(), prompt: "વાવાઝોડું, ચક્રવાત, ચોમાસું, ભૂકંપ", options: ["વાવાઝોડું", "ચક્રવાત", "ચોમાસું", "ભૂકંપ"], correctAnswer: "ભૂકંપ", explanation: "ભૂ-ધ્રુજારી, હવામાન નહીં"),
            ExerciseItem(id: UUID(), prompt: "કોમળ પેશી, અસ્થિબંધ, કંડરા, ચેતા-કોષ", options: ["કોમળ પેશી", "અસ્થિબંધ", "કંડરા", "ચેતા-કોષ"], correctAnswer: "ચેતા-કોષ", explanation: "ચેતા-કોષ, સંયોજક પેશી નહીં")
        ]
    )

    // MARK: - Exercise 3: Phrase Completion — Gujarati Proverbs
    // NOTE: Flagged for native Gujarati speaker review before publishing —
    // proverb completions and answer options need verification.
    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "કહેવત પૂરી કરો",
        instructions: "સાચો શબ્દ પસંદ કરીને કહેવત પૂરી કરો.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "ઊંટ ઉપર ___ ની ઘોડેસવારી.", options: ["ઊંટ", "ઘોડો", "ગધેડો", "ભેંસ"], correctAnswer: "ઊંટ"),
            ExerciseItem(id: UUID(), prompt: "ઘઉં સાથે ___ પણ દળાય.", options: ["ઘુણ", "ઉંદર", "કીડો", "માખી"], correctAnswer: "ઘુણ"),
            ExerciseItem(id: UUID(), prompt: "ખોદ્યો ડુંગર, નીકળ્યો ___.", options: ["ઉંદર", "સાપ", "કીડો", "ઉડ"], correctAnswer: "ઉંદર"),
            ExerciseItem(id: UUID(), prompt: "જ્યાં ચાહ ત્યાં ___.", options: ["રાહ", "ઘર", "ફળ", "સ્વાહ"], correctAnswer: "રાહ"),
            ExerciseItem(id: UUID(), prompt: "આગ ઠારવા ___ ન પડાય.", options: ["ઘી", "પાણી", "તેલ", "ઘૂળ"], correctAnswer: "ઘી"),
            ExerciseItem(id: UUID(), prompt: "___ ભઠ્ઠી ઠારે.", options: ["ખૂટ", "નીર", "ઘી", "ધૂળ"], correctAnswer: "ખૂટ"),
            ExerciseItem(id: UUID(), prompt: "કરે ___ ભરે ___.", options: ["તે…તે", "ઘી…ઘી", "ખૂટ…ખૂટ", "રાહ…રાહ"], correctAnswer: "તે…તે"),
            ExerciseItem(id: UUID(), prompt: "___ ત્યાં માણસ.", options: ["ઊગ", "ઘર", "ધન", "ઢોર"], correctAnswer: "ઊગ"),
            ExerciseItem(id: UUID(), prompt: "___ ને ત્યાં ચોર ન આવે.", options: ["ભગત", "ધૂળ", "ઘૂઘ", "ઉંદર"], correctAnswer: "ભગત"),
            ExerciseItem(id: UUID(), prompt: "___ ઉંદર કૂદે.", options: ["ભૂખ્યો", "ડરેલો", "ઘાયલ", "ઊઘ"], correctAnswer: "ભૂખ્યો"),
            ExerciseItem(id: UUID(), prompt: "___ ની ઈચ્છા ન હોય ત્યારે ઘોડો ઘણો.", options: ["ઘોડેસવારી", "ઘઉં", "ઘૂળ", "ઘૂઘ"], correctAnswer: "ઘોડેસવારી"),
            ExerciseItem(id: UUID(), prompt: "___ ભૂખ્યો, ગામ ભૂખ્યું.", options: ["રાજા", "ઘોડો", "ઢોર", "ઘૂઘ"], correctAnswer: "રાજા"),
            ExerciseItem(id: UUID(), prompt: "ઘઉં ઘઉં ___.", options: ["ઘઉં", "ઘૂળ", "ઘૂઘ", "ઘૂ"], correctAnswer: "ઘઉં"),
            ExerciseItem(id: UUID(), prompt: "માગ્યા ___ ન મળે.", options: ["ભાગ્ય", "ઘૂઘ", "ઘૂળ", "ઘઉં"], correctAnswer: "ભાગ્ય"),
            ExerciseItem(id: UUID(), prompt: "___ પથ્થર ન ખાય.", options: ["ભૂખ્યો", "ઘઉં", "ઘૂઘ", "ઘૂળ"], correctAnswer: "ભૂખ્યો"),
            ExerciseItem(id: UUID(), prompt: "ઝૂઝ્યા ___ ગ્યા.", options: ["વિના", "ઘૂઘ", "ઘૂળ", "ઘઉં"], correctAnswer: "વિના"),
            ExerciseItem(id: UUID(), prompt: "ઘરની ___ લૂણ લેવા જવી.", options: ["ગૃહિણી", "ઘૂઘ", "ઘૂળ", "ઘઉં"], correctAnswer: "ગૃહિણી"),
            ExerciseItem(id: UUID(), prompt: "ઝાઝા ___ ચીભડાં ઝાઝાં.", options: ["રખડ", "ઘૂઘ", "ઘૂળ", "ઘઉં"], correctAnswer: "રખડ"),
            ExerciseItem(id: UUID(), prompt: "___ વેરી, ઘઉં ભારી.", options: ["ઉઘાડ", "ઘૂઘ", "ઘૂળ", "ઘઉં"], correctAnswer: "ઉઘાડ"),
            ExerciseItem(id: UUID(), prompt: "આવ્યા ત્યારે ___ ને ગયા ત્યારે ગામ.", options: ["ઘર", "ઘૂઘ", "ઘૂળ", "ઘઉં"], correctAnswer: "ઘર")
        ]
    )

    // MARK: - Exercise 4: Synonyms — Easy
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "સમાનાર્થી — સરળ",
        instructions: "દિેલ શબ્દ સમાન અર્થ ધરાવતો શબ્દ પસંદ કરો.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ગુસ્સો", options: ["ખુશ", "ક્રોધિત", "શાંત", "ઉદાસ"], correctAnswer: "ક્રોધિત"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ઠંડું", options: ["ગરમ", "ઠરેલું", "હૂંફાળું", "તપ્ત"], correctAnswer: "ઠરેલું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: મોટું", options: ["નાનું", "વિશાળ", "પાતળું", "ટૂંકું"], correctAnswer: "વિશાળ"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: થાકેલું", options: ["સતર્ક", "જાગ્રત", "થાકી ગયેલું", "આરામમાં"], correctAnswer: "થાકી ગયેલું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ડરેલું", options: ["બહાદુર", "ભયભીત", "શાંત", "નીડર"], correctAnswer: "ભયભીત"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: દયાળુ", options: ["ક્રૂર", "કોમળ", "રૂક્ષ", "ખરાબ"], correctAnswer: "કોમળ"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ઝડપી", options: ["ધીમું", "ચપળ", "આળસુ", "સુસ્ત"], correctAnswer: "ચપળ"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ઘરડું", options: ["જુવાન", "પ્રાચીન", "નવું", "તાજું"], correctAnswer: "પ્રાચીન"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ગંદું", options: ["સ્વચ્છ", "મેલું", "ઉજળું", "સાફ"], correctAnswer: "મેલું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ચળકતું", options: ["ઝાંખું", "અંધારું", "ઝળહળતું", "ફિક્કું"], correctAnswer: "ઝળહળતું")
        ]
    )

    // MARK: - Exercise 5: Synonyms — Hard
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "સમાનાર્થી — કઠિન",
        instructions: "દિેલ શબ્દ સમાન અર્થ ધરાવતો શબ્દ પસંદ કરો.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ઉદાસ", options: ["આનંદી", "દુઃખી", "ઉત્સાહી", "સંતુષ્ટ"], correctAnswer: "દુઃખી"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: શાંત", options: ["ઘોંઘાટ", "બેચેન", "પ્રશાંત", "ઉન્મત"], correctAnswer: "પ્રશાંત"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: સાહસી", options: ["ડરપોક", "ભયભીત", "વીર", "કાયર"], correctAnswer: "વીર"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: અનોખું", options: ["સામાન્ય", "વિચિત્ર", "સરળ", "ટૂંકું"], correctAnswer: "વિચિત્ર"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: પ્રચૂર", options: ["દુર્લભ", "વિપુલ", "સીમિત", "ઓછું"], correctAnswer: "વિપુલ"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: નબળું", options: ["શક્તિશાળી", "બળવાન", "નિર્બળ", "મજબૂત"], correctAnswer: "નિર્બળ"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: સ્પષ્ટ", options: ["ઝાંખું", "ઝળહળ", "રંગીન", "ફિક્કું"], correctAnswer: "રંગીન"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: કરકસરિયું", options: ["ઉડાઉ", "કિફાયતી", "ઉદાર", "ખર્ચાળ"], correctAnswer: "કિફાયતી"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: વાક્પટુ", options: ["થોથવાટ", "સ્પષ્ટ વક્તા", "ચૂપ", "અણઘડ"], correctAnswer: "સ્પષ્ટ વક્તા"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: દૃઢ", options: ["નબળું", "હાર માનનારું", "અટલ", "લવચીક"], correctAnswer: "અટલ")
        ]
    )

    // MARK: - Exercise 6: Antonyms — Easy
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "વિરોધી શબ્દ — સરળ",
        instructions: "દિેલ શબ્દ વિરુદ્ધ અર્થ ધરાવતો શબ્દ પસંદ કરો.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ગરમ", options: ["હૂંફાળું", "ઠંડું", "સુહાવનું", "તપ્ત"], correctAnswer: "ઠંડું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ખુશ", options: ["આનંદી", "પ્રસન્ન", "દુઃખી", "સંતુષ્ટ"], correctAnswer: "દુઃખી"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: મોટું", options: ["વિશાળ", "ઊંચું", "નાનું", "લાંબું"], correctAnswer: "નાનું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ઝડપી", options: ["ચપળ", "ધીમું", "તત્પર", "ચુસ્ત"], correctAnswer: "ધીમું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: સ્વચ્છ", options: ["ઉજળું", "સાફ", "ગંદું", "તાજું"], correctAnswer: "ગંદું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: જાગ્રત", options: ["સતર્ક", "સજાગ", "ઊંઘેલું", "ચુસ્ત"], correctAnswer: "ઊંઘેલું"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ઘોંઘાટ", options: ["કોલાહલ", "શાંત", "ગૂંજ", "તીવ્ર"], correctAnswer: "શાંત"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ખુલ્લું", options: ["બંધ", "વિસ્તૃત", "સ્પષ્ટ", "મુક્ત"], correctAnswer: "બંધ"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: ભરેલું", options: ["ભરપૂર", "ખાલી", "ભારે", "લચી"], correctAnswer: "ખાલી"),
            ExerciseItem(id: UUID(), prompt: "શબ્દ: પ્રેમ", options: ["સ્નેહ", "ચાહત", "નફરત", "માયા"], correctAnswer: "નફરત")
        ]
    )

    // MARK: - Exercise 7: Sentence Completion — Easy
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "વાક્ય પૂરું કરો — સરળ",
        instructions: "વાક્ય પૂર્ણ કરવા માટે સાચો શબ્દ પસંદ કરો.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "એણે ___ ને પાણી પાયું.", options: ["છોડ", "ફ્લોર", "લોટ", "ઘઉં"], correctAnswer: "છોડ"),
            ExerciseItem(id: UUID(), prompt: "એણે પોતાનો ___ પહેર્યો.", options: ["કોટ", "નાવ", "બકરી", "ઘડો"], correctAnswer: "કોટ"),
            ExerciseItem(id: UUID(), prompt: "મને એક ગ્લાસ ___ જોઈએ.", options: ["પાણી", "વેઇટર", "છીછરો", "માટી"], correctAnswer: "પાણી"),
            ExerciseItem(id: UUID(), prompt: "એણે પોતાની ___ ને ફોન કર્યો.", options: ["માં", "ચિંતા", "ફીણ", "ઝાકળ"], correctAnswer: "માં"),
            ExerciseItem(id: UUID(), prompt: "કૂતરાએ પોતાની ___ હલાવી.", options: ["વાર્તા", "પૂંછડી", "ઊંચાઈ", "છત"], correctAnswer: "પૂંછડી"),
            ExerciseItem(id: UUID(), prompt: "એણે ___ બંધ કર્યો.", options: ["ઝઘડો", "બત્તી", "રાત", "ડુંગર"], correctAnswer: "બત્તી"),
            ExerciseItem(id: UUID(), prompt: "એણે એક ___ બનાવ્યો.", options: ["ખોટ", "તળાવ", "કેક", "પત્તો"], correctAnswer: "કેક"),
            ExerciseItem(id: UUID(), prompt: "પક્ષીએ ___ બનાવ્યો.", options: ["માળો", "આરામ", "પ્રયોગ", "બજાર"], correctAnswer: "માળો"),
            ExerciseItem(id: UUID(), prompt: "એણે ___ વાંચ્યું.", options: ["અખબાર", "ફ્રીપેપર", "કાચ", "કાંકરો"], correctAnswer: "અખબાર"),
            ExerciseItem(id: UUID(), prompt: "બાળકો ___ માં રમ્યાં.", options: ["ઉદ્યાન", "છાલ", "અંધારું", "પથ્થર"], correctAnswer: "ઉદ્યાન"),
            ExerciseItem(id: UUID(), prompt: "એણે ___ ઠીક કર્યો.", options: ["નળ", "કડી", "પોપચું", "વાદળ"], correctAnswer: "નળ"),
            ExerciseItem(id: UUID(), prompt: "સૂપ ખૂબ ___ હતું.", options: ["ગરમ", "ઘણું", "ટપકું", "ગોળ"], correctAnswer: "ગરમ"),
            ExerciseItem(id: UUID(), prompt: "એણે પોતાની ___ ખોલી.", options: ["છત્રી", "વેનીલા", "ગોરિલ્લા", "ટેકરી"], correctAnswer: "છત્રી"),
            ExerciseItem(id: UUID(), prompt: "એણે ___ ચૂકવ્યું.", options: ["બિલ", "ભરણ", "ઘંટ", "પથ્થર"], correctAnswer: "બિલ"),
            ExerciseItem(id: UUID(), prompt: "બિલાડી ___ ઉપર બેઠી.", options: ["ગાલીચો", "ચામાચિડિયું", "ઉંદર", "વાદળ"], correctAnswer: "ગાલીચો"),
            ExerciseItem(id: UUID(), prompt: "એણે ગરમ ___ પહેર્યો.", options: ["સ્વેટર", "માખી મારનાર", "વેરવિખેર", "પથ્થર"], correctAnswer: "સ્વેટર"),
            ExerciseItem(id: UUID(), prompt: "એણે ___ ઉગાડ્યો.", options: ["બગીચો", "માફી", "ચોકીદાર", "ડુંગર"], correctAnswer: "બગીચો"),
            ExerciseItem(id: UUID(), prompt: "એણે પોતાની ___ માં લખ્યું.", options: ["ડાયરી", "ડેરી", "ડેઝી", "દીવાલ"], correctAnswer: "ડાયરી"),
            ExerciseItem(id: UUID(), prompt: "બાળક ___ રહ્યું હતું.", options: ["સૂઈ", "વાળ", "ટપકણ", "ઊડ"], correctAnswer: "સૂઈ"),
            ExerciseItem(id: UUID(), prompt: "એણે ___ નું બિલ ચૂકવ્યું.", options: ["દુકાન", "ભરણ", "ઘંટ", "પથ્થર"], correctAnswer: "દુકાન")
        ]
    )

    // MARK: - Exercise 8: Morphology
    // NOTE: Flagged for native Gujarati speaker review before publishing —
    // grammatical gender agreements and verb forms need verification.
    private static let morphology = Exercise(
        id: UUID(),
        title: "શબ્દ સ્વરૂપ",
        instructions: "વાક્ય પૂર્ણ કરવા માટે સાચું સ્વરૂપ પસંદ કરો.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "બાળકો ઝડપથી ___.", options: ["દોડ", "દોડ્યા", "દોડવું", "દોડતા"], correctAnswer: "દોડ્યા"),
            ExerciseItem(id: UUID(), prompt: "એ વર્ગની સૌથી ___ વિદ્યાર્થિની છે.", options: ["હોશિયાર", "હોશિયારી", "હોશિયારતા", "હોશિયારન"], correctAnswer: "હોશિયાર"),
            ExerciseItem(id: UUID(), prompt: "એણે પોતાનો નિબંધ ___ છે.", options: ["લખવો", "ફરી લખવો", "અનલખવો", "પ્રીલખવો"], correctAnswer: "ફરી લખવો"),
            ExerciseItem(id: UUID(), prompt: "લાંબી ચાલ પછી એ ___ ગઈ.", options: ["થાકવું", "થાકી", "થાક", "થકાવ"], correctAnswer: "થાકી"),
            ExerciseItem(id: UUID(), prompt: "બારણું ___ હતું.", options: ["બંધ કરવું", "બંધ", "બંધ હોવું", "બંધિ"], correctAnswer: "બંધ"),
            ExerciseItem(id: UUID(), prompt: "એણે ખૂબ ___ વર્તન કર્યું.", options: ["બાળક", "બાળકવેડા", "બાળપણ", "બાળકીય"], correctAnswer: "બાળકવેડા"),
            ExerciseItem(id: UUID(), prompt: "એને બે ___ છે.", options: ["છોકરો", "છોકરા", "છોકરાઓ", "છોકરી"], correctAnswer: "છોકરા"),
            ExerciseItem(id: UUID(), prompt: "એણે અકસ્માત વિશે ___ વાત કરી.", options: ["સાવધ", "સાવધાનીથી", "સાવધાની", "સાવધ રીતે"], correctAnswer: "સાવધાનીથી"),
            ExerciseItem(id: UUID(), prompt: "કેક ___ હતો.", options: ["ઠંડો કરવો", "ઠંડો", "ઠંડો કરતા", "ઠંડક"], correctAnswer: "ઠંડો"),
            ExerciseItem(id: UUID(), prompt: "એ પોતાના ભાઈ કરતાં ___ છે.", options: ["ઊંચો", "ઊંચી", "ઊંચાઈ", "ઊંચા"], correctAnswer: "ઊંચી"),
            ExerciseItem(id: UUID(), prompt: "મેં ફરી મારી ચાવીઓ ___ દીધી.", options: ["ખોવી", "ખોઈ", "ખોતા", "ખોઈ ગઈ"], correctAnswer: "ખોઈ"),
            ExerciseItem(id: UUID(), prompt: "સૂચના ___ હતી.", options: ["સ્પષ્ટ", "સ્પષ્ટતાથી", "અસ્પષ્ટ", "સ્પષ્ટતા"], correctAnswer: "અસ્પષ્ટ"),
            ExerciseItem(id: UUID(), prompt: "એણે કાલે બારી ___.", options: ["તોડવી", "તોડી", "તૂટવું", "તોડતા"], correctAnswer: "તોડી"),
            ExerciseItem(id: UUID(), prompt: "એ ખૂબ ___ માણસ છે.", options: ["મદદ", "મદદગાર", "મદદ કરતા", "મદદગારી"], correctAnswer: "મદદગાર"),
            ExerciseItem(id: UUID(), prompt: "ફિલ્મ ___ હતી.", options: ["કંટાળો", "કંટાળાજનક", "કંટાળી ગઈ", "કંટાળો આવ્યો"], correctAnswer: "કંટાળાજનક"),
            ExerciseItem(id: UUID(), prompt: "એની ત્રણ ___ છે.", options: ["પત્ની", "પત્નીઓ", "પત્નિ", "પત્નિઓ"], correctAnswer: "પત્નીઓ"),
            ExerciseItem(id: UUID(), prompt: "એ ___ ગાય છે.", options: ["સુંદર", "સુંદરતાથી", "સુંદરતા", "સૌથી સુંદર"], correctAnswer: "સુંદરતાથી"),
            ExerciseItem(id: UUID(), prompt: "મારે ફ્રિઝ ___ છે.", options: ["ડીફ્રૉસ્ટ કરવો", "અનફ્રૉસ્ટ કરવો", "પ્રીફ્રૉસ્ટ કરવો", "ફ્રૉસ્ટ કરવો"], correctAnswer: "ડીફ્રૉસ્ટ કરવો"),
            ExerciseItem(id: UUID(), prompt: "પૅકેજ ___ આવ્યું.", options: ["નુકસાન", "નુકસાનો", "ક્ષતિગ્રસ્ત", "નુકસાનમાં"], correctAnswer: "ક્ષતિગ્રસ્ત"),
            ExerciseItem(id: UUID(), prompt: "મોનિકા હવામાન વિશે ___ હતી.", options: ["નાખુશ", "ખુશ", "ઉદાસ", "ચિંતિત"], correctAnswer: "નાખુશ")
        ]
    )

    // MARK: - Exercise 9: Analogies
    private static let analogies = Exercise(
        id: UUID(),
        title: "સામ્ય",
        instructions: "સાચો શબ્દ પસંદ કરો જે સામ્ય પૂરું કરે.",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "પાડો : ઘોડો :: ગલૂડિયું : ___", options: ["બિલાડી", "કૂતરો", "પક્ષી", "માછલી"], correctAnswer: "બિલાડી"),
            ExerciseItem(id: UUID(), prompt: "ઠંડ : શિયાળો :: ગરમી : ___", options: ["વસંત", "પાનખર", "ઉનાળો", "વરસાદ"], correctAnswer: "ઉનાળો"),
            ExerciseItem(id: UUID(), prompt: "આંખ : જોવું :: કાન : ___", options: ["સ્પર્શ", "સાંભળવું", "સૂંઘવું", "ચાખવું"], correctAnswer: "સાંભળવું"),
            ExerciseItem(id: UUID(), prompt: "રસોઈઓ : રસોડું :: ડૉક્ટર : ___", options: ["પુસ્તકાલય", "દવાખાનું", "શાળા", "દુકાન"], correctAnswer: "દવાખાનું"),
            ExerciseItem(id: UUID(), prompt: "મોજું : હાથ :: મોજું : ___", options: ["ભુજા", "ઘૂંટણ", "પગ", "માથું"], correctAnswer: "પગ"),
            ExerciseItem(id: UUID(), prompt: "ખુશ : હસવું :: દુઃખી : ___", options: ["સ્મિત", "ઊંઘવું", "રડવું", "દોડવું"], correctAnswer: "રડવું"),
            ExerciseItem(id: UUID(), prompt: "પક્ષી : માળો :: રીંછ : ___", options: ["ઝાડ", "ગુફા", "સમુદ્ર", "ખેતર"], correctAnswer: "ગુફા"),
            ExerciseItem(id: UUID(), prompt: "પેન્સિલ : લખવું :: બ્રશ : ___", options: ["કાપવું", "રંગવું", "વળાટ", "હલાવ"], correctAnswer: "રંગવું"),
            ExerciseItem(id: UUID(), prompt: "દિવસ : રાત :: કાળો : ___", options: ["અંધારો", "ધૂળ", "સફેદ", "વાદળી"], correctAnswer: "સફેદ"),
            ExerciseItem(id: UUID(), prompt: "સૈનિક : સેના :: ખલાસી : ___", options: ["હવાઈ દળ", "મરીન", "નૌસેના", "ગાર્ડ"], correctAnswer: "નૌસેના"),
            ExerciseItem(id: UUID(), prompt: "ચક્ર : કાર :: પાંખ : ___", options: ["વહાણ", "વિમાન", "ટ્રેન", "બસ"], correctAnswer: "વિમાન"),
            ExerciseItem(id: UUID(), prompt: "શિક્ષક : શાળા :: ન્યાયાધીશ : ___", options: ["ઑફિસ", "દવાખાનું", "અદાલત", "દુકાન"], correctAnswer: "અદાલત"),
            ExerciseItem(id: UUID(), prompt: "ઇયળ : પ્રજાપતિ :: ઢેડૂ : ___", options: ["માછલી", "કાચબો", "દેડકો", "સાપ"], correctAnswer: "દેડકો"),
            ExerciseItem(id: UUID(), prompt: "ખોરાક : ભૂખ :: પાણી : ___", options: ["ભીનું", "તરસ", "ઠંડું", "ભરેલું"], correctAnswer: "તરસ"),
            ExerciseItem(id: UUID(), prompt: "ઊન : ઘેટું :: રેશમ : ___", options: ["કરોળિયો", "રેશમ-કીડો", "કપાસ", "શણ"], correctAnswer: "રેશમ-કીડો")
        ]
    )

    // MARK: - Exercise 10: Fact or Opinion
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "હકીકત કે મત",
        instructions: "નક્કી કરો: આ કથન હકીકત છે કે મત?",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "એક અઠવાડિયામાં ૭ દિવસ હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "વૅનિલા સૌથી સારો આઇસ્ક્રીમ સ્વાદ છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "પાણી ૦ ડિગ્રી સેલ્સિયસ પર જામી જાય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "કૂતરા સૌથી સારા પાળેલા પ્રાણી છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "ત્રિકોણને ત્રણ બાજુ હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "એ ટીવી શો મઝેદાર છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "અબ્રાહમ લિંકન અમેરિકાના રાષ્ટ્રપ્રમુખ હતા.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "પૃથ્વી સૌથી સારો ગ્રહ છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "એક કલાકમાં ૬૦ મિનિટ હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "ટ્યૂલિપ ગુલાબ કરતાં વધુ સુંદર છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "વૉશિંગ્ટન ડી.સી. અમેરિકાની રાજધાની છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "મોઢું ભર્યા ખાવું ખરાબ ભણ છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "એક વર્ષમાં ૧૨ મહિના હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "સવારે વહેલા ઉઠવું સારું છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "૨ + ૨ = ૪ થાય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "સમુદ્રનું પાણી ખારું હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "બાગકામ એક સારો શોખ છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "સરખી સાઇઝના પીછા કરતાં પથ્થર ભારે હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "અમેરિકામાં ૫૦ રાજ્ય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "પિઝ્ઝા સૌથી સારો ખોરાક છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "કસરત સ્વાસ્થ્ય માટે ફાયદાકારક છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "શાસ્ત્રીય સંગીત કંટાળાજનક છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "સફરજન અને નારંગી બંને ફળ છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "બિલાડી કૂતરા કરતાં વધુ સહેલી છે.", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "એક દિવસમાં ૨૪ કલાક હોય છે.", options: ["Fact", "Opinion"], correctAnswer: "Fact")
        ]
    )

    // MARK: - Exercise 11: Sequencing Steps
    private static let sequencing = Exercise(
        id: UUID(),
        title: "ક્રમ ગોઠવો",
        instructions: "આ પગલાં ખોટા ક્રમમાં છે. સાચા ક્રમમાં ગોઠવો.",
        section: .language,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "રોટી બનાવવી",
                options: ["બેલણ વડે ગોળ વણો", "તવો ગરમ કરો", "એક બાજુ શેકો", "બીજી બાજુ ફેરવો", "લોટ બાંધો", "નાની લૂ બનાવો", "ઘી ચોળીને પીરસો"],
                correctAnswer: "લોટ બાંધો | નાની લૂ બનાવો | બેલણ વડે ગોળ વણો | તવો ગરમ કરો | એક બાજુ શેકો | બીજી બાજુ ફેરવો | ઘી ચોળીને પીરસો"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "હાથ ધોવા",
                options: ["પાણી ચાલુ કરો", "હાથ ભીના કરો", "સાબુ લગાવો", "૨૦ સેકન્ડ ઘસો", "સાબુ ધોઓ", "ટુવાલ વડે સૂકવો"],
                correctAnswer: "પાણી ચાલુ કરો | હાથ ભીના કરો | સાબુ લગાવો | ૨૦ સેકન્ડ ઘસો | સાબુ ધોઓ | ટુવાલ વડે સૂકવો"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ચા બનાવવી",
                options: ["ઉકળ્યા પછી ચા-ખાંડ નાખો", "પાણી ઉકાળો", "દૂધ નાખો", "ગળણીથી ગાળીને કપમાં ઢોળો", "આદુ-ઇલાયચી નાખો"],
                correctAnswer: "પાણી ઉકાળો | આદુ-ઇલાયચી નાખો | ઉકળ્યા પછી ચા-ખાંડ નાખો | દૂધ નાખો | ગળણીથી ગાળીને કપમાં ઢોળો"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ફોન કરવો",
                options: ["ફોન ઉઠાવો", "નંબર ડાયલ કરો", "નમસ્તે કહો", "વાત કરો", "ભલે/આવજો કહો", "ફોન મૂકો"],
                correctAnswer: "ફોન ઉઠાવો | નંબર ડાયલ કરો | નમસ્તે કહો | વાત કરો | ભલે/આવજો કહો | ફોન મૂકો"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "કપડાં પહેરવાં",
                options: ["જૂતાં પહેરો", "ચઢ્ઢી પહેરો", "કમીઝ પહેરો", "મોજાં પહેરો", "પૅન્ટ પહેરો"],
                correctAnswer: "ચઢ્ઢી પહેરો | કમીઝ પહેરો | પૅન્ટ પહેરો | મોજાં પહેરો | જૂતાં પહેરો"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ફર્શ વાળવો",
                options: ["કચરાપેટીમાં નાખો", "સાવરણી કાઢો", "ધૂળ-ભૂકો ભેગો કરો", "ઝૂડો વડે ઉઠાવો"],
                correctAnswer: "સાવરણી કાઢો | ધૂળ-ભૂકો ભેગો કરો | ઝૂડો વડે ઉઠાવો | કચરાપેટીમાં નાખો"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "રેસ્ટૉરન્ટમાં ઓર્ડર કરવો",
                options: ["ખાઓ", "ઑર્ડર આપો", "બેસો", "ખોરાકની રાહ જુઓ", "મેનૂ જુઓ"],
                correctAnswer: "બેસો | મેનૂ જુઓ | ઑર્ડર આપો | ખોરાકની રાહ જુઓ | ખાઓ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "બિસ્કિટ બનાવવા",
                options: ["ઠંડા થવા દો", "ઓવન ગરમ કરો", "ટ્રે પર ગોઠવો", "સામગ્રી ભેળવો", "બેક કરો"],
                correctAnswer: "ઓવન ગરમ કરો | સામગ્રી ભેળવો | ટ્રે પર ગોઠવો | બેક કરો | ઠંડા થવા દો"
            )
        ]
    )
}
