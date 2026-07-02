import Foundation

struct FrenchLanguageExerciseData {

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

    // MARK: - Catégorie incorrecte (Facile)
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Catégorie incorrecte (Facile)",
        instructions: "Choisissez le mot qui n'appartient pas au groupe.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "POMME, BANANE, CAROTTE, POIRE", options: ["POMME", "BANANE", "CAROTTE", "POIRE"], correctAnswer: "CAROTTE", explanation: "C'est un légume, pas un fruit"),
            ExerciseItem(id: UUID(), prompt: "CHIEN, CHAT, OISEAU, CERISIER", options: ["CHIEN", "CHAT", "OISEAU", "CERISIER"], correctAnswer: "CERISIER", explanation: "C'est une plante, pas un animal"),
            ExerciseItem(id: UUID(), prompt: "TRAIN, BUS, VOITURE, CHAISE", options: ["TRAIN", "BUS", "VOITURE", "CHAISE"], correctAnswer: "CHAISE", explanation: "Ce n'est pas un moyen de transport"),
            ExerciseItem(id: UUID(), prompt: "CHEMISE, PANTALON, CHAUSSETTES, ASSIETTE", options: ["CHEMISE", "PANTALON", "CHAUSSETTES", "ASSIETTE"], correctAnswer: "ASSIETTE", explanation: "Ce n'est pas un vêtement"),
            ExerciseItem(id: UUID(), prompt: "TABLE, CHAISE, LIT, LIVRE", options: ["TABLE", "CHAISE", "LIT", "LIVRE"], correctAnswer: "LIVRE", explanation: "Ce n'est pas un meuble"),
            ExerciseItem(id: UUID(), prompt: "LUNDI, MARDI, MERCREDI, JANVIER", options: ["LUNDI", "MARDI", "MERCREDI", "JANVIER"], correctAnswer: "JANVIER", explanation: "C'est un mois, pas un jour de la semaine"),
            ExerciseItem(id: UUID(), prompt: "PARIS, LYON, MARSEILLE, MONT-BLANC", options: ["PARIS", "LYON", "MARSEILLE", "MONT-BLANC"], correctAnswer: "MONT-BLANC", explanation: "C'est une montagne, pas une ville"),
            ExerciseItem(id: UUID(), prompt: "OEIL, OREILLE, NEZ, CHAPEAU", options: ["OEIL", "OREILLE", "NEZ", "CHAPEAU"], correctAnswer: "CHAPEAU", explanation: "Ce n'est pas une partie du corps"),
            ExerciseItem(id: UUID(), prompt: "PRINTEMPS, ÉTÉ, AUTOMNE, MATIN", options: ["PRINTEMPS", "ÉTÉ", "AUTOMNE", "MATIN"], correctAnswer: "MATIN", explanation: "C'est un moment de la journée, pas une saison"),
            ExerciseItem(id: UUID(), prompt: "BAGUETTE, CROISSANT, BRIOCHE, STEAK", options: ["BAGUETTE", "CROISSANT", "BRIOCHE", "STEAK"], correctAnswer: "STEAK", explanation: "C'est de la viande, pas une viennoiserie"),
            ExerciseItem(id: UUID(), prompt: "MARTEAU, TOURNEVIS, SCIE, OREILLER", options: ["MARTEAU", "TOURNEVIS", "SCIE", "OREILLER"], correctAnswer: "OREILLER", explanation: "Ce n'est pas un outil"),
            ExerciseItem(id: UUID(), prompt: "ROUGE, BLEU, VERT, ROND", options: ["ROUGE", "BLEU", "VERT", "ROND"], correctAnswer: "ROND", explanation: "C'est une forme, pas une couleur"),
            ExerciseItem(id: UUID(), prompt: "PIANO, VIOLON, GUITARE, PINCEAU", options: ["PIANO", "VIOLON", "GUITARE", "PINCEAU"], correctAnswer: "PINCEAU", explanation: "Ce n'est pas un instrument de musique"),
            ExerciseItem(id: UUID(), prompt: "MÉDECIN, INFIRMIÈRE, AVOCAT, HÔPITAL", options: ["MÉDECIN", "INFIRMIÈRE", "AVOCAT", "HÔPITAL"], correctAnswer: "HÔPITAL", explanation: "C'est un bâtiment, pas une profession"),
            ExerciseItem(id: UUID(), prompt: "LAIT, THÉ, CAFÉ, PAIN", options: ["LAIT", "THÉ", "CAFÉ", "PAIN"], correctAnswer: "PAIN", explanation: "C'est un aliment solide, pas une boisson"),
            ExerciseItem(id: UUID(), prompt: "MER, RIVIÈRE, LAC, MONTAGNE", options: ["MER", "RIVIÈRE", "LAC", "MONTAGNE"], correctAnswer: "MONTAGNE", explanation: "Ce n'est pas une étendue d'eau"),
            ExerciseItem(id: UUID(), prompt: "LIVRE, MAGAZINE, JOURNAL, CRAYON", options: ["LIVRE", "MAGAZINE", "JOURNAL", "CRAYON"], correctAnswer: "CRAYON", explanation: "Ce n'est pas une lecture"),
            ExerciseItem(id: UUID(), prompt: "ROSE, TULIPE, LIS, PIN", options: ["ROSE", "TULIPE", "LIS", "PIN"], correctAnswer: "PIN", explanation: "C'est un arbre, pas une fleur"),
            ExerciseItem(id: UUID(), prompt: "SOLEIL, LUNE, ÉTOILE, NUAGE", options: ["SOLEIL", "LUNE", "ÉTOILE", "NUAGE"], correctAnswer: "NUAGE", explanation: "Ce n'est pas un corps céleste"),
            ExerciseItem(id: UUID(), prompt: "CHAUSSURE, SANDALE, BOTTE, PORTEFEUILLE", options: ["CHAUSSURE", "SANDALE", "BOTTE", "PORTEFEUILLE"], correctAnswer: "PORTEFEUILLE", explanation: "Ce n'est pas une chaussure"),
            ExerciseItem(id: UUID(), prompt: "RÉFRIGÉRATEUR, MICRO-ONDES, LAVE-LINGE, FENÊTRE", options: ["RÉFRIGÉRATEUR", "MICRO-ONDES", "LAVE-LINGE", "FENÊTRE"], correctAnswer: "FENÊTRE", explanation: "Ce n'est pas un électroménager"),
            ExerciseItem(id: UUID(), prompt: "SAUMON, THON, DAURADE, CREVETTE", options: ["SAUMON", "THON", "DAURADE", "CREVETTE"], correctAnswer: "CREVETTE", explanation: "C'est un crustacé, pas un poisson"),
            ExerciseItem(id: UUID(), prompt: "EST, OUEST, SUD, HAUT", options: ["EST", "OUEST", "SUD", "HAUT"], correctAnswer: "HAUT", explanation: "Ce n'est pas un point cardinal"),
            ExerciseItem(id: UUID(), prompt: "POMME, RAISIN, PÊCHE, OIGNON", options: ["POMME", "RAISIN", "PÊCHE", "OIGNON"], correctAnswer: "OIGNON", explanation: "C'est un légume, pas un fruit"),
            ExerciseItem(id: UUID(), prompt: "ÉCOLE, BIBLIOTHÈQUE, HÔPITAL, AMBULANCE", options: ["ÉCOLE", "BIBLIOTHÈQUE", "HÔPITAL", "AMBULANCE"], correctAnswer: "AMBULANCE", explanation: "C'est un véhicule, pas un bâtiment"),
            ExerciseItem(id: UUID(), prompt: "PARAPLUIE, MANTEAU, GANTS, LUNETTES DE SOLEIL", options: ["PARAPLUIE", "MANTEAU", "GANTS", "LUNETTES DE SOLEIL"], correctAnswer: "LUNETTES DE SOLEIL", explanation: "Ce n'est pas un accessoire pour la pluie"),
            ExerciseItem(id: UUID(), prompt: "DURAND, MARTIN, DUPONT, PARIS", options: ["DURAND", "MARTIN", "DUPONT", "PARIS"], correctAnswer: "PARIS", explanation: "C'est un nom de ville, pas un nom de famille"),
            ExerciseItem(id: UUID(), prompt: "CRAYON, STYLO, GOMME, RÈGLE", options: ["CRAYON", "STYLO", "GOMME", "RÈGLE"], correctAnswer: "RÈGLE", explanation: "Ce n'est pas un outil pour écrire"),
            ExerciseItem(id: UUID(), prompt: "CHOCOLAT, BONBON, BISCUIT, MOUTARDE", options: ["CHOCOLAT", "BONBON", "BISCUIT", "MOUTARDE"], correctAnswer: "MOUTARDE", explanation: "Ce n'est pas une sucrerie"),
            ExerciseItem(id: UUID(), prompt: "UN, DEUX, TROIS, ALPHA", options: ["UN", "DEUX", "TROIS", "ALPHA"], correctAnswer: "ALPHA", explanation: "C'est une lettre grecque, pas un chiffre")
        ]
    )

    // MARK: - Catégorie incorrecte (Difficile)
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Catégorie incorrecte (Difficile)",
        instructions: "Choisissez le mot qui n'appartient pas au groupe.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "MÉTAPHORE, ALLÉGORIE, PERSONNIFICATION, PARAGRAPHE", options: ["MÉTAPHORE", "ALLÉGORIE", "PERSONNIFICATION", "PARAGRAPHE"], correctAnswer: "PARAGRAPHE", explanation: "C'est une structure textuelle, pas une figure de style"),
            ExerciseItem(id: UUID(), prompt: "INSULINE, ADRÉNALINE, OESTROGÈNE, IBUPROFÈNE", options: ["INSULINE", "ADRÉNALINE", "OESTROGÈNE", "IBUPROFÈNE"], correctAnswer: "IBUPROFÈNE", explanation: "C'est un médicament synthétique, pas une hormone"),
            ExerciseItem(id: UUID(), prompt: "BEETHOVEN, MOZART, CHOPIN, PICASSO", options: ["BEETHOVEN", "MOZART", "CHOPIN", "PICASSO"], correctAnswer: "PICASSO", explanation: "C'est un peintre, pas un compositeur"),
            ExerciseItem(id: UUID(), prompt: "NIL, AMAZONE, TAMISE, MONT EVEREST", options: ["NIL", "AMAZONE", "TAMISE", "MONT EVEREST"], correctAnswer: "MONT EVEREST", explanation: "C'est une montagne, pas un fleuve"),
            ExerciseItem(id: UUID(), prompt: "DÉMOCRATIE, COMMUNISME, SOCIALISME, INDIVIDUALISME", options: ["DÉMOCRATIE", "COMMUNISME", "SOCIALISME", "INDIVIDUALISME"], correctAnswer: "INDIVIDUALISME", explanation: "Ce n'est pas un système politique de gouvernement"),
            ExerciseItem(id: UUID(), prompt: "MERCURE, VÉNUS, SATURNE, LUNE", options: ["MERCURE", "VÉNUS", "SATURNE", "LUNE"], correctAnswer: "LUNE", explanation: "C'est un satellite, pas une planète"),
            ExerciseItem(id: UUID(), prompt: "PHILOSOPHIE, ÉTHIQUE, LOGIQUE, CHIMIE", options: ["PHILOSOPHIE", "ÉTHIQUE", "LOGIQUE", "CHIMIE"], correctAnswer: "CHIMIE", explanation: "C'est une science naturelle, pas une discipline des humanités"),
            ExerciseItem(id: UUID(), prompt: "SONATE, SYMPHONIE, CONCERTO, OPÉRA", options: ["SONATE", "SYMPHONIE", "CONCERTO", "OPÉRA"], correctAnswer: "OPÉRA", explanation: "Ce n'est pas une oeuvre purement instrumentale"),
            ExerciseItem(id: UUID(), prompt: "ANGLAIS, FRANÇAIS, ESPAGNOL, ITALIEN", options: ["ANGLAIS", "FRANÇAIS", "ESPAGNOL", "ITALIEN"], correctAnswer: "ANGLAIS", explanation: "Ce n'est pas une langue latine"),
            ExerciseItem(id: UUID(), prompt: "JUGE, AVOCAT, PROCUREUR, PATIENT", options: ["JUGE", "AVOCAT", "PROCUREUR", "PATIENT"], correctAnswer: "PATIENT", explanation: "Ce n'est pas un professionnel de la justice"),
            ExerciseItem(id: UUID(), prompt: "TIGRE, GUÉPARD, PUMA, RENARD", options: ["TIGRE", "GUÉPARD", "PUMA", "RENARD"], correctAnswer: "RENARD", explanation: "Ce n'est pas un félin"),
            ExerciseItem(id: UUID(), prompt: "REIN, FOIE, RATE, LUNETTES", options: ["REIN", "FOIE", "RATE", "LUNETTES"], correctAnswer: "LUNETTES", explanation: "Ce n'est pas un organe"),
            ExerciseItem(id: UUID(), prompt: "ADDITION, SOUSTRACTION, MULTIPLICATION, KANJI", options: ["ADDITION", "SOUSTRACTION", "MULTIPLICATION", "KANJI"], correctAnswer: "KANJI", explanation: "Ce n'est pas une opération arithmétique"),
            ExerciseItem(id: UUID(), prompt: "FLAMENCO, SAMBA, BALLET, JUDO", options: ["FLAMENCO", "SAMBA", "BALLET", "JUDO"], correctAnswer: "JUDO", explanation: "Ce n'est pas une danse"),
            ExerciseItem(id: UUID(), prompt: "OXYGÈNE, HYDROGÈNE, AZOTE, SEL", options: ["OXYGÈNE", "HYDROGÈNE", "AZOTE", "SEL"], correctAnswer: "SEL", explanation: "C'est un composé, pas un élément chimique"),
            ExerciseItem(id: UUID(), prompt: "MÉTABOLISME, DIGESTION, RESPIRATION, MÉMOIRE", options: ["MÉTABOLISME", "DIGESTION", "RESPIRATION", "MÉMOIRE"], correctAnswer: "MÉMOIRE", explanation: "C'est une fonction cognitive, pas une fonction physiologique"),
            ExerciseItem(id: UUID(), prompt: "LOUVRE, MUSÉE D'ORSAY, POMPIDOU, ARC DE TRIOMPHE", options: ["LOUVRE", "MUSÉE D'ORSAY", "POMPIDOU", "ARC DE TRIOMPHE"], correctAnswer: "ARC DE TRIOMPHE", explanation: "C'est un monument, pas un musée"),
            ExerciseItem(id: UUID(), prompt: "SONNET, ODE, HAÏKU, PROSE", options: ["SONNET", "ODE", "HAÏKU", "PROSE"], correctAnswer: "PROSE", explanation: "Ce n'est pas une forme poétique structurée"),
            ExerciseItem(id: UUID(), prompt: "FÉMUR, TIBIA, CÔTE, CORNÉE", options: ["FÉMUR", "TIBIA", "CÔTE", "CORNÉE"], correctAnswer: "CORNÉE", explanation: "Ce n'est pas un os"),
            ExerciseItem(id: UUID(), prompt: "ARMÉE DE TERRE, MARINE, ARMÉE DE L'AIR, POLICE", options: ["ARMÉE DE TERRE", "MARINE", "ARMÉE DE L'AIR", "POLICE"], correctAnswer: "POLICE", explanation: "Ce n'est pas une branche militaire"),
            ExerciseItem(id: UUID(), prompt: "CELSIUS, FAHRENHEIT, KELVIN, DÉCIBEL", options: ["CELSIUS", "FAHRENHEIT", "KELVIN", "DÉCIBEL"], correctAnswer: "DÉCIBEL", explanation: "C'est une unité de son, pas de température"),
            ExerciseItem(id: UUID(), prompt: "HIÉROGLYPHE, CUNÉIFORME, HANGUL, PICTOGRAMME", options: ["HIÉROGLYPHE", "CUNÉIFORME", "HANGUL", "PICTOGRAMME"], correctAnswer: "HANGUL", explanation: "C'est un système d'écriture moderne, pas ancien"),
            ExerciseItem(id: UUID(), prompt: "RÉFLÉCHI, AUDACIEUX, COURAGEUX, PEUREUX", options: ["RÉFLÉCHI", "AUDACIEUX", "COURAGEUX", "PEUREUX"], correctAnswer: "PEUREUX", explanation: "Ce n'est pas une qualité positive de caractère"),
            ExerciseItem(id: UUID(), prompt: "PICASSO, MONET, DALI, BACH", options: ["PICASSO", "MONET", "DALI", "BACH"], correctAnswer: "BACH", explanation: "C'est un compositeur, pas un peintre")
        ]
    )

    // MARK: - Complétion de phrases
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Complétion de phrases",
        instructions: "Choisissez le mot qui complète le mieux la phrase.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Le train est arrivé à la ___.", options: ["gare", "montagne", "mer"], correctAnswer: "gare", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "J'ai mangé une ___ ce matin.", options: ["baguette", "voiture", "nuage"], correctAnswer: "baguette", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il pleut, je prends mon ___.", options: ["parapluie", "chapeau de soleil", "maillot"], correctAnswer: "parapluie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "J'ai pris un rendez-vous chez le ___.", options: ["médecin", "boulanger", "chauffeur"], correctAnswer: "médecin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Avant de prendre un bain, je retire mes ___.", options: ["vêtements", "lunettes", "chaussettes"], correctAnswer: "vêtements", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour arroser les fleurs, j'utilise de l'___.", options: ["eau", "huile", "sucre"], correctAnswer: "eau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il fait nuit, j'allume la ___.", options: ["lumière", "musique", "télévision"], correctAnswer: "lumière", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour envoyer une lettre, je colle un ___.", options: ["timbre", "autocollant", "ruban"], correctAnswer: "timbre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Par temps froid, j'aime boire une boisson ___.", options: ["chaude", "glacée", "pétillante"], correctAnswer: "chaude", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour prendre un rendez-vous, j'utilise le ___.", options: ["téléphone", "bus", "lettre"], correctAnswer: "téléphone", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le soleil se lève à l'___.", options: ["est", "ouest", "nord"], correctAnswer: "est", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On met des ___ sur un gâteau d'anniversaire.", options: ["bougies", "fleurs", "drapeaux"], correctAnswer: "bougies", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "J'ai envoyé un ___ à ma cousine.", options: ["colis", "nuage", "meuble"], correctAnswer: "colis", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Au supermarché, j'ai acheté des ___.", options: ["courses", "voitures", "meubles"], correctAnswer: "courses", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand j'avais la grippe, je suis allé chez le ___.", options: ["médecin", "cinéma", "parc"], correctAnswer: "médecin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le soir avant de dormir, j'éteins la ___.", options: ["lumière", "fenêtre", "douche"], correctAnswer: "lumière", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour faire du thé, je fais bouillir de l'___.", options: ["eau", "lait", "jus"], correctAnswer: "eau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Je me suis perdu et j'ai demandé ma route à un ___.", options: ["passant", "panneau", "chien"], correctAnswer: "passant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "J'ai ___ ma voiture dans le parking.", options: ["garé", "conduit", "lavé"], correctAnswer: "garé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En automne, les feuilles deviennent ___ et jaunes.", options: ["rouges", "bleues", "blanches"], correctAnswer: "rouges", explanation: "")
        ]
    )

    // MARK: - Synonymes (Facile)
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Synonymes (Facile)",
        instructions: "Choisissez le mot qui a le MÊME sens que le mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mot: EN COLÈRE", options: ["heureux", "furieux", "calme", "triste"], correctAnswer: "furieux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: FROID", options: ["chaud", "glacial", "tiède", "brûlant"], correctAnswer: "glacial", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: GRAND", options: ["minuscule", "énorme", "court", "maigre"], correctAnswer: "énorme", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: FATIGUÉ", options: ["alerte", "éveillé", "épuisé", "reposé"], correctAnswer: "épuisé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: APEURÉ", options: ["courageux", "terrorisé", "calme", "audacieux"], correctAnswer: "terrorisé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: GENTIL", options: ["avare", "cruel", "aimable", "grossier"], correctAnswer: "aimable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: RAPIDE", options: ["lent", "vite", "paresseux", "faible"], correctAnswer: "vite", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: VIEUX", options: ["jeune", "âgé", "nouveau", "frais"], correctAnswer: "âgé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: SALE", options: ["propre", "crasseux", "ordonné", "soigné"], correctAnswer: "crasseux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: BRILLANT", options: ["terne", "sombre", "radieux", "éteint"], correctAnswer: "radieux", explanation: "")
        ]
    )

    // MARK: - Synonymes (Difficile)
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Synonymes (Difficile)",
        instructions: "Choisissez le mot le plus proche en sens du mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mot: MISÉRICORDIEUX", options: ["cruel", "compatissant", "froid", "strict"], correctAnswer: "compatissant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: PROGRESSIF", options: ["brusque", "graduel", "soudain", "instantané"], correctAnswer: "graduel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: PROSPÉRER", options: ["décliner", "s'épanouir", "sombrer", "disparaître"], correctAnswer: "s'épanouir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: AMBIGU", options: ["clair", "évident", "obscur", "précis"], correctAnswer: "obscur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: PATIENT", options: ["impatient", "pressé", "persévérant", "paresseux"], correctAnswer: "persévérant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: HUMBLE", options: ["arrogant", "modeste", "vaniteux", "fier"], correctAnswer: "modeste", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: ADVERSITÉ", options: ["bonheur", "épreuve", "prospérité", "chance"], correctAnswer: "épreuve", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: EXCEPTIONNEL", options: ["banal", "ordinaire", "remarquable", "médiocre"], correctAnswer: "remarquable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: PERSPICACE", options: ["obtus", "clairvoyant", "indifférent", "confus"], correctAnswer: "clairvoyant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: ACHARNEMENT", options: ["nonchalance", "persévérance", "paresse", "faiblesse"], correctAnswer: "persévérance", explanation: "")
        ]
    )

    // MARK: - Antonymes
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Antonymes",
        instructions: "Choisissez le mot de sens CONTRAIRE au mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mot: CLAIR", options: ["lumineux", "sombre", "brillant", "blanc"], correctAnswer: "sombre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: COMMENCER", options: ["continuer", "ouvrir", "finir", "débuter"], correctAnswer: "finir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: MONTER", options: ["voler", "descendre", "courir", "nager"], correctAnswer: "descendre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: GAGNER", options: ["combattre", "essayer", "perdre", "affronter"], correctAnswer: "perdre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: ÉPAIS", options: ["long", "mince", "court", "haut"], correctAnswer: "mince", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: INTELLIGENT", options: ["rapide", "stupide", "paresseux", "léger"], correctAnswer: "stupide", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: ENTRER", options: ["courir", "sortir", "marcher", "voir"], correctAnswer: "sortir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: PROCHE", options: ["large", "étroit", "loin", "bas"], correctAnswer: "loin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: AIMER", options: ["joyeux", "détester", "bon", "charmant"], correctAnswer: "détester", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mot: AUGMENTER", options: ["s'étendre", "grandir", "diminuer", "s'accumuler"], correctAnswer: "diminuer", explanation: "")
        ]
    )

    // MARK: - Complétion de phrases (Facile)
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Complétion de phrases (Facile)",
        instructions: "Choisissez le mot qui complète le mieux la phrase.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Aujourd'hui il fait beau ___.", options: ["temps", "repas", "lourd"], correctAnswer: "temps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Chaque matin, je me brosse ___ soigneusement.", options: ["les dents", "les cheveux", "les mains"], correctAnswer: "les dents", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "J'avais faim alors j'ai mangé mon ___.", options: ["déjeuner", "téléphone", "livre"], correctAnswer: "déjeuner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Monsieur Martin va tous les jours au ___ pour se promener.", options: ["parc", "bureau", "marché"], correctAnswer: "parc", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "En été, il fait chaud et je bois beaucoup d'___.", options: ["eau", "soupe", "vin"], correctAnswer: "eau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le matin, je me ___ le visage avec de l'eau froide.", options: ["lave", "couvre", "gratte"], correctAnswer: "lave", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le dimanche, j'aime profiter d'un bon ___ en famille.", options: ["repas", "travail", "rendez-vous"], correctAnswer: "repas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "À la bibliothèque, j'ai emprunté plusieurs ___.", options: ["livres", "voitures", "outils"], correctAnswer: "livres", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "J'attends le ___ à l'arrêt pour me rendre en ville.", options: ["bus", "avion", "bateau"], correctAnswer: "bus", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand j'étais malade, j'ai pris des ___.", options: ["médicaments", "vacances", "cours"], correctAnswer: "médicaments", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il risquait de pleuvoir alors j'ai pris mon ___.", options: ["parapluie", "manteau", "gants"], correctAnswer: "parapluie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour mon anniversaire, j'ai reçu un beau ___ de fleurs.", options: ["bouquet", "panier", "sac"], correctAnswer: "bouquet", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dans le métro, je tiens mon ___ dans ma poche.", options: ["téléphone", "chat", "livre"], correctAnswer: "téléphone", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "À Noël, nous mangeons en famille un bon ___ traditionnel.", options: ["repas", "film", "jeu"], correctAnswer: "repas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il faisait froid alors j'ai allumé le ___.", options: ["chauffage", "ventilateur", "climatiseur"], correctAnswer: "chauffage", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Madame Dupont fait de la ___ pour garder la forme.", options: ["gymnastique", "peinture", "lecture"], correctAnswer: "gymnastique", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pour écrire une lettre, j'ai besoin de papier et d'une ___.", options: ["enveloppe", "casserole", "cuillère"], correctAnswer: "enveloppe", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les fleurs fleurissent au ___.", options: ["printemps", "hiver", "automne"], correctAnswer: "printemps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Par un matin froid d'hiver, j'aime boire un ___ chaud.", options: ["chocolat chaud", "smoothie glacé", "jus de fruit frais"], correctAnswer: "chocolat chaud", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Après une longue journée, je souffle et je ___ enfin.", options: ["me repose", "cours", "travaille"], correctAnswer: "me repose", explanation: "")
        ]
    )

    // MARK: - Proverbes et expressions
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Proverbes et expressions",
        instructions: "Choisissez le mot qui complète correctement le proverbe.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mieux vaut ___ que jamais.", options: ["tard", "vite", "bien"], correctAnswer: "tard", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "À cheval donné, on ne regarde pas les ___.", options: ["dents", "pieds", "yeux"], correctAnswer: "dents", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il ne faut pas vendre la peau de l'ours avant de l'avoir ___.", options: ["tué", "vu", "chassé"], correctAnswer: "tué", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui dort ___, mange peu.", options: ["dîne", "jeûne", "dort"], correctAnswer: "dîne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les chiens ne font pas des ___.", options: ["chats", "loups", "lions"], correctAnswer: "chats", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pierre qui ___ n'amasse pas mousse.", options: ["roule", "court", "monte"], correctAnswer: "roule", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'appétit vient en ___.", options: ["mangeant", "dormant", "travaillant"], correctAnswer: "mangeant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les murs ont des ___.", options: ["oreilles", "yeux", "bouches"], correctAnswer: "oreilles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Loin des yeux, loin du ___.", options: ["coeur", "bruit", "soleil"], correctAnswer: "coeur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Tel père, tel ___.", options: ["fils", "ami", "voisin"], correctAnswer: "fils", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il n'y a pas de ___ sans fumée.", options: ["feu", "eau", "bruit"], correctAnswer: "feu", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La nuit, tous les chats sont ___.", options: ["gris", "noirs", "blancs"], correctAnswer: "gris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Après la ___, le beau temps.", options: ["pluie", "nuit", "tempête"], correctAnswer: "pluie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui ne risque rien, n'a ___.", options: ["rien", "tout", "peur"], correctAnswer: "rien", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le ___ est l'ennemi du bien.", options: ["mieux", "parfait", "peu"], correctAnswer: "mieux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'union fait la ___.", options: ["force", "paix", "joie"], correctAnswer: "force", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Charité bien ordonnée commence par soi-___.", options: ["même", "seul", "bien"], correctAnswer: "même", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand le chat n'est pas là, les souris ___.", options: ["dansent", "mangent", "partent"], correctAnswer: "dansent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il faut battre le fer pendant qu'il est ___.", options: ["chaud", "brillant", "rouge"], correctAnswer: "chaud", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dis-moi qui tu hantes, je te dirai qui tu ___.", options: ["es", "vois", "cherches"], correctAnswer: "es", explanation: "")
        ]
    )

    // MARK: - Analogies
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Analogies",
        instructions: "Choisissez le mot qui complète la relation de la même façon que la paire initiale.",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Chien est à animal comme rose est à?", options: ["plante", "métal", "ciel", "nombre"], correctAnswer: "plante", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Médecin est à hôpital comme professeur est à?", options: ["école", "usine", "parc", "gare"], correctAnswer: "école", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Été est à chaud comme hiver est à?", options: ["frais", "froid", "doux", "moite"], correctAnswer: "froid", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Droite est à gauche comme haut est à?", options: ["avant", "derrière", "bas", "côté"], correctAnswer: "bas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Matin est à soir comme début est à?", options: ["milieu", "centre", "fin", "pause"], correctAnswer: "fin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Poisson est à nager comme oiseau est à?", options: ["courir", "voler", "nager", "dormir"], correctAnswer: "voler", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Couteau est à couper comme pinceau est à?", options: ["peindre", "creuser", "coudre", "scier"], correctAnswer: "peindre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Printemps est à tulipe comme automne est à?", options: ["givre", "feuilles mortes", "neige", "bourgeons"], correctAnswer: "feuilles mortes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un est à peu comme cent est à?", options: ["beaucoup", "moyen", "faible", "peu"], correctAnswer: "beaucoup", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Blé est à champ comme poisson est à?", options: ["rivière ou mer", "montagne", "désert", "ciel"], correctAnswer: "rivière ou mer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Chef d'orchestre est à orchestre comme directeur est à?", options: ["équipe", "école", "hôpital", "marché"], correctAnswer: "équipe", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Oreille est à entendre comme oeil est à?", options: ["sentir", "goûter", "voir", "toucher"], correctAnswer: "voir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Graine est à plante comme oeuf est à?", options: ["oiseau", "branche", "feuille", "fruit"], correctAnswer: "oiseau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Chaton est à chat comme chiot est à?", options: ["chat", "chien", "oiseau", "lapin"], correctAnswer: "chien", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Croissant est à France comme pizza est à?", options: ["Chine", "France", "Italie", "Espagne"], correctAnswer: "Italie", explanation: "")
        ]
    )

    // MARK: - Fait ou Opinion
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Fait ou Opinion",
        instructions: "Cette affirmation est-elle un fait ou une opinion?",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Paris est la capitale de la France.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La Tour Eiffel est le plus beau monument du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La France a 67 millions d'habitants environ.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La cuisine française est la meilleure du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le fleuve Loire est le plus long fleuve de France.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il vaut mieux vivre à Paris qu'en province.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La France est membre de l'Union européenne.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le football est le sport le plus passionnant.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le 14 juillet est la fête nationale française.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les baguettes françaises sont les meilleures baguettes du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La langue française est la plus belle langue du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La France est un pays situé en Europe occidentale.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les Français passent trop de temps à table.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le drapeau français est bleu, blanc et rouge.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les Français-Canadiens ont mieux préservé la culture française que les Français.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le Québec est une province francophone du Canada.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il est préférable d'apprendre le français avant l'espagnol.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La Révolution française a eu lieu en 1789.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La vie en Haïti est plus difficile qu'en France.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Haïti est le premier pays noir à avoir obtenu son indépendance.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Los Angeles a une grande communauté francophone.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les Haïtiens-Américains contribuent fortement à la culture américaine.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le Mont Blanc est le plus haut sommet d'Europe occidentale.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les fromages français sont supérieurs à tous les autres fromages.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La France compte plus de 200 variétés de fromages.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "")
        ]
    )

    // MARK: - Mise en ordre
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Mise en ordre",
        instructions: "Remettez dans le bon ordre.",
        section: .language,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Routine matinale:", options: ["Se laver le visage", "S'habiller", "Prendre le petit-déjeuner", "Se lever"], correctAnswer: "Se lever | Se laver le visage | S'habiller | Prendre le petit-déjeuner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Envoyer une lettre:", options: ["Mettre à la boîte aux lettres", "Écrire la lettre", "Coller le timbre", "Glisser dans l'enveloppe"], correctAnswer: "Écrire la lettre | Glisser dans l'enveloppe | Coller le timbre | Mettre à la boîte aux lettres", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Préparer du thé:", options: ["Verser dans la tasse", "Mettre la bouilloire à chauffer", "Mettre le sachet dans la tasse", "Attendre que l'eau bouille"], correctAnswer: "Mettre la bouilloire à chauffer | Attendre que l'eau bouille | Mettre le sachet dans la tasse | Verser dans la tasse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Faire les courses:", options: ["Payer à la caisse", "Choisir les articles", "Entrer dans le magasin", "Ranger les achats"], correctAnswer: "Entrer dans le magasin | Choisir les articles | Payer à la caisse | Ranger les achats", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Aller chez le médecin:", options: ["Prendre la prescription", "Prendre rendez-vous", "Attendre son tour", "Voir le médecin"], correctAnswer: "Prendre rendez-vous | Attendre son tour | Voir le médecin | Prendre la prescription", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Prendre un bain:", options: ["Se sécher", "Se laver", "Se déshabiller", "Se plonger dans l'eau"], correctAnswer: "Se déshabiller | Se laver | Se plonger dans l'eau | Se sécher", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Passer un coup de fil:", options: ["Raccrocher", "Composer le numéro", "Parler", "Décrocher le téléphone"], correctAnswer: "Décrocher le téléphone | Composer le numéro | Parler | Raccrocher", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Préparer un repas:", options: ["Servir dans l'assiette", "Faire les courses", "Cuisiner", "Couper les ingrédients"], correctAnswer: "Faire les courses | Couper les ingrédients | Cuisiner | Servir dans l'assiette", explanation: "")
        ]
    )

    // MARK: - Expressions idiomatiques
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Expressions idiomatiques",
        instructions: "Quelle est la signification de cette expression?",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Que signifie: Coûter les yeux de la tête?", options: ["Être très cher", "Être très beau", "Être très difficile", "Être inutile"], correctAnswer: "Être très cher", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le cafard?", options: ["Avoir faim", "Être triste ou déprimé", "Avoir peur des insectes", "Être en colère"], correctAnswer: "Être triste ou déprimé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Prendre la poudre d'escampette?", options: ["Nettoyer la maison", "Se sauver, fuir", "Faire la fête", "Travailler dur"], correctAnswer: "Se sauver, fuir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir d'autres chats à fouetter?", options: ["Avoir beaucoup d'animaux", "Avoir des choses plus importantes à faire", "Être en colère", "Aimer les chats"], correctAnswer: "Avoir des choses plus importantes à faire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Être dans le pétrin?", options: ["Faire du pain", "Être dans une situation difficile", "Être heureux", "Avoir faim"], correctAnswer: "Être dans une situation difficile", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Poser un lapin à quelqu'un?", options: ["Offrir un cadeau", "Ne pas venir à un rendez-vous", "Courir vite", "Faire une bonne surprise"], correctAnswer: "Ne pas venir à un rendez-vous", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Casser les pieds?", options: ["Se blesser", "Agacer, ennuyer", "Danser", "Partir vite"], correctAnswer: "Agacer, ennuyer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le coeur sur la main?", options: ["Être chirurgien", "Être très généreux", "Être amoureux", "Avoir mal au coeur"], correctAnswer: "Être très généreux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Tomber dans les pommes?", options: ["Faire la récolte", "S'évanouir", "Tomber d'un arbre", "Cuisiner des pommes"], correctAnswer: "S'évanouir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le moral dans les chaussettes?", options: ["Avoir les pieds froids", "Être très découragé", "Faire du sport", "Être fatigué"], correctAnswer: "Être très découragé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Faire d'une pierre deux coups?", options: ["Construire un mur", "Atteindre deux objectifs en une seule action", "Jeter des pierres", "Réparer quelque chose"], correctAnswer: "Atteindre deux objectifs en une seule action", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Mettre de l'eau dans son vin?", options: ["Préparer une boisson", "Faire des concessions", "Economiser l'alcool", "Diluer la vérité"], correctAnswer: "Faire des concessions", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Ça ne casse pas trois pattes à un canard?", options: ["C'est blessant", "C'est impressionnant", "Ce n'est pas exceptionnel", "C'est dangereux"], correctAnswer: "Ce n'est pas exceptionnel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Ne pas être dans son assiette?", options: ["Ne pas avoir faim", "Se sentir mal à l'aise ou malade", "Manger moins", "Avoir perdu son assiette"], correctAnswer: "Se sentir mal à l'aise ou malade", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le beurre et l'argent du beurre?", options: ["Faire des courses", "Vouloir tout avoir sans rien perdre", "Vendre des produits laitiers", "Être riche"], correctAnswer: "Vouloir tout avoir sans rien perdre", explanation: "")
        ]
    )

    // MARK: - Rimes
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "Rimes",
        instructions: "Choisissez le mot qui rime avec le mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec FLEUR?", options: ["fille", "coeur", "main", "jour"], correctAnswer: "coeur", explanation: "Son -eur"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec MAISON?", options: ["raison", "lumière", "table", "arbre"], correctAnswer: "raison", explanation: "Son -on"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec AMOUR?", options: ["soleil", "toujours", "rivière", "forêt"], correctAnswer: "toujours", explanation: "Son -our"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec VIE?", options: ["chat", "joie", "pluie", "nuit"], correctAnswer: "pluie", explanation: "Son -ie"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec BONHEUR?", options: ["malheur", "couleur", "chanteur", "chaleur"], correctAnswer: "malheur", explanation: "Son -heur"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec CHANSON?", options: ["maison", "façon", "leçon", "saison"], correctAnswer: "maison", explanation: "Son -on"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec JARDIN?", options: ["moyen", "matin", "satin", "chemin"], correctAnswer: "matin", explanation: "Son -in"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec HIVER?", options: ["léger", "mer", "rivière", "nuage"], correctAnswer: "mer", explanation: "Son -er"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec LUMIÈRE?", options: ["fenêtre", "rivière", "forêt", "maison"], correctAnswer: "rivière", explanation: "Son -ière"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec CIEL?", options: ["miel", "mer", "forêt", "soleil"], correctAnswer: "miel", explanation: "Son -el"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec BEAUTÉ?", options: ["liberté", "chanter", "nuage", "forêt"], correctAnswer: "liberté", explanation: "Son -té"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec ÉTOILE?", options: ["voile", "neige", "lune", "soleil"], correctAnswer: "voile", explanation: "Son -oile"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec ENFANT?", options: ["printemps", "courant", "parler", "lumière"], correctAnswer: "courant", explanation: "Son -ant"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec SOLEIL?", options: ["réveil", "lune", "nuage", "vent"], correctAnswer: "réveil", explanation: "Son -eil"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec CHANTER?", options: ["danser", "rire", "lire", "courir"], correctAnswer: "danser", explanation: "Son -er"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec NUIT?", options: ["pluie", "jour", "soir", "matin"], correctAnswer: "pluie", explanation: "Son -uit/-uie"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec RIVIÈRE?", options: ["lumière", "nuage", "forêt", "maison"], correctAnswer: "lumière", explanation: "Son -ière"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec ESPOIR?", options: ["savoir", "couleur", "forêt", "jardin"], correctAnswer: "savoir", explanation: "Son -oir"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec PAIN?", options: ["main", "chien", "table", "robe"], correctAnswer: "main", explanation: "Son -ain"),
            ExerciseItem(id: UUID(), prompt: "Quel mot rime avec COEUR?", options: ["fleur", "nuit", "ciel", "lune"], correctAnswer: "fleur", explanation: "Son -eur")
        ]
    )

    // MARK: - Associations de mots
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "Associations de mots",
        instructions: "Choisissez le mot le plus étroitement associé au mot donné.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à BAGUETTE?", options: ["boulangerie", "restaurant", "épicerie", "librairie"], correctAnswer: "boulangerie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à TOUR EIFFEL?", options: ["Berlin", "Paris", "Rome", "Madrid"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à TREMBLEMENT DE TERRE?", options: ["plage", "évacuation", "fête", "ski"], correctAnswer: "évacuation", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CROISSANT?", options: ["pizza", "hamburger", "beurre", "spaghetti"], correctAnswer: "beurre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à NOËL?", options: ["feux d'artifice", "repas en famille", "carnaval", "glace"], correctAnswer: "repas en famille", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à REPAS FRANÇAIS?", options: ["baguette", "chapati", "tortilla", "naan"], correctAnswer: "baguette", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à GARE?", options: ["avion", "bateau", "train", "voiture"], correctAnswer: "train", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CALLIGRAPHIE?", options: ["peinture", "encre", "sculpture", "musique"], correctAnswer: "encre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à HAÏTI?", options: ["France", "Espagne", "Créole", "Pays anglophone"], correctAnswer: "Créole", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à COUSCOUS?", options: ["France", "Maghreb", "Japon", "Brésil"], correctAnswer: "Maghreb", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à FEU D'ARTIFICE?", options: ["Noël", "Pâques", "14 juillet", "Halloween"], correctAnswer: "14 juillet", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à MONT BLANC?", options: ["plage", "ski", "mer", "désert"], correctAnswer: "ski", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à QUÉBEC?", options: ["France", "Canada", "Belgique", "Suisse"], correctAnswer: "Canada", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CAFÉ?", options: ["thé", "terrace", "lait", "jus"], correctAnswer: "terrace", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à MARSEILLE?", options: ["montagne", "lac", "port", "plaine"], correctAnswer: "port", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à IMMIGRÉ FRANCOPHONE?", options: ["anglais uniquement", "langue française", "allemand", "chinois"], correctAnswer: "langue française", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à BOULES?", options: ["Paris", "Provence", "Bretagne", "Alsace"], correctAnswer: "Provence", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CHAMPAGNE?", options: ["Bordeaux", "Champagne", "Bourgogne", "Alsace"], correctAnswer: "Champagne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à ESCARGOT?", options: ["plat traditionnel français", "animal de compagnie", "oiseau", "insecte"], correctAnswer: "plat traditionnel français", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à PÂTISSERIE?", options: ["boulanger", "dentiste", "médecin", "plombier"], correctAnswer: "boulanger", explanation: "")
        ]
    )

    // MARK: - Préfixes et suffixes
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "Préfixes et suffixes",
        instructions: "Choisissez le mot correctement formé.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "In___ (sens contraire): possible", options: ["Impossible", "Inpossible", "Nopossible"], correctAnswer: "Impossible", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Re___ (encore): commencer", options: ["Recommencer", "Lecommencer", "Decommencer"], correctAnswer: "Recommencer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_eur (celui qui): chanter", options: ["Chanteur", "Chantion", "Chantiste"], correctAnswer: "Chanteur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_tion (action de): information", options: ["Information", "Informatise", "Informatique"], correctAnswer: "Information", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Dé___ (sens contraire): faire", options: ["Défaire", "Ineffaire", "Prêfaire"], correctAnswer: "Défaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_ment (manière de): lentement", options: ["Lentement", "Lenteur", "Lentise"], correctAnswer: "Lentement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sur___ (au-dessus, en plus): charger", options: ["Surcharger", "Suscharger", "Supercharger"], correctAnswer: "Surcharger", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_iste (spécialiste): piano", options: ["Pianiste", "Pianeur", "Pianique"], correctAnswer: "Pianiste", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_able (qui peut être): portable", options: ["Portable", "Porteur", "Portant"], correctAnswer: "Portable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Mal___ (mauvais): heureux", options: ["Malheureux", "Inheureux", "Deheureux"], correctAnswer: "Malheureux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_isme (doctrine): réalisme", options: ["Réalisme", "Réaliste", "Réalité"], correctAnswer: "Réalisme", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_ité (qualité de): beau", options: ["Beauté", "Beausité", "Beaument"], correctAnswer: "Beauté", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Pré___ (avant): voir", options: ["Prévoir", "Devois", "Revoir"], correctAnswer: "Prévoir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_age (action): voyage", options: ["Voyage", "Voyageur", "Voyagisme"], correctAnswer: "Voyage", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Anti___ (contre): corps", options: ["Anticorps", "Contrecorps", "Décorps"], correctAnswer: "Anticorps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_eur (comparatif): meilleur", options: ["Meilleur", "Bien", "Bonsoir"], correctAnswer: "Meilleur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_oir (lieu): voir", options: ["Parloir", "Partoir", "Seeoir"], correctAnswer: "Parloir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Extra___ (au-delà): ordinaire", options: ["Extraordinaire", "Superordinaire", "Superordinance"], correctAnswer: "Extraordinaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_ard (péjoratif): mouton", options: ["Moutonnard", "Moutoniste", "Moutonneux"], correctAnswer: "Moutonnard", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "_ette (petit): maison", options: ["Maisonnette", "Maisonille", "Maisonneux"], correctAnswer: "Maisonnette", explanation: "")
        ]
    )
}
