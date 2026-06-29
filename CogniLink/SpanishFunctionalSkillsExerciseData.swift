import Foundation

struct SpanishFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        exercise1,
        exercise7,
        exercise8,
        exercise5,
        exercise6,
        exercise9,
        exercise10,
        exercise3,
        exercise2,
        exercise4
    ]

    // MARK: - Escenarios de Seguridad
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Escenarios de Seguridad",
        instructions: "Lee cada escenario. Describe lo que harías. Toca 'Ver Respuesta' para ver la mejor respuesta modelo.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Te caes en el sótano y crees que podrías haberte torcido el tobillo.",
                options: [],
                correctAnswer: "Quédate quieto. No intentes caminar sobre él. Pide ayuda a gritos. Si estás solo, llama al 911 o usa tu teléfono. Solo muévete si puedes hacerlo de manera segura.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hay un fuego en la cocina mientras estás cocinando.",
                options: [],
                correctAnswer: "NO uses agua sobre un fuego de grasa o aceite; esto causa llamaradas peligrosas. Apaga el quemador. Sofoca las llamas con una tapa o bandeja para hornear. Usa un extintor. Si el fuego se propaga, sal de inmediato y llama al 911.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Alguien te envía un correo electrónico pidiendo ayuda con un error bancario y ofrece una recompensa financiera.",
                options: [],
                correctAnswer: "No respondas. No hagas clic en ningún enlace. Esto es una estafa de phishing. Elimina el correo electrónico.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Te despiertas en medio de la noche con un fuerte dolor en el pecho.",
                options: [],
                correctAnswer: "Llama al 911 de inmediato. No esperes a ver si pasa. El dolor de pecho puede indicar un ataque cardíaco. Mastica una aspirina si está disponible y no está contraindicada.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Alguien llama diciendo que tu computadora tiene un virus y se ofrece a repararlo gratis por teléfono.",
                options: [],
                correctAnswer: "Cuelga. Esta es una estafa de soporte técnico. Las compañías legítimas no realizan llamadas no solicitadas. Nunca permitas el acceso remoto a tu computadora.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Llegas a casa y notas que una puerta o ventana ha sido forzada, sugiriendo un robo.",
                options: [],
                correctAnswer: "NO entres. Retírate del área de inmediato. Llama al 911 desde un lugar seguro. Espera a que la policía revise la casa antes de entrar.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Recibes un mensaje de texto que dice que tu cuenta bancaria ha sido congelada y debes hacer clic en un enlace de inmediato.",
                options: [],
                correctAnswer: "No hagas clic en el enlace. Esta es una estafa de phishing. Llama a tu banco directamente utilizando el número que figura al reverso de tu tarjeta.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás conduciendo y de repente te sientes muy mareado y confundido.",
                options: [],
                correctAnswer: "Estaciónate de manera segura lo antes posible. Enciende las luces de emergencia. No sigas conduciendo. Llama a alguien para pedir ayuda o al 911.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Un extraño llama a tu puerta afirmando ser de la compañía de luz pero no puede mostrar una identificación.",
                options: [],
                correctAnswer: "No lo dejes entrar. Pídele que muestre su identificación a través de una ventana. Llama a la compañía de servicios directamente para verificar antes de abrir.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Encuentras una pastilla no identificada en el piso de tu baño.",
                options: [],
                correctAnswer: "No la tomes. Deséchala de manera segura en un programa de recolección de medicamentos en una farmacia. No la tires por el inodoro.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tu detector de humo emite un pitido corto cada 30 o 60 segundos.",
                options: [],
                correctAnswer: "Esto significa que la batería está baja. Cambia la batería de inmediato. No retires la batería sin poner una nueva.",
                explanation: "Low battery indicator for smoke detector."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tomas accidentalmente una dosis doble de tu medicamento recetado.",
                options: [],
                correctAnswer: "Llama al Centro de Control de Envenenamiento de inmediato al 1-800-222-1222. Ten el envase del medicamento a la mano cuando llames.",
                explanation: "Double dose medication safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Alguien te llama diciendo que tu nieto Mateo está en la cárcel en México y necesita que le envíes dinero por transferencia de inmediato.",
                options: [],
                correctAnswer: "Esta es una estafa del nieto. Cuelga. Llama a tu nieto o a sus padres directamente a un número de confianza para verificar. No envíes dinero.",
                explanation: "Grandparent scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sientes un fuerte olor a gas natural en tu cocina.",
                options: [],
                correctAnswer: "Sal de la casa inmediatamente con todas las personas y mascotas. No enciendas luces, no uses fósforos ni uses el teléfono adentro. Llama al 911 o a la compañía de gas desde afuera.",
                explanation: "Gas leak emergency protocol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás en el estacionamiento de El Super en Santa Ana y notas que alguien te sigue de cerca hacia tu auto.",
                options: [],
                correctAnswer: "No vayas a tu auto solo. Regresa a la tienda o busca a un empleado de seguridad. Llama al 911 si te sientes amenazado.",
                explanation: "Parking lot personal safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Un contratista toca a tu puerta ofreciendo reparar tu techo dañado por la tormenta a mitad de precio, pero exige el pago en efectivo hoy y sin contrato.",
                options: [],
                correctAnswer: "No aceptes. Esto es una estafa de contratistas. Siempre solicita presupuestos por escrito, verifica su licencia y nunca pagues todo por adelantado.",
                explanation: "Unlicensed contractor scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Recibes una llamada automática que dice que tu Número de Seguro Social ha sido suspendido debido a actividad sospechosa.",
                options: [],
                correctAnswer: "Cuelga inmediatamente. El Seguro Social nunca suspende números ni realiza este tipo de llamadas. Es una estafa.",
                explanation: "Social Security administration scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Te das cuenta de que dejaste una vela encendida en la sala y ya te vas a dormir.",
                options: [],
                correctAnswer: "Apaga la vela de inmediato. Nunca duermas con velas encendidas debido al alto riesgo de incendio.",
                explanation: "Fire safety for candles."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tu detector de monóxido de carbono empieza a sonar con una alarma continua.",
                options: [],
                correctAnswer: "Sal al aire libre de inmediato. No intentes buscar la causa. Llama al 911 una vez que estés afuera de la casa de manera segura.",
                explanation: "Carbon monoxide emergency."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ves a un perro callejero herido y asustado en la calle de tu vecindario.",
                options: [],
                correctAnswer: "No te acerques ni intentes tocarlo, ya que un animal herido puede morder por dolor. Llama a Control de Animales local para pedir ayuda.",
                explanation: "Animal safety guidelines."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Recibes una llamada de alguien que dice ser del IRS exigiendo que pagues impuestos atrasados inmediatamente con tarjetas de regalo de Target.",
                options: [],
                correctAnswer: "Cuelga. El IRS nunca exige pagos inmediatos por teléfono ni acepta tarjetas de regalo. Esto es una estafa.",
                explanation: "IRS impersonation scam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Te cortas el dedo con un cuchillo mientras preparas nopales y la herida no para de sangrar después de presionar por 10 minutos.",
                options: [],
                correctAnswer: "Continúa presionando firmemente con un paño limpio y busca atención médica de urgencia o llama al 911 si el sangrado es muy abundante.",
                explanation: "Bleeding first aid protocol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás limpiando el baño y planeas mezclar cloro con amoníaco para quitar una mancha difícil.",
                options: [],
                correctAnswer: "¡NO los mezcles! Mezclar cloro y amoníaco crea vapores químicos altamente tóxicos y peligrosos para la salud.",
                explanation: "Chemical safety at home."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sales a caminar por la tarde y te das cuenta de que no sabes dónde estás ni cómo regresar a casa.",
                options: [],
                correctAnswer: "Mantén la calma. Busca un lugar seguro como una tienda o banco cercano. Si tienes tu teléfono, llama a un familiar o al 911 para pedir ayuda.",
                explanation: "Wandering and spatial disorientation safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La sartén en la que estás friendo taquitos comienza a sacar mucho humo y huele a quemado.",
                options: [],
                correctAnswer: "Apaga la estufa de inmediato y tapa la sartén con una tapa metálica para evitar que empiece un fuego de aceite. No muevas la sartén caliente.",
                explanation: "Kitchen fire prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Te das cuenta de que la comida del refrigerador se siente tibia porque hubo un apagón eléctrico de más de 8 horas.",
                options: [],
                correctAnswer: "Desecha los alimentos perecederos como carne, lácteos y huevos. No los comas, ya que las bacterias crecen rápidamente a temperatura ambiente.",
                explanation: "Food safety after power outage."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás en la tina y se cae una secadora de pelo enchufada al agua.",
                options: [],
                correctAnswer: "NO intentes sacarla del agua con las manos mientras esté enchufada. Sal de la tina con cuidado y desconecta la electricidad desde el interruptor principal.",
                explanation: "Electrical safety in wet environments."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sientes que el piso se mueve fuertemente debido a un terremoto mientras estás en la sala.",
                options: [],
                correctAnswer: "Agáchate, cúbrete debajo de una mesa resistente y agárrate. Mantente alejado de ventanas y muebles altos que puedan caer.",
                explanation: "Earthquake safety protocol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Alguien toca a tu puerta diciendo que necesita entrar a tu casa para usar el teléfono por una emergencia médica.",
                options: [],
                correctAnswer: "No le abras la puerta. Ofrécete a llamar al 911 por ellos mientras esperan afuera. Mantén la puerta con seguro.",
                explanation: "Home security and personal safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ves un cable de electricidad tirado en la acera después de una tormenta de viento.",
                options: [],
                correctAnswer: "Mantente alejado a una distancia segura de al menos 30 pies. No lo toques ni te acerques. Llama al 911 de inmediato para reportarlo.",
                explanation: "Downed power line safety."
            )
        ]
    )

    // MARK: - Horario de TV
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Horario de TV",
        instructions: "Elige la respuesta correcta basada en el horario de televisión.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n6:00 PM - Noticias locales\n7:00 PM - Novela: Amor Secreto\n8:00 PM - Fútbol: México vs. EE. UU.\n¿A qué hora empieza la novela Amor Secreto?",
                options: ["6:00 PM", "7:00 PM", "8:00 PM", "9:00 PM"],
                correctAnswer: "7:00 PM",
                explanation: "The schedule lists the novel starting at 7:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n6:00 PM - Noticias locales\n7:00 PM - Novela: Amor Secreto\n8:00 PM - Fútbol: México vs. EE. UU.\nSi quieres ver el partido de fútbol completo, ¿a qué hora debes sintonizar el canal?",
                options: ["6:00 PM", "7:00 PM", "8:00 PM", "8:30 PM"],
                correctAnswer: "8:00 PM",
                explanation: "The soccer game begins at 8:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n7:00 PM - Noticiero Univision\n7:30 PM - Suelta la Sopa\n8:00 PM - La Rosa de Guadalupe\n¿Qué programa se transmite justo antes de La Rosa de Guadalupe?",
                options: ["Noticiero Univision", "Suelta la Sopa", "Fútbol en vivo", "Noticias locales"],
                correctAnswer: "Suelta la Sopa",
                explanation: "Suelta la Sopa is scheduled at 7:30 PM, right before La Rosa de Guadalupe at 8:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n4:00 PM - Caso Cerrado\n5:00 PM - Al Rojo Vivo\n6:00 PM - Noticias 34 Los Ángeles\n¿Cuánto tiempo dura el programa Al Rojo Vivo si el siguiente empieza a las 6:00 PM?",
                options: ["30 minutos", "1 hora", "1 hora y media", "2 horas"],
                correctAnswer: "1 hora",
                explanation: "From 5:00 PM to 6:00 PM is exactly 1 hour."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n1:00 PM - Cocina de Mi Rancho\n1:30 PM - El Chavo del Ocho\n2:30 PM - Película de la Tarde\n¿A qué hora termina El Chavo del Ocho?",
                options: ["1:00 PM", "1:30 PM", "2:30 PM", "3:00 PM"],
                correctAnswer: "2:30 PM",
                explanation: "The program starting after El Chavo del Ocho is at 2:30 PM, indicating it ends then."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n7:00 PM - Exatlón Estados Unidos (Duración: 2 horas)\n9:00 PM - Noticias Telemundo\n¿A qué hora terminará el programa Exatlón Estados Unidos?",
                options: ["8:00 PM", "8:30 PM", "9:00 PM", "10:00 PM"],
                correctAnswer: "9:00 PM",
                explanation: "7:00 PM plus 2 hours is 9:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n8:00 AM - Despierta América\n11:00 AM - Como Dice el Dicho\n¿Cuántas horas dura Despierta América según este horario?",
                options: ["1 hora", "2 horas", "3 horas", "4 horas"],
                correctAnswer: "3 horas",
                explanation: "From 8:00 AM to 11:00 AM is 3 hours."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n3:00 PM - Cine Mexicano: Pedro Infante\n5:30 PM - Primer Impacto\n¿Puedes ver completo Primer Impacto si tienes que salir a las 6:00 PM y dura 1 hora?",
                options: ["Sí, dura 30 minutos", "No, te perderás la segunda mitad", "Sí, termina a las 5:45 PM", "No, empieza a las 6:00 PM"],
                correctAnswer: "No, te perderás la segunda mitad",
                explanation: "It starts at 5:30 PM and lasts 1 hour (until 6:30 PM). Leaving at 6:00 PM means missing 30 minutes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n10:00 AM - Programa de Ejercicios\n10:30 AM - Recetas Saludables\n11:00 AM - Telenovela\n¿Cuál es el segundo programa de la mañana según este horario?",
                options: ["Programa de Ejercicios", "Recetas Saludables", "Telenovela", "Noticias"],
                correctAnswer: "Recetas Saludables",
                explanation: "Recetas Saludables is the second program listed (10:30 AM)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Horario de TV:\n8:00 PM - Sábado Gigante Especial\n10:00 PM - Boxeo en Vivo\nSi son las 9:30 PM, ¿qué programa se está transmitiendo en este momento?",
                options: ["Noticias", "Sábado Gigante Especial", "Boxeo en Vivo", "Ninguno"],
                correctAnswer: "Sábado Gigante Especial",
                explanation: "Sábado Gigante starts at 8:00 PM and ends at 10:00 PM, so at 9:30 PM it is still playing."
            )
        ]
    )

    // MARK: - Planificación de calendario
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "Planificación de calendario",
        instructions: "Usa el calendario para responder a las siguientes preguntas.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Tienes cita con el cardiólogo el segundo martes de junio. Si el 1 de junio es lunes, ¿qué día cae tu cita?",
                options: ["2 de junio", "9 de junio", "16 de junio", "23 de junio"],
                correctAnswer: "9 de junio",
                explanation: "If June 1st is Monday, the first Tuesday is June 2nd, and the second Tuesday is June 9th."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tomas un medicamento que dura 30 días. Si abres el bote el 1 de mayo, ¿qué día debes comprar la siguiente botella para no quedarte sin pastillas?",
                options: ["15 de mayo", "30 de mayo", "31 de mayo", "1 de junio"],
                correctAnswer: "30 de mayo",
                explanation: "Getting it by May 30th (day 30) ensures you do not run out before June."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tu nieta Sofía cumple años el 18 de octubre. Hoy es 10 de octubre. ¿Cuántos días faltan para su cumpleaños?",
                options: ["6 días", "7 días", "8 días", "9 días"],
                correctAnswer: "8 días",
                explanation: "18 minus 10 is 8 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El club de lectura de la biblioteca de Boyle Heights se reúne todos los jueves. Si hoy es miércoles 5 de agosto, ¿cuándo es la próxima reunión?",
                options: ["Jueves 6 de agosto", "Jueves 12 de agosto", "Jueves 4 de agosto", "Viernes 7 de agosto"],
                correctAnswer: "Jueves 6 de agosto",
                explanation: "The day after Wednesday the 5th is Thursday the 6th."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tienes que pagar el alquiler el día 5 de cada mes. Si hoy es 28 de septiembre, ¿en cuántos días vence el pago?",
                options: ["5 días", "7 días", "10 días", "12 días"],
                correctAnswer: "7 días",
                explanation: "September has 30 days. From Sept 28 to Oct 5 is 2 days in Sept + 5 days in Oct = 7 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tu cita con el dentista en Santa Ana es el 24 de noviembre. Si hoy es 20 de noviembre, ¿qué día de la semana es tu cita si hoy es viernes?",
                options: ["Lunes", "Martes", "Miércoles", "Jueves"],
                correctAnswer: "Martes",
                explanation: "Nov 20 is Friday. Nov 21 is Saturday, Nov 22 is Sunday, Nov 23 is Monday, and Nov 24 is Tuesday."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "La basura se recoge los lunes y jueves por la mañana. Si hoy es martes, ¿cuántos días faltan para la próxima recogida?",
                options: ["1 día", "2 días", "3 días", "4 días"],
                correctAnswer: "2 días",
                explanation: "Tuesday to Thursday is 2 days (Wednesday, Thursday)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Planeas unas vacaciones de una semana que comienzan el sábado 12 de julio. ¿Qué día debes regresar si duran exactamente 7 días?",
                options: ["Sábado 19 de julio", "Domingo 20 de julio", "Viernes 18 de julio", "Lunes 21 de julio"],
                correctAnswer: "Sábado 19 de julio",
                explanation: "12 plus 7 is 19."
            )
        ]
    )

    // MARK: - Pasos de Cocina
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Pasos de Cocina",
        instructions: "Los pasos se muestran en el orden INCORRECTO. Ordénalos del 1 al 3 para ponerlos en la secuencia correcta.",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Huevos revueltos",
                options: ["Batir los huevos con un tenedor", "Retirar del fuego cuando estén cuajados", "Calentar la sartén a fuego medio-bajo y añadir mantequilla", "Romper los huevos en un tazón", "Verter la mezcla de huevos en la sartén", "Añadir sal y un chorrito de leche", "Servir inmediatamente"],
                correctAnswer: "Romper los huevos en un tazón | Añadir sal y un chorrito de leche | Batir los huevos con un tenedor | Calentar la sartén a fuego medio-bajo y añadir mantequilla | Verter la mezcla de huevos en la sartén | Retirar del fuego cuando estén cuajados | Servir inmediatamente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sándwich de queso derretido (Sándwich mixto)",
                options: ["Darle la vuelta al sándwich", "Cocinar hasta que la base esté dorada", "Colocar la segunda rebanada encima con la mantequilla hacia arriba", "Colocar una rebanada con la mantequilla hacia abajo en la sartén fría", "Untar mantequilla en un lado de cada rebanada de pan", "Cocinar hasta que el segundo lado esté dorado y el queso se derrita", "Añadir queso encima", "Retirar y servir"],
                correctAnswer: "Untar mantequilla en un lado de cada rebanada de pan | Colocar una rebanada con la mantequilla hacia abajo en la sartén fría | Añadir queso encima | Colocar la segunda rebanada encima con la mantequilla hacia arriba | Cocinar hasta que la base esté dorada | Darle la vuelta al sándwich | Cocinar hasta que el segundo lado esté dorado y el queso se derrita | Retirar y servir",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Avena en la estufa",
                options: ["Añadir complementos como plátano o miel", "Reducir el fuego y revolver por 5 minutos hasta que espese", "Hervir agua o leche", "Añadir la avena", "Servir caliente"],
                correctAnswer: "Hervir agua o leche | Añadir la avena | Reducir el fuego y revolver por 5 minutos hasta que espese | Añadir complementos como plátano o miel | Servir caliente",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar un taco de carne asada",
                options: ["Calentar la tortilla de maíz en un comal", "Poner la carne asada picada en el centro de la tortilla", "Añadir cebolla picada y cilantro", "Ponerle salsa al gusto y un limón"],
                correctAnswer: "Calentar la tortilla de maíz en un comal | Poner la carne asada picada en el centro de la tortilla | Añadir cebolla picada y cilantro | Ponerle salsa al gusto y un limón",
                explanation: "Steps to assemble a classic carne asada taco."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar una taza de café soluble (Nescafé)",
                options: ["Calentar agua en una tetera o microondas", "Poner una cucharadita de café en la taza", "Verter el agua caliente en la taza", "Revolver con una cuchara", "Añadir leche o azúcar al gusto"],
                correctAnswer: "Calentar agua en una tetera o microondas | Poner una cucharadita de café en la taza | Verter el agua caliente en la taza | Revolver con una cuchara | Añadir leche o azúcar al gusto",
                explanation: "Making instant coffee."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar una quesadilla básica",
                options: ["Poner la tortilla en el comal o sartén", "Colocar el queso Oaxaca o mozzarella encima", "Doblar la tortilla por la mitad", "Voltear la quesadilla cuando el queso empiece a derretirse", "Retirar cuando esté dorada por ambos lados"],
                correctAnswer: "Poner la tortilla en el comal o sartén | Colocar el queso Oaxaca o mozzarella encima | Doblar la tortilla por la mitad | Voltear la quesadilla cuando el queso empiece a derretirse | Retirar cuando esté dorada por ambos lados",
                explanation: "Steps to make a basic quesadilla."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cocinar frijoles de la olla (de lata)",
                options: ["Abrir la lata de frijoles con un abrelatas", "Verter los frijoles en una olla pequeña", "Calentar a fuego medio hasta que hiervan", "Revolver ocasionalmente", "Servir calientes en un tazón"],
                correctAnswer: "Abrir la lata de frijoles con un abrelatas | Verter los frijoles en una olla pequeña | Calentar a fuego medio hasta que hiervan | Revolver ocasionalmente | Servir calientes en un tazón",
                explanation: "Reheating canned beans safely."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar agua de limón (Limonada)",
                options: ["Exprimir los limones en una jarra", "Añadir agua fría a la jarra", "Agregar azúcar al gusto", "Revolver bien hasta disolver el azúcar", "Añadir cubos de hielo"],
                correctAnswer: "Exprimir los limones en una jarra | Añadir agua fría a la jarra | Agregar azúcar al gusto | Revolver bien hasta disolver el azúcar | Añadir cubos de hielo",
                explanation: "Making traditional limeade."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar un sándwich de jamón y queso",
                options: ["Colocar dos rebanadas de pan en un plato", "Untar mayonesa en el pan", "Poner una rebanada de jamón y otra de queso", "Colocar lechuga y rodajas de tomate", "Cerrar el sándwich con la otra rebanada de pan"],
                correctAnswer: "Colocar dos rebanadas de pan en un plato | Untar mayonesa en el pan | Poner una rebanada de jamón y otra de queso | Colocar lechuga y rodajas de tomate | Cerrar el sándwich con la otra rebanada de pan",
                explanation: "Assembling a sandwich."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hacer sopa de fideos instantánea (Maruchan)",
                options: ["Hervir dos tazas de agua en una olla", "Agregar los fideos secos y el sazonador", "Cocinar a fuego lento durante 3 minutos", "Revolver para separar los fideos", "Apagar el fuego y servir en un tazón"],
                correctAnswer: "Hervir dos tazas de agua en una olla | Agregar los fideos secos y el sazonador | Cocinar a fuego lento durante 3 minutos | Revolver para separar los fideos | Apagar el fuego y servir en un tazón",
                explanation: "Making instant ramen soup."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar un plato de cereal con leche",
                options: ["Poner un tazón limpio sobre la mesa", "Servir el cereal seco en el tazón", "Verter la leche fría sobre el cereal", "Tomar una cuchara y disfrutar"],
                correctAnswer: "Poner un tazón limpio sobre la mesa | Servir el cereal seco en el tazón | Verter la leche fría sobre el cereal | Tomar una cuchara y disfrutar",
                explanation: "Simple breakfast cereal preparation."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hacer té caliente de manzanilla",
                options: ["Hervir agua en una taza", "Colocar la bolsita de té de manzanilla en el agua caliente", "Dejar reposar por 5 minutos", "Retirar la bolsita de té", "Agregar miel o azúcar al gusto"],
                correctAnswer: "Hervir agua en una taza | Colocar la bolsita de té de manzanilla en el agua caliente | Dejar reposar por 5 minutos | Retirar la bolsita de té | Agregar miel o azúcar al gusto",
                explanation: "Brewing chamomile tea."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar una ensalada verde",
                options: ["Lavar y secar las hojas de lechuga", "Cortar la lechuga en trozos medianos", "Añadir rodajas de pepino y tomate", "Verter un chorrito de aderezo", "Mezclar suavemente en un ensaladero"],
                correctAnswer: "Lavar y secar las hojas de lechuga | Cortar la lechuga en trozos medianos | Añadir rodajas de pepino y tomate | Verter un chorrito de aderezo | Mezclar suavemente en un ensaladero",
                explanation: "Steps to make a basic salad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar arroz blanco básico",
                options: ["Enjuagar el arroz en un colador", "Calentar aceite y dorar ligeramente el arroz en la olla", "Agregar el doble de agua que de arroz y sal", "Dejar hervir y luego tapar a fuego bajo por 20 minutos", "Apagar el fuego y dejar reposar tapado antes de servir"],
                correctAnswer: "Enjuagar el arroz en un colador | Calentar aceite y dorar ligeramente el arroz en la olla | Agregar el doble de agua que de arroz y sal | Dejar hervir y luego tapar a fuego bajo por 20 minutos | Apagar el fuego y dejar reposar tapado antes de servir",
                explanation: "Proper steps for cooking rice."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar guacamole tradicional",
                options: ["Cortar los aguacates por la mitad y retirar la semilla", "Extraer la pulpa con una cuchara y ponerla en un plato", "Machacar la pulpa con un tenedor hasta que quede suave", "Añadir cebolla, tomate y cilantro bien picaditos", "Agregar sal y unas gotas de limón, y mezclar"],
                correctAnswer: "Cortar los aguacates por la mitad y retirar la semilla | Extraer la pulpa con una cuchara y ponerla en un plato | Machacar la pulpa con un tenedor hasta que quede suave | Añadir cebolla, tomate y cilantro bien picaditos | Agregar sal y unas gotas de limón, y mezclar",
                explanation: "Standard recipe sequencing for guacamole."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar tostadas de frijol con queso",
                options: ["Colocar las tostadas de maíz secas en un plato", "Untar una capa de frijoles refritos calientes", "Espolvorear queso cotija o fresco por encima", "Añadir un poco de lechuga picada", "Agregar salsa al gusto"],
                correctAnswer: "Colocar las tostadas de maíz secas en un plato | Untar una capa de frijoles refritos calientes | Espolvorear queso cotija o fresco por encima | Añadir un poco de lechuga picada | Agregar salsa al gusto",
                explanation: "Preparing bean tostadas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hacer una banana split sencilla",
                options: ["Pelar un plátano entero y cortarlo a lo largo en dos partes", "Colocar las dos mitades en un plato alargado", "Poner tres bolas de helado entre las mitades de plátano", "Agregar jarabe de chocolate y crema batida", "Colocar una cereza encima de cada bola de helado"],
                correctAnswer: "Pelar un plátano entero y cortarlo a lo largo en dos partes | Colocar las dos mitades en un plato alargado | Poner tres bolas de helado entre las mitades de plátano | Agregar jarabe de chocolate y crema batida | Colocar una cereza encima de cada bola de helado",
                explanation: "Assembling a banana split."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar una concha con chocolate caliente",
                options: ["Calentar una taza de leche en la estufa", "Agregar una barra de chocolate de mesa (Abuelita)", "Batir con un molinillo o batidora hasta que haga espuma", "Servir el chocolate caliente en una taza", "Colocar una concha dulce en un plato para acompañar"],
                correctAnswer: "Calentar una taza de leche en la estufa | Agregar una barra de chocolate de mesa (Abuelita) | Batir con un molinillo o batidora hasta que haga espuma | Servir el chocolate caliente en una taza | Colocar una concha dulce en un plato para acompañar",
                explanation: "Mexican chocolate and concha prep."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hervir papas para puré",
                options: ["Lavar bien las papas bajo el agua", "Pelar las papas y cortarlas en cubos medianos", "Colocar las papas en una olla con agua y sal", "Hervir a fuego medio durante 20 minutos hasta que estén suaves", "Colar el agua caliente de la olla"],
                correctAnswer: "Lavar bien las papas bajo el agua | Pelar las papas y cortarlas en cubos medianos | Colocar las papas en una olla con agua y sal | Hervir a fuego medio durante 20 minutos hasta que estén suaves | Colar el agua caliente de la olla",
                explanation: "Cooking potatoes before mashing."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar una ensalada de frutas",
                options: ["Lavar muy bien todas las frutas", "Pelar el plátano y la manzana", "Cortar las frutas en cubos pequeños", "Colocar los trozos en un tazón grande", "Mezclar y añadir miel al gusto"],
                correctAnswer: "Lavar muy bien todas las frutas | Pelar el plátano y la manzana | Cortar las frutas en cubos pequeños | Colocar los trozos en un tazón grande | Mezclar y añadir miel al gusto",
                explanation: "Preparing a simple fruit salad."
            )
        ]
    )

    // MARK: - Habilidades Diarias
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Habilidades Diarias",
        instructions: "Para cada tarea, describe: qué suministros necesitas, los pasos clave y qué podría salir mal. Toca 'Ver Respuesta' para ver la guía modelo.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo lavas la ropa?",
                options: [],
                correctAnswer: "Suministros: ropa sucia, detergente, suavizante. Pasos: Clasifica por color y tejido. Revisa los bolsillos. Añade la cantidad correcta de detergente. Ajusta la temperatura del agua. Pásala a la secadora al terminar. Dobla pronto. Cuidado con: ropa de color mezclada con blanca, sobrecargar la máquina, olvidar la ropa húmeda dentro.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo programas una cita médica?",
                options: [],
                correctAnswer: "Suministros: teléfono, tarjeta de seguro médico, lista de síntomas, calendario. Pasos: Llama durante horario de atención. Proporciona tu nombre, fecha de nacimiento y seguro. Explica el motivo de la consulta. Anota la fecha, hora y dirección. Cuidado con: no tener la tarjeta de seguro a la mano, olvidar preguntar por instrucciones de preparación.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo envías un correo electrónico?",
                options: [],
                correctAnswer: "Suministros: computadora o teléfono inteligente, dirección de correo del destinatario. Pasos: Abre la app de correo. Toca Redactar. Ingresa la dirección del destinatario. Escribe un asunto. Escribe tu mensaje. Revisa. Presiona Enviar. Cuidado con: presionar Responder a Todos por error. Olvidar un archivo adjunto que mencionas.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo se lee una etiqueta de medicamento correctamente?",
                options: [],
                correctAnswer: "Encuentra: nombre del medicamento, dosis indicada, cuántas veces al día, instrucciones especiales como tomar con alimentos, fecha de vencimiento. Lee todas las advertencias. Cuidado con: confundir miligramos (mg) con mililitros (ml), ignorar la advertencia de tomar con alimentos.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo preparas una carta para enviarla por correo?",
                options: [],
                correctAnswer: "Suministros: carta escrita, sobre, estampilla (sello postal). Pasos: Dobla la carta en tres. Insértala en el sobre. Escribe el nombre y dirección del destinatario en el centro. Escribe tu dirección de remitente arriba a la izquierda. Pega la estampilla arriba a la derecha. Deposítala en el buzón. Cuidado con: invertir las direcciones, olvidar la estampilla.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo preparas el bote de basura para sacarlo?",
                options: [],
                correctAnswer: "Suministros: bolsa de basura nueva, bote de basura. Pasos: Amarra la bolsa de basura llena que está en el bote de la cocina. Sácala al contenedor grande del garaje o exterior. Coloca una bolsa nueva en el bote de la cocina asegurando las esquinas. Cuidado con: bolsas rotas con fugas de líquido, sobrellenar la bolsa dificultando el amarre.",
                explanation: "Taking out and replacing trash bags."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo pides comida para llevar por teléfono?",
                options: [],
                correctAnswer: "Suministros: menú del restaurante, teléfono, método de pago. Pasos: Elige tus platos del menú antes de marcar. Llama al restaurante y di que quieres hacer un pedido para recoger. Lee tu pedido claramente. Proporciona tu nombre y número de teléfono. Pregunta cuánto tiempo tardará y el costo total. Cuidado con: no decidir el pedido antes de llamar, no preguntar por el tiempo de espera.",
                explanation: "Ordering takeout food."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo lavas los platos a mano?",
                options: [],
                correctAnswer: "Suministros: esponja, jabón para platos, agua caliente, escurridor. Pasos: Retira los restos de comida de los platos al bote de basura. Enjuaga ligeramente. Moja la esponja y ponle jabón. Restriega cada plato, vaso y cubierto. Enjuaga con agua limpia. Colócalos en el escurridor. Cuidado con: platos resbaladizos con jabón que puedan romperse, usar demasiada agua.",
                explanation: "Handwashing dishes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo limpias un derrame de líquido en la alfombra?",
                options: [],
                correctAnswer: "Suministros: toallas de papel o paño limpio, agua tibia, limpiador de alfombras. Pasos: Absorbe el exceso de líquido presionando suavemente (no talles para evitar extender la mancha). Pon un poco de agua tibia o limpiador. Presiona nuevamente con un paño seco. Deja secar. Cuidado con: tallar fuerte dañando las fibras de la alfombra, dejar la alfombra muy húmeda generando moho.",
                explanation: "Cleaning spills from carpet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo preparas tu cama por la mañana?",
                options: [],
                correctAnswer: "Pasos: Retira las almohadas. Estira la sábana bajera. Estira la sábana encimera hacia la cabecera. Coloca la colcha o edredón de forma uniforme. Sacude las almohadas y colócalas arriba. Cuidado con: dejar arrugas incómodas, no acomodar bien los lados de las sábanas.",
                explanation: "Making the bed."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo recargas tu tarjeta de autobús o transporte público (como la tarjeta TAP)?",
                options: [],
                correctAnswer: "Suministros: tarjeta de transporte, dinero en efectivo o tarjeta de crédito. Pasos: Acércate a la máquina de la estación. Coloca la tarjeta en el lector. Elige la opción de recarga de saldo. Selecciona el monto. Inserta tu dinero o tarjeta. Retira tu tarjeta cuando la pantalla confirme el éxito. Cuidado con: retirar la tarjeta antes de que termine el proceso, olvidar tu cambio.",
                explanation: "Recharging a transit card."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo riegas tus plantas de interior correctamente?",
                options: [],
                correctAnswer: "Suministros: regadera, agua a temperatura ambiente. Pasos: Toca la tierra con tu dedo para ver si está seca. Si está seca, vierte agua lentamente alrededor de la base hasta que la tierra esté húmeda pero no lodosa. Deja escurrir el exceso de agua. Cuidado con: regar en exceso pudriendo las raíces, usar agua muy caliente o fría.",
                explanation: "Watering indoor houseplants."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo te cepillas los dientes correctamente?",
                options: [],
                correctAnswer: "Suministros: cepillo de dientes, pasta dental, agua, hilo dental. Pasos: Pon una pequeña cantidad de pasta en el cepillo. Cepilla con movimientos circulares por al menos 2 minutos, cubriendo la parte externa, interna y de masticar de cada diente. Enjuágate la boca con agua. Cuidado con: cepillar muy fuerte dañando las encías, olvidar cambiar el cepillo cada 3 meses.",
                explanation: "Basic dental hygiene."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo limpias los espejos y ventanas de casa?",
                options: [],
                correctAnswer: "Suministros: limpiador de vidrios (Windex) o agua con vinagre, paño de microfibra o periódico. Pasos: Rocía el limpiador sobre la superficie del espejo o vidrio. Limpia con movimientos en forma de “S” o circulares de arriba hacia abajo hasta secar. Cuidado con: usar paños que suelten pelusa, limpiar bajo el sol directo secando el producto muy rápido y dejando manchas.",
                explanation: "Cleaning mirrors and glass surfaces."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo sacas una cita para la licencia de conducir en el DMV?",
                options: [],
                correctAnswer: "Suministros: computadora o teléfono inteligente con internet, datos personales. Pasos: Abre el navegador de internet y ve a la página del DMV de California. Busca la sección de citas. Elige el tipo de trámite (renovación o examen). Ingresa tus datos. Selecciona la oficina, fecha y hora disponibles. Anota la confirmación. Cuidado con: escribir mal tu correo o teléfono, llegar a la cita sin los documentos requeridos.",
                explanation: "Scheduling a DMV appointment online."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo usas el microondas para calentar comida de forma segura?",
                options: [],
                correctAnswer: "Pasos: Coloca la comida en un plato apto para microondas (no uses metal ni aluminio). Cubre con una tapa de plástico o toalla de papel. Pon el plato en el centro. Selecciona el tiempo de calentamiento (por ejemplo, 1 minuto). Retira con cuidado usando guantes si está caliente. Cuidado con: meter objetos metálicos que causen chispas, calentar recipientes sellados que puedan explotar.",
                explanation: "Safe microwave operation."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo repones el jabón líquido de manos en el dispensador del baño?",
                options: [],
                correctAnswer: "Suministros: botella grande de repuesto de jabón, dispensador vacío. Pasos: Abre la tapa del dispensador girándola. Vierte el jabón líquido lentamente desde la botella grande para evitar que se desborde. Cierra la tapa del dispensador firmemente. Limpia cualquier residuo de jabón del exterior. Cuidado con: verter demasiado rápido creando espuma y desbordándose.",
                explanation: "Refilling a soap dispenser."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo cambias una bombilla o foco fundido?",
                options: [],
                correctAnswer: "Suministros: foco nuevo del mismo tipo y voltaje, escalera si es necesario. Pasos: APAGA la luz desde el interruptor. Espera unos minutos a que el foco viejo se enfríe si estaba encendido. Gira el foco viejo hacia la izquierda para retirarlo. Inserta el foco nuevo y gíralo hacia la derecha hasta que quede firme. Enciende el interruptor para probar. Cuidado con: cambiar el foco con la luz encendida, usar un foco de voltaje incorrecto.",
                explanation: "Replacing a light bulb safely."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo limpias el teclado de tu computadora?",
                options: [],
                correctAnswer: "Suministros: aire comprimido, paño de microfibra ligeramente húmedo. Pasos: Apaga la computadora y desconecta el teclado. Usa el aire comprimido para sacar el polvo entre las teclas. Limpia suavemente la superficie con el paño ligeramente húmedo (no mojado). Deja secar antes de conectar. Cuidado con: usar demasiada agua dañando los circuitos, presionar muy fuerte las teclas.",
                explanation: "Cleaning a computer keyboard."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cómo organizas el correo postal diario?",
                options: [],
                correctAnswer: "Pasos: Recoge el correo del buzón. Separa las cartas importantes (facturas, citas médicas, cartas oficiales) de la publicidad. Abre el correo importante y archívalo o colócalo en un lugar visible para pagarlo. Tira la publicidad no deseada a la basura o reciclaje. Cuidado con: perder facturas importantes entre la publicidad, dejar el correo acumulado sin revisar.",
                explanation: "Sorting daily mail."
            )
        ]
    )

    // MARK: - Orientación espacial
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "Orientación espacial",
        instructions: "Responde a las preguntas sobre direcciones y posiciones espaciales.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Estás en el pasillo del supermercado. Si la avena está arriba de las cajas de cereal, ¿dónde debes buscar la avena?",
                options: ["En el estante inferior", "En el estante superior", "Detrás del cereal", "En el pasillo de congelados"],
                correctAnswer: "En el estante superior",
                explanation: "“Arriba” corresponds to the upper shelf (estante superior)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás conduciendo y tu GPS dice: “Gire a la izquierda en la calle Main”. ¿Hacia qué dirección debes dar vuelta?",
                options: ["A la derecha", "A la izquierda", "Seguir derecho", "Dar vuelta en U"],
                correctAnswer: "A la izquierda",
                explanation: "The instruction is to turn left (izquierda)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "En tu botiquín, las pastillas para dormir están al lado de las vitaminas. Si encuentras las vitaminas, ¿dónde están las pastillas para dormir?",
                options: ["A un lado de las vitaminas", "Debajo de las vitaminas", "Detrás del botiquín", "En el cajón de abajo"],
                correctAnswer: "A un lado de las vitaminas",
                explanation: "“Al lado de” means next to or beside."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás frente al televisor y el control remoto está a tu derecha sobre la mesa. ¿Con qué mano lo alcanzarás más fácilmente?",
                options: ["Con la mano izquierda", "Con la mano derecha", "Con ambas manos", "No se puede alcanzar"],
                correctAnswer: "Con la mano derecha",
                explanation: "An object to your right is easiest to reach with your right hand."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si colocas tus llaves dentro del cajón de la cocina, ¿dónde están las llaves ahora?",
                options: ["Encima del cajón", "Debajo del cajón", "En el interior del cajón", "Al lado del cajón"],
                correctAnswer: "En el interior del cajón",
                explanation: "“Dentro de” means inside or in the interior."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tienes una foto de tu familia colgada arriba del sofá. ¿Dónde está el sofá en relación a la foto?",
                options: ["Arriba de la foto", "Debajo de la foto", "A la derecha de la foto", "A la izquierda de la foto"],
                correctAnswer: "Debajo de la foto",
                explanation: "If the photo is above the sofa, the sofa is below (debajo of) the photo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Estás organizando tu clóset. Las cobijas pesadas van en el estante de abajo para evitar que se caigan. ¿Dónde debes colocarlas?",
                options: ["En el estante más alto", "En el estante inferior", "Colgadas en ganchos", "Fuera del clóset"],
                correctAnswer: "En el estante inferior",
                explanation: "“El estante de abajo” corresponds to the bottom or inferior shelf."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Entras a una oficina y la recepcionista te dice: “Espere detrás de la línea amarilla marcada en el suelo”. ¿Dónde debes pararte?",
                options: ["Sobre la línea amarilla", "Antes de llegar a la línea amarilla", "Cruzando la línea amarilla", "En la acera de afuera"],
                correctAnswer: "Antes de llegar a la línea amarilla",
                explanation: "“Detrás de la línea” from the perspective of entering means staying behind/before it."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si caminas hacia el norte y das una vuelta completa de 180 grados, ¿hacia qué dirección estás mirando ahora?",
                options: ["Norte", "Sur", "Este", "Oeste"],
                correctAnswer: "Sur",
                explanation: "Turning 180 degrees reverses your direction. The opposite of North is South (Sur)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Colocas el tapete de bienvenida enfrente de la puerta principal. ¿Dónde pisas antes de abrir la puerta para entrar?",
                options: ["En el tapete", "En la sala", "En el jardín trasero", "En la cocina"],
                correctAnswer: "En el tapete",
                explanation: "The mat is placed in front of the door, so you step on it before entering."
            )
        ]
    )

    // MARK: - Percepción temporal
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "Percepción temporal",
        instructions: "Elige la mejor respuesta a las preguntas sobre el tiempo, duración y fechas.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Si hoy es miércoles, ¿qué día fue ayer?",
                options: ["Lunes", "Martes", "Jueves", "Viernes"],
                correctAnswer: "Martes",
                explanation: "Yesterday is the day before Wednesday, which is Tuesday (Martes)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si hoy es viernes y tu cita es pasado mañana, ¿qué día es tu cita?",
                options: ["Sábado", "Domingo", "Lunes", "Martes"],
                correctAnswer: "Domingo",
                explanation: "“Pasado mañana” is two days from today. Friday + 2 days = Sunday (Domingo)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es el primer mes del año?",
                options: ["Enero", "Febrero", "Diciembre", "Marzo"],
                correctAnswer: "Enero",
                explanation: "January (Enero) is the first month."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si tu despertador suena a las 7:00 AM y te despiertas a las 6:45 AM, ¿te despertaste antes o después de la alarma?",
                options: ["Antes", "Después", "A la hora exacta", "Por la tarde"],
                correctAnswer: "Antes",
                explanation: "6:45 AM is 15 minutes before (antes) 7:00 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si son las 2:50 PM y tu autobús sale a las 3:00 PM, ¿cuántos minutos tienes para abordar?",
                options: ["5 minutos", "10 minutos", "15 minutos", "20 minutos"],
                correctAnswer: "10 minutos",
                explanation: "From 2:50 to 3:00 is exactly 10 minutes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué estación del año viene después de la primavera?",
                options: ["Invierno", "Otoño", "Verano", "Ninguna"],
                correctAnswer: "Verano",
                explanation: "The seasons flow: Spring (primavera) -> Summer (verano)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si una medicina debe tomarse cada 12 horas, ¿cuántas veces al día debes tomarla?",
                options: ["1 vez al día", "2 veces al día", "3 veces al día", "4 veces al día"],
                correctAnswer: "2 veces al día",
                explanation: "24 hours in a day divided by 12 hours is 2 times."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tu serie favorita empieza a las 8:00 PM y dura 30 minutos. ¿A qué hora termina?",
                options: ["8:15 PM", "8:30 PM", "8:45 PM", "9:00 PM"],
                correctAnswer: "8:30 PM",
                explanation: "8:00 PM + 30 minutes = 8:30 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si el año actual es 2026, ¿en qué año estaremos el próximo año?",
                options: ["2025", "2026", "2027", "2028"],
                correctAnswer: "2027",
                explanation: "Next year is current year + 1 (2027)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si te tomaste una medicina a las 9:00 AM y debes esperar 4 horas para la siguiente dosis, ¿a qué hora te toca?",
                options: ["12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM"],
                correctAnswer: "1:00 PM",
                explanation: "9:00 AM + 4 hours = 1:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Qué mes viene justo antes de septiembre?",
                options: ["Julio", "Agosto", "Octubre", "Noviembre"],
                correctAnswer: "Agosto",
                explanation: "August (Agosto) precedes September."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si hoy es día 15 del mes y tu renta vence el día 30, ¿en cuántas semanas vence el pago aproximadamente?",
                options: ["1 semana", "2 semanas", "3 semanas", "4 semanas"],
                correctAnswer: "2 semanas",
                explanation: "30 - 15 = 15 days, which is about 2 weeks."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si tu cita es a las 11:30 AM y tardas 45 minutos en llegar, ¿a qué hora debes salir como mínimo?",
                options: ["10:30 AM", "10:45 AM", "11:00 AM", "11:15 AM"],
                correctAnswer: "10:45 AM",
                explanation: "11:30 AM minus 45 minutes is 10:45 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuál es el último mes del año?",
                options: ["Enero", "Noviembre", "Diciembre", "Octubre"],
                correctAnswer: "Diciembre",
                explanation: "December (Diciembre) is the 12th and final month."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si hoy es domingo, ¿qué día será en tres días?",
                options: ["Martes", "Miércoles", "Jueves", "Viernes"],
                correctAnswer: "Miércoles",
                explanation: "Sunday + 3 days (Monday, Tuesday, Wednesday)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si pones un pastel en el horno a las 4:15 PM y debe cocinarse durante 45 minutos, ¿a qué hora debes sacarlo?",
                options: ["4:45 PM", "5:00 PM", "5:15 PM", "5:30 PM"],
                correctAnswer: "5:00 PM",
                explanation: "4:15 PM plus 45 minutes is 5:00 PM."
            )
        ]
    )

    // MARK: - Compras — Mejor Valor
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Compras — Mejor Valor",
        instructions: "Para cada artículo, elige la opción que te ofrezca un mejor valor por tu dinero.",
        section: .functionalSkills,
        type: .comparison,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Papel higiénico: A) 4 rollos por $2.00 ($0.50 por rollo) B) 6 rollos por $2.70 ($0.45 por rollo)",
                options: ["Opción A — 4 rollos por $2.00", "Opción B — 6 rollos por $2.70"],
                correctAnswer: "Opción B — 6 rollos por $2.70",
                explanation: "$0.45 por rollo vs $0.50 por rollo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Huevos: A) Paquete de 6 por $2.50 ($0.42 cada uno) B) Paquete de 12 por $4.00 ($0.33 cada uno)",
                options: ["Opción A — Paquete de 6 por $2.50", "Opción B — Paquete de 12 por $4.00"],
                correctAnswer: "Opción B — Paquete de 12 por $4.00",
                explanation: "$0.33 cada uno vs $0.42 cada uno"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pan: A) Marca reconocida por $3.50 B) Marca de la tienda por $1.99",
                options: ["Opción A — Marca reconocida $3.50", "Opción B — Marca de la tienda $1.99"],
                correctAnswer: "Opción B — Marca de la tienda $1.99",
                explanation: "Menor costo por un producto comparable"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manzanas: A) Manzanas sueltas a $1.89 la libra B) Bolsa de 3 libras por $4.50 ($1.50 la libra)",
                options: ["Opción A — Sueltas a $1.89 la libra", "Opción B — Bolsa de 3 libras por $4.50"],
                correctAnswer: "Opción B — Bolsa de 3 libras por $4.50",
                explanation: "$1.50 la libra vs $1.89 la libra"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pasta: A) Caja de 1 lb por $2.00 B) Bolsa de 2 lb por $3.00 ($1.50 por lb)",
                options: ["Opción A — Caja de 1 lb por $2.00", "Opción B — Bolsa de 2 lb por $3.00"],
                correctAnswer: "Opción B — Bolsa de 2 lb por $3.00",
                explanation: "$1.50 la libra vs $2.00 la libra"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Papel higiénico: A) 4 rollos por $2.00 ($0.50 por rollo) B) 6 rollos por $2.70 ($0.45 por rollo). ¿Cuál tiene mejor valor?",
                options: ["Opción A — 4 rollos por $2.00", "Opción B — 6 rollos por $2.70"],
                correctAnswer: "Opción B — 6 rollos por $2.70",
                explanation: "$0.45 per roll is cheaper than $0.50 per roll."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Huevos: A) Paquete de 6 por $2.50 ($0.42 cada uno) B) Paquete de 12 por $4.00 ($0.33 cada uno). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Paquete de 6 por $2.50", "Opción B — Paquete de 12 por $4.00"],
                correctAnswer: "Opción B — Paquete de 12 por $4.00",
                explanation: "$0.33 per egg is cheaper than $0.42 per egg."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pan: A) Marca reconocida por $3.50 B) Marca de la tienda por $1.99. ¿Cuál tiene mejor valor?",
                options: ["Opción A — Marca reconocida $3.50", "Opción B — Marca de la tienda $1.99"],
                correctAnswer: "Opción B — Marca de la tienda $1.99",
                explanation: "Lower cost for a comparable product."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manzanas: A) Manzanas sueltas a $1.89 la libra B) Bolsa de 3 libras por $4.50 ($1.50 la libra). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Sueltas a $1.89 la libra", "Opción B — Bolsa de 3 libras por $4.50"],
                correctAnswer: "Opción B — Bolsa de 3 libras por $4.50",
                explanation: "$1.50 per lb is cheaper than $1.89 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pasta: A) Caja de 1 lb por $2.00 B) Bolsa de 2 lb por $3.00 ($1.50 por lb). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Caja de 1 lb por $2.00", "Opción B — Bolsa de 2 lb por $3.00"],
                correctAnswer: "Opción B — Bolsa de 2 lb por $3.00",
                explanation: "$1.50 per lb is cheaper than $2.00 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras frijoles refritos: A) 1 lata por $1.50 B) Paquete de 4 latas por $4.80 ($1.20 por lata). ¿Cuál tiene mejor valor?",
                options: ["Opción A — 1 lata por $1.50", "Opción B — Paquete de 4 por $4.80"],
                correctAnswer: "Opción B — Paquete de 4 por $4.80",
                explanation: "$1.20 per can is cheaper than $1.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras tortillas de maíz: A) Paquete de 30 tortillas por $1.80 ($0.06 cada una) B) Paquete de 80 tortillas por $4.00 ($0.05 cada una). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Paquete de 30 por $1.80", "Opción B — Paquete de 80 por $4.00"],
                correctAnswer: "Opción B — Paquete de 80 por $4.00",
                explanation: "$0.05 per tortilla is cheaper than $0.06."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras aguacates en Northgate Market: A) Bolsa de 5 aguacates por $4.50 ($0.90 cada uno) B) Aguacates sueltos a $1.25 cada uno. ¿Cuál tiene mejor valor?",
                options: ["Opción A — Bolsa de 5 por $4.50", "Opción B — Sueltos a $1.25 cada uno"],
                correctAnswer: "Opción A — Bolsa de 5 por $4.50",
                explanation: "$0.90 per avocado is cheaper than $1.25."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras leche: A) Envase de 1 galón por $3.80 B) Envase de medio galón por $2.20 ($4.40 el galón equivalente). ¿Cuál tiene mejor valor?",
                options: ["Opción A — 1 galón por $3.80", "Opción B — Medio galón por $2.20"],
                correctAnswer: "Opción A — 1 galón por $3.80",
                explanation: "$3.80 for a full gallon is cheaper than buying two half gallons for $4.40."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras arroz blanco: A) Bolsa de 2 libras por $2.40 ($1.20 por lb) B) Bolsa de 10 libras por $9.00 ($0.90 por lb). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Bolsa de 2 lb por $2.40", "Opción B — Bolsa de 10 lb por $9.00"],
                correctAnswer: "Opción B — Bolsa de 10 lb por $9.00",
                explanation: "$0.90 per pound is cheaper than $1.20."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras café: A) Frasco de 200g por $5.50 B) Frasco de 400g por $9.00. ¿Cuál tiene mejor valor?",
                options: ["Opción A — Frasco de 200g por $5.50", "Opción B — Frasco de 400g por $9.00"],
                correctAnswer: "Opción B — Frasco de 400g por $9.00",
                explanation: "Buying 400g for $9.00 is cheaper than buying two 200g jars for $11.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras queso fresco: A) Pieza de 12 oz por $3.60 ($0.30 por oz) B) Pieza de 16 oz por $4.00 ($0.25 por oz). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Pieza de 12 oz por $3.60", "Opción B — Pieza de 16 oz por $4.00"],
                correctAnswer: "Opción B — Pieza de 16 oz por $4.00",
                explanation: "$0.25 per ounce is cheaper than $0.30."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras detergente líquido: A) Botella pequeña por $4.99 B) Botella tamaño familiar por $12.99 (que rinde el triple de lavadas). ¿Cuál tiene mejor valor?",
                options: ["Opción A — Botella pequeña por $4.99", "Opción B — Botella familiar por $12.99"],
                correctAnswer: "Opción B — Botella familiar por $12.99",
                explanation: "The family size costs $12.99 but provides three times the usage of the $4.99 bottle (which would cost $14.97 for the same amount)."
            )
        ]
    )

    // MARK: - Tiempo y Matemáticas
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Tiempo y Matemáticas",
        instructions: "Elige la respuesta correcta para cada pregunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántas horas hay en un día?",
                options: ["12", "24", "48", "36"],
                correctAnswer: "24",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos días hay en un año bisiesto?",
                options: ["364", "365", "366", "367"],
                correctAnswer: "366",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si son las 3:00 p.m. y tu cita es en 2 horas y media, ¿a qué hora es la cita?",
                options: ["5:00 p.m.", "5:30 p.m.", "4:30 p.m.", "6:00 p.m."],
                correctAnswer: "5:30 p.m.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si te vas a dormir a las 10:30 p.m. y te despiertas a las 6:30 a.m., ¿cuántas horas dormiste?",
                options: ["6 horas", "7 horas", "8 horas", "9 horas"],
                correctAnswer: "8 horas",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si tomas una pastilla cada 8 horas comenzando a las 8:00 a.m., ¿cuándo te toca la próxima dosis?",
                options: ["2:00 p.m.", "3:00 p.m.", "4:00 p.m.", "5:00 p.m."],
                correctAnswer: "4:00 p.m.",
                explanation: "8:00 a.m. más 8 horas equivale a las 4:00 p.m."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Una receta dice marinar por al menos 4 horas. Quieres cenar a las 6:00 p.m. ¿A qué hora debes comenzar?",
                options: ["A las 10:00 a.m.", "A las 12:00 p.m.", "A las 2:00 p.m.", "A las 4:00 p.m."],
                correctAnswer: "A las 2:00 p.m.",
                explanation: "6:00 p.m. menos 4 horas equivale a las 2:00 p.m."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos segundos hay en un minuto?",
                options: ["30", "45", "60", "100"],
                correctAnswer: "60",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tu parquímetro vence en 45 minutos. Son las 1:20 p.m. ¿A qué hora vence?",
                options: ["1:55 p.m.", "2:00 p.m.", "2:05 p.m.", "2:10 p.m."],
                correctAnswer: "2:05 p.m.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "¿Cuántos días tiene el mes de abril?",
                options: ["28", "29", "30", "31"],
                correctAnswer: "30",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras un cartón de leche por $3.50 y un pan dulce por $1.50. Si pagas con un billete de $10.00, ¿cuánto cambio debes recibir?",
                options: ["$4.00", "$5.00", "$6.00", "$7.00"],
                correctAnswer: "$5.00",
                explanation: "Total cost is $3.50 + $1.50 = $5.00. Change is $10.00 - $5.00 = $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Quieres dejar una propina del 15% para una cuenta de $20.00 en un restaurante de tacos. ¿Cuánto es la propina?",
                options: ["$2.00", "$2.50", "$3.00", "$4.00"],
                correctAnswer: "$3.00",
                explanation: "15% of $20.00 is $3.00 (0.15 * 20 = 3)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si tu factura mensual del teléfono es de $45.00 y pagas $50.00, ¿cuánto saldo a favor o cambio te queda?",
                options: ["$5.00", "$10.00", "$15.00", "$2.00"],
                correctAnswer: "$5.00",
                explanation: "$50.00 - $45.00 = $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Una caja de tus pastillas recetadas cuesta $12.00 con tu seguro. Si compras 3 cajas, ¿cuánto pagarás en total?",
                options: ["$24.00", "$30.00", "$36.00", "$48.00"],
                correctAnswer: "$36.00",
                explanation: "3 times $12.00 is $36.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El boleto del metro cuesta $1.75 por viaje. Si compras un pase de 10 viajes por $15.00, ¿cuánto dinero ahorras en total comparado con comprar viajes individuales?",
                options: ["$1.50", "$2.50", "$3.00", "$5.00"],
                correctAnswer: "$2.50",
                explanation: "10 individual trips cost 10 * $1.75 = $17.50. The pass is $15.00, so you save $17.50 - $15.00 = $2.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras tres libras de plátanos a $0.60 la libra. ¿Cuánto es el total?",
                options: ["$1.20", "$1.50", "$1.80", "$2.00"],
                correctAnswer: "$1.80",
                explanation: "3 * $0.60 = $1.80."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Un paquete de carne molida cuesta $8.00 pero tiene una etiqueta de descuento de “$2.00 de rebaja al pagar”. ¿Cuánto pagarás en la caja?",
                options: ["$5.00", "$6.00", "$7.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "$8.00 minus $2.00 discount is $6.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Si compras un café por $2.75 y una concha por $1.25, ¿cuánto pagas en total?",
                options: ["$3.50", "$3.75", "$4.00", "$4.25"],
                correctAnswer: "$4.00",
                explanation: "$2.75 + $1.25 = $4.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Compras una tarjeta de regalo de $25.00 para tu nieta Sofia y pagas con un billete de $50.00. ¿Cuánto cambio te dan?",
                options: ["$15.00", "$20.00", "$25.00", "$30.00"],
                correctAnswer: "$25.00",
                explanation: "$50.00 - $25.00 = $25.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "El costo de estacionarse en Boyle Heights es de $2.00 por hora. Si dejas tu auto por 3 horas, ¿cuánto debes pagar?",
                options: ["$4.00", "$5.00", "$6.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "3 hours * $2.00/hour = $6.00."
            )
        ]
    )

    // MARK: - Escritura Funcional
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Escritura Funcional",
        instructions: "Escribe una respuesta para cada situación. Toca 'Ver Respuesta' para ver una respuesta modelo.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Escribe una nota para tu niñera de mascotas, Doreen, explicando cómo cuidar a tus dos gatos mientras estás fuera por 4 días.",
                options: [],
                correctAnswer: "Hola Doreen, Gracias por cuidar a Biscuit y Ginger. Por favor, dales a cada uno media taza de alimento seco por la mañana y por la noche. Ponles agua fresca todos los días. Ginger se esconde debajo de la cama pero saldrá cuando tenga hambre. Limpia la caja de arena una vez al día. La comida está debajo del fregadero. Llámame si surge algo. — [Tu Nombre]",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escribe una nota para tu arrendador, el Sr. O‘Donnell, informándole sobre una gotera en el techo de tu baño.",
                options: [],
                correctAnswer: "Estimado Sr. O‘Donnell, Le escribo para informarle sobre una gotera de agua en el techo de mi baño en el Apartamento 4B. La gotera parece provenir de la unidad superior y ha estado goteando durante dos días. Se está formando una mancha de agua en el techo. Por favor, organice una reparación lo antes posible. Puede comunicarse conmigo al 555-345-6789. Gracias, [Tu Nombre]",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escribe un mensaje de texto corto a un amigo cancelando los planes de mañana porque no te sientes bien.",
                options: [],
                correctAnswer: "¡Hola! Lo siento mucho, pero tengo que cancelar lo de mañana; no me siento bien y no quiero contagiarte nada. ¿Podemos reprogramar? ¡Disculpa por el aviso tan tarde!",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escribe una nota breve para dejarle a un familiar explicando a dónde fuiste y cuándo volverás.",
                options: [],
                correctAnswer: "Fui a la farmacia y al supermercado. Regreso para las 2 p.m. Hay sopa en el refrigerador si tienes hambre. ¡Nos vemos pronto!",
                explanation: ""
            )
        ]
    )
}
