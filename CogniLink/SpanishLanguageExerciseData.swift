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
                explanation: "Es un refrán popular que enseña el valor de conservar lo seguro frente a la ambición de conseguir algo mayor pero incierto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A caballo regalado no se le mira el ___",
                options: ["pelo", "ojo", "diente", "casco"],
                correctAnswer: "diente",
                explanation: "Este dicho aconseja que cuando se recibe un regalo, no se le deben buscar defectos ni criticarlo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "En boca cerrada no entran ___",
                options: ["moscas", "abejas", "comidas", "palabras"],
                correctAnswer: "moscas",
                explanation: "Un proverbio que advierte sobre los peligros de hablar de más, sugiriendo que la discreción evita muchos problemas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Al que madruga, Dios lo ___",
                options: ["ayuda", "mira", "llama", "salva"],
                correctAnswer: "ayuda",
                explanation: "Este refrán resalta la importancia de la diligencia, el esfuerzo temprano y la proactividad para alcanzar el éxito."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dime con quién andas, y te dire quién ___",
                options: ["eres", "vas", "hablas", "vives"],
                correctAnswer: "eres",
                explanation: "Subraya la influencia que tienen las amistades y el entorno social en el comportamiento y la reputación de una persona."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ojos que no ven, corazón que no ___",
                options: ["siente", "llora", "ama", "sabe"],
                correctAnswer: "siente",
                explanation: "Expresa la idea de que la ignorancia sobre algo doloroso o perjudicial evita el sufrimiento emocional."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Perro que ladra, no ___",
                options: ["muerde", "corriendo", "come", "juega"],
                correctAnswer: "muerde",
                explanation: "Significa que las personas que amenazan mucho o hacen mucho ruido rara vez pasan a la acción o cumplen sus amenazas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Camarón que se duerme se lo lleva la ___",
                options: ["corriente", "marea", "ola", "red"],
                correctAnswer: "corriente",
                explanation: "Advierte contra la pereza y el descuido, señalando que la falta de atención o acción puede llevar al fracaso o a perder oportunidades."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "De tal palo, tal ___",
                options: ["astilla", "rama", "hoja", "árbol"],
                correctAnswer: "astilla",
                explanation: "Refrán que señala la similitud en carácter, comportamiento o apariencia entre padres e hijos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Más vale tarde que ___",
                options: ["nunca", "mañana", "ayer", "tarde"],
                correctAnswer: "nunca",
                explanation: "Sugiere que es preferible hacer algo después de lo esperado o planeado, en lugar de no hacerlo en absoluto."
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
            ExerciseItem(id: UUID(), prompt: "Palabra: ENOJADO", options: ["furioso", "feliz", "calmado", "triste"], correctAnswer: "furioso", explanation: "Enojado significa furioso."),
            ExerciseItem(id: UUID(), prompt: "Palabra: FRÍO", options: ["helado", "cálido", "caliente", "templado"], correctAnswer: "helado", explanation: "Frío significa helado."),
            ExerciseItem(id: UUID(), prompt: "Palabra: GRANDE", options: ["enorme", "diminuto", "bajo", "delgado"], correctAnswer: "enorme", explanation: "Grande significa enorme."),
            ExerciseItem(id: UUID(), prompt: "Palabra: RÁPIDO", options: ["veloz", "lento", "pesado", "quieto"], correctAnswer: "veloz", explanation: "Rápido significa veloz."),
            ExerciseItem(id: UUID(), prompt: "Palabra: TRISTE", options: ["melancólico", "alegre", "enérgico", "gordo"], correctAnswer: "melancólico", explanation: "Triste significa melancólico."),
            ExerciseItem(id: UUID(), prompt: "Palabra: BONITO", options: ["hermoso", "feo", "sucio", "roto"], correctAnswer: "hermoso", explanation: "Bonito significa hermoso."),
            ExerciseItem(id: UUID(), prompt: "Palabra: DIFÍCIL", options: ["complicado", "fácil", "sencillo", "suave"], correctAnswer: "complicado", explanation: "Difícil significa complicado."),
            ExerciseItem(id: UUID(), prompt: "Palabra: LIMPIO", options: ["aseado", "sucio", "manchado", "viejo"], correctAnswer: "aseado", explanation: "Limpio significa aseado."),
            ExerciseItem(id: UUID(), prompt: "Palabra: PEQUEÑO", options: ["chico", "grande", "alto", "ancho"], correctAnswer: "chico", explanation: "Pequeño significa chico."),
            ExerciseItem(id: UUID(), prompt: "Palabra: INTELIGENTE", options: ["listo", "tonto", "lento", "torpe"], correctAnswer: "listo", explanation: "Inteligente significa listo."),
            ExerciseItem(id: UUID(), prompt: "Palabra: CONTENTO", options: ["alegre", "triste", "aburrido", "enojado"], correctAnswer: "alegre", explanation: "Contento significa alegre."),
            ExerciseItem(id: UUID(), prompt: "Palabra: OSCURO", options: ["sombrío", "claro", "brillante", "limpio"], correctAnswer: "sombrío", explanation: "Oscuro significa sombrío."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ENOJADO", options: ["furioso", "feliz", "calmado", "triste"], correctAnswer: "furioso", explanation: "Enojado significa furioso."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: FRÍO", options: ["helado", "cálido", "caliente", "templado"], correctAnswer: "helado", explanation: "Frío significa helado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: GRANDE", options: ["enorme", "diminuto", "bajo", "delgado"], correctAnswer: "enorme", explanation: "Grande significa enorme."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: RÁPIDO", options: ["veloz", "lento", "pesado", "quieto"], correctAnswer: "veloz", explanation: "Rápido significa veloz."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: TRISTE", options: ["melancólico", "alegre", "enérgico", "gordo"], correctAnswer: "melancólico", explanation: "Triste significa melancólico."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: BONITO", options: ["hermoso", "feo", "sucio", "roto"], correctAnswer: "hermoso", explanation: "Bonito significa hermoso."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DIFÍCIL", options: ["complicado", "fácil", "sencillo", "suave"], correctAnswer: "complicado", explanation: "Difícil significa complicado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: LIMPIO", options: ["aseado", "sucio", "manchado", "viejo"], correctAnswer: "aseado", explanation: "Limpio significa aseado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: PEQUEÑO", options: ["chico", "grande", "alto", "ancho"], correctAnswer: "chico", explanation: "Pequeño significa chico."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: INTELIGENTE", options: ["listo", "tonto", "lento", "torpe"], correctAnswer: "listo", explanation: "Inteligente significa listo."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CONTENTO", options: ["alegre", "triste", "aburrido", "enojado"], correctAnswer: "alegre", explanation: "Contento significa alegre."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: OSCURO", options: ["sombrío", "claro", "brillante", "limpio"], correctAnswer: "sombrío", explanation: "Oscuro significa sombrío."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CANSADO", options: ["fatigado", "activo", "alerta", "despierto"], correctAnswer: "fatigado", explanation: "Cansado significa fatigado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: GENTIL", options: ["amable", "tosco", "grosero", "cruel"], correctAnswer: "amable", explanation: "Gentil significa amable."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ESTUDIANTE", options: ["alumno", "profesor", "director", "guardia"], correctAnswer: "alumno", explanation: "Estudiante significa alumno."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: COMPRENDER", options: ["entender", "olvidar", "ignorar", "negar"], correctAnswer: "entender", explanation: "Comprender significa entender."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: PAZ", options: ["tranquilidad", "guerra", "ruido", "caos"], correctAnswer: "tranquilidad", explanation: "Paz significa tranquilidad."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: GUSTAR", options: ["agradar", "odiar", "molestar", "evitar"], correctAnswer: "agradar", explanation: "Gustar significa agradar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: TERMINAR", options: ["acabar", "iniciar", "empezar", "continuar"], correctAnswer: "acabar", explanation: "Terminar significa acabar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: EMPEZAR", options: ["comenzar", "finalizar", "terminar", "concluir"], correctAnswer: "comenzar", explanation: "Empezar significa comenzar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CÁLIDO", options: ["caluroso", "gélido", "frío", "helado"], correctAnswer: "caluroso", explanation: "Cálido significa caluroso."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DELGADO", options: ["flaco", "gordo", "ancho", "pesado"], correctAnswer: "flaco", explanation: "Delgado significa flaco."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: SILENCIOSO", options: ["callado", "ruidoso", "fuerte", "gritón"], correctAnswer: "callado", explanation: "Silencioso significa callado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: VERDAD", options: ["realidad", "mentira", "falsedad", "ficción"], correctAnswer: "realidad", explanation: "Verdad significa realidad."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: NUEVO", options: ["moderno", "antiguo", "viejo", "usado"], correctAnswer: "moderno", explanation: "Nuevo significa moderno."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: FÁCIL", options: ["sencillo", "difícil", "complejo", "duro"], correctAnswer: "sencillo", explanation: "Fácil significa sencillo."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: AYUDAR", options: ["colaborar", "impedir", "estorbar", "dañar"], correctAnswer: "colaborar", explanation: "Ayudar significa colaborar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DIVERTIDO", options: ["entretenido", "aburrido", "tedioso", "serio"], correctAnswer: "entretenido", explanation: "Divertido significa entretenido."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: AULA", options: ["salón", "patio", "baño", "cocina"], correctAnswer: "salón", explanation: "Aula significa salón de clases."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ESCUCHAR", options: ["oír", "hablar", "escribir", "leer"], correctAnswer: "oír", explanation: "Escuchar significa oír."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ROPA", options: ["vestimenta", "calzado", "sombrero", "maleta"], correctAnswer: "vestimenta", explanation: "Ropa significa vestimenta."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CAMINAR", options: ["andar", "correr", "saltar", "volar"], correctAnswer: "andar", explanation: "Caminar significa andar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: BEBER", options: ["tomar", "comer", "masticar", "escupir"], correctAnswer: "tomar", explanation: "Beber líquidos significa tomar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: MIRAR", options: ["observar", "cegar", "tapar", "ignorar"], correctAnswer: "observar", explanation: "Mirar significa observar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CARTA", options: ["misiva", "paquete", "libro", "revista"], correctAnswer: "misiva", explanation: "Carta significa misiva escrita."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DIBUJAR", options: ["trazar", "borrar", "escribir", "leer"], correctAnswer: "trazar", explanation: "Dibujar significa trazar líneas."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ESPOSO", options: ["cónyuge", "hijo", "padre", "hermano"], correctAnswer: "cónyuge", explanation: "Esposo significa cónyuge masculino."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: HABITACIÓN", options: ["cuarto", "jardín", "garaje", "techo"], correctAnswer: "cuarto", explanation: "Habitación significa cuarto."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CARRO", options: ["vehículo", "barco", "avión", "tren"], correctAnswer: "vehículo", explanation: "Carro significa vehículo terrestre."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: PELOTA", options: ["balón", "bate", "raqueta", "guante"], correctAnswer: "balón", explanation: "Pelota significa balón redondo."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: MAESTRO", options: ["profesor", "alumno", "director", "bedel"], correctAnswer: "profesor", explanation: "Maestro significa profesor."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CABELLO", options: ["pelo", "piel", "uña", "diente"], correctAnswer: "pelo", explanation: "Cabello significa pelo de la cabeza."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ROSTRO", options: ["cara", "mano", "pie", "espalda"], correctAnswer: "cara", explanation: "Rostro significa cara."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: FOTO", options: ["retrato", "pintura", "escultura", "dibujo"], correctAnswer: "retrato", explanation: "Foto significa retrato fotográfico."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: LLAVE", options: ["clave", "candado", "puerta", "ventana"], correctAnswer: "clave", explanation: "Llave se asocia con clave o abridor."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: TIENDA", options: ["comercio", "casa", "parque", "escuela"], correctAnswer: "comercio", explanation: "Tienda significa comercio minorista."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DONAR", options: ["regalar", "comprar", "vender", "robar"], correctAnswer: "regalar", explanation: "Donar significa regalar bienes."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: OBRA", options: ["creación", "destrucción", "olvido", "pérdida"], correctAnswer: "creación", explanation: "Obra significa creación artística."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: PAÍS", options: ["nación", "ciudad", "pueblo", "barrio"], correctAnswer: "nación", explanation: "País significa nación soberana."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CAMINO", options: ["sendero", "río", "mar", "lago"], correctAnswer: "sendero", explanation: "Camino significa sendero transitable."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: MONTAÑA", options: ["monte", "valle", "llanura", "desierto"], correctAnswer: "monte", explanation: "Montaña significa monte elevado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: FUEGO", options: ["lumbre", "agua", "hielo", "tierra"], correctAnswer: "lumbre", explanation: "Fuego significa lumbre ardiente."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CIELO", options: ["firmamento", "suelo", "mar", "tierra"], correctAnswer: "firmamento", explanation: "Cielo significa firmamento celeste."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: AROMA", options: ["fragancia", "hedor", "sabor", "vista"], correctAnswer: "fragancia", explanation: "Aroma significa fragancia agradable."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: AMIGO", options: ["compañero", "enemigo", "rival", "extraño"], correctAnswer: "compañero", explanation: "Amigo significa compañero de afecto."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: SALUDAR", options: ["dar la bienvenida", "despedirse", "ignorar", "retirarse"], correctAnswer: "dar la bienvenida", explanation: "Saludar es dar la bienvenida."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: AUMENTAR", options: ["incrementar", "reducir", "bajar", "quitar"], correctAnswer: "incrementar", explanation: "Aumentar significa incrementar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: REDUCIR", options: ["disminuir", "crecer", "subir", "sumar"], correctAnswer: "disminuir", explanation: "Reducir significa disminuir."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ANIMAL", options: ["bestia", "planta", "roca", "mineral"], correctAnswer: "bestia", explanation: "Animal se asocia con bestia o criatura."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CANTAR", options: ["entonar", "callar", "gritar", "susurrar"], correctAnswer: "entonar", explanation: "Cantar significa entonar melodías."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DANZAR", options: ["bailar", "correr", "nadar", "patinar"], correctAnswer: "bailar", explanation: "Danzar significa bailar ritmos."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: SABOR", options: ["gusto", "aroma", "tacto", "oído"], correctAnswer: "gusto", explanation: "Sabor es la sensación del gusto."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: FALSO", options: ["erróneo", "verdadero", "cierto", "exacto"], correctAnswer: "erróneo", explanation: "Falso significa erróneo o incorrecto."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DULCE", options: ["azucarado", "salado", "amargo", "ácido"], correctAnswer: "azucarado", explanation: "Dulce significa azucarado."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ACLARAR", options: ["explicar", "confundir", "oscurecer", "tapar"], correctAnswer: "explicar", explanation: "Aclarar significa explicar dudas."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: BUSCAR", options: ["indagar", "perder", "tirar", "esconder"], correctAnswer: "indagar", explanation: "Buscar significa indagar o rastrear."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: PINTAR", options: ["colorear", "limpiar", "rayar", "raspar"], correctAnswer: "colorear", explanation: "Pintar significa colorear superficies."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: SANO", options: ["saludable", "enfermo", "débil", "grave"], correctAnswer: "saludable", explanation: "Sano significa saludable."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ESPERAR", options: ["aguardar", "partir", "correr", "salir"], correctAnswer: "aguardar", explanation: "Esperar significa aguardar tiempo."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ENTRAR", options: ["ingresar", "salir", "partir", "alejarse"], correctAnswer: "ingresar", explanation: "Entrar significa ingresar a un sitio."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: SALIR", options: ["partir", "entrar", "quedarse", "permanecer"], correctAnswer: "partir", explanation: "Salir significa partir de un lugar."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: SUBIR", options: ["ascender", "bajar", "caer", "descender"], correctAnswer: "ascender", explanation: "Subir significa ascender."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: BAJAR", options: ["descender", "subir", "escalar", "elevar"], correctAnswer: "descender", explanation: "Bajar significa descender."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CERRAR", options: ["clausurar", "abrir", "iniciar", "destapar"], correctAnswer: "clausurar", explanation: "Cerrar significa clausurar la entrada."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ABRIR", options: ["inaugurar", "cerrar", "sellar", "bloquear"], correctAnswer: "inaugurar", explanation: "Abrir significa inaugurar el paso."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: CORRER", options: ["trotar", "caminar", "pararse", "sentarse"], correctAnswer: "trotar", explanation: "Correr significa trotar velozmente."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: VOLAR", options: ["planear", "nadar", "bucear", "caminar"], correctAnswer: "planear", explanation: "Volar significa planear en el aire."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: NADAR", options: ["bucear", "volar", "caminar", "saltar"], correctAnswer: "bucear", explanation: "Nadar se asocia con bucear en agua."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: LIMPIAR", options: ["asear", "ensuciar", "manchar", "romper"], correctAnswer: "asear", explanation: "Limpiar significa asear algo."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: COMPRAR", options: ["adquirir", "vender", "rentar", "perder"], correctAnswer: "adquirir", explanation: "Comprar significa adquirir bienes."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: VENDER", options: ["expender", "comprar", "donar", "regalar"], correctAnswer: "expender", explanation: "Vender significa expender productos."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: PENSAR", options: ["razonar", "olvidar", "dormir", "soñar"], correctAnswer: "razonar", explanation: "Pensar significa razonar lógicamente."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: APRENDER", options: ["instruirse", "olvidar", "enseñar", "ignorar"], correctAnswer: "instruirse", explanation: "Aprender significa instruirse."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: ENSEÑAR", options: ["instruir", "aprender", "estudiar", "ignorar"], correctAnswer: "instruir", explanation: "Enseñar significa instruir alumnos."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: REÍR", options: ["carcajear", "llorar", "sufrir", "gemir"], correctAnswer: "carcajear", explanation: "Reír significa carcajear de alegría."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: LLORAR", options: ["sollozar", "reír", "sonreír", "festejar"], correctAnswer: "sollozar", explanation: "Llorar significa sollozar de tristeza."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: JUGAR", options: ["divertirse", "trabajar", "estudiar", "aburrirse"], correctAnswer: "divertirse", explanation: "Jugar significa divertirse activamente."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: TRABAJAR", options: ["laborar", "jugar", "descansar", "dormir"], correctAnswer: "laborar", explanation: "Trabajar significa laborar formalmente."),
            ExerciseItem(id: UUID(), prompt: "Palabra asociada: DORMIR", options: ["pernoctar", "despertar", "correr", "trabajar"], correctAnswer: "pernoctar", explanation: "Dormir significa pernoctar en la cama.")
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
                explanation: "Ambas palabras describen un estado de ánimo de aflicción o pena; melancolía es un tipo de tristeza profunda y sosegada, por lo que funcionan como sinónimos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: APACIBLE",
                options: ["ruidoso", "agitado", "pacífico", "frenético"],
                correctAnswer: "pacífico",
                explanation: "Son sinónimos porque ambos términos se refieren a algo o alguien que es tranquilo, libre de violencia, y que transmite paz y calma."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: VALEROSO",
                options: ["tímido", "temeroso", "audaz", "cobarde"],
                correctAnswer: "audaz",
                explanation: "Ambas palabras son sinónimos ya que describen a una persona que tiene coraje, valentía y disposición para enfrentar peligros o situaciones difíciles."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: PECULIAR",
                options: ["común", "extraño", "normal", "típico"],
                correctAnswer: "extraño",
                explanation: "Son sinónimos en ciertos contextos porque ambos indican que algo se sale de lo común o habitual, teniendo características singulares o inusuales."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: COPIOSO",
                options: ["escaso", "abundante", "raro", "limitado"],
                correctAnswer: "abundante",
                explanation: "Funcionan como sinónimos porque ambos adjetivos expresan que algo existe o se produce en gran cantidad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: ENFEBLECIDO",
                options: ["fuerte", "vigoroso", "débil", "robusto"],
                correctAnswer: "débil",
                explanation: "Son sinónimos porque ambas palabras describen una falta de fuerza física o vigor; enfeblecido implica haber perdido fuerza, resultando en debilidad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: NÍTIDO",
                options: ["borroso", "pálido", "claro", "difuso"],
                correctAnswer: "claro",
                explanation: "Actúan como sinónimos al describir algo que se percibe o comprende sin confusión, con bordes definidos o con gran pureza y transparencia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: PARCO",
                options: ["derrochador", "frugal", "espléndido", "generoso"],
                correctAnswer: "frugal",
                explanation: "Son sinónimos porque ambos términos se refieren a la moderación y la sobriedad, especialmente en la comida, el gasto o el comportamiento."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: LOCUAZ",
                options: ["mudo", "hablador", "silencioso", "torpe"],
                correctAnswer: "hablador",
                explanation: "Estas palabras son sinónimos porque describen a una persona que habla mucho o con demasiada facilidad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: TENAZ",
                options: ["débil", "inconstante", "persistente", "flexible"],
                correctAnswer: "persistente",
                explanation: "Ambas palabras significan mantener firmeza en un propósito o actitud, sin rendirse ante las dificultades, por lo que son sinónimos."
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
                explanation: "Representan temperaturas opuestas en la escala térmica humana, siendo los extremos comunes de percepción de temperatura."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: FELIZ",
                options: ["alegre", "contento", "triste", "satisfecho"],
                correctAnswer: "triste",
                explanation: "Son estados emocionales diametralmente opuestos; uno representa alegría y bienestar, mientras que el otro representa pena y dolor emocional."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: GRANDE",
                options: ["enorme", "gigante", "pequeño", "alto"],
                correctAnswer: "pequeño",
                explanation: "Son conceptos opuestos en relación al tamaño, volumen o dimensión de un objeto o ser."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: RÁPIDO",
                options: ["veloz", "lento", "acelerado", "pronto"],
                correctAnswer: "lento",
                explanation: "Describen velocidades contrarias; uno se refiere a moverse en poco tiempo y el otro a tomarse mucho tiempo para el mismo recorrido."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: LIMPIO",
                options: ["ordenado", "despejado", "sucio", "fresco"],
                correctAnswer: "sucio",
                explanation: "Son estados opuestos de higiene; uno carece de manchas y suciedad, mientras que el otro las posee."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: DESPIERTO",
                options: ["alerta", "atento", "dormido", "activo"],
                correctAnswer: "dormido",
                explanation: "Son estados de consciencia biológicamente incompatibles en un mismo momento."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: RUIDOSO",
                options: ["fuerte", "alto", "silencioso", "potente"],
                correctAnswer: "silencioso",
                explanation: "Contrastan el volumen del sonido; uno implica altos niveles acústicos y el otro la ausencia de sonido."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: ABIERTO",
                options: ["cerrado", "ancho", "despejado", "libre"],
                correctAnswer: "cerrado",
                explanation: "Representan estados físicos opuestos respecto a la accesibilidad o permeabilidad de un objeto, como una puerta o un recipiente."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: LLENO",
                options: ["cargado", "vacío", "repleto", "completo"],
                correctAnswer: "vacío",
                explanation: "Son condiciones contrarias respecto a la capacidad de un contenedor y su contenido."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Palabra: AMOR",
                options: ["adorar", "querer", "odio", "afecto"],
                correctAnswer: "odio",
                explanation: "Representan los extremos opuestos en el espectro de los sentimientos de afecto y rechazo hacia alguien o algo."
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
            ExerciseItem(id: UUID(), prompt: "Ella regó las ___.", options: ["flores", "pisos", "harinas", "ventanas"], correctAnswer: "flores", explanation: "Se riegan las flores."),
            ExerciseItem(id: UUID(), prompt: "Él se puso el ___.", options: ["abrigo", "barco", "cabra", "camino"], correctAnswer: "abrigo", explanation: "Se pone el abrigo para el frío."),
            ExerciseItem(id: UUID(), prompt: "Necesito un vaso de ___.", options: ["agua", "mesero", "bota", "techo"], correctAnswer: "agua", explanation: "Se bebe un vaso de agua."),
            ExerciseItem(id: UUID(), prompt: "El perro ladra en el ___.", options: ["jardín", "cielo", "cuaderno", "espejo"], correctAnswer: "jardín", explanation: "El perro ladra en el jardín."),
            ExerciseItem(id: UUID(), prompt: "Ella lee un ___.", options: ["libro", "zapato", "cuchara", "reloj"], correctAnswer: "libro", explanation: "Se lee un libro."),
            ExerciseItem(id: UUID(), prompt: "El sol brilla en el ___.", options: ["cielo", "mar", "bosque", "río"], correctAnswer: "cielo", explanation: "El sol brilla en el cielo."),
            ExerciseItem(id: UUID(), prompt: "Comimos una deliciosa ___.", options: ["manzana", "piedra", "mesa", "puerta"], correctAnswer: "manzana", explanation: "La manzana es comestible."),
            ExerciseItem(id: UUID(), prompt: "Él conduce su ___.", options: ["carro", "nube", "árbol", "piedra"], correctAnswer: "carro", explanation: "Se conduce un carro."),
            ExerciseItem(id: UUID(), prompt: "La taza está sobre la ___.", options: ["mesa", "techo", "pared", "ventana"], correctAnswer: "mesa", explanation: "La taza se coloca sobre la mesa."),
            ExerciseItem(id: UUID(), prompt: "Él escribe con un ___.", options: ["lápiz", "tenedor", "plato", "vaso"], correctAnswer: "lápiz", explanation: "Se escribe con un lápiz."),
            ExerciseItem(id: UUID(), prompt: "Ella escucha ___.", options: ["música", "viento", "luz", "sombra"], correctAnswer: "música", explanation: "Se escucha la música."),
            ExerciseItem(id: UUID(), prompt: "El gato duerme sobre la ___.", options: ["cama", "piscina", "estufa", "nevera"], correctAnswer: "cama", explanation: "El gato duerme sobre la cama."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Ella regó las ___.", options: ["flores", "pisos", "harinas", "ventanas"], correctAnswer: "flores", explanation: "Se riegan las flores."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Él se puso el ___.", options: ["abrigo", "barco", "cabra", "camino"], correctAnswer: "abrigo", explanation: "Se pone el abrigo para el frío."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Necesito un vaso de ___.", options: ["agua", "mesero", "bota", "techo"], correctAnswer: "agua", explanation: "Se bebe un vaso de agua."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El perro ladra en el ___.", options: ["jardín", "cielo", "cuaderno", "espejo"], correctAnswer: "jardín", explanation: "El perro ladra en el jardín."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Ella lee un ___.", options: ["libro", "zapato", "cuchara", "reloj"], correctAnswer: "libro", explanation: "Se lee un libro."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El sol brilla en el ___.", options: ["cielo", "mar", "bosque", "río"], correctAnswer: "cielo", explanation: "El sol brilla en el cielo."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Comimos una deliciosa ___.", options: ["manzana", "piedra", "mesa", "puerta"], correctAnswer: "manzana", explanation: "La manzana es comestible."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Él conduce su ___.", options: ["carro", "nube", "árbol", "piedra"], correctAnswer: "carro", explanation: "Se conduce un carro."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: La taza está sobre la ___.", options: ["mesa", "techo", "pared", "ventana"], correctAnswer: "mesa", explanation: "La taza se coloca sobre la mesa."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Él escribe con un ___.", options: ["lápiz", "tenedor", "plato", "vaso"], correctAnswer: "lápiz", explanation: "Se escribe con un lápiz."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Ella escucha ___.", options: ["música", "viento", "luz", "sombra"], correctAnswer: "música", explanation: "Se escucha la música."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El gato duerme sobre la ___.", options: ["cama", "piscina", "estufa", "nevera"], correctAnswer: "cama", explanation: "El gato duerme sobre la cama."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El pájaro canta en la ___.", options: ["rama", "calle", "mesa", "puerta"], correctAnswer: "rama", explanation: "Los pájaros cantan en las ramas de árboles."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Voy a comprar pan a la ___.", options: ["panadería", "biblioteca", "farmacia", "zapatería"], correctAnswer: "panadería", explanation: "El pan se compra en la panadería."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Ella se lava las ___.", options: ["manos", "ideas", "puertas", "ventanas"], correctAnswer: "manos", explanation: "Es higiénico lavarse las manos."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Él apaga la ___.", options: ["luz", "sopa", "tierra", "calle"], correctAnswer: "luz", explanation: "Se apaga la luz antes de dormir."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El tren llega a la ___.", options: ["estación", "cocina", "cama", "piscina"], correctAnswer: "estación", explanation: "Los trenes llegan a la estación."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El bebé toma ___.", options: ["leche", "piedras", "papeles", "lápices"], correctAnswer: "leche", explanation: "Los bebés toman leche en biberón."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Hoy hace mucho ___.", options: ["frío", "libro", "lápiz", "papel"], correctAnswer: "frío", explanation: "Hace frío en invierno."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Me cepillo los ___.", options: ["dientes", "zapatos", "libros", "cuadernos"], correctAnswer: "dientes", explanation: "Es sano cepillarse los dientes."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El pez nada en el ___.", options: ["agua", "árbol", "cielo", "suelo"], correctAnswer: "agua", explanation: "Los peces nadan en el agua."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: La manzana es de color ___.", options: ["rojo", "azul", "negro", "gris"], correctAnswer: "rojo", explanation: "Muchas manzanas maduras son rojas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El carpintero usa un ___.", options: ["martillo", "lápiz", "cuaderno", "plato"], correctAnswer: "martillo", explanation: "El martillo es herramienta de carpintería."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: La sopa está muy ___.", options: ["caliente", "ancha", "alta", "lejana"], correctAnswer: "caliente", explanation: "La sopa recién cocinada está caliente."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El avión vuela por el ___.", options: ["aire", "suelo", "mar", "sótano"], correctAnswer: "aire", explanation: "Los aviones vuelan por el espacio aéreo."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Pon la ropa en la ___.", options: ["lavadora", "nevera", "estufa", "cocina"], correctAnswer: "lavadora", explanation: "La ropa sucia se lava en la lavadora."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Guardé la leche en la ___.", options: ["nevera", "cama", "mesa", "silla"], correctAnswer: "nevera", explanation: "La leche se conserva en la nevera."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: La maestra escribe en la ___.", options: ["pizarra", "ventana", "puerta", "silla"], correctAnswer: "pizarra", explanation: "Se escribe con tiza en la pizarra."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El niño juega con su ___.", options: ["juguete", "piedra", "lápiz", "papel"], correctAnswer: "juguete", explanation: "Los niños se divierten con juguetes."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Quiero comer un plato de ___.", options: ["arroz", "tierra", "papel", "vidrio"], correctAnswer: "arroz", explanation: "El arroz es un alimento común."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El médico trabaja en el ___.", options: ["hospital", "teatro", "museo", "parque"], correctAnswer: "hospital", explanation: "Los médicos atienden en hospitales."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El jardinero planta una ___.", options: ["semilla", "piedra", "mesa", "silla"], correctAnswer: "semilla", explanation: "Las plantas crecen de las semillas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El panadero hornea el ___.", options: ["pan", "agua", "hierro", "acero"], correctAnswer: "pan", explanation: "El panadero cocina el pan en el horno."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Apoya la cabeza en la ___.", options: ["almohada", "mesa", "silla", "puerta"], correctAnswer: "almohada", explanation: "Se duerme con la cabeza en la almohada."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Abre la puerta con la ___.", options: ["llave", "cuchara", "plato", "taza"], correctAnswer: "llave", explanation: "La llave sirve para abrir la cerradura."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Seca tus manos con la ___.", options: ["toalla", "mesa", "silla", "ventana"], correctAnswer: "toalla", explanation: "Usamos la toalla para secarnos."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El zapatero arregla el ___.", options: ["zapato", "libro", "plato", "reloj"], correctAnswer: "zapato", explanation: "El zapatero repara calzado."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Barre el suelo con la ___.", options: ["escoba", "cuchara", "plato", "taza"], correctAnswer: "escoba", explanation: "Se barre la basura con la escoba."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Corta el papel con las ___.", options: ["tijeras", "cucharas", "platos", "tazas"], correctAnswer: "tijeras", explanation: "Las tijeras sirven para cortar papel."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: Bebe el café en una ___.", options: ["taza", "cuchara", "plato", "silla"], correctAnswer: "taza", explanation: "El café se sirve en taza caliente."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El policía vigila la ___.", options: ["calle", "cocina", "cama", "piscina"], correctAnswer: "calle", explanation: "La policía patrulla las calles."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El bombero apaga el ___.", options: ["fuego", "agua", "hielo", "aire"], correctAnswer: "fuego", explanation: "Los bomberos extinguen el fuego."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El cartero entrega las ___.", options: ["cartas", "mesas", "sillas", "ventanas"], correctAnswer: "cartas", explanation: "El cartero reparte la correspondencia."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El conductor maneja el ___.", options: ["autobús", "tren", "avión", "barco"], correctAnswer: "autobús", explanation: "El conductor maneja vehículos terrestres."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El piloto vuela el ___.", options: ["avión", "carro", "tren", "barco"], correctAnswer: "avión", explanation: "El piloto comanda la aeronave."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El marinero navega en el ___.", options: ["barco", "carro", "tren", "avión"], correctAnswer: "barco", explanation: "El marinero navega en amazon."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El alumno estudia la ___.", options: ["lección", "mesa", "silla", "ventana"], correctAnswer: "lección", explanation: "El alumno repasa su lección escolar."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El sastre cose el ___.", options: ["traje", "libro", "plato", "vaso"], correctAnswer: "traje", explanation: "El sastre confecciona trajes a medida."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El peluquero corta el ___.", options: ["pelo", "dedo", "pie", "brazo"], correctAnswer: "pelo", explanation: "El peluquero recorta el cabello."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El agricultor siembra el ___.", options: ["trigo", "hierro", "cemento", "vidrio"], correctAnswer: "trigo", explanation: "El agricultor cultiva cereales en el campo."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El pintor pinta la ___.", options: ["pared", "tierra", "calle", "nube"], correctAnswer: "pared", explanation: "El pintor aplica pintura a los muros."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El músico toca el ___.", options: ["piano", "árbol", "carro", "libro"], correctAnswer: "piano", explanation: "El piano es un instrumento musical."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El escritor redacta una ___.", options: ["novela", "mesa", "silla", "ventana"], correctAnswer: "novela", explanation: "El escritor compone obras literarias."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El fotógrafo toma una ___.", options: ["foto", "mesa", "silla", "ventana"], correctAnswer: "foto", explanation: "El fotógrafo captura retratos visuales."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El veterinario cura al ___.", options: ["perro", "carro", "libro", "lápiz"], correctAnswer: "perro", explanation: "El veterinario atiende la salud animal."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El mecánico repara el ___.", options: ["carro", "árbol", "libro", "lápiz"], correctAnswer: "carro", explanation: "El mecánico arregla motores de carros."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El carnicero corta la ___.", options: ["carne", "madera", "piedra", "tierra"], correctAnswer: "carne", explanation: "El carnicero expende piezas de carne."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El pescador pesca en el ___.", options: ["río", "camino", "campo", "desierto"], correctAnswer: "río", explanation: "Se pescan peces en el río."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El cocinero prepara la ___.", options: ["cena", "mesa", "silla", "ventana"], correctAnswer: "cena", explanation: "El cocinero elabora los platos de comida."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El albañil construye la ___.", options: ["casa", "nube", "sombra", "lluvia"], correctAnswer: "casa", explanation: "El albañil edifica paredes de viviendas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El electricista repara el ___.", options: ["cable", "árbol", "libro", "lápiz"], correctAnswer: "cable", explanation: "El electricista arregla el tendido eléctrico."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El plomero arregla el ___.", options: ["tubo", "árbol", "libro", "lápiz"], correctAnswer: "tubo", explanation: "El plomero repara tuberías de agua."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El dentista revisa los ___.", options: ["dientes", "pies", "dedos", "brazos"], correctAnswer: "dientes", explanation: "El dentista cuida la salud bucal."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El enfermero asiste al ___.", options: ["enfermo", "carro", "libro", "lápiz"], correctAnswer: "enfermo", explanation: "El enfermero atiende a las personas enfermas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El farmacéutico vende la ___.", options: ["medicina", "ropa", "comida", "bebida"], correctAnswer: "medicina", explanation: "Las medicinas se compran en la farmacia."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El arquitecto diseña el ___.", options: ["plano", "libro", "plato", "vaso"], correctAnswer: "plano", explanation: "El arquitecto traza planos de edificios."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El juez dicta la ___.", options: ["sentencia", "mesa", "silla", "ventana"], correctAnswer: "sentencia", explanation: "El juez determina la sentencia judicial."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El abogado defiende al ___.", options: ["cliente", "carro", "libro", "lápiz"], correctAnswer: "cliente", explanation: "El abogado asesora a sus clientes."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El cartero viaja en ___.", options: ["motocicleta", "avión", "barco", "tren"], correctAnswer: "motocicleta", explanation: "El cartero usa moto para el reparto local."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El vendedor atiende en la ___.", options: ["tienda", "casa", "calle", "plaza"], correctAnswer: "tienda", explanation: "El vendedor trabaja en el comercio."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El cajero cobra el ___.", options: ["dinero", "papel", "libro", "lápiz"], correctAnswer: "dinero", explanation: "El cajero procesa los pagos en efectivo."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El recepcionista saluda al ___.", options: ["visitante", "carro", "libro", "lápiz"], correctAnswer: "visitante", explanation: "El recepcionista recibe a las visitas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El secretario organiza el ___.", options: ["archivo", "jardín", "patio", "garaje"], correctAnswer: "archivo", explanation: "El secretario clasifica la documentación."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El mensajero lleva el ___.", options: ["paquete", "carro", "libro", "lápiz"], correctAnswer: "paquete", explanation: "El mensajero transporta correspondencia urgente."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El traductor vierte el ___.", options: ["texto", "agua", "vino", "leche"], correctAnswer: "texto", explanation: "El traductor traduce escritos a otros idiomas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El guía conduce a los ___.", options: ["turistas", "carros", "libros", "lápices"], correctAnswer: "turistas", explanation: "El guía orienta a los visitantes extranjeros."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El deportista entrena en el ___.", options: ["gimnasio", "teatro", "museo", "hospital"], correctAnswer: "gimnasio", explanation: "Los atletas practican en el gimnasio."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El árbitro dirige el ___.", options: ["partido", "carro", "libro", "lápiz"], correctAnswer: "partido", explanation: "El árbitro vela por las reglas del juego."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El actor actúa en el ___.", options: ["teatro", "hospital", "mercado", "aeropuerto"], correctAnswer: "teatro", explanation: "Los actores interpretan roles en el escenario."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El director dirige la ___.", options: ["película", "mesa", "silla", "ventana"], correctAnswer: "película", explanation: "El director coordina el rodaje cinematográfico."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El locutor habla por la ___.", options: ["radio", "mesa", "silla", "ventana"], correctAnswer: "radio", explanation: "El locutor transmite su voz por ondas radiales."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El reportero escribe la ___.", options: ["noticia", "mesa", "silla", "ventana"], correctAnswer: "noticia", explanation: "El reportero redacta artículos de prensa."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El editor revisa el ___.", options: ["manuscrito", "plato", "vaso", "tenedor"], correctAnswer: "manuscrito", explanation: "El editor corrige borradores de libros."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El diseñador dibuja el ___.", options: ["boceto", "plato", "vaso", "tenedor"], correctAnswer: "boceto", explanation: "El diseñador esboza ideas de prendas."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El soplador moldea el ___.", options: ["vidrio", "hierro", "cemento", "ladrillo"], correctAnswer: "vidrio", explanation: "El vidrio caliente se moldea soplando."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El alfarero modela la ___.", options: ["arcilla", "madera", "piedra", "tierra"], correctAnswer: "arcilla", explanation: "El alfarero tornea vasijas de barro."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El escultor talla la ___.", options: ["piedra", "tierra", "calle", "nube"], correctAnswer: "piedra", explanation: "El escultor esculpe figuras en mármol."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El joyero engasta la ___.", options: ["gema", "madera", "piedra", "tierra"], correctAnswer: "gema", explanation: "El joyero monta piedras preciosas en metal."),
            ExerciseItem(id: UUID(), prompt: "Completa la frase: El relojero ajusta el ___.", options: ["reloj", "carro", "libro", "lápiz"], correctAnswer: "reloj", explanation: "El relojero calibra la maquinaria del reloj.")
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
                explanation: "La oración requiere un adverbio para modificar el verbo, indicando la manera rápida en que los niños realizaron la acción de correr."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella es la estudiante más ___ de la clase.",
                options: ["inteligente", "inteligentísima", "inteligentoso"],
                correctAnswer: "inteligentísima",
                explanation: "El contexto requiere un adjetivo en grado superlativo que concuerde en género (femenino) y número (singular) con estudiante, enfatizando su gran intelecto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él necesita ___ su ensayo.",
                options: ["reescribir", "unscribir", "describir"],
                correctAnswer: "reescribir",
                explanation: "Después del verbo necesita, se requiere un verbo en infinitivo para completar la idea de la acción requerida, en este caso, volver a escribir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella se sintió ___ después de la caminata.",
                options: ["cansar", "cansada", "cansancio"],
                correctAnswer: "cansada",
                explanation: "Se requiere un adjetivo que funcione como atributo del sujeto femenino singular, para describir su estado físico agotado tras el esfuerzo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La puerta estaba ___.",
                options: ["cerrar", "cerrada", "cerrando"],
                correctAnswer: "cerrada",
                explanation: "Se necesita un participio pasado o adjetivo que concuerde en género y número (femenino singular) con la puerta para describir su estado físico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él actuó muy ___.",
                options: ["niño", "niñería", "infantilmente"],
                correctAnswer: "infantilmente",
                explanation: "Se requiere un adverbio de modo para modificar el verbo actuó, explicando la forma inmadura en que se comportó el sujeto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella tiene dos ___.",
                options: ["hijo", "hijos", "hije"],
                correctAnswer: "hijos",
                explanation: "El numeral dos indica pluralidad, por lo que se requiere un sustantivo en plural que tenga sentido en el contexto de la familia o descendencia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Él habló ___ sobre el accidente.",
                options: ["cuidadoso", "cuidadosamente", "cuidadito"],
                correctAnswer: "cuidadosamente",
                explanation: "Se necesita un adverbio para describir la actitud prudente o la manera atenta en que se realizó la acción del verbo hablar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El pastel estaba ___.",
                options: ["decorar", "decorado", "decorando"],
                correctAnswer: "decorado",
                explanation: "Requiere un adjetivo o participio que concuerde en género y número (masculino singular) con el pastel para describir su estado o apariencia estética."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ella es más ___ que su hermano.",
                options: ["alto", "alta", "altísima"],
                correctAnswer: "alta",
                explanation: "La estructura comparativa exige un adjetivo que concuerde en género femenino con el sujeto para describir una cualidad física de estatura."
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
                explanation: "El término con b es un sustantivo que se refiere a una pieza cilíndrica hueca; el término con v es el pretérito perfecto del verbo tener."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[vaya / valla] Espero que él ___ pronto. El jardín tiene una ___ blanca.",
                options: ["vaya…valla", "valla…vaya", "vaya…vaya", "valla…valla"],
                correctAnswer: "vaya…valla",
                explanation: "El término con y es el subjuntivo del verbo ir; el término con ll es un sustantivo que se refiere a una cerca u obstáculo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[bello / vello] El paisaje es muy ___. Él tiene ___ en los brazos.",
                options: ["bello…vello", "vello…bello", "bello…bello", "vello…vello"],
                correctAnswer: "bello…vello",
                explanation: "El término con b es un adjetivo sinónimo de hermoso; el término con v es el sustantivo para el pelo corto y suave del cuerpo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[casa / caza] Vivimos en una ___ pequeña. La ___ de animales está prohibida.",
                options: ["casa…caza", "caza…casa", "casa…casa", "caza…caza"],
                correctAnswer: "casa…caza",
                explanation: "El término con s es una vivienda o edificación; el término con z se refiere a la acción de perseguir y atrapar animales."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[hola / ola] Ella dijo ___ al entrar. Una gran ___ golpeó la playa.",
                options: ["hola…ola", "ola…hola", "hola…hola", "ola…ola"],
                correctAnswer: "hola…ola",
                explanation: "El término con h es una expresión común de saludo; el término sin h es una onda de agua formada en la superficie del mar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[echo / hecho] Siempre ___ la basura en su lugar. El pastel ya está ___.",
                options: ["echo…hecho", "hecho…echo", "echo…echo", "hecho…hecho"],
                correctAnswer: "echo…hecho",
                explanation: "El término sin h es del verbo echar (tirar, poner); el término con h es el participio del verbo hacer o un sustantivo que significa acontecimiento."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[cien / sien] Ella contó hasta ___ dólares. Le duele la ___ derecha.",
                options: ["cien…sien", "sien…cien", "cien…cien", "sien…sien"],
                correctAnswer: "cien…sien",
                explanation: "El término con c representa el número 100; el término con s es la parte lateral de la cabeza situada entre la frente, la oreja y la mejilla."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[hierba / hierva] La ___ crece en el jardín. Espere a que el agua ___.",
                options: ["hierba…hierva", "hierva…hierba", "hierba…hierba", "hierva…hierva"],
                correctAnswer: "hierba…hierva",
                explanation: "El término con b es una planta pequeña; el término con v es la forma subjuntiva del verbo hervir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[savia / sabia] La ___ nutre al árbol. Ella es una mujer muy ___.",
                options: ["savia…sabia", "sabia…savia", "savia…savia", "sabia…sabia"],
                correctAnswer: "savia…sabia",
                explanation: "El término con v es el líquido nutritivo de las plantas; el término con b es un adjetivo para una persona que posee gran sabiduría."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "[cabo / cavo] Él es ___ en el ejército. Yo ___ un hoyo en la tierra.",
                options: ["cabo…cavo", "cavo…cabo", "cabo…cabo", "cavo…cavo"],
                correctAnswer: "cabo…cavo",
                explanation: "El término con b es un rango militar o geográfico; el término con v es la primera persona del presente del verbo cavar."
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
                explanation: "La relación analógica es de cría a adulto de la misma especie; un cachorro es la cría del perro, así como un gatito es la cría del gato."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "FRÍO es a INVIERNO como CALIENTE es a ___",
                options: ["Primavera", "Otoño", "Verano", "Lluvia"],
                correctAnswer: "Verano",
                explanation: "La analogía asocia una temperatura característica con su estación del año correspondiente (invierno para frío, verano para caliente)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "OJO es a VER como OÍDO es a ___",
                options: ["Tocar", "Oír", "Oler", "Gustar"],
                correctAnswer: "Oír",
                explanation: "Se establece una relación directa entre un órgano sensorial humano y su función biológica o sentido primario correspondiente."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CHEF es a COCINA como DOCTOR es a ___",
                options: ["Biblioteca", "Hospital", "Escuela", "Tienda"],
                correctAnswer: "Hospital",
                explanation: "La relación vincula a un tipo de profesional con el espacio o entorno físico que sirve como su lugar de trabajo habitual principal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GUANTE es a MANO como CALCETÍN es a ___",
                options: ["Brazo", "Rodilla", "Pie", "Cabeza"],
                correctAnswer: "Pie",
                explanation: "Esta es una analogía de correspondencia anatómica entre una prenda de vestir específica y la extremidad del cuerpo que protege o cubre."
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
            ExerciseItem(id: UUID(), prompt: "El cielo es azul en un día despejado.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho comprobable."),
            ExerciseItem(id: UUID(), prompt: "El helado de chocolate es el mejor sabor.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El mejor sabor es subjetivo."),
            ExerciseItem(id: UUID(), prompt: "El agua hierve a 100 grados Celsius.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho científico."),
            ExerciseItem(id: UUID(), prompt: "Aprender español es muy divertido.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La diversión es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "La Tierra gira alrededor del Sol.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho astronómico."),
            ExerciseItem(id: UUID(), prompt: "Los gatos son mejores mascotas que los perros.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La preferencia de mascota es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "El año tiene 12 meses.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho del calendario."),
            ExerciseItem(id: UUID(), prompt: "Las matemáticas son muy difíciles.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La dificultad es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "La capital de México es la Ciudad de México.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho geográfico."),
            ExerciseItem(id: UUID(), prompt: "La pizza es la comida más deliciosa del mundo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El gusto por la comida es subjetivo."),
            ExerciseItem(id: UUID(), prompt: "El oro es un metal precioso.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho metalúrgico."),
            ExerciseItem(id: UUID(), prompt: "El invierno es la mejor estación del año.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La mejor estación es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El cielo es azul en un día despejado.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho comprobable científicamente."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El helado de chocolate es el mejor sabor.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La preferencia del sabor es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El agua hierve a 100 grados Celsius.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho físico a nivel del mar."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Aprender español es muy divertido.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La diversión es una apreciación personal."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La Tierra gira alrededor del Sol.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho astronómico probado."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Los gatos son mejores mascotas que los perros.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El gusto por los animales es subjetivo."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El año tiene 12 meses.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho del calendario estándar."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Las matemáticas son muy difíciles.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La dificultad percibida es una opinión."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La capital de México es la Ciudad de México.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho político y geográfico."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La pizza es la comida más deliciosa del mundo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La valoración culinaria es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El oro es un metal precioso.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de clasificación metalúrgica."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El invierno es la mejor estación del año.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El gusto por el clima es subjetivo."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El abecedario español tiene 27 letras.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho normativo de la lengua."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Leer libros es la actividad más aburrida.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El interés por la lectura es subjetivo."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El español es la lengua oficial de España.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho constitucional español."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El fútbol es el deporte más emocionante.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La emoción deportiva es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La luna es el satélite natural de la Tierra.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho astronómico comprobado."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La música clásica es excelente para concentrarse.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La eficacia de la música es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El corazón bombea sangre por todo el cuerpo.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho anatómico fundamental."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Viajar en avión es muy aterrador.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El miedo a volar es una respuesta subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El inglés se habla en el Reino Unido.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho lingüístico y cultural."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Los mudos no hablan.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El silencio absoluto es subjetivo."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La fotosíntesis es realizada por las plantas.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de la biología vegetal."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Las películas de acción son las mejores.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La preferencia cinematográfica es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El cuerpo humano tiene dos pulmones.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho biológico e inmunológico."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El color verde es más bonito que el rojo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La estética del color es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Los perros pertenecen a la familia de los cánidos.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de taxonomía zoológica."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La ensalada es la comida más saludable.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El valor nutricional exacto es debatible."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El río Amazonas está en América del Sur.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de la geografía física."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La poesía es difícil de comprender.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La interpretación poética es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El hielo flota sobre el agua líquida.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho físico debido a la densidad."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Trabajar por cuenta propia es lo mejor.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La preferencia laboral es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El desierto del Sahara es muy cálido de día.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho climatológico real."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Los videojuegos son perjudiciales para todos.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "El impacto de juegos es subjetivo y variado."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El Everest es la montaña más alta del mundo.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de medición topográfica."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El color azul transmite mucha tranquilidad.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La percepción psicológica es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La bandera de México tiene tres franjas verticales.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de diseño vexilológico."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Madrugar hace que seas más productivo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La productividad horaria es individual."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El cerebro controla el sistema nervioso.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho neurológico contrastado."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La pintura al óleo es mejor que la acuarela.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La superioridad artística es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El océano Pacífico es el más grande del planeta.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho cartográfico medido."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Comer carne es malo para la salud.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Es un debate con diversas posturas."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El piano tiene 88 teclas en total.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho de fabricación instrumental."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El perfume de rosas huele de maravilla.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La apreciación olfativa es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El sol es la estrella más cercana a la Tierra.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho astronómico básico."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: Estudiar por la noche es más efectivo.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Los métodos de estudio son individuales."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La estatua de la Libertad está en Nueva York.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho geográfico nacional."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: El té verde es más sabroso que el negro.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "La preferencia de sabor es subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Clasifica la oración: La Declaración de Independencia se firmó en 1776.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Es un hecho histórico registrado.")
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
                explanation: "Describe la secuencia lógica y cronológica básica de las acciones físicas requeridas para preparar y consumir este alimento común."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavarse las manos",
                options: ["Secarse con una toalla", "Aplicar jabón", "Abrir el llave de agua", "Frotar por 20 segundos", "Enjuagar el jabón", "Mojarse las manos"],
                correctAnswer: "Abrir el llave de agua | Mojarse las manos | Aplicar jabón | Frotar por 20 segundos | Enjuagar el jabón | Secarse con una toalla",
                explanation: "Representa el algoritmo de higiene personal estándar paso a paso, diseñado para probar el ordenamiento secuencial de tareas rutinarias de limpieza."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hacer café de filtro",
                options: ["Servir en la taza", "Poner café molido en el filtro", "Presionar el botón de inicio", "Llenar el depósito de agua"],
                correctAnswer: "Llenar el depósito de agua | Poner café molido en el filtro | Presionar el botón de inicio | Servir en la taza",
                explanation: "Pide la reconstrucción ordenada de los pasos operativos necesarios para utilizar un electrodoméstico común, evaluando la memoria procedimental."
            )
        ]
    )
}
