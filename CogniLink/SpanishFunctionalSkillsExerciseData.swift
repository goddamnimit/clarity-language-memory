import Foundation

/// Holds the static therapy content for the Spanish Functional Skills section of Clarity.
struct SpanishFunctionalSkillsExerciseData {
    
    /// The complete collection of all 6 Spanish Functional Skills exercises.
    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5,
        exercise6
    ]
    
    // MARK: - Exercise 1: Safety Scenarios
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "Escenarios de Seguridad",
        instructions: "Lee cada escenario. Describe lo que harías. Toca 'Ver Respuesta' para ver la mejor respuesta modelo.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Te caes en el sótano y crees que podrías haberte torcido el tobillo.", options: [], correctAnswer: "Quédate quieto. No intentes caminar sobre él. Pide ayuda a gritos. Si estás solo, llama al 911 o usa tu teléfono. Solo muévete si puedes hacerlo de manera segura.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Hay un fuego en la cocina mientras estás cocinando.", options: [], correctAnswer: "NO uses agua sobre un fuego de grasa o aceite; esto causa llamaradas peligrosas. Apaga el quemador. Sofoca las llamas con una tapa o bandeja para hornear. Usa un extintor. Si el fuego se propaga, sal de inmediato y llama al 911.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Alguien te envía un correo electrónico pidiendo ayuda con un error bancario y ofrece una recompensa financiera.", options: [], correctAnswer: "No respondas. No hagas clic en ningún enlace. Esto es una estafa de phishing. Elimina el correo electrónico.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Te despiertas en medio de la noche con un fuerte dolor en el pecho.", options: [], correctAnswer: "Llama al 911 de inmediato. No esperes a ver si pasa. El dolor de pecho puede indicar un ataque cardíaco. Mastica una aspirina si está disponible y no está contraindicada.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Alguien llama diciendo que tu computadora tiene un virus y se ofrece a repararlo gratis por teléfono.", options: [], correctAnswer: "Cuelga. Esta es una estafa de soporte técnico. Las compañías legítimas no realizan llamadas no solicitadas. Nunca permitas el acceso remoto a tu computadora.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Llegas a casa y notas que una puerta o ventana ha sido forzada, sugiriendo un robo.", options: [], correctAnswer: "NO entres. Retírate del área de inmediato. Llama al 911 desde un lugar seguro. Espera a que la policía revise la casa antes de entrar.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Recibes un mensaje de texto que dice que tu cuenta bancaria ha sido congelada y debes hacer clic en un enlace de inmediato.", options: [], correctAnswer: "No hagas clic en el enlace. Esta es una estafa de phishing. Llama a tu banco directamente utilizando el número que figura al reverso de tu tarjeta.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Estás conduciendo y de repente te sientes muy mareado y confundido.", options: [], correctAnswer: "Estaciónate de manera segura lo antes posible. Enciende las luces de emergencia. No sigas conduciendo. Llama a alguien para pedir ayuda o al 911.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Un extraño llama a tu puerta afirmando ser de la compañía de luz pero no puede mostrar una identificación.", options: [], correctAnswer: "No lo dejes entrar. Pídele que muestre su identificación a través de una ventana. Llama a la compañía de servicios directamente para verificar antes de abrir.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Encuentras una pastilla no identificada en el piso de tu baño.", options: [], correctAnswer: "No la tomes. Deséchala de manera segura en un programa de recolección de medicamentos en una farmacia. No la tires por el inodoro.", explanation: "")
        ]
    )
    
    // MARK: - Exercise 2: Time and Math
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Tiempo y Matemáticas",
        instructions: "Elige la respuesta correcta para cada pregunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cuántas horas hay en un día?", options: ["12", "24", "48", "36"], correctAnswer: "24", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos días hay en un año bisiesto?", options: ["364", "365", "366", "367"], correctAnswer: "366", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si son las 3:00 p.m. y tu cita es en 2 horas y media, ¿a qué hora es la cita?", options: ["5:00 p.m.", "5:30 p.m.", "4:30 p.m.", "6:00 p.m."], correctAnswer: "5:30 p.m.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Si te vas a dormir a las 10:30 p.m. y te despiertas a las 6:30 a.m., ¿cuántas horas dormiste?", options: ["6 horas", "7 horas", "8 hours", "9 horas"], correctAnswer: "8 hours", explanation: ""),
            // pills
            ExerciseItem(id: UUID(), prompt: "Si tomas una pastilla cada 8 horas comenzando a las 8:00 a.m., ¿cuándo te toca la próxima dosis?", options: ["2:00 p.m.", "3:00 p.m.", "4:00 p.m.", "5:00 p.m."], correctAnswer: "4:00 p.m.", explanation: "8:00 a.m. más 8 horas equivale a las 4:00 p.m."),
            // dinner plan
            ExerciseItem(id: UUID(), prompt: "Una receta dice marinar por al menos 4 horas. Quieres cenar a las 6:00 p.m. ¿A qué hora debes comenzar?", options: ["A las 10:00 a.m.", "A las 12:00 p.m.", "A las 2:00 p.m.", "A las 4:00 p.m."], correctAnswer: "A las 2:00 p.m.", explanation: "6:00 p.m. menos 4 horas equivale a las 2:00 p.m."),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos segundos hay en un minuto?", options: ["30", "45", "60", "100"], correctAnswer: "60", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Tu parquímetro vence en 45 minutos. Son las 1:20 p.m. ¿A qué hora vence?", options: ["1:55 p.m.", "2:00 p.m.", "2:05 p.m.", "2:10 p.m."], correctAnswer: "2:05 p.m.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cuántos días tiene el mes de abril?", options: ["28", "29", "30", "31"], correctAnswer: "30", explanation: "")
        ]
    )
    
    // MARK: - Exercise 3: Grocery Shopping — Best Value
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Compras — Mejor Valor",
        instructions: "Para cada artículo, elige la opción que te ofrezca un mejor valor por tu dinero.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Papel higiénico: A) 4 rollos por $2.00 ($0.50 por rollo) B) 6 rollos por $2.70 ($0.45 por rollo)", options: ["Opción A — 4 rollos por $2.00", "Opción B — 6 rollos por $2.70"], correctAnswer: "Opción B — 6 rollos por $2.70", explanation: "$0.45 por rollo vs $0.50 por rollo"),
            ExerciseItem(id: UUID(), prompt: "Huevos: A) Paquete de 6 por $2.50 ($0.42 cada uno) B) Paquete de 12 por $4.00 ($0.33 cada uno)", options: ["Opción A — Paquete de 6 por $2.50", "Opción B — Paquete de 12 por $4.00"], correctAnswer: "Opción B — Paquete de 12 por $4.00", explanation: "$0.33 cada uno vs $0.42 cada uno"),
            ExerciseItem(id: UUID(), prompt: "Pan: A) Marca reconocida por $3.50 B) Marca de la tienda por $1.99", options: ["Opción A — Marca reconocida $3.50", "Opción B — Marca de la tienda $1.99"], correctAnswer: "Opción B — Marca de la tienda $1.99", explanation: "Menor costo por un producto comparable"),
            ExerciseItem(id: UUID(), prompt: "Manzanas: A) Manzanas sueltas a $1.89 la libra B) Bolsa de 3 libras por $4.50 ($1.50 la libra)", options: ["Opción A — Sueltas a $1.89 la libra", "Opción B — Bolsa de 3 libras por $4.50"], correctAnswer: "Opción B — Bolsa de 3 libras por $4.50", explanation: "$1.50 la libra vs $1.89 la libra"),
            ExerciseItem(id: UUID(), prompt: "Pasta: A) Caja de 1 lb por $2.00 B) Bolsa de 2 lb por $3.00 ($1.50 por lb)", options: ["Opción A — Caja de 1 lb por $2.00", "Opción B — Bolsa de 2 lb por $3.00"], correctAnswer: "Opción B — Bolsa de 2 lb por $3.00", explanation: "$1.50 la libra vs $2.00 la libra")
        ]
    )
    
    // MARK: - Exercise 4: Functional Writing
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Escritura Funcional",
        instructions: "Escribe una respuesta para cada situación. Toca 'Ver Respuesta' para ver una respuesta modelo.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Escribe una nota para tu niñera de mascotas, Doreen, explicando cómo cuidar a tus dos gatos mientras estás fuera por 4 días.", options: [], correctAnswer: "Hola Doreen, Gracias por cuidar a Biscuit y Ginger. Por favor, dales a cada uno media taza de alimento seco por la mañana y por la noche. Ponles agua fresca todos los días. Ginger se esconde debajo de la cama pero saldrá cuando tenga hambre. Limpia la caja de arena una vez al día. La comida está debajo del fregadero. Llámame si surge algo. — [Tu Nombre]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Escribe una nota para tu arrendador, el Sr. O'Donnell, informándole sobre una gotera en el techo de tu baño.", options: [], correctAnswer: "Estimado Sr. O'Donnell, Le escribo para informarle sobre una gotera de agua en el techo de mi baño en el Apartamento 4B. La gotera parece provenir de la unidad superior y ha estado goteando durante dos días. Se está formando una mancha de agua en el techo. Por favor, organice una reparación lo antes posible. Puede comunicarse conmigo al 555-345-6789. Gracias, [Tu Nombre]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Escribe un mensaje de texto corto a un amigo cancelando los planes de mañana porque no te sientes bien.", options: [], correctAnswer: "¡Hola! Lo siento mucho, pero tengo que cancelar lo de mañana; no me siento bien y no quiero contagiarte nada. ¿Podemos reprogramar? ¡Disculpa por el aviso tan tarde!", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Escribe una nota breve para dejarle a un familiar explicando a dónde fuiste y cuándo volverás.", options: [], correctAnswer: "Fui a la farmacia y al supermercado. Regreso para las 2 p.m. Hay sopa en el refrigerador si tienes hambre. ¡Nos vemos pronto!", explanation: "")
        ]
    )
    
    // MARK: - Exercise 5: Cooking Steps
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
            )
        ]
    )
    
    // MARK: - Exercise 6: Daily Life Skills
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Habilidades Diarias",
        instructions: "Para cada tarea, describe: qué suministros necesitas, los pasos clave y qué podría salir mal. Toca 'Ver Respuesta' para ver la guía modelo.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "¿Cómo lavas la ropa?", options: [], correctAnswer: "Suministros: ropa sucia, detergente, suavizante. Pasos: Clasifica por color y tejido. Revisa los bolsillos. Añade la cantidad correcta de detergente. Ajusta la temperatura del agua. Pásala a la secadora al terminar. Dobla pronto. Cuidado con: ropa de color mezclada con blanca, sobrecargar la máquina, olvidar la ropa húmeda dentro.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo programas una cita médica?", options: [], correctAnswer: "Suministros: teléfono, tarjeta de seguro médico, lista de síntomas, calendario. Pasos: Llama durante horario de atención. Proporciona tu nombre, fecha de nacimiento y seguro. Explica el motivo de la consulta. Anota la fecha, hora y dirección. Cuidado con: no tener la tarjeta de seguro a la mano, olvidar preguntar por instrucciones de preparación.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo envías un correo electrónico?", options: [], correctAnswer: "Suministros: computadora o teléfono inteligente, dirección de correo del destinatario. Pasos: Abre la app de correo. Toca Redactar. Ingresa la dirección del destinatario. Escribe un asunto. Escribe tu mensaje. Revisa. Presiona Enviar. Cuidado con: presionar Responder a Todos por error. Olvidar un archivo adjunto que mencionas.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo se lee una etiqueta de medicamento correctamente?", options: [], correctAnswer: "Encuentra: nombre del medicamento, dosis indicada, cuántas veces al día, instrucciones especiales como tomar con alimentos, fecha de vencimiento. Lee todas las advertencias. Cuidado con: confundir miligramos (mg) con mililitros (ml), ignorar la advertencia de tomar con alimentos.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "¿Cómo preparas una carta para enviarla por correo?", options: [], correctAnswer: "Suministros: carta escrita, sobre, estampilla (sello postal). Pasos: Dobla la carta en tres. Insértala en el sobre. Escribe el nombre y dirección del destinatario en el centro. Escribe tu dirección de remitente arriba a la izquierda. Pega la estampilla arriba a la derecha. Deposítala en el buzón. Cuidado con: invertir las direcciones, olvidar la estampilla.", explanation: "")
        ]
    )
}
