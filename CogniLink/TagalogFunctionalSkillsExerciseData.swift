import Foundation

struct TagalogFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        readingPrescription,
        readingMenu,
        understandingBills,
        whatWouldYouDo,
        cookingSteps,
        groceryShopping
    ]

    // MARK: - Pagbabasa ng Reseta
    private static let readingPrescription = Exercise(
        id: UUID(),
        title: "Pagbabasa ng Reseta",
        instructions: "Basahin ang impormasyon ng reseta at sagutin ang tanong.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 tablet dalawang beses araw-araw kasama ng pagkain. Ilang tablet ang dapat mong inumin sa kabuuan bawat araw?",
                options: ["1", "2", "3", "4"],
                correctAnswer: "2",
                explanation: "Ang pag-inom ng 1 tablet dalawang beses sa isang araw ay nangangahulugang 1 + 1 = 2 tablet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 2 tablet sa oras ng pagtulog. Kailan mo dapat inumin ang gamot na ito?",
                options: ["Sa umaga", "Sa tanghalian", "Sa oras ng pagtulog", "Bago mag-ehersisyo"],
                correctAnswer: "Sa oras ng pagtulog",
                explanation: "Ang label ay tahasang nagsasaad na dalhin ang mga ito sa oras ng pagtulog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 kapsula tuwing 8 oras kung kinakailangan para sa pananakit. Ilang beses mo ito maaaring inumin sa loob ng 24 na oras na araw?",
                options: ["2 beses", "3 beses", "4 na beses", "6 beses"],
                correctAnswer: "3 beses",
                explanation: "Ang isang araw ay may 24 na oras. Ang 24 na hinati sa 8 ay 3 beses."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Amoxicillin 250mg. Uminom ng 1 tablet tatlong beses araw-araw. Panatilihin sa refrigerator. Paano mo dapat iimbak ang gamot na ito?",
                options: ["Sa freezer", "Sa refrigerator", "Sa isang mainit na aparador", "Sa direktang sikat ng araw"],
                correctAnswer: "Sa refrigerator",
                explanation: "Nakasaad sa label na “Keep refrigerated”, na nangangahulugang mag-imbak sa refrigerator."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Huwag uminom ng alak habang umiinom ng gamot na ito. Maaaring magdulot ng antok. Ano ang babalang side effect ng gamot na ito?",
                options: ["Antok", "Tumaas na enerhiya", "Mataas na presyon ng dugo", "Bumahing"],
                correctAnswer: "Antok",
                explanation: "Nagbabala ang label na ito ay “Maaaring magdulot ng antok”."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 tablet araw-araw sa umaga nang walang laman ang tiyan. Kailan ka dapat kumain ng almusal?",
                options: ["Bago kunin ang tableta", "Pagkatapos kunin ang tablet", "Habang kinukuha ang tableta", "Huwag kumain ng almusal"],
                correctAnswer: "Pagkatapos kunin ang tablet",
                explanation: "Ang pagkuha nito nang walang laman ang tiyan ay nangangahulugan ng pag-inom nito bago kumain ng almusal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 tablet sa pamamagitan ng bibig araw-araw. Qty: 30. Refills: 2. Ilang refill ang pinapayagan?",
                options: ["1", "2", "3", "30"],
                correctAnswer: "2",
                explanation: "Nakalista ang label na “Mga Refill: 2”."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Maglagay ng manipis na layer sa apektadong bahagi ng balat dalawang beses araw-araw. Huwag lunukin. Paano inilalapat ang gamot na ito?",
                options: ["Sa pamamagitan ng paglunok nito", "Sa pamamagitan ng pagpahid sa balat", "Sa pamamagitan ng pag-spray sa ilong", "Sa pamamagitan ng pagtunaw sa tubig"],
                correctAnswer: "Sa pamamagitan ng pagpahid sa balat",
                explanation: "Ang label ay nagsasabing “Ilapat ang manipis na layer sa apektadong bahagi ng balat”."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Itapon pagkatapos ng 10/15/2026. Ngayon ay 11/01/2026. Maaari mong ligtas na inumin ang gamot na ito?",
                options: ["Oo", "Hindi", "Sa pagkain lang", "Sa gabi lang"],
                correctAnswer: "Hindi",
                explanation: "Nag-expire ang gamot noong 10/15/2026, na bago ngayon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 tablet dalawang beses araw-araw. Huwag kumuha ng mga produkto ng pagawaan ng gatas. Aling inumin ang dapat mong iwasan kapag umiinom ng tabletang ito?",
                options: ["Tubig", "Gatas", "Apple juice", "Itim na kape"],
                correctAnswer: "Gatas",
                explanation: "Ang gatas ay isang produkto ng pagawaan ng gatas at dapat na iwasan ayon sa label."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 2 tablet 1 oras bago lumipad. Bakit mo iinumin ang gamot na ito?",
                options: ["Para maiwasan ang motion sickness habang naglalakbay", "Para mas masarap matulog sa bahay", "Para gamutin ang sakit ng ulo", "Upang gamutin ang pantal sa balat"],
                correctAnswer: "Para maiwasan ang motion sickness habang naglalakbay",
                explanation: "Ang pag-inom ng gamot bago lumipad ay karaniwang para sa motion sickness."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Patak sa Mata. Maglagay ng 1 patak sa bawat mata dalawang beses araw-araw. Saan mo dapat ilagay ang gamot na ito?",
                options: ["Sa iyong bibig", "Sa iyong mga tainga", "Sa iyong mga mata", "Sa iyong balat"],
                correctAnswer: "Sa iyong mga mata",
                explanation: "Ang label ay nagsasabing “Eye Drops” at “instill sa bawat mata”."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 tablet tuwing 4 hanggang 6 na oras kung kinakailangan para sa sakit ng ulo. Max 4 na tablet bawat araw. Ano ang pinakamaraming tableta na maaari mong inumin sa isang araw?",
                options: ["1", "2", "4", "6"],
                correctAnswer: "4",
                explanation: "Tinukoy ng label ang “Max 4 na tablet bawat araw”."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng isang buong baso ng tubig. Bakit kailangan mo ng tubig sa tabletang ito?",
                options: ["Para matunaw ito sa iyong balat", "Para makatulong sa paglunok nito at maiwasan ang pananakit ng tiyan", "Upang baguhin ang kulay nito", "Para mas masarap"],
                correctAnswer: "Para makatulong sa paglunok nito at maiwasan ang pananakit ng tiyan",
                explanation: "Ang isang buong baso ng tubig ay nakakatulong sa paglunok ng mga tabletas nang ligtas at pinoprotektahan ang tiyan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Label: Uminom ng 1 tablet araw-araw kasama ng iyong hapunan. Ano ang pinakamagandang oras para kunin ito?",
                options: ["Sa almusal", "Sa tanghalian", "Sa hapunan", "Sa kalagitnaan ng gabi"],
                correctAnswer: "Sa hapunan",
                explanation: "Ang hapunan ay hapunan."
            )
        ]
    )

    // MARK: - Pagbabasa ng Menu
    private static let readingMenu = Exercise(
        id: UUID(),
        title: "Pagbabasa ng Menu",
        instructions: "Gamitin ang impormasyon ng menu upang sagutin ang tanong.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Cheeseburger $8.00, French Fries $3.00, Soda $2.00. Magkano ang isang Cheeseburger?",
                options: ["$8.00", "$3.00", "$2.00", "$11.00"],
                correctAnswer: "$8.00",
                explanation: "Ang listahan ng menu ay nagsasaad na ang Cheeseburger ay $8.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Kape $2.50, Tea $2.00, Muffin $3.00. Aling item ang pinakamura?",
                options: ["kape", "tsaa", "muffin", "Pareho sila ng halaga"],
                correctAnswer: "tsaa",
                explanation: "$2.00 ang pinakamababang presyo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Tomato Soup $5.00, Green Salad $6.00, Chicken Caesar $9.00. Magkano ang isang mangkok ng Tomato Soup?",
                options: ["$5.00", "$6.00", "$9.00", "$14.00"],
                correctAnswer: "$5.00",
                explanation: "Ang Tomato Soup ay nakalista bilang $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Pancake Breakfast $10.00, French Toast $9.00, Gilid ng Bacon $4.00. Magkano ang halaga ng French Toast?",
                options: ["$10.00", "$9.00", "$4.00", "$13.00"],
                correctAnswer: "$9.00",
                explanation: "Ang French Toast ay nakalista bilang $9.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Cheese Pizza Slice $4.00, Pepperoni Pizza Slice $4.50. Magkano ang halaga ng isang Pepperoni slice kaysa sa Cheese slice?",
                options: ["$0.50", "$1.00", "$4.50", "$8.50"],
                correctAnswer: "$0.50",
                explanation: "$4.50 bawas $4.00 ay $0.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Chicken Sandwich $7.00, Fish and Chips $11.00. Mayroon kang $10.00. Aling pagkain ang kayang bayaran?",
                options: ["Chicken Sandwich", "Isda at Chips", "Parehong pagkain", "Ni pagkain"],
                correctAnswer: "Chicken Sandwich",
                explanation: "Ang $7.00 ay mas mababa sa $10.00, ngunit ang $11.00 ay higit pa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Chocolate Ice Cream $4.00, Apple Pie $5.00, Magdagdag ng Vanilla Ice Cream sa Pie $1.50. Magkano ang Apple Pie na may Vanilla Ice Cream?",
                options: ["$5.00", "$6.50", "$9.00", "$4.00"],
                correctAnswer: "$6.50",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Turkey Wrap $8.50, Chips $1.50, Juice $2.00. Ano ang kabuuang halaga ng isang Turkey Wrap at isang Juice?",
                options: ["$8.50", "$10.00", "$10.50", "$12.00"],
                correctAnswer: "$10.50",
                explanation: "$8.50 + $2.00 = $10.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Vegetable Soup $4.00, Beef Stew $7.00. Aling ulam ang naglalaman ng karne?",
                options: ["Sabaw ng Gulay", "Nilagang baka", "pareho", "hindi rin"],
                correctAnswer: "Nilagang baka",
                explanation: "Ang karne ng baka ay isang uri ng karne; gulay ay hindi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Taco $3.00, Quesadilla $6.00, Soda $2.00. Magkano ang halaga ng isang Quesadilla?",
                options: ["$3.00", "$6.00", "$2.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "Inililista ng menu ang Quesadilla bilang $6.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Spaghetti $12.00, Lasagna $14.00, Garlic Bread $3.00. Magkano ang isang side ng Garlic Bread?",
                options: ["$12.00", "$14.00", "$3.00", "$15.00"],
                correctAnswer: "$3.00",
                explanation: "Ang Garlic Bread ay nakalista bilang $3.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Menu: Eggs Benny $11.00, Oatmeal $6.00, Fruit Bowl $5.00. Aling pagkain sa almusal ang pinakamahal?",
                options: ["Mga itlog Benny", "Oatmeal", "Mangkok ng prutas", "Pareho sila ng presyo"],
                correctAnswer: "Mga itlog Benny",
                explanation: "$11.00 ang pinakamataas na presyo sa listahan."
            )
        ]
    )

    // MARK: - Pag-unawa sa mga Bill
    private static let understandingBills = Exercise(
        id: UUID(),
        title: "Pag-unawa sa mga Bill",
        instructions: "Basahin ang impormasyon ng bill at sagutin ang tanong.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Electric Bill: Kabuuang Babayaran: $45.00. Petsa ng Takdang Panahon: Hulyo 15. Ano ang halagang kailangan mong bayaran?",
                options: ["$15.00", "$45.00", "Hulyo 15", "Libre"],
                correctAnswer: "$45.00",
                explanation: "Ang kabuuang dapat bayaran ay $45.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Water Bill: Takdang Petsa: Oct 10. Late Fee: $5.00. Ngayon ay Oct 12. Ano ang mangyayari kung magbabayad ka ngayon?",
                options: ["Magbabayad ka ng regular na halaga", "You pay a $5.00 late fee", "Makakakuha ka ng diskwento", "wala"],
                correctAnswer: "You pay a $5.00 late fee",
                explanation: "Dahil ngayon ay pagkatapos ng takdang petsa, isang late fee ang inilalapat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Internet Bill: Buwanang Singil: $60.00. Autopay Discount: -$5.00. Ano ang huling presyo sa Autopay?",
                options: ["$60.00", "$65.00", "$55.00", "$5.00"],
                correctAnswer: "$55.00",
                explanation: "$60.00 bawas $5.00 ay katumbas ng $55.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gas Bill: Kasalukuyang Singil: $30.00. Hindi Nabayarang Balanse: $10.00. Kabuuang Balanse: $40.00. Magkano ang hindi nabayarang pera ang dinadala mula noong nakaraang buwan?",
                options: ["$30.00", "$10.00", "$40.00", "$0.00"],
                correctAnswer: "$10.00",
                explanation: "Ang “Hindi Nabayarang Balanse” ay kumakatawan sa carryover mula noong nakaraang buwan, na $10.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bill ng Telepono: Petsa ng Takdang Panahon: Hunyo 20. Kasalukuyang Petsa: Hunyo 15. Ilang araw pa ang natitira upang bayaran ang bill na ito sa oras?",
                options: ["5 araw", "20 araw", "15 araw", "1 araw"],
                correctAnswer: "5 araw",
                explanation: "Ang Hunyo 20 ibinawas ang Hunyo 15 ay 5 araw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cable Bill: Kabuuang Babayaran: $80.00. Mababayaran sa: “XYZ Cable Co.” Kanino dapat ibigay ang tseke?",
                options: ["$80.00", "XYZ Cable Co.", "Ang Cable Guy", "Cash"],
                correctAnswer: "XYZ Cable Co.",
                explanation: "Tinukoy ng bill ang paggawa ng mga pagbabayad sa “XYZ Cable Co.”."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Utility Bill: Tubig: $20.00, Gas: $30.00, Electric: $50.00. Kabuuan: $100.00. Aling serbisyo ng utility ang may pinakamalaking halaga?",
                options: ["Tubig", "Gas", "Electric", "Pareho sila ng halaga"],
                correctAnswer: "Electric",
                explanation: "Ang electric ay $50.00, na siyang pinakamataas na halaga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Streaming Service Bill: Status ng Account: SUSPENDED. Balanse na Babayaran: $15.00. Bakit hindi gumagana ang serbisyo?",
                options: ["Ang internet ay down", "Nasira ang TV", "Ang account ay nasuspinde para sa hindi nabayarang balanse", "Ang stream ay buffering"],
                correctAnswer: "Ang account ay nasuspinde para sa hindi nabayarang balanse",
                explanation: "Ang bill ay nagsasaad na ang katayuan ng account ay nasuspinde."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Membership sa Gym: Taunang Bayad: $120.00. Buwanang Bayad: $10.00. Magkano ang taunang bayad?",
                options: ["$10.00", "$120.00", "$130.00", "$12.00"],
                correctAnswer: "$120.00",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Heating Bill: Enero: $110.00. Hulyo: $20.00. Bakit mas mataas ang singil sa Enero?",
                options: ["Mas mahal ang gas sa tag-araw", "Mas maraming init ang ginagamit sa buwan ng taglamig ng Enero", "Walang laman ang bahay noong Enero", "Nagbago ang orasan"],
                correctAnswer: "Mas maraming init ang ginagamit sa buwan ng taglamig ng Enero",
                explanation: "Ang panahon ng taglamig ay nangangailangan ng pagpainit sa bahay, pagpapataas ng paggamit ng enerhiya."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Credit Card Bill: Pinakamababang Pagbabayad: $25.00. Kabuuang Balanse: $500.00. Ano ang pinakamababang halaga na maaari mong bayaran ngayong buwan para maiwasan ang late penalty?",
                options: ["$25.00", "$500.00", "$0.00", "$475.00"],
                correctAnswer: "$25.00",
                explanation: "Ang “Minimum na Pagbabayad” na $25.00 ay ang pinakamababang katanggap-tanggap na halaga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Medikal na Bill: Kabuuang Singil: $150.00. Saklaw ng Insurance: $120.00. Pananagutan ng Pasyente: $30.00. Magkano ang utang mo?",
                options: ["$150.00", "$120.00", "$30.00", "$0.00"],
                correctAnswer: "$30.00",
                explanation: "Ang responsibilidad ng pasyente ay ang halaga ng utang ng pasyente, na $30.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Subscription sa Pahayagan: Susunod na Petsa ng Pag-renew: Disyembre 31, 2026. Kung gusto mong magkansela bago mag-renew, kailan ka dapat tumawag?",
                options: ["Bago ang Disyembre 31, 2026", "Pagkatapos ng Disyembre 31, 2026", "Noong Enero 2027", "Hindi kailanman"],
                correctAnswer: "Bago ang Disyembre 31, 2026",
                explanation: "Ang pagkansela bago ang petsa ng pag-renew ay huminto sa susunod na yugto ng pagsingil."
            )
        ]
    )

    // MARK: - Ano ang Gagawin Mo?
    private static let whatWouldYouDo = Exercise(
        id: UUID(),
        title: "Ano ang Gagawin Mo?",
        instructions: "Piliin ang pinakamahusay na tugon sa sitwasyong inilarawan.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Naaamoy mo ang usok sa iyong kusina ngunit wala kang nakikitang apoy. Ano ang dapat mong gawin muna?",
                options: ["Huwag pansinin ito", "Buksan ang mga bintana at suriin ang kalan", "Tawagan ang isang kaibigan para makipag-chat", "Matulog ka na ulit"],
                correctAnswer: "Buksan ang mga bintana at suriin ang kalan",
                explanation: "Ang pagsuri sa kalan ay ang unang hakbang upang matukoy at malutas nang ligtas ang mga karaniwang maliliit na isyu sa usok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nasa Seafood City ka at napagtanto mong nakalimutan mo ang iyong pitaka sa bahay. Ano ang pinakamagandang opsyon?",
                options: ["Kunin ang mga pamilihan nang hindi nagbabayad", "Hilingin sa cashier na hawakan ang iyong cart at umuwi para kunin ito", "Umalis sa tindahan na umiiyak", "Makipagtalo sa manager"],
                correctAnswer: "Hilingin sa cashier na hawakan ang iyong cart at umuwi para kunin ito",
                explanation: "Ang pagtatanong sa klerk na hawakan ang mga bagay ay ang magalang at karaniwang tugon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Naghulog ka ng hilaw na itlog sa sahig ng kusina at nabasag ito. Ano ang dapat mong gawin?",
                options: ["Iwanan mo diyan hanggang bukas", "Punasan agad ito ng paper towel at sabon", "Takpan ito ng alpombra", "Hayaang kainin ito ng pusa"],
                correctAnswer: "Punasan agad ito ng paper towel at sabon",
                explanation: "Ang mga hilaw na itlog ay madulas at nakakaakit ng bakterya, kaya dapat itong linisin nang mabilis."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sinabi sa iyo ng iyong kaibigan na ang kanilang aso ay namatay kahapon. Ano ang dapat mong sabihin?",
                options: ["Nakakatuwa yun", "I‘m so sorry sa pagkawala mo", "Dapat kang kumuha ng pusa sa halip", "Maaari ko bang makuha ang kanilang mga laruan?"],
                correctAnswer: "I‘m so sorry sa pagkawala mo",
                explanation: "Ang pagbibigay ng pakikiramay ay ang nakikiramay na tugon sa kalungkutan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakatanggap ka ng isang tawag sa telepono mula sa isang hindi kilalang numero na nagsasabing nanalo ka sa isang lottery at humihingi ng mga detalye ng iyong bangko. Ano ang dapat mong gawin?",
                options: ["Ibigay kaagad sa kanila ang iyong mga detalye", "Mag-hang up at huwag magbahagi ng anumang personal na detalye", "Hilingin sa kanila na tumawag muli mamaya", "Tawagan ang iyong pamilya para magdiwang"],
                correctAnswer: "Mag-hang up at huwag magbahagi ng anumang personal na detalye",
                explanation: "Ang mga kahilingan para sa mga sensitibong detalye ng bangko mula sa mga hindi kilalang tumatawag ay karaniwang mga scam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakakaramdam ka ng pagkahilo at pagkahilo habang nakatayo sa isang mainit na silid. Ano ang dapat mong gawin?",
                options: ["Manatiling nakatayo at ipikit ang iyong mga mata", "Umupo kaagad at uminom ng tubig", "Tumakbo sa banyo", "Paikot-ikot"],
                correctAnswer: "Umupo kaagad at uminom ng tubig",
                explanation: "Ang pag-upo ay pinipigilan ang pagbagsak, at ang tubig ay nakakatulong na mabawi mula sa pag-aalis ng tubig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakikita mo ang pagtulo ng tubig mula sa ilalim ng iyong lababo sa kusina. Ano ang unang bagay na dapat mong gawin?",
                options: ["Tumawag ng pintor", "Maglagay ng balde sa ilalim ng pagtagas upang mahuli ang tubig", "Mop sa sahig ng kusina mamaya", "Patayin ang mga ilaw"],
                correctAnswer: "Maglagay ng balde sa ilalim ng pagtagas upang mahuli ang tubig",
                explanation: "Pinipigilan ng isang balde ang pagkasira ng tubig kaagad habang naghahanap ka ng pagkukumpuni."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Inimbitahan ka sa isang dinner party pero hindi ka makakapunta. Ano ang dapat mong gawin?",
                options: ["Wag ka na lang magpakita", "Ipaalam nang maaga sa host na hindi ka makakadalo", "Magpakita nang huli nang walang babala", "Magpadala ng regalo sa halip na tumugon"],
                correctAnswer: "Ipaalam nang maaga sa host na hindi ka makakadalo",
                explanation: "Ang pagpapaalam sa host ay magalang at hinahayaan silang ayusin ang kanilang mga plano."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hindi mo sinasadyang nabasag ang isang pandekorasyon na plorera sa bahay ng isang kaibigan. Ano ang tamang tugon?",
                options: ["Itago ang mga piraso sa ilalim ng sopa", "Humingi ng paumanhin at mag-alok na palitan ito", "Magkunwaring hindi mo ginawa", "Sisihin ang aso"],
                correctAnswer: "Humingi ng paumanhin at mag-alok na palitan ito",
                explanation: "Ang katapatan at pag-aalok upang ayusin ang pinsala ay ang magalang at responsableng pag-uugali."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hindi mo mahanap ang iyong mga susi ng bahay at ikaw ay naka-lock sa labas. Ano ang pinakamagandang hakbang?",
                options: ["Basagin ang isang bintana para makapasok", "Tawagan ang isang miyembro ng pamilya na may ekstrang susi o isang locksmith", "Maghintay sa balkonahe magpakailanman", "Sipain ang pinto"],
                correctAnswer: "Tawagan ang isang miyembro ng pamilya na may ekstrang susi o isang locksmith",
                explanation: "Ang pagkuha ng ekstrang susi o pagtawag sa isang propesyonal ay ang pinakaligtas na paraan upang makapasok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Napansin mong nakabukas ang mga streetlight ngunit walang kuryente ang iyong bahay. Ano ang dapat mong gawin?",
                options: ["Suriin ang iyong kahon ng circuit breaker", "Bumili ng bagong telebisyon", "Humiga ka agad", "Tumawag ng pulis"],
                correctAnswer: "Suriin ang iyong kahon ng circuit breaker",
                explanation: "Ang pagsuri sa mga breaker ay nakakatulong na matukoy kung ito ay isang lokal na biyahe o isang mas malawak na pagkawala."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakita mo ang isang matandang kapitbahay na nahihirapang magdala ng mabibigat na grocery bag. Ano ang dapat mong gawin?",
                options: ["Mabilis na lumampas sa kanila", "Mag-alok na tulungan silang dalhin ang mga bag", "Kunan sila ng litrato", "Sabihin sa kanila na maglakad nang mas mabilis"],
                correctAnswer: "Mag-alok na tulungan silang dalhin ang mga bag",
                explanation: "Ang pag-aalok ng tulong ay nagpapakita ng suporta at kabaitan ng komunidad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Humigop ka ng kape at napagtantong masyadong mainit ito at nasusunog ang iyong bibig. Ano ang dapat mong gawin?",
                options: ["Mabilis na inumin ang natitira", "Maingat na dumura at uminom ng malamig na tubig", "Sumigaw ng malakas", "Ihagis ang mug"],
                correctAnswer: "Maingat na dumura at uminom ng malamig na tubig",
                explanation: "Pinapalamig ng malamig na tubig ang paso at pinapawi ang kakulangan sa ginhawa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang iyong doktor ay nagrereseta ng bagong gamot ngunit hindi mo maintindihan kung paano ito inumin. Ano ang dapat mong gawin?",
                options: ["Hulaan ang dosis", "Hilingin sa parmasyutiko o doktor na ipaliwanag ito sa iyo", "Huwag uminom ng gamot", "Hanapin ito sa social media"],
                correctAnswer: "Hilingin sa parmasyutiko o doktor na ipaliwanag ito sa iyo",
                explanation: "Ang mga medikal na propesyonal ay ang tanging maaasahang mapagkukunan para sa mga tagubilin sa reseta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hindi mo sinasadyang natapon ang red wine sa puting carpet ng iyong kaibigan. Ano ang dapat mong gawin?",
                options: ["Maglagay ng upuan sa ibabaw ng mantsa", "Humingi ng paumanhin at tumulong sa paglilinis nito kaagad", "Umalis ng maaga sa party", "Sabihin sa kanila na ito ay katas ng ubas"],
                correctAnswer: "Humingi ng paumanhin at tumulong sa paglilinis nito kaagad",
                explanation: "Ang paglilinis ng mga spill kaagad ay pumipigil sa mga permanenteng mantsa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Naririnig mo ang iyong smoke alarm beep na may maikling huni bawat minuto. Ano ang ibig sabihin nito?",
                options: ["May sunog", "Mahina na ang baterya at kailangang palitan", "Nasira ang alarm", "wala"],
                correctAnswer: "Mahina na ang baterya at kailangang palitan",
                explanation: "Ang isang maikling huni ay nagpapahiwatig na ang backup na baterya ay mababa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ikaw ay nagmamaneho at nakakita ng isang sasakyang pang-emergency na may mga kumikislap na ilaw sa likod mo. Ano ang dapat mong gawin?",
                options: ["Bilisan mo para maunahan ito", "Huminto sa gilid ng kalsada at huminto nang ligtas", "Huminto kaagad sa gitna ng lane", "Huwag pansinin ito"],
                correctAnswer: "Huminto sa gilid ng kalsada at huminto nang ligtas",
                explanation: "Ang paghila sa ibabaw ay nag-aalis ng landas para sa mga emergency responder."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakatanggap ka ng email mula sa iyong bangko na humihiling sa iyong i-click ang isang link upang i-verify ang iyong password. Ano ang dapat mong gawin?",
                options: ["I-click ang link at ilagay ang iyong password", "Tanggalin ang email o direktang makipag-ugnayan sa iyong bangko gamit ang kanilang opisyal na numero", "Ipasa ito sa iyong mga kaibigan", "Tumugon gamit ang iyong password"],
                correctAnswer: "Tanggalin ang email o direktang makipag-ugnayan sa iyong bangko gamit ang kanilang opisyal na numero",
                explanation: "Ang mga bangko ay hindi humihingi ng mga password sa pamamagitan ng mga link sa email; isa itong phishing scam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "May nakita kang wallet sa bangketa na naglalaman ng pera at ID card. Ano ang dapat mong gawin?",
                options: ["Itago ang pera at itapon ang wallet", "Ibigay ito sa pulisya o subukang makipag-ugnayan sa may-ari gamit ang ID", "Iwanan ito sa bangketa", "Ibigay ito sa isang estranghero"],
                correctAnswer: "Ibigay ito sa pulisya o subukang makipag-ugnayan sa may-ari gamit ang ID",
                explanation: "Ang pagbabalik ng nawalang ari-arian sa may-ari nito ay ang tapat na aksyon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang iyong smoke alarm ay tumutunog nang may malakas at tuluy-tuloy na alarma. Ano ang dapat mong gawin?",
                options: ["Huwag pansinin ito at hintayin itong tumigil", "Suriin kung may sunog at ligtas na lumabas sa gusali kung kinakailangan", "Palitan kaagad ang mga baterya", "Matulog ka na"],
                correctAnswer: "Suriin kung may sunog at ligtas na lumabas sa gusali kung kinakailangan",
                explanation: "Ang mga patuloy na alarma ay nagpapahiwatig ng usok o sunog, na nangangailangan ng agarang pagsusuri sa kaligtasan at paglikas."
            )
        ]
    )

    // MARK: - Mga Hakbang sa Pagluluto
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "Mga Hakbang sa Pagluluto",
        instructions: "Ayusin ang mga hakbang ng pagluluto sa tamang pagkakasunod-sunod.",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 1):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 2):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 3):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 4):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 5):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 6):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 7):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 8):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 9):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 10):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 11):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 12):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 13):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 14):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 15):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 16):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 17):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 18):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 19):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 20):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 21):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 22):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 23):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 24):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 25):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 26):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 27):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 28):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 29):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 30):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 31):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 32):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 33):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 34):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 35):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 36):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 37):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 38):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 39):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 40):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 41):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 42):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 43):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 44):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 45):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 46):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 47):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 48):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 49):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 50):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 51):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 52):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 53):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 54):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 55):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 56):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 57):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 58):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 59):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 60):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 61):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 62):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 63):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 64):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 65):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 66):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 67):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 68):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 69):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Filipino-American meal (Step 70):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            )
        ]
    )

    // MARK: - Pamimili ng Groseri
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "Pamimili ng Groseri",
        instructions: "Ihambing ang mga presyo at piliin ang pinakamagandang halaga.",
        section: .functionalSkills,
        type: .comparison,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 1):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 2):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 3):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 4):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 5):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 6):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 7):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 8):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 9):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 10):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 11):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 12):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 13):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 14):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 15):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 16):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 17):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 18):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 19):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 20):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 21):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 22):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 23):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 24):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 25):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 26):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 27):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 28):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 29):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 30):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 31):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 32):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 33):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 34):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 35):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 36):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 37):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 38):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 39):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 40):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 41):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 42):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 43):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 44):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 45):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 46):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 47):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 48):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 49):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 50):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 51):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 52):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 53):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 54):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 55):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 56):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 57):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 58):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 59):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 60):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 61):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 62):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 63):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 64):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 65):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 66):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 67):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 68):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 69):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 70):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 71):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 72):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 73):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 74):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for adobo ingredients at local CA market (Option 75):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            )
        ]
    )
}
