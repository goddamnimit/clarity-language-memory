import Foundation

/// Holds the 14 new Spanish exercises.
struct SpanishNewExercisesData {

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
        title: "Parejas de rimas",
        instructions: "Elige la palabra que rima con la palabra dada.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "¿Qué palabra rima con GATO?", options: ["Perro", "Pato", "Sol", "Árbol"], correctAnswer: "Pato", explanation: "Gato y Pato comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con LUNA?", options: ["Estrella", "Sol", "Cuna", "Nube"], correctAnswer: "Cuna", explanation: "Luna y Cuna comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con SOL?", options: ["Col", "Río", "Luz", "Mar"], correctAnswer: "Col", explanation: "Sol y Col comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con CASA?", options: ["Perro", "Masa", "Flor", "Silla"], correctAnswer: "Masa", explanation: "Casa y Masa comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con CANTAR?", options: ["Bailar", "Correr", "Comer", "Dormir"], correctAnswer: "Bailar", explanation: "Cantar y Bailar comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con BOCA?", options: ["Roca", "Diente", "Labio", "Lengua"], correctAnswer: "Roca", explanation: "Boca y Roca comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con TARTA?", options: ["Carta", "Pan", "Dulce", "Plato"], correctAnswer: "Carta", explanation: "Tarta y Carta comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con VENTANA?", options: ["Manzana", "Puerta", "Pared", "Vidrio"], correctAnswer: "Manzana", explanation: "Ventana y Manzana comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con FLORES?", options: ["Colores", "Hojas", "Ramas", "Plantas"], correctAnswer: "Colores", explanation: "Flores y Colores comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con MELÓN?", options: ["Limón", "Fresa", "Uva", "Pera"], correctAnswer: "Limón", explanation: "Melón y Limón comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con OJO?", options: ["Rojo", "Verde", "Azul", "Blanco"], correctAnswer: "Rojo", explanation: "Ojo y Rojo comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con LLAVE?", options: ["Nave", "Puerta", "Metal", "Casa"], correctAnswer: "Nave", explanation: "Llave y Nave comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con RANA?", options: ["Lana", "Agua", "Hoja", "Verde"], correctAnswer: "Lana", explanation: "Rana y Lana comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con ANILLO?", options: ["Brillo", "Oro", "Dedo", "Plata"], correctAnswer: "Brillo", explanation: "Anillo y Brillo comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con MANO?", options: ["Piano", "Dedo", "Brazo", "Uña"], correctAnswer: "Piano", explanation: "Mano y Piano comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con HIELO?", options: ["Cielo", "Agua", "Frío", "Nieve"], correctAnswer: "Cielo", explanation: "Hielo y Cielo comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con CAMPAÑA?", options: ["Montaña", "Ruido", "Gente", "Trabajo"], correctAnswer: "Montaña", explanation: "Campaña y Montaña comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con BOTÓN?", options: ["Ratón", "Ropa", "Hilo", "Aguja"], correctAnswer: "Ratón", explanation: "Botón y Ratón comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con SILLA?", options: ["Mesa", "Pastilla", "Piso", "Madera"], correctAnswer: "Pastilla", explanation: "Silla y Pastilla comparten el mismo sonido final."),
            ExerciseItem(prompt: "¿Qué palabra rima con PESCADO?", options: ["Agua", "Mojado", "Mar", "Red"], correctAnswer: "Mojado", explanation: "Pescado y Mojado comparten el mismo sonido final.")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "Asociación de palabras",
        instructions: "Elige la palabra más estrechamente asociada con la palabra dada.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "DOCTOR", options: ["Hospital", "Aeropuerto", "Biblioteca", "Granja"], correctAnswer: "Hospital", explanation: "Los doctores trabajan en hospitales para cuidar a los pacientes."),
            ExerciseItem(prompt: "PAN", options: ["Mantequilla", "Martillo", "Jabón", "Lápiz"], correctAnswer: "Mantequilla", explanation: "La mantequilla se unta comúnmente en el pan."),
            ExerciseItem(prompt: "COCINA", options: ["Estufa", "Cama", "Ducha", "Coche"], correctAnswer: "Estufa", explanation: "La estufa es un electrodoméstico principal en la cocina."),
            ExerciseItem(prompt: "BIBLIOTECA", options: ["Libros", "Ropa", "Herramientas", "Comestibles"], correctAnswer: "Libros", explanation: "Las bibliotecas almacenan y prestan libros."),
            ExerciseItem(prompt: "ZAPATO", options: ["Calcetín", "Sombrero", "Guante", "Cinturón"], correctAnswer: "Calcetín", explanation: "Los calcetines se usan dentro de los zapatos."),
            ExerciseItem(prompt: "ASTRONAUTA", options: ["Espacio", "Océano", "Selva", "Desierto"], correctAnswer: "Espacio", explanation: "Los astronautas viajan al espacio exterior."),
            ExerciseItem(prompt: "PROFESOR", options: ["Escuela", "Fábrica", "Teatro", "Gimnasio"], correctAnswer: "Escuela", explanation: "Los profesores enseñan a los estudiantes en las escuelas."),
            ExerciseItem(prompt: "OCÉANO", options: ["Pez", "Pájaro", "Vaca", "Araña"], correctAnswer: "Pez", explanation: "Los peces viven en el océano."),
            ExerciseItem(prompt: "COCHE", options: ["Neumático", "Ala", "Silla de montar", "Vela"], correctAnswer: "Neumático", explanation: "Los neumáticos son componentes esenciales de los coches."),
            ExerciseItem(prompt: "LLUVIA", options: ["Paraguas", "Gafas de sol", "Guantes", "Bufanda"], correctAnswer: "Paraguas", explanation: "El paraguas te protege de la lluvia."),
            ExerciseItem(prompt: "FUEGO", options: ["Humo", "Hielo", "Hoja", "Moneda"], correctAnswer: "Humo", explanation: "El fuego produce humo."),
            ExerciseItem(prompt: "DENTISTA", options: ["Dientes", "Cabello", "Ojos", "Pies"], correctAnswer: "Dientes", explanation: "Los dentistas se especializan en la salud bucal y los dientes."),
            ExerciseItem(prompt: "CAFÉ", options: ["Taza", "Tazón", "Plato", "Tenedor"], correctAnswer: "Taza", explanation: "El café se sirve típicamente en una taza."),
            ExerciseItem(prompt: "JARDÍN", options: ["Flores", "Computadoras", "Estufas", "Abrigos"], correctAnswer: "Flores", explanation: "Las flores crecen en el jardín."),
            ExerciseItem(prompt: "LLAVE", options: ["Candado", "Ventana", "Techo", "Piso"], correctAnswer: "Candado", explanation: "Las llaves se usan para abrir candados."),
            ExerciseItem(prompt: "CORREO", options: ["Carta", "Pan", "Medicina", "Boleto"], correctAnswer: "Carta", explanation: "Las cartas se envían por correo."),
            ExerciseItem(prompt: "PIANO", options: ["Música", "Pintura", "Arcilla", "Madera"], correctAnswer: "Música", explanation: "El piano es un instrumento utilizado para tocar música."),
            ExerciseItem(prompt: "ABEJA", options: ["Miel", "Leche", "Lana", "Seda"], correctAnswer: "Miel", explanation: "Las abejas producen miel."),
            ExerciseItem(prompt: "ARAÑA", options: ["Telaraña", "Nido", "Colmena", "Guarida"], correctAnswer: "Telaraña", explanation: "Las arañas tejen telarañas."),
            ExerciseItem(prompt: "AGRICULTOR", options: ["Tractor", "Avión", "Submarino", "Tren"], correctAnswer: "Tractor", explanation: "Los agricultores usan tractores para trabajar la tierra.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "Completar el refrán",
        instructions: "Completa el refrán o expresión popular conocida.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Más vale pájaro en mano que ciento ___.", options: ["volando", "corriendo", "cantando", "durmiendo"], correctAnswer: "volando", explanation: "El refrán significa que es mejor asegurar lo que se tiene que buscar cosas inciertas."),
            ExerciseItem(prompt: "A caballo regalado no se le mira el ___.", options: ["pelo", "diente", "ojo", "casco"], correctAnswer: "diente", explanation: "Significa que no se deben buscar defectos en los regalos recibidos."),
            ExerciseItem(prompt: "En boca cerrada no entran ___.", options: ["moscas", "palabras", "comidas", "mentiras"], correctAnswer: "moscas", explanation: "Aconseja prudencia y no hablar de más para evitar problemas."),
            ExerciseItem(prompt: "Dime con quién andas, y te diré quién ___.", options: ["eres", "serás", "vienes", "vas"], correctAnswer: "eres", explanation: "Sugiere que las compañías definen el carácter de una persona."),
            ExerciseItem(prompt: "Al que madruga, Dios lo ___.", options: ["ayuda", "castiga", "perdona", "olvida"], correctAnswer: "ayuda", explanation: "Refrán que exalta la diligencia y el esfuerzo temprano."),
            ExerciseItem(prompt: "Más vale tarde que ___.", options: ["nunca", "mañana", "ayer", "siempre"], correctAnswer: "nunca", explanation: "Es mejor hacer las cosas con retraso que no hacerlas jamás."),
            ExerciseItem(prompt: "Perro que ladra no ___.", options: ["muerde", "corre", "come", "juega"], correctAnswer: "muerde", explanation: "Se dice de las personas que amenazan mucho pero no actúan."),
            ExerciseItem(prompt: "Ojos que no ven, corazón que no ___.", options: ["siente", "llora", "ama", "sabe"], correctAnswer: "siente", explanation: "No se sufre por lo que se ignora o no se ve."),
            ExerciseItem(prompt: "No por mucho madrugar amanece más ___.", options: ["temprano", "tarde", "bello", "frío"], correctAnswer: "temprano", explanation: "Las cosas llevan su tiempo y no se aceleran por impaciencia."),
            ExerciseItem(prompt: "De tal palo, tal ___.", options: ["astilla", "madera", "hoja", "rama"], correctAnswer: "astilla", explanation: "Señala el parecido o herencia entre padres e hijos."),
            ExerciseItem(prompt: "Quien tiene un amigo tiene un ___.", options: ["tesoro", "problema", "auto", "libro"], correctAnswer: "tesoro", explanation: "Destaca el gran valor de la verdadera amistad."),
            ExerciseItem(prompt: "El que busca, ___.", options: ["encuentra", "pierde", "olvida", "corre"], correctAnswer: "encuentra", explanation: "El esfuerzo continuo da sus frutos."),
            ExerciseItem(prompt: "Agua que no has de beber, déjala ___.", options: ["correr", "caer", "hervir", "enfriar"], correctAnswer: "correr", explanation: "No interfieras en asuntos que no te conciernen."),
            ExerciseItem(prompt: "A la tercera va la ___.", options: ["vencida", "primera", "segunda", "última"], correctAnswer: "vencida", explanation: "Expresa esperanza de lograr algo tras varios intentos fallidos."),
            ExerciseItem(prompt: "Camarón que se duerme se lo lleva la ___.", options: ["corriente", "red", "marea", "arena"], correctAnswer: "corriente", explanation: "La inacción o descuido trae consecuencias negativas."),
            ExerciseItem(prompt: "Donde hubo fuego, cenizas ___.", options: ["quedan", "vuelan", "nacen", "desaparecen"], correctAnswer: "quedan", explanation: "Los afectos o recuerdos siempre dejan alguna huella."),
            ExerciseItem(prompt: "El hábito no hace al ___.", options: ["monje", "sastre", "rey", "caballero"], correctAnswer: "monje", explanation: "El aspecto exterior no define la verdadera esencia de alguien."),
            ExerciseItem(prompt: "Más vale maña que ___.", options: ["fuerza", "inteligencia", "rapidez", "suerte"], correctAnswer: "fuerza", explanation: "La habilidad y destreza superan a la fuerza bruta."),
            ExerciseItem(prompt: "A mal tiempo, buena ___.", options: ["cara", "suerte", "vida", "ropa"], correctAnswer: "cara", explanation: "Debemos afrontar las dificultades con optimismo."),
            ExerciseItem(prompt: "Zapatero, a tus ___.", options: ["zapatos", "botas", "herramientas", "pies"], correctAnswer: "zapatos", explanation: "Cada persona debe opinar o dedicarse a lo que conoce.")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Palabras compuestas",
        instructions: "Elige la palabra correcta para completar la palabra compuesta.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "SACA + ___", options: ["Puntas", "Lápiz", "Hoja", "Mesa"], correctAnswer: "Puntas", explanation: "Saca + Puntas = Sacapuntas."),
            ExerciseItem(prompt: "CORTA + ___", options: ["Uñas", "Pelo", "Mano", "Dedo"], correctAnswer: "Uñas", explanation: "Corta + Uñas = Cortauñas."),
            ExerciseItem(prompt: "ABRE + ___", options: ["Latas", "Boca", "Ojo", "Puerta"], correctAnswer: "Latas", explanation: "Abre + Latas = Abrelatas."),
            ExerciseItem(prompt: "PARA + ___", options: ["Choques", "Golpe", "Auto", "Freno"], correctAnswer: "Choques", explanation: "Para + Choques = Parachoques."),
            ExerciseItem(prompt: "BALON + ___", options: ["Cesto", "Pie", "Mano", "Red"], correctAnswer: "Cesto", explanation: "Balón + Cesto = Baloncesto."),
            ExerciseItem(prompt: "LAVA + ___", options: ["Platos", "Manos", "Ropa", "Coche"], correctAnswer: "Platos", explanation: "Lava + Platos = Lavaplatos."),
            ExerciseItem(prompt: "PARA + ___", options: ["Aguas", "Lluvia", "Sol", "Viento"], correctAnswer: "Aguas", explanation: "Para + Aguas = Paraguas."),
            ExerciseItem(prompt: "RASCA + ___", options: ["Cielos", "Nubes", "Piso", "Techo"], correctAnswer: "Cielos", explanation: "Rasca + Cielos = Rascacielos."),
            ExerciseItem(prompt: "BOCA + ___", options: ["Calle", "Abierta", "Cerrada", "Llena"], correctAnswer: "Calle", explanation: "Boca + Calle = Bocacalle."),
            ExerciseItem(prompt: "SACA + ___", options: ["Corchos", "Vinos", "Botellas", "Copas"], correctAnswer: "Corchos", explanation: "Saca + Corchos = Sacacorchos."),
            ExerciseItem(prompt: "PORTA + ___", options: ["Vasos", "Agua", "Mesa", "Bebida"], correctAnswer: "Vasos", explanation: "Porta + Vasos = Portavasos."),
            ExerciseItem(prompt: "CIEN + ___", options: ["Pies", "Manos", "Dedos", "Ojos"], correctAnswer: "Pies", explanation: "Cien + Pies = Ciempiés."),
            ExerciseItem(prompt: "CORTA + ___", options: ["Fuegos", "Humo", "Madera", "Hierba"], correctAnswer: "Fuegos", explanation: "Corta + Fuegos = Cortafuegos."),
            ExerciseItem(prompt: "TELA + ___", options: ["Araña", "Hebra", "Hilo", "Ropa"], correctAnswer: "Araña", explanation: "Tela + Araña = Telaraña."),
            ExerciseItem(prompt: "PASA + ___", options: ["Porte", "Tierra", "Viento", "Llave"], correctAnswer: "Porte", explanation: "Pasa + Porte = Pasaporte."),
            ExerciseItem(prompt: "GIRA + ___", options: ["Sol", "Luna", "Flor", "Tierra"], correctAnswer: "Sol", explanation: "Gira + Sol = Girasol."),
            ExerciseItem(prompt: "ROMPE + ___", options: ["Cabezas", "Huesos", "Cajas", "Mesas"], correctAnswer: "Cabezas", explanation: "Rompe + Cabezas = Rompecabezas."),
            ExerciseItem(prompt: "MOTO + ___", options: ["Cicleta", "Auto", "Carro", "Nave"], correctAnswer: "Cicleta", explanation: "Moto + Cicleta = Motocicleta."),
            ExerciseItem(prompt: "SALTA + ___", options: ["Montes", "Ríos", "Vallas", "Casas"], correctAnswer: "Montes", explanation: "Salta + Montes = Saltamontes."),
            ExerciseItem(prompt: "TRABA + ___", options: ["Lenguas", "Dientes", "Bocas", "Palabras"], correctAnswer: "Lenguas", explanation: "Traba + Lenguas = Trabalenguas.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "Prefijos y sufijos",
        instructions: "Elige el prefijo o sufijo correcto para completar la palabra.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "¿Qué prefijo significa 'no' en la palabra INFELIZ?", options: ["in-", "re-", "pre-", "des-"], correctAnswer: "in-", explanation: "El prefijo 'in-' aporta valor negativo o de privación."),
            ExerciseItem(prompt: "¿Qué sufijo indica profesión u oficio en la palabra PANADERO?", options: ["-ero", "-ito", "-dad", "-mente"], correctAnswer: "-ero", explanation: "El sufijo '-ero' sirve para crear sustantivos de profesiones u oficios."),
            ExerciseItem(prompt: "Escribir algo de nuevo es ___escribir.", options: ["re", "des", "im", "anti"], correctAnswer: "re", explanation: "El prefijo 're-' significa repetición o volver a hacer."),
            ExerciseItem(prompt: "Lo opuesto de hacer es ___hacer.", options: ["des", "in", "sub", "anti"], correctAnswer: "des", explanation: "El prefijo 'des-' denota la inversión de una acción."),
            ExerciseItem(prompt: "Alguien que demuestra mucho afecto es afect___.", options: ["uoso", "ble", "ista", "idad"], correctAnswer: "uoso", explanation: "El sufijo '-uoso' forma adjetivos a partir de sustantivos."),
            ExerciseItem(prompt: "La escuela para niños antes de la primaria es el ___escolar.", options: ["pre", "pos", "sub", "inter"], correctAnswer: "pre", explanation: "El prefijo 'pre-' significa anterioridad en el espacio o en el tiempo."),
            ExerciseItem(prompt: "La cualidad de ser amable es la amable___.", options: ["dad", "mente", "ura", "oso"], correctAnswer: "dad", explanation: "El sufijo '-dad' sirve para formar sustantivos abstractos de cualidad."),
            ExerciseItem(prompt: "Entender algo de forma incorrecta es ___entender.", options: ["mal", "des", "in", "re"], correctAnswer: "mal", explanation: "El prefijo 'mal-' significa de manera mala o errónea."),
            ExerciseItem(prompt: "Ver algo antes de que se estrene es ___visualizar.", options: ["pre", "re", "pos", "des"], correctAnswer: "pre", explanation: "El prefijo 'pre-' significa antes."),
            ExerciseItem(prompt: "Si una tarea se puede realizar, es realiz___.", options: ["able", "mente", "idad", "oso"], correctAnswer: "able", explanation: "El sufijo '-able' indica posibilidad o capacidad de recibir una acción."),
            ExerciseItem(prompt: "Un barco que va por debajo del agua es un ___marino.", options: ["sub", "trans", "super", "sobre"], correctAnswer: "sub", explanation: "El prefijo 'sub-' significa bajo o debajo."),
            ExerciseItem(prompt: "Una persona que toca el piano es un pian___.", options: ["ista", "ero", "dor", "ante"], correctAnswer: "ista", explanation: "El sufijo '-ista' se refiere a la persona que tiene un determinado oficio o afición."),
            ExerciseItem(prompt: "Lo opuesto de honesto es ___honesto.", options: ["des", "in", "im", "anti"], correctAnswer: "des", explanation: "El prefijo 'des-' se usa para formar palabras con significado opuesto."),
            ExerciseItem(prompt: "Algo que no se puede ver es ___visible.", options: ["in", "des", "sub", "anti"], correctAnswer: "in", explanation: "El prefijo 'in-' significa negación o privación."),
            ExerciseItem(prompt: "Una persona que enseña es un enseñ___.", options: ["ador", "ista", "ero", "idad"], correctAnswer: "ador", explanation: "El sufijo '-ador' indica la persona que realiza la acción."),
            ExerciseItem(prompt: "Lo opuesto de puntual es ___puntual.", options: ["im", "des", "in", "anti"], correctAnswer: "im", explanation: "El prefijo 'im-' se escribe antes de p para indicar negación."),
            ExerciseItem(prompt: "Si algo no tiene remedio, es irremedi___.", options: ["able", "oso", "mente", "dor"], correctAnswer: "able", explanation: "El sufijo '-able' indica posibilidad o imposibilidad si se niega."),
            ExerciseItem(prompt: "Calentar el horno antes de hornear es ___calentar.", options: ["pre", "re", "pos", "des"], correctAnswer: "pre", explanation: "El prefijo 'pre-' significa antes."),
            ExerciseItem(prompt: "Una persona que pinta cuadros es un pint___.", options: ["or", "ista", "ero", "dor"], correctAnswer: "or", explanation: "El sufijo '-or' indica agente o persona que realiza la acción."),
            ExerciseItem(prompt: "Cargar una aplicación de nuevo es ___cargar.", options: ["re", "des", "pre", "anti"], correctAnswer: "re", explanation: "El prefijo 're-' significa repetición.")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "Recordar historias",
        instructions: "Lee la historia corta y luego responde a la pregunta.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "¿Qué dejó María en casa?", options: ["Su billetera", "Sus llaves", "Su lista de compras", "Su teléfono"], correctAnswer: "Su billetera", explanation: "La historia menciona que olvidó su billetera en la cocina.", passage: "María fue a la tienda a comprar leche y pan. Olvidó su billetera en el mostrador de la cocina."),
            ExerciseItem(prompt: "¿Qué tipo de pez atrapó Tomás?", options: ["Una trucha", "Un salmón", "Una lubina", "Un bagre"], correctAnswer: "Una trucha", explanation: "La historia dice explícitamente que atrapó una trucha grande.", passage: "Tomás se despertó temprano el sábado para ir a pescar. Atrapó una trucha grande pero tuvo que devolverla porque era muy pequeña."),
            ExerciseItem(prompt: "¿De qué color es el coche de Arturo?", options: ["Azul", "Amarillo", "Rojo", "Verde"], correctAnswer: "Azul", explanation: "La historia especifica que estacionó su coche azul.", passage: "Arturo estacionó su coche azul debajo de un roble sombreado. Cuando regresó, vio que el coche estaba cubierto de hojas amarillas."),
            ExerciseItem(prompt: "¿Cuántas velas puso Linda en el pastel?", options: ["Diez", "Cinco", "Ocho", "Doce"], correctAnswer: "Diez", explanation: "La historia dice que puso diez velas rojas en el pastel.", passage: "Linda horneó un pastel de chocolate para el cumpleaños de su hija. Puso diez velas rojas en el pastel."),
            ExerciseItem(prompt: "¿Dónde vive el hermano de Roberto?", options: ["Chicago", "Nueva York", "Boston", "Miami"], correctAnswer: "Chicago", explanation: "La historia indica que envió el paquete a su hermano en Chicago.", passage: "Roberto fue a la oficina de correos para enviar un paquete a su hermano en Chicago. El empleado le dijo que llegaría el martes."),
            ExerciseItem(prompt: "¿De qué color son los tenis nuevos de Sofía?", options: ["Verde brillante", "Azul", "Rojo", "Negro"], correctAnswer: "Verde brillante", explanation: "La historia menciona que son de color verde brillante.", passage: "Sofía compró ayer un par de tenis nuevos para correr. Son de color verde brillante con rayas blancas."),
            ExerciseItem(prompt: "¿De qué color era el paraguas de Santiago?", options: ["Amarillo", "Rojo", "Azul", "Negro"], correctAnswer: "Amarillo", explanation: "La historia indica que abrió su paraguas amarillo.", passage: "Santiago caminaba por el parque cuando empezó a llover. Abrió su paraguas amarillo para mantenerse seco."),
            ExerciseItem(prompt: "¿Qué día estuvo cerrada la panadería?", options: ["Lunes", "Martes", "Miércoles", "Domingo"], correctAnswer: "Lunes", explanation: "La historia explica que cerró el lunes por reparaciones.", passage: "La panadería local cerró el lunes por reparaciones. Planeaban reabrir el martes por la mañana a las seis en punto."),
            ExerciseItem(prompt: "¿Por qué llamó Ana a un plomero?", options: ["Su fregadero goteaba", "Su estufa estaba rota", "No tenía luz", "Su puerta estaba trabada"], correctAnswer: "Su fregadero goteaba", explanation: "La historia dice que llamó al plomero porque el fregadero de la cocina goteaba.", passage: "Ana llamó a un plomero porque el fregadero de la cocina goteaba. El plomero llegó en una hora y arregló la tubería."),
            ExerciseItem(prompt: "¿Cómo se llama el perro de David?", options: ["Max", "Buddy", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "La historia presenta al perro de David como Max.", passage: "David paseó a su perro, Max, por la manzana. Max vio una ardilla y le ladró fuerte."),
            ExerciseItem(prompt: "¿De qué ingrediente se quedó sin existencias Elena?", options: ["Zanahorias", "Papas", "Cebollas", "Apio"], correctAnswer: "Zanahorias", explanation: "La historia señala que se dio cuenta de que no le quedaban zanahorias.", passage: "Elena estaba preparando sopa de verduras para la cena. Se dio cuenta de que no le quedaban zanahorias, así que usó papas en su lugar."),
            ExerciseItem(prompt: "¿Cuánto costó el almuerzo de Pedro?", options: ["Quince dólares", "Diez dólares", "Veinte dólares", "Doce dólares"], correctAnswer: "Quince dólares", explanation: "La historia establece que el costo total fue de quince dólares.", passage: "Pedro pidió una pizza de pepperoni y un refresco para el almuerzo. El costo total fue de quince dólares."),
            ExerciseItem(prompt: "¿De qué tema era el libro que pidió prestado Alicia?", options: ["Jardinería", "Historia", "Cocina", "Viajes"], correctAnswer: "Jardinería", explanation: "La historia afirma que pidió prestado un libro sobre jardinería.", passage: "Alicia fue a la biblioteca a pedir prestado un libro sobre jardinería. También se llevó un DVD de historia."),
            ExerciseItem(prompt: "¿Por qué se retrasó el tren?", options: ["Mantenimiento de las vías", "Una fuerte tormenta", "Un apagón de luz", "Falta de personal"], correctAnswer: "Mantenimiento de las vías", explanation: "La historia indica que el tren se retrasó debido al mantenimiento de las vías.", passage: "Jorge tomó un tren matutino a la ciudad para una entrevista de trabajo. El tren se retrasó quince minutos debido al mantenimiento de las vías."),
            ExerciseItem(prompt: "¿Qué flor terminó comprando Nancy?", options: ["Claveles rosados", "Rosas rojas", "Tulipanes amarillos", "Lirios blancos"], correctAnswer: "Claveles rosados", explanation: "La historia menciona que compró claveles rosados en su lugar.", passage: "Nancy fue al vivero a comprar rosas rojas. Estaban agotadas, así que compró claveles rosados en su lugar.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Secuencias numéricas",
        instructions: "¿Qué número sigue en la secuencia?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "La secuencia aumenta sumando 2 cada vez."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "La secuencia aumenta sumando 5 cada vez."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "La secuencia aumenta sumando 10 cada vez."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "La secuencia aumenta sumando 3 cada vez."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "La secuencia disminuye restando 1 cada vez."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "La secuencia disminuye restando 2 cada vez."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "La secuencia de números impares aumenta sumando 2 cada vez."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "La secuencia aumenta sumando 4 cada vez."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "La secuencia disminuye restando 5 cada vez."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "La secuencia disminuye restando 10 cada vez."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "La secuencia aumenta sumando 11 cada vez."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "La secuencia aumenta sumando 2 cada vez."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "La secuencia aumenta sumando 3 cada vez."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "La secuencia disminuye restando 3 cada vez."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "La secuencia aumenta sumando 7 cada vez."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "La secuencia disminuye restando 4 cada vez."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "La secuencia aumenta sumando 6 cada vez."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "La secuencia aumenta sumando 5 cada vez."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "La secuencia disminuye restando 10 cada vez."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "La secuencia aumenta sumando 2 cada vez.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Causa y efecto",
        instructions: "Elige el resultado más probable de la situación descrita.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Dejas un helado en el mostrador de la cocina por dos horas en un día caluroso. ¿Qué pasa?", options: ["Se pone más duro", "Se derrite", "Cambia de color", "Desaparece"], correctAnswer: "Se derrite", explanation: "El calor hace que el helado congelado pase a estado líquido."),
            ExerciseItem(prompt: "Te olvidas de regar tu planta de interior por tres semanas. ¿Cuál es el resultado más probable?", options: ["Le crecen flores", "Sigue verde", "Se marchita y se seca", "Se vuelve azul"], correctAnswer: "Se marchita y se seca", explanation: "Las plantas necesitan agua para vivir; sin ella se secan."),
            ExerciseItem(prompt: "Una nube de tormenta oscura bloquea el sol y se oye un trueno. ¿Qué es probable que suceda a continuación?", options: ["Lloverá", "Hará más calor", "Nevará inmediatamente", "Saldrán las estrellas"], correctAnswer: "Lloverá", explanation: "Las nubes de tormenta y los truenos son señales de lluvia inminente."),
            ExerciseItem(prompt: "Se te cae un tazón de vidrio al suelo de baldosas duras. ¿Cuál es el resultado más probable?", options: ["Rebota hacia arriba", "Cambia de color", "Se rompe en pedazos", "Se convierte en agua"], correctAnswer: "Se rompe en pedazos", explanation: "El vidrio es frágil y se quiebra al impactar contra superficies duras."),
            ExerciseItem(prompt: "Pones una rebanada de pan en la tostadora y la dejas en la potencia máxima. ¿Qué sucede?", options: ["Se ablanda", "Se quema y se pone negra", "Sigue suave y blanca", "Desaparece"], correctAnswer: "Se quema y se pone negra", explanation: "El calor excesivo de una tostadora quema el pan."),
            ExerciseItem(prompt: "Dejas encendidos los faros del coche toda la noche. ¿Qué pasará por la mañana?", options: ["El coche irá más rápido", "La batería estará descargada", "El coche cambiará de color", "El motor arrancará de inmediato"], correctAnswer: "La batería estará descargada", explanation: "Mantener los faros encendidos consume toda la energía de la batería."),
            ExerciseItem(prompt: "Cae una fuerte tormenta de nieve durante la noche acumulando quince centímetros de nieve. ¿Qué les pasa a las calles?", options: ["Se mantienen secas", "Se vuelven resbaladizas y se cubren de nieve", "Se vuelven verdes", "Se evaporan"], correctAnswer: "Se vuelven resbaladizas y se cubren de nieve", explanation: "La nieve acumulada en las calles hace que la conducción sea peligrosa y resbaladiza."),
            ExerciseItem(prompt: "Colocas una bandeja llena de agua en el congelador. ¿Qué pasa después de unas horas?", options: ["El agua hierve", "El agua se convierte en hielo", "El agua se evapora", "El agua cambia de color"], correctAnswer: "El agua se convierte en hielo", explanation: "Las bajas temperaturas congelan el agua líquida haciéndola sólida."),
            ExerciseItem(prompt: "Te pones calcetines de lana gruesos y botas pesadas en un caluroso día de verano. ¿Qué les pasa a tus pies?", options: ["Sienten frío", "Se mantienen secos", "Se calientan y sudan", "Se vuelven azules"], correctAnswer: "Se calientan y sudan", explanation: "Las prendas de abrigo retienen el calor corporal provocando sudoración."),
            ExerciseItem(prompt: "Una persona pasa 24 horas seguidas sin dormir. ¿Cómo se sentirá probablemente?", options: ["Con mucha energía", "Cansada y somnolienta", "Hambrienta", "Extremadamente feliz"], correctAnswer: "Cansada y somnolienta", explanation: "La falta de descanso provoca cansancio, fatiga y sueño."),
            ExerciseItem(prompt: "Agregas azúcar a una taza de té caliente y la revuelves. ¿Qué le pasa al azúcar?", options: ["Se convierte en hielo", "Desaparece de la taza", "Se disuelve en el té", "Se quema"], correctAnswer: "Se disuelve en el té", explanation: "Revolver azúcar en un líquido caliente hace que se disuelva."),
            ExerciseItem(prompt: "Sales al exterior durante un fuerte aguacero sin paraguas ni impermeable. ¿Cuál es el resultado?", options: ["Te mantienes seco", "Tu ropa se empapa", "Te vuelves azul", "Sientes más calor"], correctAnswer: "Tu ropa se empapa", explanation: "La lluvia cae directamente sobre ti mojando toda tu ropa."),
            ExerciseItem(prompt: "Soplas aire dentro de un globo hasta que está demasiado lleno. ¿Qué pasa?", options: ["Vuela hasta la luna", "Se revienta", "Se convierte en un pájaro", "Se encoge"], correctAnswer: "Se revienta", explanation: "La presión excesiva del aire supera la resistencia del globo haciéndolo estallar."),
            ExerciseItem(prompt: "Apagas todas las luces de una habitación sin ventanas durante la noche. ¿Qué pasa?", options: ["La habitación se aclara", "La habitación queda completamente a oscuras", "La habitación se vuelve verde", "La habitación se llena de luz"], correctAnswer: "La habitación queda completamente a oscuras", explanation: "La ausencia de fuentes de luz genera oscuridad total."),
            ExerciseItem(prompt: "No estudias ni te preparas para un examen difícil. ¿Cuál es el resultado más probable?", options: ["Obtienes una calificación perfecta", "Te va mal en el examen", "Olvidas tu nombre", "El examen se cancela"], correctAnswer: "Te va mal en el examen", explanation: "No estudiar reduce drásticamente las posibilidades de aprobar.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "¿Qué emoción es esta?",
        instructions: "Lee la situación y elige la emoción que la persona probablemente siente.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Sara acaba de enterarse de que ganó el primer lugar en una competencia. ¿Cómo se siente?", options: ["Triste", "Enojada", "Feliz", "Asustada"], correctAnswer: "Feliz", explanation: "Ganar una competencia genera alegría y felicidad."),
            ExerciseItem(prompt: "David escucha un ruido extraño y fuerte en el piso de abajo a mitad de la noche. ¿Cómo se siente?", options: ["Feliz", "Asustado", "Aburrido", "Emocionado"], correctAnswer: "Asustado", explanation: "Los ruidos imprevistos en la oscuridad causan miedo o temor."),
            ExerciseItem(prompt: "La mejor amiga de María se muda a otro estado muy lejano. ¿Cómo se siente María?", options: ["Triste", "Enojada", "Emocionada", "Celosa"], correctAnswer: "Triste", explanation: "Despedir a un amigo cercano causa pena y tristeza."),
            ExerciseItem(prompt: "Alguien se mete delante de Juan en una larga fila en la tienda. ¿Cómo se siente Juan?", options: ["Feliz", "Asustada", "Molesto", "Avergonzado"], correctAnswer: "Molesto", explanation: "Las faltas de respeto suelen causar enfado o molestia."),
            ExerciseItem(prompt: "Emilia está a punto de dar un discurso frente a una audiencia muy grande. ¿Cómo se siente?", options: ["Nerviosa", "Aburrida", "Triste", "Enojada"], correctAnswer: "Nerviosa", explanation: "Hablar en público produce frecuentemente nerviosismo."),
            ExerciseItem(prompt: "El vuelo de Roberto fue cancelado, retrasando sus vacaciones por dos días. ¿Cómo se siente?", options: ["Frustrado", "Feliz", "Asustado", "Orgulloso"], correctAnswer: "Frustrado", explanation: "Las cancelaciones que arruinan planes generan frustración."),
            ExerciseItem(prompt: "El hijo de Lisa se graduó de la universidad con honores. ¿Cómo se siente Lisa?", options: ["Orgullosa", "Celosa", "Triste", "Asustada"], correctAnswer: "Orgullosa", explanation: "Ver triunfar a un hijo produce orgullo familiar."),
            ExerciseItem(prompt: "Un empleado le explica a Arturo un formulario complicado por cuarta vez, pero Arturo sigue sin entenderlo. ¿Cómo se siente Arturo?", options: ["Confundido", "Feliz", "Emocionado", "Orgulloso"], correctAnswer: "Confundido", explanation: "No comprender una explicación reiterada genera confusión."),
            ExerciseItem(prompt: "Jaime lleva más de dos horas en una sala de espera silenciosa y sin nada que leer. ¿Cómo se siente?", options: ["Aburrido", "Asustado", "Enojado", "Feliz"], correctAnswer: "Aburrido", explanation: "La falta de entretenimiento durante una larga espera causa aburrimiento."),
            ExerciseItem(prompt: "La familia de Elena le organizó una fiesta de cumpleaños sorpresa con todos sus amigos. ¿Cómo se siente?", options: ["Sorprendida", "Enojada", "Triste", "Asustada"], correctAnswer: "Sorprendida", explanation: "Una celebración imprevista produce sorpresa."),
            ExerciseItem(prompt: "Un perro callejero corrió hacia Karen y le ladró agresivamente durante su paseo. ¿Cómo se siente?", options: ["Asustada", "Feliz", "Aburrida", "Orgullosa"], correctAnswer: "Asustada", explanation: "La actitud agresiva de un animal produce susto o temor."),
            ExerciseItem(prompt: "Guillermo perdió su anillo de bodas mientras trabajaba en el jardín. ¿Cómo se siente?", options: ["Triste", "Emocionado", "Aburrido", "Tranquilo"], correctAnswer: "Triste", explanation: "Perder un objeto de valor sentimental causa tristeza y aflicción."),
            ExerciseItem(prompt: "Patricia recibió una hermosa tarjeta y flores de sus nietos. ¿Cómo se siente?", options: ["Amada", "Enojada", "Asustada", "Confundida"], correctAnswer: "Amada", explanation: "Los detalles de los seres queridos hacen que uno se sienta amado y valorado."),
            ExerciseItem(prompt: "La tienda no tenía el pan específico que Ricardo quería, así que tuvo que comprar otra marca. ¿Cómo se siente?", options: ["Ligeramente desilusionado", "Aterrado", "Furioso", "Eufórico"], correctAnswer: "Ligeramente desilusionado", explanation: "No conseguir una preferencia menor causa una pequeña desilusión."),
            ExerciseItem(prompt: "Carlos pasó toda la tarde armando una estantería de libros y quedó perfecta. ¿Cómo se siente?", options: ["Satisfecho", "Triste", "Asustado", "Aburrido"], correctAnswer: "Satisfecho", explanation: "Terminar correctamente un trabajo manual da satisfacción."),
            ExerciseItem(prompt: "Linda derramó accidentalmente una bandeja de bebidas en un restaurante silencioso. ¿Cómo se siente?", options: ["Avergonzada", "Feliz", "Enojada", "Aburrida"], correctAnswer: "Avergonzada", explanation: "Llamar la atención por un descuido causa vergüenza."),
            ExerciseItem(prompt: "Tomás viaja en su primer viaje a Hawái mañana por la mañana. ¿Cómo se siente?", options: ["Emocionado", "Triste", "Enojado", "Aburrido"], correctAnswer: "Emocionado", explanation: "La víspera de un viaje anhelado genera emoción."),
            ExerciseItem(prompt: "El gato de Susana regresó a casa sano y salvo después de estar perdido tres días. ¿Cómo se siente?", options: ["Aliviada", "Enojada", "Asustada", "Confundida"], correctAnswer: "Aliviada", explanation: "El desenlace feliz de una preocupación trae alivio."),
            ExerciseItem(prompt: "La conexión a internet se cae cada cinco minutos mientras Jorge intenta trabajar. ¿Cómo se siente?", options: ["Irritado", "Asustado", "Feliz", "Aburrido"], correctAnswer: "Irritado", explanation: "Las interrupciones constantes del trabajo causan irritación."),
            ExerciseItem(prompt: "Elena tomó un baño largo y tibio después de un día estresante. ¿Cómo se siente?", options: ["Relajada", "Enojada", "Asustada", "Nerviosa"], correctAnswer: "Relajada", explanation: "El baño tibio ayuda a relajar el cuerpo y la mente.")
        ]
    )

    // MARK: - Exercise 10: What's Wrong Here?
    private static let exercise10 = Exercise(
        title: "¿Qué está mal aquí?",
        instructions: "Elige qué está mal o es imposible en la oración descrita.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Juan desayunó a la medianoche antes de irse a dormir.", options: ["La gente no come comida", "El desayuno es una comida de la mañana, no de la medianoche", "Juan no debería dormir", "La medianoche es por la tarde"], correctAnswer: "El desayuno es una comida de la mañana, no de la medianoche", explanation: "Por definición, el desayuno es la primera comida del día que se toma por la mañana."),
            ExerciseItem(prompt: "El perro le ladró al cartero y luego voló sobre el techo para atrapar un pájaro.", options: ["Los perros no ladran", "Los perros no pueden volar", "Los carteros no entregan cartas", "Los pájaros no vuelan"], correctAnswer: "Los perros no pueden volar", explanation: "Los perros carecen de alas y no tienen la capacidad de volar."),
            ExerciseItem(prompt: "Sara se puso su abrigo grueso de invierno y guantes para ir a nadar a la piscina al aire libre en julio.", options: ["La gente no nada en julio", "No te pones un abrigo de invierno y guantes para nadar", "Las piscinas al aire libre no existen", "Los abrigos se usan en verano"], correctAnswer: "No te pones un abrigo de invierno y guantes para nadar", explanation: "Para nadar se utiliza traje de baño; la ropa de invierno es incompatible con el agua caliente o templada."),
            ExerciseItem(prompt: "El reloj de la pared sonó las trece, así que Arturo supo que era hora de tomar su café de la mañana.", options: ["Los relojes no van en las paredes", "Los relojes analógicos comunes solo marcan hasta las doce horas", "El café no es una bebida matutina", "Arturo no toma café"], correctAnswer: "Los relojes analógicos comunes solo marcan hasta las doce horas", explanation: "Los relojes tradicionales de pared están numerados del uno al doce."),
            ExerciseItem(prompt: "Pablo montó en su bicicleta a través del lago profundo para visitar a su amigo.", options: ["Las bicicletas no pueden andar sobre el agua", "Los lagos no tienen peces", "Los amigos no se visitan", "Las bicicletas no tienen pedales"], correctAnswer: "Las bicicletas no pueden andar sobre el agua", explanation: "Las bicicletas son vehículos terrestres y se hunden en el agua."),
            ExerciseItem(prompt: "Linda hirvió unos cubos de hielo en una olla para hacer agua fría para beber.", options: ["Los cubos de hielo no existen", "Hervir cubos de hielo los convierte en agua caliente, no fría", "Las ollas no pueden contener hielo", "El agua para beber no es saludable"], correctAnswer: "Hervir cubos de hielo los convierte en agua caliente, no fría", explanation: "Al hervir el hielo este se derrite y se calienta, produciendo agua caliente."),
            ExerciseItem(prompt: "El pez trepó por el árbol para escape del gato hambriento.", options: ["Los peces no pueden trepar árboles", "Los gatos no comen pescado", "Los árboles no tienen hojas", "Los peces viven en los árboles"], correctAnswer: "Los peces no pueden trepar árboles", explanation: "Los peces viven en el agua y carecen de extremidades para trepar."),
            ExerciseItem(prompt: "Roberto usó un tenedor para tomar su sopa de fideos con pollo.", options: ["Los tenedores no pueden retener sopa líquida", "La sopa no se hace con pollo", "Roberto debería usar un cuchillo", "La sopa no se toma con cubiertos"], correctAnswer: "Los tenedores no pueden retener sopa líquida", explanation: "Los tenedores tienen dientes por donde se escurre el líquido; la sopa requiere cuchara."),
            ExerciseItem(prompt: "Como estaba lloviendo fuertemente, Nancy colgó su ropa mojada en el tendedero al aire libre para que se secase.", options: ["La lluvia no moja las cosas", "La ropa no se secará afuera bajo la lluvia", "Los tendederos solo se usan adentro", "Nancy no usa ropa"], correctAnswer: "La ropa no se secará afuera bajo la lluvia", explanation: "La lluvia mantiene la ropa mojada e impide que se seque."),
            ExerciseItem(prompt: "El avión aterrizó a salvo en el aeropuerto y todos los pasajeros bajaron directamente a las vías del tren.", options: ["Los aviones no aterrizan en aeropuertos", "Los pasajeros no viajan en aviones", "Las puertas de desembarque de los aeropuertos no dan a las vías del tren", "Los trenes no andan por vías"], correctAnswer: "Las puertas de desembarque de los aeropuertos no dan a las vías del tren", explanation: "Los aviones desembarcan en rampas o pasarelas hacia la terminal, no en vías de tren."),
            ExerciseItem(prompt: "Elena encendió el aire acondicionado para calentar la sala de estar.", options: ["El aire acondicionado enfría las habitaciones, no las calienta", "Las salas de estar no tienen paredes", "Elena no tiene casa", "El aire acondicionado no usa electricidad"], correctAnswer: "El aire acondicionado enfría las habitaciones, no las calienta", explanation: "La función principal del aire acondicionado es enfriar el ambiente bajando la temperatura."),
            ExerciseItem(prompt: "El conejo persiguió al lobo gris grande por el bosque.", options: ["Los conejos no viven en los bosques", "Los lobos no corren", "Los conejos no persiguen a los lobos", "Los lobos no son grises"], correctAnswer: "Los conejos no persiguen a los lobos", explanation: "Los lobos son depredadores y los conejos son presas; los conejos huyen de los lobos."),
            ExerciseItem(prompt: "Jaime compró un par de zapatos de cuero para sus manos para mantenerlas calientes en invierno.", options: ["Los zapatos se usan en los pies, no en las manos", "El cuero no se usa para hacer zapatos", "Las manos no se enfrían", "El invierno no es frío"], correctAnswer: "Los zapatos se usan en los pies, no en las manos", explanation: "Los zapatos se diseñan para los pies; para las manos se usan guantes o mitones."),
            ExerciseItem(prompt: "El sol salió a la medianoche, iluminando el cielo matutino.", options: ["El sol sale por la mañana, no a la medianoche", "La medianoche es por la tarde", "El sol no brilla", "La mañana es oscura"], correctAnswer: "El sol sale por la mañana, no a la medianoche", explanation: "A la medianoche el sol está oculto y es noche cerrada."),
            ExerciseItem(prompt: "Alicia encendió el televisor para escuchar su estación de radio favorita.", options: ["La televisión muestra video y no es una radio", "Las radios no reproducen música", "A Alicia no le gusta la música", "Los televisores no tienen parlantes"], correctAnswer: "La televisión muestra video y no es una radio", explanation: "Las estaciones de radio se escuchan en aparatos de radio; la televisión es para señal de video.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "Lectura de receta médica",
        instructions: "Lee la información de la receta médica y responde la pregunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Etiqueta: Tome 1 tableta dos veces al día con alimentos. ¿Cuántas tabletas debe tomar en total cada día?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Tomar una tableta dos veces al día equivale a 1 + 1 = 2 tabletas."),
            ExerciseItem(prompt: "Etiqueta: Tome 2 tabletas al acostarse. ¿Cuándo debe tomar este medicamento?", options: ["Por la mañana", "Con el almuerzo", "Al acostarse", "Antes de hacer ejercicio"], correctAnswer: "Al acostarse", explanation: "La indicación médica dice expresamente que se tome al acostarse."),
            ExerciseItem(prompt: "Etiqueta: Tome 1 cápsula cada 8 horas según sea necesario para el dolor. ¿Cuántas veces puede tomar esto en un día de 24 horas?", options: ["2 veces", "3 veces", "4 veces", "6 veces"], correctAnswer: "3 veces", explanation: "Un día tiene 24 horas. Dividido por 8 da un máximo de 3 dosis."),
            ExerciseItem(prompt: "Etiqueta: Amoxicilina 250 mg. Tome 1 tableta tres veces al día. Mantener refrigerado. ¿Cómo debe guardar este medicamento?", options: ["En el congelador", "En el refrigerador", "En una alacena tibia", "Bajo luz solar directa"], correctAnswer: "En el refrigerador", explanation: "'Mantener refrigerado' significa que debe conservarse en el refrigerador."),
            ExerciseItem(prompt: "Etiqueta: No consuma alcohol mientras tome este medicamento. Puede causar somnolencia. ¿Cuál es un efecto secundario advertido?", options: ["Somnolencia", "Más energía", "Presión arterial alta", "Estornudos"], correctAnswer: "Somnolencia", explanation: "La advertencia señala que el medicamento 'puede causar somnolencia'."),
            ExerciseItem(prompt: "Etiqueta: Tome 1 tableta al día por la mañana con el estómago vacío. ¿Cuándo debe desayunar?", options: ["Antes de tomar la tableta", "Después de tomar la tableta", "Mientras toma la tableta", "No debe desayunar"], correctAnswer: "Después de tomar la tableta", explanation: "Tomar con el estómago vacío requiere ingerir la tableta antes de desayunar."),
            ExerciseItem(prompt: "Etiqueta: Tome 1 tableta por vía oral todos los días. Cantidad: 30. Repeticiones: 2. ¿Cuántas repeticiones de receta se permiten?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "La receta indica 'Repeticiones: 2'."),
            ExerciseItem(prompt: "Etiqueta: Aplique una capa delgada en el área de la piel afectada dos veces al día. No tragar. ¿Cómo se aplica este medicamento?", options: ["Tragándolo", "Frotándolo en la piel", "Rociándolo en la nariz", "Disolviéndolo en agua"], correctAnswer: "Frotándolo en la piel", explanation: "La etiqueta dice aplicar una capa delgada en la piel, es decir, de forma tópica."),
            ExerciseItem(prompt: "Etiqueta: Desechar después de 15/10/2026. Hoy es 01/11/2026. ¿Es seguro tomar este medicamento?", options: ["Sí", "No", "Solo con comida", "Solo de noche"], correctAnswer: "No", explanation: "El medicamento venció el 15 de octubre de 2026, fecha anterior al día de hoy."),
            ExerciseItem(prompt: "Etiqueta: Tome 1 tableta dos veces al día. No tomar con productos lácteos. ¿Qué bebida debe evitar al tomar esta pastilla?", options: ["Agua", "Leche", "Jugo de manzana", "Café negro"], correctAnswer: "Leche", explanation: "La leche es un producto lácteo y debe evitarse según las instrucciones."),
            ExerciseItem(prompt: "Etiqueta: Tome 2 tabletas 1 hora antes del vuelo. ¿Por qué tomaría este medicamento?", options: ["Para prevenir el mareo durante el viaje", "Para dormir mejor en casa", "Para curar un dolor de cabeza", "Para tratar una erupción cutánea"], correctAnswer: "Para prevenir el mareo durante el viaje", explanation: "Tomar pastillas antes de volar suele ser para prevenir el mareo por movimiento."),
            ExerciseItem(prompt: "Etiqueta: Gotas para los ojos. Instilar 1 gota en cada ojo dos veces al día. ¿Dónde debe aplicar esta medicina?", options: ["En la boca", "En los oídos", "En los ojos", "En la piel"], correctAnswer: "En los ojos", explanation: "La etiqueta especifica que son gotas para los ojos y deben instilarse en los ojos."),
            ExerciseItem(prompt: "Etiqueta: Tome 1 tableta cada 4 a 6 horas según sea necesario para el dolor de cabeza. Máximo 4 tabletas al día. ¿Cuántas tabletas como máximo puede tomar en un día?", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "La etiqueta limita la dosis a un 'Máximo 4 tabletas al día'."),
            ExerciseItem(prompt: "Etiqueta: Tomar con un vaso lleno de agua. ¿Por qué necesita agua con esta pastilla?", options: ["Para disolverla en la piel", "Para ayudar a tragarla y evitar molestias estomacales", "Para cambiar su color", "Para que tenga mejor sabor"], correctAnswer: "Para ayudar a tragarla y evitar molestias estomacales", explanation: "El agua facilita el paso del comprimido por el esófago protegiendo el estómago."),
            ExerciseItem(prompt: "Etiqueta: Tome 1 tableta al día con su cena. ¿Cuál es el mejor momento para tomarla?", options: ["En el desayuno", "En el almuerzo", "En la cena", "A mitad de la noche"], correctAnswer: "En la cena", explanation: "La receta indica tomar el medicamento junto con la cena.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Lectura de menú",
        instructions: "Usa la información del menú para responder la pregunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Menú: Hamburguesa con queso $8.00, Papas fritas $3.00, Refresco $2.00. ¿Cuánto cuesta la hamburguesa con queso?", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "El menú señala que la hamburguesa con queso cuesta $8.00."),
            ExerciseItem(prompt: "Menú: Café $2.50, Té $2.00, Muffin $3.00. ¿Cuál artículo es el más barato?", options: ["Café", "Té", "Muffin", "Cuestan lo mismo"], correctAnswer: "Té", explanation: "El té es el de menor precio con un costo de $2.00."),
            ExerciseItem(prompt: "Menú: Sopa de tomate $5.00, Ensalada verde $6.00, Pollo César $9.00. ¿Cuánto cuesta un plato de Sopa de tomate?", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "La sopa de tomate figura en el menú con un precio de $5.00."),
            ExerciseItem(prompt: "Menú: Desayuno de pancakes $10.00, Tostadas francesas $9.00, Acompañamiento de tocino $4.00. ¿Cuál es el costo de las tostadas francesas?", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "El precio listado para las tostadas francesas es de $9.00."),
            ExerciseItem(prompt: "Menú: Porción de pizza de queso $4.00, Porción de pizza de pepperoni $4.50. ¿Cuánto más cuesta la porción de pepperoni que la de queso?", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "La diferencia es $4.50 menos $4.00, lo que da $0.50."),
            ExerciseItem(prompt: "Menú: Sándwich de pollo $7.00, Pescado con papas $11.00. Tienes $10.00. ¿Cuál comida puedes pagar?", options: ["Sándwich de pollo", "Pescado con papas", "Ambas comidas", "Ninguna de las dos"], correctAnswer: "Sándwich de pollo", explanation: "$7.00 es menor que $10.00, por lo que puedes pagarlo, a diferencia del plato de $11.00."),
            ExerciseItem(prompt: "Menú: Menú infantil (menores de 12 años) $6.00, Hamburguesa de adulto $12.00. ¿Cuánto cuesta la comida para un niño de 8 años?", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "Un niño de 8 años es menor de 12, así que aplica la tarifa infantil de $6.00."),
            ExerciseItem(prompt: "Menú: Helado de chocolate $4.00, Tarta de manzana $5.00, Agregar helado de vainilla a la tarta $1.50. ¿Cuánto cuesta la Tarta de manzana con helado de vainilla?", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "$5.00 de la tarta + $1.50 del helado suman $6.50."),
            ExerciseItem(prompt: "Menú: Wrap de pavo $8.50, Papas fritas individuales $1.50, Jugo $2.00. ¿Cuál es el costo total de un Wrap de pavo y un Jugo?", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "Sumando $8.50 (wrap) y $2.00 (jugo) obtenemos $10.50."),
            ExerciseItem(prompt: "Menú: Almuerzo especial (servido de 11 AM a 3 PM) $9.00. Menú de cena regular $15.00. Son las 1:00 PM. ¿Cuánto cuesta el almuerzo especial?", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "La 1:00 PM está dentro del horario del almuerzo especial, por lo que cuesta $9.00."),
            ExerciseItem(prompt: "Menú: Café $2.00 (Rellenos gratis), Té caliente $2.50. Si tomas tres tazas de café, ¿cuánto pagas en total?", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "Dado que el café incluye refill gratis, solo pagas el valor inicial de $2.00."),
            ExerciseItem(prompt: "Menú: Sopa de verduras $4.00, Estofado de carne $7.00. ¿Cuál plato contiene carne?", options: ["Sopa de verduras", "Estofado de carne", "Ambos", "Ninguno"], correctAnswer: "Estofado de carne", explanation: "El estofado de carne contiene ingredientes cárnicos, a diferencia de las verduras."),
            ExerciseItem(prompt: "Menú: Taco $3.00, Quesadilla $6.00, Refresco $2.00. ¿Cuál es el costo de una Quesadilla?", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "El precio marcado para la quesadilla es de $6.00."),
            ExerciseItem(prompt: "Menú: Espagueti $12.00, Lasaña $14.00, Pan de ajo $3.00. ¿Cuánto cuesta la porción de Pan de ajo?", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "El pan de ajo se ofrece a un valor de $3.00."),
            ExerciseItem(prompt: "Menú: Huevos Benedictinos $11.00, Avena $6.00, Tazón de frutas $5.00. ¿Cuál plato de desayuno es el más caro?", options: ["Huevos Benedictinos", "Avena", "Tazón de frutas", "Tienen el mismo precio"], correctAnswer: "Huevos Benedictinos", explanation: "El desayuno de huevos benedictinos es el de mayor precio con $11.00.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Entender facturas",
        instructions: "Lee la información de la factura y responde la pregunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Factura de electricidad: Total a pagar: $45.00. Fecha de vencimiento: 15 de julio. ¿Cuál es la cantidad que debes pagar?", options: ["$15.00", "$45.00", "15 de julio", "Gratis"], correctAnswer: "$45.00", explanation: "La factura indica que el total a pagar es de $45.00."),
            ExerciseItem(prompt: "Factura del agua: Fecha de vencimiento: 10 de oct. Cargo por pago tardío: $5.00. Hoy es 12 de oct. ¿Qué pasa si pagas hoy?", options: ["Pagas el valor regular", "Pagas un cargo por pago tardío de $5.00", "Obtienes un descuento", "Nada"], correctAnswer: "Pagas un cargo por pago tardío de $5.00", explanation: "Dado que hoy es posterior al vencimiento, se suma el cargo por retraso."),
            ExerciseItem(prompt: "Factura de internet: Cargo mensual: $60.00. Descuento por pago automático: -$5.00. ¿Cuál es el precio final con pago automático?", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "$60.00 de cargo menos el descuento de $5.00 resulta en $55.00."),
            ExerciseItem(prompt: "Factura de gas: Cargos del mes: $30.00. Saldo impago: $10.00. Saldo total: $40.00. ¿Cuánto dinero impago se arrastra del mes anterior?", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "El saldo impago representa la deuda acumulada anterior que es de $10.00."),
            ExerciseItem(prompt: "Factura del teléfono: Vencimiento: 20 de junio. Fecha actual: 15 de junio. ¿Cuántos días te quedan para pagar a tiempo?", options: ["5 días", "20 días", "15 días", "1 día"], correctAnswer: "5 días", explanation: "Del 15 al 20 de junio transcurren exactamente 5 días."),
            ExerciseItem(prompt: "Factura de basura: Cargo trimestral (3 meses): $36.00. ¿Cuál es el costo equivalente por mes?", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "Dividir el cargo total de $36.00 entre los 3 meses resulta en $12.00 mensuales."),
            ExerciseItem(prompt: "Factura de televisión por cable: Total a pagar: $80.00. A favor de: 'XYZ Cable Co.'. ¿A nombre de quién debe emitirse el cheque?", options: ["$80.00", "XYZ Cable Co.", "El señor del cable", "Efectivo"], correctAnswer: "XYZ Cable Co.", explanation: "La factura indica explícitamente pagar a favor de 'XYZ Cable Co.'."),
            ExerciseItem(prompt: "Factura de servicios: Agua: $20.00, Gas: $30.00, Electricidad: $50.00. Total: $100.00. ¿Cuál servicio costó más?", options: ["Agua", "Gas", "Electricidad", "Costaron lo mismo"], correctAnswer: "Electricidad", explanation: "La electricidad costó $50.00, siendo el mayor de los tres cargos."),
            ExerciseItem(prompt: "Seguro de coche: Prima semestral: $600.00. ¿Con qué frecuencia se paga esta factura?", options: ["Cada mes", "Cada 6 meses (dos veces al año)", "Una vez al año", "Cada semana"], correctAnswer: "Cada 6 meses (dos veces al año)", explanation: "Semestral significa que corresponde a un período de seis meses."),
            ExerciseItem(prompt: "Servicio de streaming: Estado de la cuenta: SUSPENDIDO. Saldo pendiente: $15.00. ¿Por qué no funciona el servicio?", options: ["No hay internet", "El televisor está roto", "La cuenta está suspendida por saldo pendiente", "El video está cargando"], correctAnswer: "La cuenta está suspendida por saldo pendiente", explanation: "La factura especifica que el estado de la cuenta es suspendido debido a la falta de pago."),
            ExerciseItem(prompt: "Membresía del gimnasio: Cuota anual: $120.00. Cuota mensual: $10.00. ¿Cuánto cuesta la tarifa anual?", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "La cuota anual (de todo el año) es de $120.00."),
            ExerciseItem(prompt: "Factura de calefacción: Enero: $110.00. Julio: $20.00. ¿Por qué es más alta la factura en enero?", options: ["El gas es más caro en verano", "Se usa más calefacción durante el mes de invierno de enero", "La casa está vacía en enero", "Hubo cambio de hora"], correctAnswer: "Se usa más calefacción durante el mes de invierno de enero", explanation: "En el invierno frío se consume mucha más calefacción para calentar el hogar."),
            ExerciseItem(prompt: "Tarjeta de crédito: Pago mínimo: $25.00. Saldo total: $500.00. ¿Cuál es la cantidad mínima que puedes pagar este mes para evitar cargos de demora?", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "El pago mínimo indicado de $25.00 es el mínimo requerido para mantener la cuenta al día."),
            ExerciseItem(prompt: "Factura médica: Costo total: $150.00. Cubierto por seguro: $120.00. Responsabilidad del paciente: $30.00. ¿Cuánto debes pagar?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "La responsabilidad del paciente es la cantidad neta que le corresponde pagar, que es $30.00."),
            ExerciseItem(prompt: "Suscripción al periódico: Próxima fecha de renovación: 31 de dic, 2026. Si quieres cancelar antes de renovar, ¿cuándo debes llamar?", options: ["Antes del 31 de dic, 2026", "Después del 31 de dic, 2026", "En enero de 2027", "Nunca"], correctAnswer: "Antes del 31 de dic, 2026", explanation: "Para evitar el cobro de la renovación automática se debe cancelar antes de la fecha límite.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "¿Qué harías tú?",
        instructions: "Elige la mejor respuesta a la situación descrita.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Hueles a humo en la cocina pero no ves fuego. ¿Qué deberías hacer primero?", options: ["Ignorarlo", "Abrir las ventanas y revisar la estufa", "Llamar a un amigo para charlar", "Volverte a dormir"], correctAnswer: "Abrir las ventanas y revisar la estufa", explanation: "Revisar la cocina permite identificar rápidamente si hay algo quemándose sin peligro."),
            ExerciseItem(prompt: "Estás en el supermercado y te das cuenta de que olvidaste la billetera en casa. ¿Cuál es la mejor opción?", options: ["Llevarte los alimentos sin pagar", "Pedir al cajero que guarde tu carrito e ir a casa a buscarla", "Salir llorando de la tienda", "Discutir con el gerente"], correctAnswer: "Pedir al cajero que guarde tu carrito e ir a casa a buscarla", explanation: "Es el proceder estándar y cortés ante un olvido fortuito."),
            ExerciseItem(prompt: "Se te cae un huevo crudo al suelo de la cocina y se rompe. ¿Qué debes hacer?", options: ["Dejarlo ahí hasta mañana", "Limpiarlo de inmediato con papel toalla y jabón", "Cubrirlo con una alfombra", "Dejar que el gato se lo coma"], correctAnswer: "Limpiarlo de inmediato con papel toalla y jabón", explanation: "El huevo crudo es sumamente resbaladizo y atrae bacterias, por lo que debe limpiarse pronto."),
            ExerciseItem(prompt: "Un amigo te cuenta que su perro falleció ayer. ¿Qué deberías decirle?", options: ["Eso es gracioso", "Siento mucho tu pérdida", "Deberías conseguir un gato", "¿Puedo quedarme con sus juguetes?"], correctAnswer: "Siento mucho tu pérdida", explanation: "Acompañar en el sentimiento es la reacción empática ante la pérdida de una mascota."),
            ExerciseItem(prompt: "Recibes una llamada de un número desconocido diciendo que ganaste la lotería y pidiendo tus datos bancarios. ¿Qué debes hacer?", options: ["Darles tus datos de inmediato", "Colgar y no compartir datos personales", "Pedirles que llamen más tarde", "Llamar a tu familia para festejar"], correctAnswer: "Colgar y no compartir datos personales", explanation: "Las llamadas imprevistas que solicitan datos bancarios suelen ser intentos de estafa."),
            ExerciseItem(prompt: "Te sientes mareado y con la cabeza ligera mientras estás de pie en una habitación calurosa. ¿Qué debes hacer?", options: ["Seguir de pie y cerrar los ojos", "Sentarte de inmediato y beber un poco de agua", "Correr al baño", "Dar vueltas en círculo"], correctAnswer: "Sentarte de inmediato y beber un poco de agua", explanation: "Sentarse evita caídas accidentales y el agua ayuda a hidratarse."),
            ExerciseItem(prompt: "Ves agua saliendo debajo del fregadero de la cocina. ¿Qué es lo primero que debes hacer?", options: ["Llamar a un pintor", "Colocar un cubo debajo de la gotera para recoger el agua", "Trapear el piso más tarde", "Apagar las luces"], correctAnswer: "Colocar un cubo debajo de la gotera para recoger el agua", explanation: "Un recipiente detiene los daños por agua en el suelo de manera inmediata."),
            ExerciseItem(prompt: "Te invitan a una cena formal pero no puedes asistir. ¿Qué debes hacer?", options: ["Simplemente no presentarte", "Avisar al anfitrión con anticipación que no podrás asistir", "Llegar tarde sin avisar", "Enviar un regalo en vez de responder"], correctAnswer: "Avisar al anfitrión con anticipación que no podrás asistir", explanation: "Es de buena educación avisar antes para que el anfitrión pueda organizarse."),
            ExerciseItem(prompt: "Rompes accidentalmente un jarrón decorativo en casa de un amigo. ¿Cuál es la respuesta correcta?", options: ["Esconder los pedazos debajo del sofá", "Disculparte y ofrecerte a reemplazarlo", "Fingir que no fuiste tú", "Culpar al perro"], correctAnswer: "Disculparte y ofrecerte a reemplazarlo", explanation: "La honestidad y la responsabilidad de reparar el daño fortalecen la confianza."),
            ExerciseItem(prompt: "No encuentras las llaves de tu casa y te has quedado afuera. ¿Cuál es la mejor opción?", options: ["Romper una ventana para entrar", "Llamar a un familiar que tenga copia de la llave o a un cerrajero", "Esperar en el porche para siempre", "Patear la puerta"], correctAnswer: "Llamar a un familiar que tenga copia de la llave o a un cerrajero", explanation: "Buscar una copia o acudir a un profesional evita destrozos innecesarios en la propiedad."),
            ExerciseItem(prompt: "Notas que las farolas de la calle están encendidas pero tu casa no tiene luz eléctrica. ¿Qué debes hacer?", options: ["Revisar la caja de disyuntores o fusibles", "Comprar una televisión nueva", "Irte a la cama de inmediato", "Llamar a la policía"], correctAnswer: "Revisar la caja de disyuntores o fusibles", explanation: "Revisar los fusibles o disyuntores confirma si es un fallo interno o un corte general."),
            ExerciseItem(prompt: "Ves a un vecino anciano con dificultades para cargar bolsas de supermercado pesadas. ¿Qué debes hacer?", options: ["Pasar a su lado rápidamente", "Ofrecerte a ayudarlo a cargar las bolsas", "Tomarle una foto", "Decirle que camine más rápido"], correctAnswer: "Ofrecerte a ayudarlo a cargar las bolsas", explanation: "Ayudar a los vecinos demuestra cortesía, civismo y amabilidad."),
            ExerciseItem(prompt: "Tomas un sorbo de café y te das cuenta de que está demasiado caliente y te quema la boca. ¿Qué debes hacer?", options: ["Tomar el resto rápidamente", "Escupirlo con cuidado y beber agua fría", "Gritar muy fuerte", "Lanzar la taza"], correctAnswer: "Escupirlo con cuidado y beber agua fría", explanation: "El agua fría calma la quemadura de la mucosa y alivia el dolor."),
            ExerciseItem(prompt: "El médico te receta una medicina nueva pero no entiendes cómo tomarla. ¿Qué debes hacer?", options: ["Adivinar la dosis", "Preguntar al farmacéutico o médico para que te lo explique", "No tomar el medicamento", "Buscarlo en redes sociales"], correctAnswer: "Preguntar al farmacéutico o médico para que te lo explique", explanation: "Los profesionales de la salud son la única fuente fiable de indicaciones farmacológicas."),
            ExerciseItem(prompt: "Derramas accidentalmente vino tinto en la alfombra blanca de tu amigo. ¿Qué debes hacer?", options: ["Poner una silla sobre la mancha", "Disculparte y ayudar a limpiarlo de inmediato", "Irte temprano de la fiesta", "Decirles que era jugo de uva"], correctAnswer: "Disculparte y ayudar a limpiarlo de inmediato", explanation: "Actuar rápido en las manchas de vino tinto facilita su eliminación."),
            ExerciseItem(prompt: "Escuchas que tu detector de humo emite un pitido corto cada minuto. ¿Qué significa esto?", options: ["Hay un incendio", "La batería está baja y necesita ser reemplazada", "El detector está roto", "Nada"], correctAnswer: "La batería está baja y necesita ser reemplazada", explanation: "Los pitidos cortos intermitentes avisan del nivel bajo de la batería de respaldo."),
            ExerciseItem(prompt: "Estás conduciendo y ves un vehículo de emergencia con luces parpadeantes detrás de ti. ¿Qué debes hacer?", options: ["Acelerar para mantenerte adelante", "Hacerte a un lado de la calle y detenerte de forma segura", "Detenerte de golpe en medio del carril", "Ignorarlo"], correctAnswer: "Hacerte a un lado de la calle y detenerte de forma segura", explanation: "Retirarse a la derecha permite el paso prioritario del vehículo de emergencia."),
            ExerciseItem(prompt: "Recibes un correo electrónico de tu banco pidiéndote hacer clic en un enlace para verificar tu contraseña. ¿Qué debes hacer?", options: ["Hacer clic en el enlace e ingresar la contraseña", "Borrar el correo o contactar al banco por su número oficial", "Reenviarlo a tus amigos", "Responder el correo con la contraseña"], correctAnswer: "Borrar el correo o contactar al banco por su número oficial", explanation: "Las entidades bancarias nunca solicitan claves ni datos personales mediante enlaces por correo electrónico."),
            ExerciseItem(prompt: "Encuentras una billetera en la acera que contiene dinero y una tarjeta de identificación. ¿Qué debes hacer?", options: ["Quedarte con el dinero y tirar la billetera", "Entregarla a la policía o intentar contactar al dueño con los datos del documento", "Dejarla en la acera", "Dársela a un extraño"], correctAnswer: "Entregarla a la policía o intentar contactar al dueño con los datos del documento", explanation: "Devolver las pertenencias perdidas es lo correcto y honesto."),
            ExerciseItem(prompt: "Tu detector de humo suena con una alarma fuerte y continua. ¿Qué debes hacer?", options: ["Ignorarlo y esperar que pare", "Revisar si hay fuego y salir del edificio a salvo si es necesario", "Cambiar las baterías de inmediato", "Irte a dormir"], correctAnswer: "Revisar si hay fuego y salir del edificio a salvo si es necesario", explanation: "Una alarma continua alerta de fuego o humo real y requiere evacuación inmediata.")
        ]
    )
}
