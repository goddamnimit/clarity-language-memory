import Foundation

/// Holds the 14 new Tagalog exercises translated and adapted from the English version.
/// Covers the Language, Cognition, and Functional Skills sections.
struct TagalogNewExercisesData {

    /// The complete collection of all 14 new Tagalog exercises.
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
        title: "Mga Magkakatugmang Salita",
        instructions: "Piliin ang salitang katugma ng ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Aling salita ang katugma ng ASO?", options: ["Pusa", "Baso", "Ibon", "Dahon"], correctAnswer: "Baso", explanation: "Ang aso at baso ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng KAMA?", options: ["Lamesa", "Sama", "Silya", "Pinto"], correctAnswer: "Sama", explanation: "Ang kama at sama ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng BAHAY?", options: ["Buhay", "Susi", "Dingding", "Bintana"], correctAnswer: "Buhay", explanation: "Ang bahay at buhay ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng LATA?", options: ["Bato", "Bata", "Dahon", "Papel"], correctAnswer: "Bata", explanation: "Ang lata at bata ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng TULOG?", options: ["Gising", "Kain", "Hulog", "Lakad"], correctAnswer: "Hulog", explanation: "Ang tulog at hulog ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng KANIN?", options: ["Ulam", "Gabi", "Anghel", "Tanawin"], correctAnswer: "Tanawin", explanation: "Ang kanin at tanawin ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng HARI?", options: ["Kabayo", "Pari", "Reyna", "Kastilyo"], correctAnswer: "Pari", explanation: "Ang hari at pari ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng GATAS?", options: ["Kape", "Batas", "Mesa", "Tubig"], correctAnswer: "Batas", explanation: "Ang gatas at batas ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng BULAKLAK?", options: ["Dahon", "Ulan", "Halakhak", "Puno"], correctAnswer: "Halakhak", explanation: "Ang bulaklak at halakhak ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng SULAT?", options: ["Basa", "Mulat", "Papel", "Lapis"], correctAnswer: "Mulat", explanation: "Ang sulat at mulat ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng LUPA?", options: ["Ruler", "Tupa", "Langit", "Dagat"], correctAnswer: "Tupa", explanation: "Ang lupa at tupa ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng KULAY?", options: ["Guhit", "Tulay", "Pula", "Puti"], correctAnswer: "Tulay", explanation: "Ang kulay at tulay ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng ARAW?", options: ["Gabi", "Ulan", "Sitaw", "Hangin"], correctAnswer: "Sitaw", explanation: "Ang araw at sitaw ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng BATO?", options: ["Lupa", "Pinto", "Kahoy", "Dahon"], correctAnswer: "Pinto", explanation: "Ang bato at pinto ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng DINGDING?", options: ["Bahay", "Susi", "Singsing", "Pinto"], correctAnswer: "Singsing", explanation: "Ang dingding at singsing ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng DAHON?", options: ["Puno", "Kahoy", "Kahon", "Ulan"], correctAnswer: "Kahon", explanation: "Ang dahon at kahon ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng HANGIN?", options: ["Ulan", "Kain", "Araw", "Langit"], correctAnswer: "Kain", explanation: "Ang hangin at kain ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng ILAW?", options: ["Dilim", "Gabi", "Sigaw", "Susi"], correctAnswer: "Sigaw", explanation: "Ang ilaw at sigaw ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng ISDA?", options: ["Dagat", "Tanda", "Bato", "Pusa"], correctAnswer: "Tanda", explanation: "Ang isda at tanda ay magkatugma dahil magkapareho ang tunog sa dulo."),
            ExerciseItem(prompt: "Aling salita ang katugma ng ULAN?", options: ["Baha", "Dagat", "Kalan", "Hangin"], correctAnswer: "Kalan", explanation: "Ang ulan at kalan ay magkatugma dahil magkapareho ang tunog sa dulo.")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "Pag-uugnay ng Salita",
        instructions: "Piliin ang salitang pinakamalapit ang kaugnayan sa ibinigay na salita.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "DOKTOR", options: ["Ospital", "Paliparan", "Aklatan", "Bukid"], correctAnswer: "Ospital", explanation: "Ang mga doktor ay nagtatrabaho sa ospital upang manggamot ng mga pasyente."),
            ExerciseItem(prompt: "TINAPAY", options: ["Mantekilya", "Martilyo", "Sabon", "Lapis"], correctAnswer: "Mantekilya", explanation: "Ang mantekilya ay karaniwang ipinapahid sa tinapay."),
            ExerciseItem(prompt: "KUSINA", options: ["Kalan", "Kama", "Shower", "Kotse"], correctAnswer: "Kalan", explanation: "Ang kalan ay ang pangunahing kagamitan sa kusina."),
            ExerciseItem(prompt: "AKLATAN", options: ["Mga Libro", "Mga Damit", "Mga Kasangkapan", "Mga Pagkain"], correctAnswer: "Mga Libro", explanation: "Sa aklatan itinatabi at hinihiram ang mga libro."),
            ExerciseItem(prompt: "SAPATOS", options: ["Medyas", "Sumbrero", "Guwantes", "Sinturon"], correctAnswer: "Medyas", explanation: "Ang medyas ay isinusuot sa loob ng sapatos."),
            ExerciseItem(prompt: "ASTRONAUT", options: ["Kalawakan", "Karagatan", "Gubat", "Disyerto"], correctAnswer: "Kalawakan", explanation: "Ang mga astronaut ay naglalakbay sa kalawakan."),
            ExerciseItem(prompt: "GURO", options: ["Paaralan", "Pabrika", "Teatro", "Gym"], correctAnswer: "Paaralan", explanation: "Ang mga guro ay nagtuturo sa mga mag-aaral sa paaralan."),
            ExerciseItem(prompt: "KARAGATAN", options: ["Isda", "Ibon", "Baka", "Gagamba"], correctAnswer: "Isda", explanation: "Ang mga isda ay nakatira sa karagatan."),
            ExerciseItem(prompt: "KOTSE", options: ["Gulong", "Pakpak", "Silya ng kabayo", "Layag"], correctAnswer: "Gulong", explanation: "Ang mga gulong ay mahalagang bahagi ng kotse."),
            ExerciseItem(prompt: "ULAN", options: ["Payong", "Salamin sa Araw", "Guwantes", "Scarf"], correctAnswer: "Payong", explanation: "Ang payong ay nagpoprotekta sa iyo laban sa ulan."),
            ExerciseItem(prompt: "APOY", options: ["Usok", "Yelo", "Dahon", "Barya"], correctAnswer: "Usok", explanation: "Ang apoy ay lumilikha ng usok."),
            ExerciseItem(prompt: "DENTISTA", options: ["Mga Ngipin", "Buhok", "Mga Mata", "Mga Paa"], correctAnswer: "Mga Ngipin", explanation: "Ang mga dentista ay dalubhasa sa kalusugan ng bibig at mga ngipin."),
            ExerciseItem(prompt: "KAPE", options: ["Tasa", "Mangkok", "Plato", "Tinidor"], correctAnswer: "Tasa", explanation: "Ang kape ay karaniwang inihahain sa tasa."),
            ExerciseItem(prompt: "HALAMANAN", options: ["Mga Bulaklak", "Mga Kompyuter", "Mga Kalan", "Mga Jaket"], correctAnswer: "Mga Bulaklak", explanation: "Ang mga bulaklak ay lumalaki sa halamanan."),
            ExerciseItem(prompt: "SUSI", options: ["Kandado", "Bintana", "Bubong", "Sahig"], correctAnswer: "Kandado", explanation: "Ang susi ay ginagamit upang buksan ang kandado."),
            ExerciseItem(prompt: "TANGGAPAN NG KOREO", options: ["Sulat", "Tinapay", "Gamot", "Tiket"], correctAnswer: "Sulat", explanation: "Ang mga sulat ay ipinapadala sa tanggapan ng koreo."),
            ExerciseItem(prompt: "PIYANO", options: ["Musika", "Pintura", "Luwad", "Kahoy"], correctAnswer: "Musika", explanation: "Ang piyano ay isang instrumento na ginagamit sa pagtugtog ng musika."),
            ExerciseItem(prompt: "BUBUYOG", options: ["Pulot-pukyutan", "Gatas", "Lana", "Sutla"], correctAnswer: "Pulot-pukyutan", explanation: "Ang mga bubuyog ay gumagawa ng pulot-pukyutan."),
            ExerciseItem(prompt: "GAGAMBA", options: ["Sapot", "Pugad", "Bahay-pukyutan", "Kweba"], correctAnswer: "Sapot", explanation: "Ang mga gagamba ay gumagawa ng sapot."),
            ExerciseItem(prompt: "MAGSASAKA", options: ["Traktora", "Eroplano", "Submarine", "Tren"], correctAnswer: "Traktora", explanation: "Ang mga magsasaka ay gumagamit ng traktora sa pagbubukid.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "Kumpletuhin ang Kasabihan",
        instructions: "Kumpletuhin ang kilalang kasabihan o salawikain.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Pag may tiyaga, may ___.", options: ["Nilaga", "Ginhawa", "Ginto", "Pera"], correctAnswer: "Nilaga", explanation: "Ang tradisyonal na kasabihan ay: Pag may tiyaga, may nilaga. Ibig sabihin, ang taong matiyaga ay nagtatamo ng gantimpala."),
            ExerciseItem(prompt: "Aanhin pa ang damo kung patay na ang ___.", options: ["Baka", "Kabayo", "Kambing", "Kalabaw"], correctAnswer: "Kabayo", explanation: "Aanhin pa ang damo kung patay na ang kabayo. Ibig sabihin, hindi na mapapakinabangan ang tulong kung huli na."),
            ExerciseItem(prompt: "Habang maikli ang kumot, matutong ___.", options: ["Mamaluktot", "Matulog", "Bumili", "Magtipid"], correctAnswer: "Mamaluktot", explanation: "Habang maikli ang kumot, matutong mamaluktot. Ibig sabihin, matutong mamuhay ayon sa kakayahan."),
            ExerciseItem(prompt: "Kung ano ang itinanim, siya ring ___.", options: ["Aanihin", "Tubo", "Lalago", "Kakainin"], correctAnswer: "Aanihin", explanation: "Kung ano ang itinanim, siya ring aanihin. Ang ginawa mo sa kapwa ay babalik din sa iyo."),
            ExerciseItem(prompt: "Ang hindi lumingon sa pinanggalingan ay hindi makakarating sa ___.", options: ["Paroroonan", "Bahay", "Bayan", "Tindahan"], correctAnswer: "Paroroonan", explanation: "Ang hindi lumingon sa pinanggalingan ay hindi makakarating sa paroroonan. Pahalagahan ang iyong pinagmulan."),
            ExerciseItem(prompt: "Walang matigas na tinapay sa mainit na ___.", options: ["Kape", "Gatas", "Tubig", "Tsaa"], correctAnswer: "Kape", explanation: "Walang matigas na tinapay sa mainit na kape. Walang mahirap na gawain sa taong pursigido."),
            ExerciseItem(prompt: "Kung may isinuksok, may ___.", options: ["Madudukot", "Makukuha", "Mabibili", "Masisilip"], correctAnswer: "Madudukot", explanation: "Kung may isinuksok, may madudukot. Kapag ikaw ay nag-ipon, may magagamit ka sa oras ng pangangailangan."),
            ExerciseItem(prompt: "Nasa Diyos ang awa, nasa tao ang ___.", options: ["Gawa", "Sipag", "Buhay", "Tulong"], correctAnswer: "Gawa", explanation: "Nasa Diyos ang awa, nasa tao ang gawa. Kailangan nating kumilos upang makamit ang ating mga layunin."),
            ExerciseItem(prompt: "Ang sakit ng kalingkingan, damdam ng buong ___.", options: ["Katawan", "Kamay", "Pamilya", "Bayan"], correctAnswer: "Katawan", explanation: "Ang sakit ng kalingkingan, damdam ng buong katawan. Ang problema ng isang miyembro ng grupo ay damay ang lahat."),
            ExerciseItem(prompt: "Kapag ang puno ay may bunga, madalas ay ___.", options: ["Binabato", "Pinipitas", "Kinakain", "Pinuputol"], correctAnswer: "Binabato", explanation: "Kapag ang puno ay may bunga, madalas ay binabato. Ang taong matagumpay o sikat ay madalas na pinupuna o kinaiinggitan."),
            ExerciseItem(prompt: "Walang lihim na hindi ___.", options: ["Nabubunyag", "Nasasabi", "Nalilimutan", "Nawawala"], correctAnswer: "Nabubunyag", explanation: "Walang lihim na hindi nabubunyag. Lalabas at lalabas pa rin ang katotohanan."),
            ExerciseItem(prompt: "Magbiro ka na sa lasing, huwag lang sa bagong ___.", options: ["Gising", "Kasal", "Ligo", "Tuli"], correctAnswer: "Gising", explanation: "Magbiro ka na sa lasing, huwag lang sa bagong gising. Ang taong bagong gising ay karaniwang mainitin ang ulo."),
            ExerciseItem(prompt: "Daig ng maagap ang ___.", options: ["Masipag", "Matatalino", "Mayaman", "Malakas"], correctAnswer: "Masipag", explanation: "Daig ng maagap ang masipag. Mas may bentahe ang taong maagang kumilos kaysa sa masipag ngunit huli naman."),
            ExerciseItem(prompt: "Ang lakas ng loob ay sandata ng ___.", options: ["Duwag", "Matapang", "Sundalo", "Bayan"], correctAnswer: "Duwag", explanation: "Ang lakas ng loob ay sandata ng duwag. Ang kunwaring tapang ay madalas gamitin ng taong takot naman talaga."),
            ExerciseItem(prompt: "Ang bayaning nasusugatan, nag-iibayo ang ___.", options: ["Tapang", "Lakas", "Sakit", "Takot"], correctAnswer: "Tapang", explanation: "Ang bayaning nasusugatan, nag-iibayo ang tapang. Ang mga pagsubok ay nagpapalakas at nagpapatapang sa isang tao."),
            ExerciseItem(prompt: "Bago mo punahin ang dungis ng iyong kapwa, tingnan mo muna ang sa iyong ___.", options: ["Sarili", "Mukha", "Kamay", "Salamin"], correctAnswer: "Sarili", explanation: "Dapat muna nating suriin ang sarili bago punahin ang iba."),
            ExerciseItem(prompt: "Sa kapipili, ang nakuha ay ___.", options: ["Bungi", "Bulok", "Mabuti", "Sira"], correctAnswer: "Bungi", explanation: "Sa kapipili, ang nakuha ay bungi. Kapag masyadong mapili, minsan ay mas masamang bagay ang napipili sa huli."),
            ExerciseItem(prompt: "Kung ano ang puno, siya ang ___.", options: ["Bunga", "Dahon", "Sanga", "Ugat"], correctAnswer: "Bunga", explanation: "Kung ano ang puno, siya ang bunga. Ang katangian ng magulang ay madalas na makikita sa mga anak."),
            ExerciseItem(prompt: "Madali ang maging tao, mahirap ___.", options: ["Magpakatao", "Mabuhay", "Magtrabaho", "Mag-aral"], correctAnswer: "Magpakatao", explanation: "Madali ang maging tao, mahirap magpakatao. Madaling isilang bilang tao, ngunit mahirap mamuhay nang may mabuting asal."),
            ExerciseItem(prompt: "Ang taong nagigipit, sa ___ kumakapit.", options: ["Patalim", "Diyos", "Pader", "Kaibigan"], correctAnswer: "Patalim", explanation: "Ang taong nagigipit, sa patalim kumakapit. Ang taong desperado ay handang gumawa ng kahit anong mapanganib na bagay.")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Mga Tambalang Salita",
        instructions: "Piliin ang tamang salita upang mabuo ang tambalang salita.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "BAHAY + ___", options: ["Kubo", "Bata", "Dagat", "Lupa"], correctAnswer: "Kubo", explanation: "Bahay + Kubo = Bahay-kubo."),
            ExerciseItem(prompt: "BALAT + ___", options: ["Sibuyas", "Bawang", "Saging", "Lupa"], correctAnswer: "Sibuyas", explanation: "Balat + Sibuyas = Balat-sibuyas."),
            ExerciseItem(prompt: "HAMPAS + ___", options: ["Lupa", "Langit", "Dagat", "Bato"], correctAnswer: "Lupa", explanation: "Hampas + Lupa = Hampaslupa."),
            ExerciseItem(prompt: "ANAK + ___", options: ["Pawis", "Gatas", "Lupa", "Bayan"], correctAnswer: "Pawis", explanation: "Anak + Pawis = Anak-pawis."),
            ExerciseItem(prompt: "BUKAS + ___", options: ["Palad", "Mata", "Pinto", "Puso"], correctAnswer: "Palad", explanation: "Bukas + Palad = Bukas-palad."),
            ExerciseItem(prompt: "SILID + ___", options: ["Aralan", "Higaan", "Luto", "Kainan"], correctAnswer: "Aralan", explanation: "Silid + Aralan = Silid-aralan."),
            ExerciseItem(prompt: "KAPIT + ___", options: ["Bahay", "Tuko", "Bisig", "Lupa"], correctAnswer: "Bahay", explanation: "Kapit + Bahay = Kapitbahay."),
            ExerciseItem(prompt: "DALAGANG + ___", options: ["Bukid", "Bayan", "Bundok", "Dagat"], correctAnswer: "Bukid", explanation: "Dalagang + Bukid = Dalagang-bukid."),
            ExerciseItem(prompt: "TAOS + ___", options: ["Puso", "Isip", "Kamay", "Mata"], correctAnswer: "Puso", explanation: "Taos + Puso = Taos-puso."),
            ExerciseItem(prompt: "ABOT + ___", options: ["Tanaw", "Langit", "Kamay", "Sigaw"], correctAnswer: "Tanaw", explanation: "Abot + Tanaw = Abot-tanaw."),
            ExerciseItem(prompt: "BASAG + ___", options: ["Ulo", "Baso", "Bote", "Pinto"], correctAnswer: "Ulo", explanation: "Basag + Ulo = Basag-ulo."),
            ExerciseItem(prompt: "TAKIP + ___", options: ["Silim", "Araw", "Ulan", "Gabi"], correctAnswer: "Silim", explanation: "Takip + Silim = Takipsilim."),
            ExerciseItem(prompt: "TENGANG + ___", options: ["Kawali", "Bato", "Lupa", "Plato"], correctAnswer: "Kawali", explanation: "Tengang + Kawali = Tengang-kawali."),
            ExerciseItem(prompt: "HANAP + ___", options: ["Buhay", "Pera", "Kain", "Ginto"], correctAnswer: "Buhay", explanation: "Hanap + Buhay = Hanapbuhay."),
            ExerciseItem(prompt: "ISIP + ___", options: ["Bata", "Matanda", "Matalino", "Guro"], correctAnswer: "Bata", explanation: "Isip + Bata = Isip-bata."),
            ExerciseItem(prompt: "HAPAG + ___", options: ["Kainan", "Tulugan", "Sulat", "Laro"], correctAnswer: "Kainan", explanation: "Hapag + Kainan = Hapag-kainan."),
            ExerciseItem(prompt: "NAKAW + ___", options: ["Tingin", "Pera", "Takbo", "Kuha"], correctAnswer: "Tingin", explanation: "Nakaw + Tingin = Nakaw-tingin."),
            ExerciseItem(prompt: "TUBIG + ___", options: ["Alat", "Tabang", "Ulan", "Baha"], correctAnswer: "Alat", explanation: "Tubig + Alat = Tubig-alat."),
            ExerciseItem(prompt: "NINGAS + ___", options: ["Kugon", "Apoy", "Usok", "Kahoy"], correctAnswer: "Kugon", explanation: "Ningas + Kugon = Ningas-kugon."),
            ExerciseItem(prompt: "PATAY + ___", options: ["Gutom", "Buhay", "Sindi", "Kain"], correctAnswer: "Gutom", explanation: "Patay + Gutom = Patay-gutom.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "Mga Panlapi",
        instructions: "Piliin ang tamang panlapi o salitang may panlapi upang mabuo ang pangungusap o salita.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Anong unlapi ang idinaragdag sa salitang-ugat na 'aral' upang maging 'mag-aaral'?", options: ["mag-", "um-", "in-", "an-"], correctAnswer: "mag-", explanation: "Ang unlaping 'mag-' sa mag-aaral ay tumutukoy sa taong gumagawa ng kilos."),
            ExerciseItem(prompt: "Anong hulapi ang ginamit sa salitang 'sundin' mula sa salitang-ugat na 'sunod'?", options: ["-in", "-an", "-um-", "ma-"], correctAnswer: "-in", explanation: "Ang hulaping '-in' ay idinaragdag sa dulo ng salita (sunod + in -> sundin)."),
            ExerciseItem(prompt: "Upang maipahayag na ang isang kilos ay kasalukuyang ginagawa tulad ng 'kumakain', anong gitlapi ang ginamit sa salitang-ugat na 'kain'?", options: ["-um-", "-in-", "mag-", "-an"], correctAnswer: "-um-", explanation: "Ang gitlaping '-um-' ay inilalagay sa gitna ng salitang kain (k+um+ain -> kumain/kumakain)."),
            ExerciseItem(prompt: "Anong hulapi ang ginamit sa salitang 'mabasagin'?", options: ["-in", "-an", "-on", "-un"], correctAnswer: "-in", explanation: "Ang hulaping '-in' ay idinaragdag sa mabasag upang mabuo ang mabasagin."),
            ExerciseItem(prompt: "Ang salitang-ugat na 'sulat' kapag nilagyan ng unlaping 'mag-' at inulit ang unang pantig ay magiging ___sulat.", options: ["magsusulat", "sumulat", "isulat", "sulatan"], correctAnswer: "magsusulat", explanation: "Ang 'magsusulat' ay nagpapakita ng kilos na gagawin pa lamang sa hinaharap."),
            ExerciseItem(prompt: "Anong unlapi ang ginamit sa salitang 'di-maganda'?", options: ["di-", "mag-", "maka-", "pala-"], correctAnswer: "di-", explanation: "Ang unlaping 'di-' o 'hindi' ay nagpapahayag ng pagtanggi o negatibong kahulugan."),
            ExerciseItem(prompt: "Upang gawing pangngalan ang pandiwang 'tugtog', maaari itong lagyan ng panlapi upang maging '___tugtog'.", options: ["manunugtog", "tumugtog", "tugtugan", "patugtugin"], correctAnswer: "manunugtog", explanation: "Ang 'manunugtog' ay tumutukoy sa taong tumutugtog ng instrumento."),
            ExerciseItem(prompt: "Sa salitang 'binasa', anong panlapi ang ginamit sa salitang-ugat na 'basa'?", options: ["-in-", "-um-", "mag-", "-an"], correctAnswer: "-in-", explanation: "Ang '-in-' ay isang gitlapi na inilagay sa loob ng salitang basa (b+in+asa) upang maging binasa."),
            ExerciseItem(prompt: "Kung ang isang tao ay mahilig matulog, siya ay ___tulog.", options: ["pala-", "mag-", "ma-", "um-"], correctAnswer: "pala-", explanation: "Ang unlaping 'pala-' ay nagpapahayag ng ugali o gawaing madalas gawin ng isang tao."),
            ExerciseItem(prompt: "Anong panlapi ang idinagdag sa 'tawa' upang mabuo ang salitang 'tawanan'?", options: ["-an", "-in", "mag-", "um-"], correctAnswer: "-an", explanation: "Ang hulaping '-an' ay idinaragdag sa dulo ng salitang tawa upang maging tawanan."),
            ExerciseItem(prompt: "Anong panlapi ang ginamit sa salitang 'pumunta'?", options: ["Gitlaping -um-", "Unlaping pu-", "Hulaping -ta", "Kabilaang pu-an"], correctAnswer: "Gitlaping -um-", explanation: "Ang '-um-' ay nakasingit sa gitna ng salitang-ugat na punta (p+um+unta)."),
            ExerciseItem(prompt: "Upang sabihin na ang isang tao ay kasama sa trabaho, ginagamit ang unlaping 'ka-' upang maging '___trabaho'.", options: ["katrabaho", "magtrabaho", "pagtrabahuhan", "trabahador"], correctAnswer: "katrabaho", explanation: "Ang unlaping 'ka-' ay nagpapahiwatig ng kasama o kapareho."),
            ExerciseItem(prompt: "Kung ang isang bagay ay puno ng kulay, ito ay ___kulay.", options: ["makulay", "maka-kulay", "pala-kulay", "kulayan"], correctAnswer: "makulay", explanation: "Ang unlaping 'ma-' ay nagpapakita ng pagkakaroon ng maraming katangian ng salitang-ugat."),
            ExerciseItem(prompt: "Sa salitang-ugat na 'ganda', paano ito gagawing salitang naglalarawan (adjective) na nangangahulugang nagtataglay ng kagandahan?", options: ["Lagyan ng unlaping ma- (maganda)", "Lagyan ng hulaping -an (gandahan)", "Lagyan ng gitlapi (gumanda)", "Ulitin ang buong salita"], correctAnswer: "Lagyan ng unlaping ma- (maganda)", explanation: "Ang unlaping 'ma-' ay ginagamit sa pagbuo ng pang-uri tulad ng maganda."),
            ExerciseItem(prompt: "Kung ang kilos na 'luto' ay katatapos pa lamang gawin, paano ito isusulat gamit ang panlaping 'ka-'?", options: ["kaluluto", "magluto", "lutuin", "nagpaluto"], correctAnswer: "kaluluto", explanation: "Ang panlaping 'ka-' na may pag-uulit ng unang pantig ng salitang-ugat ay nagpapahiwatig ng kilos na katatapos pa lamang gawin."),
            ExerciseItem(prompt: "Anong panlapi ang ginamit sa salitang 'tinulungan' mula sa salitang-ugat na 'tulong'?", options: ["Gitlaping -in- at hulaping -an", "Unlaping ti- lamang", "Hulaping -an lamang", "Gitlapi lamang"], correctAnswer: "Gitlaping -in- at hulaping -an", explanation: "Ang tinulungan ay may gitlaping -in- at hulaping -an (t+in+ulong+an -> tinulungan)."),
            ExerciseItem(prompt: "Kung ang isang tao ay mahilig magtanong, siya ay ___tanong.", options: ["palatanong", "magtatanong", "itinanong", "tanungan"], correctAnswer: "palatanong", explanation: "Ang 'pala-' ay panlaping nagpapakita ng dalas o ugali ng isang tao."),
            ExerciseItem(prompt: "Anong panlapi ang idinaragdag sa salitang 'laro' upang tukuyin ang lugar kung saan naglalaro ang mga tao?", options: ["Hulaping -an (laruan)", "Unlaping mag- (maglaro)", "Gitlaping -um- (lumaro)", "Hulaping -in (laruin)"], correctAnswer: "Hulaping -an (laruan)", explanation: "Ang hulaping '-an' ay madalas gamitin para sa lugar kung saan ginagawa ang kilos (laro + an = laroan / palaruan)."),
            ExerciseItem(prompt: "Upang gawing pandiwa ang salitang 'linis' na ang ibig sabihin ay magsagawa ng paglilinis, anong unlapi ang gagamitin?", options: ["mag- (maglinis)", "-um- (luminis)", "maka- (makalinis)", "pala- (palalinis)"], correctAnswer: "mag- (maglinis)", explanation: "Ang 'mag-' ay ginagamit upang ipakita ang pagsasagawa ng aksyon ng paglilinis."),
            ExerciseItem(prompt: "Sa salitang 'binili', anong salitang-ugat ang nilagyan ng gitlaping '-in-'?", options: ["bili", "bilihin", "bumili", "nagbili"], correctAnswer: "bili", explanation: "Ang salitang-ugat ay 'bili' at nilagyan ito ng gitlaping '-in-' upang maging 'binili'.")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "Pag-alala sa Kuwento",
        instructions: "Basahin ang maikling kuwento at sagutin ang tanong tungkol dito.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Pumunta si Maria sa tindahan upang bumili ng gatas at tinapay. Naiwan niya ang kanyang pitaka sa ibabaw ng counter sa kusina. Ano ang naiwan ni Maria sa bahay?", options: ["Kanyang pitaka", "Kanyang mga susi", "Kanyang listahan", "Kanyang telepono"], correctAnswer: "Kanyang pitaka", explanation: "Nabanggit sa kuwento na naiwan niya ang kanyang pitaka sa ibabaw ng counter sa kusina."),
            ExerciseItem(prompt: "Maagang gumising si Tomas noong Sabado upang mangisda. Nakahuli siya ng malaking isdang trout ngunit kailangan niya itong ibalik dahil masyadong maliit. Anong uri ng isda ang nahuli ni Tomas?", options: ["Trout", "Salmon", "Sapsap", "Hito"], correctAnswer: "Trout", explanation: "Nabanggit sa kuwento na nakahuli siya ng malaking trout."),
            ExerciseItem(prompt: "Ipinark ni Arthur ang kanyang asul na kotse sa ilalim ng malilim na puno ng oak. Pagbalik niya, nakita niyang natatakpan ng mga dilaw na dahon ang kotse. Ano ang kulay ng kotse ni Arthur?", options: ["Asul", "Dilaw", "Pula", "Berde"], correctAnswer: "Asul", explanation: "Nabanggit sa kuwento na ipinark ni Arthur ang kanyang asul na kotse."),
            ExerciseItem(prompt: "Nagbake si Linda ng chocolate cake para sa kaarawan ng kanyang anak na babae. Naglagay siya ng sampung pulang kandila sa ibabaw ng cake. Ilang kandila ang inilagay ni Linda sa cake?", options: ["Sampu", "Lima", "Walo", "Labindalawa"], correctAnswer: "Sampu", explanation: "Nabanggit sa kuwento na naglagay siya ng sampung pulang kandila sa cake."),
            ExerciseItem(prompt: "Pumunta si Robert sa post office upang magpadala ng pakete sa kanyang kapatid sa Chicago. Sinabi ng klerk na darating ito sa Martes. Saan nakatira ang kapatid ni Robert?", options: ["Chicago", "New York", "Boston", "Miami"], correctAnswer: "Chicago", explanation: "Nabanggit sa kuwento na ipinadala niya ang pakete sa kanyang kapatid sa Chicago."),
            ExerciseItem(prompt: "Bumili si Sarah ng bagong sapatos para sa pagtakbo kahapon. Ito ay kulay matingkad na berde na may puting guhit. Ano ang kulay ng bagong sapatos ni Sarah?", options: ["Matingkad na berde", "Asul", "Pula", "Itim"], correctAnswer: "Matingkad na berde", explanation: "Nabanggit sa kuwento na ang sapatos ay kulay matingkad na berde."),
            ExerciseItem(prompt: "Naglalakad si James sa parke nang biglang umulan. Binuksan niya ang kanyang dilaw na payong upang hindi mabasa. Anong kulay ng payong ang ginamit ni James?", options: ["Dilaw", "Pula", "Asul", "Itim"], correctAnswer: "Dilaw", explanation: "Nabanggit sa kuwento na binuksan niya ang kanyang dilaw na payong."),
            ExerciseItem(prompt: "Sarado ang lokal na panaderya noong Lunes para sa mga kumpuni. Binalak nilang magbukas muli sa Martes ng umaga sa ikaseis. Anong araw sarado ang panaderya?", options: ["Lunes", "Martes", "Miyerkules", "Linggo"], correctAnswer: "Lunes", explanation: "Nabanggit sa kuwento na sarado ang panaderya noong Lunes."),
            ExerciseItem(prompt: "Tumawag si Anna ng tubero dahil may tagas ang sink sa kanyang kusina. Dumating ang tubero sa loob ng isang oras at inayos ang tubo. Bakit tumawag si Anna ng tubero?", options: ["May tagas ang kanyang sink", "Sira ang kanyang kalan", "Pundi ang ilaw", "Naka-lock ang pinto"], correctAnswer: "May tagas ang kanyang sink", explanation: "Nabanggit sa kuwento na tumawag siya ng tubero dahil may tagas ang sink sa kanyang kusina."),
            ExerciseItem(prompt: "Inilakad ni David ang kanyang asong si Max sa paligid ng block. Nakakita si Max ng isang ardilya (squirrel) at tinahulan ito nang malakas. Ano ang pangalan ng aso ni David?", options: ["Max", "Buddy", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "Nabanggit sa kuwento na inilakad ni David ang kanyang asong si Max."),
            ExerciseItem(prompt: "Nagluluto si Helen ng gulay na sopas para sa hapunan. Nalaman niyang naubusan na siya ng karot kaya patatas na lang ang kanyang ginamit. Anong sahog ang naubos kay Helen?", options: ["Karot", "Patatas", "Sibuyas", "Kintsay"], correctAnswer: "Karot", explanation: "Nabanggit sa kuwento na nalaman niyang naubusan siya ng karot."),
            ExerciseItem(prompt: "Nag-order si Peter ng pepperoni pizza at isang bote ng soda para sa tanghalian. Ang kabuuang halaga ay labinlimang dolyar. Magkano ang halaga ng tanghalian ni Peter?", options: ["Labinlimang dolyar", "Sampung dolyar", "Dalawampung dolyar", "Labindalawang dolyar"], correctAnswer: "Labinlimang dolyar", explanation: "Nabanggit sa kuwento na ang kabuuang halaga ay labinlimang dolyar."),
            ExerciseItem(prompt: "Pumunta si Alice sa aklatan upang humiram ng libro tungkol sa paghahalaman. Humiram din siya ng DVD tungkol sa kasaysayan. Tungkol saan ang librong hiniram ni Alice?", options: ["Paghahalaman", "Kasaysayan", "Pagluluto", "Paglalakbay"], correctAnswer: "Paghahalaman", explanation: "Nabanggit sa kuwento na humiram siya ng libro tungkol sa paghahalaman."),
            ExerciseItem(prompt: "Sumakay si George ng tren sa umaga patungo sa lungsod para sa isang interbyu sa trabaho. Naantala ng labinlimang minuto ang tren dahil sa pagpapanatili ng riles. Bakit naantala ang tren?", options: ["Pagpapanatili ng riles", "Malakas na bagyo", "Kawalan ng kuryente", "Nawawalang tauhan"], correctAnswer: "Pagpapanatili ng riles", explanation: "Nabanggit sa kuwento na naantala ang tren dahil sa pagpapanatili ng riles (track maintenance)."),
            ExerciseItem(prompt: "Pumunta si Nancy sa garden center upang bumili ng pulang rosas. Ubos na ang mga ito, kaya pink na carnation ang kanyang binili. Anong bulaklak ang sa huli ay binili ni Nancy?", options: ["Pink na carnation", "Pulang rosas", "Dilaw na tulip", "Puting liryo"], correctAnswer: "Pink na carnation", explanation: "Nabanggit sa kuwento na pink na carnation ang kanyang binili sa huli.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Pagkakasunod-sunod ng Numero",
        instructions: "Anong numero ang susunod sa serye?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "Ang serye ay nadaragdagan ng 2 bawat hakbang."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "Ang serye ay nadaragdagan ng 5 bawat hakbang."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "Ang serye ay nadaragdagan ng 10 bawat hakbang."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "Ang serye ay nadaragdagan ng 3 bawat hakbang."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "Ang serye ay nababawasan ng 1 bawat hakbang."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "Ang serye ay nababawasan ng 2 bawat hakbang."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "Ang serye ng mga gansal na numero (odd numbers) ay nadaragdagan ng 2 bawat hakbang."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "Ang serye ay nadaragdagan ng 4 bawat hakbang."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "Ang serye ay nababawasan ng 5 bawat hakbang."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "Ang serye ay nababawasan ng 10 bawat hakbang."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "Ang serye ay nadaragdagan ng 11 bawat hakbang."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "Ang serye ay nadaragdagan ng 2 bawat hakbang."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "Ang serye ay nadaragdagan ng 3 bawat hakbang."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "Ang serye ay nababawasan ng 3 bawat hakbang."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "Ang serye ay nadaragdagan ng 7 bawat hakbang."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "Ang serye ay nababawasan ng 4 bawat hakbang."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "Ang serye ay nadaragdagan ng 6 bawat hakbang."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "Ang serye ay nadaragdagan ng 5 bawat hakbang."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "Ang serye ay nababawasan ng 10 bawat hakbang."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "Ang serye ay nadaragdagan ng 2 bawat hakbang.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Sanhi at Bunga",
        instructions: "Piliin ang pinakamalamang na resulta o bunga ng inilarawang sitwasyon.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Naiwan mo ang ice cream sa ibabaw ng counter sa kusina sa loob ng dalawang oras sa isang mainit na araw. Ano ang mangyayari?", options: ["Lalo itong titigas", "Matutunaw ito", "Mag-iiba ang kulay nito", "Mawawala ito"], correctAnswer: "Matutunaw ito", explanation: "Ang init ay nagdudulot ng pagkatunaw ng frozen na ice cream."),
            ExerciseItem(prompt: "Nakalimutan mong diligan ang iyong halaman sa loob ng tatlong linggo. Ano ang malamang na mangyayari?", options: ["Lalago ang mga bulaklak nito", "Mananatili itong berde", "Malalanta at matutuyo ito", "Magiging asul ito"], correctAnswer: "Malalanta at matutuyo ito", explanation: "Kailangan ng tubig ng mga halaman upang mabuhay; kung wala ito, sila ay malalanta at matutuyo."),
            ExerciseItem(prompt: "Isang madilim na ulap ng bagyo ang humarang sa araw, at kumukulog. Ano ang malamang na mangyari susunod?", options: ["Uulan", "Lalong iinit", "Biglang makakapal ang yelo", "Lalabas ang mga bituin"], correctAnswer: "Uulan", explanation: "Ang mga madidilim na ulap at kulog ay mga palatandaan ng paparating na ulan."),
            ExerciseItem(prompt: "Nalaglag mo ang isang mangkok na salamin sa matigas na sahig na baldosa (tiles). Ano ang malamang na mangyayari?", options: ["Tatalbog ito pabalik", "Mag-iiba ang kulay nito", "Mababasag ito nang pira-piraso", "Magiging tubig ito"], correctAnswer: "Mababasag ito nang pira-piraso", explanation: "Ang salamin ay marupok at nababasag kapag nailaglag sa matigas na ibabaw."),
            ExerciseItem(prompt: "Naglagay ka ng isang pirasong tinapay sa toaster at iniwan ito sa pinakamainit na setting. Ano ang mangyayari?", options: ["Magiging basa ito", "Masusunog at mangingitim ito", "Mananatili itong malambot at puti", "Mawawala ito"], correctAnswer: "Masusunog at mangingitim ito", explanation: "Ang labis na init sa toaster ay magdudulot ng pagsunog ng tinapay."),
            ExerciseItem(prompt: "Naiwan mong nakabukas ang mga headlight ng kotse sa buong magdamag. Ano ang mangyayari sa umaga?", options: ["Lalong bibilis ang kotse", "Madidiskarga ang baterya", "Mag-iiba ang kulay ng kotse", "Agad na aandar ang makina"], correctAnswer: "Madidiskarga ang baterya", explanation: "Ang pag-iwan sa mga ilaw na nakabukas ay umuubos ng kuryente ng baterya."),
            ExerciseItem(prompt: "Isang malakas na bagyo ng niyebe ang bumagsak sa buong magdamag, na nag-iwan ng anim na pulgadang kapal ng niyebe. Ano ang mangyayari sa mga kalsada?", options: ["Mananatili silang tuyo", "Magiging madulas at matatakpan ng niyebe ang mga ito", "Magiging berde ang mga ito", "Mawawala ang mga ito"], correctAnswer: "Magiging madulas at matatakpan ng niyebe ang mga ito", explanation: "Ang naipong niyebe sa kalsada ay nagiging sanhi ng madulas at mapanganib na pagmamaneho."),
            ExerciseItem(prompt: "Naglagay ka ng tray na may tubig sa freezer. Ano ang mangyayari pagkaraan ng ilang oras?", options: ["Kukuluan ang tubig", "Magiging yelo ang tubig", "Mawawawala ang tubig", "Mag-iiba ang kulay ng tubig"], correctAnswer: "Magiging yelo ang tubig", explanation: "Ang napakalamig na temperatura ay nagiging sanhi ng pagtigas ng tubig upang maging yelo."),
            ExerciseItem(prompt: "Nagsuot ka ng makapal na medyas na lana at mabigat na bota sa isang mainit na araw ng tag-init. Ano ang mangyayari sa iyong mga paa?", options: ["Makakaramdam sila ng lamig", "Mananatili silang tuyo", "Iinit at pagpapawisan ang mga ito", "Magiging asul ang mga ito"], correctAnswer: "Iinit at pagpapawisan ang mga ito", explanation: "Ang makapal na sapot ay nagpapanatili ng init, na nagiging sanhi ng pagpapawis ng paa kapag mainit ang panahon."),
            ExerciseItem(prompt: "Hindi natulog ang isang tao sa loob ng 24 na oras. Ano ang malamang na mararamdaman niya?", options: ["Masiglang-masigla", "Pagod at antok", "Gutom", "Napakasaya"], correctAnswer: "Pagod at antok", explanation: "Ang kawalan ng tulog ay nagdudulot ng matinding pagkapagod at antok."),
            ExerciseItem(prompt: "Naglagay ka ng asukal sa isang tasa ng mainit na tsaa at hinalo ito. Ano ang mangyayari sa asukal?", options: ["Magiging yelo ito", "Mawawala sa tasa", "Matutunaw ito sa tsaa", "Masusunog ito"], correctAnswer: "Matutunaw ito sa tsaa", explanation: "Ang paghalo sa asukal sa mainit na likido ay nagiging sanhi ng pagkalusaw o pagkatunaw nito."),
            ExerciseItem(prompt: "Lumabas ka sa ilalim ng malakas na ulan nang walang payong o kapote. Ano ang resulta?", options: ["Mananatili kang tuyo", "Mababasag nang husto ang iyong mga damit", "Magiging asul ka", "Makakaramdam ka ng init"], correctAnswer: "Mababasag nang husto ang iyong mga damit", explanation: "Ang tubig-ulan na direktang papatak sa iyo ay magpapabasa sa iyong mga damit."),
            ExerciseItem(prompt: "Hinihipan mo ang lobo ng hangin hanggang sa maging labis na puno ito. Ano ang mangyayari?", options: ["Lilipad ito sa buwan", "Puputok ito", "Magiging ibon ito", "Liliit ito"], correctAnswer: "Puputok ito", explanation: "Ang labis na presyon ng hangin sa loob ng lobo ay magiging sanhi ng pagputok nito."),
            ExerciseItem(prompt: "Pinatay mo ang lahat ng ilaw sa isang silid na walang bintana sa gabi. Ano ang mangyayari?", options: ["Lalong liliwanag ang silid", "Magiging ganap na madilim ang silid", "Magiging berde ang silid", "Mapupuno ng liwanag ang silid"], correctAnswer: "Magiging ganap na madilim ang silid", explanation: "Ang kawalan ng anumang pinagmumulan ng ilaw ay nagdudulot ng ganap na kadiliman."),
            ExerciseItem(prompt: "Hindi ka nag-aral o naghanda para sa isang mahirap na pagsusulit. Ano ang malamang na resulta?", options: ["Makakakuha ka ng perpektong marka", "Mababa ang makukuha mong marka", "Makakalimutan mo ang iyong pangalan", "Kanselado ang pagsusulit"], correctAnswer: "Mababa ang makukuha mong marka", explanation: "Ang kawalan ng paghahanda ay nagpapahirap na makapasa sa mga mahirap na pagsusulit.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "Anong Emosyon Ito?",
        instructions: "Basahin ang sitwasyon at piliin ang emosyon na malamang na nararamdaman ng tao.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Nalaman lang ni Sarah na siya ang nakakuha ng unang puwesto sa isang paligsahan. Ano ang nararamdaman niya?", options: ["Malungkot", "Galit", "Masaya", "Takot"], correctAnswer: "Masaya", explanation: "Ang pagkapanalo sa paligsahan ay isang kapana-panabik at nakakatuwang kaganapan."),
            ExerciseItem(prompt: "Narinig ni David ang isang kakaiba at malakas na ingay sa ibaba ng bahay sa hatinggabi. Ano ang nararamdaman niya?", options: ["Masaya", "Takot", "Naiinip", "Nasasabik"], correctAnswer: "Takot", explanation: "Ang mga hindi inaasahang ingay sa dilim ay nagdudulot ng takot o pangamba."),
            ExerciseItem(prompt: "Lilipat sa ibang malayong probinsya ang matalik na kaibigan ni Mary. Ano ang nararamdaman ni Mary?", options: ["Malungkot", "Galit", "Nasasabik", "Nagseselos"], correctAnswer: "Malungkot", explanation: "Ang pagpapadala o pag-alis ng malapit na kaibigan ay nagdudulot ng kalungkutan."),
            ExerciseItem(prompt: "May sumingit sa harap ni John habang nakapila nang mahaba sa tindahan. Ano ang nararamdaman ni John?", options: ["Masaya", "Takot", "Naiinis", "Nahihiya"], correctAnswer: "Naiinis", explanation: "Ang kawalang-galang ng iba ay karaniwang nagdudulot ng pagkainis o pagkabigo."),
            ExerciseItem(prompt: "Magtatalumpati si Emily sa harap ng napakaraming tao. Ano ang nararamdaman niya?", options: ["Kinakabahan", "Naiinip", "Malungkot", "Galit"], correctAnswer: "Kinakabahan", explanation: "Ang pagsasalita sa harap ng publiko ay karaniwang nagdudulot ng kaba o pagkabalisa."),
            ExerciseItem(prompt: "Kanselado ang flight ni Robert, kaya naantala ang kanyang bakasyon ng dalawang araw. Ano ang nararamdaman niya?", options: ["Naiinis", "Masaya", "Takot", "Ipinagmamalaki"], correctAnswer: "Naiinis", explanation: "Ang mga kanselasyon na sumisira sa mga plano ay nagdudulot ng inis o pagkabigo."),
            ExerciseItem(prompt: "Nagtapos ang anak na lalaki ni Lisa sa unibersidad na may pinakamataas na parangal. Ano ang nararamdaman ni Lisa?", options: ["Ipinagmamalaki", "Nagseselos", "Malungkot", "Takot"], correctAnswer: "Ipinagmamalaki", explanation: "Ang pagkakita sa tagumpay ng kapamilya ay nagdudulot ng pagmamalaki."),
            ExerciseItem(prompt: "Ipinaliliwanag ng klerk ang isang kumplikadong form sa ikaapat na pagkakataon, ngunit hindi pa rin ito maintindihan ni Arthur. Ano ang nararamdaman ni Arthur?", options: ["Nalilito", "Masaya", "Nasasabik", "Ipinagmamalaki"], correctAnswer: "Nalilito", explanation: "Ang hindi pag-unawa sa impormasyon ay nagdudulot ng pagkalito."),
            ExerciseItem(prompt: "Higit sa dalawang oras nang naghihintay si James sa isang tahimik na silid at walang mabasa. Ano ang nararamdaman niya?", options: ["Naiinip", "Takot", "Galit", "Masaya"], correctAnswer: "Naiinip", explanation: "Ang matagal na paghihintay nang walang ginagawa ay nagdudulot ng pagkabagot o nainip."),
            ExerciseItem(prompt: "Naghanda ng isang sorpresang party ang pamilya ni Ellen para sa kanyang kaarawan kasama ang kanyang mga kaibigan. Ano ang nararamdaman niya?", options: ["Nagulat", "Galit", "Malungkot", "Takot"], correctAnswer: "Nagulat", explanation: "Ang isang hindi inaasahang pagdiriwang ay nagdudulot ng pagkagulat o saya."),
            ExerciseItem(prompt: "Isang asong gala ang biglang lumabas at tinahulan nang agresibo si Karen habang siya ay naglalakad. Ano ang nararamdaman niya?", options: ["Natatakot", "Masaya", "Naiinip", "Ipinagmamalaki"], correctAnswer: "Natatakot", explanation: "Ang mga agresibong hayop ay nagdudulot ng matinding takot."),
            ExerciseItem(prompt: "Nawala ni William ang kanyang singsing sa kasal habang naghahalaman. Ano ang nararamdaman niya?", options: ["Nalulungkot", "Nasasabik", "Naiinip", "Matiwasay"], correctAnswer: "Nalulungkot", explanation: "Ang pagkawala ng isang mahalagang bagay ay nakalulungkot at nakakasama ng loob."),
            ExerciseItem(prompt: "Nakatanggap si Patricia ng isang magandang sulat at mga bulaklak mula sa kanyang mga apo. Ano ang nararamdaman niya?", options: ["Minamahal", "Galit", "Takot", "Nalilito"], correctAnswer: "Minamahal", explanation: "Ang mga sweet na kilos ng pamilya ay nagpaparamdam ng pagmamahal sa isang tao."),
            ExerciseItem(prompt: "Ubos na ang partikular na tinapay na nais bilhin ni Richard sa tindahan, kaya napilitan siyang bumili ng ibang tatak. Ano ang nararamdaman niya?", options: ["Bahagyang nadismaya", "Nasisiyahan", "Galit na galit", "Tuwang-tuwa"], correctAnswer: "Bahagyang nadismaya", explanation: "Ang hindi pagkuha sa maliit na nais ay nagdudulot ng bahagyang pagkadismaya."),
            ExerciseItem(prompt: "Buong hapon na nagbuo si Charles ng isang bookshelf, at naging perpekto ang kinalabasan nito. Ano ang nararamdaman niya?", options: ["Nasisiyahan", "Malungkot", "Takot", "Naiinip"], correctAnswer: "Nasisiyahan", explanation: "Ang matagumpay na pagtatapos sa isang gawain ay nagdudulot ng kasiyahan."),
            ExerciseItem(prompt: "Nalaglag nang hindi sinasadya ni Linda ang isang tray ng mga inumin sa isang tahimik na restawran. Ano ang nararamdaman niya?", options: ["Nahihiya", "Masaya", "Galit", "Naiinip"], correctAnswer: "Nahihiya", explanation: "Ang pagkuha ng negatibong pansin ng publiko dahil sa isang pagkakamali ay nagdudulot ng kahihiyan."),
            ExerciseItem(prompt: "Pupunta si Thomas sa kanyang kauna-unahang biyahe sa Boracay bukas ng umaga. Ano ang nararamdaman niya?", options: ["Nasasabik", "Malungkot", "Galit", "Naiinip"], correctAnswer: "Nasasabik", explanation: "Ang pag-aabang sa isang masayang bakasyon ay nagdudulot ng pananabik."),
            ExerciseItem(prompt: "Ligtas na nakabalik ang pusa ni Susan matapos mawala ng tatlong araw. Ano ang nararamdaman niya?", options: ["Nakahinga nang maluwag", "Galit", "Takot", "Nalilito"], correctAnswer: "Nakahinga nang maluwag", explanation: "Ang magandang katapusan sa isang nakaka-stress na sitwasyon ay nagdudulot ng kaginhawaan o paghinga nang maluwag."),
            ExerciseItem(prompt: "Paulit-ulit na nawawalan ng koneksyon sa internet tuwing limang minuto habang sinusubukan ni George na magtrabaho. Ano ang nararamdaman niya?", options: ["Naiinis", "Takot", "Masaya", "Naiinip"], correctAnswer: "Naiinis", explanation: "Ang mga paulit-ulit na maliliit na abala ay nagdudulot ng inis."),
            ExerciseItem(prompt: "Kumuha ng matagal at mainit na paliguan si Helen pagkatapos ng isang nakakapagod na araw. Ano ang nararamdaman niya?", options: ["Relaks", "Galit", "Takot", "Kinakabahan"], correctAnswer: "Relaks", explanation: "Ang pagpapahinga at maligamgam na paliguan ay tumutulong sa tao na maging relaks.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here?
    private static let exercise10 = Exercise(
        title: "Anong Mali Rito?",
        instructions: "Piliin kung ano ang mali o imposible sa ibinigay na pangungusap.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Kumain ng almusal si John sa hatinggabi bago natulog.", options: ["Hindi kumakain ang mga tao", "Ang almusal ay pagkain sa umaga, hindi sa hatinggabi", "Hindi dapat matulog si John", "Ang hatinggabi ay sa hapon"], correctAnswer: "Ang almusal ay pagkain sa umaga, hindi sa hatinggabi", explanation: "Ang almusal ay ang unang pagkain sa umaga pagkatapos ng gabi."),
            ExerciseItem(prompt: "Tinahulan ng aso ang kartero at pagkatapos ay lumipad sa ibabaw ng bubong upang humabol ng ibon.", options: ["Hindi tumatahol ang aso", "Hindi nakakalipad ang aso", "Hindi naghahatid ng sulat ang kartero", "Hindi lumilipad ang mga ibon"], correctAnswer: "Hindi nakakalipad ang aso", explanation: "Walang pakpak ang mga aso kaya hindi sila nakakalipad."),
            ExerciseItem(prompt: "Isinuot ni Sarah ang kanyang makapal na winter coat at guwantes upang lumangoy sa panlabas na pool ngayong buwan ng Hulyo.", options: ["Hindi lumalangoy ang mga tao sa Hulyo", "Hindi ka nagsusuot ng winter coat at guwantes para lumangoy", "Walang panlabas na pool", "Ang makapal na coat ay isinusuot sa tag-init"], correctAnswer: "Hindi ka nagsusuot ng winter coat at guwantes para lumangoy", explanation: "Ang paglangoy ay nangangailangan ng angkop na kasuotan, at hindi angkop ang damit panlamig dito."),
            ExerciseItem(prompt: "Tumunog ng labintatlo ang orasan sa dingding, kaya alam ni Arthur na oras na para sa kanyang kape sa umaga.", options: ["Walang orasan sa dingding", "Ang mga karaniwang orasan ay hanggang labindalawang oras lamang", "Ang kape ay hindi inumin sa umaga", "Hindi umiinom ng kape si Arthur"], correctAnswer: "Ang mga karaniwang orasan ay hanggang labindalawang oras lamang", explanation: "Ang mga tradisyonal na orasan ay nagpapakita lamang ng oras mula isa hanggang labindalawa."),
            ExerciseItem(prompt: "Sumakay si Paul sa kanyang bisikleta patawid sa malalim na lawa upang bisitahin ang kanyang kaibigan.", options: ["Hindi pwedeng sumakay ng bisikleta sa ibabaw ng tubig", "Walang isda sa lawa", "Hindi nagbibisita ang mga kaibigan", "Walang pedal ang bisikleta"], correctAnswer: "Hindi pwedeng sumakay ng bisikleta sa ibabaw ng tubig", explanation: "Ang bisikleta ay sasakyang panlupa at lulubog sa tubig."),
            ExerciseItem(prompt: "Nagpakulo si Linda ng ilang pirasong yelo sa kaldero upang gumawa ng malamig na inuming tubig.", options: ["Walang yelo sa mundo", "Ang pagpapakulo ng yelo ay nagiging mainit na tubig, hindi malamig", "Hindi kasya ang yelo sa kaldero", "Hindi malusog ang inuming tubig"], correctAnswer: "Ang pagpapakulo ng yelo ay nagiging mainit na tubig, hindi malamig", explanation: "Ang pagpapakulo ay nagpapainit ng likido, kaya magiging mainit ang tubig at hindi malamig."),
            ExerciseItem(prompt: "Umakyat ang isda sa puno upang takasan ang gutom na pusa.", options: ["Hindi nakakaakyat sa puno ang mga isda", "Hindi kumakain ng isda ang mga pusa", "Walang dahon ang mga puno", "Sa puno nakatira ang mga isda"], correctAnswer: "Hindi nakakaakyat sa puno ang mga isda", explanation: "Ang mga isda ay nakatira sa tubig at walang mga binti o kamay upang makaakyat ng puno."),
            ExerciseItem(prompt: "Gumamit si Robert ng tinidor upang higupin ang kanyang sopas na manok.", options: ["Hindi nakakahawak ng likidong sopas ang tinidor", "Hindi gawa sa manok ang sopas", "Dapat kutsilyo ang ginamit niya", "Hindi ginagamitan ng kubyertos ang sopas"], correctAnswer: "Hindi nakakahawak ng likidong sopas ang tinidor", explanation: "May mga awang ang tinidor kaya tatagas ang sabaw; kutsara ang dapat gamitin dito."),
            ExerciseItem(prompt: "Dahil malakas ang ulan, isinampay ni Nancy ang kanyang mga basang damit sa sampayan sa labas upang matuyo.", options: ["Hindi nakakabasa ang ulan", "Hindi matutuyo ang mga damit sa labas kung umuulan", "Sa loob lamang ginagamit ang sampayan", "Hindi nagsusuot ng damit si Nancy"], correctAnswer: "Hindi matutuyo ang mga damit sa labas kung umuulan", explanation: "Ang ulan ay magpapanatiling basa sa mga damit, kaya hindi ito matutuyo."),
            ExerciseItem(prompt: "Ligtas na lumapag ang eroplano sa paliparan, at ang lahat ng pasahero ay bumaba patungo sa riles ng tren.", options: ["Hindi lumalapag ang eroplano sa paliparan", "Hindi sumasakay ng eroplano ang mga pasahero", "Walang riles ng tren sa may gate ng paliparan", "Hindi tumatakbo sa riles ang tren"], correctAnswer: "Walang riles ng tren sa may gate ng paliparan", explanation: "Ang mga eroplano ay lumalapag sa runway at gate, hindi sa riles ng tren."),
            ExerciseItem(prompt: "Binuksan ni Helen ang air conditioner upang iinit ang kanyang sala.", options: ["Pampalamig ang air conditioner, hindi pampainit", "Walang dingding ang mga sala", "Walang bahay si Helen", "Hindi gumagamit ng kuryente ang air conditioner"], correctAnswer: "Pampalamig ang air conditioner, hindi pampainit", explanation: "Ang air conditioner ay ginawa upang magpalamig ng temperatura, hindi para magpainit."),
            ExerciseItem(prompt: "Hinabol ng kuneho ang malaking kulay-abong lobo (wolf) sa buong gubat.", options: ["Hindi nakatira sa gubat ang kuneho", "Hindi tumatakbo ang mga lobo", "Hindi hinahabol ng kuneho ang lobo", "Hindi kulay-abo ang mga lobo"], correctAnswer: "Hindi hinahabol ng kuneho ang lobo", explanation: "Ang lobo ay mandaragit at ang kuneho ang kanilang pagkain; ang kuneho ang tumatakbo palayo sa lobo."),
            ExerciseItem(prompt: "Bumili si James ng isang pares ng sapatos na gawa sa katad para sa kanyang mga kamay upang panatilihing mainit ang mga ito sa taglamig.", options: ["Isinusuot ang sapatos sa paa, hindi sa kamay", "Hindi ginagamit ang katad sa sapatos", "Hindi nilalamig ang mga kamay", "Hindi malamig ang taglamig"], correctAnswer: "Isinusuot ang sapatos sa paa, hindi sa kamay", explanation: "Ang guwantes ang isinusuot sa kamay, ang sapatos naman ay para sa paa."),
            ExerciseItem(prompt: "Sumikat ang araw sa hatinggabi, na nagbigay-liwanag sa langit sa umaga.", options: ["Sumisikat ang araw sa umaga, hindi sa hatinggabi", "Ang hatinggabi ay sa hapon", "Hindi maliwanag ang araw", "Madilim ang umaga"], correctAnswer: "Sumisikat ang araw sa umaga, hindi sa hatinggabi", explanation: "Ang hatinggabi ay ang gitna ng gabi kung kailan hindi nakikita ang araw."),
            ExerciseItem(prompt: "Binuksan ni Alice ang telebisyon upang pakinggan ang kanyang paboritong istasyon ng radyo.", options: ["Nagpapakita ng video ang telebisyon, hindi ito radyo", "Hindi nagpapatugtog ng musika ang radyo", "Hindi gusto ni Alice ang musika", "Walang speaker ang telebisyon"], correctAnswer: "Nagpapakita ng video ang telebisyon, hindi ito radyo", explanation: "Ang telebisyon ay may screen para sa panonood; ang mga istasyon ng radyo ay pinakikinggan sa radyo.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "Pagbasa ng Reseta",
        instructions: "Basahin ang impormasyon sa reseta at sagutin ang tanong.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Label: Uminom ng 1 tableta dalawang beses sa isang araw kasabay ng pagkain. Ilang tableta ang dapat mong inumin sa kabuuan bawat araw?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Ang pag-inom ng 1 tableta dalawang beses sa isang araw ay nangangahulugang 1 + 1 = 2 tableta."),
            ExerciseItem(prompt: "Label: Uminom ng 2 tableta bago matulog. Kailan mo dapat inumin ang gamot na ito?", options: ["Sa umaga", "Kasabay ng tanghalian", "Bago matulog", "Bago mag-ehersisyo"], correctAnswer: "Bago matulog", explanation: "Malinaw na sinasabi sa reseta na inumin ito bago matulog."),
            ExerciseItem(prompt: "Label: Uminom ng 1 kapsula bawat 8 oras kapag sumasakit. Ilang beses mo ito maaaring inumin sa loob ng 24 na oras?", options: ["2 beses", "3 beses", "4 na beses", "6 na beses"], correctAnswer: "3 beses", explanation: "May 24 na oras sa isang araw. Ang 24 hinati sa 8 ay 3 beses."),
            ExerciseItem(prompt: "Label: Amoxicillin 250mg. Uminom ng 1 tableta tatlong beses sa isang araw. Panatilihing nakapalamig. Paano mo dapat itabi ang gamot na ito?", options: ["Sa freezer", "Sa loob ng refrigerator", "Sa mainit na cabinet", "Sa direktang sikat ng araw"], correctAnswer: "Sa loob ng refrigerator", explanation: "Sinasabi sa label na 'Panatilihing nakapalamig', na nangangahulugang ilagay ito sa loob ng refrigerator."),
            ExerciseItem(prompt: "Label: Huwag uminom ng alak habang ginagamit ang gamot na ito. Maaaring magdulot ng pagkaantok. Ano ang binalalang side effect ng gamot na ito?", options: ["Pagkaantok", "Karagdagang lakas", "Mataas na presyon ng dugo", "Paghahatsing"], correctAnswer: "Pagkaantok", explanation: "Nagbabala ang label na ito ay 'Maaaring magdulot ng pagkaantok'."),
            ExerciseItem(prompt: "Label: Uminom ng 1 tableta araw-araw sa umaga habang walang laman ang tiyan. Kailan ka dapat mag-almusal?", options: ["Bago inumin ang tableta", "Pagkatapos inumin ang tableta", "Habang iniinom ang tableta", "Huwag kumain ng almusal"], correctAnswer: "Pagkatapos inumin ang tableta", explanation: "Ang pag-inom habang walang laman ang tiyan ay nangangahulugang inumin muna ito bago kumain ng almusal."),
            ExerciseItem(prompt: "Label: Uminom ng 1 tableta sa pamamagitan ng bibig araw-araw. Dami: 30. Refill: 2. Ilang refill ang pinapayagan?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "Nakalista sa reseta ang 'Refill: 2'."),
            ExerciseItem(prompt: "Label: Magpahid ng manipis na layer sa apektadong bahagi ng balat dalawang beses sa isang araw. Huwag lunukin. Paano ginagamit ang gamot na ito?", options: ["Sa pamamagitan ng paglunok dito", "Sa pamamagitan ng pagpahid sa balat", "Sa pamamagitan ng pag-spray sa ilong", "Sa pamamagitan ng pagtunaw sa tubig"], correctAnswer: "Sa pamamagitan ng pagpahid sa balat", explanation: "Sinasabi sa label na 'Magpahid ng manipis na layer sa apektadong bahagi ng balat'."),
            ExerciseItem(prompt: "Label: Itapon pagkatapos ng 10/15/2026. Ngayon ay 11/01/2026. Ligtas mo pa bang maiinom ang gamot na ito?", options: ["Oo", "Hindi", "Kasabay lang ng pagkain", "Sa gabi lamang"], correctAnswer: "Hindi", explanation: "Nawalan na ng bisa (expired) ang gamot noong 10/15/2026, na mas maaga kaysa sa petsa ngayon."),
            ExerciseItem(prompt: "Label: Uminom ng 1 tableta dalawang beses sa isang araw. Huwag inumin kasabay ng mga produktong gatas. Aling inumin ang dapat iwasan kapag iniinom ang gamot na ito?", options: ["Tubig", "Gatas", "Katas ng mansanas", "Black coffee"], correctAnswer: "Gatas", explanation: "Ang gatas ay isang produktong gatas (dairy) at dapat iwasan ayon sa babala ng reseta."),
            ExerciseItem(prompt: "Label: Uminom ng 2 tableta 1 oras bago ang flight. Bakit mo iinumin ang gamot na ito?", options: ["Upang maiwasan ang pagkahilo sa biyahe", "Upang makatulog nang mas mahimbing sa bahay", "Upang gamutin ang sakit ng ulo", "Upang gamutin ang pantal sa balat"], correctAnswer: "Upang maiwasan ang pagkahilo sa biyahe", explanation: "Ang pag-inom ng gamot bago ang flight ay karaniwang para maiwasan ang pagkahilo sa biyahe (motion sickness)."),
            ExerciseItem(prompt: "Label: Eye Drops. Magpatak ng 1 patak sa bawat mata dalawang beses sa isang araw. Saan mo dapat ilagay ang gamot na ito?", options: ["Sa iyong bibig", "Sa iyong mga tainga", "Sa iyong mga mata", "Sa iyong balat"], correctAnswer: "Sa iyong mga mata", explanation: "Ang label ay nagsasabing 'Eye Drops' at 'magpatak sa bawat mata'."),
            ExerciseItem(prompt: "Label: Uminom ng 1 tableta bawat 4 hanggang 6 na oras kung kinakailangan para sa sakit ng ulo. Max na 4 na tableta bawat araw. Ano ang pinakamaraming tableta na maaari mong inumin sa isang araw?", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "Tinukoy sa label na 'Max na 4 na tableta bawat araw'."),
            ExerciseItem(prompt: "Label: Inumin kasabay ng isang buong basong tubig. Bakit mo kailangan ng tubig sa tabletang ito?", options: ["Upang matunaw ito sa iyong balat", "Upang makatulong sa paglunok at maiwasan ang sakit ng tiyan", "Upang baguhin ang kulay nito", "Upang maging mas masarap ito"], correctAnswer: "Upang makatulong sa paglunok at maiwasan ang sakit ng tiyan", explanation: "Ang isang buong baso ng tubig ay tumutulong upang malunok nang ligtas ang gamot at maprotektahan ang tiyan."),
            ExerciseItem(prompt: "Label: Uminom ng 1 tableta araw-araw kasabay ng iyong hapunan. Ano ang pinakamagandang oras para inumin ito?", options: ["Sa almusal", "Sa tanghalian", "Sa hapunan", "Sa hatinggabi"], correctAnswer: "Sa hapunan", explanation: "Ang hapunan ang pagkain sa gabi na binanggit sa reseta.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Pagbasa ng Menu",
        instructions: "Gamitin ang impormasyon sa menu upang sagutin ang tanong.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Menu: Cheeseburger $8.00, French Fries $3.00, Soda $2.00. Magkano ang halaga ng Cheeseburger?", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "Nakalista sa menu na ang Cheeseburger ay $8.00."),
            ExerciseItem(prompt: "Menu: Kape $2.50, Tsaa $2.00, Muffin $3.00. Aling pagkain o inumin ang pinakamura?", options: ["Kape", "Tsaa", "Muffin", "Pareho silang lahat ng halaga"], correctAnswer: "Tsaa", explanation: "$2.00 ang pinakamababang presyo."),
            ExerciseItem(prompt: "Menu: Sopas na Kamatis $5.00, Green Salad $6.00, Chicken Caesar $9.00. Magkano ang isang mangkok ng Sopas na Kamatis?", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "Ang Sopas na Kamatis ay nagkakahalaga ng $5.00."),
            ExerciseItem(prompt: "Menu: Pancake Breakfast $10.00, French Toast $9.00, Bacon Side $4.00. Magkano ang French Toast?", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "Nakalista ang French Toast sa halagang $9.00."),
            ExerciseItem(prompt: "Menu: Cheese Pizza Slice $4.00, Pepperoni Pizza Slice $4.50. Magkano ang labis na halaga ng Pepperoni slice kaysa sa Cheese slice?", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "Ang $4.50 minus $4.00 ay $0.50."),
            ExerciseItem(prompt: "Menu: Chicken Sandwich $7.00, Fish and Chips $11.00. Mayroon kang $10.00. Aling pagkain ang kaya mong bilhin?", options: ["Chicken Sandwich", "Fish and Chips", "Parehong pagkain", "Wala sa dalawa"], correctAnswer: "Chicken Sandwich", explanation: "Ang $7.00 ay mas mababa sa $10.00, ngunit ang $11.00 ay mas mataas."),
            ExerciseItem(prompt: "Menu: Kid’s Meal (para sa wala pang 12 taong gulang) $6.00, Adult Burger $12.00. Magkano ang halaga ng pagkain para sa isang 8 taong gulang na bata?", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "Ang 8 taong gulang ay mas bata sa 12, kaya ang presyong pambata na $6.00 ang ilalapat."),
            ExerciseItem(prompt: "Menu: Chocolate Ice Cream $4.00, Apple Pie $5.00, Dagdag na Vanilla Ice Cream sa Pie $1.50. Magkano ang Apple Pie na may Vanilla Ice Cream?", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "$5.00 (pie) + $1.50 (ice cream) = $6.50."),
            ExerciseItem(prompt: "Menu: Turkey Wrap $8.50, Chips $1.50, Juice $2.00. Ano ang kabuuang halaga ng Turkey Wrap at Juice?", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "$8.50 + $2.00 = $10.50."),
            ExerciseItem(prompt: "Menu: Lunch Specials (inihahain mula 11 AM - 3 PM) $9.00. Regular Dinner Menu $15.00. Ngayon ay 1:00 PM. Magkano ang Lunch Special?", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "Ang 1:00 PM ay nasa pagitan ng 11 AM at 3 PM, kaya ang presyo ng Lunch Special na $9.00 ang may bisa."),
            ExerciseItem(prompt: "Menu: Kape $2.00 (Libre ang Refill), Mainit na Tsaa $2.50. Kung uminom ka ng tatlong tasa ng kape, magkano ang kabuuang babayaran mo?", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "Libre ang refill ng kape, kaya ang unang baso na nagkakahalaga ng $2.00 lamang ang babayaran mo."),
            ExerciseItem(prompt: "Menu: Vegetable Soup $4.00, Beef Stew $7.00. Aling ulam ang naglalaman ng karne?", options: ["Vegetable Soup", "Beef Stew", "Pareho", "Wala sa dalawa"], correctAnswer: "Beef Stew", explanation: "Ang karne ng baka (beef) ay isang uri ng karne; ang mga gulay naman ay hindi."),
            ExerciseItem(prompt: "Menu: Taco $3.00, Quesadilla $6.00, Soda $2.00. Magkano ang halaga ng Quesadilla?", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "Nakalista sa menu ang Quesadilla sa halagang $6.00."),
            ExerciseItem(prompt: "Menu: Spaghetti $12.00, Lasagna $14.00, Garlic Bread $3.00. Magkano ang Garlic Bread?", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "Nakalista ang Garlic Bread sa halagang $3.00."),
            ExerciseItem(prompt: "Menu: Eggs Benny $11.00, Oatmeal $6.00, Fruit Bowl $5.00. Aling pagkain sa almusal ang pinakamahal?", options: ["Eggs Benny", "Oatmeal", "Fruit Bowl", "Pareho silang lahat ng presyo"], correctAnswer: "Eggs Benny", explanation: "Ang $11.00 ang pinakamataas na presyo sa listahan.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Pag-unawa sa mga Bill",
        instructions: "Basahin ang impormasyon sa bill at sagutin ang tanong.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Bill sa Kuryente: Kabuuang Dapat Bayaran: $45.00. Petsa ng Pagbabayad: Hulyo 15. Magkano ang kailangan mong bayaran?", options: ["$15.00", "$45.00", "Hulyo 15", "Libre"], correctAnswer: "$45.00", explanation: "Ang kabuuang dapat bayaran ay $45.00."),
            ExerciseItem(prompt: "Bill sa Tubig: Petsa ng Pagbabayad: Okt 10. Late Fee: $5.00. Ngayon ay Okt 12. Ano ang mangyayari kung magbabayad ka ngayon?", options: ["Mababayaran mo ang regular na halaga", "Magbabayad ka ng $5.00 na late fee", "Makakakuha ka ng diskwento", "Walang mangyayari"], correctAnswer: "Magbabayad ka ng $5.00 na late fee", explanation: "Dahil ang araw na ito ay lumampas na sa itinakdang petsa, may karagdagang late fee."),
            ExerciseItem(prompt: "Bill sa Internet: Buwanang Singil: $60.00. Diskwento sa Autopay: -$5.00. Ano ang huling presyo kapag naka-Autopay?", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "Ang $60.00 minus $5.00 ay katumbas ng $55.00."),
            ExerciseItem(prompt: "Bill sa Gas: Kasalukuyang Singil: $30.00. Hindi Bayad na Balanse: $10.00. Kabuuang Balanse: $40.00. Magkano ang hindi nabayarang pera na dinala mula noong nakaraang buwan?", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "Ang 'Hindi Bayad na Balanse' ay kumakatawan sa natirang utang noong nakaraang buwan, na nagkakahalaga ng $10.00."),
            ExerciseItem(prompt: "Bill sa Telepono: Petsa ng Pagbabayad: Hunyo 20. Kasalukuyang Petsa: Hunyo 15. Ilang araw na lang ang natitira para bayaran ang bill na ito sa tamang oras?", options: ["5 araw", "20 araw", "15 araw", "1 araw"], correctAnswer: "5 araw", explanation: "Hunyo 20 minus Hunyo 15 ay 5 araw."),
            ExerciseItem(prompt: "Bill sa Basura: Singil Kada Quarter (3 buwan): $36.00. Magkano ang katumbas na halaga nito bawat buwan?", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "Ang $36.00 na hinati sa 3 buwan ay nagkakahalaga ng $12.00 bawat buwan."),
            ExerciseItem(prompt: "Bill sa Cable: Kabuuang Dapat Bayaran: $80.00. Babayaran sa: “XYZ Cable Co.” Kanino dapat ipangalan ang tseke?", options: ["$80.00", "XYZ Cable Co.", "The Cable Guy", "Cash"], correctAnswer: "XYZ Cable Co.", explanation: "Tinukoy sa bill na gawin ang pagbabayad sa 'XYZ Cable Co.'."),
            ExerciseItem(prompt: "Utility Bill: Tubig: $20.00, Gas: $30.00, Kuryente: $50.00. Kabuuan: $100.00. Aling serbisyo ang may pinakamataas na singil?", options: ["Tubig", "Gas", "Kuryente", "Pareho silang lahat"], correctAnswer: "Kuryente", explanation: "Ang kuryente ay nagkakahalaga ng $50.00, na siyang pinakamataas na halaga."),
            ExerciseItem(prompt: "Seguro sa Kotse: Semi-Annual na Bayad: $600.00. Gaano kadalas mo binabayaran ang bill na ito?", options: ["Buwan-buwan", "Kada 6 na buwan (dalawang beses sa isang taon)", "Isang beses sa isang taon", "Linggo-linggo"], correctAnswer: "Kada 6 na buwan (dalawang beses sa isang taon)", explanation: "Ang semi-annual ay nangangahulugang dalawang beses sa isang taon, o tuwing 6 na buwan."),
            ExerciseItem(prompt: "Bill sa Streaming Service: Katayuan ng Account: SUSPENDED. Kabuuang Dapat Bayaran: $15.00. Bakit hindi gumagana ang serbisyo?", options: ["Walang koneksyon sa internet", "Sira ang TV", "Ang account ay suspendido dahil sa hindi pagbabayad", "Naglo-load ang stream"], correctAnswer: "Ang account ay suspendido dahil sa hindi pagbabayad", explanation: "Sinasabi sa bill na suspendido (suspended) ang katayuan ng account."),
            ExerciseItem(prompt: "Gym Membership: Taunang Bayad: $120.00. Buwanang Bayad: $10.00. Magkano ang kabuuang bayad para sa buong taon?", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "Ang taunang bayad (annual fee) ay nagkakahalaga ng $120.00."),
            ExerciseItem(prompt: "Bill sa Heating (Pampainit): Enero: $110.00. Hulyo: $20.00. Bakit mas mataas ang bill noong Enero?", options: ["Mas mahal ang gas sa tag-init", "Mas ginagamit ang pampainit sa buwan ng taglamig ng Enero", "Walang tao sa bahay noong Enero", "Nag-iba ang oras ng orasan"], correctAnswer: "Mas ginagamit ang pampainit sa buwan ng taglamig ng Enero", explanation: "Ang malamig na panahon sa taglamig ay nangangailangan ng paggamit ng pampainit ng bahay, kaya tumataas ang paggamit ng enerhiya."),
            ExerciseItem(prompt: "Bill sa Credit Card: Minimum na Bayad: $25.00. Kabuuang Balanse: $500.00. Ano ang pinakamababang halaga na maaari mong bayaran ngayong buwan upang maiwasan ang multa?", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "Ang 'Minimum na Bayad' na $25.00 ay ang pinakamababang halaga na tatanggapin upang maiwasan ang multa."),
            ExerciseItem(prompt: "Bill sa Medikal: Kabuuang Singil: $150.00. Sagot ng Seguro: $120.00. Pananagutan ng Pasyente: $30.00. Magkano ang utang mo?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "Ang pananagutan ng pasyente (patient responsibility) ay ang halagang dapat bayaran ng pasyente, na $30.00."),
            ExerciseItem(prompt: "Subskripsyon sa Pahayagan: Susunod na Petsa ng Pag-renew: Dis 31, 2026. Kung nais mong magkansela bago ang pag-renew, kailan ka dapat tumawag?", options: ["Bago sumapit ang Dis 31, 2026", "Pagkatapos ng Dis 31, 2026", "Sa Enero 2027", "Huwag kailanman"], correctAnswer: "Bago sumapit ang Dis 31, 2026", explanation: "Ang pagkakansela bago ang petsa ng pag-renew ay nagpapatigil sa susunod na siklo ng paniningil.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "Ano ang Gagawin Mo?",
        instructions: "Piliin ang pinakamabuting tugon sa inilarawang sitwasyon.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Nakakita ka o nakalanghap ng usok sa iyong kusina ngunit wala kang makitang apoy. Ano ang dapat mong gawin muna?", options: ["Balewalain ito", "Buksan ang mga bintana at suriin ang kalan", "Tawagan ang kaibigan para makipag-usap", "Bumalik sa pagtulog"], correctAnswer: "Buksan ang mga bintana at suriin ang kalan", explanation: "Ang pagsusuri sa kalan ang unang hakbang upang matukoy at malutas nang ligtas ang mga karaniwang sanhi ng usok."),
            ExerciseItem(prompt: "Nasa tindahan ka at napagtanto mong naiwan mo ang iyong pitaka sa bahay. Ano ang pinakamahusay na opsyon?", options: ["Kunin ang mga binili nang hindi nagbabayad", "Pakiusapan ang cashier na itabi muna ang iyong cart at umuwi upang kunin ang pitaka", "Umalis sa tindahan habang umiiyak", "Makipagtalo sa manager"], correctAnswer: "Pakiusapan ang cashier na itabi muna ang iyong cart at umuwi upang kunin ang pitaka", explanation: "Ang paghingi ng tulong sa klerk na itabi muna ang mga binili ay ang magalang at karaniwang tugon."),
            ExerciseItem(prompt: "Nalaglag mo ang isang hilaw na itlog sa sahig ng kusina at nabasag ito. Ano ang dapat mong gawin?", options: ["Iwanan muna ito doon hanggang bukas", "Linisin ito agad gamit ang paper towel at sabon", "Takpan ito ng basahan", "Hayaan na lang na kainin ng pusa"], correctAnswer: "Linisin ito agad gamit ang paper towel at sabon", explanation: "Ang hilaw na itlog ay madulas at maaaring pamugaran ng bakterya, kaya kailangang linisin agad."),
            ExerciseItem(prompt: "Sinabi sa iyo ng kaibigan mo na namatay ang kanyang aso kahapon. Ano ang dapat mong sabihin?", options: ["Nakakatawa naman 'yan", "Nakikiramay ako sa iyong pagkawala", "Dapat pusa na lang ang binili mo", "Pwede ko bang makuha ang mga laruan niya?"], correctAnswer: "Nakikiramay ako sa iyong pagkawala", explanation: "Ang pakikiramay ay ang nagpapakita ng pakikipagkapwa-tao at pag-unawa sa kalungkutan ng iba."),
            ExerciseItem(prompt: "Nakatanggap ka ng tawag mula sa hindi kilalang numero na nagsasabing nanalo ka sa loterya at hinihingi ang detalye ng iyong bangko. Ano ang dapat mong gawin?", options: ["Ibigay agad ang iyong mga detalye", "Iibaba ang telepono at huwag ibahagi ang anumang personal na impormasyon", "Sabihin sa kanila na tumawag na lang mamaya", "Tawagan ang iyong pamilya upang magdiwang"], correctAnswer: "Iibaba ang telepono at huwag ibahagi ang anumang personal na impormasyon", explanation: "Ang mga paghiling ng sensitibong detalye ng bangko mula sa hindi kilalang numero ay karaniwang panloloko (scam)."),
            ExerciseItem(prompt: "Nakahihilo at parang magaan ang iyong ulo habang nakatayo sa isang mainit na silid. Ano ang dapat mong gawin?", options: ["Manatiling nakatayo at ipikit ang mga mata", "Umupo agad at uminom ng kaunting tubig", "Tumakbo patungo sa banyo", "Umikot-ikot"], correctAnswer: "Umupo agad at uminom ng kaunting tubig", explanation: "Ang pag-upo ay nagpoprotekta laban sa pagbagsak, at ang tubig ay tumutulong upang mapawi ang dehydration."),
            ExerciseItem(prompt: "Nakakita ka ng tubig na tumutulo mula sa ilalim ng sink sa kusina. Ano ang unang bagay na dapat mong gawin?", options: ["Tumawag ng pintor", "Maglagay ng timba sa ilalim ng tagas upang saluhin ang tubig", "Mag-mop ng sahig mamaya", "Patayin ang mga ilaw"], correctAnswer: "Maglagay ng timba sa ilalim ng tagas upang saluhin ang tubig", explanation: "Ang timba ay pumipigil sa karagdagang pinsala ng tubig habang naghahanap ng maaayos."),
            ExerciseItem(prompt: "Inimbitahan ka sa isang salusalo (dinner party) ngunit hindi ka makakarating. Ano ang dapat mong gawin?", options: ["Huwag na lang sumipot", "Ipaalam sa nag-imbita bago ang party na hindi ka makakadalo", "Sumipot nang huli nang walang pasabi", "Magpadala ng regalo sa halip na sumagot"], correctAnswer: "Ipaalam sa nag-imbita bago ang party na hindi ka makakadalo", explanation: "Ang pagsasabi sa nag-imbita nang mas maaga ay magalang at nagpapahintulot sa kanila na iakma ang kanilang mga plano."),
            ExerciseItem(prompt: "Nabasag mo nang hindi sinasadya ang isang pandekorasyong plorera sa bahay ng iyong kaibigan. Ano ang tamang tugon?", options: ["Itago ang mga piraso sa ilalim ng sofa", "Humingi ng paumanhin at mag-alok na palitan ito", "Magkunwaring hindi mo ginawa ito", "Isisi ito sa aso"], correctAnswer: "Humingi ng paumanhin at mag-alok na palitan ito", explanation: "Ang katapatan at pag-aalok na ayusin ang pinsala ay ang magalang at responsableng pag-uugali."),
            ExerciseItem(prompt: "Hindi mo mahanap ang mga susi ng iyong bahay at nakakandado ka sa labas. Ano ang pinakamagandang gawin?", options: ["Basagin ang bintana upang makapasok sa loob", "Tawagan ang isang kapamilya na may ekstrang susi o tumawag ng locksmith", "Maghintay sa labas ng bahay nang walang hanggan", "Sipain ang pinto"], correctAnswer: "Tawagan ang isang kapamilya na may ekstrang susi o tumawag ng locksmith", explanation: "Ang pagkuha ng ekstrang susi o pagtawag sa propesyonal ang pinakaligtas na paraan upang makapasok."),
            ExerciseItem(prompt: "Napansin mong nakasindi ang mga ilaw sa kalye ngunit walang kuryente ang inyong bahay. Ano ang dapat mong gawin?", options: ["Suriin ang inyong circuit breaker box", "Bumili ng bagong telebisyon", "Matulog agad", "Tumawag sa pulis"], correctAnswer: "Suriin ang inyong circuit breaker box", explanation: "Ang pagsusuri sa breaker ay tumutulong upang malaman kung lokal na switch lamang ang nag-trip o may malawakang outage."),
            ExerciseItem(prompt: "Nakita mo ang isang matandang kapitbahay na nahihirapang magbuhat ng mabibigat na bag ng grocery. Ano ang dapat mong gawin?", options: ["Lagpasan siya nang mabilis", "Mag-alok na tulungan siyang magbuhat ng mga bag", "Kumuha ng larawan niya", "Sabihin sa kanya na maglakad nang mas mabilis"], correctAnswer: "Mag-alok na tulungan siyang magbuhat ng mga bag", explanation: "Ang pag-aalok ng tulong ay nagpapakita ng kabutihang-loob at pagsuporta sa komunidad."),
            ExerciseItem(prompt: "Uminom ka ng kape at napagtantong napakainit nito at napaso ang iyong bibig. Ano ang dapat mong gawin?", options: ["Inumin nang mabilis ang natitira", "Idura ito nang maingat at uminom ng malamig na tubig", "Sumigaw nang malakas", "Itapon ang tasa"], correctAnswer: "Idura ito nang maingat at uminom ng malamig na tubig", explanation: "Ang malamig na tubig ay nagpapalamig sa napasong bahagi at nagpapagaan ng sakit."),
            ExerciseItem(prompt: "Niresetahan ka ng iyong doktor ng bagong gamot ngunit hindi mo maintindihan kung paano ito inumin. Ano ang dapat mong gawin?", options: ["Hulaan ang dosis", "Magtanong sa pharmacist o doktor upang ipaliwanag ito sa iyo", "Huwag inumin ang gamot", "Hanapin ito sa social media"], correctAnswer: "Magtanong sa pharmacist o doktor upang ipaliwanag ito sa iyo", explanation: "Ang mga propesyonal sa kalusugan ang tanging maaasahang mapagkukunan ng mga tagubilin sa reseta."),
            ExerciseItem(prompt: "Nakatapon ka ng pulang alak sa puting alpombra ng iyong kaibigan nang hindi sinasadya. Ano ang dapat mong gawin?", options: ["Maglagay ng silya sa ibabaw ng mantsa", "Humingi ng paumanhin at tumulong na linisin ito agad", "Umalis nang maaga sa party", "Sabihin sa kanila na katas ng ubas iyon"], correctAnswer: "Humingi ng paumanhin at tumulong na linisin ito agad", explanation: "Ang paglilinis sa natapong likido agad ay pumipigil sa permanenteng mantsa."),
            ExerciseItem(prompt: "Narinig mong tumutunog ang iyong smoke alarm ng maikling huni (chirp) bawat minuto. Ano ang ibig sabihin nito?", options: ["Mayroong sunog", "Mahina na ang baterya at kailangang palitan", "Sira na ang alarm", "Walang ibig sabihin"], correctAnswer: "Mahina na ang baterya at kailangang palitan", explanation: "Ang nag-iisang maikling huni ay nagpapahiwatig na mahina na ang backup na baterya ng alarm."),
            ExerciseItem(prompt: "Naglalaro ka o nagmamaneho at nakakita ka ng sasakyang pang-emerhensya na may kumikislap na ilaw sa likod mo. Ano ang dapat mong gawin?", options: ["Bilisang magmaneho upang manatili sa harap nito", "Itabi ang sasakyan sa gilid ng kalsada at huminto nang ligtas", "Huminto agad sa gitna ng daan", "Balewalain ito"], correctAnswer: "Itabi ang sasakyan sa gilid ng kalsada at huminto nang ligtas", explanation: "Ang pagtabi ay nagbibigay-daan sa mga sasakyang pang-emerhensya upang makadaan nang mabilis."),
            ExerciseItem(prompt: "Nakatanggap ka ng email mula sa iyong bangko na humihiling na i-click ang isang link upang i-verify ang iyong password. Ano ang dapat mong gawin?", options: ["I-click ang link at ilagay ang iyong password", "Burahin ang email o makipag-ugnayan sa bangko gamit ang kanilang opisyal na numero", "Ipadala ito sa iyong mga kaibigan", "Sumagot kasama ang iyong password"], correctAnswer: "Burahin ang email o makipag-ugnayan sa bangko gamit ang kanilang opisyal na numero", explanation: "Hindi humihingi ang mga bangko ng password sa pamamagitan ng email; ito ay isang panloloko (phishing)."),
            ExerciseItem(prompt: "Nakakita ka ng pitaka sa bangketa na naglalaman ng pera at isang ID card. Ano ang dapat mong gawin?", options: ["Itabi ang pera at itapon ang pitaka", "Ibigay ito sa pulisya o subukang kontakin ang may-ari gamit ang ID", "Iwanan ito sa bangketa", "Ibigay ito sa isang hindi kilalang tao"], correctAnswer: "Ibigay ito sa pulisya o subukang kontakin ang may-ari gamit ang ID", explanation: "Ang pagbabalik ng nawawalang ari-arian sa may-ari nito ay ang tamang gawaing may katapatan."),
            ExerciseItem(prompt: "Tumunog ang iyong smoke alarm nang malakas at tuloy-tuloy. Ano ang dapat mong gawin?", options: ["Balewalain ito at hintaying huminto", "Suriin kung may sunog at lumabas nang ligtas sa gusali kung kinakailangan", "Palitan agad ang mga baterya", "Matulog na lang"], correctAnswer: "Suriin kung may sunog at lumabas nang ligtas sa gusali kung kinakailangan", explanation: "Ang tuloy-tuloy na tunog ng alarm ay nagbabala ng usok o sunog, na nangangailangan ng mabilis na paglikas at pagsusuri sa kaligtasan.")
        ]
    )

}
