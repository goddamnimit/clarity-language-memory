import Foundation

/// Holds the static therapy content for the Spanish Language section of Clarity.
struct SpanishLanguageExerciseData {
    
    /// The complete collection of all 12 Spanish Language exercises.
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
    
    // MARK: - Exercise 1: Category Cross-Out (Easy)
    private static let exercise1 = Exercise(
        title: "Intruso entre palabras (Fácil)",
        instructions: "Toca la palabra que NO pertenece al grupo.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "MANZANA, PERA, ZANAHORIA, CIRUELA", options: ["MANZANA", "PERA", "ZANAHORIA", "CIRUELA"], correctAnswer: "ZANAHORIA", explanation: "Es un vegetal, no una fruta"),
            ExerciseItem(prompt: "AUTO, AUTOBÚS, CUCHARA, CAMIÓN", options: ["AUTO", "AUTOBÚS", "CUCHARA", "CAMIÓN"], correctAnswer: "CUCHARA", explanation: "No es un vehículo"),
            ExerciseItem(prompt: "ORO, GATO, PERRO, PÁJARO", options: ["ORO", "GATO", "PERRO", "PÁJARO"], correctAnswer: "ORO", explanation: "Es un metal, no un animal"),
            ExerciseItem(prompt: "CAMISA, PANTALÓN, TENEDOR, SOMBRERO", options: ["CAMISA", "PANTALÓN", "TENEDOR", "SOMBRERO"], correctAnswer: "TENEDOR", explanation: "No es una prenda de vestir"),
            ExerciseItem(prompt: "SILLA, MESA, MANZANA, CAMA", options: ["SILLA", "MESA", "MANZANA", "CAMA"], correctAnswer: "MANZANA", explanation: "Es un alimento, no un mueble"),
            ExerciseItem(prompt: "MARTILLO, LLAVE, ALMOHADA, TALADRO", options: ["MARTILLO", "LLAVE", "ALMOHADA", "TALADRO"], correctAnswer: "ALMOHADA", explanation: "No es una herramienta"),
            ExerciseItem(prompt: "ENERO, MARZO, VIERNES, MAYO", options: ["ENERO", "MARZO", "VIERNES", "MAYO"], correctAnswer: "VIERNES", explanation: "Es un día de la semana, no un mes"),
            ExerciseItem(prompt: "PARÍS, LONDRES, JÚPITER, ROMA", options: ["PARÍS", "LONDRES", "JÚPITER", "ROMA"], correctAnswer: "JÚPITER", explanation: "Es un planeta, no una ciudad"),
            ExerciseItem(prompt: "PERRO, GATO, ÁRBOL, RATÓN", options: ["PERRO", "GATO", "ÁRBOL", "RATÓN"], correctAnswer: "ÁRBOL", explanation: "No es un animal"),
            ExerciseItem(prompt: "OJO, NARIZ, AUTO, OREJA", options: ["OJO", "NARIZ", "AUTO", "OREJA"], correctAnswer: "AUTO", explanation: "No es una parte del cuerpo")
        ]
    )
    
    // MARK: - Exercise 2: Category Cross-Out (Hard)
    private static let exercise2 = Exercise(
        title: "Intruso entre palabras (Difícil)",
        instructions: "Toca la palabra que NO pertenece al grupo.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "SÍMIL, METÁFORA, HIPÉRBOLE, PÁRRAFO", options: ["SÍMIL", "METÁFORA", "HIPÉRBOLE", "PÁRRAFO"], correctAnswer: "PÁRRAFO", explanation: "Es una estructura de texto, no una figura retórica"),
            ExerciseItem(prompt: "FÉMUR, TIBIA, RADIO, CÓRNEA", options: ["FÉMUR", "TIBIA", "RADIO", "CÓRNEA"], correctAnswer: "CÓRNEA", explanation: "Es parte del ojo, no un hueso"),
            ExerciseItem(prompt: "BEETHOVEN, MOZART, PICASSO, CHOPIN", options: ["BEETHOVEN", "MOZART", "PICASSO", "CHOPIN"], correctAnswer: "PICASSO", explanation: "Es un pintor, no un compositor de música"),
            ExerciseItem(prompt: "SACO, CHALECO, BLUSA, TACÓN", options: ["SACO", "CHALECO", "BLUSA", "TACÓN"], correctAnswer: "TACÓN", explanation: "Es un tipo de calzado, no una prenda para el torso"),
            ExerciseItem(prompt: "NILO, AMAZONAS, TÁMESIS, EVEREST", options: ["NILO", "AMAZONAS", "TÁMESIS", "EVEREST"], correctAnswer: "EVEREST", explanation: "Es una montaña, no un río"),
            ExerciseItem(prompt: "MEMORIAS, BIOGRAFÍA, AUTOBIOGRAFÍA, SONETO", options: ["MEMORIAS", "BIOGRAFÍA", "AUTOBIOGRAFÍA", "SONETO"], correctAnswer: "SONETO", explanation: "Es un poema, no una narración sobre una vida"),
            ExerciseItem(prompt: "INSULINA, ADRENALINA, ESTRÓGENO, IBUPROFENO", options: ["INSULINA", "ADRENALINA", "ESTRÓGENO", "IBUPROFENO"], correctAnswer: "IBUPROFENO", explanation: "Es un medicamento sintético, no una hormona natural"),
            ExerciseItem(prompt: "CELSIUS, FAHRENHEIT, KELVIN, DECIBELIO", options: ["CELSIUS", "FAHRENHEIT", "KELVIN", "DECIBELIO"], correctAnswer: "DECIBELIO", explanation: "Mide el sonido, no la temperatura"),
            ExerciseItem(prompt: "JURADO, JUEZ, ALGUACIL, DEMANDANTE", options: ["JURADO", "JUEZ", "ALGUACIL", "DEMANDANTE"], correctAnswer: "DEMANDANTE", explanation: "Es una parte en el caso, no un oficial de la corte"),
            ExerciseItem(prompt: "SONETO, HAIKÚ, LIMERICK, PROSA", options: ["SONETO", "HAIKÚ", "LIMERICK", "PROSA"], correctAnswer: "PROSA", explanation: "No es una forma poética de verso estructurado")
        ]
    )
    
    // MARK: - Exercise 3: Phrase Completion (Dichos Populares)
    private static let exercise3 = Exercise(
        title: "Dichos y Refranes",
        instructions: "Elige la palabra que completa correctamente el refrán popular.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Más vale pájaro en mano que cien ___", options: ["volando", "corriendo", "cantando", "comiendo"], correctAnswer: "volando", explanation: ""),
            ExerciseItem(prompt: "A caballo regalado no se le mira el ___", options: ["pelo", "ojo", "diente", "casco"], correctAnswer: "diente", explanation: ""),
            ExerciseItem(prompt: "En boca cerrada no entran ___", options: ["moscas", "abejas", "comidas", "palabras"], correctAnswer: "moscas", explanation: ""),
            ExerciseItem(prompt: "Al que madruga, Dios lo ___", options: ["ayuda", "mira", "llama", "salva"], correctAnswer: "ayuda", explanation: ""),
            ExerciseItem(prompt: "Dime con quién andas, y te dire quién ___", options: ["eres", "vas", "hablas", "vives"], correctAnswer: "eres", explanation: ""),
            ExerciseItem(prompt: "Ojos que no ven, corazón que no ___", options: ["siente", "llora", "ama", "sabe"], correctAnswer: "siente", explanation: ""),
            ExerciseItem(prompt: "Perro que ladra, no ___", options: ["muerde", "corriendo", "come", "juega"], correctAnswer: "muerde", explanation: ""),
            ExerciseItem(prompt: "Camarón que se duerme se lo lleva la ___", options: ["corriente", "marea", "ola", "red"], correctAnswer: "corriente", explanation: ""),
            ExerciseItem(prompt: "De tal palo, tal ___", options: ["astilla", "rama", "hoja", "árbol"], correctAnswer: "astilla", explanation: ""),
            ExerciseItem(prompt: "Más vale tarde que ___", options: ["nunca", "mañana", "ayer", "tarde"], correctAnswer: "nunca", explanation: "")
        ]
    )
    
    // MARK: - Exercise 4: Synonyms (Easy)
    private static let exercise4 = Exercise(
        title: "Sinónimos (Fácil)",
        instructions: "Elige la palabra que significa lo MISMO que la palabra dada.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Palabra: ENOJADO", options: ["feliz", "furioso", "calmado", "triste"], correctAnswer: "furioso", explanation: ""),
            ExerciseItem(prompt: "Palabra: FRÍO", options: ["cálido", "helado", "caliente", "templado"], correctAnswer: "helado", explanation: ""),
            ExerciseItem(prompt: "Palabra: GRANDE", options: ["diminuto", "enorme", "bajo", "delgado"], correctAnswer: "enorme", explanation: ""),
            ExerciseItem(prompt: "Palabra: CANSADO", options: ["alerta", "despierto", "agotado", "descansado"], correctAnswer: "agotado", explanation: ""),
            ExerciseItem(prompt: "Palabra: ASUSTADO", options: ["valiente", "aterrorizado", "tranquilo", "audaz"], correctAnswer: "aterrorizado", explanation: ""),
            ExerciseItem(prompt: "Palabra: AMABLE", options: ["tacaño", "cruel", "gentil", "grosero"], correctAnswer: "gentil", explanation: ""),
            ExerciseItem(prompt: "Palabra: RÁPIDO", options: ["lento", "veloz", "perezoso", "débil"], correctAnswer: "veloz", explanation: ""),
            ExerciseItem(prompt: "Palabra: VIEJO", options: ["joven", "anciano", "nuevo", "fresco"], correctAnswer: "anciano", explanation: ""),
            ExerciseItem(prompt: "Palabra: SUCIO", options: ["limpio", "mugriento", "ordenado", "prolijo"], correctAnswer: "mugriento", explanation: ""),
            ExerciseItem(prompt: "Palabra: BRILLANTE", options: ["tenue", "oscuro", "radiante", "apagado"], correctAnswer: "radiante", explanation: "")
        ]
    )
    
    // MARK: - Exercise 5: Synonyms (Hard)
    private static let exercise5 = Exercise(
        title: "Sinónimos (Difícil)",
        instructions: "Elige la palabra que significa lo MISMO que la palabra dada.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Palabra: MELANCOLÍA", options: ["alegría", "tristeza", "entusiasmo", "calma"], correctAnswer: "tristeza", explanation: ""),
            ExerciseItem(prompt: "Palabra: APACIBLE", options: ["ruidoso", "agitado", "pacífico", "frenético"], correctAnswer: "pacífico", explanation: ""),
            ExerciseItem(prompt: "Palabra: VALEROSO", options: ["tímido", "temeroso", "audaz", "cobarde"], correctAnswer: "audaz", explanation: ""),
            ExerciseItem(prompt: "Palabra: PECULIAR", options: ["común", "extraño", "normal", "típico"], correctAnswer: "extraño", explanation: ""),
            ExerciseItem(prompt: "Palabra: COPIOSO", options: ["escaso", "abundante", "raro", "limitado"], correctAnswer: "abundante", explanation: ""),
            ExerciseItem(prompt: "Palabra: ENFEBLECIDO", options: ["fuerte", "vigoroso", "débil", "robusto"], correctAnswer: "débil", explanation: ""),
            ExerciseItem(prompt: "Palabra: NÍTIDO", options: ["borroso", "pálido", "claro", "difuso"], correctAnswer: "claro", explanation: ""),
            ExerciseItem(prompt: "Palabra: PARCO", options: ["derrochador", "frugal", "espléndido", "generoso"], correctAnswer: "frugal", explanation: ""),
            ExerciseItem(prompt: "Palabra: LOCUAZ", options: ["mudo", "hablador", "silencioso", "torpe"], correctAnswer: "hablador", explanation: ""),
            ExerciseItem(prompt: "Palabra: TENAZ", options: ["débil", "inconstante", "persistente", "flexible"], correctAnswer: "persistente", explanation: "")
        ]
    )
    
    // MARK: - Exercise 6: Antonyms (Easy)
    private static let exercise6 = Exercise(
        title: "Antónimos",
        instructions: "Elige la palabra que significa lo OPUESTO de la palabra dada.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Palabra: CALIENTE", options: ["cálido", "frío", "fresco", "tibio"], correctAnswer: "frío", explanation: ""),
            ExerciseItem(prompt: "Palabra: FELIZ", options: ["alegre", "contento", "triste", "satisfecho"], correctAnswer: "triste", explanation: ""),
            ExerciseItem(prompt: "Palabra: GRANDE", options: ["enorme", "gigante", "pequeño", "alto"], correctAnswer: "pequeño", explanation: ""),
            ExerciseItem(prompt: "Palabra: RÁPIDO", options: ["veloz", "lento", "acelerado", "veloz"], correctAnswer: "lento", explanation: ""),
            ExerciseItem(prompt: "Palabra: LIMPIO", options: ["ordenado", "despejado", "sucio", "fresco"], correctAnswer: "sucio", explanation: ""),
            ExerciseItem(prompt: "Palabra: DESPIERTO", options: ["alerta", "atento", "dormido", "activo"], correctAnswer: "dormido", explanation: ""),
            ExerciseItem(prompt: "Palabra: RUIDOSO", options: ["fuerte", "alto", "silencioso", "potente"], correctAnswer: "silencioso", explanation: ""),
            ExerciseItem(prompt: "Palabra: ABIERTO", options: ["cerrado", "ancho", "despejado", "libre"], correctAnswer: "cerrado", explanation: ""),
            ExerciseItem(prompt: "Palabra: LLENO", options: ["cargado", "vacío", "repleto", "completo"], correctAnswer: "vacío", explanation: ""),
            ExerciseItem(prompt: "Palabra: AMOR", options: ["adorar", "querer", "odio", "afecto"], correctAnswer: "odio", explanation: "")
        ]
    )
    
    // MARK: - Exercise 7: Sentence Completion (Easy)
    private static let exercise7 = Exercise(
        title: "Completar Oraciones (Fácil)",
        instructions: "Elige la palabra que mejor completa la oración.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Ella regó las ___.", options: ["flores", "pisos", "harinas"], correctAnswer: "flores", explanation: ""),
            ExerciseItem(prompt: "Él se puso el ___.", options: ["abrigo", "barco", "cabra"], correctAnswer: "abrigo", explanation: ""),
            ExerciseItem(prompt: "Necesito un vaso de ___.", options: ["agua", "mesero", "bota"], correctAnswer: "agua", explanation: ""),
            ExerciseItem(prompt: "Ella llamó a su ___.", options: ["madre", "molestia", "jabón"], correctAnswer: "madre", explanation: ""),
            ExerciseItem(prompt: "El perro movió la ___.", options: ["cola", "cuento", "alto"], correctAnswer: "cola", explanation: ""),
            ExerciseItem(prompt: "Él apagó la ___.", options: ["luz", "noche", "pelea"], correctAnswer: "luz", explanation: ""),
            ExerciseItem(prompt: "Ella horneó un ___.", options: ["pastel", "lago", "falso"], correctAnswer: "pastel", explanation: ""),
            ExerciseItem(prompt: "El pájaro construyó un ___.", options: ["nido", "descanso", "prueba"], correctAnswer: "nido", explanation: ""),
            ExerciseItem(prompt: "Él leyó el ___.", options: ["periódico", "papelera", "lija"], correctAnswer: "periódico", explanation: ""),
            ExerciseItem(prompt: "Los niños jugaron en el ___.", options: ["parque", "ladrido", "oscuro"], correctAnswer: "parque", explanation: "")
        ]
    )
    
    // MARK: - Exercise 8: Morphology (Suffixes/Prefixes)
    private static let exercise8 = Exercise(
        title: "Formación de Palabras",
        instructions: "Elige la palabra formada correctamente para completar la oración.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Los niños corrieron ___.", options: ["rápido", "rápidamente", "rapidísimo"], correctAnswer: "rápidamente", explanation: ""),
            ExerciseItem(prompt: "Ella es la estudiante más ___ de la clase.", options: ["inteligente", "inteligentísima", "inteligentoso"], correctAnswer: "inteligentísima", explanation: ""),
            ExerciseItem(prompt: "Él necesita ___ su ensayo.", options: ["reescribir", "unscribir", "describir"], correctAnswer: "reescribir", explanation: ""),
            ExerciseItem(prompt: "Ella se sintió ___ después de la caminata.", options: ["cansar", "cansada", "cansancio"], correctAnswer: "cansada", explanation: ""),
            ExerciseItem(prompt: "La puerta estaba ___.", options: ["cerrar", "cerrada", "cerrando"], correctAnswer: "cerrada", explanation: ""),
            ExerciseItem(prompt: "Él actuó muy ___.", options: ["niño", "niñería", "infantilmente"], correctAnswer: "infantilmente", explanation: ""),
            ExerciseItem(prompt: "Ella tiene dos ___.", options: ["hijo", "hijos", "hije"], correctAnswer: "hijos", explanation: ""),
            ExerciseItem(prompt: "Él habló ___ sobre el accidente.", options: ["cuidadoso", "cuidadosamente", "cuidadito"], correctAnswer: "cuidadosamente", explanation: ""),
            ExerciseItem(prompt: "El pastel estaba ___.", options: ["decorar", "decorado", "decorando"], correctAnswer: "decorado", explanation: ""),
            ExerciseItem(prompt: "Ella es más ___ que su hermano.", options: ["alto", "alta", "altísima"], correctAnswer: "alta", explanation: "")
        ]
    )
    
    // MARK: - Exercise 9: Homonyms (Easy)
    private static let exercise9 = Exercise(
        title: "Palabras Homófonas",
        instructions: "La pareja de palabras se muestra arriba. Elige la opción correcta para completar los espacios en orden.",
        section: .language,
        type: .homonym,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "[tubo / tuvo] El plomero arregló el ___ de agua. Ella ___ que ir al médico.", options: ["tubo…tuvo", "tuvo…tubo", "tubo…tubo", "tuvo…tuvo"], correctAnswer: "tubo…tuvo", explanation: ""),
            ExerciseItem(prompt: "[vaya / valla] Espero que él ___ pronto. El jardín tiene una ___ blanca.", options: ["vaya…valla", "valla…vaya", "vaya…vaya", "valla…valla"], correctAnswer: "vaya…valla", explanation: ""),
            ExerciseItem(prompt: "[bello / vello] El paisaje es muy ___. Él tiene ___ en los brazos.", options: ["bello…vello", "vello…bello", "bello…bello", "vello…vello"], correctAnswer: "bello…vello", explanation: ""),
            ExerciseItem(prompt: "[casa / caza] Vivimos en una ___ pequeña. La ___ de animales está prohibida.", options: ["casa…caza", "caza…casa", "casa…casa", "caza…caza"], correctAnswer: "casa…caza", explanation: ""),
            ExerciseItem(prompt: "[hola / ola] Ella dijo ___ al entrar. Una gran ___ golpeó la playa.", options: ["hola…ola", "ola…hola", "hola…hola", "ola…ola"], correctAnswer: "hola…ola", explanation: ""),
            ExerciseItem(prompt: "[echo / hecho] Siempre ___ la basura en su lugar. El pastel ya está ___.", options: ["echo…hecho", "hecho…echo", "echo…echo", "hecho…hecho"], correctAnswer: "echo…hecho", explanation: ""),
            ExerciseItem(prompt: "[cien / sien] Ella contó hasta ___ dólares. Le duele la ___ derecha.", options: ["cien…sien", "sien…cien", "cien…cien", "sien…sien"], correctAnswer: "cien…sien", explanation: ""),
            ExerciseItem(prompt: "[hierba / hierva] La ___ crece en el jardín. Espere a que el agua ___.", options: ["hierba…hierva", "hierva…hierba", "hierba…hierba", "hierva…hierva"], correctAnswer: "hierba…hierva", explanation: ""),
            ExerciseItem(prompt: "[savia / sabia] La ___ nutre al árbol. Ella es una mujer muy ___.", options: ["savia…sabia", "sabia…savia", "savia…savia", "sabia…sabia"], correctAnswer: "savia…sabia", explanation: ""),
            ExerciseItem(prompt: "[cabo / cavo] Él es ___ en el ejército. Yo ___ un hoyo en la tierra.", options: ["cabo…cavo", "cavo…cabo", "cabo…cabo", "cavo…cavo"], correctAnswer: "cabo…cavo", explanation: "")
        ]
    )
    
    // MARK: - Exercise 10: Analogies
    private static let exercise10 = Exercise(
        title: "Analogías",
        instructions: "Elige la palabra que completa mejor la analogía.",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "CACHORRO es a PERRO como GATITO es a ___", options: ["Gato", "Perro", "Pájaro", "Pez"], correctAnswer: "Gato", explanation: ""),
            ExerciseItem(prompt: "FRÍO es a INVIERNO como CALIENTE es a ___", options: ["Primavera", "Otoño", "Verano", "Lluvia"], correctAnswer: "Verano", explanation: ""),
            ExerciseItem(prompt: "OJO es a VER como OÍDO es a ___", options: ["Tocar", "Oír", "Oler", "Gustar"], correctAnswer: "Oír", explanation: ""),
            ExerciseItem(prompt: "CHEF es a COCINA como DOCTOR es a ___", options: ["Biblioteca", "Hospital", "Escuela", "Tienda"], correctAnswer: "Hospital", explanation: ""),
            ExerciseItem(prompt: "GUANTE es a MANO como CALCETÍN es a ___", options: ["Brazo", "Rodilla", "Pie", "Cabeza"], correctAnswer: "Pie", explanation: "")
        ]
    )
    
    // MARK: - Exercise 11: Fact or Opinion
    private static let exercise11 = Exercise(
        title: "Hecho u Opinión",
        instructions: "Decide: ¿esta afirmación es un HECHO o una OPINIÓN?",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Hay 7 días en una semana.", options: ["Hecho", "Opinión"], correctAnswer: "Hecho", explanation: ""),
            ExerciseItem(prompt: "La vainilla es el mejor sabor de helado.", options: ["Hecho", "Opinión"], correctAnswer: "Opinión", explanation: ""),
            ExerciseItem(prompt: "El agua se congela a 0 grados Celsius o 32 Fahrenheit.", options: ["Hecho", "Opinión"], correctAnswer: "Hecho", explanation: ""),
            ExerciseItem(prompt: "Los perros son las mejores mascotas.", options: ["Hecho", "Opinión"], correctAnswer: "Opinión", explanation: ""),
            ExerciseItem(prompt: "Un triángulo tiene tres lados.", options: ["Hecho", "Opinión"], correctAnswer: "Hecho", explanation: ""),
            ExerciseItem(prompt: "Esa película es muy divertida.", options: ["Hecho", "Opinión"], correctAnswer: "Opinión", explanation: ""),
            ExerciseItem(prompt: "El océano es de agua salada.", options: ["Hecho", "Opinión"], correctAnswer: "Hecho", explanation: ""),
            ExerciseItem(prompt: "La jardinería es un gran pasatiempo.", options: ["Hecho", "Opinión"], correctAnswer: "Opinión", explanation: ""),
            ExerciseItem(prompt: "Las piedras son más pesadas que las plumas.", options: ["Hecho", "Opinión"], correctAnswer: "Hecho", explanation: ""),
            ExerciseItem(prompt: "La pizza es la mejor comida.", options: ["Hecho", "Opinión"], correctAnswer: "Opinión", explanation: "")
        ]
    )
    
    // MARK: - Exercise 12: Sequencing Steps
    private static let exercise12 = Exercise(
        title: "Secuencia de Pasos",
        instructions: "Los pasos están en el orden INCORRECTO. Ordénalos del 1 al 4 para ponerlos en la secuencia correcta.",
        section: .language,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                prompt: "Preparar pan tostado",
                options: ["Untar mantequilla", "Poner el pan en la tostadora", "Retirar de la tostadora", "Comer"],
                correctAnswer: "Poner el pan en la tostadora | Retirar de la tostadora | Untar mantequilla | Comer",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Lavarse las manos",
                options: ["Secarse con una toalla", "Aplicar jabón", "Abrir el grifo de agua", "Frotar por 20 segundos", "Enjuagar el jabón", "Mojarse las manos"],
                correctAnswer: "Abrir el grifo de agua | Mojarse las manos | Aplicar jabón | Frotar por 20 segundos | Enjuagar el jabón | Secarse con una toalla",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Hacer café de filtro",
                options: ["Servir en la taza", "Poner café molido en el filtro", "Presionar el botón de inicio", "Llenar el depósito de agua"],
                correctAnswer: "Llenar el depósito de agua | Poner café molido en el filtro | Presionar el botón de inicio | Servir en la taza",
                explanation: ""
            )
        ]
    )
}

