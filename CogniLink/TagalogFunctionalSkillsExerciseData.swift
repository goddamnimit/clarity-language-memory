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
        trackedType: nil,
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
        trackedType: nil,
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
                explanation: "Ang Apple Pie ay nagkakahalaga ng $5.00, at ang pagdaragdag ng Vanilla Ice Cream ay may dagdag na $1.50, kaya ang $5.00 kasama ang $1.50 ay katumbas ng $6.50."
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
        trackedType: nil,
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
                explanation: "Direktang nakasaad ang taunang bayad bilang $120.00; ang buwanang bayad na $10.00 ay tumutukoy sa ibang paraan ng pagbabayad at hindi bahagi ng pagkalkula para sa tanong na ito."
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
        trackedType: nil,
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
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng kanin",
                options: ["Sukatin ang tubig", "Isalang sa kalan", "Hintaying maluto", "Hugasan ang bigas"],
                correctAnswer: "Hugasan ang bigas | Sukatin ang tubig | Isalang sa kalan | Hintaying maluto",
                explanation: "Ang tamang pagkakasunod-sunod: hugasan ang bigas, sukatin ang tubig, isalang sa kalan, hintaying maluto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng adobong manok",
                options: ["Ilagay ang toyo at suka", "Pakuluan hanggang lumambot", "Hiwain ang manok", "Igisa ang bawang"],
                correctAnswer: "Hiwain ang manok | Igisa ang bawang | Ilagay ang toyo at suka | Pakuluan hanggang lumambot",
                explanation: "Ang tamang pagkakasunod-sunod: hiwain ang manok, igisa ang bawang, ilagay ang toyo at suka, pakuluan hanggang lumambot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng sinigang na baboy",
                options: ["Timplahan bago ihain", "Pakuluan ang baboy", "Ilagay ang sampalok", "Idagdag ang mga gulay"],
                correctAnswer: "Pakuluan ang baboy | Ilagay ang sampalok | Idagdag ang mga gulay | Timplahan bago ihain",
                explanation: "Ang tamang pagkakasunod-sunod: pakuluan ang baboy, ilagay ang sampalok, idagdag ang mga gulay, timplahan bago ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagprito ng itlog",
                options: ["Basagin ang itlog sa kawali", "Budburan ng asin", "Ilipat sa plato", "Magpainit ng mantika"],
                correctAnswer: "Magpainit ng mantika | Basagin ang itlog sa kawali | Budburan ng asin | Ilipat sa plato",
                explanation: "Ang tamang pagkakasunod-sunod: magpainit ng mantika, basagin ang itlog sa kawali, budburan ng asin, ilipat sa plato."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtimpla ng kape",
                options: ["Ibuhos ang mainit na tubig", "Haluin nang mabuti", "Magpakulo ng tubig", "Ilagay ang kape sa tasa"],
                correctAnswer: "Magpakulo ng tubig | Ilagay ang kape sa tasa | Ibuhos ang mainit na tubig | Haluin nang mabuti",
                explanation: "Ang tamang pagkakasunod-sunod: magpakulo ng tubig, ilagay ang kape sa tasa, ibuhos ang mainit na tubig, haluin nang mabuti."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng sandwich",
                options: ["Hatiin sa dalawa", "Kumuha ng dalawang hiwa ng tinapay", "Ilagay ang palaman", "Pagpatungin ang tinapay"],
                correctAnswer: "Kumuha ng dalawang hiwa ng tinapay | Ilagay ang palaman | Pagpatungin ang tinapay | Hatiin sa dalawa",
                explanation: "Ang tamang pagkakasunod-sunod: kumuha ng dalawang hiwa ng tinapay, ilagay ang palaman, pagpatungin ang tinapay, hatiin sa dalawa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paghuhugas ng pinggan",
                options: ["Sabunin ang mga pinggan", "Banlawan ng malinis na tubig", "Patuyuin sa lalagyan", "Alisin ang tirang pagkain"],
                correctAnswer: "Alisin ang tirang pagkain | Sabunin ang mga pinggan | Banlawan ng malinis na tubig | Patuyuin sa lalagyan",
                explanation: "Ang tamang pagkakasunod-sunod: alisin ang tirang pagkain, sabunin ang mga pinggan, banlawan ng malinis na tubig, patuyuin sa lalagyan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng pansit bihon",
                options: ["Ihalo ang bihon", "Timplahan ng toyo", "Ibabad ang bihon sa tubig", "Igisa ang gulay at karne"],
                correctAnswer: "Ibabad ang bihon sa tubig | Igisa ang gulay at karne | Ihalo ang bihon | Timplahan ng toyo",
                explanation: "Ang tamang pagkakasunod-sunod: ibabad ang bihon sa tubig, igisa ang gulay at karne, ihalo ang bihon, timplahan ng toyo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagpiprito ng lumpia",
                options: ["Patuluin ang mantika", "Magpainit ng mantika sa kawali", "Ilagay ang lumpia", "Baliktarin kapag ginintuan na"],
                correctAnswer: "Magpainit ng mantika sa kawali | Ilagay ang lumpia | Baliktarin kapag ginintuan na | Patuluin ang mantika",
                explanation: "Ang tamang pagkakasunod-sunod: magpainit ng mantika sa kawali, ilagay ang lumpia, baliktarin kapag ginintuan na, patuluin ang mantika."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng lumpia",
                options: ["Ilagay ang palaman sa balat", "Irolyo nang mahigpit", "Idikit ang dulo ng balat", "Ihanda ang palaman"],
                correctAnswer: "Ihanda ang palaman | Ilagay ang palaman sa balat | Irolyo nang mahigpit | Idikit ang dulo ng balat",
                explanation: "Ang tamang pagkakasunod-sunod: ihanda ang palaman, ilagay ang palaman sa balat, irolyo nang mahigpit, idikit ang dulo ng balat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng tinolang manok",
                options: ["Ibuhos ang tubig at pakuluan", "Idagdag ang papaya at dahon ng sili", "Igisa ang luya at sibuyas", "Ilagay ang manok"],
                correctAnswer: "Igisa ang luya at sibuyas | Ilagay ang manok | Ibuhos ang tubig at pakuluan | Idagdag ang papaya at dahon ng sili",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang luya at sibuyas, ilagay ang manok, ibuhos ang tubig at pakuluan, idagdag ang papaya at dahon ng sili."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng nilagang baka",
                options: ["Timplahan ng asin at paminta", "Pakuluan ang baka hanggang lumambot", "Ilagay ang patatas", "Idagdag ang repolyo"],
                correctAnswer: "Pakuluan ang baka hanggang lumambot | Ilagay ang patatas | Idagdag ang repolyo | Timplahan ng asin at paminta",
                explanation: "Ang tamang pagkakasunod-sunod: pakuluan ang baka hanggang lumambot, ilagay ang patatas, idagdag ang repolyo, timplahan ng asin at paminta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng arroz caldo",
                options: ["Ilagay ang bigas at manok", "Ibuhos ang tubig at haluin", "Lutuin hanggang lumapot", "Igisa ang luya at bawang"],
                correctAnswer: "Igisa ang luya at bawang | Ilagay ang bigas at manok | Ibuhos ang tubig at haluin | Lutuin hanggang lumapot",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang luya at bawang, ilagay ang bigas at manok, ibuhos ang tubig at haluin, lutuin hanggang lumapot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng champorado",
                options: ["Ihalo ang tsokolate", "Dagdagan ng asukal at gatas", "Magpakulo ng tubig", "Ilagay ang malagkit na bigas"],
                correctAnswer: "Magpakulo ng tubig | Ilagay ang malagkit na bigas | Ihalo ang tsokolate | Dagdagan ng asukal at gatas",
                explanation: "Ang tamang pagkakasunod-sunod: magpakulo ng tubig, ilagay ang malagkit na bigas, ihalo ang tsokolate, dagdagan ng asukal at gatas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng tortang talong",
                options: ["Iprito hanggang maluto", "Ihawin ang talong", "Balatan ang talong", "Isawsaw sa binating itlog"],
                correctAnswer: "Ihawin ang talong | Balatan ang talong | Isawsaw sa binating itlog | Iprito hanggang maluto",
                explanation: "Ang tamang pagkakasunod-sunod: ihawin ang talong, balatan ang talong, isawsaw sa binating itlog, iprito hanggang maluto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng ginisang monggo",
                options: ["Igisa ang bawang at sibuyas", "Ihalo ang monggo sa gisa", "Idagdag ang dahon ng ampalaya", "Pakuluan ang monggo hanggang lumambot"],
                correctAnswer: "Pakuluan ang monggo hanggang lumambot | Igisa ang bawang at sibuyas | Ihalo ang monggo sa gisa | Idagdag ang dahon ng ampalaya",
                explanation: "Ang tamang pagkakasunod-sunod: pakuluan ang monggo hanggang lumambot, igisa ang bawang at sibuyas, ihalo ang monggo sa gisa, idagdag ang dahon ng ampalaya."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng sinangag",
                options: ["Ilagay ang lamig na kanin", "Timplahan ng asin at haluin", "Magpainit ng mantika", "Igisa ang bawang"],
                correctAnswer: "Magpainit ng mantika | Igisa ang bawang | Ilagay ang lamig na kanin | Timplahan ng asin at haluin",
                explanation: "Ang tamang pagkakasunod-sunod: magpainit ng mantika, igisa ang bawang, ilagay ang lamig na kanin, timplahan ng asin at haluin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng mango shake",
                options: ["I-blend hanggang kuminis", "Balatan at hiwain ang mangga", "Ilagay sa blender kasama ang yelo", "Dagdagan ng gatas"],
                correctAnswer: "Balatan at hiwain ang mangga | Ilagay sa blender kasama ang yelo | Dagdagan ng gatas | I-blend hanggang kuminis",
                explanation: "Ang tamang pagkakasunod-sunod: balatan at hiwain ang mangga, ilagay sa blender kasama ang yelo, dagdagan ng gatas, i-blend hanggang kuminis."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtimpla ng calamansi juice",
                options: ["Salain ang katas", "Dagdagan ng tubig at asukal", "Haluin at lagyan ng yelo", "Pigain ang mga kalamansi"],
                correctAnswer: "Pigain ang mga kalamansi | Salain ang katas | Dagdagan ng tubig at asukal | Haluin at lagyan ng yelo",
                explanation: "Ang tamang pagkakasunod-sunod: pigain ang mga kalamansi, salain ang katas, dagdagan ng tubig at asukal, haluin at lagyan ng yelo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtimpla ng mainit na tsaa",
                options: ["Ibuhos ang mainit na tubig", "Hayaang lumasa bago inumin", "Magpakulo ng tubig", "Ilagay ang tsaa sa tasa"],
                correctAnswer: "Magpakulo ng tubig | Ilagay ang tsaa sa tasa | Ibuhos ang mainit na tubig | Hayaang lumasa bago inumin",
                explanation: "Ang tamang pagkakasunod-sunod: magpakulo ng tubig, ilagay ang tsaa sa tasa, ibuhos ang mainit na tubig, hayaang lumasa bago inumin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng oatmeal",
                options: ["Dagdagan ng saging o pulot", "Magpakulo ng tubig o gatas", "Ilagay ang oats", "Haluin hanggang lumapot"],
                correctAnswer: "Magpakulo ng tubig o gatas | Ilagay ang oats | Haluin hanggang lumapot | Dagdagan ng saging o pulot",
                explanation: "Ang tamang pagkakasunod-sunod: magpakulo ng tubig o gatas, ilagay ang oats, haluin hanggang lumapot, dagdagan ng saging o pulot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtusta ng tinapay",
                options: ["Hintayin itong tumalbog", "Pahiran ng mantikilya", "Ihain habang mainit", "Ilagay ang tinapay sa toaster"],
                correctAnswer: "Ilagay ang tinapay sa toaster | Hintayin itong tumalbog | Pahiran ng mantikilya | Ihain habang mainit",
                explanation: "Ang tamang pagkakasunod-sunod: ilagay ang tinapay sa toaster, hintayin itong tumalbog, pahiran ng mantikilya, ihain habang mainit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng ensalada",
                options: ["Ilagay sa malaking mangkok", "Lagyan ng dressing at haluin", "Hugasan ang mga gulay", "Hiwain nang maliliit"],
                correctAnswer: "Hugasan ang mga gulay | Hiwain nang maliliit | Ilagay sa malaking mangkok | Lagyan ng dressing at haluin",
                explanation: "Ang tamang pagkakasunod-sunod: hugasan ang mga gulay, hiwain nang maliliit, ilagay sa malaking mangkok, lagyan ng dressing at haluin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng bistek",
                options: ["Ibuhos ang sarsa at ipatong ang sibuyas", "Ibabad ang karne sa toyo at kalamansi", "Iprito ang sibuyas at itabi", "Iprito ang karne"],
                correctAnswer: "Ibabad ang karne sa toyo at kalamansi | Iprito ang sibuyas at itabi | Iprito ang karne | Ibuhos ang sarsa at ipatong ang sibuyas",
                explanation: "Ang tamang pagkakasunod-sunod: ibabad ang karne sa toyo at kalamansi, iprito ang sibuyas at itabi, iprito ang karne, ibuhos ang sarsa at ipatong ang sibuyas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng menudo",
                options: ["Ilagay ang baboy", "Idagdag ang sarsa ng kamatis", "Ilagay ang patatas at karot", "Igisa ang bawang at sibuyas"],
                correctAnswer: "Igisa ang bawang at sibuyas | Ilagay ang baboy | Idagdag ang sarsa ng kamatis | Ilagay ang patatas at karot",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang bawang at sibuyas, ilagay ang baboy, idagdag ang sarsa ng kamatis, ilagay ang patatas at karot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng kalderetang kambing",
                options: ["Ibuhos ang sarsa ng kamatis", "Idagdag ang patatas at paminton", "Ibabad ang karne", "Igisa at ilagay ang karne"],
                correctAnswer: "Ibabad ang karne | Igisa at ilagay ang karne | Ibuhos ang sarsa ng kamatis | Idagdag ang patatas at paminton",
                explanation: "Ang tamang pagkakasunod-sunod: ibabad ang karne, igisa at ilagay ang karne, ibuhos ang sarsa ng kamatis, idagdag ang patatas at paminton."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng halo-halo",
                options: ["Patungan ng leche flan at ube", "Ilagay ang mga matamis na sangkap sa baso", "Punuin ng kinaskas na yelo", "Buhusan ng gatas"],
                correctAnswer: "Ilagay ang mga matamis na sangkap sa baso | Punuin ng kinaskas na yelo | Buhusan ng gatas | Patungan ng leche flan at ube",
                explanation: "Ang tamang pagkakasunod-sunod: ilagay ang mga matamis na sangkap sa baso, punuin ng kinaskas na yelo, buhusan ng gatas, patungan ng leche flan at ube."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng leche flan",
                options: ["Batihin ang itlog at gatas", "Ibuhos ang timpla sa hulmahan", "Pasingawan hanggang mamuo", "Tunawin ang asukal sa hulmahan"],
                correctAnswer: "Tunawin ang asukal sa hulmahan | Batihin ang itlog at gatas | Ibuhos ang timpla sa hulmahan | Pasingawan hanggang mamuo",
                explanation: "Ang tamang pagkakasunod-sunod: tunawin ang asukal sa hulmahan, batihin ang itlog at gatas, ibuhos ang timpla sa hulmahan, pasingawan hanggang mamuo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng turon",
                options: ["Ibalot sa balat ng lumpia", "Iprito hanggang maging malutong", "Hiwain ang saging", "Igulong sa asukal"],
                correctAnswer: "Hiwain ang saging | Igulong sa asukal | Ibalot sa balat ng lumpia | Iprito hanggang maging malutong",
                explanation: "Ang tamang pagkakasunod-sunod: hiwain ang saging, igulong sa asukal, ibalot sa balat ng lumpia, iprito hanggang maging malutong."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng banana cue",
                options: ["Tuhugin sa patpat", "Magpainit ng mantika", "Iprito ang saging na saba", "Budburan ng asukal habang nagpiprito"],
                correctAnswer: "Magpainit ng mantika | Iprito ang saging na saba | Budburan ng asukal habang nagpiprito | Tuhugin sa patpat",
                explanation: "Ang tamang pagkakasunod-sunod: magpainit ng mantika, iprito ang saging na saba, budburan ng asukal habang nagpiprito, tuhugin sa patpat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng hotdog",
                options: ["Ilagay ang hotdog", "Hintaying maluto", "Patuluin at ihain", "Magpakulo ng tubig sa kawali"],
                correctAnswer: "Magpakulo ng tubig sa kawali | Ilagay ang hotdog | Hintaying maluto | Patuluin at ihain",
                explanation: "Ang tamang pagkakasunod-sunod: magpakulo ng tubig sa kawali, ilagay ang hotdog, hintaying maluto, patuluin at ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng tapa",
                options: ["Iprito ang tapa", "Ihain kasama ang sinangag at itlog", "Ibabad ang karne magdamag", "Magpainit ng mantika"],
                correctAnswer: "Ibabad ang karne magdamag | Magpainit ng mantika | Iprito ang tapa | Ihain kasama ang sinangag at itlog",
                explanation: "Ang tamang pagkakasunod-sunod: ibabad ang karne magdamag, magpainit ng mantika, iprito ang tapa, ihain kasama ang sinangag at itlog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng longganisa",
                options: ["Iprito sa sariling mantika", "Lagyan ng kaunting tubig ang kawali", "Ilagay ang longganisa", "Hintaying matuyo ang tubig"],
                correctAnswer: "Lagyan ng kaunting tubig ang kawali | Ilagay ang longganisa | Hintaying matuyo ang tubig | Iprito sa sariling mantika",
                explanation: "Ang tamang pagkakasunod-sunod: lagyan ng kaunting tubig ang kawali, ilagay ang longganisa, hintaying matuyo ang tubig, iprito sa sariling mantika."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagpiprito ng daing na bangus",
                options: ["Patuyuin ng tisyu", "Iprito nang nakadapa ang balat", "Baliktarin hanggang maluto", "Banlawan ang daing"],
                correctAnswer: "Banlawan ang daing | Patuyuin ng tisyu | Iprito nang nakadapa ang balat | Baliktarin hanggang maluto",
                explanation: "Ang tamang pagkakasunod-sunod: banlawan ang daing, patuyuin ng tisyu, iprito nang nakadapa ang balat, baliktarin hanggang maluto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng nilagang itlog",
                options: ["Ibabad sa malamig na tubig", "Balatan bago ihain", "Ilagay ang itlog sa kaldero ng tubig", "Pakuluan nang sampung minuto"],
                correctAnswer: "Ilagay ang itlog sa kaldero ng tubig | Pakuluan nang sampung minuto | Ibabad sa malamig na tubig | Balatan bago ihain",
                explanation: "Ang tamang pagkakasunod-sunod: ilagay ang itlog sa kaldero ng tubig, pakuluan nang sampung minuto, ibabad sa malamig na tubig, balatan bago ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng spaghetti",
                options: ["Ibuhos ang sarsa sa pasta at lagyan ng keso", "Pakuluan ang pasta", "Igisa ang giniling na karne", "Ihalo ang sarsa"],
                correctAnswer: "Pakuluan ang pasta | Igisa ang giniling na karne | Ihalo ang sarsa | Ibuhos ang sarsa sa pasta at lagyan ng keso",
                explanation: "Ang tamang pagkakasunod-sunod: pakuluan ang pasta, igisa ang giniling na karne, ihalo ang sarsa, ibuhos ang sarsa sa pasta at lagyan ng keso."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng ginisang corned beef",
                options: ["Ilagay ang patatas", "Ihalo ang corned beef", "Lutuin hanggang uminit", "Igisa ang bawang at sibuyas"],
                correctAnswer: "Igisa ang bawang at sibuyas | Ilagay ang patatas | Ihalo ang corned beef | Lutuin hanggang uminit",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang bawang at sibuyas, ilagay ang patatas, ihalo ang corned beef, lutuin hanggang uminit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng sopas",
                options: ["Ilagay ang macaroni", "Pakuluan hanggang lumambot", "Igisa ang gulay at manok", "Ibuhos ang tubig at gatas"],
                correctAnswer: "Igisa ang gulay at manok | Ibuhos ang tubig at gatas | Ilagay ang macaroni | Pakuluan hanggang lumambot",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang gulay at manok, ibuhos ang tubig at gatas, ilagay ang macaroni, pakuluan hanggang lumambot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng lugaw",
                options: ["Ihain nang mainit", "Pakuluan ang bigas sa maraming tubig", "Haluin paminsan-minsan", "Timplahan ng asin at luya"],
                correctAnswer: "Pakuluan ang bigas sa maraming tubig | Haluin paminsan-minsan | Timplahan ng asin at luya | Ihain nang mainit",
                explanation: "Ang tamang pagkakasunod-sunod: pakuluan ang bigas sa maraming tubig, haluin paminsan-minsan, timplahan ng asin at luya, ihain nang mainit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagpapasingaw ng puto",
                options: ["Ibuhos sa mga hulmahan", "Isalang sa pasingawan", "Hintaying mamuo at maluto", "Ihalo ang mga sangkap"],
                correctAnswer: "Ihalo ang mga sangkap | Ibuhos sa mga hulmahan | Isalang sa pasingawan | Hintaying mamuo at maluto",
                explanation: "Ang tamang pagkakasunod-sunod: ihalo ang mga sangkap, ibuhos sa mga hulmahan, isalang sa pasingawan, hintaying mamuo at maluto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng ginataang gulay",
                options: ["Ibuhos ang gata", "Pakuluan hanggang lumambot", "Igisa ang bawang at luya", "Ilagay ang kalabasa at sitaw"],
                correctAnswer: "Igisa ang bawang at luya | Ilagay ang kalabasa at sitaw | Ibuhos ang gata | Pakuluan hanggang lumambot",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang bawang at luya, ilagay ang kalabasa at sitaw, ibuhos ang gata, pakuluan hanggang lumambot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng ensaladang mangga",
                options: ["Lagyan ng bagoong", "Hiwain ang hilaw na mangga", "Hiwain ang kamatis at sibuyas", "Pagsamahin sa mangkok"],
                correctAnswer: "Hiwain ang hilaw na mangga | Hiwain ang kamatis at sibuyas | Pagsamahin sa mangkok | Lagyan ng bagoong",
                explanation: "Ang tamang pagkakasunod-sunod: hiwain ang hilaw na mangga, hiwain ang kamatis at sibuyas, pagsamahin sa mangkok, lagyan ng bagoong."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pag-iihaw ng liempo",
                options: ["Sindihan ang ihawan", "Ihawin at baliktarin paminsan-minsan", "Hiwain bago ihain", "Ibabad ang liempo sa timpla"],
                correctAnswer: "Ibabad ang liempo sa timpla | Sindihan ang ihawan | Ihawin at baliktarin paminsan-minsan | Hiwain bago ihain",
                explanation: "Ang tamang pagkakasunod-sunod: ibabad ang liempo sa timpla, sindihan ang ihawan, ihawin at baliktarin paminsan-minsan, hiwain bago ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng inihaw na isda",
                options: ["Ibalot sa dahon ng saging", "Ihawin sa baga", "Linisin ang isda", "Lagyan ng asin at kamatis ang loob"],
                correctAnswer: "Linisin ang isda | Lagyan ng asin at kamatis ang loob | Ibalot sa dahon ng saging | Ihawin sa baga",
                explanation: "Ang tamang pagkakasunod-sunod: linisin ang isda, lagyan ng asin at kamatis ang loob, ibalot sa dahon ng saging, ihawin sa baga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paghahanda ng almusal",
                options: ["Ihain ang lahat sa mesa", "Magtimpla ng kape", "Magprito ng itlog at tapa", "Ihanda ang sinangag"],
                correctAnswer: "Magtimpla ng kape | Magprito ng itlog at tapa | Ihanda ang sinangag | Ihain ang lahat sa mesa",
                explanation: "Ang tamang pagkakasunod-sunod: magtimpla ng kape, magprito ng itlog at tapa, ihanda ang sinangag, ihain ang lahat sa mesa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paghahanda ng baon",
                options: ["Hayaang lumamig nang kaunti", "Ilagay sa baunan", "Isara nang mahigpit ang takip", "Magluto ng kanin at ulam"],
                correctAnswer: "Magluto ng kanin at ulam | Hayaang lumamig nang kaunti | Ilagay sa baunan | Isara nang mahigpit ang takip",
                explanation: "Ang tamang pagkakasunod-sunod: magluto ng kanin at ulam, hayaang lumamig nang kaunti, ilagay sa baunan, isara nang mahigpit ang takip."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pag-iimbak ng tirang pagkain",
                options: ["Lagyan ng petsa", "Ilagay sa ref", "Hayaang lumamig ang pagkain", "Ilipat sa lalagyang may takip"],
                correctAnswer: "Hayaang lumamig ang pagkain | Ilipat sa lalagyang may takip | Lagyan ng petsa | Ilagay sa ref",
                explanation: "Ang tamang pagkakasunod-sunod: hayaang lumamig ang pagkain, ilipat sa lalagyang may takip, lagyan ng petsa, ilagay sa ref."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pag-iinit ng pagkain sa microwave",
                options: ["Haluin bago kainin", "Ilagay ang pagkain sa plato", "Takpan nang bahagya", "Itakda ang oras"],
                correctAnswer: "Ilagay ang pagkain sa plato | Takpan nang bahagya | Itakda ang oras | Haluin bago kainin",
                explanation: "Ang tamang pagkakasunod-sunod: ilagay ang pagkain sa plato, takpan nang bahagya, itakda ang oras, haluin bago kainin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtunaw ng frozen na karne",
                options: ["Ilagay sa ilalim na bahagi ng ref", "Hintaying tuluyang matunaw", "Lutuin kaagad", "Ilipat ang karne mula sa freezer"],
                correctAnswer: "Ilipat ang karne mula sa freezer | Ilagay sa ilalim na bahagi ng ref | Hintaying tuluyang matunaw | Lutuin kaagad",
                explanation: "Ang tamang pagkakasunod-sunod: ilipat ang karne mula sa freezer, ilagay sa ilalim na bahagi ng ref, hintaying tuluyang matunaw, lutuin kaagad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagbubukas ng de-lata",
                options: ["Ikutin hanggang mabuksan", "Ibuhos ang laman sa mangkok", "Kunin ang abrelata", "Ikabit sa gilid ng lata"],
                correctAnswer: "Kunin ang abrelata | Ikabit sa gilid ng lata | Ikutin hanggang mabuksan | Ibuhos ang laman sa mangkok",
                explanation: "Ang tamang pagkakasunod-sunod: kunin ang abrelata, ikabit sa gilid ng lata, ikutin hanggang mabuksan, ibuhos ang laman sa mangkok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtatakda ng mesa",
                options: ["Ilagay ang mga baso", "Ilatag ang mantel", "Ilagay ang mga plato", "Iayos ang kubyertos"],
                correctAnswer: "Ilatag ang mantel | Ilagay ang mga plato | Iayos ang kubyertos | Ilagay ang mga baso",
                explanation: "Ang tamang pagkakasunod-sunod: ilatag ang mantel, ilagay ang mga plato, iayos ang kubyertos, ilagay ang mga baso."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paglilinis ng kusina pagkatapos magluto",
                options: ["Hugasan ang mga gamit sa pagluluto", "Punasan ang mesa at kalan", "Iwalis ang sahig", "Itapon ang mga pinagbalatan"],
                correctAnswer: "Itapon ang mga pinagbalatan | Hugasan ang mga gamit sa pagluluto | Punasan ang mesa at kalan | Iwalis ang sahig",
                explanation: "Ang tamang pagkakasunod-sunod: itapon ang mga pinagbalatan, hugasan ang mga gamit sa pagluluto, punasan ang mesa at kalan, iwalis ang sahig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtatago ng mga pinamili",
                options: ["Iayos ang de-lata sa aparador", "Itupi ang mga supot", "Ilabas ang mga pinamili sa supot", "Ilagay ang karne at gulay sa ref"],
                correctAnswer: "Ilabas ang mga pinamili sa supot | Ilagay ang karne at gulay sa ref | Iayos ang de-lata sa aparador | Itupi ang mga supot",
                explanation: "Ang tamang pagkakasunod-sunod: ilabas ang mga pinamili sa supot, ilagay ang karne at gulay sa ref, iayos ang de-lata sa aparador, itupi ang mga supot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paghuhugas ng bigas",
                options: ["Ulitin hanggang luminaw", "Ilagay ang bigas sa kaldero", "Buhusan ng tubig", "Haluin at ibuhos ang labo ng tubig"],
                correctAnswer: "Ilagay ang bigas sa kaldero | Buhusan ng tubig | Haluin at ibuhos ang labo ng tubig | Ulitin hanggang luminaw",
                explanation: "Ang tamang pagkakasunod-sunod: ilagay ang bigas sa kaldero, buhusan ng tubig, haluin at ibuhos ang labo ng tubig, ulitin hanggang luminaw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagbabalat ng bawang",
                options: ["Pisain nang bahagya ng kutsilyo", "Alisin ang balat", "Tadtarin ayon sa kailangan", "Ihiwalay ang mga butil"],
                correctAnswer: "Ihiwalay ang mga butil | Pisain nang bahagya ng kutsilyo | Alisin ang balat | Tadtarin ayon sa kailangan",
                explanation: "Ang tamang pagkakasunod-sunod: ihiwalay ang mga butil, pisain nang bahagya ng kutsilyo, alisin ang balat, tadtarin ayon sa kailangan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paghihiwa ng sibuyas",
                options: ["Ihiga sa sangkalan", "Hiwain nang manipis", "Balatan ang sibuyas", "Hatiin sa gitna"],
                correctAnswer: "Balatan ang sibuyas | Hatiin sa gitna | Ihiga sa sangkalan | Hiwain nang manipis",
                explanation: "Ang tamang pagkakasunod-sunod: balatan ang sibuyas, hatiin sa gitna, ihiga sa sangkalan, hiwain nang manipis."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng palamang itlog",
                options: ["Ipahid sa tinapay", "Pakuluan ang itlog", "Balatan at durugin", "Haluan ng mayonesa"],
                correctAnswer: "Pakuluan ang itlog | Balatan at durugin | Haluan ng mayonesa | Ipahid sa tinapay",
                explanation: "Ang tamang pagkakasunod-sunod: pakuluan ang itlog, balatan at durugin, haluan ng mayonesa, ipahid sa tinapay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagsasaing gamit ang rice cooker",
                options: ["Ilagay ang tamang dami ng tubig", "Isara ang takip at pindutin ang cook", "Hintaying tumalbog ang pindutan", "Hugasan ang bigas"],
                correctAnswer: "Hugasan ang bigas | Ilagay ang tamang dami ng tubig | Isara ang takip at pindutin ang cook | Hintaying tumalbog ang pindutan",
                explanation: "Ang tamang pagkakasunod-sunod: hugasan ang bigas, ilagay ang tamang dami ng tubig, isara ang takip at pindutin ang cook, hintaying tumalbog ang pindutan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng gatas para sa almusal",
                options: ["Buhusan ng maligamgam na tubig", "Haluin hanggang matunaw", "Kumuha ng malinis na baso", "Ilagay ang pulbos na gatas"],
                correctAnswer: "Kumuha ng malinis na baso | Ilagay ang pulbos na gatas | Buhusan ng maligamgam na tubig | Haluin hanggang matunaw",
                explanation: "Ang tamang pagkakasunod-sunod: kumuha ng malinis na baso, ilagay ang pulbos na gatas, buhusan ng maligamgam na tubig, haluin hanggang matunaw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng ginisang ampalaya",
                options: ["Timplahan bago ihain", "Hiwain at ibabad ang ampalaya sa asin", "Pigain at banlawan", "Igisa kasama ang itlog"],
                correctAnswer: "Hiwain at ibabad ang ampalaya sa asin | Pigain at banlawan | Igisa kasama ang itlog | Timplahan bago ihain",
                explanation: "Ang tamang pagkakasunod-sunod: hiwain at ibabad ang ampalaya sa asin, pigain at banlawan, igisa kasama ang itlog, timplahan bago ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng pritong manok",
                options: ["Balutin sa harina", "Iprito sa mainit na mantika", "Patuluin sa tisyu", "Timplahan ang manok"],
                correctAnswer: "Timplahan ang manok | Balutin sa harina | Iprito sa mainit na mantika | Patuluin sa tisyu",
                explanation: "Ang tamang pagkakasunod-sunod: timplahan ang manok, balutin sa harina, iprito sa mainit na mantika, patuluin sa tisyu."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng biko",
                options: ["Ihalo ang kanin sa gata", "Ilatag sa bilao at patagin", "Lutuin ang malagkit na bigas", "Pakuluan ang gata at asukal"],
                correctAnswer: "Lutuin ang malagkit na bigas | Pakuluan ang gata at asukal | Ihalo ang kanin sa gata | Ilatag sa bilao at patagin",
                explanation: "Ang tamang pagkakasunod-sunod: lutuin ang malagkit na bigas, pakuluan ang gata at asukal, ihalo ang kanin sa gata, ilatag sa bilao at patagin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng palitaw",
                options: ["Igulong sa niyog at asukal kapag lumutang", "Masahin ang galapong", "Hulmahin nang pipi", "Ilaglag sa kumukulong tubig"],
                correctAnswer: "Masahin ang galapong | Hulmahin nang pipi | Ilaglag sa kumukulong tubig | Igulong sa niyog at asukal kapag lumutang",
                explanation: "Ang tamang pagkakasunod-sunod: masahin ang galapong, hulmahin nang pipi, ilaglag sa kumukulong tubig, igulong sa niyog at asukal kapag lumutang."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng maruya",
                options: ["Ihalo sa batter na harina", "Iprito hanggang ginintuan", "Budburan ng asukal", "Hiwain ang saging"],
                correctAnswer: "Hiwain ang saging | Ihalo sa batter na harina | Iprito hanggang ginintuan | Budburan ng asukal",
                explanation: "Ang tamang pagkakasunod-sunod: hiwain ang saging, ihalo sa batter na harina, iprito hanggang ginintuan, budburan ng asukal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagluluto ng ginisang sardinas",
                options: ["Dagdagan ng kamatis", "Pakuluan sandali at ihain", "Igisa ang bawang at sibuyas", "Ilagay ang sardinas"],
                correctAnswer: "Igisa ang bawang at sibuyas | Ilagay ang sardinas | Dagdagan ng kamatis | Pakuluan sandali at ihain",
                explanation: "Ang tamang pagkakasunod-sunod: igisa ang bawang at sibuyas, ilagay ang sardinas, dagdagan ng kamatis, pakuluan sandali at ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paggawa ng fruit salad",
                options: ["Palamigin sa ref bago ihain", "Patuluin ang mga de-latang prutas", "Ilagay sa malaking mangkok", "Ihalo ang krema at gatas"],
                correctAnswer: "Patuluin ang mga de-latang prutas | Ilagay sa malaking mangkok | Ihalo ang krema at gatas | Palamigin sa ref bago ihain",
                explanation: "Ang tamang pagkakasunod-sunod: patuluin ang mga de-latang prutas, ilagay sa malaking mangkok, ihalo ang krema at gatas, palamigin sa ref bago ihain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagpapakulo ng tubig na ligtas inumin",
                options: ["Isalang sa kalan", "Pakuluan nang ilang minuto", "Hayaang lumamig bago isalin", "Punuin ang kaldero ng tubig"],
                correctAnswer: "Punuin ang kaldero ng tubig | Isalang sa kalan | Pakuluan nang ilang minuto | Hayaang lumamig bago isalin",
                explanation: "Ang tamang pagkakasunod-sunod: punuin ang kaldero ng tubig, isalang sa kalan, pakuluan nang ilang minuto, hayaang lumamig bago isalin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paglilinis ng ref",
                options: ["Punasan ang mga istante", "Ibalik nang maayos ang mga laman", "Ilabas ang lahat ng laman", "Itapon ang mga panis na pagkain"],
                correctAnswer: "Ilabas ang lahat ng laman | Itapon ang mga panis na pagkain | Punasan ang mga istante | Ibalik nang maayos ang mga laman",
                explanation: "Ang tamang pagkakasunod-sunod: ilabas ang lahat ng laman, itapon ang mga panis na pagkain, punasan ang mga istante, ibalik nang maayos ang mga laman."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: pagtatapon ng basura sa kusina",
                options: ["Maghugas ng kamay", "Itali ang supot ng basura", "Ilabas sa tapunan", "Lagyan ng bagong supot ang basurahan"],
                correctAnswer: "Itali ang supot ng basura | Ilabas sa tapunan | Lagyan ng bagong supot ang basurahan | Maghugas ng kamay",
                explanation: "Ang tamang pagkakasunod-sunod: itali ang supot ng basura, ilabas sa tapunan, lagyan ng bagong supot ang basurahan, maghugas ng kamay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ayusin ang mga hakbang: paghahanda ng meryenda para sa bisita",
                options: ["Ihanda ang kakanin sa plato", "Ilagay sa mesa", "Anyayahan ang mga bisita", "Magtimpla ng kape o juice"],
                correctAnswer: "Magtimpla ng kape o juice | Ihanda ang kakanin sa plato | Ilagay sa mesa | Anyayahan ang mga bisita",
                explanation: "Ang tamang pagkakasunod-sunod: magtimpla ng kape o juice, ihanda ang kakanin sa plato, ilagay sa mesa, anyayahan ang mga bisita."
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
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Bigas: 5 libra sa $6.00 o 10 libra sa $10.00. Alin ang mas sulit?",
                options: ["5 libra sa $6.00", "10 libra sa $10.00"],
                correctAnswer: "10 libra sa $10.00",
                explanation: "Ang 10 libra sa $10.00 ay mas mura bawat libra ($1.00) kaysa sa $1.20 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Toyo: 10 onsa sa $1.50 o 20 onsa sa $2.40. Alin ang mas sulit?",
                options: ["10 onsa sa $1.50", "20 onsa sa $2.40"],
                correctAnswer: "20 onsa sa $2.40",
                explanation: "Ang 20 onsa sa $2.40 ay mas mura bawat onsa ($0.12) kaysa sa $0.15 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Suka: 12 onsa sa $1.80 o 24 onsa sa $3.00. Alin ang mas sulit?",
                options: ["12 onsa sa $1.80", "24 onsa sa $3.00"],
                correctAnswer: "24 onsa sa $3.00",
                explanation: "Ang 24 onsa sa $3.00 ay mas mura bawat onsa ($0.12) kaysa sa $0.15 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bawang: 1 libra sa $2.00 o 3 libra sa $4.50. Alin ang mas sulit?",
                options: ["1 libra sa $2.00", "3 libra sa $4.50"],
                correctAnswer: "3 libra sa $4.50",
                explanation: "Ang 3 libra sa $4.50 ay mas mura bawat libra ($1.50) kaysa sa $2.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sibuyas: 2 libra sa $3.00 o 5 libra sa $6.00. Alin ang mas sulit?",
                options: ["2 libra sa $3.00", "5 libra sa $6.00"],
                correctAnswer: "5 libra sa $6.00",
                explanation: "Ang 5 libra sa $6.00 ay mas mura bawat libra ($1.20) kaysa sa $1.50 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kamatis: 1 libra sa $2.50 o 4 libra sa $8.00. Alin ang mas sulit?",
                options: ["1 libra sa $2.50", "4 libra sa $8.00"],
                correctAnswer: "4 libra sa $8.00",
                explanation: "Ang 4 libra sa $8.00 ay mas mura bawat libra ($2.00) kaysa sa $2.50 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manok: 3 libra sa $9.00 o 5 libra sa $12.50. Alin ang mas sulit?",
                options: ["3 libra sa $9.00", "5 libra sa $12.50"],
                correctAnswer: "5 libra sa $12.50",
                explanation: "Ang 5 libra sa $12.50 ay mas mura bawat libra ($2.50) kaysa sa $3.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Baboy: 2 libra sa $8.00 o 4 libra sa $14.00. Alin ang mas sulit?",
                options: ["2 libra sa $8.00", "4 libra sa $14.00"],
                correctAnswer: "4 libra sa $14.00",
                explanation: "Ang 4 libra sa $14.00 ay mas mura bawat libra ($3.50) kaysa sa $4.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bangus: 1 piraso sa $6.00 o 2 piraso sa $13.00. Alin ang mas sulit?",
                options: ["1 piraso sa $6.00", "2 piraso sa $13.00"],
                correctAnswer: "1 piraso sa $6.00",
                explanation: "Ang 1 piraso sa $6.00 ay mas mura bawat piraso ($6.00) kaysa sa $6.50 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tilapia: 2 libra sa $7.00 o 5 libra sa $15.00. Alin ang mas sulit?",
                options: ["2 libra sa $7.00", "5 libra sa $15.00"],
                correctAnswer: "5 libra sa $15.00",
                explanation: "Ang 5 libra sa $15.00 ay mas mura bawat libra ($3.00) kaysa sa $3.50 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hipon: 1 libra sa $9.00 o 2 libra sa $16.00. Alin ang mas sulit?",
                options: ["1 libra sa $9.00", "2 libra sa $16.00"],
                correctAnswer: "2 libra sa $16.00",
                explanation: "Ang 2 libra sa $16.00 ay mas mura bawat libra ($8.00) kaysa sa $9.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Itlog: 12 piraso sa $3.60 o 30 piraso sa $7.50. Alin ang mas sulit?",
                options: ["12 piraso sa $3.60", "30 piraso sa $7.50"],
                correctAnswer: "30 piraso sa $7.50",
                explanation: "Ang 30 piraso sa $7.50 ay mas mura bawat piraso ($0.25) kaysa sa $0.30 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gatas: 32 onsa sa $3.20 o 64 onsa sa $5.76. Alin ang mas sulit?",
                options: ["32 onsa sa $3.20", "64 onsa sa $5.76"],
                correctAnswer: "64 onsa sa $5.76",
                explanation: "Ang 64 onsa sa $5.76 ay mas mura bawat onsa ($0.09) kaysa sa $0.10 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Keso: 8 onsa sa $4.00 o 16 onsa sa $6.40. Alin ang mas sulit?",
                options: ["8 onsa sa $4.00", "16 onsa sa $6.40"],
                correctAnswer: "16 onsa sa $6.40",
                explanation: "Ang 16 onsa sa $6.40 ay mas mura bawat onsa ($0.40) kaysa sa $0.50 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tinapay: 12 piraso sa $3.00 o 24 piraso sa $5.28. Alin ang mas sulit?",
                options: ["12 piraso sa $3.00", "24 piraso sa $5.28"],
                correctAnswer: "24 piraso sa $5.28",
                explanation: "Ang 24 piraso sa $5.28 ay mas mura bawat piraso ($0.22) kaysa sa $0.25 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Saging: 3 libra sa $1.80 o 6 libra sa $3.00. Alin ang mas sulit?",
                options: ["3 libra sa $1.80", "6 libra sa $3.00"],
                correctAnswer: "6 libra sa $3.00",
                explanation: "Ang 6 libra sa $3.00 ay mas mura bawat libra ($0.50) kaysa sa $0.60 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mangga: 2 piraso sa $5.00 o 6 piraso sa $12.00. Alin ang mas sulit?",
                options: ["2 piraso sa $5.00", "6 piraso sa $12.00"],
                correctAnswer: "6 piraso sa $12.00",
                explanation: "Ang 6 piraso sa $12.00 ay mas mura bawat piraso ($2.00) kaysa sa $2.50 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kalamansi: 1 libra sa $4.00 o 2 libra sa $6.00. Alin ang mas sulit?",
                options: ["1 libra sa $4.00", "2 libra sa $6.00"],
                correctAnswer: "2 libra sa $6.00",
                explanation: "Ang 2 libra sa $6.00 ay mas mura bawat libra ($3.00) kaysa sa $4.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sampalok na pampasigang: 4 pakete sa $2.00 o 10 pakete sa $4.00. Alin ang mas sulit?",
                options: ["4 pakete sa $2.00", "10 pakete sa $4.00"],
                correctAnswer: "10 pakete sa $4.00",
                explanation: "Ang 10 pakete sa $4.00 ay mas mura bawat pakete ($0.40) kaysa sa $0.50 bawat pakete ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Patis: 10 onsa sa $2.00 o 25 onsa sa $4.00. Alin ang mas sulit?",
                options: ["10 onsa sa $2.00", "25 onsa sa $4.00"],
                correctAnswer: "25 onsa sa $4.00",
                explanation: "Ang 25 onsa sa $4.00 ay mas mura bawat onsa ($0.16) kaysa sa $0.20 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bagoong: 8 onsa sa $3.20 o 12 onsa sa $4.20. Alin ang mas sulit?",
                options: ["8 onsa sa $3.20", "12 onsa sa $4.20"],
                correctAnswer: "12 onsa sa $4.20",
                explanation: "Ang 12 onsa sa $4.20 ay mas mura bawat onsa ($0.35) kaysa sa $0.40 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kape: 8 onsa sa $6.40 o 16 onsa sa $11.20. Alin ang mas sulit?",
                options: ["8 onsa sa $6.40", "16 onsa sa $11.20"],
                correctAnswer: "16 onsa sa $11.20",
                explanation: "Ang 16 onsa sa $11.20 ay mas mura bawat onsa ($0.70) kaysa sa $0.80 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Asukal: 2 libra sa $2.60 o 4 libra sa $4.40. Alin ang mas sulit?",
                options: ["2 libra sa $2.60", "4 libra sa $4.40"],
                correctAnswer: "4 libra sa $4.40",
                explanation: "Ang 4 libra sa $4.40 ay mas mura bawat libra ($1.10) kaysa sa $1.30 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Asin: 1 libra sa $1.00 o 3 libra sa $2.40. Alin ang mas sulit?",
                options: ["1 libra sa $1.00", "3 libra sa $2.40"],
                correctAnswer: "3 libra sa $2.40",
                explanation: "Ang 3 libra sa $2.40 ay mas mura bawat libra ($0.80) kaysa sa $1.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mantika: 16 onsa sa $3.20 o 48 onsa sa $8.16. Alin ang mas sulit?",
                options: ["16 onsa sa $3.20", "48 onsa sa $8.16"],
                correctAnswer: "48 onsa sa $8.16",
                explanation: "Ang 48 onsa sa $8.16 ay mas mura bawat onsa ($0.17) kaysa sa $0.20 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bihon: 8 onsa sa $2.40 o 16 onsa sa $4.00. Alin ang mas sulit?",
                options: ["8 onsa sa $2.40", "16 onsa sa $4.00"],
                correctAnswer: "16 onsa sa $4.00",
                explanation: "Ang 16 onsa sa $4.00 ay mas mura bawat onsa ($0.25) kaysa sa $0.30 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Balat ng lumpia: 25 piraso sa $2.50 o 50 piraso sa $4.50. Alin ang mas sulit?",
                options: ["25 piraso sa $2.50", "50 piraso sa $4.50"],
                correctAnswer: "50 piraso sa $4.50",
                explanation: "Ang 50 piraso sa $4.50 ay mas mura bawat piraso ($0.09) kaysa sa $0.10 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Monggo: 1 libra sa $2.20 o 2 libra sa $4.80. Alin ang mas sulit?",
                options: ["1 libra sa $2.20", "2 libra sa $4.80"],
                correctAnswer: "1 libra sa $2.20",
                explanation: "Ang 1 libra sa $2.20 ay mas mura bawat libra ($2.20) kaysa sa $2.40 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kangkong: 1 bigkis sa $1.50 o 3 bigkis sa $3.60. Alin ang mas sulit?",
                options: ["1 bigkis sa $1.50", "3 bigkis sa $3.60"],
                correctAnswer: "3 bigkis sa $3.60",
                explanation: "Ang 3 bigkis sa $3.60 ay mas mura bawat bigkis ($1.20) kaysa sa $1.50 bawat bigkis ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Repolyo: 2 libra sa $2.40 o 5 libra sa $5.00. Alin ang mas sulit?",
                options: ["2 libra sa $2.40", "5 libra sa $5.00"],
                correctAnswer: "5 libra sa $5.00",
                explanation: "Ang 5 libra sa $5.00 ay mas mura bawat libra ($1.00) kaysa sa $1.20 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Karot: 1 libra sa $1.20 o 3 libra sa $3.00. Alin ang mas sulit?",
                options: ["1 libra sa $1.20", "3 libra sa $3.00"],
                correctAnswer: "3 libra sa $3.00",
                explanation: "Ang 3 libra sa $3.00 ay mas mura bawat libra ($1.00) kaysa sa $1.20 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Patatas: 3 libra sa $3.00 o 10 libra sa $8.00. Alin ang mas sulit?",
                options: ["3 libra sa $3.00", "10 libra sa $8.00"],
                correctAnswer: "10 libra sa $8.00",
                explanation: "Ang 10 libra sa $8.00 ay mas mura bawat libra ($0.80) kaysa sa $1.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kamote: 2 libra sa $2.60 o 5 libra sa $5.50. Alin ang mas sulit?",
                options: ["2 libra sa $2.60", "5 libra sa $5.50"],
                correctAnswer: "5 libra sa $5.50",
                explanation: "Ang 5 libra sa $5.50 ay mas mura bawat libra ($1.10) kaysa sa $1.30 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mais: 2 piraso sa $1.60 o 6 piraso sa $5.40. Alin ang mas sulit?",
                options: ["2 piraso sa $1.60", "6 piraso sa $5.40"],
                correctAnswer: "2 piraso sa $1.60",
                explanation: "Ang 2 piraso sa $1.60 ay mas mura bawat piraso ($0.80) kaysa sa $0.90 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ube halaya: 12 onsa sa $6.00 o 24 onsa sa $10.80. Alin ang mas sulit?",
                options: ["12 onsa sa $6.00", "24 onsa sa $10.80"],
                correctAnswer: "24 onsa sa $10.80",
                explanation: "Ang 24 onsa sa $10.80 ay mas mura bawat onsa ($0.45) kaysa sa $0.50 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gata: 13 onsa sa $1.30 o 26 onsa sa $3.12. Alin ang mas sulit?",
                options: ["13 onsa sa $1.30", "26 onsa sa $3.12"],
                correctAnswer: "13 onsa sa $1.30",
                explanation: "Ang 13 onsa sa $1.30 ay mas mura bawat onsa ($0.10) kaysa sa $0.12 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sardinas: 5 onsa sa $1.25 o 15 onsa sa $3.00. Alin ang mas sulit?",
                options: ["5 onsa sa $1.25", "15 onsa sa $3.00"],
                correctAnswer: "15 onsa sa $3.00",
                explanation: "Ang 15 onsa sa $3.00 ay mas mura bawat onsa ($0.20) kaysa sa $0.25 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Corned beef: 12 onsa sa $3.60 o 20 onsa sa $5.00. Alin ang mas sulit?",
                options: ["12 onsa sa $3.60", "20 onsa sa $5.00"],
                correctAnswer: "20 onsa sa $5.00",
                explanation: "Ang 20 onsa sa $5.00 ay mas mura bawat onsa ($0.25) kaysa sa $0.30 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hotdog: 10 piraso sa $4.00 o 24 piraso sa $8.40. Alin ang mas sulit?",
                options: ["10 piraso sa $4.00", "24 piraso sa $8.40"],
                correctAnswer: "24 piraso sa $8.40",
                explanation: "Ang 24 piraso sa $8.40 ay mas mura bawat piraso ($0.35) kaysa sa $0.40 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pasta ng spaghetti: 16 onsa sa $2.40 o 32 onsa sa $4.16. Alin ang mas sulit?",
                options: ["16 onsa sa $2.40", "32 onsa sa $4.16"],
                correctAnswer: "32 onsa sa $4.16",
                explanation: "Ang 32 onsa sa $4.16 ay mas mura bawat onsa ($0.13) kaysa sa $0.15 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sarsa ng spaghetti: 24 onsa sa $3.60 o 48 onsa sa $6.24. Alin ang mas sulit?",
                options: ["24 onsa sa $3.60", "48 onsa sa $6.24"],
                correctAnswer: "48 onsa sa $6.24",
                explanation: "Ang 48 onsa sa $6.24 ay mas mura bawat onsa ($0.13) kaysa sa $0.15 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Orange juice: 32 onsa sa $3.84 o 64 onsa sa $7.04. Alin ang mas sulit?",
                options: ["32 onsa sa $3.84", "64 onsa sa $7.04"],
                correctAnswer: "64 onsa sa $7.04",
                explanation: "Ang 64 onsa sa $7.04 ay mas mura bawat onsa ($0.11) kaysa sa $0.12 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tubig na de-bote: 12 bote sa $3.00 o 24 bote sa $4.80. Alin ang mas sulit?",
                options: ["12 bote sa $3.00", "24 bote sa $4.80"],
                correctAnswer: "24 bote sa $4.80",
                explanation: "Ang 24 bote sa $4.80 ay mas mura bawat bote ($0.20) kaysa sa $0.25 bawat bote ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tisyu: 4 rolyo sa $4.00 o 12 rolyo sa $9.00. Alin ang mas sulit?",
                options: ["4 rolyo sa $4.00", "12 rolyo sa $9.00"],
                correctAnswer: "12 rolyo sa $9.00",
                explanation: "Ang 12 rolyo sa $9.00 ay mas mura bawat rolyo ($0.75) kaysa sa $1.00 bawat rolyo ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sabong panlaba: 20 onsa sa $5.00 o 50 onsa sa $10.00. Alin ang mas sulit?",
                options: ["20 onsa sa $5.00", "50 onsa sa $10.00"],
                correctAnswer: "50 onsa sa $10.00",
                explanation: "Ang 50 onsa sa $10.00 ay mas mura bawat onsa ($0.20) kaysa sa $0.25 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sabong pantao: 3 piraso sa $3.00 o 8 piraso sa $6.40. Alin ang mas sulit?",
                options: ["3 piraso sa $3.00", "8 piraso sa $6.40"],
                correctAnswer: "8 piraso sa $6.40",
                explanation: "Ang 8 piraso sa $6.40 ay mas mura bawat piraso ($0.80) kaysa sa $1.00 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Shampoo: 12 onsa sa $4.80 o 24 onsa sa $8.16. Alin ang mas sulit?",
                options: ["12 onsa sa $4.80", "24 onsa sa $8.16"],
                correctAnswer: "24 onsa sa $8.16",
                explanation: "Ang 24 onsa sa $8.16 ay mas mura bawat onsa ($0.34) kaysa sa $0.40 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Toothpaste: 4 onsa sa $2.40 o 8 onsa sa $4.00. Alin ang mas sulit?",
                options: ["4 onsa sa $2.40", "8 onsa sa $4.00"],
                correctAnswer: "8 onsa sa $4.00",
                explanation: "Ang 8 onsa sa $4.00 ay mas mura bawat onsa ($0.50) kaysa sa $0.60 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Harina: 2 libra sa $1.80 o 5 libra sa $4.00. Alin ang mas sulit?",
                options: ["2 libra sa $1.80", "5 libra sa $4.00"],
                correctAnswer: "5 libra sa $4.00",
                explanation: "Ang 5 libra sa $4.00 ay mas mura bawat libra ($0.80) kaysa sa $0.90 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Malagkit na bigas: 2 libra sa $3.00 o 5 libra sa $6.50. Alin ang mas sulit?",
                options: ["2 libra sa $3.00", "5 libra sa $6.50"],
                correctAnswer: "5 libra sa $6.50",
                explanation: "Ang 5 libra sa $6.50 ay mas mura bawat libra ($1.30) kaysa sa $1.50 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Luya: 1 libra sa $3.00 o 2 libra sa $4.80. Alin ang mas sulit?",
                options: ["1 libra sa $3.00", "2 libra sa $4.80"],
                correctAnswer: "2 libra sa $4.80",
                explanation: "Ang 2 libra sa $4.80 ay mas mura bawat libra ($2.40) kaysa sa $3.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Talong: 2 libra sa $2.40 o 5 libra sa $5.00. Alin ang mas sulit?",
                options: ["2 libra sa $2.40", "5 libra sa $5.00"],
                correctAnswer: "5 libra sa $5.00",
                explanation: "Ang 5 libra sa $5.00 ay mas mura bawat libra ($1.00) kaysa sa $1.20 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kalabasa: 2 libra sa $2.00 o 6 libra sa $4.80. Alin ang mas sulit?",
                options: ["2 libra sa $2.00", "6 libra sa $4.80"],
                correctAnswer: "6 libra sa $4.80",
                explanation: "Ang 6 libra sa $4.80 ay mas mura bawat libra ($0.80) kaysa sa $1.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sitaw: 1 bigkis sa $2.20 o 3 bigkis sa $5.40. Alin ang mas sulit?",
                options: ["1 bigkis sa $2.20", "3 bigkis sa $5.40"],
                correctAnswer: "3 bigkis sa $5.40",
                explanation: "Ang 3 bigkis sa $5.40 ay mas mura bawat bigkis ($1.80) kaysa sa $2.20 bawat bigkis ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ampalaya: 1 piraso sa $1.80 o 3 piraso sa $4.50. Alin ang mas sulit?",
                options: ["1 piraso sa $1.80", "3 piraso sa $4.50"],
                correctAnswer: "3 piraso sa $4.50",
                explanation: "Ang 3 piraso sa $4.50 ay mas mura bawat piraso ($1.50) kaysa sa $1.80 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Okra: 1 libra sa $2.00 o 2 libra sa $3.20. Alin ang mas sulit?",
                options: ["1 libra sa $2.00", "2 libra sa $3.20"],
                correctAnswer: "2 libra sa $3.20",
                explanation: "Ang 2 libra sa $3.20 ay mas mura bawat libra ($1.60) kaysa sa $2.00 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pechay: 1 bigkis sa $1.60 o 4 bigkis sa $5.20. Alin ang mas sulit?",
                options: ["1 bigkis sa $1.60", "4 bigkis sa $5.20"],
                correctAnswer: "4 bigkis sa $5.20",
                explanation: "Ang 4 bigkis sa $5.20 ay mas mura bawat bigkis ($1.30) kaysa sa $1.60 bawat bigkis ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dahon ng saging: 5 piraso sa $2.50 o 12 piraso sa $4.80. Alin ang mas sulit?",
                options: ["5 piraso sa $2.50", "12 piraso sa $4.80"],
                correctAnswer: "12 piraso sa $4.80",
                explanation: "Ang 12 piraso sa $4.80 ay mas mura bawat piraso ($0.40) kaysa sa $0.50 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Niyog: 1 piraso sa $2.50 o 3 piraso sa $6.00. Alin ang mas sulit?",
                options: ["1 piraso sa $2.50", "3 piraso sa $6.00"],
                correctAnswer: "3 piraso sa $6.00",
                explanation: "Ang 3 piraso sa $6.00 ay mas mura bawat piraso ($2.00) kaysa sa $2.50 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pinya: 1 piraso sa $3.00 o 2 piraso sa $5.00. Alin ang mas sulit?",
                options: ["1 piraso sa $3.00", "2 piraso sa $5.00"],
                correctAnswer: "2 piraso sa $5.00",
                explanation: "Ang 2 piraso sa $5.00 ay mas mura bawat piraso ($2.50) kaysa sa $3.00 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pakwan: 5 libra sa $4.00 o 12 libra sa $7.20. Alin ang mas sulit?",
                options: ["5 libra sa $4.00", "12 libra sa $7.20"],
                correctAnswer: "12 libra sa $7.20",
                explanation: "Ang 12 libra sa $7.20 ay mas mura bawat libra ($0.60) kaysa sa $0.80 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Papaya: 2 libra sa $3.00 o 5 libra sa $6.00. Alin ang mas sulit?",
                options: ["2 libra sa $3.00", "5 libra sa $6.00"],
                correctAnswer: "5 libra sa $6.00",
                explanation: "Ang 5 libra sa $6.00 ay mas mura bawat libra ($1.20) kaysa sa $1.50 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ubas: 1 libra sa $3.20 o 3 libra sa $8.40. Alin ang mas sulit?",
                options: ["1 libra sa $3.20", "3 libra sa $8.40"],
                correctAnswer: "3 libra sa $8.40",
                explanation: "Ang 3 libra sa $8.40 ay mas mura bawat libra ($2.80) kaysa sa $3.20 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mansanas: 4 piraso sa $3.20 o 10 piraso sa $7.00. Alin ang mas sulit?",
                options: ["4 piraso sa $3.20", "10 piraso sa $7.00"],
                correctAnswer: "10 piraso sa $7.00",
                explanation: "Ang 10 piraso sa $7.00 ay mas mura bawat piraso ($0.70) kaysa sa $0.80 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dalandan: 6 piraso sa $3.00 o 15 piraso sa $6.00. Alin ang mas sulit?",
                options: ["6 piraso sa $3.00", "15 piraso sa $6.00"],
                correctAnswer: "15 piraso sa $6.00",
                explanation: "Ang 15 piraso sa $6.00 ay mas mura bawat piraso ($0.40) kaysa sa $0.50 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tokwa: 4 piraso sa $2.80 o 10 piraso sa $6.00. Alin ang mas sulit?",
                options: ["4 piraso sa $2.80", "10 piraso sa $6.00"],
                correctAnswer: "10 piraso sa $6.00",
                explanation: "Ang 10 piraso sa $6.00 ay mas mura bawat piraso ($0.60) kaysa sa $0.70 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Giniling na baka: 1 libra sa $5.50 o 3 libra sa $15.00. Alin ang mas sulit?",
                options: ["1 libra sa $5.50", "3 libra sa $15.00"],
                correctAnswer: "3 libra sa $15.00",
                explanation: "Ang 3 libra sa $15.00 ay mas mura bawat libra ($5.00) kaysa sa $5.50 bawat libra ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pulot: 8 onsa sa $5.60 o 16 onsa sa $9.60. Alin ang mas sulit?",
                options: ["8 onsa sa $5.60", "16 onsa sa $9.60"],
                correctAnswer: "16 onsa sa $9.60",
                explanation: "Ang 16 onsa sa $9.60 ay mas mura bawat onsa ($0.60) kaysa sa $0.70 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mantikilya: 8 onsa sa $3.20 o 16 onsa sa $5.60. Alin ang mas sulit?",
                options: ["8 onsa sa $3.20", "16 onsa sa $5.60"],
                correctAnswer: "16 onsa sa $5.60",
                explanation: "Ang 16 onsa sa $5.60 ay mas mura bawat onsa ($0.35) kaysa sa $0.40 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Yogurt: 6 onsa sa $1.20 o 32 onsa sa $5.44. Alin ang mas sulit?",
                options: ["6 onsa sa $1.20", "32 onsa sa $5.44"],
                correctAnswer: "32 onsa sa $5.44",
                explanation: "Ang 32 onsa sa $5.44 ay mas mura bawat onsa ($0.17) kaysa sa $0.20 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Oats: 18 onsa sa $3.60 o 42 onsa sa $7.14. Alin ang mas sulit?",
                options: ["18 onsa sa $3.60", "42 onsa sa $7.14"],
                correctAnswer: "42 onsa sa $7.14",
                explanation: "Ang 42 onsa sa $7.14 ay mas mura bawat onsa ($0.17) kaysa sa $0.20 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mani: 8 onsa sa $2.40 o 16 onsa sa $4.32. Alin ang mas sulit?",
                options: ["8 onsa sa $2.40", "16 onsa sa $4.32"],
                correctAnswer: "16 onsa sa $4.32",
                explanation: "Ang 16 onsa sa $4.32 ay mas mura bawat onsa ($0.27) kaysa sa $0.30 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Suka ng niyog: 12 onsa sa $2.16 o 25 onsa sa $4.00. Alin ang mas sulit?",
                options: ["12 onsa sa $2.16", "25 onsa sa $4.00"],
                correctAnswer: "25 onsa sa $4.00",
                explanation: "Ang 25 onsa sa $4.00 ay mas mura bawat onsa ($0.16) kaysa sa $0.18 bawat onsa ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pandesal: 10 piraso sa $3.00 o 30 piraso sa $7.50. Alin ang mas sulit?",
                options: ["10 piraso sa $3.00", "30 piraso sa $7.50"],
                correctAnswer: "30 piraso sa $7.50",
                explanation: "Ang 30 piraso sa $7.50 ay mas mura bawat piraso ($0.25) kaysa sa $0.30 bawat piraso ng kabilang pagpipilian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Siopao: 4 piraso sa $6.00 o 10 piraso sa $13.00. Alin ang mas sulit?",
                options: ["4 piraso sa $6.00", "10 piraso sa $13.00"],
                correctAnswer: "10 piraso sa $13.00",
                explanation: "Ang 10 piraso sa $13.00 ay mas mura bawat piraso ($1.30) kaysa sa $1.50 bawat piraso ng kabilang pagpipilian."
            )
        ]
    )
}


