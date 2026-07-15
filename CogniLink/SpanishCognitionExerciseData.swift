import Foundation

struct SpanishCognitionExerciseData {

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

    // MARK: - Preguntas WH — Qué
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Qué",
        instructions: "Responde cada pregunta eligiendo la opción correcta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama la persona que corta y peina el cabello?",
                options: ["Plomero", "Peluquero o estilista", "Electricista", "Optometrista"],
                correctAnswer: "Peluquero o estilista",
                explanation: "Un peluquero o estilista es el profesional capacitado y especializado en el cuidado, corte y peinado del cabello de las personas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es el río más largo del mundo?",
                options: ["El Amazonas", "El Mississippi", "El Nilo", "El Yangtsé"],
                correctAnswer: "El Nilo",
                explanation: "Históricamente, el río Nilo ha sido considerado el más largo del mundo, fluyendo a través del noreste de África, aunque algunos estudios sugieren que el Amazonas podría ser más largo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama la comida que se come al mediodía?",
                options: ["Desayuno", "Brunch", "Cena", "Almuerzo"],
                correctAnswer: "Almuerzo",
                explanation: "El almuerzo es la comida principal que se consume a la mitad del día, generalmente entre el mediodía y las primeras horas de la tarde, para reponer energía."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué usas para barrer el piso?",
                options: ["Trapeador", "Recogedor", "Escoba", "Aspiradora"],
                correctAnswer: "Escoba",
                explanation: "La escoba es la herramienta de limpieza compuesta por cerdas unidas a un palo, diseñada específicamente para recoger el polvo y la basura del piso."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama el planeta en el que vivimos?",
                options: ["Marte", "Venus", "La Tierra", "Júpiter"],
                correctAnswer: "La Tierra",
                explanation: "La Tierra es el tercer planeta del sistema solar y el único conocido hasta ahora que alberga vida, siendo el lugar donde habitamos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "How do you call the person who flies an airplane?",
                options: ["Ingeniero", "Conductor", "Capitán", "Piloto"],
                correctAnswer: "Piloto",
                explanation: "Un piloto es la persona que tiene la formación, licencia y habilidades necesarias para operar y dirigir una aeronave en vuelo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué estación viene después del verano?",
                options: ["Primavera", "Invierno", "Otoño", "Verano"],
                correctAnswer: "Otoño",
                explanation: "El otoño es la estación del año que sigue al verano y precede al invierno, caracterizada por la caída de las hojas de los árboles y el descenso de las temperaturas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama la persona que crea pinturas y esculturas?",
                options: ["Arquitecto", "Artista", "Escritor", "Músico"],
                correctAnswer: "Artista",
                explanation: "Un artista es una persona que practica alguna de las bellas artes, utilizando su talento e imaginación para crear obras como pinturas, esculturas o música."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué festejo se celebra el 31 de octubre?",
                options: ["Día de Gracias", "Navidad", "Halloween o Día de Brujas", "Pascua"],
                correctAnswer: "Halloween o Día de Brujas",
                explanation: "Halloween, también conocido como el Día de Brujas, es una celebración tradicional que se lleva a cabo el 31 de octubre, asociada con disfraces y dulces."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama la persona que arregla tuberías y drenajes?",
                options: ["Electricista", "Carpintero", "Plomero", "Cerrajero"],
                correctAnswer: "Plomero",
                explanation: "Un plomero o fontanero es el profesional encargado de instalar, reparar y mantener las tuberías y sistemas de agua y drenaje en edificios y hogares."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué pequeño aparato usas para cambiar los canales de televisión sin levantarte?",
                options: ["Un celular", "El control remoto", "Una tableta", "Un teclado"],
                correctAnswer: "El control remoto",
                explanation: "El control remoto es un dispositivo electrónico inalámbrico diseñado para operar a distancia televisores y otros aparatos, facilitando cambiar canales y ajustar el volumen."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama el deporte donde golpeas una pelota pequeña blanca hacia un hoyo?",
                options: ["Tenis", "Béisbol", "Golf", "Croquet"],
                correctAnswer: "Golf",
                explanation: "El golf es un deporte de precisión cuyo objetivo es introducir una bola pequeña en los hoyos distribuidos en un campo utilizando diferentes palos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué color obtienes al mezclar rojo y blanco?",
                options: ["Morado", "Naranja", "Rosa", "Durazno"],
                correctAnswer: "Rosa",
                explanation: "El color rosa es el resultado de mezclar el color primario rojo con el blanco, que suaviza la intensidad del rojo creando un tono más claro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué herramienta usas para saber la hora?",
                options: ["Termómetro", "Brújula", "Calculadora", "Reloj"],
                correctAnswer: "Reloj",
                explanation: "Un reloj es el instrumento que se utiliza para medir el paso del tiempo y mostrar la hora, los minutos y, a menudo, los segundos actuales."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué usas para cortar papel?",
                options: ["Un cuchillo", "Las tijeras", "Una navaja", "Un cortador"],
                correctAnswer: "Las tijeras",
                explanation: "Las tijeras son una herramienta manual compuesta por dos cuchillas cruzadas que se utilizan para cortar materiales delgados y flexibles como el papel."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué electrodoméstico mantiene tu comida fría?",
                options: ["Horno", "Microondas", "Refrigerador", "Lavavajillas"],
                correctAnswer: "Refrigerador",
                explanation: "El refrigerador o nevera es un aparato eléctrico que mantiene un ambiente frío en su interior para conservar los alimentos frescos y evitar que se echen a perder."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama la persona que apaga incendios?",
                options: ["Policía", "Paramédico", "Bombero", "Guardia de seguridad"],
                correctAnswer: "Bombero",
                explanation: "Un bombero es un profesional de los servicios de emergencia entrenado específicamente para combatir incendios y rescatar personas en situaciones de peligro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llama el lugar donde puedes pedir prestados libros gratis?",
                options: ["Librería", "Museo", "Biblioteca", "Escuela"],
                correctAnswer: "Biblioteca",
                explanation: "Una biblioteca es una institución o espacio público que alberga una colección de libros y otros materiales para que la comunidad los consulte o pida prestados de forma gratuita."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "How do you call the hard outer layer of a tooth?",
                options: ["Dentina", "Pulpa", "Esmalte", "Corona"],
                correctAnswer: "Esmalte",
                explanation: "El esmalte dental es la capa dura y externa que cubre y protege la corona de los dientes, siendo la sustancia más dura del cuerpo humano."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué documento necesitas para viajar entre países?",
                options: ["Licencia de manejar", "Acta de nacimiento", "Pasaporte", "Tarjeta del Seguro Social"],
                correctAnswer: "Pasaporte",
                explanation: "El pasaporte es un documento oficial de identidad emitido por un gobierno que certifica la nacionalidad de una persona y es requerido para viajar internacionalmente."
            )
        ]
    )

    // MARK: - Preguntas WH — Dónde
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Dónde",
        instructions: "Elige la respuesta correcta para el lugar o ubicación de cada pregunta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas a nadar en interiores?",
                options: ["Gimnasio", "Parque", "Alberca o piscina", "Lago"],
                correctAnswer: "Alberca o piscina",
                explanation: "Una alberca o piscina cubierta es una instalación diseñada para nadar y practicar deportes acuáticos dentro de un edificio, protegida del clima exterior."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde se encuentra la Estatua de la Libertad?",
                options: ["Washington D.C.", "Chicago", "Los Ángeles", "Nueva York"],
                correctAnswer: "Nueva York",
                explanation: "La Estatua de la Libertad es un famoso monumento ubicado en la Isla de la Libertad en la ciudad de Nueva York, Estados Unidos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas a cortarte el cabello?",
                options: ["Farmacia", "Peluquería o salón de belleza", "Consultorio médico", "Spa"],
                correctAnswer: "Peluquería o salón de belleza",
                explanation: "Una peluquería o salón de belleza es el establecimiento comercial donde profesionales ofrecen servicios de corte, peinado y tratamientos para el cabello."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde encontrarías a un juez y un jurado?",
                options: ["Ayuntamiento", "Estación de policía", "Tribunal o juzgado", "Escuela"],
                correctAnswer: "Tribunal o juzgado",
                explanation: "Un tribunal o juzgado es el lugar oficial donde se llevan a cabo los juicios legales y donde un juez y un jurado escuchan y deciden sobre casos judiciales."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Where would you find the Great Wall?",
                options: ["Japón", "India", "China", "Corea del Sur"],
                correctAnswer: "China",
                explanation: "La Gran Muralla es una antigua serie de fortificaciones y muros construidos a lo largo de las fronteras históricas del norte de China para proteger el imperio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde van los estudiantes a aprender después de la preparatoria?",
                options: ["Escuela técnica solamente", "Preparatoria de nuevo", "Universidad", "Centro vocacional"],
                correctAnswer: "Universidad",
                explanation: "La universidad es una institución de educación superior adonde asisten los estudiantes después de la escuela secundaria para obtener títulos académicos y profesionales."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde se encuentra el Coliseo?",
                options: ["Atenas", "París", "Madrid", "Roma"],
                correctAnswer: "Roma",
                explanation: "El Coliseo es un antiguo y famoso anfiteatro romano ubicado en el centro de la ciudad de Roma, Italia, conocido por su impresionante arquitectura e historia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Where do you go to buy stamps and mail packages?",
                options: ["Banco", "Farmacia", "Supermercado", "Oficina de correos"],
                correctAnswer: "Oficina de correos",
                explanation: "Una oficina de correos es la instalación del servicio postal público donde las personas pueden enviar cartas, paquetes y comprar sellos o estampillas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde se encuentra el Big Ben?",
                options: ["París", "Berlín", "Londres", "Ámsterdam"],
                correctAnswer: "Londres",
                explanation: "El Big Ben es el nombre que se le da a la gran campana y la famosa torre del reloj situada en el Palacio de Westminster en Londres, Inglaterra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Where would you find the Amazon rainforest?",
                options: ["África", "Sudeste Asiático", "América Central", "América del Sur"],
                correctAnswer: "América del Sur",
                explanation: "La selva amazónica es el bosque tropical más grande del mundo y se encuentra en América del Sur, abarcando territorios de Brasil, Perú, Colombia y otros países."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas a surtir una receta médica?",
                options: ["Hospital", "Consultorio médico", "Farmacia", "Clínica"],
                correctAnswer: "Farmacia",
                explanation: "La farmacia es el establecimiento comercial donde un farmacéutico prepara y dispensa los medicamentos recetados por un médico para el tratamiento de enfermedades."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde se encuentra el Monte Rushmore?",
                options: ["Montana", "Wyoming", "Colorado", "Dakota del Sur"],
                correctAnswer: "Dakota del Sur",
                explanation: "El Monte Rushmore es un monumento nacional en Estados Unidos ubicado en Dakota del Sur, famoso por las esculturas de los rostros de cuatro presidentes estadounidenses tallados en la montaña."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde se encuentra el Taj Mahal?",
                options: ["China", "Pakistán", "Bangladesh", "India"],
                correctAnswer: "India",
                explanation: "El Taj Mahal es un inmenso y hermoso mausoleo de mármol blanco ubicado en la ciudad de Agra, en la India, considerado una de las maravillas del mundo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas a depositar o retirar dinero?",
                options: ["Oficina de correos", "Banco", "Farmacia", "Supermercado"],
                correctAnswer: "Banco",
                explanation: "Un banco es una institución financiera adonde las personas van para guardar sus ahorros de forma segura, depositar dinero, retirar efectivo y realizar otros trámites económicos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas cuando tienes una emergencia médica?",
                options: ["Farmacia", "Urgencias menores", "Sala de urgencias del hospital", "Consultorio médico"],
                correctAnswer: "Sala de urgencias del hospital",
                explanation: "La sala de urgencias es el departamento de un hospital diseñado específicamente para brindar atención médica inmediata y rápida a pacientes con lesiones o enfermedades críticas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Where se encuentra la Torre Eiffel?",
                options: ["Bélgica", "Italia", "España", "Francia"],
                correctAnswer: "Francia",
                explanation: "La Torre Eiffel es una icónica estructura de hierro ubicada en París, Francia, y es uno de los monumentos más reconocidos y visitados a nivel mundial."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas cuando tienes una caries?",
                options: ["Oftalmólogo", "Dermatólogo", "Dentista", "Otorrinolaringólogo"],
                correctAnswer: "Dentista",
                explanation: "Debes ir al consultorio del dentista porque es el médico especialista capacitado para diagnosticar y tratar problemas de salud bucal, como la reparación de caries."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde puedes pedir prestados libros, CDs o DVDs gratis?",
                options: ["Librería", "Museo", "Cine", "Biblioteca"],
                correctAnswer: "Biblioteca",
                explanation: "La biblioteca pública es una institución comunitaria que ofrece acceso gratuito a una amplia colección de libros y medios audiovisuales para que la gente los lleve prestados."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Dónde se encuentran las Pirámides de Guiza?",
                options: ["Marruecos", "Sudán", "Libia", "Egipto"],
                correctAnswer: "Egipto",
                explanation: "Las Pirámides de Guiza son antiguas e históricas estructuras monumentales situadas en las afueras de El Cairo, en Egipto, y son famosas en todo el mundo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A dónde vas a ver una película en pantalla grande?",
                options: ["Teatro", "Autocinema", "Cine", "Auditorio"],
                correctAnswer: "Cine",
                explanation: "El cine es un lugar de entretenimiento que cuenta con grandes pantallas y sistemas de sonido donde el público se reúne para ver proyecciones de películas."
            )
        ]
    )

    // MARK: - Preguntas WH — Quién
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Quién",
        instructions: "Identifica a la persona o profesional descrito.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién escribió Romeo y Julieta?",
                options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Miguel de Cervantes"],
                correctAnswer: "William Shakespeare",
                explanation: "Romeo y Julieta es una de las tragedias más famosas de la literatura, escrita por el renombrado dramaturgo y poeta inglés William Shakespeare en el siglo XVI."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue la primera mujer en ganar el Premio Nobel?",
                options: ["Rosalind Franklin", "Florence Nightingale", "Marie Curie", "Ada Lovelace"],
                correctAnswer: "Marie Curie",
                explanation: "Marie Curie fue una pionera científica que no solo fue la primera mujer en ganar un Premio Nobel, sino también la primera persona en ganarlo en dos disciplinas diferentes (Física y Química)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién pintó la Mona Lisa?",
                options: ["Miguel Ángel", "Rafael", "Leonardo da Vinci", "Botticelli"],
                correctAnswer: "Leonardo da Vinci",
                explanation: "La Mona Lisa, también conocida como La Gioconda, es una famosa obra maestra del Renacimiento creada por el polímata italiano Leonardo da Vinci a principios del siglo XVI."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién inventó el foco?",
                options: ["Nikola Tesla", "Benjamin Franklin", "Alexander Graham Bell", "Thomas Edison"],
                correctAnswer: "Thomas Edison",
                explanation: "Thomas Edison fue un inventor estadounidense al que se le atribuye el desarrollo de la primera bombilla o foco de luz incandescente comercialmente viable y duradera."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Martin Luther King Jr.?",
                options: ["El presidente número 35 de EE.UU.", "Un líder de los derechos civiles que luchó por la igualdad racial", "El primer senador negro de EE.UU.", "Un juez de la Corte Suprema"],
                correctAnswer: "Un líder de los derechos civiles que luchó por la igualdad racial",
                explanation: "Martin Luther King Jr. fue un ministro y activista que se convirtió en el líder más visible del movimiento por los derechos civiles en EE. UU., promoviendo la igualdad a través de protestas pacíficas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Who professionally looks after your teeth?",
                options: ["Optometrist", "Dermatólogo", "Dentista", "Audiólogo"],
                correctAnswer: "Dentista",
                explanation: "Un dentista u odontólogo es un profesional médico especializado en el cuidado, prevención y tratamiento de problemas relacionados con los dientes y la salud bucal en general."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Abraham Lincoln?",
                options: ["El primer presidente de EE.UU.", "El décimo presidente de EE.UU.", "El décimo sexto presidente de EE.UU.", "El trigésimo segundo presidente de EE.UU."],
                correctAnswer: "El décimo sexto presidente de EE.UU.",
                explanation: "Abraham Lincoln fue el decimosexto presidente de los Estados Unidos, conocido por liderar el país durante la Guerra Civil y por abolir la esclavitud."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Amelia Earhart?",
                options: ["La primera mujer en el espacio", "La primera mujer en cruzar el Atlántico en solitario", "La primera piloto femenina de EE.UU.", "La primera mujer en romper la barrera del sonido"],
                correctAnswer: "La primera mujer en cruzar el Atlántico en solitario",
                explanation: "Amelia Earhart fue una célebre pionera de la aviación estadounidense que hizo historia al convertirse en la primera mujer en volar sola a través del Océano Atlántico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue la Madre Teresa?",
                options: ["Una política que luchó por los derechos de la mujer", "Una científica que descubrió la penicilina", "Una monja y humanitaria que cuidó a los pobres en India", "Una activista de los derechos civiles en EE.UU."],
                correctAnswer: "Una monja y humanitaria que cuidó a los pobres en India",
                explanation: "La Madre Teresa de Calcuta fue una monja católica de origen albanés que fundó las Misioneras de la Caridad y dedicó su vida a ayudar a los más pobres y enfermos en la India."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Rosa Parks?",
                options: ["Una senadora de Alabama", "Una activista que se negó a ceder su asiento en el autobús", "La primera mujer negra en votar", "Una jueza de la Corte Suprema"],
                correctAnswer: "Una activista que se negó a ceder su asiento en el autobús",
                explanation: "Rosa Parks fue una activista clave del movimiento por los derechos civiles en EE. UU., famosa por su valiente negativa a ceder su asiento a un pasajero blanco en un autobús en Alabama."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Winston Churchill?",
                options: ["Presidente de EE.UU. durante la Segunda Guerra Mundial", "Primer Ministro del Reino Unido durante la Segunda Guerra Mundial", "General francés que lideró la resistencia", "Primer Ministro canadiense durante la Segunda Guerra Mundial"],
                correctAnswer: "Primer Ministro del Reino Unido durante la Segunda Guerra Mundial",
                explanation: "Winston Churchill fue un destacado político y estadista británico que sirvió como Primer Ministro y lideró al Reino Unido con gran determinación durante la Segunda Guerra Mundial."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Harriet Tubman?",
                options: ["Primera congresista negra", "Una abolicionista que guió a esclavizados hacia la libertad", "La primera mujer negra en ganar el Premio Nobel", "Una líder de los derechos civiles en los años 60"],
                correctAnswer: "Una abolicionista que guió a esclavizados hacia la libertad",
                explanation: "Harriet Tubman fue una heroica abolicionista afroamericana que, tras escapar de la esclavitud, utilizó el Ferrocarril Subterráneo para ayudar a decenas de esclavos a conseguir su libertad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Who was the first person to walk on the moon?",
                options: ["Buzz Aldrin", "Yuri Gagarin", "John Glenn", "Neil Armstrong"],
                correctAnswer: "Neil Armstrong",
                explanation: "Neil Armstrong fue un astronauta estadounidense que comandó la misión Apolo 11 en 1969 y se convirtió en el primer ser humano en pisar la superficie de la luna."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién reparte el correo?",
                options: ["Un mensajero", "Un repartidor", "El cartero", "Un despachador"],
                correctAnswer: "El cartero",
                explanation: "El cartero es el profesional encargado de distribuir y entregar las cartas y paquetes a los domicilios."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue Simón Bolívar?",
                options: ["El primer presidente de México", "El libertador de varios países de América del Sur", "Un general español", "El fundador de Argentina solamente"],
                correctAnswer: "El libertador de varios países de América del Sur",
                explanation: "Simón Bolívar fue un líder militar y político venezolano que desempeñó un papel fundamental en la emancipación de varios países sudamericanos del imperio español."
            )
        ]
    )

    // MARK: - Preguntas WH — Cuándo
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Cuándo",
        instructions: "Elige la fecha, día o estación correcta para cada pregunta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo celebran su independencia los estadounidenses?",
                options: ["El 4 de junio", "El 4 de julio", "El 4 de agosto", "El 4 de septiembre"],
                correctAnswer: "El 4 de julio",
                explanation: "El 4 de julio de 1776 se adoptó la Declaración de Independencia, marcando la separación de las Trece Colonias del Imperio británico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo es el Día de San Valentín?",
                options: ["El 14 de enero", "El 14 de marzo", "El 14 de febrero", "El 14 de abril"],
                correctAnswer: "El 14 de febrero",
                explanation: "El Día de San Valentín se celebra mundialmente el 14 de febrero como el día del amor y la amistad en honor a San Valentín de Roma."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo se celebra Acción de Gracias en Estados Unidos?",
                options: ["Primer jueves de noviembre", "Segundo jueves de noviembre", "Tercer jueves de noviembre", "Cuarto jueves de noviembre"],
                correctAnswer: "Cuarto jueves de noviembre",
                explanation: "En Estados Unidos, el Día de Acción de Gracias es una fiesta nacional celebrada el cuarto jueves de noviembre para dar gracias por la cosecha."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo es el Día de las Madres en México?",
                options: ["El 1 de mayo", "El 10 de mayo", "El segundo domingo de mayo", "El último domingo de mayo"],
                correctAnswer: "El 10 de mayo",
                explanation: "En México, el Día de las Madres se celebra tradicionalmente el 10 de mayo de cada año, independientemente del día de la semana."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo es el Día de los Muertos en México?",
                options: ["El 31 de octubre", "El 1 y 2 de noviembre", "El 30 de octubre", "El 3 de noviembre"],
                correctAnswer: "El 1 y 2 de noviembre",
                explanation: "El Día de los Muertos es una tradición mexicana celebrada el 1 y 2 de noviembre para honrar a los difuntos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo es el Día de la Independencia de México?",
                options: ["El 15 de septiembre", "El 16 de septiembre", "El 20 de noviembre", "El 5 de mayo"],
                correctAnswer: "El 16 de septiembre",
                explanation: "El 16 de septiembre se conmemora el Grito de Dolores de 1810, que inició el proceso de independencia de México."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo se celebró la Segunda Guerra Mundial?",
                options: ["De 1914 a 1918", "De 1929 a 1935", "De 1939 a 1945", "De 1941 a 1949"],
                correctAnswer: "De 1939 a 1945",
                explanation: "La Segunda Guerra Mundial fue un conflicto militar global que comenzó en 1939 con la invasión a Polonia y terminó en 1945 con la rendición de Japón."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo cambian de color las hojas en otoño?",
                options: ["De julio a agosto", "De septiembre a noviembre", "De diciembre a febrero", "De abril a mayo"],
                correctAnswer: "De septiembre a noviembre",
                explanation: "En el hemisferio norte, el otoño ocurre entre septiembre y noviembre, periodo en el que las hojas de los árboles caducifolios cambian de color."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo celebra la mayoría de la gente el Año Nuevo?",
                options: ["El 31 de diciembre", "El 2 de enero", "El 1 de enero", "El 25 de diciembre"],
                correctAnswer: "El 1 de enero",
                explanation: "En el calendario gregoriano, el 1 de enero marca el inicio de un nuevo año, celebrándose mundialmente como el Año Nuevo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo se adelantan los relojes por el horario de verano en EE.UU.?",
                options: ["Primer domingo de febrero", "Segundo domingo de marzo", "Primer domingo de abril", "Último domingo de marzo"],
                correctAnswer: "Segundo domingo de marzo",
                explanation: "En Estados Unidos, el horario de verano comienza el segundo domingo de marzo, momento en que los relojes se adelantan una hora."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo es la Nochevieja?",
                options: ["El 30 de diciembre", "El 1 de enero", "El 30 de noviembre", "El 31 de diciembre"],
                correctAnswer: "El 31 de diciembre",
                explanation: "La Nochevieja, o víspera de Año Nuevo, es el último día del año en el calendario gregoriano, celebrado el 31 de diciembre."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo es la Navidad?",
                options: ["El 24 de diciembre", "El 26 de diciembre", "El 25 de diciembre", "El 6 de enero"],
                correctAnswer: "El 25 de diciembre",
                explanation: "La Navidad se celebra el 25 de diciembre para conmemorar el nacimiento de Jesucristo en la tradición cristiana."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo florecen muchas flores en primavera?",
                options: ["En invierno", "En otoño", "En verano", "En primavera"],
                correctAnswer: "En primavera",
                explanation: "La primavera es la estación en la que las temperaturas suben y los días se alargan, creando las condiciones ideales para la floración."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo desayuna la gente?",
                options: ["Al mediodía", "Por la noche", "Por la mañana", "A medianoche"],
                correctAnswer: "Por la mañana",
                explanation: "El desayuno es la primera comida del día, consumida por la mañana tras el periodo de ayuno nocturno."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuándo migran las aves al sur?",
                options: ["En primavera", "En verano", "En invierno", "En otoño"],
                correctAnswer: "En otoño",
                explanation: "Las aves migran hacia climas más cálidos en el sur durante el otoño para evitar el frío invernal y encontrar alimento."
            )
        ]
    )

    // MARK: - Preguntas WH — Por qué
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Por qué",
        instructions: "Elige la explicación más lógica para cada pregunta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué la gente se lava las manos antes de comer?",
                options: ["Para calentarse las manos", "Para eliminar gérmenes y prevenir enfermedades", "Because it is polite", "Para suavizarse la piel"],
                correctAnswer: "Para eliminar gérmenes y prevenir enfermedades",
                explanation: "Lavarse las manos elimina bacterias y virus que pueden transferirse a los alimentos y causar infecciones."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué jadean los perros?",
                options: ["Porque tienen hambre", "Porque tienen miedo", "Para enfriarse", "Para llamar la atención"],
                correctAnswer: "Para enfriarse",
                explanation: "Los perros no sudan como los humanos; el jadeo les permite regular su temperatura corporal evaporando humedad de sus pulmones y lengua."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué la gente usa cinturón de seguridad?",
                options: ["Porque es cómodo", "Para reducir el riesgo de lesiones en un accidente", "Porque el carro lo exige", "Para mantenerse caliente"],
                correctAnswer: "Para reducir el riesgo de lesiones en un accidente",
                explanation: "El cinturón de seguridad retiene a los pasajeros en sus asientos, evitando que salgan despedidos durante un impacto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué hay que refrigerar ciertos alimentos?",
                options: ["Para que sepan mejor", "Para mantenerlos congelados", "Para frenar el crecimiento bacteriano y evitar que se echen a perder", "Para ahorrar espacio"],
                correctAnswer: "Para frenar el crecimiento bacteriano y evitar que se echen a perder",
                explanation: "Las bajas temperaturas de la refrigeración ralentizan la reproducción de bacterias, conservando los alimentos por más tiempo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué cambian de color las hojas en otoño?",
                options: ["Porque la helada mata las hojas", "Porque los árboles dejan de producir clorofila al acortarse los días", "Por cambios en las lluvias", "Porque los animales se comen la parte verde"],
                correctAnswer: "Porque los árboles dejan de producir clorofila al acortarse los días",
                explanation: "La falta de luz solar en otoño detiene la producción de clorofila (verde), revelando otros pigmentos como el amarillo y rojo en las hojas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué los médicos miden la presión arterial?",
                options: ["Para verificar el peso", "Para vigilar la salud del corazón y detectar la hipertensión", "Para medir el estado físico", "Para detectar la diabetes"],
                correctAnswer: "Para vigilar la salud del corazón y detectar la hipertensión",
                explanation: "La medición ayuda a identificar la hipertensión u otros problemas cardiovasculares que podrían provocar ataques al corazón o derrames."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué hay semáforos?",
                options: ["Para reducir la velocidad del tráfico", "Para ayudar a los peatones a cruzar", "Para regular el tráfico y reducir accidentes", "Para reemplazar a los policías"],
                correctAnswer: "Para regular el tráfico y reducir accidentes",
                explanation: "Los semáforos organizan el flujo de vehículos y peatones en las intersecciones, evitando colisiones y mejorando la seguridad vial."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué debes usar bloqueador solar?",
                options: ["Para mantenerte fresco", "Para prevenir las pecas", "Para proteger la piel de los rayos UV", "Para mantener la piel hidratada"],
                correctAnswer: "Para proteger la piel de los rayos UV",
                explanation: "El bloqueador solar previene quemaduras y reduce el riesgo de cáncer de piel causado por la radiación ultravioleta del sol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué pican las picaduras de mosquito?",
                options: ["Por la sangre que extraen", "Por las bacterias que dejan", "Porque la saliva del mosquito provoca una respuesta inmune", "Porque inyectan veneno"],
                correctAnswer: "Porque la saliva del mosquito provoca una respuesta inmune",
                explanation: "Cuando un mosquito pica, inyecta saliva que el sistema inmunológico humano reconoce como extraña, liberando histamina que causa picazón."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué es importante votar?",
                options: ["Porque la ley lo exige", "Para tener voz en la elección de representantes del gobierno", "Para evitar multas", "Porque el empleador lo exige"],
                correctAnswer: "Para tener voz en la elección de representantes del gobierno",
                explanation: "El voto es un derecho democrático fundamental que permite a los ciudadanos influir en las políticas y elegir a sus líderes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué necesitamos dormir?",
                options: ["Solo para descansar los músculos", "Para no comer de más", "El cuerpo se repara y el cerebro consolida recuerdos", "Solo para conservar energía"],
                correctAnswer: "El cuerpo se repara y el cerebro consolida recuerdos",
                explanation: "El sueño es vital porque permite la recuperación física, el descanso celular y el procesamiento y consolidación de la memoria."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué nos cepillamos los dientes?",
                options: ["Solo para refrescar el aliento", "Para blanquear los dientes", "Para eliminar la placa y bacterias que causan caries", "Solo para fortalecer el esmalte"],
                correctAnswer: "Para eliminar la placa y bacterias que causan caries",
                explanation: "El cepillado remueve restos de comida y placa bacteriana, previniendo la formación de caries y enfermedades de las encías."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué la gente usa abrigo en invierno?",
                options: ["Por moda", "Para mantenerse seco bajo la lluvia", "Para abrigar el cuerpo y mantenerse caliente", "Solo para protegerse del viento"],
                correctAnswer: "Para abrigar el cuerpo y mantenerse caliente",
                explanation: "Los abrigos proporcionan aislamiento térmico, reteniendo el calor corporal y protegiendo contra las bajas temperaturas del invierno."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué reciclamos?",
                options: ["Para ganar dinero en centros de reciclaje", "Para reducir desechos y conservar recursos naturales", "Porque el gobierno lo exige", "Para mantener limpio el hogar"],
                correctAnswer: "Para reducir desechos y conservar recursos naturales",
                explanation: "El reciclaje permite transformar materiales usados en nuevos productos, disminuyendo la contaminación y la extracción de materias primas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Por qué la gente hace un testamento?",
                options: ["Para evitar impuestos", "Para planear su funeral", "Para especificar legalmente quién recibirá sus bienes al morir", "Para protegerse de demandas"],
                correctAnswer: "Para especificar legalmente quién recibirá sus bienes al morir",
                explanation: "Un testamento es un documento legal que garantiza que las propiedades y bienes de una persona se distribuyan según sus deseos tras su fallecimiento."
            )
        ]
    )

    // MARK: - Preguntas WH — Cómo
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Preguntas WH — Cómo",
        instructions: "Elige la respuesta de medida o número correcta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos días tiene una semana?",
                options: ["5", "6", "7", "8"],
                correctAnswer: "7",
                explanation: "Una semana estándar consta de siete días: lunes, martes, miércoles, jueves, viernes, sábado y domingo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas semanas tiene un año?",
                options: ["48", "50", "52", "54"],
                correctAnswer: "52",
                explanation: "Un año de 365 días se divide aproximadamente en 52 semanas completas, más uno o dos días extra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos lados tiene un hexágono?",
                options: ["4", "5", "6", "7"],
                correctAnswer: "6",
                explanation: "Un hexágono es un polígono de geometría plana que tiene exactamente seis lados y seis vértices."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos gramos hay en un kilogramo?",
                options: ["100", "500", "1000", "2000"],
                correctAnswer: "1000",
                explanation: "El prefijo 'kilo' en el sistema métrico significa mil, por lo que un kilogramo equivale exactamente a 1000 gramos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos centímetros hay en un metro?",
                options: ["10", "50", "100", "1000"],
                correctAnswer: "100",
                explanation: "El prefijo 'centi' significa la centésima parte, lo que indica que un metro está compuesto por 100 centímetros."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos meses tiene un año?",
                options: ["10", "11", "12", "13"],
                correctAnswer: "12",
                explanation: "El calendario gregoriano divide el año solar en 12 meses, desde enero hasta diciembre."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos días tiene abril?",
                options: ["28", "29", "30", "31"],
                correctAnswer: "30",
                explanation: "Según el calendario gregoriano, abril es el cuarto mes del año y tiene una duración de 30 días."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "How many eggs are in a dozen?",
                options: ["6", "10", "12", "24"],
                correctAnswer: "12",
                explanation: "Una docena es una agrupación de doce unidades, por lo tanto, una docena de huevos equivale a 12 huevos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos estados tiene Estados Unidos?",
                options: ["48", "49", "50", "52"],
                correctAnswer: "50",
                explanation: "Estados Unidos es una república federal compuesta por 50 estados y un distrito federal (Washington D.C.)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuánto dura un embarazo típico?",
                options: ["6 meses", "7 mil", "8 mil", "9 meses"],
                correctAnswer: "9 meses",
                explanation: "La gestación humana tiene una duración promedio de 40 semanas, lo que equivale aproximadamente a 9 meses calendario."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas horas tiene un día?",
                options: ["20", "22", "24", "26"],
                correctAnswer: "24",
                explanation: "Un día terrestre se define como el tiempo que tarda la Tierra en dar una vuelta completa sobre su propio eje, es decir, 24 horas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo tratas una quemadura menor?",
                options: ["Aplicas mantequilla o aceite", "Pones hielo directamente", "Enfrias con agua corriente fría por 10 minutos", "Cubres bien con un vendaje inmediatamente"],
                correctAnswer: "Enfrias con agua corriente fría por 10 minutos",
                explanation: "Enfriar la quemadura con agua detiene el daño en los tejidos, alivia el dolor y reduce la inflamación de forma segura."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo detienes una hemorragia nasal?",
                options: ["Inclinas la cabeza hacia atrás", "Te suenas fuerte", "Aprietas la parte blanda de la nariz e inclinas ligeramente hacia adelante", "Te acuestas boca arriba"],
                correctAnswer: "Aprietas la parte blanda de la nariz e inclinas ligeramente hacia adelante",
                explanation: "La presión detiene el sangrado, y la inclinación hacia adelante evita que la sangre fluya hacia la garganta, previniendo atragantamientos o náuseas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas patas tiene una araña?",
                options: ["4", "6", "8", "10"],
                correctAnswer: "8",
                explanation: "Las arañas pertenecen a la clase de los arácnidos, los cuales se caracterizan anatómicamente por tener ocho patas articuladas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos centavos hay en un dólar?",
                options: ["50", "75", "100", "200"],
                correctAnswer: "100",
                explanation: "El dólar estadounidense se divide en 100 unidades fraccionarias menores llamadas centavos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos años hay en un siglo?",
                options: ["10", "50", "100", "1000"],
                correctAnswer: "100",
                explanation: "El término 'siglo' es una medida de tiempo estándar en la cronología histórica que define un bloque exacto de 100 años consecutivos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo sabes si la comida se echó a perder?",
                options: ["Por el color del empaque", "Por la marca", "Revisando si hay moho, mal olor, textura inusual o fecha de caducidad", "Por qué tan pesado se siente"],
                correctAnswer: "Revisando si hay moho, mal olor, textura inusual o fecha de caducidad",
                explanation: "Estos signos indican la presencia de bacterias u hongos perjudiciales, advirtiendo que el alimento ya no es seguro para el consumo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos segundos hay en un minuto?",
                options: ["30", "45", "60", "90"],
                correctAnswer: "60",
                explanation: "Por definición del sistema sexagesimal de tiempo, un minuto está compuesto exactamente por 60 segundos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos lados tiene un triángulo?",
                options: ["2", "3", "4", "5"],
                correctAnswer: "3",
                explanation: "Un triángulo es un polígono básico en geometría que está definido por tener tres lados y tres ángulos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos años hay en un milenio?",
                options: ["100", "500", "1000", "10000"],
                correctAnswer: "1000",
                explanation: "La palabra 'milenio' proviene del latín y se refiere a un periodo de mil años."
            )
        ]
    )

    // MARK: - Preguntas de Sí o No
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Preguntas de Sí o No",
        instructions: "Toca SÍ o NO.",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Es el mariachi un género musical tradicional originario de México?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El mariachi es de México."),
            ExerciseItem(id: UUID(), prompt: "¿Es el Sol una estrella que brilla en el centro de nuestro sistema solar?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El Sol es una estrella."),
            ExerciseItem(id: UUID(), prompt: "¿Tienen todos los insectos un total de ocho patas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los insectos tienen seis patas."),
            ExerciseItem(id: UUID(), prompt: "¿Es la Ciudad de México la capital oficial del país de México?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La CDMX es la capital."),
            ExerciseItem(id: UUID(), prompt: "¿Pueden las personas volar de forma natural sin ayuda de máquinas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los humanos no vuelan solos."),
            ExerciseItem(id: UUID(), prompt: "¿Tiene un año regular un total de 365 días?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Un año tiene 365 días."),
            ExerciseItem(id: UUID(), prompt: "¿Es el agua un elemento compuesto por hidrógeno y oxígeno?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El agua es H2O."),
            ExerciseItem(id: UUID(), prompt: "¿Viven los osos polares de forma natural en el desierto del Sahara?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Viven en el Ártico."),
            ExerciseItem(id: UUID(), prompt: "¿Es la Luna el satélite natural que órbita la Tierra?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La Luna es el satélite de la Tierra."),
            ExerciseItem(id: UUID(), prompt: "¿Tienen todos los seres humanos dos corazones?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los humanos tienen un corazón."),
            ExerciseItem(id: UUID(), prompt: "¿Es el español el idioma oficial de España y México?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Es el idioma oficial."),
            ExerciseItem(id: UUID(), prompt: "¿Tienen los elephants dos trompas largas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Tienen una sola trompa."),
            ExerciseItem(id: UUID(), prompt: "¿Es la Antártida el lugar más frío de la Tierra?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Es la zona más fría."),
            ExerciseItem(id: UUID(), prompt: "¿Crecen las manzanas en arbustos bajo el suelo?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Crecen en árboles de manzano."),
            ExerciseItem(id: UUID(), prompt: "¿Es el Everest la montaña más alta sobre el nivel del mar?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Es la montaña más alta."),
            ExerciseItem(id: UUID(), prompt: "¿Son las zanahorias raíces que crecen bajo la tierra?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Las zanahorias son raíces."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el mariachi un género musical tradicional originario de México?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El mariachi es de México."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el Sol una estrella que brilla en el centro de nuestro sistema solar?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El Sol es una estrella."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Tienen todos los insectos un total de ocho patas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los insectos tienen seis patas."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es la Ciudad de México la capital oficial del país de México?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La CDMX es la capital."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Pueden las personas volar de forma natural sin ayuda de máquinas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los humanos no vuelan solos."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Tiene un año regular un total de 365 días?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Un año tiene 365 días."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el agua un elemento compuesto por hidrógeno y oxígeno?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El agua es H2O."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Viven los osos polares de forma natural en el desierto del Sahara?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Viven en el Ártico."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es la Luna el satélite natural que órbita la Tierra?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La Luna es el satélite de la Tierra."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Tienen todos los seres humanos dos corazones?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los humanos tienen un corazón."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el español el idioma oficial de España y México?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Es el idioma oficial."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Tienen los elefantes dos trompas largas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Tienen una sola trompa."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es la Antártida el lugar más frío de la Tierra?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Es la zona más fría."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Crecen las manzanas en arbustos bajo el suelo?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Crecen en árboles de manzano."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el Everest la montaña más alta sobre el nivel del mar?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Es la montaña más alta."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Son las zanahorias raíces que crecen bajo la tierra?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Las zanahorias son raíces."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El agua hierve a cien grados Celsius?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El agua hierve a 100 grados Celsius."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El hielo flota en el agua?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El hielo tiene menor densidad."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los seres humanos pueden respirar bajo el agua sin equipo?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los humanos carecen de branquias."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el color rojo un color primario?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El rojo es color primario en el modelo RYB."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Un triángulo tiene cuatro esquinas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Un triángulo tiene tres esquinas."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El sol se oculta por el este?", options: ["Yes", "No"], correctAnswer: "No", explanation: "El sol se oculta por el oeste."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es la Tierra el tercer planeta desde el Sol?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La Tierra sigue a Mercurio y Venus."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los delfines son peces?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los delfines son mamíferos marinos."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Un siglo tiene cien años?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Un siglo equivale a 100 años."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La madera se obtiene de los árboles?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La madera es tejido leñoso de árboles."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Las abejas producen miel?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Las abejas recolectan néctar para miel."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El acero es un elemento natural?", options: ["Yes", "No"], correctAnswer: "No", explanation: "El acero es una aleación artificial."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los pingüinos pueden volar alto en el cielo?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los pingüinos no vuelan en el aire."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Es el desierto del Sahara el más cálido?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El Sahara es el desierto cálido más grande."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El hierro es atraído por los imanes?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El hierro is ferromagnético."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El cuerpo humano tiene un total de diez costillas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los humanos tienen 24 costillas."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Las plantas necesitan luz solar para realizar la fotosíntesis?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La luz solar aporta energía química."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El papel se fabrica a partir de la madera?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La celulosa vegetal es la base."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los leones son herbívoros?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los leones son carnívoros depredadores."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Una semana tiene siete días?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La semana consta de 7 días."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El cerebro es el órgano que controla el pensamiento?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El cerebro procesa la cognición."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los plátanos crecen en el suelo como patatas?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los plátanos crecen en racimos aéreos."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El océano Atlántico es el más grande del mundo?", options: ["Yes", "No"], correctAnswer: "No", explanation: "El Pacífico es el más grande."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los caballos tienen pezuñas en lugar de dedos?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Los caballos son ungulados monodáctilos."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El cobre es un buen conductor de la electricidad?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El cobre tiene baja resistividad eléctrica."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los cocodrilos son aves de corral?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los cocodrilos son reptiles semiacuáticos."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Un día completo tiene veinticuatro horas?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La Tierra tarda 24 horas por rotación."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Las ballenas respiran por medio de pulmones?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Las ballenas son mamíferos y respiran aire."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La manzana es una verdura de hoja verde?", options: ["Yes", "No"], correctAnswer: "No", explanation: "La manzana là un fruto del manzano."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El café se extrae de granos de una planta?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Se obtiene de los cafetos."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Las arañas pertenecen a la familia de los insectos?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Las arañas son arácnidos de 8 patas."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El violín es un instrumento de percusión?", options: ["Yes", "No"], correctAnswer: "No", explanation: "El violín es un instrumento de cuerda."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La capoeira es una danza de combate de Brasil?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Se originó como arte marcial en Brasil."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La capital de España es Barcelona?", options: ["Yes", "No"], correctAnswer: "No", explanation: "La capital de España es Madrid."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El petróleo es un recurso renovable a corto plazo?", options: ["Yes", "No"], correctAnswer: "No", explanation: "El petróleo tarda millones de años en formarse."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los murciélagos son mamíferos que vuelan?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Son los únicos mamíferos voladores."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El termómetro sirve para medir la presión del aire?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Mide la temperatura térmica."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿Los pulmones sirven para procesar los alimentos?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Los pulmones procesan el aire respirado."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El Amazonas es el río más largo o caudaloso?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "El Amazonas es el más caudaloso del mundo."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿El ajo es conocido por su fuerte sabor y olor?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Contiene alicina que le da olor fuerte."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La penicilina es un tipo de antibiótico?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Fue el primer antibiótico descubierto."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La seda es producida por gusanos de seda?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La oruga del bombix mori segrega seda."),
            ExerciseItem(id: UUID(), prompt: "Pregunta lógica: ¿La gravedad de la Tierra atrae los objetos hacia su centro?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "La gravedad ejerce atracción descendente.")
        ]
    )

    // MARK: - Conocimientos — Historia
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Conocimientos — Historia",
        instructions: "Elige la respuesta correcta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue el primer Presidente de los Estados Unidos?",
                options: ["John Adams", "George Washington", "Thomas Jefferson", "Benjamin Franklin"],
                correctAnswer: "George Washington",
                explanation: "George Washington fue el primer presidente de los Estados Unidos, asumiendo el cargo en 1789 tras liderar la Guerra de Independencia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "In what year did the Titanic sink?",
                options: ["1901", "1912", "1918", "1935"],
                correctAnswer: "1912",
                explanation: "El RMS Titanic se hundió en la madrugada del 15 de abril de 1912 durante su viaje inaugural tras chocar con un iceberg."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿De qué país se independizó Estados Unidos?",
                options: ["Francia", "España", "Gran Bretaña", "Alemania"],
                correctAnswer: "Gran Bretaña",
                explanation: "Las trece colonias norteamericanas declararon su independencia del Imperio británico para formar los Estados Unidos de América."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién lideró el movimiento de independencia de la India de manera no violenta?",
                options: ["Jawaharlal Nehru", "Mahatma Gandhi", "Indira Gandhi", "Subhas Bose"],
                correctAnswer: "Mahatma Gandhi",
                explanation: "Mahatma Gandhi fue el líder principal del nacionalismo indio, empleando la desobediencia civil no violenta para lograr la independencia del dominio británico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "In what city were the first modern Olympic Games held in 1896?",
                options: ["París", "Londres", "Roma", "Atenas, Grecia"],
                correctAnswer: "Atenas, Grecia",
                explanation: "Los primeros Juegos Olímpicos de la era moderna se celebraron en Atenas en 1896 para rendir homenaje al origen de los Juegos en la antigua Grecia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Para qué enfermedad desarrolló Jonas Salk una vacuna en 1955?",
                options: ["Viruela", "Tuberculosis", "Polio", "Sarampión"],
                correctAnswer: "Polio",
                explanation: "El doctor Jonas Salk desarrolló la primera vacuna segura y eficaz contra la poliomielitis, una enfermedad paralizante muy temida en esa época."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "In what year did World War I begin?",
                options: ["1914", "1918", "1939", "1905"],
                correctAnswer: "1914",
                explanation: "La Primera Guerra Mundial comenzó en 1914 tras el asesinato del archiduque Francisco Fernando, desatando alianzas militares en Europa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A quién se le atribuye la invención de la imprenta alrededor de 1440?",
                options: ["Leonardo da Vinci", "Galileo", "Johannes Gutenberg", "Isaac Newton"],
                correctAnswer: "Johannes Gutenberg",
                explanation: "Johannes Gutenberg es reconocido por inventar la imprenta de tipos móviles en Europa, revolucionando la producción de libros y la difusión del conocimiento."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿En qué barco navegaron los peregrinos a América en 1620?",
                options: ["La Niña", "La Pinta", "El Mayflower", "La Victoria"],
                correctAnswer: "El Mayflower",
                explanation: "El Mayflower fue el famoso barco que transportó a los peregrinos ingleses desde Inglaterra hasta el Nuevo Mundo en 1620."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Who delivered the ‘I Have a Dream’ speech in 1963?",
                options: ["Malcolm X", "Barack Obama", "Martin Luther King Jr.", "Frederick Douglass"],
                correctAnswer: "Martin Luther King Jr.",
                explanation: "Martin Luther King Jr. pronunció este icónico discurso durante la Marcha sobre Washington, exigiendo igualdad y el fin del racismo en Estados Unidos."
            )
        ]
    )

    // MARK: - Conocimientos — Geografía
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Conocimientos — Geografía",
        instructions: "Elige la respuesta correcta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué país limita al norte con los Estados Unidos?",
                options: ["México", "Rusia", "Canadá", "Groenlandia"],
                correctAnswer: "Canadá",
                explanation: "Canadá es el país que comparte la frontera norte con los Estados Unidos, siendo esta la frontera terrestre más larga del mundo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "In which US state is the Grand Canyon located?",
                options: ["Colorado", "Utah", "Nevada", "Arizona"],
                correctAnswer: "Arizona",
                explanation: "El Gran Cañón es una famosa formación natural tallada por el río Colorado, ubicada en el estado de Arizona, Estados Unidos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Tokio es la capital de qué país?",
                options: ["China", "Corea del Sur", "Japón", "Tailandia"],
                correctAnswer: "Japón",
                explanation: "Tokio es la capital y la ciudad más poblada de Japón, así como su principal centro político y económico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es el estado más grande de EE. UU. por superficie terrestre?",
                options: ["Texas", "California", "Montana", "Alaska"],
                correctAnswer: "Alaska",
                explanation: "Alaska es, por un amplio margen, el estado de mayor extensión territorial de los Estados Unidos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es la capital de Francia?",
                options: ["Lyon", "Marsella", "París", "Burdeos"],
                correctAnswer: "París",
                explanation: "París es la capital y la ciudad más grande de Francia, conocida mundialmente como un centro de arte, cultura y política."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué país tiene forma de bota?",
                options: ["España", "Grecia", "Italia", "Portugal"],
                correctAnswer: "Italia",
                explanation: "La península itálica tiene una característica forma geográfica que se asemeja a una bota, lo que es comúnmente usado para identificar a Italia en los mapas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "What is the smallest country in the world by area?",
                options: ["Mónaco", "San Marino", "Liechtenstein", "Ciudad del Vaticano"],
                correctAnswer: "Ciudad del Vaticano",
                explanation: "La Ciudad del Vaticano es un estado soberano independiente enclavado en Roma, siendo el país más pequeño del mundo tanto en superficie como en población."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué océano baña la costa este de los Estados Unidos?",
                options: ["Pacífico", "Índico", "Ártico", "Atlántico"],
                correctAnswer: "Atlántico",
                explanation: "La costa este de los Estados Unidos se encuentra a lo largo del Océano Atlántico, separando al país de Europa y África."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿En qué país se encuentra la Gran Pirámide de Giza?",
                options: ["Marruecos", "Túnez", "Libia", "Egipto"],
                correctAnswer: "Egipto",
                explanation: "La Gran Pirámide de Giza, una de las siete maravillas del mundo antiguo, está situada en las afueras de El Cairo, en Egipto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es la montaña más alta del mundo?",
                options: ["K2", "Kilimanjaro", "Monte Everest", "Denali"],
                correctAnswer: "Monte Everest",
                explanation: "El Monte Everest es el pico más alto de la Tierra sobre el nivel del mar, ubicado en la cordillera del Himalaya."
            )
        ]
    )

    // MARK: - Conocimientos — Cultura Popular
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Conocimientos — Cultura Popular",
        instructions: "Elige la respuesta correcta.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué serie de televisión presenta a Ross, Rachel, Monica, Chandler, Joey y Phoebe?",
                options: ["Seinfeld", "Friends", "The Office", "Cheers"],
                correctAnswer: "Friends",
                explanation: "Estos son los nombres de los seis personajes principales de la exitosa y popular comedia de situación estadounidense 'Friends'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Who was known as the Queen of Soul and sang Respect?",
                options: ["Whitney Houston", "Diana Ross", "Aretha Franklin", "Tina Turner"],
                correctAnswer: "Aretha Franklin",
                explanation: "Aretha Franklin fue una aclamada cantante estadounidense apodada la 'Reina del Soul', y su versión de la canción 'Respect' es un himno icónico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué película animada presenta a un pez payaso buscando a su hijo perdido?",
                options: ["El espantatiburones", "La Sirenita", "Buscando a Nemo", "Happy Feet"],
                correctAnswer: "Buscando a Nemo",
                explanation: "'Buscando a Nemo' (Finding Nemo) es una exitosa película de Pixar sobre un pez payaso llamado Marlin que cruza el océano para encontrar a su hijo Nemo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Who played Forrest Gump in the 1994 film?",
                options: ["Tom Cruise", "Tom Hanks", "Kevin Costner", "Dustin Hoffman"],
                correctAnswer: "Tom Hanks",
                explanation: "El aclamado actor estadounidense Tom Hanks interpretó al personaje principal en la película 'Forrest Gump', actuación por la que ganó un premio Óscar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "What 1950s sitcom starred Lucille Ball?",
                options: ["The Dick Van Dyke Show", "Embrujada", "Yo amo a Lucy", "The Honeymooners"],
                correctAnswer: "Yo amo a Lucy",
                explanation: "'Yo amo a Lucy' (I Love Lucy) fue una pionera y enormemente popular comedia de televisión estadounidense protagonizada por la comediante Lucille Ball."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "What Herman Melville novel starts with ‘Call me Ishmael’?",
                options: ["El viejo y el mar", "Billy Budd", "Moby-Dick", "La isla del tresoro"],
                correctAnswer: "Moby-Dick",
                explanation: "Esta famosa línea de apertura pertenece a la clásica novela estadounidense 'Moby-Dick', que narra la obsesiva búsqueda de una gran ballena blanca."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién grabó la clásica canción My Way en 1969?",
                options: ["Dean Martin", "Sammy Davis Jr.", "Frank Sinatra", "Tony Bennett"],
                correctAnswer: "Frank Sinatra",
                explanation: "La canción 'My Way', adaptada al inglés por Paul Anka, se convirtió en una de las grabaciones emblemáticas del legendario cantante Frank Sinatra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué película de Pixar de 1995 presenta a un muñeco vaquero llamado Woody?",
                options: ["Bichos", "Toy Story", "Cars", "Monstruos S.A."],
                correctAnswer: "Toy Story",
                explanation: "'Toy Story' fue el primer largometraje animado por computadora de Pixar y tiene como uno de sus protagonistas al vaquero de juguete Woody."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "What animated show features a yellow-skinned family in the town of Springfield?",
                options: ["Padre de familia", "Bob‘s Burgers", "American Dad", "Los Simpson"],
                correctAnswer: "Los Simpson",
                explanation: "'Los Simpson' es una famosa y longeva serie animada creada por Matt Groening sobre las aventuras de una peculiar familia amarilla en Springfield."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién escribió la serie de libros de Harry Potter?",
                options: ["Roald Dahl", "J.R.R. Tolkien", "J.K. Rowling", "C.S. Lewis"],
                correctAnswer: "J.K. Rowling",
                explanation: "La exitosa serie de novelas fantásticas sobre el joven mago Harry Potter fue creada y escrita por la autora británica J.K. Rowling."
            )
        ]
    )

    // MARK: - Modismos y Lenguaje Figurado
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Modismos y Lenguaje Figurado",
        instructions: "Explica lo que significa cada expresión popular. Toca 'Ver Respuesta' para ver la explicación modelo.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Tiene un diente de ajo.",
                options: [],
                correctAnswer: "Tiene mal carácter o se enoja con mucha facilidad.",
                explanation: "Esta expresión idiomática se usa para describir metafóricamente a una persona que es irritable o que se molesta rápidamente."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Me costó un ojo de la cara.",
                options: [],
                correctAnswer: "Pagué un precio excesivamente alto por ello.",
                explanation: "Es una frase hecha que ilustra un valor tan alto o un costo tan grande que metafóricamente equivale a sacrificar algo tan valioso como un ojo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "No reveles el secreto; no te vayas de la lengua.",
                options: [],
                correctAnswer: "No hables de más ni descubras el secreto.",
                explanation: "La expresión 'irse de la lengua' significa figurativamente perder el control sobre lo que se dice, revelando información confidencial o secreta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estar en la luna.",
                options: [],
                correctAnswer: "Estar muy distraído o despistado.",
                explanation: "Es una expresión coloquial que indica que una persona está absorta en sus pensamientos, ajena a lo que sucede a su alrededor, como si estuviera en otro mundo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Echarle leña al fuego.",
                options: [],
                correctAnswer: "Hacer que una discusión o situación difícil empeore.",
                explanation: "Esta metáfora compara una situación conflictiva con un fuego, indicando que las acciones o palabras añaden 'leña', aumentando su intensidad o gravedad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tomarle el pelo a alguien.",
                options: [],
                correctAnswer: "Burlarse de alguien o engañarle como broma.",
                explanation: "Es un modismo utilizado cuando alguien engaña, bromea o se mofa de otra persona de forma inofensiva o humorística."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Meter la pata.",
                options: [],
                correctAnswer: "Cometer un error o decir algo inoportuno.",
                explanation: "Esta frase hecha significa equivocarse, actuar con torpeza o hacer un comentario fuera de lugar en una situación determinada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hacer la vista gorda.",
                options: [],
                correctAnswer: "Fingir no darse cuenta de un error o falta.",
                explanation: "La expresión significa ignorar deliberadamente algo incorrecto, haciéndose el desentendido para no tener que intervenir o castigar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ahogarse en un vaso de agua.",
                options: [],
                correctAnswer: "Preocuparse demasiado por un problema pequeño.",
                explanation: "Es una metáfora visual que indica que alguien se desespera o se siente superado por una dificultad que en realidad es insignificante."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Soltar la sopa.",
                options: [],
                correctAnswer: "Confesar o revelar un secreto guardado.",
                explanation: "Es un coloquialismo que se utiliza para referirse al acto de contar la verdad, especialmente cuando se revela algo que se intentaba ocultar."
            )
        ]
    )

    // MARK: - Estimación y Lógica
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Estimación y Lógica",
        instructions: "Elige la respuesta más lógica o razonable.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuánto se tarda normalmente en hervir un huevo blando?",
                options: ["1 minuto", "6 minutos", "20 minutos", "1 hora"],
                correctAnswer: "6 minutos",
                explanation: "Para lograr un huevo con la clara cocida y la yema líquida o 'blanda', el tiempo estándar de cocción en agua hirviendo es de aproximadamente 6 minutos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos huevos vienen en un cartón estándar?",
                options: ["6", "12", "18", "24"],
                correctAnswer: "12",
                explanation: "Comercialmente, los huevos se venden de forma tradicional agrupados en cartones que contienen una docena (12 unidades)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas ruedas tiene un automóvil estándar?",
                options: ["2", "3", "4", "6"],
                correctAnswer: "4",
                explanation: "El diseño estándar de la mayoría de los vehículos automotores de pasajeros incluye cuatro ruedas para proporcionar tracción y estabilidad en el camino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas patas tiene un  elefante?",
                options: ["2", "3", "4", "6"],
                correctAnswer: "4",
                explanation: "Como la gran mayoría de los mamíferos terrestres grandes, los elefantes son cuadrúpedos, lo que significa que poseen cuatro patas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos años hay en un siglo?",
                options: ["10", "50", "100", "1000"],
                correctAnswer: "100",
                explanation: "El término 'siglo' es una medida de tiempo estándar en la cronología histórica que define un bloque exacto de 100 años consecutivos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿A qué velocidad camina normalmente una persona?",
                options: ["Aprox. 1 km/h", "Aprox. 5 km/h", "Aprox. 20 km/h", "Aprox. 50 km/h"],
                correctAnswer: "Aprox. 5 km/h",
                explanation: "La velocidad promedio al caminar para un humano adulto sano en terreno plano suele rondar los 5 kilómetros por hora (o unas 3 millas por hora)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos días hay en un año estándar (no bisiesto)?",
                options: ["300", "356", "365", "400"],
                correctAnswer: "365",
                explanation: "Un año común no bisiesto del calendario gregoriano tiene 365 días, equivalente al tiempo aproximado que tarda la Tierra en orbitar el Sol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas rebanadas de pan se usan para un sándwich estándar?",
                options: ["1", "2", "3", "4"],
                correctAnswer: "2",
                explanation: "La preparación tradicional de un sándwich básico consiste en colocar un relleno entre dos rebanadas de pan."
            )
        ]
    )

    // MARK: - Razonamiento Deductivo
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "Razonamiento Deductivo",
        instructions: "Lee el escenario clínico y elige la conclusión más lógica.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Alguien lleva un traje de mayo y gafas de sol. ¿Qué es probable que vaya a hacer?",
                options: ["Ir al cine", "Ir a la playa o piscina", "Asistir a una boda formal", "Ir al supermercado"],
                correctAnswer: "Ir a la playa o piscina",
                explanation: "Esta es una deducción lógica basada en la vestimenta: un traje de baño y gafas de sol se usan típicamente para nadar y protegerse del sol en lugares como la playa o la piscina."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Un vehículo de emergencia pasa a toda velocidad con luces y sirenas encendidas. ¿Qué debes hacer?",
                options: ["Acelerar", "Orillarte y detenerte hasta que pase", "Tocar la bocina", "Ignorarlo"],
                correctAnswer: "Orillarte y detenerte hasta que pase",
                explanation: "Es una regla de tránsito universal y una medida de seguridad básica ceder el paso a los vehículos de emergencia para que puedan llegar rápidamente a su destino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Una persona sostiene un paraguas y usa un impermeable. ¿Cómo es el clima probablemente?",
                options: ["Cálido y soleado", "Frío y nevado", "Lluvioso", "Seco y ventoso"],
                correctAnswer: "Lluvioso",
                explanation: "El uso de accesorios como paraguas e impermeables tiene como objetivo principal protegerse del agua, por lo que lógicamente indica que está lloviendo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Todas las luces de tu casa se apagan repentinamente por la noche. ¿Qué sucedió más probablemente?",
                options: ["Se ocultó el sol", "Hubo un apagón eléctrico", "Cerraste los ojos", "El televisor se apagó"],
                correctAnswer: "Hubo un apagón eléctrico",
                explanation: "La pérdida repentina de iluminación artificial en toda la casa simultáneamente casi siempre es consecuencia de un corte en el suministro eléctrico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nevó intensamente durante la noche y necesitas conducir. ¿Qué debes hacer primero?",
                options: ["Conducir a velocidad normal", "Verificar las condiciones y limpiar tu parabas", "Llamar a la policía", "Quedarte en casa para siempre"],
                correctAnswer: "Verificar las condiciones y limpiar tu parabas",
                explanation: "Por seguridad vial, es indispensable tener una visión clara antes de conducir y asegurarse de que los caminos sean transitables después de una nevada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Enciendes velas para la cena y necesitas salir de la habitación por 20 minutos. ¿Qué debes hacer?",
                options: ["Dejar las velas encendidas", "Apagarlas antes de salir", "Ignorarlas", "Abrir una ventana"],
                correctAnswer: "Apagarlas antes de salir",
                explanation: "Nunca dejes velas encendidas sin supervisión"
            )
        ]
    )

    // MARK: - Memoria — Acerca de Ti
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "Memoria — Acerca de Ti",
        instructions: "Estas preguntas están diseñadas para estimular la memoria personal a largo plazo. No hay respuestas incorrectas. Tómate tu tiempo.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se llamaba la calle o el vecindario donde creciste?",
                options: [],
                correctAnswer: "",
                explanation: "Esta pregunta busca evocar la memoria episódica a largo plazo pidiendo al usuario recordar detalles geográficos específicos de su infancia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es tu recuerdo más temprano de la infancia?",
                options: [],
                correctAnswer: "",
                explanation: "Se enfoca en estimular la memoria autobiográfica más antigua, un ejercicio común en la terapia de reminiscencia para activar conexiones neuronales profundas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué querías ser de grande cuando eras niño?",
                options: [],
                correctAnswer: "",
                explanation: "Esta pregunta estimula recuerdos relacionados con las aspiraciones infantiles, fomentando la reflexión sobre la identidad personal a lo largo del tiempo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué canción te transporta de inmediato a un momento específico de tu vida?",
                options: [],
                correctAnswer: "",
                explanation: "La música está fuertemente ligada a la memoria emocional; esta pregunta aprovecha ese vínculo para facilitar el recuerdo vívido de experiencias pasadas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Quién fue tu maestro favorito y qué lo hacía especial?",
                options: [],
                correctAnswer: "",
                explanation: "Apela a los recuerdos sociales y afectivos de la etapa escolar, requiriendo que el individuo recuerde a una persona y los motivos de su aprecio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál fue tu primer trabajo y qué recuerdas de él?",
                options: [],
                correctAnswer: "",
                explanation: "Estimula la memoria relacionada con la transición a la edad adulta y las primeras responsabilidades, abarcando tanto eventos como emociones asociadas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Describe la casa de tu infancia con el mayor detalle posible.",
                options: [],
                correctAnswer: "",
                explanation: "Este es un ejercicio de memoria espacial y visual que requiere reconstruir mentalmente un entorno familiar del pasado."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué olor te trae un recuerdo muy fuerte?",
                options: [],
                correctAnswer: "",
                explanation: "El sentido del olfato está directamente conectado con el sistema límbico; la pregunta utiliza esta conexión anatómica para evocar recuerdos autobiográficos intensos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué comida de tu infancia todavía te encanta hoy en día?",
                options: [],
                correctAnswer: "",
                explanation: "Conecta la memoria sensorial y gustativa del pasado con los hábitos presentes, promoviendo la continuidad de la identidad a través del tiempo."
            )
        ]
    )
}


