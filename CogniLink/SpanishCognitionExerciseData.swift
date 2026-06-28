import Foundation

/// Holds the static therapy content for the Spanish Cognition section of Clarity.
struct SpanishCognitionExerciseData {
    
    /// The complete collection of all 14 Spanish Cognition exercises.
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
    
    // MARK: - Exercise 1: WH Questions — Qué
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Qué",
        instructions: "Responde cada pregunta eligiendo la opción correcta.",
        section: .cognition,
        type: .multipleChoice, // CHANGED from .openEnded
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama la persona que corta y peina el cabello?", options: ["Plomero", "Peluquero o estilista", "Electricista", "Optometrista"], correctAnswer: "Peluquero o estilista", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuál es el río más largo del mundo?", options: ["El Amazonas", "El Mississippi", "El Nilo", "El Yangtsé"], correctAnswer: "El Nilo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama la comida que se come al mediodía?", options: ["Desayuno", "Brunch", "Cena", "Almuerzo"], correctAnswer: "Almuerzo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué usas para barrer el piso?", options: ["Trapeador", "Recogedor", "Escoba", "Aspiradora"], correctAnswer: "Escoba", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama el planeta en el que vivimos?", options: ["Marte", "Venus", "La Tierra", "Júpiter"], correctAnswer: "La Tierra", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you call the person who flies an airplane?", options: ["Ingeniero", "Conductor", "Capitán", "Piloto"], correctAnswer: "Piloto", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué estación viene después del verano?", options: ["Primavera", "Invierno", "Otoño", "Verano"], correctAnswer: "Otoño", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama la persona que crea pinturas y esculturas?", options: ["Arquitecto", "Artista", "Escritor", "Músico"], correctAnswer: "Artista", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué festejo se celebra el 31 de octubre?", options: ["Día de Gracias", "Navidad", "Halloween o Día de Brujas", "Pascua"], correctAnswer: "Halloween o Día de Brujas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama la persona que arregla tuberías y drenajes?", options: ["Electricista", "Carpintero", "Plomero", "Cerrajero"], correctAnswer: "Plomero", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué pequeño aparato usas para cambiar los canales de televisión sin levantarte?", options: ["Un celular", "El control remoto", "Una tableta", "Un teclado"], correctAnswer: "El control remoto", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama el deporte donde golpeas una pelota pequeña blanca hacia un hoyo?", options: ["Tenis", "Béisbol", "Golf", "Croquet"], correctAnswer: "Golf", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué color obtienes al mezclar rojo y blanco?", options: ["Morado", "Naranja", "Rosa", "Durazno"], correctAnswer: "Rosa", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué herramienta usas para saber la hora?", options: ["Termómetro", "Brújula", "Calculadora", "Reloj"], correctAnswer: "Reloj", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué usas para cortar papel?", options: ["Un cuchillo", "Las tijeras", "Una navaja", "Un cortador"], correctAnswer: "Las tijeras", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué electrodoméstico mantiene tu comida fría?", options: ["Horno", "Microondas", "Refrigerador", "Lavavajillas"], correctAnswer: "Refrigerador", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama la persona que apaga incendios?", options: ["Policía", "Paramédico", "Bombero", "Guardia de seguridad"], correctAnswer: "Bombero", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llama el lugar donde puedes pedir prestados libros gratis?", options: ["Librería", "Museo", "Biblioteca", "Escuela"], correctAnswer: "Biblioteca", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you call the hard outer layer of a tooth?", options: ["Dentina", "Pulpa", "Esmalte", "Corona"], correctAnswer: "Esmalte", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué documento necesitas para viajar entre países?", options: ["Licencia de manejar", "Acta de nacimiento", "Pasaporte", "Tarjeta del Seguro Social"], correctAnswer: "Pasaporte", explanation: "")
        ]
    )
    
    // MARK: - Exercise 2: WH Questions — Dónde
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Dónde",
        instructions: "Elige la respuesta correcta para el lugar o ubicación de cada pregunta.",
        section: .cognition,
        type: .multipleChoice, // CHANGED from .openEnded
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas a nadar en interiores?", options: ["Gimnasio", "Parque", "Alberca o piscina", "Lago"], correctAnswer: "Alberca o piscina", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde se encuentra la Estatua de la Libertad?", options: ["Washington D.C.", "Chicago", "Los Ángeles", "Nueva York"], correctAnswer: "Nueva York", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas a cortarte el cabello?", options: ["Farmacia", "Peluquería o salón de belleza", "Consultorio médico", "Spa"], correctAnswer: "Peluquería o salón de belleza", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde encontrarías a un juez y un jurado?", options: ["Ayuntamiento", "Estación de policía", "Tribunal o juzgado", "Escuela"], correctAnswer: "Tribunal o juzgado", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Great Wall?", options: ["Japón", "India", "China", "Corea del Sur"], correctAnswer: "China", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde van los estudiantes a aprender después de la preparatoria?", options: ["Escuela técnica solamente", "Preparatoria de nuevo", "Universidad", "Centro vocacional"], correctAnswer: "Universidad", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde se encuentra el Coliseo?", options: ["Atenas", "París", "Madrid", "Roma"], correctAnswer: "Roma", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to buy stamps and mail packages?", options: ["Banco", "Farmacia", "Supermercado", "Oficina de correos"], correctAnswer: "Oficina de correos", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde se encuentra el Big Ben?", options: ["París", "Berlín", "Londres", "Ámsterdam"], correctAnswer: "Londres", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Amazon rainforest?", options: ["África", "Sudeste Asiático", "América Central", "América del Sur"], correctAnswer: "América del Sur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas a surtir una receta médica?", options: ["Hospital", "Consultorio médico", "Farmacia", "Clínica"], correctAnswer: "Farmacia", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde se encuentra el Monte Rushmore?", options: ["Montana", "Wyoming", "Colorado", "Dakota del Sur"], correctAnswer: "Dakota del Sur", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde se encuentra el Taj Mahal?", options: ["China", "Pakistán", "Bangladesh", "India"], correctAnswer: "India", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas a depositar o retirar dinero?", options: ["Oficina de correos", "Banco", "Farmacia", "Supermercado"], correctAnswer: "Banco", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas cuando tienes una emergencia médica?", options: ["Farmacia", "Urgencias menores", "Sala de urgencias del hospital", "Consultorio médico"], correctAnswer: "Sala de urgencias del hospital", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where se encuentra la Torre Eiffel?", options: ["Bélgica", "Italia", "España", "Francia"], correctAnswer: "Francia", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas cuando tienes una caries?", options: ["Oftalmólogo", "Dermatólogo", "Dentista", "Otorrinolaringólogo"], correctAnswer: "Dentista", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde puedes pedir prestados libros, CDs o DVDs gratis?", options: ["Librería", "Museo", "Cine", "Biblioteca"], correctAnswer: "Biblioteca", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Dónde se encuentran las Pirámides de Guiza?", options: ["Marruecos", "Sudán", "Libia", "Egipto"], correctAnswer: "Egipto", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A dónde vas a ver una película en pantalla grande?", options: ["Teatro", "Autocinema", "Cine", "Auditorio"], correctAnswer: "Cine", explanation: "")
        ]
    )
    
    // MARK: - Exercise 3: WH Questions — Quién
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Quién",
        instructions: "Identifica a la persona o profesional descrito.",
        section: .cognition,
        type: .multipleChoice, // CHANGED from .openEnded
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Quién escribió Romeo y Julieta?", options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Miguel de Cervantes"], correctAnswer: "William Shakespeare", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue la primera mujer en ganar el Premio Nobel?", options: ["Rosalind Franklin", "Florence Nightingale", "Marie Curie", "Ada Lovelace"], correctAnswer: "Marie Curie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién pintó la Mona Lisa?", options: ["Miguel Ángel", "Rafael", "Leonardo da Vinci", "Botticelli"], correctAnswer: "Leonardo da Vinci", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién inventó el foco?", options: ["Nikola Tesla", "Benjamin Franklin", "Alexander Graham Bell", "Thomas Edison"], correctAnswer: "Thomas Edison", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Martin Luther King Jr.?", options: ["El presidente número 35 de EE.UU.", "Un líder de los derechos civiles que luchó por la igualdad racial", "El primer senador negro de EE.UU.", "Un juez de la Corte Suprema"], correctAnswer: "Un líder de los derechos civiles que luchó por la igualdad racial", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who professionally looks after your teeth?", options: ["Optometrist", "Dermatólogo", "Dentista", "Audiólogo"], correctAnswer: "Dentista", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Abraham Lincoln?", options: ["El primer presidente de EE.UU.", "El décimo presidente de EE.UU.", "El décimo sexto presidente de EE.UU.", "El trigésimo segundo presidente de EE.UU."], correctAnswer: "El décimo sexto presidente de EE.UU.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Amelia Earhart?", options: ["La primera mujer en el espacio", "La primera mujer en cruzar el Atlántico en solitario", "La primera piloto femenina de EE.UU.", "La primera mujer en romper la barrera del sonido"], correctAnswer: "La primera mujer en cruzar el Atlántico en solitario", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue la Madre Teresa?", options: ["Una política que luchó por los derechos de la mujer", "Una científica que descubrió la penicilina", "Una monja y humanitaria que cuidó a los pobres en India", "Una activista de los derechos civiles en EE.UU."], correctAnswer: "Una monja y humanitaria que cuidó a los pobres en India", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Rosa Parks?", options: ["Una senadora de Alabama", "Una activista que se negó a ceder su asiento en el autobús", "La primera mujer negra en votar", "Una jueza de la Corte Suprema"], correctAnswer: "Una activista que se negó a ceder su asiento en el autobús", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Winston Churchill?", options: ["Presidente de EE.UU. durante la Segunda Guerra Mundial", "Primer Ministro del Reino Unido durante la Segunda Guerra Mundial", "General francés que lideró la resistencia", "Primer Ministro canadiense durante la Segunda Guerra Mundial"], correctAnswer: "Primer Ministro del Reino Unido durante la Segunda Guerra Mundial", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Harriet Tubman?", options: ["Primera congresista negra", "Una abolicionista que guió a esclavizados hacia la libertad", "La primera mujer negra en ganar el Premio Nobel", "Una líder de los derechos civiles en los años 60"], correctAnswer: "Una abolicionista que guió a esclavizados hacia la libertad", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was the first person to walk on the moon?", options: ["Buzz Aldrin", "Yuri Gagarin", "John Glenn", "Neil Armstrong"], correctAnswer: "Neil Armstrong", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién reparte el correo?", options: ["Un mensajero", "Un repartidor", "El cartero", "Un despachador"], correctAnswer: "El cartero", explanation: ""),
            // Bolivar
            ExerciseItem(id: UUID(), prompt: "¿Quién fue Simón Bolívar?", options: ["El primer presidente de México", "El libertador de varios países de América del Sur", "Un general español", "El fundador de Argentina solamente"], correctAnswer: "El libertador de varios países de América del Sur", explanation: "")
        ]
    )
    
    // MARK: - Exercise 4: WH Questions — Cuándo
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Cuándo",
        instructions: "Elige la fecha, día o estación correcta para cada pregunta.",
        section: .cognition,
        type: .multipleChoice, // CHANGED from .openEnded
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cuándo celebran su independencia los estadounidenses?", options: ["El 4 de junio", "El 4 de julio", "El 4 de agosto", "El 4 de septiembre"], correctAnswer: "El 4 de julio", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo es el Día de San Valentín?", options: ["El 14 de enero", "El 14 de marzo", "El 14 de febrero", "El 14 de abril"], correctAnswer: "El 14 de febrero", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo se celebra Acción de Gracias en Estados Unidos?", options: ["Primer jueves de noviembre", "Segundo jueves de noviembre", "Tercer jueves de noviembre", "Cuarto jueves de noviembre"], correctAnswer: "Cuarto jueves de noviembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo es el Día de las Madres en México?", options: ["El 1 de mayo", "El 10 de mayo", "El segundo domingo de mayo", "El último domingo de mayo"], correctAnswer: "El 10 de mayo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo es el Día de los Muertos en México?", options: ["El 31 de octubre", "El 1 y 2 de noviembre", "El 30 de octubre", "El 3 de noviembre"], correctAnswer: "El 1 y 2 de noviembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo es el Día de la Independencia de México?", options: ["El 15 de septiembre", "El 16 de septiembre", "El 20 de noviembre", "El 5 de mayo"], correctAnswer: "El 16 de septiembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo se celebró la Segunda Guerra Mundial?", options: ["De 1914 a 1918", "De 1929 a 1935", "De 1939 a 1945", "De 1941 a 1949"], correctAnswer: "De 1939 a 1945", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo cambian de color las hojas en otoño?", options: ["De julio a agosto", "De septiembre a noviembre", "De diciembre a febrero", "De abril a mayo"], correctAnswer: "De septiembre a noviembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo celebra la mayoría de la gente el Año Nuevo?", options: ["El 31 de diciembre", "El 2 de enero", "El 1 de enero", "El 25 de diciembre"], correctAnswer: "El 1 de enero", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo se adelantan los relojes por el horario de verano en EE.UU.?", options: ["Primer domingo de febrero", "Segundo domingo de marzo", "Primer domingo de abril", "Último domingo de marzo"], correctAnswer: "Segundo domingo de marzo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo es la Nochevieja?", options: ["El 30 de diciembre", "El 1 de enero", "El 30 de noviembre", "El 31 de diciembre"], correctAnswer: "El 31 de diciembre", explanation: ""),
            // Navida
            ExerciseItem(id: UUID(), prompt: "¿Cuándo es la Navidad?", options: ["El 24 de diciembre", "El 26 de diciembre", "El 25 de diciembre", "El 6 de enero"], correctAnswer: "El 25 de diciembre", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo florecen muchas flores en primavera?", options: ["En invierno", "En otoño", "En verano", "En primavera"], correctAnswer: "En primavera", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo desayuna la gente?", options: ["Al mediodía", "Por la noche", "Por la mañana", "A medianoche"], correctAnswer: "Por la mañana", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuándo migran las aves al sur?", options: ["En primavera", "En verano", "En invierno", "En otoño"], correctAnswer: "En otoño", explanation: "")
        ]
    )
    
    // MARK: - Exercise 5: WHY Questions
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Por qué",
        instructions: "Elige la explicación más lógica para cada pregunta.",
        section: .cognition,
        type: .multipleChoice, // CHANGED from .openEnded
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Por qué la gente se lava las manos antes de comer?", options: ["Para calentarse las manos", "Para eliminar gérmenes y prevenir enfermedades", "Because it is polite", "Para suavizarse la piel"], correctAnswer: "Para eliminar gérmenes y prevenir enfermedades", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué jadean los perros?", options: ["Porque tienen hambre", "Porque tienen miedo", "Para enfriarse", "Para llamar la atención"], correctAnswer: "Para enfriarse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué la gente usa cinturón de seguridad?", options: ["Porque es cómodo", "Para reducir el riesgo de lesiones en un accidente", "Porque el carro lo exige", "Para mantenerse caliente"], correctAnswer: "Para reducir el riesgo de lesiones en un accidente", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué hay que refrigerar ciertos alimentos?", options: ["Para que sepan mejor", "Para mantenerlos congelados", "Para frenar el crecimiento bacteriano y evitar que se echen a perder", "Para ahorrar espacio"], correctAnswer: "Para frenar el crecimiento bacteriano y evitar que se echen a perder", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué cambian de color las hojas en otoño?", options: ["Porque la helada mata las hojas", "Porque los árboles dejan de producir clorofila al acortarse los días", "Por cambios en las lluvias", "Porque los animales se comen la parte verde"], correctAnswer: "Porque los árboles dejan de producir clorofila al acortarse los días", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué los médicos miden la presión arterial?", options: ["Para verificar el peso", "Para vigilar la salud del corazón y detectar la hipertensión", "Para medir el estado físico", "Para detectar la diabetes"], correctAnswer: "Para vigilar la salud del corazón y detectar la hipertensión", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué hay semáforos?", options: ["Para reducir la velocidad del tráfico", "Para ayudar a los peatones a cruzar", "Para regular el tráfico y reducir accidentes", "Para reemplazar a los policías"], correctAnswer: "Para regular el tráfico y reducir accidentes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué debes usar bloqueador solar?", options: ["Para mantenerte fresco", "Para prevenir las pecas", "Para proteger la piel de los rayos UV", "Para mantener la piel hidratada"], correctAnswer: "Para proteger la piel de los rayos UV", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué pican las picaduras de mosquito?", options: ["Por la sangre que extraen", "Por las bacterias que dejan", "Porque la saliva del mosquito provoca una respuesta inmune", "Porque inyectan veneno"], correctAnswer: "Porque la saliva del mosquito provoca una respuesta inmune", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué es importante votar?", options: ["Porque la ley lo exige", "Para tener voz en la elección de representantes del gobierno", "Para evitar multas", "Porque el empleador lo exige"], correctAnswer: "Para tener voz en la elección de representantes del gobierno", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué necesitamos dormir?", options: ["Solo para descansar los músculos", "Para no comer de más", "El cuerpo se repara y el cerebro consolida recuerdos", "Solo para conservar energía"], correctAnswer: "El cuerpo se repara y el cerebro consolida recuerdos", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué nos cepillamos los dientes?", options: ["Solo para refrescar el aliento", "Para blanquear los dientes", "Para eliminar la placa y bacterias que causan caries", "Solo para fortalecer el esmalte"], correctAnswer: "Para eliminar la placa y bacterias que causan caries", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué la gente usa abrigo en invierno?", options: ["Por moda", "Para mantenerse seco bajo la lluvia", "Para abrigar el cuerpo y mantenerse caliente", "Solo para protegerse del viento"], correctAnswer: "Para abrigar el cuerpo y mantenerse caliente", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué reciclamos?", options: ["Para ganar dinero en centros de reciclaje", "Para reducir desechos y conservar recursos naturales", "Porque el gobierno lo exige", "Para mantener limpio el hogar"], correctAnswer: "Para reducir desechos y conservar recursos naturales", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Por qué la gente hace un testamento?", options: ["Para evitar impuestos", "Para planear su funeral", "Para especificar legalmente quién recibirá sus bienes al morir", "Para protegerse de demandas"], correctAnswer: "Para especificar legalmente quién recibirá sus bienes al morir", explanation: "")
        ]
    )
    
    // MARK: - Exercise 6: HOW Questions
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Cómo",
        instructions: "Elige la respuesta de medida o número correcta.",
        section: .cognition,
        type: .multipleChoice, // CHANGED from .openEnded
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cuántos días tiene una semana?", options: ["5", "6", "7", "8"], correctAnswer: "7", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántas semanas tiene un año?", options: ["48", "50", "52", "54"], correctAnswer: "52", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos lados tiene un hexágono?", options: ["4", "5", "6", "7"], correctAnswer: "6", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos gramos hay en un kilogramo?", options: ["100", "500", "1000", "2000"], correctAnswer: "1000", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos centímetros hay en un metro?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos meses tiene un año?", options: ["10", "11", "12", "13"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos días tiene abril?", options: ["28", "29", "30", "31"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many eggs are in a dozen?", options: ["6", "10", "12", "24"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos estados tiene Estados Unidos?", options: ["48", "49", "50", "52"], correctAnswer: "50", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuánto dura un embarazo típico?", options: ["6 meses", "7 mil", "8 mil", "9 meses"], correctAnswer: "9 meses", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántas horas tiene un día?", options: ["20", "22", "24", "26"], correctAnswer: "24", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo tratas una quemadura menor?", options: ["Aplicas mantequilla o aceite", "Pones hielo directamente", "Enfrias con agua corriente fría por 10 minutos", "Cubres bien con un vendaje inmediatamente"], correctAnswer: "Enfrias con agua corriente fría por 10 minutos", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo detienes una hemorragia nasal?", options: ["Inclinas la cabeza hacia atrás", "Te suenas fuerte", "Aprietas la parte blanda de la nariz e inclinas ligeramente hacia adelante", "Te acuestas boca arriba"], correctAnswer: "Aprietas la parte blanda de la nariz e inclinas ligeramente hacia adelante", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántas patas tiene una araña?", options: ["4", "6", "8", "10"], correctAnswer: "8", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos centavos hay en un dólar?", options: ["50", "75", "100", "200"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos años hay en un siglo?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo sabes si la comida se echó a perder?", options: ["Por el color del empaque", "Por la marca", "Revisando si hay moho, mal olor, textura inusual o fecha de caducidad", "Por qué tan pesado se siente"], correctAnswer: "Revisando si hay moho, mal olor, textura inusual o fecha de caducidad", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos segundos hay en un minuto?", options: ["30", "45", "60", "90"], correctAnswer: "60", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos lados tiene un triángulo?", options: ["2", "3", "4", "5"], correctAnswer: "3", explanation: ""),
            // millenio
            ExerciseItem(id: UUID(), prompt: "¿Cuántos años hay en un milenio?", options: ["100", "500", "1000", "10000"], correctAnswer: "1000", explanation: "")
        ]
    )
    
    // MARK: - Exercise 7: Yes or No Questions
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Preguntas de Sí o No",
        instructions: "Toca SÍ o NO.",
        section: .cognition,
        type: .yesNo,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Es el sol una estrella?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Flota el hielo en el agua?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is Paris the capital of Germany?", options: ["Sí", "No"], correctAnswer: "No", explanation: "Berlín es la capital de Alemania"),
            ExerciseItem(id: UUID(), prompt: "¿Produce la luna su propia luz?", options: ["Sí", "No"], correctAnswer: "No", explanation: "Refleja la luz del sol"),
            ExerciseItem(id: UUID(), prompt: "¿Es el Océano Pacífico el más grande de la Tierra?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿El corazón humano tiene cuatro cavidades?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Los murciélagos son mamíferos?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: "Los murciélagos son mamíferos, no aves"),
            ExerciseItem(id: UUID(), prompt: "¿Fue Neil Armstrong el primer humano en caminar sobre la luna?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: "El 20 de julio de 1969"),
            ExerciseItem(id: UUID(), prompt: "¿Tiene un bebé humano más huesos que un adulto?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: "Los bebés tienen de 270 a 300 huesos; los adultos tienen 206"),
            ExerciseItem(id: UUID(), prompt: "¿Es el Sahara el desierto cálido más grande del mundo?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Está Brasil ubicado en América del Sur?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: ""),
            // pingino
            ExerciseItem(id: UUID(), prompt: "¿Es un pingüino un ave?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: "Los pingüinos son aves, aunque no vuelan"),
            ExerciseItem(id: UUID(), prompt: "Is a dolphin classified as a mammal?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: "Los delfines respiran aire y amamantan a sus crías"),
            ExerciseItem(id: UUID(), prompt: "¿Sale el sol por el este?", options: ["Sí", "No"], correctAnswer: "Sí", explanation: "")
        ]
    )
    
    // MARK: - Exercise 8: General Knowledge — History
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Conocimientos — Historia",
        instructions: "Elige la respuesta correcta.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Quién fue el primer Presidente de los Estados Unidos?", options: ["John Adams", "George Washington", "Thomas Jefferson", "Benjamin Franklin"], correctAnswer: "George Washington", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In what year did the Titanic sink?", options: ["1901", "1912", "1918", "1935"], correctAnswer: "1912", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿De qué país se independizó Estados Unidos?", options: ["Francia", "España", "Gran Bretaña", "Alemania"], correctAnswer: "Gran Bretaña", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién lideró el movimiento de independencia de la India de manera no violenta?", options: ["Jawaharlal Nehru", "Mahatma Gandhi", "Indira Gandhi", "Subhas Bose"], correctAnswer: "Mahatma Gandhi", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In what city were the first modern Olympic Games held in 1896?", options: ["París", "Londres", "Roma", "Atenas, Grecia"], correctAnswer: "Atenas, Grecia", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Para qué enfermedad desarrolló Jonas Salk una vacuna en 1955?", options: ["Viruela", "Tuberculosis", "Polio", "Sarampión"], correctAnswer: "Polio", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In what year did World War I begin?", options: ["1914", "1918", "1939", "1905"], correctAnswer: "1914", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A quién se le atribuye la invención de la imprenta alrededor de 1440?", options: ["Leonardo da Vinci", "Galileo", "Johannes Gutenberg", "Isaac Newton"], correctAnswer: "Johannes Gutenberg", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿En qué barco navegaron los peregrinos a América en 1620?", options: ["La Niña", "La Pinta", "El Mayflower", "La Victoria"], correctAnswer: "El Mayflower", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who delivered the 'I Have a Dream' speech in 1963?", options: ["Malcolm X", "Barack Obama", "Martin Luther King Jr.", "Frederick Douglass"], correctAnswer: "Martin Luther King Jr.", explanation: "")
        ]
    )
    
    // MARK: - Exercise 9: General Knowledge — Locations
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Conocimientos — Geografía",
        instructions: "Elige la respuesta correcta.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Qué país limita al norte con los Estados Unidos?", options: ["México", "Rusia", "Canadá", "Groenlandia"], correctAnswer: "Canadá", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In which US state is the Grand Canyon located?", options: ["Colorado", "Utah", "Nevada", "Arizona"], correctAnswer: "Arizona", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Tokio es la capital de qué país?", options: ["China", "Corea del Sur", "Japón", "Tailandia"], correctAnswer: "Japón", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuál es el estado más grande de EE. UU. por superficie terrestre?", options: ["Texas", "California", "Montana", "Alaska"], correctAnswer: "Alaska", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuál es la capital de Francia?", options: ["Lyon", "Marsella", "París", "Burdeos"], correctAnswer: "París", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué país tiene forma de bota?", options: ["España", "Grecia", "Italia", "Portugal"], correctAnswer: "Italia", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the smallest country in the world by area?", options: ["Mónaco", "San Marino", "Liechtenstein", "Ciudad del Vaticano"], correctAnswer: "Ciudad del Vaticano", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué océano baña la costa este de los Estados Unidos?", options: ["Pacífico", "Índico", "Ártico", "Atlántico"], correctAnswer: "Atlántico", explanation: ""),
            // Egypt (FIXED TYPO)
            ExerciseItem(id: UUID(), prompt: "¿En qué país se encuentra la Gran Pirámide de Giza?", options: ["Marruecos", "Túnez", "Libia", "Egipto"], correctAnswer: "Egipto", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuál es la montaña más alta del mundo?", options: ["K2", "Kilimanjaro", "Monte Everest", "Denali"], correctAnswer: "Monte Everest", explanation: "")
        ]
    )
    
    // MARK: - Exercise 10: General Knowledge — Popular Media
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Conocimientos — Cultura Popular",
        instructions: "Elige la respuesta correcta.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Qué serie de televisión presenta a Ross, Rachel, Monica, Chandler, Joey y Phoebe?", options: ["Seinfeld", "Friends", "The Office", "Cheers"], correctAnswer: "Friends", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was known as the Queen of Soul and sang Respect?", options: ["Whitney Houston", "Diana Ross", "Aretha Franklin", "Tina Turner"], correctAnswer: "Aretha Franklin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué película animada presenta a un pez payaso buscando a su hijo perdido?", options: ["El espantatiburones", "La Sirenita", "Buscando a Nemo", "Happy Feet"], correctAnswer: "Buscando a Nemo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who played Forrest Gump in the 1994 film?", options: ["Tom Cruise", "Tom Hanks", "Kevin Costner", "Dustin Hoffman"], correctAnswer: "Tom Hanks", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What 1950s sitcom starred Lucille Ball?", options: ["The Dick Van Dyke Show", "Embrujada", "Yo amo a Lucy", "The Honeymooners"], correctAnswer: "Yo amo a Lucy", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What Herman Melville novel starts with 'Call me Ishmael'?", options: ["El viejo y el mar", "Billy Budd", "Moby-Dick", "La isla del tresoro"], correctAnswer: "Moby-Dick", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién grabó la clásica canción My Way en 1969?", options: ["Dean Martin", "Sammy Davis Jr.", "Frank Sinatra", "Tony Bennett"], correctAnswer: "Frank Sinatra", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué película de Pixar de 1995 presenta a un muñeco vaquero llamado Woody?", options: ["Bichos", "Toy Story", "Cars", "Monstruos S.A."], correctAnswer: "Toy Story", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What animated show features a yellow-skinned family in the town of Springfield?", options: ["Padre de familia", "Bob's Burgers", "American Dad", "Los Simpson"], correctAnswer: "Los Simpson", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién escribió la serie de libros de Harry Potter?", options: ["Roald Dahl", "J.R.R. Tolkien", "J.K. Rowling", "C.S. Lewis"], correctAnswer: "J.K. Rowling", explanation: "")
        ]
    )
    
    // MARK: - Exercise 11: Figurative Language — Idioms
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Modismos y Lenguaje Figurado",
        instructions: "Explica lo que significa cada expresión popular. Toca 'Ver Respuesta' para ver la explicación modelo.",
        section: .cognition,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Tiene un diente de ajo.", options: [], correctAnswer: "Tiene mal carácter o se enoja con mucha facilidad.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Me costó un ojo de la cara.", options: [], correctAnswer: "Pagué un precio excesivamente alto por ello.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "No reveles el secreto; no te vayas de la lengua.", options: [], correctAnswer: "No hables de más ni descubras el secreto.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Estar en la luna.", options: [], correctAnswer: "Estar muy distraído o despistado.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Echarle leña al fuego.", options: [], correctAnswer: "Hacer que una discusión o situación difícil empeore.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Tomarle el pelo a alguien.", options: [], correctAnswer: "Burlarse de alguien o engañarle como broma.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Meter la pata.", options: [], correctAnswer: "Cometer un error o decir algo inoportuno.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Hacer la vista gorda.", options: [], correctAnswer: "Fingir no darse cuenta de un error o falta.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Ahogarse en un vaso de agua.", options: [], correctAnswer: "Preocuparse demasiado por un problema pequeño.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Soltar la sopa.", options: [], correctAnswer: "Confesar o revelar un secreto guardado.", explanation: "")
        ]
    )
    
    // MARK: - Exercise 12: Estimation and Logic
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Estimación y Lógica",
        instructions: "Elige la respuesta más lógica o razonable.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cuánto se tarda normalmente en hervir un huevo blando?", options: ["1 minuto", "6 minutos", "20 minutos", "1 hora"], correctAnswer: "6 minutos", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos huevos vienen en un cartón estándar?", options: ["6", "12", "18", "24"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántas ruedas tiene un automóvil estándar?", options: ["2", "3", "4", "6"], correctAnswer: "4", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántas patas tiene un  elefante?", options: ["2", "3", "4", "6"], correctAnswer: "4", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos años hay en un siglo?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿A qué velocidad camina normalmente una persona?", options: ["Aprox. 1 km/h", "Aprox. 5 km/h", "Aprox. 20 km/h", "Aprox. 50 km/h"], correctAnswer: "Aprox. 5 km/h", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos días hay en un año estándar (no bisiesto)?", options: ["300", "356", "365", "400"], correctAnswer: "365", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántas rebanadas de pan se usan para un sándwich estándar?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "")
        ]
    )
    
    // MARK: - Exercise 13: Deductive Reasoning
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "Razonamiento Deductivo",
        instructions: "Lee el escenario clínico y elige la conclusión más lógica.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Alguien lleva un traje de mayo y gafas de sol. ¿Qué es probable que vaya a hacer?", options: ["Ir al cine", "Ir a la playa o piscina", "Asistir a una boda formal", "Ir al supermercado"], correctAnswer: "Ir a la playa o piscina", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un vehículo de emergencia pasa a toda velocidad con luces y sirenas encendidas. ¿Qué debes hacer?", options: ["Acelerar", "Orillarte y detenerte hasta que pase", "Tocar la bocina", "Ignorarlo"], correctAnswer: "Orillarte y detenerte hasta que pase", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Una persona sostiene un paraguas y usa un impermeable. ¿Cómo es el clima probablemente?", options: ["Cálido y soleado", "Frío y nevado", "Lluvioso", "Seco y ventoso"], correctAnswer: "Lluvioso", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Todas las luces de tu casa se apagan repentinamente por la noche. ¿Qué sucedió más probablemente?", options: ["Se ocultó el sol", "Hubo un apagón eléctrico", "Cerraste los ojos", "El televisor se apagó"], correctAnswer: "Hubo un apagón eléctrico", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Nevó intensamente durante la noche y necesitas conducir. ¿Qué debes hacer primero?", options: ["Conducir a velocidad normal", "Verificar las condiciones y limpiar tu parabas", "Llamar a la policía", "Quedarte en casa para siempre"], correctAnswer: "Verificar las condiciones y limpiar tu parabas", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Enciendes velas para la cena y necesitas salir de la habitación por 20 minutos. ¿Qué debes hacer?", options: ["Dejar las velas encendidas", "Apagarlas antes de salir", "Ignorarlas", "Abrir una ventana"], correctAnswer: "Apagarlas antes de salir", explanation: "Nunca dejes velas encendidas sin supervisión")
        ]
    )
    
    // MARK: - Exercise 14: Memory — Acerca de Ti
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "Memoria — Acerca de Ti",
        instructions: "Estas preguntas están diseñadas para estimular la memoria personal a largo plazo. No hay respuestas incorrectas. Tómate tu tiempo.",
        section: .cognition,
        type: .openEnded,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cómo se llamaba la calle o el vecindario donde creciste?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuál es tu recuerdo más temprano de la infancia?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué querías ser de grande cuando eras niño?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué canción te transporta de inmediato a un momento específico de tu vida?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Quién fue tu maestro favorito y qué lo hacía especial?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuál fue tu primer trabajo y qué recuerdas de él?", options: [], correctAnswer: "", explanation: ""),
            // childhood home
            ExerciseItem(id: UUID(), prompt: "Describe la casa de tu infancia con el mayor detalle posible.", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué olor te trae un recuerdo muy fuerte?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Qué comida de tu infancia todavía te encanta hoy en día?", options: [], correctAnswer: "", explanation: "")
        ]
    )
}
