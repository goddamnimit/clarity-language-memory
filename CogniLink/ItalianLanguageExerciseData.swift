import Foundation

/// Italian: language-section exercises (incl. minimal pairs). Native-authored; review status in LanguageReviewStatus.
struct ItalianLanguageExerciseData {

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
        title: "Trova l'intruso",
        instructions: "Scelga la parola che non appartiene al gruppo.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "categoryCrossoutEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "MELA, PERA, MARTELLO, BANANA", options: ["MELA", "PERA", "MARTELLO", "BANANA"], correctAnswer: "MARTELLO", explanation: "Mela, pera e banana sono frutti; il martello è un attrezzo."),
            ExerciseItem(id: UUID(), prompt: "CANE, TAVOLO, GATTO, CAVALLO", options: ["CANE", "TAVOLO", "GATTO", "CAVALLO"], correctAnswer: "TAVOLO", explanation: "Cane, gatto e cavallo sono animali; il tavolo è un mobile."),
            ExerciseItem(id: UUID(), prompt: "CAMICIA, GONNA, PANTALONI, PIATTO", options: ["CAMICIA", "GONNA", "PANTALONI", "PIATTO"], correctAnswer: "PIATTO", explanation: "Camicia, gonna e pantaloni sono capi di abbigliamento; il piatto serve per mangiare."),
            ExerciseItem(id: UUID(), prompt: "CUCINA, BICICLETTA, SALOTTO, CAMERA", options: ["CUCINA", "BICICLETTA", "SALOTTO", "CAMERA"], correctAnswer: "BICICLETTA", explanation: "Cucina, salotto e camera sono stanze della casa; la bicicletta è un mezzo di trasporto."),
            ExerciseItem(id: UUID(), prompt: "TRENO, AUTOBUS, AEREO, FORMAGGIO", options: ["TRENO", "AUTOBUS", "AEREO", "FORMAGGIO"], correctAnswer: "FORMAGGIO", explanation: "Treno, autobus e aereo sono mezzi di trasporto; il formaggio è un alimento."),
            ExerciseItem(id: UUID(), prompt: "MEDICO, CUOCO, PENNELLO, FALEGNAME", options: ["MEDICO", "CUOCO", "PENNELLO", "FALEGNAME"], correctAnswer: "PENNELLO", explanation: "Medico, cuoco e falegname sono professioni; il pennello è uno strumento."),
            ExerciseItem(id: UUID(), prompt: "MANO, PIEDE, GINOCCHIO, CUSCINO", options: ["MANO", "PIEDE", "GINOCCHIO", "CUSCINO"], correctAnswer: "CUSCINO", explanation: "Mano, piede e ginocchio sono parti del corpo; il cuscino è un oggetto del letto o del divano."),
            ExerciseItem(id: UUID(), prompt: "SEDIA, PANE, PASTA, RISO", options: ["SEDIA", "PANE", "PASTA", "RISO"], correctAnswer: "SEDIA", explanation: "Pane, pasta e riso sono cibi; la sedia è un mobile."),
            ExerciseItem(id: UUID(), prompt: "CACCIAVITE, SEGA, LIMONE, PINZA", options: ["CACCIAVITE", "SEGA", "LIMONE", "PINZA"], correctAnswer: "LIMONE", explanation: "Cacciavite, sega e pinza sono attrezzi da lavoro; il limone è un frutto."),
            ExerciseItem(id: UUID(), prompt: "ROSSO, BLU, QUADERNO, VERDE", options: ["ROSSO", "BLU", "QUADERNO", "VERDE"], correctAnswer: "QUADERNO", explanation: "Rosso, blu e verde sono colori; il quaderno è un oggetto per scrivere."),
            ExerciseItem(id: UUID(), prompt: "LEONE, PATATA, TIGRE, ELEFANTE", options: ["LEONE", "PATATA", "TIGRE", "ELEFANTE"], correctAnswer: "PATATA", explanation: "Leone, tigre ed elefante sono animali; la patata è un ortaggio."),
            ExerciseItem(id: UUID(), prompt: "CAPPOTTO, SCIARPA, FORCHETTA, GUANTI", options: ["CAPPOTTO", "SCIARPA", "FORCHETTA", "GUANTI"], correctAnswer: "FORCHETTA", explanation: "Cappotto, sciarpa e guanti si indossano; la forchetta è una posata."),
            ExerciseItem(id: UUID(), prompt: "CAVOLO, BAGNO, CORRIDOIO, SOFFITTA", options: ["CAVOLO", "BAGNO", "CORRIDOIO", "SOFFITTA"], correctAnswer: "CAVOLO", explanation: "Bagno, corridoio e soffitta sono parti della casa; il cavolo è una verdura."),
            ExerciseItem(id: UUID(), prompt: "CILIEGIA, FRAGOLA, CAROTA, UVA", options: ["CILIEGIA", "FRAGOLA", "CAROTA", "UVA"], correctAnswer: "CAROTA", explanation: "Ciliegia, fragola e uva sono frutti; la carota è un ortaggio."),
            ExerciseItem(id: UUID(), prompt: "LATTE, ACQUA, COLTELLO, SUCCO", options: ["LATTE", "ACQUA", "COLTELLO", "SUCCO"], correctAnswer: "COLTELLO", explanation: "Latte, acqua e succo sono bevande; il coltello è una posata."),
            ExerciseItem(id: UUID(), prompt: "PITTORE, PANETTIERE, ARMADIO, INSEGNANTE", options: ["PITTORE", "PANETTIERE", "ARMADIO", "INSEGNANTE"], correctAnswer: "ARMADIO", explanation: "Pittore, panettiere e insegnante sono mestieri; l'armadio è un mobile."),
            ExerciseItem(id: UUID(), prompt: "OCCHIO, NASO, ORECCHIO, FINESTRA", options: ["OCCHIO", "NASO", "ORECCHIO", "FINESTRA"], correctAnswer: "FINESTRA", explanation: "Occhio, naso e orecchio sono parti del viso; la finestra è parte della casa."),
            ExerciseItem(id: UUID(), prompt: "LUNEDÌ, MARTEDÌ, GENNAIO, VENERDÌ", options: ["LUNEDÌ", "MARTEDÌ", "GENNAIO", "VENERDÌ"], correctAnswer: "GENNAIO", explanation: "Lunedì, martedì e venerdì sono giorni della settimana; gennaio è un mese."),
            ExerciseItem(id: UUID(), prompt: "CUCCHIAIO, FORCHETTA, LENZUOLO, COLTELLINO", options: ["CUCCHIAIO", "FORCHETTA", "LENZUOLO", "COLTELLINO"], correctAnswer: "LENZUOLO", explanation: "Cucchiaio, forchetta e coltellino sono posate; il lenzuolo si usa sul letto."),
            ExerciseItem(id: UUID(), prompt: "ROSA, TULIPANO, SAPONE, MARGHERITA", options: ["ROSA", "TULIPANO", "SAPONE", "MARGHERITA"], correctAnswer: "SAPONE", explanation: "Rosa, tulipano e margherita sono fiori; il sapone serve per lavarsi."),
            ExerciseItem(id: UUID(), prompt: "FRIGORIFERO, LAVATRICE, GIORNALE, FORNO", options: ["FRIGORIFERO", "LAVATRICE", "GIORNALE", "FORNO"], correctAnswer: "GIORNALE", explanation: "Frigorifero, lavatrice e forno sono elettrodomestici; il giornale si legge."),
            ExerciseItem(id: UUID(), prompt: "PRIMAVERA, ESTATE, DOMENICA, AUTUNNO", options: ["PRIMAVERA", "ESTATE", "DOMENICA", "AUTUNNO"], correctAnswer: "DOMENICA", explanation: "Primavera, estate e autunno sono stagioni; la domenica è un giorno della settimana."),
            ExerciseItem(id: UUID(), prompt: "DELFINO, GALLINA, ANATRA, OCA", options: ["DELFINO", "GALLINA", "ANATRA", "OCA"], correctAnswer: "DELFINO", explanation: "Gallina, anatra e oca sono uccelli; il delfino è un mammifero marino."),
            ExerciseItem(id: UUID(), prompt: "ZUCCHERO, SALE, CHITARRA, PEPE", options: ["ZUCCHERO", "SALE", "CHITARRA", "PEPE"], correctAnswer: "CHITARRA", explanation: "Zucchero, sale e pepe si usano in cucina; la chitarra è uno strumento musicale."),
            ExerciseItem(id: UUID(), prompt: "DIVANO, PIOGGIA, NEVE, VENTO", options: ["DIVANO", "PIOGGIA", "NEVE", "VENTO"], correctAnswer: "DIVANO", explanation: "Pioggia, neve e vento sono fenomeni del tempo; il divano è un mobile."),
            ExerciseItem(id: UUID(), prompt: "PENNA, MATITA, BICCHIERE, PENNARELLO", options: ["PENNA", "MATITA", "BICCHIERE", "PENNARELLO"], correctAnswer: "BICCHIERE", explanation: "Penna, matita e pennarello servono per scrivere; il bicchiere serve per bere."),
            ExerciseItem(id: UUID(), prompt: "ROMA, TORINO, PO, FIRENZE", options: ["ROMA", "TORINO", "PO", "FIRENZE"], correctAnswer: "PO", explanation: "Roma, Torino e Firenze sono città; il Po è un fiume."),
            ExerciseItem(id: UUID(), prompt: "LETTO, COMODINO, ARMADIO, FORMICA", options: ["LETTO", "COMODINO", "ARMADIO", "FORMICA"], correctAnswer: "FORMICA", explanation: "Letto, comodino e armadio sono mobili della camera; la formica è un insetto."),
            ExerciseItem(id: UUID(), prompt: "PIZZA, OMBRELLO, LASAGNE, RISOTTO", options: ["PIZZA", "OMBRELLO", "LASAGNE", "RISOTTO"], correctAnswer: "OMBRELLO", explanation: "Pizza, lasagne e risotto sono piatti; l'ombrello ripara dalla pioggia."),
            ExerciseItem(id: UUID(), prompt: "TRE, SETTE, GIALLO, DIECI", options: ["TRE", "SETTE", "GIALLO", "DIECI"], correctAnswer: "GIALLO", explanation: "Tre, sette e dieci sono numeri; il giallo è un colore.")
        ]
    )

    private static let categoryCrossoutHard = Exercise(
        title: "Categorie vicine",
        instructions: "Scelga la parola che non appartiene alla stessa categoria delle altre.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        groupKey: "categoryCrossoutHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "SONATA, SINFONIA, SONETTO, CONCERTO", options: ["SONATA", "SINFONIA", "SONETTO", "CONCERTO"], correctAnswer: "SONETTO", explanation: "Sonata, sinfonia e concerto sono forme musicali; il sonetto è una forma poetica."),
            ExerciseItem(id: UUID(), prompt: "SONETTO, ODE, FUGA, ELEGIA", options: ["SONETTO", "ODE", "FUGA", "ELEGIA"], correctAnswer: "FUGA", explanation: "Sonetto, ode ed elegia sono forme poetiche; la fuga è una forma musicale."),
            ExerciseItem(id: UUID(), prompt: "FEMORE, TIBIA, TENDINE, OMERO", options: ["FEMORE", "TIBIA", "TENDINE", "OMERO"], correctAnswer: "TENDINE", explanation: "Femore, tibia e omero sono ossa; il tendine è un tessuto che unisce muscolo e osso, ma non è un osso."),
            ExerciseItem(id: UUID(), prompt: "PO, ADIGE, GARDA, ARNO", options: ["PO", "ADIGE", "GARDA", "ARNO"], correctAnswer: "GARDA", explanation: "Po, Adige e Arno sono fiumi; il Garda è un lago."),
            ExerciseItem(id: UUID(), prompt: "CUBISMO, SCULTURA, FUTURISMO, BAROCCO", options: ["CUBISMO", "SCULTURA", "FUTURISMO", "BAROCCO"], correctAnswer: "SCULTURA", explanation: "Cubismo, futurismo e barocco sono movimenti artistici; la scultura è una tecnica, un'arte, non un movimento."),
            ExerciseItem(id: UUID(), prompt: "FEGATO, POLMONE, FEMORE, RENE", options: ["FEGATO", "POLMONE", "FEMORE", "RENE"], correctAnswer: "FEMORE", explanation: "Fegato, polmone e rene sono organi; il femore è un osso."),
            ExerciseItem(id: UUID(), prompt: "GIUDICE, AVVOCATO, CANCELLIERE, TESTIMONE", options: ["GIUDICE", "AVVOCATO", "CANCELLIERE", "TESTIMONE"], correctAnswer: "TESTIMONE", explanation: "Giudice, avvocato e cancelliere sono professionisti della giustizia; il testimone è una persona che depone in un processo, non una professione."),
            ExerciseItem(id: UUID(), prompt: "INSULINA, ADRENALINA, EMOGLOBINA, TIROXINA", options: ["INSULINA", "ADRENALINA", "EMOGLOBINA", "TIROXINA"], correctAnswer: "EMOGLOBINA", explanation: "Insulina, adrenalina e tiroxina sono ormoni; l'emoglobina è una proteina del sangue."),
            ExerciseItem(id: UUID(), prompt: "ITALIANO, SPAGNOLO, TEDESCO, FRANCESE", options: ["ITALIANO", "SPAGNOLO", "TEDESCO", "FRANCESE"], correctAnswer: "TEDESCO", explanation: "Italiano, spagnolo e francese sono lingue romanze; il tedesco è una lingua germanica."),
            ExerciseItem(id: UUID(), prompt: "METRO, CHILOMETRO, LITRO, MIGLIO", options: ["METRO", "CHILOMETRO", "LITRO", "MIGLIO"], correctAnswer: "LITRO", explanation: "Metro, chilometro e miglio misurano lunghezze; il litro misura un volume."),
            ExerciseItem(id: UUID(), prompt: "VIOLINO, VIOLA, FLAUTO, VIOLONCELLO", options: ["VIOLINO", "VIOLA", "FLAUTO", "VIOLONCELLO"], correctAnswer: "FLAUTO", explanation: "Violino, viola e violoncello sono strumenti ad arco; il flauto è uno strumento a fiato."),
            ExerciseItem(id: UUID(), prompt: "OBOE, CLARINETTO, TROMBA, FAGOTTO", options: ["OBOE", "CLARINETTO", "TROMBA", "FAGOTTO"], correctAnswer: "TROMBA", explanation: "Oboe, clarinetto e fagotto sono legni; la tromba è un ottone."),
            ExerciseItem(id: UUID(), prompt: "QUARTINA, TERZINA, CAPITOLO, OTTAVA", options: ["QUARTINA", "TERZINA", "CAPITOLO", "OTTAVA"], correctAnswer: "CAPITOLO", explanation: "Quartina, terzina e ottava sono strofe di versi; il capitolo è una parte di un testo in prosa."),
            ExerciseItem(id: UUID(), prompt: "MARTE, VENERE, SIRIO, GIOVE", options: ["MARTE", "VENERE", "SIRIO", "GIOVE"], correctAnswer: "SIRIO", explanation: "Marte, Venere e Giove sono pianeti; Sirio è una stella."),
            ExerciseItem(id: UUID(), prompt: "ADAGIO, ANDANTE, FORTE, ALLEGRO", options: ["ADAGIO", "ANDANTE", "FORTE", "ALLEGRO"], correctAnswer: "FORTE", explanation: "Adagio, andante e allegro indicano la velocità; forte indica l'intensità del suono."),
            ExerciseItem(id: UUID(), prompt: "VERDI, PUCCINI, RAFFAELLO, ROSSINI", options: ["VERDI", "PUCCINI", "RAFFAELLO", "ROSSINI"], correctAnswer: "RAFFAELLO", explanation: "Verdi, Puccini e Rossini sono compositori; Raffaello è un pittore."),
            ExerciseItem(id: UUID(), prompt: "DANTE, PETRARCA, GIOTTO, BOCCACCIO", options: ["DANTE", "PETRARCA", "GIOTTO", "BOCCACCIO"], correctAnswer: "GIOTTO", explanation: "Dante, Petrarca e Boccaccio sono scrittori; Giotto è un pittore."),
            ExerciseItem(id: UUID(), prompt: "BICIPITE, TRICIPITE, OMERO, DELTOIDE", options: ["BICIPITE", "TRICIPITE", "OMERO", "DELTOIDE"], correctAnswer: "OMERO", explanation: "Bicipite, tricipite e deltoide sono muscoli; l'omero è un osso."),
            ExerciseItem(id: UUID(), prompt: "NOME, VERBO, VIRGOLA, AGGETTIVO", options: ["NOME", "VERBO", "VIRGOLA", "AGGETTIVO"], correctAnswer: "VIRGOLA", explanation: "Nome, verbo e aggettivo sono parti del discorso; la virgola è un segno di punteggiatura."),
            ExerciseItem(id: UUID(), prompt: "TRIANGOLO, QUADRATO, CUBO, CERCHIO", options: ["TRIANGOLO", "QUADRATO", "CUBO", "CERCHIO"], correctAnswer: "CUBO", explanation: "Triangolo, quadrato e cerchio sono figure piane; il cubo è un solido."),
            ExerciseItem(id: UUID(), prompt: "ARIETE, TORO, ORIONE, GEMELLI", options: ["ARIETE", "TORO", "ORIONE", "GEMELLI"], correctAnswer: "ORIONE", explanation: "Ariete, Toro e Gemelli sono segni dello zodiaco; Orione è una costellazione che non è un segno zodiacale."),
            ExerciseItem(id: UUID(), prompt: "OSSIGENO, ACQUA, AZOTO, ELIO", options: ["OSSIGENO", "ACQUA", "AZOTO", "ELIO"], correctAnswer: "ACQUA", explanation: "Ossigeno, azoto ed elio sono elementi chimici; l'acqua è un composto di idrogeno e ossigeno."),
            ExerciseItem(id: UUID(), prompt: "ORO, ARGENTO, BRONZO, RAME", options: ["ORO", "ARGENTO", "BRONZO", "RAME"], correctAnswer: "BRONZO", explanation: "Oro, argento e rame sono metalli puri, cioè elementi; il bronzo è una lega di rame e stagno."),
            ExerciseItem(id: UUID(), prompt: "SOPRANO, CONTRALTO, VIOLINO, TENORE", options: ["SOPRANO", "CONTRALTO", "VIOLINO", "TENORE"], correctAnswer: "VIOLINO", explanation: "Soprano, contralto e tenore sono tipi di voce; il violino è uno strumento.")
        ]
    )

    private static let phraseCompletion = Exercise(
        title: "Completi il proverbio",
        instructions: "Scelga la parola che completa correttamente il modo di dire.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        groupKey: "phraseCompletion",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Chi dorme non piglia ___.", options: ["pesci", "sonno", "pane", "uccelli"], correctAnswer: "pesci", explanation: "Il proverbio dice che chi è pigro e dorme troppo perde le occasioni."),
            ExerciseItem(id: UUID(), prompt: "Chi va piano va sano e va ___.", options: ["lontano", "veloce", "avanti", "presto"], correctAnswer: "lontano", explanation: "Significa che procedere con calma e prudenza porta più lontano che la fretta."),
            ExerciseItem(id: UUID(), prompt: "Meglio un uovo oggi che una gallina ___.", options: ["domani", "ieri", "grassa", "nera"], correctAnswer: "domani", explanation: "Vuol dire che è meglio avere subito una piccola cosa certa che aspettarne una più grande ma incerta."),
            ExerciseItem(id: UUID(), prompt: "Can che abbaia non ___.", options: ["morde", "dorme", "corre", "mangia"], correctAnswer: "morde", explanation: "Chi fa molte minacce di solito poi non agisce."),
            ExerciseItem(id: UUID(), prompt: "L'abito non fa il ___.", options: ["monaco", "sarto", "signore", "vestito"], correctAnswer: "monaco", explanation: "Non si deve giudicare una persona dall'aspetto esteriore."),
            ExerciseItem(id: UUID(), prompt: "Ogni lasciata è ___.", options: ["persa", "presa", "buona", "vinta"], correctAnswer: "persa", explanation: "Se si lascia passare un'occasione, di solito non torna più."),
            ExerciseItem(id: UUID(), prompt: "Tra il dire e il fare c'è di mezzo il ___.", options: ["mare", "tempo", "monte", "muro"], correctAnswer: "mare", explanation: "Dire una cosa è facile, farla è molto più difficile."),
            ExerciseItem(id: UUID(), prompt: "Chi trova un amico trova un ___.", options: ["tesoro", "regalo", "fratello", "padrone"], correctAnswer: "tesoro", explanation: "Un vero amico ha un grande valore."),
            ExerciseItem(id: UUID(), prompt: "Una rondine non fa ___.", options: ["primavera", "estate", "nido", "rumore"], correctAnswer: "primavera", explanation: "Un solo segno non basta per essere sicuri che qualcosa sia cambiato."),
            ExerciseItem(id: UUID(), prompt: "Non è tutto oro quel che ___.", options: ["luccica", "pesa", "costa", "vale"], correctAnswer: "luccica", explanation: "Le apparenze possono ingannare: ciò che sembra prezioso può non esserlo."),
            ExerciseItem(id: UUID(), prompt: "Rosso di sera bel tempo ___.", options: ["si spera", "arriverà", "porterà", "sarà"], correctAnswer: "si spera", explanation: "È un detto popolare sul tempo: un cielo rosso al tramonto fa sperare in una bella giornata."),
            ExerciseItem(id: UUID(), prompt: "A caval donato non si guarda in ___.", options: ["bocca", "faccia", "tasca", "stalla"], correctAnswer: "bocca", explanation: "Un regalo va accettato senza criticarlo; guardare i denti del cavallo serve a valutarne l'età."),
            ExerciseItem(id: UUID(), prompt: "Il lupo perde il pelo ma non il ___.", options: ["vizio", "dente", "coraggio", "branco"], correctAnswer: "vizio", explanation: "Le cattive abitudini si cambiano con molta difficoltà."),
            ExerciseItem(id: UUID(), prompt: "Chi semina vento raccoglie ___.", options: ["tempesta", "pioggia", "grano", "neve"], correctAnswer: "tempesta", explanation: "Chi fa del male o provoca guai ne subirà conseguenze ancora più gravi."),
            ExerciseItem(id: UUID(), prompt: "Paese che vai, usanza che ___.", options: ["trovi", "porti", "lasci", "vedi"], correctAnswer: "trovi", explanation: "Ogni luogo ha le sue abitudini e le sue tradizioni."),
            ExerciseItem(id: UUID(), prompt: "L'unione fa la ___.", options: ["forza", "pace", "festa", "famiglia"], correctAnswer: "forza", explanation: "Stando insieme si ottengono risultati che da soli non si raggiungono."),
            ExerciseItem(id: UUID(), prompt: "Chi fa da sé fa per ___.", options: ["tre", "due", "dieci", "tutti"], correctAnswer: "tre", explanation: "Chi si arrangia da solo lavora meglio e più in fretta, come se fosse in tre."),
            ExerciseItem(id: UUID(), prompt: "Roma non fu fatta in un ___.", options: ["giorno", "anno", "mese", "secolo"], correctAnswer: "giorno", explanation: "Le grandi cose richiedono tempo e pazienza."),
            ExerciseItem(id: UUID(), prompt: "Chi tardi arriva male ___.", options: ["alloggia", "mangia", "dorme", "viaggia"], correctAnswer: "alloggia", explanation: "Chi arriva in ritardo trova i posti migliori già occupati."),
            ExerciseItem(id: UUID(), prompt: "Occhio non vede, cuore non ___.", options: ["duole", "batte", "parla", "ama"], correctAnswer: "duole", explanation: "Ciò che non si vede o non si sa non fa soffrire.")
        ]
    )

    private static let synonymsEasy = Exercise(
        title: "Parole con lo stesso significato",
        instructions: "Scelga la parola che ha lo stesso significato di quella in maiuscolo.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "synonymsEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Sinonimo: VELOCE", options: ["rapido", "lento", "tavolo", "silenzioso"], correctAnswer: "rapido", explanation: "Veloce e rapido indicano ciò che si muove o si fa in poco tempo."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: CONTENTO", options: ["triste", "felice", "freddo", "stanco"], correctAnswer: "felice", explanation: "Contento e felice descrivono chi prova gioia o soddisfazione."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: INIZIARE", options: ["finire", "mangiare", "cominciare", "correre"], correctAnswer: "cominciare", explanation: "Iniziare e cominciare significano dare avvio a qualcosa."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: CASA", options: ["abitazione", "strada", "giardino", "negozio"], correctAnswer: "abitazione", explanation: "La casa è il luogo in cui si abita, cioè l'abitazione."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: MEDICO", options: ["paziente", "cuoco", "dottore", "farmacia"], correctAnswer: "dottore", explanation: "Medico e dottore indicano la stessa professione."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: STANCO", options: ["riposato", "veloce", "rumoroso", "esausto"], correctAnswer: "esausto", explanation: "Esausto significa molto stanco, senza più forze."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: BUGIA", options: ["verità", "menzogna", "storia", "sorriso"], correctAnswer: "menzogna", explanation: "Bugia e menzogna indicano entrambe qualcosa di non vero detto di proposito."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: BAMBINO", options: ["adulto", "nonno", "bimbo", "giocattolo"], correctAnswer: "bimbo", explanation: "Bimbo è un altro modo, affettuoso, per dire bambino."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: VOLTO", options: ["schiena", "mano", "faccia", "piede"], correctAnswer: "faccia", explanation: "Volto e faccia indicano la parte anteriore della testa."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: PAURA", options: ["coraggio", "timore", "fame", "festa"], correctAnswer: "timore", explanation: "Paura e timore indicano il sentimento di chi si sente in pericolo o a disagio.")
        ]
    )

    private static let synonymsHard = Exercise(
        title: "Sinonimi meno comuni",
        instructions: "Scelga la parola che ha lo stesso significato di quella in maiuscolo.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        groupKey: "synonymsHard",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Sinonimo: EFFIMERO", options: ["duraturo", "fugace", "prezioso", "ostinato"], correctAnswer: "fugace", explanation: "Effimero e fugace si dicono di ciò che dura pochissimo."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: LOQUACE", options: ["taciturno", "vanitoso", "prudente", "ciarliero"], correctAnswer: "ciarliero", explanation: "Loquace e ciarliero descrivono chi parla molto volentieri."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: OBLIARE", options: ["ricordare", "dimenticare", "ostacolare", "ammirare"], correctAnswer: "dimenticare", explanation: "Obliare è la forma letteraria di dimenticare."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: DESTREZZA", options: ["goffaggine", "fretta", "abilità", "pigrizia"], correctAnswer: "abilità", explanation: "La destrezza è la capacità di fare le cose con bravura e prontezza."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: ALACRE", options: ["indolente", "severo", "cupo", "sollecito"], correctAnswer: "sollecito", explanation: "Alacre significa pronto e pieno di energia nell'agire, proprio come sollecito."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: PERSPICACE", options: ["ottuso", "ingenuo", "acuto", "distratto"], correctAnswer: "acuto", explanation: "Perspicace si dice di chi capisce le cose in profondità e con intelligenza viva, cioè acuto."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: TENACE", options: ["arrendevole", "generoso", "perseverante", "distratto"], correctAnswer: "perseverante", explanation: "Tenace e perseverante si dicono di chi non rinuncia ai propri scopi."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: MESTO", options: ["gioioso", "rabbioso", "vivace", "malinconico"], correctAnswer: "malinconico", explanation: "Mesto indica uno stato d'animo triste e pensieroso, come malinconico."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: FRUGALE", options: ["ricco", "vorace", "elegante", "parco"], correctAnswer: "parco", explanation: "Frugale e parco si dicono di chi mangia e vive con moderazione."),
            ExerciseItem(id: UUID(), prompt: "Sinonimo: ARDUO", options: ["facile", "breve", "difficile", "antico"], correctAnswer: "difficile", explanation: "Arduo significa difficile da fare o da raggiungere.")
        ]
    )

    private static let antonymsEasy = Exercise(
        title: "Parole contrarie",
        instructions: "Scelga la parola che significa il contrario di quella in maiuscolo.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "antonymsEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Contrario: ALTO", options: ["lungo", "basso", "enorme", "giallo"], correctAnswer: "basso", explanation: "Alto e basso sono opposti nella misura in altezza."),
            ExerciseItem(id: UUID(), prompt: "Contrario: CALDO", options: ["bollente", "pesante", "freddo", "rumoroso"], correctAnswer: "freddo", explanation: "Caldo e freddo sono opposti nella temperatura; bollente è solo più caldo."),
            ExerciseItem(id: UUID(), prompt: "Contrario: GIORNO", options: ["mattina", "tavolo", "notte", "settimana"], correctAnswer: "notte", explanation: "Il giorno è la parte luminosa, la notte quella buia: sono opposti."),
            ExerciseItem(id: UUID(), prompt: "Contrario: APRIRE", options: ["spalancare", "chiudere", "rompere", "cucinare"], correctAnswer: "chiudere", explanation: "Aprire e chiudere sono azioni opposte."),
            ExerciseItem(id: UUID(), prompt: "Contrario: FELICE", options: ["contento", "magro", "piccolo", "triste"], correctAnswer: "triste", explanation: "Felice e triste esprimono stati d'animo opposti."),
            ExerciseItem(id: UUID(), prompt: "Contrario: VECCHIO", options: ["antico", "lento", "giovane", "brutto"], correctAnswer: "giovane", explanation: "Una persona vecchia è l'opposto di una persona giovane."),
            ExerciseItem(id: UUID(), prompt: "Contrario: PIENO", options: ["colmo", "pesante", "vuoto", "largo"], correctAnswer: "vuoto", explanation: "Pieno e vuoto sono opposti: uno ha tutto lo spazio occupato, l'altro nulla."),
            ExerciseItem(id: UUID(), prompt: "Contrario: DENTRO", options: ["dopo", "fuori", "sopra", "sempre"], correctAnswer: "fuori", explanation: "Dentro e fuori indicano posizioni opposte rispetto a uno spazio."),
            ExerciseItem(id: UUID(), prompt: "Contrario: DIFFICILE", options: ["complicato", "lungo", "stretto", "facile"], correctAnswer: "facile", explanation: "Difficile e facile sono opposti; complicato è un sinonimo."),
            ExerciseItem(id: UUID(), prompt: "Contrario: COMINCIARE", options: ["iniziare", "finire", "cantare", "aspettare"], correctAnswer: "finire", explanation: "Cominciare e finire indicano l'inizio e la fine di un'azione.")
        ]
    )

    private static let sentenceCompletionEasy = Exercise(
        title: "Completi la frase",
        instructions: "Scelga la parola giusta per completare la frase.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        groupKey: "sentenceCompletionEasy",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Al mattino bevo una tazza di ___.", options: ["caffè", "sabbia", "matita"], correctAnswer: "caffè", explanation: "Il caffè è una bevanda che si beve in tazza."),
            ExerciseItem(id: UUID(), prompt: "Ho messo il cappotto perché fuori fa ___.", options: ["freddo", "caldo", "lungo"], correctAnswer: "freddo", explanation: "Si indossa il cappotto quando la temperatura è bassa."),
            ExerciseItem(id: UUID(), prompt: "Il bambino va a scuola con lo ___ sulle spalle.", options: ["zaino", "gatto", "bicchiere"], correctAnswer: "zaino", explanation: "Lo zaino si porta sulle spalle e contiene libri e quaderni."),
            ExerciseItem(id: UUID(), prompt: "Per tagliare il pane uso il ___.", options: ["coltello", "cucchiaio", "martello"], correctAnswer: "coltello", explanation: "Il coltello ha una lama adatta a tagliare."),
            ExerciseItem(id: UUID(), prompt: "Il cane abbaia, il gatto ___.", options: ["miagola", "ruggisce", "nitrisce"], correctAnswer: "miagola", explanation: "Il verso del gatto è il miagolio."),
            ExerciseItem(id: UUID(), prompt: "La sera accendo la ___ per leggere.", options: ["lampada", "lampone", "ladro"], correctAnswer: "lampada", explanation: "La lampada fa luce; il lampone è un frutto e il ladro una persona."),
            ExerciseItem(id: UUID(), prompt: "Ho fame, vorrei mangiare una ___.", options: ["mela", "finestra", "nuvola"], correctAnswer: "mela", explanation: "La mela è un frutto e si mangia."),
            ExerciseItem(id: UUID(), prompt: "Il sole sorge la mattina e tramonta la ___.", options: ["sera", "mattina", "domenica"], correctAnswer: "sera", explanation: "Il sole tramonta verso la fine del giorno, cioè la sera."),
            ExerciseItem(id: UUID(), prompt: "Quando piove apro l'___.", options: ["ombrello", "orologio", "ordine"], correctAnswer: "ombrello", explanation: "L'ombrello ripara dalla pioggia."),
            ExerciseItem(id: UUID(), prompt: "Il medico mi ha dato una ___ per la farmacia.", options: ["ricetta", "ricotta", "rete"], correctAnswer: "ricetta", explanation: "La ricetta medica si presenta in farmacia; la ricotta è un formaggio."),
            ExerciseItem(id: UUID(), prompt: "Ho comprato il pane in ___.", options: ["panetteria", "farmacia", "biblioteca"], correctAnswer: "panetteria", explanation: "Il pane si compra in panetteria."),
            ExerciseItem(id: UUID(), prompt: "Il treno parte dal ___ numero tre.", options: ["binario", "lenzuolo", "bosco"], correctAnswer: "binario", explanation: "I treni partono dai binari della stazione."),
            ExerciseItem(id: UUID(), prompt: "In estate andiamo al ___ a nuotare.", options: ["mare", "muro", "pane"], correctAnswer: "mare", explanation: "Si nuota nel mare, che d'estate è meta di molte vacanze."),
            ExerciseItem(id: UUID(), prompt: "Mi lavo i denti con lo spazzolino e il ___.", options: ["dentifricio", "pettine", "cuscino"], correctAnswer: "dentifricio", explanation: "Il dentifricio si usa insieme allo spazzolino."),
            ExerciseItem(id: UUID(), prompt: "Per telefonare uso il ___.", options: ["telefono", "tavolo", "tetto"], correctAnswer: "telefono", explanation: "Il telefono è l'apparecchio che permette di parlare con chi è lontano."),
            ExerciseItem(id: UUID(), prompt: "Il cuoco prepara la cena in ___.", options: ["cucina", "cantina", "cuccia"], correctAnswer: "cucina", explanation: "Si cucina nella cucina; la cantina serve per conservare, la cuccia è del cane."),
            ExerciseItem(id: UUID(), prompt: "Ho freddo al collo, metto la ___.", options: ["sciarpa", "scarpa", "sedia"], correctAnswer: "sciarpa", explanation: "La sciarpa si porta attorno al collo."),
            ExerciseItem(id: UUID(), prompt: "Il fornaio prepara il pane e la ___.", options: ["pizza", "penna", "pietra"], correctAnswer: "pizza", explanation: "Il fornaio cuoce pane e pizza nel forno."),
            ExerciseItem(id: UUID(), prompt: "Gli uccelli volano nel ___.", options: ["cielo", "piatto", "letto"], correctAnswer: "cielo", explanation: "Gli uccelli volano nell'aria, cioè nel cielo."),
            ExerciseItem(id: UUID(), prompt: "Per aprire la porta serve la ___.", options: ["chiave", "chiesa", "cintura"], correctAnswer: "chiave", explanation: "La chiave apre la serratura della porta.")
        ]
    )

    private static let sentenceCompletionMedium = Exercise(
        title: "Frase giusta",
        instructions: "Scelga la forma o la parola corretta per completare la frase.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .medium,
        groupKey: "sentenceCompletionMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ieri sera ___ al cinema con gli amici.", options: ["siamo andati", "abbiamo andato", "andremo"], correctAnswer: "siamo andati", explanation: "Il verbo andare vuole l'ausiliare essere al passato prossimo, e il participio concorda con il soggetto."),
            ExerciseItem(id: UUID(), prompt: "Sebbene ___ stanco, continua a lavorare.", options: ["sia", "è", "era"], correctAnswer: "sia", explanation: "La congiunzione «sebbene» richiede il congiuntivo."),
            ExerciseItem(id: UUID(), prompt: "Domani vado ___ dentista.", options: ["dal", "sul", "del"], correctAnswer: "dal", explanation: "Per indicare il luogo dove abita o lavora una persona si usa «da»: dal dentista."),
            ExerciseItem(id: UUID(), prompt: "Abito ___ Roma da dieci anni.", options: ["a", "in", "da"], correctAnswer: "a", explanation: "Davanti ai nomi di città si usa la preposizione «a»."),
            ExerciseItem(id: UUID(), prompt: "Maria è andata ___ Francia in treno.", options: ["in", "a", "da"], correctAnswer: "in", explanation: "Davanti ai nomi di stati si usa di norma «in»."),
            ExerciseItem(id: UUID(), prompt: "Domani ___ a trovarti.", options: ["verrò", "venni", "venivo"], correctAnswer: "verrò", explanation: "«Domani» indica il futuro: il futuro semplice di venire è «verrò»."),
            ExerciseItem(id: UUID(), prompt: "Se avessi tempo, ___ un libro.", options: ["leggerei", "leggo", "leggerò"], correctAnswer: "leggerei", explanation: "Dopo «se» con il congiuntivo imperfetto, nell'altra parte si usa il condizionale."),
            ExerciseItem(id: UUID(), prompt: "Le mie amiche sono molto ___.", options: ["gentili", "gentile", "gentilo"], correctAnswer: "gentili", explanation: "L'aggettivo concorda con «amiche», femminile plurale: gli aggettivi in -e fanno il plurale in -i."),
            ExerciseItem(id: UUID(), prompt: "Questa è la città ___ sono nato.", options: ["dove", "che", "chi"], correctAnswer: "dove", explanation: "Per indicare il luogo si usa «dove» (oppure «in cui»); «che» e «chi» non sono possibili in questa frase."),
            ExerciseItem(id: UUID(), prompt: "Oggi non ho ___ fame.", options: ["molta", "molto", "molti"], correctAnswer: "molta", explanation: "L'aggettivo «molto» concorda con «fame», che è femminile singolare."),
            ExerciseItem(id: UUID(), prompt: "Il libro è ___ scaffale.", options: ["sullo", "sul", "sulla"], correctAnswer: "sullo", explanation: "Davanti a parole maschili che iniziano per s + consonante si usa «lo»: sullo scaffale."),
            ExerciseItem(id: UUID(), prompt: "Mi piace ___ la domenica mattina.", options: ["dormire", "dormo", "dormito"], correctAnswer: "dormire", explanation: "Dopo «mi piace» si usa l'infinito."),
            ExerciseItem(id: UUID(), prompt: "Ieri ho ___ una lettera a mia nipote.", options: ["scritto", "scrivuto", "scrivo"], correctAnswer: "scritto", explanation: "Il participio passato irregolare di scrivere è «scritto»."),
            ExerciseItem(id: UUID(), prompt: "Stamattina ___ presto perché avevo molto da fare.", options: ["mi sono alzato", "ho alzato", "mi alzerò"], correctAnswer: "mi sono alzato", explanation: "Alzarsi è un verbo riflessivo e al passato prossimo vuole l'ausiliare essere."),
            ExerciseItem(id: UUID(), prompt: "Mio fratello è più alto ___ me.", options: ["di", "che", "da"], correctAnswer: "di", explanation: "Nel confronto tra due persone il secondo termine è introdotto da «di».")
        ]
    )

    private static let morphology = Exercise(
        title: "La forma giusta",
        instructions: "Scelga la forma corretta della parola per completare la frase.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        groupKey: "morphology",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Un amico, due ___.", options: ["amici", "amichi", "amicoi"], correctAnswer: "amici", explanation: "Di solito i nomi in -co fanno il plurale in -chi (fuoco, fuochi), ma amico fa amici: è un'eccezione da ricordare."),
            ExerciseItem(id: UUID(), prompt: "Il lago è grande, i ___ sono grandi.", options: ["laghi", "lagi", "lage"], correctAnswer: "laghi", explanation: "I nomi in -go mantengono il suono duro con l'aggiunta della h: lago, laghi."),
            ExerciseItem(id: UUID(), prompt: "Un uomo, due ___.", options: ["uomini", "uomi", "uomoi"], correctAnswer: "uomini", explanation: "Uomo ha un plurale irregolare: uomini."),
            ExerciseItem(id: UUID(), prompt: "La ragazza è molto ___.", options: ["simpatica", "simpatico", "simpatici"], correctAnswer: "simpatica", explanation: "L'aggettivo concorda con «ragazza», femminile singolare: -a."),
            ExerciseItem(id: UUID(), prompt: "Una casa piccola e graziosa è una ___.", options: ["casetta", "casone", "casaccia"], correctAnswer: "casetta", explanation: "Il suffisso diminutivo -etta indica una cosa piccola e carina."),
            ExerciseItem(id: UUID(), prompt: "Un libro piccolo e sottile è un ___.", options: ["libretto", "libraccio", "librone"], correctAnswer: "libretto", explanation: "Il suffisso -etto è diminutivo; -accio è dispregiativo e -one accrescitivo."),
            ExerciseItem(id: UUID(), prompt: "Ho dovuto prendere una ___ difficile.", options: ["decisione", "decidenza", "decisura"], correctAnswer: "decisione", explanation: "Dal verbo decidere si forma il nome con il suffisso -zione/-sione: decisione."),
            ExerciseItem(id: UUID(), prompt: "Non è facile, anzi è quasi ___.", options: ["impossibile", "inpossibile", "dispossibile"], correctAnswer: "impossibile", explanation: "Il prefisso negativo in- diventa im- davanti a p: impossibile."),
            ExerciseItem(id: UUID(), prompt: "La stanza era in ___ completo.", options: ["disordine", "inordine", "nonordine"], correctAnswer: "disordine", explanation: "Il prefisso dis- esprime il contrario: ordine, disordine."),
            ExerciseItem(id: UUID(), prompt: "Parli con calma e senza fretta: parli ___.", options: ["lentamente", "lentomente", "lente"], correctAnswer: "lentamente", explanation: "L'avverbio si forma con -mente aggiunto alla forma femminile dell'aggettivo: lenta + mente."),
            ExerciseItem(id: UUID(), prompt: "Questo esercizio si risolve ___.", options: ["facilmente", "facilemente", "facilamente"], correctAnswer: "facilmente", explanation: "Gli aggettivi in -le perdono la -e davanti a -mente: facile, facilmente."),
            ExerciseItem(id: UUID(), prompt: "Tu ___ troppo forte.", options: ["parli", "parla", "parlo"], correctAnswer: "parli", explanation: "Alla seconda persona singolare dei verbi in -are il presente termina in -i."),
            ExerciseItem(id: UUID(), prompt: "I miei nipoti ___ a casa presto.", options: ["tornano", "torna", "torniamo"], correctAnswer: "tornano", explanation: "Il verbo concorda con il soggetto plurale: terza persona plurale -ano."),
            ExerciseItem(id: UUID(), prompt: "Fuori fa freddo, ho le ___ gelate.", options: ["mani", "mane", "mano"], correctAnswer: "mani", explanation: "Mano è un nome femminile in -o: il plurale è le mani."),
            ExerciseItem(id: UUID(), prompt: "La signora è una famosa ___ di quadri.", options: ["pittrice", "pittora", "pittoressa"], correctAnswer: "pittrice", explanation: "I nomi maschili in -tore formano spesso il femminile in -trice."),
            ExerciseItem(id: UUID(), prompt: "La signora che mi ha visitato è una brava ___.", options: ["dottoressa", "dottora", "dottrice"], correctAnswer: "dottoressa", explanation: "Il femminile di dottore è dottoressa, con il suffisso -essa."),
            ExerciseItem(id: UUID(), prompt: "La gallina ha fatto sei ___.", options: ["uova", "uovi", "ovi"], correctAnswer: "uova", explanation: "Uovo ha un plurale irregolare femminile: le uova."),
            ExerciseItem(id: UUID(), prompt: "Il bambino alza le ___.", options: ["braccia", "bracci", "bracce"], correctAnswer: "braccia", explanation: "Per il corpo umano il plurale di braccio è femminile: le braccia."),
            ExerciseItem(id: UUID(), prompt: "Per lavare i piatti uso la ___.", options: ["lavastoviglie", "lavastoviglia", "lavatostoviglie"], correctAnswer: "lavastoviglie", explanation: "È un nome composto da lava + stoviglie: il secondo elemento resta al plurale."),
            ExerciseItem(id: UUID(), prompt: "Le mie vicine sono molto ___.", options: ["felici", "felice", "felicie"], correctAnswer: "felici", explanation: "Gli aggettivi in -e fanno il plurale in -i, anche al femminile: felici.")
        ]
    )

    private static let homonymsMedium = Exercise(
        title: "Parole che suonano uguali",
        instructions: "In alto sono indicate due parole che suonano uguali ma si scrivono in modo diverso. Scelga la coppia che completa nell'ordine le due frasi.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .medium,
        groupKey: "homonymsMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "[ho / o] Oggi ___ molta fame. Vuole il tè ___ il caffè?", options: ["ho…o", "o…ho", "ho…ho", "o…o"], correctAnswer: "ho…o", explanation: "«Ho» è il verbo avere (io ho); «o» è la congiunzione che indica una scelta."),
            ExerciseItem(id: UUID(), prompt: "[hanno / anno] Loro ___ una casa al mare. Un ___ ha dodici mesi.", options: ["hanno…anno", "anno…hanno", "hanno…hanno", "anno…anno"], correctAnswer: "hanno…anno", explanation: "«Hanno» è il verbo avere (loro hanno); «anno» è il periodo di dodici mesi."),
            ExerciseItem(id: UUID(), prompt: "[tè / te] Al pomeriggio bevo una tazza di ___. Questo regalo è per ___.", options: ["tè…te", "te…tè", "tè…tè", "te…te"], correctAnswer: "tè…te", explanation: "«Tè» con l'accento è la bevanda; «te» senza accento è il pronome di seconda persona."),
            ExerciseItem(id: UUID(), prompt: "[dà / da] Il nonno ___ una caramella al nipote. Questo treno arriva ___ Milano.", options: ["dà…da", "da…dà", "dà…dà", "da…da"], correctAnswer: "dà…da", explanation: "«Dà» con l'accento è il verbo dare; «da» senza accento è una preposizione."),
            ExerciseItem(id: UUID(), prompt: "[sì / si] Alla mia domanda ha risposto ___. Il bambino ___ lava le mani.", options: ["sì…si", "si…sì", "sì…sì", "si…si"], correctAnswer: "sì…si", explanation: "«Sì» con l'accento è la risposta affermativa; «si» senza accento è il pronome riflessivo."),
            ExerciseItem(id: UUID(), prompt: "[ne / né] Di mele ___ ho comprate due. Non vuole ___ tè né caffè.", options: ["ne…né", "né…ne", "ne…ne", "né…né"], correctAnswer: "ne…né", explanation: "«Ne» senza accento è un pronome che significa «di queste»; «né» con l'accento è la congiunzione negativa."),
            ExerciseItem(id: UUID(), prompt: "[là / la] Ti aspetto ___ davanti al bar. Metto ___ borsa sul tavolo.", options: ["là…la", "la…là", "là…là", "la…la"], correctAnswer: "là…la", explanation: "«Là» con l'accento è un avverbio di luogo; «la» senza accento è l'articolo femminile."),
            ExerciseItem(id: UUID(), prompt: "[lì / li] Metti i libri ___ , sullo scaffale. Se vedo i tuoi amici ___ saluto.", options: ["lì…li", "li…lì", "lì…lì", "li…li"], correctAnswer: "lì…li", explanation: "«Lì» con l'accento è un avverbio di luogo; «li» senza accento è il pronome che sostituisce «loro» come complemento."),
            ExerciseItem(id: UUID(), prompt: "[ha / a] Maria ___ un cane molto vivace. Domani andiamo ___ Firenze.", options: ["ha…a", "a…ha", "ha…ha", "a…a"], correctAnswer: "ha…a", explanation: "«Ha» è il verbo avere (lei ha); «a» è una preposizione semplice."),
            ExerciseItem(id: UUID(), prompt: "[ai / hai] Parlo spesso ___ miei vicini. Tu ___ le chiavi di casa?", options: ["ai…hai", "hai…ai", "ai…ai", "hai…hai"], correctAnswer: "ai…hai", explanation: "«Ai» è la preposizione articolata (a + i); «hai» è il verbo avere (tu hai).")
        ]
    )

    private static let analogiesMedium = Exercise(
        title: "Analogie",
        instructions: "Scelga la parola che completa il rapporto.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        groupKey: "analogiesMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "OCCHIO sta a VEDERE come ORECCHIO sta a ___", options: ["sentire", "parlare", "camminare", "mangiare"], correctAnswer: "sentire", explanation: "Rapporto di funzione: l'occhio serve per vedere, l'orecchio per sentire."),
            ExerciseItem(id: UUID(), prompt: "DITO sta a MANO come FOGLIA sta a ___", options: ["albero", "acqua", "sasso", "nuvola"], correctAnswer: "albero", explanation: "Rapporto parte-tutto: il dito è parte della mano, la foglia è parte dell'albero."),
            ExerciseItem(id: UUID(), prompt: "CALDO sta a FREDDO come GIORNO sta a ___", options: ["notte", "sole", "mattina", "tempo"], correctAnswer: "notte", explanation: "Rapporto di contrario: caldo e freddo sono opposti, come giorno e notte."),
            ExerciseItem(id: UUID(), prompt: "PITTORE sta a PENNELLO come SCRITTORE sta a ___", options: ["penna", "martello", "forbici", "pentola"], correctAnswer: "penna", explanation: "Rapporto di funzione: il pittore usa il pennello, lo scrittore usa la penna."),
            ExerciseItem(id: UUID(), prompt: "CANE sta a ANIMALE come ROSA sta a ___", options: ["fiore", "sasso", "stanza", "frutto"], correctAnswer: "fiore", explanation: "Rapporto di categoria: il cane è un animale, la rosa è un fiore."),
            ExerciseItem(id: UUID(), prompt: "PICCOLO sta a MINUSCOLO come GRANDE sta a ___", options: ["enorme", "piccolo", "medio", "stretto"], correctAnswer: "enorme", explanation: "Rapporto di grado: minuscolo è un piccolo estremo, enorme è un grande estremo."),
            ExerciseItem(id: UUID(), prompt: "LIBRO sta a LEGGERE come CIBO sta a ___", options: ["mangiare", "dormire", "correre", "vestire"], correctAnswer: "mangiare", explanation: "Rapporto di funzione: il libro si legge, il cibo si mangia."),
            ExerciseItem(id: UUID(), prompt: "PAGINA sta a LIBRO come STANZA sta a ___", options: ["casa", "matita", "nuvola", "pane"], correctAnswer: "casa", explanation: "Rapporto parte-tutto: la pagina è parte del libro, la stanza è parte della casa."),
            ExerciseItem(id: UUID(), prompt: "SU sta a GIÙ come DENTRO sta a ___", options: ["fuori", "sopra", "vicino", "dietro"], correctAnswer: "fuori", explanation: "Rapporto di contrario: su e giù sono opposti, come dentro e fuori."),
            ExerciseItem(id: UUID(), prompt: "CUOCO sta a CUCINA come MEDICO sta a ___", options: ["ospedale", "scuola", "mercato", "teatro"], correctAnswer: "ospedale", explanation: "Rapporto professione-luogo: il cuoco lavora in cucina, il medico in ospedale."),
            ExerciseItem(id: UUID(), prompt: "TIEPIDO sta a CALDO come FRESCO sta a ___", options: ["freddo", "caldo", "tiepido", "bollente"], correctAnswer: "freddo", explanation: "Rapporto di grado: tiepido è meno intenso di caldo, fresco è meno intenso di freddo."),
            ExerciseItem(id: UUID(), prompt: "DENTE sta a MASTICARE come GAMBA sta a ___", options: ["camminare", "scrivere", "ascoltare", "annusare"], correctAnswer: "camminare", explanation: "Rapporto di funzione: i denti servono a masticare, le gambe a camminare."),
            ExerciseItem(id: UUID(), prompt: "ITALIA sta a ROMA come FRANCIA sta a ___", options: ["Parigi", "Londra", "Madrid", "Berlino"], correctAnswer: "Parigi", explanation: "Rapporto stato-capitale: Roma è la capitale d'Italia, Parigi quella della Francia."),
            ExerciseItem(id: UUID(), prompt: "PECORA sta a LANA come MUCCA sta a ___", options: ["latte", "uova", "miele", "seta"], correctAnswer: "latte", explanation: "Rapporto animale-prodotto: la pecora dà la lana, la mucca dà il latte."),
            ExerciseItem(id: UUID(), prompt: "RUOTA sta a BICICLETTA come ALA sta a ___", options: ["uccello", "scarpa", "tavolo", "ponte"], correctAnswer: "uccello", explanation: "Rapporto parte-tutto: la ruota è parte della bicicletta, l'ala è parte dell'uccello.")
        ]
    )

    private static let factOrOpinion = Exercise(
        title: "Fatto o opinione",
        instructions: "Decida se l'affermazione è un fatto oppure un'opinione.",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "factOrOpinion",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "L'acqua bolle a 100 °C al livello del mare.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È una proprietà fisica dell'acqua che si può misurare."),
            ExerciseItem(id: UUID(), prompt: "La pizza è il piatto più buono del mondo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "«Più buono» dipende dal gusto personale e non si può misurare."),
            ExerciseItem(id: UUID(), prompt: "Roma è la capitale d'Italia.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È un dato stabilito, che si può verificare."),
            ExerciseItem(id: UUID(), prompt: "L'estate è più bella dell'inverno.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Ciò che è «più bello» è un giudizio personale: c'è chi preferisce l'inverno."),
            ExerciseItem(id: UUID(), prompt: "Il Po è il fiume più lungo d'Italia.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La lunghezza dei fiumi si misura: il Po supera tutti gli altri fiumi italiani."),
            ExerciseItem(id: UUID(), prompt: "I gatti sono animali migliori dei cani.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "«Migliori» è un giudizio personale: dipende dai gusti di ciascuno."),
            ExerciseItem(id: UUID(), prompt: "Una settimana ha sette giorni.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È una convenzione precisa e uguale per tutti."),
            ExerciseItem(id: UUID(), prompt: "La musica classica è noiosa.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "«Noiosa» esprime un'impressione soggettiva: molte persone la trovano emozionante."),
            ExerciseItem(id: UUID(), prompt: "Il Vesuvio è un vulcano vicino a Napoli.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È un dato geografico verificabile."),
            ExerciseItem(id: UUID(), prompt: "Firenze è la città più romantica d'Italia.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "«Romantica» è un giudizio personale che non si può misurare."),
            ExerciseItem(id: UUID(), prompt: "Il ghiaccio è acqua allo stato solido.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Quando l'acqua gela diventa ghiaccio: è un fatto scientifico."),
            ExerciseItem(id: UUID(), prompt: "Il caffè al mattino è indispensabile per tutti.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Molte persone stanno benissimo senza caffè: è un parere, non un dato."),
            ExerciseItem(id: UUID(), prompt: "La Sicilia è un'isola.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La Sicilia è circondata dal mare da ogni lato."),
            ExerciseItem(id: UUID(), prompt: "Le Alpi sono più belle degli Appennini.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La bellezza è un giudizio soggettivo; si possono misurare solo altezza e lunghezza."),
            ExerciseItem(id: UUID(), prompt: "Dante Alighieri scrisse la Divina Commedia.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "L'autore dell'opera è un fatto storico."),
            ExerciseItem(id: UUID(), prompt: "Il Carnevale è la festa più divertente dell'anno.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "«Più divertente» dipende dai gusti personali."),
            ExerciseItem(id: UUID(), prompt: "Il Tevere attraversa la città di Roma.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È un dato geografico che si può verificare su una mappa."),
            ExerciseItem(id: UUID(), prompt: "Leggere è più utile che guardare la televisione.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "L'utilità dipende da che cosa si legge e da che cosa si guarda: è un parere."),
            ExerciseItem(id: UUID(), prompt: "Un chilometro è formato da mille metri.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È la definizione del chilometro nel sistema metrico."),
            ExerciseItem(id: UUID(), prompt: "Il gelato al limone è più buono di quello al cioccolato.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Il gusto preferito cambia da persona a persona."),
            ExerciseItem(id: UUID(), prompt: "Il Natale si festeggia il 25 dicembre.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La data della festa è fissa nel calendario."),
            ExerciseItem(id: UUID(), prompt: "Fare la spesa la domenica è fastidioso.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "«Fastidioso» è una sensazione personale: ad alcuni piace."),
            ExerciseItem(id: UUID(), prompt: "La Luna gira attorno alla Terra.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "È un fatto astronomico: la Luna è il satellite naturale della Terra."),
            ExerciseItem(id: UUID(), prompt: "Il mare è più rilassante della montagna.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Il rilassamento è soggettivo: c'è chi preferisce la montagna."),
            ExerciseItem(id: UUID(), prompt: "Le Alpi si trovano nel nord dell'Italia.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "La catena alpina chiude l'Italia a settentrione: si verifica su ogni carta geografica.")
        ]
    )

    private static let sequencingMedium = Exercise(
        title: "Metta in ordine",
        instructions: "Metta i passaggi nell'ordine corretto.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        groupKey: "sequencingMedium",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Preparare il caffè con la moka", options: ["Avvitare la parte superiore", "Riempire d'acqua la caldaia", "Versare il caffè nella tazza", "Mettere la moka sul fuoco", "Inserire il filtro con il caffè"], correctAnswer: "Riempire d'acqua la caldaia | Inserire il filtro con il caffè | Avvitare la parte superiore | Mettere la moka sul fuoco | Versare il caffè nella tazza", explanation: "Prima si prepara la moka, poi la si chiude, la si mette sul fuoco e solo alla fine si serve il caffè."),
            ExerciseItem(id: UUID(), prompt: "Lavarsi i denti", options: ["Sciacquare la bocca e lo spazzolino", "Mettere il dentifricio sullo spazzolino", "Riporre lo spazzolino", "Spazzolare i denti"], correctAnswer: "Mettere il dentifricio sullo spazzolino | Spazzolare i denti | Sciacquare la bocca e lo spazzolino | Riporre lo spazzolino", explanation: "Si prepara lo spazzolino, si lavano i denti, si sciacqua la bocca e lo spazzolino e alla fine si mette tutto a posto."),
            ExerciseItem(id: UUID(), prompt: "Fare il bucato in lavatrice", options: ["Stendere i panni ad asciugare", "Mettere i panni nella lavatrice", "Chiudere lo sportello e avviare il programma", "Separare i panni scuri da quelli chiari"], correctAnswer: "Separare i panni scuri da quelli chiari | Mettere i panni nella lavatrice | Chiudere lo sportello e avviare il programma | Stendere i panni ad asciugare", explanation: "I panni vanno prima divisi, poi caricati; il lavaggio parte a sportello chiuso e i panni si stendono solo a lavaggio finito."),
            ExerciseItem(id: UUID(), prompt: "Cucinare la pasta", options: ["Scolare la pasta", "Calare la pasta nell'acqua", "Condire con il sugo", "Riempire la pentola d'acqua", "Portare l'acqua a bollore"], correctAnswer: "Riempire la pentola d'acqua | Portare l'acqua a bollore | Calare la pasta nell'acqua | Scolare la pasta | Condire con il sugo", explanation: "Serve prima l'acqua bollente, poi si cuoce la pasta, si scola e infine la si condisce."),
            ExerciseItem(id: UUID(), prompt: "Spedire una lettera", options: ["Chiudere la lettera nella busta", "Scrivere l'indirizzo sulla busta chiusa e incollare il francobollo", "Imbucare la lettera", "Scrivere la lettera"], correctAnswer: "Scrivere la lettera | Chiudere la lettera nella busta | Scrivere l'indirizzo sulla busta chiusa e incollare il francobollo | Imbucare la lettera", explanation: "La lettera va scritta e chiusa in una busta; poi si indirizza e solo alla fine si imbuca."),
            ExerciseItem(id: UUID(), prompt: "Piantare un seme", options: ["Annaffiare", "Mettere il seme nella terra", "Aspettare che spunti la pianta", "Riempire un vaso di terra", "Coprire il seme con la terra"], correctAnswer: "Riempire un vaso di terra | Mettere il seme nella terra | Coprire il seme con la terra | Annaffiare | Aspettare che spunti la pianta", explanation: "Si prepara il vaso, si pone e si copre il seme, si annaffia e poi si aspetta che cresca."),
            ExerciseItem(id: UUID(), prompt: "Preparare un panino", options: ["Mangiare il panino", "Mettere il prosciutto sul pane", "Tagliare il pane a metà", "Chiudere il panino"], correctAnswer: "Tagliare il pane a metà | Mettere il prosciutto sul pane | Chiudere il panino | Mangiare il panino", explanation: "Il pane va aperto prima di farcirlo; il panino si chiude e solo allora si mangia."),
            ExerciseItem(id: UUID(), prompt: "Andare dal medico", options: ["Ritirare la ricetta", "Telefonare per prendere appuntamento", "Andare in farmacia", "Parlare con il medico", "Andare allo studio il giorno fissato"], correctAnswer: "Telefonare per prendere appuntamento | Andare allo studio il giorno fissato | Parlare con il medico | Ritirare la ricetta | Andare in farmacia", explanation: "Si prenota la visita, ci si va, si parla con il medico, si ritira la ricetta e poi la si porta in farmacia.")
        ]
    )

    private static let minimalPairs = Exercise(
        title: "Quasi uguali",
        instructions: "Scelga la parola che corrisponde al significato indicato.",
        section: .language,
        type: .minimalPairs,
        trackedType: nil,
        difficulty: .easy,
        groupKey: "minimalPairs",
        isHeldForReview: false,
        items: [
            ExerciseItem(id: UUID(), prompt: "Quale parola indica l'oggetto rotondo con cui si gioca a calcio?", options: ["PALA", "PALLA", "BALLA", "PELLE"], correctAnswer: "PALLA", explanation: "Palla ha la doppia l; pala, con una sola l, è un attrezzo per scavare."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il veicolo a ruote trainato dai buoi?", options: ["CARO", "CARRO", "CARA", "CORO"], correctAnswer: "CARRO", explanation: "Carro ha la doppia r; caro con una sola r significa costoso o amato."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il numero che viene dopo il sei?", options: ["SETE", "SETTE", "SEDE", "SETA"], correctAnswer: "SETTE", explanation: "Sette ha la doppia t; sete, con una sola t, è il bisogno di bere."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il posto dove si paga al supermercato?", options: ["CASA", "CASSA", "COSA", "CASO"], correctAnswer: "CASSA", explanation: "Cassa ha la doppia s; casa, con una sola s, è dove si abita."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il padre di mio padre?", options: ["NONO", "NONNO", "NONNA", "NANO"], correctAnswer: "NONNO", explanation: "Nonno ha la doppia n; nono con una sola n è il numero ordinale dopo l'ottavo."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica lo strumento per scrivere con l'inchiostro?", options: ["PENA", "PENNA", "PANNA", "PINNA"], correctAnswer: "PENNA", explanation: "Penna ha la doppia n; pena, con una sola n, è una sofferenza o una punizione."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica la voglia di dormire?", options: ["SONO", "SONNO", "SUONO", "SENNO"], correctAnswer: "SONNO", explanation: "Sonno ha la doppia n; sono, con una sola n, è una forma del verbo essere (io sono)."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il recipiente con il manico da cui si beve il tè?", options: ["TAZZA", "TAZZE", "TASSA", "TOZZA"], correctAnswer: "TAZZA", explanation: "Tazza, con la zeta doppia, è il recipiente per bere; tassa, con la doppia s, è un'imposta da pagare."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il colore del sangue e del semaforo quando bisogna fermarsi?", options: ["ROSO", "ROSSO", "ROSA", "RUSSO"], correctAnswer: "ROSSO", explanation: "Rosso ha la doppia s ed è il colore del sangue; roso è il participio di rodere e rosa è un colore più chiaro."),
            ExerciseItem(id: UUID(), prompt: "Quale parola è il participio passato del verbo fare?", options: ["FATO", "FATTO", "FITTO", "FATA"], correctAnswer: "FATTO", explanation: "Fatto ha la doppia t; fato, con una sola t, significa destino."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica un edificio di vetro dove si coltivano le piante?", options: ["SERA", "SERRA", "TERRA", "SORA"], correctAnswer: "SERRA", explanation: "Serra ha la doppia r; sera, con una sola r, è la parte del giorno dopo il pomeriggio."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica due persone che stanno insieme?", options: ["COPIA", "COPPIA", "COPPA", "CUPIA"], correctAnswer: "COPPIA", explanation: "Coppia ha la doppia p; copia, con una sola p, è la riproduzione di un documento."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica una persona di sesso femminile adulta?", options: ["DONA", "DONNA", "DONO", "DANNO"], correctAnswer: "DONNA", explanation: "Donna ha la doppia n; dona, con una sola n, è una forma del verbo donare."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica una frase breve che esprime un principio, come un proverbio?", options: ["MOTO", "MOTTO", "MOTTA", "MATTO"], correctAnswer: "MOTTO", explanation: "Motto ha la doppia t; moto, con una sola t, significa movimento."),
            ExerciseItem(id: UUID(), prompt: "Quale parola significa «molte volte»?", options: ["SPESO", "SPESSO", "SPESA", "SPASSO"], correctAnswer: "SPESSO", explanation: "Spesso ha la doppia s; speso è il participio di spendere."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il grosso pesce che si mangia in scatola?", options: ["TONO", "TONNO", "TANA", "TUONO"], correctAnswer: "TONNO", explanation: "Tonno ha la doppia n; tono, con una sola n, è l'altezza o il modo di una voce."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il luogo di casa dove si accende il fuoco con la legna?", options: ["CAMINO", "CAMMINO", "CAMION", "COMINO"], correctAnswer: "CAMINO", explanation: "Camino ha una sola m; cammino, con la doppia m, è una lunga passeggiata a piedi."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica il tempo buio dopo il tramonto?", options: ["NOTE", "NOTTE", "NOTA", "NETTO"], correctAnswer: "NOTTE", explanation: "Notte ha la doppia t; note, con una sola t, sono i segni della musica."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica l'animale che abbaia?", options: ["CANE", "CANNE", "CANA", "CENE"], correctAnswer: "CANE", explanation: "Cane ha una sola n; canne, con la doppia n, sono le piante cave o i tubi."),
            ExerciseItem(id: UUID(), prompt: "Quale parola indica la somma che si paga allo Stato?", options: ["TAZZA", "TASSA", "TESSA", "TASCA"], correctAnswer: "TASSA", explanation: "Tassa ha la doppia s; tazza, con la doppia z, è il recipiente per bere.")
        ]
    )
}
