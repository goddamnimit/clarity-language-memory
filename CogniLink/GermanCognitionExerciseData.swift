import Foundation

/// German: cognition exercises. Native-authored; review status in LanguageReviewStatus.
struct GermanCognitionExerciseData {

    static let allExercises: [Exercise] = [
        whWhat,
        whWhere,
        whWho,
        whWhen,
        whWhy,
        whHow,
        yesNo,
        generalKnowledgeHistory,
        generalKnowledgeLocations,
        generalKnowledgePopularMedia,
        idioms,
        estimationAndLogic,
        deductiveReasoning,
        memoryAboutYourself
    ]

    private static let whWhat = Exercise(
        title: "Fragen mit „Was“",
        instructions: "Wählen Sie die passende Antwort auf die Frage.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "whWhat",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Was benutzen Sie, um ein Brot zu schneiden?", options: ["Ein Brotmesser", "Eine Zange", "Einen Löffel", "Einen Kamm"], correctAnswer: "Ein Brotmesser", explanation: "Ein Brotmesser hat eine scharfe, oft gezackte Klinge, mit der sich die Kruste gut durchschneiden lässt."),
            ExerciseItem(id: UUID(), prompt: "Was schützt Sie bei Regen vor Nässe?", options: ["Eine Sonnenbrille", "Ein Regenschirm", "Eine Badehose", "Eine Taschenlampe"], correctAnswer: "Ein Regenschirm", explanation: "Ein aufgespannter Regenschirm hält die Regentropfen ab, sodass Kopf und Oberkörper trocken bleiben."),
            ExerciseItem(id: UUID(), prompt: "Was wird auf Weihnachtsmärkten gern heiß getrunken?", options: ["Eistee", "Limonade", "Glühwein", "Milchshake"], correctAnswer: "Glühwein", explanation: "Glühwein ist erwärmter, gewürzter Rotwein. Er gehört zu den typischen Getränken auf Weihnachtsmärkten."),
            ExerciseItem(id: UUID(), prompt: "Was ist die Hauptzutat von Brot?", options: ["Zucker", "Reis", "Honig", "Mehl"], correctAnswer: "Mehl", explanation: "Brot wird aus Mehl, Wasser, Salz und einem Triebmittel wie Hefe oder Sauerteig gebacken."),
            ExerciseItem(id: UUID(), prompt: "Was zeigt Ihnen eine Uhr an?", options: ["Die Uhrzeit", "Die Temperatur", "Das Gewicht", "Die Entfernung"], correctAnswer: "Die Uhrzeit", explanation: "Eine Uhr misst die Zeit und zeigt Stunden und Minuten an."),
            ExerciseItem(id: UUID(), prompt: "Was brauchen Sie, um auf Papier zu schreiben?", options: ["Eine Gabel", "Einen Kugelschreiber", "Einen Schlüssel", "Einen Kamm"], correctAnswer: "Einen Kugelschreiber", explanation: "Mit einem Kugelschreiber hinterlässt man Tinte auf dem Papier. Die anderen Gegenstände eignen sich dafür nicht."),
            ExerciseItem(id: UUID(), prompt: "Was legt ein Huhn?", options: ["Nüsse", "Kartoffeln", "Eier", "Pilze"], correctAnswer: "Eier", explanation: "Hühner legen Eier. Sie werden gekocht, gebraten oder zum Backen verwendet."),
            ExerciseItem(id: UUID(), prompt: "Was ist Sauerkraut?", options: ["Gebratene Zwiebeln", "Saure Gurken", "Getrockneter Fisch", "Vergorener Weißkohl"], correctAnswer: "Vergorener Weißkohl", explanation: "Für Sauerkraut wird fein geschnittener Weißkohl mit Salz eingelegt und vergärt. Dabei entsteht der saure Geschmack."),
            ExerciseItem(id: UUID(), prompt: "Was misst ein Thermometer?", options: ["Die Temperatur", "Die Zeit", "Das Gewicht", "Die Lautstärke"], correctAnswer: "Die Temperatur", explanation: "Ein Thermometer zeigt, wie warm oder kalt etwas ist, zum Beispiel in °C."),
            ExerciseItem(id: UUID(), prompt: "Was benutzen Sie, um Ihre Zähne zu putzen?", options: ["Einen Schwamm", "Eine Zahnbürste", "Einen Besen", "Eine Haarbürste"], correctAnswer: "Eine Zahnbürste", explanation: "Eine Zahnbürste ist klein und hat feine Borsten, mit denen man Zähne reinigt."),
            ExerciseItem(id: UUID(), prompt: "Was ist eine Brezel?", options: ["Eine Wurstsorte", "Ein Käse", "Ein Gemüse", "Ein Laugengebäck"], correctAnswer: "Ein Laugengebäck", explanation: "Eine Brezel ist ein verschlungenes Gebäck, das vor dem Backen in Natronlauge getaucht wird. Davon kommt die braune Kruste."),
            ExerciseItem(id: UUID(), prompt: "Was entsteht, wenn Wasser sehr kalt wird und gefriert?", options: ["Dampf", "Eis", "Nebel", "Öl"], correctAnswer: "Eis", explanation: "Unter 0 °C wird Wasser fest und bildet Eis."),
            ExerciseItem(id: UUID(), prompt: "Was gießen Sie in eine Teekanne, um Tee zu kochen?", options: ["Kalte Milch", "Speiseöl", "Essig", "Heißes Wasser"], correctAnswer: "Heißes Wasser", explanation: "Tee entsteht, wenn heißes Wasser über Teeblätter oder einen Teebeutel gegossen wird."),
            ExerciseItem(id: UUID(), prompt: "Was benutzen Sie, um einen Nagel in die Wand zu schlagen?", options: ["Einen Hammer", "Einen Besen", "Eine Schere", "Einen Pinsel"], correctAnswer: "Einen Hammer", explanation: "Ein Hammer hat einen schweren Kopf, mit dem man Nägel einschlagen kann."),
            ExerciseItem(id: UUID(), prompt: "Was ist Karneval?", options: ["Ein Fußballturnier", "Eine Bergwanderung", "Ein Fest mit Kostümen und Umzügen", "Ein Erntedankessen"], correctAnswer: "Ein Fest mit Kostümen und Umzügen", explanation: "Im Karneval verkleiden sich viele Menschen, feiern auf Straßen und Sälen und sehen Umzüge. Er findet vor der Fastenzeit statt."),
            ExerciseItem(id: UUID(), prompt: "Was ist die Zugspitze?", options: ["Ein großer See", "Ein Fluss", "Der höchste Berg Deutschlands", "Eine Insel"], correctAnswer: "Der höchste Berg Deutschlands", explanation: "Die Zugspitze liegt in den Alpen an der Grenze zu Österreich und ist mit rund 2.960 m der höchste Berg Deutschlands."),
            ExerciseItem(id: UUID(), prompt: "Was braucht ein Auto mit Verbrennungsmotor, damit es fährt?", options: ["Zucker", "Kraftstoff", "Salz", "Mehl"], correctAnswer: "Kraftstoff", explanation: "Ein Verbrennungsmotor verbrennt Kraftstoff wie Benzin oder Diesel. Dabei entsteht die Energie zum Fahren."),
            ExerciseItem(id: UUID(), prompt: "Was ist ein Schlüsselbund?", options: ["Ein Werkzeugkasten", "Eine Schachtel", "Eine Kette aus Perlen", "Mehrere Schlüssel an einem Ring"], correctAnswer: "Mehrere Schlüssel an einem Ring", explanation: "Ein Schlüsselbund fasst mehrere Schlüssel an einem Ring zusammen, damit man sie nicht verliert."),
            ExerciseItem(id: UUID(), prompt: "Was ist Müsli?", options: ["Eine Wurstsorte", "Eine Gemüsesuppe", "Eine Mischung aus Getreideflocken, Nüssen und Früchten", "Ein Gebäck mit Käse"], correctAnswer: "Eine Mischung aus Getreideflocken, Nüssen und Früchten", explanation: "Müsli besteht meist aus Haferflocken, Nüssen und getrockneten Früchten und wird mit Milch oder Joghurt gegessen."),
            ExerciseItem(id: UUID(), prompt: "Was ist ein Rezept in der Küche?", options: ["Ein Küchengerät", "Eine Anleitung zum Zubereiten eines Gerichts", "Eine Zutat", "Ein Geschirrstück"], correctAnswer: "Eine Anleitung zum Zubereiten eines Gerichts", explanation: "Ein Kochrezept nennt die Zutaten und beschreibt Schritt für Schritt, wie ein Gericht zubereitet wird.")
        ]
    )

    private static let whWhere = Exercise(
        title: "Fragen mit „Wo“",
        instructions: "Wählen Sie den passenden Ort.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "whWhere",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wo kaufen Sie frische Brötchen?", options: ["In der Bäckerei", "In der Apotheke", "In der Bibliothek", "Im Schwimmbad"], correctAnswer: "In der Bäckerei", explanation: "In der Bäckerei werden Brötchen gebacken und verkauft."),
            ExerciseItem(id: UUID(), prompt: "Wo heben Sie Bargeld ab?", options: ["Am Briefkasten", "Am Geldautomaten", "Am Bahnsteig", "Am Kühlschrank"], correctAnswer: "Am Geldautomaten", explanation: "Mit Ihrer Bankkarte erhalten Sie am Geldautomaten Bargeld von Ihrem Konto."),
            ExerciseItem(id: UUID(), prompt: "Wo steigen Sie in den Zug ein?", options: ["Auf dem Parkplatz", "In der Küche", "Auf dem Bahnsteig", "Im Keller"], correctAnswer: "Auf dem Bahnsteig", explanation: "Züge halten am Gleis. Der Bahnsteig daneben ist der Ort, an dem man ein- und aussteigt."),
            ExerciseItem(id: UUID(), prompt: "Wo erhalten Sie Medikamente, für die Sie ein Rezept haben?", options: ["In der Apotheke", "In der Bäckerei", "Beim Friseur", "Im Blumenladen"], correctAnswer: "In der Apotheke", explanation: "Rezepte werden in der Apotheke eingelöst. Dort geben Fachleute die Medikamente ab."),
            ExerciseItem(id: UUID(), prompt: "Wo leihen Sie sich Bücher kostenlos oder günstig aus?", options: ["In der Bibliothek", "An der Tankstelle", "Im Fitnessstudio", "In der Werkstatt"], correctAnswer: "In der Bibliothek", explanation: "Eine Bibliothek verleiht Bücher an ihre Besucher. Man gibt sie nach einigen Wochen zurück."),
            ExerciseItem(id: UUID(), prompt: "Wo kochen Sie normalerweise zu Hause?", options: ["Im Badezimmer", "Im Flur", "Im Keller", "In der Küche"], correctAnswer: "In der Küche", explanation: "Die Küche hat Herd, Spüle und Kühlschrank und ist der Raum zum Kochen."),
            ExerciseItem(id: UUID(), prompt: "In welcher Abteilung eines Supermarkts finden Sie Joghurt?", options: ["Backwaren", "Molkereiprodukte", "Drogerie", "Getränke"], correctAnswer: "Molkereiprodukte", explanation: "Joghurt wird aus Milch hergestellt und steht deshalb bei den Molkereiprodukten im Kühlregal."),
            ExerciseItem(id: UUID(), prompt: "In welcher Abteilung eines Supermarkts finden Sie Zahnpasta?", options: ["Obst und Gemüse", "Backwaren", "Drogerie", "Tiefkühlkost"], correctAnswer: "Drogerie", explanation: "Zahnpasta gehört zu den Pflegeartikeln, die in der Drogerie-Abteilung stehen."),
            ExerciseItem(id: UUID(), prompt: "Wo liegt die Zugspitze?", options: ["Im Schwarzwald", "An der Nordsee", "Im Harz", "In den Alpen"], correctAnswer: "In den Alpen", explanation: "Die Zugspitze ist ein Berg der Nördlichen Kalkalpen im Süden Deutschlands."),
            ExerciseItem(id: UUID(), prompt: "In welches Meer mündet der Rhein?", options: ["In die Nordsee", "In die Ostsee", "In das Mittelmeer", "In das Schwarze Meer"], correctAnswer: "In die Nordsee", explanation: "Der Rhein fließt durch die Niederlande und mündet dort in die Nordsee."),
            ExerciseItem(id: UUID(), prompt: "Wo werfen Sie einen Brief ein?", options: ["In den Mülleimer", "In den Briefkasten", "In den Schuhschrank", "In die Waschmaschine"], correctAnswer: "In den Briefkasten", explanation: "Briefe werfen Sie in einen Briefkasten, aus dem die Post sie abholt."),
            ExerciseItem(id: UUID(), prompt: "Wo können Sie Fische beobachten, die in einem Glasbecken schwimmen?", options: ["Im Backofen", "In der Garage", "Im Schrank", "Im Aquarium"], correctAnswer: "Im Aquarium", explanation: "Ein Aquarium ist ein Wasserbecken mit Glaswänden für Fische und Wasserpflanzen."),
            ExerciseItem(id: UUID(), prompt: "Wohin gehen Sie, wenn Sie schwimmen möchten?", options: ["Ins Schwimmbad", "Ins Kino", "In die Bäckerei", "Ins Rathaus"], correctAnswer: "Ins Schwimmbad", explanation: "Im Schwimmbad gibt es Becken mit Wasser zum Schwimmen."),
            ExerciseItem(id: UUID(), prompt: "Wo bewahren Sie Tiefkühlkost zu Hause auf?", options: ["Im Gefrierschrank", "Im Bücherregal", "Im Kleiderschrank", "Im Backofen"], correctAnswer: "Im Gefrierschrank", explanation: "Tiefkühlkost bleibt nur bei etwa -18 °C haltbar, so kalt wird es im Gefrierschrank."),
            ExerciseItem(id: UUID(), prompt: "Wo können Sie am Bahnhof eine Fahrkarte kaufen?", options: ["Im Blumenladen", "Beim Friseur", "Im Schwimmbad", "Am Fahrkartenautomaten"], correctAnswer: "Am Fahrkartenautomaten", explanation: "Am Bahnhof stehen Fahrkartenautomaten, an denen man Fahrscheine kaufen kann."),
            ExerciseItem(id: UUID(), prompt: "Wo sehen Sie Gemälde und Skulpturen ausgestellt?", options: ["Auf dem Parkplatz", "Im Museum", "In der Waschküche", "Im Supermarkt"], correctAnswer: "Im Museum", explanation: "Museen sammeln und zeigen Kunstwerke, damit Besucher sie ansehen können."),
            ExerciseItem(id: UUID(), prompt: "Wo hängen Sie nasse Wäsche zum Trocknen auf?", options: ["An der Wäscheleine", "Im Tiefkühlfach", "Im Briefkasten", "In der Badewanne unter Wasser"], correctAnswer: "An der Wäscheleine", explanation: "An der Wäscheleine trocknet die Wäsche an der Luft."),
            ExerciseItem(id: UUID(), prompt: "Wo liegt die Stadt Hamburg?", options: ["In den Alpen", "Am Bodensee", "Im Norden Deutschlands", "Im Süden Deutschlands"], correctAnswer: "Im Norden Deutschlands", explanation: "Hamburg liegt an der Elbe im Norden Deutschlands, nicht weit von der Nordsee."),
            ExerciseItem(id: UUID(), prompt: "Wo grasen Kühe im Sommer meistens?", options: ["Im Keller", "Auf der Autobahn", "Im Schwimmbad", "Auf der Weide"], correctAnswer: "Auf der Weide", explanation: "Kühe fressen Gras. Im Sommer stehen viele von ihnen auf Weiden."),
            ExerciseItem(id: UUID(), prompt: "Wo backen Sie zu Hause ein Brot?", options: ["Im Backofen", "Im Kühlschrank", "In der Waschmaschine", "Im Gefrierschrank"], correctAnswer: "Im Backofen", explanation: "Nur im heißen Backofen wird der Teig durchgebacken und bekommt eine Kruste.")
        ]
    )

    private static let whWho = Exercise(
        title: "Fragen mit „Wer“",
        instructions: "Wählen Sie die richtige Person oder Berufsbezeichnung.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "whWho",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wer repariert ein tropfendes Wasserrohr?", options: ["Eine Bäckerin", "Ein Klempner", "Ein Friseur", "Eine Lehrerin"], correctAnswer: "Ein Klempner", explanation: "Klempner (auch Installateure genannt) arbeiten an Wasserleitungen und Heizungen."),
            ExerciseItem(id: UUID(), prompt: "Wer unterrichtet Kinder in der Schule?", options: ["Ein Pilot", "Ein Gärtner", "Eine Lehrerin", "Ein Maler"], correctAnswer: "Eine Lehrerin", explanation: "Lehrerinnen und Lehrer vermitteln Schülern Wissen."),
            ExerciseItem(id: UUID(), prompt: "Wer löscht einen Brand?", options: ["Die Feuerwehr", "Die Müllabfuhr", "Das Postamt", "Der Hausmeister einer Schule"], correctAnswer: "Die Feuerwehr", explanation: "Die Feuerwehr ist dafür ausgebildet und ausgerüstet, Brände zu löschen."),
            ExerciseItem(id: UUID(), prompt: "Wer backt beruflich Brot und Brötchen?", options: ["Eine Bäckerin", "Eine Schneiderin", "Eine Ärztin", "Eine Richterin"], correctAnswer: "Eine Bäckerin", explanation: "Bäckerinnen und Bäcker stellen Brot, Brötchen und Kuchen her."),
            ExerciseItem(id: UUID(), prompt: "Wer ist die Schwester Ihrer Mutter?", options: ["Ihre Nichte", "Ihre Großmutter", "Ihre Tante", "Ihre Schwägerin"], correctAnswer: "Ihre Tante", explanation: "Die Schwester eines Elternteils ist die Tante."),
            ExerciseItem(id: UUID(), prompt: "Wer ist der Vater Ihres Vaters?", options: ["Ihr Großvater", "Ihr Onkel", "Ihr Neffe", "Ihr Schwager"], correctAnswer: "Ihr Großvater", explanation: "Der Vater eines Elternteils ist der Großvater."),
            ExerciseItem(id: UUID(), prompt: "Wer schneidet beruflich Haare?", options: ["Ein Tischler", "Ein Briefträger", "Eine Friseurin", "Ein Busfahrer"], correctAnswer: "Eine Friseurin", explanation: "Friseurinnen und Friseure schneiden, waschen und frisieren Haare."),
            ExerciseItem(id: UUID(), prompt: "Wer bringt Ihnen die Briefe nach Hause?", options: ["Der Postbote", "Der Zahnarzt", "Der Schornsteinfeger", "Der Pilot"], correctAnswer: "Der Postbote", explanation: "Postboten stellen Briefe und Pakete an die Haustür oder in den Briefkasten zu."),
            ExerciseItem(id: UUID(), prompt: "Wer behandelt Zahnschmerzen?", options: ["Eine Augenärztin", "Eine Zahnärztin", "Eine Gärtnerin", "Eine Bäckerin"], correctAnswer: "Eine Zahnärztin", explanation: "Zahnärztinnen sind auf Zähne und Zahnfleisch spezialisiert."),
            ExerciseItem(id: UUID(), prompt: "Wer ist der Sohn Ihres Bruders?", options: ["Ihr Cousin", "Ihr Schwager", "Ihr Onkel", "Ihr Neffe"], correctAnswer: "Ihr Neffe", explanation: "Der Sohn eines Geschwisters ist der Neffe, die Tochter ist die Nichte."),
            ExerciseItem(id: UUID(), prompt: "Wer fällt vor Gericht das Urteil?", options: ["Ein Richter", "Ein Kellner", "Ein Busfahrer", "Ein Gärtner"], correctAnswer: "Ein Richter", explanation: "Richterinnen und Richter entscheiden in einem Prozess, wie das Urteil lautet."),
            ExerciseItem(id: UUID(), prompt: "Wer steuert ein Flugzeug?", options: ["Ein Lokführer", "Ein Kapitän eines Schiffes", "Eine Pilotin", "Ein Taxifahrer"], correctAnswer: "Eine Pilotin", explanation: "Piloten fliegen Flugzeuge. Lokführer fahren Züge, Kapitäne leiten Schiffe."),
            ExerciseItem(id: UUID(), prompt: "Wer baut beruflich Möbel aus Holz?", options: ["Ein Maurer", "Ein Bäcker", "Ein Schneider", "Ein Tischler"], correctAnswer: "Ein Tischler", explanation: "Tischler (im Süden auch Schreiner genannt) fertigen Tische, Schränke und Stühle aus Holz."),
            ExerciseItem(id: UUID(), prompt: "Wer pflegt beruflich Pflanzen und Beete?", options: ["Eine Gärtnerin", "Eine Verkäuferin", "Eine Sängerin", "Eine Kassiererin"], correctAnswer: "Eine Gärtnerin", explanation: "Gärtnerinnen und Gärtner säen, pflanzen und pflegen Pflanzen."),
            ExerciseItem(id: UUID(), prompt: "Wer ist die Ehefrau Ihres Bruders?", options: ["Ihre Tante", "Ihre Nichte", "Ihre Cousine", "Ihre Schwägerin"], correctAnswer: "Ihre Schwägerin", explanation: "Die Frau des eigenen Bruders ist die Schwägerin.")
        ]
    )

    private static let whWhen = Exercise(
        title: "Fragen mit „Wann“",
        instructions: "Wählen Sie die passende Zeit.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "whWhen",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Zu welcher Tageszeit geht die Sonne auf?", options: ["Abends", "Morgens", "Nachts", "Mittags"], correctAnswer: "Morgens", explanation: "Die Sonne geht im Osten auf. Das ist am frühen Morgen."),
            ExerciseItem(id: UUID(), prompt: "In welcher Jahreszeit fällt in Deutschland am häufigsten Schnee?", options: ["Im Winter", "Im Sommer", "Im Frühling", "Im Herbst"], correctAnswer: "Im Winter", explanation: "Im Winter ist es am kältesten, daher fällt dann am ehesten Schnee."),
            ExerciseItem(id: UUID(), prompt: "In welchem Monat feiert man Weihnachten?", options: ["Im Juli", "Im März", "Im Oktober", "Im Dezember"], correctAnswer: "Im Dezember", explanation: "Heiligabend ist der 24.12., die Weihnachtsfeiertage sind der 25. und 26. Dezember."),
            ExerciseItem(id: UUID(), prompt: "Wann essen die meisten Menschen zu Mittag?", options: ["Gegen 3:00 Uhr nachts", "Gegen 23:00 Uhr", "Gegen 12:30 Uhr", "Gegen 5:00 Uhr morgens"], correctAnswer: "Gegen 12:30 Uhr", explanation: "Das Mittagessen gibt es in der Tagesmitte, meist zwischen 12:00 und 14:00 Uhr."),
            ExerciseItem(id: UUID(), prompt: "In welcher Jahreszeit blühen Krokusse und Schneeglöckchen?", options: ["Im Hochsommer", "Im Spätherbst", "Im Frühling", "Mitten im Winter bei Dauerfrost"], correctAnswer: "Im Frühling", explanation: "Krokusse und Schneeglöckchen sind Frühblüher. Sie blühen, wenn es gegen Ende des Winters wärmer wird."),
            ExerciseItem(id: UUID(), prompt: "In welcher Jahreszeit verlieren Laubbäume ihre Blätter?", options: ["Im Herbst", "Im Frühling", "Im Hochsommer", "Im Frühsommer"], correctAnswer: "Im Herbst", explanation: "Im Herbst färben sich die Blätter bunt und fallen ab, bevor der Winter beginnt."),
            ExerciseItem(id: UUID(), prompt: "Wann ziehen Sie normalerweise Ihre Socken an?", options: ["Nachdem Sie die Schuhe angezogen haben", "Bevor Sie die Schuhe anziehen", "Nie", "Während Sie schlafen"], correctAnswer: "Bevor Sie die Schuhe anziehen", explanation: "Socken tragen Sie an den Füßen, die Schuhe darüber. Daher kommen die Socken zuerst."),
            ExerciseItem(id: UUID(), prompt: "Wann ist Mitternacht?", options: ["Um 12:00 Uhr mittags", "Um 6:00 Uhr", "Um 18:00 Uhr", "Um 0:00 Uhr"], correctAnswer: "Um 0:00 Uhr", explanation: "Mitternacht ist der Wechsel zwischen zwei Tagen, also 24:00 Uhr beziehungsweise 0:00 Uhr."),
            ExerciseItem(id: UUID(), prompt: "In welcher Jahreszeit ist es bei uns am längsten hell?", options: ["Im Herbst", "Im Winter", "Im Sommer", "Im Frühling"], correctAnswer: "Im Sommer", explanation: "Im Sommer steht die Sonne am höchsten, und die Tage sind am längsten."),
            ExerciseItem(id: UUID(), prompt: "In welchem Monat beginnt das Oktoberfest in München traditionell?", options: ["Im Januar", "Im Mai", "Im September", "Im Februar"], correctAnswer: "Im September", explanation: "Trotz seines Namens beginnt das Oktoberfest schon im September und dauert bis Anfang Oktober."),
            ExerciseItem(id: UUID(), prompt: "Womit endet der Karneval?", options: ["Mit dem Aschermittwoch", "Mit Weihnachten", "Mit dem Erntedankfest", "Mit Pfingsten"], correctAnswer: "Mit dem Aschermittwoch", explanation: "Am Aschermittwoch ist der Karneval vorbei, und die Fastenzeit vor Ostern beginnt."),
            ExerciseItem(id: UUID(), prompt: "Wann sehen Sie die Sterne am besten?", options: ["Mittags bei Sonnenschein", "In der Nacht bei klarem Himmel", "Am Morgen bei Nebel", "Am Nachmittag bei Regen"], correctAnswer: "In der Nacht bei klarem Himmel", explanation: "Sterne sieht man nur, wenn es dunkel ist und keine Wolken die Sicht verdecken."),
            ExerciseItem(id: UUID(), prompt: "Wann frühstücken die meisten Menschen?", options: ["Am Morgen", "Am späten Abend", "Mitten in der Nacht", "Am frühen Abend"], correctAnswer: "Am Morgen", explanation: "Das Frühstück ist die erste Mahlzeit des Tages und wird am Morgen gegessen."),
            ExerciseItem(id: UUID(), prompt: "In welcher Jahreszeit liegt Ostern?", options: ["Im Herbst", "Im Hochsommer", "Im Frühling", "Im Spätsommer"], correctAnswer: "Im Frühling", explanation: "Ostern fällt immer auf einen Sonntag zwischen Ende März und Ende April, also in den Frühling."),
            ExerciseItem(id: UUID(), prompt: "An welchem Wochentag sind in Deutschland die meisten Geschäfte geschlossen?", options: ["Montag", "Mittwoch", "Freitag", "Sonntag"], correctAnswer: "Sonntag", explanation: "Der Sonntag ist in Deutschland gesetzlich ein Ruhetag. Die meisten Läden bleiben geschlossen.")
        ]
    )

    private static let whWhy = Exercise(
        title: "Fragen mit „Warum“",
        instructions: "Wählen Sie den richtigen Grund.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "whWhy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Warum ist es im Sommer bei uns wärmer als im Winter?", options: ["Weil die Erde im Sommer näher an der Sonne ist", "Weil die Sonnenstrahlen steiler auf die Erde treffen", "Weil der Mond im Sommer näher ist", "Weil im Sommer weniger Wind weht"], correctAnswer: "Weil die Sonnenstrahlen steiler auf die Erde treffen", explanation: "Im Sommer steht die Sonne höher am Himmel. Ihre Strahlen treffen steiler auf und erwärmen den Boden stärker."),
            ExerciseItem(id: UUID(), prompt: "Warum regnet es?", options: ["Weil sich Wassertröpfchen in Wolken zu schweren Tropfen verbinden und herabfallen", "Weil der Wind das Meer hochhebt", "Weil die Sterne Wasser verlieren", "Weil die Sonne Wasser erzeugt"], correctAnswer: "Weil sich Wassertröpfchen in Wolken zu schweren Tropfen verbinden und herabfallen", explanation: "In Wolken sammeln sich winzige Wassertröpfchen. Werden sie zu schwer, fallen sie als Regen herunter."),
            ExerciseItem(id: UUID(), prompt: "Warum tragen viele Menschen im Winter eine Mütze?", options: ["Damit sie dunkler aussehen", "Damit es ihnen am Kopf nicht zu kalt wird", "Damit sie besser hören", "Damit sie schneller laufen"], correctAnswer: "Damit es ihnen am Kopf nicht zu kalt wird", explanation: "Eine Mütze hält die Körperwärme am Kopf und schützt vor Kälte."),
            ExerciseItem(id: UUID(), prompt: "Warum schwimmt ein Stück Holz auf dem Wasser?", options: ["Weil es schwerer ist als Wasser", "Weil es leichter ist als die gleiche Menge Wasser", "Weil es kälter ist als das Wasser", "Weil es grün ist"], correctAnswer: "Weil es leichter ist als die gleiche Menge Wasser", explanation: "Holz hat eine geringere Dichte als Wasser. Daher wird es vom Wasser getragen und geht nicht unter."),
            ExerciseItem(id: UUID(), prompt: "Warum sehen Sie bei einem Gewitter zuerst den Blitz und hören erst später den Donner?", options: ["Weil der Donner früher entsteht", "Weil der Blitz lauter ist", "Weil Licht viel schneller ist als Schall", "Weil man mit den Augen schneller denkt"], correctAnswer: "Weil Licht viel schneller ist als Schall", explanation: "Licht erreicht uns fast sofort, Schall dagegen nur mit etwa 340 m pro Sekunde. Darum kommt der Donner später."),
            ExerciseItem(id: UUID(), prompt: "Warum rostet ein Fahrrad, das lange draußen im Regen steht?", options: ["Weil das Eisen mit Sauerstoff und Feuchtigkeit reagiert", "Weil Regen Farbe enthält", "Weil das Metall müde wird", "Weil die Luft zu trocken ist"], correctAnswer: "Weil das Eisen mit Sauerstoff und Feuchtigkeit reagiert", explanation: "Eisen verbindet sich mit Sauerstoff, wenn es feucht ist. Dabei entsteht der rotbraune Rost."),
            ExerciseItem(id: UUID(), prompt: "Warum blinkt ein Auto, bevor es abbiegt?", options: ["Damit es schneller fährt", "Damit die Batterie geschont wird", "Damit die anderen die Richtung erkennen", "Damit man das Auto besser parken kann"], correctAnswer: "Damit die anderen die Richtung erkennen", explanation: "Der Blinker zeigt anderen Verkehrsteilnehmern an, in welche Richtung man fahren will. Das beugt Unfällen vor."),
            ExerciseItem(id: UUID(), prompt: "Warum gibt es Tag und Nacht?", options: ["Weil sich die Erde um ihre eigene Achse dreht", "Weil die Sonne um die Erde kreist", "Weil der Mond die Sonne verdeckt", "Weil die Wolken die Sonne wegschieben"], correctAnswer: "Weil sich die Erde um ihre eigene Achse dreht", explanation: "Durch die Drehung der Erde in 24 Stunden ist jede Stelle abwechselnd der Sonne zugewandt und von ihr abgewandt."),
            ExerciseItem(id: UUID(), prompt: "Warum schmilzt ein Eiswürfel in der Sonne?", options: ["Weil Wärme das Eis erwärmt und flüssig macht", "Weil das Licht Wasser anzieht", "Weil Eis Luft enthält", "Weil die Sonne Kälte verbraucht"], correctAnswer: "Weil Wärme das Eis erwärmt und flüssig macht", explanation: "Sobald das Eis über 0 °C erwärmt wird, wird es wieder zu Wasser."),
            ExerciseItem(id: UUID(), prompt: "Warum gießen Sie Blumen?", options: ["Damit sie lauter blühen", "Damit sie Wasser zum Leben und Wachsen haben", "Damit sie wärmer werden", "Damit sie schwerer werden"], correctAnswer: "Damit sie Wasser zum Leben und Wachsen haben", explanation: "Pflanzen brauchen Wasser, um Nährstoffe aufzunehmen und zu wachsen. Ohne Wasser vertrocknen sie."),
            ExerciseItem(id: UUID(), prompt: "Warum bleibt Milch im Kühlschrank länger frisch?", options: ["Weil die Kälte das Wachstum von Bakterien bremst", "Weil im Kühlschrank kein Licht ist", "Weil Milch gerne still liegt", "Weil der Kühlschrank die Milch süßer macht"], correctAnswer: "Weil die Kälte das Wachstum von Bakterien bremst", explanation: "Bakterien vermehren sich bei Kälte langsamer. So wird die Milch nicht so schnell sauer."),
            ExerciseItem(id: UUID(), prompt: "Warum streut man im Winter Salz auf vereiste Straßen?", options: ["Damit die Straße besser riecht", "Damit Autos leiser fahren", "Damit das Salz die Straße färbt", "Damit das Wasser erst bei tieferen Temperaturen gefriert"], correctAnswer: "Damit das Wasser erst bei tieferen Temperaturen gefriert", explanation: "Salz senkt den Gefrierpunkt von Wasser. Dadurch taut das Eis oder entsteht gar nicht erst."),
            ExerciseItem(id: UUID(), prompt: "Warum werfen viele Bäume im Herbst ihre Blätter ab?", options: ["Damit sie im Winter Wasser und Energie sparen", "Damit sie schneller wachsen", "Damit sie mehr Schatten werfen", "Damit sie lauter rauschen"], correctAnswer: "Damit sie im Winter Wasser und Energie sparen", explanation: "Im Winter gibt es wenig Licht, und der Boden ist oft gefroren. Ohne Blätter verliert der Baum weniger Wasser."),
            ExerciseItem(id: UUID(), prompt: "Warum müssen Sie weinen, wenn Sie eine Zwiebel schneiden?", options: ["Weil Zwiebeln kalt sind", "Weil Zwiebeln Staub enthalten", "Weil Zwiebeln Licht ausstrahlen", "Weil beim Schneiden Stoffe frei werden, die die Augen reizen"], correctAnswer: "Weil beim Schneiden Stoffe frei werden, die die Augen reizen", explanation: "Beim Schneiden entstehen schwefelhaltige Gase. Sie reizen die Augen, die dann Tränen bilden."),
            ExerciseItem(id: UUID(), prompt: "Warum sehen wir den Mond am Nachthimmel leuchten?", options: ["Weil er Sonnenlicht zurückwirft", "Weil er wie die Sonne brennt", "Weil er Strom erzeugt", "Weil er von der Erde angestrahlt wird"], correctAnswer: "Weil er Sonnenlicht zurückwirft", explanation: "Der Mond leuchtet nicht selbst. Er reflektiert das Licht der Sonne, und so sehen wir ihn.")
        ]
    )

    private static let whHow = Exercise(
        title: "Fragen mit „Wie“",
        instructions: "Wählen Sie die richtige Antwort auf die Frage.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "whHow",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wie kochen Sie ein hartes Frühstücksei?", options: ["Im kochenden Wasser einige Minuten garen", "In der Kühltruhe lagern", "Im Toaster erhitzen", "Mit Zucker bestreuen"], correctAnswer: "Im kochenden Wasser einige Minuten garen", explanation: "Ein Ei wird hart, wenn es etwa 8 bis 10 Minuten in kochendem Wasser gart."),
            ExerciseItem(id: UUID(), prompt: "Wie öffnen Sie eine abgeschlossene Wohnungstür?", options: ["Sie klopfen mit dem Schlüssel an die Wand", "Sie schütteln die Tür", "Sie stecken den Schlüssel ins Schloss und drehen ihn", "Sie rufen laut den Namen der Tür"], correctAnswer: "Sie stecken den Schlüssel ins Schloss und drehen ihn", explanation: "Ein Schlüssel passt ins Schloss. Beim Drehen entriegelt er den Riegel."),
            ExerciseItem(id: UUID(), prompt: "Wie machen Sie sich einen Tee mit einem Teebeutel?", options: ["Sie gießen heißes Wasser über den Beutel", "Sie legen den Beutel in den Kühlschrank", "Sie braten den Beutel in der Pfanne", "Sie schütten kalte Milch auf den Beutel und trinken sofort"], correctAnswer: "Sie gießen heißes Wasser über den Beutel", explanation: "Der Tee gibt Geschmack und Farbe an das heiße Wasser ab, wenn der Beutel einige Minuten darin zieht."),
            ExerciseItem(id: UUID(), prompt: "Wie verschicken Sie einen Brief mit der Post?", options: ["Sie werfen ihn ohne alles in den Mülleimer", "Sie kleben eine Briefmarke auf den Umschlag, schreiben die Adresse darauf und werfen ihn in den Briefkasten", "Sie legen ihn in den Backofen", "Sie hängen ihn an die Wäscheleine"], correctAnswer: "Sie kleben eine Briefmarke auf den Umschlag, schreiben die Adresse darauf und werfen ihn in den Briefkasten", explanation: "Ein Brief braucht eine Adresse und ein Porto, also eine Briefmarke. Dann kann die Post ihn zustellen."),
            ExerciseItem(id: UUID(), prompt: "Wie überqueren Sie eine Straße mit Fußgängerampel am sichersten?", options: ["Bei Rot schnell rennen", "Mit geschlossenen Augen gehen", "Mitten auf der Fahrbahn stehen bleiben", "Bei Grün gehen und vorher in beide Richtungen schauen"], correctAnswer: "Bei Grün gehen und vorher in beide Richtungen schauen", explanation: "Bei Grün dürfen Fußgänger gehen. Ein Blick nach links und rechts zeigt, ob wirklich alle Fahrzeuge halten."),
            ExerciseItem(id: UUID(), prompt: "Wie waschen Sie sich die Hände richtig?", options: ["Mit Wasser und Seife", "Mit Sand und Öl", "Mit Mehl", "Mit trockenem Papier"], correctAnswer: "Mit Wasser und Seife", explanation: "Seife löst Fett und Schmutz von der Haut, das Wasser spült alles ab."),
            ExerciseItem(id: UUID(), prompt: "Wie rufen Sie mit dem Telefon eine Freundin an?", options: ["Sie schreiben die Nummer auf einen Zettel und werfen ihn weg", "Sie wählen ihre Nummer und warten, bis sie abnimmt", "Sie legen das Telefon in den Schrank", "Sie halten das Telefon ins Wasser"], correctAnswer: "Sie wählen ihre Nummer und warten, bis sie abnimmt", explanation: "Mit der Nummer wird die Verbindung hergestellt. Sobald die Freundin abnimmt, können Sie sprechen."),
            ExerciseItem(id: UUID(), prompt: "Wie bringen Sie Wasser zum Kochen?", options: ["Sie stellen es ins Eisfach", "Sie erhitzen es auf dem Herd oder im Wasserkocher", "Sie rühren es mit einem Löffel um", "Sie stellen es in den Schatten"], correctAnswer: "Sie erhitzen es auf dem Herd oder im Wasserkocher", explanation: "Wasser kocht bei etwa 100 °C. Dazu muss man es kräftig erhitzen."),
            ExerciseItem(id: UUID(), prompt: "Wie lüften Sie ein Zimmer am besten?", options: ["Sie schließen alle Fenster", "Sie öffnen die Fenster kurz ganz weit", "Sie decken das Zimmer mit einem Tuch zu", "Sie schalten das Licht aus"], correctAnswer: "Sie öffnen die Fenster kurz ganz weit", explanation: "Beim kurzen Stoßlüften tauscht sich die Luft schnell aus, ohne dass die Wände stark auskühlen."),
            ExerciseItem(id: UUID(), prompt: "Wie spülen Sie von Hand schmutziges Geschirr sauber?", options: ["Mit warmem Wasser und Spülmittel", "Mit trockenem Sand", "Mit kalter Luft", "Mit Zucker"], correctAnswer: "Mit warmem Wasser und Spülmittel", explanation: "Spülmittel löst Fett und Essensreste, und warmes Wasser unterstützt das Reinigen."),
            ExerciseItem(id: UUID(), prompt: "Wie können Sie im Geschäft bezahlen, wenn Sie kein Bargeld dabeihaben?", options: ["Mit einem Schlüssel", "Mit einem Regenschirm", "Mit einer Bankkarte", "Mit einer Zeitung"], correctAnswer: "Mit einer Bankkarte", explanation: "Mit einer Bankkarte kann man an der Kasse bargeldlos bezahlen."),
            ExerciseItem(id: UUID(), prompt: "Wie kommen Sie in einem Haus in den dritten Stock, wenn es einen Aufzug gibt?", options: ["Mit dem Aufzug oder über die Treppe", "Mit dem Fahrrad durch den Flur", "Mit dem Wasserhahn", "Mit dem Kochtopf"], correctAnswer: "Mit dem Aufzug oder über die Treppe", explanation: "Treppen und Aufzüge verbinden die Stockwerke eines Hauses."),
            ExerciseItem(id: UUID(), prompt: "Wie pflanzen Sie Blumensamen im Garten?", options: ["In die Erde stecken und gießen", "In den Kühlschrank legen", "Auf das Dach werfen", "In Zucker kochen"], correctAnswer: "In die Erde stecken und gießen", explanation: "Samen brauchen Erde, Wasser und Wärme, um zu keimen."),
            ExerciseItem(id: UUID(), prompt: "Wie messen Sie die Länge eines Tisches?", options: ["Mit einem Thermometer", "Mit einem Maßband", "Mit einer Uhr", "Mit einer Waage"], correctAnswer: "Mit einem Maßband", explanation: "Ein Maßband oder Zollstock zeigt Längen in cm und m an."),
            ExerciseItem(id: UUID(), prompt: "Wie stellen Sie einen Wecker, damit er Sie um 7:00 Uhr weckt?", options: ["Sie stellen die Weckzeit auf 7:00 Uhr ein", "Sie schütteln den Wecker", "Sie legen den Wecker ins Wasser", "Sie drehen ihn auf den Kopf"], correctAnswer: "Sie stellen die Weckzeit auf 7:00 Uhr ein", explanation: "Der Wecker klingelt zu der Uhrzeit, die Sie eingestellt haben."),
            ExerciseItem(id: UUID(), prompt: "Wie machen Sie Filterkaffee?", options: ["Sie kochen Kaffeepulver in kaltem Wasser", "Sie geben Kaffeepulver in einen Filter und gießen heißes Wasser darüber", "Sie legen Bohnen in den Gefrierschrank", "Sie braten Kaffee mit Eiern"], correctAnswer: "Sie geben Kaffeepulver in einen Filter und gießen heißes Wasser darüber", explanation: "Das heiße Wasser läuft durch das Pulver, nimmt Aroma auf und tropft als Kaffee in die Kanne."),
            ExerciseItem(id: UUID(), prompt: "Wie waschen Sie Ihre Wäsche in der Waschmaschine?", options: ["Mit Waschmittel, Wasser und dem passenden Waschprogramm", "Nur mit trockener Luft", "Mit Sand und Steinen", "Mit Zucker und Salz"], correctAnswer: "Mit Waschmittel, Wasser und dem passenden Waschprogramm", explanation: "Waschmittel löst den Schmutz im Wasser, und das Programm steuert Temperatur und Dauer."),
            ExerciseItem(id: UUID(), prompt: "Wie schalten Sie in einem Zimmer das Licht an?", options: ["Sie drücken den Lichtschalter", "Sie klopfen an die Decke", "Sie öffnen den Kühlschrank", "Sie drehen den Wasserhahn auf"], correctAnswer: "Sie drücken den Lichtschalter", explanation: "Der Schalter schließt den Stromkreis, und die Lampe leuchtet."),
            ExerciseItem(id: UUID(), prompt: "Wie verpacken Sie ein Geschenk?", options: ["Sie wickeln Geschenkpapier darum und kleben es zu", "Sie tauchen es in Wasser", "Sie legen es in den Ofen", "Sie schneiden es in Stücke"], correctAnswer: "Sie wickeln Geschenkpapier darum und kleben es zu", explanation: "Geschenkpapier verdeckt das Geschenk, und Klebeband oder ein Band hält es zusammen."),
            ExerciseItem(id: UUID(), prompt: "Wie kann man mit einem Auto einen breiten Fluss überqueren, wenn es dort keine Brücke gibt?", options: ["Mit einer Rolltreppe", "Mit einem Aufzug", "Mit einem Skateboard", "Mit einer Fähre"], correctAnswer: "Mit einer Fähre", explanation: "Eine Fähre ist ein Schiff, das Autos und Menschen von einem Ufer zum anderen bringt.")
        ]
    )

    private static let yesNo = Exercise(
        title: "Ja oder Nein",
        instructions: "Beantworten Sie die Frage mit Ja oder Nein.",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "yesNo",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Hat eine Woche sieben Tage?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Eine Woche besteht aus Montag bis Sonntag, das sind sieben Tage."),
            ExerciseItem(id: UUID(), prompt: "Ist eine Tomate ein Tier?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Die Tomate ist eine Pflanze, genauer eine Frucht, die an Pflanzen wächst."),
            ExerciseItem(id: UUID(), prompt: "Schwimmt Eis auf Wasser?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Gefrorenes Wasser ist etwas leichter als flüssiges Wasser. Deshalb schwimmt Eis oben."),
            ExerciseItem(id: UUID(), prompt: "Können Pinguine fliegen?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Pinguine sind Vögel, aber ihre Flügel sind zu Flossen geworden. Sie schwimmen sehr gut, fliegen aber nicht."),
            ExerciseItem(id: UUID(), prompt: "Ist die Zugspitze ein Berg?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Die Zugspitze ist der höchste Berg Deutschlands."),
            ExerciseItem(id: UUID(), prompt: "Liegt die Stadt Hamburg in den Alpen?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Hamburg liegt im Norden Deutschlands an der Elbe. Die Alpen sind im Süden."),
            ExerciseItem(id: UUID(), prompt: "Hat ein Dreieck drei Ecken?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Schon der Name sagt es: Ein Dreieck hat drei Ecken und drei Seiten."),
            ExerciseItem(id: UUID(), prompt: "Hat ein Fahrrad drei Räder?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Ein Fahrrad hat zwei Räder. Ein Dreirad hat drei."),
            ExerciseItem(id: UUID(), prompt: "Ist der Rhein ein Fluss?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Der Rhein ist einer der größten Flüsse Europas und fließt auch durch Deutschland."),
            ExerciseItem(id: UUID(), prompt: "Ist frische Milch blau?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Frische Milch ist weiß. Eine blaue Farbe hat sie nicht."),
            ExerciseItem(id: UUID(), prompt: "Backt man Brot im Backofen?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Brotteig wird im heißen Backofen gebacken."),
            ExerciseItem(id: UUID(), prompt: "Ist der Mond größer als die Erde?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Der Mond ist viel kleiner als die Erde. Sein Durchmesser beträgt nur etwa ein Viertel des Erddurchmessers."),
            ExerciseItem(id: UUID(), prompt: "Haben Spinnen acht Beine?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Spinnen haben acht Beine. Insekten haben sechs."),
            ExerciseItem(id: UUID(), prompt: "Ist Schnee warm?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Schnee besteht aus gefrorenem Wasser und ist kalt."),
            ExerciseItem(id: UUID(), prompt: "Geht die Sonne im Osten auf?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Die Erde dreht sich so, dass die Sonne im Osten aufgeht und im Westen untergeht."),
            ExerciseItem(id: UUID(), prompt: "Hat ein Quadrat fünf Seiten?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Ein Quadrat hat vier gleich lange Seiten. Eine Figur mit fünf Seiten heißt Fünfeck."),
            ExerciseItem(id: UUID(), prompt: "Ist Berlin die Hauptstadt von Deutschland?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Berlin ist die Hauptstadt Deutschlands und zugleich eine Stadt, die ein eigenes Bundesland bildet."),
            ExerciseItem(id: UUID(), prompt: "Ist Wien die Hauptstadt von Deutschland?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Wien ist die Hauptstadt von Österreich. Die Hauptstadt Deutschlands ist Berlin."),
            ExerciseItem(id: UUID(), prompt: "Hat ein Jahr zwölf Monate?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Ein Jahr hat zwölf Monate, vom Januar bis zum Dezember."),
            ExerciseItem(id: UUID(), prompt: "Fließt die Elbe durch Hamburg?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Die Elbe fließt durch Dresden und Hamburg und mündet dann in die Nordsee.")
        ]
    )

    private static let generalKnowledgeHistory = Exercise(
        title: "Geschichte",
        instructions: "Wählen Sie die richtige Antwort.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "generalKnowledgeHistory",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wer erfand im 15. Jahrhundert in Mainz den Buchdruck mit beweglichen Lettern?", options: ["Martin Luther", "Johann Sebastian Bach", "Johannes Gutenberg", "Johann Wolfgang von Goethe"], correctAnswer: "Johannes Gutenberg", explanation: "Gutenberg entwickelte in Mainz den Druck mit einzelnen, beweglichen Metallbuchstaben. Damit wurden Bücher viel billiger."),
            ExerciseItem(id: UUID(), prompt: "In welchem Jahr fiel die Berliner Mauer?", options: ["1961", "1945", "1989", "1975"], correctAnswer: "1989", explanation: "Am 9. November 1989 wurden die Grenzübergänge in Berlin geöffnet. 1961 war das Jahr, in dem die Mauer gebaut wurde."),
            ExerciseItem(id: UUID(), prompt: "Welcher Theologe veröffentlichte 1517 seine 95 Thesen und löste damit die Reformation aus?", options: ["Karl der Große", "Otto von Bismarck", "Johannes Gutenberg", "Martin Luther"], correctAnswer: "Martin Luther", explanation: "Martin Luther kritisierte 1517 den Ablasshandel der Kirche. Seine Thesen gelten als Beginn der Reformation."),
            ExerciseItem(id: UUID(), prompt: "Wer wurde im Jahr 800 zum Kaiser gekrönt?", options: ["Friedrich der Große", "Karl der Große", "Otto von Bismarck", "Napoleon"], correctAnswer: "Karl der Große", explanation: "Karl der Große wurde am Weihnachtstag des Jahres 800 in Rom zum Kaiser gekrönt."),
            ExerciseItem(id: UUID(), prompt: "In welchem Jahr endete der Zweite Weltkrieg in Europa?", options: ["1918", "1939", "1949", "1945"], correctAnswer: "1945", explanation: "Im Mai 1945 kapitulierte Deutschland, und damit endete der Krieg in Europa."),
            ExerciseItem(id: UUID(), prompt: "Wie heißt der römische Grenzwall, der durch Teile des heutigen Deutschlands verlief?", options: ["Limes", "Atlantikwall", "Chinesische Mauer", "Berliner Mauer"], correctAnswer: "Limes", explanation: "Der Limes sicherte die Grenze des Römischen Reiches. Er verlief vom Rhein bis zur Donau."),
            ExerciseItem(id: UUID(), prompt: "Unter welchem Kanzler wurde 1871 das Deutsche Kaiserreich gegründet?", options: ["Otto von Bismarck", "Martin Luther", "Karl der Große", "Friedrich der Große"], correctAnswer: "Otto von Bismarck", explanation: "Bismarck war preußischer Ministerpräsident und wurde der erste Reichskanzler des Deutschen Kaiserreichs."),
            ExerciseItem(id: UUID(), prompt: "Welcher Krieg endete 1648 mit dem Westfälischen Frieden?", options: ["Der Siebenjährige Krieg", "Der Erste Weltkrieg", "Der Hundertjährige Krieg", "Der Dreißigjährige Krieg"], correctAnswer: "Der Dreißigjährige Krieg", explanation: "Der Dreißigjährige Krieg dauerte von 1618 bis 1648 und wurde durch den Westfälischen Frieden beendet."),
            ExerciseItem(id: UUID(), prompt: "Welcher preußische König wird auch „der Alte Fritz“ genannt?", options: ["Karl der Große", "Friedrich der Große", "Ludwig XIV.", "Otto der Große"], correctAnswer: "Friedrich der Große", explanation: "Friedrich II. von Preußen regierte im 18. Jahrhundert. Das Volk nannte ihn liebevoll den Alten Fritz."),
            ExerciseItem(id: UUID(), prompt: "Was war die Hanse im Mittelalter?", options: ["Ein Handelsbund norddeutscher Städte", "Ein Ritterorden", "Eine Universität", "Ein Fürstenhof in Bayern"], correctAnswer: "Ein Handelsbund norddeutscher Städte", explanation: "Die Hanse war ein Bund von Kaufleuten und Städten, vor allem an Nord- und Ostsee. Lübeck und Hamburg gehörten dazu."),
            ExerciseItem(id: UUID(), prompt: "In welchem Jahr begann der Erste Weltkrieg?", options: ["1870", "1939", "1848", "1914"], correctAnswer: "1914", explanation: "Der Erste Weltkrieg begann im Sommer 1914 und endete 1918."),
            ExerciseItem(id: UUID(), prompt: "Wer wurde 1815 in der Schlacht bei Waterloo endgültig besiegt?", options: ["Napoleon", "Bismarck", "Karl der Große", "Luther"], correctAnswer: "Napoleon", explanation: "Bei Waterloo in Belgien wurde Napoleon von britischen und preußischen Truppen geschlagen. Danach endete seine Herrschaft."),
            ExerciseItem(id: UUID(), prompt: "Welche Seuche wütete im 14. Jahrhundert in Europa und wird auch „Schwarzer Tod“ genannt?", options: ["Die Pocken", "Die Cholera", "Die Pest", "Die Grippe"], correctAnswer: "Die Pest", explanation: "Der Schwarze Tod war eine große Pestwelle um 1350, der Millionen Menschen in Europa zum Opfer fielen."),
            ExerciseItem(id: UUID(), prompt: "Welcher bayerische König ließ Schloss Neuschwanstein bauen?", options: ["Ludwig II.", "Friedrich der Große", "Karl der Große", "Otto von Bismarck"], correctAnswer: "Ludwig II.", explanation: "Ludwig II. von Bayern ließ ab 1869 das Märchenschloss Neuschwanstein errichten."),
            ExerciseItem(id: UUID(), prompt: "Wie wird Kaiserin Elisabeth von Österreich-Ungarn meist genannt?", options: ["Sisi", "Gretel", "Lotte", "Heidi"], correctAnswer: "Sisi", explanation: "Elisabeth von Österreich-Ungarn wurde in der Familie und später auch in der Öffentlichkeit Sisi genannt.")
        ]
    )

    private static let generalKnowledgeLocations = Exercise(
        title: "Orte und Landkarte",
        instructions: "Wählen Sie die richtige Antwort.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "generalKnowledgeLocations",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wie heißt die Hauptstadt Deutschlands?", options: ["München", "Berlin", "Hamburg", "Köln"], correctAnswer: "Berlin", explanation: "Berlin ist die Hauptstadt und zugleich die größte Stadt Deutschlands."),
            ExerciseItem(id: UUID(), prompt: "Welcher Fluss fließt durch Köln?", options: ["Die Elbe", "Die Donau", "Die Isar", "Der Rhein"], correctAnswer: "Der Rhein", explanation: "Köln liegt am Rhein. Auch der Kölner Dom steht in Ufernähe."),
            ExerciseItem(id: UUID(), prompt: "Wie heißt der höchste Berg Deutschlands?", options: ["Der Brocken", "Der Feldberg", "Die Zugspitze", "Der Watzmann"], correctAnswer: "Die Zugspitze", explanation: "Die Zugspitze ist mit rund 2.960 m der höchste Berg Deutschlands. Brocken und Feldberg sind deutlich niedriger."),
            ExerciseItem(id: UUID(), prompt: "Welcher See grenzt an Deutschland, Österreich und die Schweiz?", options: ["Der Bodensee", "Die Müritz", "Der Chiemsee", "Der Starnberger See"], correctAnswer: "Der Bodensee", explanation: "Am Bodensee treffen die drei Länder Deutschland, Österreich und die Schweiz zusammen."),
            ExerciseItem(id: UUID(), prompt: "Welches Nachbarland liegt nördlich von Deutschland?", options: ["Italien", "Polen", "Österreich", "Dänemark"], correctAnswer: "Dänemark", explanation: "Dänemark grenzt im Norden an Schleswig-Holstein."),
            ExerciseItem(id: UUID(), prompt: "Welche dieser Städte liegt an der Elbe?", options: ["Dresden", "München", "Köln", "Stuttgart"], correctAnswer: "Dresden", explanation: "Dresden liegt an der Elbe. München liegt an der Isar, Köln am Rhein, Stuttgart am Neckar."),
            ExerciseItem(id: UUID(), prompt: "Wie heißt die Hauptstadt von Bayern?", options: ["Nürnberg", "Augsburg", "München", "Regensburg"], correctAnswer: "München", explanation: "München ist die Landeshauptstadt und zugleich die größte Stadt Bayerns."),
            ExerciseItem(id: UUID(), prompt: "Welches dieser Bundesländer ist ein Stadtstaat?", options: ["Sachsen", "Hessen", "Thüringen", "Bremen"], correctAnswer: "Bremen", explanation: "Bremen besteht aus den Städten Bremen und Bremerhaven und ist ein eigenes Bundesland."),
            ExerciseItem(id: UUID(), prompt: "Wie heißt das große Gebirge im Süden Deutschlands, an der Grenze zu Österreich?", options: ["Der Harz", "Der Schwarzwald", "Die Alpen", "Das Erzgebirge"], correctAnswer: "Die Alpen", explanation: "Die Alpen sind das höchste Gebirge Europas. In Deutschland liegen sie ganz im Süden."),
            ExerciseItem(id: UUID(), prompt: "Welches dieser Länder grenzt an Deutschland?", options: ["Spanien", "Frankreich", "Italien", "Ungarn"], correctAnswer: "Frankreich", explanation: "Frankreich grenzt im Westen an Deutschland. Spanien, Italien und Ungarn haben keine gemeinsame Grenze mit Deutschland."),
            ExerciseItem(id: UUID(), prompt: "Welche ist die größte deutsche Insel?", options: ["Sylt", "Rügen", "Helgoland", "Usedom"], correctAnswer: "Rügen", explanation: "Rügen in der Ostsee ist mit rund 930 km² die größte Insel Deutschlands."),
            ExerciseItem(id: UUID(), prompt: "Wie heißt die Hauptstadt von Österreich?", options: ["Salzburg", "Graz", "Innsbruck", "Wien"], correctAnswer: "Wien", explanation: "Wien ist die Hauptstadt und größte Stadt Österreichs."),
            ExerciseItem(id: UUID(), prompt: "In welcher Stadt steht das Brandenburger Tor?", options: ["In Berlin", "In Hamburg", "In Dresden", "In München"], correctAnswer: "In Berlin", explanation: "Das Brandenburger Tor ist ein Wahrzeichen im Zentrum von Berlin."),
            ExerciseItem(id: UUID(), prompt: "In welchem Bundesland liegt der größte Teil des Schwarzwaldes?", options: ["In Schleswig-Holstein", "In Brandenburg", "In Mecklenburg-Vorpommern", "In Baden-Württemberg"], correctAnswer: "In Baden-Württemberg", explanation: "Der Schwarzwald liegt im Südwesten Deutschlands, fast ganz in Baden-Württemberg."),
            ExerciseItem(id: UUID(), prompt: "Welches Meer liegt im Norden von Deutschland?", options: ["Das Mittelmeer", "Die Adria", "Das Schwarze Meer", "Die Nordsee"], correctAnswer: "Die Nordsee", explanation: "Im Norden hat Deutschland Küsten an der Nordsee und an der Ostsee. Das Mittelmeer, die Adria und das Schwarze Meer liegen weit entfernt im Süden und Südosten.")
        ]
    )

    private static let generalKnowledgePopularMedia = Exercise(
        title: "Kultur und Geschichten",
        instructions: "Wählen Sie die richtige Antwort.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "generalKnowledgePopularMedia",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wer schrieb das Drama „Faust“?", options: ["Johann Wolfgang von Goethe", "Friedrich Schiller", "Wilhelm Busch", "Heinrich Heine"], correctAnswer: "Johann Wolfgang von Goethe", explanation: "Goethe arbeitete viele Jahrzehnte an „Faust“. Es ist eines der bekanntesten Werke der deutschen Literatur."),
            ExerciseItem(id: UUID(), prompt: "Wer komponierte das Klavierstück „Für Elise“?", options: ["Johann Sebastian Bach", "Ludwig van Beethoven", "Wolfgang Amadeus Mozart", "Richard Wagner"], correctAnswer: "Ludwig van Beethoven", explanation: "„Für Elise“ ist ein berühmtes kleines Klavierstück von Ludwig van Beethoven."),
            ExerciseItem(id: UUID(), prompt: "Welche Brüder sammelten im 19. Jahrhundert deutsche Märchen?", options: ["Die Brüder Grimm", "Die Gebrüder Wright", "Die Brüder Humboldt", "Die Brüder Mann"], correctAnswer: "Die Brüder Grimm", explanation: "Jacob und Wilhelm Grimm schrieben Märchen wie Schneewittchen und Aschenputtel auf. Sie erschienen in den „Kinder- und Hausmärchen“."),
            ExerciseItem(id: UUID(), prompt: "Welches Mädchen besucht im Märchen die Großmutter und trifft im Wald den Wolf?", options: ["Aschenputtel", "Dornröschen", "Rotkäppchen", "Gretel"], correctAnswer: "Rotkäppchen", explanation: "Rotkäppchen bringt ihrer kranken Großmutter Kuchen und Wein. Im Wald trifft sie den Wolf."),
            ExerciseItem(id: UUID(), prompt: "Wer komponierte die Oper „Die Zauberflöte“?", options: ["Ludwig van Beethoven", "Franz Schubert", "Johannes Brahms", "Wolfgang Amadeus Mozart"], correctAnswer: "Wolfgang Amadeus Mozart", explanation: "Mozart schrieb „Die Zauberflöte“ kurz vor seinem Tod im Jahr 1791."),
            ExerciseItem(id: UUID(), prompt: "In welchem Gebirge spielt die Geschichte von Heidi?", options: ["In den Alpen", "Im Harz", "Im Schwarzwald", "In den Pyrenäen"], correctAnswer: "In den Alpen", explanation: "Heidi lebt bei ihrem Großvater, dem Almöhi, in den Schweizer Alpen."),
            ExerciseItem(id: UUID(), prompt: "Wie heißt das berühmte Kinderbuch über einen Jungen mit sehr langen Haaren und Fingernägeln?", options: ["Der Struwwelpeter", "Pinocchio", "Pu der Bär", "Die kleine Hexe"], correctAnswer: "Der Struwwelpeter", explanation: "Der Struwwelpeter ist ein Bilderbuch mit Reimgeschichten von Heinrich Hoffmann aus dem Jahr 1845."),
            ExerciseItem(id: UUID(), prompt: "Wer schrieb und zeichnete die Bildergeschichte „Max und Moritz“?", options: ["Wilhelm Busch", "Heinrich Hoffmann", "Wilhelm Hauff", "Erich Kästner"], correctAnswer: "Wilhelm Busch", explanation: "Wilhelm Busch veröffentlichte „Max und Moritz“ 1865 als Bildergeschichte in sieben Streichen."),
            ExerciseItem(id: UUID(), prompt: "Welcher Komponist war lange Zeit Thomaskantor in Leipzig?", options: ["Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Ludwig van Beethoven", "Richard Strauss"], correctAnswer: "Johann Sebastian Bach", explanation: "Bach leitete von 1723 bis zu seinem Tod 1750 den Thomanerchor in Leipzig."),
            ExerciseItem(id: UUID(), prompt: "Woraus besteht im Märchen „Hänsel und Gretel“ das Haus der Hexe?", options: ["Aus Lebkuchen und Zucker", "Aus Ziegelsteinen", "Aus Glas", "Aus Eisen"], correctAnswer: "Aus Lebkuchen und Zucker", explanation: "Im Märchen ist das Haus aus Brot, Kuchen und Zucker gebaut; bekannt ist es heute als Lebkuchenhaus mit Zuckerguss. Deshalb locken die Süßigkeiten die hungrigen Kinder an."),
            ExerciseItem(id: UUID(), prompt: "Wer schrieb das Schauspiel „Wilhelm Tell“?", options: ["Friedrich Schiller", "Wilhelm Busch", "Theodor Fontane", "Thomas Mann"], correctAnswer: "Friedrich Schiller", explanation: "Friedrich Schiller verfasste „Wilhelm Tell“ im Jahr 1804. Es handelt vom Freiheitskampf der Schweizer."),
            ExerciseItem(id: UUID(), prompt: "In welchem Land entstand das Weihnachtslied „Stille Nacht, heilige Nacht“?", options: ["In Österreich", "In Frankreich", "In Spanien", "In Italien"], correctAnswer: "In Österreich", explanation: "Das Lied wurde 1818 in Oberndorf bei Salzburg zum ersten Mal gesungen."),
            ExerciseItem(id: UUID(), prompt: "Wer drehte den berühmten Stummfilm „Metropolis“ von 1927?", options: ["Fritz Lang", "Walt Disney", "Charlie Chaplin", "Alfred Hitchcock"], correctAnswer: "Fritz Lang", explanation: "Der Regisseur Fritz Lang drehte „Metropolis“ in Deutschland. Der Film gilt als Klassiker der Stummfilmzeit."),
            ExerciseItem(id: UUID(), prompt: "In welcher Stadt spielt die Sage vom Rattenfänger?", options: ["Hameln", "Bremen", "Hamburg", "Dresden"], correctAnswer: "Hameln", explanation: "Der Rattenfänger von Hameln soll im Jahr 1284 die Ratten und später die Kinder der Stadt weggelockt haben."),
            ExerciseItem(id: UUID(), prompt: "In welchem Märchen kommen sieben Zwerge vor?", options: ["Schneewittchen", "Rapunzel", "Frau Holle", "Der gestiefelte Kater"], correctAnswer: "Schneewittchen", explanation: "Schneewittchen findet im Wald das Häuschen der sieben Zwerge und lebt dort eine Weile.")
        ]
    )

    private static let idioms = Exercise(
        title: "Redewendungen",
        instructions: "Erklären Sie mit eigenen Worten, was die Redewendung bedeutet.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "idioms",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "„Die Spende ist nur ein Tropfen auf den heißen Stein.“", options: [], correctAnswer: "Sie ist viel zu wenig und hilft kaum, das Problem zu lösen.", explanation: "Ein Wassertropfen verdampft auf einem heißen Stein sofort. So bleibt auch ein kleiner Beitrag fast wirkungslos."),
            ExerciseItem(id: UUID(), prompt: "„Du hast wohl Tomaten auf den Augen!“", options: [], correctAnswer: "Man übersieht etwas, das offensichtlich ist.", explanation: "Man sagt es, wenn jemand etwas nicht bemerkt, das direkt vor ihm liegt. Es ist eine freundlich-spöttische Bemerkung."),
            ExerciseItem(id: UUID(), prompt: "„Beim Stadtfest steppt der Bär.“", options: [], correctAnswer: "Es ist viel los, und es wird kräftig gefeiert.", explanation: "Die Wendung beschreibt eine Veranstaltung, bei der viel los ist und ausgelassen gefeiert wird. Man sagt sie umgangssprachlich für lebhafte Feste."),
            ExerciseItem(id: UUID(), prompt: "„Bei der Erklärung habe ich nur Bahnhof verstanden.“", options: [], correctAnswer: "Ich habe gar nichts verstanden.", explanation: "Wer „nur Bahnhof“ versteht, kann der Erklärung nicht folgen. Man sagt es umgangssprachlich, wenn man etwas gar nicht begreift."),
            ExerciseItem(id: UUID(), prompt: "„Der Lärm geht mir auf die Nerven.“", options: [], correctAnswer: "Der Lärm stört und ärgert mich sehr.", explanation: "Die Nerven stehen hier für die Belastbarkeit. Wer genervt ist, kann Reize nicht mehr gut ertragen."),
            ExerciseItem(id: UUID(), prompt: "„Mit dieser Bemerkung haben Sie den Nagel auf den Kopf getroffen.“", options: [], correctAnswer: "Sie haben genau das Richtige gesagt.", explanation: "Wer einen Nagel genau auf den Kopf trifft, schlägt ihn sauber ein. Im übertragenen Sinn trifft man den Kern einer Sache."),
            ExerciseItem(id: UUID(), prompt: "„Ich drücke Ihnen für die Prüfung die Daumen.“", options: [], correctAnswer: "Ich wünsche Ihnen viel Glück.", explanation: "Man sagt es, um jemandem für ein wichtiges Vorhaben Glück zu wünschen. Dazu gehört oft die Geste, die Daumen in die Fäuste zu legen."),
            ExerciseItem(id: UUID(), prompt: "„Welches Kleid ich anziehe, ist mir Wurst.“", options: [], correctAnswer: "Es ist mir egal.", explanation: "Man sagt „Das ist mir Wurst“, wenn einem etwas gleichgültig ist. Die Wendung ist umgangssprachlich und klingt eher salopp."),
            ExerciseItem(id: UUID(), prompt: "„Heute ist er wohl mit dem falschen Fuß aufgestanden.“", options: [], correctAnswer: "Er hat schlechte Laune.", explanation: "Man sagt es von jemandem, der ohne erkennbaren Grund schlecht gelaunt ist oder gereizt reagiert. Die Wendung klingt eher scherzhaft."),
            ExerciseItem(id: UUID(), prompt: "„Dem Firmenchef steht das Wasser bis zum Hals.“", options: [], correctAnswer: "Er steckt in großen Schwierigkeiten, meist finanziell.", explanation: "Das Bild zeigt jemanden, der fast im Wasser untergeht. Es beschreibt eine bedrohliche Notlage."),
            ExerciseItem(id: UUID(), prompt: "„Du willst mir doch nur einen Bären aufbinden!“", options: [], correctAnswer: "Du willst mir etwas Unwahres erzählen.", explanation: "Die Wendung bedeutet, jemanden zu täuschen oder ihm etwas weiszumachen. Man sagt sie, wenn man einer Geschichte nicht glaubt."),
            ExerciseItem(id: UUID(), prompt: "„Um den Streit müssen wir uns nicht kümmern, das ist nicht unser Bier.“", options: [], correctAnswer: "Es geht uns nichts an.", explanation: "Mit „nicht mein Bier“ oder „nicht unser Bier“ sagt man, dass etwas nicht die eigene Sache ist."),
            ExerciseItem(id: UUID(), prompt: "„Wenn wir den ganzen Plan verwerfen, schütten wir das Kind mit dem Bade aus.“", options: [], correctAnswer: "Man wirft Gutes zusammen mit Schlechtem weg.", explanation: "Die Wendung warnt davor, bei einer Entscheidung auch das Gute zu verwerfen. Man sagt sie, wenn jemand beim Aufräumen oder Ändern zu weit geht."),
            ExerciseItem(id: UUID(), prompt: "„Ich kaufe doch nicht die Katze im Sack!“", options: [], correctAnswer: "Ich kaufe nichts, was ich nicht vorher geprüft habe.", explanation: "Die Wendung bedeutet, etwas zu kaufen oder zuzusagen, ohne es vorher geprüft zu haben. Man warnt damit vor voreiligen Entscheidungen."),
            ExerciseItem(id: UUID(), prompt: "„Die grünen Vorhänge passen zu dem Sofa wie die Faust aufs Auge.“", options: [], correctAnswer: "Sie passen überhaupt nicht zusammen.", explanation: "Eine Faust, die auf das Auge trifft, passt gar nicht. Man verwendet die Wendung für Dinge, die nicht zusammenpassen.")
        ]
    )

    private static let estimationAndLogic = Exercise(
        title: "Schätzen und Rechnen",
        instructions: "Wählen Sie die richtige Antwort.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "estimationAndLogic",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Eine Packung Milch kostet 1,20 €. Sie kaufen 3 Packungen. Wie viel bezahlen Sie?", options: ["3,00 €", "3,20 €", "3,60 €", "4,20 €"], correctAnswer: "3,60 €", explanation: "Dreimal 1,20 € ergibt 3 × 1,20 € = 3,60 €."),
            ExerciseItem(id: UUID(), prompt: "Wie viele Milliliter hat ein Liter?", options: ["10 ml", "100 ml", "1.000 ml", "10.000 ml"], correctAnswer: "1.000 ml", explanation: "Die Vorsilbe Milli bedeutet tausendstel, daher entspricht 1 l genau 1.000 ml."),
            ExerciseItem(id: UUID(), prompt: "Ein Film dauert 1 Stunde und 30 Minuten. Wie viele Minuten sind das?", options: ["90 Minuten", "130 Minuten", "100 Minuten", "150 Minuten"], correctAnswer: "90 Minuten", explanation: "1 Stunde sind 60 Minuten, dazu kommen 30 Minuten: 60 + 30 = 90."),
            ExerciseItem(id: UUID(), prompt: "Wie viel wiegt ein mittelgroßer Apfel etwa?", options: ["15 g", "150 g", "1,2 kg", "15 kg"], correctAnswer: "150 g", explanation: "Ein mittelgroßer Apfel wiegt ungefähr 150 g. 15 g wären viel zu leicht, 1,2 kg viel zu schwer."),
            ExerciseItem(id: UUID(), prompt: "Wie lang ist ein Fußballfeld ungefähr?", options: ["Etwa 10 m", "Etwa 100 m", "Etwa 1 km", "Etwa 10 km"], correctAnswer: "Etwa 100 m", explanation: "Ein Fußballfeld ist etwa 100 bis 110 m lang."),
            ExerciseItem(id: UUID(), prompt: "Bei wie viel °C kocht Wasser normalerweise?", options: ["100 °C", "50 °C", "0 °C", "200 °C"], correctAnswer: "100 °C", explanation: "Auf Meereshöhe kocht Wasser bei 100 °C. Bei 0 °C gefriert es."),
            ExerciseItem(id: UUID(), prompt: "Wie viele Wochen hat ein Jahr ungefähr?", options: ["12", "30", "52", "100"], correctAnswer: "52", explanation: "Ein Jahr hat 365 Tage. 365 geteilt durch 7 ergibt ungefähr 52 Wochen."),
            ExerciseItem(id: UUID(), prompt: "Ein Brötchen kostet 0,50 €. Sie kaufen 6 Brötchen. Wie viel bezahlen Sie?", options: ["2,50 €", "3,00 €", "3,50 €", "6,50 €"], correctAnswer: "3,00 €", explanation: "Sechs Brötchen zu je 0,50 € kosten 6 × 0,50 € = 3,00 €."),
            ExerciseItem(id: UUID(), prompt: "Sie kaufen Waren für 7,40 € und zahlen mit einem 10-Euro-Schein. Wie viel Wechselgeld bekommen Sie?", options: ["3,40 €", "2,40 €", "2,60 €", "3,60 €"], correctAnswer: "2,60 €", explanation: "Vom gezahlten Betrag zieht man den Preis ab: 10,00 € - 7,40 € = 2,60 € Wechselgeld."),
            ExerciseItem(id: UUID(), prompt: "Wie viele Gramm hat ein Kilogramm?", options: ["10 g", "100 g", "1.000 g", "10.000 g"], correctAnswer: "1.000 g", explanation: "Die Vorsilbe Kilo bedeutet tausend, daher entspricht 1 kg genau 1.000 g."),
            ExerciseItem(id: UUID(), prompt: "Ein Auto fährt gleichmäßig 60 km pro Stunde. Wie weit kommt es in 2 Stunden?", options: ["60 km", "90 km", "120 km", "180 km"], correctAnswer: "120 km", explanation: "In jeder Stunde legt das Auto 60 km zurück, also 2 × 60 km = 120 km."),
            ExerciseItem(id: UUID(), prompt: "Wie viel Kaffee passt etwa in eine normale Kaffeetasse?", options: ["Etwa 2 ml", "Etwa 20 ml", "Etwa 200 ml", "Etwa 20 l"], correctAnswer: "Etwa 200 ml", explanation: "In eine Kaffeetasse passen ungefähr 200 ml, das ist ein Fünftel eines Liters."),
            ExerciseItem(id: UUID(), prompt: "Wie hoch ist eine normale Zimmertür ungefähr?", options: ["Etwa 20 cm", "Etwa 2 m", "Etwa 20 m", "Etwa 200 m"], correctAnswer: "Etwa 2 m", explanation: "Zimmertüren sind meist etwa 2 m hoch."),
            ExerciseItem(id: UUID(), prompt: "Ein Mantel kostet 80 €. Er wird zum halben Preis verkauft. Wie viel kostet er jetzt?", options: ["20 €", "30 €", "40 €", "60 €"], correctAnswer: "40 €", explanation: "Die Hälfte von 80 € ist 80 € : 2 = 40 €."),
            ExerciseItem(id: UUID(), prompt: "Ein Dutzend Eier sind wie viele Eier?", options: ["10", "12", "20", "24"], correctAnswer: "12", explanation: "Ein Dutzend bedeutet zwölf Stück, also 12 Eier."),
            ExerciseItem(id: UUID(), prompt: "Was ist schwerer: 1 kg Federn oder 1 kg Eisen?", options: ["1 kg Eisen", "1 kg Federn", "Beide wiegen gleich viel", "Das hängt vom Wetter ab"], correctAnswer: "Beide wiegen gleich viel", explanation: "Beide wiegen genau 1 kg. Federn nehmen nur mehr Platz ein."),
            ExerciseItem(id: UUID(), prompt: "Ein Zug kommt um 14:30 Uhr an und fährt um 16:00 Uhr wieder ab. Wie lange steht er dort?", options: ["30 Minuten", "1 Stunde", "1 Stunde und 30 Minuten", "2 Stunden"], correctAnswer: "1 Stunde und 30 Minuten", explanation: "Von 14:30 Uhr bis 15:30 Uhr ist 1 Stunde, bis 16:00 Uhr kommen 30 Minuten dazu."),
            ExerciseItem(id: UUID(), prompt: "Ein Apfel kostet 0,25 €. Sie kaufen 8 Äpfel. Wie viel bezahlen Sie?", options: ["1,50 €", "2,00 €", "2,50 €", "4,00 €"], correctAnswer: "2,00 €", explanation: "8 × 0,25 € = 2,00 €. Vier Äpfel kosten 1,00 €, acht also das Doppelte.")
        ]
    )

    private static let deductiveReasoning = Exercise(
        title: "Logisch denken",
        instructions: "Lesen Sie die Aufgabe und wählen Sie die richtige Schlussfolgerung.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "deductiveReasoning",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Alle Katzen sind Tiere. Minka ist eine Katze. Was folgt daraus?", options: ["Minka ist ein Hund", "Minka ist kein Tier", "Minka ist ein Vogel", "Minka ist ein Tier"], correctAnswer: "Minka ist ein Tier", explanation: "Wenn alle Katzen Tiere sind und Minka eine Katze ist, dann ist Minka ein Tier."),
            ExerciseItem(id: UUID(), prompt: "Wenn es regnet, wird die Straße nass. Die Straße ist trocken. Was folgt daraus?", options: ["Es hat geregnet", "Es hat nicht geregnet", "Es schneit gerade", "Es regnet stark"], correctAnswer: "Es hat nicht geregnet", explanation: "Regen macht die Straße nass. Ist sie trocken, kann es nicht geregnet haben."),
            ExerciseItem(id: UUID(), prompt: "Anna ist größer als Ben. Ben ist größer als Clara. Wer ist am kleinsten?", options: ["Clara", "Ben", "Anna", "Anna und Ben sind gleich klein"], correctAnswer: "Clara", explanation: "Die Reihenfolge von groß nach klein lautet Anna, Ben, Clara. Clara ist am kleinsten."),
            ExerciseItem(id: UUID(), prompt: "Drei Häuser stehen nebeneinander: ein rotes, ein blaues und ein gelbes. Tom wohnt nicht im roten und nicht im blauen Haus. In welchem Haus wohnt er?", options: ["Im roten", "Im gelben", "Im blauen", "In keinem der drei"], correctAnswer: "Im gelben", explanation: "Rot und Blau scheiden aus. Es bleibt nur das gelbe Haus."),
            ExerciseItem(id: UUID(), prompt: "Heute ist Donnerstag. Welcher Tag ist übermorgen?", options: ["Freitag", "Sonntag", "Samstag", "Montag"], correctAnswer: "Samstag", explanation: "Morgen ist Freitag, übermorgen ist Samstag."),
            ExerciseItem(id: UUID(), prompt: "Wenn Lena Hunger hat, isst sie Obst. Lena isst gerade Obst. Was lässt sich sicher sagen?", options: ["Lena hat Hunger", "Lena hat keinen Hunger", "Lena hat Durst", "Man kann nicht sicher sagen, ob Lena Hunger hat"], correctAnswer: "Man kann nicht sicher sagen, ob Lena Hunger hat", explanation: "Die Regel sagt nur: Hunger führt zu Obst. Lena könnte das Obst auch aus einem anderen Grund essen."),
            ExerciseItem(id: UUID(), prompt: "Ein Vogel hat Federn, legt Eier, kann nicht fliegen und lebt in der Antarktis. Welches Tier ist gemeint?", options: ["Adler", "Papagei", "Pinguin", "Storch"], correctAnswer: "Pinguin", explanation: "Nur Pinguine leben in der Antarktis und können nicht fliegen. Adler, Papagei und Storch können fliegen."),
            ExerciseItem(id: UUID(), prompt: "Alle Äpfel in diesem Korb sind rot. Dieser Apfel ist grün. Was folgt daraus?", options: ["Der Apfel ist aus dem Korb", "Der Apfel ist nicht aus dem Korb", "Der Apfel wird rot", "Der Korb ist leer"], correctAnswer: "Der Apfel ist nicht aus dem Korb", explanation: "Im Korb liegen nur rote Äpfel. Ein grüner Apfel kann also nicht von dort stammen."),
            ExerciseItem(id: UUID(), prompt: "Welche Zahl kommt als nächste: 2, 4, 6, 8, ...?", options: ["9", "12", "10", "16"], correctAnswer: "10", explanation: "Jede Zahl ist um 2 größer als die vorherige: 8 + 2 = 10."),
            ExerciseItem(id: UUID(), prompt: "Max ist älter als Eva. Eva ist älter als Tim. Ist Max älter als Tim?", options: ["Nein", "Nur manchmal", "Das lässt sich nicht sagen", "Ja, sicher"], correctAnswer: "Ja, sicher", explanation: "Max ist älter als Eva, und Eva ist älter als Tim. Daher muss Max auch älter als Tim sein."),
            ExerciseItem(id: UUID(), prompt: "Wenn die Ampel rot ist, hält das Auto an. Das Auto fährt gerade. Was folgt daraus?", options: ["Die Ampel ist rot", "Das Auto ist kaputt", "Die Ampel ist nicht rot", "Es regnet"], correctAnswer: "Die Ampel ist nicht rot", explanation: "Bei Rot steht das Auto. Da es fährt, ist die Ampel nicht rot."),
            ExerciseItem(id: UUID(), prompt: "Sofie, Jan und Mia haben je ein Haustier: einen Hund, eine Katze und einen Fisch. Sofie hat keine Katze und keinen Fisch. Jan hat keinen Hund und keinen Fisch. Wer hat den Fisch?", options: ["Sofie", "Jan", "Alle drei", "Mia"], correctAnswer: "Mia", explanation: "Sofie hat den Hund, denn Katze und Fisch sind ausgeschlossen. Jan hat die Katze. Für Mia bleibt der Fisch."),
            ExerciseItem(id: UUID(), prompt: "Ein Zug fährt um 9:15 Uhr ab. Die Fahrt dauert 45 Minuten. Wann kommt er an?", options: ["Um 10:00 Uhr", "Um 9:45 Uhr", "Um 10:15 Uhr", "Um 9:30 Uhr"], correctAnswer: "Um 10:00 Uhr", explanation: "9:15 Uhr plus 45 Minuten ergibt 10:00 Uhr, denn 15 + 45 = 60 Minuten."),
            ExerciseItem(id: UUID(), prompt: "Die Bäckerei ist von Montag bis Samstag geöffnet. Heute ist Sonntag. Ist sie heute geöffnet?", options: ["Ja", "Nur vormittags", "Nur nachmittags", "Nein"], correctAnswer: "Nein", explanation: "Der Sonntag liegt nicht zwischen Montag und Samstag. Die Bäckerei ist also geschlossen."),
            ExerciseItem(id: UUID(), prompt: "In einem Korb liegen 5 Äpfel. Sie nehmen 2 Äpfel heraus und legen 1 Apfel hinein. Wie viele Äpfel sind jetzt im Korb?", options: ["3", "4", "5", "6"], correctAnswer: "4", explanation: "5 - 2 = 3, und 3 + 1 = 4.")
        ]
    )

    private static let memoryAboutYourself = Exercise(
        title: "Erinnerungen an sich selbst",
        instructions: "Beantworten Sie die Frage mit eigenen Worten.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "memoryAboutYourself",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Wie heißen die Mitglieder Ihrer Familie?", options: [], correctAnswer: "Zu meiner Familie gehören Anna, Peter und Lisa.", explanation: "Namen von nahestehenden Menschen sind tief im Gedächtnis verankert. Sie zu nennen weckt auch Bilder und Erlebnisse."),
            ExerciseItem(id: UUID(), prompt: "Was haben Sie heute zum Frühstück gegessen oder getrunken?", options: [], correctAnswer: "Ich habe ein Brötchen mit Marmelade gegessen und Kaffee getrunken.", explanation: "Die Frage übt das Erinnern an einen sehr kurzen, erst kurz zurückliegenden Zeitraum, nämlich an heute Morgen."),
            ExerciseItem(id: UUID(), prompt: "In welcher Stadt oder in welchem Dorf sind Sie aufgewachsen?", options: [], correctAnswer: "Ich bin in einem kleinen Dorf in der Nähe von Köln aufgewachsen.", explanation: "Orte aus der Kindheit sind meist gut erinnerbar und rufen oft weitere Erinnerungen hervor."),
            ExerciseItem(id: UUID(), prompt: "Was war Ihr Lieblingsfach in der Schule?", options: [], correctAnswer: "Mein Lieblingsfach war Musik, weil wir oft gemeinsam gesungen haben.", explanation: "Wer ein Fach begründet, verbindet Wissen mit persönlichen Erlebnissen. Das stärkt die Erinnerung."),
            ExerciseItem(id: UUID(), prompt: "Welchen Beruf haben Sie ausgeübt, oder was war Ihre wichtigste Aufgabe im Leben?", options: [], correctAnswer: "Ich habe lange in einem Schuhgeschäft gearbeitet.", explanation: "Der Beruf prägt viele Jahre des Lebens und ist mit vielen Handgriffen und Begegnungen verbunden."),
            ExerciseItem(id: UUID(), prompt: "Was ist Ihr Lieblingsessen, und wer hat es früher für Sie gekocht?", options: [], correctAnswer: "Mein Lieblingsessen ist Kartoffelsuppe, die früher bei uns oft jemand aus der Familie gekocht hat.", explanation: "Gerüche und Geschmäcker sind eng mit Erinnerungen und mit vertrauten Menschen verknüpft."),
            ExerciseItem(id: UUID(), prompt: "Wie sah das Haus oder die Wohnung aus, in der Sie als Kind gewohnt haben?", options: [], correctAnswer: "Es war ein Haus mit einem kleinen Garten und einem Apfelbaum.", explanation: "Das Beschreiben eines Ortes nutzt das räumliche Gedächtnis und weckt Details wie Farben und Geräusche."),
            ExerciseItem(id: UUID(), prompt: "Welche Musik hören Sie gern?", options: [], correctAnswer: "Ich höre gern Volkslieder und klassische Musik.", explanation: "Musik ist stark mit Gefühlen verknüpft und hilft, Erinnerungen abzurufen."),
            ExerciseItem(id: UUID(), prompt: "Wie verbringen Sie am liebsten Ihren Sonntag?", options: [], correctAnswer: "Ich frühstücke ausgiebig, gehe spazieren und besuche am Nachmittag jemanden aus der Familie.", explanation: "Gewohnheiten sind feste Abläufe im Gedächtnis, die sich gut in Worte fassen lassen."),
            ExerciseItem(id: UUID(), prompt: "Erinnern Sie sich an Ihren ersten Arbeitstag oder Ihren ersten Schultag? Was war besonders?", options: [], correctAnswer: "Am ersten Schultag bekam ich eine große Schultüte, und ich war sehr aufgeregt.", explanation: "Erste Erlebnisse sind oft emotional und deshalb besonders gut erinnerbar."),
            ExerciseItem(id: UUID(), prompt: "Welches Haustier hatten Sie oder hätten Sie gern gehabt?", options: [], correctAnswer: "Wir hatten einen Hund namens Bello, mit dem ich jeden Tag spazieren ging.", explanation: "Tiere sind für viele Menschen ein emotionaler Anker, an den sich viele Alltagsszenen knüpfen."),
            ExerciseItem(id: UUID(), prompt: "Wie feiern Sie normalerweise Ihren Geburtstag?", options: [], correctAnswer: "Ich lade die Familie zum Kaffeetrinken ein, und es gibt Kuchen.", explanation: "Familienfeste sind wiederkehrende Rituale, die sich gut einprägen."),
            ExerciseItem(id: UUID(), prompt: "Welche Jahreszeit mögen Sie am liebsten, und warum?", options: [], correctAnswer: "Ich mag den Herbst am liebsten, weil die Blätter so bunt sind.", explanation: "Wer eine Vorliebe begründet, muss Eindrücke und Erlebnisse abrufen und in Worte fassen."),
            ExerciseItem(id: UUID(), prompt: "Wohin sind Sie zuletzt in den Urlaub gefahren, oder wohin würden Sie gern reisen?", options: [], correctAnswer: "Wir waren an der Nordsee und sind am Strand spazieren gegangen.", explanation: "Reiseerinnerungen verbinden Orte, Menschen und Gefühle. Das macht sie leicht abrufbar."),
            ExerciseItem(id: UUID(), prompt: "Welche Hobbys haben oder hatten Sie?", options: [], correctAnswer: "Ich habe gern gestrickt und im Garten gearbeitet.", explanation: "Hobbys bestehen aus vertrauten Handlungen. Sie zu beschreiben ruft Bewegungsabläufe und Erlebnisse ins Gedächtnis."),
            ExerciseItem(id: UUID(), prompt: "Mit wem verbringen Sie gern Ihre Zeit, und was machen Sie dann zusammen?", options: [], correctAnswer: "Ich treffe mich gern mit Freunden aus der Nachbarschaft, und wir trinken zusammen Kaffee.", explanation: "Gemeinsame Erlebnisse mit vertrauten Menschen sind gut im Gedächtnis gespeichert und lassen sich leicht erzählen."),
            ExerciseItem(id: UUID(), prompt: "Wie sieht Ihr Weg von zu Hause zum nächsten Supermarkt aus?", options: [], correctAnswer: "Ich gehe die Straße entlang, biege an der Bäckerei links ab und bin nach fünf Minuten da.", explanation: "Einen Weg in Worten zu beschreiben trainiert die Reihenfolge und die räumliche Vorstellung."),
            ExerciseItem(id: UUID(), prompt: "Was machen Sie jeden Morgen als Erstes nach dem Aufstehen?", options: [], correctAnswer: "Ich öffne das Fenster, wasche mich und koche mir einen Tee.", explanation: "Morgenroutinen sind eingeübte Abfolgen. Sie zu nennen übt das Erinnern von Reihenfolgen."),
            ExerciseItem(id: UUID(), prompt: "Welches Fest in Ihrer Familie war für Sie am schönsten?", options: [], correctAnswer: "Das schönste Fest war eine Hochzeit in der Familie, bei der alle getanzt haben.", explanation: "Feste sind emotionale Erlebnisse mit vielen Sinneseindrücken, an die man sich gut erinnert."),
            ExerciseItem(id: UUID(), prompt: "Welche Märchen oder Geschichten haben Ihnen als Kind vorgelesen oder erzählt?", options: [], correctAnswer: "Als Kind hat man mir oft Hänsel und Gretel und Rotkäppchen vorgelesen.", explanation: "Kindheitsgeschichten sind oft Teil des Langzeitgedächtnisses und lassen sich leicht abrufen.")
        ]
    )
}
