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
            ExerciseItem(id: UUID(), prompt: "Paris est la capitale de la France?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La Tour Eiffel se trouve à Lyon?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le français est la langue officielle du Québec?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les fleurs de cerisier sont rouges?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Haïti est un pays francophone?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le Noël est célébré au mois de janvier?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le croissant est un aliment typiquement français?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le Rhône est un fleuve de la France?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En France, on conduit à droite?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le Tour de France est une compétition de natation?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La Révolution française a eu lieu en 1789?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le 14 juillet est la fête nationale française?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'hiver est une saison chaude?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les Français-Canadiens parlent une forme de français?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le drapeau français est vert, blanc et rouge?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La baguette est un pain français traditionnel?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Los Angeles a une communauté haïtienne-américaine?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En français, le haïku est une forme de poésie française?", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les feux d'artifice du 14 juillet sont visibles à Paris?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le français et l'espagnol sont deux langues latines?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Quel est le repas typique du matin en France?", options: ["Petit-déjeuner", "Dîner", "Brunch", "Déjeuner"], correctAnswer: "Petit-déjeuner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est l'instrument national de la France pour l'hymne?", options: ["violon", "trompette", "accordéon", "orgue"], correctAnswer: "accordéon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce qu'on célèbre le 14 juillet en France?", options: ["Prise de la Bastille", "Noël", "Pâques", "Anniversaire du roi"], correctAnswer: "Prise de la Bastille", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel aliment est typique du petit-déjeuner français?", options: ["Croissant", "Pizza", "Tacos", "Sushi"], correctAnswer: "Croissant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel sport est le plus populaire en France?", options: ["Rugby", "Natation", "Football", "Tennis"], correctAnswer: "Football", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est le vêtement traditionnel haïtien lors des fêtes?", options: ["Kimono", "Vêtements colorés et brodés", "Sari", "Caftan"], correctAnswer: "Vêtements colorés et brodés", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel outil utilise-t-on pour la calligraphie?", options: ["crayon", "plume", "feutre", "ciseaux"], correctAnswer: "plume", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est le monument le plus célèbre de Paris?", options: ["Big Ben", "Tour Eiffel", "Colisée", "Sagrada Familia"], correctAnswer: "Tour Eiffel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la boisson nationale française?", options: ["la bière", "le champagne ou le vin", "le thé", "le jus d'orange"], correctAnswer: "le champagne ou le vin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel fromage français est le plus célèbre?", options: ["Cheddar", "Brie", "Gouda", "Parmesan"], correctAnswer: "Brie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle cérémonie française réunit la famille chaque dimanche?", options: ["La messe", "Le déjeuner en famille", "La danse folklorique", "Le théâtre"], correctAnswer: "Le déjeuner en famille", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel jeu de plein air est très populaire dans le sud de la France?", options: ["Cricket", "Pétanque", "Baseball", "Sumo"], correctAnswer: "Pétanque", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle langue parle-t-on en Haïti?", options: ["Espagnol et anglais", "Créole et français", "Portugais", "Anglais seulement"], correctAnswer: "Créole et français", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est le chiffre 5 en français?", options: ["quatre", "cinq", "six", "sept"], correctAnswer: "cinq", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on merci en français?", options: ["s'il vous plaît", "bonjour", "merci", "au revoir"], correctAnswer: "merci", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel musée célèbre est situé à Paris et abrite la Joconde?", options: ["Musée Picasso", "Centre Pompidou", "Le Louvre", "Musée d'Orsay"], correctAnswer: "Le Louvre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Avec quoi mange-t-on généralement une fondue savoyarde?", options: ["Baguette", "Pain grillé", "Ravioli", "Pommes de terre"], correctAnswer: "Pain grillé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel plat haïtien est fait avec du riz et des haricots?", options: ["Griot", "Riz national (diri kole)", "Bouillabaisse", "Ratatouille"], correctAnswer: "Riz national (diri kole)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle région française est célèbre pour ses vignobles?", options: ["Bretagne", "Normandie", "Bordeaux", "Alsace"], correctAnswer: "Bordeaux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on bonne nuit en français?", options: ["Bonsoir", "Bonne nuit", "Au revoir", "Bonjour"], correctAnswer: "Bonne nuit", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Où se trouve la Tour Eiffel?", options: ["Lyon", "Paris", "Marseille", "Nice"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où parle-t-on français au Canada?", options: ["Toronto", "Vancouver", "Québec", "Calgary"], correctAnswer: "Québec", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se situe la communauté haïtienne-américaine la plus importante aux États-Unis?", options: ["Los Angeles", "Miami et New York", "Chicago", "Dallas"], correctAnswer: "Miami et New York", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se trouve le Louvre?", options: ["Bordeaux", "Paris", "Lyon", "Strasbourg"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dans quelle ville se trouve la plus grande communauté francophone de Californie?", options: ["San Francisco", "Los Angeles", "San Diego", "Sacramento"], correctAnswer: "Los Angeles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se situe le château de Versailles?", options: ["Paris", "Versailles, près de Paris", "Lyon", "Bordeaux"], correctAnswer: "Versailles, près de Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où est né Napoléon Bonaparte?", options: ["France", "Corse (île française)", "Italie", "Belgique"], correctAnswer: "Corse (île française)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se déroule le Tour de France en général?", options: ["En Suisse", "Toute la France et parfois pays voisins", "En Allemagne", "En Italie"], correctAnswer: "Toute la France et parfois pays voisins", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où peut-on apprendre à cuisiner français aux États-Unis?", options: ["Dans des écoles culinaires et cours de cuisine", "Seulement en France", "Dans les supermarchés", "Nulle part"], correctAnswer: "Dans des écoles culinaires et cours de cuisine", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où est située la région viticole de Champagne?", options: ["Dans le sud de la France", "Dans le nord-est de la France", "En Suisse", "En Belgique"], correctAnswer: "Dans le nord-est de la France", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se situe le Mont Blanc?", options: ["Dans les Pyrénées", "Dans les Alpes, à la frontière franco-italienne", "En Suisse seulement", "En Autriche"], correctAnswer: "Dans les Alpes, à la frontière franco-italienne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où la bouillabaisse est-elle originaire?", options: ["Paris", "Marseille", "Bordeaux", "Lyon"], correctAnswer: "Marseille", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Haïti se trouve dans quelle région du monde?", options: ["Afrique", "Caraïbes", "Europe", "Asie du Sud-Est"], correctAnswer: "Caraïbes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se trouve le Palais des Papes?", options: ["Paris", "Avignon", "Lyon", "Marseille"], correctAnswer: "Avignon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où peut-on voir les tapisseries de Bayeux?", options: ["Versailles", "Paris", "Bayeux, en Normandie", "Bordeaux"], correctAnswer: "Bayeux, en Normandie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dans quel pays la langue française est-elle une langue officielle en Afrique du Nord?", options: ["Égypte", "Maroc, Algérie, Tunisie", "Éthiopie", "Kenya"], correctAnswer: "Maroc, Algérie, Tunisie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se déroulent habituellement les matchs du Tour de France (arrivée)?", options: ["Lyon", "Marseille", "Paris (Champs-Élysées)", "Bordeaux"], correctAnswer: "Paris (Champs-Élysées)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où est située la basilique du Sacré-Coeur?", options: ["Bordeaux", "Paris (Montmartre)", "Lyon", "Nice"], correctAnswer: "Paris (Montmartre)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dans quelle ville française se trouve une communauté sénégalaise importante?", options: ["Nantes", "Strasbourg", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Où se pratique le jeu de pétanque?", options: ["Surtout dans l'est de la France", "Surtout dans le sud de la France", "Uniquement à Paris", "Surtout en Bretagne"], correctAnswer: "Surtout dans le sud de la France", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Qui a peint la Joconde?", options: ["Pablo Picasso", "Léonard de Vinci", "Michel-Ange", "Claude Monet"], correctAnswer: "Léonard de Vinci", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Marie Curie?", options: ["Une écrivaine française", "Une physicienne et chimiste franco-polonaise", "Une reine de France", "Une chanteuse française"], correctAnswer: "Une physicienne et chimiste franco-polonaise", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui a écrit Les Misérables?", options: ["Albert Camus", "Gustave Flaubert", "Victor Hugo", "Émile Zola"], correctAnswer: "Victor Hugo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Jean-Jacques Dessalines?", options: ["Un artiste français", "Un héros de l'indépendance haïtienne", "Un écrivain belge", "Un général français"], correctAnswer: "Un héros de l'indépendance haïtienne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui est le compositeur de La Marseillaise (hymne français)?", options: ["Bizet", "Rouget de Lisle", "Berlioz", "Saint-Saëns"], correctAnswer: "Rouget de Lisle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Charles de Gaulle?", options: ["Un romancier", "Un général et président de la France", "Un peintre impressionniste", "Un compositeur"], correctAnswer: "Un général et président de la France", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui est Wyclef Jean?", options: ["Un chef cuisinier haïtien", "Un artiste de hip-hop haïtien-américain", "Un politicien haïtien uniquement", "Un peintre haïtien"], correctAnswer: "Un artiste de hip-hop haïtien-américain", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui a dirigé la Révolution française en 1789?", options: ["Napoléon Bonaparte", "Le peuple français (Tiers État)", "Louis XVI", "Marie-Antoinette"], correctAnswer: "Le peuple français (Tiers État)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Molière?", options: ["Un auteur de comédies françaises", "Un peintre français", "Un chef militaire", "Un philosophe"], correctAnswer: "Un auteur de comédies françaises", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Toussaint Louverture?", options: ["Un artiste haïtien", "Un leader de la révolution haïtienne", "Un politicien français", "Un musicien haïtien"], correctAnswer: "Un leader de la révolution haïtienne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Claude Monet?", options: ["Un romancier français", "Un peintre impressionniste français", "Un compositeur", "Un sculpteur"], correctAnswer: "Un peintre impressionniste français", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Simone de Beauvoir?", options: ["Une philosophe et féministe française", "Une reine de France", "Une artiste peintre", "Une musicienne"], correctAnswer: "Une philosophe et féministe française", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui a construit la Tour Eiffel?", options: ["Napoléon Bonaparte", "Gustave Eiffel", "Louis XIV", "Victor Hugo"], correctAnswer: "Gustave Eiffel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Édith Piaf?", options: ["Une actrice de cinéma", "Une chanteuse française légendaire", "Une poétesse", "Une danseuse"], correctAnswer: "Une chanteuse française légendaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Jean-Michel Basquiat (origines haïtiennes)?", options: ["Un artiste new-yorkais d'origine haïtienne et portoricaine", "Un musicien jazz", "Un écrivain haïtien", "Un réalisateur de films"], correctAnswer: "Un artiste new-yorkais d'origine haïtienne et portoricaine", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Marcel Proust?", options: ["Un romancier français auteur de À la Recherche du Temps Perdu", "Un peintre surréaliste", "Un compositeur romantique", "Un philosophe"], correctAnswer: "Un romancier français auteur de À la Recherche du Temps Perdu", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui est Celine Dion (francophone)?", options: ["Une actrice québécoise", "Une chanteuse québécoise mondialement connue", "Une animatrice de télévision", "Une politicienne canadienne"], correctAnswer: "Une chanteuse québécoise mondialement connue", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Voltaire?", options: ["Un peintre du XVIIIe siècle", "Un écrivain et philosophe français du siècle des Lumières", "Un général français", "Un roi de France"], correctAnswer: "Un écrivain et philosophe français du siècle des Lumières", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Marie-Antoinette?", options: ["Une reine de France d'origine autrichienne", "Une révolutionnaire française", "Une artiste française", "Une scientifique française"], correctAnswer: "Une reine de France d'origine autrichienne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était Jean Piaget?", options: ["Un peintre suisse francophone", "Un psychologue et pédagogue suisse francophone", "Un musicien belge", "Un philosophe français"], correctAnswer: "Un psychologue et pédagogue suisse francophone", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Quand célèbre-t-on Noël?", options: ["25 novembre", "25 décembre", "1er janvier", "6 janvier"], correctAnswer: "25 décembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand a eu lieu la Révolution française?", options: ["1689", "1789", "1889", "1912"], correctAnswer: "1789", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand Haïti a-t-elle obtenu son indépendance?", options: ["1776", "1804", "1848", "1900"], correctAnswer: "1804", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand se déroule généralement le Tour de France?", options: ["En janvier", "En mars", "En juillet", "En octobre"], correctAnswer: "En juillet", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand célèbre-t-on la fête nationale française (Bastille)?", options: ["14 juin", "14 juillet", "14 août", "14 septembre"], correctAnswer: "14 juillet", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En France, quand commence généralement le dîner?", options: ["17h", "18h", "19h-20h", "22h"], correctAnswer: "19h-20h", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand Napoléon est-il devenu Empereur?", options: ["1789", "1799", "1804", "1815"], correctAnswer: "1804", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand se termine habituellement l'école primaire en France?", options: ["À 9 ans", "À 11 ans", "À 13 ans", "À 15 ans"], correctAnswer: "À 11 ans", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand Pâques est-il célébré?", options: ["En décembre", "En janvier", "Au printemps (mars-avril)", "En été"], correctAnswer: "Au printemps (mars-avril)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand la France a-t-elle adopté le franc comme monnaie?", options: ["1361", "1461", "1561", "1661"], correctAnswer: "1361", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand l'Europe a-t-elle introduit l'euro comme monnaie?", options: ["1995", "1999-2002", "2005", "2010"], correctAnswer: "1999-2002", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Bonsoir en français?", options: ["Le matin", "Le midi", "Le soir", "La nuit"], correctAnswer: "Le soir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Bonne nuit en français?", options: ["Au déjeuner", "L'après-midi", "Avant de dormir", "Au réveil"], correctAnswer: "Avant de dormir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand commence le printemps en France?", options: ["Décembre", "Janvier", "Mars-avril", "Juillet"], correctAnswer: "Mars-avril", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand a été inaugurée la Tour Eiffel?", options: ["1789", "1844", "1889", "1900"], correctAnswer: "1889", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Bonjour en français?", options: ["La nuit", "Le soir seulement", "N'importe quand la journée", "Seulement le matin"], correctAnswer: "N'importe quand la journée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand a été fondée l'Alliance française?", options: ["1823", "1883", "1923", "1963"], correctAnswer: "1883", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand commence l'année scolaire en France?", options: ["Janvier", "Avril", "Septembre", "Novembre"], correctAnswer: "Septembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand s'est terminée la Deuxième Guerre mondiale?", options: ["1942", "1943", "1945", "1947"], correctAnswer: "1945", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand dit-on Joyeux anniversaire en français?", options: ["À Noël", "Au jour de l'An", "Le jour de naissance", "À Pâques"], correctAnswer: "Le jour de naissance", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Pourquoi apprend-on le français?", options: ["Parce que c'est la seule langue du monde", "Pour communiquer avec les francophones et enrichir sa culture", "Parce que c'est la langue la plus facile", "Parce qu'on y est obligé"], correctAnswer: "Pour communiquer avec les francophones et enrichir sa culture", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi la France est-elle connue pour sa gastronomie?", options: ["Parce qu'elle a inventé tous les aliments", "Pour sa tradition culinaire raffinée et diversifiée", "Parce que ses aliments sont les moins chers", "Parce que les Français mangent peu"], correctAnswer: "Pour sa tradition culinaire raffinée et diversifiée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le 14 juillet est-il important pour les Français?", options: ["Parce que c'est le jour de Noël", "Pour commémorer la prise de la Bastille et la Révolution", "Parce que c'est l'anniversaire du roi", "Parce que le Tour de France se finit ce jour"], correctAnswer: "Pour commémorer la prise de la Bastille et la Révolution", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi les Français se font la bise?", options: ["Pour saluer de manière traditionnelle et montrer de l'affection", "C'est une obligation légale", "Parce qu'ils n'aiment pas les poignées de main", "Pour sentir le parfum des autres"], correctAnswer: "Pour saluer de manière traditionnelle et montrer de l'affection", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi la baguette est-elle si importante en France?", options: ["Parce qu'elle est sucrée", "Parce qu'elle fait partie de la tradition et de la culture quotidienne", "Parce qu'elle est moins chère que le pain étranger", "Parce qu'elle remplace la cuillère"], correctAnswer: "Parce qu'elle fait partie de la tradition et de la culture quotidienne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi beaucoup d'Haïtiens ont émigré aux États-Unis?", options: ["Pour apprendre l'anglais uniquement", "À cause de difficultés économiques et politiques en Haïti", "Parce qu'ils ne voulaient plus parler créole", "Parce que les États-Unis les ont invités officiellement"], correctAnswer: "À cause de difficultés économiques et politiques en Haïti", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi dit-on que Paris est la Ville Lumière?", options: ["Parce qu'il y a beaucoup de lampadaires", "Pour son rôle dans l'éclairage public et le siècle des Lumières", "Parce qu'elle est toujours ensoleillée", "Parce que la Tour Eiffel brille toujours"], correctAnswer: "Pour son rôle dans l'éclairage public et le siècle des Lumières", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi mange-t-on en famille le dimanche en France?", options: ["C'est une obligation légale", "C'est une tradition culturelle pour renforcer les liens familiaux", "Parce que les restaurants ferment", "Parce que c'est moins cher"], correctAnswer: "C'est une tradition culturelle pour renforcer les liens familiaux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le français est-il parlé dans autant de pays?", options: ["Parce que tous les pays l'ont choisi librement", "À cause de l'histoire coloniale française et de la diffusion culturelle", "Parce que c'est la langue la plus facile", "Parce que l'ONU l'a imposé"], correctAnswer: "À cause de l'histoire coloniale française et de la diffusion culturelle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le fromage est-il si varié en France?", options: ["Parce que les Français n'aiment pas les aliments uniformes", "Grâce à la diversité des régions, du lait et des techniques de fabrication", "Parce qu'ils copient d'autres pays", "Parce que c'est une obligation légale"], correctAnswer: "Grâce à la diversité des régions, du lait et des techniques de fabrication", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi apprend-on une langue étrangère en vieillissant?", options: ["C'est une perte de temps", "Pour stimuler le cerveau, maintenir les connexions sociales et culturelles", "Parce qu'on n'a rien d'autre à faire", "Parce que c'est obligatoire"], correctAnswer: "Pour stimuler le cerveau, maintenir les connexions sociales et culturelles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi certains francophones préfèrent-ils habiter en Californie?", options: ["Parce qu'il n'y a pas de francophones ailleurs", "Pour le climat, les opportunités et la communauté francophone existante", "Parce que le français est la langue officielle de Californie", "Parce que la nourriture est moins chère"], correctAnswer: "Pour le climat, les opportunités et la communauté francophone existante", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi la cuisine haïtienne est-elle épicée?", options: ["Parce que les épices poussent naturellement en Haïti", "Pour des raisons de conservation et de tradition culturelle", "Parce que c'est une obligation religieuse", "Parce que les Haïtiens n'aiment pas les saveurs douces"], correctAnswer: "Pour des raisons de conservation et de tradition culturelle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi se dit-on s'il vous plaît en France?", options: ["Pour montrer de la politesse et du respect", "Parce que c'est la loi", "Parce qu'on n'a pas d'autre choix", "Pour faire sourire les gens"], correctAnswer: "Pour montrer de la politesse et du respect", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pourquoi les Français accordent-ils tant d'importance aux congés?", options: ["Par paresse", "Pour se reposer, partager du temps en famille et recharger les batteries", "Parce que travailler est interdit en été", "Parce que c'est leur principal revenu"], correctAnswer: "Pour se reposer, partager du temps en famille et recharger les batteries", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Comment dit-on bonjour en français?", options: ["Au revoir", "Bonsoir", "Bonjour", "Salut"], correctAnswer: "Bonjour", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment fait-on une béchamel (sauce blanche)?", options: ["En mélangeant beurre, farine et lait", "En mélangeant oeuf et sucre", "En faisant frire des légumes", "En ajoutant du fromage râpé dans du vin"], correctAnswer: "En mélangeant beurre, farine et lait", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment salue-t-on un ami en France?", options: ["En faisant la révérence", "En se faisant la bise sur les joues", "En inclinant la tête", "En criant le prénom à voix haute"], correctAnswer: "En se faisant la bise sur les joues", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment prépare-t-on une tasse de café en France (café simple)?", options: ["En mélangeant café soluble avec de l'eau froide", "En préparant un expresso ou café filtré", "En faisant bouillir des grains de café entiers", "En ajoutant du café dans du jus d'orange"], correctAnswer: "En préparant un expresso ou café filtré", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment s'excuse-t-on en français?", options: ["Je ne sais pas", "Pardon ou je suis désolé(e)", "Au revoir", "S'il vous plaît"], correctAnswer: "Pardon ou je suis désolé(e)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment appelle-t-on un citoyen français qui immigre?", options: ["Expatrié ou immigré", "Touriste", "Réfugié uniquement", "Diplomate"], correctAnswer: "Expatrié ou immigré", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment mange-t-on habituellement une baguette en France?", options: ["Avec une fourchette et un couteau", "Avec les mains, souvent avec du beurre ou du fromage", "Coupée en tranches très fines et grillées", "Trempée dans du café uniquement"], correctAnswer: "Avec les mains, souvent avec du beurre ou du fromage", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment demande-t-on l'addition dans un restaurant français?", options: ["En criant très fort", "En levant la main et disant l'addition s'il vous plaît", "En tapant sur la table", "En envoyant un message au serveur"], correctAnswer: "En levant la main et disant l'addition s'il vous plaît", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on merci beaucoup en français?", options: ["Je vous en prie", "Merci beaucoup", "De rien", "Avec plaisir"], correctAnswer: "Merci beaucoup", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment prépare-t-on les crêpes en France?", options: ["On fait frire une pâte de farine, oeuf et lait dans une poêle", "On cuit au four avec du fromage", "On fait bouillir dans de l'eau sucrée", "On grille sur un barbecue"], correctAnswer: "On fait frire une pâte de farine, oeuf et lait dans une poêle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on je t'aime en français?", options: ["Je te veux", "Je t'aime", "Je vous aime beaucoup", "Avec toi"], correctAnswer: "Je t'aime", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment compte-t-on de 1 à 3 en français?", options: ["Un, deux, trois", "Une, deux, trois", "Un, deus, tres", "Uno, dos, tres"], correctAnswer: "Un, deux, trois", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on ça va en français?", options: ["Comment allez-vous? / Ça va?", "Bon voyage", "Bonne chance", "Merci beaucoup"], correctAnswer: "Comment allez-vous? / Ça va?", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment appelle-t-on le repas du soir en France?", options: ["Le petit-déjeuner", "Le déjeuner", "Le dîner", "Le goûter"], correctAnswer: "Le dîner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment traduit-on happy birthday en français?", options: ["Bon anniversaire!", "Bonne fête!", "Joyeux Noël!", "Félicitations!"], correctAnswer: "Bon anniversaire!", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Qu'a-t-elle acheté?", options: ["Pain, lait et fruits", "Pain, viande et légumes", "Fruits, fromage et eau", "Lait, gâteau et café"], correctAnswer: "Pain, lait et fruits", explanation: "", passage: "Madame Dupont est allée au marché le lundi. Elle a acheté du pain, du lait et des fruits."),
            ExerciseItem(id: UUID(), prompt: "Combien de temps Pierre a-t-il attendu?", options: ["30 minutes", "45 minutes", "1 heure", "1 heure 30"], correctAnswer: "1 heure", explanation: "", passage: "Pierre est allé voir le médecin mardi matin. Il a attendu une heure. La consultation a duré 30 minutes."),
            ExerciseItem(id: UUID(), prompt: "Combien de petits-fils a-t-elle?", options: ["1", "2", "3", "5"], correctAnswer: "2", explanation: "", passage: "Marie a 5 petits-enfants. Trois sont des filles et deux sont des garçons."),
            ExerciseItem(id: UUID(), prompt: "À quelle heure arrive-t-il à destination?", options: ["15h30", "16h00", "16h30", "17h00"], correctAnswer: "16h30", explanation: "", passage: "Le train de Lyon part à 14h30. Le voyage dure 2 heures."),
            ExerciseItem(id: UUID(), prompt: "Combien a-t-il dépensé?", options: ["5 euros", "5,50 euros", "6 euros", "6,50 euros"], correctAnswer: "6 euros", explanation: "", passage: "Jacques a acheté 3 baguettes à 1 euro chacune et 2 croissants à 1,50 euro chacun."),
            ExerciseItem(id: UUID(), prompt: "De quel jour date la préparation de la valise?", options: ["Mercredi", "Jeudi", "Vendredi", "Samedi"], correctAnswer: "Jeudi", explanation: "", passage: "Sophie partait en vacances vendredi. Elle a préparé sa valise jeudi soir."),
            ExerciseItem(id: UUID(), prompt: "Combien de prises y a-t-il en total?", options: ["20", "25", "30", "35"], correctAnswer: "30", explanation: "", passage: "Le médecin a prescrit un médicament à prendre 3 fois par jour pendant 10 jours."),
            ExerciseItem(id: UUID(), prompt: "Combien de livres lit-elle en 1 mois (4 semaines)?", options: ["2 livres", "3 livres", "4 livres", "5 livres"], correctAnswer: "4 livres", explanation: "", passage: "Hélène aime lire. Elle lit en moyenne 1 livre par semaine."),
            ExerciseItem(id: UUID(), prompt: "En 2025, quel âge a-t-il?", options: ["75 ans", "80 ans", "85 ans", "90 ans"], correctAnswer: "85 ans", explanation: "", passage: "Paul est né en 1940."),
            ExerciseItem(id: UUID(), prompt: "Combien de cadeaux a-t-elle reçus en tout?", options: ["6", "7", "8", "9"], correctAnswer: "8", explanation: "", passage: "Anne a invité 8 amis pour son anniversaire. Chacun a apporté un cadeau. Elle a reçu des fleurs, un livre, des chocolats et 5 autres cadeaux."),
            ExerciseItem(id: UUID(), prompt: "À quelle heure ferme-t-il?", options: ["12h", "12h30", "13h", "14h"], correctAnswer: "13h", explanation: "", passage: "Le marché a lieu chaque dimanche de 7h à 13h."),
            ExerciseItem(id: UUID(), prompt: "Combien lui en reste-t-il?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "", passage: "Marie-Claire a fait de la tarte aux pommes avec 6 pommes. Elle en a utilisé 4."),
            ExerciseItem(id: UUID(), prompt: "À quelle heure s'est-il terminé?", options: ["21h30", "22h", "22h30", "23h"], correctAnswer: "22h30", explanation: "", passage: "Le concert commençait à 20h. Il a duré 2 heures et demie."),
            ExerciseItem(id: UUID(), prompt: "Combien de jours a pris la lettre?", options: ["5 jours", "6 jours", "7 jours", "8 jours"], correctAnswer: "7 jours", explanation: "", passage: "Bernard a reçu une lettre de son neveu en Haïti. La lettre est arrivée le 15 mars. Son neveu l'avait envoyée le 8 mars."),
            ExerciseItem(id: UUID(), prompt: "De quelle couleur est la laine?", options: ["Rouge et verte", "Bleue et blanche", "Jaune et noire", "Rose et dorée"], correctAnswer: "Bleue et blanche", explanation: "", passage: "Françoise a tricoté un pull pour sa petite-fille. Elle a utilisé de la laine bleue et blanche.")
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
            ExerciseItem(id: UUID(), prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "5, 10, 15, 20, ___", options: ["24", "25", "26", "30"], correctAnswer: "25", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "10, 20, 30, 40, ___", options: ["45", "48", "50", "55"], correctAnswer: "50", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "100, 90, 80, 70, ___", options: ["55", "60", "65", "75"], correctAnswer: "60", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "1, 2, 4, 8, ___", options: ["10", "12", "16", "20"], correctAnswer: "16", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "50, 45, 40, 35, ___", options: ["28", "30", "32", "34"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "2, 5, 8, 11, ___", options: ["12", "13", "14", "15"], correctAnswer: "14", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "1, 4, 9, 16, ___", options: ["20", "24", "25", "30"], correctAnswer: "25", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "10, 8, 6, 4, ___", options: ["0", "1", "2", "3"], correctAnswer: "2", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "7, 14, 21, 28, ___", options: ["30", "33", "35", "36"], correctAnswer: "35", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "1, 1, 2, 3, 5, ___", options: ["6", "7", "8", "10"], correctAnswer: "8", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "20, 17, 14, 11, ___", options: ["6", "7", "8", "9"], correctAnswer: "8", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "4, 8, 16, 32, ___", options: ["48", "54", "60", "64"], correctAnswer: "64", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "6, 12, 18, 24, ___", options: ["28", "29", "30", "32"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "100, 50, 25, ___", options: ["10", "12", "12.5", "15"], correctAnswer: "12.5", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "9, 18, 27, 36, ___", options: ["42", "44", "45", "54"], correctAnswer: "45", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "15, 12, 9, 6, ___", options: ["1", "2", "3", "4"], correctAnswer: "3", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "8, 11, 14, 17, ___", options: ["18", "19", "20", "21"], correctAnswer: "20", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Il pleut. Que se passe-t-il?", options: ["Le sol est sec", "Le sol est mouillé", "La température monte", "Il fait plus lumineux"], correctAnswer: "Le sol est mouillé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Madame Dupont dort 8 heures chaque nuit. Quel est le résultat?", options: ["Elle est toujours fatiguée", "Elle se sent mieux et plus reposée", "Elle perd de l'appétit", "Elle prend du poids"], correctAnswer: "Elle se sent mieux et plus reposée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On laisse tomber un verre par terre. Que se passe-t-il?", options: ["Il vole", "Il se brise", "Il grossit", "Il chauffe"], correctAnswer: "Il se brise", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On n'arrose pas la plante pendant plusieurs jours. Que se passe-t-il?", options: ["Elle pousse mieux", "Elle se fane", "Elle fleurit", "Elle grandit plus vite"], correctAnswer: "Elle se fane", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pierre a marché longtemps. Quel est le résultat?", options: ["Il a froid aux jambes", "Il est fatigué", "Il voit mieux", "Il n'a plus faim"], correctAnswer: "Il est fatigué", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On laisse le four allumé sans surveillance. Que risque-t-il de se passer?", options: ["La nourriture est froide", "Le repas peut brûler ou provoquer un incendie", "Le four se refroidit", "La nourriture est plus juteuse"], correctAnswer: "Le repas peut brûler ou provoquer un incendie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sophie oublie de prendre ses médicaments. Que risque-t-il de se passer?", options: ["Elle guérit plus vite", "Son état de santé pourrait se détériorer", "Elle se sent plus forte", "Elle dort mieux"], correctAnswer: "Son état de santé pourrait se détériorer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On pratique de l'exercice chaque jour. Quel est l'effet?", options: ["On perd de la force", "On se sent moins bien", "On améliore sa condition physique", "On prend du poids"], correctAnswer: "On améliore sa condition physique", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Jean reçoit une bonne nouvelle. Que ressent-il?", options: ["De la tristesse", "De la joie", "De la colère", "De la peur"], correctAnswer: "De la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On dépense plus d'argent qu'on en gagne. Que se passe-t-il?", options: ["L'argent augmente", "On s'enrichit", "On accumule des dettes", "On économise plus"], correctAnswer: "On accumule des dettes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On fait le ménage régulièrement. Quel est le résultat?", options: ["La maison est sale", "La maison est propre et ordonnée", "La maison sent mauvais", "La maison est plus petite"], correctAnswer: "La maison est propre et ordonnée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On veille très tard le soir. Quel est l'effet le lendemain?", options: ["On se sent reposé", "On est fatigué et somnolent", "On a plus d'énergie", "On voit mieux"], correctAnswer: "On est fatigué et somnolent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La casserole est laissée sur le feu trop longtemps. Que se passe-t-il?", options: ["L'eau refroidit", "L'eau s'évapore et les aliments brûlent", "Les aliments deviennent plus frais", "La casserole devient plus grande"], correctAnswer: "L'eau s'évapore et les aliments brûlent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un ami vous offre des fleurs pour votre anniversaire. Que ressentez-vous?", options: ["De la tristesse", "De la colère", "De la gratitude et de la joie", "De la fatigue"], correctAnswer: "De la gratitude et de la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On s'entraîne régulièrement à apprendre une nouvelle langue. Quel est le résultat?", options: ["On l'oublie plus vite", "On progresse et améliore ses compétences", "On ne fait aucun progrès", "On perd sa langue maternelle"], correctAnswer: "On progresse et améliore ses compétences", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "On vous offre un cadeau pour votre anniversaire. Que ressentez-vous?", options: ["De la tristesse", "De la joie", "De la colère", "De l'ennui"], correctAnswer: "De la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous perdez un objet qui compte pour vous. Que ressentez-vous?", options: ["De la joie", "Du soulagement", "De la tristesse", "De la fierté"], correctAnswer: "De la tristesse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un grand chien aboie soudainement vers vous. Que ressentez-vous?", options: ["De la joie", "De la peur", "De la colère", "Du calme"], correctAnswer: "De la peur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Après un long voyage, vous rentrez enfin chez vous. Que ressentez-vous?", options: ["De la tristesse", "Du soulagement", "De la peur", "De la colère"], correctAnswer: "Du soulagement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un événement que vous attendiez avec impatience est annulé. Que ressentez-vous?", options: ["De la joie", "De la déception", "De l'énergie", "Du bonheur"], correctAnswer: "De la déception", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous retrouvez un vieil ami après des années. Que ressentez-vous?", options: ["De la colère", "De la tristesse", "De la nostalgie et de la joie", "De l'ennui"], correctAnswer: "De la nostalgie et de la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelqu'un vous traite de manière injuste. Que ressentez-vous?", options: ["De la joie", "De la colère", "Du soulagement", "Du bonheur"], correctAnswer: "De la colère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous réussissez un examen difficile. Que ressentez-vous?", options: ["De la tristesse", "De la honte", "De la fierté et de la joie", "De la peur"], correctAnswer: "De la fierté et de la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous êtes seul(e) dans un endroit inconnu. Que ressentez-vous?", options: ["De la joie", "De l'excitation et de l'inquiétude", "Du soulagement", "De la tristesse"], correctAnswer: "De l'excitation et de l'inquiétude", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous écoutez votre chanson préférée. Que ressentez-vous?", options: ["De la tristesse", "De la peur", "Du bonheur et du plaisir", "De la colère"], correctAnswer: "Du bonheur et du plaisir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un proche est à l'hôpital. Que ressentez-vous?", options: ["De la joie", "De l'inquiétude", "Du soulagement", "De l'ennui"], correctAnswer: "De l'inquiétude", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vos petits-enfants viennent vous rendre visite. Que ressentez-vous?", options: ["De la colère", "De la tristesse", "De la joie", "De la peur"], correctAnswer: "De la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous devez faire une présentation devant beaucoup de personnes. Que ressentez-vous?", options: ["Du calme absolu", "De la tension et des nerfs", "De la joie sans mélange", "Du soulagement"], correctAnswer: "De la tension et des nerfs", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous recevez de bonnes nouvelles du médecin. Que ressentez-vous?", options: ["De la tristesse", "De l'inquiétude", "Du soulagement et de la joie", "De la colère"], correctAnswer: "Du soulagement et de la joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous voyez une belle fleur s'épanouir dans votre jardin. Que ressentez-vous?", options: ["De la tristesse", "De la colère", "De la sérénité et du plaisir", "De la peur"], correctAnswer: "De la sérénité et du plaisir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous loupez votre bus. Que ressentez-vous?", options: ["De la joie", "Du bonheur", "De la frustration", "Du soulagement"], correctAnswer: "De la frustration", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelqu'un porte vos courses lourdes pour vous. Que ressentez-vous?", options: ["De la colère", "De la gratitude", "De la tristesse", "De la peur"], correctAnswer: "De la gratitude", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Votre recette n'a pas réussi comme prévu. Que ressentez-vous?", options: ["De la fierté", "De la déception", "Du soulagement", "De la joie"], correctAnswer: "De la déception", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous entendez un bruit étrange la nuit. Que ressentez-vous?", options: ["De la joie", "Du bonheur", "De l'inquiétude", "Du calme"], correctAnswer: "De l'inquiétude", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Votre rêve de longue date se réalise enfin. Que ressentez-vous?", options: ["De la tristesse", "De l'ennui", "De la colère", "De la joie et de la satisfaction"], correctAnswer: "De la joie et de la satisfaction", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "En plein été, Madame Martin sort avec un épais manteau d'hiver. Qu'est-ce qui ne va pas?", options: ["La destination", "La tenue ne correspond pas à la saison", "La personne", "Rien ne va pas"], correctAnswer: "La tenue ne correspond pas à la saison", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour son anniversaire, Pierre a dit des condoléances à sa soeur. Qu'est-ce qui ne va pas?", options: ["Qu'il a un anniversaire", "Qu'il a dit des condoléances à une occasion joyeuse", "Sa soeur", "Rien"], correctAnswer: "Qu'il a dit des condoléances à une occasion joyeuse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Marie a mangé proprement et a lavé ses mains avant le repas. Qu'est-ce qui ne va pas?", options: ["Le repas", "Les mains", "Rien (c'est une bonne habitude)", "Marie"], correctAnswer: "Rien (c'est une bonne habitude)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Jean va à la bibliothèque et parle très fort au téléphone. Qu'est-ce qui ne va pas?", options: ["Il va à la bibliothèque", "Il parle fort dans un endroit silencieux", "Son téléphone", "Rien"], correctAnswer: "Il parle fort dans un endroit silencieux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sophie prend de la soupe dans son verre. Qu'est-ce qui ne va pas?", options: ["Elle mange de la soupe", "Elle utilise un verre pour la soupe", "Son repas", "Rien"], correctAnswer: "Elle utilise un verre pour la soupe", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le médecin a prescrit des médicaments. Paul les a pris deux fois par jour au lieu de trois. Qu'est-ce qui ne va pas?", options: ["Il a pris ses médicaments", "Il a pris la mauvaise dose", "Il est allé chez le médecin", "Rien"], correctAnswer: "Il a pris la mauvaise dose", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Anne passe au rouge et traverse la rue. Qu'est-ce qui ne va pas?", options: ["Elle traverse la rue", "Elle passe au rouge (brûle le feu)", "Elle marche", "Rien"], correctAnswer: "Elle passe au rouge (brûle le feu)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Marc a mis une lettre dans l'enveloppe sans timbre et l'a postée. Qu'est-ce qui ne va pas?", options: ["Il a écrit une lettre", "Il a oublié le timbre", "Il a posté la lettre", "Rien"], correctAnswer: "Il a oublié le timbre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Hélène fait bouillir de la glace pour refroidir sa soupe. Qu'est-ce qui ne va pas?", options: ["Elle cuisine de la soupe", "Elle fait bouillir la glace pour refroidir", "Elle aime la soupe froide", "Rien"], correctAnswer: "Elle fait bouillir la glace pour refroidir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Louise prend un bain en gardant ses vêtements. Qu'est-ce qui ne va pas?", options: ["Elle prend un bain", "Elle garde ses vêtements dans le bain", "Son bain", "Rien"], correctAnswer: "Elle garde ses vêtements dans le bain", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pierre utilise son couteau de cuisine pour écrire sur le tableau. Qu'est-ce qui ne va pas?", options: ["Il écrit sur le tableau", "Il utilise un couteau pour écrire", "Le tableau", "Rien"], correctAnswer: "Il utilise un couteau pour écrire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Marie-Claire se brosse les dents avec du savon de toilette. Qu'est-ce qui ne va pas?", options: ["Elle se brosse les dents", "Elle utilise du savon de toilette au lieu de dentifrice", "Elle se brosse trop souvent", "Rien"], correctAnswer: "Elle utilise du savon de toilette au lieu de dentifrice", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Robert prie à l'église et crie très fort de colère. Qu'est-ce qui ne va pas?", options: ["Il va à l'église", "Il prie", "Crier de colère dans un lieu de culte", "Rien"], correctAnswer: "Crier de colère dans un lieu de culte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Josette place du thé chaud dans le réfrigérateur avant de le boire. Qu'est-ce qui ne va pas?", options: ["Elle boit du thé chaud", "Elle met le thé dans le frigo avant de le boire (ce qui est inhabituel mais parfois fait)", "Elle a un réfrigérateur", "Rien"], correctAnswer: "Elle boit du thé chaud", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "François détecte une odeur de gaz et utilise son briquet pour vérifier. Qu'est-ce qui ne va pas?", options: ["Il détecte l'odeur de gaz", "Utiliser une flamme (briquet) avec une fuite de gaz est très dangereux", "Il possède un briquet", "Rien"], correctAnswer: "Utiliser une flamme (briquet) avec une fuite de gaz est très dangereux", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "En quelle année a eu lieu la Révolution française?", options: ["1689", "1789", "1889", "1989"], correctAnswer: "1789", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle reine de France a été guillotinée pendant la Révolution?", options: ["Marie Curie", "Marie-Antoinette", "Joséphine de Beauharnais", "Catherine de Médicis"], correctAnswer: "Marie-Antoinette", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle bataille décisive Napoléon a-t-il perdue en 1815?", options: ["Austerlitz", "Waterloo", "Trafalgar", "Verdun"], correctAnswer: "Waterloo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En quelle année Haïti est-elle devenue indépendante?", options: ["1776", "1804", "1848", "1900"], correctAnswer: "1804", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel traité a mis fin à la Première Guerre mondiale?", options: ["Traité de Paris", "Traité de Versailles", "Traité de Berlin", "Traité de Rome"], correctAnswer: "Traité de Versailles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui était le premier président de la Ve République française?", options: ["François Mitterrand", "Jacques Chirac", "Charles de Gaulle", "Valéry Giscard d'Estaing"], correctAnswer: "Charles de Gaulle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En quelle année la Tour Eiffel a-t-elle été construite?", options: ["1789", "1844", "1889", "1900"], correctAnswer: "1889", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel document a été adopté lors de la Révolution française?", options: ["Magna Carta", "Déclaration des droits de l'homme et du citoyen", "Constitution américaine", "Charte de Québec"], correctAnswer: "Déclaration des droits de l'homme et du citoyen", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle ville française a été libérée en août 1944?", options: ["Lyon", "Marseille", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel roi a construit le château de Versailles?", options: ["Louis XIII", "Louis XIV", "Louis XV", "Louis XVI"], correctAnswer: "Louis XIV", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la signification du mot Liberté dans la devise française?", options: ["La liberté de travailler", "La liberté individuelle et collective", "La liberté de s'exprimer uniquement", "La liberté de voyager"], correctAnswer: "La liberté individuelle et collective", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand la France a-t-elle adopté l'euro?", options: ["1992", "1999-2002", "2005", "2010"], correctAnswer: "1999-2002", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est le surnom du roi Louis XIV?", options: ["Le Roi de France", "Le Roi Soleil", "Le Grand Roi", "Le Roi des Rois"], correctAnswer: "Le Roi Soleil", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En quelle année la France a-t-elle aboli l'esclavage définitivement?", options: ["1789", "1794", "1848", "1870"], correctAnswer: "1848", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel événement a déclenché la Première Guerre mondiale?", options: ["L'invasion de la Pologne", "L'assassinat de l'archiduc François-Ferdinand", "La Révolution russe", "La crise économique de 1929"], correctAnswer: "L'assassinat de l'archiduc François-Ferdinand", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Quelle est la capitale de la France?", options: ["Lyon", "Marseille", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est le plus long fleuve de France?", options: ["La Seine", "Le Rhône", "La Loire", "La Garonne"], correctAnswer: "La Loire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la plus haute montagne d'Europe occidentale?", options: ["Mont Blanc", "Mont Everest", "Kilimanjaro", "Mont Fuji"], correctAnswer: "Mont Blanc", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelles mers baignent les côtes françaises?", options: ["Méditerranée et Atlantique", "Pacifique et Arctique", "Rouge et Noire", "Adriatique et Baltique"], correctAnswer: "Méditerranée et Atlantique", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle ville française est connue pour ses vins rouges?", options: ["Paris", "Strasbourg", "Bordeaux", "Nice"], correctAnswer: "Bordeaux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel pays francophone se trouve dans les Caraïbes?", options: ["Haïti", "Cuba", "Jamaïque", "Barbade"], correctAnswer: "Haïti", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dans quelle ville est situé le palais de l'Élysée?", options: ["Lyon", "Paris", "Bordeaux", "Versailles"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle région de France est connue pour sa spécialité de choucroute?", options: ["Provence", "Bretagne", "Alsace", "Normandie"], correctAnswer: "Alsace", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle ville est connue comme la capitale de la gastronomie française?", options: ["Paris", "Marseille", "Lyon", "Bordeaux"], correctAnswer: "Lyon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Combien de pays ont le français comme langue officielle?", options: ["5", "15", "29", "45"], correctAnswer: "29", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la superficie de la France métropolitaine approximativement?", options: ["250 000 km²", "550 000 km²", "750 000 km²", "1 000 000 km²"], correctAnswer: "550 000 km²", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle région française est connue pour ses crêpes?", options: ["Alsace", "Bretagne", "Provence", "Normandie"], correctAnswer: "Bretagne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel est le pays voisin de la France au nord-ouest?", options: ["Allemagne", "Italie", "Belgique", "Espagne"], correctAnswer: "Belgique", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dans quel département se trouve le Mont Saint-Michel?", options: ["Finistère", "Manche", "Calvados", "Ille-et-Vilaine"], correctAnswer: "Manche", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la deuxième ville de France par sa population?", options: ["Paris", "Lyon", "Marseille", "Toulouse"], correctAnswer: "Marseille", explanation: "")
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
            ExerciseItem(id: UUID(), prompt: "Quelle est la devise de la France?", options: ["Paix, Justice, Liberté", "Liberté, Égalité, Fraternité", "Unité, Dignité, Paix", "Foi, Espoir, Charité"], correctAnswer: "Liberté, Égalité, Fraternité", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment s'appelle l'hymne national français?", options: ["La Marseillaise", "Le Chant du Départ", "La Brabançonne", "Le Chant des Partisans"], correctAnswer: "La Marseillaise", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie Vive la France?", options: ["La France est grande", "Longue vie à la France", "France en avant", "La France brille"], correctAnswer: "Longue vie à la France", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment s'appelle le repas du matin en France?", options: ["Déjeuner", "Dîner", "Petit-déjeuner", "Goûter"], correctAnswer: "Petit-déjeuner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la tradition française du 1er avril?", options: ["Les oeufs de Pâques", "Le Poisson d'Avril (blagues)", "La Fête du Roi", "Les défilés"], correctAnswer: "Le Poisson d'Avril (blagues)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce qu'un apéritif en France?", options: ["Un dessert sucré", "Une boisson prise avant le repas", "Un plat principal", "Un café après le repas"], correctAnswer: "Une boisson prise avant le repas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle coutume française consiste à souhaiter bonne chance?", options: ["Merde (dit aux artistes)", "Au revoir", "Bonne chance uniquement", "À vos souhaits"], correctAnswer: "Merde (dit aux artistes)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle fête française célèbre les morts?", options: ["Noël", "Pâques", "La Toussaint (1er novembre)", "La Saint-Valentin"], correctAnswer: "La Toussaint (1er novembre)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que le baccalauréat en France?", options: ["Un examen d'entrée à l'université", "Un examen de fin d'études secondaires", "Un diplôme universitaire", "Un concours de cuisine"], correctAnswer: "Un examen de fin d'études secondaires", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la tradition française des étrennes?", options: ["Des cadeaux donnés à la nouvelle année", "Des dîners de Noël", "Des chants de Noël", "Des feux d'artifice"], correctAnswer: "Des cadeaux donnés à la nouvelle année", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment dit-on À votre santé en français (pour trinquer)?", options: ["Cheers", "Santé", "Merci", "Au revoir"], correctAnswer: "Santé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que la vente des soldes en France?", options: ["Une foire aux animaux", "Des promotions commerciales légalement réglementées", "Un marché de nuit", "Une vente aux enchères"], correctAnswer: "Des promotions commerciales légalement réglementées", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelle est la tradition française de la galette des Rois?", options: ["Une tradition de Noël", "Une tradition de la fête de l'Épiphanie (début janvier)", "Une tradition de Pâques", "Une tradition du 14 juillet"], correctAnswer: "Une tradition de la fête de l'Épiphanie (début janvier)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment les Français appellent-ils la politesse et bonnes manières?", options: ["Le protocole", "Le savoir-vivre", "L'étiquette royale", "Les bonnes moeurs"], correctAnswer: "Le savoir-vivre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que le Mardi Gras dans la communauté francophone?", options: ["Un carnaval festif avant le Carême", "Un jour de jeûne strict", "Une fête nationale", "Un marché de printemps"], correctAnswer: "Un carnaval festif avant le Carême", explanation: "")
        ]
    )
}
