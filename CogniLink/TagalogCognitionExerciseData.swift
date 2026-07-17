import Foundation

struct TagalogCognitionExerciseData {

    static let allExercises: [Exercise] = [
        storyRecall,
        numberSequences,
        causeAndEffect,
        emotions,
        whatsWrong,
        yesNoQuestions,
        analogies
    ]

    // MARK: - Paggunita sa Kwento
    private static let storyRecall = Exercise(
        id: UUID(),
        title: "Paggunita sa Kwento",
        instructions: "Basahin ang maikling kuwento pagkatapos ay sagutin ang tanong tungkol dito.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Pumunta si Maria sa Seafood City para bumili ng gatas at tinapay. Nakalimutan niya ang wallet niya sa kitchen counter. Ano ang iniwan ni Maria sa bahay?",
                options: ["Yung wallet niya", "Ang kanyang mga susi", "Ang shopping list niya", "Yung phone niya"],
                correctAnswer: "Yung wallet niya",
                explanation: "Ang kuwento ay nagsasaad na nakalimutan niya ang kanyang wallet sa counter ng kusina."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Maagang nagising si Jose noong Sabado para mangisda. Nakahuli siya ng isang malaking trout ngunit kinailangan itong itapon dahil napakaliit nito. Anong uri ng isda ang nahuli ni Jose?",
                options: ["Isang trout", "Isang salmon", "Isang bass", "Isang hito"],
                correctAnswer: "Isang trout",
                explanation: "Ang kuwento ay nagsasaad na nakahuli siya ng isang malaking trout."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ipinarada ni Juan ang kanyang asul na kotse sa ilalim ng isang makulimlim na puno ng oak. Pagbalik niya, nakita niyang natatakpan na ng dilaw na dahon ang sasakyan. Ano ang kulay ng sasakyan ni Juan?",
                options: ["Asul", "Dilaw", "Pula", "Berde"],
                correctAnswer: "Asul",
                explanation: "Ang kuwento ay nagsasaad na ipinarada ni Juan ang kanyang asul na kotse."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nagluto si Elena ng chocolate cake para sa birthday party ng kanyang anak. Naglagay siya ng sampung pulang kandila sa cake. Ilang kandila ang inilagay ni Elena sa cake?",
                options: ["Sampu", "lima", "Walo", "Labindalawa"],
                correctAnswer: "Sampu",
                explanation: "Nakasaad sa kuwento na naglagay siya ng sampung pulang kandila sa cake."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pumunta si Juan sa post office para magpadala ng package sa kanyang kapatid sa Daly City. Sinabi sa kanya ng klerk na darating ito sa Martes. Saan nakatira ang kapatid ni Juan?",
                options: ["Daly City", "New York", "Boston", "Miami"],
                correctAnswer: "Daly City",
                explanation: "Ang kuwento ay nagsasaad na nagpadala siya ng isang pakete sa kanyang kapatid sa Daly City."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bumili si Elena ng bagong pares ng running shoes kahapon. Ang mga ito ay maliwanag na berde na may mga puting guhit. Anong kulay ang bagong running shoes ni Elena?",
                options: ["Matingkad na berde", "Asul", "Pula", "Itim"],
                correctAnswer: "Matingkad na berde",
                explanation: "Ang kuwento ay nagsasabi na ang sapatos ay maliwanag na berde na may puting guhit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Naglalakad si Jose sa parke nang umulan. Binuksan niya ang kanyang dilaw na payong para manatiling tuyo. Anong kulay ang ginamit na payong ni Jose?",
                options: ["Dilaw", "Pula", "Asul", "Itim"],
                correctAnswer: "Dilaw",
                explanation: "Ang sabi sa kuwento ay binuksan niya ang kanyang dilaw na payong."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang lokal na panaderya ay sarado noong Lunes para sa pagkukumpuni. Nagplano silang magbukas muli noong Martes ng umaga sa alas-sais. Anong araw sarado ang panaderya?",
                options: ["Lunes", "Martes", "Miyerkules", "Linggo"],
                correctAnswer: "Lunes",
                explanation: "Ang kuwento ay nagsabi na ang panaderya ay sarado noong Lunes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tumawag si Maria ng tubero dahil tumutulo ang kanyang lababo sa kusina. Dumating ang tubero sa loob ng isang oras at inayos ang tubo. Bakit tumawag si Maria ng tubero?",
                options: ["Tumutulo ang lababo niya", "Nasira ang kanyang kalan", "Patay ang ilaw niya", "Naka-lock ang pinto niya"],
                correctAnswer: "Tumutulo ang lababo niya",
                explanation: "Ang sabi sa kuwento ay tumawag siya ng tubero dahil tumutulo ang kanyang lababo sa kusina."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Inilibot ni Juan ang kanyang aso, si Max, sa paligid ng bloke. Nakita ni Max ang isang ardilya at tumahol ito ng malakas. Ano ang pangalan ng aso ni Juan?",
                options: ["Max", "Buddy", "Charlie", "Rocky"],
                correctAnswer: "Max",
                explanation: "Ang kuwento ay nagsasaad na nilakad ni Juan ang kanyang aso, si Max."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si Elena ay nagluluto ng gulay na sopas para sa hapunan. Napagtanto niya na wala na siyang karot, kaya patatas na lang ang ginamit niya. Anong sangkap ang naubos ni Elena?",
                options: ["Mga karot", "Patatas", "Mga sibuyas", "Kintsay"],
                correctAnswer: "Mga karot",
                explanation: "Ang kuwento ay nagsasaad na napagtanto niya na wala na siya sa mga karot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Umorder si Jose ng pepperoni pizza at isang bote ng soda para sa tanghalian. Ang kabuuang halaga ay labinlimang dolyar. Magkano ang baon ni Jose?",
                options: ["Labinlimang dolyar", "Sampung dolyar", "Dalawampung dolyares", "Labindalawang dolyar"],
                correctAnswer: "Labinlimang dolyar",
                explanation: "Ang kuwento ay nagsasaad na ang kabuuang halaga ay labinlimang dolyar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pumunta si Maria sa silid-aklatan para manghiram ng libro tungkol sa paghahalaman. Nanghiram din siya ng DVD tungkol sa kasaysayan. Ano ang paksa ng aklat na hiniram ni Maria?",
                options: ["Paghahalaman", "Kasaysayan", "Pagluluto", "Paglalakbay"],
                correctAnswer: "Paghahalaman",
                explanation: "Nakasaad sa kuwento na humiram siya ng libro tungkol sa paghahalaman."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sumakay si Juan ng tren sa umaga patungo sa lungsod para sa isang pakikipanayam sa trabaho. Ang kanyang tren ay naantala ng labinlimang minuto dahil sa pagpapanatili ng track. Bakit naantala ang tren?",
                options: ["Pagpapanatili ng track", "Isang malakas na bagyo", "Isang pagkawala ng kuryente", "Isang nawawalang tauhan"],
                correctAnswer: "Pagpapanatili ng track",
                explanation: "Ang kuwento ay nagsasaad na ang tren ay naantala dahil sa pagpapanatili ng track."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pumunta si Elena sa garden center para bumili ng pulang rosas. Naubos na ang mga ito, kaya bumili na lang siya ng pink na carnation. Anong bulaklak ang nabili ni Elena?",
                options: ["Mga kulay rosas na carnation", "Mga pulang rosas", "Dilaw na tulips", "Mga puting liryo"],
                correctAnswer: "Mga kulay rosas na carnation",
                explanation: "Ang kuwento ay nagsasaad na binili niya ang mga pink na carnation sa halip."
            )
        ]
    )

    // MARK: - Mga Pagkakasunod-sunod ng Numero
    private static let numberSequences = Exercise(
        id: UUID(),
        title: "Mga Pagkakasunod-sunod ng Numero",
        instructions: "Anong numero ang susunod sa sequence?",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "2, 4, 6, 8, ___",
                options: ["9", "10", "11", "12"],
                correctAnswer: "10",
                explanation: "Ang sequence ay tumataas sa pamamagitan ng pagdaragdag ng 2 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "5, 10, 15, 20, ___",
                options: ["21", "22", "25", "30"],
                correctAnswer: "25",
                explanation: "Tumataas ang pagkakasunod-sunod sa pamamagitan ng pagdaragdag ng 5 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "10, 20, 30, 40, ___",
                options: ["45", "50", "60", "70"],
                correctAnswer: "50",
                explanation: "Tumataas ang pagkakasunod-sunod sa pamamagitan ng pagdaragdag ng 10 sa bawat pagkakataon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "3, 6, 9, 12, ___",
                options: ["13", "14", "15", "16"],
                correctAnswer: "15",
                explanation: "Ang pagkakasunod-sunod ay tumataas sa pamamagitan ng pagdaragdag ng 3 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "9, 8, 7, 6, ___",
                options: ["4", "5", "7", "8"],
                correctAnswer: "5",
                explanation: "Bumababa ang pagkakasunod-sunod sa pamamagitan ng pagbabawas ng 1 sa bawat pagkakataon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "20, 18, 16, 14, ___",
                options: ["12", "13", "10", "15"],
                correctAnswer: "12",
                explanation: "Bumababa ang pagkakasunod-sunod sa pamamagitan ng pagbabawas ng 2 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1, 3, 5, 7, ___",
                options: ["8", "9", "10", "11"],
                correctAnswer: "9",
                explanation: "Ang pagkakasunud-sunod ng mga kakaibang numero ay tumataas sa pamamagitan ng pagdaragdag ng 2 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "4, 8, 12, 16, ___",
                options: ["18", "20", "22", "24"],
                correctAnswer: "20",
                explanation: "Ang sequence ay tumataas sa pamamagitan ng pagdaragdag ng 4 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "50, 45, 40, 35, ___",
                options: ["25", "28", "30", "32"],
                correctAnswer: "30",
                explanation: "Ang pagkakasunod-sunod ay bumababa sa pamamagitan ng pagbabawas ng 5 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "100, 90, 80, 70, ___",
                options: ["50", "60", "65", "75"],
                correctAnswer: "60",
                explanation: "Ang pagkakasunod-sunod ay bumababa sa pamamagitan ng pagbabawas ng 10 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "11, 22, 33, 44, ___",
                options: ["50", "53", "55", "66"],
                correctAnswer: "55",
                explanation: "Tumataas ang pagkakasunod-sunod sa pamamagitan ng pagdaragdag ng 11 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "8, 10, 12, 14, ___",
                options: ["15", "16", "17", "18"],
                correctAnswer: "16",
                explanation: "Ang sequence ay tumataas sa pamamagitan ng pagdaragdag ng 2 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "12, 15, 18, 21, ___",
                options: ["22", "23", "24", "25"],
                correctAnswer: "24",
                explanation: "Ang pagkakasunod-sunod ay tumataas sa pamamagitan ng pagdaragdag ng 3 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "30, 27, 24, 21, ___",
                options: ["18", "19", "20", "17"],
                correctAnswer: "18",
                explanation: "Ang pagkakasunod-sunod ay bumababa sa pamamagitan ng pagbabawas ng 3 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "7, 14, 21, 28, ___",
                options: ["30", "32", "35", "42"],
                correctAnswer: "35",
                explanation: "Tumataas ang pagkakasunod-sunod sa pamamagitan ng pagdaragdag ng 7 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "40, 36, 32, 28, ___",
                options: ["20", "24", "26", "27"],
                correctAnswer: "24",
                explanation: "Ang pagkakasunod-sunod ay bumababa sa pamamagitan ng pagbabawas ng 4 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "6, 12, 18, 24, ___",
                options: ["26", "28", "30", "32"],
                correctAnswer: "30",
                explanation: "Tumataas ang pagkakasunod-sunod sa pamamagitan ng pagdaragdag ng 6 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "15, 20, 25, 30, ___",
                options: ["31", "32", "35", "40"],
                correctAnswer: "35",
                explanation: "Tumataas ang pagkakasunod-sunod sa pamamagitan ng pagdaragdag ng 5 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "90, 80, 70, 60, ___",
                options: ["40", "50", "55", "45"],
                correctAnswer: "50",
                explanation: "Ang pagkakasunod-sunod ay bumababa sa pamamagitan ng pagbabawas ng 10 sa bawat oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "13, 15, 17, 19, ___",
                options: ["20", "21", "22", "23"],
                correctAnswer: "21",
                explanation: "Ang sequence ay tumataas sa pamamagitan ng pagdaragdag ng 2 sa bawat oras."
            )
        ]
    )

    // MARK: - Sanhi at Bunga
    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "Sanhi at Bunga",
        instructions: "Piliin ang pinaka-malamang na resulta ng sitwasyong inilarawan.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Mag-iwan ka ng ice cream sa counter ng kusina sa loob ng dalawang oras sa isang mainit na araw. Ano ang mangyayari?",
                options: ["Ito ay nagiging mas mahirap", "Natutunaw ito", "Nagbabago ito ng kulay", "Naglalaho ito"],
                correctAnswer: "Natutunaw ito",
                explanation: "Ang init ay nagdudulot ng pagkatunaw ng frozen ice cream."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakalimutan mong diligan ang iyong halaman sa loob ng tatlong linggo. Ano ang malamang na resulta?",
                options: ["Tumutubo ito ng mga bulaklak", "Ito ay nananatiling berde", "Ito ay nalalanta at natutuyo", "Nagiging asul ito"],
                correctAnswer: "Ito ay nalalanta at natutuyo",
                explanation: "Ang mga halaman ay nangangailangan ng tubig upang mabuhay; kung wala ito, sila ay nalalanta at natutuyo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Isang madilim na ulap ng bagyo ang humaharang sa araw, at dumadagundong ang kulog. Ano ang posibleng susunod na mangyayari?",
                options: ["Uulan", "Lalong mag-iinit", "Babagsak agad ang snow", "Lalabas ang mga bituin"],
                correctAnswer: "Uulan",
                explanation: "Ang mga ulap ng bagyo at kulog ay mga tagapagpahiwatig ng paparating na pag-ulan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ibinabagsak mo ang isang mangkok na salamin sa isang matigas na sahig na baldosa. Ano ang malamang na resulta?",
                options: ["Tumatalbog ito pabalik", "Nagbabago ito ng kulay", "Naputol ito", "Ito ay nagiging tubig"],
                correctAnswer: "Naputol ito",
                explanation: "Ang salamin ay marupok at nababasag kapag nalaglag sa matitigas na ibabaw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Maglagay ka ng isang slice ng tinapay sa toaster at iwanan ito sa pinakamataas na setting. Ano ang mangyayari?",
                options: ["Ito ay nagiging basa", "Nasusunog ito at nagiging itim", "Ito ay nananatiling malambot at puti", "Naglalaho ito"],
                correctAnswer: "Nasusunog ito at nagiging itim",
                explanation: "Ang sobrang init sa isang toaster ay masusunog ang tinapay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Iiwan mong bukas ang mga headlight ng kotse sa magdamag. Ano ang mangyayari sa umaga?",
                options: ["Mas mabilis ang takbo ng sasakyan", "Mamamatay ang baterya", "Magbabago ang kulay ng sasakyan", "Agad na magsisimula ang makina"],
                correctAnswer: "Mamamatay ang baterya",
                explanation: "Ang pag-iwan sa mga ilaw na nakabukas ay nakakaubos ng lakas ng baterya."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Isang malakas na snowstorm ang bumagsak sa buong gabi, na nagdedeposito ng anim na pulgada ng snow. Ano ang nangyayari sa mga kalsada?",
                options: ["Nanatili silang tuyo", "Sila ay nagiging madulas at nababalot ng niyebe", "Nagiging berde sila", "Sila ay sumingaw"],
                correctAnswer: "Sila ay nagiging madulas at nababalot ng niyebe",
                explanation: "Naiipon ang bumabagsak na snow sa mga kalsada, na ginagawang mapanganib ang pagmamaneho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Maglagay ka ng tray na puno ng tubig sa freezer. Ano ang mangyayari pagkatapos ng ilang oras?",
                options: ["Kumukulo ang tubig", "Ang tubig ay nagiging yelo", "Ang tubig ay sumingaw", "Nagbabago ang kulay ng tubig"],
                correctAnswer: "Ang tubig ay nagiging yelo",
                explanation: "Ang nagyeyelong temperatura ay ginagawang solidong yelo ang likidong tubig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nagsusuot ka ng isang pares ng makapal na lana na medyas at mabibigat na bota sa isang mainit na araw ng tag-araw. Ano ang nangyayari sa iyong mga paa?",
                options: ["Nakaramdam sila ng lamig", "Nanatili silang tuyo", "Nagiinit sila at pinagpapawisan", "Nagiging asul sila"],
                correctAnswer: "Nagiinit sila at pinagpapawisan",
                explanation: "Ang mga makapal na layer ay nagpapanatili ng init, na nagiging sanhi ng pagpapawis sa mainit na panahon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang isang tao ay hindi natutulog nang 24 oras nang diretso. Ano ang malamang na mararamdaman nila?",
                options: ["Napaka-energetic", "Pagod at inaantok", "Gutom", "Sobrang saya"],
                correctAnswer: "Pagod at inaantok",
                explanation: "Ang kakulangan sa tulog ay nagreresulta sa pagkapagod at pagkaantok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nagdagdag ka ng asukal sa isang tasa ng mainit na tsaa at ihalo ito. Ano ang mangyayari sa asukal?",
                options: ["Ito ay nagiging yelo", "Nawala ito sa tasa", "Natutunaw ito sa tsaa", "Nasusunog ito"],
                correctAnswer: "Natutunaw ito sa tsaa",
                explanation: "Ang paghalo ng asukal sa mainit na likido ay nagiging sanhi ng pagkatunaw nito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lumabas ka sa isang malakas na ulan na walang payong o kapote. Ano ang resulta?",
                options: ["Manatiling tuyo ka", "Basang basa ang damit mo", "Nagiging asul ka", "Mas mainit ang pakiramdam mo"],
                correctAnswer: "Basang basa ang damit mo",
                explanation: "Ang tubig-ulan ay direktang bumagsak sa iyo, na nagpapabasa sa iyong mga damit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nag-ihip ka ng hangin sa isang lobo hanggang sa mapuno ito. Ano ang mangyayari?",
                options: ["Lumilipad ito sa buwan", "Ito pops", "Ito ay nagiging isang ibon", "Lumiliit ito"],
                correctAnswer: "Ito pops",
                explanation: "Ang sobrang presyon ng hangin ay lumampas sa kapasidad ng lobo, na nagiging sanhi ng pag-pop nito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pinapatay mo ang lahat ng ilaw sa isang silid na walang bintana sa gabi. Ano ang mangyayari?",
                options: ["Ang silid ay nagiging mas maliwanag", "Nagiging ganap na madilim ang silid", "Nagiging berde ang kwarto", "Napuno ng liwanag ang silid"],
                correctAnswer: "Nagiging ganap na madilim ang silid",
                explanation: "Walang pinagmumulan ng liwanag ang nagreresulta sa kabuuang kadiliman."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hindi ka nag-aaral o naghahanda para sa isang mahirap na pagsusulit. Ano ang malamang na resulta?",
                options: ["Makakakuha ka ng perpektong marka", "Mahina ang performance mo", "Nakalimutan mo ang iyong pangalan", "Kinansela ang pagsusulit"],
                correctAnswer: "Mahina ang performance mo",
                explanation: "Dahil sa kakulangan sa paghahanda, hindi malamang na makapasa sa mahihirap na pagsubok."
            )
        ]
    )

    // MARK: - Anong Emosyon Ito?
    private static let emotions = Exercise(
        id: UUID(),
        title: "Anong Emosyon Ito?",
        instructions: "Basahin ang sitwasyon at piliin ang emosyon na malamang na nararamdaman ng tao.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Nalaman na lang ni Elena na nanalo siya sa unang pwesto sa isang kompetisyon. Ano ang nararamdaman niya?",
                options: ["Malungkot", "Galit", "Masaya", "Natatakot"],
                correctAnswer: "Masaya",
                explanation: "Ang pagkapanalo sa isang kompetisyon ay isang kapana-panabik at masayang kaganapan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakarinig si Juan ng kakaiba at malakas na ingay sa ibaba ng hatinggabi. Ano ang nararamdaman niya?",
                options: ["Masaya", "Natatakot", "Nababagot", "Excited"],
                correctAnswer: "Natatakot",
                explanation: "Ang mga hindi inaasahang ingay sa dilim ay nagdudulot ng takot o pangamba."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang matalik na kaibigan ni Mary ay lumipat sa ibang estado na malayo. Ano ang pakiramdam ni Mary?",
                options: ["Malungkot", "Galit", "Excited", "Nagseselos"],
                correctAnswer: "Malungkot",
                explanation: "Ang pagpaalam sa malalapit na kaibigan ay nagdudulot ng kalungkutan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "May pumutol sa harap ni John sa mahabang pila sa tindahan. Ano ang pakiramdam ni John?",
                options: ["Masaya", "Natatakot", "Inis", "Nahihiya"],
                correctAnswer: "Inis",
                explanation: "Ang bastos na pag-uugali mula sa iba ay karaniwang nagdudulot ng inis o pagkabigo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Magsasalita na si Emily sa harap ng napakaraming audience. Ano ang nararamdaman niya?",
                options: ["Kinakabahan", "Nababagot", "Malungkot", "Galit"],
                correctAnswer: "Kinakabahan",
                explanation: "Ang pagsasalita sa publiko ay karaniwang nagdudulot ng nerbiyos o pagkabalisa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kinansela ang flight ni Juan, naantala ang kanyang bakasyon ng dalawang araw. Ano ang nararamdaman niya?",
                options: ["Frustrated", "Masaya", "Natatakot", "Proud"],
                correctAnswer: "Frustrated",
                explanation: "Ang mga pagkansela na nakakagambala sa mga plano ay humahantong sa pagkabigo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang anak ni Lisa ay nagtapos sa unibersidad na may pinakamataas na karangalan. Ano ang nararamdaman ni Lisa?",
                options: ["Proud", "Nagseselos", "Malungkot", "Natatakot"],
                correctAnswer: "Proud",
                explanation: "Ang makitang nagtagumpay ang mga miyembro ng pamilya ay nakadarama ng pagmamalaki."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang isang klerk ay nagpapaliwanag ng isang kumplikadong anyo sa ikaapat na pagkakataon, ngunit hindi pa rin maintindihan ni Juan. Ano ang pakiramdam ni Juan?",
                options: ["Nalilito", "Masaya", "Excited", "Proud"],
                correctAnswer: "Nalilito",
                explanation: "Ang kawalan ng kakayahang maunawaan ang impormasyon ay humahantong sa pagkalito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mahigit dalawang oras nang naghihintay si Jose sa isang tahimik na waiting room na walang nababasa. Ano ang nararamdaman niya?",
                options: ["Nababagot", "Natatakot", "Galit", "Masaya"],
                correctAnswer: "Nababagot",
                explanation: "Ang mahabang paghihintay na walang pampasigla ay nagdudulot ng pagkabagot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pamilya ni Ellen ay nagbigay sa kanya ng isang sorpresang birthday party kasama ang lahat ng kanyang mga kaibigan. Ano ang nararamdaman niya?",
                options: ["Nagulat", "Galit", "Malungkot", "Natatakot"],
                correctAnswer: "Nagulat",
                explanation: "Ang hindi inaasahang pagdiriwang ay humahantong sa pagkagulat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Isang ligaw na aso ang sumugod at agresibong tumahol kay Karen habang naglalakad. Ano ang nararamdaman niya?",
                options: ["Natatakot", "Masaya", "Nababagot", "Proud"],
                correctAnswer: "Natatakot",
                explanation: "Ang mga agresibong hayop ay nagdudulot ng takot o sindak."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nawala ni William ang kanyang singsing sa kasal habang naghahalaman. Ano ang nararamdaman niya?",
                options: ["Galit", "Excited", "Nababagot", "Kalmado"],
                correctAnswer: "Galit",
                explanation: "Ang pagkawala ng isang sentimental na bagay ay nakababahala at nagpapagalit sa isa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakatanggap si Patricia ng magandang card at bulaklak mula sa kanyang mga apo. Ano ang nararamdaman niya?",
                options: ["Minahal", "Galit", "Natatakot", "Nalilito"],
                correctAnswer: "Minahal",
                explanation: "Ang mabait na kilos ng pamilya ay nagpapadama sa isang tao na minamahal at pinahahalagahan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang Seafood City ay wala sa partikular na tinapay na gusto ni Jose, kaya kailangan niyang bumili ng isa pang brand. Ano ang nararamdaman niya?",
                options: ["Bahagyang nadismaya", "Takot na takot", "Galit na galit", "Tuwang-tuwa"],
                correctAnswer: "Bahagyang nadismaya",
                explanation: "Ang hindi pagkuha ng isang maliit na kagustuhan ay humahantong sa banayad na pagkabigo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Buong hapon si Juan sa paggawa ng isang bookshelf, at ito ay naging perpekto. Ano ang nararamdaman niya?",
                options: ["Nasiyahan", "Malungkot", "Natatakot", "Nababagot"],
                correctAnswer: "Nasiyahan",
                explanation: "Ang matagumpay na pagkumpleto ng isang gawain ay humahantong sa kasiyahan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Aksidenteng nalaglag ni Elena ang isang tray ng inumin sa isang tahimik na restaurant. Ano ang nararamdaman niya?",
                options: ["Nahihiya", "Masaya", "Galit", "Nababagot"],
                correctAnswer: "Nahihiya",
                explanation: "Ang pagkuha ng negatibong atensyon ng publiko sa isang pagkakamali ay nagdudulot ng kahihiyan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si Jose ay pupunta sa kanyang unang paglalakbay sa Hawaii bukas ng umaga. Ano ang nararamdaman niya?",
                options: ["Excited", "Malungkot", "Galit", "Nababagot"],
                correctAnswer: "Excited",
                explanation: "Ang pag-asam ng isang masayang bakasyon ay nagdudulot ng kaguluhan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nakauwi nang ligtas ang pusa ni Susan matapos mawala ng tatlong araw. Ano ang nararamdaman niya?",
                options: ["Nakakagaan ng loob", "Galit", "Natatakot", "Nalilito"],
                correctAnswer: "Nakakagaan ng loob",
                explanation: "Ang isang positibong resolusyon sa isang nakababahalang sitwasyon ay nagdudulot ng kaginhawahan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang koneksyon sa internet ay patuloy na bumababa bawat limang minuto habang sinusubukan ni Juan na magtrabaho. Ano ang nararamdaman niya?",
                options: ["Naiirita", "Natatakot", "Masaya", "Nababagot"],
                correctAnswer: "Naiirita",
                explanation: "Ang paulit-ulit na maliliit na abala ay nagdudulot ng pangangati."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si Elena ay naligo ng mahaba at mainit-init pagkatapos ng nakakapagod na araw. Ano ang nararamdaman niya?",
                options: ["Nakakarelax", "Galit", "Natatakot", "Kinakabahan"],
                correctAnswer: "Nakakarelax",
                explanation: "Ang mga maiinit na paliguan at downtime ay nakakatulong sa isang tao na maging relaxed."
            )
        ]
    )

    // MARK: - Ano ang Mali Dito?
    private static let whatsWrong = Exercise(
        id: UUID(),
        title: "Ano ang Mali Dito?",
        instructions: "Piliin kung ano ang mali o imposible sa pangungusap.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Si John ay kumain ng almusal sa hatinggabi bago matulog.",
                options: ["Ang mga tao ay hindi kumakain ng pagkain", "Ang almusal ay pagkain sa umaga, hindi hatinggabi", "Hindi dapat matulog si John", "Ang hatinggabi ay sa hapon"],
                correctAnswer: "Ang almusal ay pagkain sa umaga, hindi hatinggabi",
                explanation: "Ang almusal ay ayon sa kahulugan ng pagkain sa umaga na pumuputol sa magdamag na pag-aayuno."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tinahol ng aso ang kartero at pagkatapos ay lumipad sa bubong para manghuli ng ibon.",
                options: ["Ang mga aso ay hindi tumatahol", "Hindi makakalipad ang mga aso", "Ang mga mailmen ay hindi naghahatid ng mail", "Hindi lumilipad ang mga ibon"],
                correctAnswer: "Hindi makakalipad ang mga aso",
                explanation: "Ang mga aso ay walang pakpak at hindi makakalipad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Isinuot ni Elena ang kanyang mainit na winter coat at guwantes para lumangoy sa outdoor pool noong Hulyo.",
                options: ["Ang mga tao ay hindi lumangoy sa Hulyo", "Hindi ka nagsusuot ng winter coat at guwantes para lumangoy", "Walang mga panlabas na pool", "Ang mga coat ay isinusuot sa tag-araw"],
                correctAnswer: "Hindi ka nagsusuot ng winter coat at guwantes para lumangoy",
                explanation: "Ang paglangoy ay nangangailangan ng kasuotang panlangoy, at ang kagamitan sa taglamig ay hindi angkop para sa maligamgam na tubig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Umabot sa labintatlo ang orasan sa dingding, kaya alam ni Juan na oras na para sa kanyang kape sa umaga.",
                options: ["Ang mga orasan ay hindi napupunta sa mga dingding", "Ang mga karaniwang orasan ay umabot lamang sa labindalawang oras", "Ang kape ay hindi inumin sa umaga", "Hindi umiinom ng kape si Juan"],
                correctAnswer: "Ang mga karaniwang orasan ay umabot lamang sa labindalawang oras",
                explanation: "Ang mga tradisyunal na orasan ay nagpapakita ng mga oras mula isa hanggang alas-dose."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sumakay si Paul sa kanyang bisikleta sa malalim na lawa para bisitahin ang kanyang kaibigan.",
                options: ["Ang mga bisikleta ay hindi maaaring sumakay sa tubig", "Ang mga lawa ay walang isda", "Hindi bumibisita ang magkakaibigan", "Ang mga bisikleta ay walang pedal"],
                correctAnswer: "Ang mga bisikleta ay hindi maaaring sumakay sa tubig",
                explanation: "Ang mga bisikleta ay mga sasakyang panlupa at lumulubog sa tubig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nagpakulo si Elena ng ice cubes sa isang kaldero para gawing malamig na tubig na maiinom.",
                options: ["Ang mga ice cube ay wala", "Ang kumukulong ice cubes ay ginagawa silang mainit na tubig, hindi malamig", "Ang mga kaldero ay hindi maaaring maglaman ng yelo", "Ang pag-inom ng tubig ay hindi malusog"],
                correctAnswer: "Ang kumukulong ice cubes ay ginagawa silang mainit na tubig, hindi malamig",
                explanation: "Ang kumukulo ay nagpapainit ng likido, na nagpapainit sa halip na malamig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Umakyat ang isda sa puno upang makatakas sa gutom na pusa.",
                options: ["Ang mga isda ay hindi maaaring umakyat sa mga puno", "Ang mga pusa ay hindi kumakain ng isda", "Ang mga puno ay hindi tumutubo ng mga dahon", "Ang mga isda ay nakatira sa mga puno"],
                correctAnswer: "Ang mga isda ay hindi maaaring umakyat sa mga puno",
                explanation: "Ang mga isda ay nabubuhay sa tubig at walang mga paa upang umakyat sa mga puno."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gumamit si Juan ng tinidor para inumin ang kanyang chicken noodle soup.",
                options: ["Ang mga tinidor ay hindi maaaring maglaman ng likidong sopas", "Ang sopas ay hindi gawa sa manok", "Dapat gumamit si Juan ng kutsilyo", "Ang sopas ay hindi kinakain kasama ng mga kagamitan"],
                correctAnswer: "Ang mga tinidor ay hindi maaaring maglaman ng likidong sopas",
                explanation: "Ang mga tinidor ay may mga tines na nagpapalabas ng mga likido; ang sopas ay nangangailangan ng isang kutsara."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dahil malakas ang ulan, isinabit ni Elena ang basang damit sa sampayan sa labas upang matuyo.",
                options: ["Hindi nababasa ng ulan ang mga bagay", "Hindi matutuyo ang mga damit sa labas sa ulan", "Ang mga damit ay ginagamit lamang sa loob ng bahay", "Hindi nagsusuot ng damit si Elena"],
                correctAnswer: "Hindi matutuyo ang mga damit sa labas sa ulan",
                explanation: "Pinipigilan ng ulan na basa ang mga damit, na pinipigilan itong matuyo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ligtas na lumapag ang eroplano sa paliparan, at lahat ng pasahero ay lumabas sa riles ng tren.",
                options: ["Ang mga eroplano ay hindi dumarating sa mga paliparan", "Ang mga pasahero ay hindi bumibiyahe sa mga eroplano", "Ang mga paliparan ay walang riles ng tren sa mga landing gate", "Ang mga tren ay hindi tumatakbo sa mga riles"],
                correctAnswer: "Ang mga paliparan ay walang riles ng tren sa mga landing gate",
                explanation: "Ang mga eroplano ay dumarating sa mga runway at gate, hindi sa mga riles ng tren."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Binuksan ni Elena ang aircon para mas uminit ang sala.",
                options: ["Ang mga air conditioner ay nagpapalamig sa mga silid, hindi nila pinainit ang mga ito", "Walang dingding ang mga sala", "Walang sariling bahay si Elena", "Ang mga air conditioner ay hindi gumagamit ng kuryente"],
                correctAnswer: "Ang mga air conditioner ay nagpapalamig sa mga silid, hindi nila pinainit ang mga ito",
                explanation: "Ang mga air conditioner ay idinisenyo upang babaan ang temperatura, hindi itaas ang mga ito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hinabol ng kuneho ang malaking kulay abong lobo sa kagubatan.",
                options: ["Ang mga kuneho ay hindi nakatira sa kagubatan", "Ang mga lobo ay hindi tumatakbo", "Ang mga kuneho ay hindi humahabol sa mga lobo", "Ang mga lobo ay hindi kulay abo"],
                correctAnswer: "Ang mga kuneho ay hindi humahabol sa mga lobo",
                explanation: "Ang mga lobo ay mga mandaragit at ang mga kuneho ay biktima; ang mga kuneho ay tumakas mula sa mga lobo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bumili si Jose ng isang pares ng leather na sapatos para sa kanyang mga kamay upang panatilihing mainit ang mga ito sa taglamig.",
                options: ["Ang mga sapatos ay isinusuot sa paa, hindi kamay", "Ang balat ay hindi ginagamit para sa sapatos", "Hindi nilalamig ang mga kamay", "Hindi malamig ang taglamig"],
                correctAnswer: "Ang mga sapatos ay isinusuot sa paa, hindi kamay",
                explanation: "Ang mga guwantes o guwantes ay isinusuot sa mga kamay; ang sapatos ay para sa paa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang araw ay sumisikat sa hatinggabi, na nagbibigay liwanag sa kalangitan ng umaga.",
                options: ["Ang araw ay sumisikat sa umaga, hindi hatinggabi", "Ang hatinggabi ay sa hapon", "Hindi maliwanag ang araw", "Madilim ang umaga"],
                correctAnswer: "Ang araw ay sumisikat sa umaga, hindi hatinggabi",
                explanation: "Ang hatinggabi ay ang kalagitnaan ng gabi kung kailan hindi nakikita ang araw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Binuksan ni Maria ang telebisyon para makinig sa paborito niyang istasyon ng radyo.",
                options: ["Ang mga telebisyon ay nagpapakita ng video, hindi sila mga radyo", "Ang mga radyo ay hindi nagpapatugtog ng musika", "Hindi gusto ni Maria ang musika", "Ang mga telebisyon ay walang mga speaker"],
                correctAnswer: "Ang mga telebisyon ay nagpapakita ng video, hindi sila mga radyo",
                explanation: "Ang telebisyon ay isang display device; ang mga istasyon ng radyo ay ibinobrodkast sa mga radyo."
            )
        ]
    )

    // MARK: - Mga Tanong na Oo o Hindi
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "Mga Tanong na Oo o Hindi",
        instructions: "Pumili ng Oo o Hindi para sa bawat tanong.",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ang adobo ba ay karaniwang niluluto gamit ang toyo at suka?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang toyo at suka ang pangunahing pampalasa ng adobo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang sinigang ba ay isang matamis na panghimagas?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang sinigang ay maasim na sabaw, hindi panghimagas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang lumpia ba ay karaniwang inihahain sa mga handaan ng pamilya?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang lumpia ay paboritong putahe sa mga salu-salo ng pamilyang Pilipino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang kanin ba ay karaniwang kasama sa pagkaing Pilipino araw-araw?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang kanin ang pangunahing pagkain sa halos bawat hapag Pilipino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang halo-halo ba ay isang mainit na sabaw?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang halo-halo ay malamig na panghimagas na may yelo at gatas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pandesal ba ay karaniwang kinakain sa almusal?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pandesal ay tradisyonal na tinapay na pang-almusal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang lechon ba ay karaniwang inihahain sa malalaking pagdiriwang?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang lechon ang madalas na pangunahing putahe sa pista at kasalan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang taho ba ay gawa sa karne ng baboy?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang taho ay gawa sa malambot na tokwa, arnibal, at sago."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang balut ba ay isang uri ng itlog?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang balut ay itlog ng itik na may sisiw sa loob."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang bibingka ba ay karaniwang kinakain tuwing Pasko?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang bibingka ay tradisyonal na kakanin tuwing Simbang Gabi at Pasko."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang kape ba ay karaniwang iniinom sa umaga?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Maraming tao ang umiinom ng kape upang magsimula ng araw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang sorbetes ba ay inihahain nang mainit?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang sorbetes ay malamig na panghimagas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pansit ba ay inihahanda sa kaarawan bilang simbolo ng mahabang buhay?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Sa tradisyong Pilipino, ang pansit ay simbolo ng mahabang buhay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang bagoong ba ay isang uri ng prutas?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang bagoong ay pampalasang gawa sa binurong isda o hipon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang mangga ba ay isang prutas na matamis kapag hinog?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang hinog na mangga ay kilala sa tamis nito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang kalamansi ba ay mas malaki kaysa sa pakwan?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang kalamansi ay maliit na prutas; ang pakwan ay napakalaki."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang tinapay ba ay gawa sa harina?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang harina ang pangunahing sangkap ng tinapay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang gatas ba ay isang inumin?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang gatas ay likidong iniinom at ginagamit din sa pagluluto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang kutsara ba ay ginagamit sa pagsusulat?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang kutsara ay gamit sa pagkain; ang panulat ang pansulat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang palengke ba ay lugar kung saan bumibili ng pagkain?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Sa palengke bumibili ng sariwang gulay, isda, at karne."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang lola ba ay ina ng iyong magulang?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang lola ay ina ng iyong ama o ina."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pinsan ba ay anak ng iyong kapatid?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang pinsan ay anak ng iyong tiyuhin o tiyahin; ang anak ng kapatid ay pamangkin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pagmamano ba ay isang paraan ng paggalang sa nakatatanda?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pagmamano ay tradisyonal na tanda ng paggalang sa matatanda."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang bayanihan ba ay tumutukoy sa pagtutulungan ng komunidad?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang bayanihan ay diwa ng sama-samang pagtulong sa kapwa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pista ba ay karaniwang idinaraos nang walang pagkain at kasiyahan?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang pista ay puno ng pagkain, musika, at pagtitipon ng pamilya."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang Simbang Gabi ba ay ginaganap tuwing Disyembre?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang Simbang Gabi ay siyam na misa bago sumapit ang Pasko."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang Tagalog ba ay isang wikang sinasalita sa Pilipinas?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang Tagalog ang batayan ng wikang Filipino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang Maynila ba ay isang lungsod sa Amerika?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang Maynila ay kabisera ng Pilipinas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang jeepney ba ay isang uri ng pampublikong sasakyan?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang jeepney ay tanyag na pampublikong sasakyan sa Pilipinas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang karaoke ba ay sikat na libangan sa mga pagtitipon ng pamilyang Pilipino?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pagkanta sa karaoke ay paboritong libangan sa mga salu-salo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang tsinelas ba ay isinusuot sa ulo?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang tsinelas ay isinusuot sa paa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang payong ba ay ginagamit kapag umuulan?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang payong ay pananggalang sa ulan at init ng araw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang sabon ba ay ginagamit sa paglilinis?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang sabon ay panlinis ng katawan, damit, at kagamitan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang refrigerator ba ay nagpapainit ng pagkain?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang refrigerator ay nagpapalamig upang hindi mapanis ang pagkain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang gunting ba ay ginagamit sa paggupit?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang gunting ay panggupit ng papel, tela, o buhok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang orasan ba ay nagsasabi ng oras?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang orasan ay nagpapakita kung anong oras na."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang unan ba ay ginagamit sa pagluluto?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang unan ay gamit sa pagtulog, hindi sa kusina."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang walis ba ay ginagamit sa paglilinis ng sahig?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang walis ay pangwalis ng dumi at alikabok sa sahig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang telepono ba ay ginagamit sa pakikipag-usap sa malayo?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Sa telepono nakakausap ang pamilya kahit magkalayo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang bintana ba ay karaniwang gawa sa tubig?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang bintana ay karaniwang gawa sa salamin, kahoy, o bakal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang araw ba ay sumisikat sa umaga?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pagsikat ng araw ang hudyat ng umaga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang buwan ba ay mas maliwanag kaysa sa araw tuwing tanghali?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang araw ang pinakamaliwanag tuwing tanghali."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang ulan ba ay tubig na bumabagsak mula sa langit?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang ulan ay patak ng tubig mula sa mga ulap."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "May pitong araw ba sa isang linggo?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang isang linggo ay may pitong araw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang Disyembre ba ang unang buwan ng taon?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang Enero ang unang buwan; ang Disyembre ang huli."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang tag-init ba ay mas mainit kaysa sa tag-lamig?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Mas mataas ang temperatura tuwing tag-init."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang yelo ba ay mainit?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang yelo ay nagyeyelong tubig kaya napakalamig nito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang isda ba ay nabubuhay sa tubig?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang mga isda ay nabubuhay sa dagat, ilog, at lawa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang ibon ba ay may pakpak?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang mga ibon ay may pakpak na ginagamit sa paglipad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang aso ba ay isang uri ng halaman?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang aso ay hayop, hindi halaman."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang puso ba ay nagbobomba ng dugo sa katawan?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang puso ang nagpapadaloy ng dugo sa buong katawan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang mata ba ay ginagamit sa pakikinig?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang mata ay para sa paningin; ang tainga ang pandinig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang paglalakad araw-araw ba ay mabuti sa kalusugan?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang regular na paglalakad ay nagpapalakas ng katawan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mahalaga ba ang paghuhugas ng kamay bago kumain?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang malinis na kamay ay pumipigil sa pagkalat ng sakit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dapat bang inumin ang gamot ayon sa reseta ng doktor?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pagsunod sa reseta ay nagsisiguro ng tamang dosis."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mabuti ba sa kalusugan ang magpuyat gabi-gabi?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Kailangan ng katawan ang sapat na tulog upang manatiling malusog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mas malusog bang inumin ang tubig kaysa sa matatamis na inumin?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang tubig ay walang asukal at mas mabuti sa katawan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Masama ba sa katawan ang pagkain ng gulay?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang gulay ay puno ng bitamina at mabuti sa kalusugan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dapat bang magsipilyo ng ngipin araw-araw?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang araw-araw na pagsisipilyo ay nag-iiwas sa sira ng ngipin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang doktor ba ang tinatawagan kapag may sunog?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang bumbero ang tinatawagan kapag may sunog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang nars ba ay tumutulong sa pag-aalaga ng mga pasyente?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang nars ay katuwang ng doktor sa pag-aalaga ng maysakit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang guro ba ay nagtuturo sa mga mag-aaral?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pagtuturo ang pangunahing gawain ng guro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang tsuper ba ay nagluluto sa restawran?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang tsuper ay nagmamaneho; ang kusinero ang nagluluto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kailangan bang huminto kapag pula ang ilaw-trapiko?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pulang ilaw ay senyales na dapat huminto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ligtas bang tumawid sa kalsada nang hindi tumitingin sa magkabilang panig?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Dapat tumingin sa kaliwa at kanan bago tumawid."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kailangan ba ng selyo sa pagpapadala ng sulat sa koreo?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang selyo ang bayad sa pagpapadala ng sulat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang susi ba ay ginagamit sa pagbubukas ng pinto?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang susi ang pambukas ng kandado ng pinto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pera ba ay ginagamit sa pamimili?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang pera ang ipinambabayad sa mga binibili."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Libre ba ang lahat ng bilihin sa groseri?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Ang mga bilihin sa groseri ay may kani-kaniyang presyo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang resibo ba ay patunay ng iyong ibinayad?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang resibo ay katibayan ng naganap na bayaran."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mas malaki ba ang halaga ng sampung dolyar kaysa sa limang dolyar?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang sampu ay dalawang beses na mas malaki kaysa sa lima."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang kalendaryo ba ay nagpapakita ng mga petsa?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Sa kalendaryo makikita ang mga araw, linggo, at buwan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mas maliwanag ba ang gabi kaysa sa umaga?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Madilim ang gabi dahil wala ang araw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mahalaga ba ang pamilya sa kulturang Pilipino?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang malapit na ugnayan ng pamilya ay sentro ng kulturang Pilipino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ang pagsasabi ng salamat ba ay nagpapakita ng pasasalamat?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Ang salitang salamat ay pagpapahayag ng pasasalamat."
            )
        ]
    )

    // MARK: - Mga Analohiya
    private static let analogies = Exercise(
        id: UUID(),
        title: "Mga Analohiya",
        instructions: "Piliin ang tamang salita para makumpleto ang analohiya.",
        section: .cognition,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Adobo : Toyo :: Sinigang : ___",
                options: ["Sampalok", "Asukal", "Gata", "Mantika"],
                correctAnswer: "Sampalok",
                explanation: "Ang toyo ang nagbibigay lasa sa adobo; ang sampalok ang nagpapaasim sa sinigang."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Aso : Tahol :: Pusa : ___",
                options: ["Tilaok", "Ngiyaw", "Huni", "Ungol"],
                correctAnswer: "Ngiyaw",
                explanation: "Ang tahol ang tunog ng aso; ang ngiyaw ang tunog ng pusa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mata : Paningin :: Tainga : ___",
                options: ["Pang-amoy", "Panlasa", "Pandinig", "Pandama"],
                correctAnswer: "Pandinig",
                explanation: "Ang mata ay para sa paningin; ang tainga ay para sa pandinig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kutsara : Pagkain :: Baso : ___",
                options: ["Sabaw", "Kanin", "Ulam", "Inumin"],
                correctAnswer: "Inumin",
                explanation: "Ang kutsara ay gamit sa pagkain; ang baso ay gamit sa inumin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Guro : Paaralan :: Doktor : ___",
                options: ["Ospital", "Palengke", "Simbahan", "Aklatan"],
                correctAnswer: "Ospital",
                explanation: "Ang guro ay nagtatrabaho sa paaralan; ang doktor ay sa ospital."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ibon : Himpapawid :: Isda : ___",
                options: ["Gubat", "Dagat", "Bundok", "Disyerto"],
                correctAnswer: "Dagat",
                explanation: "Ang ibon ay lumilipad sa himpapawid; ang isda ay lumalangoy sa dagat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Araw : Umaga :: Buwan : ___",
                options: ["Tanghali", "Hapon", "Gabi", "Madaling-araw"],
                correctAnswer: "Gabi",
                explanation: "Ang araw ay nakikita sa umaga; ang buwan ay sa gabi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sapatos : Paa :: Sumbrero : ___",
                options: ["Kamay", "Leeg", "Baywang", "Ulo"],
                correctAnswer: "Ulo",
                explanation: "Ang sapatos ay isinusuot sa paa; ang sumbrero ay sa ulo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Init : Tag-init :: Lamig : ___",
                options: ["Tag-lamig", "Tag-ulan", "Tag-araw", "Tagsibol"],
                correctAnswer: "Tag-lamig",
                explanation: "Ang init ay ramdam sa tag-init; ang lamig ay sa tag-lamig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lapis : Pagsulat :: Gunting : ___",
                options: ["Pagluluto", "Paggupit", "Paglalaba", "Pagwawalis"],
                correctAnswer: "Paggupit",
                explanation: "Ang lapis ay pansulat; ang gunting ay panggupit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Saging : Dilaw :: Dahon : ___",
                options: ["Pula", "Asul", "Berde", "Kayumanggi"],
                correctAnswer: "Berde",
                explanation: "Ang hinog na saging ay dilaw; ang dahon ay berde."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ina : Anak :: Lola : ___",
                options: ["Pamangkin", "Pinsan", "Bayaw", "Apo"],
                correctAnswer: "Apo",
                explanation: "Ang anak ay sa ina; ang apo ay sa lola."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kalabaw : Bukid :: Jeepney : ___",
                options: ["Kalsada", "Dagat", "Langit", "Gubat"],
                correctAnswer: "Kalsada",
                explanation: "Ang kalabaw ay nasa bukid; ang jeepney ay bumibiyahe sa kalsada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bigas : Kanin :: Harina : ___",
                options: ["Gatas", "Tinapay", "Itlog", "Asukal"],
                correctAnswer: "Tinapay",
                explanation: "Ang bigas ay nagiging kanin; ang harina ay nagiging tinapay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Susi : Kandado :: Suklay : ___",
                options: ["Ngipin", "Kuko", "Buhok", "Damit"],
                correctAnswer: "Buhok",
                explanation: "Ang susi ay pambukas ng kandado; ang suklay ay pang-ayos ng buhok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mainit : Malamig :: Maliwanag : ___",
                options: ["Makinang", "Maaliwalas", "Makulay", "Madilim"],
                correctAnswer: "Madilim",
                explanation: "Magkasalungat ang mainit at malamig, gayundin ang maliwanag at madilim."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Malaki : Maliit :: Mahaba : ___",
                options: ["Maikli", "Malapad", "Makitid", "Mataas"],
                correctAnswer: "Maikli",
                explanation: "Magkasalungat ang malaki at maliit, gayundin ang mahaba at maikli."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pintor : Pintura :: Manunulat : ___",
                options: ["Martilyo", "Panulat", "Plantsa", "Kutsilyo"],
                correctAnswer: "Panulat",
                explanation: "Ang pintor ay gumagamit ng pintura; ang manunulat ay ng panulat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bubuyog : Pulot :: Manok : ___",
                options: ["Gatas", "Balahibo", "Itlog", "Pakpak"],
                correctAnswer: "Itlog",
                explanation: "Ang bubuyog ay gumagawa ng pulot; ang manok ay nangingitlog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Libro : Pagbasa :: Kanta : ___",
                options: ["Pagsayaw", "Pagguhit", "Pagtakbo", "Pag-awit"],
                correctAnswer: "Pag-awit",
                explanation: "Ang libro ay binabasa; ang kanta ay inaawit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kamay : Guwantes :: Paa : ___",
                options: ["Medyas", "Sinturon", "Kuwintas", "Salamin"],
                correctAnswer: "Medyas",
                explanation: "Ang guwantes ay pantakip sa kamay; ang medyas ay sa paa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ulan : Payong :: Init : ___",
                options: ["Kumot", "Pamaypay", "Bota", "Kapote"],
                correctAnswer: "Pamaypay",
                explanation: "Ang payong ay panangga sa ulan; ang pamaypay ay pantanggal ng init."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bumbero : Sunog :: Pulis : ___",
                options: ["Sakit", "Baha", "Krimen", "Lindol"],
                correctAnswer: "Krimen",
                explanation: "Ang bumbero ay tumutugon sa sunog; ang pulis ay sa krimen."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Halo-halo : Malamig :: Sopas : ___",
                options: ["Maasim", "Mapait", "Maalat", "Mainit"],
                correctAnswer: "Mainit",
                explanation: "Ang halo-halo ay inihahaing malamig; ang sopas ay mainit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Puno : Ugat :: Bahay : ___",
                options: ["Pundasyon", "Bubong", "Bintana", "Pinto"],
                correctAnswer: "Pundasyon",
                explanation: "Ang ugat ang humahawak sa puno; ang pundasyon ang sa bahay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kusina : Pagluluto :: Banyo : ___",
                options: ["Pagtulog", "Paliligo", "Pagkain", "Pag-aaral"],
                correctAnswer: "Paliligo",
                explanation: "Sa kusina nagluluto; sa banyo naliligo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kotse : Garahe :: Eroplano : ___",
                options: ["Pantalan", "Istasyon", "Hangar", "Paradahan ng bus"],
                correctAnswer: "Hangar",
                explanation: "Ang kotse ay iniimbak sa garahe; ang eroplano ay sa hangar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Piloto : Eroplano :: Kapitan : ___",
                options: ["Traysikel", "Kotse", "Tren", "Barko"],
                correctAnswer: "Barko",
                explanation: "Ang piloto ang nagpapalipad ng eroplano; ang kapitan ang namumuno sa barko."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rosas : Bulaklak :: Mangga : ___",
                options: ["Prutas", "Gulay", "Puno", "Ugat"],
                correctAnswer: "Prutas",
                explanation: "Ang rosas ay uri ng bulaklak; ang mangga ay uri ng prutas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tainga : Dalawa :: Daliri ng mga kamay : ___",
                options: ["Lima", "Sampu", "Apat", "Dalawampu"],
                correctAnswer: "Sampu",
                explanation: "Dalawa ang tainga ng tao; sampu ang daliri ng dalawang kamay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Segundo : Minuto :: Minuto : ___",
                options: ["Araw", "Linggo", "Oras", "Buwan"],
                correctAnswer: "Oras",
                explanation: "Ang mga segundo ay bumubuo ng minuto; ang mga minuto ay bumubuo ng oras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lunes : Martes :: Enero : ___",
                options: ["Disyembre", "Marso", "Hunyo", "Pebrero"],
                correctAnswer: "Pebrero",
                explanation: "Ang Martes ang sumusunod sa Lunes; ang Pebrero ang sumusunod sa Enero."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Umaga : Almusal :: Gabi : ___",
                options: ["Hapunan", "Meryenda", "Tanghalian", "Minindal"],
                correctAnswer: "Hapunan",
                explanation: "Almusal ang kinakain sa umaga; hapunan ang sa gabi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Baka : Guya :: Manok : ___",
                options: ["Biik", "Sisiw", "Kuting", "Tuta"],
                correctAnswer: "Sisiw",
                explanation: "Ang anak ng baka ay guya; ang anak ng manok ay sisiw."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sundalo : Hukbo :: Manlalaro : ___",
                options: ["Paaralan", "Opisina", "Koponan", "Simbahan"],
                correctAnswer: "Koponan",
                explanation: "Ang sundalo ay bahagi ng hukbo; ang manlalaro ay bahagi ng koponan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Panadero : Tinapay :: Magsasaka : ___",
                options: ["Isda", "Sapatos", "Damit", "Palay"],
                correctAnswer: "Palay",
                explanation: "Ang panadero ay gumagawa ng tinapay; ang magsasaka ay nagtatanim ng palay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lamig : Kumot :: Gutom : ___",
                options: ["Pagkain", "Tubig", "Gamot", "Tulog"],
                correctAnswer: "Pagkain",
                explanation: "Ang kumot ang panlaban sa lamig; ang pagkain ang panlaban sa gutom."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ngipin : Sipilyo :: Buhok : ___",
                options: ["Sabon", "Suklay", "Tuwalya", "Gunting"],
                correctAnswer: "Suklay",
                explanation: "Ang sipilyo ay panlinis ng ngipin; ang suklay ay pang-ayos ng buhok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bata : Matanda :: Bago : ___",
                options: ["Sariwa", "Makintab", "Luma", "Malinis"],
                correctAnswer: "Luma",
                explanation: "Magkasalungat ang bata at matanda, gayundin ang bago at luma."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Puti : Itim :: Umaga : ___",
                options: ["Tanghali", "Hapon", "Bukang-liwayway", "Gabi"],
                correctAnswer: "Gabi",
                explanation: "Magkasalungat ang puti at itim, gayundin ang umaga at gabi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kandila : Liwanag :: Radyo : ___",
                options: ["Tunog", "Amoy", "Lasa", "Init"],
                correctAnswer: "Tunog",
                explanation: "Ang kandila ay nagbibigay ng liwanag; ang radyo ay ng tunog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dagat : Maalat :: Asukal : ___",
                options: ["Maasim", "Matamis", "Mapait", "Maanghang"],
                correctAnswer: "Matamis",
                explanation: "Maalat ang tubig-dagat; matamis ang asukal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Paa : Paglakad :: Pakpak : ___",
                options: ["Paglangoy", "Pagtakbo", "Paglipad", "Paggapang"],
                correctAnswer: "Paglipad",
                explanation: "Ang paa ay ginagamit sa paglakad; ang pakpak ay sa paglipad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Doktor : Gamot :: Guro : ___",
                options: ["Reseta", "Pagkain", "Sasakyan", "Aralin"],
                correctAnswer: "Aralin",
                explanation: "Ang doktor ay nagbibigay ng gamot; ang guro ay nagbibigay ng aralin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Orasan : Oras :: Termometro : ___",
                options: ["Temperatura", "Timbang", "Bilis", "Layo"],
                correctAnswer: "Temperatura",
                explanation: "Ang orasan ay sumusukat ng oras; ang termometro ay ng temperatura."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pera : Pitaka :: Damit : ___",
                options: ["Ref", "Aparador", "Lababo", "Kalan"],
                correctAnswer: "Aparador",
                explanation: "Ang pera ay itinatago sa pitaka; ang damit ay sa aparador."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Isda : Kaliskis :: Ibon : ___",
                options: ["Sungay", "Buntot", "Balahibo", "Pangil"],
                correctAnswer: "Balahibo",
                explanation: "Ang katawan ng isda ay may kaliskis; ang ibon ay may balahibo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sinigang : Maasim :: Leche flan : ___",
                options: ["Maalat", "Mapait", "Maanghang", "Matamis"],
                correctAnswer: "Matamis",
                explanation: "Maasim ang sinigang; matamis ang leche flan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tasa : Kape :: Mangkok : ___",
                options: ["Sabaw", "Kanin", "Tinapay", "Karne"],
                correctAnswer: "Sabaw",
                explanation: "Ang kape ay inilalagay sa tasa; ang sabaw ay sa mangkok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lungsod : Maynila :: Bansa : ___",
                options: ["Cebu", "Pilipinas", "Luzon", "Asya"],
                correctAnswer: "Pilipinas",
                explanation: "Ang Maynila ay halimbawa ng lungsod; ang Pilipinas ay halimbawa ng bansa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Aklat : Pahina :: Bahay : ___",
                options: ["Kalsada", "Bakuran", "Silid", "Bubong"],
                correctAnswer: "Silid",
                explanation: "Ang aklat ay binubuo ng mga pahina; ang bahay ay ng mga silid."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gutom : Kumain :: Uhaw : ___",
                options: ["Matulog", "Maglakad", "Magbasa", "Uminom"],
                correctAnswer: "Uminom",
                explanation: "Kapag gutom ay kumakain; kapag uhaw ay umiinom."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Antok : Matulog :: Pagod : ___",
                options: ["Magpahinga", "Magtrabaho", "Tumakbo", "Maglinis"],
                correctAnswer: "Magpahinga",
                explanation: "Kapag inaantok ay natutulog; kapag pagod ay nagpapahinga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sinturon : Baywang :: Relo : ___",
                options: ["Balikat", "Pulso", "Tuhod", "Leeg"],
                correctAnswer: "Pulso",
                explanation: "Ang sinturon ay isinusuot sa baywang; ang relo ay sa pulso."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kalan : Pagpapainit :: Ref : ___",
                options: ["Paglilinis", "Pagpapatuyo", "Pagpapalamig", "Paghahalo"],
                correctAnswer: "Pagpapalamig",
                explanation: "Ang kalan ay nagpapainit ng pagkain; ang ref ay nagpapalamig."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bola : Bilog :: Kahon : ___",
                options: ["Tatsulok", "Bituin", "Puso", "Parisukat"],
                correctAnswer: "Parisukat",
                explanation: "Bilog ang hugis ng bola; parisukat ang mukha ng kahon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Apoy : Usok :: Bulaklak : ___",
                options: ["Bango", "Tinik", "Dahon", "Ugat"],
                correctAnswer: "Bango",
                explanation: "Mula sa apoy ay may usok; mula sa bulaklak ay may bango."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sastre : Damit :: Karpintero : ___",
                options: ["Tinapay", "Muwebles", "Gamot", "Litrato"],
                correctAnswer: "Muwebles",
                explanation: "Ang sastre ay gumagawa ng damit; ang karpintero ay ng muwebles."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ospital : Pasyente :: Paaralan : ___",
                options: ["Doktor", "Guro", "Mag-aaral", "Nars"],
                correctAnswer: "Mag-aaral",
                explanation: "Ang pasyente ay inaalagaan sa ospital; ang mag-aaral ay tinuturuan sa paaralan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kamera : Litrato :: Radyo : ___",
                options: ["Pelikula", "Sulat", "Larawan", "Musika"],
                correctAnswer: "Musika",
                explanation: "Ang kamera ay kumukuha ng litrato; ang radyo ay nagpapatugtog ng musika."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mansanas : Puno :: Ubas : ___",
                options: ["Baging", "Ugat", "Buto", "Dahon"],
                correctAnswer: "Baging",
                explanation: "Ang mansanas ay tumutubo sa puno; ang ubas ay sa baging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kalamansi : Maasim :: Pulot : ___",
                options: ["Maalat", "Matamis", "Mapait", "Maanghang"],
                correctAnswer: "Matamis",
                explanation: "Maasim ang kalamansi; matamis ang pulot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Salita : Pangungusap :: Pangungusap : ___",
                options: ["Titik", "Tula", "Talata", "Kuwento"],
                correctAnswer: "Talata",
                explanation: "Ang mga salita ay bumubuo ng pangungusap; ang mga pangungusap ay bumubuo ng talata."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tubig : Baso :: Sabaw : ___",
                options: ["Plato", "Tasa", "Kaldero", "Mangkok"],
                correctAnswer: "Mangkok",
                explanation: "Ang tubig ay iniinom sa baso; ang sabaw ay hinihigop mula sa mangkok."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Barya : Metal :: Perang papel : ___",
                options: ["Papel", "Plastik", "Tela", "Kahoy"],
                correctAnswer: "Papel",
                explanation: "Ang barya ay gawa sa metal; ang perang papel ay sa papel."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tulog : Gabi :: Gising : ___",
                options: ["Hatinggabi", "Umaga", "Hapon", "Takipsilim"],
                correctAnswer: "Umaga",
                explanation: "Karaniwang natutulog sa gabi at gumigising sa umaga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sakit : Gamot :: Dumi : ___",
                options: ["Tubig", "Suklay", "Sabon", "Tuwalya"],
                correctAnswer: "Sabon",
                explanation: "Ang gamot ang panlaban sa sakit; ang sabon ang panlinis ng dumi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lolo : Lola :: Ama : ___",
                options: ["Anak", "Apo", "Pinsan", "Ina"],
                correctAnswer: "Ina",
                explanation: "Ang lolo at lola ay magkapareha, gayundin ang ama at ina."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kuya : Ate :: Tiyuhin : ___",
                options: ["Tiyahin", "Lola", "Pamangkin", "Inaanak"],
                correctAnswer: "Tiyahin",
                explanation: "Ang kuya ay lalaki at ang ate ay babae; ang tiyuhin ay lalaki at ang tiyahin ay babae."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Kaarawan : Keyk :: Pasko : ___",
                options: ["Kandila", "Regalo", "Bandila", "Lobo"],
                correctAnswer: "Regalo",
                explanation: "Ang keyk ay simbolo ng kaarawan; ang regalo ay ng Pasko."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Simbahan : Pari :: Korte : ___",
                options: ["Nars", "Tindero", "Hukom", "Tsuper"],
                correctAnswer: "Hukom",
                explanation: "Ang pari ang namumuno sa simbahan; ang hukom ang sa korte."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palengke : Pamimili :: Aklatan : ___",
                options: ["Pagluluto", "Paglalaro", "Pagtulog", "Pagbabasa"],
                correctAnswer: "Pagbabasa",
                explanation: "Sa palengke namimili; sa aklatan nagbabasa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gulay : Karot :: Prutas : ___",
                options: ["Mangga", "Sibuyas", "Kamatis", "Talong"],
                correctAnswer: "Mangga",
                explanation: "Ang karot ay halimbawa ng gulay; ang mangga ay ng prutas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Trak : Malaki :: Bisikleta : ___",
                options: ["Mabigat", "Maliit", "Mahaba", "Mataas"],
                correctAnswer: "Maliit",
                explanation: "Malaki ang trak; maliit ang bisikleta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pako : Martilyo :: Turnilyo : ___",
                options: ["Lagari", "Liyabe", "Distornilyador", "Plais"],
                correctAnswer: "Distornilyador",
                explanation: "Ang pako ay pinupukpok ng martilyo; ang turnilyo ay iniikot ng distornilyador."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sulat : Sobre :: Regalo : ___",
                options: ["Selyo", "Laso", "Papel", "Kahon"],
                correctAnswer: "Kahon",
                explanation: "Ang sulat ay inilalagay sa sobre; ang regalo ay sa kahon."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Puno : Gubat :: Bahay : ___",
                options: ["Baryo", "Dagat", "Bundok", "Ilog"],
                correctAnswer: "Baryo",
                explanation: "Maraming puno sa gubat; maraming bahay sa baryo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Saya : Ngiti :: Lungkot : ___",
                options: ["Tawa", "Luha", "Halakhak", "Palakpak"],
                correctAnswer: "Luha",
                explanation: "Ang ngiti ay tanda ng saya; ang luha ay ng lungkot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lechon : Pista :: Pansit : ___",
                options: ["Pasko", "Kasal", "Kaarawan", "Binyag"],
                correctAnswer: "Kaarawan",
                explanation: "Ang lechon ang pangunahing handa sa pista; ang pansit ay sa kaarawan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tsaa : Mainit :: Sorbetes : ___",
                options: ["Maasim", "Maalat", "Mapait", "Malamig"],
                correctAnswer: "Malamig",
                explanation: "Ang tsaa ay iniinom nang mainit; ang sorbetes ay kinakain nang malamig."
            )
        ]
    )
}
