import Foundation

struct FrenchCognitionExerciseData {

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
        exercise14,
        exercise15
    ]

    // MARK: - Oui ou Non
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Oui ou Non",
        instructions: "Répondez par Oui ou Non à la question.",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Paris est la capitale de la France?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Paris est la capitale politique, administrative et culturelle de la France."),
            ExerciseItem(id: UUID(), prompt: "La Tour Eiffel se trouve à Lyon?", options: ["Yes", "No"], correctAnswer: "No", explanation: "La Tour Eiffel est située à Paris, et non à Lyon."),
            ExerciseItem(id: UUID(), prompt: "Le français est la langue officielle du Québec?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Le français est la langue officielle du Québec, une province francophone du Canada."),
            ExerciseItem(id: UUID(), prompt: "Les fleurs de cerisier sont rouges?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Les fleurs de cerisier sont généralement roses ou blanches, pas rouges."),
            ExerciseItem(id: UUID(), prompt: "Haïti est un pays francophone?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Haïti a deux langues officielles : le français et le créole haïtien."),
            ExerciseItem(id: UUID(), prompt: "Le Noël est célébré au mois de janvier?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Noël est universellement célébré le 25 décembre, et non en janvier."),
            ExerciseItem(id: UUID(), prompt: "Le croissant est un aliment typiquement français?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Le croissant est une viennoiserie emblématique de la culture gastronomique française."),
            ExerciseItem(id: UUID(), prompt: "Le Rhône est un fleuve de la France?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Le Rhône est l'un des principaux fleuves de France, s'écoulant vers la mer Méditerranée."),
            ExerciseItem(id: UUID(), prompt: "En France, on conduit à droite?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "En France, le code de la route impose la circulation sur le côté droit de la chaussée."),
            ExerciseItem(id: UUID(), prompt: "Le Tour de France est une compétition de natation?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Le Tour de France est la plus célèbre compétition cycliste par étapes au monde, pas une compétition de natation."),
            ExerciseItem(id: UUID(), prompt: "La Révolution française a eu lieu en 1789?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La Révolution française a débuté en 1789 avec des événements majeurs comme la prise de la Bastille."),
            ExerciseItem(id: UUID(), prompt: "Le 14 juillet est la fête nationale française?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Le 14 juillet commémore la prise de la Bastille et la Fête de la Fédération, marquant la fête nationale française."),
            ExerciseItem(id: UUID(), prompt: "L'hiver est une saison chaude?", options: ["Yes", "No"], correctAnswer: "No", explanation: "L'hiver est la saison la plus froide de l'année dans l'hémisphère nord, pas une saison chaude."),
            ExerciseItem(id: UUID(), prompt: "Les Français-Canadiens parlent une forme de français?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Les Canadiens français, notamment au Québec, parlent diverses variétés de français."),
            ExerciseItem(id: UUID(), prompt: "Le drapeau français est vert, blanc et rouge?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Le drapeau national de la France est composé de trois bandes verticales : bleu, blanc et rouge."),
            ExerciseItem(id: UUID(), prompt: "La baguette est un pain français traditionnel?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La baguette est le pain traditionnel et le plus consommé en France."),
            ExerciseItem(id: UUID(), prompt: "Los Angeles a une communauté haïtienne-américaine?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Los Angeles abrite une diversité de diasporas, y compris une communauté haïtienne-américaine."),
            ExerciseItem(id: UUID(), prompt: "En français, le haïku est une forme de poésie française?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Le haïku est une forme poétique d'origine japonaise, et non française."),
            ExerciseItem(id: UUID(), prompt: "Les feux d'artifice du 14 juillet sont visibles à Paris?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Les célébrations du 14 juillet à Paris incluent traditionnellement un grand feu d'artifice tiré depuis la Tour Eiffel."),
            ExerciseItem(id: UUID(), prompt: "Le français et l'espagnol sont deux langues latines?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Le français et l'espagnol sont toutes deux des langues romanes, dérivées du latin.")
        ]
    )

    // MARK: - Questions Quoi
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Questions Quoi",
        instructions: "Répondez à la question.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quel est le repas typique du matin en France?", options: ["Petit-déjeuner", "Dîner", "Brunch", "Déjeuner"], correctAnswer: "Petit-déjeuner", explanation: "Le petit-déjeuner est le premier repas consommé le matin, marquant le début de la journée en France."),
            ExerciseItem(id: UUID(), prompt: "Quel est l'instrument national de la France pour l'hymne?", options: ["violon", "trompette", "accordéon", "orgue"], correctAnswer: "accordéon", explanation: "L'accordéon est un instrument de musique traditionnellement associé à la culture et aux bals populaires français."),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce qu'on célèbre le 14 juillet en France?", options: ["Prise de la Bastille", "Noël", "Pâques", "Anniversaire du roi"], correctAnswer: "Prise de la Bastille", explanation: "La prise de la Bastille, le 14 juillet 1789, est l'événement historique symbolique célébré lors de la fête nationale."),
            ExerciseItem(id: UUID(), prompt: "Quel aliment est typique du petit-déjeuner français?", options: ["Croissant", "Pizza", "Tacos", "Sushi"], correctAnswer: "Croissant", explanation: "Le croissant est la viennoiserie par excellence servie lors du petit-déjeuner traditionnel français."),
            ExerciseItem(id: UUID(), prompt: "Quel sport est le plus populaire en France?", options: ["Rugby", "Natation", "Football", "Tennis"], correctAnswer: "Football", explanation: "Le football est le sport qui compte le plus grand nombre de licenciés et de supporters en France."),
            ExerciseItem(id: UUID(), prompt: "Quel est le vêtement traditionnel haïtien lors des fêtes?", options: ["Kimono", "Vêtements colorés et brodés", "Sari", "Caftan"], correctAnswer: "Vêtements colorés et brodés", explanation: "La robe karabela est un vêtement traditionnel haïtien souvent coloré et brodé, porté lors des festivités."),
            ExerciseItem(id: UUID(), prompt: "Quel outil utilise-t-on pour la calligraphie?", options: ["crayon", "plume", "feutre", "ciseaux"], correctAnswer: "plume", explanation: "La plume, souvent métallique ou d'oie, est l'outil classique utilisé pour tracer les lettres en calligraphie."),
            ExerciseItem(id: UUID(), prompt: "Quel est le monument le plus célèbre de Paris?", options: ["Big Ben", "Tour Eiffel", "Colisée", "Sagrada Familia"], correctAnswer: "Tour Eiffel", explanation: "La Tour Eiffel, construite pour l'Exposition universelle de 1889, est le symbole mondialement reconnu de Paris."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la boisson nationale française?", options: ["la bière", "le champagne ou le vin", "le thé", "le jus d'orange"], correctAnswer: "le champagne ou le vin", explanation: "Le vin, et particulièrement le champagne pour les célébrations, est profondément ancré dans la culture française."),
            ExerciseItem(id: UUID(), prompt: "Quel fromage français est le plus célèbre?", options: ["Cheddar", "Brie", "Gouda", "Parmesan"], correctAnswer: "Brie", explanation: "Le Brie est un fromage à pâte molle originaire de la région de la Brie, mondialement réputé."),
            ExerciseItem(id: UUID(), prompt: "Quelle cérémonie française réunit la famille chaque dimanche?", options: ["La messe", "Le déjeuner en famille", "La danse folklorique", "Le théâtre"], correctAnswer: "Le déjeuner en famille", explanation: "Le déjeuner dominical en famille est une tradition sociale et gastronomique très respectée en France."),
            ExerciseItem(id: UUID(), prompt: "Quel jeu de plein air est très populaire dans le sud de la France?", options: ["Cricket", "Pétanque", "Baseball", "Sumo"], correctAnswer: "Pétanque", explanation: "La pétanque est un jeu de boules traditionnel originaire de Provence, très pratiqué dans le sud de la France."),
            ExerciseItem(id: UUID(), prompt: "Quelle langue parle-t-on en Haïti?", options: ["Espagnol et anglais", "Créole et français", "Portugais", "Anglais seulement"], correctAnswer: "Créole et français", explanation: "Haïti est un pays bilingue où la population parle le créole haïtien et le français."),
            ExerciseItem(id: UUID(), prompt: "Quel est le chiffre 5 en français?", options: ["quatre", "cinq", "six", "sept"], correctAnswer: "cinq", explanation: "Le mot 'cinq' est la traduction française du chiffre 5."),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on merci en français?", options: ["s'il vous plaît", "bonjour", "merci", "au revoir"], correctAnswer: "merci", explanation: "L'expression 'merci' est la formule de politesse standard en français pour exprimer la gratitude."),
            ExerciseItem(id: UUID(), prompt: "Quel musée célèbre est situé à Paris et abrite la Joconde?", options: ["Musée Picasso", "Centre Pompidou", "Le Louvre", "Musée d'Orsay"], correctAnswer: "Le Louvre", explanation: "Le Louvre, ancien palais royal situé à Paris, est le plus grand musée d'art et d'antiquités au monde."),
            ExerciseItem(id: UUID(), prompt: "Avec quoi mange-t-on généralement une fondue savoyarde?", options: ["Baguette", "Pain grillé", "Ravioli", "Pommes de terre"], correctAnswer: "Pain grillé", explanation: "La fondue savoyarde se déguste traditionnellement en trempant des morceaux de pain dans du fromage fondu."),
            ExerciseItem(id: UUID(), prompt: "Quel plat haïtien est fait avec du riz et des haricots?", options: ["Griot", "Riz national (diri kole)", "Bouillabaisse", "Ratatouille"], correctAnswer: "Riz national (diri kole)", explanation: "Le 'diri kole ak pwa' (riz collé aux haricots) est le plat national et quotidien par excellence en Haïti."),
            ExerciseItem(id: UUID(), prompt: "Quelle région française est célèbre pour ses vignobles?", options: ["Bretagne", "Normandie", "Bordeaux", "Alsace"], correctAnswer: "Bordeaux", explanation: "La région de Bordeaux est mondialement reconnue pour ses vastes vignobles et la qualité de ses vins."),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on bonne nuit en français?", options: ["Bonsoir", "Bonne nuit", "Au revoir", "Bonjour"], correctAnswer: "Bonne nuit", explanation: "L'expression 'bonne nuit' est utilisée en français pour souhaiter un bon sommeil avant de se coucher.")
        ]
    )

    // MARK: - Questions Où
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Questions Où",
        instructions: "Répondez à la question sur les lieux.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Où se trouve la Tour Eiffel?", options: ["Lyon", "Paris", "Marseille", "Nice"], correctAnswer: "Paris", explanation: "La Tour Eiffel est érigée sur le Champ-de-Mars à Paris, la capitale française."),
            ExerciseItem(id: UUID(), prompt: "Où parle-t-on français au Canada?", options: ["Toronto", "Vancouver", "Québec", "Calgary"], correctAnswer: "Québec", explanation: "Le Québec est la seule province canadienne où le français est la principale langue officielle."),
            ExerciseItem(id: UUID(), prompt: "Où se situe la communauté haïtienne-américaine la plus importante aux États-Unis?", options: ["Los Angeles", "Miami et New York", "Chicago", "Dallas"], correctAnswer: "Miami et New York", explanation: "La diaspora haïtienne est très présente en Floride (Miami) et dans l'État de New York."),
            ExerciseItem(id: UUID(), prompt: "Où se trouve le Louvre?", options: ["Bordeaux", "Paris", "Lyon", "Strasbourg"], correctAnswer: "Paris", explanation: "Le musée du Louvre est situé au cœur de Paris, sur la rive droite de la Seine."),
            ExerciseItem(id: UUID(), prompt: "Dans quelle ville se trouve la plus grande communauté francophone de Californie?", options: ["San Francisco", "Los Angeles", "San Diego", "Sacramento"], correctAnswer: "Los Angeles", explanation: "Los Angeles accueille une importante communauté d'expatriés français et de francophones en Californie."),
            ExerciseItem(id: UUID(), prompt: "Où se situe le château de Versailles?", options: ["Paris", "Versailles, près de Paris", "Lyon", "Bordeaux"], correctAnswer: "Versailles, près de Paris", explanation: "Le château de Versailles est situé dans la ville de Versailles, dans les Yvelines, près de Paris."),
            ExerciseItem(id: UUID(), prompt: "Où est né Napoléon Bonaparte?", options: ["France", "Corse (île française)", "Italie", "Belgique"], correctAnswer: "Corse (île française)", explanation: "Napoléon Bonaparte est né à Ajaccio, en Corse, une île française de la mer Méditerranée."),
            ExerciseItem(id: UUID(), prompt: "Où se déroule le Tour de France en général?", options: ["En Suisse", "Toute la France et parfois pays voisins", "En Allemagne", "En Italie"], correctAnswer: "Toute la France et parfois pays voisins", explanation: "Le Tour de France est une course cycliste itinérante qui traverse de nombreuses régions françaises."),
            ExerciseItem(id: UUID(), prompt: "Où peut-on apprendre à cuisiner français aux États-Unis?", options: ["Dans des écoles culinaires et cours de cuisine", "Seulement en France", "Dans les supermarchés", "Nulle part"], correctAnswer: "Dans des écoles culinaires et cours de cuisine", explanation: "L'art culinaire français est enseigné dans de nombreuses écoles de cuisine à travers les États-Unis."),
            ExerciseItem(id: UUID(), prompt: "Où est située la région viticole de Champagne?", options: ["Dans le sud de la France", "Dans le nord-est de la France", "En Suisse", "En Belgique"], correctAnswer: "Dans le nord-est de la France", explanation: "La Champagne est une région historique située dans le nord-est de la France, célèbre pour son vin effervescent."),
            ExerciseItem(id: UUID(), prompt: "Où se situe le Mont Blanc?", options: ["Dans les Pyrénées", "Dans les Alpes, à la frontière franco-italienne", "En Suisse seulement", "En Autriche"], correctAnswer: "Dans les Alpes, à la frontière franco-italienne", explanation: "Le Mont Blanc, point culminant des Alpes, se dresse à la frontière entre la France et l'Italie."),
            ExerciseItem(id: UUID(), prompt: "Où la bouillabaisse est-elle originaire?", options: ["Paris", "Marseille", "Bordeaux", "Lyon"], correctAnswer: "Marseille", explanation: "La bouillabaisse est une soupe de poissons traditionnelle originaire du port de Marseille."),
            ExerciseItem(id: UUID(), prompt: "Haïti se trouve dans quelle région du monde?", options: ["Afrique", "Caraïbes", "Europe", "Asie du Sud-Est"], correctAnswer: "Caraïbes", explanation: "Haïti occupe le tiers occidental de l'île d'Hispaniola, située dans la mer des Caraïbes."),
            ExerciseItem(id: UUID(), prompt: "Où se trouve le Palais des Papes?", options: ["Paris", "Avignon", "Lyon", "Marseille"], correctAnswer: "Avignon", explanation: "Le Palais des Papes est une forteresse et un palais situé à Avignon, ancienne résidence pontificale."),
            ExerciseItem(id: UUID(), prompt: "Où peut-on voir les tapisseries de Bayeux?", options: ["Versailles", "Paris", "Bayeux, en Normandie", "Bordeaux"], correctAnswer: "Bayeux, en Normandie", explanation: "La célèbre tapisserie de Bayeux est exposée dans la ville de Bayeux, en Normandie."),
            ExerciseItem(id: UUID(), prompt: "Dans quel pays la langue française est-elle une langue officielle en Afrique du Nord?", options: ["Égypte", "Maroc, Algérie, Tunisie", "Éthiopie", "Kenya"], correctAnswer: "Maroc, Algérie, Tunisie", explanation: "Le français est largement utilisé comme langue administrative et d'enseignement au Maroc, en Algérie et en Tunisie."),
            ExerciseItem(id: UUID(), prompt: "Où se déroulent habituellement les matchs du Tour de France (arrivée)?", options: ["Lyon", "Marseille", "Paris (Champs-Élysées)", "Bordeaux"], correctAnswer: "Paris (Champs-Élysées)", explanation: "L'étape finale du Tour de France s'achève traditionnellement sur l'avenue des Champs-Élysées à Paris."),
            ExerciseItem(id: UUID(), prompt: "Où est située la basilique du Sacré-Coeur?", options: ["Bordeaux", "Paris (Montmartre)", "Lyon", "Nice"], correctAnswer: "Paris (Montmartre)", explanation: "La basilique du Sacré-Cœur est située au sommet de la butte Montmartre, surplombant Paris."),
            ExerciseItem(id: UUID(), prompt: "Dans quelle ville française se trouve une communauté sénégalaise importante?", options: ["Nantes", "Strasbourg", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: "Paris et sa banlieue abritent une importante diaspora sénégalaise en raison des liens historiques entre les deux pays."),
            ExerciseItem(id: UUID(), prompt: "Où se pratique le jeu de pétanque?", options: ["Surtout dans l'est de la France", "Surtout dans le sud de la France", "Uniquement à Paris", "Surtout en Bretagne"], correctAnswer: "Surtout dans le sud de la France", explanation: "Bien que jouée partout, la pétanque est emblématique de la culture et du mode de vie du sud de la France.")
        ]
    )

    // MARK: - Questions Qui
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Questions Qui",
        instructions: "Répondez à la question sur les personnes.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Qui a peint la Joconde?", options: ["Pablo Picasso", "Léonard de Vinci", "Michel-Ange", "Claude Monet"], correctAnswer: "Léonard de Vinci", explanation: "Léonard de Vinci est le polymathe italien de la Renaissance qui a peint le célèbre tableau de La Joconde."),
            ExerciseItem(id: UUID(), prompt: "Qui était Marie Curie?", options: ["Une écrivaine française", "Une physicienne et chimiste franco-polonaise", "Une reine de France", "Une chanteuse française"], correctAnswer: "Une physicienne et chimiste franco-polonaise", explanation: "Marie Curie est une scientifique pionnière qui a remporté deux prix Nobel pour ses travaux sur la radioactivité."),
            ExerciseItem(id: UUID(), prompt: "Qui a écrit Les Misérables?", options: ["Albert Camus", "Gustave Flaubert", "Victor Hugo", "Émile Zola"], correctAnswer: "Victor Hugo", explanation: "Victor Hugo est un célèbre écrivain romantique français, auteur du chef-d'œuvre littéraire 'Les Misérables'."),
            ExerciseItem(id: UUID(), prompt: "Qui était Jean-Jacques Dessalines?", options: ["Un artiste français", "Un héros de l'indépendance haïtienne", "Un écrivain belge", "Un général français"], correctAnswer: "Un héros de l'indépendance haïtienne", explanation: "Jean-Jacques Dessalines est l'un des pères fondateurs de la nation haïtienne et le proclamateur de son indépendance."),
            ExerciseItem(id: UUID(), prompt: "Qui est le compositeur de La Marseillaise (hymne français)?", options: ["Bizet", "Rouget de Lisle", "Berlioz", "Saint-Saëns"], correctAnswer: "Rouget de Lisle", explanation: "Claude Joseph Rouget de Lisle a composé 'La Marseillaise' en 1792, devenue l'hymne national français."),
            ExerciseItem(id: UUID(), prompt: "Qui était Charles de Gaulle?", options: ["Un romancier", "Un général et président de la France", "Un peintre impressionniste", "Un compositeur"], correctAnswer: "Un général et président de la France", explanation: "Charles de Gaulle fut un chef de la Résistance française et le fondateur de la Cinquième République."),
            ExerciseItem(id: UUID(), prompt: "Qui est Wyclef Jean?", options: ["Un chef cuisinier haïtien", "Un artiste de hip-hop haïtien-américain", "Un politicien haïtien uniquement", "Un peintre haïtien"], correctAnswer: "Un artiste de hip-hop haïtien-américain", explanation: "Wyclef Jean est un musicien et producteur célèbre, membre fondateur du groupe Fugees, né en Haïti."),
            ExerciseItem(id: UUID(), prompt: "Qui a dirigé la Révolution française en 1789?", options: ["Napoléon Bonaparte", "Le peuple français (Tiers État)", "Louis XVI", "Marie-Antoinette"], correctAnswer: "Le peuple français (Tiers État)", explanation: "La Révolution de 1789 a été menée par le peuple français, notamment le Tiers État, contre la monarchie absolue."),
            ExerciseItem(id: UUID(), prompt: "Qui était Molière?", options: ["Un auteur de comédies françaises", "Un peintre français", "Un chef militaire", "Un philosophe"], correctAnswer: "Un auteur de comédies françaises", explanation: "Molière est l'un des plus grands dramaturges et acteurs de l'histoire du théâtre comique français."),
            ExerciseItem(id: UUID(), prompt: "Qui était Toussaint Louverture?", options: ["Un artiste haïtien", "Un leader de la révolution haïtienne", "Un politicien français", "Un musicien haïtien"], correctAnswer: "Un leader de la révolution haïtienne", explanation: "Toussaint Louverture fut le principal dirigeant de la Révolution haïtienne, luttant pour l'abolition de l'esclavage."),
            ExerciseItem(id: UUID(), prompt: "Qui était Claude Monet?", options: ["Un romancier français", "Un peintre impressionniste français", "Un compositeur", "Un sculpteur"], correctAnswer: "Un peintre impressionniste français", explanation: "Claude Monet est l'un des fondateurs de l'impressionnisme, célèbre pour ses peintures de la nature et de la lumière."),
            ExerciseItem(id: UUID(), prompt: "Qui était Simone de Beauvoir?", options: ["Une philosophe et féministe française", "Une reine de France", "Une artiste peintre", "Une musicienne"], correctAnswer: "Une philosophe et féministe française", explanation: "Simone de Beauvoir était une intellectuelle majeure, auteure de l'essai féministe fondamental 'Le Deuxième Sexe'."),
            ExerciseItem(id: UUID(), prompt: "Qui a construit la Tour Eiffel?", options: ["Napoléon Bonaparte", "Gustave Eiffel", "Louis XIV", "Victor Hugo"], correctAnswer: "Gustave Eiffel", explanation: "Gustave Eiffel est l'ingénieur français dont l'entreprise a conçu et bâti la Tour Eiffel pour l'Exposition de 1889."),
            ExerciseItem(id: UUID(), prompt: "Qui était Édith Piaf?", options: ["Une actrice de cinéma", "Une chanteuse française légendaire", "Une poétesse", "Une danseuse"], correctAnswer: "Une chanteuse française légendaire", explanation: "Édith Piaf fut une icône de la chanson française, mondialement connue pour des titres comme 'La Vie en rose'."),
            ExerciseItem(id: UUID(), prompt: "Qui était Jean-Michel Basquiat (origines haïtiennes)?", options: ["Un artiste new-yorkais d'origine haïtienne et portoricaine", "Un musicien jazz", "Un écrivain haïtien", "Un réalisateur de films"], correctAnswer: "Un artiste new-yorkais d'origine haïtienne et portoricaine", explanation: "Jean-Michel Basquiat, artiste majeur du mouvement néo-expressionniste, avait un père d'origine haïtienne."),
            ExerciseItem(id: UUID(), prompt: "Qui était Marcel Proust?", options: ["Un romancier français auteur de À la Recherche du Temps Perdu", "Un peintre surréaliste", "Un compositeur romantique", "Un philosophe"], correctAnswer: "Un romancier français auteur de À la Recherche du Temps Perdu", explanation: "Marcel Proust est une figure centrale de la littérature mondiale, célèbre pour son œuvre monumentale sur la mémoire et le temps."),
            ExerciseItem(id: UUID(), prompt: "Qui est Celine Dion (francophone)?", options: ["Une actrice québécoise", "Une chanteuse québécoise mondialement connue", "Une animatrice de télévision", "Une politicienne canadienne"], correctAnswer: "Une chanteuse québécoise mondialement connue", explanation: "Céline Dion est une superstar de la musique originaire de la province francophone du Québec, au Canada."),
            ExerciseItem(id: UUID(), prompt: "Qui était Voltaire?", options: ["Un peintre du XVIIIe siècle", "Un écrivain et philosophe français du siècle des Lumières", "Un général français", "Un roi de France"], correctAnswer: "Un écrivain et philosophe français du siècle des Lumières", explanation: "Voltaire est un philosophe des Lumières emblématique, célèbre pour son combat contre l'intolérance et l'injustice."),
            ExerciseItem(id: UUID(), prompt: "Qui était Marie-Antoinette?", options: ["Une reine de France d'origine autrichienne", "Une révolutionnaire française", "Une artiste française", "Une scientifique française"], correctAnswer: "Une reine de France d'origine autrichienne", explanation: "Marie-Antoinette, archiduchesse d'Autriche, fut la dernière reine de France avant la Révolution française."),
            ExerciseItem(id: UUID(), prompt: "Qui était Jean Piaget?", options: ["Un peintre suisse francophone", "Un psychologue et pédagogue suisse francophone", "Un musicien belge", "Un philosophe français"], correctAnswer: "Un psychologue et pédagogue suisse francophone", explanation: "Jean Piaget était un éminent psychologue suisse, reconnu pour ses travaux pionniers sur le développement de l'intelligence chez l'enfant.")
        ]
    )

    // MARK: - Questions Quand
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Questions Quand",
        instructions: "Répondez à la question de temps.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quand célèbre-t-on Noël?", options: ["25 novembre", "25 décembre", "1er janvier", "6 janvier"], correctAnswer: "25 décembre", explanation: "Noël est traditionnellement célébré le 25 décembre dans le calendrier grégorien."),
            ExerciseItem(id: UUID(), prompt: "Quand a eu lieu la Révolution française?", options: ["1689", "1789", "1889", "1912"], correctAnswer: "1789", explanation: "La Révolution française a commencé en 1789 avec la prise de la Bastille."),
            ExerciseItem(id: UUID(), prompt: "Quand Haïti a-t-elle obtenu son indépendance?", options: ["1776", "1804", "1848", "1900"], correctAnswer: "1804", explanation: "Haïti a déclaré son indépendance le 1er janvier 1804 après la révolution haïtienne."),
            ExerciseItem(id: UUID(), prompt: "Quand se déroule généralement le Tour de France?", options: ["En janvier", "En mars", "En juillet", "En octobre"], correctAnswer: "En juillet", explanation: "Le Tour de France est une course cycliste annuelle qui a lieu en juillet."),
            ExerciseItem(id: UUID(), prompt: "Quand célèbre-t-on la fête nationale française (Bastille)?", options: ["14 juin", "14 juillet", "14 août", "14 septembre"], correctAnswer: "14 juillet", explanation: "La fête nationale française est célébrée le 14 juillet en commémoration de la prise de la Bastille."),
            ExerciseItem(id: UUID(), prompt: "En France, quand commence généralement le dîner?", options: ["17h", "18h", "19h-20h", "22h"], correctAnswer: "19h-20h", explanation: "En France, le dîner est généralement servi entre 19h et 20h, selon les régions et les habitudes."),
            ExerciseItem(id: UUID(), prompt: "Quand Napoléon est-il devenu Empereur?", options: ["1789", "1799", "1804", "1815"], correctAnswer: "1804", explanation: "Napoléon Bonaparte a été sacré Empereur des Français en 1804."),
            ExerciseItem(id: UUID(), prompt: "Quand se termine habituellement l'école primaire en France?", options: ["À 9 ans", "À 11 ans", "À 13 ans", "À 15 ans"], correctAnswer: "À 11 ans", explanation: "L'école primaire en France se termine généralement à l'âge de 11 ans, avant l'entrée au collège."),
            ExerciseItem(id: UUID(), prompt: "Quand Pâques est-il célébré?", options: ["En décembre", "En janvier", "Au printemps (mars-avril)", "En été"], correctAnswer: "Au printemps (mars-avril)", explanation: "Pâques est une fête mobile célébrée au printemps, généralement entre la fin mars et la fin avril."),
            ExerciseItem(id: UUID(), prompt: "Quand la France a-t-elle adopté le franc comme monnaie?", options: ["1361", "1461", "1561", "1661"], correctAnswer: "1361", explanation: "Le franc a été créé en 1360 (ou 1361) sous le roi Jean II le Bon."),
            ExerciseItem(id: UUID(), prompt: "Quand l'Europe a-t-elle introduit l'euro comme monnaie?", options: ["1995", "1999-2002", "2005", "2010"], correctAnswer: "1999-2002", explanation: "L'euro a été introduit financièrement en 1999 et les pièces et billets ont circulé à partir de 2002."),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Bonsoir en français?", options: ["Le matin", "Le midi", "Le soir", "La nuit"], correctAnswer: "Le soir", explanation: "L'expression 'bonsoir' est utilisée comme salutation à partir de la fin de l'après-midi ou le soir."),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Bonne nuit en français?", options: ["Au déjeuner", "L'après-midi", "Avant de dormir", "Au réveil"], correctAnswer: "Avant de dormir", explanation: "On souhaite 'bonne nuit' juste avant de se coucher ou de dormir."),
            ExerciseItem(id: UUID(), prompt: "Quand commence le printemps en France?", options: ["Décembre", "Janvier", "Mars-avril", "Juillet"], correctAnswer: "Mars-avril", explanation: "Dans l'hémisphère nord, le printemps commence autour du 20 mars, s'étendant sur mars et avril."),
            ExerciseItem(id: UUID(), prompt: "Quand a été inaugurée la Tour Eiffel?", options: ["1789", "1844", "1889", "1900"], correctAnswer: "1889", explanation: "La Tour Eiffel a été inaugurée en 1889 pour l'Exposition universelle de Paris."),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Bonjour en français?", options: ["La nuit", "Le soir seulement", "N'importe quand la journée", "Seulement le matin"], correctAnswer: "N'importe quand la journée", explanation: "Le mot 'bonjour' s'utilise pour saluer quelqu'un à tout moment pendant la journée."),
            ExerciseItem(id: UUID(), prompt: "Quand a été fondée l'Alliance française?", options: ["1823", "1883", "1923", "1963"], correctAnswer: "1883", explanation: "L'Alliance française a été fondée en 1883 pour promouvoir la langue et la culture françaises."),
            ExerciseItem(id: UUID(), prompt: "Quand commence l'année scolaire en France?", options: ["Janvier", "Avril", "Septembre", "Novembre"], correctAnswer: "Septembre", explanation: "La rentrée scolaire en France a lieu traditionnellement début septembre."),
            ExerciseItem(id: UUID(), prompt: "Quand s'est terminée la Deuxième Guerre mondiale?", options: ["1942", "1943", "1945", "1947"], correctAnswer: "1945", explanation: "La Seconde Guerre mondiale s'est achevée en 1945 avec la capitulation de l'Allemagne puis du Japon."),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Joyeux anniversaire en français?", options: ["À Noël", "Au jour de l'An", "Le jour de naissance", "À Pâques"], correctAnswer: "Le jour de naissance", explanation: "On dit 'joyeux anniversaire' à une personne le jour commémorant sa naissance.")
        ]
    )

    // MARK: - Questions Pourquoi
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Questions Pourquoi",
        instructions: "Répondez à la question sur les raisons.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Pourquoi apprend-on le français?", options: ["Parce que c'est la seule langue du monde", "Pour communiquer avec les francophones et enrichir sa culture", "Parce que c'est la langue la plus facile", "Parce qu'on y est obligé"], correctAnswer: "Pour communiquer avec les francophones et enrichir sa culture", explanation: "Apprendre le français permet de communiquer avec les millions de francophones dans le monde et de découvrir de riches cultures."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi la France est-elle connue pour sa gastronomie?", options: ["Parce qu'elle a inventé tous les aliments", "Pour sa tradition culinaire raffinée et diversifiée", "Parce que ses aliments sont les moins chers", "Parce que les Français mangent peu"], correctAnswer: "Pour sa tradition culinaire raffinée et diversifiée", explanation: "La France possède une tradition culinaire ancienne, raffinée et très diversifiée selon ses régions."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le 14 juillet est-il important pour les Français?", options: ["Parce que c'est le jour de Noël", "Pour commémorer la prise de la Bastille et la Révolution", "Parce que c'est l'anniversaire du roi", "Parce que le Tour de France se finit ce jour"], correctAnswer: "Pour commémorer la prise de la Bastille et la Révolution", explanation: "Il commémore la prise de la Bastille en 1789, un événement clé de la Révolution française."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi les Français se font la bise?", options: ["Pour saluer de manière traditionnelle et montrer de l'affection", "C'est une obligation légale", "Parce qu'ils n'aiment pas les poignées de main", "Pour sentir le parfum des autres"], correctAnswer: "Pour saluer de manière traditionnelle et montrer de l'affection", explanation: "La bise est une tradition sociale courante en France pour se saluer chaleureusement et montrer de l'affection."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi la baguette est-elle si importante en France?", options: ["Parce qu'elle est sucrée", "Parce qu'elle fait partie de la tradition et de la culture quotidienne", "Parce qu'elle est moins chère que le pain étranger", "Parce qu'elle remplace la cuillère"], correctAnswer: "Parce qu'elle fait partie de la tradition et de la culture quotidienne", explanation: "La baguette est un symbole de la France et un élément essentiel de l'alimentation quotidienne des Français."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi beaucoup d'Haïtiens ont émigré aux États-Unis?", options: ["Pour apprendre l'anglais uniquement", "À cause de difficultés économiques et politiques en Haïti", "Parce qu'ils ne voulaient plus parler créole", "Parce que les États-Unis les ont invités officiellement"], correctAnswer: "À cause de difficultés économiques et politiques en Haïti", explanation: "De nombreux Haïtiens ont cherché refuge et de meilleures opportunités face aux difficultés économiques et politiques de leur pays."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi dit-on que Paris est la Ville Lumière?", options: ["Parce qu'il y a beaucoup de lampadaires", "Pour son rôle dans l'éclairage public et le siècle des Lumières", "Parce qu'elle est toujours ensoleillée", "Parce que la Tour Eiffel brille toujours"], correctAnswer: "Pour son rôle dans l'éclairage public et le siècle des Lumières", explanation: "Ce surnom vient de son rôle majeur pendant le siècle des Lumières et de son adoption précoce de l'éclairage public."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi mange-t-on en famille le dimanche en France?", options: ["C'est une obligation légale", "C'est une tradition culturelle pour renforcer les liens familiaux", "Parce que les restaurants ferment", "Parce que c'est moins cher"], correctAnswer: "C'est une tradition culturelle pour renforcer les liens familiaux", explanation: "Le repas dominical est une forte tradition culturelle pour se retrouver et renforcer les liens familiaux."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le français est-il parlé dans autant de pays?", options: ["Parce que tous les pays l'ont choisi librement", "À cause de l'histoire coloniale française et de la diffusion culturelle", "Parce que c'est la langue la plus facile", "Parce que l'ONU l'a imposé"], correctAnswer: "À cause de l'histoire coloniale française et de la diffusion culturelle", explanation: "La diffusion du français est due à l'histoire coloniale de la France et à son influence culturelle internationale."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le fromage est-il si varié en France?", options: ["Parce que les Français n'aiment pas les aliments uniformes", "Grâce à la diversité des régions, du lait et des techniques de fabrication", "Parce qu'ils copient d'autres pays", "Parce que c'est une obligation légale"], correctAnswer: "Grâce à la diversité des régions, du lait et des techniques de fabrication", explanation: "La diversité des climats, des races animales et des méthodes artisanales produit des centaines de fromages différents."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi apprend-on une langue étrangère en vieillissant?", options: ["C'est une perte de temps", "Pour stimuler le cerveau, maintenir les connexions sociales et culturelles", "Parce qu'on n'a rien d'autre à faire", "Parce que c'est obligatoire"], correctAnswer: "Pour stimuler le cerveau, maintenir les connexions sociales et culturelles", explanation: "L'apprentissage des langues aide à maintenir la plasticité cérébrale et favorise l'ouverture d'esprit."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi certains francophones préfèrent-ils habiter en Californie?", options: ["Parce qu'il n'y a pas de francophones ailleurs", "Pour le climat, les opportunités et la communauté francophone existante", "Parce que le français est la langue officielle de Californie", "Parce que la nourriture est moins chère"], correctAnswer: "Pour le climat, les opportunités et la communauté francophone existante", explanation: "La Californie attire pour son climat agréable, son dynamisme économique et ses réseaux communautaires existants."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi la cuisine haïtienne est-elle épicée?", options: ["Parce que les épices poussent naturellement en Haïti", "Pour des raisons de conservation et de tradition culturelle", "Parce que c'est une obligation religieuse", "Parce que les Haïtiens n'aiment pas les saveurs douces"], correctAnswer: "Pour des raisons de conservation et de tradition culturelle", explanation: "L'usage d'épices reflète un héritage culturel complexe et aidait historiquement à la conservation des aliments."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi se dit-on s'il vous plaît en France?", options: ["Pour montrer de la politesse et du respect", "Parce que c'est la loi", "Parce qu'on n'a pas d'autre choix", "Pour faire sourire les gens"], correctAnswer: "Pour montrer de la politesse et du respect", explanation: "C'est une marque de politesse fondamentale et de respect lors d'une demande."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi les Français accordent-ils tant d'importance aux congés?", options: ["Par paresse", "Pour se reposer, partager du temps en famille et recharger les batteries", "Parce que travailler est interdit en été", "Parce que c'est leur principal revenu"], correctAnswer: "Pour se reposer, partager du temps en famille et recharger les batteries", explanation: "Les congés payés sont un droit social acquis valorisant l'équilibre entre la vie professionnelle et le temps libre en famille.")
        ]
    )

    // MARK: - Questions Comment
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Questions Comment",
        instructions: "Répondez à la question sur la méthode.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Comment dit-on bonjour en français?", options: ["Au revoir", "Bonsoir", "Bonjour", "Salut"], correctAnswer: "Bonjour", explanation: "La salutation standard pendant la journée est 'Bonjour'."),
            ExerciseItem(id: UUID(), prompt: "Comment fait-on une béchamel (sauce blanche)?", options: ["En mélangeant beurre, farine et lait", "En mélangeant oeuf et sucre", "En faisant frire des légumes", "En ajoutant du fromage râpé dans du vin"], correctAnswer: "En mélangeant beurre, farine et lait", explanation: "La sauce béchamel se prépare en cuisant un roux (beurre et farine) et en y incorporant du lait."),
            ExerciseItem(id: UUID(), prompt: "Comment salue-t-on un ami en France?", options: ["En faisant la révérence", "En se faisant la bise sur les joues", "En inclinant la tête", "En criant le prénom à voix haute"], correctAnswer: "En se faisant la bise sur les joues", explanation: "Entre amis ou en famille, il est très courant de se faire la bise sur les joues."),
            ExerciseItem(id: UUID(), prompt: "Comment prépare-t-on une tasse de café en France (café simple)?", options: ["En mélangeant café soluble avec de l'eau froide", "En préparant un expresso ou café filtré", "En faisant bouillir des grains de café entiers", "En ajoutant du café dans du jus d'orange"], correctAnswer: "En préparant un expresso ou café filtré", explanation: "Un café traditionnel en France est généralement un petit café fort, comme un expresso, ou parfois un café filtre."),
            ExerciseItem(id: UUID(), prompt: "Comment s'excuse-t-on en français?", options: ["Je ne sais pas", "Pardon ou je suis désolé(e)", "Au revoir", "S'il vous plaît"], correctAnswer: "Pardon ou je suis désolé(e)", explanation: "Pour s'excuser, on utilise généralement 'Pardon' ou 'Je suis désolé(e)'."),
            ExerciseItem(id: UUID(), prompt: "Comment appelle-t-on un citoyen français qui immigre?", options: ["Expatrié ou immigré", "Touriste", "Réfugié uniquement", "Diplomate"], correctAnswer: "Expatrié ou immigré", explanation: "Un citoyen qui part vivre dans un autre pays est appelé un expatrié ou un immigré."),
            ExerciseItem(id: UUID(), prompt: "Comment mange-t-on habituellement une baguette en France?", options: ["Avec une fourchette et un couteau", "Avec les mains, souvent avec du beurre ou du fromage", "Coupée en tranches très fines et grillées", "Trempée dans du café uniquement"], correctAnswer: "Avec les mains, souvent avec du beurre ou du fromage", explanation: "La baguette se rompt souvent avec les mains et accompagne les repas, le fromage ou s'utilise pour des tartines."),
            ExerciseItem(id: UUID(), prompt: "Comment demande-t-on l'addition dans un restaurant français?", options: ["En criant très fort", "En levant la main et disant l'addition s'il vous plaît", "En tapant sur la table", "En envoyant un message au serveur"], correctAnswer: "En levant la main et disant l'addition s'il vous plaît", explanation: "On attire l'attention du serveur et on demande poliment 'L'addition, s'il vous plaît'."),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on merci beaucoup en français?", options: ["Je vous en prie", "Merci beaucoup", "De rien", "Avec plaisir"], correctAnswer: "Merci beaucoup", explanation: "L'expression pour exprimer une grande gratitude est 'Merci beaucoup'."),
            ExerciseItem(id: UUID(), prompt: "Comment prépare-t-on les crêpes en France?", options: ["On fait frire une pâte de farine, oeuf et lait dans une poêle", "On cuit au four avec du fromage", "On fait bouillir dans de l'eau sucrée", "On grille sur un barbecue"], correctAnswer: "On fait frire une pâte de farine, oeuf et lait dans une poêle", explanation: "Les crêpes se font à partir d'une pâte liquide (farine, œufs, lait) cuite finement dans une poêle chaude."),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on je t'aime en français?", options: ["Je te veux", "Je t'aime", "Je vous aime beaucoup", "Avec toi"], correctAnswer: "Je t'aime", explanation: "La traduction directe et la plus courante pour exprimer son amour est 'Je t'aime'."),
            ExerciseItem(id: UUID(), prompt: "Comment compte-t-on de 1 à 3 en français?", options: ["Un, deux, trois", "Une, deux, trois", "Un, deus, tres", "Uno, dos, tres"], correctAnswer: "Un, deux, trois", explanation: "Les trois premiers nombres entiers positifs sont 'Un, deux, trois'."),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on ça va en français?", options: ["Comment allez-vous? / Ça va?", "Bon voyage", "Bonne chance", "Merci beaucoup"], correctAnswer: "Comment allez-vous? / Ça va?", explanation: "Pour demander comment se porte quelqu'un, on dit 'Comment allez-vous ?' (formel) ou 'Ça va ?' (informel)."),
            ExerciseItem(id: UUID(), prompt: "Comment appelle-t-on le repas du soir en France?", options: ["Le petit-déjeuner", "Le déjeuner", "Le dîner", "Le goûter"], correctAnswer: "Le dîner", explanation: "Le repas pris en fin de journée est appelé 'le dîner'."),
            ExerciseItem(id: UUID(), prompt: "Comment traduit-on happy birthday en français?", options: ["Bon anniversaire!", "Bonne fête!", "Joyeux Noël!", "Félicitations!"], correctAnswer: "Bon anniversaire!", explanation: "On le traduit par 'Bon anniversaire' ou 'Joyeux anniversaire'.")
        ]
    )

    // MARK: - Mémoire de texte court
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Mémoire de texte court",
        instructions: "Lisez le texte et répondez à la question.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Qu'a-t-elle acheté?", options: ["Pain, lait et fruits", "Pain, viande et légumes", "Fruits, fromage et eau", "Lait, gâteau et café"], correctAnswer: "Pain, lait et fruits", explanation: "Dans le contexte de ce problème mathématique ou de logique, elle a acheté du pain, du lait et des fruits.", passage: "Madame Dupont est allée au marché le lundi. Elle a acheté du pain, du lait et des fruits."),
            ExerciseItem(id: UUID(), prompt: "Combien de temps Pierre a-t-il attendu?", options: ["30 minutes", "45 minutes", "1 heure", "1 heure 30"], correctAnswer: "1 heure", explanation: "Pierre a attendu une durée totale de 1 heure.", passage: "Pierre est allé voir le médecin mardi matin. Il a attendu une heure. La consultation a duré 30 minutes."),
            ExerciseItem(id: UUID(), prompt: "Combien de petits-fils a-t-elle?", options: ["1", "2", "3", "5"], correctAnswer: "2", explanation: "Elle a 2 petits-fils.", passage: "Marie a 5 petits-enfants. Trois sont des filles et deux sont des garçons."),
            ExerciseItem(id: UUID(), prompt: "À quelle heure arrive-t-il à destination?", options: ["15h30", "16h00", "16h30", "17h00"], correctAnswer: "16h30", explanation: "Son heure d'arrivée calculée est 16h30.", passage: "Le train de Lyon part à 14h30. Le voyage dure 2 heures."),
            ExerciseItem(id: UUID(), prompt: "Combien a-t-il dépensé?", options: ["5 euros", "5,50 euros", "6 euros", "6,50 euros"], correctAnswer: "6 euros", explanation: "La somme totale dépensée s'élève à 6 euros.", passage: "Jacques a acheté 3 baguettes à 1 euro chacune et 2 croissants à 1,50 euro chacun."),
            ExerciseItem(id: UUID(), prompt: "De quel jour date la préparation de la valise?", options: ["Mercredi", "Jeudi", "Vendredi", "Samedi"], correctAnswer: "Jeudi", explanation: "La préparation de la valise a été effectuée le jeudi.", passage: "Sophie partait en vacances vendredi. Elle a préparé sa valise jeudi soir."),
            ExerciseItem(id: UUID(), prompt: "Combien de prises y a-t-il en total?", options: ["20", "25", "30", "35"], correctAnswer: "30", explanation: "Le nombre total de prises comptées est de 30.", passage: "Le médecin a prescrit un médicament à prendre 3 fois par jour pendant 10 jours."),
            ExerciseItem(id: UUID(), prompt: "Combien de livres lit-elle en 1 mois (4 semaines)?", options: ["2 livres", "3 livres", "4 livres", "5 livres"], correctAnswer: "4 livres", explanation: "À raison d'un livre par semaine, elle lit 4 livres en 4 semaines.", passage: "Hélène aime lire. Elle lit en moyenne 1 livre par semaine."),
            ExerciseItem(id: UUID(), prompt: "En 2025, quel âge a-t-il?", options: ["75 ans", "80 ans", "85 ans", "90 ans"], correctAnswer: "85 ans", explanation: "Selon les données du problème, il aura 85 ans en l'an 2025.", passage: "Paul est né en 1940."),
            ExerciseItem(id: UUID(), prompt: "Combien de cadeaux a-t-elle reçus en tout?", options: ["6", "7", "8", "9"], correctAnswer: "8", explanation: "Elle a reçu un total cumulé de 8 cadeaux.", passage: "Anne a invité 8 amis pour son anniversaire. Chacun a apporté un cadeau. Elle a reçu des fleurs, un livre, des chocolats et 5 autres cadeaux."),
            ExerciseItem(id: UUID(), prompt: "À quelle heure ferme-t-il?", options: ["12h", "12h30", "13h", "14h"], correctAnswer: "13h", explanation: "L'heure de fermeture mentionnée est 13h.", passage: "Le marché a lieu chaque dimanche de 7h à 13h."),
            ExerciseItem(id: UUID(), prompt: "Combien lui en reste-t-il?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Après déduction, il lui reste 2 éléments.", passage: "Marie-Claire a fait de la tarte aux pommes avec 6 pommes. Elle en a utilisé 4."),
            ExerciseItem(id: UUID(), prompt: "À quelle heure s'est-il terminé?", options: ["21h30", "22h", "22h30", "23h"], correctAnswer: "22h30", explanation: "L'événement ou l'activité a pris fin à 22h30.", passage: "Le concert commençait à 20h. Il a duré 2 heures et demie."),
            ExerciseItem(id: UUID(), prompt: "Combien de jours a pris la lettre?", options: ["5 jours", "6 jours", "7 jours", "8 jours"], correctAnswer: "7 jours", explanation: "Le délai de livraison de la lettre a été de 7 jours.", passage: "Bernard a reçu une lettre de son neveu en Haïti. La lettre est arrivée le 15 mars. Son neveu l'avait envoyée le 8 mars."),
            ExerciseItem(id: UUID(), prompt: "De quelle couleur est la laine?", options: ["Rouge et verte", "Bleue et blanche", "Jaune et noire", "Rose et dorée"], correctAnswer: "Bleue et blanche", explanation: "La laine décrite est de couleur bleue et blanche.", passage: "Françoise a tricoté un pull pour sa petite-fille. Elle a utilisé de la laine bleue et blanche.")
        ]
    )

    // MARK: - Suite de nombres
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Suite de nombres",
        instructions: "Continuez la suite de nombres.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "C'est une suite arithmétique où l'on ajoute 2 à chaque fois (nombres pairs). Après 8 vient 10."),
            ExerciseItem(id: UUID(), prompt: "5, 10, 15, 20, ___", options: ["24", "25", "26", "30"], correctAnswer: "25", explanation: "C'est une progression arithmétique avec un pas de +5 (multiples de 5). Après 20 vient 25."),
            ExerciseItem(id: UUID(), prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "C'est la suite des nombres impairs consécutifs (ajout de 2). Après 7 vient 9."),
            ExerciseItem(id: UUID(), prompt: "10, 20, 30, 40, ___", options: ["45", "48", "50", "55"], correctAnswer: "50", explanation: "C'est une suite de dizaines croissantes (+10 à chaque étape). Après 40 vient 50."),
            ExerciseItem(id: UUID(), prompt: "100, 90, 80, 70, ___", options: ["55", "60", "65", "75"], correctAnswer: "60", explanation: "C'est une suite décroissante où l'on soustrait 10 à chaque fois. Après 70 vient 60."),
            ExerciseItem(id: UUID(), prompt: "1, 2, 4, 8, ___", options: ["10", "12", "16", "20"], correctAnswer: "16", explanation: "C'est une suite géométrique où chaque nombre est multiplié par 2 (puissances de 2). Après 8 vient 16."),
            ExerciseItem(id: UUID(), prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "C'est une suite des multiples de 3 (+3 à chaque fois). Après 12 vient 15."),
            ExerciseItem(id: UUID(), prompt: "50, 45, 40, 35, ___", options: ["28", "30", "32", "34"], correctAnswer: "30", explanation: "C'est une suite décroissante avec un pas de -5. Après 35 vient 30."),
            ExerciseItem(id: UUID(), prompt: "2, 5, 8, 11, ___", options: ["12", "13", "14", "15"], correctAnswer: "14", explanation: "C'est une suite arithmétique avec une raison de +3. Après 11 vient 14."),
            ExerciseItem(id: UUID(), prompt: "1, 4, 9, 16, ___", options: ["20", "24", "25", "30"], correctAnswer: "25", explanation: "Ce sont les carrés parfaits consécutifs (1², 2², 3², 4²). Le suivant est 5² soit 25."),
            ExerciseItem(id: UUID(), prompt: "10, 8, 6, 4, ___", options: ["0", "1", "2", "3"], correctAnswer: "2", explanation: "C'est une suite arithmétique décroissante où l'on soustrait 2. Après 4 vient 2."),
            ExerciseItem(id: UUID(), prompt: "7, 14, 21, 28, ___", options: ["30", "33", "35", "36"], correctAnswer: "35", explanation: "C'est la table de multiplication de 7 (+7 à chaque étape). Après 28 vient 35."),
            ExerciseItem(id: UUID(), prompt: "1, 1, 2, 3, 5, ___", options: ["6", "7", "8", "10"], correctAnswer: "8", explanation: "C'est la célèbre suite de Fibonacci où chaque nombre est la somme des deux précédents (2+3=5, 3+5=8)."),
            ExerciseItem(id: UUID(), prompt: "20, 17, 14, 11, ___", options: ["6", "7", "8", "9"], correctAnswer: "8", explanation: "C'est une progression arithmétique où l'on soustrait 3 à chaque terme. Après 11 vient 8."),
            ExerciseItem(id: UUID(), prompt: "4, 8, 16, 32, ___", options: ["48", "54", "60", "64"], correctAnswer: "64", explanation: "C'est une suite géométrique où l'on multiplie par 2. Après 32 vient 64."),
            ExerciseItem(id: UUID(), prompt: "6, 12, 18, 24, ___", options: ["28", "29", "30", "32"], correctAnswer: "30", explanation: "Ce sont les multiples de 6 (+6 à chaque fois). Après 24 vient 30."),
            ExerciseItem(id: UUID(), prompt: "100, 50, 25, ___", options: ["10", "12", "12.5", "15"], correctAnswer: "12.5", explanation: "C'est une suite géométrique où chaque terme est divisé par 2. La moitié de 25 est 12,5."),
            ExerciseItem(id: UUID(), prompt: "9, 18, 27, 36, ___", options: ["42", "44", "45", "54"], correctAnswer: "45", explanation: "Ce sont les multiples de 9 (+9 à chaque étape). Après 36 vient 45."),
            ExerciseItem(id: UUID(), prompt: "15, 12, 9, 6, ___", options: ["1", "2", "3", "4"], correctAnswer: "3", explanation: "C'est une suite décroissante avec une soustraction de 3. Après 6 vient 3."),
            ExerciseItem(id: UUID(), prompt: "8, 11, 14, 17, ___", options: ["18", "19", "20", "21"], correctAnswer: "20", explanation: "C'est une suite arithmétique croissante avec un pas de +3. Après 17 vient 20.")
        ]
    )

    // MARK: - Cause et Effet
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Cause et Effet",
        instructions: "Choisissez l'effet qui correspond à la cause donnée.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Il pleut. Que se passe-t-il?", options: ["Le sol est sec", "Le sol est mouillé", "La température monte", "Il fait plus lumineux"], correctAnswer: "Le sol est mouillé", explanation: "La pluie est de l'eau qui tombe du ciel, ce qui a pour conséquence directe de mouiller le sol et les objets en plein air."),
            ExerciseItem(id: UUID(), prompt: "Madame Dupont dort 8 heures chaque nuit. Quel est le résultat?", options: ["Elle est toujours fatiguée", "Elle se sent mieux et plus reposée", "Elle perd de l'appétit", "Elle prend du poids"], correctAnswer: "Elle se sent mieux et plus reposée", explanation: "Un sommeil suffisant et régulier permet au corps de récupérer, apportant repos et bien-être."),
            ExerciseItem(id: UUID(), prompt: "On laisse tomber un verre par terre. Que se passe-t-il?", options: ["Il vole", "Il se brise", "Il grossit", "Il chauffe"], correctAnswer: "Il se brise", explanation: "Le verre est une matière fragile; l'impact avec le sol dur provoque généralement sa casse."),
            ExerciseItem(id: UUID(), prompt: "On n'arrose pas la plante pendant plusieurs jours. Que se passe-t-il?", options: ["Elle pousse mieux", "Elle se fane", "Elle fleurit", "Elle grandit plus vite"], correctAnswer: "Elle se fane", explanation: "Les plantes ont besoin d'eau pour survivre. Sans eau, elles se déshydratent, flétrissent et finissent par faner."),
            ExerciseItem(id: UUID(), prompt: "Pierre a marché longtemps. Quel est le résultat?", options: ["Il a froid aux jambes", "Il est fatigué", "Il voit mieux", "Il n'a plus faim"], correctAnswer: "Il est fatigué", explanation: "L'effort physique prolongé comme la marche consomme de l'énergie et provoque naturellement de la fatigue."),
            ExerciseItem(id: UUID(), prompt: "On laisse le four allumé sans surveillance. Que risque-t-il de se passer?", options: ["La nourriture est froide", "Le repas peut brûler ou provoquer un incendie", "Le four se refroidit", "La nourriture est plus juteuse"], correctAnswer: "Le repas peut brûler ou provoquer un incendie", explanation: "Une chaleur intense non surveillée peut carboniser les aliments et potentiellement déclencher un feu."),
            ExerciseItem(id: UUID(), prompt: "Sophie oublie de prendre ses médicaments. Que risque-t-il de se passer?", options: ["Elle guérit plus vite", "Son état de santé pourrait se détériorer", "Elle se sent plus forte", "Elle dort mieux"], correctAnswer: "Son état de santé pourrait se détériorer", explanation: "L'interruption d'un traitement médical peut réduire son efficacité et entraîner une aggravation des symptômes."),
            ExerciseItem(id: UUID(), prompt: "On pratique de l'exercice chaque jour. Quel est l'effet?", options: ["On perd de la force", "On se sent moins bien", "On améliore sa condition physique", "On prend du poids"], correctAnswer: "On améliore sa condition physique", explanation: "L'activité physique régulière renforce les muscles, le cœur et améliore la santé globale de l'organisme."),
            ExerciseItem(id: UUID(), prompt: "Jean reçoit une bonne nouvelle. Que ressent-il?", options: ["De la tristesse", "De la joie", "De la colère", "De la peur"], correctAnswer: "De la joie", explanation: "Une nouvelle positive déclenche des émotions agréables telles que le bonheur, le soulagement ou la joie."),
            ExerciseItem(id: UUID(), prompt: "On dépense plus d'argent qu'on en gagne. Que se passe-t-il?", options: ["L'argent augmente", "On s'enrichit", "On accumule des dettes", "On économise plus"], correctAnswer: "On accumule des dettes", explanation: "Dépenser au-delà de ses revenus crée un déficit financier, conduisant inévitablement à l'endettement."),
            ExerciseItem(id: UUID(), prompt: "On fait le ménage régulièrement. Quel est le résultat?", options: ["La maison est sale", "La maison est propre et ordonnée", "La maison sent mauvais", "La maison est plus petite"], correctAnswer: "La maison est propre et ordonnée", explanation: "L'entretien fréquent permet d'éliminer la saleté et le désordre, maintenant un environnement de vie sain et propre."),
            ExerciseItem(id: UUID(), prompt: "On veille très tard le soir. Quel est l'effet le lendemain?", options: ["On se sent reposé", "On est fatigué et somnolent", "On a plus d'énergie", "On voit mieux"], correctAnswer: "On est fatigué et somnolent", explanation: "Le manque de sommeil perturbe le cycle naturel et entraîne une baisse d'énergie, de la fatigue et de la somnolence."),
            ExerciseItem(id: UUID(), prompt: "La casserole est laissée sur le feu trop longtemps. Que se passe-t-il?", options: ["L'eau refroidit", "L'eau s'évapore et les aliments brûlent", "Les aliments deviennent plus frais", "La casserole devient plus grande"], correctAnswer: "L'eau s'évapore et les aliments brûlent", explanation: "Sous l'effet de la chaleur prolongée, tout le liquide s'évapore et la nourriture restante calcine au fond de la casserole."),
            ExerciseItem(id: UUID(), prompt: "Un ami vous offre des fleurs pour votre anniversaire. Que ressentez-vous?", options: ["De la tristesse", "De la colère", "De la gratitude et de la joie", "De la fatigue"], correctAnswer: "De la gratitude et de la joie", explanation: "Recevoir un cadeau, surtout d'un ami, suscite des sentiments positifs comme la joie, l'appréciation et la gratitude."),
            ExerciseItem(id: UUID(), prompt: "On s'entraîne régulièrement à apprendre une nouvelle langue. Quel est le résultat?", options: ["On l'oublie plus vite", "On progresse et améliore ses compétences", "On ne fait aucun progrès", "On perd sa langue maternelle"], correctAnswer: "On progresse et améliore ses compétences", explanation: "La pratique constante favorise la mémorisation et la fluidité, ce qui entraîne une amélioration des capacités linguistiques.")
        ]
    )

    // MARK: - Reconnaissance des émotions
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Reconnaissance des émotions",
        instructions: "Quel sentiment ressentez-vous dans cette situation?",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "On vous offre un cadeau pour votre anniversaire. Que ressentez-vous?", options: ["De la tristesse", "De la joie", "De la colère", "De l'ennui"], correctAnswer: "De la joie", explanation: "Recevoir un cadeau d'anniversaire est une marque d'affection qui suscite naturellement de la joie."),
            ExerciseItem(id: UUID(), prompt: "Vous perdez un objet qui compte pour vous. Que ressentez-vous?", options: ["De la joie", "Du soulagement", "De la tristesse", "De la fierté"], correctAnswer: "De la tristesse", explanation: "Perdre un objet précieux provoque un sentiment de manque et de chagrin, d'où la tristesse."),
            ExerciseItem(id: UUID(), prompt: "Un grand chien aboie soudainement vers vous. Que ressentez-vous?", options: ["De la joie", "De la peur", "De la colère", "Du calme"], correctAnswer: "De la peur", explanation: "L'aboiement soudain d'un grand chien représente une menace potentielle qui déclenche l'instinct de peur."),
            ExerciseItem(id: UUID(), prompt: "Après un long voyage, vous rentrez enfin chez vous. Que ressentez-vous?", options: ["De la tristesse", "Du soulagement", "De la peur", "De la colère"], correctAnswer: "Du soulagement", explanation: "Rentrer chez soi après un long voyage apporte un confort et un apaisement qui se traduisent par du soulagement."),
            ExerciseItem(id: UUID(), prompt: "Un événement que vous attendiez avec impatience est annulé. Que ressentez-vous?", options: ["De la joie", "De la déception", "De l'énergie", "Du bonheur"], correctAnswer: "De la déception", explanation: "L'annulation d'un événement très attendu engendre une frustration due aux attentes non comblées, c'est la déception."),
            ExerciseItem(id: UUID(), prompt: "Vous retrouvez un vieil ami après des années. Que ressentez-vous?", options: ["De la colère", "De la tristesse", "De la nostalgie et de la joie", "De l'ennui"], correctAnswer: "De la nostalgie et de la joie", explanation: "Revoir un vieil ami rappelle le passé (nostalgie) tout en offrant le bonheur des retrouvailles (joie)."),
            ExerciseItem(id: UUID(), prompt: "Quelqu'un vous traite de manière injuste. Que ressentez-vous?", options: ["De la joie", "De la colère", "Du soulagement", "Du bonheur"], correctAnswer: "De la colère", explanation: "Subir une injustice provoque un sentiment de révolte et de frustration qui se manifeste par de la colère."),
            ExerciseItem(id: UUID(), prompt: "Vous réussissez un examen difficile. Que ressentez-vous?", options: ["De la tristesse", "De la honte", "De la fierté et de la joie", "De la peur"], correctAnswer: "De la fierté et de la joie", explanation: "Réussir une épreuve difficile valide les efforts fournis, ce qui apporte un sentiment d'accomplissement (fierté) et de bonheur (joie)."),
            ExerciseItem(id: UUID(), prompt: "Vous êtes seul(e) dans un endroit inconnu. Que ressentez-vous?", options: ["De la joie", "De l'excitation et de l'inquiétude", "Du soulagement", "De la tristesse"], correctAnswer: "De l'excitation et de l'inquiétude", explanation: "Être seul dans un endroit inconnu est à la fois une aventure (excitation) et une situation potentiellement incertaine (inquiétude)."),
            ExerciseItem(id: UUID(), prompt: "Vous écoutez votre chanson préférée. Que ressentez-vous?", options: ["De la tristesse", "De la peur", "Du bonheur et du plaisir", "De la colère"], correctAnswer: "Du bonheur et du plaisir", explanation: "Écouter une musique que l'on aime stimule les émotions positives, procurant un sentiment de bonheur et de plaisir."),
            ExerciseItem(id: UUID(), prompt: "Un proche est à l'hôpital. Que ressentez-vous?", options: ["De la joie", "De l'inquiétude", "Du soulagement", "De l'ennui"], correctAnswer: "De l'inquiétude", explanation: "L'hospitalisation d'un proche implique un risque pour sa santé, ce qui génère naturellement de l'inquiétude."),
            ExerciseItem(id: UUID(), prompt: "Vos petits-enfants viennent vous rendre visite. Que ressentez-vous?", options: ["De la colère", "De la tristesse", "De la joie", "De la peur"], correctAnswer: "De la joie", explanation: "La visite de ses petits-enfants est un moment de partage familial chaleureux qui apporte de la joie."),
            ExerciseItem(id: UUID(), prompt: "Vous devez faire une présentation devant beaucoup de personnes. Que ressentez-vous?", options: ["Du calme absolu", "De la tension et des nerfs", "De la joie sans mélange", "Du soulagement"], correctAnswer: "De la tension et des nerfs", explanation: "Parler en public expose au jugement des autres, ce qui provoque du stress, de la tension et de la nervosité."),
            ExerciseItem(id: UUID(), prompt: "Vous recevez de bonnes nouvelles du médecin. Que ressentez-vous?", options: ["De la tristesse", "De l'inquiétude", "Du soulagement et de la joie", "De la colère"], correctAnswer: "Du soulagement et de la joie", explanation: "De bonnes nouvelles médicales dissipent l'angoisse préalable (soulagement) et apportent du bonheur (joie)."),
            ExerciseItem(id: UUID(), prompt: "Vous voyez une belle fleur s'épanouir dans votre jardin. Que ressentez-vous?", options: ["De la tristesse", "De la colère", "De la sérénité et du plaisir", "De la peur"], correctAnswer: "De la sérénité et du plaisir", explanation: "Contempler la nature et une belle fleur épanouie apporte une tranquillité d'esprit (sérénité) et une satisfaction esthétique (plaisir)."),
            ExerciseItem(id: UUID(), prompt: "Vous loupez votre bus. Que ressentez-vous?", options: ["De la joie", "Du bonheur", "De la frustration", "Du soulagement"], correctAnswer: "De la frustration", explanation: "Rater un transport en commun contrarie les plans et crée un sentiment d'impuissance face au retard, d'où la frustration."),
            ExerciseItem(id: UUID(), prompt: "Quelqu'un porte vos courses lourdes pour vous. Que ressentez-vous?", options: ["De la colère", "De la gratitude", "De la tristesse", "De la peur"], correctAnswer: "De la gratitude", explanation: "Recevoir de l'aide pour une tâche difficile suscite de la reconnaissance envers la personne serviable, c'est la gratitude."),
            ExerciseItem(id: UUID(), prompt: "Votre recette n'a pas réussi comme prévu. Que ressentez-vous?", options: ["De la fierté", "De la déception", "Du soulagement", "De la joie"], correctAnswer: "De la déception", explanation: "L'échec d'une recette après y avoir mis de l'effort crée un écart entre l'attente et le résultat, menant à la déception."),
            ExerciseItem(id: UUID(), prompt: "Vous entendez un bruit étrange la nuit. Que ressentez-vous?", options: ["De la joie", "Du bonheur", "De l'inquiétude", "Du calme"], correctAnswer: "De l'inquiétude", explanation: "Un bruit inexpliqué la nuit suggère une menace potentielle dans un environnement vulnérable, causant de l'inquiétude."),
            ExerciseItem(id: UUID(), prompt: "Votre rêve de longue date se réalise enfin. Que ressentez-vous?", options: ["De la tristesse", "De l'ennui", "De la colère", "De la joie et de la satisfaction"], correctAnswer: "De la joie et de la satisfaction", explanation: "L'accomplissement d'un objectif de longue date apporte un immense bonheur (joie) et le sentiment du devoir accompli (satisfaction).")
        ]
    )

    // MARK: - Incohérence situationnelle
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Incohérence situationnelle",
        instructions: "Qu'est-ce qui ne va pas dans cette situation?",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "En plein été, Madame Martin sort avec un épais manteau d'hiver. Qu'est-ce qui ne va pas?", options: ["La destination", "La tenue ne correspond pas à la saison", "La personne", "Rien ne va pas"], correctAnswer: "La tenue ne correspond pas à la saison", explanation: "En été, il fait chaud. Porter un manteau d'hiver, conçu pour se protéger du froid, est illogique et inadapté à la chaleur."),
            ExerciseItem(id: UUID(), prompt: "Pour son anniversaire, Pierre a dit des condoléances à sa soeur. Qu'est-ce qui ne va pas?", options: ["Qu'il a un anniversaire", "Qu'il a dit des condoléances à une occasion joyeuse", "Sa soeur", "Rien"], correctAnswer: "Qu'il a dit des condoléances à une occasion joyeuse", explanation: "Les condoléances sont exprimées lors d'un décès, pas lors d'un anniversaire qui est un événement festif."),
            ExerciseItem(id: UUID(), prompt: "Marie a mangé proprement et a lavé ses mains avant le repas. Qu'est-ce qui ne va pas?", options: ["Le repas", "Les mains", "Rien (c'est une bonne habitude)", "Marie"], correctAnswer: "Rien (c'est une bonne habitude)", explanation: "Se laver les mains avant de manger est une excellente habitude d'hygiène, il n'y a donc rien d'anormal."),
            ExerciseItem(id: UUID(), prompt: "Jean va à la bibliothèque et parle très fort au téléphone. Qu'est-ce qui ne va pas?", options: ["Il va à la bibliothèque", "Il parle fort dans un endroit silencieux", "Son téléphone", "Rien"], correctAnswer: "Il parle fort dans un endroit silencieux", explanation: "Une bibliothèque est un lieu d'étude nécessitant le silence ; parler fort au téléphone y est donc inapproprié et dérangeant."),
            ExerciseItem(id: UUID(), prompt: "Sophie prend de la soupe dans son verre. Qu'est-ce qui ne va pas?", options: ["Elle mange de la soupe", "Elle utilise un verre pour la soupe", "Son repas", "Rien"], correctAnswer: "Elle utilise un verre pour la soupe", explanation: "La soupe se mange généralement dans une assiette creuse ou un bol à l'aide d'une cuillère, et non dans un verre à boire."),
            ExerciseItem(id: UUID(), prompt: "Le médecin a prescrit des médicaments. Paul les a pris deux fois par jour au lieu de trois. Qu'est-ce qui ne va pas?", options: ["Il a pris ses médicaments", "Il a pris la mauvaise dose", "Il est allé chez le médecin", "Rien"], correctAnswer: "Il a pris la mauvaise dose", explanation: "Ne pas respecter la posologie (trois fois par jour) prescrite par le médecin empêche le traitement d'être efficace ou sûr."),
            ExerciseItem(id: UUID(), prompt: "Anne passe au rouge et traverse la rue. Qu'est-ce qui ne va pas?", options: ["Elle traverse la rue", "Elle passe au rouge (brûle le feu)", "Elle marche", "Rien"], correctAnswer: "Elle passe au rouge (brûle le feu)", explanation: "Franchir un feu rouge est une infraction au code de la route et extrêmement dangereux pour soi et pour les autres."),
            ExerciseItem(id: UUID(), prompt: "Marc a mis une lettre dans l'enveloppe sans timbre et l'a postée. Qu'est-ce qui ne va pas?", options: ["Il a écrit une lettre", "Il a oublié le timbre", "Il a posté la lettre", "Rien"], correctAnswer: "Il a oublié le timbre", explanation: "Pour qu'une lettre soit acheminée par les services postaux, elle doit obligatoirement être affranchie avec un timbre."),
            ExerciseItem(id: UUID(), prompt: "Hélène fait bouillir de la glace pour refroidir sa soupe. Qu'est-ce qui ne va pas?", options: ["Elle cuisine de la soupe", "Elle fait bouillir la glace pour refroidir", "Elle aime la soupe froide", "Rien"], correctAnswer: "Elle fait bouillir la glace pour refroidir", explanation: "Faire bouillir de la glace la transforme en eau chaude ou en vapeur, ce qui ne permet pas de refroidir un plat."),
            ExerciseItem(id: UUID(), prompt: "Louise prend un bain en gardant ses vêtements. Qu'est-ce qui ne va pas?", options: ["Elle prend un bain", "Elle garde ses vêtements dans le bain", "Son bain", "Rien"], correctAnswer: "Elle garde ses vêtements dans le bain", explanation: "Un bain sert à se laver le corps. Le prendre tout habillé mouille les vêtements et empêche de se laver correctement."),
            ExerciseItem(id: UUID(), prompt: "Pierre utilise son couteau de cuisine pour écrire sur le tableau. Qu'est-ce qui ne va pas?", options: ["Il écrit sur le tableau", "Il utilise un couteau pour écrire", "Le tableau", "Rien"], correctAnswer: "Il utilise un couteau pour écrire", explanation: "Un couteau est fait pour couper de la nourriture, pas pour écrire. On utilise une craie ou un feutre sur un tableau."),
            ExerciseItem(id: UUID(), prompt: "Marie-Claire se brosse les dents avec du savon de toilette. Qu'est-ce qui ne va pas?", options: ["Elle se brosse les dents", "Elle utilise du savon de toilette au lieu de dentifrice", "Elle se brosse trop souvent", "Rien"], correctAnswer: "Elle utilise du savon de toilette au lieu de dentifrice", explanation: "Le savon de toilette est destiné au corps. Pour l'hygiène buccale, on doit utiliser du dentifrice adapté."),
            ExerciseItem(id: UUID(), prompt: "Robert prie à l'église et crie très fort de colère. Qu'est-ce qui ne va pas?", options: ["Il va à l'église", "Il prie", "Crier de colère dans un lieu de culte", "Rien"], correctAnswer: "Crier de colère dans un lieu de culte", explanation: "Une église est un lieu de recueillement silencieux, crier de colère y est irrespectueux et déplacé."),
            ExerciseItem(id: UUID(), prompt: "Josette place du thé chaud dans le réfrigérateur avant de le boire. Qu'est-ce qui ne va pas?", options: ["Elle boit du thé chaud", "Elle met le thé chaud au réfrigérateur avant de le boire", "Elle a un réfrigérateur", "Rien"], correctAnswer: "Elle met le thé chaud au réfrigérateur avant de le boire", explanation: "Mettre un liquide très chaud directement au réfrigérateur risque d'endommager l'appareil en augmentant sa température interne."),
            ExerciseItem(id: UUID(), prompt: "François détecte une odeur de gaz et utilise son briquet pour vérifier. Qu'est-ce qui ne va pas?", options: ["Il détecte l'odeur de gaz", "Utiliser une flamme (briquet) avec une fuite de gaz est très dangereux", "Il possède un briquet", "Rien"], correctAnswer: "Utiliser une flamme (briquet) avec une fuite de gaz est très dangereux", explanation: "Utiliser un briquet en présence d'une fuite de gaz risque de provoquer une explosion mortelle.")
        ]
    )

    // MARK: - Culture générale: Histoire
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "Culture générale: Histoire",
        instructions: "Répondez à cette question d'histoire.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "En quelle année a eu lieu la Révolution française?", options: ["1689", "1789", "1889", "1989"], correctAnswer: "1789", explanation: "La Révolution française a débuté en 1789 avec des événements majeurs comme la prise de la Bastille le 14 juillet."),
            ExerciseItem(id: UUID(), prompt: "Quelle reine de France a été guillotinée pendant la Révolution?", options: ["Marie Curie", "Marie-Antoinette", "Joséphine de Beauharnais", "Catherine de Médicis"], correctAnswer: "Marie-Antoinette", explanation: "Marie-Antoinette, épouse de Louis XVI, a été guillotinée en octobre 1793 durant la période de la Terreur."),
            ExerciseItem(id: UUID(), prompt: "Quelle bataille décisive Napoléon a-t-il perdue en 1815?", options: ["Austerlitz", "Waterloo", "Trafalgar", "Verdun"], correctAnswer: "Waterloo", explanation: "La bataille de Waterloo a eu lieu le 18 juin 1815 et a marqué la défaite finale de Napoléon Bonaparte."),
            ExerciseItem(id: UUID(), prompt: "En quelle année Haïti est-elle devenue indépendante?", options: ["1776", "1804", "1848", "1900"], correctAnswer: "1804", explanation: "Le 1er janvier 1804, Haïti a proclamé son indépendance de la France, devenant la première république noire libre au monde."),
            ExerciseItem(id: UUID(), prompt: "Quel traité a mis fin à la Première Guerre mondiale?", options: ["Traité de Paris", "Traité de Versailles", "Traité de Berlin", "Traité de Rome"], correctAnswer: "Traité de Versailles", explanation: "Le Traité de Versailles, signé le 28 juin 1919, a officiellement mis fin à la Première Guerre mondiale."),
            ExerciseItem(id: UUID(), prompt: "Qui était le premier président de la Ve République française?", options: ["François Mitterrand", "Jacques Chirac", "Charles de Gaulle", "Valéry Giscard d'Estaing"], correctAnswer: "Charles de Gaulle", explanation: "Charles de Gaulle a fondé la Ve République et en est devenu le premier président en 1959."),
            ExerciseItem(id: UUID(), prompt: "En quelle année la Tour Eiffel a-t-elle été construite?", options: ["1789", "1844", "1889", "1900"], correctAnswer: "1889", explanation: "La Tour Eiffel a été achevée en 1889 à l'occasion de l'Exposition universelle commémorant le centenaire de la Révolution française."),
            ExerciseItem(id: UUID(), prompt: "Quel document a été adopté lors de la Révolution française?", options: ["Magna Carta", "Déclaration des droits de l'homme et du citoyen", "Constitution américaine", "Charte de Québec"], correctAnswer: "Déclaration des droits de l'homme et du citoyen", explanation: "La Déclaration des droits de l'homme et du citoyen a été adoptée en août 1789, posant les principes fondamentaux de la nouvelle société."),
            ExerciseItem(id: UUID(), prompt: "Quelle ville française a été libérée en août 1944?", options: ["Lyon", "Marseille", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: "Paris a été libérée de l'occupation nazie fin août 1944 par les forces alliées et la résistance française."),
            ExerciseItem(id: UUID(), prompt: "Quel roi a construit le château de Versailles?", options: ["Louis XIII", "Louis XIV", "Louis XV", "Louis XVI"], correctAnswer: "Louis XIV", explanation: "C'est Louis XIV, le Roi Soleil, qui a transformé et agrandi le pavillon de chasse de son père pour en faire l'immense château de Versailles."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la signification du mot Liberté dans la devise française?", options: ["La liberté de travailler", "La liberté individuelle et collective", "La liberté de s'exprimer uniquement", "La liberté de voyager"], correctAnswer: "La liberté individuelle et collective", explanation: "La liberté dans 'Liberté, Égalité, Fraternité' souligne l'importance des droits de l'individu à agir librement tant qu'il ne nuit pas à autrui."),
            ExerciseItem(id: UUID(), prompt: "Quand la France a-t-elle adopté l'euro?", options: ["1992", "1999-2002", "2005", "2010"], correctAnswer: "1999-2002", explanation: "L'euro a été adopté comme monnaie de compte en 1999 et les pièces et billets ont été mis en circulation en 2002."),
            ExerciseItem(id: UUID(), prompt: "Quel est le surnom du roi Louis XIV?", options: ["Le Roi de France", "Le Roi Soleil", "Le Grand Roi", "Le Roi des Rois"], correctAnswer: "Le Roi Soleil", explanation: "Louis XIV a choisi l'emblème du soleil, symbole de lumière et de rayonnement, ce qui lui a valu ce surnom."),
            ExerciseItem(id: UUID(), prompt: "En quelle année la France a-t-elle aboli l'esclavage définitivement?", options: ["1789", "1794", "1848", "1870"], correctAnswer: "1848", explanation: "L'esclavage a été définitivement aboli dans les colonies françaises en 1848, grâce notamment à l'action de Victor Schœlcher."),
            ExerciseItem(id: UUID(), prompt: "Quel événement a déclenché la Première Guerre mondiale?", options: ["L'invasion de la Pologne", "L'assassinat de l'archiduc François-Ferdinand", "La Révolution russe", "La crise économique de 1929"], correctAnswer: "L'assassinat de l'archiduc François-Ferdinand", explanation: "L'assassinat de l'archiduc François-Ferdinand à Sarajevo le 28 juin 1914 a été l'étincelle qui a déclenché le jeu des alliances de la Première Guerre mondiale.")
        ]
    )

    // MARK: - Culture générale: Géographie
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "Culture générale: Géographie",
        instructions: "Répondez à cette question de géographie.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quelle est la capitale de la France?", options: ["Lyon", "Marseille", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: "Paris est la capitale politique, économique et culturelle de la France."),
            ExerciseItem(id: UUID(), prompt: "Quel est le plus long fleuve de France?", options: ["La Seine", "Le Rhône", "La Loire", "La Garonne"], correctAnswer: "La Loire", explanation: "Avec une longueur de 1 006 kilomètres, la Loire est le plus long fleuve coulant entièrement en France."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la plus haute montagne d'Europe occidentale?", options: ["Mont Blanc", "Mont Everest", "Kilimanjaro", "Mont Fuji"], correctAnswer: "Mont Blanc", explanation: "Le Mont Blanc, situé dans les Alpes françaises, culmine à 4 805 mètres, ce qui en fait le sommet de l'Europe occidentale."),
            ExerciseItem(id: UUID(), prompt: "Quelles mers baignent les côtes françaises?", options: ["Méditerranée et Atlantique", "Pacifique et Arctique", "Rouge et Noire", "Adriatique et Baltique"], correctAnswer: "Méditerranée et Atlantique", explanation: "La France est bordée par la mer Méditerranée au sud et l'océan Atlantique à l'ouest (qui inclut la Manche au nord)."),
            ExerciseItem(id: UUID(), prompt: "Quelle ville française est connue pour ses vins rouges?", options: ["Paris", "Strasbourg", "Bordeaux", "Nice"], correctAnswer: "Bordeaux", explanation: "Bordeaux est mondialement célèbre pour ses vignobles et la production de prestigieux vins rouges."),
            ExerciseItem(id: UUID(), prompt: "Quel pays francophone se trouve dans les Caraïbes?", options: ["Haïti", "Cuba", "Jamaïque", "Barbade"], correctAnswer: "Haïti", explanation: "Haïti est une nation des Caraïbes dont les langues officielles sont le français et le créole haïtien."),
            ExerciseItem(id: UUID(), prompt: "Dans quelle ville est situé le palais de l'Élysée?", options: ["Lyon", "Paris", "Bordeaux", "Versailles"], correctAnswer: "Paris", explanation: "Le palais de l'Élysée, résidence officielle du président de la République française, est situé à Paris."),
            ExerciseItem(id: UUID(), prompt: "Quelle région de France est connue pour sa spécialité de choucroute?", options: ["Provence", "Bretagne", "Alsace", "Normandie"], correctAnswer: "Alsace", explanation: "L'Alsace, région de l'est de la France aux influences germaniques, a pour plat emblématique la choucroute."),
            ExerciseItem(id: UUID(), prompt: "Quelle ville est connue comme la capitale de la gastronomie française?", options: ["Paris", "Marseille", "Lyon", "Bordeaux"], correctAnswer: "Lyon", explanation: "Lyon est souvent qualifiée de capitale mondiale de la gastronomie grâce à ses fameux bouchons et à de grands chefs comme Paul Bocuse."),
            ExerciseItem(id: UUID(), prompt: "Combien de pays ont le français comme langue officielle?", options: ["5", "15", "29", "45"], correctAnswer: "29", explanation: "Le français est la langue officielle ou co-officielle de 29 pays à travers le monde, formant l'Organisation internationale de la Francophonie."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la superficie de la France métropolitaine approximativement?", options: ["250 000 km²", "550 000 km²", "750 000 km²", "1 000 000 km²"], correctAnswer: "550 000 km²", explanation: "La France métropolitaine (l'Hexagone) couvre environ 550 000 km², ce qui en fait le plus grand pays de l'Union européenne en superficie."),
            ExerciseItem(id: UUID(), prompt: "Quelle région française est connue pour ses crêpes?", options: ["Alsace", "Bretagne", "Provence", "Normandie"], correctAnswer: "Bretagne", explanation: "La Bretagne est une région du nord-ouest réputée pour ses traditions culinaires, notamment les crêpes et les galettes de sarrasin."),
            ExerciseItem(id: UUID(), prompt: "Quel est le pays voisin de la France au nord-ouest?", options: ["Allemagne", "Italie", "Belgique", "Espagne"], correctAnswer: "Belgique", explanation: "La Belgique partage la frontière nord-est et nord-ouest de la France, de la mer du Nord jusqu'au Luxembourg."),
            ExerciseItem(id: UUID(), prompt: "Dans quel département se trouve le Mont Saint-Michel?", options: ["Finistère", "Manche", "Calvados", "Ille-et-Vilaine"], correctAnswer: "Manche", explanation: "Le Mont Saint-Michel, célèbre commune insulaire, est situé dans le département de la Manche, en Normandie."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la deuxième ville de France par sa population?", options: ["Paris", "Lyon", "Marseille", "Toulouse"], correctAnswer: "Marseille", explanation: "Marseille, grand port méditerranéen, est la deuxième commune de France par sa population, derrière Paris.")
        ]
    )

    // MARK: - Culture générale: Culture
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "Culture générale: Culture",
        instructions: "Répondez à cette question de culture française.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quelle est la devise de la France?", options: ["Paix, Justice, Liberté", "Liberté, Égalité, Fraternité", "Unité, Dignité, Paix", "Foi, Espoir, Charité"], correctAnswer: "Liberté, Égalité, Fraternité", explanation: "C'est la devise officielle de la République française, héritée des idéaux de la Révolution."),
            ExerciseItem(id: UUID(), prompt: "Comment s'appelle l'hymne national français?", options: ["La Marseillaise", "Le Chant du Départ", "La Brabançonne", "Le Chant des Partisans"], correctAnswer: "La Marseillaise", explanation: "Composée par Rouget de Lisle en 1792, La Marseillaise est l'hymne national de la France."),
            ExerciseItem(id: UUID(), prompt: "Que signifie Vive la France?", options: ["La France est grande", "Longue vie à la France", "France en avant", "La France brille"], correctAnswer: "Longue vie à la France", explanation: "L'expression 'Vive la France' est une acclamation patriotique exprimant le souhait de prospérité et de longévité pour le pays."),
            ExerciseItem(id: UUID(), prompt: "Comment s'appelle le repas du matin en France?", options: ["Déjeuner", "Dîner", "Petit-déjeuner", "Goûter"], correctAnswer: "Petit-déjeuner", explanation: "Le petit-déjeuner est le nom du repas qui rompt le jeûne de la nuit, pris le matin."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la tradition française du 1er avril?", options: ["Les oeufs de Pâques", "Le Poisson d'Avril (blagues)", "La Fête du Roi", "Les défilés"], correctAnswer: "Le Poisson d'Avril (blagues)", explanation: "Le 1er avril est l'occasion de faire des farces et de coller des poissons en papier dans le dos des gens."),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce qu'un apéritif en France?", options: ["Un dessert sucré", "Une boisson prise avant le repas", "Un plat principal", "Un café après le repas"], correctAnswer: "Une boisson prise avant le repas", explanation: "L'apéritif, souvent abrégé en apéro, est un moment convivial où l'on partage des boissons et amuse-bouches avant de passer à table."),
            ExerciseItem(id: UUID(), prompt: "Quelle coutume française consiste à souhaiter bonne chance?", options: ["Merde (dit aux artistes)", "Au revoir", "Bonne chance uniquement", "À vos souhaits"], correctAnswer: "Merde (dit aux artistes)", explanation: "Dans le milieu du théâtre, on dit 'Merde' avant une représentation pour porter chance sans attirer le mauvais œil."),
            ExerciseItem(id: UUID(), prompt: "Quelle fête française célèbre les morts?", options: ["Noël", "Pâques", "La Toussaint (1er novembre)", "La Saint-Valentin"], correctAnswer: "La Toussaint (1er novembre)", explanation: "La Toussaint célèbre tous les saints, et le jour suivant (le 2 novembre) est traditionnellement consacré à la commémoration des défunts."),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que le baccalauréat en France?", options: ["Un examen d'entrée à l'université", "Un examen de fin d'études secondaires", "Un diplôme universitaire", "Un concours de cuisine"], correctAnswer: "Un examen de fin d'études secondaires", explanation: "Le baccalauréat, ou bac, est le diplôme national sanctionnant la fin des études au lycée et ouvrant les portes de l'enseignement supérieur."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la tradition française des étrennes?", options: ["Des cadeaux donnés à la nouvelle année", "Des dîners de Noël", "Des chants de Noël", "Des feux d'artifice"], correctAnswer: "Des cadeaux donnés à la nouvelle année", explanation: "Les étrennes sont une tradition consistant à donner des pourboires ou des petits cadeaux au Nouvel An, notamment aux concierges ou facteurs."),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on À votre santé en français (pour trinquer)?", options: ["Cheers", "Santé", "Merci", "Au revoir"], correctAnswer: "Santé", explanation: "On dit 'À votre santé' ou simplement 'Santé' en trinquant pour souhaiter une bonne santé à ses convives."),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que la vente des soldes en France?", options: ["Une foire aux animaux", "Des promotions commerciales légalement réglementées", "Un marché de nuit", "Une vente aux enchères"], correctAnswer: "Des promotions commerciales légalement réglementées", explanation: "Les soldes sont des périodes réglementées, deux fois par an (hiver et été), pendant lesquelles les commerçants écoulent leurs stocks à prix réduit."),
            ExerciseItem(id: UUID(), prompt: "Quelle est la tradition française de la galette des Rois?", options: ["Une tradition de Noël", "Une tradition de la fête de l'Épiphanie (début janvier)", "Une tradition de Pâques", "Une tradition du 14 juillet"], correctAnswer: "Une tradition de la fête de l'Épiphanie (début janvier)", explanation: "Pour l'Épiphanie, on partage une galette frangipane contenant une fève ; celui qui la trouve devient le roi ou la reine."),
            ExerciseItem(id: UUID(), prompt: "Comment les Français appellent-ils la politesse et bonnes manières?", options: ["Le protocole", "Le savoir-vivre", "L'étiquette royale", "Les bonnes moeurs"], correctAnswer: "Le savoir-vivre", explanation: "Le savoir-vivre englobe les règles de politesse, de courtoisie et de respect des usages sociaux en société."),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que le Mardi Gras dans la communauté francophone?", options: ["Un carnaval festif avant le Carême", "Un jour de jeûne strict", "Une fête nationale", "Un marché de printemps"], correctAnswer: "Un carnaval festif avant le Carême", explanation: "Le Mardi Gras marque la fin de la 'semaine des sept jours gras' et est célébré par des carnavals et des déguisements, avant le début du carême.")
        ]
    )
}


