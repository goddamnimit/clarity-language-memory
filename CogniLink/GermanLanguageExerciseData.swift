import Foundation

/// German: language-section exercises (incl. minimal pairs). Native-authored; review status in LanguageReviewStatus.
struct GermanLanguageExerciseData {

    static let allExercises: [Exercise] = [
        categoryCrossoutEasy,
        categoryCrossoutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonymsEasy,
        sentenceCompletionEasy,
        sentenceCompletionMedium,
        morphology,
        homonymsMedium,
        analogiesMedium,
        factOrOpinion,
        sequencingMedium,
        minimalPairs
    ]

    private static let categoryCrossoutEasy = Exercise(
        title: "Was passt nicht dazu?",
        instructions: "Wählen Sie das Wort, das nicht zu den anderen drei passt.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "categoryCrossoutEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "APFEL, BIRNE, BANANE, HAMMER", options: ["APFEL", "BIRNE", "BANANE", "HAMMER"], correctAnswer: "HAMMER", explanation: "Apfel, Birne und Banane sind Obstsorten. Ein Hammer ist ein Werkzeug."),
            ExerciseItem(id: UUID(), prompt: "HUND, KATZE, PFERD, TISCH", options: ["HUND", "KATZE", "PFERD", "TISCH"], correctAnswer: "TISCH", explanation: "Hund, Katze und Pferd sind Tiere. Ein Tisch ist ein Möbelstück."),
            ExerciseItem(id: UUID(), prompt: "HEMD, HOSE, JACKE, LÖFFEL", options: ["HEMD", "HOSE", "JACKE", "LÖFFEL"], correctAnswer: "LÖFFEL", explanation: "Hemd, Hose und Jacke sind Kleidungsstücke. Ein Löffel gehört zum Besteck."),
            ExerciseItem(id: UUID(), prompt: "KÜCHE, BADEZIMMER, SCHLAFZIMMER, AUTO", options: ["KÜCHE", "BADEZIMMER", "SCHLAFZIMMER", "AUTO"], correctAnswer: "AUTO", explanation: "Küche, Badezimmer und Schlafzimmer sind Räume in einer Wohnung. Ein Auto ist ein Fahrzeug."),
            ExerciseItem(id: UUID(), prompt: "BUS, ZUG, FAHRRAD, SOFA", options: ["BUS", "ZUG", "FAHRRAD", "SOFA"], correctAnswer: "SOFA", explanation: "Bus, Zug und Fahrrad sind Verkehrsmittel. Ein Sofa ist ein Möbelstück zum Sitzen."),
            ExerciseItem(id: UUID(), prompt: "ARZT, LEHRER, BÄCKER, KARTOFFEL", options: ["ARZT", "LEHRER", "BÄCKER", "KARTOFFEL"], correctAnswer: "KARTOFFEL", explanation: "Arzt, Lehrer und Bäcker sind Berufe. Die Kartoffel ist ein Gemüse."),
            ExerciseItem(id: UUID(), prompt: "KOPF, ARM, BEIN, TASSE", options: ["KOPF", "ARM", "BEIN", "TASSE"], correctAnswer: "TASSE", explanation: "Kopf, Arm und Bein sind Körperteile. Eine Tasse ist ein Gefäß zum Trinken."),
            ExerciseItem(id: UUID(), prompt: "ZANGE, SÄGE, SCHRAUBENZIEHER, BANANE", options: ["ZANGE", "SÄGE", "SCHRAUBENZIEHER", "BANANE"], correctAnswer: "BANANE", explanation: "Zange, Säge und Schraubenzieher sind Werkzeuge. Die Banane ist eine Frucht."),
            ExerciseItem(id: UUID(), prompt: "ROSE, TULPE, NELKE, GABEL", options: ["ROSE", "TULPE", "NELKE", "GABEL"], correctAnswer: "GABEL", explanation: "Rose, Tulpe und Nelke sind Blumen. Die Gabel gehört zum Besteck."),
            ExerciseItem(id: UUID(), prompt: "BROT, KÄSE, WURST, SCHAL", options: ["BROT", "KÄSE", "WURST", "SCHAL"], correctAnswer: "SCHAL", explanation: "Brot, Käse und Wurst sind Lebensmittel. Ein Schal ist ein Kleidungsstück."),
            ExerciseItem(id: UUID(), prompt: "MILCH, WASSER, SAFT, MESSER", options: ["MILCH", "WASSER", "SAFT", "MESSER"], correctAnswer: "MESSER", explanation: "Milch, Wasser und Saft sind Getränke. Ein Messer ist Besteck und nichts zum Trinken."),
            ExerciseItem(id: UUID(), prompt: "SOCKE, SCHUH, STIEFEL, BESEN", options: ["SOCKE", "SCHUH", "STIEFEL", "BESEN"], correctAnswer: "BESEN", explanation: "Socke, Schuh und Stiefel trägt man an den Füßen. Ein Besen ist ein Putzgerät."),
            ExerciseItem(id: UUID(), prompt: "TASSE, TELLER, GLAS, KAMM", options: ["TASSE", "TELLER", "GLAS", "KAMM"], correctAnswer: "KAMM", explanation: "Tasse, Teller und Glas gehören zum Geschirr. Mit einem Kamm pflegt man die Haare."),
            ExerciseItem(id: UUID(), prompt: "MOND, STERN, SONNE, SCHUH", options: ["MOND", "STERN", "SONNE", "SCHUH"], correctAnswer: "SCHUH", explanation: "Mond, Stern und Sonne sind Himmelskörper. Ein Schuh ist ein Kleidungsstück."),
            ExerciseItem(id: UUID(), prompt: "KIRSCHE, ERDBEERE, HIMBEERE, GURKE", options: ["KIRSCHE", "ERDBEERE", "HIMBEERE", "GURKE"], correctAnswer: "GURKE", explanation: "Kirsche, Erdbeere und Himbeere sind süße Früchte. Die Gurke ist ein Gemüse."),
            ExerciseItem(id: UUID(), prompt: "KARTOFFEL, KAROTTE, ZWIEBEL, BIRNE", options: ["KARTOFFEL", "KAROTTE", "ZWIEBEL", "BIRNE"], correctAnswer: "BIRNE", explanation: "Kartoffel, Karotte und Zwiebel sind Gemüse. Die Birne ist ein Obst."),
            ExerciseItem(id: UUID(), prompt: "ADLER, SPATZ, EULE, FORELLE", options: ["ADLER", "SPATZ", "EULE", "FORELLE"], correctAnswer: "FORELLE", explanation: "Adler, Spatz und Eule sind Vögel. Die Forelle ist ein Fisch."),
            ExerciseItem(id: UUID(), prompt: "REGEN, SCHNEE, WIND, STUHL", options: ["REGEN", "SCHNEE", "WIND", "STUHL"], correctAnswer: "STUHL", explanation: "Regen, Schnee und Wind gehören zum Wetter. Ein Stuhl ist ein Möbelstück."),
            ExerciseItem(id: UUID(), prompt: "BETT, SCHRANK, STUHL, WOLKE", options: ["BETT", "SCHRANK", "STUHL", "WOLKE"], correctAnswer: "WOLKE", explanation: "Bett, Schrank und Stuhl sind Möbel. Eine Wolke ist eine Erscheinung am Himmel."),
            ExerciseItem(id: UUID(), prompt: "SCHIFF, FLUGZEUG, TRAKTOR, BLUME", options: ["SCHIFF", "FLUGZEUG", "TRAKTOR", "BLUME"], correctAnswer: "BLUME", explanation: "Schiff, Flugzeug und Traktor sind Fahrzeuge. Eine Blume ist eine Pflanze."),
            ExerciseItem(id: UUID(), prompt: "AUGE, OHR, NASE, KERZE", options: ["AUGE", "OHR", "NASE", "KERZE"], correctAnswer: "KERZE", explanation: "Auge, Ohr und Nase sind Sinnesorgane. Eine Kerze ist ein Gegenstand, der Licht gibt."),
            ExerciseItem(id: UUID(), prompt: "MONTAG, DIENSTAG, FREITAG, JANUAR", options: ["MONTAG", "DIENSTAG", "FREITAG", "JANUAR"], correctAnswer: "JANUAR", explanation: "Montag, Dienstag und Freitag sind Wochentage. Der Januar ist ein Monat."),
            ExerciseItem(id: UUID(), prompt: "ROT, BLAU, GRÜN, QUADRAT", options: ["ROT", "BLAU", "GRÜN", "QUADRAT"], correctAnswer: "QUADRAT", explanation: "Rot, Blau und Grün sind Farben. Ein Quadrat ist eine geometrische Form."),
            ExerciseItem(id: UUID(), prompt: "SEIFE, ZAHNBÜRSTE, HANDTUCH, GABEL", options: ["SEIFE", "ZAHNBÜRSTE", "HANDTUCH", "GABEL"], correctAnswer: "GABEL", explanation: "Seife, Zahnbürste und Handtuch braucht man im Badezimmer. Die Gabel gehört in die Küche."),
            ExerciseItem(id: UUID(), prompt: "FRÜHLING, SOMMER, HERBST, MONTAG", options: ["FRÜHLING", "SOMMER", "HERBST", "MONTAG"], correctAnswer: "MONTAG", explanation: "Frühling, Sommer und Herbst sind Jahreszeiten. Montag ist ein Wochentag."),
            ExerciseItem(id: UUID(), prompt: "LÖWE, TIGER, ZEBRA, TOMATE", options: ["LÖWE", "TIGER", "ZEBRA", "TOMATE"], correctAnswer: "TOMATE", explanation: "Löwe, Tiger und Zebra sind Tiere. Die Tomate ist ein Gemüse."),
            ExerciseItem(id: UUID(), prompt: "KOCH, FRISEUR, MALER, BERG", options: ["KOCH", "FRISEUR", "MALER", "BERG"], correctAnswer: "BERG", explanation: "Koch, Friseur und Maler sind Berufe. Ein Berg ist eine Erhebung in der Landschaft."),
            ExerciseItem(id: UUID(), prompt: "SCHERE, NADEL, FADEN, APFEL", options: ["SCHERE", "NADEL", "FADEN", "APFEL"], correctAnswer: "APFEL", explanation: "Schere, Nadel und Faden braucht man zum Nähen. Der Apfel ist ein Obst."),
            ExerciseItem(id: UUID(), prompt: "WALD, WIESE, BERG, TELEFON", options: ["WALD", "WIESE", "BERG", "TELEFON"], correctAnswer: "TELEFON", explanation: "Wald, Wiese und Berg sind Landschaften in der Natur. Ein Telefon ist ein technisches Gerät."),
            ExerciseItem(id: UUID(), prompt: "MÜTZE, HANDSCHUH, SCHAL, KÜRBIS", options: ["MÜTZE", "HANDSCHUH", "SCHAL", "KÜRBIS"], correctAnswer: "KÜRBIS", explanation: "Mütze, Handschuh und Schal sind warme Kleidung für den Winter. Der Kürbis ist ein Gemüse.")
        ]
    )

    private static let categoryCrossoutHard = Exercise(
        title: "Der Außenseiter",
        instructions: "Wählen Sie das Wort, das nicht in die gemeinsame Gruppe gehört.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        groupKey: "categoryCrossoutHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "SONATE, SINFONIE, KONZERT, SONETT", options: ["SONATE", "SINFONIE", "KONZERT", "SONETT"], correctAnswer: "SONETT", explanation: "Sonate, Sinfonie und Konzert sind Formen der Musik. Das Sonett ist eine Gedichtform."),
            ExerciseItem(id: UUID(), prompt: "SONETT, BALLADE, ODE, FUGE", options: ["SONETT", "BALLADE", "ODE", "FUGE"], correctAnswer: "FUGE", explanation: "Sonett, Ballade und Ode sind Gedichtformen. Die Fuge ist eine musikalische Kompositionsform."),
            ExerciseItem(id: UUID(), prompt: "SPEICHE, ELLE, SCHIENBEIN, SEHNE", options: ["SPEICHE", "ELLE", "SCHIENBEIN", "SEHNE"], correctAnswer: "SEHNE", explanation: "Speiche, Elle und Schienbein sind Knochen. Die Sehne verbindet einen Muskel mit dem Knochen und ist selbst kein Knochen."),
            ExerciseItem(id: UUID(), prompt: "RHEIN, ELBE, DONAU, BODENSEE", options: ["RHEIN", "ELBE", "DONAU", "BODENSEE"], correctAnswer: "BODENSEE", explanation: "Rhein, Elbe und Donau sind Flüsse. Der Bodensee ist ein See, also ein stehendes Gewässer."),
            ExerciseItem(id: UUID(), prompt: "AQUARELL, FRESKO, ÖLMALEREI, BRONZEGUSS", options: ["AQUARELL", "FRESKO", "ÖLMALEREI", "BRONZEGUSS"], correctAnswer: "BRONZEGUSS", explanation: "Aquarell, Fresko und Ölmalerei sind Maltechniken. Der Bronzeguss ist ein Verfahren der Bildhauerei."),
            ExerciseItem(id: UUID(), prompt: "INSULIN, ADRENALIN, CORTISOL, HÄMOGLOBIN", options: ["INSULIN", "ADRENALIN", "CORTISOL", "HÄMOGLOBIN"], correctAnswer: "HÄMOGLOBIN", explanation: "Insulin, Adrenalin und Cortisol sind Hormone. Hämoglobin ist ein Eiweiß in den roten Blutkörperchen, das Sauerstoff transportiert."),
            ExerciseItem(id: UUID(), prompt: "RICHTER, STAATSANWALT, VERTEIDIGER, NOTAR", options: ["RICHTER", "STAATSANWALT", "VERTEIDIGER", "NOTAR"], correctAnswer: "NOTAR", explanation: "Richter, Staatsanwalt und Verteidiger sind Beteiligte einer Strafverhandlung im Gerichtssaal. Der Notar beurkundet Verträge und tritt dort nicht auf."),
            ExerciseItem(id: UUID(), prompt: "FRANZÖSISCH, SPANISCH, RUMÄNISCH, UNGARISCH", options: ["FRANZÖSISCH", "SPANISCH", "RUMÄNISCH", "UNGARISCH"], correctAnswer: "UNGARISCH", explanation: "Französisch, Spanisch und Rumänisch sind romanische Sprachen, die aus dem Lateinischen stammen. Ungarisch gehört zu den uralischen Sprachen."),
            ExerciseItem(id: UUID(), prompt: "METER, KILOMETER, ZENTIMETER, KILOGRAMM", options: ["METER", "KILOMETER", "ZENTIMETER", "KILOGRAMM"], correctAnswer: "KILOGRAMM", explanation: "Meter, Kilometer und Zentimeter sind Längeneinheiten. Das Kilogramm ist eine Einheit für die Masse."),
            ExerciseItem(id: UUID(), prompt: "WATT, VOLT, AMPERE, NEWTON", options: ["WATT", "VOLT", "AMPERE", "NEWTON"], correctAnswer: "NEWTON", explanation: "Watt, Volt und Ampere sind elektrische Einheiten. Newton ist die Einheit der Kraft."),
            ExerciseItem(id: UUID(), prompt: "ROMAN, NOVELLE, ERZÄHLUNG, BALLADE", options: ["ROMAN", "NOVELLE", "ERZÄHLUNG", "BALLADE"], correctAnswer: "BALLADE", explanation: "Roman, Novelle und Erzählung sind Prosaformen. Die Ballade ist ein erzählendes Gedicht in Versen."),
            ExerciseItem(id: UUID(), prompt: "LEBER, NIERE, MILZ, BLUT", options: ["LEBER", "NIERE", "MILZ", "BLUT"], correctAnswer: "BLUT", explanation: "Leber, Niere und Milz sind Organe. Das Blut ist eine Körperflüssigkeit und zählt zum Gewebe, nicht zu den Organen."),
            ExerciseItem(id: UUID(), prompt: "ISAR, INN, LECH, MAIN", options: ["ISAR", "INN", "LECH", "MAIN"], correctAnswer: "MAIN", explanation: "Isar, Inn und Lech kommen aus den Alpen und münden in die Donau. Der Main fließt in den Rhein."),
            ExerciseItem(id: UUID(), prompt: "BAYERN, HESSEN, SACHSEN, TIROL", options: ["BAYERN", "HESSEN", "SACHSEN", "TIROL"], correctAnswer: "TIROL", explanation: "Bayern, Hessen und Sachsen sind deutsche Bundesländer. Tirol ist ein Bundesland von Österreich."),
            ExerciseItem(id: UUID(), prompt: "MARS, VENUS, SATURN, MOND", options: ["MARS", "VENUS", "SATURN", "MOND"], correctAnswer: "MOND", explanation: "Mars, Venus und Saturn sind Planeten, die die Sonne umkreisen. Der Mond umkreist die Erde und ist ein Satellit."),
            ExerciseItem(id: UUID(), prompt: "GEIGE, BRATSCHE, CELLO, FLÖTE", options: ["GEIGE", "BRATSCHE", "CELLO", "FLÖTE"], correctAnswer: "FLÖTE", explanation: "Geige, Bratsche und Cello sind Streichinstrumente. Die Flöte ist ein Blasinstrument."),
            ExerciseItem(id: UUID(), prompt: "TROMPETE, POSAUNE, TUBA, OBOE", options: ["TROMPETE", "POSAUNE", "TUBA", "OBOE"], correctAnswer: "OBOE", explanation: "Trompete, Posaune und Tuba sind Blechblasinstrumente. Die Oboe gehört zu den Holzblasinstrumenten."),
            ExerciseItem(id: UUID(), prompt: "EISEN, KUPFER, ZINN, SCHWEFEL", options: ["EISEN", "KUPFER", "ZINN", "SCHWEFEL"], correctAnswer: "SCHWEFEL", explanation: "Eisen, Kupfer und Zinn sind Metalle. Schwefel ist ein Nichtmetall."),
            ExerciseItem(id: UUID(), prompt: "HAMMER, AMBOSS, STEIGBÜGEL, SCHNECKE", options: ["HAMMER", "AMBOSS", "STEIGBÜGEL", "SCHNECKE"], correctAnswer: "SCHNECKE", explanation: "Hammer, Amboss und Steigbügel sind die drei Gehörknöchelchen im Mittelohr. Die Schnecke gehört zum Innenohr und ist ein Sinnesorgan."),
            ExerciseItem(id: UUID(), prompt: "DREIECK, VIERECK, FÜNFECK, KREIS", options: ["DREIECK", "VIERECK", "FÜNFECK", "KREIS"], correctAnswer: "KREIS", explanation: "Dreieck, Viereck und Fünfeck sind Vielecke mit geraden Seiten und Ecken. Der Kreis hat keine Ecken."),
            ExerciseItem(id: UUID(), prompt: "BIOLOGIE, CHEMIE, PHYSIK, SOZIOLOGIE", options: ["BIOLOGIE", "CHEMIE", "PHYSIK", "SOZIOLOGIE"], correctAnswer: "SOZIOLOGIE", explanation: "Biologie, Chemie und Physik sind Naturwissenschaften. Die Soziologie erforscht die Gesellschaft und zählt zu den Sozialwissenschaften."),
            ExerciseItem(id: UUID(), prompt: "NOMEN, VERB, ADJEKTIV, KOMMA", options: ["NOMEN", "VERB", "ADJEKTIV", "KOMMA"], correctAnswer: "KOMMA", explanation: "Nomen, Verb und Adjektiv sind Wortarten. Das Komma ist ein Satzzeichen."),
            ExerciseItem(id: UUID(), prompt: "PERFEKT, PRÄTERITUM, FUTUR, KONJUNKTIV", options: ["PERFEKT", "PRÄTERITUM", "FUTUR", "KONJUNKTIV"], correctAnswer: "KONJUNKTIV", explanation: "Perfekt, Präteritum und Futur sind Zeitformen. Der Konjunktiv ist ein Modus, der Möglichkeit oder Wunsch ausdrückt."),
            ExerciseItem(id: UUID(), prompt: "EUROPA, ASIEN, AFRIKA, ARKTIS", options: ["EUROPA", "ASIEN", "AFRIKA", "ARKTIS"], correctAnswer: "ARKTIS", explanation: "Europa, Asien und Afrika sind Kontinente. Die Arktis ist eine Region um den Nordpol, großteils aus Meer und Eis, und kein Kontinent.")
        ]
    )

    private static let phraseCompletion = Exercise(
        title: "Sprichwörter ergänzen",
        instructions: "Wählen Sie das Wort, das den bekannten Satz richtig vervollständigt.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        groupKey: "phraseCompletion",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Übung macht den ___.", options: ["Meister", "Lehrer", "Bäcker", "Dichter"], correctAnswer: "Meister", explanation: "Wer etwas oft übt, wird darin immer besser und am Ende ein Meister."),
            ExerciseItem(id: UUID(), prompt: "Wer rastet, der ___.", options: ["rostet", "schläft", "friert", "fällt"], correctAnswer: "rostet", explanation: "Wer nicht aktiv bleibt, verliert seine Fähigkeiten, so wie Eisen ohne Gebrauch rostet."),
            ExerciseItem(id: UUID(), prompt: "Ein Unglück kommt selten ___.", options: ["allein", "pünktlich", "leise", "spät"], correctAnswer: "allein", explanation: "Oft treffen mehrere Probleme kurz nacheinander oder gleichzeitig ein."),
            ExerciseItem(id: UUID(), prompt: "Morgenstund hat Gold im ___.", options: ["Mund", "Haus", "Beutel", "Schuh"], correctAnswer: "Mund", explanation: "Wer früh aufsteht, kann viel erledigen und hat dadurch einen Vorteil."),
            ExerciseItem(id: UUID(), prompt: "Der Apfel fällt nicht weit vom ___.", options: ["Stamm", "Haus", "Tisch", "Himmel"], correctAnswer: "Stamm", explanation: "Kinder ähneln in ihrem Wesen oft ihren Eltern."),
            ExerciseItem(id: UUID(), prompt: "Wo gehobelt wird, da fallen ___.", options: ["Späne", "Bretter", "Nägel", "Blätter"], correctAnswer: "Späne", explanation: "Bei jeder Arbeit entstehen auch kleine Fehler oder Abfälle, die man in Kauf nehmen muss."),
            ExerciseItem(id: UUID(), prompt: "Keine Rose ohne ___.", options: ["Dornen", "Duft", "Wasser", "Blätter"], correctAnswer: "Dornen", explanation: "Auch etwas Schönes hat meist eine unangenehme Seite."),
            ExerciseItem(id: UUID(), prompt: "Aller guten Dinge sind ___.", options: ["drei", "vier", "zwei", "viele"], correctAnswer: "drei", explanation: "Man sagt es, wenn ein dritter Versuch oder ein dritter Teil gelingen soll."),
            ExerciseItem(id: UUID(), prompt: "Lügen haben kurze ___.", options: ["Beine", "Wege", "Arme", "Haare"], correctAnswer: "Beine", explanation: "Eine Lüge fliegt schnell auf, sie kommt also nicht weit."),
            ExerciseItem(id: UUID(), prompt: "Wer andern eine Grube gräbt, fällt selbst ___.", options: ["hinein", "vorbei", "hinauf", "davon"], correctAnswer: "hinein", explanation: "Wer anderen etwas Böses antun will, schadet am Ende oft sich selbst."),
            ExerciseItem(id: UUID(), prompt: "Ende gut, alles ___.", options: ["gut", "schön", "neu", "klar"], correctAnswer: "gut", explanation: "Wenn eine Sache am Ende gut ausgeht, sind frühere Sorgen vergessen."),
            ExerciseItem(id: UUID(), prompt: "Eile mit ___.", options: ["Weile", "Eifer", "Mühe", "Ruhe"], correctAnswer: "Weile", explanation: "Man soll nichts überstürzen, sondern sich Zeit nehmen."),
            ExerciseItem(id: UUID(), prompt: "Kleider machen ___.", options: ["Leute", "Frauen", "Männer", "Mode"], correctAnswer: "Leute", explanation: "Der erste Eindruck hängt stark davon ab, wie jemand gekleidet ist."),
            ExerciseItem(id: UUID(), prompt: "Der Klügere gibt ___.", options: ["nach", "auf", "ab", "weg"], correctAnswer: "nach", explanation: "Wer klug ist, vermeidet unnötigen Streit und lenkt ein."),
            ExerciseItem(id: UUID(), prompt: "Aus den Augen, aus dem ___.", options: ["Sinn", "Haus", "Weg", "Bett"], correctAnswer: "Sinn", explanation: "Was oder wen man lange nicht sieht, vergisst man mit der Zeit."),
            ExerciseItem(id: UUID(), prompt: "In der Kürze liegt die ___.", options: ["Würze", "Wärme", "Wahrheit", "Weisheit"], correctAnswer: "Würze", explanation: "Wer sich kurz und knapp ausdrückt, wirkt oft am besten."),
            ExerciseItem(id: UUID(), prompt: "Ohne Fleiß kein ___.", options: ["Preis", "Schlaf", "Regen", "Mut"], correctAnswer: "Preis", explanation: "Nur wer sich anstrengt, kann etwas erreichen."),
            ExerciseItem(id: UUID(), prompt: "Viele Köche verderben den ___.", options: ["Brei", "Kuchen", "Braten", "Salat"], correctAnswer: "Brei", explanation: "Wenn zu viele Leute mitreden und mitarbeiten, wird das Ergebnis schlechter."),
            ExerciseItem(id: UUID(), prompt: "Aller Anfang ist ___.", options: ["schwer", "kurz", "leise", "teuer"], correctAnswer: "schwer", explanation: "Am Anfang einer neuen Sache fällt vieles schwerer als später."),
            ExerciseItem(id: UUID(), prompt: "Was Hänschen nicht lernt, lernt Hans ___.", options: ["nimmermehr", "später", "schneller", "öfter"], correctAnswer: "nimmermehr", explanation: "Was man als Kind versäumt, holt man als Erwachsener nur schwer nach.")
        ]
    )

    private static let synonymsEasy = Exercise(
        title: "Wörter mit gleicher Bedeutung",
        instructions: "Wählen Sie das Wort, das fast dasselbe bedeutet wie das große Wort.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "synonymsEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: SCHNELL", options: ["rasch", "langsam", "laut", "nass"], correctAnswer: "rasch", explanation: "Rasch und schnell bedeuten dasselbe. Langsam ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: BEGINNEN", options: ["anfangen", "aufhören", "schlafen", "kaufen"], correctAnswer: "anfangen", explanation: "Beginnen und anfangen bedeuten dasselbe. Aufhören ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: AUTO", options: ["Wagen", "Zug", "Haus", "Bett"], correctAnswer: "Wagen", explanation: "Mit Wagen ist im Alltag oft ein Auto gemeint. Zug, Haus und Bett haben eine andere Bedeutung."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: TOLL", options: ["großartig", "schrecklich", "kalt", "leer"], correctAnswer: "großartig", explanation: "Toll und großartig drücken beide große Begeisterung aus. Schrecklich ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: REDEN", options: ["sprechen", "schweigen", "laufen", "trinken"], correctAnswer: "sprechen", explanation: "Reden und sprechen bedeuten dasselbe. Schweigen ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: MÜDE", options: ["erschöpft", "munter", "hungrig", "nass"], correctAnswer: "erschöpft", explanation: "Wer erschöpft ist, ist sehr müde. Munter ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: FREUND", options: ["Kumpel", "Feind", "Nachbar", "Lehrer"], correctAnswer: "Kumpel", explanation: "Ein Kumpel ist ein guter Freund. Ein Feind ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: KAUFEN", options: ["erwerben", "verkaufen", "backen", "fragen"], correctAnswer: "erwerben", explanation: "Erwerben heißt etwas gegen Geld bekommen, also kaufen. Verkaufen ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: SCHÖN", options: ["hübsch", "hässlich", "schwer", "früh"], correctAnswer: "hübsch", explanation: "Hübsch und schön beschreiben beide ein angenehmes Aussehen. Hässlich ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: ANGST", options: ["Furcht", "Mut", "Hunger", "Stolz"], correctAnswer: "Furcht", explanation: "Angst und Furcht bezeichnen dasselbe Gefühl. Mut ist das Gegenteil.")
        ]
    )

    private static let synonymsHard = Exercise(
        title: "Gehobene Wörter mit gleicher Bedeutung",
        instructions: "Wählen Sie das Wort, das fast dasselbe bedeutet wie das große Wort.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        groupKey: "synonymsHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: EMSIG", options: ["fleißig", "träge", "heiter", "kühl"], correctAnswer: "fleißig", explanation: "Emsig bedeutet eifrig und arbeitsam, also fleißig. Träge ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: ZAGHAFT", options: ["furchtsam", "dreist", "gelassen", "listig"], correctAnswer: "furchtsam", explanation: "Wer zaghaft ist, traut sich nur zögernd, also furchtsam. Dreist ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: ERSINNEN", options: ["ausdenken", "vergessen", "zerstören", "verwerfen"], correctAnswer: "ausdenken", explanation: "Etwas ersinnen heißt, es sich neu auszudenken."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: BEHUTSAM", options: ["vorsichtig", "grob", "eilig", "laut"], correctAnswer: "vorsichtig", explanation: "Behutsam bedeutet sorgsam und vorsichtig. Grob ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: GEWÄHREN", options: ["bewilligen", "ablehnen", "verbergen", "belächeln"], correctAnswer: "bewilligen", explanation: "Wer etwas gewährt, erlaubt oder bewilligt es. Ablehnen ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: VERMESSEN", options: ["anmaßend", "bescheiden", "vorsichtig", "großzügig"], correctAnswer: "anmaßend", explanation: "Vermessen bedeutet überheblich und anmaßend. Bescheiden ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: SCHMÄHEN", options: ["verunglimpfen", "loben", "bitten", "heilen"], correctAnswer: "verunglimpfen", explanation: "Schmähen heißt, jemanden herabzusetzen, also zu verunglimpfen. Loben ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: ÖDE", options: ["trostlos", "fruchtbar", "lebhaft", "prächtig"], correctAnswer: "trostlos", explanation: "Eine öde Gegend ist leer und trostlos. Lebhaft ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: UNVERZÜGLICH", options: ["sofort", "später", "vielleicht", "niemals"], correctAnswer: "sofort", explanation: "Unverzüglich heißt ohne Verzögerung, also sofort."),
            ExerciseItem(id: UUID(), prompt: "Gleiche Bedeutung wie: BEKÖMMLICH", options: ["verträglich", "giftig", "bitter", "kostspielig"], correctAnswer: "verträglich", explanation: "Eine bekömmliche Speise verträgt der Körper gut, sie ist also verträglich.")
        ]
    )

    private static let antonymsEasy = Exercise(
        title: "Das Gegenteil finden",
        instructions: "Wählen Sie das Wort, das das Gegenteil des großen Wortes bedeutet.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "antonymsEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: HEISS", options: ["kalt", "glühend", "trocken", "laut"], correctAnswer: "kalt", explanation: "Heiß und kalt sind Gegensätze. Glühend bedeutet eher noch heißer."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: HELL", options: ["dunkel", "strahlend", "leise", "süß"], correctAnswer: "dunkel", explanation: "Hell und dunkel sind Gegensätze. Strahlend bedeutet ebenfalls sehr hell."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: OBEN", options: ["unten", "hoch", "links", "draußen"], correctAnswer: "unten", explanation: "Oben und unten sind Gegensätze in der Senkrechten. Links ist die andere Richtung, kein Gegenteil von oben."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: VOLL", options: ["leer", "gefüllt", "schwer", "rund"], correctAnswer: "leer", explanation: "Voll und leer sind Gegensätze. Gefüllt bedeutet fast dasselbe wie voll."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: LAUT", options: ["leise", "schrill", "klein", "schnell"], correctAnswer: "leise", explanation: "Laut und leise beschreiben gegensätzliche Lautstärken."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: FRÜH", options: ["spät", "zeitig", "morgens", "lang"], correctAnswer: "spät", explanation: "Früh und spät sind Gegensätze bei der Uhrzeit. Zeitig bedeutet fast dasselbe wie früh."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: REICH", options: ["arm", "wohlhabend", "klug", "schön"], correctAnswer: "arm", explanation: "Reich und arm sind Gegensätze beim Besitz. Wohlhabend bedeutet fast dasselbe wie reich."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: GLÜCKLICH", options: ["traurig", "froh", "müde", "gesund"], correctAnswer: "traurig", explanation: "Glücklich und traurig sind gegensätzliche Gefühle. Froh bedeutet fast dasselbe wie glücklich."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: ANFANG", options: ["Ende", "Beginn", "Mitte", "Reise"], correctAnswer: "Ende", explanation: "Anfang und Ende sind Gegensätze. Beginn bedeutet dasselbe wie Anfang, die Mitte liegt dazwischen."),
            ExerciseItem(id: UUID(), prompt: "Gegenteil von: STARK", options: ["schwach", "kräftig", "groß", "scharf"], correctAnswer: "schwach", explanation: "Stark und schwach sind Gegensätze. Kräftig bedeutet fast dasselbe wie stark.")
        ]
    )

    private static let sentenceCompletionEasy = Exercise(
        title: "Satz ergänzen",
        instructions: "Wählen Sie das Wort, das in die Lücke passt.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        groupKey: "sentenceCompletionEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ich trinke morgens einen Kaffee mit ___.", options: ["Milch", "Schuhen", "Kissen"], correctAnswer: "Milch", explanation: "Kaffee trinkt man oft mit Milch. Schuhe und Kissen gehören nicht in eine Tasse."),
            ExerciseItem(id: UUID(), prompt: "Im Winter trage ich einen warmen ___.", options: ["Mantel", "Eimer", "Sommer"], correctAnswer: "Mantel", explanation: "Einen Mantel kann man tragen und er wärmt. Ein Eimer ist kein Kleidungsstück."),
            ExerciseItem(id: UUID(), prompt: "Die Kinder spielen im ___.", options: ["Garten", "Kuchen", "Geld"], correctAnswer: "Garten", explanation: "Man spielt im Garten. Im Kuchen oder im Geld kann man nicht spielen."),
            ExerciseItem(id: UUID(), prompt: "Am Abend gehe ich ins ___.", options: ["Bett", "Dach", "Regal"], correctAnswer: "Bett", explanation: "Abends geht man ins Bett, um zu schlafen."),
            ExerciseItem(id: UUID(), prompt: "Zum Schneiden des Brotes nehme ich ein ___.", options: ["Messer", "Telefon", "Kissen"], correctAnswer: "Messer", explanation: "Brot schneidet man mit einem Messer."),
            ExerciseItem(id: UUID(), prompt: "Die Sonne scheint und der Himmel ist ___.", options: ["blau", "laut", "scharf"], correctAnswer: "blau", explanation: "Bei Sonnenschein ist der Himmel oft blau. Laut und scharf beschreiben keinen Himmel."),
            ExerciseItem(id: UUID(), prompt: "Ich putze mir die Zähne mit der ___.", options: ["Zahnbürste", "Gabel", "Kerze"], correctAnswer: "Zahnbürste", explanation: "Die Zähne putzt man mit einer Zahnbürste."),
            ExerciseItem(id: UUID(), prompt: "Der Hund bellt und wedelt mit dem ___.", options: ["Schwanz", "Schwan", "Schrank"], correctAnswer: "Schwanz", explanation: "Ein Hund wedelt mit dem Schwanz. Ein Schwan ist ein Vogel, der Schrank ein Möbelstück."),
            ExerciseItem(id: UUID(), prompt: "Wir fahren mit dem ___ zur Arbeit.", options: ["Bus", "Buch", "Bauch"], correctAnswer: "Bus", explanation: "Mit einem Bus kann man fahren. Mit einem Buch oder einem Bauch kann man nicht fahren."),
            ExerciseItem(id: UUID(), prompt: "Im Sommer gehen wir gern an den ___.", options: ["Strand", "Schrank", "Stuhl"], correctAnswer: "Strand", explanation: "Im Sommer geht man gern an den Strand zum Baden."),
            ExerciseItem(id: UUID(), prompt: "Ich lese eine Geschichte in einem ___.", options: ["Buch", "Bach", "Bett"], correctAnswer: "Buch", explanation: "Geschichten liest man in einem Buch. Ein Bach ist ein kleiner Fluss."),
            ExerciseItem(id: UUID(), prompt: "Mit der Brille kann ich wieder gut ___.", options: ["sehen", "gehen", "sagen"], correctAnswer: "sehen", explanation: "Eine Brille hilft den Augen beim Sehen."),
            ExerciseItem(id: UUID(), prompt: "Die Suppe ist zu heiß, sie muss erst ___.", options: ["abkühlen", "anziehen", "aufschließen"], correctAnswer: "abkühlen", explanation: "Eine heiße Suppe lässt man abkühlen, bevor man sie isst."),
            ExerciseItem(id: UUID(), prompt: "Der Bäcker backt frisches ___.", options: ["Brot", "Brett", "Blatt"], correctAnswer: "Brot", explanation: "Ein Bäcker backt Brot. Ein Brett ist aus Holz."),
            ExerciseItem(id: UUID(), prompt: "Wenn es regnet, nehme ich einen ___ mit.", options: ["Regenschirm", "Teppich", "Löffel"], correctAnswer: "Regenschirm", explanation: "Bei Regen schützt man sich mit einem Regenschirm."),
            ExerciseItem(id: UUID(), prompt: "Die Katze fängt eine ___.", options: ["Maus", "Maut", "Haus"], correctAnswer: "Maus", explanation: "Katzen fangen Mäuse. Maut ist eine Gebühr, ein Haus kann man nicht fangen."),
            ExerciseItem(id: UUID(), prompt: "Ich schreibe einen Brief und klebe eine ___ darauf.", options: ["Briefmarke", "Zahnbürste", "Nadel"], correctAnswer: "Briefmarke", explanation: "Auf einen Brief klebt man eine Briefmarke, damit die Post ihn befördert."),
            ExerciseItem(id: UUID(), prompt: "Die Uhr zeigt die ___.", options: ["Zeit", "Zeitung", "Zeuge"], correctAnswer: "Zeit", explanation: "Eine Uhr zeigt die Zeit an. Eine Zeitung liest man, ein Zeuge sagt vor Gericht aus."),
            ExerciseItem(id: UUID(), prompt: "Im Supermarkt bezahle ich an der ___.", options: ["Kasse", "Tasse", "Kasten"], correctAnswer: "Kasse", explanation: "Im Supermarkt bezahlt man an der Kasse."),
            ExerciseItem(id: UUID(), prompt: "Am Morgen geht die ___ auf.", options: ["Sonne", "Socke", "Sonate"], correctAnswer: "Sonne", explanation: "Morgens geht die Sonne auf.")
        ]
    )

    private static let sentenceCompletionMedium = Exercise(
        title: "Satz richtig ergänzen",
        instructions: "Wählen Sie die Form, die grammatisch richtig in die Lücke passt.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .medium,
        groupKey: "sentenceCompletionMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ich warte seit einer Stunde ___ den Bus.", options: ["auf", "an", "für"], correctAnswer: "auf", explanation: "Das Verb „warten“ verlangt die Präposition „auf“: auf etwas warten."),
            ExerciseItem(id: UUID(), prompt: "Gestern ___ wir ins Kino gegangen.", options: ["sind", "haben", "wurden"], correctAnswer: "sind", explanation: "Verben der Bewegung wie „gehen“ bilden das Perfekt mit „sein“: wir sind gegangen."),
            ExerciseItem(id: UUID(), prompt: "Sie freut sich sehr ___ das Geschenk, das sie gerade bekommen hat.", options: ["über", "auf", "vor"], correctAnswer: "über", explanation: "Bei etwas, das schon da ist, sagt man „sich freuen über“. „Sich freuen auf“ bezieht sich auf etwas Zukünftiges."),
            ExerciseItem(id: UUID(), prompt: "Das ist das Fahrrad ___ Nachbarin.", options: ["meiner", "meine", "meinen"], correctAnswer: "meiner", explanation: "Der Besitzer steht im Genitiv: das Fahrrad meiner Nachbarin. Das weibliche Wort „Nachbarin“ verlangt hier die Endung „-er“."),
            ExerciseItem(id: UUID(), prompt: "Wenn ich mehr Zeit ___, würde ich Sie gern besuchen.", options: ["hätte", "habe", "hatte"], correctAnswer: "hätte", explanation: "Ein unwirklicher Wunsch wird im Konjunktiv II ausgedrückt: „hätte“ passt zu „würde“."),
            ExerciseItem(id: UUID(), prompt: "Der Mann, ___ dort steht, ist mein Onkel.", options: ["der", "den", "dem"], correctAnswer: "der", explanation: "Das Relativpronomen ist Subjekt des Nebensatzes („der dort steht“), also Nominativ: der."),
            ExerciseItem(id: UUID(), prompt: "Ich habe den Film schon dreimal ___.", options: ["gesehen", "gesah", "gesieht"], correctAnswer: "gesehen", explanation: "Das Partizip II von „sehen“ lautet „gesehen“. Die anderen Formen gibt es nicht."),
            ExerciseItem(id: UUID(), prompt: "Sie fährt jeden Tag ___ dem Fahrrad zur Arbeit.", options: ["mit", "bei", "zu"], correctAnswer: "mit", explanation: "Das Verkehrsmittel wird mit „mit“ und Dativ angegeben: mit dem Fahrrad."),
            ExerciseItem(id: UUID(), prompt: "Das Wetter ist heute ___ als gestern.", options: ["besser", "gut", "am besten"], correctAnswer: "besser", explanation: "Bei einem Vergleich mit „als“ steht der Komparativ: besser als."),
            ExerciseItem(id: UUID(), prompt: "Wir gehen morgen ___ Arzt.", options: ["zum", "zur", "beim"], correctAnswer: "zum", explanation: "„Arzt“ ist männlich. Die Richtung heißt „zu dem“, zusammengezogen „zum“."),
            ExerciseItem(id: UUID(), prompt: "Er hat vergessen, den Schlüssel ___.", options: ["mitzunehmen", "mitnehmen", "mitgenommen"], correctAnswer: "mitzunehmen", explanation: "Nach „vergessen“ steht der Infinitiv mit „zu“. Bei trennbaren Verben wird „zu“ eingeschoben: mitzunehmen."),
            ExerciseItem(id: UUID(), prompt: "Der Zug kommt ___ 14:30 Uhr an.", options: ["um", "in", "bei"], correctAnswer: "um", explanation: "Eine genaue Uhrzeit wird mit „um“ angegeben: um 14:30 Uhr."),
            ExerciseItem(id: UUID(), prompt: "Obwohl es regnet, ___ wir spazieren.", options: ["gehen", "gehst", "gehe"], correctAnswer: "gehen", explanation: "Nach dem Nebensatz steht das Verb an erster Stelle des Hauptsatzes und passt zu „wir“: gehen wir."),
            ExerciseItem(id: UUID(), prompt: "Das Kind hat sich die Hände ___.", options: ["gewaschen", "gewaschenen", "waschte"], correctAnswer: "gewaschen", explanation: "Das Perfekt wird mit „hat“ und dem Partizip II gebildet: hat gewaschen."),
            ExerciseItem(id: UUID(), prompt: "Ich glaube, ___ er heute kommt.", options: ["dass", "das", "was"], correctAnswer: "dass", explanation: "Nach „glauben“ leitet die Konjunktion „dass“ den Nebensatz ein. „Das“ mit einem s ist ein Artikel oder Pronomen.")
        ]
    )

    private static let morphology = Exercise(
        title: "Die richtige Wortform",
        instructions: "Wählen Sie die Wortform, die richtig in die Lücke passt.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "morphology",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ein Buch, zwei ___.", options: ["Bücher", "Bucher", "Buchen"], correctAnswer: "Bücher", explanation: "Der Plural von „Buch“ wird mit Umlaut und der Endung „-er“ gebildet: Bücher."),
            ExerciseItem(id: UUID(), prompt: "Ein Apfel, drei ___.", options: ["Äpfel", "Apfeln", "Apfels"], correctAnswer: "Äpfel", explanation: "Der Plural von „Apfel“ bekommt einen Umlaut: Äpfel."),
            ExerciseItem(id: UUID(), prompt: "Ein kleines Haus nennt man ein ___.", options: ["Häuschen", "Hauschen", "Häusern"], correctAnswer: "Häuschen", explanation: "Die Verkleinerung wird mit „-chen“ gebildet, der Vokal bekommt den Umlaut: Häuschen."),
            ExerciseItem(id: UUID(), prompt: "Am Himmel sehe ich ___ Mond.", options: ["den", "die", "das"], correctAnswer: "den", explanation: "„Mond“ ist männlich. Als Akkusativobjekt heißt der Artikel „den“."),
            ExerciseItem(id: UUID(), prompt: "Wer backt, ist ein ___.", options: ["Bäcker", "Bäckin", "Backen"], correctAnswer: "Bäcker", explanation: "Die Person, die etwas tut, bezeichnet man mit der Endung „-er“, hier mit Umlaut: Bäcker."),
            ExerciseItem(id: UUID(), prompt: "Wir ___ gern Musik.", options: ["hören", "hört", "höre"], correctAnswer: "hören", explanation: "Zu „wir“ gehört die Endung „-en“: wir hören."),
            ExerciseItem(id: UUID(), prompt: "Das Glas fällt auf den Boden und ___.", options: ["zerbricht", "verbricht", "bebricht"], correctAnswer: "zerbricht", explanation: "Die Vorsilbe „zer-“ drückt aus, dass etwas in Stücke geht: zerbrechen."),
            ExerciseItem(id: UUID(), prompt: "Wer wandert, ist ein ___.", options: ["Wanderer", "Wanderung", "Wandern"], correctAnswer: "Wanderer", explanation: "Mit der Endung „-er“ bildet man die Person, die etwas tut. „Wanderung“ ist der Ausflug selbst."),
            ExerciseItem(id: UUID(), prompt: "Gestern habe ich einen Brief ___.", options: ["geschrieben", "geschreibt", "schrieb"], correctAnswer: "geschrieben", explanation: "„Schreiben“ ist ein starkes Verb. Das Partizip II lautet „geschrieben“."),
            ExerciseItem(id: UUID(), prompt: "Dieser Berg ist ___ als jener.", options: ["höher", "hoher", "höchster"], correctAnswer: "höher", explanation: "Der Komparativ von „hoch“ lautet „höher“, mit Umlaut und ohne „c“."),
            ExerciseItem(id: UUID(), prompt: "Ich trinke ein ___ Glas Wasser.", options: ["kaltes", "kalte", "kalten"], correctAnswer: "kaltes", explanation: "„Glas“ ist sächlich. Nach „ein“ trägt das Adjektiv die Endung „-es“: ein kaltes Glas."),
            ExerciseItem(id: UUID(), prompt: "Auf der Weide stehen drei ___.", options: ["Kühe", "Kuhen", "Kühen"], correctAnswer: "Kühe", explanation: "Der Plural von „Kuh“ bekommt Umlaut und „-e“: Kühe. „Kühen“ wäre Dativ Plural."),
            ExerciseItem(id: UUID(), prompt: "___ Mädchen spielt im Hof.", options: ["Das", "Die", "Der"], correctAnswer: "Das", explanation: "Wörter auf „-chen“ sind immer sächlich: das Mädchen."),
            ExerciseItem(id: UUID(), prompt: "Das Gegenteil von möglich ist ___.", options: ["unmöglich", "nichtmöglich", "abmöglich"], correctAnswer: "unmöglich", explanation: "Die Vorsilbe „un-“ verneint ein Adjektiv: möglich, unmöglich."),
            ExerciseItem(id: UUID(), prompt: "Von „schnell“ kommt das Nomen die ___.", options: ["Schnelligkeit", "Schnellung", "Schnellheit"], correctAnswer: "Schnelligkeit", explanation: "Aus „schnell“ wird mit „-ig“ und „-keit“ das Nomen „Schnelligkeit“."),
            ExerciseItem(id: UUID(), prompt: "Er ___ jeden Morgen die Zeitung.", options: ["liest", "lest", "lesst"], correctAnswer: "liest", explanation: "„Lesen“ wechselt in der dritten Person Singular den Vokal: er liest."),
            ExerciseItem(id: UUID(), prompt: "Das ist der ___ Weg zum Bahnhof.", options: ["kürzeste", "kürzer", "kurzeste"], correctAnswer: "kürzeste", explanation: "Der Superlativ von „kurz“ hat Umlaut und die Endung „-ste“: der kürzeste Weg."),
            ExerciseItem(id: UUID(), prompt: "Die Gäste ___ das Haus um 22:00 Uhr.", options: ["verlassen", "entlassen", "belassen"], correctAnswer: "verlassen", explanation: "„Verlassen“ bedeutet, einen Ort zu verlassen. „Entlassen“ sagt man bei Personen, etwa aus dem Dienst."),
            ExerciseItem(id: UUID(), prompt: "Im Park spielen drei ___.", options: ["Kinder", "Kindern", "Kinde"], correctAnswer: "Kinder", explanation: "Der Plural von „Kind“ lautet „Kinder“. „Kindern“ ist nur im Dativ Plural richtig."),
            ExerciseItem(id: UUID(), prompt: "Ein Haus, viele ___.", options: ["Häuser", "Hausen", "Häusen"], correctAnswer: "Häuser", explanation: "Der Plural von „Haus“ wird mit Umlaut und der Endung „-er“ gebildet: Häuser.")
        ]
    )

    private static let homonymsMedium = Exercise(
        title: "Gleich klingende Wörter",
        instructions: "Über den Sätzen stehen zwei Wörter, die gleich klingen, aber verschieden geschrieben werden. Wählen Sie die Antwort, die beide Wörter der Reihe nach in die beiden Lücken setzt.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .medium,
        groupKey: "homonymsMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "[Meer / mehr] Im Urlaub fahren wir ans ___. Ich möchte noch ___ Suppe.", options: ["mehr…Meer", "Meer…mehr", "Meer…Meer", "mehr…mehr"], correctAnswer: "Meer…mehr", explanation: "Das Meer ist ein großes Gewässer. „Mehr“ bedeutet eine größere Menge. Beide Wörter klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Wal / Wahl] Im Ozean lebt ein riesiger ___. Bei der ___ gibt man seine Stimme ab.", options: ["Wahl…Wal", "Wal…Wal", "Wal…Wahl", "Wahl…Wahl"], correctAnswer: "Wal…Wahl", explanation: "Der Wal ist ein Meeressäugetier, die Wahl ist eine Abstimmung oder Entscheidung. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Lied / Lid] Sie singt ein schönes ___. Er schloss das ___ seines Auges.", options: ["Lid…Lied", "Lied…Lid", "Lied…Lied", "Lid…Lid"], correctAnswer: "Lied…Lid", explanation: "Ein Lied wird gesungen, das Lid ist die Haut, die das Auge bedeckt. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Seite / Saite] Bitte schlagen Sie die nächste ___ im Buch auf. Bei der Gitarre ist eine ___ gerissen.", options: ["Seite…Seite", "Saite…Seite", "Saite…Saite", "Seite…Saite"], correctAnswer: "Seite…Saite", explanation: "Eine Seite gehört zu einem Buch, eine Saite zu einem Instrument. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Mal / Mahl] Ich war schon einmal dort, es war mein erstes ___. Das festliche ___ dauerte drei Stunden.", options: ["Mahl…Mal", "Mal…Mal", "Mahl…Mahl", "Mal…Mahl"], correctAnswer: "Mal…Mahl", explanation: "„Mal“ bezeichnet ein Vorkommnis, etwa das erste Mal. Das Mahl ist eine feierliche Mahlzeit. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Stiel / Stil] Die Rose hat einen langen ___. Das Haus ist in modernem ___ gebaut.", options: ["Stil…Stiel", "Stiel…Stiel", "Stiel…Stil", "Stil…Stil"], correctAnswer: "Stiel…Stil", explanation: "Der Stiel ist der Stängel einer Pflanze, der Stil die Art, wie etwas gestaltet ist. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Lehre / Leere] Der junge Mann beginnt eine ___ in einer Bäckerei. In der Flasche herrscht gähnende ___.", options: ["Leere…Lehre", "Lehre…Lehre", "Leere…Leere", "Lehre…Leere"], correctAnswer: "Lehre…Leere", explanation: "Die Lehre ist eine Berufsausbildung, die Leere bedeutet, dass nichts darin ist. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Rad / Rat] Das Kind fährt gern mit dem ___. Ich brauche einen guten ___.", options: ["Rat…Rad", "Rad…Rad", "Rat…Rat", "Rad…Rat"], correctAnswer: "Rad…Rat", explanation: "Das Rad ist ein Fahrzeug oder Teil davon, der Rat ist ein Tipp. Am Wortende werden beide gleich gesprochen."),
            ExerciseItem(id: UUID(), prompt: "[Ähre / Ehre] Im Sommer reift die ___ am Halm. Es ist mir eine große ___ , Sie kennenzulernen.", options: ["Ehre…Ähre", "Ähre…Ähre", "Ähre…Ehre", "Ehre…Ehre"], correctAnswer: "Ähre…Ehre", explanation: "Die Ähre ist der Fruchtstand des Getreides, die Ehre eine Auszeichnung oder Wertschätzung. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Tod / tot] Der ___ kommt früher oder später zu jedem. Die abgeschnittene Blume ist längst ___.", options: ["tot…Tod", "Tod…tot", "Tod…Tod", "tot…tot"], correctAnswer: "Tod…tot", explanation: "Der Tod ist das Ende des Lebens, „tot“ beschreibt, dass etwas nicht mehr lebt. Beide klingen gleich.")
        ]
    )

    private static let analogiesMedium = Exercise(
        title: "Wörter im Vergleich",
        instructions: "Wählen Sie das Wort, das die zweite Wortpaarung sinnvoll vervollständigt.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        groupKey: "analogiesMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "FINGER verhält sich zu HAND wie ZEHE zu ___.", options: ["Fuß", "Schuh", "Bein", "Nagel"], correctAnswer: "Fuß", explanation: "Teil und Ganzes: Der Finger gehört zur Hand, die Zehe gehört zum Fuß."),
            ExerciseItem(id: UUID(), prompt: "VOGEL verhält sich zu FLIEGEN wie FISCH zu ___.", options: ["schwimmen", "laufen", "klettern", "graben"], correctAnswer: "schwimmen", explanation: "Fortbewegung: Ein Vogel bewegt sich fliegend fort, ein Fisch schwimmend."),
            ExerciseItem(id: UUID(), prompt: "HELL verhält sich zu DUNKEL wie HEISS zu ___.", options: ["kalt", "warm", "laut", "hoch"], correctAnswer: "kalt", explanation: "Gegensatz: Hell und dunkel sind Gegenteile, ebenso heiß und kalt."),
            ExerciseItem(id: UUID(), prompt: "BÄCKER verhält sich zu BROT wie SCHREINER zu ___.", options: ["Möbel", "Kuchen", "Medizin", "Schuhe"], correctAnswer: "Möbel", explanation: "Beruf und Erzeugnis: Ein Bäcker stellt Brot her, ein Schreiner Möbel."),
            ExerciseItem(id: UUID(), prompt: "AUGE verhält sich zu SEHEN wie OHR zu ___.", options: ["hören", "riechen", "sprechen", "essen"], correctAnswer: "hören", explanation: "Organ und Funktion: Mit dem Auge sieht man, mit dem Ohr hört man."),
            ExerciseItem(id: UUID(), prompt: "ROSE verhält sich zu BLUME wie EICHE zu ___.", options: ["Baum", "Wald", "Blatt", "Holz"], correctAnswer: "Baum", explanation: "Art und Oberbegriff: Die Rose ist eine Blume, die Eiche ist ein Baum."),
            ExerciseItem(id: UUID(), prompt: "BLATT verhält sich zu BAUM wie SEITE zu ___.", options: ["Buch", "Papier", "Schrift", "Regal"], correctAnswer: "Buch", explanation: "Teil und Ganzes: Ein Blatt ist Teil eines Baumes, eine Seite ist Teil eines Buches."),
            ExerciseItem(id: UUID(), prompt: "KLEIN verhält sich zu WINZIG wie GROSS zu ___.", options: ["riesig", "mittel", "schwer", "schmal"], correctAnswer: "riesig", explanation: "Steigerung: Winzig ist besonders klein, riesig ist besonders groß."),
            ExerciseItem(id: UUID(), prompt: "HAMMER verhält sich zu NAGEL wie SCHRAUBENZIEHER zu ___.", options: ["Schraube", "Brett", "Zange", "Farbe"], correctAnswer: "Schraube", explanation: "Werkzeug und Verwendung: Mit dem Hammer bearbeitet man den Nagel, mit dem Schraubenzieher die Schraube."),
            ExerciseItem(id: UUID(), prompt: "TAG verhält sich zu NACHT wie SOMMER zu ___.", options: ["Winter", "Herbst", "Sonne", "Ferien"], correctAnswer: "Winter", explanation: "Gegensatz: Tag und Nacht sind Gegenteile, ebenso Sommer und Winter."),
            ExerciseItem(id: UUID(), prompt: "LEHRER verhält sich zu SCHULE wie ARZT zu ___.", options: ["Praxis", "Bäckerei", "Bahnhof", "Kino"], correctAnswer: "Praxis", explanation: "Beruf und Arbeitsort: Ein Lehrer arbeitet in der Schule, ein Arzt in der Praxis."),
            ExerciseItem(id: UUID(), prompt: "KÜKEN verhält sich zu HUHN wie KALB zu ___.", options: ["Kuh", "Pferd", "Schaf", "Ziege"], correctAnswer: "Kuh", explanation: "Jungtier und Muttertier: Das Küken wird zum Huhn, das Kalb zur Kuh."),
            ExerciseItem(id: UUID(), prompt: "MONAT verhält sich zu JAHR wie MINUTE zu ___.", options: ["Stunde", "Sekunde", "Uhr", "Woche"], correctAnswer: "Stunde", explanation: "Teil und Ganzes: Zwölf Monate bilden ein Jahr, sechzig Minuten eine Stunde."),
            ExerciseItem(id: UUID(), prompt: "SCHUH verhält sich zu FUSS wie HANDSCHUH zu ___.", options: ["Hand", "Arm", "Finger", "Mantel"], correctAnswer: "Hand", explanation: "Kleidung und Körperteil: Den Schuh trägt man am Fuß, den Handschuh an der Hand."),
            ExerciseItem(id: UUID(), prompt: "LAUT verhält sich zu BRÜLLEN wie LEISE zu ___.", options: ["flüstern", "rufen", "schreien", "singen"], correctAnswer: "flüstern", explanation: "Grad: Brüllen ist besonders laut sprechen, flüstern ist besonders leise sprechen.")
        ]
    )

    private static let factOrOpinion = Exercise(
        title: "Tatsache oder Meinung?",
        instructions: "Entscheiden Sie, ob die Aussage eine Tatsache oder eine Meinung ist.",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "factOrOpinion",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wasser kocht auf Meereshöhe bei 100 °C.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Das ist eine messbare Tatsache der Physik und lässt sich überprüfen."),
            ExerciseItem(id: UUID(), prompt: "Der Herbst ist die schönste Jahreszeit.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "„Schönste“ ist ein Werturteil. Andere Menschen mögen lieber den Frühling oder den Sommer."),
            ExerciseItem(id: UUID(), prompt: "Berlin ist die Hauptstadt von Deutschland.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Das ist eine feststehende Tatsache, die man nachlesen kann."),
            ExerciseItem(id: UUID(), prompt: "Schwarzbrot schmeckt besser als Weißbrot.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Geschmack ist persönlich. Der eine mag Schwarzbrot, der andere lieber Weißbrot."),
            ExerciseItem(id: UUID(), prompt: "Eine Woche hat sieben Tage.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Die Einteilung der Woche steht fest und lässt sich nachzählen."),
            ExerciseItem(id: UUID(), prompt: "Katzen sind bessere Haustiere als Hunde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Was „besser“ ist, hängt von den Vorlieben ab. Das lässt sich nicht messen."),
            ExerciseItem(id: UUID(), prompt: "Die Zugspitze ist der höchste Berg Deutschlands.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Die Höhe der Berge ist gemessen. Die Zugspitze ist mit rund 2.962 m der höchste."),
            ExerciseItem(id: UUID(), prompt: "Weihnachtsmärkte sind das Schönste am Winter.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "„Das Schönste“ ist eine persönliche Wertung."),
            ExerciseItem(id: UUID(), prompt: "Spinnen haben acht Beine.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Die Zahl der Beine lässt sich zählen und ist bei Spinnen immer gleich."),
            ExerciseItem(id: UUID(), prompt: "Wandern ist langweilig.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ob etwas langweilig ist, empfindet jeder anders."),
            ExerciseItem(id: UUID(), prompt: "Der Mond umkreist die Erde.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Das ist durch Beobachtung belegt und gilt unabhängig von Meinungen."),
            ExerciseItem(id: UUID(), prompt: "Klassische Musik ist entspannender als Rockmusik.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Wie entspannend Musik wirkt, empfinden Menschen sehr unterschiedlich."),
            ExerciseItem(id: UUID(), prompt: "Ein Jahr hat zwölf Monate.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Das lässt sich im Kalender nachzählen."),
            ExerciseItem(id: UUID(), prompt: "Der Kölner Dom ist das beeindruckendste Bauwerk Europas.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "„Beeindruckendste“ ist eine persönliche Wertung. Man kann Bauwerke nicht objektiv nach Eindruck ordnen."),
            ExerciseItem(id: UUID(), prompt: "Die Brüder Grimm sammelten Märchen.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Die Brüder Grimm gaben im 19. Jahrhundert ihre bekannte Märchensammlung heraus. Das ist belegt."),
            ExerciseItem(id: UUID(), prompt: "Montag ist der schlimmste Tag der Woche.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "„Schlimmste“ ist ein Gefühl. Manche Menschen mögen den Montag sogar."),
            ExerciseItem(id: UUID(), prompt: "Eis schmilzt bei Temperaturen über 0 °C.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Der Schmelzpunkt von Eis liegt bei 0 °C. Das ist eine Naturtatsache."),
            ExerciseItem(id: UUID(), prompt: "Eine Tasse Tee am Abend ist gemütlicher als ein Fernsehabend.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Was gemütlich ist, entscheidet der eigene Geschmack."),
            ExerciseItem(id: UUID(), prompt: "Eine Fußballmannschaft hat auf dem Spielfeld elf Spieler.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Die Regeln des Fußballs schreiben elf Spieler pro Mannschaft vor."),
            ExerciseItem(id: UUID(), prompt: "Die Alpen sind im Sommer schöner als im Winter.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "„Schöner“ ist Ansichtssache. Manche lieben die Berge im Schnee."),
            ExerciseItem(id: UUID(), prompt: "Die Elbe mündet in die Nordsee.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Die Elbe fließt durch Hamburg und mündet bei Cuxhaven in die Nordsee. Das ist geografisch belegt."),
            ExerciseItem(id: UUID(), prompt: "Bratwurst mit Senf ist das beste Mittagessen.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "„Das beste“ hängt vom Geschmack ab und ist keine Tatsache."),
            ExerciseItem(id: UUID(), prompt: "Bienen stellen Honig her.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Honigbienen sammeln Nektar und verarbeiten ihn im Bienenstock zu Honig."),
            ExerciseItem(id: UUID(), prompt: "Der Rhein fließt durch Deutschland.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Der Rhein durchquert mehrere Bundesländer, etwa Nordrhein-Westfalen. Das lässt sich auf der Karte nachprüfen."),
            ExerciseItem(id: UUID(), prompt: "Hausaufgaben sind überflüssig.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ob etwas überflüssig ist, ist ein Urteil, über das man unterschiedlich denken kann.")
        ]
    )

    private static let sequencingMedium = Exercise(
        title: "Die richtige Reihenfolge",
        instructions: "Bringen Sie die Schritte in die richtige Reihenfolge.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        groupKey: "sequencingMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Kaffee mit der Maschine kochen", options: ["Kochtaste drücken", "Kaffee in die Tasse gießen", "Wasser und Kaffeepulver einfüllen"], correctAnswer: "Wasser und Kaffeepulver einfüllen | Kochtaste drücken | Kaffee in die Tasse gießen", explanation: "Erst wird die Maschine gefüllt, dann startet man den Durchlauf mit der Kochtaste. Der fertige Kaffee kommt zuletzt in die Tasse."),
            ExerciseItem(id: UUID(), prompt: "Einen Brief verschicken", options: ["Brief in den Briefkasten werfen", "Brief schreiben", "Umschlag zukleben und Briefmarke aufkleben", "Brief in den Umschlag stecken"], correctAnswer: "Brief schreiben | Brief in den Umschlag stecken | Umschlag zukleben und Briefmarke aufkleben | Brief in den Briefkasten werfen", explanation: "Ein Brief muss zuerst geschrieben und in den Umschlag gesteckt werden. Erst danach kann man den Umschlag zukleben, frankieren und einwerfen."),
            ExerciseItem(id: UUID(), prompt: "Hände waschen", options: ["Hände abtrocknen", "Seife nehmen", "Seife unter fließendem Wasser abspülen", "Hände einseifen"], correctAnswer: "Seife nehmen | Hände einseifen | Seife unter fließendem Wasser abspülen | Hände abtrocknen", explanation: "Die Seife wird erst aufgetragen und danach abgespült. Zum Schluss trocknet man die sauberen Hände ab."),
            ExerciseItem(id: UUID(), prompt: "Ein Spiegelei braten", options: ["Ei in die Pfanne schlagen", "Ei braten, bis das Eiweiß fest ist", "Ei auf den Teller legen", "Pfanne auf den Herd stellen und die Platte einschalten", "Warten, bis die Pfanne heiß ist"], correctAnswer: "Pfanne auf den Herd stellen und die Platte einschalten | Warten, bis die Pfanne heiß ist | Ei in die Pfanne schlagen | Ei braten, bis das Eiweiß fest ist | Ei auf den Teller legen", explanation: "Erst muss die Pfanne heiß werden, dann kommt das Ei hinein. Zum Schluss wird es gebraten und serviert."),
            ExerciseItem(id: UUID(), prompt: "Eine Blume einpflanzen", options: ["Die Blume gießen", "Erde um die Wurzeln andrücken", "Ein Loch in die Erde graben", "Die Blume hineinsetzen"], correctAnswer: "Ein Loch in die Erde graben | Die Blume hineinsetzen | Erde um die Wurzeln andrücken | Die Blume gießen", explanation: "Zuerst braucht die Pflanze ein Pflanzloch. Dann wird sie eingesetzt, festgedrückt und zum Schluss gegossen."),
            ExerciseItem(id: UUID(), prompt: "Im Supermarkt einkaufen", options: ["An der Kasse bezahlen", "Waren in den Wagen legen", "Einkäufe nach Hause tragen", "Einkaufswagen holen"], correctAnswer: "Einkaufswagen holen | Waren in den Wagen legen | An der Kasse bezahlen | Einkäufe nach Hause tragen", explanation: "Zuerst holt man den Wagen und sammelt die Waren ein. Bezahlt wird an der Kasse, und erst danach trägt man die Einkäufe nach Hause."),
            ExerciseItem(id: UUID(), prompt: "Ein Bild an die Wand hängen", options: ["Haken einschrauben", "Loch bohren", "Bild aufhängen", "Dübel hineinstecken", "Stelle an der Wand markieren"], correctAnswer: "Stelle an der Wand markieren | Loch bohren | Dübel hineinstecken | Haken einschrauben | Bild aufhängen", explanation: "Man markiert zuerst die Stelle und bohrt. Der Dübel hält den Haken, und erst am Schluss hängt man das Bild auf."),
            ExerciseItem(id: UUID(), prompt: "Zähne putzen", options: ["Mund ausspülen", "Zähne putzen", "Zahnbürste nehmen", "Zahnpasta auf die Bürste geben"], correctAnswer: "Zahnbürste nehmen | Zahnpasta auf die Bürste geben | Zähne putzen | Mund ausspülen", explanation: "Die Bürste wird zuerst vorbereitet. Nach dem Putzen spült man den Mund aus.")
        ]
    )

    private static let minimalPairs = Exercise(
        title: "Ähnliche Wörter unterscheiden",
        instructions: "Wählen Sie das Wort, das zur Beschreibung passt.",
        section: .language,
        type: .minimalPairs,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "minimalPairs",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Stück Erde im Garten, in dem Blumen oder Gemüse wachsen?", options: ["BETT", "BEET", "BOOT", "GEHT"], correctAnswer: "BEET", explanation: "Beet mit langem „ee“ ist das Gartenbeet. Das Bett mit kurzem „e“ und Doppel-t dient zum Schlafen, das Boot fährt auf dem Wasser, und „geht“ ist eine Verbform."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Land mit eigener Regierung?", options: ["STADT", "STAAT", "STAB", "STAR"], correctAnswer: "STAAT", explanation: "Staat mit langem „aa“ ist ein Land als politische Einheit. Die Stadt hat ein kurzes „a“ und ist ein Ort mit vielen Häusern. Stab und Star unterscheiden sich nur im letzten Laut."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet das Geld, das man monatlich für eine Wohnung zahlt?", options: ["MIETE", "MITTE", "MIENE", "BIETE"], correctAnswer: "MIETE", explanation: "Miete hat ein langes „ie“. Mitte hat ein kurzes „i“ mit Doppel-t und bedeutet den mittleren Punkt. Miene und biete unterscheiden sich nur in einem Laut."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort beschreibt etwas, das hübsch und angenehm anzusehen ist?", options: ["SCHON", "SCHÖN", "SOHN", "SCHIEN"], correctAnswer: "SCHÖN", explanation: "Schön mit Umlaut bedeutet hübsch. „Schon“ ohne Umlaut ist ein Adverb wie in „Es ist schon spät“. Der Sohn ist ein männliches Kind, und „schien“ ist die Vergangenheit von „scheinen“."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet die dunkle Zeit, in der man meist schläft?", options: ["NACHT", "MACHT", "LACHT", "WACHT"], correctAnswer: "NACHT", explanation: "Nacht ist die Zeit der Dunkelheit. „Macht“ bedeutet Einfluss, „lacht“ ist eine Verbform."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Tier, das bellt?", options: ["HUND", "MUND", "BUND", "RUND"], correctAnswer: "HUND", explanation: "Der Hund bellt. Der Mund gehört zum Gesicht, „rund“ beschreibt eine Form."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bedeutet, dass etwas nicht trocken ist?", options: ["NASS", "FASS", "HASS", "PASS"], correctAnswer: "NASS", explanation: "Nass bedeutet voller Wasser. Ein Fass ist ein Behälter, Hass ist ein Gefühl und ein Pass ein Ausweis."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein junges Schaf?", options: ["LAMM", "LAHM", "KAMM", "DAMM"], correctAnswer: "LAMM", explanation: "Lamm mit Doppel-m und kurzem „a“ ist das Schafjunge. Lahm mit langem „a“ heißt, dass man ein Bein nicht gut bewegen kann."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Gefäß, aus dem man Kaffee oder Tee trinkt?", options: ["TASSE", "KASSE", "MASSE", "GASSE"], correctAnswer: "TASSE", explanation: "Die Tasse ist das Trinkgefäß. Nur der erste Laut unterscheidet sie von Kasse, Masse und Gasse."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Möbelstück zum Sitzen mit vier Beinen und einer Lehne?", options: ["STUHL", "STIEL", "STILL", "STIL"], correctAnswer: "STUHL", explanation: "Stuhl hat ein langes „u“. Der Stiel gehört zu einer Pflanze, „still“ heißt ruhig, und der Stil ist eine Gestaltungsart."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Getränk, das aus Hopfen und Malz gebraut wird?", options: ["BIER", "TIER", "VIER", "HIER"], correctAnswer: "BIER", explanation: "Bier ist das Getränk. Tier, vier und hier unterscheiden sich nur im ersten Laut."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Foto oder Gemälde, das an der Wand hängt?", options: ["MILD", "BILD", "WILD", "GILT"], correctAnswer: "BILD", explanation: "Das Bild hängt an der Wand. Mild heißt sanft, wild heißt ungezähmt, und „gilt“ ist eine Form von „gelten“. Sie unterscheiden sich nur im ersten Laut."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet den Teil des Gesichts, mit dem man riecht?", options: ["NASE", "VASE", "BASE", "HASE"], correctAnswer: "NASE", explanation: "Die Nase ist das Riechorgan. Vase, Base und Hase unterscheiden sich nur im Anfangslaut."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet Münzen und Scheine, mit denen man bezahlt?", options: ["GELD", "FELD", "HELD", "GELB"], correctAnswer: "GELD", explanation: "Mit Geld bezahlt man. Ein Feld ist eine Fläche, ein Held ist eine mutige Person, Gelb ist eine Farbe."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet eine Pflanze mit Stamm, Ästen und Krone?", options: ["RAUM", "BAUM", "SAUM", "KAUM"], correctAnswer: "BAUM", explanation: "Der Baum ist eine Pflanze. Der Raum ist ein Zimmer, der Saum ein Stoffrand, und „kaum“ heißt fast nicht."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Gefäß mit Deckel, in dem man Suppe kocht?", options: ["KOPF", "TOPF", "ZOPF", "TORF"], correctAnswer: "TOPF", explanation: "Im Topf wird gekocht. Der Kopf gehört zum Körper, der Zopf ist eine Frisur, und der Torf ist ein Brennstoff aus dem Moor."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet viele Bäume, die zusammen wachsen?", options: ["WALD", "WALL", "WAND", "BALD"], correctAnswer: "WALD", explanation: "Viele Bäume bilden einen Wald. Ein Wall ist ein Erdhügel, die Wand gehört zum Zimmer, „bald“ bedeutet in Kürze."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein kleines graues Nagetier, das gern Käse frisst?", options: ["MAUS", "HAUS", "LAUS", "RAUS"], correctAnswer: "MAUS", explanation: "Die Maus ist ein Nagetier. Ein Haus ist ein Gebäude, die Laus ein Insekt, „raus“ heißt nach draußen."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet ein Tier, das im Wasser lebt und Kiemen hat?", options: ["FISCH", "TISCH", "WISCH", "MISCH"], correctAnswer: "FISCH", explanation: "Der Fisch atmet mit Kiemen. Der Tisch ist ein Möbelstück, „wisch“ und „misch“ sind Aufforderungen."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort bezeichnet das Körperteil mit fünf Fingern?", options: ["HAND", "WAND", "LAND", "SAND"], correctAnswer: "HAND", explanation: "Die Hand hat fünf Finger. Wand, Land und Sand unterscheiden sich nur im Anfangslaut.")
        ]
    )
}
