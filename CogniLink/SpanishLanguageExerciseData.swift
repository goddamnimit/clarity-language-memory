import Foundation

struct SpanishLanguageExerciseData {

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
        exercise12
    ]

    // MARK: - Intruso entre palabras (Fácil)
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Intruso entre palabras (Fácil)",
        instructions: "Toca la palabra que NO pertenece al grupo.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "MANZANA, PERA, ZANAHORIA, CIRUELA",
                options: ["MANZANA", "PERA", "ZANAHORIA", "CIRUELA"],
                correctAnswer: "ZANAHORIA",
                explanation: "Es un vegetal, no una fruta"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "AUTO, AUTOBÚS, CUCHARA, CAMIÓN",
                options: ["AUTO", "AUTOBÚS", "CUCHARA", "CAMIÓN"],
                correctAnswer: "CUCHARA",
                explanation: "No es un vehículo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ORO, GATO, PERRO, PÁJARO",
                options: ["ORO", "GATO", "PERRO", "PÁJARO"],
                correctAnswer: "ORO",
                explanation: "Es un metal, no un animal"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CAMISA, PANTALÓN, TENEDOR, SOMBRERO",
                options: ["CAMISA", "PANTALÓN", "TENEDOR", "SOMBRERO"],
                correctAnswer: "TENEDOR",
                explanation: "No es una prenda de vestir"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SILLA, MESA, MANZANA, CAMA",
                options: ["SILLA", "MESA", "MANZANA", "CAMA"],
                correctAnswer: "MANZANA",
                explanation: "Es un alimento, no un mueble"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MARTILLO, LLAVE, ALMOHADA, TALADRO",
                options: ["MARTILLO", "LLAVE", "ALMOHADA", "TALADRO"],
                correctAnswer: "ALMOHADA",
                explanation: "No es una herramienta"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ENERO, MARZO, VIERNES, MAYO",
                options: ["ENERO", "MARZO", "VIERNES", "MAYO"],
                correctAnswer: "VIERNES",
                explanation: "Es un día de la semana, no un mes"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "PARÍS, LONDRES, JÚPITER, ROMA",
                options: ["PARÍS", "LONDRES", "JÚPITER", "ROMA"],
                correctAnswer: "JÚPITER",
                explanation: "Es un planeta, no una ciudad"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "PERRO, GATO, ÁRBOL, RATÓN",
                options: ["PERRO", "GATO", "ÁRBOL", "RATÓN"],
                correctAnswer: "ÁRBOL",
                explanation: "No es un animal"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "OJO, NARIZ, AUTO, OREJA",
                options: ["OJO", "NARIZ", "AUTO", "OREJA"],
                correctAnswer: "AUTO",
                explanation: "No es una parte del cuerpo"
            )
        ]
    )

    // MARK: - Intruso entre palabras (Difícil)
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Intruso entre palabras (Difícil)",
        instructions: "Toca la palabra que NO pertenece al grupo.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "SÍMIL, METÁFORA, HIPÉRBOLE, PÁRRAFO",
                options: ["SÍMIL", "METÁFORA", "HIPÉRBOLE", "PÁRRAFO"],
                correctAnswer: "PÁRRAFO",
                explanation: "Es una estructura de texto, no una figura retórica"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "FÉMUR, TIBIA, RADIO, CÓRNEA",
                options: ["FÉMUR", "TIBIA", "RADIO", "CÓRNEA"],
                correctAnswer: "CÓRNEA",
                explanation: "Es parte del ojo, no un hueso"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BEETHOVEN, MOZART, PICASSO, CHOPIN",
                options: ["BEETHOVEN", "MOZART", "PICASSO", "CHOPIN"],
                correctAnswer: "PICASSO",
                explanation: "Es un pintor, no un compositor de música"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SACO, CHALECO, BLUSA, TACÓN",
                options: ["SACO", "CHALECO", "BLUSA", "TACÓN"],
                correctAnswer: "TACÓN",
                explanation: "Es un tipo de calzado, no una prenda para el torso"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "NILO, AMAZONAS, TÁMESIS, EVEREST",
                options: ["NILO", "AMAZONAS", "TÁMESIS", "EVEREST"],
                correctAnswer: "EVEREST",
                explanation: "Es una montaña, no un río"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MEMORIAS, BIOGRAFÍA, AUTOBIOGRAFÍA, SONETO",
                options: ["MEMORIAS", "BIOGRAFÍA", "AUTOBIOGRAFÍA", "SONETO"],
                correctAnswer: "SONETO",
                explanation: "Es un poema, no una narración sobre una vida"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "INSULINA, ADRENALINA, ESTRÓGENO, IBUPROFENO",
                options: ["INSULINA", "ADRENALINA", "ESTRÓGENO", "IBUPROFENO"],
                correctAnswer: "IBUPROFENO",
                explanation: "Es un medicamento sintético, no una hormona natural"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CELSIUS, FAHRENHEIT, KELVIN, DECIBELIO",
                options: ["CELSIUS", "FAHRENHEIT", "KELVIN", "DECIBELIO"],
                correctAnswer: "DECIBELIO",
                explanation: "Mide el sonido, no la temperatura"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "JURADO, JUEZ, ALGUACIL, DEMANDANTE",
                options: ["JURADO", "JUEZ", "ALGUACIL", "DEMANDANTE"],
                correctAnswer: "DEMANDANTE",
                explanation: "Es una parte en el caso, no un oficial de la corte"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SONETO, HAIKÚ, LIMERICK, PROSA",
                options: ["SONETO", "HAIKÚ", "LIMERICK", "PROSA"],
                correctAnswer: "PROSA",
                explanation: "No es una forma poética de verso estructurado"
            )
        ]
    )

    // MARK: - Dichos y Refranes
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Dichos y Refranes",
        instructions: "Elige la palabra que completa correctamente el refrán popular.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que cien ___",
                options: ["volando", "corriendo", "cantando", "comiendo"],
                correctAnswer: "volando",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A caballo regalado no se le mira el ___",
                options: ["pelo", "ojo", "diente", "casco"],
                correctAnswer: "diente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "En boca cerrada no entran ___",
                options: ["moscas", "abejas", "comidas", "palabras"],
                correctAnswer: "moscas",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Al que madruga, Dios lo ___",
                options: ["ayuda", "mira", "llama", "salva"],
                correctAnswer: "ayuda",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dime con quién andas, y te dire quién ___",
                options: ["eres", "vas", "hablas", "vives"],
                correctAnswer: "eres",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ojos que no ven, corazón que no ___",
                options: ["siente", "llora", "ama", "sabe"],
                correctAnswer: "siente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Perro que ladra, no ___",
                options: ["muerde", "corriendo", "come", "juega"],
                correctAnswer: "muerde",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Camarón que se duerme se lo lleva la ___",
                options: ["corriente", "marea", "ola", "red"],
                correctAnswer: "corriente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "De tal palo, tal ___",
                options: ["astilla", "rama", "hoja", "árbol"],
                correctAnswer: "astilla",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale tarde que ___",
                options: ["nunca", "mañana", "ayer", "tarde"],
                correctAnswer: "nunca",
                explanation: ""
            )
        ]
    )

    // MARK: - Sinónimos (Fácil)
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Sinónimos (Fácil)",
        instructions: "Elige la palabra que significa lo MISMO que la palabra dada.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: ENOJADO",
                options: ["feliz", "furioso", "calmado", "triste"],
                correctAnswer: "furioso",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: FRÍO",
                options: ["cálido", "helado", "caliente", "templado"],
                correctAnswer: "helado",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: GRANDE",
                options: ["diminuto", "enorme", "bajo", "delgado"],
                correctAnswer: "enorme",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: CANSADO",
                options: ["alerta", "despierto", "agotado", "descansado"],
                correctAnswer: "agotado",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: ASUSTADO",
                options: ["valiente", "aterrorizado", "tranquilo", "audaz"],
                correctAnswer: "aterrorizado",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: AMABLE",
                options: ["tacaño", "cruel", "gentil", "grosero"],
                correctAnswer: "gentil",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: RÁPIDO",
                options: ["lento", "veloz", "perezoso", "débil"],
                correctAnswer: "veloz",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: VIEJO",
                options: ["joven", "anciano", "nuevo", "fresco"],
                correctAnswer: "anciano",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: SUCIO",
                options: ["limpio", "mugriento", "ordenado", "prolijo"],
                correctAnswer: "mugriento",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: BRILLANTE",
                options: ["tenue", "oscuro", "radiante", "apagado"],
                correctAnswer: "radiante",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”?",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 1)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 2)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 3)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 4)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 5)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 6)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 7)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 8)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 9)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 10)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 11)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 12)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 13)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 14)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 15)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 16)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 17)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 18)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 19)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 20)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 21)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 22)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 23)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 24)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 25)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 26)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 27)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 28)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 29)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 30)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 31)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 32)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 33)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 34)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 35)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 36)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 37)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 38)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 39)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 40)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 41)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 42)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 43)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 44)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 45)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 46)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 47)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 48)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 49)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 50)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 51)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 52)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 53)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 54)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 55)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 56)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 57)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 58)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 59)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 60)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 61)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 62)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 63)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 64)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 65)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 66)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 67)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 68)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 69)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 70)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 71)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 72)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 73)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 74)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 75)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 76)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 77)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 78)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 79)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 80)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 81)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 82)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 83)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 84)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 85)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 86)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 87)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 88)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 89)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué palabra se asocia más directamente con “tortilla”? (Asociación 90)",
                options: ["Taco", "Manzana", "Coche", "Libro"],
                correctAnswer: "Taco",
                explanation: "Tortillas are directly associated with making tacos."
            )
        ]
    )

    // MARK: - Sinónimos (Difícil)
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Sinónimos (Difícil)",
        instructions: "Elige la palabra que significa lo MISMO que la palabra dada.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: MELANCOLÍA",
                options: ["alegría", "tristeza", "entusiasmo", "calma"],
                correctAnswer: "tristeza",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: APACIBLE",
                options: ["ruidoso", "agitado", "pacífico", "frenético"],
                correctAnswer: "pacífico",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: VALEROSO",
                options: ["tímido", "temeroso", "audaz", "cobarde"],
                correctAnswer: "audaz",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: PECULIAR",
                options: ["común", "extraño", "normal", "típico"],
                correctAnswer: "extraño",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: COPIOSO",
                options: ["escaso", "abundante", "raro", "limitado"],
                correctAnswer: "abundante",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: ENFEBLECIDO",
                options: ["fuerte", "vigoroso", "débil", "robusto"],
                correctAnswer: "débil",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: NÍTIDO",
                options: ["borroso", "pálido", "claro", "difuso"],
                correctAnswer: "claro",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: PARCO",
                options: ["derrochador", "frugal", "espléndido", "generoso"],
                correctAnswer: "frugal",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: LOCUAZ",
                options: ["mudo", "hablador", "silencioso", "torpe"],
                correctAnswer: "hablador",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: TENAZ",
                options: ["débil", "inconstante", "persistente", "flexible"],
                correctAnswer: "persistente",
                explanation: ""
            )
        ]
    )

    // MARK: - Antónimos
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Antónimos",
        instructions: "Elige la palabra que significa lo OPUESTO de la palabra dada.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: CALIENTE",
                options: ["cálido", "frío", "fresco", "tibio"],
                correctAnswer: "frío",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: FELIZ",
                options: ["alegre", "contento", "triste", "satisfecho"],
                correctAnswer: "triste",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: GRANDE",
                options: ["enorme", "gigante", "pequeño", "alto"],
                correctAnswer: "pequeño",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: RÁPIDO",
                options: ["veloz", "lento", "acelerado", "pronto"],
                correctAnswer: "lento",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: LIMPIO",
                options: ["ordenado", "despejado", "sucio", "fresco"],
                correctAnswer: "sucio",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: DESPIERTO",
                options: ["alerta", "atento", "dormido", "activo"],
                correctAnswer: "dormido",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: RUIDOSO",
                options: ["fuerte", "alto", "silencioso", "potente"],
                correctAnswer: "silencioso",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: ABIERTO",
                options: ["cerrado", "ancho", "despejado", "libre"],
                correctAnswer: "cerrado",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: LLENO",
                options: ["cargado", "vacío", "repleto", "completo"],
                correctAnswer: "vacío",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: AMOR",
                options: ["adorar", "querer", "odio", "afecto"],
                correctAnswer: "odio",
                explanation: ""
            )
        ]
    )

    // MARK: - Completar Oraciones (Fácil)
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Completar Oraciones (Fácil)",
        instructions: "Elige la palabra que mejor completa la oración.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ella regó las ___.",
                options: ["flores", "pisos", "harinas"],
                correctAnswer: "flores",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él se puso el ___.",
                options: ["abrigo", "barco", "cabra"],
                correctAnswer: "abrigo",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Necesito un vaso de ___.",
                options: ["agua", "mesero", "bota"],
                correctAnswer: "agua",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella llamó a su ___.",
                options: ["madre", "molestia", "jabón"],
                correctAnswer: "madre",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El perro movió la ___.",
                options: ["cola", "cuento", "alto"],
                correctAnswer: "cola",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él apagó la ___.",
                options: ["luz", "noche", "pelea"],
                correctAnswer: "luz",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella horneó un ___.",
                options: ["pastel", "lago", "falso"],
                correctAnswer: "pastel",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El pájaro construyó un ___.",
                options: ["nido", "descanso", "prueba"],
                correctAnswer: "nido",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él leyó el ___.",
                options: ["periódico", "papelera", "lija"],
                correctAnswer: "periódico",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Los niños jugaron en el ___.",
                options: ["parque", "ladrido", "oscuro"],
                correctAnswer: "parque",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 1)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 2)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 3)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 4)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 5)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 6)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 7)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 8)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 9)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 10)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 11)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 12)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 13)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 14)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 15)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 16)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 17)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 18)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 19)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 20)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 21)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 22)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 23)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 24)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 25)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 26)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 27)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 28)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 29)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 30)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 31)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 32)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 33)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 34)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 35)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 36)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 37)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 38)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 39)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 40)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 41)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 42)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 43)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 44)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 45)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 46)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 47)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 48)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 49)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 50)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 51)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 52)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 53)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 54)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 55)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 56)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 57)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 58)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 59)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 60)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 61)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 62)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 63)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 64)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 65)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 66)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 67)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 68)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 69)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 70)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 71)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 72)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 73)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 74)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 75)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 76)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 77)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 78)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 79)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 80)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 81)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 82)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 83)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 84)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 85)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 86)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 87)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 88)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 89)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale pájaro en mano que ciento ___ (Refrán 90)",
                options: ["volando", "corriendo", "cantando", "durmiendo"],
                correctAnswer: "volando",
                explanation: "Popular Spanish proverb completion."
            )
        ]
    )

    // MARK: - Formación de Palabras
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Formación de Palabras",
        instructions: "Elige la palabra formada correctamente para completar la oración.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Los niños corrieron ___.",
                options: ["rápido", "rápidamente", "rapidísimo"],
                correctAnswer: "rápidamente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella es la estudiante más ___ de la clase.",
                options: ["inteligente", "inteligentísima", "inteligentoso"],
                correctAnswer: "inteligentísima",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él necesita ___ su ensayo.",
                options: ["reescribir", "unscribir", "describir"],
                correctAnswer: "reescribir",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella se sintió ___ después de la caminata.",
                options: ["cansar", "cansada", "cansancio"],
                correctAnswer: "cansada",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La puerta estaba ___.",
                options: ["cerrar", "cerrada", "cerrando"],
                correctAnswer: "cerrada",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él actuó muy ___.",
                options: ["niño", "niñería", "infantilmente"],
                correctAnswer: "infantilmente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella tiene dos ___.",
                options: ["hijo", "hijos", "hije"],
                correctAnswer: "hijos",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él habló ___ sobre el accidente.",
                options: ["cuidadoso", "cuidadosamente", "cuidadito"],
                correctAnswer: "cuidadosamente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El pastel estaba ___.",
                options: ["decorar", "decorado", "decorando"],
                correctAnswer: "decorado",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella es más ___ que su hermano.",
                options: ["alto", "alta", "altísima"],
                correctAnswer: "alta",
                explanation: ""
            )
        ]
    )

    // MARK: - Palabras Homófonas
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Palabras Homófonas",
        instructions: "La pareja de palabras se muestra arriba. Elige la opción correcta para completar los espacios en orden.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "[tubo / tuvo] El plomero arregló el ___ de agua. Ella ___ que ir al médico.",
                options: ["tubo…tuvo", "tuvo…tubo", "tubo…tubo", "tuvo…tuvo"],
                correctAnswer: "tubo…tuvo",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[vaya / valla] Espero que él ___ pronto. El jardín tiene una ___ blanca.",
                options: ["vaya…valla", "valla…vaya", "vaya…vaya", "valla…valla"],
                correctAnswer: "vaya…valla",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[bello / vello] El paisaje es muy ___. Él tiene ___ en los brazos.",
                options: ["bello…vello", "vello…bello", "bello…bello", "vello…vello"],
                correctAnswer: "bello…vello",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[casa / caza] Vivimos en una ___ pequeña. La ___ de animales está prohibida.",
                options: ["casa…caza", "caza…casa", "casa…casa", "caza…caza"],
                correctAnswer: "casa…caza",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[hola / ola] Ella dijo ___ al entrar. Una gran ___ golpeó la playa.",
                options: ["hola…ola", "ola…hola", "hola…hola", "ola…ola"],
                correctAnswer: "hola…ola",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[echo / hecho] Siempre ___ la basura en su lugar. El pastel ya está ___.",
                options: ["echo…hecho", "hecho…echo", "echo…echo", "hecho…hecho"],
                correctAnswer: "echo…hecho",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[cien / sien] Ella contó hasta ___ dólares. Le duele la ___ derecha.",
                options: ["cien…sien", "sien…cien", "cien…cien", "sien…sien"],
                correctAnswer: "cien…sien",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[hierba / hierva] La ___ crece en el jardín. Espere a que el agua ___.",
                options: ["hierba…hierva", "hierva…hierba", "hierba…hierba", "hierva…hierva"],
                correctAnswer: "hierba…hierva",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[savia / sabia] La ___ nutre al árbol. Ella es una mujer muy ___.",
                options: ["savia…sabia", "sabia…savia", "savia…savia", "sabia…sabia"],
                correctAnswer: "savia…sabia",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[cabo / cavo] Él es ___ en el ejército. Yo ___ un hoyo en la tierra.",
                options: ["cabo…cavo", "cavo…cabo", "cabo…cabo", "cavo…cavo"],
                correctAnswer: "cabo…cavo",
                explanation: ""
            )
        ]
    )

    // MARK: - Analogías
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Analogías",
        instructions: "Elige la palabra que completa mejor la analogía.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "CACHORRO es a PERRO como GATITO es a ___",
                options: ["Gato", "Perro", "Pájaro", "Pez"],
                correctAnswer: "Gato",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "FRÍO es a INVIERNO como CALIENTE es a ___",
                options: ["Primavera", "Otoño", "Verano", "Lluvia"],
                correctAnswer: "Verano",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "OJO es a VER como OÍDO es a ___",
                options: ["Tocar", "Oír", "Oler", "Gustar"],
                correctAnswer: "Oír",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CHEF es a COCINA como DOCTOR es a ___",
                options: ["Biblioteca", "Hospital", "Escuela", "Tienda"],
                correctAnswer: "Hospital",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GUANTE es a MANO como CALCETÍN es a ___",
                options: ["Brazo", "Rodilla", "Pie", "Cabeza"],
                correctAnswer: "Pie",
                explanation: ""
            )
        ]
    )

    // MARK: - Hecho u Opinión
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Hecho u Opinión",
        instructions: "Decide: ¿esta afirmación es un HECHO o una OPINIÓN?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Hay 7 días en una semana.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La vainilla es el mejor sabor de helado.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El agua se congela a 0 grados Celsius o 32 Fahrenheit.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Los perros son las mejores mascotas.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Un triángulo tiene tres lados.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Esa película es muy divertida.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El océano es de agua salada.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La jardinería es un gran pasatiempo.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Las piedras son más pesadas que las plumas.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La pizza es la mejor comida.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México?",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 1)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 2)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 3)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 4)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 5)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 6)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 7)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 8)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 9)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 10)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 11)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 12)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 13)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 14)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 15)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 16)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 17)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 18)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 19)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 20)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 21)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 22)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 23)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 24)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 25)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 26)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 27)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 28)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 29)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 30)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 31)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 32)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 33)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 34)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 35)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 36)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 37)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 38)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 39)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 40)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 41)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 42)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 43)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 44)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 45)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 46)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 47)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 48)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 49)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Es el mariachi un género musical tradicional originario de México? (Pregunta 50)",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Mariachi music originated in Mexico."
            )
        ]
    )

    // MARK: - Secuencia de Pasos
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Secuencia de Pasos",
        instructions: "Los pasos están en el orden INCORRECTO. Ordénalos del 1 al 4 para ponerlos en la secuencia correcta.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar pan tostado",
                options: ["Untar mantequilla", "Poner el pan en la tostadora", "Retirar de la tostadora", "Comer"],
                correctAnswer: "Poner el pan en la tostadora | Retirar de la tostadora | Untar mantequilla | Comer",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavarse las manos",
                options: ["Secarse con una toalla", "Aplicar jabón", "Abrir el grifo de agua", "Frotar por 20 segundos", "Enjuagar el jabón", "Mojarse las manos"],
                correctAnswer: "Abrir el grifo de agua | Mojarse las manos | Aplicar jabón | Frotar por 20 segundos | Enjuagar el jabón | Secarse con una toalla",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hacer café de filtro",
                options: ["Servir en la taza", "Poner café molido en el filtro", "Presionar el botón de inicio", "Llenar el depósito de agua"],
                correctAnswer: "Llenar el depósito de agua | Poner café molido en el filtro | Presionar el botón de inicio | Servir en la taza",
                explanation: ""
            )
        ]
    )
}
