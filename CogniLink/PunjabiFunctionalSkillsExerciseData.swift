import Foundation

struct PunjabiFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        readingPrescription,
        readingMenu,
        understandingBills,
        whatWouldYouDo,
        cookingSteps,
        groceryShopping
    ]

    // MARK: - ਇੱਕ ਨੁਸਖ਼ਾ ਪੜ੍ਹਨਾ
    private static let readingPrescription = Exercise(
        id: UUID(),
        title: "ਇੱਕ ਨੁਸਖ਼ਾ ਪੜ੍ਹਨਾ",
        instructions: "ਨੁਸਖ਼ੇ ਦੀ ਜਾਣਕਾਰੀ ਪੜ੍ਹੋ ਅਤੇ ਸਵਾਲ ਦਾ ਜਵਾਬ ਦਿਓ।",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਭੋਜਨ ਦੇ ਨਾਲ ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ 1 ਗੋਲੀ ਲਓ। ਤੁਹਾਨੂੰ ਹਰ ਰੋਜ਼ ਕੁੱਲ ਕਿੰਨੀਆਂ ਗੋਲੀਆਂ ਲੈਣੀਆਂ ਚਾਹੀਦੀਆਂ ਹਨ?",
                options: ["1", "2", "3", "4"],
                correctAnswer: "2",
                explanation: "ਦਿਨ ਵਿੱਚ ਦੋ ਵਾਰ 1 ਗੋਲੀ ਲੈਣ ਦਾ ਮਤਲਬ ਹੈ 1 + 1 = 2 ਗੋਲੀਆਂ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਸੌਣ ਵੇਲੇ 2 ਗੋਲੀਆਂ ਲਓ। ਤੁਹਾਨੂੰ ਇਹ ਦਵਾਈ ਕਦੋਂ ਲੈਣੀ ਚਾਹੀਦੀ ਹੈ?",
                options: ["ਸਵੇਰੇ", "ਦੁਪਹਿਰ ਦੇ ਖਾਣੇ ਦੇ ਨਾਲ", "ਸੌਣ ਵੇਲੇ", "ਕਸਰਤ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ"],
                correctAnswer: "ਸੌਣ ਵੇਲੇ",
                explanation: "ਲੇਬਲ ਸਪੱਸ਼ਟ ਤੌਰ ‘ਤੇ ਉਨ੍ਹਾਂ ਨੂੰ ਸੌਣ ਦੇ ਸਮੇਂ ਲੈਣ ਲਈ ਕਹਿੰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਦਰਦ ਲਈ ਲੋੜ ਅਨੁਸਾਰ ਹਰ 8 ਘੰਟਿਆਂ ਬਾਅਦ 1 ਕੈਪਸੂਲ ਲਓ। ਤੁਸੀਂ ਇਸਨੂੰ 24-ਘੰਟੇ ਦਿਨ ਵਿੱਚ ਕਿੰਨੀ ਵਾਰ ਲੈ ਸਕਦੇ ਹੋ?",
                options: ["2 ਵਾਰ", "3 ਵਾਰ", "4 ਵਾਰ", "6 ਵਾਰ"],
                correctAnswer: "3 ਵਾਰ",
                explanation: "ਇੱਕ ਦਿਨ ਵਿੱਚ 24 ਘੰਟੇ ਹੁੰਦੇ ਹਨ। 24 ਨੂੰ 8 ਨਾਲ ਭਾਗ 3 ਗੁਣਾ ਹੁੰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਅਮੋਕਸੀਸਿਲਿਨ 250mg. ਰੋਜ਼ਾਨਾ ਤਿੰਨ ਵਾਰ 1 ਗੋਲੀ ਲਓ। ਫਰਿਜ ਦੇ ਵਿਚ ਰੱਖੋ. ਤੁਹਾਨੂੰ ਇਹ ਦਵਾਈ ਕਿਵੇਂ ਸਟੋਰ ਕਰਨੀ ਚਾਹੀਦੀ ਹੈ?",
                options: ["ਫਰੀਜ਼ਰ ਵਿੱਚ", "ਫਰਿੱਜ ਵਿੱਚ", "ਇੱਕ ਗਰਮ ਅਲਮਾਰੀ ਵਿੱਚ", "ਸਿੱਧੀ ਧੁੱਪ ਵਿੱਚ"],
                correctAnswer: "ਫਰਿੱਜ ਵਿੱਚ",
                explanation: "ਲੇਬਲ ਵਿੱਚ ਕਿਹਾ ਗਿਆ ਹੈ “ਕੀਪ ਫਰਿੱਜ ਵਿੱਚ ਰੱਖੋ”, ਜਿਸਦਾ ਮਤਲਬ ਹੈ ਫਰਿੱਜ ਵਿੱਚ ਸਟੋਰ ਕਰੋ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਇਸ ਦਵਾਈ ਨੂੰ ਲੈਂਦੇ ਸਮੇਂ ਸ਼ਰਾਬ ਨਾ ਪੀਓ। ਸੁਸਤੀ ਦਾ ਕਾਰਨ ਬਣ ਸਕਦਾ ਹੈ। ਇਸ ਦਵਾਈ ਦਾ ਚੇਤਾਵਨੀ ਮਾੜੇ ਪ੍ਰਭਾਵ ਕੀ ਹੈ?",
                options: ["ਸੁਸਤੀ", "ਵਧੀ ਹੋਈ ਊਰਜਾ", "ਹਾਈ ਬਲੱਡ ਪ੍ਰੈਸ਼ਰ", "ਛਿੱਕਣਾ"],
                correctAnswer: "ਸੁਸਤੀ",
                explanation: "ਲੇਬਲ ਚੇਤਾਵਨੀ ਦਿੰਦਾ ਹੈ ਕਿ ਇਹ “ਉਸਤਤਾ ਦਾ ਕਾਰਨ ਬਣ ਸਕਦਾ ਹੈ”।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: 1 ਗੋਲੀ ਰੋਜ਼ਾਨਾ ਸਵੇਰੇ ਖਾਲੀ ਪੇਟ ਲਓ। ਤੁਹਾਨੂੰ ਨਾਸ਼ਤਾ ਕਦੋਂ ਖਾਣਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਗੋਲੀ ਲੈਣ ਤੋਂ ਪਹਿਲਾਂ", "ਗੋਲੀ ਲੈਣ ਤੋਂ ਬਾਅਦ", "Tablet ਲੈਂਦੇ ਸਮੇਂ", "ਨਾਸ਼ਤਾ ਨਾ ਕਰੋ"],
                correctAnswer: "ਗੋਲੀ ਲੈਣ ਤੋਂ ਬਾਅਦ",
                explanation: "ਇਸ ਨੂੰ ਖਾਲੀ ਪੇਟ ਲੈਣ ਦਾ ਮਤਲਬ ਹੈ ਕਿ ਇਸ ਨੂੰ ਨਾਸ਼ਤਾ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਲੈਣਾ ਚਾਹੀਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਹਰ ਰੋਜ਼ ਮੂੰਹ ਨਾਲ 1 ਗੋਲੀ ਲਓ। ਮਾਤਰਾ: 30. ਰੀਫਿਲਜ਼: 2. ਕਿੰਨੇ ਰੀਫਿਲ ਦੀ ਇਜਾਜ਼ਤ ਹੈ?",
                options: ["1", "2", "3", "30"],
                correctAnswer: "2",
                explanation: "ਲੇਬਲ “ਰਿਫਿਲਜ਼: 2” ਨੂੰ ਸੂਚੀਬੱਧ ਕਰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ ਪ੍ਰਭਾਵਿਤ ਚਮੜੀ ਦੇ ਖੇਤਰ ‘ਤੇ ਪਤਲੀ ਪਰਤ ਲਗਾਓ। ਨਿਗਲ ਨਾ ਕਰੋ. ਇਹ ਦਵਾਈ ਕਿਵੇਂ ਲਾਗੂ ਕੀਤੀ ਜਾਂਦੀ ਹੈ?",
                options: ["ਨਿਗਲ ਕੇ", "ਚਮੜੀ ‘ਤੇ ਰਗੜ ਕੇ", "ਨੱਕ ਵਿੱਚ ਛਿੜਕਾਅ ਕਰਕੇ", "ਪਾਣੀ ਵਿਚ ਘੁਲ ਕੇ"],
                correctAnswer: "ਚਮੜੀ ‘ਤੇ ਰਗੜ ਕੇ",
                explanation: "ਲੇਬਲ ਕਹਿੰਦਾ ਹੈ “ਪ੍ਰਭਾਵਿਤ ਚਮੜੀ ਦੇ ਖੇਤਰ ‘ਤੇ ਪਤਲੀ ਪਰਤ ਲਗਾਓ”।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: 10/15/2026 ਤੋਂ ਬਾਅਦ ਰੱਦ ਕਰੋ। ਅੱਜ 11/01/2026 ਹੈ। ਕੀ ਤੁਸੀਂ ਇਸ ਦਵਾਈ ਨੂੰ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਲੈ ਸਕਦੇ ਹੋ?",
                options: ["ਹਾਂ", "ਨੰ", "ਕੇਵਲ ਭੋਜਨ ਨਾਲ", "ਸਿਰਫ ਰਾਤ ਨੂੰ"],
                correctAnswer: "ਨੰ",
                explanation: "ਦਵਾਈ ਦੀ ਮਿਆਦ 10/15/2026 ਨੂੰ ਖਤਮ ਹੋ ਗਈ ਸੀ, ਜੋ ਅੱਜ ਤੋਂ ਪਹਿਲਾਂ ਸੀ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ 1 ਗੋਲੀ ਲਓ। ਡੇਅਰੀ ਉਤਪਾਦਾਂ ਦੇ ਨਾਲ ਨਾ ਲਓ. ਇਹ ਗੋਲੀ ਲੈਂਦੇ ਸਮੇਂ ਤੁਹਾਨੂੰ ਕਿਹੜੇ ਪੀਣ ਵਾਲੇ ਪਦਾਰਥਾਂ ਤੋਂ ਪਰਹੇਜ਼ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਪਾਣੀ", "ਦੁੱਧ", "ਸੇਬ ਦਾ ਜੂਸ", "ਬਲੈਕ ਕੌਫੀ"],
                correctAnswer: "ਦੁੱਧ",
                explanation: "ਦੁੱਧ ਇੱਕ ਡੇਅਰੀ ਉਤਪਾਦ ਹੈ ਅਤੇ ਲੇਬਲ ਦੇ ਅਨੁਸਾਰ ਇਸ ਤੋਂ ਬਚਣਾ ਚਾਹੀਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਫਲਾਈਟ ਤੋਂ 1 ਘੰਟਾ ਪਹਿਲਾਂ 2 ਗੋਲੀਆਂ ਲਓ। ਤੁਸੀਂ ਇਹ ਦਵਾਈ ਕਿਉਂ ਲਓਗੇ?",
                options: ["ਯਾਤਰਾ ਦੌਰਾਨ ਮੋਸ਼ਨ ਬਿਮਾਰੀ ਨੂੰ ਰੋਕਣ ਲਈ", "ਘਰ ਵਿੱਚ ਬਿਹਤਰ ਸੌਣ ਲਈ", "ਸਿਰ ਦਰਦ ਦਾ ਇਲਾਜ ਕਰਨ ਲਈ", "ਚਮੜੀ ਧੱਫੜ ਦਾ ਇਲਾਜ ਕਰਨ ਲਈ"],
                correctAnswer: "ਯਾਤਰਾ ਦੌਰਾਨ ਮੋਸ਼ਨ ਬਿਮਾਰੀ ਨੂੰ ਰੋਕਣ ਲਈ",
                explanation: "ਫਲਾਈਟ ਤੋਂ ਪਹਿਲਾਂ ਦਵਾਈ ਲੈਣਾ ਆਮ ਤੌਰ ‘ਤੇ ਮੋਸ਼ਨ ਬਿਮਾਰੀ ਲਈ ਹੁੰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਅੱਖਾਂ ਦੇ ਤੁਪਕੇ। ਹਰ ਅੱਖ ਵਿੱਚ ਦਿਨ ਵਿੱਚ ਦੋ ਵਾਰ 1 ਬੂੰਦ ਪਾਓ। ਤੁਹਾਨੂੰ ਇਹ ਦਵਾਈ ਕਿੱਥੇ ਪਾਉਣੀ ਚਾਹੀਦੀ ਹੈ?",
                options: ["ਆਪਣੇ ਮੂੰਹ ਵਿੱਚ", "ਆਪਣੇ ਕੰਨਾਂ ਵਿਚ", "ਤੁਹਾਡੀਆਂ ਅੱਖਾਂ ਵਿੱਚ", "ਤੁਹਾਡੀ ਚਮੜੀ ‘ਤੇ"],
                correctAnswer: "ਤੁਹਾਡੀਆਂ ਅੱਖਾਂ ਵਿੱਚ",
                explanation: "ਲੇਬਲ “ਆਈ ਡ੍ਰੌਪ” ਅਤੇ “ਹਰੇਕ ਅੱਖ ਵਿੱਚ ਪਾਓ” ਕਹਿੰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਸਿਰ ਦਰਦ ਲਈ ਲੋੜ ਅਨੁਸਾਰ ਹਰ 4 ਤੋਂ 6 ਘੰਟਿਆਂ ਬਾਅਦ 1 ਗੋਲੀ ਲਓ। ਵੱਧ ਤੋਂ ਵੱਧ 4 ਗੋਲੀਆਂ ਪ੍ਰਤੀ ਦਿਨ। ਤੁਸੀਂ ਇੱਕ ਦਿਨ ਵਿੱਚ ਸਭ ਤੋਂ ਵੱਧ ਕਿਹੜੀਆਂ ਗੋਲੀਆਂ ਲੈ ਸਕਦੇ ਹੋ?",
                options: ["1", "2", "4", "6"],
                correctAnswer: "4",
                explanation: "ਲੇਬਲ “ਪ੍ਰਤੀ ਦਿਨ ਅਧਿਕਤਮ 4 ਗੋਲੀਆਂ” ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਪਾਣੀ ਦੇ ਪੂਰੇ ਗਲਾਸ ਨਾਲ ਲਓ। ਤੁਹਾਨੂੰ ਇਸ ਗੋਲੀ ਨਾਲ ਪਾਣੀ ਦੀ ਲੋੜ ਕਿਉਂ ਹੈ?",
                options: ["ਤੁਹਾਡੀ ਚਮੜੀ ‘ਤੇ ਇਸ ਨੂੰ ਭੰਗ ਕਰਨ ਲਈ", "ਇਸ ਨੂੰ ਨਿਗਲਣ ਅਤੇ ਪੇਟ ਖਰਾਬ ਹੋਣ ਤੋਂ ਬਚਾਉਣ ਲਈ", "ਇਸ ਦਾ ਰੰਗ ਬਦਲਣ ਲਈ", "ਬਿਹਤਰ ਸੁਆਦ ਲਈ"],
                correctAnswer: "ਇਸ ਨੂੰ ਨਿਗਲਣ ਅਤੇ ਪੇਟ ਖਰਾਬ ਹੋਣ ਤੋਂ ਬਚਾਉਣ ਲਈ",
                explanation: "ਪਾਣੀ ਦਾ ਪੂਰਾ ਗਲਾਸ ਗੋਲੀਆਂ ਨੂੰ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਨਿਗਲਣ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ ਅਤੇ ਪੇਟ ਦੀ ਰੱਖਿਆ ਕਰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਲੇਬਲ: ਆਪਣੇ ਸ਼ਾਮ ਦੇ ਖਾਣੇ ਦੇ ਨਾਲ ਰੋਜ਼ਾਨਾ 1 ਗੋਲੀ ਲਓ। ਇਹ ਲੈਣ ਦਾ ਸਭ ਤੋਂ ਵਧੀਆ ਸਮਾਂ ਕੀ ਹੈ?",
                options: ["ਨਾਸ਼ਤੇ ‘ਤੇ", "ਦੁਪਹਿਰ ਦੇ ਖਾਣੇ ‘ਤੇ", "ਰਾਤ ਦੇ ਖਾਣੇ ‘ਤੇ", "ਅੱਧੀ ਰਾਤ ਵਿੱਚ"],
                correctAnswer: "ਰਾਤ ਦੇ ਖਾਣੇ ‘ਤੇ",
                explanation: "ਸ਼ਾਮ ਦਾ ਖਾਣਾ ਰਾਤ ਦਾ ਖਾਣਾ ਹੈ।"
            )
        ]
    )

    // MARK: - ਇੱਕ ਮੇਨੂ ਪੜ੍ਹਨਾ
    private static let readingMenu = Exercise(
        id: UUID(),
        title: "ਇੱਕ ਮੇਨੂ ਪੜ੍ਹਨਾ",
        instructions: "ਸਵਾਲ ਦਾ ਜਵਾਬ ਦੇਣ ਲਈ ਮੀਨੂ ਜਾਣਕਾਰੀ ਦੀ ਵਰਤੋਂ ਕਰੋ।",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਚੀਜ਼ਬਰਗਰ $8.00, ਫ੍ਰੈਂਚ ਫਰਾਈਜ਼ $3.00, ਸੋਡਾ $2.00। ਇੱਕ ਚੀਜ਼ਬਰਗਰ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੈ?",
                options: ["$8.00", "$3.00", "$2.00", "$11.00"],
                correctAnswer: "$8.00",
                explanation: "ਮੀਨੂ ਸੂਚੀ ਦੱਸਦੀ ਹੈ ਕਿ ਚੀਜ਼ਬਰਗਰ $8.00 ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਕੌਫੀ $2.50, ਚਾਹ $2.00, ਮਫ਼ਿਨ $3.00। ਕਿਹੜੀ ਚੀਜ਼ ਸਭ ਤੋਂ ਸਸਤੀ ਹੈ?",
                options: ["ਕੌਫੀ", "ਚਾਹ", "ਮਫ਼ਿਨ", "ਉਨ੍ਹਾਂ ਦੀ ਕੀਮਤ ਵੀ ਇਹੀ ਹੈ"],
                correctAnswer: "ਚਾਹ",
                explanation: "$2.00 ਸਭ ਤੋਂ ਘੱਟ ਕੀਮਤ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਟਮਾਟਰ ਦਾ ਸੂਪ $5.00, ਗ੍ਰੀਨ ਸਲਾਦ $6.00, ਚਿਕਨ ਸੀਜ਼ਰ $9.00। ਟਮਾਟਰ ਸੂਪ ਦਾ ਇੱਕ ਕਟੋਰਾ ਕਿੰਨਾ ਹੈ?",
                options: ["$5.00", "$6.00", "$9.00", "$14.00"],
                correctAnswer: "$5.00",
                explanation: "ਟਮਾਟਰ ਸੂਪ $5.00 ਵਜੋਂ ਸੂਚੀਬੱਧ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਪੈਨਕੇਕ ਬ੍ਰੇਕਫਾਸਟ $10.00, ਫ੍ਰੈਂਚ ਟੋਸਟ $9.00, ਬੇਕਨ ਦਾ ਸਾਈਡ $4.00। ਫ੍ਰੈਂਚ ਟੋਸਟ ਦੀ ਕੀਮਤ ਕੀ ਹੈ?",
                options: ["$10.00", "$9.00", "$4.00", "$13.00"],
                correctAnswer: "$9.00",
                explanation: "ਫ੍ਰੈਂਚ ਟੋਸਟ ਨੂੰ $9.00 ਵਜੋਂ ਸੂਚੀਬੱਧ ਕੀਤਾ ਗਿਆ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਪਨੀਰ ਪੀਜ਼ਾ ਸਲਾਈਸ $4.00, ਪੇਪਰੋਨੀ ਪੀਜ਼ਾ ਸਲਾਈਸ $4.50। ਪਨੀਰ ਦੇ ਟੁਕੜੇ ਨਾਲੋਂ ਪੇਪਰੋਨੀ ਦੇ ਟੁਕੜੇ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੈ?",
                options: ["$0.50", "$1.00", "$4.50", "$8.50"],
                correctAnswer: "$0.50",
                explanation: "$4.50 ਘਟਾਓ $4.00 $0.50 ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਚਿਕਨ ਸੈਂਡਵਿਚ $7.00, ਮੱਛੀ ਅਤੇ ਚਿਪਸ $11.00। ਤੁਹਾਡੇ ਕੋਲ $10.00 ਹਨ। ਤੁਸੀਂ ਕਿਹੜਾ ਭੋਜਨ ਬਰਦਾਸ਼ਤ ਕਰ ਸਕਦੇ ਹੋ?",
                options: ["ਚਿਕਨ ਸੈਂਡਵਿਚ", "ਮੱਛੀ ਅਤੇ ਚਿਪਸ", "ਦੋਨੋ ਭੋਜਨ", "ਨਾ ਹੀ ਖਾਣਾ"],
                correctAnswer: "ਚਿਕਨ ਸੈਂਡਵਿਚ",
                explanation: "$7.00 $10.00 ਤੋਂ ਘੱਟ ਹੈ, ਪਰ $11.00 ਵੱਧ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਚਾਕਲੇਟ ਆਈਸ ਕਰੀਮ $4.00, ਐਪਲ ਪਾਈ $5.00, ਪਾਈ $1.50 ਵਿੱਚ ਵਨੀਲਾ ਆਈਸ ਕਰੀਮ ਸ਼ਾਮਲ ਕਰੋ। ਵਨੀਲਾ ਆਈਸ ਕ੍ਰੀਮ ਦੇ ਨਾਲ ਐਪਲ ਪਾਈ ਕਿੰਨੀ ਹੈ?",
                options: ["$5.00", "$6.50", "$9.00", "$4.00"],
                correctAnswer: "$6.50",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਟਰਕੀ ਰੈਪ $8.50, ਚਿਪਸ $1.50, ਜੂਸ $2.00। ਟਰਕੀ ਰੈਪ ਅਤੇ ਜੂਸ ਦੀ ਕੁੱਲ ਕੀਮਤ ਕਿੰਨੀ ਹੈ?",
                options: ["$8.50", "$10.00", "$10.50", "$12.00"],
                correctAnswer: "$10.50",
                explanation: "$8.50 + $2.00 = $10.50।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਵੈਜੀਟੇਬਲ ਸੂਪ $4.00, ਬੀਫ ਸਟੂ $7.00। ਕਿਸ ਪਕਵਾਨ ਵਿੱਚ ਮੀਟ ਹੁੰਦਾ ਹੈ?",
                options: ["ਸਬਜ਼ੀ ਸੂਪ", "ਬੀਫ ਸਟੂਅ", "ਦੋਵੇਂ", "ਨਾ ਹੀ"],
                correctAnswer: "ਬੀਫ ਸਟੂਅ",
                explanation: "ਬੀਫ ਮਾਸ ਦੀ ਇੱਕ ਕਿਸਮ ਹੈ; ਸਬਜ਼ੀਆਂ ਨਹੀਂ ਹਨ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਟੈਕੋ $3.00, ਕਵੇਸਾਡੀਲਾ $6.00, ਸੋਡਾ $2.00। Quesadilla ਦੀ ਕੀਮਤ ਕੀ ਹੈ?",
                options: ["$3.00", "$6.00", "$2.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "ਮੀਨੂ Quesadilla ਨੂੰ $6.00 ਵਜੋਂ ਸੂਚੀਬੱਧ ਕਰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਸਪੈਗੇਟੀ $12.00, ਲਾਸਗਨਾ $14.00, ਗਾਰਲਿਕ ਬਰੈੱਡ $3.00। ਗਾਰਲਿਕ ਬਰੈੱਡ ਦਾ ਇੱਕ ਸਾਈਡ ਕਿੰਨਾ ਹੁੰਦਾ ਹੈ?",
                options: ["$12.00", "$14.00", "$3.00", "$15.00"],
                correctAnswer: "$3.00",
                explanation: "ਗਾਰਲਿਕ ਬਰੈੱਡ ਨੂੰ $3.00 ਵਜੋਂ ਸੂਚੀਬੱਧ ਕੀਤਾ ਗਿਆ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੀਨੂ: ਅੰਡੇ ਬੇਨੀ $11.00, ਓਟਮੀਲ $6.00, ਫਲਾਂ ਦਾ ਕਟੋਰਾ $5.00। ਕਿਹੜਾ ਨਾਸ਼ਤਾ ਸਭ ਤੋਂ ਮਹਿੰਗਾ ਹੈ?",
                options: ["ਅੰਡੇ ਬੈਨੀ", "ਓਟਮੀਲ", "ਫਲ ਬਾਊਲ", "ਉਹ ਇੱਕੋ ਕੀਮਤ ਹਨ"],
                correctAnswer: "ਅੰਡੇ ਬੈਨੀ",
                explanation: "$11.00 ਸੂਚੀ ਵਿੱਚ ਸਭ ਤੋਂ ਉੱਚੀ ਕੀਮਤ ਹੈ।"
            )
        ]
    )

    // MARK: - ਬਿੱਲਾਂ ਨੂੰ ਸਮਝਣਾ
    private static let understandingBills = Exercise(
        id: UUID(),
        title: "ਬਿੱਲਾਂ ਨੂੰ ਸਮਝਣਾ",
        instructions: "ਬਿੱਲ ਦੀ ਜਾਣਕਾਰੀ ਪੜ੍ਹੋ ਅਤੇ ਸਵਾਲ ਦਾ ਜਵਾਬ ਦਿਓ।",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "ਇਲੈਕਟ੍ਰਿਕ ਬਿੱਲ: ਕੁੱਲ ਬਕਾਇਆ: $45.00। ਨਿਯਤ ਮਿਤੀ: 15 ਜੁਲਾਈ। ਤੁਹਾਨੂੰ ਕਿੰਨੀ ਰਕਮ ਦਾ ਭੁਗਤਾਨ ਕਰਨ ਦੀ ਲੋੜ ਹੈ?",
                options: ["$15.00", "$45.00", "15 ਜੁਲਾਈ", "ਮੁਫ਼ਤ"],
                correctAnswer: "$45.00",
                explanation: "ਕੁੱਲ ਬਕਾਇਆ $45.00 ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਪਾਣੀ ਦਾ ਬਿੱਲ: ਨਿਯਤ ਮਿਤੀ: ਅਕਤੂਬਰ 10। ਦੇਰ ਨਾਲ ਫੀਸ: $5.00। ਅੱਜ 12 ਅਕਤੂਬਰ ਹੈ। ਜੇਕਰ ਤੁਸੀਂ ਅੱਜ ਭੁਗਤਾਨ ਕਰਦੇ ਹੋ ਤਾਂ ਕੀ ਹੋਵੇਗਾ?",
                options: ["ਤੁਸੀਂ ਨਿਯਮਤ ਰਕਮ ਦਾ ਭੁਗਤਾਨ ਕਰੋ", "You pay a $5.00 late fee", "ਤੁਹਾਨੂੰ ਛੂਟ ਮਿਲਦੀ ਹੈ", "ਕੁਝ ਨਹੀਂ"],
                correctAnswer: "You pay a $5.00 late fee",
                explanation: "ਕਿਉਂਕਿ ਅੱਜ ਨਿਯਤ ਮਿਤੀ ਤੋਂ ਬਾਅਦ ਹੈ, ਲੇਟ ਫੀਸ ਲਾਗੂ ਕੀਤੀ ਜਾਂਦੀ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਇੰਟਰਨੈੱਟ ਬਿੱਲ: ਮਹੀਨਾਵਾਰ ਚਾਰਜ: $60.00। ਆਟੋਪੇਅ ਛੋਟ: -$5.00। ਆਟੋਪੇ ਨਾਲ ਅੰਤਮ ਕੀਮਤ ਕੀ ਹੈ?",
                options: ["$60.00", "$65.00", "$55.00", "$5.00"],
                correctAnswer: "$55.00",
                explanation: "$60.00 ਘਟਾਓ $5.00 ਬਰਾਬਰ $55.00।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਗੈਸ ਬਿੱਲ: ਮੌਜੂਦਾ ਖਰਚੇ: $30.00। ਅਦਾਇਗੀਸ਼ੁਦਾ ਬਕਾਇਆ: $10.00। ਕੁੱਲ ਬਕਾਇਆ: $40.00। ਪਿਛਲੇ ਮਹੀਨੇ ਤੋਂ ਕਿੰਨਾ ਭੁਗਤਾਨ ਨਹੀਂ ਕੀਤਾ ਗਿਆ ਹੈ?",
                options: ["$30.00", "$10.00", "$40.00", "$0.00"],
                correctAnswer: "$10.00",
                explanation: "“ਅਦਾਇਗੀਸ਼ੁਦਾ ਬਕਾਇਆ” ਪਿਛਲੇ ਮਹੀਨੇ ਦੇ ਕੈਰੀਓਵਰ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ, ਜੋ ਕਿ $10.00 ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਫ਼ੋਨ ਬਿੱਲ: ਨਿਯਤ ਮਿਤੀ: 20 ਜੂਨ। ਮੌਜੂਦਾ ਮਿਤੀ: 15 ਜੂਨ। ਸਮੇਂ ਸਿਰ ਇਸ ਬਿੱਲ ਦਾ ਭੁਗਤਾਨ ਕਰਨ ਲਈ ਤੁਹਾਡੇ ਕੋਲ ਕਿੰਨੇ ਦਿਨ ਬਾਕੀ ਹਨ?",
                options: ["5 ਦਿਨ", "20 ਦਿਨ", "15 ਦਿਨ", "1 ਦਿਨ"],
                correctAnswer: "5 ਦਿਨ",
                explanation: "20 ਜੂਨ ਘਟਾਓ 15 ਜੂਨ 5 ਦਿਨ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਕੇਬਲ ਬਿੱਲ: ਕੁੱਲ ਬਕਾਇਆ: $80.00। ਇਸ ਨੂੰ ਭੁਗਤਾਨਯੋਗ: “XYZ ਕੇਬਲ ਕੰਪਨੀ.” ਚੈੱਕ ਕਿਸ ਨੂੰ ਕੀਤਾ ਜਾਣਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["$80.00", "XYZ ਕੇਬਲ ਕੰ.", "ਕੇਬਲ ਮੁੰਡਾ", "ਨਕਦ"],
                correctAnswer: "XYZ ਕੇਬਲ ਕੰ.",
                explanation: "ਬਿੱਲ “XYZ ਕੇਬਲ ਕੰਪਨੀ” ਨੂੰ ਭੁਗਤਾਨ ਕਰਨ ਬਾਰੇ ਦੱਸਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਉਪਯੋਗਤਾ ਬਿੱਲ: ਪਾਣੀ: $20.00, ਗੈਸ: $30.00, ਇਲੈਕਟ੍ਰਿਕ: $50.00। ਕੁੱਲ: $100.00। ਕਿਹੜੀ ਸਹੂਲਤ ਸੇਵਾ ਸਭ ਤੋਂ ਵੱਧ ਖਰਚ ਕਰਦੀ ਹੈ?",
                options: ["ਪਾਣੀ", "ਗੈਸ", "ਇਲੈਕਟ੍ਰਿਕ", "ਉਨ੍ਹਾਂ ਦੀ ਕੀਮਤ ਵੀ ਇਹੀ ਹੈ"],
                correctAnswer: "ਇਲੈਕਟ੍ਰਿਕ",
                explanation: "ਇਲੈਕਟ੍ਰਿਕ $50.00 ਹੈ, ਜੋ ਕਿ ਸਭ ਤੋਂ ਵੱਧ ਰਕਮ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਸਟ੍ਰੀਮਿੰਗ ਸੇਵਾ ਬਿੱਲ: ਖਾਤਾ ਸਥਿਤੀ: ਮੁਅੱਤਲ। ਬਕਾਇਆ ਬਕਾਇਆ: $15.00। ਸੇਵਾ ਕੰਮ ਕਿਉਂ ਨਹੀਂ ਕਰ ਰਹੀ ਹੈ?",
                options: ["ਇੰਟਰਨੈੱਟ ਬੰਦ ਹੈ", "ਟੀਵੀ ਟੁੱਟ ਗਿਆ ਹੈ", "ਭੁਗਤਾਨ ਨਾ ਕੀਤੇ ਬੈਲੰਸ ਲਈ ਖਾਤਾ ਮੁਅੱਤਲ ਕੀਤਾ ਗਿਆ ਹੈ", "ਸਟ੍ਰੀਮ ਬਫਰਿੰਗ ਹੈ"],
                correctAnswer: "ਭੁਗਤਾਨ ਨਾ ਕੀਤੇ ਬੈਲੰਸ ਲਈ ਖਾਤਾ ਮੁਅੱਤਲ ਕੀਤਾ ਗਿਆ ਹੈ",
                explanation: "ਬਿੱਲ ਕਹਿੰਦਾ ਹੈ ਕਿ ਖਾਤੇ ਦੀ ਸਥਿਤੀ ਨੂੰ ਮੁਅੱਤਲ ਕਰ ਦਿੱਤਾ ਗਿਆ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਜਿਮ ਮੈਂਬਰਸ਼ਿਪ: ਸਲਾਨਾ ਫੀਸ: $120.00। ਮਹੀਨਾਵਾਰ ਫੀਸ: $10.00। ਸਾਲਾਨਾ ਫੀਸ ਕਿੰਨੀ ਹੈ?",
                options: ["$10.00", "$120.00", "$130.00", "$12.00"],
                correctAnswer: "$120.00",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਹੀਟਿੰਗ ਬਿੱਲ: ਜਨਵਰੀ: $110.00। ਜੁਲਾਈ: $20.00। ਜਨਵਰੀ ‘ਚ ਬਿੱਲ ਜ਼ਿਆਦਾ ਕਿਉਂ?",
                options: ["ਗਰਮੀਆਂ ਵਿੱਚ ਗੈਸ ਜ਼ਿਆਦਾ ਮਹਿੰਗੀ ਹੁੰਦੀ ਹੈ", "ਸਰਦੀਆਂ ਦੇ ਮਹੀਨੇ ਜਨਵਰੀ ਵਿੱਚ ਜ਼ਿਆਦਾ ਗਰਮੀ ਵਰਤੀ ਜਾਂਦੀ ਹੈ", "ਜਨਵਰੀ ਵਿੱਚ ਘਰ ਖਾਲੀ ਹੈ", "ਘੜੀ ਬਦਲ ਗਈ"],
                correctAnswer: "ਸਰਦੀਆਂ ਦੇ ਮਹੀਨੇ ਜਨਵਰੀ ਵਿੱਚ ਜ਼ਿਆਦਾ ਗਰਮੀ ਵਰਤੀ ਜਾਂਦੀ ਹੈ",
                explanation: "ਸਰਦੀਆਂ ਦੇ ਮੌਸਮ ਲਈ ਘਰ ਨੂੰ ਗਰਮ ਕਰਨ, ਊਰਜਾ ਦੀ ਵਰਤੋਂ ਵਧਾਉਣ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਕ੍ਰੈਡਿਟ ਕਾਰਡ ਬਿੱਲ: ਘੱਟੋ-ਘੱਟ ਭੁਗਤਾਨ: $25.00। ਕੁੱਲ ਬਕਾਇਆ: $500.00। ਲੇਟ ਜੁਰਮਾਨੇ ਤੋਂ ਬਚਣ ਲਈ ਤੁਸੀਂ ਇਸ ਮਹੀਨੇ ਸਭ ਤੋਂ ਘੱਟ ਕਿੰਨੀ ਰਕਮ ਅਦਾ ਕਰ ਸਕਦੇ ਹੋ?",
                options: ["$25.00", "$500.00", "$0.00", "$475.00"],
                correctAnswer: "$25.00",
                explanation: "$25.00 ਦਾ “ਘੱਟੋ-ਘੱਟ ਭੁਗਤਾਨ” ਸਭ ਤੋਂ ਘੱਟ ਸਵੀਕਾਰਯੋਗ ਰਕਮ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਮੈਡੀਕਲ ਬਿੱਲ: ਕੁੱਲ ਖਰਚਾ: $150.00। ਬੀਮਾ ਕਵਰਡ: $120.00। ਮਰੀਜ਼ ਦੀ ਜ਼ਿੰਮੇਵਾਰੀ: $30.00। ਤੁਹਾਡਾ ਕਿੰਨਾ ਕਰਜ਼ਾ ਹੈ?",
                options: ["$150.00", "$120.00", "$30.00", "$0.00"],
                correctAnswer: "$30.00",
                explanation: "ਮਰੀਜ਼ ਦੀ ਜ਼ਿੰਮੇਵਾਰੀ ਮਰੀਜ਼ ਦੀ ਬਕਾਇਆ ਰਕਮ ਹੈ, ਜੋ ਕਿ $30.00 ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਅਖਬਾਰਾਂ ਦੀ ਗਾਹਕੀ: ਅਗਲੀ ਨਵੀਨੀਕਰਨ ਦੀ ਮਿਤੀ: ਦਸੰਬਰ 31, 2026। ਜੇਕਰ ਤੁਸੀਂ ਨਵਿਆਉਣ ਤੋਂ ਪਹਿਲਾਂ ਰੱਦ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ, ਤਾਂ ਤੁਹਾਨੂੰ ਕਦੋਂ ਕਾਲ ਕਰਨੀ ਚਾਹੀਦੀ ਹੈ?",
                options: ["31 ਦਸੰਬਰ, 2026 ਤੋਂ ਪਹਿਲਾਂ", "31 ਦਸੰਬਰ, 2026 ਤੋਂ ਬਾਅਦ", "ਜਨਵਰੀ 2027 ਵਿੱਚ", "ਕਦੇ ਨਹੀਂ"],
                correctAnswer: "31 ਦਸੰਬਰ, 2026 ਤੋਂ ਪਹਿਲਾਂ",
                explanation: "ਨਵਿਆਉਣ ਦੀ ਮਿਤੀ ਤੋਂ ਪਹਿਲਾਂ ਰੱਦ ਕਰਨ ਨਾਲ ਅਗਲਾ ਬਿਲਿੰਗ ਚੱਕਰ ਰੁਕ ਜਾਂਦਾ ਹੈ।"
            )
        ]
    )

    // MARK: - ਤੁਸੀਂ ਕੀ ਕਰੋਗੇ?
    private static let whatWouldYouDo = Exercise(
        id: UUID(),
        title: "ਤੁਸੀਂ ਕੀ ਕਰੋਗੇ?",
        instructions: "ਦੱਸੀ ਗਈ ਸਥਿਤੀ ਲਈ ਸਭ ਤੋਂ ਵਧੀਆ ਜਵਾਬ ਚੁਣੋ।",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਆਪਣੀ ਰਸੋਈ ਵਿੱਚ ਧੂੰਏਂ ਦੀ ਗੰਧ ਲੈਂਦੇ ਹੋ ਪਰ ਕੋਈ ਅੱਗ ਨਹੀਂ ਦੇਖਦੇ। ਤੁਹਾਨੂੰ ਪਹਿਲਾਂ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਇਸ ਨੂੰ ਨਜ਼ਰਅੰਦਾਜ਼ ਕਰੋ", "ਖਿੜਕੀਆਂ ਖੋਲ੍ਹੋ ਅਤੇ ਸਟੋਵ ਦੀ ਜਾਂਚ ਕਰੋ", "ਗੱਲਬਾਤ ਕਰਨ ਲਈ ਇੱਕ ਦੋਸਤ ਨੂੰ ਕਾਲ ਕਰੋ", "ਵਾਪਸ ਸੌਂ ਜਾਓ"],
                correctAnswer: "ਖਿੜਕੀਆਂ ਖੋਲ੍ਹੋ ਅਤੇ ਸਟੋਵ ਦੀ ਜਾਂਚ ਕਰੋ",
                explanation: "ਸਟੋਵ ਦੀ ਜਾਂਚ ਕਰਨਾ ਆਮ ਮਾਮੂਲੀ ਧੂੰਏਂ ਦੇ ਮੁੱਦਿਆਂ ਨੂੰ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਪਛਾਣਨ ਅਤੇ ਹੱਲ ਕਰਨ ਲਈ ਪਹਿਲਾ ਕਦਮ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਲੋਕ ਸਟੋਰ ‘ਤੇ ਹੋ ਅਤੇ ਮਹਿਸੂਸ ਕਰੋ ਕਿ ਤੁਸੀਂ ਘਰ ਵਿੱਚ ਆਪਣਾ ਬਟੂਆ ਭੁੱਲ ਗਏ ਹੋ। ਸਭ ਤੋਂ ਵਧੀਆ ਵਿਕਲਪ ਕੀ ਹੈ?",
                options: ["ਬਿਨਾਂ ਭੁਗਤਾਨ ਕੀਤੇ ਕਰਿਆਨੇ ਲੈ ਜਾਓ", "ਕੈਸ਼ੀਅਰ ਨੂੰ ਆਪਣਾ ਕਾਰਟ ਫੜਨ ਲਈ ਕਹੋ ਅਤੇ ਇਸਨੂੰ ਲੈਣ ਲਈ ਘਰ ਜਾਓ", "ਸਟੋਰ ਨੂੰ ਰੋਣਾ ਛੱਡ ਦਿਓ", "ਮੈਨੇਜਰ ਨਾਲ ਬਹਿਸ ਕਰੋ"],
                correctAnswer: "ਕੈਸ਼ੀਅਰ ਨੂੰ ਆਪਣਾ ਕਾਰਟ ਫੜਨ ਲਈ ਕਹੋ ਅਤੇ ਇਸਨੂੰ ਲੈਣ ਲਈ ਘਰ ਜਾਓ",
                explanation: "ਕਲਰਕ ਨੂੰ ਚੀਜ਼ਾਂ ਰੱਖਣ ਲਈ ਕਹਿਣਾ ਨਿਮਰ ਅਤੇ ਮਿਆਰੀ ਜਵਾਬ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਇੱਕ ਕੱਚਾ ਅੰਡੇ ਰਸੋਈ ਦੇ ਫਰਸ਼ ‘ਤੇ ਸੁੱਟ ਦਿੰਦੇ ਹੋ ਅਤੇ ਇਹ ਟੁੱਟ ਜਾਂਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਇਸ ਨੂੰ ਕੱਲ੍ਹ ਤੱਕ ਉੱਥੇ ਹੀ ਛੱਡ ਦਿਓ", "ਇਸਨੂੰ ਕਾਗਜ਼ ਦੇ ਤੌਲੀਏ ਅਤੇ ਸਾਬਣ ਨਾਲ ਤੁਰੰਤ ਪੂੰਝੋ", "ਇਸ ਨੂੰ ਗਲੀਚੇ ਨਾਲ ਢੱਕ ਦਿਓ", "ਬਿੱਲੀ ਨੂੰ ਖਾਣ ਦਿਓ"],
                correctAnswer: "ਇਸਨੂੰ ਕਾਗਜ਼ ਦੇ ਤੌਲੀਏ ਅਤੇ ਸਾਬਣ ਨਾਲ ਤੁਰੰਤ ਪੂੰਝੋ",
                explanation: "ਕੱਚੇ ਅੰਡੇ ਤਿਲਕਣ ਵਾਲੇ ਹੁੰਦੇ ਹਨ ਅਤੇ ਬੈਕਟੀਰੀਆ ਨੂੰ ਆਕਰਸ਼ਿਤ ਕਰਦੇ ਹਨ, ਇਸ ਲਈ ਉਹਨਾਂ ਨੂੰ ਜਲਦੀ ਸਾਫ਼ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਡਾ ਦੋਸਤ ਤੁਹਾਨੂੰ ਦੱਸਦਾ ਹੈ ਕਿ ਕੱਲ੍ਹ ਉਨ੍ਹਾਂ ਦੇ ਕੁੱਤੇ ਦੀ ਮੌਤ ਹੋ ਗਈ ਸੀ। ਤੁਹਾਨੂੰ ਕੀ ਕਹਿਣਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਜੋ ਕਿ ਮਜ਼ਾਕੀਆ ਹੈ", "ਮੈਨੂੰ ਤੁਹਾਡੇ ਨੁਕਸਾਨ ਲਈ ਬਹੁਤ ਅਫ਼ਸੋਸ ਹੈ", "ਤੁਹਾਨੂੰ ਇਸਦੀ ਬਜਾਏ ਇੱਕ ਬਿੱਲੀ ਲੈਣੀ ਚਾਹੀਦੀ ਹੈ", "ਕੀ ਮੈਨੂੰ ਉਨ੍ਹਾਂ ਦੇ ਖਿਡੌਣੇ ਮਿਲ ਸਕਦੇ ਹਨ?"],
                correctAnswer: "ਮੈਨੂੰ ਤੁਹਾਡੇ ਨੁਕਸਾਨ ਲਈ ਬਹੁਤ ਅਫ਼ਸੋਸ ਹੈ",
                explanation: "ਸੰਵੇਦਨਾ ਪੇਸ਼ ਕਰਨਾ ਸੋਗ ਪ੍ਰਤੀ ਹਮਦਰਦੀ ਭਰਿਆ ਜਵਾਬ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਨੂੰ ਇੱਕ ਅਣਜਾਣ ਨੰਬਰ ਤੋਂ ਇੱਕ ਫ਼ੋਨ ਕਾਲ ਪ੍ਰਾਪਤ ਹੁੰਦੀ ਹੈ ਜਿਸ ਵਿੱਚ ਦਾਅਵਾ ਕੀਤਾ ਜਾਂਦਾ ਹੈ ਕਿ ਤੁਸੀਂ ਇੱਕ ਲਾਟਰੀ ਜਿੱਤੀ ਹੈ ਅਤੇ ਤੁਹਾਡੇ ਬੈਂਕ ਦੇ ਵੇਰਵੇ ਪੁੱਛ ਰਹੇ ਹਨ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਉਨ੍ਹਾਂ ਨੂੰ ਤੁਰੰਤ ਆਪਣੇ ਵੇਰਵੇ ਦਿਓ", "ਬੰਦ ਕਰੋ ਅਤੇ ਕੋਈ ਵੀ ਨਿੱਜੀ ਵੇਰਵੇ ਸਾਂਝੇ ਨਾ ਕਰੋ", "ਉਹਨਾਂ ਨੂੰ ਬਾਅਦ ਵਿੱਚ ਕਾਲ ਕਰਨ ਲਈ ਕਹੋ", "ਜਸ਼ਨ ਮਨਾਉਣ ਲਈ ਆਪਣੇ ਪਰਿਵਾਰ ਨੂੰ ਕਾਲ ਕਰੋ"],
                correctAnswer: "ਬੰਦ ਕਰੋ ਅਤੇ ਕੋਈ ਵੀ ਨਿੱਜੀ ਵੇਰਵੇ ਸਾਂਝੇ ਨਾ ਕਰੋ",
                explanation: "ਅਣਜਾਣ ਕਾਲਰਾਂ ਤੋਂ ਸੰਵੇਦਨਸ਼ੀਲ ਬੈਂਕ ਵੇਰਵਿਆਂ ਲਈ ਬੇਨਤੀਆਂ ਆਮ ਘੁਟਾਲੇ ਹਨ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਇੱਕ ਨਿੱਘੇ ਕਮਰੇ ਵਿੱਚ ਖੜ੍ਹੇ ਹੋਣ ਵੇਲੇ ਤੁਹਾਨੂੰ ਚੱਕਰ ਆਉਣੇ ਅਤੇ ਹਲਕਾ ਸਿਰ ਮਹਿਸੂਸ ਹੁੰਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਖੜ੍ਹੇ ਰਹੋ ਅਤੇ ਆਪਣੀਆਂ ਅੱਖਾਂ ਬੰਦ ਕਰੋ", "ਤੁਰੰਤ ਬੈਠੋ ਅਤੇ ਥੋੜ੍ਹਾ ਜਿਹਾ ਪਾਣੀ ਪੀਓ", "ਬਾਥਰੂਮ ਵੱਲ ਭੱਜੋ", "ਆਲੇ-ਦੁਆਲੇ ਘੁੰਮਾਓ"],
                correctAnswer: "ਤੁਰੰਤ ਬੈਠੋ ਅਤੇ ਥੋੜ੍ਹਾ ਜਿਹਾ ਪਾਣੀ ਪੀਓ",
                explanation: "ਬੈਠਣਾ ਡਿੱਗਣ ਨੂੰ ਰੋਕਦਾ ਹੈ, ਅਤੇ ਪਾਣੀ ਡੀਹਾਈਡਰੇਸ਼ਨ ਤੋਂ ਠੀਕ ਹੋਣ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਆਪਣੀ ਰਸੋਈ ਦੇ ਸਿੰਕ ਦੇ ਹੇਠਾਂ ਤੋਂ ਪਾਣੀ ਲੀਕ ਹੁੰਦਾ ਦੇਖਦੇ ਹੋ। ਸਭ ਤੋਂ ਪਹਿਲਾਂ ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਇੱਕ ਚਿੱਤਰਕਾਰ ਨੂੰ ਕਾਲ ਕਰੋ", "ਪਾਣੀ ਨੂੰ ਫੜਨ ਲਈ ਲੀਕ ਦੇ ਹੇਠਾਂ ਇੱਕ ਬਾਲਟੀ ਰੱਖੋ", "ਰਸੋਈ ਦੇ ਫਰਸ਼ ਨੂੰ ਬਾਅਦ ਵਿੱਚ ਮੋਪ ਕਰੋ", "ਲਾਈਟਾਂ ਬੰਦ ਕਰ ਦਿਓ"],
                correctAnswer: "ਪਾਣੀ ਨੂੰ ਫੜਨ ਲਈ ਲੀਕ ਦੇ ਹੇਠਾਂ ਇੱਕ ਬਾਲਟੀ ਰੱਖੋ",
                explanation: "ਜਦੋਂ ਤੁਸੀਂ ਮੁਰੰਮਤ ਦੀ ਮੰਗ ਕਰਦੇ ਹੋ ਤਾਂ ਇੱਕ ਬਾਲਟੀ ਪਾਣੀ ਦੇ ਨੁਕਸਾਨ ਨੂੰ ਤੁਰੰਤ ਰੋਕ ਦਿੰਦੀ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਨੂੰ ਡਿਨਰ ਪਾਰਟੀ ਲਈ ਸੱਦਾ ਦਿੱਤਾ ਗਿਆ ਹੈ ਪਰ ਤੁਸੀਂ ਨਹੀਂ ਜਾ ਸਕਦੇ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਬਸ ਦਿਖਾ ਨਾ ਕਰੋ", "ਮੇਜ਼ਬਾਨ ਨੂੰ ਪਹਿਲਾਂ ਹੀ ਦੱਸ ਦਿਓ ਕਿ ਤੁਸੀਂ ਹਾਜ਼ਰ ਨਹੀਂ ਹੋ ਸਕਦੇ", "ਬਿਨਾਂ ਚੇਤਾਵਨੀ ਦੇ ਦੇਰ ਨਾਲ ਦਿਖਾਓ", "ਜਵਾਬ ਦੇਣ ਦੀ ਬਜਾਏ ਇੱਕ ਤੋਹਫ਼ਾ ਭੇਜੋ"],
                correctAnswer: "ਮੇਜ਼ਬਾਨ ਨੂੰ ਪਹਿਲਾਂ ਹੀ ਦੱਸ ਦਿਓ ਕਿ ਤੁਸੀਂ ਹਾਜ਼ਰ ਨਹੀਂ ਹੋ ਸਕਦੇ",
                explanation: "ਹੋਸਟ ਨੂੰ ਪਹਿਲਾਂ ਹੀ ਸੂਚਿਤ ਕਰਨਾ ਨਿਮਰਤਾ ਵਾਲਾ ਹੁੰਦਾ ਹੈ ਅਤੇ ਉਹਨਾਂ ਨੂੰ ਆਪਣੀਆਂ ਯੋਜਨਾਵਾਂ ਨੂੰ ਅਨੁਕੂਲ ਕਰਨ ਦਿੰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਗਲਤੀ ਨਾਲ ਇੱਕ ਦੋਸਤ ਦੇ ਘਰ ਇੱਕ ਸਜਾਵਟੀ ਫੁੱਲਦਾਨ ਤੋੜ ਦਿੰਦੇ ਹੋ। ਸਹੀ ਜਵਾਬ ਕੀ ਹੈ?",
                options: ["ਸੋਫੇ ਦੇ ਹੇਠਾਂ ਟੁਕੜਿਆਂ ਨੂੰ ਲੁਕਾਓ", "ਮੁਆਫੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਬਦਲਣ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ", "ਦਿਖਾਵਾ ਕਰੋ ਕਿ ਤੁਸੀਂ ਅਜਿਹਾ ਨਹੀਂ ਕੀਤਾ", "ਕੁੱਤੇ ਨੂੰ ਦੋਸ਼ ਦਿਓ"],
                correctAnswer: "ਮੁਆਫੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਬਦਲਣ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ",
                explanation: "ਨੁਕਸਾਨ ਨੂੰ ਠੀਕ ਕਰਨ ਲਈ ਇਮਾਨਦਾਰੀ ਅਤੇ ਪੇਸ਼ਕਸ਼ ਨਿਮਰ ਅਤੇ ਜ਼ਿੰਮੇਵਾਰ ਵਿਵਹਾਰ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਆਪਣੇ ਘਰ ਦੀਆਂ ਚਾਬੀਆਂ ਨਹੀਂ ਲੱਭ ਸਕਦੇ ਅਤੇ ਤੁਹਾਨੂੰ ਬਾਹਰੋਂ ਤਾਲਾ ਲੱਗਾ ਹੋਇਆ ਹੈ। ਸਭ ਤੋਂ ਵਧੀਆ ਕਦਮ ਕੀ ਹੈ?",
                options: ["ਅੰਦਰ ਜਾਣ ਲਈ ਇੱਕ ਖਿੜਕੀ ਤੋੜੋ", "ਪਰਿਵਾਰ ਦੇ ਕਿਸੇ ਮੈਂਬਰ ਨੂੰ ਵਾਧੂ ਚਾਬੀ ਜਾਂ ਤਾਲਾ ਬਣਾਉਣ ਵਾਲੇ ਨਾਲ ਕਾਲ ਕਰੋ", "ਦਲਾਨ ‘ਤੇ ਸਦਾ ਲਈ ਉਡੀਕ ਕਰੋ", "ਦਰਵਾਜ਼ੇ ਨੂੰ ਲੱਤ ਮਾਰੋ"],
                correctAnswer: "ਪਰਿਵਾਰ ਦੇ ਕਿਸੇ ਮੈਂਬਰ ਨੂੰ ਵਾਧੂ ਚਾਬੀ ਜਾਂ ਤਾਲਾ ਬਣਾਉਣ ਵਾਲੇ ਨਾਲ ਕਾਲ ਕਰੋ",
                explanation: "ਇੱਕ ਵਾਧੂ ਕੁੰਜੀ ਪ੍ਰਾਪਤ ਕਰਨਾ ਜਾਂ ਕਿਸੇ ਪੇਸ਼ੇਵਰ ਨੂੰ ਕਾਲ ਕਰਨਾ ਦਾਖਲਾ ਪ੍ਰਾਪਤ ਕਰਨ ਦਾ ਸਭ ਤੋਂ ਸੁਰੱਖਿਅਤ ਤਰੀਕਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਦੇਖਿਆ ਕਿ ਸਟਰੀਟ ਲਾਈਟਾਂ ਚਾਲੂ ਹਨ ਪਰ ਤੁਹਾਡੇ ਘਰ ਵਿੱਚ ਬਿਜਲੀ ਨਹੀਂ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਆਪਣੇ ਸਰਕਟ ਬਰੇਕਰ ਬਾਕਸ ਦੀ ਜਾਂਚ ਕਰੋ", "ਇੱਕ ਨਵਾਂ ਟੈਲੀਵਿਜ਼ਨ ਖਰੀਦੋ", "ਤੁਰੰਤ ਸੌਣ ‘ਤੇ ਜਾਓ", "ਪੁਲਿਸ ਨੂੰ ਕਾਲ ਕਰੋ"],
                correctAnswer: "ਆਪਣੇ ਸਰਕਟ ਬਰੇਕਰ ਬਾਕਸ ਦੀ ਜਾਂਚ ਕਰੋ",
                explanation: "ਬ੍ਰੇਕਰਾਂ ਦੀ ਜਾਂਚ ਕਰਨਾ ਇਹ ਨਿਰਧਾਰਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ ਕਿ ਇਹ ਇੱਕ ਸਥਾਨਕ ਯਾਤਰਾ ਹੈ ਜਾਂ ਇੱਕ ਵਿਆਪਕ ਆਊਟੇਜ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਇੱਕ ਬਜ਼ੁਰਗ ਗੁਆਂਢੀ ਨੂੰ ਭਾਰੀ ਕਰਿਆਨੇ ਦੇ ਬੈਗ ਚੁੱਕਣ ਲਈ ਸੰਘਰਸ਼ ਕਰਦੇ ਹੋਏ ਦੇਖਦੇ ਹੋ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਉਹਨਾਂ ਤੋਂ ਜਲਦੀ ਲੰਘੋ", "ਉਨ੍ਹਾਂ ਨੂੰ ਬੈਗ ਚੁੱਕਣ ਵਿੱਚ ਮਦਦ ਕਰਨ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ", "ਉਹਨਾਂ ਦੀ ਇੱਕ ਫੋਟੋ ਲਓ", "ਉਨ੍ਹਾਂ ਨੂੰ ਤੇਜ਼ ਚੱਲਣ ਲਈ ਕਹੋ"],
                correctAnswer: "ਉਨ੍ਹਾਂ ਨੂੰ ਬੈਗ ਚੁੱਕਣ ਵਿੱਚ ਮਦਦ ਕਰਨ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ",
                explanation: "ਸਹਾਇਤਾ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਮਿਊਨਿਟੀ ਸਹਾਇਤਾ ਅਤੇ ਦਿਆਲਤਾ ਨੂੰ ਦਰਸਾਉਂਦੀ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਕੌਫੀ ਦੀ ਚੁਸਕੀ ਲੈਂਦੇ ਹੋ ਅਤੇ ਮਹਿਸੂਸ ਕਰਦੇ ਹੋ ਕਿ ਇਹ ਬਹੁਤ ਗਰਮ ਹੈ ਅਤੇ ਤੁਹਾਡੇ ਮੂੰਹ ਨੂੰ ਸਾੜ ਦਿੰਦੀ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਬਾਕੀ ਜਲਦੀ ਪੀ ਲਓ", "ਇਸ ਨੂੰ ਧਿਆਨ ਨਾਲ ਥੁੱਕ ਦਿਓ ਅਤੇ ਠੰਡਾ ਪਾਣੀ ਪੀਓ", "ਉੱਚੀ-ਉੱਚੀ ਚੀਕਣਾ", "ਮੱਗ ਸੁੱਟ ਦਿਓ"],
                correctAnswer: "ਇਸ ਨੂੰ ਧਿਆਨ ਨਾਲ ਥੁੱਕ ਦਿਓ ਅਤੇ ਠੰਡਾ ਪਾਣੀ ਪੀਓ",
                explanation: "ਠੰਡਾ ਪਾਣੀ ਬਰਨ ਨੂੰ ਠੰਡਾ ਕਰਦਾ ਹੈ ਅਤੇ ਬੇਅਰਾਮੀ ਤੋਂ ਰਾਹਤ ਦਿੰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਡਾ ਡਾਕਟਰ ਇੱਕ ਨਵੀਂ ਦਵਾਈ ਲਿਖਦਾ ਹੈ ਪਰ ਤੁਹਾਨੂੰ ਸਮਝ ਨਹੀਂ ਆਉਂਦੀ ਕਿ ਇਸਨੂੰ ਕਿਵੇਂ ਲੈਣਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਖੁਰਾਕ ਦਾ ਅੰਦਾਜ਼ਾ ਲਗਾਓ", "ਫਾਰਮਾਸਿਸਟ ਜਾਂ ਡਾਕਟਰ ਨੂੰ ਇਹ ਤੁਹਾਨੂੰ ਸਮਝਾਉਣ ਲਈ ਕਹੋ", "ਦਵਾਈ ਨਾ ਲਓ", "ਸੋਸ਼ਲ ਮੀਡੀਆ ‘ਤੇ ਇਸ ਦੀ ਖੋਜ ਕਰੋ"],
                correctAnswer: "ਫਾਰਮਾਸਿਸਟ ਜਾਂ ਡਾਕਟਰ ਨੂੰ ਇਹ ਤੁਹਾਨੂੰ ਸਮਝਾਉਣ ਲਈ ਕਹੋ",
                explanation: "ਨੁਸਖ਼ੇ ਦੀਆਂ ਹਦਾਇਤਾਂ ਲਈ ਡਾਕਟਰੀ ਪੇਸ਼ੇਵਰ ਹੀ ਭਰੋਸੇਯੋਗ ਸਰੋਤ ਹਨ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਗਲਤੀ ਨਾਲ ਆਪਣੇ ਦੋਸਤ ਦੇ ਚਿੱਟੇ ਕਾਰਪੇਟ ‘ਤੇ ਲਾਲ ਵਾਈਨ ਸੁੱਟ ਦਿੱਤੀ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਦਾਗ ਉੱਤੇ ਕੁਰਸੀ ਪਾਓ", "ਮੁਆਫੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰੋ", "ਪਾਰਟੀ ਨੂੰ ਜਲਦੀ ਛੱਡ ਦਿਓ", "ਉਨ੍ਹਾਂ ਨੂੰ ਦੱਸੋ ਕਿ ਇਹ ਅੰਗੂਰ ਦਾ ਜੂਸ ਸੀ"],
                correctAnswer: "ਮੁਆਫੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰੋ",
                explanation: "ਛਿੱਟਿਆਂ ਨੂੰ ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨ ਨਾਲ ਸਥਾਈ ਧੱਬਿਆਂ ਤੋਂ ਬਚਿਆ ਜਾਂਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਹਰ ਮਿੰਟ ਇੱਕ ਛੋਟੀ ਜਿਹੀ ਚੀਕ ਦੇ ਨਾਲ ਆਪਣੀ ਸਮੋਕ ਅਲਾਰਮ ਬੀਪ ਸੁਣਦੇ ਹੋ। ਇਸਦਾ ਕੀ ਮਤਲਬ ਹੈ?",
                options: ["ਅੱਗ ਲੱਗੀ ਹੋਈ ਹੈ", "ਬੈਟਰੀ ਘੱਟ ਹੈ ਅਤੇ ਇਸ ਨੂੰ ਬਦਲਣ ਦੀ ਲੋੜ ਹੈ", "ਅਲਾਰਮ ਟੁੱਟ ਗਿਆ ਹੈ", "ਕੁਝ ਨਹੀਂ"],
                correctAnswer: "ਬੈਟਰੀ ਘੱਟ ਹੈ ਅਤੇ ਇਸ ਨੂੰ ਬਦਲਣ ਦੀ ਲੋੜ ਹੈ",
                explanation: "ਸਿੰਗਲ ਛੋਟੀਆਂ ਚੀਕਾਂ ਦਰਸਾਉਂਦੀਆਂ ਹਨ ਕਿ ਬੈਕਅੱਪ ਬੈਟਰੀ ਘੱਟ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਸੀਂ ਗੱਡੀ ਚਲਾ ਰਹੇ ਹੋ ਅਤੇ ਆਪਣੇ ਪਿੱਛੇ ਫਲੈਸ਼ਿੰਗ ਲਾਈਟਾਂ ਵਾਲਾ ਐਮਰਜੈਂਸੀ ਵਾਹਨ ਦੇਖੋ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਇਸ ਤੋਂ ਅੱਗੇ ਰਹਿਣ ਲਈ ਗਤੀ ਵਧਾਓ", "ਸੜਕ ਦੇ ਕਿਨਾਰੇ ਵੱਲ ਖਿੱਚੋ ਅਤੇ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਰੁਕੋ", "ਲੇਨ ਦੇ ਵਿਚਕਾਰ ਤੁਰੰਤ ਰੁਕੋ", "ਇਸ ਨੂੰ ਨਜ਼ਰਅੰਦਾਜ਼ ਕਰੋ"],
                correctAnswer: "ਸੜਕ ਦੇ ਕਿਨਾਰੇ ਵੱਲ ਖਿੱਚੋ ਅਤੇ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਰੁਕੋ",
                explanation: "ਉੱਪਰ ਖਿੱਚਣਾ ਐਮਰਜੈਂਸੀ ਜਵਾਬ ਦੇਣ ਵਾਲਿਆਂ ਲਈ ਇੱਕ ਰਸਤਾ ਸਾਫ਼ ਕਰਦਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਨੂੰ ਤੁਹਾਡੇ ਬੈਂਕ ਤੋਂ ਇੱਕ ਈਮੇਲ ਪ੍ਰਾਪਤ ਹੁੰਦੀ ਹੈ ਜਿਸ ਵਿੱਚ ਤੁਹਾਨੂੰ ਆਪਣੇ ਪਾਸਵਰਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਇੱਕ ਲਿੰਕ ‘ਤੇ ਕਲਿੱਕ ਕਰਨ ਲਈ ਕਿਹਾ ਜਾਂਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਲਿੰਕ ‘ਤੇ ਕਲਿੱਕ ਕਰੋ ਅਤੇ ਆਪਣਾ ਪਾਸਵਰਡ ਦਰਜ ਕਰੋ", "ਈਮੇਲ ਮਿਟਾਓ ਜਾਂ ਉਹਨਾਂ ਦੇ ਅਧਿਕਾਰਤ ਨੰਬਰ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਸਿੱਧੇ ਆਪਣੇ ਬੈਂਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ", "ਇਸਨੂੰ ਆਪਣੇ ਦੋਸਤਾਂ ਨੂੰ ਅੱਗੇ ਭੇਜੋ", "ਆਪਣੇ ਪਾਸਵਰਡ ਨਾਲ ਜਵਾਬ ਦਿਓ"],
                correctAnswer: "ਈਮੇਲ ਮਿਟਾਓ ਜਾਂ ਉਹਨਾਂ ਦੇ ਅਧਿਕਾਰਤ ਨੰਬਰ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਸਿੱਧੇ ਆਪਣੇ ਬੈਂਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ",
                explanation: "ਬੈਂਕ ਈਮੇਲ ਲਿੰਕਾਂ ਰਾਹੀਂ ਪਾਸਵਰਡ ਨਹੀਂ ਪੁੱਛਦੇ; ਇਹ ਇੱਕ ਫਿਸ਼ਿੰਗ ਘੁਟਾਲਾ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਨੂੰ ਫੁੱਟਪਾਥ ‘ਤੇ ਇੱਕ ਬਟੂਆ ਮਿਲਦਾ ਹੈ ਜਿਸ ਵਿੱਚ ਪੈਸੇ ਅਤੇ ਇੱਕ ਆਈਡੀ ਕਾਰਡ ਹੁੰਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਪੈਸੇ ਰੱਖੋ ਅਤੇ ਬਟੂਆ ਸੁੱਟ ਦਿਓ", "ਇਸ ਨੂੰ ਪੁਲਿਸ ਕੋਲ ਭੇਜੋ ਜਾਂ ID ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਮਾਲਕ ਨਾਲ ਸੰਪਰਕ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ", "ਇਸ ਨੂੰ ਫੁੱਟਪਾਥ ‘ਤੇ ਛੱਡ ਦਿਓ", "ਕਿਸੇ ਅਜਨਬੀ ਨੂੰ ਦੇ ਦਿਓ"],
                correctAnswer: "ਇਸ ਨੂੰ ਪੁਲਿਸ ਕੋਲ ਭੇਜੋ ਜਾਂ ID ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਮਾਲਕ ਨਾਲ ਸੰਪਰਕ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ",
                explanation: "ਗੁੰਮ ਹੋਈ ਜਾਇਦਾਦ ਨੂੰ ਇਸਦੇ ਮਾਲਕ ਨੂੰ ਵਾਪਸ ਕਰਨਾ ਇਮਾਨਦਾਰ ਕਾਰਵਾਈ ਹੈ।"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ਤੁਹਾਡਾ ਸਮੋਕ ਅਲਾਰਮ ਇੱਕ ਉੱਚੀ, ਲਗਾਤਾਰ ਅਲਾਰਮ ਨਾਲ ਬੰਦ ਹੋ ਜਾਂਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?",
                options: ["ਇਸ ਨੂੰ ਅਣਡਿੱਠ ਕਰੋ ਅਤੇ ਇਸ ਦੇ ਰੁਕਣ ਦੀ ਉਡੀਕ ਕਰੋ", "ਅੱਗ ਦੀ ਜਾਂਚ ਕਰੋ ਅਤੇ ਲੋੜ ਪੈਣ ‘ਤੇ ਇਮਾਰਤ ਤੋਂ ਸੁਰੱਖਿਅਤ ਬਾਹਰ ਨਿਕਲੋ", "ਬੈਟਰੀਆਂ ਨੂੰ ਤੁਰੰਤ ਬਦਲੋ", "ਸੌਂ ਜਾਓ"],
                correctAnswer: "ਅੱਗ ਦੀ ਜਾਂਚ ਕਰੋ ਅਤੇ ਲੋੜ ਪੈਣ ‘ਤੇ ਇਮਾਰਤ ਤੋਂ ਸੁਰੱਖਿਅਤ ਬਾਹਰ ਨਿਕਲੋ",
                explanation: "ਲਗਾਤਾਰ ਅਲਾਰਮ ਧੂੰਏਂ ਜਾਂ ਅੱਗ ਦਾ ਸੰਕੇਤ ਦਿੰਦੇ ਹਨ, ਜਿਸ ਲਈ ਤੁਰੰਤ ਸੁਰੱਖਿਆ ਜਾਂਚਾਂ ਅਤੇ ਨਿਕਾਸੀ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ।"
            )
        ]
    )

    // MARK: - ਖਾਣਾ ਪਕਾਉਣ ਦੇ ਪੜਾਅ
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "ਖਾਣਾ ਪਕਾਉਣ ਦੇ ਪੜਾਅ",
        instructions: "ਖਾਣਾ ਪਕਾਉਣ ਦੇ ਪੜਾਵਾਂ ਨੂੰ ਸਹੀ ਕ੍ਰม ਵਿੱਚ ਵਿਵਸਥਿਤ ਕਰੋ।",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 1):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 2):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 3):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 4):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 5):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 6):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 7):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 8):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 9):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 10):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 11):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 12):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 13):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 14):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 15):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 16):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 17):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 18):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 19):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 20):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 21):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 22):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 23):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 24):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 25):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 26):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 27):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 28):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 29):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 30):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 31):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 32):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 33):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 34):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 35):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 36):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 37):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 38):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 39):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 40):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 41):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 42):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 43):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 44):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 45):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 46):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 47):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 48):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 49):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 50):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 51):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 52):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 53):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 54):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 55):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 56):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 57):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 58):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 59):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 60):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 61):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 62):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 63):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 64):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 65):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 66):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 67):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 68):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 69):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Steps to prepare a traditional Punjabi-American meal (Step 70):",
                options: ["Prepare ingredients", "Cook on medium heat", "Serve warm"],
                correctAnswer: "Prepare ingredients | Cook on medium heat | Serve warm",
                explanation: "Recipe steps."
            )
        ]
    )

    // MARK: - ਕਰਿਆਨੇ ਦੀ ਖਰੀਦਦਾਰੀ
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "ਕਰਿਆਨੇ ਦੀ ਖਰੀਦਦਾਰੀ",
        instructions: "ਕੀਮਤਾਂ ਦੀ ਤੁਲਨਾ ਕਰੋ ਅਤੇ ਸਭ ਤੋਂ ਵਧੀਆ ਮੁੱਲ ਵਾਲਾ ਵਿਕਲਪ ਚੁਣੋ।",
        section: .functionalSkills,
        type: .comparison,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 1):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 2):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 3):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 4):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 5):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 6):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 7):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 8):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 9):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 10):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 11):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 12):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 13):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 14):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 15):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 16):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 17):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 18):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 19):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 20):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 21):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 22):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 23):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 24):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 25):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 26):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 27):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 28):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 29):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 30):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 31):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 32):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 33):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 34):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 35):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 36):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 37):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 38):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 39):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 40):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 41):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 42):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 43):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 44):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 45):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 46):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 47):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 48):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 49):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 50):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 51):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 52):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 53):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 54):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 55):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 56):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 57):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 58):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 59):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 60):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 61):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 62):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 63):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 64):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 65):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 66):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 67):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 68):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 69):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 70):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 71):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 72):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 73):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 74):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Best price comparison for roti ingredients at local CA market (Option 75):",
                options: ["Small pack for $5", "Large pack for $8"],
                correctAnswer: "Large pack for $8",
                explanation: "Larger option is cheaper per unit."
            )
        ]
    )
}
