import Foundation

/// Minimal Pairs — phonological discrimination exercises (English, easy tier).
/// Words that differ by a single sound are disambiguated by meaning or context.
struct EnglishMinimalPairsData {
    static let allExercises: [Exercise] = [
        Exercise(
            title: "Minimal Pairs",
            instructions: "Read the question and choose the correct word.",
            section: .language,
            type: .minimalPairs,
            trackedType: nil,
            difficulty: .easy,
            items: [
                ExerciseItem(
                    prompt: "Which word means a small furry pet?",
                    options: ["CAT", "BAT", "HAT", "MAT"],
                    correctAnswer: "CAT",
                    explanation: "A cat is a small furry pet. Bat, hat, and mat sound similar but mean different things."
                ),
                ExerciseItem(
                    prompt: "Which word means you cook food in it?",
                    options: ["PAN", "MAN", "CAN", "FAN"],
                    correctAnswer: "PAN",
                    explanation: "You cook food in a pan."
                ),
                ExerciseItem(
                    prompt: "Which word means a number after two?",
                    options: ["THREE", "FREE", "TREE", "KNEE"],
                    correctAnswer: "THREE",
                    explanation: "Three comes after two. Free, tree, and knee sound similar."
                ),
                ExerciseItem(
                    prompt: "Which word means something you wear on your head?",
                    options: ["HAT", "CAT", "BAT", "RAT"],
                    correctAnswer: "HAT",
                    explanation: "A hat is worn on the head."
                ),
                ExerciseItem(
                    prompt: "Which word means an animal that barks?",
                    options: ["DOG", "LOG", "FOG", "JOG"],
                    correctAnswer: "DOG",
                    explanation: "A dog barks. Log, fog, and jog sound similar."
                ),
                ExerciseItem(
                    prompt: "Which word means something you sleep in?",
                    options: ["BED", "RED", "FED", "LEG"],
                    correctAnswer: "BED",
                    explanation: "You sleep in a bed."
                ),
                ExerciseItem(
                    prompt: "Which word means a white drink that comes from cows?",
                    options: ["MILK", "SILK", "MILL", "MILE"],
                    correctAnswer: "MILK",
                    explanation: "Milk is a drink from cows. Silk is a fabric."
                ),
                ExerciseItem(
                    prompt: "Which word means the opposite of cold?",
                    options: ["HOT", "POT", "DOT", "COT"],
                    correctAnswer: "HOT",
                    explanation: "Hot is the opposite of cold."
                ),
                ExerciseItem(
                    prompt: "Which word means something that unlocks a door?",
                    options: ["KEY", "SEA", "BEE", "TEA"],
                    correctAnswer: "KEY",
                    explanation: "A key unlocks a door."
                ),
                ExerciseItem(
                    prompt: "Which word means the bright circle in the night sky?",
                    options: ["MOON", "NOON", "SOON", "SPOON"],
                    correctAnswer: "MOON",
                    explanation: "The moon shines in the night sky. Noon is midday."
                ),
                ExerciseItem(
                    prompt: "Which word means things you wear on your feet?",
                    options: ["SOCKS", "ROCKS", "LOCKS", "DOCKS"],
                    correctAnswer: "SOCKS",
                    explanation: "Socks are worn on your feet."
                ),
                ExerciseItem(
                    prompt: "Which word means a vehicle you drive?",
                    options: ["CAR", "JAR", "BAR", "FAR"],
                    correctAnswer: "CAR",
                    explanation: "You drive a car. A jar holds food."
                ),
                ExerciseItem(
                    prompt: "Which word means an animal with feathers that flies?",
                    options: ["BIRD", "WORD", "HERD", "THIRD"],
                    correctAnswer: "BIRD",
                    explanation: "A bird has feathers and flies."
                ),
                ExerciseItem(
                    prompt: "Which word means something you read?",
                    options: ["BOOK", "COOK", "LOOK", "HOOK"],
                    correctAnswer: "BOOK",
                    explanation: "You read a book. A cook makes food."
                ),
                ExerciseItem(
                    prompt: "Which word means frozen water?",
                    options: ["ICE", "RICE", "MICE", "NICE"],
                    correctAnswer: "ICE",
                    explanation: "Ice is frozen water. Rice is a food."
                ),
                ExerciseItem(
                    prompt: "Which word means the opposite of day?",
                    options: ["NIGHT", "LIGHT", "RIGHT", "MIGHT"],
                    correctAnswer: "NIGHT",
                    explanation: "Night is the opposite of day."
                ),
                ExerciseItem(
                    prompt: "Which word means the body part you see with?",
                    options: ["EYE", "PIE", "TIE", "DYE"],
                    correctAnswer: "EYE",
                    explanation: "You see with your eye. A pie is a food."
                ),
                ExerciseItem(
                    prompt: "Which word means water that falls from clouds?",
                    options: ["RAIN", "MAIN", "PAIN", "TRAIN"],
                    correctAnswer: "RAIN",
                    explanation: "Rain falls from clouds. A train runs on tracks."
                ),
                ExerciseItem(
                    prompt: "Which word means something you sit on?",
                    options: ["CHAIR", "HAIR", "PAIR", "STAIR"],
                    correctAnswer: "CHAIR",
                    explanation: "You sit on a chair. Hair grows on your head."
                ),
                ExerciseItem(
                    prompt: "Which word means the sweet food that bees make?",
                    options: ["HONEY", "MONEY", "BUNNY", "SUNNY"],
                    correctAnswer: "HONEY",
                    explanation: "Bees make honey. Money is what you pay with."
                )
            ]
        )
    ]
}
