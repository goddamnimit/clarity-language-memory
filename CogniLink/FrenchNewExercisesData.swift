import Foundation

/// Holds the 14 new French exercises sourced from the New Exercises (6/27) content library.
struct FrenchNewExercisesData {

    /// The complete collection of all 14 new French exercises.
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
        title: "Paires de rimes",
        instructions: "Choisissez le mot qui rime avec le mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec CHAT ?", options: ["Chien", "Rat", "Soleil", "Arbre"], correctAnswer: "Rat", explanation: "Chat et Rat partagent le même son de fin."),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec BLEU ?", options: ["Rouge", "Feu", "Vert", "Fourchette"], correctAnswer: "Feu", explanation: "Bleu et Feu partagent le même son de fin."),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec JOUR ?", options: ["Jeu", "Cour", "Nuit", "Route"], correctAnswer: "Cour", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec NUIT ?", options: ["Noir", "Bruit", "Lumière", "Lourd"], correctAnswer: "Bruit", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec PAIN ?", options: ["Main", "Chanson", "Or", "Cloche"], correctAnswer: "Main", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec BATEAU ?", options: ["Eau", "Château", "Voiture", "Navire"], correctAnswer: "Château", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec GÂTEAU ?", options: ["Bateau", "Sucré", "Tarte", "Couteau"], correctAnswer: "Bateau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec FROID ?", options: ["Chaud", "Toit", "Glace", "Vent"], correctAnswer: "Toit", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec MAISON ?", options: ["Saison", "Foyer", "Porte", "Toit"], correctAnswer: "Saison", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec ARBRE ?", options: ["Feuille", "Marbre", "Herbe", "Branche"], correctAnswer: "Marbre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec PLUIE ?", options: ["Train", "Mouillé", "Vie", "Nuage"], correctAnswer: "Vie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec ÉTOILE ?", options: ["Lune", "Soleil", "Voile", "Ciel"], correctAnswer: "Voile", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec LIVRE ?", options: ["Lire", "Givre", "Page", "Bureau"], correctAnswer: "Givre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec JEU ?", options: ["Jouer", "Feu", "Gagner", "Amusant"], correctAnswer: "Feu", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec SABLE ?", options: ["Plage", "Table", "Mer", "Coquillage"], correctAnswer: "Table", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec CLOCHE ?", options: ["Sonner", "Poche", "Horloge", "Timbre"], correctAnswer: "Poche", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec CHAISE ?", options: ["S'asseoir", "Table", "Fraise", "Bureau"], correctAnswer: "Fraise", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec LUNE ?", options: ["Cuillère", "Prune", "Nuit", "Soleil"], correctAnswer: "Prune", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec VISAGE ?", options: ["Tête", "Yeux", "Image", "Sourire"], correctAnswer: "Image", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec POISSON ?", options: ["Eau", "Boisson", "Nager", "Hameçon"], correctAnswer: "Boisson", explanation: "")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "Association de mots",
        instructions: "Choisissez le mot le plus étroitement associé au mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "MÉDECIN", options: ["Hôpital", "Aéroport", "Bibliothèque", "Ferme"], correctAnswer: "Hôpital", explanation: "Les médecins travaillent à l'hôpital pour soigner les patients."),
            ExerciseItem(id: UUID(), prompt: "PAIN", options: ["Beurre", "Marteau", "Savon", "Crayon"], correctAnswer: "Beurre", explanation: "Le beurre est couramment étalé sur le pain."),
            ExerciseItem(id: UUID(), prompt: "CUISINE", options: ["Cuisinière", "Lit", "Douche", "Voiture"], correctAnswer: "Cuisinière", explanation: "Une cuisinière est un appareil essentiel dans une cuisine."),
            ExerciseItem(id: UUID(), prompt: "BIBLIOTHÈQUE", options: ["Livres", "Vêtements", "Outils", "Épicerie"], correctAnswer: "Livres", explanation: "Les bibliothèques conservent et prêtent des livres."),
            ExerciseItem(id: UUID(), prompt: "CHAUSSURE", options: ["Chaussette", "Chapeau", "Gant", "Ceinture"], correctAnswer: "Chaussette", explanation: "Les chaussettes se portent dans les chaussures."),
            ExerciseItem(id: UUID(), prompt: "ASTRONAUTE", options: ["Espace", "Océan", "Jungle", "Désert"], correctAnswer: "Espace", explanation: "Les astronautes voyagent dans l'espace."),
            ExerciseItem(id: UUID(), prompt: "ENSEIGNANT", options: ["École", "Usine", "Théâtre", "Gymnase"], correctAnswer: "École", explanation: "Les enseignants instruisent les élèves à l'école."),
            ExerciseItem(id: UUID(), prompt: "OCÉAN", options: ["Poisson", "Oiseau", "Vache", "Araignée"], correctAnswer: "Poisson", explanation: "Les poissons vivent dans l'océan."),
            ExerciseItem(id: UUID(), prompt: "VOITURE", options: ["Pneu", "Aile", "Selle", "Voile"], correctAnswer: "Pneu", explanation: "Les pneus sont des composants essentiels des voitures."),
            ExerciseItem(id: UUID(), prompt: "PLUIE", options: ["Parapluie", "Lunettes de soleil", "Gants", "Écharpe"], correctAnswer: "Parapluie", explanation: "Un parapluie protège de la pluie."),
            ExerciseItem(id: UUID(), prompt: "FEU", options: ["Fumée", "Glace", "Feuille", "Pièce"], correctAnswer: "Fumée", explanation: "Le feu produit de la fumée."),
            ExerciseItem(id: UUID(), prompt: "DENTISTE", options: ["Dents", "Cheveux", "Yeux", "Pieds"], correctAnswer: "Dents", explanation: "Les dentistes se spécialisent dans la santé des dents."),
            ExerciseItem(id: UUID(), prompt: "CAFÉ", options: ["Tasse", "Bol", "Assiette", "Fourchette"], correctAnswer: "Tasse", explanation: "Le café est généralement servi dans une tasse."),
            ExerciseItem(id: UUID(), prompt: "JARDIN", options: ["Fleurs", "Ordinateurs", "Poêles", "Manteaux"], correctAnswer: "Fleurs", explanation: "Les fleurs poussent dans un jardin."),
            ExerciseItem(id: UUID(), prompt: "CLÉ", options: ["Serrure", "Fenêtre", "Toit", "Sol"], correctAnswer: "Serrure", explanation: "Les clés sont utilisées pour ouvrir les serrures."),
            ExerciseItem(id: UUID(), prompt: "BUREAU DE POSTE", options: ["Lettre", "Pain", "Médicament", "Billet"], correctAnswer: "Lettre", explanation: "Les lettres sont envoyées depuis le bureau de poste."),
            ExerciseItem(id: UUID(), prompt: "PIANO", options: ["Musique", "Peinture", "Argile", "Bois"], correctAnswer: "Musique", explanation: "Un piano est un instrument utilisé pour jouer de la musique."),
            ExerciseItem(id: UUID(), prompt: "ABEILLE", options: ["Miel", "Lait", "Laine", "Soie"], correctAnswer: "Miel", explanation: "Les abeilles produisent du miel."),
            ExerciseItem(id: UUID(), prompt: "ARAIGNÉE", options: ["Toile", "Nid", "Ruche", "Tanière"], correctAnswer: "Toile", explanation: "Les araignées tissent des toiles."),
            ExerciseItem(id: UUID(), prompt: "AGRICULTEUR", options: ["Tracteur", "Avion", "Sous-marin", "Train"], correctAnswer: "Tracteur", explanation: "Les agriculteurs utilisent des tracteurs pour travailler la terre.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "Compléter l'expression",
        instructions: "Complétez l'expression ou le dicton bien connu.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Une pomme par jour éloigne le ___.", options: ["Médecin", "Professeur", "Dentiste", "Avocat"], correctAnswer: "Médecin", explanation: "Le dicton traditionnel dit qu'une pomme par jour éloigne le médecin."),
            ExerciseItem(id: UUID(), prompt: "Une image vaut mille ___.", options: ["Mots", "Dollars", "Livres", "Couleurs"], correctAnswer: "Mots", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mieux vaut tard que ___.", options: ["Jamais", "Tôt", "Toujours", "Parfois"], correctAnswer: "Jamais", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il ne faut pas vendre la peau de l'ours avant de l'avoir ___.", options: ["Tué", "Vendu", "Attrapé", "Mangé"], correctAnswer: "Tué", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Ne mettez pas tous vos œufs dans le même ___.", options: ["Panier", "Carton", "Nid", "Sac"], correctAnswer: "Panier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Après la pluie, le beau ___.", options: ["Temps", "Ciel", "Soleil", "Vent"], correctAnswer: "Temps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Rien ne sert de courir, il faut partir à ___.", options: ["Point", "Temps", "L'heure", "Vitesse"], correctAnswer: "Point", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Petit à petit, l'oiseau fait son ___.", options: ["Nid", "Chemin", "Voyage", "Vol"], correctAnswer: "Nid", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui sème le vent récolte la ___.", options: ["Tempête", "Pluie", "Terre", "Fleur"], correctAnswer: "Tempête", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La nuit, tous les chats sont ___.", options: ["Gris", "Noirs", "Blancs", "Mignons"], correctAnswer: "Gris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pierre qui roule n'amasse pas ___.", options: ["Mousse", "Terre", "Or", "Argent"], correctAnswer: "Mousse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il faut battre le fer pendant qu'il est ___.", options: ["Chaud", "Froid", "Dur", "Rouge"], correctAnswer: "Chaud", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les murs ont des ___.", options: ["Oreilles", "Yeux", "Bouches", "Bras"], correctAnswer: "Oreilles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand le chat n'est pas là, les souris ___.", options: ["Dansent", "Dorment", "Mangent", "Jouent"], correctAnswer: "Dansent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Tout ce qui brille n'est pas ___.", options: ["Or", "Argent", "Diamant", "Lumière"], correctAnswer: "Or", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'habit ne fait pas le ___.", options: ["Moine", "Prêtre", "Roi", "Soldat"], correctAnswer: "Moine", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On ne fait pas d'omelette sans casser des ___.", options: ["Œufs", "Coquilles", "Pots", "Assiettes"], correctAnswer: "Œufs", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vouloir, c'est ___.", options: ["Pouvoir", "Savoir", "Faire", "Gagner"], correctAnswer: "Pouvoir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mieux vaut prévenir que ___.", options: ["Guérir", "Souffrir", "Pleurer", "Attendre"], correctAnswer: "Guérir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le silence est ___.", options: ["D'or", "D'argent", "Précieux", "Rare"], correctAnswer: "D'or", explanation: "")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Mots composés",
        instructions: "Choisissez le mot qui complète correctement le mot composé.",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Chou-___ ?", options: ["Fleur", "Vert", "Rouge", "Blanc"], correctAnswer: "Fleur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Grands-___ ?", options: ["Parents", "Enfants", "Frères", "Sœurs"], correctAnswer: "Parents", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Arc-en-___ ?", options: ["Ciel", "Terre", "Eau", "Feu"], correctAnswer: "Ciel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour ranger vos clés, quel mot complète le mot composé : Porte-___ ?", options: ["Clés", "Manteau", "Fenêtre", "Porte"], correctAnswer: "Clés", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Tire-___ ?", options: ["Bouchon", "Bouton", "Bocal", "Verre"], correctAnswer: "Bouchon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Rond-___ ?", options: ["Point", "Carré", "Angle", "Ligne"], correctAnswer: "Point", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Après-___ ?", options: ["Midi", "Soir", "Matin", "Nuit"], correctAnswer: "Midi", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour ranger vos pièces de monnaie, quel mot complète le mot composé : Porte-___ ?", options: ["Monnaie", "Sac", "Billet", "Carte"], correctAnswer: "Monnaie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Essuie-___ ?", options: ["Tout", "Mains", "Verres", "Glaces"], correctAnswer: "Tout", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Sèche-___ ?", options: ["Cheveux", "Linge", "Mains", "Corps"], correctAnswer: "Cheveux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Chasse-___ ?", options: ["Neige", "Pluie", "Mouches", "Nuages"], correctAnswer: "Neige", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Garde-___ ?", options: ["Manger", "Robe", "Corps", "Fou"], correctAnswer: "Manger", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Pare-___ ?", options: ["Brise", "Vent", "Choc", "Soleil"], correctAnswer: "Brise", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Serre-___ ?", options: ["Livres", "Clés", "Papiers", "Joints"], correctAnswer: "Livres", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Casse-___ ?", options: ["Noisette", "Tête", "Croûte", "Pieds"], correctAnswer: "Noisette", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Gratte-___ ?", options: ["Ciel", "Dos", "Papier", "Ongle"], correctAnswer: "Ciel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Passe-___ ?", options: ["Port", "Temps", "Partout", "Droit"], correctAnswer: "Temps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Gagne-___ ?", options: ["Pain", "Temps", "Vie", "Argent"], correctAnswer: "Pain", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Micro-___ ?", options: ["Ondes", "Scope", "Phone", "Climat"], correctAnswer: "Ondes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot complète le mot composé : Lave-___ ?", options: ["Vaisselle", "Linge", "Vitres", "Mains"], correctAnswer: "Vaisselle", explanation: "")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "Préfixes et suffixes",
        instructions: "Complétez la phrase en choisissant le mot avec le préfixe ou le suffixe approprié.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Le contraire de possible est ___.", options: ["Impossible", "Malpossible", "Dépossible", "Inpossible"], correctAnswer: "Impossible", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Une petite maison est une ___.", options: ["Maisonnette", "Maisonnée", "Maisonne", "Maisonneux"], correctAnswer: "Maisonnette", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de honnête est ___.", options: ["Malhonnête", "Déshonnête", "Inhonnête", "Impoli"], correctAnswer: "Malhonnête", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelqu'un qui lave les vitres est un ___.", options: ["Laveur", "Lavage", "Laverie", "Lavable"], correctAnswer: "Laveur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de lisible est ___.", options: ["Illisible", "Mal-lisible", "Délisible", "Inlisible"], correctAnswer: "Illisible", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Une petite table est une ___.", options: ["Tablette", "Tablée", "Tablon", "Tabletteux"], correctAnswer: "Tablette", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de visible est ___.", options: ["Invisible", "Malvisible", "Dévisible", "Invisibleux"], correctAnswer: "Invisible", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quelqu'un qui conduit un camion est un ___.", options: ["Camionneur", "Camionnage", "Camionnette", "Camionneux"], correctAnswer: "Camionneur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de régulier est ___.", options: ["Irrégulier", "Malrégulier", "Dérégulier", "Inrégulier"], correctAnswer: "Irrégulier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Une petite boîte est une ___.", options: ["Boîtier", "Boîtoir", "Boîteux", "Boîtelle"], correctAnswer: "Boîtier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de patient est ___.", options: ["Impatient", "Malpatient", "Dépatient", "Inpatient"], correctAnswer: "Impatient", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de content est ___.", options: ["Mécontent", "Malcontent", "Décontent", "Incontent"], correctAnswer: "Mécontent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de direct est ___.", options: ["Indirect", "Mal-direct", "Dé-direct", "Indirected"], correctAnswer: "Indirect", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de adroit est ___.", options: ["Maladroit", "Désadroit", "Inadroit", "Impoli"], correctAnswer: "Maladroit", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de poli est ___.", options: ["Impoli", "Malpoli", "Dépoli", "Inpoli"], correctAnswer: "Impoli", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de croyable est ___.", options: ["Incroyable", "Malcroyable", "Décroyable", "Incroyableux"], correctAnswer: "Incroyable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de connu est ___.", options: ["Inconnu", "Malconnu", "Déconnu", "Méconnu"], correctAnswer: "Inconnu", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de mortel est ___.", options: ["Immortel", "Malmortel", "Démortel", "Inmortel"], correctAnswer: "Immortel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de légal est ___.", options: ["Illégal", "Mallégal", "Délégal", "Inlégal"], correctAnswer: "Illégal", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le contraire de responsable est ___.", options: ["Irresponsable", "Malresponsable", "Déresponsable", "Inresponsable"], correctAnswer: "Irresponsable", explanation: "")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "Rappel d'histoire",
        instructions: "Lisez la courte histoire puis répondez à la question de compréhension.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Qu'est-ce que Marie a oublié à la maison ?", options: ["Son portefeuille", "Ses clés", "Sa liste de courses", "Son téléphone"], correctAnswer: "Son portefeuille", explanation: "L'histoire indique qu'elle a oublié son portefeuille sur le comptoir de la cuisine.", passage: "Marie s'est rendue au supermarché local de Glendale pour acheter du lait et du pain. Elle a oublié son portefeuille sur le comptoir de la cuisine."),
            ExerciseItem(id: UUID(), prompt: "Quel type de poisson Thomas a-t-il pêché ?", options: ["Une truite", "Un saumon", "Un bar", "Un poisson-chat"], correctAnswer: "Une truite", explanation: "L'histoire indique qu'il a pêché une grande truite.", passage: "Thomas s'est réveillé très tôt samedi pour aller pêcher sur le fleuve Sacramento. Il a pêché une grande truite mais a dû la rejeter à l'eau car elle était trop petite."),
            ExerciseItem(id: UUID(), prompt: "De quelle couleur est la voiture hybride de Chantal ?", options: ["Bleue", "Jaune", "Rouge", "Verte"], correctAnswer: "Bleue", explanation: "L'histoire mentionne que Chantal a garé sa voiture hybride bleue.", passage: "Chantal a garé sa voiture hybride bleue sous un grand palmier à San Diego. Quand elle est revenue, elle a vu que la voiture était couverte de grandes feuilles vertes."),
            ExerciseItem(id: UUID(), prompt: "Combien de bougies Dieudonné a-t-il placées sur le gâteau ?", options: ["Dix", "Cinq", "Huit", "Douze"], correctAnswer: "Dix", explanation: "L'histoire indique qu'il a mis dix bougies rouges sur le gâteau.", passage: "Dieudonné a préparé une tarte aux patates douces pour le festival communautaire d'Oakland. Il a ensuite décoré le gâteau d'anniversaire de sa fille avec dix bougies rouges."),
            ExerciseItem(id: UUID(), prompt: "Où habite la sœur de Fabienne ?", options: ["À Port-au-Prince", "À New York", "À Boston", "À Miami"], correctAnswer: "À Port-au-Prince", explanation: "L'histoire indique qu'elle a envoyé un colis à sa sœur à Port-au-Prince.", passage: "Fabienne s'est rendue au bureau de poste pour envoyer un colis contenant des livres à sa sœur vivant à Port-au-Prince. L'agent postal lui a dit que le colis arriverait mardi."),
            ExerciseItem(id: UUID(), prompt: "De quelle couleur sont les nouvelles chaussures de course de Nicole ?", options: ["Vert fluo", "Bleues", "Rouges", "Noires"], correctAnswer: "Vert fluo", explanation: "L'histoire indique qu'elles sont vert fluo avec des bandes blanches.", passage: "Nicole a acheté une nouvelle paire de chaussures de course hier pour s'entraîner à Pasadena. Elles sont vert fluo avec des bandes blanches."),
            ExerciseItem(id: UUID(), prompt: "De quelle couleur était le chapeau de soleil que Madeleine a acheté ?", options: ["Jaune", "Rouge", "Bleu", "Noir"], correctAnswer: "Jaune", explanation: "L'histoire mentionne que Madeleine portait un chapeau de soleil jaune pour se protéger de la chaleur à Napa Valley.", passage: "Madeleine a acheté un grand chapeau de soleil jaune pour son week-end dans la Napa Valley. Le chapeau l'a bien protégée du soleil intense de la canicule."),
            ExerciseItem(id: UUID(), prompt: "Quel jour la boulangerie était-elle fermée ?", options: ["Lundi", "Mardi", "Mercredi", "Dimanche"], correctAnswer: "Lundi", explanation: "L'histoire indique que la boulangerie était fermée le lundi pour travaux.", passage: "La boulangerie française de San Francisco était fermée le lundi pour des rénovations intérieures. Les clients devaient revenir le mardi matin dès six heures."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi Pascal a-t-il appelé un plombier ?", options: ["Son évier fuyait", "Sa cuisinière était cassée", "Sa lumière était en panne", "Sa porte était bloquée"], correctAnswer: "Son évier fuyait", explanation: "L'histoire indique qu'il a appelé un plombier car son évier de cuisine fuyait.", passage: "Pascal a appelé un plombier en urgence car l'évier de sa cuisine à Sacramento fuyait abondamment. Le plombier est arrivé une heure later pour remplacer le joint usé."),
            ExerciseItem(id: UUID(), prompt: "Quel est le nom du chien de Gabriel ?", options: ["Max", "Buddy", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "L'histoire mentionne que le chien s'appelle Max.", passage: "Gabriel a promené son chien Max près des collines de Hollywood. Max a vu un écureuil et s'est mis à aboyer joyeusement en tirant sur sa laisse."),
            ExerciseItem(id: UUID(), prompt: "Quel légume manquait à Sophie pour sa soupe ?", options: ["Des carottes", "Des pommes de terre", "Des oignons", "Du céleri"], correctAnswer: "Des carottes", explanation: "L'histoire indique qu'elle n'avait plus de carottes et les a remplacées par des pommes de terre.", passage: "Sophie préparait une soupe de courge dans sa cuisine à Fresno. Elle s'est rendu compte qu'elle n'avait plus de carottes, alors elle a utilisé des pommes de terre à la place."),
            ExerciseItem(id: UUID(), prompt: "Combien a coûté le repas de Pierre ?", options: ["Quinze dollars", "Dix dollars", "Vingt dollars", "Douze dollars"], correctAnswer: "Quinze dollars", explanation: "L'histoire indique que le repas a coûté quinze dollars au total.", passage: "Pierre a commandé une pizza et un soda frais pour son déjeuner à Los Angeles. La facture totale s'élevait à quinze dollars."),
            ExerciseItem(id: UUID(), prompt: "Quel était le sujet du livre emprunté par Bernadette ?", options: ["Le jardinage", "L'histoire", "La cuisine", "Le voyage"], correctAnswer: "Le jardinage", explanation: "L'histoire indique qu'elle a emprunté un livre sur le jardinage.", passage: "Bernadette s'est rendue à la bibliothèque de San Diego pour emprunter un livre sur le jardinage. Elle a également pris un documentaire sur l'histoire de la Californie."),
            ExerciseItem(id: UUID(), prompt: "Pourquoi le train de banlieue était-il en retard ?", options: ["Travaux sur les voies", "Une tempête", "Une panne d'électricité", "Un membre d'équipage manquant"], correctAnswer: "Travaux sur les voies", explanation: "L'histoire indique que le retard de quinze minutes était dû à des travaux sur les voies.", passage: "Mathieu a pris le train de banlieue Caltrain pour se rendre à un entretien d'embauche à San Francisco. Le train a eu quinze minutes de retard en raison de travaux sur les voies."),
            ExerciseItem(id: UUID(), prompt: "Quelle fleur Céleste a-t-elle fini par acheter ?", options: ["Des œillets roses", "Des roses rouges", "Des tulipes jaunes", "Des lys blancs"], correctAnswer: "Des œillets roses", explanation: "L'histoire indique qu'elle a acheté des œillets roses car les roses étaient épuisées.", passage: "Céleste est allée chez le fleuriste de Santa Monica pour acheter des roses rouges. N'en trouvant plus, elle a choisi d'acheter un bouquet d'œillets roses.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Suites de nombres",
        instructions: "Quel nombre vient ensuite dans la suite ?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "La suite augmente de 2 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "La suite augmente de 5 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "La suite augmente de 10 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "La suite augmente de 3 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "La suite diminue de 1 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "La suite diminue de 2 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "La suite de nombres impairs augmente de 2 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "La suite augmente de 4 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "La suite diminue de 5 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "La suite diminue de 10 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "La suite augmente de 11 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "La suite augmente de 2 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "La suite augmente de 3 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "La suite diminue de 3 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "La suite augmente de 7 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "La suite diminue de 4 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "La suite augmente de 6 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "La suite augmente de 5 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "La suite diminue de 10 à chaque étape."),
            ExerciseItem(id: UUID(), prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "La suite augmente de 2 à chaque étape.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Cause et effet",
        instructions: "Choisissez l'effet logique découlant de la situation décrite.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Si la température extérieure descend en dessous de zéro, l'eau dans le tuyau va ___.", options: ["Geler", "Bouillir", "S'évaporer", "Chauffer"], correctAnswer: "Geler", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous laissez une plante sans eau pendant plusieurs semaines, elle va ___.", options: ["Grandir", "Fleurir", "Mourir", "Verdir"], correctAnswer: "Mourir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous allumez un feu dans la cheminée sans ouvrir le conduit, la pièce va ___.", options: ["Se refroidir", "S'éclairer", "Se remplir de fumée", "Sentir bon"], correctAnswer: "Se remplir de fumée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous lâchez un verre en cristal sur un sol en carrelage, il va ___.", options: ["Rebondir", "Se briser", "S'étirer", "Fondre"], correctAnswer: "Se briser", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous laissez du lait chaud sur le comptoir pendant trois jours en été, il va ___.", options: ["Tourner", "Geler", "Devenir plus sucré", "Se clarifier"], correctAnswer: "Tourner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous oubliez de mettre du carburant dans votre voiture, le moteur va ___.", options: ["S'arrêter", "Accélérer", "Chauffer", "Exploser"], correctAnswer: "S'arrêter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous appuyez sur l'interrupteur d'une lampe débranchée, la lampe va ___.", options: ["S'allumer", "Rester éteinte", "Clignoter", "Griller"], correctAnswer: "Rester éteinte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous mettez trop de levure dans la pâte à pain, la pâte va ___.", options: ["Gonfler excessivement", "Rétrécir", "Durcir", "Devenir liquide"], correctAnswer: "Gonfler excessivement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous marchez sous une forte averse sans parapluie, vous serez ___.", options: ["Trempé", "Sec", "Chaud", "Propre"], correctAnswer: "Trempé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous exposez du chocolat noir au soleil direct en Californie en plein été, il va ___.", options: ["Durcir", "Fondre", "Geler", "Changer de couleur"], correctAnswer: "Fondre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous ne chargez pas la batterie de votre téléphone portable pendant deux jours, il va ___.", options: ["S'éteindre", "Surgir", "Sonner", "Chauffer"], correctAnswer: "S'éteindre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous ajoutez du sel dans un verre d'eau et remuez, le sel va ___.", options: ["Se dissoudre", "Geler", "S'évaporer", "Durcir"], correctAnswer: "Se dissoudre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous laissez le congélateur grand ouvert pendant plusieurs heures, les aliments vont ___.", options: ["Décongeler", "Geler", "Cuire", "Sécher"], correctAnswer: "Décongeler", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous touchez une plaque de cuisson brûlante à mains nues, vous allez vous ___.", options: ["Brûler", "Refroidir", "Couper", "Laver"], correctAnswer: "Brûler", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous semez des graines de carottes dans un sol fertile et les arrosez régulièrement, elles vont ___.", options: ["Germer", "Pourrir", "Sécher", "Disparaître"], correctAnswer: "Germer", explanation: "")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "Quelle est cette émotion ?",
        instructions: "Identifiez l'émotion ressentie par la personne décrite.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Julie sourit largement et tape dans ses mains en recevant son cadeau. Quelle émotion ressent-elle ?", options: ["La joie", "La colère", "La peur", "La tristesse"], correctAnswer: "La joie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Marc fronce les sourcils, serre les poings et parle d'une voix très forte. Quelle émotion ressent-il ?", options: ["La colère", "La joie", "La surprise", "La tristesse"], correctAnswer: "La colère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sophie a les larmes aux yeux, baisse la tête et reste silencieuse dans son coin. Quelle émotion ressent-elle ?", options: ["La tristesse", "La colère", "La peur", "La fierté"], correctAnswer: "La tristesse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Lucas sursaute, ouvre grand les yeux et recule devant un gros chien qui aboie. Quelle émotion ressent-il ?", options: ["La peur", "La joie", "L'ennui", "La colère"], correctAnswer: "La peur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Bernadette sourit doucement, respire calmement et se détend dans son fauteuil. Quel est son état d'esprit ?", options: ["La sérénité", "La colère", "La jalousie", "La surprise"], correctAnswer: "La sérénité", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Robert hausse les épaules, soupire et regarde sa montre toutes les deux minutes. Quel est son état d'esprit ?", options: ["L'ennui", "La joie", "La peur", "L'enthousiasme"], correctAnswer: "L'ennui", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Karine sourit fièrement en montrant son diplôme à ses parents. Quelle émotion ressent-elle ?", options: ["La fierté", "La tristesse", "La colère", "La honte"], correctAnswer: "La fierté", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Paul cache son visage dans ses mains et rougit après avoir fait tomber son plateau. Quelle émotion ressent-il ?", options: ["L'embarras", "La joie", "La peur", "La fierté"], correctAnswer: "L'embarras", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Émilie sourit doucement et serre son amie dans ses bras pour la consoler. Quel sentiment exprime-t-elle ?", options: ["La sympathie", "La colère", "La jalousie", "Le mépris"], correctAnswer: "La sympathie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Michel grince des dents en voyant son collègue recevoir toutes les félicitations. Quelle émotion ressent-il ?", options: ["La jalousie", "La joie", "L'amour", "La peur"], correctAnswer: "La jalousie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Nathalie sourit chaleureusement et remercie chaleureusement son voisin pour son aide. Quel sentiment exprime-t-elle ?", options: ["La gratitude", "La colère", "La peur", "La tristesse"], correctAnswer: "La gratitude", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Jérôme frissonne, regarde derrière lui dans la ruelle sombre et presse le pas. Quelle émotion ressent-il ?", options: ["La peur", "La joie", "La fierté", "La sérénité"], correctAnswer: "La peur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Antoine crie de joie et saute dans les bras de son frère après la victoire de leur équipe. Quelle émotion ressent-il ?", options: ["L'excitation", "La colère", "La tristesse", "La peur"], correctAnswer: "L'excitation", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Chantal baisse les yeux, s'excuse à voix basse et évite le regard des autres. Quelle émotion ressent-elle ?", options: ["La honte", "La joie", "La colère", "La fierté"], correctAnswer: "La honte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "David soupire lourdement devant sa pile de dossiers et frotte ses tempes. Quel est son état d'esprit ?", options: ["La fatigue", "La joie", "La surprise", "La colère"], correctAnswer: "La fatigue", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mathilde ouvre grand la bouche et reste sans voix en voyant ses amis crier 'Surprise !'. Quelle émotion ressent-elle ?", options: ["La surprise", "La colère", "La tristesse", "L'ennui"], correctAnswer: "La surprise", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Jean sourit tendrement en regardant les photos de son enfance. Quel sentiment ressent-il ?", options: ["La nostalgie", "La colère", "La peur", "Le dégoût"], correctAnswer: "La nostalgie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Yasmine détourne le regard avec dégoût en voyant de la nourriture avariée dans le réfrigérateur. Quelle émotion ressent-elle ?", options: ["Le dégoût", "La joie", "La surprise", "L'amour"], correctAnswer: "Le dégoût", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Luc s'impatiente, tape du pied dans la file d'attente et soupire à plusieurs reprises. Quelle émotion ressent-il ?", options: ["La frustration", "La joie", "La peur", "La tristesse"], correctAnswer: "La frustration", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Alice sourit et caresse doucement son chat qui ronronne sur ses genoux. Quel sentiment ressent-elle ?", options: ["L'affection", "La colère", "La peur", "Le mépris"], correctAnswer: "L'affection", explanation: "")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here?
    private static let exercise10 = Exercise(
        title: "Qu'est-ce qui ne va pas ici ?",
        instructions: "Trouvez l'erreur de logique dans la situation ou la phrase.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis sa soupe au congélateur pour la réchauffer.", options: ["On ne réchauffe pas au congélateur", "La soupe ne se mange pas chaude", "Le bol va fondre", "Il faut utiliser un couteau"], correctAnswer: "On ne réchauffe pas au congélateur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a mis ses bottes d'hiver en laine avant de se baigner dans la piscine.", options: ["Les bottes d'hiver ne sont pas adaptées à la baignade", "La piscine est trop chaude", "Les bottes vont flotter", "Il faut utiliser des lunettes de soleil"], correctAnswer: "Les bottes d'hiver ne sont pas adaptées à la baignade", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le boulanger a utilisé du ciment pour faire lever sa pâte à pain.", options: ["Le ciment n'est pas un ingrédient alimentaire", "Le ciment va rendre le pain trop sucré", "La pâte va cuire trop vite", "Le pain sera bleu"], correctAnswer: "Le ciment n'est pas un ingrédient alimentaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a ouvert son parapluie pour se protéger de la chute des feuilles en automne.", options: ["Le parapluie sert pour la pluie", "Les feuilles sont trop lourdes", "L'automne n'existe pas", "Le parapluie va s'envoler"], correctAnswer: "Le parapluie sert pour la pluie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a arrosé ses fleurs en plastique avec de l'engrais liquide pour les faire grandir.", options: ["Les fleurs en plastique ne grandissent pas", "L'engrais va faire fondre le plastique", "Il faut utiliser de l'eau tiède", "Les fleurs vont changer de couleur"], correctAnswer: "Les fleurs en plastique ne grandissent pas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis ses lunettes de soleil pour lire un livre dans le noir complet.", options: ["On ne peut pas lire dans le noir", "Les lunettes vont l'aider à voir", "Le livre est trop grand", "Les lunettes de soleil font de la lumière"], correctAnswer: "On ne peut pas lire dans le noir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a utilisé une fourchette pour boire sa soupe aux légumes.", options: ["On mange la soupe avec une cuillère", "La fourchette est trop lourde", "La soupe va coller", "Il faut utiliser une paille"], correctAnswer: "On mange la soupe avec une cuillère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le jardinier a planté des œufs dans la terre pour faire pousser des poules.", options: ["Les poules ne poussent pas dans la terre", "Les œufs vont éclore sous l'eau", "Les œufs doivent être cuits", "Il faut planter des poussins"], correctAnswer: "Les poules ne poussent pas dans la terre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a branché sa télévision sur une prise de courant éteinte pour regarder le match.", options: ["La télévision a besoin d'électricité pour fonctionner", "Le match est déjà fini", "La télévision va exploser", "Il faut utiliser une antenne en carton"], correctAnswer: "La télévision a besoin d'électricité pour fonctionner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a mis du sel dans son café pour le rendre plus sucré.", options: ["Le sel rend les aliments salés, pas sucrés", "Le café va bouillir", "Le sucre est noir", "Il faut utiliser du poivre"], correctAnswer: "Le sel rend les aliments salés, pas sucrés", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le pilote a garé son avion de ligne sur le parking d'un supermarché.", options: ["Un avion ne peut pas se garer sur un parking de magasin", "L'avion est trop rapide", "Le parking est gratuit", "Les clients vont monter dedans"], correctAnswer: "Un avion ne peut pas se garer sur un parking de magasin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis son manteau de fourrure pour aller bronzer sur la plage en plein été.", options: ["Un manteau chaud n'est pas adapté à la plage en été", "Le manteau va fondre", "Le soleil va abîmer la fourrure", "Il faut utiliser des bottes de neige"], correctAnswer: "Un manteau chaud n'est pas adapté à la plage en été", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a lavé ses assiettes sales dans le sèche-linge.", options: ["On lave la vaisselle dans un lave-vaisselle ou un évier", "Le sèche-linge va mouiller les assiettes", "Les assiettes vont devenir propres", "Il faut utiliser de la lessive en poudre"], correctAnswer: "On lave la vaisselle dans un lave-vaisselle ou un évier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a écrit un courriel avec un crayon à papier sur l'écran de son ordinateur.", options: ["On écrit un courriel avec le clavier", "Le crayon va effacer l'écran", "L'ordinateur est éteint", "Il faut utiliser un feutre rouge"], correctAnswer: "On écrit un courriel avec le clavier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a mis ses chaussures avant d'enfiler ses chaussettes.", options: ["Les chaussettes s'enfilent avant les chaussures", "Les chaussettes vont se salir", "Les chaussures sont trop petites", "Il faut utiliser des lacets en plastique"], correctAnswer: "Les chaussettes s'enfilent avant les chaussures", explanation: "")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "Lire une ordonnance",
        instructions: "Lisez l'ordonnance médicale donnée et répondez à la question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé d'Amoxicilline 500mg trois fois par jour pendant 7 jours.' Combien de comprimés devez-vous prendre par jour ?", options: ["1 comprimé", "2 comprimés", "3 comprimés", "7 comprimés"], correctAnswer: "3 comprimés", explanation: "Trois fois par jour signifie 3 comprimés par jour."),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Appliquer la pommade sur la zone affectée deux fois par jour, matin et soir.' À quel moment devez-vous appliquer la pommade ?", options: ["Matin et soir", "Toutes les 4 heures", "Une fois à midi", "Avant chaque repas"], correctAnswer: "Matin et soir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 capsule de 100mg à jeun le matin.' Quand devez-vous prendre la capsule ?", options: ["Le matin avant de manger", "Le soir avant de dormir", "Pendant le déjeuner", "Après le dîner"], correctAnswer: "Le matin avant de manger", explanation: "À jeun signifie sans avoir mangé au préalable."),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé toutes les 8 heures en cas de douleur.' Quel est le nombre maximum de comprimés par tranche de 24 heures ?", options: ["1 comprimé", "2 comprimés", "3 comprimés", "4 comprimés"], correctAnswer: "3 comprimés", explanation: "24 heures divisé par 8 heures égale 3 prises."),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 10 ml de sirop de toux avant le coucher.' Quelle quantité de sirop devez-vous mesurer ?", options: ["5 ml", "10 ml", "15 ml", "20 ml"], correctAnswer: "10 ml", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé de Lisinopril 10mg par jour au petit-déjeuner. Ne pas interrompre sans avis médical.' Pouvez-vous arrêter ce traitement si vous vous sentez mieux ?", options: ["Oui, immédiatement", "Non, pas sans l'avis du médecin", "Seulement le week-end", "Oui, après 3 jours"], correctAnswer: "Non, pas sans l'avis du médecin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé de paracétamol 500mg toutes les 6 heures si nécessaire. Ne pas dépasser 4 comprimés par jour.' Combien de temps devez-vous attendre entre chaque prise ?", options: ["Au moins 4 heures", "Au moins 6 heures", "Au moins 8 heures", "Au moins 12 heures"], correctAnswer: "Au moins 6 heures", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé avec un grand verre d'eau après le repas.' Comment devez-vous prendre le comprimé ?", options: ["À jeun", "Après avoir mangé, avec de l'eau", "Avant le repas sans eau", "Au milieu de la nuit avec du jus"], correctAnswer: "Après avoir mangé, avec de l'eau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 capsule avant chaque repas principal.' Combien de fois par jour devez-vous probablement prendre ce médicament ?", options: ["1 fois", "2 fois", "3 fois", "5 fois"], correctAnswer: "3 fois", explanation: "Les repas principaux sont le petit-déjeuner, le déjeuner et le dîner (3 repas)."),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Instiller 2 gouttes dans l'œil gauche toutes les 12 heures.' Quel œil doit recevoir les gouttes ?", options: ["L'œil droit", "L'œil gauche", "Les deux yeux", "Aucun des deux"], correctAnswer: "L'œil gauche", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé de simvastatine le soir au coucher.' À quel moment de la journée devez-vous prendre ce médicament ?", options: ["Le matin au réveil", "À midi avec le repas", "Le soir avant de dormir", "Au milieu de l'après-midi"], correctAnswer: "Le soir avant de dormir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 sachet dilué dans un verre d'eau en cas de brûlures d'estomac.' Que devez-vous faire avec le contenu du sachet ?", options: ["Le avaler sec", "Le mélanger dans un verre d'eau", "Le appliquer sur la peau", "Le mettre sous la langue"], correctAnswer: "Le mélanger dans un verre d'eau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé de fer 80mg. Éviter le thé et le café dans l'heure qui suit la prise.' Que devez-vous éviter de boire juste après la prise ?", options: ["L'eau", "Le thé et le café", "Le jus d'orange", "Le lait de soja"], correctAnswer: "Le thé et le café", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Traitement de 5 jours. Terminer impérativement la boîte.' Si vos symptômes disparaissent après 3 jours, devez-vous continuer ?", options: ["Non, arrêtez le traitement", "Oui, continuez jusqu'au bout des 5 jours", "Prenez des demi-doses", "Consultez un voisin"], correctAnswer: "Oui, continuez jusqu'au bout des 5 jours", explanation: "Il faut terminer la boîte pour assurer l'efficacité complète."),
            ExerciseItem(id: UUID(), prompt: "Sur l'ordonnance : 'Prendre 1 comprimé d'antihistaminique le soir. Attention : risque de somnolence.' Pourquoi est-il conseillé de le prendre le soir ?", options: ["Il agit plus vite la nuit", "Il peut provoquer de la somnolence", "Il est moins cher le soir", "Il a meilleur goût"], correctAnswer: "Il peut provoquer de la somnolence", explanation: "")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Lire un menu",
        instructions: "Lisez le menu du restaurant donné et répondez à la question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Café : 3,00 $, Croissant : 4,00 $, Formule P'tit Déj (Café + Croissant) : 6,00 $.' Combien économisez-vous en choisissant la formule plutôt que les articles séparés ?", options: ["0,50 $", "1,00 $", "1,50 $", "2,00 $"], correctAnswer: "1,00 $", explanation: "3,00 $ + 4,00 $ = 7,00 $ individuellement. La formule coûte 6,00 $, soit 1,00 $ d'économie."),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Soupe du jour : 6,00 $, Salade César : 9,00 $, Plat principal : 15,00 $.' Quel est le prix total si vous commandez la soupe et le plat principal ?", options: ["15,00 $", "21,00 $", "24,00 $", "27,00 $"], correctAnswer: "21,00 $", explanation: "6,00 $ + 15,00 $ = 21,00 $."),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Plat du jour : 12,00 $ (disponible uniquement de 11h30 à 14h00).' Pouvez-vous commander ce plat à 15h00 ?", options: ["Oui", "Non", "Seulement le week-end", "Avec un supplément de 5 $"], correctAnswer: "Non", explanation: "15h00 est en dehors de la plage horaire 11h30 - 14h00."),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Soda : 2,50 $ (Recharges gratuites).' Si vous buvez trois verres de soda, combien paierez-vous au total pour vos boissons ?", options: ["2,50 $", "5,00 $", "7,50 $", "1,00 $"], correctAnswer: "2,50 $", explanation: "Les recharges étant gratuites, vous ne payez que le premier verre."),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Tarte aux pommes : 5,00 $ (Option boule de glace à la vanille : + 1,50 $).' Combien coûte la tarte aux pommes avec de la glace ?", options: ["5,00 $", "6,00 $", "6,50 $", "7,50 $"], correctAnswer: "6,50 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Burger classique : 10,00 $, Burger végétarien : 11,00 $.' Quel burger est le moins cher ?", options: ["Le burger classique", "Le burger végétarien", "Ils sont au même prix", "Le menu enfant"], correctAnswer: "Le burger classique", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Menu enfant (jusqu'à 12 ans) : 7,00 $.' Un enfant de 10 ans peut-il bénéficier de ce tarif ?", options: ["Oui", "Non", "Seulement le midi", "Avec une pièce d'identité"], correctAnswer: "Oui", explanation: "10 ans est inférieur à 12 ans."),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Plat principal servi avec frites ou légumes verts.' Quelles sont les options d'accompagnement proposées ?", options: ["Riz ou frites", "Frites ou légumes verts", "Pâtes ou salade", "Pommes de terre ou haricots"], correctAnswer: "Frites ou légumes verts", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Espresso : 2,50 $, Cappuccino : 3,50 $, Café au lait : 4,00 $.' Quelle est la boisson chaude la plus chère ?", options: ["L'espresso", "Le cappuccino", "Le café au lait", "Le café noir"], correctAnswer: "Le café au lait", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Muffin aux bleuets : 3,00 $, Cookie : 2,50 $.' Si vous achetez deux muffins, combien paierez-vous ?", options: ["5,00 $", "5,50 $", "6,00 $", "7,00 $"], correctAnswer: "6,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Pizza Margherita : 12,00 $, Supplément pepperoni : + 2,00 $.' Quel est le prix d'une pizza Margherita avec pepperoni ?", options: ["12,00 $", "14,00 $", "15,00 $", "16,00 $"], correctAnswer: "14,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Eau plate ou gazeuse : gratuite pour les clients.' Combien coûte une bouteille d'eau gazeuse pour un client qui mange sur place ?", options: ["1,50 $", "Graticule", "Gratuite", "3,00 $"], correctAnswer: "Gratuite", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Thé glacé maison : 3,00 $.' Si vous payez avec un billet de 5 $, combien de monnaie récupérez-vous ?", options: ["1,00 $", "1,50 $", "2,00 $", "2,50 $"], correctAnswer: "2,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Soupe de poisson : 8,00 $, Bol de riz : 3,00 $.' Combien coûte le repas si vous prenez les deux ?", options: ["10,00 $", "11,00 $", "12,00 $", "13,00 $"], correctAnswer: "11,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur le menu : 'Glaces : 1 boule 2,50 $, 2 boules 4,00 $.' Combien coûte la deuxième boule si vous prenez l'option 2 boules ?", options: ["1,50 $", "2,00 $", "2,50 $", "1,00 $"], correctAnswer: "1,50 $", explanation: "4,00 $ moins 2,50 $ pour la première boule donne 1,50 $ pour la seconde.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Comprendre les factures",
        instructions: "Lisez la facture donnée et répondez à la question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Sur la facture d'électricité : 'Montant total dû : 85,00 $, Date limite de paiement : 20 juillet. Des frais de retard de 5,00 $ s'appliquent après cette date.' Combien paierez-vous si vous réglez le 25 juillet ?", options: ["85,00 $", "90,00 $", "95,00 $", "80,00 $"], correctAnswer: "90,00 $", explanation: "85,00 $ + 5,00 $ de frais de retard = 90,00 $."),
            ExerciseItem(id: UUID(), prompt: "Sur la facture d'eau : 'Consommation mensuelle : 40,00 $, Taxes et redevances : 12,00 $.' Quel est le montant total facturé ?", options: ["40,00 $", "42,00 $", "52,00 $", "60,00 $"], correctAnswer: "52,00 $", explanation: "40,00 $ + 12,00 $ = 52,00 $."),
            ExerciseItem(id: UUID(), prompt: "Sur la facture de téléphone : 'Abonnement mensuel : 45,00 $, Remise fidélité : - 5,00 $.' Quel est le montant final à payer ?", options: ["40,00 $", "45,00 $", "50,00 $", "35,00 $"], correctAnswer: "40,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur la facture d'électricité : 'Solde précédent impayé : 20,00 $, Nouvelles charges : 75,00 $.' Quel est le montant total exigé ?", options: ["75,00 $", "85,00 $", "95,00 $", "100,00 $"], correctAnswer: "95,00 $", explanation: "20,00 $ + 75,00 $ = 95,00 $."),
            ExerciseItem(id: UUID(), prompt: "Sur la facture d'internet : 'Montant mensuel : 60,00 $ (Taxes incluses).' Si vous payez par prélèvement automatique, vous bénéficiez d'une réduction de 2,00 $. Combien paierez-vous avec cette réduction ?", options: ["58,00 $", "60,00 $", "62,00 $", "55,00 $"], correctAnswer: "58,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur une facture d'hôpital : 'Frais de consultation : 150,00 $, Prise en charge assurance : 80 %.' Quel pourcentage reste à votre charge ?", options: ["10 %", "20 %", "30 %", "50 %"], correctAnswer: "20 %", explanation: "100 % moins 80 % couverts par l'assurance donne 20 % à charge."),
            ExerciseItem(id: UUID(), prompt: "Sur la facture de gaz : 'Index précédent : 1200, Nouvel index : 1250. Consommation : 50 unités à 0,20 $ l'unité.' Quel est le coût de la consommation ?", options: ["10,00 $", "20,00 $", "25,00 $", "50,00 $"], correctAnswer: "10,00 $", explanation: "50 unités multipliées par 0,20 $ donne 10,00 $."),
            ExerciseItem(id: UUID(), prompt: "Sur la facture de câble : 'Échéance le 5 du mois. Montant : 70,00 $.' Si vous payez le 2 du mois, votre paiement est-il à l'heure ?", options: ["Oui, tout à fait", "Non, c'est trop tard", "Seulement si vous payez par chèque", "Non, c'est trop tôt"], correctAnswer: "Oui, tout à fait", explanation: "Le 2 est avant la date d'échéance du 5."),
            ExerciseItem(id: UUID(), prompt: "Sur une facture d'achat : 'Sous-total : 100,00 $, Taxe de vente (8 %) : 8,00 $.' Quel est le montant total de la facture ?", options: ["100,00 $", "108,00 $", "116,00 $", "92,00 $"], correctAnswer: "108,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur un relevé d'assurance-maladie : 'Franchise annuelle restante : 50,00 $.' Combien devez-vous encore payer vous-même avant que l'assurance ne commence à couvrir ?", options: ["0 $", "50,00 $", "100,00 $", "150,00 $"], correctAnswer: "50,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur une facture de garage : 'Pièces : 120,00 $, Main d'œuvre : 80,00 $.' Quel est le montant total de la réparation ?", options: ["120,00 $", "160,00 $", "200,00 $", "220,00 $"], correctAnswer: "200,00 $", explanation: "120,00 $ + 80,00 $ = 200,00 $."),
            ExerciseItem(id: UUID(), prompt: "Sur la facture d'électricité : 'Consommation d'énergie : 90,00 $, Crédit d'énergie solaire : - 15,00 $.' Combien devez-vous régler ?", options: ["75,00 $", "90,00 $", "105,00 $", "85,00 $"], correctAnswer: "75,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur la facture de téléphone : 'Frais de service : 30,00 $, Appels internationaux hors forfait : 15,00 $.' Quel est le total à payer ?", options: ["30,00 $", "40,00 $", "45,00 $", "50,00 $"], correctAnswer: "45,00 $", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur une facture de livraison : 'Frais de livraison à domicile : 10,00 $. Livraison gratuite pour toute commande supérieure à 50,00 $.' Si votre commande s'élève à 65,00 $, paierez-vous des frais de livraison ?", options: ["Oui, 10,00 $", "Non, la livraison est gratuite", "Oui, 5,00 $", "Seulement si vous payez en espèces"], correctAnswer: "Non, la livraison est gratuite", explanation: "65,00 $ étant supérieur à 50,00 $, vous bénéficiez de la gratuité."),
            ExerciseItem(id: UUID(), prompt: "Sur une facture annuelle : 'Montant total : 240,00 $. Possibilité de payer en 12 mensualités sans frais.' Quel est le montant de chaque mensualité ?", options: ["15,00 $", "20,00 $", "24,00 $", "12,00 $"], correctAnswer: "20,00 $", explanation: "240,00 $ divisé par 12 mois donne 20,00 $ par mois.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "Que feriez-vous ?",
        instructions: "Choisissez la meilleure réaction à adopter face à la situation sociale décrite.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Vous trouvez une enveloppe contenant de l'argent liquide sur le sol du hall de votre immeuble. Que faites-vous ?", options: ["La garder pour vous", "La remettre au gérant de l'immeuble ou à la police", "La laisser par terre", "La donner à un ami au hasard"], correctAnswer: "La remettre au gérant de l'immeuble ou à la police", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un ami vous envoie un SMS disant qu'il a besoin que vous cliquiez sur un lien suspect pour voir une photo de vous. Que faites-vous ?", options: ["Cliquer immédiatement", "Supprimer le message et appeler l'ami pour vérifier", "Transférer le message à d'autres contacts", "Répondre avec colère"], correctAnswer: "Supprimer le message et appeler l'ami pour vérifier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous sentez une odeur de gaz en rentrant dans votre appartement. Que faites-vous ?", options: ["Allumer la lumière pour y voir clair", "Sortir immédiatement et appeler les urgences ou le fournisseur de gaz", "Ouvrir le frigo", "Vous coucher pour dormir"], correctAnswer: "Sortir immédiatement et appeler les urgences ou le fournisseur de gaz", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous recevez un appel disant que vous avez gagné un prix de 1000 $, mais qu'il faut donner votre numéro de carte de crédit pour les frais d'envoi. Que faites-vous ?", options: ["Donner vos informations", "Raccrocher immédiatement", "Donner un faux numéro", "Demander à parler au patron"], correctAnswer: "Raccrocher immédiatement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous glissez sur un trottoir mouillé et vous vous faites mal au poignet, mais vous pouvez encore bouger vos doigts. Que faites-vous ?", options: ["Ignorer la douleur et continuer à porter des charges lourdes", "Appliquer de la glace et consulter un médecin si le poignet gonfle", "Masser vigoureusement le poignet", "Mettre du parfum dessus"], correctAnswer: "Appliquer de la glace et consulter un médecin si le poignet gonfle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Votre voisin âgé n'a pas sorti ses poubelles depuis deux semaines et ses volets restent fermés. Que faites-vous ?", options: ["Ignorer la situation", "Frapper à sa porte pour prendre des nouvelles ou appeler un membre de sa famille", "Appeler la mairie pour vous plaindre des poubelles", "Lancer des cailloux sur ses volets"], correctAnswer: "Frapper à sa porte pour prendre des nouvelles ou appeler un membre de sa famille", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous constatez que le détecteur de fumée de votre cuisine émet un bip court toutes les minutes. Que faites-vous ?", options: ["Retirer la pile et la jeter sans la remplacer", "Remplacer la pile par une pile neuve immédiatement", "Couvrir le détecteur avec un sac plastique", "Ignorer le bruit"], correctAnswer: "Remplacer la pile par une pile neuve immédiatement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous recevez un courriel de votre banque demandant de confirmer d'urgence vos identifiants de connexion. Que faites-vous ?", options: ["Cliquer sur le lien pour confirmer", "Supprimer le courriel et appeler le numéro officiel de la banque", "Répondre au courriel avec vos identifiants", "Ignorer et ne rien faire"], correctAnswer: "Supprimer le courriel et appeler le numéro officiel de la banque", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Votre voiture commence à déraper sur une route mouillée par temps de pluie. Que faites-vous ?", options: ["Freiner brusquement et tourner le volant à fond", "Relâcher doucement l'accélérateur et garder les roues droites", "Accélérer pour retrouver de la vitesse", "Fermer les yeux et prier"], correctAnswer: "Relâcher doucement l'accélérateur et garder les roues droites", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous trouvez un chien errant sans collier qui semble perdu dans votre jardin. Que faites-vous ?", options: ["Le chasser à coups de balai", "Appeler le contrôle des animaux ou l'emmener chez un vétérinaire pour vérifier s'il a une puce", "Le garder définitivement sans rien dire", "Lui donner du chocolat"], correctAnswer: "Appeler le contrôle des animaux ou l'emmener chez un vétérinaire pour vérifier s'il a une puce", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous remarquez une fuite d'eau importante sous votre évier de cuisine. Que faites-vous ?", options: ["Placer un petit verre dessous et attendre le lendemain", "Fermer la vanne d'arrivée d'eau et appeler un plombier", "Éponger l'eau sans couper l'arrivée d'eau", "Utiliser du ruban adhésif sur le tuyau humide"], correctAnswer: "Fermer la vanne d'arrivée d'eau et appeler un plombier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un inconnu frappe à votre porte en prétendant faire une enquête pour la ville mais n'a pas de badge officiel. Que faites-vous ?", options: ["Lui ouvrir grand la porte et l'inviter à entrer", "Ne pas ouvrir et lui demander de repasser avec une carte officielle", "Lui donner de l'argent", "Appeler vos voisins pour faire l'enquête avec lui"], correctAnswer: "Ne pas ouvrir et lui demander de repasser avec une carte officielle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous réalisez que vous avez pris un double dosage de votre médicament ce matin. Que faites-vous ?", options: ["Prendre un autre médicament pour compenser", "Contacter le centre antipoison ou votre médecin pour avoir des consignes", "Aller dormir pour laisser passer l'effet", "Boire beaucoup de café"], correctAnswer: "Contacter le centre antipoison ou votre médecin pour avoir des consignes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un courriel prétend que votre compte Netflix va être suspendu si vous ne mettez pas à jour vos coordonnées bancaires immédiatement. Que faites-vous ?", options: ["Mettre à jour vos coordonnées en cliquant sur le lien", "Aller directement sur le site officiel de Netflix pour vérifier votre compte", "Ignorer et supprimer votre abonnement", "Envoyer un chèque par la poste"], correctAnswer: "Aller directement sur le site officiel de Netflix pour vérifier votre compte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous perdez votre carte de débit bancaire dans un magasin d'alimentation. Que faites-vous ?", options: ["Attendre de voir si quelqu'un la rapporte", "Appeler immédiatement votre banque pour faire opposition et bloquer la carte", "Aller dans un autre magasin", "Déclarer la perte sur internet le mois prochain"], correctAnswer: "Appeler immédiatement votre banque pour faire opposition et bloquer la carte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un passant s'effondre soudainement sur le trottoir devant vous et ne réagit pas quand vous lui parlez. Que faites-vous ?", options: ["Continuer votre chemin", "Vérifier s'il respire, appeler le 911 et commencer les premiers secours si nécessaire", "Attendre que quelqu'un d'autre s'en occupe", "Lui jeter de l'eau sur le visage"], correctAnswer: "Vérifier s'il respire, appeler le 911 et commencer les premiers secours si nécessaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous constatez que de la moisissure noire s'étend sur le mur de votre salle de bains. Que faites-vous ?", options: ["La peindre pour la cacher", "Nettoyer avec un produit adapté, aérer la pièce et traiter l'humidité", "Laisser sécher sans rien faire", "Mettre un ventilateur devant sans nettoyer"], correctAnswer: "Nettoyer avec un produit adapté, aérer la pièce et traiter l'humidité", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous recevez un message vocal d'un numéro inconnu après coup de fil gagnant de l'argent ou affirmant que la police va venir vous arrêter si vous ne rappelez pas. Que faites-vous ?", options: ["Rappeler immédiatement avec angoisse", "Ignorer et supprimer le message, car la police ne procède pas ainsi", "Appeler vos amis pour vous plaindre", "Aller vous cacher dans la cave"], correctAnswer: "Ignorer et supprimer le message, car la police ne procède pas ainsi", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous cassez un thermomètre ou un pot en verre contenant du liquide chimique. Que faites-vous ?", options: ["Ramasser à mains nues et jeter à la poubelle", "Aérer la pièce, porter des gants pour nettoyer et jeter de manière sécurisée", "Laisser sécher à l'air libre sans aérer", "Passer l'aspirateur sans masque"], correctAnswer: "Aérer la pièce, porter des gants pour nettoyer et jeter de manière sécurisée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vous voyez de la fumée s'échapper du capot de votre voiture alors que vous roulez sur l'autoroute. Que faites-vous ?", options: ["Continuer à rouler jusqu'à la prochaine sortie", "Se ranger sur le côté en sécurité, éteindre le moteur et s'éloigner du véhicule", "Ouvrir immédiatement le capot pour souffler sur la fumée", "Arroser le moteur avec votre bouteille d'eau tout en conduisant"], correctAnswer: "Se ranger sur le côté en sécurité, éteindre le moteur et s'éloigner du véhicule", explanation: "")
        ]
    )
}
