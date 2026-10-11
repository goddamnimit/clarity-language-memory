import Foundation

/// German: tiered hard/easy/medium exercises for the adaptive-tracked types. Native-authored; review status in LanguageReviewStatus.
struct GermanHardExercisesData {

    static let allExercises: [Exercise] = [
        homonymsHard,
        analogiesHard,
        wordAssociationHard,
        sentenceCompletionHard,
        sequencingHard,
        causeAndEffectHard,
        whatsWrongHereHard,
        completeTheSayingHard,
        homonymsEasy,
        analogiesEasy,
        causeAndEffectEasy,
        whatsWrongHereEasy,
        sequencingEasy,
        wordAssociationMedium,
        homonymsMediumExtra,
        completeTheSayingEasy,
        completeTheSayingHard2
    ]

    private static let homonymsHard = Exercise(
        title: "Gleich klingende Wörter",
        instructions: "Über den Sätzen stehen zwei Wörter, die gleich klingen, aber verschieden geschrieben werden. Wählen Sie die Antwort, die beide Wörter der Reihe nach in die beiden Lücken setzt.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .hard,
        groupKey: "homonymsHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "[Lärche / Lerche] Im Garten steht eine hohe ___, die im Herbst ihre Nadeln verliert. Über dem Feld singt eine ___.", options: ["Lerche…Lärche", "Lärche…Lerche", "Lärche…Lärche", "Lerche…Lerche"], correctAnswer: "Lärche…Lerche", explanation: "Die Lärche ist ein Nadelbaum, der im Herbst die Nadeln abwirft; die Lerche ist ein Singvogel. Beide Wörter klingen gleich, werden aber verschieden geschrieben."),
            ExerciseItem(id: UUID(), prompt: "[Wende / Wände] Die ___ im Flur sind frisch gestrichen. Das Schiff machte eine scharfe ___.", options: ["Wende…Wände", "Wände…Wende", "Wände…Wände", "Wende…Wende"], correctAnswer: "Wände…Wende", explanation: "Die Wände sind die Mauern eines Zimmers, die Wende ist eine Drehung oder Kehrtwendung. Beide Wörter klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Leib / Laib] Der menschliche ___ besteht aus Rumpf, Armen und Beinen. Der Bäcker legt einen frischen ___ Brot ins Regal.", options: ["Laib…Leib", "Leib…Laib", "Leib…Leib", "Laib…Laib"], correctAnswer: "Leib…Laib", explanation: "Der Leib ist der Körper, der Laib ist die Form eines Brotes oder Käses. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Ware / wahre] Die Händlerin legt neue ___ ins Regal. Das ist die ___ Geschichte.", options: ["wahre…Ware", "Ware…wahre", "Ware…Ware", "wahre…wahre"], correctAnswer: "Ware…wahre", explanation: "Die Ware ist das, was verkauft wird, „wahre“ ist eine Form des Adjektivs „wahr“. Gleicher Klang, andere Schreibung."),
            ExerciseItem(id: UUID(), prompt: "[Waise / weise] Das Kind war eine ___, seine Eltern waren früh gestorben. Der alte Mann gab stets ___ Ratschläge.", options: ["weise…Waise", "Waise…weise", "Waise…Waise", "weise…weise"], correctAnswer: "Waise…weise", explanation: "Eine Waise ist ein Kind ohne Eltern, „weise“ bedeutet klug und erfahren. Gleich ausgesprochen, aber groß und klein geschrieben."),
            ExerciseItem(id: UUID(), prompt: "[Blüte / blühte] Der Kirschbaum trägt eine rosa ___. Im letzten Frühjahr ___ der Garten besonders schön.", options: ["blühte…Blüte", "Blüte…blühte", "Blüte…Blüte", "blühte…blühte"], correctAnswer: "Blüte…blühte", explanation: "Die Blüte ist der Teil der Pflanze, aus dem die Frucht entsteht, „blühte“ ist die Vergangenheit von „blühen“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Verse / Ferse] Das Gedicht besteht aus vier ___. Beim Wandern scheuerte der Schuh an der ___.", options: ["Ferse…Verse", "Verse…Ferse", "Verse…Verse", "Ferse…Ferse"], correctAnswer: "Verse…Ferse", explanation: "Verse sind die Zeilen eines Gedichts, die Ferse ist der hintere Teil des Fußes. Beide Wörter klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Lachs / lax] Der ___ schwimmt flussaufwärts zum Laichplatz. Die Kontrolle am Eingang war sehr ___.", options: ["lax…Lachs", "Lachs…lax", "Lachs…Lachs", "lax…lax"], correctAnswer: "Lachs…lax", explanation: "Der Lachs ist ein Fisch, „lax“ bedeutet locker oder nachlässig. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Mine / Miene] Der Bleistift hat eine neue ___. Sie machte eine freundliche ___.", options: ["Miene…Mine", "Mine…Miene", "Mine…Mine", "Miene…Miene"], correctAnswer: "Mine…Miene", explanation: "Die Mine ist die Schreibspitze im Stift, die Miene ist der Gesichtsausdruck. Gleicher Klang."),
            ExerciseItem(id: UUID(), prompt: "[Sole / Sohle] Im Heilbad badete er in warmer ___. Der Wanderschuh hat eine feste ___.", options: ["Sohle…Sole", "Sole…Sohle", "Sole…Sole", "Sohle…Sohle"], correctAnswer: "Sole…Sohle", explanation: "Die Sole ist salzhaltiges Wasser, die Sohle ist die Unterseite des Schuhs oder Fußes. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Fälle / Felle] Der Richter bearbeitet viele ___. Die Jäger gerbten die ___ der Tiere.", options: ["Felle…Fälle", "Fälle…Felle", "Fälle…Fälle", "Felle…Felle"], correctAnswer: "Fälle…Felle", explanation: "Fälle ist die Mehrzahl von „der Fall“, Felle die Mehrzahl von „das Fell“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Leute / läute] Viele ___ warten an der Haltestelle. Am Morgen ___ ich die kleine Glocke vor dem Haus.", options: ["läute…Leute", "Leute…läute", "Leute…Leute", "läute…läute"], correctAnswer: "Leute…läute", explanation: "Leute sind mehrere Menschen, „läute“ ist die Form von „läuten“ für „ich“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Häute / heute] Die Schlangen streifen im Sommer ihre ___ ab. Ich glaube, dass ___ die Sonne scheint.", options: ["heute…Häute", "Häute…heute", "Häute…Häute", "heute…heute"], correctAnswer: "Häute…heute", explanation: "Häute ist die Mehrzahl von „die Haut“, „heute“ bedeutet an diesem Tag. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Ställe / Stelle] Im Dorf gibt es mehrere ___ für Pferde und Kühe. Der Mann sucht eine neue ___ als Gärtner.", options: ["Stelle…Ställe", "Ställe…Stelle", "Ställe…Ställe", "Stelle…Stelle"], correctAnswer: "Ställe…Stelle", explanation: "Ställe sind die Gebäude für Tiere, eine Stelle ist ein Arbeitsplatz. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Rechen / rächen] Der Gärtner harkt das Laub mit dem ___. Der Held will das Unrecht ___.", options: ["rächen…Rechen", "Rechen…rächen", "Rechen…Rechen", "rächen…rächen"], correctAnswer: "Rechen…rächen", explanation: "Der Rechen ist ein Gartengerät mit Zinken, „rächen“ bedeutet, ein Unrecht zu vergelten. Beide klingen gleich.")
        ]
    )

    private static let analogiesHard = Exercise(
        title: "Beziehungen erkennen",
        instructions: "Wählen Sie das Wort, das die zweite Wortpaarung in dieselbe Beziehung setzt wie die erste.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .hard,
        groupKey: "analogiesHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Hammer : Nagel = Schere : ?", options: ["Papier", "Schraube", "Mauer", "Glas"], correctAnswer: "Papier", explanation: "Ein Hammer dient dazu, einen Nagel zu bearbeiten, eine Schere dazu, Papier zu schneiden. Schrauben, Mauern und Glas schneidet man damit nicht."),
            ExerciseItem(id: UUID(), prompt: "Thermometer : Temperatur = Waage : ?", options: ["Gewicht", "Länge", "Zeit", "Lautstärke"], correctAnswer: "Gewicht", explanation: "Ein Thermometer misst die Temperatur, eine Waage misst das Gewicht."),
            ExerciseItem(id: UUID(), prompt: "Bibliothek : Bücher = Museum : ?", options: ["Kunstwerke", "Medikamente", "Fahrkarten", "Lebensmittel"], correctAnswer: "Kunstwerke", explanation: "In einer Bibliothek werden Bücher gesammelt und ausgeliehen, in einem Museum werden Kunstwerke und andere Ausstellungsstücke gesammelt und gezeigt."),
            ExerciseItem(id: UUID(), prompt: "kalt : eisig = müde : ?", options: ["erschöpft", "munter", "hungrig", "ruhig"], correctAnswer: "erschöpft", explanation: "„Eisig“ ist eine Steigerung von „kalt“, „erschöpft“ ist die Steigerung von „müde“."),
            ExerciseItem(id: UUID(), prompt: "Taube : Frieden = Herz : ?", options: ["Liebe", "Hass", "Mut", "Angst"], correctAnswer: "Liebe", explanation: "Die Taube ist ein Sinnbild für den Frieden, das Herz ist ein Sinnbild für die Liebe."),
            ExerciseItem(id: UUID(), prompt: "Feuer : Asche = Regen : ?", options: ["Pfütze", "Durst", "Staub", "Glut"], correctAnswer: "Pfütze", explanation: "Aus Feuer entsteht Asche, aus Regen entsteht eine Pfütze. Die Beziehung ist Ursache und Wirkung."),
            ExerciseItem(id: UUID(), prompt: "Messer : schneiden = Pinsel : ?", options: ["malen", "backen", "wiegen", "nähen"], correctAnswer: "malen", explanation: "Ein Messer dient zum Schneiden, ein Pinsel dient zum Malen."),
            ExerciseItem(id: UUID(), prompt: "Brille : Sehen = Hörgerät : ?", options: ["Hören", "Riechen", "Schmecken", "Laufen"], correctAnswer: "Hören", explanation: "Eine Brille unterstützt das Sehen, ein Hörgerät unterstützt das Hören."),
            ExerciseItem(id: UUID(), prompt: "Streit : Versöhnung = Krieg : ?", options: ["Frieden", "Soldat", "Waffe", "Grenze"], correctAnswer: "Frieden", explanation: "Auf einen Streit folgt als Gegenstück die Versöhnung, dem Krieg steht der Frieden gegenüber."),
            ExerciseItem(id: UUID(), prompt: "Dirigent : Orchester = Kapitän : ?", options: ["Schiff", "Hafen", "Meer", "Anker"], correctAnswer: "Schiff", explanation: "Der Dirigent leitet ein Orchester, der Kapitän leitet ein Schiff."),
            ExerciseItem(id: UUID(), prompt: "Sonne : Tag = Mond : ?", options: ["Nacht", "Stern", "Sommer", "Wolke"], correctAnswer: "Nacht", explanation: "Die Sonne gehört zum Tag, der Mond gehört zur Nacht."),
            ExerciseItem(id: UUID(), prompt: "Gedicht : Dichter = Gemälde : ?", options: ["Maler", "Rahmen", "Museum", "Farbe"], correctAnswer: "Maler", explanation: "Ein Gedicht wird von einem Dichter geschaffen, ein Gemälde von einem Maler."),
            ExerciseItem(id: UUID(), prompt: "Zeuge : Aussage = Richter : ?", options: ["Urteil", "Anklage", "Verteidigung", "Tatort"], correctAnswer: "Urteil", explanation: "Der Zeuge macht eine Aussage, der Richter fällt ein Urteil. Beides ist die jeweilige Leistung der Person im Gerichtsverfahren."),
            ExerciseItem(id: UUID(), prompt: "Flosse : Fisch = Flügel : ?", options: ["Vogel", "Nest", "Luft", "Ei"], correctAnswer: "Vogel", explanation: "Die Flosse ist ein Körperteil des Fisches, der Flügel ist ein Körperteil des Vogels."),
            ExerciseItem(id: UUID(), prompt: "Lexikon : Wissen = Fahrplan : ?", options: ["Abfahrtszeiten", "Wetter", "Preise im Supermarkt", "Straßennamen"], correctAnswer: "Abfahrtszeiten", explanation: "Ein Lexikon enthält Wissen, ein Fahrplan enthält die Abfahrtszeiten von Bus und Bahn.")
        ]
    )

    private static let wordAssociationHard = Exercise(
        title: "Wortverwandtschaften",
        instructions: "Wählen Sie das Wort, das inhaltlich am besten zum Ausgangswort passt.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .hard,
        groupKey: "wordAssociationHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Zuversicht“?", options: ["Hoffnung", "Angst", "Ärger", "Langeweile"], correctAnswer: "Hoffnung", explanation: "Zuversicht bedeutet, dass man auf einen guten Ausgang vertraut. Das ist Hoffnung."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „sparsam“?", options: ["genügsam", "verschwenderisch", "laut", "hungrig"], correctAnswer: "genügsam", explanation: "Wer sparsam lebt, kommt mit wenig aus, ist also genügsam. „Verschwenderisch“ ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Eintracht“?", options: ["Harmonie", "Streit", "Eile", "Zufall"], correctAnswer: "Harmonie", explanation: "Eintracht heißt, dass Menschen einig sind und gut miteinander auskommen, also Harmonie."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Vergänglichkeit“?", options: ["Endlichkeit", "Reichtum", "Ordnung", "Geschwindigkeit"], correctAnswer: "Endlichkeit", explanation: "Vergänglichkeit meint, dass alles irgendwann endet. Das ist Endlichkeit."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „hartnäckig“?", options: ["beharrlich", "nachgiebig", "höflich", "ängstlich"], correctAnswer: "beharrlich", explanation: "Wer hartnäckig ist, gibt nicht auf. Beharrlich bedeutet fast dasselbe, „nachgiebig“ das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Ehrgeiz“?", options: ["Streben", "Gleichgültigkeit", "Bescheidenheit", "Müdigkeit"], correctAnswer: "Streben", explanation: "Ehrgeiz ist der starke Wunsch, etwas zu erreichen, also ein Streben nach Erfolg."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Barmherzigkeit“?", options: ["Mitgefühl", "Strenge", "Neid", "Stolz"], correctAnswer: "Mitgefühl", explanation: "Barmherzigkeit bedeutet, mit Not leidenden Menschen Mitgefühl zu haben und ihnen zu helfen."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Misstrauen“?", options: ["Argwohn", "Vertrauen", "Freude", "Neugier"], correctAnswer: "Argwohn", explanation: "Misstrauen heißt, dass man jemandem nicht glaubt, dasselbe meint Argwohn."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Schlichtung“?", options: ["Vermittlung", "Bestrafung", "Verbot", "Werbung"], correctAnswer: "Vermittlung", explanation: "Bei einer Schlichtung vermittelt eine dritte Person zwischen Streitenden."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „flüchtig“?", options: ["vorübergehend", "dauerhaft", "schwer", "bunt"], correctAnswer: "vorübergehend", explanation: "Flüchtig ist etwas, das nicht lange bleibt, also vorübergehend. „Dauerhaft“ ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Gelassenheit“?", options: ["innere Ruhe", "Nervosität", "Wut", "Eile"], correctAnswer: "innere Ruhe", explanation: "Wer gelassen ist, bleibt auch bei Problemen ruhig. Gelassenheit bedeutet also innere Ruhe."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Beweis“?", options: ["Nachweis", "Vermutung", "Gerücht", "Wunsch"], correctAnswer: "Nachweis", explanation: "Ein Beweis zeigt, dass etwas tatsächlich stimmt. Das ist ein Nachweis. Eine Vermutung ist gerade nicht bewiesen."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Überfluss“?", options: ["Fülle", "Mangel", "Ordnung", "Stille"], correctAnswer: "Fülle", explanation: "Überfluss bedeutet, dass mehr als genug da ist, also Fülle. „Mangel“ ist das Gegenteil."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Verzicht“?", options: ["Enthaltsamkeit", "Genuss", "Erwerb", "Wiederholung"], correctAnswer: "Enthaltsamkeit", explanation: "Wer verzichtet, tut etwas bewusst nicht. Enthaltsamkeit meint genau das."),
            ExerciseItem(id: UUID(), prompt: "Welches Wort passt am besten zu „Neugier“?", options: ["Wissbegier", "Langeweile", "Furcht", "Stolz"], correctAnswer: "Wissbegier", explanation: "Neugierige Menschen möchten Neues erfahren, das heißt auch Wissbegier.")
        ]
    )

    private static let sentenceCompletionHard = Exercise(
        title: "Sätze vervollständigen",
        instructions: "Wählen Sie das Wort, das den Satz richtig ergänzt.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .hard,
        groupKey: "sentenceCompletionHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wenn ich ein Vogel ___, würde ich über die Alpen fliegen.", options: ["wäre", "bin", "war"], correctAnswer: "wäre", explanation: "Ein unerfüllbarer Wunsch steht im Konjunktiv II, und „würde“ im Hauptsatz verlangt „wäre“ im Nebensatz."),
            ExerciseItem(id: UUID(), prompt: "Er tat so, als ___ er nichts gehört.", options: ["hätte", "hat", "hatten"], correctAnswer: "hätte", explanation: "Nach „als ob“ und „als“ in einem Vergleich, der nicht stimmt, steht der Konjunktiv II: „hätte“."),
            ExerciseItem(id: UUID(), prompt: "___ des schlechten Wetters fand das Fest statt.", options: ["Trotz", "Weil", "Damit"], correctAnswer: "Trotz", explanation: "Das Fest fand statt, obwohl das Wetter schlecht war. Das drückt „trotz“ mit Genitiv aus."),
            ExerciseItem(id: UUID(), prompt: "Sie schloss das Fenster, ___ es nicht mehr zog.", options: ["damit", "obwohl", "weil"], correctAnswer: "damit", explanation: "Das Schließen hat einen Zweck, nämlich keinen Durchzug. Dafür steht „damit“."),
            ExerciseItem(id: UUID(), prompt: "Das Ergebnis hängt davon ___, wie gründlich man sich vorbereitet.", options: ["ab", "an", "auf"], correctAnswer: "ab", explanation: "Das Verb heißt „abhängen von“. Mit „an“ oder „auf“ ergibt der Satz keinen Sinn."),
            ExerciseItem(id: UUID(), prompt: "Hätte ich das gewusst, ___ ich anders entschieden.", options: ["hätte", "hatte", "wäre"], correctAnswer: "hätte", explanation: "Der irreale Bedingungssatz verlangt den Konjunktiv II von „haben“: „hätte ich entschieden“."),
            ExerciseItem(id: UUID(), prompt: "Er bestand ___ seinem Recht.", options: ["auf", "an", "zu"], correctAnswer: "auf", explanation: "„Auf etwas bestehen“ ist die feste Verbindung und heißt, etwas hartnäckig zu verlangen."),
            ExerciseItem(id: UUID(), prompt: "Der Zeuge sagte, er ___ den Mann nie gesehen.", options: ["habe", "haben", "hast"], correctAnswer: "habe", explanation: "In der indirekten Rede steht der Konjunktiv I. Zur dritten Person Singular gehört „er habe“."),
            ExerciseItem(id: UUID(), prompt: "Wir müssen alle Vor- und Nachteile gegeneinander ___.", options: ["abwägen", "abwiegen", "abmessen"], correctAnswer: "abwägen", explanation: "Gründe und Möglichkeiten „wägt“ man ab, also prüft man sorgfältig. „Abwiegen“ meint dagegen, Waren mit der Waage zu messen."),
            ExerciseItem(id: UUID(), prompt: "Sie hat ihm eine klare Absage ___.", options: ["erteilt", "gemacht", "gestellt"], correctAnswer: "erteilt", explanation: "Die feste Wendung lautet „eine Absage erteilen“. Mit „machen“ oder „stellen“ sagt man das nicht."),
            ExerciseItem(id: UUID(), prompt: "Je mehr man übt, ___ besser wird man.", options: ["desto", "sondern", "sowie"], correctAnswer: "desto", explanation: "„Je …, desto …“ bildet die Steigerung zweier Dinge, die zusammenhängen."),
            ExerciseItem(id: UUID(), prompt: "Er wurde des Betrugs ___.", options: ["angeklagt", "angeschaut", "angelegt"], correctAnswer: "angeklagt", explanation: "Wer einer Straftat beschuldigt wird, wird „angeklagt“. Der Genitiv „des Betrugs“ gehört zu diesem Verb."),
            ExerciseItem(id: UUID(), prompt: "Ich bin mit meiner Geduld am ___.", options: ["Ende", "Rand", "Schluss"], correctAnswer: "Ende", explanation: "Die feste Wendung heißt „am Ende sein“. Sie sagt, dass die Geduld aufgebraucht ist."),
            ExerciseItem(id: UUID(), prompt: "Nachdem sie das Haus ___ hatte, zog sie in die Stadt.", options: ["verkauft", "verkaufte", "verkaufen"], correctAnswer: "verkauft", explanation: "Im Plusquamperfekt steht „hatte“ plus Partizip II: „verkauft hatte“."),
            ExerciseItem(id: UUID(), prompt: "Er hat die Prüfung bestanden, ___ er kaum gelernt hatte.", options: ["obwohl", "weil", "damit"], correctAnswer: "obwohl", explanation: "Es besteht ein Widerspruch: Wenig Lernen führt normalerweise nicht zum Erfolg. Das zeigt „obwohl“.")
        ]
    )

    private static let sequencingHard = Exercise(
        title: "Abläufe ordnen",
        instructions: "Bringen Sie die Schritte in die richtige Reihenfolge.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .hard,
        groupKey: "sequencingHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Brot backen", options: ["Brot goldbraun backen", "Zutaten abwiegen", "Brot auskühlen lassen", "Teig in eine Form legen und zugedeckt gehen lassen", "Mehl, Wasser und Hefe zu Teig kneten", "Form in den heißen Ofen schieben"], correctAnswer: "Zutaten abwiegen | Mehl, Wasser und Hefe zu Teig kneten | Teig in eine Form legen und zugedeckt gehen lassen | Form in den heißen Ofen schieben | Brot goldbraun backen | Brot auskühlen lassen", explanation: "Zuerst braucht man die Zutaten, daraus entsteht der Teig. Er muss in der Form aufgehen, bevor er in den Ofen kommt. Zum Schluss wird gebacken und abgekühlt."),
            ExerciseItem(id: UUID(), prompt: "Eine Pflanze umtopfen", options: ["Pflanze in den neuen Topf setzen", "Gründlich gießen", "Alte Erde von den Wurzeln abschütteln", "Mit Erde auffüllen und festdrücken", "Pflanze vorsichtig aus dem alten Topf ziehen", "Überschüssiges Wasser aus dem Untersetzer entfernen"], correctAnswer: "Pflanze vorsichtig aus dem alten Topf ziehen | Alte Erde von den Wurzeln abschütteln | Pflanze in den neuen Topf setzen | Mit Erde auffüllen und festdrücken | Gründlich gießen | Überschüssiges Wasser aus dem Untersetzer entfernen", explanation: "Die Pflanze wird zuerst aus dem alten Topf gelöst und in den neuen gesetzt. Danach wird Erde aufgefüllt und gegossen, und zum Schluss entfernt man überschüssiges Wasser."),
            ExerciseItem(id: UUID(), prompt: "Wäsche waschen", options: ["Wäsche aufhängen", "Programm wählen und starten", "Wäsche sortieren", "Tür der Maschine schließen", "Wäsche herausnehmen", "Wäsche in die Trommel legen"], correctAnswer: "Wäsche sortieren | Wäsche in die Trommel legen | Tür der Maschine schließen | Programm wählen und starten | Wäsche herausnehmen | Wäsche aufhängen", explanation: "Die Wäsche wird sortiert und eingelegt. Erst bei geschlossener Tür kann das Programm starten, und danach wird die Wäsche herausgenommen und aufgehängt."),
            ExerciseItem(id: UUID(), prompt: "Kartoffeln kochen", options: ["Wasser abgießen", "Kartoffeln schälen", "In Stücke schneiden", "Kartoffeln aufkochen", "Garen lassen", "In einen Topf mit Salzwasser legen"], correctAnswer: "Kartoffeln schälen | In Stücke schneiden | In einen Topf mit Salzwasser legen | Kartoffeln aufkochen | Garen lassen | Wasser abgießen", explanation: "Erst werden die Kartoffeln geschält und zerkleinert. Dann kommen sie ins Wasser und werden gekocht, und erst am Ende gießt man das Wasser ab."),
            ExerciseItem(id: UUID(), prompt: "Eine Fahrkarte am Automaten kaufen", options: ["Geld einwerfen", "Auf „Fahrkarte kaufen“ tippen und das Fahrtziel eingeben", "Fahrkarte entnehmen", "Zum Automaten gehen", "Preis kontrollieren"], correctAnswer: "Zum Automaten gehen | Auf „Fahrkarte kaufen“ tippen und das Fahrtziel eingeben | Preis kontrollieren | Geld einwerfen | Fahrkarte entnehmen", explanation: "Man geht zum Automaten, wählt Fahrkarte und Ziel, prüft den Preis und bezahlt. Erst danach wird die Fahrkarte ausgegeben."),
            ExerciseItem(id: UUID(), prompt: "Einen Arzttermin wahrnehmen", options: ["Im Wartezimmer Platz nehmen", "Zur Praxis gehen", "Termin vereinbaren", "Praxis anrufen", "Beim Aufruf ins Sprechzimmer gehen", "Gesundheitskarte am Empfang abgeben"], correctAnswer: "Praxis anrufen | Termin vereinbaren | Zur Praxis gehen | Gesundheitskarte am Empfang abgeben | Im Wartezimmer Platz nehmen | Beim Aufruf ins Sprechzimmer gehen", explanation: "Erst wird der Termin telefonisch ausgemacht. In der Praxis meldet man sich am Empfang an, wartet und wird dann aufgerufen."),
            ExerciseItem(id: UUID(), prompt: "Ein Rezept in der Apotheke einlösen", options: ["Bezahlen", "Zur Apotheke gehen", "Medikament mitnehmen", "Rezept in der Arztpraxis ausstellen lassen", "Auf das Medikament warten", "Rezept und Gesundheitskarte vorlegen"], correctAnswer: "Rezept in der Arztpraxis ausstellen lassen | Zur Apotheke gehen | Rezept und Gesundheitskarte vorlegen | Auf das Medikament warten | Bezahlen | Medikament mitnehmen", explanation: "Ohne ausgestelltes Rezept gibt es nichts einzulösen. In der Apotheke legt man es vor, bekommt das Medikament und bezahlt erst dann."),
            ExerciseItem(id: UUID(), prompt: "Einen Fahrradschlauch flicken", options: ["Flicken fest aufdrücken", "Loch suchen", "Schlauch wieder einsetzen", "Reifen aufpumpen", "Stelle aufrauen", "Kleber auftragen und kurz ablüften", "Reifen von der Felge lösen", "Schlauch herausnehmen"], correctAnswer: "Reifen von der Felge lösen | Schlauch herausnehmen | Loch suchen | Stelle aufrauen | Kleber auftragen und kurz ablüften | Flicken fest aufdrücken | Schlauch wieder einsetzen | Reifen aufpumpen", explanation: "Der Schlauch muss erst frei liegen, bevor man das Loch finden kann. Dann wird die Stelle vorbereitet und geklebt, und erst danach wird alles wieder eingebaut und aufgepumpt."),
            ExerciseItem(id: UUID(), prompt: "Einen Rührkuchen backen", options: ["Mehl mit Backpulver unterheben", "Kuchen backen", "Eier nacheinander unterrühren", "Teig in eine gefettete Form füllen", "Kuchen aus der Form stürzen", "Butter und Zucker cremig rühren", "Kuchen in der Form kurz abkühlen lassen"], correctAnswer: "Butter und Zucker cremig rühren | Eier nacheinander unterrühren | Mehl mit Backpulver unterheben | Teig in eine gefettete Form füllen | Kuchen backen | Kuchen in der Form kurz abkühlen lassen | Kuchen aus der Form stürzen", explanation: "Beim Rührteig kommt zuerst das Fett mit dem Zucker, dann die Eier und zuletzt das Mehl. Gebacken wird in der Form, und gestürzt wird der Kuchen erst nach kurzem Abkühlen."),
            ExerciseItem(id: UUID(), prompt: "Ein Zimmer streichen", options: ["Alles vollständig trocknen lassen", "Kanten abkleben", "Klebeband abziehen und Möbel zurückstellen", "Wand streichen", "Zweiten Anstrich auftragen"], correctAnswer: "Kanten abkleben | Wand streichen | Zweiten Anstrich auftragen | Alles vollständig trocknen lassen | Klebeband abziehen und Möbel zurückstellen", explanation: "Zuerst werden die Kanten abgeklebt, dann wird gestrichen, zweimal. Erst wenn alles trocken ist, zieht man das Klebeband ab und stellt die Möbel zurück."),
            ExerciseItem(id: UUID(), prompt: "Eine Bahnreise machen", options: ["Am Ziel aussteigen", "Platz suchen", "In den Zug einsteigen", "Zum Bahnhof gehen", "Zum Gleis gehen", "Gleis auf der Anzeigetafel suchen"], correctAnswer: "Zum Bahnhof gehen | Gleis auf der Anzeigetafel suchen | Zum Gleis gehen | In den Zug einsteigen | Platz suchen | Am Ziel aussteigen", explanation: "Am Bahnhof sucht man zuerst das Gleis und geht dorthin. Nach dem Einsteigen sucht man den Platz, und am Ziel steigt man aus."),
            ExerciseItem(id: UUID(), prompt: "Ein Buch in der Bibliothek ausleihen", options: ["Buch im Regal finden", "Buch lesen", "Zur Bibliothek gehen", "Buch an der Theke ausleihen", "Buch zurückbringen", "Buch im Katalog suchen"], correctAnswer: "Zur Bibliothek gehen | Buch im Katalog suchen | Buch im Regal finden | Buch an der Theke ausleihen | Buch lesen | Buch zurückbringen", explanation: "In der Bibliothek sucht man das Buch erst im Katalog, dann im Regal. Ausgeliehen wird es an der Theke, gelesen und zum Schluss zurückgebracht."),
            ExerciseItem(id: UUID(), prompt: "Ein Ei hart kochen", options: ["Ei schälen", "Ei kalt abschrecken", "Wasser abgießen", "Wasser im Topf zum Kochen bringen", "Ei etwa zehn Minuten kochen lassen", "Ei vorsichtig in das Wasser legen"], correctAnswer: "Wasser im Topf zum Kochen bringen | Ei vorsichtig in das Wasser legen | Ei etwa zehn Minuten kochen lassen | Wasser abgießen | Ei kalt abschrecken | Ei schälen", explanation: "Das Ei kommt ins kochende Wasser und gart dort etwa zehn Minuten. Danach gießt man das Wasser ab, schreckt das Ei kalt ab und schält es erst dann."),
            ExerciseItem(id: UUID(), prompt: "Blumen aus Samen ziehen", options: ["Keimlinge vereinzeln", "Samen ausstreuen", "Setzlinge ins Beet pflanzen", "Vorsichtig gießen", "Erde in eine Schale füllen", "Samen mit dünner Erdschicht bedecken"], correctAnswer: "Erde in eine Schale füllen | Samen ausstreuen | Samen mit dünner Erdschicht bedecken | Vorsichtig gießen | Keimlinge vereinzeln | Setzlinge ins Beet pflanzen", explanation: "Erst wird gesät und bedeckt, dann gegossen. Vereinzelt wird erst, wenn die Keimlinge da sind, und ausgepflanzt, wenn sie kräftig sind."),
            ExerciseItem(id: UUID(), prompt: "Die Haare waschen", options: ["Haare mit dem Handtuch trocknen", "Shampoo in die Hand geben und in den Haaren einmassieren", "Trockene Haare kämmen", "Haare nass machen", "Schaum gründlich ausspülen"], correctAnswer: "Haare nass machen | Shampoo in die Hand geben und in den Haaren einmassieren | Schaum gründlich ausspülen | Haare mit dem Handtuch trocknen | Trockene Haare kämmen", explanation: "Die Haare werden zuerst nass gemacht, dann mit Shampoo eingeschäumt und wieder ausgespült. Abgetrocknet und gekämmt wird erst, wenn das Shampoo ganz heraus ist.")
        ]
    )

    private static let causeAndEffectHard = Exercise(
        title: "Ursache und Folgen",
        instructions: "Wählen Sie die Folge, die am wahrscheinlichsten eintritt.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .hard,
        groupKey: "causeAndEffectHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ein langer, trockener Sommer lässt viel Getreide auf den Feldern verdorren. Was folgt im Herbst am ehesten?", options: ["Mehl und Brot werden knapper und teurer", "Brot wird billiger", "Die Flüsse führen mehr Wasser", "Es wird mehr Getreide exportiert"], correctAnswer: "Mehl und Brot werden knapper und teurer", explanation: "Weniger Ernte bedeutet weniger Mehl, und was knapp ist, wird meist teurer."),
            ExerciseItem(id: UUID(), prompt: "In einer Stadt fällt der Strom einen ganzen Tag lang aus. Welche Folge ergibt sich indirekt?", options: ["Tiefkühlkost taut auf und verdirbt", "Die Straßen werden breiter", "Die Läden bekommen mehr Kunden", "Das Wasser wird wärmer"], correctAnswer: "Tiefkühlkost taut auf und verdirbt", explanation: "Ohne Strom arbeiten Kühl- und Gefriergeräte nicht, die Ware wird warm und kann verderben."),
            ExerciseItem(id: UUID(), prompt: "Eine wichtige Bahnstrecke wird wochenlang gesperrt. Was passiert wahrscheinlich auf den Straßen?", options: ["Es gibt mehr Autoverkehr und längere Staus", "Es gibt weniger Autos", "Die Straßen werden schmaler", "Alle Menschen bleiben zu Hause"], correctAnswer: "Es gibt mehr Autoverkehr und längere Staus", explanation: "Wer nicht mit dem Zug fahren kann, steigt häufig auf das Auto um. Dadurch werden die Straßen voller."),
            ExerciseItem(id: UUID(), prompt: "An einem steilen Hang werden fast alle Bäume gefällt. Was kann nach starkem Regen geschehen?", options: ["Erde rutscht den Hang hinab", "Der Hang wird trockener", "Neue Quellen entstehen sofort", "Die Luft wird kälter"], correctAnswer: "Erde rutscht den Hang hinab", explanation: "Baumwurzeln halten den Boden fest. Ohne sie kann der durchnässte Boden ins Rutschen kommen."),
            ExerciseItem(id: UUID(), prompt: "Ein Dorf verliert seinen letzten Lebensmittelladen. Was ist auf Dauer am wahrscheinlichsten?", options: ["Ältere Menschen ohne Auto haben es schwerer, und manche ziehen weg", "Das Dorf wächst schnell", "Es gibt mehr Läden", "Alle werden jünger"], correctAnswer: "Ältere Menschen ohne Auto haben es schwerer, und manche ziehen weg", explanation: "Ohne Laden im Ort müssen Einkäufe weit weg erledigt werden. Das trifft besonders Menschen, die nicht mobil sind."),
            ExerciseItem(id: UUID(), prompt: "Ein Fluss wird begradigt und mit Deichen eingefasst. Was geschieht bei starkem Regen weiter flussabwärts?", options: ["Das Wasser kommt schneller an, und das Hochwasser steigt stärker", "Der Fluss führt weniger Wasser", "Das Wasser fließt langsamer", "Das Hochwasser bleibt aus"], correctAnswer: "Das Wasser kommt schneller an, und das Hochwasser steigt stärker", explanation: "Ein gerader Lauf ohne Überschwemmungsflächen lässt das Wasser rasch abfließen. Weiter unten treffen die Wassermengen dann gebündelt ein."),
            ExerciseItem(id: UUID(), prompt: "Ein Land verkauft viel weniger Autos ins Ausland. Welche Kette von Folgen ist plausibel?", options: ["Die Fabriken produzieren weniger, und Zulieferer bekommen weniger Aufträge", "Die Zulieferer stellen mehr Menschen ein", "Die Benzinpreise sinken überall", "Die Straßen werden leerer"], correctAnswer: "Die Fabriken produzieren weniger, und Zulieferer bekommen weniger Aufträge", explanation: "Weniger Verkäufe verringern die Produktion. Wer Teile liefert, spürt das ebenfalls durch weniger Bestellungen."),
            ExerciseItem(id: UUID(), prompt: "Ein Winter bringt kaum Frost. Was ist im Frühjahr am ehesten zu erwarten?", options: ["Mehr Schädlinge überleben und befallen die Pflanzen", "Es gibt weniger Insekten", "Die Pflanzen blühen nie", "Der Boden wird hart"], correctAnswer: "Mehr Schädlinge überleben und befallen die Pflanzen", explanation: "Strenger Frost tötet viele Schädlinge ab. Fehlt er, überleben mehr von ihnen und schaden im Frühjahr den Pflanzen."),
            ExerciseItem(id: UUID(), prompt: "Die Zinsen für Kredite steigen deutlich. Was folgt am ehesten für den Hausbau?", options: ["Weniger Menschen können sich ein Haus leisten, und es wird weniger gebaut", "Es wird mehr gebaut", "Häuser werden sofort billiger", "Die Baustoffe werden kostenlos"], correctAnswer: "Weniger Menschen können sich ein Haus leisten, und es wird weniger gebaut", explanation: "Höhere Zinsen machen Kredite teurer. Weniger Menschen können sie bezahlen, daher sinkt die Nachfrage nach Neubauten."),
            ExerciseItem(id: UUID(), prompt: "Eine Schule streicht über Jahre den Sportunterricht. Welche Folge ist mittelfristig am wahrscheinlichsten?", options: ["Die Kinder bewegen sich weniger, und ihre Kondition lässt nach", "Die Kinder werden schneller", "Die Noten in Musik verbessern sich zwangsläufig", "Die Schule braucht weniger Lehrer für Sprachen"], correctAnswer: "Die Kinder bewegen sich weniger, und ihre Kondition lässt nach", explanation: "Ohne regelmäßige Bewegung im Unterricht fehlt Training, und die Ausdauer sinkt."),
            ExerciseItem(id: UUID(), prompt: "Borkenkäfer befallen einen Fichtenwald, und viele Bäume sterben ab. Was folgt?", options: ["Der Boden verliert Schatten und trocknet stärker aus", "Der Wald wird dichter", "Es regnet automatisch mehr", "Die Fichten wachsen schneller nach"], correctAnswer: "Der Boden verliert Schatten und trocknet stärker aus", explanation: "Ohne Kronendach erreicht mehr Sonne den Boden. Er erwärmt sich und verliert schneller Feuchtigkeit."),
            ExerciseItem(id: UUID(), prompt: "In einer Kleinstadt schließt der größte Betrieb. Was folgt Schritt für Schritt am ehesten?", options: ["Menschen verlieren Arbeit, geben weniger Geld aus, und Geschäfte leiden", "Die Geschäfte machen mehr Umsatz", "Es ziehen mehr Menschen zu", "Die Zahl der Arbeitsplätze nimmt zu"], correctAnswer: "Menschen verlieren Arbeit, geben weniger Geld aus, und Geschäfte leiden", explanation: "Ohne Arbeitsplätze fehlt Einkommen, und Läden und Gaststätten vor Ort verdienen weniger."),
            ExerciseItem(id: UUID(), prompt: "In einem Bad ohne Fenster wird jahrelang nicht gelüftet. Was ist die wahrscheinlichste Folge?", options: ["An den Wänden bildet sich Schimmel", "Die Fliesen werden heller", "Die Luft wird trockener", "Die Rohre frieren ein"], correctAnswer: "An den Wänden bildet sich Schimmel", explanation: "Feuchte Luft kann nicht entweichen und schlägt sich an den Wänden nieder. Das begünstigt Schimmel."),
            ExerciseItem(id: UUID(), prompt: "Immer weniger Bienen bestäuben im Frühling die Obstblüten. Was folgt im Sommer?", options: ["Es gibt weniger Äpfel und Kirschen", "Es gibt mehr Früchte", "Die Bäume tragen Blätter statt Früchte", "Das Obst schmeckt süßer"], correctAnswer: "Es gibt weniger Äpfel und Kirschen", explanation: "Aus nicht bestäubten Blüten entstehen keine Früchte. Die Ernte fällt also kleiner aus."),
            ExerciseItem(id: UUID(), prompt: "In den Alpen fällt im Winter sehr viel Schnee, und im Frühling kommt plötzlich warmes Wetter. Was ist für Flüsse wie den Rhein zu erwarten?", options: ["Hochwasser durch das schnelle Tauen", "Die Flüsse trocknen aus", "Das Wasser friert sofort ein", "Der Wasserstand bleibt unverändert"], correctAnswer: "Hochwasser durch das schnelle Tauen", explanation: "Schmilzt viel Schnee auf einmal, fließen große Wassermengen in die Flüsse, deren Pegel stark steigt.")
        ]
    )

    private static let whatsWrongHereHard = Exercise(
        title: "Was stimmt hier nicht?",
        instructions: "Lesen Sie die Aussage und wählen Sie den Fehler.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .hard,
        groupKey: "whatsWrongHereHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Anna sagt: „Es ist früher Abend, und die Sonne geht gerade im Osten unter.“ Was stimmt nicht?", options: ["Die Sonne geht im Westen unter", "Abends ist es immer dunkel", "Die Sonne geht nie unter", "Anna darf das nicht sagen"], correctAnswer: "Die Sonne geht im Westen unter", explanation: "Die Sonne geht im Osten auf und im Westen unter."),
            ExerciseItem(id: UUID(), prompt: "Frau Klein will Nudeln kochen. Sie stellt den Topf mit Wasser auf die Herdplatte, schaltet die Platte aus und wartet, bis das Wasser sprudelt. Was stimmt nicht?", options: ["Ohne eingeschaltete Herdplatte wird das Wasser nicht heiß", "Nudeln kocht man nicht in Wasser", "Der Topf ist zu groß", "Wasser sprudelt nie"], correctAnswer: "Ohne eingeschaltete Herdplatte wird das Wasser nicht heiß", explanation: "Wasser kocht nur, wenn man es erhitzt. Mit ausgeschalteter Platte kommt keine Wärme an den Topf."),
            ExerciseItem(id: UUID(), prompt: "Eine Verkäuferin sagt: „Das Hemd kostet 40 €. Mit 25 % Rabatt zahlen Sie nur 25 €.“ Was stimmt nicht?", options: ["Mit 25 % Rabatt kostet es 30 €", "Rabatt gibt es nie bei Hemden", "40 € ist ein zu hoher Preis", "25 % von 40 € sind 25 €"], correctAnswer: "Mit 25 % Rabatt kostet es 30 €", explanation: "25 % von 40 € sind 10 €, und 40 € minus 10 € ergibt 30 €."),
            ExerciseItem(id: UUID(), prompt: "Tim hat gestern seinen zwölften Geburtstag gefeiert. Er sagt: „Nächsten Monat bin ich schon vierzehn.“ Was stimmt nicht?", options: ["In einem Monat kann man nicht zwei Jahre älter werden", "Zwölfjährige feiern keinen Geburtstag", "Vierzehn ist keine Zahl", "Geburtstage gibt es nur im Sommer"], correctAnswer: "In einem Monat kann man nicht zwei Jahre älter werden", explanation: "Wer gestern zwölf wurde, wird erst in einem Jahr dreizehn und in zwei Jahren vierzehn."),
            ExerciseItem(id: UUID(), prompt: "Lukas erzählt: „Ich fuhr von Hamburg nach München, die ganze Zeit Richtung Norden.“ Was stimmt nicht?", options: ["München liegt südlich von Hamburg", "Hamburg liegt nicht in Deutschland", "Man kann nicht von Hamburg nach München fahren", "Norden gibt es nicht auf der Landkarte"], correctAnswer: "München liegt südlich von Hamburg", explanation: "Hamburg liegt im Norden Deutschlands, München im Süden. Die Fahrt geht also Richtung Süden."),
            ExerciseItem(id: UUID(), prompt: "Eine Wanderin sagt: „Je höher wir steigen, desto wärmer wird es. Darum lasse ich die Jacke zu Hause.“ Was stimmt nicht?", options: ["In der Höhe wird es kälter", "Wandern ist im Gebirge verboten", "Jacken sind nur für den Regen", "Je höher man steigt, desto mehr regnet es immer"], correctAnswer: "In der Höhe wird es kälter", explanation: "Mit zunehmender Höhe sinkt die Lufttemperatur, deshalb nimmt man im Gebirge eine Jacke mit."),
            ExerciseItem(id: UUID(), prompt: "Herr Lang sagt: „Ich war noch nie in Frankreich, aber letztes Jahr habe ich in Paris den Eiffelturm besichtigt.“ Was stimmt nicht?", options: ["Paris liegt in Frankreich, die beiden Sätze widersprechen sich", "Der Eiffelturm steht in Italien", "Man kann Türme nicht besichtigen", "Letztes Jahr gibt es nicht"], correctAnswer: "Paris liegt in Frankreich, die beiden Sätze widersprechen sich", explanation: "Wer in Paris war, war in Frankreich. Die beiden Aussagen können nicht zugleich stimmen."),
            ExerciseItem(id: UUID(), prompt: "Ein Hobbybäcker sagt: „Ich gebe die Hefe in kochendes Wasser, damit sie besonders gut aufgeht.“ Was stimmt nicht?", options: ["Zu große Hitze tötet die Hefe ab", "Hefe braucht kein Wasser", "Kochendes Wasser ist zu kalt", "Hefe geht nur im Kühlschrank auf"], correctAnswer: "Zu große Hitze tötet die Hefe ab", explanation: "Hefe ist ein lebender Pilz. Bei sehr hohen Temperaturen stirbt sie ab und lässt den Teig nicht mehr aufgehen."),
            ExerciseItem(id: UUID(), prompt: "Frau Berg sagt: „Ich kaufe drei Äpfel zu je 2 € und zahle dafür 8 €.“ Was stimmt nicht?", options: ["Drei Äpfel zu je 2 € kosten 6 €, nicht 8 €", "Äpfel kosten nie 2 €", "Man kann nicht mit Euro bezahlen", "Drei Äpfel sind zu wenig zum Kaufen"], correctAnswer: "Drei Äpfel zu je 2 € kosten 6 €, nicht 8 €", explanation: "Drei Äpfel zu je 2 € ergeben 3 · 2 € = 6 €. Der genannte Betrag von 8 € ist also falsch."),
            ExerciseItem(id: UUID(), prompt: "Ein Gärtner sagt: „Pflanzen brauchen Licht. Darum stelle ich meine Setzlinge in einen dunklen Keller, damit sie schneller wachsen.“ Was stimmt nicht?", options: ["Ohne Licht wachsen Pflanzen schlecht", "Setzlinge brauchen keine Erde", "Keller sind immer zu warm", "Pflanzen wachsen nur im Winter"], correctAnswer: "Ohne Licht wachsen Pflanzen schlecht", explanation: "Pflanzen brauchen Licht für die Fotosynthese. Im dunklen Keller werden sie schwach und wachsen nicht gesund."),
            ExerciseItem(id: UUID(), prompt: "Jemand sagt: „Alle Katzen sind Tiere. Mia ist ein Tier. Also ist Mia eine Katze.“ Was stimmt nicht?", options: ["Mia könnte auch ein anderes Tier sein, der Schluss ist nicht zwingend", "Katzen sind keine Tiere", "Mia ist bestimmt ein Mensch", "Der erste Satz ist verboten"], correctAnswer: "Mia könnte auch ein anderes Tier sein, der Schluss ist nicht zwingend", explanation: "Dass alle Katzen Tiere sind, heißt nicht, dass jedes Tier eine Katze ist. Mia kann auch ein Hund sein."),
            ExerciseItem(id: UUID(), prompt: "Der Bus fährt um 14:30 Uhr ab, die Fahrt dauert 45 Minuten. Herr Braun sagt: „Dann bin ich um 14:15 Uhr da.“ Was stimmt nicht?", options: ["Er kommt erst um 15:15 Uhr an", "Der Bus fährt gar nicht", "45 Minuten sind zu kurz für einen Bus", "14:15 Uhr gibt es nicht"], correctAnswer: "Er kommt erst um 15:15 Uhr an", explanation: "14:30 Uhr plus 45 Minuten ergibt 15:15 Uhr. 14:15 Uhr liegt sogar vor der Abfahrt."),
            ExerciseItem(id: UUID(), prompt: "Frau Adler erklärt: „Der Rhein entspringt in der Nordsee und fließt von dort bis in die Schweizer Alpen.“ Was stimmt nicht?", options: ["Der Rhein entspringt in den Alpen und mündet in die Nordsee", "Der Rhein fließt nicht durch Deutschland", "Die Nordsee liegt in den Alpen", "Flüsse haben keine Quelle"], correctAnswer: "Der Rhein entspringt in den Alpen und mündet in die Nordsee", explanation: "Flüsse fließen von der Quelle im Gebirge bergab zum Meer. Beim Rhein ist die Nordsee das Ziel, nicht der Anfang."),
            ExerciseItem(id: UUID(), prompt: "Anna sucht im Supermarkt Milch, Joghurt und Käse. Sie geht zur Abteilung „Backwaren“. Was stimmt nicht?", options: ["Diese Produkte gibt es bei den Molkereiprodukten", "Milch ist ein Backwaren-Produkt", "Käse wird nur in der Drogerie verkauft", "Joghurt gehört zur Tiefkühlkost"], correctAnswer: "Diese Produkte gibt es bei den Molkereiprodukten", explanation: "Milch, Joghurt und Käse gehören zu den Molkereiprodukten, bei den Backwaren liegen Brot und Brötchen."),
            ExerciseItem(id: UUID(), prompt: "Frau Maier sagt: „Ich habe nur einen Bruder und keine Schwester. Meine Schwester hat auch einen Bruder.“ Was stimmt nicht?", options: ["Sie sagt, sie habe keine Schwester, und spricht dann von ihrer Schwester", "Frauen können keine Brüder haben", "Geschwister gibt es nur zu zweit", "Ein Bruder ist immer älter"], correctAnswer: "Sie sagt, sie habe keine Schwester, und spricht dann von ihrer Schwester", explanation: "Wenn Frau Maier keine Schwester hat, kann sie nicht von „meiner Schwester“ sprechen. Die Aussagen widersprechen sich.")
        ]
    )

    private static let completeTheSayingHard = Exercise(
        title: "Sprichwörter vervollständigen",
        instructions: "Wählen Sie das Wort oder die Wörter, die das Sprichwort richtig beenden.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        groupKey: "completeTheSayingHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Eine Schwalbe macht noch keinen ___.", options: ["Sommer", "Winter", "Regen", "Frieden"], correctAnswer: "Sommer", explanation: "Ein einzelnes Anzeichen beweist noch nichts: Eine einzige Schwalbe bedeutet nicht, dass der Sommer da ist."),
            ExerciseItem(id: UUID(), prompt: "Der Krug geht so lange zum Brunnen, bis er ___.", options: ["bricht", "leer ist", "voll wird", "rostet"], correctAnswer: "bricht", explanation: "Das Sprichwort sagt: Was man immer wieder tut, geht irgendwann schief."),
            ExerciseItem(id: UUID(), prompt: "Wer im Glashaus sitzt, soll nicht mit ___ werfen.", options: ["Steinen", "Blumen", "Schneebällen", "Tellern"], correctAnswer: "Steinen", explanation: "Wer selbst Fehler hat, sollte andere nicht angreifen. Sonst fällt es auf ihn zurück, wie bei einem Glashaus."),
            ExerciseItem(id: UUID(), prompt: "Neue Besen kehren ___.", options: ["gut", "schlecht", "leise", "lange"], correctAnswer: "gut", explanation: "Wer neu ist, arbeitet am Anfang besonders eifrig, so wie ein neuer Besen gründlich kehrt."),
            ExerciseItem(id: UUID(), prompt: "Ein blindes Huhn findet auch mal ein ___.", options: ["Korn", "Ei", "Nest", "Würmchen"], correctAnswer: "Korn", explanation: "Auch jemand, der sich ungeschickt anstellt, hat gelegentlich Glück."),
            ExerciseItem(id: UUID(), prompt: "Gut Ding will ___ haben.", options: ["Weile", "Eile", "Geld", "Glück"], correctAnswer: "Weile", explanation: "Gute Dinge brauchen Zeit. „Weile“ bedeutet hier eine längere Zeitspanne."),
            ExerciseItem(id: UUID(), prompt: "Man soll das Eisen schmieden, solange es ___ ist.", options: ["heiß", "hart", "kalt", "schwer"], correctAnswer: "heiß", explanation: "Heißes Eisen lässt sich formen. Das Sprichwort rät, eine günstige Gelegenheit sofort zu nutzen."),
            ExerciseItem(id: UUID(), prompt: "Die Ausnahme bestätigt die ___.", options: ["Regel", "Wahrheit", "Ordnung", "Lösung"], correctAnswer: "Regel", explanation: "Eine einzelne Ausnahme zeigt, dass es sonst eine gültige Regel gibt."),
            ExerciseItem(id: UUID(), prompt: "Schuster, bleib bei deinen ___.", options: ["Leisten", "Schuhen", "Stiefeln", "Kunden"], correctAnswer: "Leisten", explanation: "Man soll bei dem bleiben, wovon man etwas versteht. Der Leisten ist die Form, auf der der Schuster Schuhe baut."),
            ExerciseItem(id: UUID(), prompt: "Hunde, die bellen, ___ nicht.", options: ["beißen", "laufen", "schlafen", "fressen"], correctAnswer: "beißen", explanation: "Wer laut droht, handelt oft nicht. Es ist also meistens ungefährlich."),
            ExerciseItem(id: UUID(), prompt: "Wer zuletzt lacht, lacht am ___.", options: ["besten", "meisten", "leisesten", "lautesten"], correctAnswer: "besten", explanation: "Wer am Ende erfolgreich ist, hat den größten Grund zur Freude."),
            ExerciseItem(id: UUID(), prompt: "Wo gehobelt wird, fallen ___.", options: ["Späne", "Steine", "Blätter", "Tränen"], correctAnswer: "Späne", explanation: "Bei der Arbeit entstehen zwangsläufig Abfälle. Gemeint ist: Wer arbeitet, macht auch Fehler."),
            ExerciseItem(id: UUID(), prompt: "Einem geschenkten Gaul schaut man nicht ins ___.", options: ["Maul", "Auge", "Ohr", "Fell"], correctAnswer: "Maul", explanation: "Am Gebiss erkennt man das Alter eines Pferdes. Ein Geschenk soll man nicht kritisch prüfen."),
            ExerciseItem(id: UUID(), prompt: "Wer den Pfennig nicht ehrt, ist des ___ nicht wert.", options: ["Talers", "Euros", "Silbers", "Goldes"], correctAnswer: "Talers", explanation: "Der Taler war eine größere Münze. Wer kleine Beträge nicht achtet, verdient große nicht."),
            ExerciseItem(id: UUID(), prompt: "Jeder ist seines Glückes ___.", options: ["Schmied", "Meister", "Besitzer", "Wächter"], correctAnswer: "Schmied", explanation: "Wie ein Schmied sein Eisen formt, kann jeder sein Leben selbst gestalten.")
        ]
    )

    private static let homonymsEasy = Exercise(
        title: "Gleich klingende Wörter",
        instructions: "Über den Sätzen stehen zwei Wörter, die gleich klingen, aber verschieden geschrieben werden. Wählen Sie die Antwort, die beide Wörter der Reihe nach in die beiden Lücken setzt.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .easy,
        groupKey: "homonymsEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "[wahr / war] Die Geschichte klingt seltsam, aber sie ist ___. Gestern ___ ich beim Arzt.", options: ["war…wahr", "wahr…war", "wahr…wahr", "war…war"], correctAnswer: "wahr…war", explanation: "„Wahr“ bedeutet richtig und echt, „war“ ist die Vergangenheit von „sein“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Wirt / wird] Der ___ bringt uns die Speisekarte. Morgen ___ es sicher regnen.", options: ["wird…Wirt", "Wirt…wird", "Wirt…Wirt", "wird…wird"], correctAnswer: "Wirt…wird", explanation: "Der Wirt führt ein Gasthaus, „wird“ ist eine Form von „werden“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Feld / fällt] Im Herbst ___ das Laub von den Bäumen. Der Bauer pflügt das ___.", options: ["Feld…fällt", "fällt…Feld", "fällt…fällt", "Feld…Feld"], correctAnswer: "fällt…Feld", explanation: "„Fällt“ ist eine Form von „fallen“, das Feld ist eine Ackerfläche. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Stadt / statt] Wir wohnen in einer großen ___. Wir essen heute Reis ___ Kartoffeln.", options: ["statt…Stadt", "Stadt…statt", "Stadt…Stadt", "statt…statt"], correctAnswer: "Stadt…statt", explanation: "Die Stadt ist ein großer Ort, „statt“ heißt „anstelle von“. Gleicher Klang."),
            ExerciseItem(id: UUID(), prompt: "[wider / wieder] Das geschah ___ meinen Willen. Morgen rufe ich Sie ___ an.", options: ["wieder…wider", "wider…wieder", "wider…wider", "wieder…wieder"], correctAnswer: "wider…wieder", explanation: "„Wider“ bedeutet „gegen“, „wieder“ bedeutet „noch einmal“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[dass / Das] Ich weiß, ___ Sie müde sind. ___ Buch liegt auf dem Tisch.", options: ["Das…dass", "dass…Das", "dass…dass", "Das…Das"], correctAnswer: "dass…Das", explanation: "„Dass“ leitet einen Nebensatz ein, „das“ ist hier der Artikel vor „Buch“. Gleicher Klang."),
            ExerciseItem(id: UUID(), prompt: "[seit / seid] Ich wohne ___ drei Jahren hier. Ihr ___ herzlich willkommen.", options: ["seid…seit", "seit…seid", "seit…seit", "seid…seid"], correctAnswer: "seit…seid", explanation: "„Seit“ gibt einen Zeitpunkt an, „seid“ ist die Form von „sein“ für „ihr“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[malen / mahlen] Die Kinder wollen ein Bild ___. Die Mühle soll das Korn ___.", options: ["mahlen…malen", "malen…mahlen", "malen…malen", "mahlen…mahlen"], correctAnswer: "malen…mahlen", explanation: "Mit Farben malt man, Getreide wird gemahlen. Beide Verben klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Rhein / rein] Der ___ fließt durch viele Städte. Die Luft auf dem Berg ist ganz ___.", options: ["rein…Rhein", "Rhein…rein", "Rhein…Rhein", "rein…rein"], correctAnswer: "Rhein…rein", explanation: "Der Rhein ist ein Fluss, „rein“ bedeutet sauber. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Bund / bunt] Ein ___ Radieschen kostet einen Euro. Der Schmetterling hat ___ gefärbte Flügel.", options: ["bunt…Bund", "Bund…bunt", "Bund…Bund", "bunt…bunt"], correctAnswer: "Bund…bunt", explanation: "Ein Bund ist ein zusammengebundenes Bündel, „bunt“ heißt mehrfarbig. Am Wortende klingen sie gleich."),
            ExerciseItem(id: UUID(), prompt: "[Rind / rinnt] Auf der Weide grast ein ___. Das Wasser ___ den Hang hinab.", options: ["rinnt…Rind", "Rind…rinnt", "Rind…Rind", "rinnt…rinnt"], correctAnswer: "Rind…rinnt", explanation: "Das Rind ist ein Haustier, „rinnt“ ist eine Form von „rinnen“, also fließen. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[Wehr / wer] Ich möchte wissen, ___ gerade angerufen hat. Am Fluss steht ein altes ___.", options: ["Wehr…wer", "wer…Wehr", "wer…wer", "Wehr…Wehr"], correctAnswer: "wer…Wehr", explanation: "Das Wehr ist eine Anlage, die einen Fluss staut, „wer“ ist ein Fragewort. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[fiel / viel] Der Apfel ___ vom Baum. Wir haben noch ___ Zeit.", options: ["viel…fiel", "fiel…viel", "fiel…fiel", "viel…viel"], correctAnswer: "fiel…viel", explanation: "„Fiel“ ist die Vergangenheit von „fallen“, „viel“ bedeutet eine große Menge. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[sehen / Seen] Wir wollen den Sonnenuntergang ___. In Bayern gibt es viele ___.", options: ["Seen…sehen", "sehen…Seen", "sehen…sehen", "Seen…Seen"], correctAnswer: "sehen…Seen", explanation: "„Sehen“ ist ein Verb, „Seen“ ist die Mehrzahl von „der See“. Beide klingen gleich."),
            ExerciseItem(id: UUID(), prompt: "[hohl / Hol] Der alte Baumstamm ist ___. ___ bitte Brot vom Bäcker!", options: ["Hol…hohl", "hohl…Hol", "hohl…hohl", "Hol…Hol"], correctAnswer: "hohl…Hol", explanation: "„Hohl“ bedeutet innen leer, „hol“ ist der Befehl zum Holen. Beide klingen gleich.")
        ]
    )

    private static let analogiesEasy = Exercise(
        title: "Analogien",
        instructions: "Wählen Sie das Wort, das die Beziehung vervollständigt.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .easy,
        groupKey: "analogiesEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Welpe verhält sich zu Hund wie Kätzchen zu …?", options: ["Katze", "Maus", "Vogel", "Pferd"], correctAnswer: "Katze", explanation: "Ein Welpe ist ein junger Hund, ein Kätzchen ist eine junge Katze."),
            ExerciseItem(id: UUID(), prompt: "Hund verhält sich zu bellen wie Katze zu …?", options: ["miauen", "muhen", "wiehern", "quaken"], correctAnswer: "miauen", explanation: "Der Hund gibt bellend Laut, die Katze miauend."),
            ExerciseItem(id: UUID(), prompt: "Reifen verhält sich zu Auto wie Segel zu …?", options: ["Schiff", "Wind", "Meer", "Hafen"], correctAnswer: "Schiff", explanation: "Der Reifen ist ein Teil des Autos, das Segel ist ein Teil des Schiffes."),
            ExerciseItem(id: UUID(), prompt: "Seite verhält sich zu Buch wie Zimmer zu …?", options: ["Haus", "Tür", "Möbel", "Garten"], correctAnswer: "Haus", explanation: "Eine Seite ist ein Teil des Buches, ein Zimmer ein Teil des Hauses."),
            ExerciseItem(id: UUID(), prompt: "Nacht verhält sich zu dunkel wie Tag zu …?", options: ["hell", "kalt", "leise", "nass"], correctAnswer: "hell", explanation: "In der Nacht ist es dunkel, am Tag ist es hell."),
            ExerciseItem(id: UUID(), prompt: "Besen verhält sich zu kehren wie Schere zu …?", options: ["schneiden", "kleben", "malen", "wiegen"], correctAnswer: "schneiden", explanation: "Mit einem Besen kehrt man, mit einer Schere schneidet man."),
            ExerciseItem(id: UUID(), prompt: "Schaf verhält sich zu Wolle wie Kuh zu …?", options: ["Milch", "Gras", "Stall", "Weide"], correctAnswer: "Milch", explanation: "Das Schaf liefert Wolle, die Kuh liefert Milch."),
            ExerciseItem(id: UUID(), prompt: "Fahrer verhält sich zu Auto wie Pilot zu …?", options: ["Flugzeug", "Zug", "Schiff", "Fahrrad"], correctAnswer: "Flugzeug", explanation: "Der Fahrer steuert ein Auto, der Pilot steuert ein Flugzeug."),
            ExerciseItem(id: UUID(), prompt: "Groß verhält sich zu klein wie lang zu …?", options: ["kurz", "schmal", "dünn", "breit"], correctAnswer: "kurz", explanation: "Groß und klein sind Gegensätze, ebenso lang und kurz."),
            ExerciseItem(id: UUID(), prompt: "Kalt verhält sich zu Eis wie heiß zu …?", options: ["Feuer", "Schnee", "Winter", "Kühlschrank"], correctAnswer: "Feuer", explanation: "Eis ist ein typisches Beispiel für Kälte, Feuer ein typisches Beispiel für Hitze."),
            ExerciseItem(id: UUID(), prompt: "Brot verhält sich zu Bäcker wie Fleisch zu …?", options: ["Metzger", "Koch", "Bauer", "Händler"], correctAnswer: "Metzger", explanation: "Brot stellt der Bäcker her, Wurst und Fleisch verarbeitet der Metzger."),
            ExerciseItem(id: UUID(), prompt: "Vorne verhält sich zu hinten wie oben zu …?", options: ["unten", "Himmel", "Dach", "links"], correctAnswer: "unten", explanation: "Vorne und hinten sind Gegensätze, ebenso oben und unten."),
            ExerciseItem(id: UUID(), prompt: "Stuhl verhält sich zu sitzen wie Bett zu …?", options: ["schlafen", "Decke", "Nacht", "Zimmer"], correctAnswer: "schlafen", explanation: "Auf einem Stuhl sitzt man, in einem Bett schläft man."),
            ExerciseItem(id: UUID(), prompt: "Zeiger verhält sich zu Uhr wie Lenker zu …?", options: ["Fahrrad", "Rad", "Straße", "Fahrer"], correctAnswer: "Fahrrad", explanation: "Der Zeiger ist ein Teil der Uhr, der Lenker ein Teil des Fahrrads."),
            ExerciseItem(id: UUID(), prompt: "Jung verhält sich zu alt wie Anfang zu …?", options: ["Ende", "Mitte", "Start", "Beginn"], correctAnswer: "Ende", explanation: "Jung und alt sind Gegensätze, ebenso Anfang und Ende.")
        ]
    )

    private static let causeAndEffectEasy = Exercise(
        title: "Ursache und Wirkung",
        instructions: "Wählen Sie die passende Folge.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .easy,
        groupKey: "causeAndEffectEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ursache: Herr Lang lässt einen Topf Milch auf dem Herd stehen und geht weg.\nWas ist die Folge?", options: ["Die Milch kocht über", "Die Milch gefriert im Topf", "Die Milch wird zu Honig", "Die Milch wird kälter"], correctAnswer: "Die Milch kocht über", explanation: "Heiße Milch steigt beim Kochen schnell auf und läuft über den Topfrand."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Frau Weber hängt die nasse Wäsche an einem sonnigen Tag auf die Leine.\nWas ist die Folge?", options: ["Die Wäsche trocknet", "Die Wäsche wird nasser", "Die Wäsche friert fest", "Die Wäsche wird zu Papier"], correctAnswer: "Die Wäsche trocknet", explanation: "Sonne und Wind lassen das Wasser aus dem Stoff verdunsten."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Kinder blasen einen Luftballon immer weiter auf.\nWas ist die Folge?", options: ["Der Ballon platzt irgendwann", "Der Ballon wird kleiner", "Der Ballon schmilzt", "Der Ballon wird zu Stein"], correctAnswer: "Der Ballon platzt irgendwann", explanation: "Das Gummi wird immer dünner und hält dem Druck der Luft irgendwann nicht mehr stand."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Man spült schmutziges Geschirr mit heißem Wasser und Spülmittel.\nWas ist die Folge?", options: ["Das Geschirr wird sauber", "Das Geschirr wird schmutziger", "Das Geschirr wird unsichtbar", "Das Geschirr wird zu Eis"], correctAnswer: "Das Geschirr wird sauber", explanation: "Spülmittel löst Fett und Reste, und das Wasser spült sie weg."),
            ExerciseItem(id: UUID(), prompt: "Ursache: In einer kalten Winternacht bleibt eine Pfütze draußen auf dem Gehweg.\nWas ist die Folge?", options: ["Die Pfütze gefriert", "Die Pfütze wird heiß", "Die Pfütze wird zu Sand", "Die Pfütze wächst zu einem See"], correctAnswer: "Die Pfütze gefriert", explanation: "Bei Temperaturen unter 0 °C wird Wasser zu Eis."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Jemand liegt stundenlang ohne Sonnencreme in der Mittagssonne.\nWas ist die Folge?", options: ["Die Haut bekommt einen Sonnenbrand", "Die Haut wird kälter", "Die Haut wird weich wie Watte", "Die Haut wird blau vor Kälte"], correctAnswer: "Die Haut bekommt einen Sonnenbrand", explanation: "Die UV-Strahlen der Sonne schädigen ungeschützte Haut."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Eine Packung Milch steht wochenlang offen in der warmen Küche.\nWas ist die Folge?", options: ["Die Milch wird sauer", "Die Milch wird frischer", "Die Milch wird zu Eis", "Die Milch wird zu Honig"], correctAnswer: "Die Milch wird sauer", explanation: "Bakterien lassen Milch bei Wärme sauer werden."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Der Autofahrer tritt fest auf die Bremse.\nWas ist die Folge?", options: ["Das Auto wird langsamer", "Das Auto wird schneller", "Das Auto fliegt los", "Das Auto wird größer"], correctAnswer: "Das Auto wird langsamer", explanation: "Die Bremse verringert die Geschwindigkeit."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Frau Keller schaltet abends das Licht im Zimmer aus.\nWas ist die Folge?", options: ["Das Zimmer wird dunkel", "Das Zimmer wird heller", "Das Zimmer wird kälter", "Das Zimmer wird kleiner"], correctAnswer: "Das Zimmer wird dunkel", explanation: "Ohne Lampe fehlt das Licht im Raum."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Das Wasser im Topf kocht eine Stunde lang auf dem Herd.\nWas ist die Folge?", options: ["Das Wasser verdampft nach und nach", "Das Wasser wird zu Eis", "Das Wasser wird mehr", "Das Wasser wird zu Milch"], correctAnswer: "Das Wasser verdampft nach und nach", explanation: "Beim Kochen geht Wasser als Dampf in die Luft."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Jemand tritt auf eine Bananenschale auf dem Gehweg.\nWas ist die Folge?", options: ["Er kann ausrutschen", "Der Gehweg wird warm", "Die Schale wird zu Stein", "Er kann plötzlich fliegen"], correctAnswer: "Er kann ausrutschen", explanation: "Die glatte Schale lässt den Fuß leicht wegrutschen."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Man schüttelt eine Flasche Sprudel kräftig und öffnet sie sofort.\nWas ist die Folge?", options: ["Das Wasser spritzt heraus", "Das Wasser gefriert sofort", "Das Wasser wird zu Saft", "Die Flasche schrumpft"], correctAnswer: "Das Wasser spritzt heraus", explanation: "Beim Schütteln löst sich Kohlensäure, und der Druck treibt das Wasser beim Öffnen heraus."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Abends geht die Sonne unter.\nWas ist die Folge?", options: ["Es wird dunkel", "Es wird heller", "Es wird heiß", "Es wird Frühling"], correctAnswer: "Es wird dunkel", explanation: "Ohne Sonnenlicht wird es auf dieser Seite der Erde dunkel."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Man gießt Kaffee in eine volle Tasse.\nWas ist die Folge?", options: ["Der Kaffee läuft über", "Der Kaffee wird kalt", "Die Tasse wird leichter", "Der Kaffee wird zu Tee"], correctAnswer: "Der Kaffee läuft über", explanation: "Eine volle Tasse kann nicht mehr aufnehmen."),
            ExerciseItem(id: UUID(), prompt: "Ursache: Jemand vergisst, die Haustür abzuschließen, und geht für eine Woche weg.\nWas ist die Folge?", options: ["Die Wohnung ist nicht gut geschützt", "Die Wohnung wird größer", "Die Tür verschließt sich von selbst", "Die Wohnung wird gereinigt"], correctAnswer: "Die Wohnung ist nicht gut geschützt", explanation: "Eine unverschlossene Tür lässt Fremde leichter eintreten.")
        ]
    )

    private static let whatsWrongHereEasy = Exercise(
        title: "Was stimmt hier nicht?",
        instructions: "Wählen Sie aus, was in der Szene falsch ist.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .easy,
        groupKey: "whatsWrongHereEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ein Mädchen putzt sich die Nase mit einem Besen.\nWas ist hier falsch?", options: ["Ein Besen ist zum Kehren da, nicht zum Naseputzen", "Das Mädchen hat eine Nase", "Das Mädchen ist im Zimmer", "Es gibt einen Besen"], correctAnswer: "Ein Besen ist zum Kehren da, nicht zum Naseputzen", explanation: "Die Nase putzt man mit einem Taschentuch, ein Besen dient zum Kehren."),
            ExerciseItem(id: UUID(), prompt: "Mitten im Schneesturm liegen Leute im Badeanzug am Strand und sonnen sich.\nWas ist hier falsch?", options: ["Bei Schnee und Kälte sonnt man sich nicht im Badeanzug", "Die Leute liegen am Strand", "Es gibt Sand", "Die Leute liegen auf Handtüchern"], correctAnswer: "Bei Schnee und Kälte sonnt man sich nicht im Badeanzug", explanation: "Schnee bedeutet Frost, zum Sonnenbaden braucht man Wärme."),
            ExerciseItem(id: UUID(), prompt: "Ein Koch brät ein Spiegelei im Kühlschrank.\nWas ist hier falsch?", options: ["Ein Kühlschrank ist zum Kühlen da und nicht zum Braten", "Der Koch benutzt ein Ei", "Das Ei ist ein Spiegelei", "Der Koch steht in der Küche"], correctAnswer: "Ein Kühlschrank ist zum Kühlen da und nicht zum Braten", explanation: "Zum Braten braucht man Hitze, etwa von Herd oder Pfanne."),
            ExerciseItem(id: UUID(), prompt: "Ein Mann trocknet sich nach dem Duschen mit einem Stück Seife ab.\nWas ist hier falsch?", options: ["Seife trocknet nicht, dafür nimmt man ein Handtuch", "Der Mann hat geduscht", "Er steht im Badezimmer", "Seife ist ein Pflegeprodukt"], correctAnswer: "Seife trocknet nicht, dafür nimmt man ein Handtuch", explanation: "Ein Handtuch saugt das Wasser auf, Seife dient zum Waschen."),
            ExerciseItem(id: UUID(), prompt: "Ein Fisch fährt mit dem Fahrrad zur Arbeit.\nWas ist hier falsch?", options: ["Fische leben im Wasser und können nicht Rad fahren", "Das Fahrrad hat zwei Räder", "Der Fisch fährt zur Arbeit", "Es ist ein Verkehrsmittel"], correctAnswer: "Fische leben im Wasser und können nicht Rad fahren", explanation: "Ein Fisch hat keine Beine und lebt im Wasser."),
            ExerciseItem(id: UUID(), prompt: "Eine Frau holt Wasser mit einem Sieb aus dem Brunnen.\nWas ist hier falsch?", options: ["Durch ein Sieb läuft das Wasser sofort wieder hindurch", "Die Frau steht am Brunnen", "Im Brunnen ist Wasser", "Sie möchte Wasser holen"], correctAnswer: "Durch ein Sieb läuft das Wasser sofort wieder hindurch", explanation: "Ein Sieb hat viele kleine Löcher. Zum Schöpfen braucht man einen Eimer."),
            ExerciseItem(id: UUID(), prompt: "Ein Feuerwehrmann will einen Waldbrand mit einer Tasse Kaffee löschen.\nWas ist hier falsch?", options: ["Eine Tasse Kaffee reicht nicht, man braucht sehr viel Wasser", "Er arbeitet bei der Feuerwehr", "Im Wald brennt es", "Kaffee wird aus Bohnen gemacht"], correctAnswer: "Eine Tasse Kaffee reicht nicht, man braucht sehr viel Wasser", explanation: "Ein Waldbrand ist riesig. Gelöscht wird mit viel Wasser aus Schläuchen oder Löschfahrzeugen."),
            ExerciseItem(id: UUID(), prompt: "Eine Frau hält sich beim Telefonieren eine Banane ans Ohr.\nWas ist hier falsch?", options: ["Eine Banane ist kein Telefon", "Die Frau telefoniert", "Sie hält etwas am Ohr", "Sie hat zwei Ohren"], correctAnswer: "Eine Banane ist kein Telefon", explanation: "Eine Banane ist eine Frucht und kann nicht zum Telefonieren dienen."),
            ExerciseItem(id: UUID(), prompt: "Eine Familie sitzt am Tisch und trinkt Kaffee aus Schuhen.\nWas ist hier falsch?", options: ["Man trinkt Kaffee aus Tassen, nicht aus Schuhen", "Die Familie sitzt am Tisch", "Kaffee ist ein Getränk", "Es gibt mehrere Personen"], correctAnswer: "Man trinkt Kaffee aus Tassen, nicht aus Schuhen", explanation: "Schuhe trägt man an den Füßen."),
            ExerciseItem(id: UUID(), prompt: "Ein Schwimmer taucht ins Becken, in dem kein einziger Tropfen Wasser ist.\nWas ist hier falsch?", options: ["Ohne Wasser kann man nicht schwimmen", "Er trägt eine Badehose", "Er ist im Schwimmbad", "Er will sich bewegen"], correctAnswer: "Ohne Wasser kann man nicht schwimmen", explanation: "Zum Schwimmen braucht man Wasser."),
            ExerciseItem(id: UUID(), prompt: "Ein Bus fährt mitten auf dem Meer wie ein Schiff.\nWas ist hier falsch?", options: ["Ein Bus fährt auf Straßen, nicht auf dem Meer", "Der Bus hat Räder", "Der Bus hat Sitze", "Der Bus fährt"], correctAnswer: "Ein Bus fährt auf Straßen, nicht auf dem Meer", explanation: "Auf dem Meer fahren Schiffe, ein Bus würde untergehen."),
            ExerciseItem(id: UUID(), prompt: "Ein Mann rasiert sich morgens mit einem Hammer.\nWas ist hier falsch?", options: ["Ein Hammer ist kein Rasierer", "Der Mann steht am Morgen auf", "Er steht vor dem Spiegel", "Er pflegt sich"], correctAnswer: "Ein Hammer ist kein Rasierer", explanation: "Mit einem Hammer schlägt man Nägel ein, zum Rasieren nimmt man einen Rasierer."),
            ExerciseItem(id: UUID(), prompt: "Ein Gärtner gießt die Blumen mit einem Staubsauger.\nWas ist hier falsch?", options: ["Ein Staubsauger saugt, er gibt kein Wasser ab", "Der Gärtner hat Blumen", "Es ist ein Garten", "Der Gärtner arbeitet"], correctAnswer: "Ein Staubsauger saugt, er gibt kein Wasser ab", explanation: "Blumen gießt man mit einer Gießkanne oder einem Schlauch."),
            ExerciseItem(id: UUID(), prompt: "Ein Autofahrer tankt an der Tankstelle Milch in sein Auto.\nWas ist hier falsch?", options: ["Ein Auto fährt mit Benzin, Diesel oder Strom, nicht mit Milch", "Das Auto steht an der Tankstelle", "Das Auto hat einen Tank", "Der Fahrer will weiterfahren"], correctAnswer: "Ein Auto fährt mit Benzin, Diesel oder Strom, nicht mit Milch", explanation: "Milch treibt keinen Motor an und kann ihn sogar beschädigen."),
            ExerciseItem(id: UUID(), prompt: "Eine Kuh sitzt im Büro am Schreibtisch und tippt auf der Tastatur.\nWas ist hier falsch?", options: ["Eine Kuh arbeitet nicht im Büro", "Der Schreibtisch steht im Büro", "Eine Tastatur hat Tasten", "Das Büro hat Möbel"], correctAnswer: "Eine Kuh arbeitet nicht im Büro", explanation: "Kühe leben auf Weiden und im Stall, sie können nicht tippen.")
        ]
    )

    private static let sequencingEasy = Exercise(
        title: "Die richtige Reihenfolge",
        instructions: "Bringen Sie die Schritte in die richtige Reihenfolge.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .easy,
        groupKey: "sequencingEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Eine Dosensuppe erwärmen.", options: ["Suppe in den Teller füllen", "Dose öffnen", "Suppe erhitzen", "Suppe in den Topf gießen"], correctAnswer: "Dose öffnen | Suppe in den Topf gießen | Suppe erhitzen | Suppe in den Teller füllen", explanation: "Erst muss die Dose offen sein, dann kommt die Suppe in den Topf. Sie wird erhitzt und erst danach in den Teller gefüllt."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Ins Kino gehen.", options: ["Film ansehen", "Platz im Saal suchen", "Kino verlassen", "Eintrittskarte kaufen"], correctAnswer: "Eintrittskarte kaufen | Platz im Saal suchen | Film ansehen | Kino verlassen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Ein Glas Wasser trinken.", options: ["Wasser trinken", "Das leere Glas in die Spüle stellen", "Wasser einschenken", "Glas aus dem Schrank nehmen"], correctAnswer: "Glas aus dem Schrank nehmen | Wasser einschenken | Wasser trinken | Das leere Glas in die Spüle stellen", explanation: "Zuerst nimmt man das Glas, dann schenkt man ein und trinkt. Das leere Glas kommt erst danach in die Spüle."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Das Haus verlassen.", options: ["Haustür abschließen", "Socken anziehen", "Schuhe anziehen", "Aus der Haustür treten"], correctAnswer: "Socken anziehen | Schuhe anziehen | Aus der Haustür treten | Haustür abschließen", explanation: "Erst werden Socken und Schuhe angezogen. Abgeschlossen wird die Tür, nachdem man hinausgetreten ist."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Die Post holen.", options: ["Post herausnehmen", "Briefkasten aufschließen", "Zum Briefkasten gehen", "Briefkasten wieder schließen"], correctAnswer: "Zum Briefkasten gehen | Briefkasten aufschließen | Post herausnehmen | Briefkasten wieder schließen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Ein Foto mit dem Handy machen.", options: ["Auf den Auslöser tippen", "Foto ansehen", "Kamera öffnen", "Handy entsperren"], correctAnswer: "Handy entsperren | Kamera öffnen | Auf den Auslöser tippen | Foto ansehen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Ein Taxi nehmen.", options: ["Auf das Taxi warten", "Fahrt bezahlen", "Taxi bestellen", "Ins Taxi einsteigen"], correctAnswer: "Taxi bestellen | Auf das Taxi warten | Ins Taxi einsteigen | Fahrt bezahlen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Telefonieren.", options: ["Sprechen", "Nummer wählen", "Auf das Abheben warten", "Auflegen"], correctAnswer: "Nummer wählen | Auf das Abheben warten | Sprechen | Auflegen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Eine Kerze anzünden.", options: ["Streichholz auspusten", "Streichholz anzünden", "Mit dem Streichholz den Docht entzünden"], correctAnswer: "Streichholz anzünden | Mit dem Streichholz den Docht entzünden | Streichholz auspusten", explanation: "Das Streichholz muss brennen, bevor es den Docht entzünden kann. Erst danach pustet man es aus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Bus fahren.", options: ["Einsteigen", "Auf den Bus warten", "Aussteigen", "Zur Haltestelle gehen"], correctAnswer: "Zur Haltestelle gehen | Auf den Bus warten | Einsteigen | Aussteigen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Ein Geschenk verpacken.", options: ["Schleife aufkleben", "Papier zuschneiden", "Geschenk einwickeln", "Papier mit Klebeband festkleben"], correctAnswer: "Papier zuschneiden | Geschenk einwickeln | Papier mit Klebeband festkleben | Schleife aufkleben", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Schlafen gehen.", options: ["Einschlafen", "Pyjama anziehen", "Ins Bett legen"], correctAnswer: "Pyjama anziehen | Ins Bett legen | Einschlafen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Ein Buch lesen.", options: ["Buch zuklappen", "Eine Seite lesen", "Buch aufschlagen", "Seite umblättern"], correctAnswer: "Buch aufschlagen | Eine Seite lesen | Seite umblättern | Buch zuklappen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Einen Luftballon aufblasen.", options: ["Ballon aufblasen", "Ballon zuknoten", "Ballon aus der Packung nehmen", "Ballon aufhängen"], correctAnswer: "Ballon aus der Packung nehmen | Ballon aufblasen | Ballon zuknoten | Ballon aufhängen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus."),
            ExerciseItem(id: UUID(), prompt: "Bringen Sie die Schritte in die richtige Reihenfolge: Duschen.", options: ["Mit dem Handtuch abtrocknen", "Wasser aufdrehen", "Abspülen", "Sich einseifen"], correctAnswer: "Wasser aufdrehen | Sich einseifen | Abspülen | Mit dem Handtuch abtrocknen", explanation: "Die Schritte bauen aufeinander auf: Jeder Schritt setzt den vorherigen voraus.")
        ]
    )

    private static let wordAssociationMedium = Exercise(
        title: "Wortverbindungen",
        instructions: "Wählen Sie das Wort, das am besten zum Hauptwort passt.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .medium,
        groupKey: "wordAssociationMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "SALZ", options: ["Pfeffer", "Wolke", "Schuh", "Lampe"], correctAnswer: "Pfeffer", explanation: "Salz und Pfeffer gehören zum Würzen und stehen meist zusammen auf dem Tisch."),
            ExerciseItem(id: UUID(), prompt: "KERZE", options: ["Flamme", "Hammer", "Wolke", "Brille"], correctAnswer: "Flamme", explanation: "Eine brennende Kerze hat eine Flamme."),
            ExerciseItem(id: UUID(), prompt: "BIENE", options: ["Honig", "Milch", "Käse", "Brot"], correctAnswer: "Honig", explanation: "Bienen stellen Honig her."),
            ExerciseItem(id: UUID(), prompt: "ZIRKUS", options: ["Clown", "Brötchen", "Schraube", "Zahnarzt"], correctAnswer: "Clown", explanation: "Im Zirkus treten Clowns auf."),
            ExerciseItem(id: UUID(), prompt: "OSTERN", options: ["Ei", "Reifen", "Kamm", "Tresor"], correctAnswer: "Ei", explanation: "Zu Ostern werden Eier bunt bemalt und versteckt."),
            ExerciseItem(id: UUID(), prompt: "WEIHNACHTEN", options: ["Tannenbaum", "Rasenmäher", "Sonnenbrille", "Badehose"], correctAnswer: "Tannenbaum", explanation: "Zu Weihnachten stellen viele Menschen einen Tannenbaum auf."),
            ExerciseItem(id: UUID(), prompt: "MOND", options: ["Nacht", "Brot", "Schuh", "Teppich"], correctAnswer: "Nacht", explanation: "Den Mond sieht man vor allem in der Nacht am Himmel."),
            ExerciseItem(id: UUID(), prompt: "FUSSBALL", options: ["Tor", "Pinsel", "Kochtopf", "Schlüssel"], correctAnswer: "Tor", explanation: "Beim Fußball versucht man, ein Tor zu schießen."),
            ExerciseItem(id: UUID(), prompt: "HOCHZEIT", options: ["Braut", "Pilz", "Schaufel", "Zahnarzt"], correctAnswer: "Braut", explanation: "Bei einer Hochzeit gibt es eine Braut."),
            ExerciseItem(id: UUID(), prompt: "NADEL", options: ["Faden", "Stein", "Eimer", "Zucker"], correctAnswer: "Faden", explanation: "Mit Nadel und Faden näht man."),
            ExerciseItem(id: UUID(), prompt: "WALD", options: ["Baum", "Welle", "Sofa", "Dach"], correctAnswer: "Baum", explanation: "Ein Wald besteht aus vielen Bäumen."),
            ExerciseItem(id: UUID(), prompt: "FLUGHAFEN", options: ["Flugzeug", "Traktor", "Segelboot", "Straßenbahn"], correctAnswer: "Flugzeug", explanation: "Auf einem Flughafen starten und landen Flugzeuge."),
            ExerciseItem(id: UUID(), prompt: "STRAND", options: ["Sand", "Schnee", "Kohle", "Wolle"], correctAnswer: "Sand", explanation: "Ein Strand besteht aus Sand."),
            ExerciseItem(id: UUID(), prompt: "BRÜCKE", options: ["Fluss", "Schrank", "Wecker", "Sattel"], correctAnswer: "Fluss", explanation: "Eine Brücke führt meist über einen Fluss."),
            ExerciseItem(id: UUID(), prompt: "SPIEGEL", options: ["Gesicht", "Ofen", "Hammer", "Regen"], correctAnswer: "Gesicht", explanation: "Im Spiegel sieht man sein eigenes Gesicht.")
        ]
    )

    private static let homonymsMediumExtra = Exercise(
        title: "Wörter mit zwei Bedeutungen",
        instructions: "Über den Sätzen stehen zwei Bedeutungen, die zu einem einzigen Wort gehören. Wählen Sie die Antwort, in der dieses eine Wort in beide Lücken passt.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .medium,
        groupKey: "homonymsMediumExtra",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "[Sitzmöbel / Geldinstitut] Wir sitzen im Park auf einer ___. Ich hebe Geld bei der ___ ab.", options: ["Bank…Bank", "Bank…Wiese", "Kasse…Bank", "Kasse…Wiese"], correctAnswer: "Bank…Bank", explanation: "Bank bedeutet sowohl die Sitzgelegenheit als auch das Geldinstitut."),
            ExerciseItem(id: UUID(), prompt: "[Türschloss / Gebäude] Der Schlüssel dreht sich im ___. Auf dem Hügel steht ein altes ___.", options: ["Schloss…Schloss", "Schloss…Fenster", "Turm…Schloss", "Turm…Fenster"], correctAnswer: "Schloss…Schloss", explanation: "Schloss bedeutet Türschloss und Gebäude eines Königs oder Adels."),
            ExerciseItem(id: UUID(), prompt: "[Badesee / Meer] Im Sommer baden wir im ___. Ein Schiff fährt auf der ___.", options: ["See…See", "See…Straße", "Wind…See", "Wind…Straße"], correctAnswer: "See…See", explanation: "Der See ist ein Binnengewässer, die See ist das Meer."),
            ExerciseItem(id: UUID(), prompt: "[Steiggerät / Vorgesetzter] Der Maler stellt die ___ an die Wand. Der ___ der Firma begrüßt die Gäste.", options: ["Leiter…Leiter", "Leiter…Treppe", "Chef…Leiter", "Chef…Treppe"], correctAnswer: "Leiter…Leiter", explanation: "Die Leiter ist ein Steiggerät, der Leiter ist ein Vorgesetzter."),
            ExerciseItem(id: UUID(), prompt: "[Baum / Knochen] Im Wald wächst eine hohe ___. Beim Kauen bewegt sich der ___.", options: ["Kiefer…Kiefer", "Kiefer…Tanne", "Zahn…Kiefer", "Zahn…Tanne"], correctAnswer: "Kiefer…Kiefer", explanation: "Kiefer ist ein Nadelbaum und zugleich der Gesichtsknochen mit den Zähnen."),
            ExerciseItem(id: UUID(), prompt: "[Tier / Wasserhahn] Morgens kräht der ___ auf dem Hof. Sie dreht den ___ auf und lässt Wasser laufen.", options: ["Hahn…Hahn", "Hahn…Strahl", "Eimer…Hahn", "Eimer…Strahl"], correctAnswer: "Hahn…Hahn", explanation: "Hahn ist ein männliches Huhn und der Wasserhahn."),
            ExerciseItem(id: UUID(), prompt: "[Obst / Glühbirne] Zum Nachtisch esse ich eine saftige ___. Im Flur ist die ___ an der Decke kaputt.", options: ["Birne…Birne", "Birne…Banane", "Lampe…Birne", "Lampe…Banane"], correctAnswer: "Birne…Birne", explanation: "Birne ist ein Obst und die Glühbirne."),
            ExerciseItem(id: UUID(), prompt: "[Tier / Computerzubehör] Die Katze fängt eine ___. Mit der ___ klickt man am Computer.", options: ["Maus…Maus", "Maus…Ratte", "Taste…Maus", "Taste…Ratte"], correctAnswer: "Maus…Maus", explanation: "Maus ist ein Nagetier und das Eingabegerät am Computer."),
            ExerciseItem(id: UUID(), prompt: "[Bettdecke / Zimmerdecke] Im Winter schlafe ich unter einer warmen ___. An der ___ im Wohnzimmer hängt eine Lampe.", options: ["Decke…Decke", "Decke…Matratze", "Wand…Decke", "Wand…Matratze"], correctAnswer: "Decke…Decke", explanation: "Decke ist die Bettdecke und die obere Raumbegrenzung."),
            ExerciseItem(id: UUID(), prompt: "[Blumen / Vogel] Er schenkt ihr einen bunten ___ aus Rosen. Der ___ ist ein großer Vogel, der nicht fliegen kann.", options: ["Strauß…Strauß", "Strauß…Kranz", "Pinguin…Strauß", "Pinguin…Kranz"], correctAnswer: "Strauß…Strauß", explanation: "Strauß ist ein Blumenstrauß und ein flugunfähiger Laufvogel."),
            ExerciseItem(id: UUID(), prompt: "[Schuhteil / Textteil] Der ___ ihres Schuhs ist abgebrochen. Der Text hat nach dem dritten Satz einen neuen ___.", options: ["Absatz…Absatz", "Absatz…Sohle", "Satz…Absatz", "Satz…Sohle"], correctAnswer: "Absatz…Absatz", explanation: "Absatz ist der Schuhabsatz und ein Textabschnitt."),
            ExerciseItem(id: UUID(), prompt: "[Tier / Menschen in einer Reihe] Im Terrarium liegt eine ___ unter dem Stein. Vor der Kasse steht eine lange ___.", options: ["Schlange…Schlange", "Schlange…Wiese", "Katze…Schlange", "Katze…Wiese"], correctAnswer: "Schlange…Schlange", explanation: "Eine Schlange ist ein Reptil und auch eine Reihe wartender Menschen. Nur „Schlange“ passt in beide Sätze."),
            ExerciseItem(id: UUID(), prompt: "[Elternteil / Schraubenteil] Meine ___ backt gern Kuchen. Der Mechaniker zieht die ___ auf der Schraube fest.", options: ["Mutter…Mutter", "Mutter…Schwester", "Zange…Mutter", "Zange…Schwester"], correctAnswer: "Mutter…Mutter", explanation: "Mutter ist ein Elternteil und die Schraubenmutter."),
            ExerciseItem(id: UUID(), prompt: "[Klang / Töpfermaterial] Aus dem Lautsprecher kommt kein ___. Die Schale wurde aus ___ gebrannt.", options: ["Ton…Ton", "Ton…Klang", "Holz…Ton", "Holz…Klang"], correctAnswer: "Ton…Ton", explanation: "Ton ist ein Klang und zugleich das Material (Tonerde), aus dem man Töpferwaren brennt."),
            ExerciseItem(id: UUID(), prompt: "[Essen / Justiz] Zum Mittag gibt es ein leckeres ___. Der Richter spricht im ___ das Urteil.", options: ["Gericht…Gericht", "Gericht…Essen", "Rathaus…Gericht", "Rathaus…Essen"], correctAnswer: "Gericht…Gericht", explanation: "Gericht ist ein Essen und die Einrichtung der Justiz.")
        ]
    )

    private static let completeTheSayingEasy = Exercise(
        title: "Sprichwörter ergänzen",
        instructions: "Wählen Sie das fehlende letzte Wort.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .easy,
        groupKey: "completeTheSayingEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Besser spät als ___.", options: ["nie", "oft", "laut"], correctAnswer: "nie", explanation: "Das Sprichwort sagt, dass etwas Verspätetes immer noch besser ist, als es gar nicht zu tun."),
            ExerciseItem(id: UUID(), prompt: "Kommt Zeit, kommt ___.", options: ["Rat", "Streit", "Geld"], correctAnswer: "Rat", explanation: "Mit der Zeit findet sich meist eine Lösung für ein Problem."),
            ExerciseItem(id: UUID(), prompt: "Zeit ist ___.", options: ["Geld", "Wasser", "Brot"], correctAnswer: "Geld", explanation: "Das Sprichwort meint, dass Zeit wertvoll ist und man sie nicht verschwenden soll."),
            ExerciseItem(id: UUID(), prompt: "Wer sucht, der ___.", options: ["findet", "verliert", "schläft"], correctAnswer: "findet", explanation: "Wer sich ernsthaft bemüht, wird am Ende meist etwas finden."),
            ExerciseItem(id: UUID(), prompt: "Alle Wege führen nach ___.", options: ["Rom", "Paris", "Wien"], correctAnswer: "Rom", explanation: "Das Sprichwort sagt, dass man ein Ziel auf verschiedenen Wegen erreichen kann."),
            ExerciseItem(id: UUID(), prompt: "Liebe geht durch den ___.", options: ["Magen", "Kopf", "Schuh"], correctAnswer: "Magen", explanation: "Mit gutem Essen kann man jemandem eine Freude machen und seine Zuneigung gewinnen."),
            ExerciseItem(id: UUID(), prompt: "Eine Hand wäscht die ___.", options: ["andere", "saubere", "nasse"], correctAnswer: "andere", explanation: "Man hilft sich gegenseitig: Wer einen Gefallen tut, darf auch einen erwarten."),
            ExerciseItem(id: UUID(), prompt: "Von nichts kommt ___.", options: ["nichts", "Glück", "Lohn"], correctAnswer: "nichts", explanation: "Ohne eigene Mühe erreicht man nichts."),
            ExerciseItem(id: UUID(), prompt: "Wo ein Wille ist, da ist auch ein ___.", options: ["Weg", "Ziel", "Grund"], correctAnswer: "Weg", explanation: "Wer wirklich etwas will, findet auch einen Weg dorthin."),
            ExerciseItem(id: UUID(), prompt: "Die Zeit heilt alle ___.", options: ["Wunden", "Fehler", "Schulden"], correctAnswer: "Wunden", explanation: "Mit der Zeit verblasst auch großer Schmerz."),
            ExerciseItem(id: UUID(), prompt: "Hunger ist der beste ___.", options: ["Koch", "Arzt", "Lehrer"], correctAnswer: "Koch", explanation: "Wer hungrig ist, dem schmeckt auch einfaches Essen."),
            ExerciseItem(id: UUID(), prompt: "Weniger ist ___.", options: ["mehr", "leer", "Gold"], correctAnswer: "mehr", explanation: "Das Sprichwort sagt, dass Einfaches oft besser wirkt als Überfluss."),
            ExerciseItem(id: UUID(), prompt: "Der frühe Vogel fängt den ___.", options: ["Wurm", "Fisch", "Käfig"], correctAnswer: "Wurm", explanation: "Wer früh anfängt, hat die besten Chancen."),
            ExerciseItem(id: UUID(), prompt: "Reden ist Silber, Schweigen ist ___.", options: ["Gold", "Blei", "Eisen"], correctAnswer: "Gold", explanation: "Manchmal ist Schweigen wertvoller als Reden."),
            ExerciseItem(id: UUID(), prompt: "Der Ton macht die ___.", options: ["Musik", "Stimme", "Ruhe"], correctAnswer: "Musik", explanation: "Nicht nur was man sagt, sondern wie man es sagt, ist entscheidend.")
        ]
    )

    private static let completeTheSayingHard2 = Exercise(
        title: "Seltenere Sprichwörter",
        instructions: "Wählen Sie das fehlende letzte Wort.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        groupKey: "completeTheSayingHard2",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wie man sich bettet, so ___ man.", options: ["liegt", "steht", "geht"], correctAnswer: "liegt", explanation: "Die Folgen eigener Entscheidungen muss man selbst tragen."),
            ExerciseItem(id: UUID(), prompt: "Gelegenheit macht ___.", options: ["Diebe", "Freunde", "Mut"], correctAnswer: "Diebe", explanation: "Eine günstige Gelegenheit verleitet zu Taten, die man sonst unterließe."),
            ExerciseItem(id: UUID(), prompt: "Wer ernten will, muss ___.", options: ["säen", "singen", "schlafen"], correctAnswer: "säen", explanation: "Nur wer vorher Mühe investiert, kann am Ende einen Ertrag erwarten."),
            ExerciseItem(id: UUID(), prompt: "Den Letzten beißen die ___.", options: ["Hunde", "Mücken", "Wölfe"], correctAnswer: "Hunde", explanation: "Wer zuletzt kommt, hat den Schaden."),
            ExerciseItem(id: UUID(), prompt: "Wo viel Licht ist, ist auch starker ___.", options: ["Schatten", "Regen", "Wind"], correctAnswer: "Schatten", explanation: "Wo es große Vorteile gibt, gibt es oft auch Nachteile."),
            ExerciseItem(id: UUID(), prompt: "Es ist noch kein Meister vom Himmel ___.", options: ["gefallen", "gestiegen", "gekommen"], correctAnswer: "gefallen", explanation: "Niemand ist von Anfang an perfekt, jeder muss erst lernen."),
            ExerciseItem(id: UUID(), prompt: "Steter Tropfen höhlt den ___.", options: ["Stein", "Berg", "Krug"], correctAnswer: "Stein", explanation: "Beharrlichkeit erreicht auch Schweres."),
            ExerciseItem(id: UUID(), prompt: "Wer schön sein will, muss ___.", options: ["leiden", "schlafen", "sparen"], correctAnswer: "leiden", explanation: "Das Sprichwort meint, dass man für gutes Aussehen Mühe und Unbequemes in Kauf nehmen muss."),
            ExerciseItem(id: UUID(), prompt: "Aufgeschoben ist nicht ___.", options: ["aufgehoben", "aufgegeben", "aufgewacht"], correctAnswer: "aufgehoben", explanation: "Etwas auf später zu verschieben, heißt nicht, dass man es nicht mehr tun muss."),
            ExerciseItem(id: UUID(), prompt: "Not macht ___.", options: ["erfinderisch", "hungrig", "müde"], correctAnswer: "erfinderisch", explanation: "In Notlagen entwickelt man neue Ideen."),
            ExerciseItem(id: UUID(), prompt: "Frisch gewagt ist halb ___.", options: ["gewonnen", "verloren", "gelungen"], correctAnswer: "gewonnen", explanation: "Wer mutig anfängt, hat schon viel erreicht."),
            ExerciseItem(id: UUID(), prompt: "Wer’s glaubt, wird ___.", options: ["selig", "reich", "gesund"], correctAnswer: "selig", explanation: "Man sagt es spöttisch, wenn man etwas für unglaubwürdig hält."),
            ExerciseItem(id: UUID(), prompt: "Doppelt genäht hält ___.", options: ["besser", "länger", "schön"], correctAnswer: "besser", explanation: "Sicher ist sicher: Eine doppelte Naht ist stabiler."),
            ExerciseItem(id: UUID(), prompt: "Die Axt im Haus erspart den ___.", options: ["Zimmermann", "Bäcker", "Nachbarn"], correctAnswer: "Zimmermann", explanation: "Wer selbst handwerken kann, spart den Handwerker."),
            ExerciseItem(id: UUID(), prompt: "Wo Rauch ist, da ist auch ___.", options: ["Feuer", "Wind", "Nebel"], correctAnswer: "Feuer", explanation: "Hinter einem Gerücht steckt meist ein wahrer Kern.")
        ]
    )
}
