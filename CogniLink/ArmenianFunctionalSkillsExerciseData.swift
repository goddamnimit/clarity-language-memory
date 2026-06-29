import Foundation

struct ArmenianFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        readingPrescription,
        readingMenu,
        understandingBills,
        whatWouldYouDo,
        cookingSteps,
        groceryShopping
    ]

    // MARK: - Դեղատոմս կարդալը
    private static let readingPrescription = Exercise(
        id: UUID(),
        title: "Դեղատոմս կարդալը",
        instructions: "Կարդացեք դեղատոմսի տեղեկատվությունը և պատասխանեք հարցին:",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Ընդունել 1 դեղահատ օրական երկու անգամ սննդի հետ միասին: Օրական քանի՞ հաբ պետք է ընդունել ընդհանուր առմամբ:",
                options: ["1", "2", "3", "4"],
                correctAnswer: "2",
                explanation: "Օրական երկու անգամ 1 դեղահատ ընդունելը նշանակում է 1 + 1 = 2 հաբ։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Ընդունեք 2 հաբ քնելուց առաջ: Ե՞րբ պետք է ընդունեք այս դեղը:",
                options: ["Առավոտյան", "Ճաշի հետ", "Քնելուց առաջ", "Մարզվելուց առաջ"],
                correctAnswer: "Քնելուց առաջ",
                explanation: "Պիտակի վրա հստակ նշված է՝ դրանք վերցնել քնելուց առաջ:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Խմեք 1 պարկուճ յուրաքանչյուր 8 ժամը մեկ, որքան անհրաժեշտ է ցավի համար: Քանի՞ անգամ կարող եք դա ընդունել 24 ժամվա ընթացքում:",
                options: ["2 անգամ", "3 անգամ", "4 անգամ", "6 անգամ"],
                correctAnswer: "3 անգամ",
                explanation: "Օրն ունի 24 ժամ։ 24-ը 8-ի բաժանված է 3 անգամ։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը ՝ ամոքսիցիլինի 250 մգ: Ընդունել 1 դեղահատ օրական երեք անգամ։ Պահել սառնարանում։ Ինչպե՞ս պահել այս դեղը:",
                options: ["Սառնարանում", "Սառնարանում", "Տաք պահարանում", "Ուղղակի արևի լույսի ներքո"],
                correctAnswer: "Սառնարանում",
                explanation: "Պիտակի վրա գրված է «Պահել սառնարանում», ինչը նշանակում է պահել սառնարանում:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Մի խմեք ալկոհոլ այս դեղամիջոցն ընդունելիս: Կարող է առաջացնել քնկոտություն: Ո՞րն է այս դեղամիջոցի նախազգուշացված կողմնակի ազդեցությունը:",
                options: ["Քնկոտություն", "Ավելացված էներգիա", "Արյան բարձր ճնշում", "Փռշտոց"],
                correctAnswer: "Քնկոտություն",
                explanation: "Պիտակը զգուշացնում է, որ այն «Կարող է քնկոտություն առաջացնել»։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Ընդունեք օրական 1 դեղահատ՝ առավոտյան դատարկ ստամոքսին: Ե՞րբ պետք է նախաճաշել:",
                options: ["Նախքան դեղահատ ընդունելը", "Պլանշետը վերցնելուց հետո", "Պլանշետը ընդունելու ժամանակ", "Մի՛ նախաճաշեք"],
                correctAnswer: "Պլանշետը վերցնելուց հետո",
                explanation: "Դատարկ ստամոքսին ընդունելը նշանակում է ընդունել նախաճաշից առաջ:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Խմեք 1 դեղահատ ամեն օր բերանից: Քանակ՝ 30. Լիցքավորում. 2. Քանի՞ լիցք է թույլատրվում:",
                options: ["1", "2", "3", "30"],
                correctAnswer: "2",
                explanation: "Պիտակի վրա նշված է «Լիցքավորումներ. 2»:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Օրական երկու անգամ բարակ շերտով քսեք մաշկի վնասված հատվածին: Մի կուլ տվեք. Ինչպե՞ս է կիրառվում այս դեղամիջոցը:",
                options: ["Այն կուլ տալով", "Մաշկի վրա քսելով", "Քթի մեջ ցողելով", "Ջրի մեջ լուծելով"],
                correctAnswer: "Մաշկի վրա քսելով",
                explanation: "Պիտակի վրա գրված է «Կիրառել բարակ շերտ մաշկի տուժած տարածքին»:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Վերացնել 15.10.2026-ից հետո: Այսօր 11/01/2026 է։ Կարո՞ղ եք ապահով ընդունել այս դեղը:",
                options: ["Այո՛", "Ոչ", "Միայն սնունդով", "Միայն գիշերը"],
                correctAnswer: "Ոչ",
                explanation: "Դեղամիջոցի ժամկետը լրացել է 15.10.2026թ., ինչը մինչ այսօր էր։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Ընդունել 1 դեղահատ օրական երկու անգամ: Մի ընդունեք կաթնամթերքի հետ։ Ո՞ր ըմպելիքից պետք է խուսափել այս հաբն ընդունելիս:",
                options: ["Ջուր", "Կաթ", "Խնձորի հյութ", "Սև սուրճ"],
                correctAnswer: "Կաթ",
                explanation: "Կաթը կաթնամթերք է և պետք է խուսափել պիտակի համաձայն:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Վերցրեք 2 հաբ թռիչքից 1 ժամ առաջ: Ինչո՞ւ կընդունեիք այս դեղը:",
                options: ["Ճանապարհորդության ընթացքում շարժման հիվանդությունը կանխելու համար", "Տանը ավելի լավ քնելու համար", "Գլխացավը բուժելու համար", "Մաշկի ցանը բուժելու համար"],
                correctAnswer: "Ճանապարհորդության ընթացքում շարժման հիվանդությունը կանխելու համար",
                explanation: "Թռիչքից առաջ դեղորայք ընդունելը սովորաբար շարժման հիվանդության դեպքում է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը` աչքի կաթիլներ. Յուրաքանչյուր աչքի մեջ օրական երկու անգամ կաթիլ 1 կաթիլ: Որտե՞ղ պետք է դնեք այս դեղը:",
                options: ["Ձեր բերանում", "Ձեր ականջներում", "Քո աչքերում", "Ձեր մաշկի վրա"],
                correctAnswer: "Քո աչքերում",
                explanation: "Պիտակի վրա գրված է «Աչքի կաթիլներ» և «յուրաքանչյուր աչքի մեջ սերմանել»:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Վերցրեք 1 դեղահատ յուրաքանչյուր 4-6 ժամը մեկ՝ ըստ անհրաժեշտության գլխացավի դեպքում: Առավելագույնը 4 հաբ օրական: Ո՞րն է ամենաշատ հաբերը, որ կարող եք ընդունել մեկ օրում:",
                options: ["1", "2", "4", "6"],
                correctAnswer: "4",
                explanation: "Պիտակի վրա նշվում է «Առավելագույնը 4 դեղահատ օրական»:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Վերցրեք մի բաժակ ջրով: Ինչի՞ն է պետք այս հաբով ջուրը:",
                options: ["Այն ձեր մաշկի վրա լուծարելու համար", "Այն կուլ տալու և ստամոքսի խանգարումը կանխելու համար", "Նրա գույնը փոխելու համար", "Ավելի լավ համտեսելու համար"],
                correctAnswer: "Այն կուլ տալու և ստամոքսի խանգարումը կանխելու համար",
                explanation: "Լի բաժակ ջուրն օգնում է անվտանգ կուլ տալ հաբերը և պաշտպանում է ստամոքսը:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Պիտակը. Ընդունեք օրական 1 դեղահատ երեկոյան ճաշի հետ միասին: Ո՞րն է սա ընդունելու լավագույն ժամանակը:",
                options: ["Նախաճաշին", "Ճաշի ժամանակ", "Ընթրիքի ժամանակ", "Կեսգիշերին"],
                correctAnswer: "Ընթրիքի ժամանակ",
                explanation: "Երեկոյան ճաշը ընթրիք է:"
            )
        ]
    )

    // MARK: - Մենյու կարդալը
    private static let readingMenu = Exercise(
        id: UUID(),
        title: "Մենյու կարդալը",
        instructions: "Հարցին պատասխանելու համար օգտագործեք ցանկի տեղեկատվությունը:",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ չիզբուրգեր $8.00, կարտոֆիլ ֆրի $3.00, սոդա $2.00։ Որքա՞ն արժե չիզբուրգերը:",
                options: ["$8.00", "$3.00", "$2.00", "$11.00"],
                correctAnswer: "$8.00",
                explanation: "Մենյուի ցանկում նշվում է, որ չիզբուրգերն արժե $8.00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ սուրճ $2,50, թեյ $2,00, կեքս $3,00։ Ո՞ր ապրանքն է ամենաէժանը:",
                options: ["Սուրճ", "Թեյ", "Կեքս", "Նրանք արժեն նույնը"],
                correctAnswer: "Թեյ",
                explanation: "$2,00 ամենացածր գինն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ լոլիկի ապուր $5,00, կանաչ աղցան $6,00, հավի կեսար $9,00։ Որքա՞ն արժե մեկ գավաթ լոլիկի ապուրը:",
                options: ["$5.00", "$6.00", "$9.00", "$14.00"],
                correctAnswer: "$5.00",
                explanation: "Տոմատի ապուրը նշված է որպես $5.00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ Նրբաբլիթ Նախաճաշ $10.00, Ֆրանսիական Տոստ $9.00, Բեկոնի կողմը $4.00: Որքա՞ն է արժե ֆրանսիական տոստը:",
                options: ["$10.00", "$9.00", "$4.00", "$13.00"],
                correctAnswer: "$9.00",
                explanation: "Ֆրանսիական կենացը նշված է որպես $9.00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ պանրով պիցցա կտոր $4,00, պեպպերոնի պիցցա կտոր $4,50: Որքա՞ն ավելի արժե Պեպերոնիի կտորը, քան պանրի կտորը:",
                options: ["$0.50", "$1.00", "$4.50", "$8.50"],
                correctAnswer: "$0.50",
                explanation: "$4,50 հանած $4,00-ը $0,50 է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ հավի սենդվիչ $7.00, ձուկ և չիփս $11.00: Դուք ունեք $10,00: Ո՞ր ճաշը կարող եք ձեզ թույլ տալ:",
                options: ["Հավի սենդվիչ", "Fish and Chips", "Երկուսն էլ սնունդ", "Ոչ կերակուր"],
                correctAnswer: "Հավի սենդվիչ",
                explanation: "$7,00-ը $10,00-ից պակաս է, բայց $11,00-ն ավելին է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ շոկոլադե պաղպաղակ $4,00, Apple Pie $5,00, Վանիլային պաղպաղակ ավելացնել կարկանդակին $1,50: Որքա՞ն արժե խնձորի կարկանդակը վանիլային պաղպաղակով:",
                options: ["$5.00", "$6.50", "$9.00", "$4.00"],
                correctAnswer: "$6.50",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ հնդկահավի փաթաթան $8,50, չիփս $1,50, հյութ $2,00։ Որքա՞ն արժե Թուրքիա փաթաթան և հյութը:",
                options: ["$8.50", "$10.00", "$10.50", "$12.00"],
                correctAnswer: "$10.50",
                explanation: "$8,50 + $2,00 = $10,50:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ բանջարեղենով ապուր $4.00, տավարի շոգեխաշած $7.00: Ո՞ր ուտեստն է պարունակում միս:",
                options: ["Բանջարեղենով ապուր", "Տավարի շոգեխաշել", "Երկուսն էլ", "Ոչ էլ"],
                correctAnswer: "Տավարի շոգեխաշել",
                explanation: "Տավարի միսը մսի տեսակ է; բանջարեղենը չկա:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ Taco $3.00, Quesadilla $6.00, Soda $2.00: Որքա՞ն է Quesadilla-ի արժեքը:",
                options: ["$3.00", "$6.00", "$2.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "Մենյուում նշված է Quesadilla-ն $6,00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ Սպագետի $12,00, Լազանյա $14,00, Սխտորով Հաց $3,00։ Որքա՞ն արժե սխտորով հացի մեկ կողմը:",
                options: ["$12.00", "$14.00", "$3.00", "$15.00"],
                correctAnswer: "$3.00",
                explanation: "Սխտորով հացը նշված է որպես $3.00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ճաշացանկ՝ ձու Բեննի $11,00, վարսակի ալյուր $6,00, Մրգատուփ $5,00։ Ո՞ր նախաճաշն է ամենաթանկը:",
                options: ["Ձու Բեննի", "Վարսակի ալյուր", "Մրգատուփ", "Նրանք նույն գինն են"],
                correctAnswer: "Ձու Բեննի",
                explanation: "$11.00-ը ցուցակի ամենաբարձր գինն է:"
            )
        ]
    )

    // MARK: - Հասկանալով օրինագծերը
    private static let understandingBills = Exercise(
        id: UUID(),
        title: "Հասկանալով օրինագծերը",
        instructions: "Կարդացեք օրինագծի տվյալները և պատասխանեք հարցին:",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Էլեկտրաէներգիայի հաշիվ. Ընդհանուր ժամկետանց՝ $45,00: Վերջնաժամկետ՝ հուլիսի 15: Որքա՞ն է այն գումարը, որը դուք պետք է վճարեք:",
                options: ["$15.00", "$45.00", "հուլիսի 15", "Անվճար"],
                correctAnswer: "$45.00",
                explanation: "Ընդհանուր վճարը կազմում է $45,00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ջրի հաշիվ. Վերջնաժամկետ՝ հոկտեմբերի 10: Ուշ վճար՝ $5.00: Այսօր հոկտեմբերի 12-ն է: Ի՞նչ կլինի, եթե վճարեք այսօր:",
                options: ["Դուք վճարում եք կանոնավոր գումար", "You pay a $5.00 late fee", "Դուք ստանում եք զեղչ", "Ոչինչ"],
                correctAnswer: "You pay a $5.00 late fee",
                explanation: "Քանի որ այսօր ժամկետից հետո է, կիրառվում է ուշ վճար։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ինտերնետ վճար. Ամսական վճար՝ $60,00: Ավտովճարի զեղչ՝ -5,00$: Ո՞րն է վերջնական գինը Autopay-ի հետ:",
                options: ["$60.00", "$65.00", "$55.00", "$5.00"],
                correctAnswer: "$55.00",
                explanation: "$60,00 հանած $5,00-ը հավասար է $55,00-ի:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Գազի հաշիվ. Ընթացիկ վճարներ՝ $30,00: Չվճարված մնացորդը՝ $10,00: Ընդհանուր մնացորդը՝ $40,00: Որքա՞ն չվճարված գումար է փոխանցվել նախորդ ամսվանից:",
                options: ["$30.00", "$10.00", "$40.00", "$0.00"],
                correctAnswer: "$10.00",
                explanation: "«Չվճարված մնացորդը» ներկայացնում է անցած ամսվա փոխանցումը, որը կազմում է $10,00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Հեռախոսային հաշիվ. Վերջնաժամկետ՝ հունիսի 20: Ընթացիկ ամսաթիվ՝ հունիսի 15: Քանի՞ օր է մնացել այս հաշիվը ժամանակին վճարելու համար:",
                options: ["5 օր", "20 օր", "15 օր", "1 օր"],
                correctAnswer: "5 օր",
                explanation: "Հունիսի 20-ը հանած հունիսի 15-ը 5 օր է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Մալուխի հաշիվ. Ընդհանուր ժամկետանց՝ $80,00: Վճարման ենթակա՝ «XYZ Cable Co. Ո՞ւմ պետք է տրվի ստուգումը:",
                options: ["$80.00", "XYZ Cable Co.", "The Cable Guy", "Կանխիկ"],
                correctAnswer: "XYZ Cable Co.",
                explanation: "Օրինագիծը սահմանում է վճարումներ կատարել «XYZ Cable Co.»-ին։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Կոմունալ վճար՝ Ջուր՝ 20,00$, Գազ՝ 30,00$, Էլեկտրաէներգիա՝ 50,00$: Ընդհանուր՝ $100.00: Ո՞ր կոմունալ ծառայությունն է ամենաթանկը:",
                options: ["Ջուր", "Գազ", "Էլեկտրական", "Նրանք արժեն նույնը"],
                correctAnswer: "Էլեկտրական",
                explanation: "Էլեկտրաէներգիան 50,00 դոլար է, որն ամենաբարձր գումարն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Հոսքային ծառայության հաշիվ. Հաշվի կարգավիճակը՝ ԿԱԴԵՑՎԱԾ: Մնացած մնացորդը՝ $15,00: Ինչու՞ ծառայությունը չի աշխատում:",
                options: ["Ինտերնետն անջատված է", "Հեռուստացույցը կոտրված է", "Հաշիվը կասեցված է չվճարված մնացորդի համար", "Հոսքը բուֆերային է"],
                correctAnswer: "Հաշիվը կասեցված է չվճարված մնացորդի համար",
                explanation: "Օրինագծում նշվում է, որ հաշվի կարգավիճակը կասեցված է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Մարզասրահի անդամություն. Տարեկան վճար՝ $120,00: Ամսական վճար՝ $10,00: Որքա՞ն է տարեկան վճարը:",
                options: ["$10.00", "$120.00", "$130.00", "$12.00"],
                correctAnswer: "$120.00",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ջեռուցման հաշիվ՝ հունվար՝ $110,00: Հուլիս՝ $20,00: Ինչո՞ւ է հունվարին օրինագիծն ավելի բարձր:",
                options: ["Ամռանը գազը թանկանում է", "Ավելի շատ ջերմություն է օգտագործվում ձմեռային հունվար ամսին", "հունվարին տունը դատարկ է", "Ժամացույցը փոխվեց"],
                correctAnswer: "Ավելի շատ ջերմություն է օգտագործվում ձմեռային հունվար ամսին",
                explanation: "Ձմեռային եղանակը պահանջում է տան ջեռուցում՝ բարձրացնելով էներգիայի օգտագործումը:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Վարկային քարտի հաշիվ՝ նվազագույն վճարում՝ 25,00 դոլար: Ընդհանուր մնացորդը՝ $500,00: Ո՞րն է նվազագույն գումարը, որը կարող եք վճարել այս ամիս ուշ տուգանքից խուսափելու համար:",
                options: ["$25.00", "$500.00", "$0.00", "$475.00"],
                correctAnswer: "$25.00",
                explanation: "25,00 ԱՄՆ դոլարի «Նվազագույն վճարումը» ամենացածր ընդունելի գումարն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Բժշկական հաշիվ. Ընդհանուր վճար՝ $150,00: Ապահովագրություն՝ $120,00: Հիվանդի պատասխանատվությունը՝ $30,00: Որքա՞ն ես պարտք:",
                options: ["$150.00", "$120.00", "$30.00", "$0.00"],
                correctAnswer: "$30.00",
                explanation: "Հիվանդի պատասխանատվությունը հիվանդի պարտքի գումարն է, որը կազմում է $30,00:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Թերթի բաժանորդագրություն. Հաջորդ թարմացման ամսաթիվը՝ 2026 թվականի դեկտեմբերի 31: Եթե ցանկանում եք չեղարկել մինչև թարմացումը, ե՞րբ պետք է զանգահարեք:",
                options: ["Մինչև 2026 թվականի դեկտեմբերի 31-ը", "2026 թվականի դեկտեմբերի 31-ից հետո", "2027 թվականի հունվարին", "Երբեք"],
                correctAnswer: "Մինչև 2026 թվականի դեկտեմբերի 31-ը",
                explanation: "Մինչև երկարաձգման ամսաթիվը չեղարկելը դադարեցնում է հաջորդ հաշվարկային ցիկլը:"
            )
        ]
    )

    // MARK: - Ի՞նչ կանեիք:
    private static let whatWouldYouDo = Exercise(
        id: UUID(),
        title: "Ի՞նչ կանեիք:",
        instructions: "Ընտրեք լավագույն արձագանքը նկարագրված իրավիճակին:",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք ձեր խոհանոցից ծխի հոտ եք գալիս, բայց կրակ չեք տեսնում: Ի՞նչ պետք է անեք առաջինը:",
                options: ["Անտեսեք այն", "Բացեք պատուհանները և ստուգեք վառարանը", "Զանգահարեք ընկերոջը զրուցելու համար", "Վերադարձեք քնելու"],
                correctAnswer: "Բացեք պատուհանները և ստուգեք վառարանը",
                explanation: "Վառարանի ստուգումը առաջին քայլն է ծխի սովորական աննշան խնդիրները անվտանգ բացահայտելու և լուծելու համար:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք գտնվում եք հայկական խանութում և հասկանում եք, որ մոռացել եք ձեր դրամապանակը տանը. Ո՞րն է լավագույն տարբերակը:",
                options: ["Վերցրեք մթերքները՝ առանց վճարելու", "Խնդրեք գանձապահին պահել ձեր սայլը և գնալ տուն՝ այն ստանալու համար", "Լաց եղիր խանութից", "Վիճեք մենեջերի հետ"],
                correctAnswer: "Խնդրեք գանձապահին պահել ձեր սայլը և գնալ տուն՝ այն ստանալու համար",
                explanation: "Գործավարին իրերը պահելու խնդրանքը քաղաքավարի և ստանդարտ պատասխան է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք հում ձուն գցում եք խոհանոցի հատակին, և այն կոտրվում է: Ի՞նչ պետք է անես:",
                options: ["Թողեք այնտեղ մինչև վաղը", "Անմիջապես սրբեք այն թղթե սրբիչով և օճառով", "Ծածկեք այն գորգով", "Թող կատուն ուտի այն"],
                correctAnswer: "Անմիջապես սրբեք այն թղթե սրբիչով և օճառով",
                explanation: "Հում ձվերը սայթաքուն են և գրավում են բակտերիաները, ուստի դրանք պետք է արագ մաքրվեն:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ձեր ընկերը պատմում է, որ իրենց շունը երեկ մահացել է: ի՞նչ պիտի ասես։",
                options: ["Դա ծիծաղելի է", "Ես շատ եմ ցավում ձեր կորստի համար", "Փոխարենը դուք պետք է կատու ստանաք", "Կարո՞ղ եմ նրանց խաղալիքները ունենալ:"],
                correctAnswer: "Ես շատ եմ ցավում ձեր կորստի համար",
                explanation: "Ցավակցություն հայտնելը վշտի կարեկցանքի արձագանքն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք հեռախոսազանգ եք ստանում անհայտ համարից, որում պնդվում է, որ շահել եք վիճակախաղ և պահանջում եք ձեր բանկային տվյալները: Ի՞նչ պետք է անես:",
                options: ["Անմիջապես նրանց տվեք ձեր տվյալները", "Անջատեք հեռախոսը և մի կիսվեք անձնական մանրամասներով", "Խնդրեք նրանց ավելի ուշ զանգահարել", "Զանգահարեք ձեր ընտանիքին տոնելու"],
                correctAnswer: "Անջատեք հեռախոսը և մի կիսվեք անձնական մանրամասներով",
                explanation: "Անհայտ զանգահարողների կողմից զգայուն բանկային մանրամասների հարցումները սովորական խարդախություններ են:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Տաք սենյակում կանգնելիս գլխապտույտ ու գլխապտույտ եք զգում: Ի՞նչ պետք է անես:",
                options: ["Շարունակեք կանգնել և փակել ձեր աչքերը", "Անմիջապես նստեք և մի քիչ ջուր խմեք", "Վազիր զուգարան", "Պտտեք շուրջը"],
                correctAnswer: "Անմիջապես նստեք և մի քիչ ջուր խմեք",
                explanation: "Նստելը կանխում է ընկնելը, իսկ ջուրն օգնում է վերականգնել ջրազրկումից հետո:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք տեսնում եք, որ ջուրը հոսում է ձեր խոհանոցի լվացարանի տակից: Ո՞րն է առաջին բանը, որ դուք պետք է անեք:",
                options: ["Զանգահարեք նկարիչ", "Տեղադրեք մի դույլ արտահոսքի տակ՝ ջուրը բռնելու համար", "Ավելի ուշ մաքրեք խոհանոցի հատակը", "Անջատեք լույսերը"],
                correctAnswer: "Տեղադրեք մի դույլ արտահոսքի տակ՝ ջուրը բռնելու համար",
                explanation: "Դույլը անմիջապես դադարեցնում է ջրի վնասը, երբ դուք վերանորոգում եք:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք հրավիրված եք ընթրիքի, բայց չեք կարող գնալ: Ի՞նչ պետք է անես:",
                options: ["Պարզապես չներկայանալ", "Նախապես տեղեկացրեք հաղորդավարին, որ չեք կարող մասնակցել", "Ցույց տվեք ուշ՝ առանց նախազգուշացման", "Պատասխանելու փոխարեն նվեր ուղարկեք"],
                correctAnswer: "Նախապես տեղեկացրեք հաղորդավարին, որ չեք կարող մասնակցել",
                explanation: "Հաղորդավարին նախօրոք տեղեկացնելը քաղաքավարի է և թույլ է տալիս նրանց հարմարեցնել իրենց ծրագրերը:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք պատահաբար կոտրել եք դեկորատիվ ծաղկամանը ընկերոջ տանը: Ո՞րն է ճիշտ արձագանքը:",
                options: ["Թաքցնել կտորները բազմոցի տակ", "Ներողություն խնդրեք և առաջարկեք փոխարինել այն", "Ձևացրու, որ չես արել", "Մեղադրեք շանը"],
                correctAnswer: "Ներողություն խնդրեք և առաջարկեք փոխարինել այն",
                explanation: "Ազնվությունն ու վնասը շտկելու առաջարկը քաղաքավարի և պատասխանատու պահվածքն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք չեք կարող գտնել ձեր տան բանալիները և փակված եք դրսում: Ո՞րն է լավագույն քայլը:",
                options: ["Պատուհանը կոտրեք՝ ներս մտնելու համար", "Զանգահարեք ընտանիքի անդամին պահեստային բանալիով կամ փականագործով", "Սպասեք շքամուտքում ընդմիշտ", "Քացով դռանը"],
                correctAnswer: "Զանգահարեք ընտանիքի անդամին պահեստային բանալիով կամ փականագործով",
                explanation: "Պահեստային բանալին ստանալը կամ մասնագետին զանգահարելը մուտք գործելու ամենաանվտանգ միջոցն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք նկատում եք, որ փողոցի լույսերը միացված են, բայց ձեր տունը էլեկտրականություն չունի: Ի՞նչ պետք է անես:",
                options: ["Ստուգեք ձեր անջատիչի տուփը", "Գնել նոր հեռուստացույց", "Անմիջապես գնացեք քնելու", "Զանգահարեք ոստիկանություն"],
                correctAnswer: "Ստուգեք ձեր անջատիչի տուփը",
                explanation: "Անջատիչների ստուգումն օգնում է որոշել՝ դա տեղական ճանապարհորդություն է, թե ավելի լայն խափանում:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք տեսնում եք մի տարեց հարևանի, որը պայքարում է մթերային ծանր պայուսակներ կրելու համար: Ի՞նչ պետք է անես:",
                options: ["Արագ անցեք նրանց կողքով", "Առաջարկեք օգնել նրանց տանել պայուսակները", "Լուսանկարեք նրանց", "Ասա նրանց, որ ավելի արագ քայլեն"],
                correctAnswer: "Առաջարկեք օգնել նրանց տանել պայուսակները",
                explanation: "Օգնության առաջարկը ցույց է տալիս համայնքի աջակցությունն ու բարությունը:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք մի կում սուրճ եք խմում և հասկանում, որ այն շատ տաք է և այրում է ձեր բերանը: Ի՞նչ պետք է անես:",
                options: ["Մնացածը արագ խմեք", "Զգուշորեն թքեք այն և խմեք սառը ջուր", "Բարձր գոռալ", "Նետեք գավաթը"],
                correctAnswer: "Զգուշորեն թքեք այն և խմեք սառը ջուր",
                explanation: "Սառը ջուրը սառեցնում է այրվածքը և թեթևացնում անհարմարությունը։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ձեր բժիշկը նոր դեղամիջոց է նշանակում, բայց դուք չեք հասկանում, թե ինչպես ընդունել այն: Ի՞նչ պետք է անես:",
                options: ["Գուշակիր դեղաքանակը", "Խնդրեք դեղագործին կամ բժշկին բացատրել դա ձեզ", "Մի ընդունեք դեղը", "Որոնեք այն սոցիալական ցանցերում"],
                correctAnswer: "Խնդրեք դեղագործին կամ բժշկին բացատրել դա ձեզ",
                explanation: "Բժշկական մասնագետները դեղատոմսով ցուցումների միակ հուսալի աղբյուրն են:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք պատահաբար կարմիր գինի եք թափում ձեր ընկերոջ սպիտակ գորգի վրա: Ի՞նչ պետք է անես:",
                options: ["Աթոռ դրեք բիծի վրա", "Ներողություն խնդրեք և օգնեք անմիջապես մաքրել այն", "Վաղ թողեք երեկույթը", "Ասա նրանց, որ դա խաղողի հյութ էր"],
                correctAnswer: "Ներողություն խնդրեք և օգնեք անմիջապես մաքրել այն",
                explanation: "Անմիջապես մաքրելով արտահոսքը, կանխում է մշտական բծերը:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք ամեն րոպե լսում եք ձեր ծխի ազդանշանի ձայնը կարճ ծլվլոցով: Ի՞նչ է սա նշանակում։",
                options: ["Հրդեհ է", "Մարտկոցը քիչ է և պետք է փոխարինվի", "Ահազանգը խափանված է", "Ոչինչ"],
                correctAnswer: "Մարտկոցը քիչ է և պետք է փոխարինվի",
                explanation: "Միայնակ կարճ ձայները ցույց են տալիս, որ պահեստային մարտկոցը սպառված է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք մեքենա եք վարում և տեսնում եք շտապօգնության մեքենա՝ ձեր հետևում թարթող լույսերով: Ի՞նչ պետք է անես:",
                options: ["Արագացրե՛ք՝ դրանից առաջ մնալու համար", "Քաշեք դեպի ճանապարհի եզրը և ապահով կանգ առեք", "Անմիջապես կանգ առեք գծի մեջտեղում", "Անտեսեք այն"],
                correctAnswer: "Քաշեք դեպի ճանապարհի եզրը և ապահով կանգ առեք",
                explanation: "Քաշվելը ճանապարհ է բացում շտապօգնության աշխատակիցների համար:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Դուք նամակ եք ստանում ձեր բանկից՝ խնդրելով սեղմել հղումը՝ ձեր գաղտնաբառը հաստատելու համար: Ի՞նչ պետք է անես:",
                options: ["Սեղմեք հղումը և մուտքագրեք ձեր գաղտնաբառը", "Ջնջեք էլփոստը կամ անմիջապես կապվեք ձեր բանկի հետ՝ օգտագործելով նրա պաշտոնական համարը", "Փոխանցեք այն ձեր ընկերներին", "Պատասխանեք ձեր գաղտնաբառով"],
                correctAnswer: "Ջնջեք էլփոստը կամ անմիջապես կապվեք ձեր բանկի հետ՝ օգտագործելով նրա պաշտոնական համարը",
                explanation: "Բանկերը գաղտնաբառեր չեն խնդրում էլփոստի հղումներով. սա ֆիշինգի խաբեություն է:"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Մայթին գտնում ես դրամապանակ, որի մեջ կա գումար և նույնականացման քարտ։ Ի՞նչ պետք է անես:",
                options: ["Պահեք փողը և դեն նետեք դրամապանակը", "Տվեք այն ոստիկանություն կամ փորձեք կապվել սեփականատիրոջ հետ՝ օգտագործելով ID-ն", "Թողեք այն մայթին", "Տվեք այն անծանոթին"],
                correctAnswer: "Տվեք այն ոստիկանություն կամ փորձեք կապվել սեփականատիրոջ հետ՝ օգտագործելով ID-ն",
                explanation: "Կորցրած գույքը տիրոջը վերադարձնելը ազնիվ գործողություն է։"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ձեր ծխի ազդանշանը միանում է բարձր, շարունակական ահազանգով: Ի՞նչ պետք է անես:",
                options: ["Անտեսեք այն և սպասեք, որ այն դադարի", "Ստուգեք հրդեհի առկայությունը և անհրաժեշտության դեպքում ապահով դուրս եկեք շենքից", "Անմիջապես փոխեք մարտկոցները", "Գնա քնելու"],
                correctAnswer: "Ստուգեք հրդեհի առկայությունը և անհրաժեշտության դեպքում ապահով դուրս եկեք շենքից",
                explanation: "Շարունակական ահազանգերը ազդանշան են տալիս ծխի կամ հրդեհի մասին, որոնք պահանջում են անհապաղ անվտանգության ստուգումներ և տարհանում:"
            )
        ]
    )

    // MARK: - Պատրաստման Քայլեր
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "Պատրաստման Քայլեր",
        instructions: "Դասավորեք պատրաստման քայլերը ճիշտ հաջորդականությամբ:",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 1):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 2):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 3):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 4):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 5):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 6):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 7):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 8):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 9):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 10):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 11):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 12):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 13):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 14):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 15):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 16):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 17):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 18):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 19):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 20):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 21):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 22):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 23):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 24):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 25):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 26):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 27):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 28):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 29):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 30):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 31):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 32):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 33):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 34):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 35):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 36):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 37):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 38):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 39):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 40):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 41):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 42):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 43):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 44):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 45):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 46):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 47):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 48):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 49):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 50):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 51):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 52):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 53):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 54):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 55):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 56):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 57):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 58):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 59):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 60):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 61):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 62):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 63):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 64):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 65):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 66):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 67):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 68):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 69):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Armenian-American meal (Step 70):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            )
        ]
    )

    // MARK: - Գնումներ կատարելը
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "Գնումներ կատարելը",
        instructions: "Համեմատեք գները և ընտրեք լավագույն արժեքով տարբերակը:",
        section: .functionalSkills,
        type: .comparison,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 1):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 2):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 3):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 4):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 5):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 6):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 7):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 8):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 9):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 10):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 11):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 12):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 13):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 14):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 15):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 16):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 17):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 18):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 19):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 20):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 21):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 22):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 23):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 24):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 25):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 26):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 27):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 28):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 29):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 30):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 31):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 32):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 33):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 34):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 35):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 36):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 37):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 38):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 39):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 40):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 41):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 42):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 43):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 44):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 45):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 46):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 47):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 48):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 49):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 50):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 51):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 52):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 53):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 54):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 55):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 56):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 57):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 58):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 59):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 60):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 61):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 62):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 63):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 64):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 65):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 66):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 67):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 68):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 69):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 70):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 71):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 72):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 73):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 74):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for lavash ingredients at local CA market (Option 75):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            )
        ]
    )
}
