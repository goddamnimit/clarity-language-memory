import Foundation

/// Holds the 17 hard-tier French exercises containing 235 items.
struct FrenchHardExercisesData {

    /// The complete collection of all 17 hard French exercises.
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
        easyAnalogies,
        easyCauseEffect,
        easyWhatsWrong,
        easySequencing,
        mediumWordAssociation,
        mediumHomonyms,
        easyCompleteSaying,
        hardCompleteSaying
    ]

    // MARK: - Exercise 1: Advanced Homonyms
    private static let exercise1 = Exercise(
        title: "Homonymes avancés",
        instructions: "Choisissez le bon couple d'homonymes pour compléter les phrases.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "[sain / saint] Ce mode de vie est très ___ pour le cœur. Le ___ patron de la ville est célébré en été.", options: ["sain...saint", "saint...sain", "sain...sain", "saint...saint"], correctAnswer: "sain...saint", explanation: "'Sain' signifie en bonne santé, tandis que 'saint' fait référence à un personnage religieux ou sacré."),
            ExerciseItem(id: UUID(), prompt: "[vert / verre] Elle a renversé son ___ de jus sur le tapis ___.", options: ["verre...vert", "vert...verre", "verre...verre", "vert...vert"], correctAnswer: "verre...vert", explanation: "'Verre' est le récipient pour boire, et 'vert' est la couleur."),
            ExerciseItem(id: UUID(), prompt: "[maire / mère] Le ___ de la commune a félicité ma ___ pour son engagement associatif.", options: ["maire...mère", "mère...maire", "maire...maire", "mère...mère"], correctAnswer: "maire...mère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[poids / pois] Elle a pesé son sac pour vérifier le ___ des petits ___.", options: ["poids...pois", "pois...poids", "poids...poids", "pois...pois"], correctAnswer: "poids...pois", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[cours / cour] Pendant le ___ de récréation, les enfants jouent dans la ___ de l'école.", options: ["cours...cour", "cour...cours", "cours...cours", "cour...cour"], correctAnswer: "cours...cour", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[tante / tente] Ma ___ préfère dormir sous une ___ de camping lors de ses vacances à Yosemite.", options: ["tante...tente", "tente...tante", "tante...tante", "tente...tente"], correctAnswer: "tante...tente", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[voix / voie] Sa ___ douce résonnait le long de la ___ ferrée du Caltrain.", options: ["voix...voie", "voie...voix", "voix...voix", "voie...voie"], correctAnswer: "voix...voie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[pâte / patte] La ___ à tarte a été piétinée par la ___ du chat.", options: ["pâte...patte", "patte...pâte", "pâte...pâte", "patte...patte"], correctAnswer: "pâte...patte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[sur / sûr] Il a posé le livre ___ la table, il est ___ de son choix.", options: ["sur...sûr", "sûr...sur", "sur...sur", "sûr...sûr"], correctAnswer: "sur...sûr", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[mur / mûr] Le fruit est bien ___ pour être mangé près du ___ en briques.", options: ["mûr...mur", "mur...mûr", "mûr...mûr", "mur...mur"], correctAnswer: "mûr...mur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[champ / chant] Le ___ de blé s'étendait à perte de vue pendant que le ___ de l'oiseau résonnait.", options: ["champ...chant", "chant...champ", "champ...champ", "chant...chant"], correctAnswer: "champ...chant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[signe / cygne] Elle m'a fait un ___ de la main en regardant le ___ sur le lac du parc régional.", options: ["signe...cygne", "cygne...signe", "signe...signe", "cygne...cygne"], correctAnswer: "signe...cygne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[mer / mère] Ma ___ aime contempler la ___ depuis la côte de Monterey.", options: ["mère...mer", "mer...mère", "mère...mère", "mer...mer"], correctAnswer: "mère...mer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[foi / fois] Il a réaffirmé sa ___ en la justice pour la troisième ___.", options: ["foi...fois", "fois...foi", "foi...foi", "fois...fois"], correctAnswer: "foi...fois", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[col / colle] Le ___ de sa chemise est taché de ___ forte.", options: ["col...colle", "colle...col", "col...col", "colle...colle"], correctAnswer: "col...colle", explanation: "")
        ]
    )

    // MARK: - Exercise 2: Advanced Analogies
    private static let exercise2 = Exercise(
        title: "Analogies avancées",
        instructions: "Choisissez le mot qui complète le mieux la relation d'analogie.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "ÉPHÉMÈRE est à PERMANENT ce que TRANSITOIRE est à ___", options: ["Bref", "Rapide", "Durable", "Temporaire"], correctAnswer: "Durable", explanation: "Éphémère et permanent sont des antonymes, tout comme transitoire et durable."),
            ExerciseItem(id: UUID(), prompt: "CACOPHONIE est à SON ce que CHAOS est à ___", options: ["Bruit", "Ordre", "Conflit", "Confusion"], correctAnswer: "Ordre", explanation: "La cacophonie est l'absence d'ordre sonore, le chaos est l'absence d'ordre général."),
            ExerciseItem(id: UUID(), prompt: "ALTRUISME est à DÉSINTÉRESSEMENT ce que AVARICE est à ___", options: ["Générosité", "Avidité", "Bonté", "Sympathie"], correctAnswer: "Avidité", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "OSTRACISER est à EXCLURE ce que PRÉCURSEUR est à ___", options: ["Accueillir", "Annoncer", "Ignorer", "Suivre"], correctAnswer: "Annoncer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "MALLEABLE est à PLIER ce que FRAGILE est à ___", options: ["Fléchir", "Briser", "Étendre", "Mouler"], correctAnswer: "Briser", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ÉNERVER est à AFFAIBLIR ce que VIVIFIER est à ___", options: ["Décourager", "Épuiser", "Fortifier", "Apaiser"], correctAnswer: "Fortifier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "BISTOURI est à CHIRURGIEN ce que MARTEAU est à ___", options: ["Greffier", "Avocat", "Juge", "Témoin"], correctAnswer: "Juge", explanation: "Un bistouri est l'outil du chirurgien, le marteau est celui du juge."),
            ExerciseItem(id: UUID(), prompt: "MÉTAPHORE est à FIGURÉ ce que FAIT est à ___", options: ["Littéral", "Imaginaire", "Symbolique", "Subjectif"], correctAnswer: "Littéral", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "SOLILOQUE est à ACTEUR ce que SERMON est à ___", options: ["Fidèles", "Chorale", "Prédicateur", "Organiste"], correctAnswer: "Prédicateur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "FANATIQUE est à PASSION ce que SCEPTIQUE est à ___", options: ["Certitude", "Confiance", "Doute", "Colère"], correctAnswer: "Doute", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "CONVAINCANT est à PERSUASIF ce que SOUS-ENTENDU est à ___", options: ["Explicite", "Implicite", "Clair", "Évident"], correctAnswer: "Implicite", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "EMBRYONNAIRE est à COMMENCEMENT ce que MORIBOND est à ___", options: ["Croissant", "Florissant", "Mourant", "Naissant"], correctAnswer: "Mourant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LACONIQUE est à MOTS ce que PARCIMONIEUX est à ___", options: ["Temps", "Parole", "Argent", "Énergie"], correctAnswer: "Argent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "MALADIE est à PATHOLOGIE ce que REMÈDE est à ___", options: ["Poison", "Affliction", "Guérison", "Blessure"], correctAnswer: "Guérison", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "NOVICE est à EXPÉRIENCE ce que ERMITE est à ___", options: ["Discipline", "Société", "Solitude", "Prière"], correctAnswer: "Société", explanation: "Un novice manque d'expérience, un ermite évite délibérément la vie en société.")
        ]
    )

    // MARK: - Exercise 3: Advanced Word Association
    private static let exercise3 = Exercise(
        title: "Association de mots avancée",
        instructions: "Choisissez le mot le plus étroitement associé au mot donné.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "ÉPHÉMÈRE", options: ["Permanent", "Transitoire", "Solide", "Infini"], correctAnswer: "Transitoire", explanation: "Éphémère est très proche de transitoire, qualifiant ce qui dure peu de temps."),
            ExerciseItem(id: UUID(), prompt: "CACOPHONIE", options: ["Harmonie", "Dissonance", "Silence", "Mélodie"], correctAnswer: "Dissonance", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "PRUDENT", options: ["Téméraire", "Avisé", "Négligent", "Hâtif"], correctAnswer: "Avisé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "AUDACIEUX", options: ["Timoré", "Téméraire", "Poli", "Doux"], correctAnswer: "Téméraire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "BIENVEILLANT", options: ["Malveillant", "Indulgent", "Égoïste", "Cruel"], correctAnswer: "Indulgent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "VERSATILE", options: ["Stable", "Inconstant", "Constant", "Fidèle"], correctAnswer: "Inconstant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "DILIGENT", options: ["Paresseux", "Zélé", "Négligent", "Inactif"], correctAnswer: "Zélé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ÉNIGMATIQUE", options: ["Évident", "Mystérieux", "Simple", "Clair"], correctAnswer: "Mystérieux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "FRUGAL", options: ["Dépensier", "Économe", "Prodigue", "Généreux"], correctAnswer: "Économe", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "GARRULE", options: ["Taciturne", "Bavard", "Silencieux", "Discret"], correctAnswer: "Bavard", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "PRÉCURSEUR", options: ["Suiveur", "Avant-coureur", "Successeur", "Spectateur"], correctAnswer: "Avant-coureur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "MUTABLE", options: ["Fixe", "Changeant", "Rigide", "Constant"], correctAnswer: "Changeant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "NÉBULEUX", options: ["Précis", "Flou", "Distinct", "Brillant"], correctAnswer: "Flou", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "OBSTINÉ", options: ["Docile", "Têtu", "Souple", "Complaisant"], correctAnswer: "Têtu", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LUCIDE", options: ["Confus", "Clairvoyant", "Aveugle", "Distrait"], correctAnswer: "Clairvoyant", explanation: "")
        ]
    )

    // MARK: - Exercise 4: Advanced Sentence Completion
    private static let exercise4 = Exercise(
        title: "Complétion de phrases avancée",
        instructions: "Complétez la phrase en choisissant le mot le plus approprié dans le contexte.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bien qu'il ait étudié pendant des mois, son échec à l'examen a été ___.", options: ["inévitable", "surprenant", "mérité", "attendu"], correctAnswer: "surprenant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'augmentation des températures en Californie rend les vagues de chaleur plus ___.", options: ["rares", "fréquentes", "tolérables", "inattendues"], correctAnswer: "fréquentes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La sécheresse prolongée a contraint le gouvernement à imposer des restrictions d'eau ___.", options: ["volontaires", "strictes", "temporaires", "négligeables"], correctAnswer: "strictes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Son attitude désinvolte face aux consignes de sécurité a été jugée ___.", options: ["exemplaire", "irresponsable", "prudente", "courageuse"], correctAnswer: "irresponsable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les scientifiques ont découvert une nouvelle espèce marine à une profondeur ___.", options: ["minimale", "abyssale", "commune", "superficielle"], correctAnswer: "abyssale", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Sa décision de démissionner après vingt ans de service a grandement ___ ses collègues.", options: ["rassuré", "surpris", "indifféré", "amusé"], correctAnswer: "surpris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le nouveau règlement de copropriété vise à réduire les conflits de voisinage de manière ___.", options: ["temporaire", "durable", "aléatoire", "inefficace"], correctAnswer: "durable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le patient a suivi son traitement médical avec une rigueur ___.", options: ["aléatoire", "exemplaire", "insuffisante", "inhabituelle"], correctAnswer: "exemplaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Malgré les prévisions pessimistes, l'économie locale a enregistré une croissance ___.", options: ["nulle", "remarquable", "négative", "attendue"], correctAnswer: "remarquable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les secousses sismiques répétées ont provoqué une panique ___ parmi la population.", options: ["feinte", "généralisée", "légère", "inexistante"], correctAnswer: "généralisée", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La construction de cette nouvelle autoroute est un projet d'infrastructure ___.", options: ["majeur", "insignifiant", "privé", "abandonné"], correctAnswer: "majeur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Son intervention rapide a permis d'éviter que la situation ne devienne ___.", options: ["gérable", "catastrophique", "calme", "normale"], correctAnswer: "catastrophique", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les résultats de l'enquête policière restent pour l'instant ___.", options: ["évidents", "confidentiels", "publiés", "clairs"], correctAnswer: "confidentiels", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Ce vaccin offre une protection efficace contre plusieurs maladies ___.", options: ["rares", "infectieuses", "bénignes", "inexistantes"], correctAnswer: "infectieuses", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le musée abrite une collection d'œuvres d'art d'une valeur ___.", options: ["estimable", "inestimable", "faible", "commune"], correctAnswer: "inestimable", explanation: "")
        ]
    )

    // MARK: - Exercise 5: Advanced Sequencing Steps
    private static let exercise5 = Exercise(
        title: "Étapes de séquençage avancées",
        instructions: "Remettez les étapes logiques de l'activité dans le bon ordre.",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Renouvellement d'un permis de conduire au DMV", options: ["Prendre rendez-vous en ligne ou se rendre au DMV", "Présenter les pièces d'identité requises et l'ancien permis", "Passer un test de vision", "Payer les frais de renouvellement par carte ou chèque", "Prendre une nouvelle photo d'identité", "Recevoir le permis temporaire en attendant le permis officiel par la poste"], correctAnswer: "Prendre rendez-vous en ligne ou se rendre au DMV | Présenter les pièces d'identité requises et l'ancien permis | Passer un test de vision | Payer les frais de renouvellement par carte ou chèque | Prendre une nouvelle photo d'identité | Recevoir le permis temporaire en attendant le permis officiel par la poste", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Déclaration d'impôts de fin d'année", options: ["Rassembler tous les documents fiscaux (W-2, 1099, reçus)", "Choisir une méthode de déclaration (logiciel, comptable, papier)", "Saisir les revenus et calculer les déductions admissibles", "Vérifier l'exactitude des informations bancaires pour le remboursement", "Soumettre la déclaration par voie électronique ou postale", "Conserver une copie de la déclaration et des justificatifs pendant 3 ans"], correctAnswer: "Rassembler tous les documents fiscaux (W-2, 1099, reçus) | Choisir une méthode de déclaration (logiciel, comptable, papier) | Saisir les revenus et calculer les déductions admissibles | Vérifier l'exactitude des informations bancaires pour le remboursement | Soumettre la déclaration par voie électronique ou postale | Conserver une copie de la déclaration et des justificatifs pendant 3 ans", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Procédure d'évacuation lors d'une alerte feu de forêt", options: ["Écouter les bulletins d'information et les consignes des autorités locales", "Rassembler le kit d'urgence et les documents importants", "Fermer toutes les fenêtres et portes de la maison pour limiter l'entrée des braises", "Charger les animaux de compagnie dans le véhicule", "Quitter les lieux immédiatement en suivant les itinéraires d'évacuation indiqués", "Se rendre dans un abri d'urgence ou chez un proche hors de la zone de danger"], correctAnswer: "Écouter les bulletins d'information et les consignes des autorités locales | Rassembler le kit d'urgence et les documents importants | Fermer toutes les fenêtres et portes de la maison pour limiter l'entrée des braises | Charger les animaux de compagnie dans le véhicule | Quitter les lieux immédiatement en suivant les itinéraires d'évacuation indiqués | Se rendre dans un abri d'urgence ou chez un proche hors de la zone de danger", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Contestation d'une erreur sur une facture d'électricité PG&E", options: ["Examiner attentivement la facture et identifier l'anomalie de tarification", "Rassembler l'historique de consommation et les factures précédentes", "Contacter le service client officiel de PG&E par téléphone", "Expliquer clairement l'erreur à l'agent et demander une révision", "Noter le numéro de dossier et le nom de l'interlocuteur", "Suivre le dossier en ligne jusqu'à l'ajustement ou le remboursement de la différence"], correctAnswer: "Examiner attentivement la facture et identifier l'anomalie de tarification | Rassembler l'historique de consommation et les factures précédentes | Contacter le service client officiel de PG&E par téléphone | Expliquer clairement l'erreur à l'agent et demander une révision | Noter le numéro de dossier et le nom de l'interlocuteur | Suivre le dossier en ligne jusqu'à l'ajustement ou le remboursement de la différence", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Inscription au programme de santé Medi-Cal", options: ["Vérifier les critères d'admissibilité liés au revenu en Californie", "Rassembler les justificatifs (identité, statut de résidence, revenus)", "Remplir le formulaire d'inscription en ligne sur BenefitsCal", "Soumettre la demande complète avec toutes les pièces jointes", "Attendre la lettre de décision officielle des services sociaux du comté", "Choisir un réseau de soins de santé après approbation du dossier"], correctAnswer: "Vérifier les critères d'admissibilité liés au revenu en Californie | Rassembler les justificatifs (identité, statut de résidence, revenus) | Remplir le formulaire d'inscription en ligne sur BenefitsCal | Soumettre la demande complète avec toutes les pièces jointes | Attendre la lettre de décision officielle des services sociaux du comté | Choisir un réseau de soins de santé après approbation du dossier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Changement d'adresse auprès du service postal américain (USPS)", options: ["Se rendre sur le site officiel de l'USPS ou dans un bureau de poste local", "Remplir le formulaire officiel de changement d'adresse", "Fournir une pièce d'identité et un moyen de paiement pour la vérification en ligne", "Préciser si le déménagement est temporaire ou permanent", "Valider la date de début du transfert de courrier", "Vérifier la réception des premiers courriers réexpédiés à la nouvelle adresse"], correctAnswer: "Se rendre sur le site officiel de l'USPS ou dans un bureau de poste local | Remplir le formulaire officiel de changement d'adresse | Fournir une pièce d'identité et un moyen de paiement pour la vérification en ligne | Préciser si le déménagement est temporaire ou permanent | Valider la date de début du transfert de courrier | Vérifier la réception des premiers courriers réexpédiés à la nouvelle adresse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Demande de prestations de retraite de la Sécurité Sociale", options: ["Estimer ses droits en ligne sur le site officiel mySocialSecurity", "Choisir l'âge de départ à la retraite le plus avantageux", "Rassembler les pièces d'identité et les justificatifs fiscaux récents", "Soumettre la demande officielle en ligne ou prendre rendez-vous", "Suivre l'avancement de l'étude du dossier sur le portail en ligne", "Recevoir la notification officielle avec le montant et la date du premier versement"], correctAnswer: "Estimer ses droits en ligne sur le site officiel mySocialSecurity | Choisir l'âge de départ à la retraite le plus avantageux | Rassembler les pièces d'identité et les justificatifs fiscaux récents | Soumettre la demande officielle en ligne ou prendre rendez-vous | Suivre l'avancement de l'étude du dossier sur le portail en ligne | Recevoir la notification officielle avec le montant et la date du premier versement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Déclaration d'un sinistre auprès de son assurance habitation", options: ["Prendre des photos et des vidéos détaillées des dommages constatés", "Prendre les mesures d'urgence pour sécuriser la maison et éviter d'autres dégâts", "Rechercher son contrat d'assurance et relever le numéro de police", "Déclarer le sinistre en ligne ou par téléphone à son assureur", "Accueillir l'expert en assurance pour l'évaluation des pertes", "Obtenir des devis d'entrepreneurs pour les réparations requises"], correctAnswer: "Prendre des photos et des vidéos détaillées des dommages constatés | Prendre les mesures d'urgence pour sécuriser la maison et éviter d'autres dégâts | Rechercher son contrat d'assurance et relever le numéro de police | Déclarer le sinistre en ligne ou par téléphone à son assureur | Accueillir l'expert en assurance pour l'évaluation des pertes | Obtenir des devis d'entrepreneurs pour les réparations requises", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Ouverture d'un compte d'épargne santé (HSA)", options: ["Vérifier que son assurance santé actuelle est bien un plan à franchise élevée (HDHP)", "Rechercher les banques ou institutions financières proposant des comptes HSA", "Remplir le dossier de demande d'ouverture de compte en ligne", "Fournir les justificatifs d'identité requis pour la vérification légale", "Définir le montant des cotisations mensuelles prélevées sur le salaire", "Activer la carte de débit fournie pour le paiement des frais médicaux futurs"], correctAnswer: "Vérifier que son assurance santé actuelle est bien un plan à franchise élevée (HDHP) | Rechercher les banques ou institutions financières proposant des comptes HSA | Remplir le dossier de demande d'ouverture de compte en ligne | Fournir les justificatifs d'identité requis pour la vérification légale | Définir le montant des cotisations mensuelles prélevées sur le salaire | Activer la carte de débit fournie pour le paiement des frais médicaux futurs", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Procédure d'installation de panneaux solaires résidentiels", options: ["Faire réaliser une étude d'ensoleillement et un devis par une entreprise agréée", "Signer le contrat de pose et d'achat des panneaux solaires", "Soumettre les demandes de permis de construire à la mairie de sa ville", "Faire réaliser les travaux d'installation technique sur le toit de la maison", "Faire inspecter l'installation par la ville et le fournisseur d'énergie", "Activer le système de production d'électricité solaire"], correctAnswer: "Faire réaliser une étude d'ensoleillement et un devis par une entreprise agréée | Signer le contrat de pose et d'achat des panneaux solaires | Soumettre les demandes de permis de construire à la mairie de sa ville | Faire réaliser les travaux d'installation technique sur le toit de la maison | Faire inspecter l'installation par la ville et le fournisseur d'énergie | Activer le système de production d'électricité solaire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Inscription à Medicare à l'âge de 65 ans", options: ["Se renseigner sur les différentes parties de Medicare (A, B, C et D)", "Se rendre sur le portail officiel de la Sécurité Sociale en ligne", "Remplir la demande d'inscription pendant la période initiale de 7 mois", "Choisir s'il convient d'ajouter une assurance complémentaire (Medigap)", "Recevoir sa carte officielle de Medicare par voie postale", "Sélectionner son médecin de famille acceptant Medicare"], correctAnswer: "Se renseigner sur les différentes parties de Medicare (A, B, C et D) | Se rendre sur le portail officiel de la Sécurité Sociale en ligne | Remplir la demande d'inscription pendant la période initiale de 7 mois | Choisir s'il convient d'ajouter une assurance complémentaire (Medigap) | Recevoir sa carte officielle de Medicare par voie postale | Sélectionner son médecin de famille acceptant Medicare", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vente d'un véhicule d'occasion en Californie", options: ["Faire passer le contrôle technique antipollution (Smog Check) requis", "Négocier le prix de vente final avec l'acheteur intéressé", "Remplir et signer la section de transfert de propriété sur le titre du véhicule", "Relever le kilométrage exact indiqué au compteur du véhicule", "Soumettre la déclaration de libération de responsabilité au DMV en ligne sous 5 jours", "Remettre le titre de propriété signé et les clés à l'acheteur contre paiement"], correctAnswer: "Faire passer le contrôle technique antipollution (Smog Check) requis | Négocier le prix de vente final avec l'acheteur intéressé | Remplir et signer la section de transfert de propriété sur le titre du véhicule | Relever le kilométrage exact indiqué au compteur du véhicule | Soumettre la déclaration de libération de responsabilité au DMV en ligne sous 5 jours | Remettre le titre de propriété signé et les clés à l'acheteur contre paiement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Abonnement à un service municipal de ramassage des déchets organiques", options: ["Prendre contact avec les services municipaux ou la société de ramassage", "Sélectionner la taille du bac à compost en fonction de ses besoins", "Prendre connaissance du calendrier et du jour de collecte hebdomadaire", "Trier quotidiennement les déchets alimentaires et de jardinage à la maison", "Déposer le bac à compost sur le bord du trottoir la veille de la collecte", "Rentrer le bac vide après le passage du camion poubelle"], correctAnswer: "Prendre contact avec les services municipaux ou la société de ramassage | Sélectionner la taille du bac à compost en fonction de ses besoins | Prendre connaissance du calendrier et du jour de collecte hebdomadaire | Trier quotidiennement les déchets alimentaires et de jardinage à la maison | Déposer le bac à compost sur le bord du trottoir la veille de la collecte | Rentrer le bac vide après le passage du camion poubelle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Demande de passeport américain de premier niveau", options: ["Remplir le formulaire officiel DS-11 en ligne ou à la main", "Faire réaliser une photo d'identité officielle conforme aux critères", "Rassembler les justificatifs d'identité originaux et de citoyenneté", "Prendre rendez-vous dans un bureau officiel agréé (bureau de poste)", "Se présenter en personne pour prêter serment devant l'agent officiel", "Payer les frais de dossier par chèque ou mandat postal"], correctAnswer: "Remplir le formulaire officiel DS-11 en ligne ou à la main | Faire réaliser une photo d'identité officielle conforme aux critères | Rassembler les justificatifs d'identité originaux et de citoyenneté | Prendre rendez-vous dans un bureau officiel agréé (bureau de poste) | Se présenter en personne pour prêter serment devant l'agent officiel | Payer les frais de dossier par chèque ou mandat postal", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Préparation à une tempête hivernale extrême en montagne", options: ["Acheter des provisions alimentaires non périssables et de l'eau pour 3 jours", "Vérifier le bon fonctionnement du groupe électrogène ou des piles", "Faire le plein de bois de chauffage ou de bouteilles de gaz", "Installer des chaînes à neige sur les pneus de sa voiture", "Surveiller les bulletins d'alerte météo de sa région", "Rester à l'abri à la maison en limitant les déplacements extérieurs"], correctAnswer: "Acheter des provisions alimentaires non périssables et de l'eau pour 3 jours | Vérifier le bon fonctionnement du groupe électrogène ou des piles | Faire le plein de bois de chauffage ou de bouteilles de gaz | Installer des chaînes à neige sur les pneus de sa voiture | Surveiller les bulletins d'alerte météo de sa région | Rester à l'abri à la maison en limitant les déplacements extérieurs", explanation: "")
        ]
    )

    // MARK: - Exercise 6: Advanced Cause and Effect
    private static let exercise6 = Exercise(
        title: "Cause et effet avancés",
        instructions: "Choisissez la conséquence logique de la situation décrite.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Si l'inflation en Californie augmente rapidement, quel effet direct cela aura-t-il sur le pouvoir d'achat des retraités ayant une pension fixe ?", options: ["Leur pouvoir d'achat va diminuer", "Leur pouvoir d'achat va augmenter", "Leur pouvoir d'achat restera identique", "Les prix des produits vont baisser"], correctAnswer: "Leur pouvoir d'achat va diminuer", explanation: "L'inflation augmente le coût de la vie. Si les revenus restent fixes, le pouvoir d'achat diminue."),
            ExerciseItem(id: UUID(), prompt: "Si une hausse des taux d'intérêt de la Réserve Fédérale survient, quel en sera l'impact sur le coût d'un nouveau crédit immobilier à taux variable ?", options: ["Le coût des mensualités va augmenter", "Le coût des mensualités va baisser", "Le coût des mensualités restera fixe", "Le crédit sera annulé"], correctAnswer: "Le coût des mensualités va augmenter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous omettez de déclarer une partie de vos revenus fiscaux sur votre formulaire 1099, quelle en sera la conséquence probable ?", options: ["Une pénalité financière et des intérêts de retard de l'IRS", "Une exonération d'impôts l'année suivante", "Aucune conséquence car l'IRS ne vérifie pas", "Une lettre de félicitations du fisc"], correctAnswer: "Une pénalité financière et des intérêts de retard de l'IRS", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si le niveau de l'eau dans le réservoir de Shasta Lake baisse de manière historique en été, quel en sera l'impact pour l'agriculture locale ?", options: ["Une restriction majeure de l'irrigation des cultures", "Une augmentation gratuite de la distribution d'eau", "Une baisse des coûts de production agricole", "Aucune modification des pratiques agricoles"], correctAnswer: "Une restriction majeure de l'irrigation des cultures", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous ne payez pas votre prime d'assurance maladie avant la date d'échéance de grâce, que se passera-t-il ?", options: ["La suspension ou résiliation de votre couverture santé", "Le doublement de vos garanties d'assurance", "La gratuité des soins le mois suivant", "Un remboursement automatique par chèque"], correctAnswer: "La suspension ou résiliation de votre couverture santé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si un court-circuit se produit dans le boîtier électrique principal de la maison, que fait le disjoncteur ?", options: ["Il saute pour couper le courant et éviter un incendie", "Il augmente la tension électrique", "Il émet une alarme sonore de 90 décibels", "Il redémarre les appareils branchés"], correctAnswer: "Il saute pour couper le courant et éviter un incendie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si la température de l'eau de l'océan Pacifique augmente fortement en hiver (phénomène El Niño), quelle en est la conséquence en Californie ?", options: ["Des tempêtes côtières et des pluies diluviennes importantes", "Une sécheresse extrême et durable", "Une baisse brutale des températures de l'air", "La disparition de tout brouillard côtier"], correctAnswer: "Des tempêtes côtières et des pluies diluviennes importantes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous conduisez un véhicule sans assurance obligatoire sur les routes de Californie, que risquez-vous en cas de contrôle par la police ?", options: ["Une suspension de votre permis et la mise en fourrière du véhicule", "Un simple avertissement verbal sans amende", "Une réduction sur votre prochaine prime d'assurance", "Une amende symbolique de 5 dollars"], correctAnswer: "Une suspension de votre permis et la mise en fourrière du véhicule", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si une coupure de courant préventive (PSPS) est déclenchée par PG&E en raison de vents violents, quel est l'objectif ?", options: ["Réduire le risque de départs de feux de forêt par des lignes électriques", "Économiser la réserve d'énergie de l'État", "Procéder à des travaux de maintenance sur les routes", "Obliger les résidents à utiliser des panneaux solaires"], correctAnswer: "Réduire le risque de départs de feux de forêt par des lignes électriques", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si un résident californien de plus de 65 ans s'inscrit en retard à la partie B de Medicare sans justificatif d'emploi, que se passe-t-il ?", options: ["Il devra payer une pénalité financière permanente sur sa cotisation", "Son inscription sera refusée définitivement", "Il bénéficiera d'une réduction de cotisation", "Il sera inscrit d'office à la partie A gratuitement"], correctAnswer: "Il devra payer une pénalité financière permanente sur sa cotisation", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous mélangez de l'eau de Javel avec un produit contenant de l'ammoniaque pour nettoyer la salle de bains, que se passe-t-il ?", options: ["La libération de vapeurs de gaz toxique et dangereux", "Une meilleure efficacité de nettoyage sans aucun risque", "Le mélange devient rose et sent bon la rose", "Le produit perd toute efficacité de désinfection"], correctAnswer: "La libération de vapeurs de gaz toxique et dangereux", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous omettez de payer l'impôt foncier de votre maison en Californie avant la date limite de décembre, quelle est la sanction ?", options: ["Une pénalité de retard automatique de 10 % sur le montant dû", "La confiscation immédiate de la propriété", "Une réduction sur la taxe de l'année suivante", "Une convocation au tribunal de comté sous 24 heures"], correctAnswer: "Une pénalité de retard automatique de 10 % sur le montant dû", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si le niveau de pression artérielle d'une personne dépasse constamment 140/90, quel est le risque médical ?", options: ["Une usure accrue des artères augmentant le risque d'AVC", "Une amélioration de la circulation et de l'énergie", "Une baisse des maux de tête et de la fatigue", "Une élimination naturelle du cholestérol"], correctAnswer: "Une usure accrue des artères augmentant le risque d'AVC", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous ne renouvelez pas l'immatriculation de votre voiture auprès du DMV de Californie avant la date d'expiration, que risquez-vous ?", options: ["Des frais de pénalité progressifs et une amende routière", "Un remboursement automatique par le DMV", "L'obligation de passer un nouveau permis", "Une interdiction permanente de conduire en Californie"], correctAnswer: "Des frais de pénalité progressifs et une amende routière", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si un propriétaire bailleur décide de rompre un contrat de location sans motif légitime sous le régime de la loi californienne, que risque-t-il ?", options: ["Des poursuites judiciaires et le versement d'indemnités de relogement", "Une réduction de ses impôts fonciers pour compenser", "Le soutien gratuit de l'association des locataires", "Une amende symbolique de la mairie de son quartier"], correctAnswer: "Des poursuites judiciaires et le versement d'indemnités de relogement", explanation: "")
        ]
    )

    // MARK: - Exercise 7: Advanced What’s Wrong Here?
    private static let exercise7 = Exercise(
        title: "Qu'est-ce qui ne va pas ici ? (Avancé)",
        instructions: "Identifiez l'erreur de logique dans la situation ou la phrase.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a souscrit à un contrat d'assurance habitation pour couvrir les frais de sa consultation dentaire.", options: ["L'assurance habitation ne couvre pas les soins de santé ou dentaires", "Les soins dentaires sont gratuits pour tous", "Le dentiste est un employé de la compagnie d'assurance", "Les soins de santé sont couverts par l'assurance auto"], correctAnswer: "L'assurance habitation ne couvre pas les soins de santé ou dentaires", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a envoyé son formulaire de déclaration d'impôts 2026 en l'adressant au DMV pour obtenir son remboursement.", options: ["La déclaration d'impôts s'envoie au fisc (IRS/FTB) et non au DMV", "Le DMV s'occupe des remboursements d'impôts fonciers", "L'IRS gère les permis de conduire en Californie", "Le fisc n'accepte que les enveloppes vertes"], correctAnswer: "La déclaration d'impôts s'envoie au fisc (IRS/FTB) et non au DMV", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Pour faire face à la coupure de courant générale de PG&E, il a branché son groupe électrogène à l'intérieur de sa chambre fermée.", options: ["Faire fonctionner un groupe électrogène à l'intérieur expose à une intoxication mortelle au monoxyde de carbone", "Le groupe électrogène a besoin de lumière pour fonctionner", "Le courant ne peut pas circuler à travers les murs de la chambre", "Il faut allumer des bougies à côté du réservoir d'essence"], correctAnswer: "Faire fonctionner un groupe électrogène à l'intérieur expose à une intoxication mortelle au monoxyde de carbone", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Pour économiser l'eau pendant la sécheresse en Californie, il a décidé d'arroser sa pelouse en continu toute la journée sous le soleil.", options: ["Arroser toute la journée en plein soleil gaspille l'eau par évaporation et ne l'économise pas", "La pelouse va geler si elle est arrosée au soleil", "L'eau du tuyau devient toxique sous l'effet de la chaleur", "Il faut utiliser de l'eau gazeuse pour arroser les plantes"], correctAnswer: "Arroser toute la journée en plein soleil gaspille l'eau par évaporation et ne l'économise pas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le patient a arrêté de prendre ses antibiotiques dès le deuxième jour parce qu'il n'avait plus de fièvre.", options: ["Il faut suivre le traitement complet pour éliminer l'infection et éviter une résistance bactérienne", "Les antibiotiques perdent leur efficacité après le premier jour", "La fièvre est le seul indicateur d'une infection virale", "Il faut doubler la dose le troisième jour pour compenser"], correctAnswer: "Il faut suivre le traitement complet pour éliminer l'infection et éviter une résistance bactérienne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a demandé sa carte de prestations de retraite de Sécurité Sociale à l'âge de 25 ans après son premier mois de travail.", options: ["Les prestations de retraite de la Sécurité Sociale exigent d'avoir l'âge légal de départ (au moins 62 ans)", "Il faut avoir travaillé 50 ans au même poste pour en bénéficier", "La Sécurité Sociale ne verse des retraites qu'aux personnes nées à l'étranger", "La carte de retraite s'obtient automatiquement à la naissance"], correctAnswer: "Les prestations de retraite de la Sécurité Sociale exigent d'avoir l'âge légal de départ (au moins 62 ans)", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Pour éteindre le départ de feu provoqué par de l'huile de friture dans sa cuisine, elle a jeté un grand seau d'eau froide sur la poêle.", options: ["Jeter de l'eau sur un feu d'huile ou de graisse provoque une explosion de vapeur et propage l'incendie", "L'eau froide va éteindre le feu trop rapidement et faire éclater la poêle", "Le feu de friture ne s'éteint qu'en utilisant de la farine ou du sucre", "Il faut couvrir la poêle avec un torchon humide chaud uniquement"], correctAnswer: "Jeter de l'eau sur un feu d'huile ou de graisse provoque une explosion de vapeur et propage l'incendie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a contesté son amende routière pour excès de vitesse en affirmant que sa voiture n'avait pas de compteur de vitesse.", options: ["L'absence ou le dysfonctionnement d'un équipement obligatoire ne dispense pas du respect des limites de vitesse", "Le compteur de vitesse est facultatif sur les voitures anciennes", "Les policiers ne peuvent verbaliser que les voitures munies d'un radar interne", "L'excès de vitesse n'est passible d'une amende que sur l'autoroute"], correctAnswer: "L'absence ou le dysfonctionnement d'un équipement obligatoire ne dispense pas du respect des limites de vitesse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Pour protéger sa maison contre les cambriolages pendant son absence, il a écrit le mot de passe de son système d'alarme sur sa boîte aux lettres.", options: ["Laisser le code visible en public facilite l'accès aux cambrioleurs et annule la sécurité", "Le code doit être inscrit sur la porte d'entrée principale pour les pompiers", "La boîte aux lettres doit rester ouverte pour les paquets volumineux", "Le système d'alarme ne fonctionne pas lorsque la boîte aux lettres est vide"], correctAnswer: "Laisser le code visible en public facilite l'accès aux cambrioleurs et annule la sécurité", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a pris une double dose de somnifères pour être bien réveillée et vigilante avant de prendre l'autoroute.", options: ["Les somnifères provoquent de la somnolence et diminuent fortement les réflexes", "Les somnifères n'agissent que si l'on boit du thé chaud juste après", "Il faut prendre des vitamines en même temps que les somnifères", "La conduite sous somnifères est recommandée par le DMV en cas de stress"], correctAnswer: "Les somnifères provoquent de la somnolence et diminuent fortement les réflexes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le propriétaire a augmenté le loyer de son locataire de 50 % en Californie en se basant sur une simple entente verbale.", options: ["Les augmentations de loyer sont encadrées par la loi et nécessitent un préavis écrit formel", "Les augmentations de loyer se font par SMS uniquement", "Le locataire doit fixer lui-même le montant de l'augmentation", "Il est interdit d'augmenter le loyer d'un appartement meublé"], correctAnswer: "Les augmentations de loyer sont encadrées par la loi et nécessitent un préavis écrit formel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a appliqué de la crème solaire sur ses vêtements d'hiver pour éviter d'avoir froid en plein blizzard.", options: ["La crème solaire sert à protéger la peau des rayons UV, pas à réchauffer le corps", "La crème solaire va dissoudre les fibres synthétiques des manteaux", "Le blizzard détruit l'efficacité protectrice de la crème solaire sur le tissu", "Il faut appliquer de la crème solaire sur les yeux pour éviter la neige"], correctAnswer: "La crème solaire sert à protéger la peau des rayons UV, pas à réchauffer le corps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a contacté sa banque pour contester une panne de sa connexion internet domestique.", options: ["La banque ne gère pas les abonnements ou les pannes des fournisseurs d'accès internet", "Le banquier peut réparer le modem si le compte est bien approvisionné", "La panne internet est gérée par les services sociaux du comté", "Il faut payer sa facture de banque en ligne pour rétablir la connexion"], correctAnswer: "La banque ne gère pas les abonnements ou les pannes des fournisseurs d'accès internet", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le conducteur a franchi la ligne blanche continue double pour doubler un camion sur une route de montagne en Californie.", options: ["Il est interdit de franchir une double ligne continue jaune ou blanche pour effectuer un dépassement", "Le dépassement est autorisé si le camion roule à moins de 50 mph", "Le marquage au sol n'est valable que par beau temps en plaine", "Il faut klaxonner trois fois avant de franchir la double ligne"], correctAnswer: "Il est interdit de franchir une double ligne continue jaune ou blanche pour effectuer un dépassement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a placé une poêle en métal dans le four à micro-ondes pour faire chauffer son dîner.", options: ["Le métal ne doit pas être mis dans un micro-ondes car cela peut provoquer des étincelles et un incendie", "Le micro-ondes ne chauffe que les récipients en aluminium épais", "La poêle va absorber toutes les ondes et refroidir la nourriture", "Il faut enlever le couvercle de la poêle métallique uniquement"], correctAnswer: "Le métal ne doit pas être mis dans un micro-ondes car cela peut provoquer des étincelles et un incendie", explanation: "")
        ]
    )

    // MARK: - Exercise 8: Advanced Phrase Completion
    private static let exercise8 = Exercise(
        title: "Complétion d'expressions avancée",
        instructions: "Complétez l'expression ou le dicton traditionnel avec le mot approprié.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Qui sème le vent récolte ___.", options: ["la tempête", "la pluie", "les nuages", "la récolte"], correctAnswer: "la tempête", explanation: "C'est l'expression proverbiale traditionnelle."),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Pierre qui roule n'amasse pas ___.", options: ["mousse", "poussière", "terre", "argent"], correctAnswer: "mousse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Après la pluie, vient le ___.", options: ["beau temps", "soleil", "vent", "froid"], correctAnswer: "beau temps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Il ne faut pas vendre la peau de l'ours avant de l'avoir ___.", options: ["tué", "vendu", "attrapé", "chassé"], correctAnswer: "tué", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Ne mettez pas tous vos œufs dans le même ___.", options: ["panier", "carton", "sac", "nid"], correctAnswer: "panier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : C'est en forgeant qu'on devient ___.", options: ["forgeron", "artisan", "habile", "maître"], correctAnswer: "forgeron", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Mieux vaut prévenir que ___.", options: ["guérir", "souffrir", "pleurer", "attendre"], correctAnswer: "guérir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Les murs ont des ___.", options: ["oreilles", "yeux", "voix", "secrets"], correctAnswer: "oreilles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Quand le chat n'est pas là, les souris ___.", options: ["dansent", "mangent", "dorment", "courent"], correctAnswer: "dansent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Tout ce qui brille n'est pas ___.", options: ["or", "argent", "diamant", "lumière"], correctAnswer: "or", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Petit à petit, l'oiseau fait son ___.", options: ["nid", "chemin", "voyage", "nidification"], correctAnswer: "nid", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : L'habit ne fait pas le ___.", options: ["moine", "prêtre", "roi", "soldat"], correctAnswer: "moine", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Les bons comptes font les bons ___.", options: ["amis", "voisins", "commerçants", "affaires"], correctAnswer: "amis", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Rien ne sert de courir, il faut partir à ___.", options: ["point", "l'heure", "temps", "vitesse"], correctAnswer: "point", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Complétez l'expression : Il faut battre le fer pendant qu'il est ___.", options: ["chaud", "froid", "malléable", "rouge"], correctAnswer: "chaud", explanation: "")
        ]
    )

    // MARK: - Exercise 9: Homonyms (Easy)
    private static let exercise9 = Exercise(
        title: "Homonymes (Facile)",
        instructions: "Choisissez la bonne paire d'homonymes pour compléter les phrases.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "[tante / tente] Ma ___ habite dans une jolie maison à Napa. Nous avons monté la ___ dans le jardin.", options: ["tante...tente", "tente...tante", "tante...tante", "tente...tente"], correctAnswer: "tante...tente", explanation: "'Tante' est la sœur d'un parent, et 'tente' est l'abri de toile."),
            ExerciseItem(id: UUID(), prompt: "[voix / voie] Sa ___ est très mélodieuse. Cette ___ ferrée mène à la gare de triage.", options: ["voix...voie", "voie...voix", "voix...voix", "voie...voie"], correctAnswer: "voix...voie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[pâte / patte] La ___ à pizza doit lever pendant deux heures. Le chien s'est blessé à la ___ avant.", options: ["pâte...patte", "patte...pâte", "pâte...pâte", "patte...patte"], correctAnswer: "pâte...patte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[mur / mûr] Le ___ de clôture a été repeint en blanc. Ce fruit n'est pas encore ___ pour la récolte.", options: ["mur...mûr", "mûr...mur", "mur...mur", "mûr...mûr"], correctAnswer: "mur...mûr", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[champ / chant] Les vaches paissent dans le ___. Le ___ du coq nous a réveillés à l'aube.", options: ["champ...chant", "chant...champ", "champ...champ", "chant...chant"], correctAnswer: "champ...chant", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[signe / cygne] Il a fait un ___ d'acquiescement. Le ___ glisse gracieusement sur l'eau.", options: ["signe...cygne", "cygne...signe", "signe...signe", "cygne...cygne"], correctAnswer: "signe...cygne", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[mer / mère] La ___ Méditerranée est calme aujourd'hui. Ma ___ prépare un gâteau au chocolat.", options: ["mer...mère", "mère...mer", "mer...mer", "mère...mère"], correctAnswer: "mer...mère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[foi / fois] Il a agi en toute bonne ___. C'est la première ___ que je visite ce musée.", options: ["foi...fois", "fois...foi", "foi...foi", "fois...fois"], correctAnswer: "foi...fois", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[col / colle] Le ___ de sa veste est en velours. Utilisez de la ___ pour réparer ce vase.", options: ["col...colle", "colle...col", "col...col", "colle...colle"], correctAnswer: "col...colle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[sain / saint] Un esprit ___ dans un corps sain. Saint Denis est le patron des ébénistes.", options: ["sain...saint", "saint...sain", "sain...sain", "saint...saint"], correctAnswer: "sain...saint", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[vert / verre] Ce ___ à vin est en cristal. Le feu tricolore est passé au ___.", options: ["verre...vert", "vert...verre", "verre...verre", "vert...vert"], correctAnswer: "verre...vert", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[maire / mère] Monsieur le ___ a prononcé un discours officiel. Notre ___ nous accompagne au parc.", options: ["maire...mère", "mère...maire", "maire...maire", "mère...mère"], correctAnswer: "maire...mère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[poids / pois] La balance indique un ___ de deux kilos. Les ___ gourmands sont délicieux en salade.", options: ["poids...pois", "pois...poids", "poids...poids", "pois...pois"], correctAnswer: "poids...pois", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[cours / cour] Le ___ de français commence à dix heures. Les élèves courent dans la ___.", options: ["cours...cour", "cour...cours", "cours...cours", "cour...cour"], correctAnswer: "cours...cour", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[sur / sûr] La tasse est posée ___ la table de chevet. Je suis ___ que nous avons fermé la porte.", options: ["sur...sûr", "sûr...sur", "sur...sur", "sûr...sûr"], correctAnswer: "sur...sûr", explanation: "")
        ]
    )

    // MARK: - Exercise 10: Easy Analogies
    private static let easyAnalogies = Exercise(
        title: "Analogies faciles",
        instructions: "Choisissez le mot qui complète le mieux la relation d'analogie.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "LE CHAT est à MIAULER ce que LE CHIEN est à ___", options: ["Aboyer", "Rugir", "Chanter", "Siffler"], correctAnswer: "Aboyer", explanation: "Le chat miaule, le chien aboie."),
            ExerciseItem(id: UUID(), prompt: "LA PLUIE est à PARAPLUIE ce que LE SOLEIL est à ___", options: ["Lunettes de soleil", "Manteau", "Bottes", "Parapluie"], correctAnswer: "Lunettes de soleil", explanation: "Le parapluie protège de la pluie, les lunettes de soleil protègent du soleil."),
            ExerciseItem(id: UUID(), prompt: "L'ENSEIGNANT est à L'ÉCOLE ce que LE MÉDECIN est à ___", options: ["L'hôpital", "La ferme", "L'aéroport", "Le tribunal"], correctAnswer: "L'hôpital", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LA VOITURE est à LA ROUTE ce que LE TRAIN est à ___", options: ["Les rails", "Le ciel", "L'océan", "La forêt"], correctAnswer: "Les rails", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'EAU est à LIQUIDE ce que LA GLACE est à ___", options: ["Solide", "Gazeux", "Vapeur", "Chaud"], correctAnswer: "Solide", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LA PLUME est à L'OISEAU ce que LA FOURRURE est à ___", options: ["Le mammifère", "Le poisson", "Le reptile", "L'insecte"], correctAnswer: "Le mammifère", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LE LIVRE est à LIRE ce que LA CHANSON est à ___", options: ["Écouter", "Manger", "Peindre", "Danser"], correctAnswer: "Écouter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LE PEINTRE est à LA TOILE ce que L'ÉCRIVAIN est à ___", options: ["Le livre", "Le pinceau", "La sculpture", "La musique"], correctAnswer: "Le livre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LE PIANO est à LA MUSIQUE ce que LE PINCEAU est à ___", options: ["La peinture", "La cuisine", "Le sport", "La lecture"], correctAnswer: "La peinture", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LA FLEUR est au JARDIN ce que LE COQUILLAGE est à ___", options: ["La plage", "La montagne", "La forêt", "La ville"], correctAnswer: "La plage", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'HORLOGE est au TEMPS ce que LE THERMOMÈTRE est à ___", options: ["La température", "La pression", "La distance", "Le poids"], correctAnswer: "La température", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LE VOLANT est à LA VOITURE ce que LE GUIDON est au ___", options: ["Vélo", "Bateau", "Avion", "Train"], correctAnswer: "Vélo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LA BOUTEILLE est au BOUCHON ce que LA MAISON est au ___", options: ["Toit", "Jardin", "Sol", "Garage"], correctAnswer: "Toit", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LE CUISINIER est aux PLATS ce que LE BOULANGER est au ___", options: ["Pain", "Lait", "Légume", "Viande"], correctAnswer: "Pain", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "LE ROUGE est à LA COULEUR ce que LA ROSE est à ___", options: ["La fleur", "L'arbre", "Le fruit", "Le légume"], correctAnswer: "La fleur", explanation: "")
        ]
    )

    // MARK: - Exercise 11: Easy Cause and Effect
    private static let easyCauseEffect = Exercise(
        title: "Cause et effet faciles",
        instructions: "Choisissez la conséquence logique de la situation décrite.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Si vous laissez une casserole d'eau bouillante sur le feu sans surveillance pendant une heure, que se passera-t-il ?", options: ["L'eau va s'évaporer complètement", "L'eau va se transformer en glace", "L'eau va devenir plus froide", "La casserole va grossir"], correctAnswer: "L'eau va s'évaporer complètement", explanation: "L'eau s'évapore sous l'effet de la chaleur continue."),
            ExerciseItem(id: UUID(), prompt: "Si vous oubliez d'arroser votre plante d'intérieur pendant tout un mois en été, quel sera le résultat ?", options: ["La plante va flétrir et risquer de mourir", "La plante va fleurir abondamment", "La plante va produire des fruits géants", "La plante va grandir deux fois plus vite"], correctAnswer: "La plante va flétrir et risquer de mourir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous mettez une bouteille d'eau en verre remplie à ras bord au congélateur toute la nuit, que se passera-t-il ?", options: ["La bouteille va se briser sous la pression de la glace", "L'eau restera liquide et tiède", "La bouteille va rétrécir sans casser", "L'eau va s'évaporer à travers le verre"], correctAnswer: "La bouteille va se briser sous la pression de la glace", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous oubliez de recharger la batterie de votre téléphone portable pendant trois jours de suite, que se passera-t-il ?", options: ["Le téléphone s'éteindra par manque d'énergie", "Le téléphone changera de couleur", "Le téléphone appellera automatiquement la police", "La batterie produira de l'électricité"], correctAnswer: "Le téléphone s'éteindra par manque d'énergie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous marchez sous une pluie battante pendant une heure sans parapluie ni imperméable, quel sera le résultat ?", options: ["Vos vêtements seront totalement trempés", "Vous resterez parfaitement sec", "Vous aurez très chaud et ferez de la buée", "Vos chaussures vont s'envoler"], correctAnswer: "Vos vêtements seront totalement trempés", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous rangez des aliments périssables sur le comptoir de la cuisine au lieu de les mettre au réfrigérateur en été, que se passera-t-il ?", options: ["Les aliments vont rapidement se gâter et pourrir", "Les aliments vont rester frais indéfiniment", "Les aliments vont cuire tout seuls", "Les aliments vont se congeler spontanément"], correctAnswer: "Les aliments vont rapidement se gâter et pourrir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous appuyez sur l'interrupteur d'une lampe dont l'ampoule est grillée, que se passera-t-il ?", options: ["La lampe restera éteinte", "La lampe va s'allumer avec une faible lueur", "L'ampoule va se réparer d'elle-même", "Le disjoncteur va sauter immédiatement"], correctAnswer: "La lampe restera éteinte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous laissez du chocolat noir sur le tableau de bord de votre voiture garée en plein soleil en Californie en été, quel sera le résultat ?", options: ["Le chocolat va fondre complètement", "Le chocolat va durcir comme de la pierre", "Le chocolat va se transformer en poudre", "Le chocolat va disparaître par évaporation"], correctAnswer: "Le chocolat va fondre complètement", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous ajoutez trois cuillères à soupe de sucre en poudre dans une tasse de thé chaud et remuez, que se passera-t-il ?", options: ["Le sucre va se dissoudre et sucrer le thé", "Le sucre va geler et former des glaçons", "Le thé va devenir salé et amer", "Le sucre va s'évaporer instantanément"], correctAnswer: "Le sucre va se dissoudre et sucrer le thé", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous touchez accidentellement une poêle métallique brûlante à mains nues, quelle sera la conséquence ?", options: ["Vous allez vous brûler la peau de la main", "Vos mains vont devenir très froides", "La poêle va refroidir instantanément", "Votre main va devenir bleue"], correctAnswer: "Vous allez vous brûler la peau de la main", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous mélangez du sel de table dans un verre d'eau tiède et remuez bien, quel sera le résultat ?", options: ["Le sel va se dissoudre complètement dans l'eau", "L'eau va se transformer en glace solide", "Le sel va flotter à la surface sous forme de cristaux", "Le verre va se briser à cause de la réaction"], correctAnswer: "Le sel va se dissoudre complètement dans l'eau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous laissez la porte du congélateur grande ouverte pendant toute une journée d'été, que se passera-t-il ?", options: ["Les aliments congelés vont décongeler et se gâter", "Le congélateur va fabriquer plus de glace", "La cuisine va se transformer en patinoire", "La température interne va baisser encore plus"], correctAnswer: "Les aliments congelés vont décongeler et se gâter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous oubliez de mettre de l'essence ou de recharger votre véhicule avant un long trajet, que se passera-t-il ?", options: ["La voiture tombera en panne sèche au milieu de la route", "Le moteur produira son propre carburant", "La voiture avancera deux fois plus vite", "Le réservoir se remplira tout seul par condensation"], correctAnswer: "La voiture tombera en panne sèche au milieu de la route", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous portez des lunettes de soleil teintées très sombres dans une pièce sans lumière, quelle sera la conséquence ?", options: ["Vous aurez beaucoup de mal à voir ce qui vous entoure", "Vous y verrez beaucoup plus clair dans le noir", "Les lunettes vont éclairer la pièce", "Vos yeux vont changer de couleur"], correctAnswer: "Vous aurez beaucoup de mal à voir ce qui vous entoure", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si vous semez des graines de radis dans une terre humide et fertile sous un climat tempéré, quel sera le résultat ?", options: ["Les graines vont germer et de petites plantes vont pousser", "Les graines vont se transformer en cailloux", "La terre va s'assécher instantanément", "Des arbres géants vont pousser en 24 heures"], correctAnswer: "Les graines vont germer et de petites plantes vont pousser", explanation: "")
        ]
    )

    // MARK: - Exercise 12: Easy What's Wrong Here
    private static let easyWhatsWrong = Exercise(
        title: "Qu'est-ce qui ne va pas ici ? (Facile)",
        instructions: "Identifiez l'erreur de logique dans la situation ou la phrase.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis ses gants en laine pour taper plus vite sur l'écran tactile de son smartphone.", options: ["Les gants en laine isolent et ne fonctionnent pas sur les écrans tactiles", "Les gants vont rayer l'écran en verre", "Les gants rendent le téléphone plus lourd", "Il faut utiliser un marteau"], correctAnswer: "Les gants en laine isolent et ne fonctionnent pas sur les écrans tactiles", explanation: "Les écrans tactiles capacitifs nécessitent le contact direct de la peau ou de gants conducteurs spécialisés."),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a ouvert sa fenêtre en plein milieu d'une tempête de neige pour réchauffer son salon.", options: ["Ouvrir la fenêtre laisse entrer l'air glacial et refroidit la pièce", "La neige va transformer le salon en piscine", "La fenêtre va fondre sous l'effet du vent", "Il faut allumer la climatisation"], correctAnswer: "Ouvrir la fenêtre laisse entrer l'air glacial et refroidit la pièce", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le mécanicien a remplacé l'huile de moteur usée par du jus d'orange pour nettoyer le moteur.", options: ["Le jus d'orange est sucré, corrosif et va endommager gravement le moteur", "L'huile de moteur doit être de couleur orange pour fonctionner", "Le moteur va consommer moins de carburant", "Le jus d'orange va s'évaporer instantanément sans aucun dommage"], correctAnswer: "Le jus d'orange est sucré, corrosif et va endommager gravement le moteur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis ses lunettes de soleil pour mieux y voir dans le noir complet.", options: ["Les lunettes de soleil réduisent la lumière et n'aident pas dans le noir", "Les lunettes de soleil brillent dans le noir", "On ne peut pas porter de lunettes après 20 heures", "Les lunettes de soleil font de la lumière bleue"], correctAnswer: "Les lunettes de soleil réduisent la lumière et n'aident pas dans le noir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a utilisé une passoire pour transporter de l'eau d'un seau à une bouteille.", options: ["L'eau passe à travers les trous de la passoire et s'écoule", "La passoire va dissoudre l'eau", "L'eau devient toxique au contact de la passoire", "Il faut utiliser une fourchette"], correctAnswer: "L'eau passe à travers les trous de la passoire et s'écoule", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a branché son grille-pain sur le tuyau d'arrivée d'eau pour le faire chauffer.", options: ["Le grille-pain a besoin d'électricité et non d'eau pour fonctionner", "Le grille-pain va laver le pain", "L'eau va rendre le pain plus croustillant", "Il faut utiliser du savon liquide"], correctAnswer: "Le grille-pain a besoin d'électricité et non d'eau pour fonctionner", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le cuisinier a ajouté du sucre en poudre dans la vinaigrette pour la rendre plus acide.", options: ["Le sucre adoucit et atténue l'acidité au lieu de l'augmenter", "Le sucre rend le vinaigre bleu", "La vinaigrette va bouillir", "Il faut utiliser de l'huile d'olive uniquement"], correctAnswer: "Le sucre adoucit et atténue l'acidité au lieu de l'augmenter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis ses bottes en caoutchouc pour marcher sur son tapis de salon propre et sec afin d'éviter de se mouiller les pieds.", options: ["Il n'y a pas d'eau dans le salon sec et les bottes ne sont pas nécessaires", "Les bottes vont fondre sur le tapis", "Le tapis va absorber le caoutchouc des bottes", "Il faut porter des chaussettes en laine mouillées"], correctAnswer: "Il n'y a pas d'eau dans le salon sec et les bottes ne sont pas nécessaires", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le jardinier a tondu sa pelouse en plastique avec une tondeuse à gazon thermique pour la faire grandir.", options: ["La pelouse en plastique ne grandit pas et la tondeuse risque de l'abîmer", "La pelouse va changer de couleur sous l'effet de l'essence", "Il faut utiliser de l'eau gazeuse pour arroser le plastique", "La tondeuse va s'envoler"], correctAnswer: "La pelouse en plastique ne grandit pas et la tondeuse risque de l'abîmer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a mis ses clés de maison dans le congélateur pour éviter qu'on ne les lui vole.", options: ["Mettre les clés au congélateur n'empêche pas le vol et risque de les givrer", "Les clés vont fondre sous l'effet du froid", "Le congélateur va s'ouvrir tout seul", "Il faut ranger les clés dans la boîte aux lettres"], correctAnswer: "Mettre les clés au congélateur n'empêche pas le vol et risque de les givrer", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Le pilote de ligne a garé son avion sur une place de parking réservée aux vélos.", options: ["Un avion est beaucoup trop grand pour un parking à vélos", "L'avion va s'envoler s'il n'est pas attaché avec un antivol", "Le parking pour vélos est gratuit pour les avions", "Il faut utiliser une piste d'atterrissage en bois"], correctAnswer: "Un avion est beaucoup trop grand pour un parking à vélos", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a mis son manteau de fourrure d'hiver pour aller se baigner dans la mer en été.", options: ["Un manteau de fourrure est lourd, chaud et inadapté à la baignade", "La fourrure va dissoudre l'eau salée", "Le soleil va faire fondre le manteau", "Il faut porter des bottes de ski"], correctAnswer: "Un manteau de fourrure est lourd, chaud et inadapté à la baignade", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a lavé son linge délicat en soie dans le lave-vaisselle.", options: ["On lave le linge dans une machine à laver et non dans un lave-vaisselle", "Le lave-vaisselle va colorer le linge en jaune", "Le linge va devenir propre et repassé", "Il faut utiliser du liquide de rinçage"], correctAnswer: "On lave le linge dans une machine à laver et non dans un lave-vaisselle", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Il a écrit son testament avec de la craie blanche sur un tableau d'école effaçable.", options: ["Un document légal doit être écrit sur un support permanent et non effaçable", "La craie blanche est réservée aux signatures électroniques", "Le tableau d'école va conserver le testament indéfiniment", "Il faut utiliser un crayon à papier de couleur rouge"], correctAnswer: "Un document légal doit être écrit sur un support permanent et non effaçable", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Trouvez l'erreur logique : Elle a mis ses chaussures de sport aux mains pour courir plus vite.", options: ["Les chaussures se portent aux pieds et non aux mains", "Les mains vont s'allonger sous l'effort", "Il faut utiliser des chaussettes en laine aux mains", "Les chaussures vont s'user trop vite"], correctAnswer: "Les chaussures se portent aux pieds et non aux mains", explanation: "")
        ]
    )

    // MARK: - Exercise 13: Easy Sequencing
    private static let easySequencing = Exercise(
        title: "Séquençage facile",
        instructions: "Remettez les étapes logiques de l'activité dans le bon ordre.",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Comment faire du thé ?", options: ["Faire chauffer de l'eau", "Placer le sachet de thé dans la tasse", "Verser l'eau chaude sur le sachet", "Laisser infuser et retirer le sachet"], correctAnswer: "Faire chauffer de l'eau | Placer le sachet de thé dans la tasse | Verser l'eau chaude sur le sachet | Laisser infuser et retirer le sachet", explanation: "Ordre logique des étapes pour préparer du thé."),
            ExerciseItem(id: UUID(), prompt: "Comment laver la vaisselle à la main ?", options: ["Débarrasser les assiettes des restes de nourriture", "Remplir l'évier d'eau chaude et ajouter du liquide vaisselle", "Frotter la vaisselle avec une éponge", "Rincer à l'eau claire et laisser sécher"], correctAnswer: "Débarrasser les assiettes des restes de nourriture | Remplir l'évier d'eau chaude et ajouter du liquide vaisselle | Frotter la vaisselle avec une éponge | Rincer à l'eau claire et laisser sécher", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment envoyer une lettre par la poste ?", options: ["Écrire le message et le mettre dans l'enveloppe", "Écrire l'adresse du destinataire sur l'enveloppe", "Coller un timbre au tarif en vigueur", "Déposer l'enveloppe dans une boîte aux lettres"], correctAnswer: "Écrire le message et le mettre dans l'enveloppe | Écrire l'adresse du destinataire sur l'enveloppe | Coller un timbre au tarif en vigueur | Déposer l'enveloppe dans une boîte aux lettres", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment démarrer une voiture ?", options: ["S'installer au volant et attacher sa ceinture", "Vérifier que le levier est au point mort ou parking", "Insérer la clé ou appuyer sur le bouton de démarrage", "Vérifier les rétroviseurs avant de s'engager"], correctAnswer: "S'installer au volant et attacher sa ceinture | Vérifier que le levier est au point mort ou parking | Insérer la clé ou appuyer sur le bouton de démarrage | Vérifier les rétroviseurs avant de s'engager", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Comment passer un appel téléphonique ?", options: ["Déverrouiller son téléphone portable", "Ouvrir l'application téléphone ou le clavier", "Saisir le numéro ou sélectionner le contact", "Appuyer sur le bouton vert d'appel"], correctAnswer: "Déverrouiller son téléphone portable | Ouvrir l'application téléphone ou le clavier | Saisir le numéro ou sélectionner le contact | Appuyer sur le bouton vert d'appel", explanation: "")
        ]
    )

    // MARK: - Exercise 14: Medium Word Association
    private static let mediumWordAssociation = Exercise(
        title: "Association de mots moyenne",
        instructions: "Choisissez le mot le plus étroitement associé au mot donné.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ÉCRIVAIN", options: ["Livre", "Pinceau", "Ciseau", "Marteau"], correctAnswer: "Livre", explanation: "L'écrivain écrit des livres."),
            ExerciseItem(id: UUID(), prompt: "BOULANGER", options: ["Pain", "Viande", "Fleur", "Livre"], correctAnswer: "Pain", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "CHIRURGIEN", options: ["Scalpel", "Gavel", "Pinceau", "Marteau"], correctAnswer: "Scalpel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "JUGE", options: ["Marteau", "Pinceau", "Scalpel", "Ciseau"], correctAnswer: "Marteau", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "PEINTRE", options: ["Toile", "Livre", "Pain", "Marteau"], correctAnswer: "Toile", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "JARDINIER", options: ["Plantes", "Voitures", "Livres", "Plats"], correctAnswer: "Plantes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "PILOTE", options: ["Avion", "Train", "Bateau", "Vélo"], correctAnswer: "Avion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "BOUTEILLE", options: ["Bouchon", "Toit", "Porte", "Fenêtre"], correctAnswer: "Bouchon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "MAISON", options: ["Toit", "Bouchon", "Pneu", "Aile"], correctAnswer: "Toit", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "VOITURE", options: ["Pneu", "Toit", "Bouchon", "Selle"], correctAnswer: "Pneu", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "VÉLO", options: ["Guidon", "Volant", "Toit", "Bouchon"], correctAnswer: "Guidon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "OISEAU", options: ["Plume", "Écaille", "Fourrure", "Laine"], correctAnswer: "Plume", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "MAMMIFÈRE", options: ["Fourrure", "Plume", "Écaille", "Coquille"], correctAnswer: "Fourrure", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "POISSON", options: ["Écaille", "Plume", "Fourrure", "Laine"], correctAnswer: "Écaille", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "EAU", options: ["Liquide", "Solide", "Gazeux", "Vapeur"], correctAnswer: "Liquide", explanation: "")
        ]
    )

    // MARK: - Exercise 15: Medium Homonyms
    private static let mediumHomonyms = Exercise(
        title: "Homonymes moyens",
        instructions: "Choisissez la bonne paire d'homonymes pour compléter les phrases.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "[poids / pois] Quel est le ___ net indiqué sur le sachet de ___ chiches ?", options: ["poids...pois", "pois...poids", "poids...poids", "pois...pois"], correctAnswer: "poids...pois", explanation: "'Poids' est la mesure de masse, 'pois' est le légume."),
            ExerciseItem(id: UUID(), prompt: "[cours / cour] J'ai un ___ de piano cet après-midi. Les enfants courent dans la ___ de l'immeuble.", options: ["cours...cour", "cour...cours", "cours...cours", "cour...cour"], correctAnswer: "cours...cour", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[tante / tente] Ma ___ est venue nous rendre visite. Nous allons dormir sous la ___ ce soir.", options: ["tante...tente", "tente...tante", "tante...tante", "tente...tente"], correctAnswer: "tante...tente", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[voix / voie] Sa ___ tremble de colère. Il faut suivre cette ___ ferrée.", options: ["voix...voie", "voie...voix", "voix...voix", "voie...voie"], correctAnswer: "voix...voie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "[pâte / patte] La ___ à pain a bien levé. Le chat a une blessure à la ___ gauche.", options: ["pâte...patte", "patte...pâte", "pâte...pâte", "patte...patte"], correctAnswer: "pâte...patte", explanation: "")
        ]
    )

    // MARK: - Exercise 16: Easy Complete the Saying
    private static let easyCompleteSaying = Exercise(
        title: "Compléter l'expression (Facile)",
        instructions: "Complétez l'expression ou le dicton bien connu.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Une pomme par jour éloigne le ___.", options: ["médecin", "dentiste", "professeur", "pharmacien"], correctAnswer: "médecin", explanation: "Expression proverbiale traditionnelle."),
            ExerciseItem(id: UUID(), prompt: "Mieux vaut prévenir que ___.", options: ["guérir", "pleurer", "attendre", "souffrir"], correctAnswer: "guérir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Après la pluie, vient le ___.", options: ["beau temps", "soleil", "vent", "froid"], correctAnswer: "beau temps", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Petit à petit, l'oiseau fait son ___.", options: ["nid", "chemin", "vol", "voyage"], correctAnswer: "nid", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les bons comptes font les bons ___.", options: ["amis", "voisins", "associés", "commerçants"], correctAnswer: "amis", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Rien ne sert de courir, il faut partir à ___.", options: ["point", "temps", "l'heure", "vitesse"], correctAnswer: "point", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il faut battre le fer pendant qu'il est ___.", options: ["chaud", "froid", "malléable", "rouge"], correctAnswer: "chaud", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les murs ont des ___.", options: ["oreilles", "yeux", "voix", "secrets"], correctAnswer: "oreilles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Quand le chat n'est pas là, les souris ___.", options: ["dansent", "dorment", "mangent", "courent"], correctAnswer: "dansent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Tout ce qui brille n'est pas ___.", options: ["or", "argent", "diamant", "lumière"], correctAnswer: "or", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'habit ne fait pas le ___.", options: ["moine", "prêtre", "roi", "soldat"], correctAnswer: "moine", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "On ne fait pas d'omelette sans casser des ___.", options: ["œufs", "coquilles", "pots", "assiettes"], correctAnswer: "œufs", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Vouloir, c'est ___.", options: ["pouvoir", "savoir", "faire", "gagner"], correctAnswer: "pouvoir", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Le silence est ___.", options: ["d'or", "d'argent", "précieux", "rare"], correctAnswer: "d'or", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Chassez le naturel, il revient au ___.", options: ["galop", "pas", "trot", "calme"], correctAnswer: "galop", explanation: "")
        ]
    )

    // MARK: - Exercise 17: Hard Complete the Saying
    private static let hardCompleteSaying = Exercise(
        title: "Compléter l'expression (Difficile)",
        instructions: "Complétez l'expression ou le dicton bien connu.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "Qui sème le vent récolte la ___.", options: ["tempête", "pluie", "terre", "fureur"], correctAnswer: "tempête", explanation: "Expression proverbiale traditionnelle."),
            ExerciseItem(id: UUID(), prompt: "Pierre qui roule n'amasse pas ___.", options: ["mousse", "poussière", "terre", "or"], correctAnswer: "mousse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Il ne faut pas vendre la peau de l'ours avant de l'avoir ___.", options: ["tué", "vendu", "attrapé", "chassé"], correctAnswer: "tué", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Ne mettez pas tous vos œufs dans le même ___.", options: ["panier", "carton", "sac", "nid"], correctAnswer: "panier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "C'est en forgeant qu'on devient ___.", options: ["forgeron", "artisan", "habile", "maître"], correctAnswer: "forgeron", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La nuit, tous les chats sont ___.", options: ["gris", "noirs", "blancs", "mignons"], correctAnswer: "gris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Qui trop embrasse mal ___.", options: ["étreint", "choisit", "prend", "garde"], correctAnswer: "étreint", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Faute de grives, on mange des ___.", options: ["merles", "grives", "oiseaux", "miettes"], correctAnswer: "merles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A bon chat, bon ___.", options: ["rat", "chien", "ami", "chasseur"], correctAnswer: "rat", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Oeil pour oeil, dent pour ___.", options: ["dent", "bouche", "tête", "sang"], correctAnswer: "dent", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "L'enfer est pavé de bonnes ___.", options: ["intentions", "actions", "paroles", "pensées"], correctAnswer: "intentions", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "La fin justifie les ___.", options: ["moyens", "actions", "buts", "efforts"], correctAnswer: "moyens", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Les conseilleurs ne sont pas les ___.", options: ["payeurs", "faiseurs", "amis", "acteurs"], correctAnswer: "payeurs", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A vaincre sans péril, on triomphe sans ___.", options: ["gloire", "honneur", "mérite", "effort"], correctAnswer: "gloire", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un homme averti en vaut ___.", options: ["deux", "trois", "quatre", "dix"], correctAnswer: "deux", explanation: "")
        ]
    )
}
