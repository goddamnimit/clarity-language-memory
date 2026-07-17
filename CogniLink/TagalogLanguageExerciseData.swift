import Foundation

struct TagalogLanguageExerciseData {
    static let allExercises: [Exercise] = [
        categoryCrossOutEasy,
        categoryCrossOutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonyms,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencing,
        idioms,
        rhymingPairs,
        wordAssociation,
        completingProverbs,
        compoundWords,
        prefixesSuffixes,
    ]

    private static let categoryCrossOutEasy = Exercise(
        id: UUID(),
        title: "Kategorya Cross-Out (Madali)",
        instructions: "I-tap ang salitang HINDI kabilang sa grupo.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "MANSANAS, PERAS, KAROT, UBAS", options: ["MANSANAS", "PERAS", "KAROT", "UBAS"], correctAnswer: "KAROT", explanation: "Ang karot ay gulay; ang iba ay prutas."),
            ExerciseItem(id: UUID(), prompt: "KOTSE, BUS, KUTSARA, TRAK", options: ["KOTSE", "BUS", "KUTSARA", "TRAK"], correctAnswer: "KUTSARA", explanation: "Ang kutsara ay kubyertos; ang iba ay sasakyan."),
            ExerciseItem(id: UUID(), prompt: "GINTO, PUSA, ASO, IBON", options: ["GINTO", "PUSA", "ASO", "IBON"], correctAnswer: "GINTO", explanation: "Ang ginto ay metal; ang iba ay hayop."),
            ExerciseItem(id: UUID(), prompt: "KAMISETA, PANTALON, TINIDOR, SUMBRERO", options: ["KAMISETA", "PANTALON", "TINIDOR", "SUMBRERO"], correctAnswer: "TINIDOR", explanation: "Ang tinidor ay kubyertos; ang iba ay kasuotan."),
            ExerciseItem(id: UUID(), prompt: "UPUAN, MESA, MANSANAS, KAMA", options: ["UPUAN", "MESA", "MANSANAS", "KAMA"], correctAnswer: "MANSANAS", explanation: "Ang mansanas ay pagkain; ang iba ay muwebles."),
            ExerciseItem(id: UUID(), prompt: "MARTILYO, LIYABE, UNAN, LAGARI", options: ["MARTILYO", "LIYABE", "UNAN", "LAGARI"], correctAnswer: "UNAN", explanation: "Ang unan ay gamit sa pagtulog; ang iba ay kasangkapan."),
            ExerciseItem(id: UUID(), prompt: "ENERO, MARSO, BIYERNES, MAYO", options: ["ENERO", "MARSO", "BIYERNES", "MAYO"], correctAnswer: "BIYERNES", explanation: "Ang Biyernes ay araw ng linggo; ang iba ay buwan."),
            ExerciseItem(id: UUID(), prompt: "MAYNILA, CEBU, JUPITER, DAVAO", options: ["MAYNILA", "CEBU", "JUPITER", "DAVAO"], correctAnswer: "JUPITER", explanation: "Ang Jupiter ay planeta; ang iba ay lungsod sa Pilipinas."),
            ExerciseItem(id: UUID(), prompt: "ASO, PUSA, PUNO, DAGA", options: ["ASO", "PUSA", "PUNO", "DAGA"], correctAnswer: "PUNO", explanation: "Ang puno ay halaman; ang iba ay hayop."),
            ExerciseItem(id: UUID(), prompt: "MATA, ILONG, KOTSE, TAINGA", options: ["MATA", "ILONG", "KOTSE", "TAINGA"], correctAnswer: "KOTSE", explanation: "Ang kotse ay sasakyan; ang iba ay bahagi ng katawan."),
            ExerciseItem(id: UUID(), prompt: "GATAS, JUICE, TINAPAY, TUBIG", options: ["GATAS", "JUICE", "TINAPAY", "TUBIG"], correctAnswer: "TINAPAY", explanation: "Ang tinapay ay pagkain; ang iba ay inumin."),
            ExerciseItem(id: UUID(), prompt: "SOPA, KAMA, KALAN, UPUAN", options: ["SOPA", "KAMA", "KALAN", "UPUAN"], correctAnswer: "KALAN", explanation: "Ang kalan ay gamit sa pagluluto; ang iba ay muwebles."),
            ExerciseItem(id: UUID(), prompt: "ROSAS, TULIPAN, SAMPAGITA, KOTSE", options: ["ROSAS", "TULIPAN", "SAMPAGITA", "KOTSE"], correctAnswer: "KOTSE", explanation: "Ang kotse ay sasakyan; ang iba ay bulaklak."),
            ExerciseItem(id: UUID(), prompt: "BOLPEN, LAPIS, KRAYOLA, KUTSILYO", options: ["BOLPEN", "LAPIS", "KRAYOLA", "KUTSILYO"], correctAnswer: "KUTSILYO", explanation: "Ang kutsilyo ay panghiwa; ang iba ay pansulat."),
            ExerciseItem(id: UUID(), prompt: "BANIG, UNAN, KUMOT, MANOK", options: ["BANIG", "UNAN", "KUMOT", "MANOK"], correctAnswer: "MANOK", explanation: "Ang manok ay hayop; ang iba ay gamit sa pagtulog."),
            ExerciseItem(id: UUID(), prompt: "ARAW, ULAN, HANGIN, KAMISETA", options: ["ARAW", "ULAN", "HANGIN", "KAMISETA"], correctAnswer: "KAMISETA", explanation: "Ang kamiseta ay damit; ang iba ay tungkol sa panahon."),
            ExerciseItem(id: UUID(), prompt: "PLATO, MANGKOK, BASO, SAPATOS", options: ["PLATO", "MANGKOK", "BASO", "SAPATOS"], correctAnswer: "SAPATOS", explanation: "Ang sapatos ay kasuotan; ang iba ay lalagyan ng pagkain o inumin."),
            ExerciseItem(id: UUID(), prompt: "BUS, TREN, BANGKA, PUSA", options: ["BUS", "TREN", "BANGKA", "PUSA"], correctAnswer: "PUSA", explanation: "Ang pusa ay hayop; ang iba ay sasakyan."),
            ExerciseItem(id: UUID(), prompt: "MEDYAS, SAPATOS, TSINELAS, KALDERO", options: ["MEDYAS", "SAPATOS", "TSINELAS", "KALDERO"], correctAnswer: "KALDERO", explanation: "Ang kaldero ay gamit sa pagluluto; ang iba ay isinusuot sa paa."),
            ExerciseItem(id: UUID(), prompt: "PUSA, ASO, IBON, TRAK", options: ["PUSA", "ASO", "IBON", "TRAK"], correctAnswer: "TRAK", explanation: "Ang trak ay sasakyan; ang iba ay hayop."),
            ExerciseItem(id: UUID(), prompt: "MARSO, ABRIL, MARTES, HUNYO", options: ["MARSO", "ABRIL", "MARTES", "HUNYO"], correctAnswer: "MARTES", explanation: "Ang Martes ay araw ng linggo; ang iba ay buwan."),
            ExerciseItem(id: UUID(), prompt: "PULA, ASUL, MESA, BERDE", options: ["PULA", "ASUL", "MESA", "BERDE"], correctAnswer: "MESA", explanation: "Ang mesa ay muwebles; ang iba ay kulay."),
            ExerciseItem(id: UUID(), prompt: "KUTSILYO, TINIDOR, KUTSARA, KAMA", options: ["KUTSILYO", "TINIDOR", "KUTSARA", "KAMA"], correctAnswer: "KAMA", explanation: "Ang kama ay muwebles; ang iba ay kubyertos."),
            ExerciseItem(id: UUID(), prompt: "AGILA, LAWIN, KUWAGO, BANGUS", options: ["AGILA", "LAWIN", "KUWAGO", "BANGUS"], correctAnswer: "BANGUS", explanation: "Ang bangus ay isda; ang iba ay ibon."),
            ExerciseItem(id: UUID(), prompt: "PISO, SENTIMO, DOLYAR, DYAKET", options: ["PISO", "SENTIMO", "DOLYAR", "DYAKET"], correctAnswer: "DYAKET", explanation: "Ang dyaket ay damit; ang iba ay pera."),
            ExerciseItem(id: UUID(), prompt: "LEON, OSO, TIGRE, PIZZA", options: ["LEON", "OSO", "TIGRE", "PIZZA"], correctAnswer: "PIZZA", explanation: "Ang pizza ay pagkain; ang iba ay hayop."),
            ExerciseItem(id: UUID(), prompt: "PAPAYA, SAGING, SIBUYAS, PAKWAN", options: ["PAPAYA", "SAGING", "SIBUYAS", "PAKWAN"], correctAnswer: "SIBUYAS", explanation: "Ang sibuyas ay gulay; ang iba ay prutas."),
            ExerciseItem(id: UUID(), prompt: "APARADOR, MESA, UPUAN, LUMBA-LUMBA", options: ["APARADOR", "MESA", "UPUAN", "LUMBA-LUMBA"], correctAnswer: "LUMBA-LUMBA", explanation: "Ang lumba-lumba ay hayop sa dagat; ang iba ay muwebles."),
            ExerciseItem(id: UUID(), prompt: "MAYA, AGILA, TILAPIA, LORO", options: ["MAYA", "AGILA", "TILAPIA", "LORO"], correctAnswer: "TILAPIA", explanation: "Ang tilapia ay isda; ang iba ay ibon."),
            ExerciseItem(id: UUID(), prompt: "BASKETBOL, TENIS, AHEDRES, SOCCER", options: ["BASKETBOL", "TENIS", "AHEDRES", "SOCCER"], correctAnswer: "AHEDRES", explanation: "Ang ahedres ay larong pang-isip sa tabla; ang iba ay pisikal na isport.")
        ]
    )

    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "Kategorya Cross-Out (Mahirap)",
        instructions: "I-tap ang salitang HINDI kabilang sa grupo.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "SIMILE, METAPHOR, HYPERBOLE, PARAGRAPH", options: ["SIMILE", "METAPHOR", "HYPERBOLE", "TALATA"], correctAnswer: "TALATA", explanation: "Text structure, hindi isang figure of speech"),
            ExerciseItem(id: UUID(), prompt: "FEMUR, TIBIA, RADIUS, CORNEA", options: ["FEMUR", "TIBIA", "RADIUS", "CORNEA"], correctAnswer: "CORNEA", explanation: "Bahagi ng mata, hindi buto"),
            ExerciseItem(id: UUID(), prompt: "BEETHOVEN, MOZART, PICASSO, CHOPIN", options: ["BEETHOVEN", "MOZART", "PICASSO", "CHOPIN"], correctAnswer: "PICASSO", explanation: "Isang pintor, hindi isang kompositor"),
            ExerciseItem(id: UUID(), prompt: "CARDIGAN, BLAZER, TURTLENECK, STILETTO", options: ["CARDIGAN", "BLAZER", "TURTLENECK", "STILETTO"], correctAnswer: "STILETTO", explanation: "Isang sapatos, hindi pang-itaas na damit"),
            ExerciseItem(id: UUID(), prompt: "THAMES, NILE, AMAZON, EVEREST", options: ["THAMES", "NILE", "AMAZON", "EVEREST"], correctAnswer: "EVEREST", explanation: "Isang bundok, hindi isang ilog"),
            ExerciseItem(id: UUID(), prompt: "MEMOIR, BIOGRAPHY, AUTOBIOGRAPHY, SONNET", options: ["MEMOIR", "TALAMBUHAY", "AUTOBIOGRAPHY", "SONNET"], correctAnswer: "SONNET", explanation: "Isang tula, hindi isang salaysay ng buhay"),
            ExerciseItem(id: UUID(), prompt: "INSULIN, ADRENALINE, ESTROGEN, IBUPROFEN", options: ["INSULIN", "ADRENALINE", "ESTROGEN", "IBUPROFEN"], correctAnswer: "IBUPROFEN", explanation: "Isang gawang gamot, hindi isang natural na nagaganap na hormone"),
            ExerciseItem(id: UUID(), prompt: "CELSIUS, FAHRENHEIT, KELVIN, DECIBEL", options: ["CELSIUS", "FAHRENHEIT", "KELVIN", "DECIBEL"], correctAnswer: "DECIBEL", explanation: "Sinusukat ang tunog, hindi ang temperatura"),
            ExerciseItem(id: UUID(), prompt: "JURY, JUDGE, BAILIFF, PLAINTIFF", options: ["HURADO", "HUKOM", "BAILIFF", "NAGSAKLA"], correctAnswer: "NAGSAKLA", explanation: "Isang partido sa kaso, hindi isang opisyal ng korte"),
            ExerciseItem(id: UUID(), prompt: "SONNET, HAIKU, LIMERICK, PROSE", options: ["SONNET", "HAIKU", "LIMERIC", "PROSE"], correctAnswer: "PROSE", explanation: "Hindi isang anyo ng tula"),
            ExerciseItem(id: UUID(), prompt: "SOPRANO, ALTO, TENOR, CONDUCTOR", options: ["SOPRANO", "ALTO", "TENOR", "CONDUCTOR"], correctAnswer: "CONDUCTOR", explanation: "Namumuno sa orkestra, hindi isang uri ng boses sa pagkanta"),
            ExerciseItem(id: UUID(), prompt: "IMPRESSIONISMO, SURREALISM, CUBISM, JAZZ", options: ["IMPRESSIONISMO", "SUREALISMO", "KUBISMO", "JAZZ"], correctAnswer: "JAZZ", explanation: "Isang genre ng musika, hindi isang visual art movement"),
            ExerciseItem(id: UUID(), prompt: "STOCKHOLM, OSLO, HELSINKI, BRUSSELS", options: ["STOCKHOLM", "OSLO", "HELSINKI", "BRUSSELS"], correctAnswer: "BRUSSELS", explanation: "Belgium, hindi isang Scandinavian capital"),
            ExerciseItem(id: UUID(), prompt: "RUBY, SAPPHIRE, EMERALD, GRANITE", options: ["RUBY", "SAPPHIRE", "EMERALD", "GRANITE"], correctAnswer: "GRANITE", explanation: "Isang bato, hindi isang batong hiyas"),
            ExerciseItem(id: UUID(), prompt: "APPENDIX, GALLBLADDER, PANCREAS, FEMUR", options: ["APENDIKS", "GALLBLADDER", "PANCREAS", "FEMUR"], correctAnswer: "FEMUR", explanation: "Isang buto, hindi isang organ"),
            ExerciseItem(id: UUID(), prompt: "CELLO, VIOLA, HARP, OBOE", options: ["CELLO", "VIOLA", "HARP", "OBOE"], correctAnswer: "OBOE", explanation: "Isang woodwind, hindi isang string instrument"),
            ExerciseItem(id: UUID(), prompt: "FRESCO, MOSAIC, LITHOGRAPH, SONATA", options: ["FRESCO", "MOSAIC", "LITHOGRAPH", "SONATA"], correctAnswer: "SONATA", explanation: "Musika, hindi isang visual art form"),
            ExerciseItem(id: UUID(), prompt: "ARCHIPELAGO, FJORD, PLATEAU, DIALECT", options: ["ARCHIPELAGO", "FJORD", "PLATEAU", "DIALEKTO"], correctAnswer: "DIALEKTO", explanation: "Ang pagkakaiba-iba ng wika, hindi isang heyograpikong tampok"),
            ExerciseItem(id: UUID(), prompt: "MAGNESIUM, CALCIUM, POTASSIUM, PETROLEUM", options: ["MAGNESIUM", "CALCIUM", "POTASSIUM", "PETROLEUM"], correctAnswer: "PETROLEUM", explanation: "Isang fossil fuel, hindi isang mineral na elemento"),
            ExerciseItem(id: UUID(), prompt: "FLAMENCO, TANGO, WALTZ, OPERA", options: ["FLAMENCO", "TANGO", "WALTZ", "OPERA"], correctAnswer: "OPERA", explanation: "Isang vocal performance art, hindi isang sayaw"),
            ExerciseItem(id: UUID(), prompt: "ARTERY, VEIN, CAPILLARY, TENDON", options: ["ARTERY", "VEIN", "CAPILLARY", "TENDON"], correctAnswer: "TENDON", explanation: "Ikinokonekta ang kalamnan sa buto, hindi isang daluyan ng dugo"),
            ExerciseItem(id: UUID(), prompt: "TUNDRA, TAIGA, SAVANNA, DELTA", options: ["TUNDRA", "TAIGA", "SAVANNA", "DELTA"], correctAnswer: "DELTA", explanation: "Isang anyong lupa sa bukana ng ilog, hindi isang biome"),
            ExerciseItem(id: UUID(), prompt: "BAGYO, CYCLONE, MONSOON, TREMOR", options: ["BAGYO", "CYCLONE", "MONSOON", "Panginginig"], correctAnswer: "Panginginig", explanation: "Ang paggalaw ng seismic, hindi isang kaganapan sa panahon"),
            ExerciseItem(id: UUID(), prompt: "CARTILAGE, LIGAMENT, TENDON, NEURON", options: ["CARTILAGE", "LIGAMENTO", "TENDON", "NEURON"], correctAnswer: "NEURON", explanation: "Isang nerve cell, hindi connective tissue")
        ]
    )

    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "Pagkumpleto ng Parirala",
        instructions: "Piliin ang pinaka-angkop na salita para kumpletuhin ang parirala.",
        section: .language,
        type: .multipleChoice,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “kumain ng ___”", options: ["kanin", "tubig", "hangin", "papel"], correctAnswer: "kanin", explanation: "Sa kulturang Pilipino, ang karaniwang kinakain sa bawat oras ng pagkain ay kanin."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “uminom ng ___”", options: ["tubig", "kanin", "bato", "sapatos"], correctAnswer: "tubig", explanation: "Ang tubig ang pinakakaraniwang likido na iniinom upang mapawi ang uhaw."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magsuot ng ___”", options: ["damit", "laro", "ulan", "papel"], correctAnswer: "damit", explanation: "Ang damit ang isinusuot sa katawan araw-araw."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “sumakay sa ___”", options: ["kotse", "tubig", "hangin", "papel"], correctAnswer: "kotse", explanation: "Ang kotse o sasakyan ang sinasakyan para makapunta sa ibang lugar."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “tumawid sa ___”", options: ["kalsada", "hangin", "bahay", "aso"], correctAnswer: "kalsada", explanation: "Ang kalsada o tawiran ang tinatawid ng mga tao nang may pag-iingat."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “maghugas ng ___”", options: ["kamay", "utak", "damit", "papel"], correctAnswer: "kamay", explanation: "Ang paghuhugas ng kamay ay mahalaga bago kumain upang maiwasan ang sakit."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “matulog sa ___”", options: ["kama", "mesa", "kotse", "sahig"], correctAnswer: "kama", explanation: "Ang kama ang karaniwang higaan para sa komportableng pagtulog."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magbasa ng ___”", options: ["libro", "tubig", "hangin", "damit"], correctAnswer: "libro", explanation: "Ang libro o aklat ang binabasa upang makakuha ng impormasyon o kaalaman."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “sumulat ng ___”", options: ["liham", "ulan", "pagkain", "sapatos"], correctAnswer: "liham", explanation: "Ang liham o sulat ang isinusulat para sa isang kaibigan o kamag-anak."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “tumawag sa ___”", options: ["telepono", "hangin", "tubig", "papel"], correctAnswer: "telepono", explanation: "Ang telepono ang ginagamit sa pakikipag-usap sa malalayong tao."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magtanim ng ___”", options: ["halaman", "ulan", "sapatos", "bahay"], correctAnswer: "halaman", explanation: "Ang halaman o puno ang itinatanim sa bakuran o hardin."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magbukas ng ___”", options: ["pinto", "ulan", "tubig", "sapatos"], correctAnswer: "pinto", explanation: "Ang pinto ang binubuksan upang makapasok sa loob ng silid."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magsara ng ___”", options: ["bintana", "ulan", "pagkain", "damit"], correctAnswer: "bintana", explanation: "Ang bintana ang isinasara kapag umuulan o malamig ang panahon."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “manood ng ___”", options: ["telebisyon", "tubig", "hangin", "kalsada"], correctAnswer: "telebisyon", explanation: "Ang telebisyon ang pinapanood para sa balita o libangan."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “makinig sa ___”", options: ["musika", "ulan", "pagkain", "damit"], correctAnswer: "musika", explanation: "Ang musika o kanta ang pinapakinggan gamit ang radyo o telepono."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magluto ng ___”", options: ["pagkain", "tubig", "hangin", "sapatos"], correctAnswer: "pagkain", explanation: "Ang pagkain tulad ng ulam o kanin ang niluluto sa kusina."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magsuklay ng ___”", options: ["buhok", "kamay", "paa", "mata"], correctAnswer: "buhok", explanation: "Ang suklay ang ginagamit upang ayusin ang gulo-gulong buhok."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magsipilyo ng ___”", options: ["ngipin", "kamay", "paa", "ulo"], correctAnswer: "ngipin", explanation: "Ang pagsisipilyo ng ngipin pagkatapos kumain ay nagpapanatili ng kalinisan ng bibig."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “bumili ng ___”", options: ["pagkain", "ulan", "hangin", "sapatos"], correctAnswer: "pagkain", explanation: "Bumibili tayo ng pagkain o groceries sa tindahan o palengke."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang parirala: “magmaneho ng ___”", options: ["sasakyan", "tubig", "hangin", "papel"], correctAnswer: "sasakyan", explanation: "Ang sasakyan o kotse ang minamaneho sa kalsada.")
        ]
    )

    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "Mga kasingkahulugan (Madali)",
        instructions: "Piliin ang salita na ang ibig sabihin ay PAREHONG sa ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Word: GALIT", options: ["masaya", "galit na galit", "kalmado", "malungkot"], correctAnswer: "galit na galit", explanation: "Ang dalawang salitang ito ay magkasingkahulugan dahil pareho silang tumutukoy sa matinding inis o poot; ang ikalawang kataga ay nagpapakita lamang ng mas masidhi na antas nito."),
            ExerciseItem(id: UUID(), prompt: "Word: MALAMIG", options: ["mainit-init", "nagyeyelo", "mainit", "banayad"], correctAnswer: "nagyeyelo", explanation: "Pareho silang nagsasaad ng mababang temperatura; ang ikalawang salita ay tumutukoy sa sobrang lamig kaya itinuturing itong matinding kasingkahulugan ng una."),
            ExerciseItem(id: UUID(), prompt: "Salita: MALAKI", options: ["maliit", "malaki", "maikli", "manipis"], correctAnswer: "malaki", explanation: "Ang mga ito ay malinaw na magkasalungat dahil inilalarawan nila ang labis na magkaibang mga pisikal na dimensyon, dami, o sukat ng isang partikular na bagay o espasyo."),
            ExerciseItem(id: UUID(), prompt: "Word: PAGOD", options: ["alerto", "gising", "naubos", "nagpahinga"], correctAnswer: "naubos", explanation: "Sa konteksto ng lakas o enerhiya, ang dalawang salitang ito ay magkasingkahulugan dahil pareho nilang inilalarawan ang matinding pagkawala ng sigla at pisikal na kakayahan."),
            ExerciseItem(id: UUID(), prompt: "Salita: TAKOT", options: ["matapang", "takot na takot", "kalmado", "panatag"], correctAnswer: "takot na takot", explanation: "Parehong tumutukoy sa negatibong emosyon ng pangamba o sindak, kung saan ang ikalawa ay ginagamit upang ipahayag ang pinakamatinding bersyon ng nasabing emosyon."),
            ExerciseItem(id: UUID(), prompt: "Word: MABAIT", options: ["ibig sabihin", "malupit", "malumanay", "bastos"], correctAnswer: "malumanay", explanation: "Magkasingkahulugan ang mga ito dahil pareho silang naglalarawan ng positibo, maamo, at magiliw na pakikitungo sa ibang tao nang walang bahid ng karahasan."),
            ExerciseItem(id: UUID(), prompt: "Word: MABILIS", options: ["mabagal", "mabilis", "tamad", "mapurol"], correctAnswer: "mabilis", explanation: "Magkasingkahulugan ito dahil inuulit lamang nito ang parehong ideya ng pagkakaroon ng matulin at hindi mabagal na pagkilos o pag-usad."),
            ExerciseItem(id: UUID(), prompt: "Word: LUMA", options: ["bata pa", "sinaunang", "bago", "sariwa"], correctAnswer: "sinaunang", explanation: "Pareho silang naglalarawan ng isang bagay na matagal nang panahon ang nakalipas; ang ikalawang salita ay mas pormal na kasingkahulugan na kadalasang ginagamit sa kasaysayan."),
            ExerciseItem(id: UUID(), prompt: "Salita: MADUMI", options: ["malinis", "marumi", "maayos", "makintab"], correctAnswer: "marumi", explanation: "Ang mga salitang ito ay magkasingkahulugan; sila ay mga alternatibong pagbaybay at pagbigkas lamang para sa iisang konsepto ng kawalan ng kalinisan."),
            ExerciseItem(id: UUID(), prompt: "Salita: MALIWANAG", options: ["madilim", "malabo", "makinang", "mapurol"], correctAnswer: "makinang", explanation: "Pareho silang tumutukoy sa pagbibigay ng maraming ilaw at liwanag; ang pagiging makinang ay isang direktang kasingkahulugan ng salitang inilalarawan nito.")
        ]
    )

    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "Mga kasingkahulugan (Mahirap)",
        instructions: "Piliin ang salita na ang ibig sabihin ay PAREHONG sa ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Salita: MELANCHOLY", options: ["masayahin", "nalulungkot", "nasasabik", "nilalaman"], correctAnswer: "nalulungkot", explanation: "Ang salitang hiram mula sa Ingles ay direktang isinalin, parehong nagpapahayag ng malalim na kalungkutan at pighati, kaya malinaw na magkasingkahulugan sila sa pagtukoy ng damdamin."),
            ExerciseItem(id: UUID(), prompt: "Salita: TRANQUIL", options: ["maingay", "nabalisa", "mapayapa", "galit na galit"], correctAnswer: "mapayapa", explanation: "Magkasingkahulugan ang mga ito dahil parehong inilalarawan ang isang sitwasyon o kapaligiran na tahimik, kalmado, at ganap na walang anumang gulo o ingay."),
            ExerciseItem(id: UUID(), prompt: "Word: MATAPANG", options: ["mahiyain", "nakakatakot", "matapang", "duwag"], correctAnswer: "matapang", explanation: "Magkasingkahulugan ang mga salitang ito dahil nagbabahagi sila ng eksaktong parehong kahulugan at pagbaybay, na naglalarawan ng matatag na kawalan ng takot sa pagharap sa panganib."),
            ExerciseItem(id: UUID(), prompt: "Salita: PECULIAR", options: ["karaniwan", "kakaiba", "normal", "tipikal"], correctAnswer: "kakaiba", explanation: "Pareho nilang ipinapahiwatig ang isang bagay na iba sa karaniwan, sadyang hindi pangkaraniwan, o may bukod-tanging katangian kumpara sa normal na inaasahan."),
            ExerciseItem(id: UUID(), prompt: "Word: SAGANA", options: ["kakaunti", "sagana", "bihira", "limitado"], correctAnswer: "sagana", explanation: "Ang dalawang kataga ay lubos na magkasingkahulugan dahil inuulit nila ang magkaparehong ideya na nangangahulugang marami, umaapaw, o labis-labis ang suplay ng isang bagay."),
            ExerciseItem(id: UUID(), prompt: "Word: MAHINA", options: ["malakas", "makapangyarihan", "mahina", "matatag"], correctAnswer: "mahina", explanation: "Ang mga ito ay tiyak na magkasingkahulugan na nagpapahiwatig ng parehong ideya ng seryosong kakulangan sa lakas, pwersa, o pisikal na kakayahan ng isang tao o bagay."),
            ExerciseItem(id: UUID(), prompt: "Salita: MATINDING", options: ["mapurol", "nanghihina", "makulay", "maputla"], correctAnswer: "makulay", explanation: "Sa maraming konteksto, magkasingkahulugan sila dahil pareho silang maaaring tumukoy sa isang bagay na kapansin-pansin, napakatingkad, o may malakas na emosyonal na epekto sa paningin."),
            ExerciseItem(id: UUID(), prompt: "Word: FRUGAL", options: ["aksayado", "matipid", "marangya", "mapagbigay"], correctAnswer: "matipid", explanation: "Pareho silang nagsasaad ng maingat na paggastos o paggamit ng pera at yaman nang walang anumang pag-aaksaya, kaya sila ay tumpak na magkasingkahulugan sa aspetong pinansyal."),
            ExerciseItem(id: UUID(), prompt: "Salita: MALITANG", options: ["nagbubulungan", "nakapagsasalita", "tahimik", "malamya"], correctAnswer: "nakapagsasalita", explanation: "Sa konteksto ng kasanayan sa wika, magkasingkahulugan ang mga ito dahil parehong tinutukoy ang kakayahang magpahayag ng sarili nang malinaw, tatas, at epektibo gamit ang mga salita."),
            ExerciseItem(id: UUID(), prompt: "Word: MATATAG", options: ["mahina", "huminto", "tuloy-tuloy", "nababaluktot"], correctAnswer: "tuloy-tuloy", explanation: "Magkasingkahulugan sila dahil pareho silang nagsasaad ng pagpapanatili ng posisyon o aksyon na hindi madaling nagpapatinag, nagbabago, o humihinto sa harap ng anumang pagsubok.")
        ]
    )

    private static let antonyms = Exercise(
        id: UUID(),
        title: "Antonyms (Madali)",
        instructions: "Piliin ang salitang KABALIGTARAN ng ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Salita: MAINIT", options: ["mainit-init", "malamig", "maalinsangan", "maligamgam"], correctAnswer: "malamig", explanation: "Ang mga ito ay tuwirang magkasalungat na mga konsepto, na kumakatawan sa magkabilang matinding dulo ng sukatan ng pisikal na temperatura mula sa pinakamataas hanggang sa pinakamababa."),
            ExerciseItem(id: UUID(), prompt: "Word: MASAYA", options: ["natutuwa", "masayahin", "malungkot", "nilalaman"], correctAnswer: "malungkot", explanation: "Ito ay dalawang ganap na magkasalungat na estado ng emosyon; ang isa ay nagpapakita ng tuwa at kagalakan, habang ang isa naman ay nangangahulugan ng labis na lumbay at pighati."),
            ExerciseItem(id: UUID(), prompt: "Salita: MALAKI", options: ["malawak", "mataba", "maliit", "matangkad"], correctAnswer: "maliit", explanation: "Ang mga ito ay malinaw na magkasalungat dahil inilalarawan nila ang labis na magkaibang mga pisikal na dimensyon, dami, o sukat ng isang partikular na bagay o espasyo."),
            ExerciseItem(id: UUID(), prompt: "Salita: MABILIS", options: ["maliksi", "mabagal", "matulin", "mabilis pa rin"], correctAnswer: "mabagal", explanation: "Ang mga salitang ito ay magkasalungat sapagkat inilalarawan nila ang dalawang magkataliwas na pisikal na bilis, tulin, o takbo ng isang tiyak na pagkilos o paggalaw."),
            ExerciseItem(id: UUID(), prompt: "Word: MALINIS", options: ["maayos", "malinis", "marumi", "sariwa"], correctAnswer: "marumi", explanation: "Magkasalungat ang mga ito dahil inilalarawan ng isa ang pagiging dalisay, maayos, at walang bahid ng dumi, habang inilalarawan ng isa pa ang kabaligtaran mismong estado nito."),
            ExerciseItem(id: UUID(), prompt: "Word: GISING", options: ["alerto", "may kamalayan", "natutulog", "aktibo"], correctAnswer: "natutulog", explanation: "Sila ay ganap na magkasalungat dahil tumutukoy sila sa dalawang magkahiwalay at magkataliwas na estado ng kamalayan at pagtugon sa pisikal na kapaligiran ng isang tao."),
            ExerciseItem(id: UUID(), prompt: "Word: MALIGAY", options: ["maingay", "tahimik", "umuusbong", "malakas"], correctAnswer: "tahimik", explanation: "Ang mga salitang ito ay magkasalungat dahil inilalarawan ng isa ang pagkakaroon at presensya ng napakalakas na tunog, habang ang ikalawa ay kumakatawan sa ganap na kawalan ng ingay."),
            ExerciseItem(id: UUID(), prompt: "Word: OPEN", options: ["sarado", "malawak", "malinaw", "libre"], correctAnswer: "sarado", explanation: "Magkasalungat sila dahil inilalarawan nila ang magkabilang pisikal na estado ng pagiging bukas, malaya, at naa-access kumpara sa pagiging nakakandado o nakaharang ng isang bagay."),
            ExerciseItem(id: UUID(), prompt: "Word: PUNO", options: ["nakaimpake", "walang laman", "load", "kumpleto"], correctAnswer: "walang laman", explanation: "Ang 'puno' at 'walang laman' ay magkasalungat na salita (antonyms). Ang puno ay nangangahulugang may laman o sagad, habang ang walang laman ay nangangahulugang walang kahit ano sa loob."),
            ExerciseItem(id: UUID(), prompt: "Salita: PAG-IBIG", options: ["sambahin", "parang", "poot", "pangangalaga"], correctAnswer: "poot", explanation: "Ang 'pag-ibig' at 'poot' ay magkasalungat na salita. Ang pag-ibig ay isang matinding damdamin ng pagmamahal, habang ang poot ay matinding damdamin ng galit o pagkamuhi.")
        ]
    )

    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "Pagkumpleto ng Pangungusap (Madali)",
        instructions: "Piliin ang salitang pinakamahusay na kumukumpleto sa pangungusap.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Dinilig niya ang ___.", options: ["mga bulaklak", "mga sahig", "harina"], correctAnswer: "mga bulaklak", explanation: "Ang mga bulaklak ay karaniwang dinidilig ng tubig upang lumaki at mabuhay, kaya ito ang tamang pandagdag sa pangungusap."),
            ExerciseItem(id: UUID(), prompt: "Isinuot niya ang kanyang ___.", options: ["amerikana", "bangka", "kambing"], correctAnswer: "amerikana", explanation: "Ang amerikana ay isang uri ng damit (jacket/coat) na isinusuot, kaya ito ay tamang sagot na bumubuo sa diwa ng pangungusap."),
            ExerciseItem(id: UUID(), prompt: "Kailangan ko ng isang baso ng ___.", options: ["tubig", "waiter", "wader"], correctAnswer: "tubig", explanation: "Ang tubig ay karaniwang inilalagay sa baso upang inumin, kaya akma ito sa pangungusap."),
            ExerciseItem(id: UUID(), prompt: "Tinawag niya siyang ___.", options: ["ina", "abala", "magsabon"], correctAnswer: "ina", explanation: "Ang 'ina' ay isang karaniwang tawag sa magulang na babae, kaya angkop ito sa pangungusap."),
            ExerciseItem(id: UUID(), prompt: "Kinawag-kawag ng aso ang kanyang ___.", options: ["kuwento", "buntot", "matangkad"], correctAnswer: "buntot", explanation: "Ang aso ay nagpapahayag ng saya sa pamamagitan ng pagkawag ng kanyang buntot."),
            ExerciseItem(id: UUID(), prompt: "Pinatay niya ang ___.", options: ["lumaban", "liwanag", "gabi"], correctAnswer: "liwanag", explanation: "Ang liwanag o ilaw ay pinapatay bago matulog o kapag hindi na ginagamit."),
            ExerciseItem(id: UUID(), prompt: "Nagluto siya ng ___.", options: ["peke", "lawa", "cake"], correctAnswer: "cake", explanation: "Ang cake ay isang pagkain na niluluto o hinuhurno, kaya akma ito bilang layon ng pandiwang 'nagluto'."),
            ExerciseItem(id: UUID(), prompt: "Ang ibon ay nagtayo ng ___.", options: ["pugad", "magpahinga", "pagsubok"], correctAnswer: "pugad", explanation: "Ang mga ibon ay gumagawa at nagtatayo ng pugad bilang kanilang tirahan at itlugan."),
            ExerciseItem(id: UUID(), prompt: "Binasa niya ang ___.", options: ["pahayagan", "basurang papel", "papel de liha"], correctAnswer: "pahayagan", explanation: "Ang pahayagan ay isang babasahin kung saan nakasulat ang mga balita, kaya ito ay binabasa."),
            ExerciseItem(id: UUID(), prompt: "Naglaro ang mga bata sa ___.", options: ["parke", "tumahol", "madilim"], correctAnswer: "parke", explanation: "Ang parke ay isang lugar pampubliko na karaniwang pinaglalaruan ng mga bata."),
            ExerciseItem(id: UUID(), prompt: "Inayos niya ang ___.", options: ["lababo", "link", "kumindat"], correctAnswer: "lababo", explanation: "Ang lababo na sirang daluyan ng tubig ay isang bagay na karaniwang inaayos sa bahay."),
            ExerciseItem(id: UUID(), prompt: "Ang sopas ay masyadong ___.", options: ["mainit", "marami", "tuldok"], correctAnswer: "mainit", explanation: "Ang sopas ay isang sabaw na kadalasang isinisilbi at kinakain nang mainit."),
            ExerciseItem(id: UUID(), prompt: "Binuksan niya ang kanyang ___.", options: ["payong", "banilya", "bakulaw"], correctAnswer: "payong", explanation: "Ang payong ay binubuksan upang protektahan ang sarili mula sa ulan o matinding sikat ng araw."),
            ExerciseItem(id: UUID(), prompt: "Binayaran niya ang ___.", options: ["bill", "punan", "gilingan"], correctAnswer: "bill", explanation: "Ang bill o bayarin ay isang katibayan ng halagang kailangang bayaran, kaya ito ay binabayaran."),
            ExerciseItem(id: UUID(), prompt: "Nakaupo ang pusa sa ___.", options: ["banig", "paniki", "daga"], correctAnswer: "banig", explanation: "Ang banig ay isang patag na sapin kung saan madalas humiga o umupo ang mga alagang hayop tulad ng pusa."),
            ExerciseItem(id: UUID(), prompt: "Nagsuot siya ng mainit na ___.", options: ["panglamig", "humampas", "magkalat"], correctAnswer: "panglamig", explanation: "Ang panglamig o sweater ay damit na isinusuot upang magbigay ng init sa katawan kapag malamig ang panahon."),
            ExerciseItem(id: UUID(), prompt: "Nagtanim siya ng ___.", options: ["hardin", "patawad", "warden"], correctAnswer: "hardin", explanation: "Sa isang hardin karaniwang nagtatanim ng iba't ibang halaman at bulaklak."),
            ExerciseItem(id: UUID(), prompt: "Sumulat siya sa kanyang ___.", options: ["talaarawan", "pagawaan ng gatas", "daisy"], correctAnswer: "talaarawan", explanation: "Ang talaarawan o diary ay isang personal na aklat kung saan isinusulat ang mga karanasan at kaisipan sa araw-araw."),
            ExerciseItem(id: UUID(), prompt: "Nagwalis siya ng ___.", options: ["sahig", "sabaw", "ulap"], correctAnswer: "sahig", explanation: "Ang sahig ay nililinis gamit ang walis upang alisin ang alikabok at dumi."),
            ExerciseItem(id: UUID(), prompt: "Ang sanggol ay ___.", options: ["natutulog", "nagwawalis", "tumutulo"], correctAnswer: "natutulog", explanation: "Ang mga sanggol ay nangangailangan ng mahabang oras ng pahinga at pagtulog sa bawat araw.")
        ]
    )

    private static let morphology = Exercise(
        id: UUID(),
        title: "Morpolohiya at Balarila",
        instructions: "Piliin ang tamang anyo ng salita na angkop sa pangungusap.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Alin sa mga sumusunod ang tamang pandiwa sa kasalukuyan (imperfective) ng salitang “sulat”?”", options: ["sumusulat", "sumulat", "susulat", "isulat"], correctAnswer: "sumusulat", explanation: "Ang “sumusulat” ay nagpapakita na ang aksyon ng pagsulat ay kasalukuyang ginagawa."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang anyo ng pandiwa sa nakaraan (perfective) ng salitang “kain”?”", options: ["kumain", "kumakain", "kakain", "pakainin"], correctAnswer: "kumain", explanation: "Ang “kumain” ay nagpapakita na ang aksyon ng pagkain ay tapos na."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Piliin ang tamang anyo ng pandiwa sa hinaharap (contemplative) ng salitang “aral”?”", options: ["mag-aaral", "nag-aaral", "nag-aral", "pag-aralan"], correctAnswer: "mag-aaral", explanation: "Ang “mag-aaral” ay nagpapakita na ang aksyon ay gagawin pa lamang sa hinaharap."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap gamit ang tamang pananda: “Pumunta ___ Maria sa Seafood City kahapon.””", options: ["si", "ang", "ng", "sa"], correctAnswer: "si", explanation: "Ang “si” ay ginagamit bago ang pangalan ng isang tao (Maria)."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap gamit ang tamang pananda: “Bumili siya ___ sariwang gulay.””", options: ["ng", "si", "ang", "sa"], correctAnswer: "ng", explanation: "Ang “ng” ay ginagamit upang ipakita ang layon ng pandiwa (gulay)."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Alin ang tamang panghalip (pronoun) para sa higit sa isang tao kabilang ang iyong sarili?”", options: ["tayo", "sila", "kayo", "siya"], correctAnswer: "tayo", explanation: "Ang “tayo” ay ginagamit kapag tinutukoy ang nagsasalita at ang mga kasama nito."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang anyo ng pang-uri (adjective) kapag naglalarawan ng maramihang bagay?”", options: ["magaganda", "maganda", "pinakamaganda", "napaganda"], correctAnswer: "magaganda", explanation: "Ang “magaganda” ay ginagamit kapag higit sa isa ang inilalarawan (plural)."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap: “Si Juan ay mas matangkad ___ kay Jose.””", options: ["kaysa", "para", "dahil", "upang"], correctAnswer: "kaysa", explanation: "Ang “kaysa” ay ginagamit sa paghahambing ng dalawang tao o bagay."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang pandiwa para sa kasalukuyang nagaganap (imperfective) ng “takbo”?”", options: ["tumatakbo", "tumakbo", "tatakbo", "patakbuhin"], correctAnswer: "tumatakbo", explanation: "Ang “tumatakbo” ay nagpapakita na ang aksyon ay kasalukuyang ginagawa."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang pandiwa para sa katatapos pa lamang na kilos ng “kain”?”", options: ["kakakain", "kumain", "kumakain", "kakain"], correctAnswer: "kakakain", explanation: "Ang “kakakain” ay nagpapahayag na ang kilos ay katatapos pa lamang gawin."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap gamit ang tamang pang-ukol: “Ang laruan ay para ___ mga bata.””", options: ["sa", "ng", "ni", "kay"], correctAnswer: "sa", explanation: "Ang “sa” ay nagpapakita ng patutunguhan o benepisyaryo ng laruan."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang anyo ng salita kapag inuulit upang ipakita ang katamtamang katangian?”", options: ["maganda-ganda", "maganda", "napaganda", "pagpapaganda"], correctAnswer: "maganda-ganda", explanation: "Ang pag-ulit ng salita ay nagpapakita ng katamtamang antas ng katangian."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin: “Ang pusa ay natutulog ___ ilalim ng kama.””", options: ["sa", "ng", "si", "ni"], correctAnswer: "sa", explanation: "Ang “sa” ay nagpapakita ng lokasyon kung saan natutulog ang pusa."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang pandiwa sa nakaraan (perfective) ng “basa”?”", options: ["nagbasa", "nagbabasa", "magbabasa", "basahin"], correctAnswer: "nagbasa", explanation: "Ang “nagbasa” ay nagpapakita ng natapos na aksyon ng pagbabasa."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang pandiwa sa hinaharap (contemplative) ng “luto”?”", options: ["magluluto", "nagluluto", "nagluto", "iluto"], correctAnswer: "magluluto", explanation: "Ang “magluluto” ay nagpapakita na ang pagluluto ay gagawin pa lamang."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap gamit ang tamang pananda sa maramihang pangalan: “Dumating ___ Ginoong Santos kahapon.””", options: ["sina", "si", "ang", "mga"], correctAnswer: "sina", explanation: "Ang “sina” ay ginagamit bago ang maramihang pangalan ng mga tao."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang panghalip na pamatlig (demonstrative pronoun) para sa bagay na malapit sa nagsasalita?”", options: ["ito", "iyan", "iyon", "doon"], correctAnswer: "ito", explanation: "Ang “ito” ay ginagamit para sa bagay na hawak o malapit sa taong nagsasalita."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Ano ang tamang panghalip na pamatlig para sa bagay na malayo sa kapwa nag-uusap?”", options: ["iyon", "ito", "iyan", "diyan"], correctAnswer: "iyon", explanation: "Ang “iyon” ay ginagamit kapag ang bagay ay malayo sa kapwa nag-uusap."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap: “Mabilis ___ tumakbo ang aso.””", options: ["na", "ng", "nang", "at"], correctAnswer: "na", explanation: "Ang “na” (bilang pang-angkop) ay ginagamit upang iugnay ang pang-uri sa pandiwa."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang tamang sagot para sa patlang: “Kumpletuhin ang pangungusap: “Kumain siya ng marami ___ gutom siya.””", options: ["dahil", "kaysa", "upang", "ngunit"], correctAnswer: "dahil", explanation: "Ang “dahil” ay ginagamit upang ipakita ang sanhi o dahilan ng kilos.")
        ]
    )

    private static let analogies = Exercise(
        id: UUID(),
        title: "Mga pagkakatulad",
        instructions: "Piliin ang salitang pinakamahusay na kumukumpleto sa pagkakatulad.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ang PUPPY ay sa ASO gaya ng KUTING kay ___", options: ["Pusa", "aso", "ibon", "Isda"], correctAnswer: "Pusa", explanation: "Ang ugnayan ay anak sa magulang na hayop. Ang puppy ay anak ng aso, kaya ang kuting ay anak ng pusa."),
            ExerciseItem(id: UUID(), prompt: "Ang lamig ay sa WINTER bilang HOT ay sa ___", options: ["tagsibol", "Pagkahulog", "Tag-init", "ulan"], correctAnswer: "Tag-init", explanation: "Ang ugnayan ay klima sa panahon. Malamig tuwing winter, kaya naman mainit (hot) tuwing tag-init."),
            ExerciseItem(id: UUID(), prompt: "Ang MATA ay TINGIN gaya ng EAR ay ___", options: ["Hawakan", "Pakinggan", "Amoy", "lasa"], correctAnswer: "Pakinggan", explanation: "Ang ugnayan ay bahagi ng katawan sa pandama nito. Ginagamit ang mata para tumingin, habang ang tainga (ear) ay ginagamit para makinig o pakinggan."),
            ExerciseItem(id: UUID(), prompt: "Ang CHEF ay papunta sa KITCHEN gaya ng DOCTOR kay ___", options: ["Aklatan", "Ospital", "Paaralan", "Tindahan"], correctAnswer: "Ospital", explanation: "Ang ugnayan ay propesyon at lugar ng trabaho. Ang chef ay nagtatrabaho sa kusina (kitchen), samantalang ang doktor ay nagtatrabaho sa ospital."),
            ExerciseItem(id: UUID(), prompt: "GLOVE ay sa KAMAY gaya ng SOCK ay sa ___", options: ["Bisig", "tuhod", "paa", "Ulo"], correctAnswer: "paa", explanation: "Ang ugnayan ay kasuotan at bahagi ng katawan kung saan ito isinusuot. Ang guwantes (glove) ay isinusuot sa kamay, habang ang medyas (sock) ay sa paa."),
            ExerciseItem(id: UUID(), prompt: "MASAYA ang TUMAWA gaya ng lungkot sa ___", options: ["Ngiti", "Matulog", "Umiyak", "Takbo"], correctAnswer: "Umiyak", explanation: "Ang ugnayan ay damdamin at ang aksyon nito. Ang pagiging masaya ay ipinapakita sa pagtawa, habang ang kalungkutan ay ipinapakita sa pag-iyak."),
            ExerciseItem(id: UUID(), prompt: "Ang BIRD ay pugad gaya ng OSO ay ___", options: ["Puno", "yungib", "Karagatan", "Patlang"], correctAnswer: "yungib", explanation: "Ang ugnayan ay hayop at ang tirahan nito. Ang ibon (bird) ay nakatira sa pugad, samantalang ang oso (bear) ay nakatira sa yungib o kweba."),
            ExerciseItem(id: UUID(), prompt: "ANG LAPIS ay SUMULAT gaya ng BRUSH ay ___", options: ["Putulin", "Kulayan", "Magwalis", "Haluin"], correctAnswer: "Kulayan", explanation: "Ang ugnayan ay kagamitan at ang gamit nito. Ginagamit ang lapis sa pagsulat, habang ang brush (pinsel) ay para magkulay."),
            ExerciseItem(id: UUID(), prompt: "ANG ARAW ay HANGGANG GABI gaya ng ITIM sa ___", options: ["Madilim", "Gray", "Puti", "Asul"], correctAnswer: "Puti", explanation: "Ang ugnayan ay pagiging magkasalungat. Ang araw (day) ay kasalungat ng gabi, samantalang ang itim ay kasalungat ng puti."),
            ExerciseItem(id: UUID(), prompt: "Ang SOLDIER ay sa ARMY gaya ng SAILOR kay ___", options: ["Air Force", "Mga Marino", "Navy", "Guard"], correctAnswer: "Navy", explanation: "Ang ugnayan ay tungkulin at ang organisasyong kinabibilangan nito. Ang sundalo (soldier) ay kasapi ng army, habang ang mandaragat (sailor) ay kasapi ng navy."),
            ExerciseItem(id: UUID(), prompt: "Ang GULONG ay patungo sa KOTSE gaya ng WING ay patungo sa ___", options: ["Bangka", "Eroplano", "Tren", "Bus"], correctAnswer: "Eroplano", explanation: "Ang ugnayan ay bahagi sa kabuuan. Ang gulong ay bahagi ng kotse, at ang pakpak (wing) ay bahagi ng eroplano."),
            ExerciseItem(id: UUID(), prompt: "Ang GURO ay sa SCHOOL bilang JUDGE ay sa ___", options: ["Opisina", "Ospital", "Courtroom", "Tindahan"], correctAnswer: "Courtroom", explanation: "Ang ugnayan ay propesyon sa lugar ng gawain. Ang guro ay nagtuturo sa paaralan (school), habang ang hukom (judge) ay nagpapasya sa korte (courtroom)."),
            ExerciseItem(id: UUID(), prompt: "Ang CATERPILLAR ay para BUTTERFLY gaya ng TADPOLE kay ___", options: ["Isda", "Pagong", "Palaka", "butiki"], correctAnswer: "Palaka", explanation: "Ang ugnayan ay ang yugto ng paglaki. Ang higad (caterpillar) ay nagiging paruparo (butterfly), at ang butete (tadpole) ay nagiging palaka."),
            ExerciseItem(id: UUID(), prompt: "Ang PAGKAIN ay GUTOM gaya ng TUBIG ay ___", options: ["basa", "nauuhaw", "Malamig", "Puno"], correctAnswer: "nauuhaw", explanation: "Ang ugnayan ay solusyon sa pisikal na pangangailangan. Kinakailangan ang pagkain kapag gutom, at tubig kapag nauuhaw."),
            ExerciseItem(id: UUID(), prompt: "Ang lana ay sa TUPA gaya ng SILK sa ___", options: ["Gagamba", "Silkworm", "Cotton", "Linen"], correctAnswer: "Silkworm", explanation: "Ang ugnayan ay produkto sa pinanggagalingan nito. Ang lana (wool) ay nagmumula sa tupa, habang ang sutla (silk) ay nagmumula sa silkworm.")
        ]
    )

    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "Katotohanan o Opinyon",
        instructions: "Magpasya: ang pahayag na ito ay isang KATOTOHANAN o isang OPINYON?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mayroong 7 araw sa isang linggo.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay isang katotohanan dahil nakabatay ito sa pandaigdigang kalendaryo."),
            ExerciseItem(id: UUID(), prompt: "Vanilla ang pinakamagandang lasa ng ice cream.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay isang opinyon dahil ang pinakamasarap o pinakamagandang lasa ay nakadepende sa personal na panlasa ng bawat tao."),
            ExerciseItem(id: UUID(), prompt: "Nagyeyelo ang tubig sa 32 degrees Fahrenheit.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan dahil napatunayan ng siyensya na ang nagyeyelong punto ng tubig ay 32 degrees Fahrenheit."),
            ExerciseItem(id: UUID(), prompt: "Ang mga aso ay ang pinakamahusay na mga alagang hayop.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon dahil ang pagpili ng pinakamahusay na alagang hayop ay batay sa personal na kagustuhan."),
            ExerciseItem(id: UUID(), prompt: "Ang isang tatsulok ay may tatlong panig.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay isang katotohanan batay sa geometry na ang lahat ng tatsulok ay may tiyak na tatlong panig o gilid."),
            ExerciseItem(id: UUID(), prompt: "Nakakatawa yung palabas sa TV.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon dahil hindi lahat ng tao ay may parehong panlasa sa uri ng pagpapatawa o katatawanan."),
            ExerciseItem(id: UUID(), prompt: "Si Abraham Lincoln ay isang Pangulo ng Estados Unidos.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay isang katotohanang pangkasaysayan na naging pangulo ng Estados Unidos si Abraham Lincoln."),
            ExerciseItem(id: UUID(), prompt: "Ang Earth ay ang pinakamagandang planeta.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon dahil ang kagandahan ng isang planeta ay subhetibo at walang siyentipikong basehan upang sukatin ito."),
            ExerciseItem(id: UUID(), prompt: "Mayroong 60 minuto sa isang oras.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan batay sa pandaigdigang sistema ng sukat ng oras na may 60 minuto sa isang oras."),
            ExerciseItem(id: UUID(), prompt: "Ang mga tulip ay mas maganda kaysa sa mga rosas.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay isang opinyon sapagkat nakadepende sa kagustuhan ng tao kung aling bulaklak ang itinuturing niyang mas maganda."),
            ExerciseItem(id: UUID(), prompt: "Ang Washington D.C. ay ang kabisera ng Estados Unidos.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan dahil opisyal at heograpikal na kinikilala ang Washington D.C. bilang kabisera ng Estados Unidos."),
            ExerciseItem(id: UUID(), prompt: "Bastos magsalita ng puno ang bibig.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay isang opinyon na nagmula sa kultural na pamantayan at kagandahang-asal ng isang lipunan, ngunit nag-iiba sa bawat kultura."),
            ExerciseItem(id: UUID(), prompt: "Mayroong 12 buwan sa isang taon.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan batay sa pangkalahatang Gregorian calendar."),
            ExerciseItem(id: UUID(), prompt: "Ang paggising ng maaga ay mabuti para sa iyo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay isang opinyon sapagkat iba-iba ang orasan at pangangailangan ng katawan ng bawat tao, bagama't marami ang nagsasabing ito ay mabuti."),
            ExerciseItem(id: UUID(), prompt: "2 + 2 = 4.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan dahil isa itong pangunahing batas sa matematika na palaging tama."),
            ExerciseItem(id: UUID(), prompt: "Ang karagatan ay gawa sa tubig-alat.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan na napatunayan sa agham na ang tubig sa karagatan ay may mataas na nilalaman ng asin o tubig-alat."),
            ExerciseItem(id: UUID(), prompt: "Ang paghahardin ay isang mahusay na libangan.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon dahil nakadepende sa interes ng isang tao kung itinuturing niyang mahusay o nakakasawa ang paghahardin."),
            ExerciseItem(id: UUID(), prompt: "Ang mga bato ay mas mabigat kaysa sa mga balahibo ng parehong laki.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan dahil ang bato ay may mas mataas na density (kasiksikan) kaysa sa mga balahibo sa parehong dami o sukat."),
            ExerciseItem(id: UUID(), prompt: "Ang Estados Unidos ay may 50 estado.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan dahil opisyal at pampulitika itong nakatala na may 50 estado ang Estados Unidos."),
            ExerciseItem(id: UUID(), prompt: "Ang pizza ay ang pinakamahusay na pagkain.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon dahil nagkakaiba ang panlasa at paboritong pagkain ng bawat tao."),
            ExerciseItem(id: UUID(), prompt: "Ang ehersisyo ay kapaki-pakinabang para sa iyong kalusugan.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan dahil maraming siyentipikong pag-aaral ang nagpapatunay ng mga benepisyong pangkalusugan ng ehersisyo."),
            ExerciseItem(id: UUID(), prompt: "Nakakatamad ang classical music.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon sapagkat marami ring tao ang nasisiyahan sa pakikinig sa musika mula sa panahong klasikal (classical music)."),
            ExerciseItem(id: UUID(), prompt: "Ang mansanas at dalandan ay parehong prutas.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan na nakabatay sa botanika dahil pareho itong namumulaklak na halaman na nagtataglay ng mga buto."),
            ExerciseItem(id: UUID(), prompt: "Ang mga pusa ay mas madaling alagaan kaysa sa mga aso.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ito ay opinyon sapagkat nakadepende sa indibidwal na karanasan at sitwasyon kung aling hayop ang mas madaling alagaan."),
            ExerciseItem(id: UUID(), prompt: "Mayroong 24 na oras sa isang araw.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Ito ay katotohanan batay sa tagal ng isang buong pag-ikot ng daigdig sa sarili nitong axis.")
        ]
    )

    private static let sequencing = Exercise(
        id: UUID(),
        title: "Mga Hakbang sa Pagsusunod-sunod",
        instructions: "Ang mga hakbang ay ipinapakita sa WRONG order. Lagyan ng bilang ng 1, 2, 3... upang mailagay sila sa tamang pagkakasunod-sunod.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Paggawa ng Toast", options: ["Mantikilya ang toast", "Ilagay ang tinapay sa toaster", "Alisin sa toaster", "Kumain"], correctAnswer: "Ilagay ang tinapay sa toaster | Alisin sa toaster | Mantikilya ang toast | Kumain", explanation: "Ang tamang pagkakasunod-sunod ay inilalagay muna ang tinapay sa toaster, inaalis kapag luto na, pinapahiran ng mantikilya, at saka kinakain."),
            ExerciseItem(id: UUID(), prompt: "Paghuhugas ng Kamay", options: ["Patuyuin ang mga kamay gamit ang isang tuwalya", "Maglagay ng sabon sa mga kamay", "Buksan ang tubig", "Scrub para sa 20 segundo", "Banlawan ang sabon", "Basain ang iyong mga kamay"], correctAnswer: "Buksan ang tubig | Basain ang iyong mga kamay | Maglagay ng sabon sa mga kamay | Scrub para sa 20 segundo | Banlawan ang sabon | Patuyuin ang mga kamay gamit ang isang tuwalya", explanation: "Ayon sa pamantayan ng kalinisan, kailangan munang buksan ang tubig at basain ang kamay, sabunan at kuskusin ng 20 segundo, banlawan, at saka patuyuin ng tuwalya."),
            ExerciseItem(id: UUID(), prompt: "Paggawa ng Kape", options: ["Ibuhos ang kape sa iyong tasa", "Magdagdag ng mga gilingan ng kape sa filter", "Pindutin ang brew button", "Punan ang reservoir ng tubig"], correctAnswer: "Punan ang reservoir ng tubig | Magdagdag ng mga gilingan ng kape sa filter | Pindutin ang brew button | Ibuhos ang kape sa iyong tasa", explanation: "Lohikal na pinupuno muna ng tubig ang lalagyan, inilalagay ang kape sa filter, pinipindot ang brew, bago ibuhos at inumin sa tasa."),
            ExerciseItem(id: UUID(), prompt: "Paggawa ng Tawag sa Telepono", options: ["Kamustahin", "Ibitin", "Kunin ang telepono", "I-dial ang numero", "Magkaroon ng iyong pag-uusap"], correctAnswer: "Kunin ang telepono | I-dial ang numero | Kamustahin | Magkaroon ng iyong pag-uusap | Ibitin", explanation: "Kukunin muna ang telepono para mai-dial ang numero, bumati ng kamusta kapag may sumagot, makipag-usap, at saka ibababa ang telepono kapag tapos na."),
            ExerciseItem(id: UUID(), prompt: "Nagbibihis", options: ["Magsuot ng sapatos", "Magsuot ng sando", "Magsuot ng underwear", "Magsuot ng medyas", "Magsuot ng pantalon"], correctAnswer: "Magsuot ng underwear | Magsuot ng sando | Magsuot ng pantalon | Magsuot ng medyas | Magsuot ng sapatos", explanation: "Inuuna ang pagsuot ng mga panloob (underwear at sando), susundan ng pantalon, at panghuli ang medyas bago mag-sapatos."),
            ExerciseItem(id: UUID(), prompt: "Pagwawalis ng Sahig", options: ["Itapon sa basurahan", "Lumabas ka sa walis", "I-scoop ang mga labi sa dustpan", "Walisin ang mga labi sa isang tumpok"], correctAnswer: "Lumabas ka sa walis | Walisin ang mga labi sa isang tumpok | I-scoop ang mga labi sa dustpan | Itapon sa basurahan", explanation: "Kinukuha ang walis upang ibukod ang mga dumi at alikabok sa isang tumpok, ginagamitan ng dustpan para saluhin, at saka itinatapon sa basurahan."),
            ExerciseItem(id: UUID(), prompt: "Pag-order sa isang Restaurant", options: ["Kumain ka na", "Sabihin sa server ang iyong order", "Umupo ka", "Maghintay para sa iyong pagkain", "Suriin ang menu"], correctAnswer: "Umupo ka | Suriin ang menu | Sabihin sa server ang iyong order | Maghintay para sa iyong pagkain | Kumain ka na", explanation: "Kapag dumating sa restaurant, kailangang umupo, suriin ang menu, sabihin sa server ang nais na order, maghintay, at saka kumain."),
            ExerciseItem(id: UUID(), prompt: "Pagluluto ng Cookies", options: ["Hayaang lumamig ang cookies", "Maghurno sa oven", "Painitin muna ang oven", "Paghaluin ang mga sangkap", "I-scoop ang kuwarta sa baking sheet"], correctAnswer: "Painitin muna ang oven | Paghaluin ang mga sangkap | I-scoop ang kuwarta sa baking sheet | Maghurno sa oven | Hayaang lumamig ang cookies", explanation: "Kailangan munang painitin ang oven at ihanda ang kuwarta sa pamamagitan ng paghahalo, ilalagay sa baking sheet, ihuhurno sa oven, at palalamigin ang cookies bago kainin.")
        ]
    )

    private static let idioms = Exercise(
        id: UUID(),
        title: "Mga Sawikain at Talinghaga",
        instructions: "Piliin ang tamang kahulugan ng sawikain.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “balat-sibuyas”?", options: ["maramdamin", "manipis ang balat", "madaling umiyak", "mabango"], correctAnswer: "maramdamin", explanation: "Ang “balat-sibuyas” ay sawikain para sa taong madaling masaktan ang damdamin o maramdamin."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “makapal ang mukha”?", options: ["walang hiya", "matapang", "mayabang", "pangit"], correctAnswer: "walang hiya", explanation: "Ang “makapal ang mukha” ay sawikain para sa taong walang pakiramdam sa kahihiyan."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “naniningalang-pugad”?", options: ["nanliligaw", "nag-aabang ng ibon", "umaakyat sa puno", "naghahanap ng bahay"], correctAnswer: "nanliligaw", explanation: "Sawikain ito para sa lalaking nanliligaw o naghahanap ng mapapangasawa."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “nagtataingang-kawali”?", options: ["nagbingi-bingihan", "may sakit sa tainga", "nagluluto", "bingi talaga"], correctAnswer: "nagbingi-bingihan", explanation: "Sawikain para sa taong nagkukunwaring walang naririnig."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “anak-pawis”?", options: ["mahirap", "manggagawa", "pinagpawisan", "magsasaka"], correctAnswer: "mahirap", explanation: "Sawikain para sa mga taong kabilang sa mahirap na uri o manggagawa."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “amoy-tsiko”?", options: ["luring o lasing", "mabango", "amoy prutas", "bagong ligo"], correctAnswer: "luring o lasing", explanation: "Sawikain para sa taong amoy alak o lasing dahil ang tsiko ay may katulad na amoy."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “ibaon sa hukay”?", options: ["kalimutan na", "ilibing ang patay", "magtago ng lihim", "maghukay sa lupa"], correctAnswer: "kalimutan na", explanation: "Sawikain na nangangahulugang kalimutan na ang nakaraan o galit."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “kisap-mata”?", options: ["napakabilis", "pikit-mata", "bulag", "kumikislap"], correctAnswer: "napakabilis", explanation: "Sawikain na tumutukoy sa pangyayaring naganap sa napakaikling panahon."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “magaan ang kamay”?", options: ["madaling manakit", "madaling magbigay ng pera", "mabilis sumulat", "mabait"], correctAnswer: "madaling manakit", explanation: "Sawikain para sa taong mabilis mamalo o manakit physically."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “matalas ang ulo”?", options: ["matalino", "matulis ang bungo", "mabilis magalit", "matalas ang pandinig"], correctAnswer: "matalino", explanation: "Sawikain para sa taong matalino o mabilis makaunawa."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “may gatas pa sa labi”?", options: ["bata pa at walang karanasan", "kumain ng keso", "bagong gising", "marungis"], correctAnswer: "bata pa at walang karanasan", explanation: "Sawikain para sa taong napakabata pa o kulang pa sa karanasan sa buhay."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “patay-gutom”?", options: ["matakaw o gahaman", "walang pagkain", "payat na payat", "pulubi"], correctAnswer: "matakaw o gahaman", explanation: "Sawikain para sa taong matakaw o walang kabusugan sa pagkain o yaman."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “buwaya sa katihan”?", options: ["makasarili o sakim", "hayop sa lawa", "magnanakaw", "mapanlinlang"], correctAnswer: "makasarili o sakim", explanation: "Sawikain para sa taong sakim, gahaman, o mapagsamantala sa kapwa."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “pantay ang mga paa”?", options: ["patay na", "nakahiga", "matangkad", "pantay ang sapatos"], correctAnswer: "patay na", explanation: "Sawikain na nangangahulugang pumanaw o sumakabilang-buhay na ang tao."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan ng sawikaing “luha ng buwaya”?", options: ["hindi totoong pakikiramay", "umiiyak sa sakit", "luha ng hayop", "malaking luha"], correctAnswer: "hindi totoong pakikiramay", explanation: "Sawikain para sa huwad o pekeng iyak at pakikiramay.")
        ]
    )

    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "Mga Salitang Magkatugma",
        instructions: "Piliin ang salitang magkatugma sa ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “aso”:", options: ["baso", "ulan", "daan", "laro"], correctAnswer: "baso", explanation: "Ang “aso” at “baso” ay magkatugma dahil parehong nagtatapos sa “-aso”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “ulan”:", options: ["daan", "bahay", "gulay", "susi"], correctAnswer: "daan", explanation: "Ang “ulan” at “daan” ay magkatugma dahil parehong nagtatapos sa “-an”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “bahay”:", options: ["gulay", "tulay", "kulay", "ibon"], correctAnswer: "gulay", explanation: "Ang “bahay” at “gulay” ay magkatugma dahil parehong nagtatapos sa “-ay”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “tulay”:", options: ["kulay", "dalaga", "talaga", "papel"], correctAnswer: "kulay", explanation: "Ang “tulay” at “kulay” ay magkatugma dahil parehong nagtatapos sa “-ulay”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “ibon”:", options: ["sabon", "gatas", "batas", "kahoy"], correctAnswer: "sabon", explanation: "Ang “ibon” at “sabon” ay magkatugma dahil parehong nagtatapos sa “-bon”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “dalaga”:", options: ["talaga", "tupa", "lupa", "mata"], correctAnswer: "talaga", explanation: "Ang “dalaga” at “talaga” ay magkatugma dahil parehong nagtatapos sa “-aga”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “papel”:", options: ["baril", "siko", "piko", "kamay"], correctAnswer: "baril", explanation: "Ang “papel” at “baril” ay magkatugma dahil sa katulad na tunog ng patinig at katinig sa dulo (assonance)."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “gatas”:", options: ["batas", "ulo", "pulo", "buhok"], correctAnswer: "batas", explanation: "Ang “gatas” at “batas” ay magkatugma dahil parehong nagtatapos sa “-atas”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “kahoy”:", options: ["baboy", "usok", "baha", "luha"], correctAnswer: "baboy", explanation: "Ang “kahoy” at “baboy” ay magkatugma dahil parehong nagtatapos sa “-oy”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “tupa”:", options: ["lupa", "araw", "kalabaw", "balat"], correctAnswer: "lupa", explanation: "Ang “tupa” at “lupa” ay magkatugma dahil parehong nagtatapos sa “-upa”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “mata”:", options: ["bata", "ulat", "talong", "tanong"], correctAnswer: "bata", explanation: "Ang “mata” at “bata” ay magkatugma dahil parehong nagtatapos sa “-ata”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “siko”:", options: ["piko", "laro", "turo", "baso"], correctAnswer: "piko", explanation: "Ang “siko” at “piko” ay magkatugma dahil parehong nagtatapos sa “-iko”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “kamay”:", options: ["lamay", "daan", "bahay", "ibon"], correctAnswer: "lamay", explanation: "Ang “kamay” at “lamay” ay magkatugma dahil parehong nagtatapos sa “-amay”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “ulo”:", options: ["pulo", "sabon", "talaga", "batas"], correctAnswer: "pulo", explanation: "Ang “ulo” at “pulo” ay magkatugma dahil parehong nagtatapos sa “-ulo”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “buhok”:", options: ["usok", "baboy", "lupa", "bata"], correctAnswer: "usok", explanation: "Ang “buhok” at “usok” ay magkatugma dahil parehong nagtatapos sa “-ok”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “baha”:", options: ["luha", "piko", "lamay", "pulo"], correctAnswer: "luha", explanation: "Ang “baha” at “luha” ay magkatugma dahil parehong nagtatapos sa “-ha”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “araw”:", options: ["kalabaw", "usok", "laro", "daan"], correctAnswer: "kalabaw", explanation: "Ang “araw” at “kalabaw” ay magkatugma dahil parehong nagtatapos sa “-aw”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “balat”:", options: ["ulat", "gulay", "baril", "lupa"], correctAnswer: "ulat", explanation: "Ang “balat” at “ulat” ay magkatugma dahil parehong nagtatapos sa “-at”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “talong”:", options: ["tanong", "ibon", "susi", "sabon"], correctAnswer: "tanong", explanation: "Ang “talong” at “tanong” ay magkatugma dahil parehong nagtatapos sa “-ong”."),
            ExerciseItem(id: UUID(), prompt: "Piliin ang salitang magkatugma sa “laro”:", options: ["turo", "aso", "baso", "ulan"], correctAnswer: "turo", explanation: "Ang “laro” at “turo” ay magkatugma dahil parehong nagtatapos sa “-ro”.")
        ]
    )

    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "Samahan ng Salita",
        instructions: "Piliin ang salitang pinaka malapit na nauugnay sa ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "DOKTOR", options: ["Ospital", "Paliparan", "Aklatan", "sakahan"], correctAnswer: "Ospital", explanation: "Nagtatrabaho ang mga doktor sa mga ospital para pangalagaan ang mga pasyente."),
            ExerciseItem(id: UUID(), prompt: "TINAPAY", options: ["mantikilya", "martilyo", "Sabon", "Lapis"], correctAnswer: "mantikilya", explanation: "Ang mantikilya ay karaniwang ikinakalat sa tinapay."),
            ExerciseItem(id: UUID(), prompt: "KUSINA", options: ["Kalan", "kama", "shower", "kotse"], correctAnswer: "Kalan", explanation: "Ang kalan ay isang pangunahing kasangkapan sa kusina."),
            ExerciseItem(id: UUID(), prompt: "LIBRARY", options: ["Mga libro", "Mga damit", "Mga gamit", "Mga groceries"], correctAnswer: "Mga libro", explanation: "Ang mga aklatan ay nag-iimbak at nagpapahiram ng mga libro."),
            ExerciseItem(id: UUID(), prompt: "SAPATOS", options: ["medyas", "sumbrero", "Glove", "sinturon"], correctAnswer: "medyas", explanation: "Ang mga medyas ay isinusuot sa loob ng sapatos."),
            ExerciseItem(id: UUID(), prompt: "ASTRONAUT", options: ["kalawakan", "Karagatan", "gubat", "disyerto"], correctAnswer: "kalawakan", explanation: "Ang mga astronaut ay naglalakbay sa kalawakan."),
            ExerciseItem(id: UUID(), prompt: "GURO", options: ["Paaralan", "Pabrika", "Teatro", "Gym"], correctAnswer: "Paaralan", explanation: "Ang mga guro ay nagtuturo sa mga mag-aaral sa mga paaralan."),
            ExerciseItem(id: UUID(), prompt: "KARAGATAN", options: ["Isda", "ibon", "baka", "Gagamba"], correctAnswer: "Isda", explanation: "Ang mga isda ay nakatira sa karagatan."),
            ExerciseItem(id: UUID(), prompt: "KOTSE", options: ["Gulong", "pakpak", "Saddle", "Layag"], correctAnswer: "Gulong", explanation: "Ang mga gulong ay mahalagang bahagi ng mga kotse."),
            ExerciseItem(id: UUID(), prompt: "ULAN", options: ["Payong", "salaming pang-araw", "Mga guwantes", "Scarf"], correctAnswer: "Payong", explanation: "Pinoprotektahan ka ng payong mula sa ulan."),
            ExerciseItem(id: UUID(), prompt: "SUNOG", options: ["Usok", "yelo", "dahon", "barya"], correctAnswer: "Usok", explanation: "Ang apoy ay gumagawa ng usok."),
            ExerciseItem(id: UUID(), prompt: "DENTISTA", options: ["Ngipin", "Buhok", "Mga mata", "Mga paa"], correctAnswer: "Ngipin", explanation: "Dalubhasa ang mga dentista sa kalusugan ng bibig at ngipin."),
            ExerciseItem(id: UUID(), prompt: "KAPE", options: ["tabo", "Mangkok", "Plato", "tinidor"], correctAnswer: "tabo", explanation: "Ang kape ay karaniwang inihahain sa isang tabo."),
            ExerciseItem(id: UUID(), prompt: "HALAMAN", options: ["Bulaklak", "Mga kompyuter", "Mga kalan", "Mga coat"], correctAnswer: "Bulaklak", explanation: "Lumalaki ang mga bulaklak sa isang hardin."),
            ExerciseItem(id: UUID(), prompt: "SUSI", options: ["Lock", "Bintana", "bubong", "Sahig"], correctAnswer: "Lock", explanation: "Ang mga susi ay ginagamit upang buksan ang mga kandado."),
            ExerciseItem(id: UUID(), prompt: "POST OFFICE", options: ["liham", "Tinapay", "Gamot", "Ticket"], correctAnswer: "liham", explanation: "Ang mga liham ay ipinapadala sa koreo."),
            ExerciseItem(id: UUID(), prompt: "PIANO", options: ["Musika", "Kulayan", "Clay", "Kahoy"], correctAnswer: "Musika", explanation: "Ang piano ay isang instrumento na ginagamit sa pagtugtog ng musika."),
            ExerciseItem(id: UUID(), prompt: "BEE", options: ["honey", "Gatas", "Lana", "seda"], correctAnswer: "honey", explanation: "Ang mga bubuyog ay gumagawa ng pulot."),
            ExerciseItem(id: UUID(), prompt: "GAGAMBA", options: ["Sapot", "Pugad", "Lungga", "Kulungan"], correctAnswer: "Sapot", explanation: "Ang mga gagamba ay umiikot sa mga sapot."),
            ExerciseItem(id: UUID(), prompt: "MAGSASAKA", options: ["Traktor", "Eroplano", "Submarino", "Tren"], correctAnswer: "Traktor", explanation: "Gumagamit ang mga magsasaka ng mga traktor sa paggawa ng lupa.")
        ]
    )

    private static let completingProverbs = Exercise(
        id: UUID(),
        title: "Pagkumpleto ng Salawikain",
        instructions: "Piliin ang tamang salita para sa patlang sa salawikain.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Pag may tiyaga, may ___”", options: ["nilaga", "sinigang", "adobo", "tinola"], correctAnswer: "nilaga", explanation: "Ang ibig sabihin ay kapag matiyaga ka sa trabaho, may makukuha kang gantimpala o pagkain."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Ang hindi lumingon sa pinanggalingan, hindi makararating sa ___”", options: ["paroroonan", "bahay", "simbahan", "paaralan"], correctAnswer: "paroroonan", explanation: "Isang paalala na huwag kalimutan ang pinagmulan at maging mapagpakumbaba."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Pag mahaba ang kumot, matutong ___”", options: ["mamaluktot", "matulog", "gumising", "bumangon"], correctAnswer: "mamaluktot", explanation: "Nangangahulugan ito na dapat mamuhay nang naaayon sa iyong kakayahan o badyet."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Habang may buhay, may ___”", options: ["pag-asa", "pangarap", "trabaho", "pera"], correctAnswer: "pag-asa", explanation: "Isang paalala na huwag mawalan ng pag-asa hangga't buhay ka."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Ang sakit ng kalingkingan, dama ng buong ___”", options: ["katawan", "pamilya", "bayan", "kamay"], correctAnswer: "katawan", explanation: "Nangangahulugan ito na ang problema ng isa ay problema ng buong grupo o pamilya."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Kung ano ang itinanim, siya ring ___”", options: ["aanihin", "itatapon", "ibebenta", "kakainin"], correctAnswer: "aanihin", explanation: "Ang iyong mga gawa o desisyon ngayon ay may kaukulang resulta sa hinaharap."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Walang matigas na tinapay sa mainit na ___”", options: ["kape", "gatas", "tsokolate", "tubig"], correctAnswer: "kape", explanation: "Isang pabirong kasabihan na nagsasabing lahat ng pagsubok ay may solusyon o lumalambot din."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Aanhin pa ang damo, kung patay na ang ___”", options: ["kabayo", "kalabaw", "aso", "pusa"], correctAnswer: "kabayo", explanation: "Nangangahulugan ito na walang silbi ang tulong kung huli na ang lahat."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Daig ng maagap ang ___”", options: ["masipag", "matalino", "mayaman", "malakas"], correctAnswer: "masipag", explanation: "Ang taong maagang kumilos ay mas nagtatagumpay kaysa sa taong masipag nga pero huli naman."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Pagka-haba-haba man ng prusisyon, sa ___ din ang tuloy”", options: ["simbahan", "bahay", "sementeryo", "plasa"], correctAnswer: "simbahan", explanation: "Ito ay madalas na tumutukoy sa magkarehas na sa kasalan din ang hantong sa dulo."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Kung may isinuksok, may ___”", options: ["madudukot", "maibebenta", "maipapakita", "maitatago"], correctAnswer: "madudukot", explanation: "Kung natutong mag-ipon, may magagamit sa oras ng pangangailangan o kagipitan."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Bago mo linisin ang dungis ng ibang tao, linisin mo muna ang sa sarili mong ___”", options: ["mukha", "kamay", "bahay", "bakuran"], correctAnswer: "mukha", explanation: "Huwag punahin ang pagkakamali ng iba kung ikaw mismo ay may sariling pagkukulang."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Ang hindi magsalita ay walang ___”", options: ["kaaway", "kaibigan", "kakampi", "kasama"], correctAnswer: "kaaway", explanation: "Ang pananahimik ay minsan nakakaiwas sa gulo at hindi nagdudulot ng kaaway."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Nasa Diyos ang awa, nasa tao ang ___”", options: ["gawa", "tiwala", "pag-asa", "buhay"], correctAnswer: "gawa", explanation: "Kailangang kumilos at magtrabaho ng tao upang matulungan din ng Diyos."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Madaling maging tao, mahirap ___”", options: ["magpakatao", "mabuhay", "magtrabaho", "mag-aral"], correctAnswer: "magpakatao", explanation: "Madaling ipanganak bilang tao, ngunit mahirap kumilos nang may mabuting asal at moralidad."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Magbiro ka na sa lasing, huwag lang sa bagong ___”", options: ["gising", "kain", "ligo", "dating"], correctAnswer: "gising", explanation: "Ang taong bagong gising ay madalas na mainitin ang ulo at walang pasensya."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Kung anong puno, siyang ___”", options: ["bunga", "dahon", "sanga", "ugat"], correctAnswer: "bunga", explanation: "Kung ano ang ugali ng magulang, karaniwan ay ganoon din ang nagiging ugali ng anak."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Ang bayaning masugatan, nag-iibayo ang ___”", options: ["tapang", "takot", "lungkot", "galit"], correctAnswer: "tapang", explanation: "Ang mga pagsubok ay nagpapalakas at nagpapatapang lamang sa isang tao."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Kapag puno na ang salop, dapat nang ___”", options: ["kalusin", "itapon", "inumin", "ubusin"], correctAnswer: "kalusin", explanation: "Ito ay tumutukoy sa taong ubos na ang pasensya dahil sa paulit-ulit na pang-aapi."),
            ExerciseItem(id: UUID(), prompt: "Kumpletuhin ang salawikain: “Huli man at magaling, ___ din”", options: ["naihahabol", "natatanggap", "nagwawagi", "nakukuha"], correctAnswer: "naihahabol", explanation: "Kahit huli na basta't mahusay pa rin ang gawa ay kapuri-puri pa rin.")
        ]
    )

    private static let compoundWords = Exercise(
        id: UUID(),
        title: "Tambalang Salita",
        instructions: "Piliin ang tamang tambalang salita mula sa pagsasama ng dalawang salita.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: bahay + kubo = ___", options: ["bahay-kubo", "bahay-bakasyunan", "bahay-bata", "bahay-hari"], correctAnswer: "bahay-kubo", explanation: "Ang tradisyonal na kubo sa Pilipinas ay tinatawag na bahay-kubo."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: silid + aralan = ___", options: ["silid-aralan", "silid-tulugan", "silid-kainan", "silid-tanggapan"], correctAnswer: "silid-aralan", explanation: "Ang silid kung saan nag-aaral ang mga estudyante ay silid-aralan."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: balik + bayan = ___", options: ["balikbayan", "balik-aral", "balik-loob", "balik-tanaw"], correctAnswer: "balikbayan", explanation: "Ang Pilipinong bumabalik sa Pilipinas mula sa ibang bansa ay tinatawag na balikbayan."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: abot + kaya = ___", options: ["abot-kaya", "abot-tanaw", "abot-kamay", "abot-singil"], correctAnswer: "abot-kaya", explanation: "Ang presyong mura o kayang bayaran ay tinatawag na abot-kaya."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: anak + pawis = ___", options: ["anak-pawis", "anak-araw", "anak-dalandan", "anak-tibak"], correctAnswer: "anak-pawis", explanation: "Ang mga manggagawa o mahihirap na pamilya ay tinutukoy bilang anak-pawis."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: kapit + bahay = ___", options: ["kapitbahay", "kapit-tuko", "kapit-bisig", "kapit-patid"], correctAnswer: "kapitbahay", explanation: "Ang taong nakatira sa katabing bahay mo ay iyong kapitbahay."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: hampas + lupa = ___", options: ["hampaslupa", "hampas-tikang", "hampas-kawayan", "hampas-tenga"], correctAnswer: "hampaslupa", explanation: "Isang sawikain para sa taong palaboy o walang permanenteng tirahan."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: takip + silim = ___", options: ["takipsilim", "takip-mata", "takip-butas", "takip-singil"], correctAnswer: "takipsilim", explanation: "Ang oras bago dumilim o pagkatapos lumubog ang araw ay takipsilim."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: hanap + buhay = ___", options: ["hanapbuhay", "hanap-salita", "hanap-turing", "hanap-gulo"], correctAnswer: "hanapbuhay", explanation: "Ang trabaho o pinagkakakitaan ng isang tao ay ang kanyang hanapbuhay."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: hati + gabi = ___", options: ["hatinggabi", "hating-araw", "hating-daan", "hating-tapat"], correctAnswer: "hatinggabi", explanation: "Ang eksaktong alas-dose ng gabi ay tinatawag na hatinggabi."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: tao + bundok = ___", options: ["taong-bundok", "taong-bayan", "taong-gubat", "taong-bahay"], correctAnswer: "taong-bundok", explanation: "Tumutukoy sa mga taong nakatira o nagmula sa mga bulubunduking lugar."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: dalaga + bukid = ___", options: ["dalagang-bukid", "dalagang-siyudad", "dalagang-ina", "dalagang-maybahay"], correctAnswer: "dalagang-bukid", explanation: "Maaaring tumukoy sa isang uri ng isda o sa isang simpleng babae sa bukid."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: boses + palaka = ___", options: ["boses-palaka", "boses-ipis", "boses-ibon", "boses-langgam"], correctAnswer: "boses-palaka", explanation: "Isang tambalang salita para sa taong sintunado o pangit kumanta."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: asal + hayop = ___", options: ["asal-hayop", "asal-bata", "asal-mayaman", "asal-bayan"], correctAnswer: "asal-hayop", explanation: "Tumutukoy sa masamang pag-uugali o kawalan ng respeto."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: mata + lawin = ___", options: ["matang-lawin", "matang-pusa", "matang-manok", "matang-isda"], correctAnswer: "matang-lawin", explanation: "Tumutukoy sa taong may matalas o mapagmasid na paningin."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: basag + ulo = ___", options: ["basag-ulo", "basag-trip", "basag-kotse", "basag-pinggan"], correctAnswer: "basag-ulo", explanation: "Isang tambalang salita na nangangahulugang gulo o away."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: sulat + kamay = ___", options: ["sulat-kamay", "sulat-papel", "sulat-bakod", "sulat-kamit"], correctAnswer: "sulat-kamay", explanation: "Ang teksto o liham na isinulat gamit ang kamay at panulat."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: kusa + loob = ___", options: ["kusang-loob", "kusang-isip", "kusang-gawa", "kusang-dating"], correctAnswer: "kusang-loob", explanation: "Ang pagtulong o pagkilos nang hindi pinupuwersa o kusang nagkukusa."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: anak + araw = ___", options: ["anak-araw", "anak-pawis", "anak-bayan", "anak-bukid"], correctAnswer: "anak-araw", explanation: "Tumutukoy sa taong may albinismo o albino."),
            ExerciseItem(id: UUID(), prompt: "Pagsamahin ang dalawang salita: lakbay + aral = ___", options: ["lakbay-aral", "lakbay-bayan", "lakbay-langit", "lakbay-dagat"], correctAnswer: "lakbay-aral", explanation: "Isang uri ng field trip na may layuning pang-edukasyon.")
        ]
    )

    private static let prefixesSuffixes = Exercise(
        id: UUID(),
        title: "Mga Panlapi (Unlapi, Gitlapi, Hulapi)",
        instructions: "Piliin ang tamang sagot ukol sa gamit o kahulugan ng panlapi.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “mag-” sa salitang “magsapatos”?", options: ["magsapatos", "sumapatos", "sinapatos", "sapatosang"], correctAnswer: "magsapatos", explanation: "Ang unlapi (prefix) na “mag-” ay ginagamit upang ipakita ang kilos ng pagsuot o paggamit ng sapatos."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-um-” sa salitang “kumain”?", options: ["kumain", "magkain", "kinain", "kainan"], correctAnswer: "kumain", explanation: "Ang gitlapi (infix) na “-um-” ay isinisingit sa salitang-ugat na “kain” upang ipakita ang pandiwa."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-in-” sa salitang “niluto”?", options: ["niluto", "magluto", "lumuto", "lutuan"], correctAnswer: "niluto", explanation: "Ang gitlapi na “-in-” ay ginagamit upang ipakita na ang pagkain ay natapos nang iluto."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-an” sa salitang “gupitan”?", options: ["gupitan", "manggupit", "gumupit", "ginupit"], correctAnswer: "gupitan", explanation: "Ang hulapi (suffix) na “-an” ay ginagamit upang ipakita ang lugar kung saan ginagawa ang paggupit."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-hin” sa salitang “basahin”?", options: ["basahin", "bumasa", "magbasa", "binasa"], correctAnswer: "basahin", explanation: "Ang hulapi na “-hin” ay nagpapakita na ang libro o teksto ang siyang tatanggap ng kilos ng pagbasa."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “pag-” sa salitang “pag-alis”?", options: ["pag-alis", "umalis", "inalis", "alisan"], correctAnswer: "pag-alis", explanation: "Ang unlapi na “pag-” ay ginagamit upang gawing pangngalan ang kilos ng pag-alis."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “ka-” sa salitang “kaibigan”?", options: ["kaibigan", "ibigan", "mag-ibigan", "maibigin"], correctAnswer: "kaibigan", explanation: "Ang panlaping “ka-” ay ginagamit upang ipakita ang ugnayan o kasama sa isang relasyon."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-an” sa salitang “aklatan”?", options: ["aklatan", "mag-aklat", "inaklat", "aklat-aklatan"], correctAnswer: "aklatan", explanation: "Ang hulapi na “-an” ay idinaragdag sa salitang “aklat” upang tumukoy sa silid-aklatan o library."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “ma-” sa salitang “mabait”?", options: ["mabait", "kabaitan", "bumait", "baitin"], correctAnswer: "mabait", explanation: "Ang unlapi na “ma-” ay ginagamit upang bumuo ng pang-uri (adjective) na naglalarawan ng katangian."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “pala-” sa salitang “palasimba”?", options: ["palasimba", "sumimba", "simbahan", "sinimba"], correctAnswer: "palasimba", explanation: "Ang panlaping “pala-” ay nagpapakita ng ugali o gawi na madalas gawin ang isang bagay tulad ng pagsimba."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “taga-” sa salitang “tagaluto”?", options: ["tagaluto", "nagluto", "lutuan", "ipagluto"], correctAnswer: "tagaluto", explanation: "Ang unlapi na “taga-” ay nagpapakita ng papel o trabaho ng isang tao tulad ng pagluluto."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “maki-” sa salitang “makisali”?", options: ["makisali", "sumali", "isali", "salian"], correctAnswer: "makisali", explanation: "Ang panlaping “maki-” ay nagpapahayag ng pakikiusap o pagsama sa ginagawa ng iba."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “na-” sa salitang “nadulas”?", options: ["nadulas", "madulas", "dulasan", "magdulas"], correctAnswer: "nadulas", explanation: "Ang panlaping “na-” ay nagpapakita ng hindi sinasadyang pangyayari sa nakaraan."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “magka-” sa salitang “magkaibigan”?", options: ["magkaibigan", "kaibigan", "pagkakaibigan", "makipagkaibigan"], correctAnswer: "magkaibigan", explanation: "Ang panlaping “magka-” ay nagpapakita ng ugnayan sa pagitan ng dalawang tao."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “pinakama-” sa salitang “pinakamaganda”?", options: ["pinakamaganda", "maganda", "napaganda", "pagpapaganda"], correctAnswer: "pinakamaganda", explanation: "Ang panlaping “pinakama-” ay nagpapakita ng pinakamataas na antas ng paghahambing (superlative)."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “pa-” sa salitang “paalis”?", options: ["paalis", "umalis", "inalis", "alisan"], correctAnswer: "paalis", explanation: "Ang panlaping “pa-” ay nagpapakita na ang isang tao ay nakatakda o malapit nang umalis."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-um-” sa salitang “sumulat”?", options: ["sumulat", "magsulat", "sinulat", "sulatan"], correctAnswer: "sumulat", explanation: "Ang gitlapi na “-um-” ay ginagamit upang gawing aktibong kilos ang pagsulat."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “-in-” sa salitang “ginawa”?", options: ["ginawa", "gumawa", "maggawa", "gagawa"], correctAnswer: "ginawa", explanation: "Ang gitlapi na “-in-” ay nagpapakita na ang gawain ay natapos na."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “sang-” sa salitang “sangkatauhan”?", options: ["sangkatauhan", "katauhan", "makatao", "pantao"], correctAnswer: "sangkatauhan", explanation: "Ang panlaping “sang-” ay tumutukoy sa kabuuan ng sangkatauhan o buong lipunan."),
            ExerciseItem(id: UUID(), prompt: "Ano ang kahulugan o gamit ng panlaping “ma-” sa salitang “malungkot”?", options: ["malungkot", "kalungkutan", "maglungkot", "lungkutan"], correctAnswer: "malungkot", explanation: "Ang unlapi na “ma-” ay naglalarawan ng emosyonal na estado ng pagiging malungkot.")
        ]
    )

}
