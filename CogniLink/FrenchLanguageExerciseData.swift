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
        trackedType: nil,
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
        trackedType: nil,
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
        trackedType: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Le train est arrivé à la ___.", options: ["gare", "montagne", "mer"], correctAnswer: "gare", explanation: "La gare est l'endroit spécifique et naturel où les trains arrivent et partent, pour permettre la montée et la descente des passagers."),
            ExerciseItem(id: UUID(), prompt: "J'ai mangé une ___ ce matin.", options: ["baguette", "voiture", "nuage"], correctAnswer: "baguette", explanation: "La baguette est le pain traditionnel français très communément consommé le matin au petit-déjeuner."),
            ExerciseItem(id: UUID(), prompt: "Il pleut, je prends mon ___.", options: ["parapluie", "chapeau de soleil", "maillot"], correctAnswer: "parapluie", explanation: "Le parapluie est l'objet spécialement conçu pour se protéger et rester au sec lorsqu'il pleut dehors."),
            ExerciseItem(id: UUID(), prompt: "J'ai pris un rendez-vous chez le ___.", options: ["médecin", "boulanger", "chauffeur"], correctAnswer: "médecin", explanation: "Le médecin est le professionnel de la santé que l'on va consulter sur rendez-vous lorsque l'on a un problème médical."),
            ExerciseItem(id: UUID(), prompt: "Avant de prendre un bain, je retire mes ___.", options: ["vêtements", "lunettes", "chaussettes"], correctAnswer: "vêtements", explanation: "Il est de coutume de se déshabiller et de retirer ses vêtements avant de se laver dans un bain pour éviter de les mouiller."),
            ExerciseItem(id: UUID(), prompt: "Pour arroser les fleurs, j'utilise de l'___.", options: ["eau", "huile", "sucre"], correctAnswer: "eau", explanation: "Les fleurs ont besoin d'eau pour survivre et grandir, c'est pourquoi on utilise de l'eau pour les arroser."),
            ExerciseItem(id: UUID(), prompt: "Il fait nuit, j'allume la ___.", options: ["lumière", "musique", "télévision"], correctAnswer: "lumière", explanation: "Lorsqu'il fait nuit et sombre, on allume la lumière pour pouvoir voir."),
            ExerciseItem(id: UUID(), prompt: "Pour envoyer une lettre, je colle un ___.", options: ["timbre", "autocollant", "ruban"], correctAnswer: "timbre", explanation: "Pour affranchir une lettre et permettre son envoi par la poste, il est obligatoire d'y coller un timbre."),
            ExerciseItem(id: UUID(), prompt: "Par temps froid, j'aime boire une boisson ___.", options: ["chaude", "glacée", "pétillante"], correctAnswer: "chaude", explanation: "Boire une boisson chaude permet de se réchauffer lorsque le temps est froid."),
            ExerciseItem(id: UUID(), prompt: "Pour prendre un rendez-vous, j'utilise le ___.", options: ["téléphone", "bus", "lettre"], correctAnswer: "téléphone", explanation: "Le téléphone est l'outil couramment utilisé pour appeler quelqu'un et fixer un rendez-vous."),
            ExerciseItem(id: UUID(), prompt: "Le soleil se lève à l'___.", options: ["est", "ouest", "nord"], correctAnswer: "est", explanation: "C'est un fait géographique et astronomique que le soleil se lève à l'est."),
            ExerciseItem(id: UUID(), prompt: "On met des ___ sur un gâteau d'anniversaire.", options: ["bougies", "fleurs", "drapeaux"], correctAnswer: "bougies", explanation: "La tradition veut que l'on place des bougies sur un gâteau d'anniversaire pour les souffler."),
            ExerciseItem(id: UUID(), prompt: "J'ai envoyé un ___ à ma cousine.", options: ["colis", "nuage", "meuble"], correctAnswer: "colis", explanation: "Un colis est un paquet de marchandises que l'on envoie à quelqu'un par la poste ou un service de livraison."),
            ExerciseItem(id: UUID(), prompt: "Au supermarché, j'ai acheté des ___.", options: ["courses", "voitures", "meubles"], correctAnswer: "courses", explanation: "Au supermarché, on achète des produits du quotidien, ce que l'on appelle couramment faire des courses."),
            ExerciseItem(id: UUID(), prompt: "Quand j'avais la grippe, je suis allé chez le ___.", options: ["médecin", "cinéma", "parc"], correctAnswer: "médecin", explanation: "Le médecin est le professionnel de la santé que l'on consulte pour se faire soigner lorsqu'on est malade, comme avec la grippe."),
            ExerciseItem(id: UUID(), prompt: "Le soir avant de dormir, j'éteins la ___.", options: ["lumière", "fenêtre", "douche"], correctAnswer: "lumière", explanation: "Pour pouvoir s'endormir plus facilement, on éteint la lumière afin d'être dans l'obscurité."),
            ExerciseItem(id: UUID(), prompt: "Pour faire du thé, je fais bouillir de l'___.", options: ["eau", "lait", "jus"], correctAnswer: "eau", explanation: "La préparation du thé nécessite de l'eau bouillante pour infuser les feuilles."),
            ExerciseItem(id: UUID(), prompt: "Je me suis perdu et j'ai demandé ma route à un ___.", options: ["passant", "panneau", "chien"], correctAnswer: "passant", explanation: "Un passant est une personne qui marche dans la rue, à qui l'on peut demander son chemin lorsqu'on est perdu."),
            ExerciseItem(id: UUID(), prompt: "J'ai ___ ma voiture dans le parking.", options: ["garé", "conduit", "lavé"], correctAnswer: "garé", explanation: "Le verbe 'garer' signifie stationner un véhicule, action que l'on effectue dans un parking."),
            ExerciseItem(id: UUID(), prompt: "En automne, les feuilles deviennent ___ et jaunes.", options: ["rouges", "bleues", "blanches"], correctAnswer: "rouges", explanation: "En automne, les feuilles des arbres changent de couleur et prennent généralement des teintes rouges, jaunes ou orangées.")
        ]
    )

    // MARK: - Synonymes (Facile)
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Synonymes (Facile)",
        instructions: "Choisissez le mot qui a le MÊME sens que le mot donné.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mot: EN COLÈRE", options: ["heureux", "furieux", "calme", "triste"], correctAnswer: "furieux", explanation: "Les mots 'en colère' et 'furieux' sont des synonymes car ils expriment tous deux un fort sentiment d'irritation ou de rage."),
            ExerciseItem(id: UUID(), prompt: "Mot: FROID", options: ["chaud", "glacial", "tiède", "brûlant"], correctAnswer: "glacial", explanation: "Les mots 'froid' et 'glacial' sont des synonymes car ils décrivent une température très basse, 'glacial' étant un degré plus intense de 'froid'."),
            ExerciseItem(id: UUID(), prompt: "Mot: GRAND", options: ["minuscule", "énorme", "court", "maigre"], correctAnswer: "énorme", explanation: "Les mots 'grand' et 'énorme' sont des synonymes car ils qualifient tous deux quelque chose de vaste ou de taille importante."),
            ExerciseItem(id: UUID(), prompt: "Mot: FATIGUÉ", options: ["alerte", "éveillé", "épuisé", "reposé"], correctAnswer: "épuisé", explanation: "Les mots 'fatigué' et 'épuisé' sont des synonymes décrivant un manque d'énergie, 'épuisé' signifiant une fatigue extrême."),
            ExerciseItem(id: UUID(), prompt: "Mot: APEURÉ", options: ["courageux", "terrorisé", "calme", "audacieux"], correctAnswer: "terrorisé", explanation: "Les mots 'apeuré' et 'terrorisé' sont des synonymes exprimant la peur, 'terrorisé' indiquant un effroi très profond."),
            ExerciseItem(id: UUID(), prompt: "Mot: GENTIL", options: ["avare", "cruel", "aimable", "grossier"], correctAnswer: "aimable", explanation: "Les mots 'gentil' et 'aimable' sont des synonymes car ils décrivent une personne agréable, courtoise et bienveillante envers les autres."),
            ExerciseItem(id: UUID(), prompt: "Mot: RAPIDE", options: ["lent", "vite", "paresseux", "faible"], correctAnswer: "vite", explanation: "Les mots 'rapide' et 'vite' sont des synonymes utilisés pour décrire une action ou un mouvement qui s'effectue à grande vitesse."),
            ExerciseItem(id: UUID(), prompt: "Mot: VIEUX", options: ["jeune", "âgé", "nouveau", "frais"], correctAnswer: "âgé", explanation: "Les mots 'vieux' et 'âgé' sont des synonymes car ils se réfèrent tous deux à une personne ou une chose qui a vécu longtemps."),
            ExerciseItem(id: UUID(), prompt: "Mot: SALE", options: ["propre", "crasseux", "ordonné", "soigné"], correctAnswer: "crasseux", explanation: "Les mots 'sale' et 'crasseux' sont des synonymes car ils décrivent un état de malpropreté, 'crasseux' désignant une saleté incrustée."),
            ExerciseItem(id: UUID(), prompt: "Mot: BRILLANT", options: ["terne", "sombre", "radieux", "éteint"], correctAnswer: "radieux", explanation: "Les mots 'brillant' et 'radieux' sont des synonymes car ils évoquent tous deux ce qui émet de la lumière ou exprime un grand bonheur.")
        ]
    )

    // MARK: - Synonymes (Difficile)
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Synonymes (Difficile)",
        instructions: "Choisissez le mot le plus proche en sens du mot donné.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mot: MISÉRICORDIEUX", options: ["cruel", "compatissant", "froid", "strict"], correctAnswer: "compatissant", explanation: "Les mots 'miséricordieux' et 'compatissant' sont des synonymes car ils décrivent la capacité à ressentir de la pitié et à pardonner aux autres."),
            ExerciseItem(id: UUID(), prompt: "Mot: PROGRESSIF", options: ["brusque", "graduel", "soudain", "instantané"], correctAnswer: "graduel", explanation: "Les mots 'progressif' et 'graduel' sont des synonymes puisqu'ils caractérisent un changement ou une évolution qui se fait par étapes."),
            ExerciseItem(id: UUID(), prompt: "Mot: PROSPÉRER", options: ["décliner", "s'épanouir", "sombrer", "disparaître"], correctAnswer: "s'épanouir", explanation: "Les expressions 'prospérer' et 's'épanouir' sont des synonymes car elles décrivent un développement positif, une croissance ou un succès florissant."),
            ExerciseItem(id: UUID(), prompt: "Mot: AMBIGU", options: ["clair", "évident", "obscur", "précis"], correctAnswer: "obscur", explanation: "Les mots 'ambigu' et 'obscur' sont des synonymes car ils qualifient tous deux quelque chose de difficile à comprendre ou sujet à plusieurs interprétations."),
            ExerciseItem(id: UUID(), prompt: "Mot: PATIENT", options: ["impatient", "pressé", "persévérant", "paresseux"], correctAnswer: "persévérant", explanation: "Les mots 'patient' et 'persévérant' sont des synonymes dans le sens où ils impliquent tous deux la capacité à endurer l'attente ou la difficulté sans renoncer."),
            ExerciseItem(id: UUID(), prompt: "Mot: HUMBLE", options: ["arrogant", "modeste", "vaniteux", "fier"], correctAnswer: "modeste", explanation: "Les mots 'humble' et 'modeste' sont des synonymes car ils qualifient une personne qui ne se vante pas de ses qualités ou de ses succès."),
            ExerciseItem(id: UUID(), prompt: "Mot: ADVERSITÉ", options: ["bonheur", "épreuve", "prospérité", "chance"], correctAnswer: "épreuve", explanation: "Les mots 'adversité' et 'épreuve' sont des synonymes car ils désignent tous deux une situation difficile ou un malheur à surmonter."),
            ExerciseItem(id: UUID(), prompt: "Mot: EXCEPTIONNEL", options: ["banal", "ordinaire", "remarquable", "médiocre"], correctAnswer: "remarquable", explanation: "Les mots 'exceptionnel' et 'remarquable' sont des synonymes car ils qualifient ce qui sort de l'ordinaire par sa rareté ou sa qualité."),
            ExerciseItem(id: UUID(), prompt: "Mot: PERSPICACE", options: ["obtus", "clairvoyant", "indifférent", "confus"], correctAnswer: "clairvoyant", explanation: "Les mots 'perspicace' et 'clairvoyant' sont des synonymes car ils décrivent une personne dotée d'une grande intelligence et intuition pour comprendre les choses."),
            ExerciseItem(id: UUID(), prompt: "Mot: ACHARNEMENT", options: ["nonchalance", "persévérance", "paresse", "faiblesse"], correctAnswer: "persévérance", explanation: "Les mots 'acharnement' et 'persévérance' sont des synonymes car ils désignent une détermination tenace à accomplir quelque chose malgré les obstacles.")
        ]
    )

    // MARK: - Antonymes
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Antonymes",
        instructions: "Choisissez le mot de sens CONTRAIRE au mot donné.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mot: CLAIR", options: ["lumineux", "sombre", "brillant", "blanc"], correctAnswer: "sombre", explanation: "Les mots 'clair' et 'sombre' sont des antonymes car ils représentent des concepts opposés de luminosité, l'un étant illuminé et l'autre obscur."),
            ExerciseItem(id: UUID(), prompt: "Mot: COMMENCER", options: ["continuer", "ouvrir", "finir", "débuter"], correctAnswer: "finir", explanation: "Les verbes 'commencer' et 'finir' sont des antonymes, l'un désignant le début d'une action et l'autre sa conclusion."),
            ExerciseItem(id: UUID(), prompt: "Mot: MONTER", options: ["voler", "descendre", "courir", "nager"], correctAnswer: "descendre", explanation: "Les verbes 'monter' et 'descendre' sont des antonymes car ils indiquent des mouvements de direction opposée sur un axe vertical."),
            ExerciseItem(id: UUID(), prompt: "Mot: GAGNER", options: ["combattre", "essayer", "perdre", "affronter"], correctAnswer: "perdre", explanation: "Les verbes 'gagner' et 'perdre' sont des antonymes car ils expriment deux issues contraires d'une compétition, d'un jeu ou d'une transaction."),
            ExerciseItem(id: UUID(), prompt: "Mot: ÉPAIS", options: ["long", "mince", "court", "haut"], correctAnswer: "mince", explanation: "Les mots 'épais' et 'mince' sont des antonymes qui décrivent des dimensions opposées en termes de largeur ou de volume."),
            ExerciseItem(id: UUID(), prompt: "Mot: INTELLIGENT", options: ["rapide", "stupide", "paresseux", "léger"], correctAnswer: "stupide", explanation: "Les mots 'intelligent' et 'stupide' sont des antonymes caractérisant des capacités intellectuelles diamétralement opposées."),
            ExerciseItem(id: UUID(), prompt: "Mot: ENTRER", options: ["courir", "sortir", "marcher", "voir"], correctAnswer: "sortir", explanation: "Les verbes 'entrer' et 'sortir' sont des antonymes car ils décrivent des mouvements opposés par rapport à un espace ou une pièce."),
            ExerciseItem(id: UUID(), prompt: "Mot: PROCHE", options: ["large", "étroit", "loin", "bas"], correctAnswer: "loin", explanation: "Les mots 'proche' et 'loin' sont des antonymes puisqu'ils décrivent des distances spatiales ou temporelles opposées."),
            ExerciseItem(id: UUID(), prompt: "Mot: AIMER", options: ["joyeux", "détester", "bon", "charmant"], correctAnswer: "détester", explanation: "Les verbes 'aimer' et 'détester' sont des antonymes exprimant des sentiments opposés d'affection et d'aversion."),
            ExerciseItem(id: UUID(), prompt: "Mot: AUGMENTER", options: ["s'étendre", "grandir", "diminuer", "s'accumuler"], correctAnswer: "diminuer", explanation: "Les verbes 'augmenter' et 'diminuer' sont des antonymes car ils décrivent des variations opposées de quantité, de taille ou de valeur.")
        ]
    )

    // MARK: - Complétion de phrases (Facile)
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Complétion de phrases (Facile)",
        instructions: "Choisissez le mot qui complète le mieux la phrase.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Aujourd'hui il fait beau ___.", options: ["temps", "repas", "lourd"], correctAnswer: "temps", explanation: "L'expression 'il fait beau temps' est couramment utilisée pour décrire une journée ensoleillée et agréable."),
            ExerciseItem(id: UUID(), prompt: "Chaque matin, je me brosse ___ soigneusement.", options: ["les dents", "les cheveux", "les mains"], correctAnswer: "les dents", explanation: "Le matin, il est d'usage de se brosser les dents dans le cadre de l'hygiène bucco-dentaire quotidienne."),
            ExerciseItem(id: UUID(), prompt: "J'avais faim alors j'ai mangé mon ___.", options: ["déjeuner", "téléphone", "livre"], correctAnswer: "déjeuner", explanation: "Le repas que l'on mange habituellement à midi quand on a faim s'appelle le déjeuner."),
            ExerciseItem(id: UUID(), prompt: "Monsieur Martin va tous les jours au ___ pour se promener.", options: ["parc", "bureau", "marché"], correctAnswer: "parc", explanation: "Un parc est un espace vert public idéal et fréquemment utilisé pour se promener et se détendre."),
            ExerciseItem(id: UUID(), prompt: "En été, il fait chaud et je bois beaucoup d'___.", options: ["eau", "soupe", "vin"], correctAnswer: "eau", explanation: "Pendant l'été, la chaleur provoque la soif, ce qui pousse à boire beaucoup d'eau pour rester hydraté."),
            ExerciseItem(id: UUID(), prompt: "Le matin, je me ___ le visage avec de l'eau froide.", options: ["lave", "couvre", "gratte"], correctAnswer: "lave", explanation: "Se laver le visage avec de l'eau froide le matin est une habitude courante pour se réveiller et se nettoyer."),
            ExerciseItem(id: UUID(), prompt: "Le dimanche, j'aime profiter d'un bon ___ en famille.", options: ["repas", "travail", "rendez-vous"], correctAnswer: "repas", explanation: "Le dimanche est traditionnellement un jour où l'on prend le temps de partager un bon repas en famille."),
            ExerciseItem(id: UUID(), prompt: "À la bibliothèque, j'ai emprunté plusieurs ___.", options: ["livres", "voitures", "outils"], correctAnswer: "livres", explanation: "La bibliothèque est le lieu par excellence où l'on emprunte des livres pour les lire."),
            ExerciseItem(id: UUID(), prompt: "J'attends le ___ à l'arrêt pour me rendre en ville.", options: ["bus", "avion", "bateau"], correctAnswer: "bus", explanation: "L'arrêt est le lieu désigné où les passagers attendent le bus pour utiliser les transports en commun."),
            ExerciseItem(id: UUID(), prompt: "Quand j'étais malade, j'ai pris des ___.", options: ["médicaments", "vacances", "cours"], correctAnswer: "médicaments", explanation: "Les médicaments sont prescrits pour guérir ou soulager les symptômes lorsqu'on est malade."),
            ExerciseItem(id: UUID(), prompt: "Il risquait de pleuvoir alors j'ai pris mon ___.", options: ["parapluie", "manteau", "gants"], correctAnswer: "parapluie", explanation: "Le parapluie est l'objet conçu spécifiquement pour se protéger lorsqu'il risque de pleuvoir."),
            ExerciseItem(id: UUID(), prompt: "Pour mon anniversaire, j'ai reçu un beau ___ de fleurs.", options: ["bouquet", "panier", "sac"], correctAnswer: "bouquet", explanation: "Un ensemble de fleurs réunies de manière décorative, souvent offert en cadeau d'anniversaire, s'appelle un bouquet."),
            ExerciseItem(id: UUID(), prompt: "Dans le métro, je tiens mon ___ dans ma poche.", options: ["téléphone", "chat", "livre"], correctAnswer: "téléphone", explanation: "Pour éviter de se le faire voler ou de le perdre dans le métro, on garde souvent son téléphone en sécurité dans sa poche."),
            ExerciseItem(id: UUID(), prompt: "À Noël, nous mangeons en famille un bon ___ traditionnel.", options: ["repas", "film", "jeu"], correctAnswer: "repas", explanation: "La fête de Noël est traditionnellement célébrée en se réunissant pour partager un repas festif et copieux."),
            ExerciseItem(id: UUID(), prompt: "Il faisait froid alors j'ai allumé le ___.", options: ["chauffage", "ventilateur", "climatiseur"], correctAnswer: "chauffage", explanation: "Lorsqu'il fait froid à l'intérieur, on allume le chauffage pour augmenter la température de la pièce."),
            ExerciseItem(id: UUID(), prompt: "Madame Dupont fait de la ___ pour garder la forme.", options: ["gymnastique", "peinture", "lecture"], correctAnswer: "gymnastique", explanation: "La gymnastique est un sport ou une activité physique régulière qui permet de garder la forme et d'entretenir son corps."),
            ExerciseItem(id: UUID(), prompt: "Pour écrire une lettre, j'ai besoin de papier et d'une ___.", options: ["enveloppe", "casserole", "cuillère"], correctAnswer: "enveloppe", explanation: "Une fois une lettre écrite sur du papier, on a besoin d'une enveloppe pour y insérer la lettre avant de l'expédier."),
            ExerciseItem(id: UUID(), prompt: "Les fleurs fleurissent au ___.", options: ["printemps", "hiver", "automne"], correctAnswer: "printemps", explanation: "Le printemps est la saison de l'année au cours de laquelle la nature s'éveille et les fleurs commencent à fleurir."),
            ExerciseItem(id: UUID(), prompt: "Par un matin froid d'hiver, j'aime boire un ___ chaud.", options: ["chocolat chaud", "smoothie glacé", "jus de fruit frais"], correctAnswer: "chocolat chaud", explanation: "Le chocolat chaud est une boisson réconfortante et chaude, particulièrement appréciée pour se réchauffer lors des matins froids d'hiver."),
            ExerciseItem(id: UUID(), prompt: "Après une longue journée, je souffle et je ___ enfin.", options: ["me repose", "cours", "travaille"], correctAnswer: "me repose", explanation: "Après l'effort d'une longue journée, le corps et l'esprit ont besoin de récupération, on se repose donc enfin.")
        ]
    )

    // MARK: - Proverbes et expressions
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Proverbes et expressions",
        instructions: "Choisissez le mot qui complète correctement le proverbe.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mieux vaut ___ que jamais.", options: ["tard", "vite", "bien"], correctAnswer: "tard", explanation: "C'est un proverbe célèbre signifiant qu'il est préférable de faire ou d'obtenir quelque chose avec du retard plutôt que de ne jamais le faire."),
            ExerciseItem(id: UUID(), prompt: "À cheval donné, on ne regarde pas les ___.", options: ["dents", "pieds", "yeux"], correctAnswer: "dents", explanation: "C'est un proverbe qui enseigne qu'il ne faut pas critiquer un cadeau que l'on reçoit."),
            ExerciseItem(id: UUID(), prompt: "Il ne faut pas vendre la peau de l'ours avant de l'avoir ___.", options: ["tué", "vu", "chassé"], correctAnswer: "tué", explanation: "Ce proverbe signifie qu'il ne faut pas se réjouir ou utiliser les bénéfices d'une action avant qu'elle ne soit complètement achevée."),
            ExerciseItem(id: UUID(), prompt: "Qui dort ___, mange peu.", options: ["dîne", "jeûne", "dort"], correctAnswer: "dîne", explanation: "Le dicton 'Qui dort dîne' exprime l'idée que le sommeil permet d'oublier la faim ou peut remplacer un repas."),
            ExerciseItem(id: UUID(), prompt: "Les chiens ne font pas des ___.", options: ["chats", "loups", "lions"], correctAnswer: "chats", explanation: "Le proverbe 'Les chiens ne font pas des chats' signifie que les enfants héritent généralement des traits de caractère ou physiques de leurs parents."),
            ExerciseItem(id: UUID(), prompt: "Pierre qui ___ n'amasse pas mousse.", options: ["roule", "court", "monte"], correctAnswer: "roule", explanation: "Le proverbe 'Pierre qui roule n'amasse pas mousse' signifie qu'une personne qui change constamment de situation ne s'enrichit pas ou ne construit rien de stable."),
            ExerciseItem(id: UUID(), prompt: "L'appétit vient en ___.", options: ["mangeant", "dormant", "travaillant"], correctAnswer: "mangeant", explanation: "L'expression 'L'appétit vient en mangeant' signifie que l'envie ou le désir de continuer une activité se développe au fur et à mesure qu'on la pratique."),
            ExerciseItem(id: UUID(), prompt: "Les murs ont des ___.", options: ["oreilles", "yeux", "bouches"], correctAnswer: "oreilles", explanation: "Le proverbe 'Les murs ont des oreilles' avertit qu'il faut faire attention à ce que l'on dit, car on peut être écouté secrètement ou indiscrètement."),
            ExerciseItem(id: UUID(), prompt: "Loin des yeux, loin du ___.", options: ["coeur", "bruit", "soleil"], correctAnswer: "coeur", explanation: "Le proverbe 'Loin des yeux, loin du coeur' souligne que l'absence ou l'éloignement d'une personne peut faire diminuer les sentiments que l'on a pour elle."),
            ExerciseItem(id: UUID(), prompt: "Tel père, tel ___.", options: ["fils", "ami", "voisin"], correctAnswer: "fils", explanation: "L'expression 'Tel père, tel fils' indique qu'un fils ressemble souvent à son père dans son comportement, ses qualités ou ses défauts."),
            ExerciseItem(id: UUID(), prompt: "Il n'y a pas de ___ sans fumée.", options: ["feu", "eau", "bruit"], correctAnswer: "feu", explanation: "Le proverbe 'Il n'y a pas de fumée sans feu' suggère qu'à l'origine de toute rumeur ou apparence, il y a toujours une part de vérité ou une cause réelle."),
            ExerciseItem(id: UUID(), prompt: "La nuit, tous les chats sont ___.", options: ["gris", "noirs", "blancs"], correctAnswer: "gris", explanation: "Le dicton 'La nuit, tous les chats sont gris' signifie que dans l'obscurité, les détails disparaissent et les différences entre les choses ou les personnes s'estompent."),
            ExerciseItem(id: UUID(), prompt: "Après la ___, le beau temps.", options: ["pluie", "nuit", "tempête"], correctAnswer: "pluie", explanation: "Le proverbe 'Après la pluie, le beau temps' apporte un message d'espoir, signifiant qu'une période difficile est généralement suivie par une période heureuse."),
            ExerciseItem(id: UUID(), prompt: "Qui ne risque rien, n'a ___.", options: ["rien", "tout", "peur"], correctAnswer: "rien", explanation: "L'expression 'Qui ne risque rien, n'a rien' encourage à prendre des risques, car sans oser ou faire d'efforts, on ne peut espérer obtenir de succès."),
            ExerciseItem(id: UUID(), prompt: "Le ___ est l'ennemi du bien.", options: ["mieux", "parfait", "peu"], correctAnswer: "mieux", explanation: "L'adage 'Le mieux est l'ennemi du bien' signifie qu'en cherchant la perfection, on risque de gâcher ce qui est déjà satisfaisant."),
            ExerciseItem(id: UUID(), prompt: "L'union fait la ___.", options: ["force", "paix", "joie"], correctAnswer: "force", explanation: "La devise 'L'union fait la force' souligne que l'on est beaucoup plus fort et efficace en travaillant ensemble qu'en agissant de manière isolée."),
            ExerciseItem(id: UUID(), prompt: "Charité bien ordonnée commence par soi-___.", options: ["même", "seul", "bien"], correctAnswer: "même", explanation: "Le proverbe 'Charité bien ordonnée commence par soi-même' indique qu'avant de vouloir aider ou s'occuper des autres, il faut d'abord s'occuper de soi et de ses proches."),
            ExerciseItem(id: UUID(), prompt: "Quand le chat n'est pas là, les souris ___.", options: ["dansent", "mangent", "partent"], correctAnswer: "dansent", explanation: "L'expression 'Quand le chat n'est pas là, les souris dansent' décrit la situation où des personnes profitent de l'absence de l'autorité pour faire ce qui leur plaît."),
            ExerciseItem(id: UUID(), prompt: "Il faut battre le fer pendant qu'il est ___.", options: ["chaud", "brillant", "rouge"], correctAnswer: "chaud", explanation: "Le proverbe 'Il faut battre le fer pendant qu'il est chaud' conseille de saisir une occasion favorable dès qu'elle se présente, avant qu'il ne soit trop tard."),
            ExerciseItem(id: UUID(), prompt: "Dis-moi qui tu hantes, je te dirai qui tu ___.", options: ["es", "vois", "cherches"], correctAnswer: "es", explanation: "Le proverbe 'Dis-moi qui tu hantes, je te dirai qui tu es' signifie que l'on peut juger du caractère d'une personne en observant les fréquentations qu'elle choisit.")
        ]
    )

    // MARK: - Analogies
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Analogies",
        instructions: "Choisissez le mot qui complète la relation de la même façon que la paire initiale.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Chien est à animal comme rose est à?", options: ["plante", "métal", "ciel", "nombre"], correctAnswer: "plante", explanation: "Le chien est un type d'animal, tout comme la rose est un type de plante. La relation est celle d'une espèce à sa catégorie."),
            ExerciseItem(id: UUID(), prompt: "Médecin est à hôpital comme professeur est à?", options: ["école", "usine", "parc", "gare"], correctAnswer: "école", explanation: "Le médecin travaille généralement dans un hôpital, de la même manière qu'un professeur travaille dans une école. La relation est celle de la profession au lieu de travail."),
            ExerciseItem(id: UUID(), prompt: "Été est à chaud comme hiver est à?", options: ["frais", "froid", "doux", "moite"], correctAnswer: "froid", explanation: "L'été est la saison caractérisée par un temps chaud, tout comme l'hiver est la saison caractérisée par un temps froid. La relation lie la saison à sa température typique."),
            ExerciseItem(id: UUID(), prompt: "Droite est à gauche comme haut est à?", options: ["avant", "derrière", "bas", "côté"], correctAnswer: "bas", explanation: "La droite et la gauche sont des directions opposées sur un axe horizontal, tout comme le haut et le bas sont des directions opposées sur un axe vertical."),
            ExerciseItem(id: UUID(), prompt: "Matin est à soir comme début est à?", options: ["milieu", "centre", "fin", "pause"], correctAnswer: "fin", explanation: "Le matin marque la première partie de la journée, s'opposant au soir. De façon analogue, le début marque la première partie d'un événement, s'opposant à sa fin."),
            ExerciseItem(id: UUID(), prompt: "Poisson est à nager comme oiseau est à?", options: ["courir", "voler", "nager", "dormir"], correctAnswer: "voler", explanation: "Nager est le principal mode de déplacement du poisson, tout comme voler est le principal mode de déplacement de l'oiseau. La relation lie l'animal à sa locomotion."),
            ExerciseItem(id: UUID(), prompt: "Couteau est à couper comme pinceau est à?", options: ["peindre", "creuser", "coudre", "scier"], correctAnswer: "peindre", explanation: "Le couteau est l'outil utilisé pour couper, tout comme le pinceau est l'outil utilisé pour peindre. La relation associe un outil à sa fonction principale."),
            ExerciseItem(id: UUID(), prompt: "Printemps est à tulipe comme automne est à?", options: ["givre", "feuilles mortes", "neige", "bourgeons"], correctAnswer: "feuilles mortes", explanation: "Le printemps est la saison de floraison des tulipes, de même que l'automne est la saison où tombent les feuilles mortes. La relation lie la saison à un symbole marquant."),
            ExerciseItem(id: UUID(), prompt: "Un est à peu comme cent est à?", options: ["beaucoup", "moyen", "faible", "peu"], correctAnswer: "beaucoup", explanation: "Le nombre un représente une petite quantité, tandis que le nombre cent représente une grande quantité. C'est une relation d'échelle quantitative proportionnelle."),
            ExerciseItem(id: UUID(), prompt: "Blé est à champ comme poisson est à?", options: ["rivière ou mer", "montagne", "désert", "ciel"], correctAnswer: "rivière ou mer", explanation: "Le blé est cultivé et se trouve principalement dans un champ, tout comme le poisson vit et se trouve dans une rivière ou la mer. La relation indique le milieu."),
            ExerciseItem(id: UUID(), prompt: "Chef d'orchestre est à orchestre comme directeur est à?", options: ["équipe", "école", "hôpital", "marché"], correctAnswer: "équipe", explanation: "Le chef d'orchestre dirige et coordonne un orchestre, de la même manière qu'un directeur dirige et coordonne une équipe. La relation est celle du leader à son groupe."),
            ExerciseItem(id: UUID(), prompt: "Oreille est à entendre comme oeil est à?", options: ["sentir", "goûter", "voir", "toucher"], correctAnswer: "voir", explanation: "L'oreille est l'organe du corps responsable de l'audition, tandis que l'œil est l'organe responsable de la vision. La relation associe l'organe à son sens."),
            ExerciseItem(id: UUID(), prompt: "Graine est à plante comme oeuf est à?", options: ["oiseau", "branche", "feuille", "fruit"], correctAnswer: "oiseau", explanation: "La graine est le point de départ à partir duquel se développe une plante, tout comme l'œuf est le point de départ du développement d'un oiseau."),
            ExerciseItem(id: UUID(), prompt: "Chaton est à chat comme chiot est à?", options: ["chat", "chien", "oiseau", "lapin"], correctAnswer: "chien", explanation: "Le chaton est le petit du chat, de la même façon que le chiot est le petit du chien. La relation relie un animal adulte à son petit."),
            ExerciseItem(id: UUID(), prompt: "Croissant est à France comme pizza est à?", options: ["Chine", "France", "Italie", "Espagne"], correctAnswer: "Italie", explanation: "Le croissant est une spécialité culinaire emblématique de la France, tout comme la pizza est une spécialité culinaire emblématique de l'Italie.")
        ]
    )

    // MARK: - Fait ou Opinion
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Fait ou Opinion",
        instructions: "Cette affirmation est-elle un fait ou une opinion?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Paris est la capitale de la France.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "C'est un fait objectivement vérifiable, Paris est géographiquement et politiquement la capitale de la France."),
            ExerciseItem(id: UUID(), prompt: "La Tour Eiffel est le plus beau monument du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ceci exprime un jugement subjectif sur la beauté de la Tour Eiffel, ce qui varie selon les goûts personnels."),
            ExerciseItem(id: UUID(), prompt: "La France a 67 millions d'habitants environ.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Il s'agit d'une donnée démographique objective qui peut être vérifiée par des statistiques officielles."),
            ExerciseItem(id: UUID(), prompt: "La cuisine française est la meilleure du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "L'appréciation de la cuisine est subjective ; ce qui est considéré comme 'le meilleur' dépend des préférences gustatives individuelles."),
            ExerciseItem(id: UUID(), prompt: "Le fleuve Loire est le plus long fleuve de France.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La longueur du fleuve est une mesure géographique incontestable, faisant de la Loire le plus long fleuve de France."),
            ExerciseItem(id: UUID(), prompt: "Il vaut mieux vivre à Paris qu'en province.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "C'est une préférence personnelle concernant le lieu de vie, qui dépend des valeurs et envies subjectives de chacun."),
            ExerciseItem(id: UUID(), prompt: "La France est membre de l'Union européenne.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "L'appartenance de la France à l'Union européenne est un fait géopolitique et historique avéré."),
            ExerciseItem(id: UUID(), prompt: "Le football est le sport le plus passionnant.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Le niveau de passion pour un sport est un sentiment personnel et non une vérité universelle."),
            ExerciseItem(id: UUID(), prompt: "Le 14 juillet est la fête nationale française.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Le 14 juillet est officiellement décrété et célébré comme la fête nationale française, c'est un fait historique vérifiable."),
            ExerciseItem(id: UUID(), prompt: "Les baguettes françaises sont les meilleures baguettes du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Évaluer la qualité des baguettes repose sur un jugement gustatif purement subjectif et non mesurable."),
            ExerciseItem(id: UUID(), prompt: "La langue française est la plus belle langue du monde.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La beauté d'une langue est une question d'esthétique personnelle et ne peut être prouvée objectivement."),
            ExerciseItem(id: UUID(), prompt: "La France est un pays situé en Europe occidentale.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La situation géographique de la France en Europe occidentale est une réalité topographique indéniable."),
            ExerciseItem(id: UUID(), prompt: "Les Français passent trop de temps à table.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "L'idée qu'ils passent 'trop' de temps à table est un jugement de valeur personnel sur leurs habitudes culturelles."),
            ExerciseItem(id: UUID(), prompt: "Le drapeau français est bleu, blanc et rouge.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Les couleurs officielles du drapeau français sont constitutionnellement établies comme étant bleu, blanc et rouge."),
            ExerciseItem(id: UUID(), prompt: "Les Français-Canadiens ont mieux préservé la culture française que les Français.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "L'évaluation de la préservation culturelle relève d'une interprétation subjective de l'histoire et de la culture."),
            ExerciseItem(id: UUID(), prompt: "Le Québec est une province francophone du Canada.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Le statut du Québec en tant que province francophone au sein du Canada est une réalité politique et démographique objective."),
            ExerciseItem(id: UUID(), prompt: "Il est préférable d'apprendre le français avant l'espagnol.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La hiérarchie ou l'ordre dans l'apprentissage des langues est une recommandation basée sur des opinions ou des besoins personnels."),
            ExerciseItem(id: UUID(), prompt: "La Révolution française a eu lieu en 1789.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La date du début de la Révolution française en 1789 est un événement historique factuel et précisément documenté."),
            ExerciseItem(id: UUID(), prompt: "La vie en Haïti est plus difficile qu'en France.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Évaluer la difficulté de la vie compare des expériences subjectives et dépend de multiples perspectives personnelles."),
            ExerciseItem(id: UUID(), prompt: "Haïti est le premier pays noir à avoir obtenu son indépendance.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "L'indépendance d'Haïti en 1804 en tant que première république noire est un fait historique reconnu et établi."),
            ExerciseItem(id: UUID(), prompt: "Los Angeles a une grande communauté francophone.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La présence d'une importante communauté francophone à Los Angeles est une donnée démographique documentée."),
            ExerciseItem(id: UUID(), prompt: "Les Haïtiens-Américains contribuent fortement à la culture américaine.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La mesure de la 'forte contribution' culturelle implique une part d'interprétation subjective et d'appréciation."),
            ExerciseItem(id: UUID(), prompt: "Le Mont Blanc est le plus haut sommet d'Europe occidentale.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Le Mont Blanc, avec son altitude mesurée, est géographiquement et scientifiquement le point culminant de l'Europe occidentale."),
            ExerciseItem(id: UUID(), prompt: "Les fromages français sont supérieurs à tous les autres fromages.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "L'affirmation de la supériorité d'un fromage sur les autres est purement affaire de goût personnel et subjectif."),
            ExerciseItem(id: UUID(), prompt: "La France compte plus de 200 variétés de fromages.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Le fait que la France produise un très grand nombre de variétés de fromages (plus de 200) est une réalité gastronomique quantifiable.")
        ]
    )

    // MARK: - Mise en ordre
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Mise en ordre",
        instructions: "Remettez dans le bon ordre.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Routine matinale:", options: ["Se laver le visage", "S'habiller", "Prendre le petit-déjeuner", "Se lever"], correctAnswer: "Se lever | Se laver le visage | S'habiller | Prendre le petit-déjeuner", explanation: "Ces actions suivent un ordre chronologique logique le matin : on se lève d'abord, on fait sa toilette, on s'habille puis on prend son repas."),
            ExerciseItem(id: UUID(), prompt: "Envoyer une lettre:", options: ["Mettre à la boîte aux lettres", "Écrire la lettre", "Coller le timbre", "Glisser dans l'enveloppe"], correctAnswer: "Écrire la lettre | Glisser dans l'enveloppe | Coller le timbre | Mettre à la boîte aux lettres", explanation: "Cette séquence respecte la logique d'envoi d'une lettre : rédaction, mise sous pli, affranchissement puis dépôt postal."),
            ExerciseItem(id: UUID(), prompt: "Préparer du thé:", options: ["Verser dans la tasse", "Mettre la bouilloire à chauffer", "Mettre le sachet dans la tasse", "Attendre que l'eau bouille"], correctAnswer: "Mettre la bouilloire à chauffer | Attendre que l'eau bouille | Mettre le sachet dans la tasse | Verser dans la tasse", explanation: "Il s'agit des étapes séquentielles logiques pour préparer du thé : chauffer l'eau d'abord, puis procéder à l'infusion et au service."),
            ExerciseItem(id: UUID(), prompt: "Faire les courses:", options: ["Payer à la caisse", "Choisir les articles", "Entrer dans le magasin", "Ranger les achats"], correctAnswer: "Entrer dans le magasin | Choisir les articles | Payer à la caisse | Ranger les achats", explanation: "Ce déroulement décrit l'ordre chronologique normal des courses : entrer, choisir les produits, payer à la caisse puis ranger."),
            ExerciseItem(id: UUID(), prompt: "Aller chez le médecin:", options: ["Prendre la prescription", "Prendre rendez-vous", "Attendre son tour", "Voir le médecin"], correctAnswer: "Prendre rendez-vous | Attendre son tour | Voir le médecin | Prendre la prescription", explanation: "Cette série retrace le parcours médical habituel : on prend d'abord rendez-vous, on patiente, on consulte puis on reçoit l'ordonnance."),
            ExerciseItem(id: UUID(), prompt: "Prendre un bain:", options: ["Se sécher", "Se laver", "Se déshabiller", "Se plonger dans l'eau"], correctAnswer: "Se déshabiller | Se laver | Se plonger dans l'eau | Se sécher", explanation: "Cette suite logique d'actions pour le bain va de la préparation (se déshabiller) à l'immersion, jusqu'à la fin (se sécher)."),
            ExerciseItem(id: UUID(), prompt: "Passer un coup de fil:", options: ["Raccrocher", "Composer le numéro", "Parler", "Décrocher le téléphone"], correctAnswer: "Décrocher le téléphone | Composer le numéro | Parler | Raccrocher", explanation: "Ce sont les étapes chronologiques naturelles d'un appel téléphonique : décrocher, numéroter, discuter puis terminer la communication."),
            ExerciseItem(id: UUID(), prompt: "Préparer un repas:", options: ["Servir dans l'assiette", "Faire les courses", "Cuisiner", "Couper les ingrédients"], correctAnswer: "Faire les courses | Couper les ingrédients | Cuisiner | Servir dans l'assiette", explanation: "Cette séquence reflète le processus culinaire complet : s'approvisionner, préparer les aliments, cuire puis servir le plat.")
        ]
    )

    // MARK: - Expressions idiomatiques
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Expressions idiomatiques",
        instructions: "Quelle est la signification de cette expression?",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Que signifie: Coûter les yeux de la tête?", options: ["Être très cher", "Être très beau", "Être très difficile", "Être inutile"], correctAnswer: "Être très cher", explanation: "Cette expression métaphorique suggère que l'objet est si onéreux qu'il faudrait sacrifier une partie inestimable de son corps, comme ses yeux, pour l'acquérir."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le cafard?", options: ["Avoir faim", "Être triste ou déprimé", "Avoir peur des insectes", "Être en colère"], correctAnswer: "Être triste ou déprimé", explanation: "Le cafard, un insecte associé à la noirceur et à la saleté, est utilisé métaphoriquement pour illustrer des pensées sombres et la mélancolie."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Prendre la poudre d'escampette?", options: ["Nettoyer la maison", "Se sauver, fuir", "Faire la fête", "Travailler dur"], correctAnswer: "Se sauver, fuir", explanation: "Cette locution familière emploie le terme ancien 'escampette' (action de s'esquiver) pour illustrer une fuite précipitée et furtive."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir d'autres chats à fouetter?", options: ["Avoir beaucoup d'animaux", "Avoir des choses plus importantes à faire", "Être en colère", "Aimer les chats"], correctAnswer: "Avoir des choses plus importantes à faire", explanation: "L'expression évoque l'idée absurde de devoir aller punir (fouetter) des chats pour signifier métaphoriquement qu'on a des tâches bien plus urgentes."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Être dans le pétrin?", options: ["Faire du pain", "Être dans une situation difficile", "Être heureux", "Avoir faim"], correctAnswer: "Être dans une situation difficile", explanation: "Le pétrin, récipient où la pâte à pain colle et englue, est utilisé comme métaphore pour symboliser une situation compliquée dont il est difficile de se sortir."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Poser un lapin à quelqu'un?", options: ["Offrir un cadeau", "Ne pas venir à un rendez-vous", "Courir vite", "Faire une bonne surprise"], correctAnswer: "Ne pas venir à un rendez-vous", explanation: "À l'origine liée au refus de payer, cette expression idiomatique désigne aujourd'hui le fait de faire faux bond à un rendez-vous convenu."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Casser les pieds?", options: ["Se blesser", "Agacer, ennuyer", "Danser", "Partir vite"], correctAnswer: "Agacer, ennuyer", explanation: "L'image de casser ou écraser les pieds de quelqu'un métaphorise le fait d'infliger une gêne très persistante et insupportable."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le coeur sur la main?", options: ["Être chirurgien", "Être très généreux", "Être amoureux", "Avoir mal au coeur"], correctAnswer: "Être très généreux", explanation: "Offrir son cœur (symbole de la bonté) sur la paume de la main (prêt à être donné) illustre une générosité et une franchise sincères."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Tomber dans les pommes?", options: ["Faire la récolte", "S'évanouir", "Tomber d'un arbre", "Cuisiner des pommes"], correctAnswer: "S'évanouir", explanation: "D'origine familière et théâtrale (se pâmer), cette expression décrit métaphoriquement et visuellement la perte d'équilibre lors d'un évanouissement."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le moral dans les chaussettes?", options: ["Avoir les pieds froids", "Être très découragé", "Faire du sport", "Être fatigué"], correctAnswer: "Être très découragé", explanation: "L'image humoristique du moral (l'enthousiasme) qui est descendu jusqu'aux chaussettes (tout en bas) traduit un profond état de dépression."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Faire d'une pierre deux coups?", options: ["Construire un mur", "Atteindre deux objectifs en une seule action", "Jeter des pierres", "Réparer quelque chose"], correctAnswer: "Atteindre deux objectifs en une seule action", explanation: "Cette métaphore visuelle illustre parfaitement le fait d'atteindre deux cibles distinctes (deux coups) avec un seul projectile (une pierre)."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Mettre de l'eau dans son vin?", options: ["Préparer une boisson", "Faire des concessions", "Economiser l'alcool", "Diluer la vérité"], correctAnswer: "Faire des concessions", explanation: "Diluer son vin avec de l'eau symbolise le fait d'atténuer la force de ses exigences ou de modérer sa colère pour aboutir à un compromis."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Ça ne casse pas trois pattes à un canard?", options: ["C'est blessant", "C'est impressionnant", "Ce n'est pas exceptionnel", "C'est dangereux"], correctAnswer: "Ce n'est pas exceptionnel", explanation: "L'image d'un canard à trois pattes serait exceptionnelle ; dire que ça 'ne les casse pas' souligne à la forme négative le caractère banal de la chose."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Ne pas être dans son assiette?", options: ["Ne pas avoir faim", "Se sentir mal à l'aise ou malade", "Manger moins", "Avoir perdu son assiette"], correctAnswer: "Se sentir mal à l'aise ou malade", explanation: "Le mot 'assiette' désignait autrefois l'équilibre du cavalier ou l'humeur. Ne pas y être signifie donc manquer d'équilibre physique ou psychologique."),
            ExerciseItem(id: UUID(), prompt: "Que signifie: Avoir le beurre et l'argent du beurre?", options: ["Faire des courses", "Vouloir tout avoir sans rien perdre", "Vendre des produits laitiers", "Être riche"], correctAnswer: "Vouloir tout avoir sans rien perdre", explanation: "Cette formule souligne l'irrationalité de vouloir obtenir le gain d'une situation (l'argent) tout en conservant jalousement le bien initial (le beurre).")
        ]
    )

    // MARK: - Rimes
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "Rimes",
        instructions: "Choisissez le mot qui rime avec le mot donné.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
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
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à BAGUETTE?", options: ["boulangerie", "restaurant", "épicerie", "librairie"], correctAnswer: "boulangerie", explanation: "Il y a une relation de produit à producteur ; la baguette est le type de pain le plus couramment vendu dans une boulangerie."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à TOUR EIFFEL?", options: ["Berlin", "Paris", "Rome", "Madrid"], correctAnswer: "Paris", explanation: "Il s'agit d'une relation de monument à son emplacement ; la Tour Eiffel est le symbole emblématique de la ville de Paris."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à TREMBLEMENT DE TERRE?", options: ["plage", "évacuation", "fête", "ski"], correctAnswer: "évacuation", explanation: "Il y a un lien de cause à effet : un tremblement de terre, en tant que danger imminent, déclenche très souvent une procédure d'évacuation."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CROISSANT?", options: ["pizza", "hamburger", "beurre", "spaghetti"], correctAnswer: "beurre", explanation: "Il s'agit d'une relation de composition ; le beurre est l'ingrédient essentiel et caractéristique de la pâte du croissant."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à NOËL?", options: ["feux d'artifice", "repas en famille", "carnaval", "glace"], correctAnswer: "repas en famille", explanation: "Il s'agit d'une association culturelle forte : Noël est une fête dont la principale célébration se fait autour d'un grand repas en famille."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à REPAS FRANÇAIS?", options: ["baguette", "chapati", "tortilla", "naan"], correctAnswer: "baguette", explanation: "C'est une relation de partie à tout : la baguette est un accompagnement incontournable et constitutif du repas traditionnel français."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à GARE?", options: ["avion", "bateau", "train", "voiture"], correctAnswer: "train", explanation: "C'est une relation de lieu à moyen de transport : la gare est l'infrastructure spécifiquement conçue pour accueillir les trains."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CALLIGRAPHIE?", options: ["peinture", "encre", "sculpture", "musique"], correctAnswer: "encre", explanation: "Il s'agit d'une relation d'outil à pratique : l'encre est la substance matérielle indispensable pour réaliser l'art de la calligraphie."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à HAÏTI?", options: ["France", "Espagne", "Créole", "Pays anglophone"], correctAnswer: "Créole", explanation: "Il y a un lien linguistique et géographique : le Créole est l'une des langues officielles et parlées couramment en Haïti."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à COUSCOUS?", options: ["France", "Maghreb", "Japon", "Brésil"], correctAnswer: "Maghreb", explanation: "Il s'agit d'une origine culturelle : le couscous est le plat traditionnel historique des pays composant la région du Maghreb."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à FEU D'ARTIFICE?", options: ["Noël", "Pâques", "14 juillet", "Halloween"], correctAnswer: "14 juillet", explanation: "C'est une association événementielle : le tir de feu d'artifice est la célébration nocturne caractéristique de la fête du 14 juillet."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à MONT BLANC?", options: ["plage", "ski", "mer", "désert"], correctAnswer: "ski", explanation: "Il y a un lien entre un lieu et son activité principale : le Mont Blanc est célèbre pour la pratique des sports d'hiver comme le ski."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à QUÉBEC?", options: ["France", "Canada", "Belgique", "Suisse"], correctAnswer: "Canada", explanation: "Il s'agit d'une relation géographique et administrative : le Québec est la province francophone située à l'intérieur du pays, le Canada."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CAFÉ?", options: ["piscine", "terrasse", "forêt", "montagne"], correctAnswer: "terrasse", explanation: "C'est une association d'habitude socioculturelle : boire un café en étant assis à la terrasse d'un bistrot est très courant en France."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à MARSEILLE?", options: ["montagne", "lac", "port", "plaine"], correctAnswer: "port", explanation: "Il s'agit d'une caractéristique identitaire forte : la ville de Marseille est historiquement et économiquement définie par son grand port maritime."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à IMMIGRÉ FRANCOPHONE?", options: ["anglais uniquement", "langue française", "allemand", "chinois"], correctAnswer: "langue française", explanation: "C'est un attribut définissant : le lien culturel qui unit un immigré francophone à la France ou à la francophonie est la langue française."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à BOULES?", options: ["Paris", "Provence", "Bretagne", "Alsace"], correctAnswer: "Provence", explanation: "Il s'agit de l'origine régionale d'un loisir : le jeu de boules (la pétanque) est intrinsèquement associé à la région de la Provence."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à CHAMPAGNE?", options: ["Bordeaux", "Champagne", "Bourgogne", "Alsace"], correctAnswer: "Champagne", explanation: "C'est une relation d'appellation d'origine : la boisson 'champagne' porte le nom de sa seule région de production, la Champagne."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à ESCARGOT?", options: ["plat traditionnel français", "animal de compagnie", "oiseau", "insecte"], correctAnswer: "plat traditionnel français", explanation: "Il s'agit d'une association gastronomique : l'escargot est mondialement identifié comme un plat traditionnel typique du terroir français."),
            ExerciseItem(id: UUID(), prompt: "Quel mot s'associe le mieux à PÂTISSERIE?", options: ["boulanger", "dentiste", "médecin", "plombier"], correctAnswer: "boulanger", explanation: "Il y a un lien entre le produit et son artisan : les pâtisseries sont confectionnées et vendues par l'artisan boulanger ou le pâtissier.")
        ]
    )

    // MARK: - Préfixes et suffixes
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "Préfixes et suffixes",
        instructions: "Choisissez le mot correctement formé.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "In___ (sens contraire): possible", options: ["Impossible", "Inpossible", "Nopossible"], correctAnswer: "Impossible", explanation: "Le préfixe 'im-' (variante de 'in-') ajouté à 'possible' exprime la négation ou le contraire strict de l'adjectif de base."),
            ExerciseItem(id: UUID(), prompt: "Re___ (encore): commencer", options: ["Recommencer", "Lecommencer", "Decommencer"], correctAnswer: "Recommencer", explanation: "Le préfixe 're-' placé devant le verbe indique la répétition de l'action de commencer, signifiant le faire à nouveau."),
            ExerciseItem(id: UUID(), prompt: "_eur (celui qui): chanter", options: ["Chanteur", "Chantion", "Chantiste"], correctAnswer: "Chanteur", explanation: "Le suffixe '-eur' ajouté à la base verbale 'chant-' désigne spécifiquement la personne (l'agent) qui exécute l'action de chanter."),
            ExerciseItem(id: UUID(), prompt: "_tion (action de): information", options: ["Information", "Informatise", "Informatique"], correctAnswer: "Information", explanation: "Le suffixe '-tion' transforme un radical verbal en un substantif féminin qui désigne le résultat ou l'action de s'informer."),
            ExerciseItem(id: UUID(), prompt: "Dé___ (sens contraire): faire", options: ["Défaire", "Ineffaire", "Prêfaire"], correctAnswer: "Défaire", explanation: "Le préfixe 'dé-' accolé au verbe 'faire' exprime l'action opposée ou l'inversion du processus, signifiant annuler ce qui a été fait."),
            ExerciseItem(id: UUID(), prompt: "_ment (manière de): lentement", options: ["Lentement", "Lenteur", "Lentise"], correctAnswer: "Lentement", explanation: "Le suffixe '-ment' s'ajoute à l'adjectif au féminin (lente) pour créer un adverbe indiquant de quelle manière l'action s'effectue."),
            ExerciseItem(id: UUID(), prompt: "Sur___ (au-dessus, en plus): charger", options: ["Surcharger", "Suscharger", "Supercharger"], correctAnswer: "Surcharger", explanation: "Le préfixe 'sur-' dénote un excès, une surcharge ou un dépassement de la limite normale par rapport au verbe 'charger'."),
            ExerciseItem(id: UUID(), prompt: "_iste (spécialiste): piano", options: ["Pianiste", "Pianeur", "Pianique"], correctAnswer: "Pianiste", explanation: "Le suffixe '-iste' s'emploie pour former un nom désignant la personne spécialisée dans la pratique d'une discipline ou d'un instrument (le piano)."),
            ExerciseItem(id: UUID(), prompt: "_able (qui peut être): portable", options: ["Portable", "Porteur", "Portant"], correctAnswer: "Portable", explanation: "Le suffixe '-able' est ajouté au verbe pour former un adjectif signifiant 'qui a la capacité ou la possibilité' d'être porté."),
            ExerciseItem(id: UUID(), prompt: "Mal___ (mauvais): heureux", options: ["Malheureux", "Inheureux", "Deheureux"], correctAnswer: "Malheureux", explanation: "Le préfixe 'mal-' exprime une valeur péjorative ou négative, créant ainsi le strict antonyme de l'adjectif 'heureux'."),
            ExerciseItem(id: UUID(), prompt: "_isme (doctrine): réalisme", options: ["Réalisme", "Réaliste", "Réalité"], correctAnswer: "Réalisme", explanation: "Le suffixe '-isme' est utilisé pour dériver un nom qui désigne un courant, une doctrine ou une tendance artistique liée au réel."),
            ExerciseItem(id: UUID(), prompt: "_ité (qualité de): beau", options: ["Beauté", "Beausité", "Beaument"], correctAnswer: "Beauté", explanation: "Le suffixe '-ité' sert à transformer l'adjectif 'beau' en un nom abstrait féminin représentant la qualité ou l'état de cette chose."),
            ExerciseItem(id: UUID(), prompt: "Pré___ (avant): voir", options: ["Prévoir", "Devois", "Revoir"], correctAnswer: "Prévoir", explanation: "Le préfixe 'pré-' signifie 'avant' dans le temps ; associé à 'voir', il indique l'action d'anticiper avant que l'événement ne se produise."),
            ExerciseItem(id: UUID(), prompt: "_age (action): voyage", options: ["Voyage", "Voyageur", "Voyagisme"], correctAnswer: "Voyage", explanation: "Le suffixe '-age' forme un nom d'action à partir d'un radical, désignant ici le résultat ou le fait d'entreprendre un voyage."),
            ExerciseItem(id: UUID(), prompt: "Anti___ (contre): corps", options: ["Anticorps", "Contrecorps", "Décorps"], correctAnswer: "Anticorps", explanation: "Le préfixe 'anti-' marque l'opposition ou la lutte contre quelque chose, formant le mot 'anticorps' (qui agit contre un agent pathogène)."),
            ExerciseItem(id: UUID(), prompt: "_eur (comparatif): meilleur", options: ["Meilleur", "Bien", "Bonsoir"], correctAnswer: "Meilleur", explanation: "Ici, le suffixe '-eur' est la marque du comparatif de supériorité hérité du latin (melior), servant à comparer favorablement deux éléments."),
            ExerciseItem(id: UUID(), prompt: "_oir (lieu): voir", options: ["Parloir", "Partoir", "Seeoir"], correctAnswer: "Parloir", explanation: "Le suffixe '-oir' sert couramment à former des noms désignant le lieu ou la pièce spécifiquement dédié à l'action de parler."),
            ExerciseItem(id: UUID(), prompt: "Extra___ (au-delà): ordinaire", options: ["Extraordinaire", "Superordinaire", "Superordinance"], correctAnswer: "Extraordinaire", explanation: "Le préfixe 'extra-' signifie littéralement 'en dehors de' ou 'au-delà de', qualifiant ce qui dépasse le cadre de l'ordinaire."),
            ExerciseItem(id: UUID(), prompt: "_ard (péjoratif): mouton", options: ["Moutonnard", "Moutoniste", "Moutonneux"], correctAnswer: "Moutonnard", explanation: "Le suffixe '-ard' apporte généralement une nuance péjorative ou familière à la racine pour désigner quelqu'un qui a le caractère moutonnier."),
            ExerciseItem(id: UUID(), prompt: "_ette (petit): maison", options: ["Maisonnette", "Maisonille", "Maisonneux"], correctAnswer: "Maisonnette", explanation: "Le suffixe '-ette' est un diminutif classique qui, ajouté à 'maison', indique qu'il s'agit d'une maison de petite dimension.")
        ]
    )
}


