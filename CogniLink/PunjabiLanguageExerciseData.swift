import Foundation

struct PunjabiLanguageExerciseData {
    static let allExercises: [Exercise] = [
        categoryCrossOutEasy,
        categoryCrossOutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonyms,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencing,
        idioms,
        rhymingPairs,
        wordAssociation,
        completingProverbs,
        compoundWords,
        prefixesSuffixes,
    ]

    private static let categoryCrossOutEasy = Exercise(
        id: UUID(),
        title: "ਸ਼੍ਰੇਣੀ ਕ੍ਰਾਸ-ਆਊਟ (ਆਸਾਨ)",
        instructions: "ਉਸ ਸ਼ਬਦ 'ਤੇ ਟੈਪ ਕਰੋ ਜੋ ਗਰੁੱਪ ਵਿੱਚ ਨਹੀਂ ਹੈ।",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਸੇਬ, ਨਾਸ਼ਪਾਤੀ, ਗਾਜਰ, ਬੇਰ", options: ["ਸੇਬ", "PEAR", "ਗਾਜਰ", "PLUM"], correctAnswer: "ਗਾਜਰ", explanation: "ਸਬਜ਼ੀਆਂ, ਫਲ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕਾਰ, ਬੱਸ, ਚਮਚਾ, ਟਰੱਕ", options: ["ਕਾਰ", "ਬੱਸ", "ਚਮਚਾ", "ਟਰੱਕ"], correctAnswer: "ਚਮਚਾ", explanation: "ਵਾਹਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੋਨਾ, ਬਿੱਲੀ, ਕੁੱਤਾ, ਪੰਛੀ", options: ["ਸੋਨਾ", "CAT", "DOG", "ਪੰਛੀ"], correctAnswer: "ਸੋਨਾ", explanation: "ਇੱਕ ਧਾਤ, ਜਾਨਵਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕਮੀਜ਼, ਪੈਂਟ, ਫੋਰਕ, ਟੋਪੀ", options: ["ਕਮੀਜ਼", "ਪੈਂਟਸ", "ਫੋਰਕ", "ਐਚ.ਏ.ਟੀ"], correctAnswer: "ਫੋਰਕ", explanation: "ਕੱਪੜੇ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕੁਰਸੀ, ਮੇਜ਼, ਸੇਬ, ਬਿਸਤਰਾ", options: ["ਕੁਰਸੀ", "ਟੇਬਲ", "ਸੇਬ", "ਬੀ.ਐੱਡ"], correctAnswer: "ਸੇਬ", explanation: "ਭੋਜਨ, ਫਰਨੀਚਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਹਥੌੜਾ, ਰੈਂਚ, ਸਿਰਹਾਣਾ, ਡ੍ਰਿਲ", options: ["ਹਥੌੜਾ", "ਰੈਂਚ", "ਸਿਰਹਾਣਾ", "ਡ੍ਰਿਲ"], correctAnswer: "ਸਿਰਹਾਣਾ", explanation: "ਇੱਕ ਸਾਧਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਜਨਵਰੀ, ਮਾਰਚ, ਸ਼ੁੱਕਰਵਾਰ, ਮਈ", options: ["ਜਨਵਰੀ", "ਮਾਰਚ", "ਸ਼ੁੱਕਰਵਾਰ", "ਮਈ"], correctAnswer: "ਸ਼ੁੱਕਰਵਾਰ", explanation: "ਹਫ਼ਤੇ ਦਾ ਦਿਨ, ਮਹੀਨਾ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਪੈਰਿਸ, ਲੰਡਨ, ਜੁਪੀਟਰ, ਰੋਮ", options: ["ਪੈਰਿਸ", "ਲੰਡਨ", "ਜੁਪੀਟਰ", "ਰੋਮ"], correctAnswer: "ਜੁਪੀਟਰ", explanation: "ਇੱਕ ਗ੍ਰਹਿ, ਇੱਕ ਸ਼ਹਿਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕੁੱਤਾ, ਬਿੱਲੀ, ਰੁੱਖ, ਮਾਊਸ", options: ["DOG", "CAT", "ਰੁੱਖ", "ਮਾਊਸ"], correctAnswer: "ਰੁੱਖ", explanation: "ਜਾਨਵਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਅੱਖ, ਨੱਕ, ਕਾਰ, ਕੰਨ", options: ["ਅੱਖ", "ਨੱਕ", "ਕਾਰ", "ਈ.ਆਰ"], correctAnswer: "ਕਾਰ", explanation: "ਸਰੀਰ ਦਾ ਕੋਈ ਅੰਗ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਦੁੱਧ, ਜੂਸ, ਰੋਟੀ, ਪਾਣੀ", options: ["ਦੁੱਧ", "ਜੂਸ", "ਰੋਟੀ", "ਪਾਣੀ"], correctAnswer: "ਰੋਟੀ", explanation: "ਭੋਜਨ, ਪੀਣ ਲਈ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੋਫਾ, ਬੈੱਡ, ਸਟੋਵ, ਕੁਰਸੀ", options: ["ਸੋਫਾ", "ਬੀ.ਐੱਡ", "ਸਟੋਵ", "ਕੁਰਸੀ"], correctAnswer: "ਸਟੋਵ", explanation: "ਉਪਕਰਣ, ਬੈਠਣ ਜਾਂ ਸੌਣ ਲਈ ਫਰਨੀਚਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਰੋਜ਼, ਟਿਊਲਿਪ, ਡੇਜ਼ੀ, ਕਾਰ", options: ["ਗੁਲਾਬ", "ਟਿਊਲਿਪ", "ਡੇਜ਼ੀ", "ਕਾਰ"], correctAnswer: "ਕਾਰ", explanation: "ਫੁੱਲ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਪੈੱਨ, ਪੈਨਸਿਲ, ਕ੍ਰੇਅਨ, ਫੋਰਕ", options: ["ਪੈੱਨ", "ਪੈਨਸਿਲ", "ਕ੍ਰੇਅਨ", "ਫੋਰਕ"], correctAnswer: "ਫੋਰਕ", explanation: "ਲਿਖਣ ਦਾ ਸਾਧਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੋਫਾ, ਗਲੀਚਾ, ਲੈਂਪ, ਚਿਕਨ", options: ["ਕਾਉਚ", "RUG", "LAMP", "ਚਿਕਨ"], correctAnswer: "ਚਿਕਨ", explanation: "ਘਰੇਲੂ ਵਸਤੂ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੂਰਜ, ਮੀਂਹ, ਹਵਾ, ਕਮੀਜ਼", options: ["ਸਨ", "ਮੀਂਹ", "ਹਵਾ", "ਕਮੀਜ਼"], correctAnswer: "ਕਮੀਜ਼", explanation: "ਮੌਸਮ ਸ਼ਬਦ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਪਲੇਟ, ਬਾਊਲ, ਕੱਪ, ਕਾਰ", options: ["ਪਲੇਟ", "ਕਟੋਰਾ", "ਕੱਪ", "ਕਾਰ"], correctAnswer: "ਕਾਰ", explanation: "ਡਿਸ਼ ਜਾਂ ਕੰਟੇਨਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਬੱਸ, ਟਰੇਨ, ਬੋਟ, ਕੈਟ", options: ["ਬੱਸ", "ਟਰੇਨ", "ਬੋਟ", "CAT"], correctAnswer: "CAT", explanation: "ਵਾਹਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਟੋਪੀ, ਜੁਰਾਬਾਂ, ਜੁੱਤੀਆਂ, ਬਰਤਨ", options: ["ਐਚ.ਏ.ਟੀ", "SOCKS", "ਜੁੱਤੀਆਂ", "ਪੋਟ"], correctAnswer: "ਪੋਟ", explanation: "ਕੁੱਕਵੇਅਰ, ਕੱਪੜੇ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਬਿੱਲੀ, ਕੁੱਤਾ, ਪੰਛੀ, ਟਰੱਕ", options: ["CAT", "DOG", "ਪੰਛੀ", "ਟਰੱਕ"], correctAnswer: "ਟਰੱਕ", explanation: "ਜਾਨਵਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਮਾਰਚ, ਅਪ੍ਰੈਲ, ਮੰਗਲਵਾਰ, ਜੂਨ", options: ["ਮਾਰਚ", "ਅਪ੍ਰੈਲ", "ਮੰਗਲਵਾਰ", "ਜੂਨ"], correctAnswer: "ਮੰਗਲਵਾਰ", explanation: "ਹਫ਼ਤੇ ਦਾ ਦਿਨ, ਮਹੀਨਾ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਲਾਲ, ਨੀਲਾ, ਟੇਬਲ, ਹਰਾ", options: ["ਲਾਲ", "ਨੀਲਾ", "ਟੇਬਲ", "ਹਰਾ"], correctAnswer: "ਟੇਬਲ", explanation: "ਰੰਗ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਚਾਕੂ, ਫੋਰਕ, ਚਮਚਾ, ਬੈੱਡ", options: ["ਚਾਕੂ", "ਫੋਰਕ", "ਚਮਚਾ", "ਬੀ.ਐੱਡ"], correctAnswer: "ਬੀ.ਐੱਡ", explanation: "ਫਰਨੀਚਰ, ਕਟਲਰੀ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਈਗਲ, ਬਾਜ਼, ਉੱਲੂ, ਮੱਛੀ", options: ["ਈਗਲ", "ਹਾਕ", "OWL", "ਮੱਛੀ"], correctAnswer: "ਮੱਛੀ", explanation: "ਪੰਛੀ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਪੈਨੀ, ਨਿੱਕਲ, ਡਾਈਮ, ਜੈਕੇਟ", options: ["ਪੈਨੀ", "ਨਿੱਕਲ", "DIME", "ਜੈਕੇਟ"], correctAnswer: "ਜੈਕੇਟ", explanation: "ਮੁਦਰਾ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ੇਰ, ਰਿੱਛ, ਟਾਈਗਰ, ਪੀਜ਼ਾ", options: ["ਸ਼ੇਰ", "ਰਿੱਛ", "ਟਾਈਗਰ", "ਪੀਜ਼ਾ"], correctAnswer: "ਪੀਜ਼ਾ", explanation: "ਜਾਨਵਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੇਬ, ਕੇਲਾ, ਗਾਜਰ, ਅੰਗੂਰ", options: ["ਸੇਬ", "ਕੇਲਾ", "ਗਾਜਰ", "ਅੰਗੂਰ"], correctAnswer: "ਗਾਜਰ", explanation: "ਸਬਜ਼ੀਆਂ, ਫਲ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕੁਰਸੀ, ਮੇਜ਼, ਡੈਸਕ, ਡਾਲਫਿਨ", options: ["ਕੁਰਸੀ", "ਟੇਬਲ", "DESK", "ਡਾਲਫਿਨ"], correctAnswer: "ਡਾਲਫਿਨ", explanation: "ਸਮੁੰਦਰੀ ਜਾਨਵਰ, ਫਰਨੀਚਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਰੌਬਿਨ, ਈਗਲ, ਸਾਲਮਨ, ਤੋਤਾ", options: ["ਰੋਬਿਨ", "ਈਗਲ", "ਸਾਲਮਨ", "ਤੋਤਾ"], correctAnswer: "ਸਾਲਮਨ", explanation: "ਮੱਛੀ, ਪੰਛੀ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਬੇਸਬਾਲ, ਟੈਨਿਸ, ਸ਼ਤਰੰਜ, ਫੁਟਬਾਲ", options: ["ਬੇਸਬਾਲ", "ਟੈਨਿਸ", "ਸ਼ਤਰੰਜ", "ਸੌਕਰ"], correctAnswer: "ਸ਼ਤਰੰਜ", explanation: "ਬੋਰਡ ਗੇਮ, ਸਰੀਰਕ ਖੇਡ ਨਹੀਂ")
        ]
    )

    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "ਸ਼੍ਰੇਣੀ ਕ੍ਰਾਸ-ਆਊਟ (ਸਖਤ)",
        instructions: "ਉਸ ਸ਼ਬਦ 'ਤੇ ਟੈਪ ਕਰੋ ਜੋ ਗਰੁੱਪ ਵਿੱਚ ਨਹੀਂ ਹੈ।",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਸਿਮਾਇਲ, ਮੈਟਾਫਰ, ਹਾਈਪਰਬੋਲ, PARAGRAPH", options: ["ਸਿਮਾਇਲ", "ਰੂਪਕ", "ਹਾਈਪਰਬੋਲ", "PARAGRAPH"], correctAnswer: "PARAGRAPH", explanation: "ਪਾਠ ਦੀ ਬਣਤਰ, ਨਾ ਕਿ ਬੋਲੀ ਦਾ ਚਿੱਤਰ"),
            ExerciseItem(id: UUID(), prompt: "ਫੇਮਰ, ਟਿਬੀਆ, ਰੇਡੀਅਸ, ਕੋਰਨੀਆ", options: ["FEMUR", "TIBIA", "ਰੇਡੀਅਸ", "ਕੋਰਨੀਆ"], correctAnswer: "ਕੋਰਨੀਆ", explanation: "ਅੱਖ ਦਾ ਹਿੱਸਾ, ਹੱਡੀ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਬੀਥੋਵਨ, ਮੋਜ਼ਾਰਟ, ਪਿਕਾਸੋ, ਚੋਪਿਨ", options: ["ਬੀਥੋਵਨ", "ਮੋਜ਼ਰਟ", "ਪਿਕਾਸੋ", "ਚੋਪਿਨ"], correctAnswer: "ਪਿਕਾਸੋ", explanation: "ਇੱਕ ਚਿੱਤਰਕਾਰ, ਇੱਕ ਸੰਗੀਤਕਾਰ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕਾਰਡਿਗਨ, ਬਲੇਜ਼ਰ, ਟਰਟਲਨੇਕ, ਸਟੀਲੇਟੋ", options: ["ਕਾਰਡਿਗਨ", "ਬਲੇਜ਼ਰ", "ਟਰਟਲਨੇਕ", "STILETTO"], correctAnswer: "STILETTO", explanation: "ਇੱਕ ਜੁੱਤੀ, ਸਰੀਰ ਦੇ ਉੱਪਰਲੇ ਕੱਪੜੇ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਥੇਮਸ, ਨੀਲ, ਐਮਾਜ਼ਾਨ, ਐਵਰੈਸਟ", options: ["ਥੇਮਸ", "ਨੀਲ", "ਐਮਾਜ਼ਾਨ", "ਐਵਰੈਸਟ"], correctAnswer: "ਐਵਰੈਸਟ", explanation: "ਇੱਕ ਪਹਾੜ, ਇੱਕ ਨਦੀ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਯਾਦਾਂ, ਜੀਵਨੀ, ਆਟੋਬਾਇਓਗ੍ਰਾਫੀ, ਸਨੇਟ", options: ["ਮੈਮੋਇਰ", "ਜੀਵਨੀ", "ਆਟੋਬਾਇਓਗ੍ਰਾਫੀ", "SONNET"], correctAnswer: "SONNET", explanation: "ਇੱਕ ਕਵਿਤਾ, ਜੀਵਨ ਬਿਰਤਾਂਤ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਇਨਸੁਲਿਨ, ਐਡਰੇਨਾਲੀਨ, ਐਸਟ੍ਰੋਜਨ, ਆਈਬਿਊਪ੍ਰੋਫੇਨ", options: ["ਇਨਸੁਲਿਨ", "ਐਡਰੇਨਾਲੀਨ", "ਐਸਟ੍ਰੋਜਨ", "ਆਈਬਿਊਪ੍ਰੋਫੇਨ"], correctAnswer: "ਆਈਬਿਊਪ੍ਰੋਫੇਨ", explanation: "ਇੱਕ ਨਿਰਮਿਤ ਦਵਾਈ, ਕੁਦਰਤੀ ਤੌਰ 'ਤੇ ਪੈਦਾ ਹੋਣ ਵਾਲਾ ਹਾਰਮੋਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੈਲਸੀਅਸ, ਫਾਰਨਹੀਟ, ਕੈਲਵਿਨ, ਡੈਸੀਬਲ", options: ["ਸੈਲਸੀਅਸ", "ਫਾਰੇਨਹੀਟ", "ਕੈਲਵਿਨ", "ਡੈਸੀਬਲ"], correctAnswer: "ਡੈਸੀਬਲ", explanation: "ਆਵਾਜ਼ ਨੂੰ ਮਾਪਦਾ ਹੈ, ਤਾਪਮਾਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਜੂਰੀ, ਜੱਜ, ਬੈਲੀਫ, ਮੁਦਈ", options: ["ਜਿਊਰੀ", "ਜੱਜ", "ਬੈਲੀਫ", "ਮੁਦਈ"], correctAnswer: "ਮੁਦਈ", explanation: "ਕੇਸ ਵਿੱਚ ਇੱਕ ਧਿਰ, ਅਦਾਲਤੀ ਅਧਿਕਾਰੀ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੋਨੈੱਟ, ਹਾਇਕੂ, ਲਿਮਰਿਕ, ਵਾਰਤਕ", options: ["SONNET", "ਹਾਇਕੂ", "ਲਾਈਮਰਿਕ", "PROSE"], correctAnswer: "PROSE", explanation: "ਕਵਿਤਾ ਰੂਪ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸੋਪਰਨੋ, ਆਲਟੋ, ਟੇਨੋਰ, ਕੰਡਕਟਰ", options: ["ਸੋਪਰਨੋ", "ALTO", "TENOR", "ਕੰਡਕਟਰ"], correctAnswer: "ਕੰਡਕਟਰ", explanation: "ਆਰਕੈਸਟਰਾ ਦੀ ਅਗਵਾਈ ਕਰਦਾ ਹੈ, ਨਾ ਕਿ ਗਾਉਣ ਵਾਲੀ ਆਵਾਜ਼ ਦੀ ਕਿਸਮ"),
            ExerciseItem(id: UUID(), prompt: "ਪ੍ਰਭਾਵਵਾਦ, ਅਤਿਯਥਾਰਥਵਾਦ, ਘਣਵਾਦ, ਜੈਜ਼", options: ["ਪ੍ਰਭਾਵਵਾਦ", "ਅਤਿਵਾਦ", "CUBISM", "ਜੈਜ਼"], correctAnswer: "ਜੈਜ਼", explanation: "ਇੱਕ ਸੰਗੀਤ ਸ਼ੈਲੀ, ਇੱਕ ਵਿਜ਼ੂਅਲ ਆਰਟ ਅੰਦੋਲਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਸਟਾਕਹੋਮ, ਓਸਲੋ, ਹੇਲਸਿੰਕੀ, ਬਰੱਸਲਜ਼", options: ["ਸਟਾਕਹੋਲਮ", "OSLO", "ਹੇਲਸਿੰਕੀ", "ਬਰੱਸਲਜ਼"], correctAnswer: "ਬਰੱਸਲਜ਼", explanation: "ਬੈਲਜੀਅਮ, ਇੱਕ ਸਕੈਂਡੇਨੇਵੀਅਨ ਰਾਜਧਾਨੀ ਨਹੀਂ ਹੈ"),
            ExerciseItem(id: UUID(), prompt: "ਰੂਬੀ, ਨੀਲਮ, ਪੰਨਾ, ਗ੍ਰੇਨਾਈਟ", options: ["ਰੂਬੀ", "ਨੀਲਮ", "EMERALD", "ਗ੍ਰੇਨਾਈਟ"], correctAnswer: "ਗ੍ਰੇਨਾਈਟ", explanation: "ਇੱਕ ਚੱਟਾਨ, ਇੱਕ ਰਤਨ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਅਪੈਂਡਿਕਸ, ਪਿੱਤੇ ਦੀ ਥੈਲੀ, ਪੈਨਕ੍ਰੀਅਸ, ਫੇਮਰ", options: ["ਅੰਤਿਕਾ", "ਪਿੱਤੇ ਦੀ ਥੈਲੀ", "ਪਾਚਕ", "FEMUR"], correctAnswer: "FEMUR", explanation: "ਇੱਕ ਹੱਡੀ, ਇੱਕ ਅੰਗ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "Cello, Viola, HARP, OBOE", options: ["ਸੇਲੋ", "ਵਿਓਲਾ", "ਹਾਰਪ", "ਓ.ਬੀ.ਓ.ਈ"], correctAnswer: "ਓ.ਬੀ.ਓ.ਈ", explanation: "ਇੱਕ ਵੁੱਡਵਿੰਡ, ਇੱਕ ਸਤਰ ਸਾਜ਼ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਫ੍ਰੇਸਕੋ, ਮੋਜ਼ੇਕ, ਲਿਥੋਗ੍ਰਾਫ, ਸੋਨਾਟਾ", options: ["ਫਰੇਸਕੋ", "ਮੋਜ਼ੇਕ", "ਲਿਥੋਗ੍ਰਾਫ", "ਸੋਨਾਟਾ"], correctAnswer: "ਸੋਨਾਟਾ", explanation: "ਸੰਗੀਤ, ਵਿਜ਼ੂਅਲ ਕਲਾ ਦਾ ਰੂਪ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਆਰਕੀਪਲੇਗੋ, ਐਫਜੋਰਡ, ਪਠਾਰ, ਉਪ-ਭਾਸ਼ਾ", options: ["ਆਰਕੀਪਲੇਗੋ", "FJORD", "ਪਠਾਰ", "ਡਾਇਲੈਕਟ"], correctAnswer: "ਡਾਇਲੈਕਟ", explanation: "ਭਾਸ਼ਾ ਪਰਿਵਰਤਨ, ਇੱਕ ਭੂਗੋਲਿਕ ਵਿਸ਼ੇਸ਼ਤਾ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਮੈਗਨੀਸ਼ੀਅਮ, ਕੈਲਸ਼ੀਅਮ, ਪੋਟਾਸ਼ੀਅਮ, ਪੈਟਰੋਲੀਅਮ", options: ["ਮੈਗਨੀਸ਼ੀਅਮ", "ਕੈਲਸ਼ੀਅਮ", "ਪੋਟਾਸ਼ੀਅਮ", "ਪੈਟਰੋਲੀਅਮ"], correctAnswer: "ਪੈਟਰੋਲੀਅਮ", explanation: "ਇੱਕ ਜੈਵਿਕ ਬਾਲਣ, ਇੱਕ ਖਣਿਜ ਤੱਤ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਫਲੈਮੇਨਕੋ, ਟੈਂਗੋ, ਵਾਲਟਜ਼, ਓਪੇਰਾ", options: ["ਫਲੈਮੇਨਕੋ", "ਟੈਂਗੋ", "ਵਾਲਟਜ਼", "ਓਪੇਰਾ"], correctAnswer: "ਓਪੇਰਾ", explanation: "ਇੱਕ ਵੋਕਲ ਪ੍ਰਦਰਸ਼ਨ ਕਲਾ, ਨਾਚ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਆਰਟਰੀ, ਨਾੜੀ, ਕੇਪਿਲਰੀ, ਟੈਂਡਨ", options: ["ਧਮਣੀ", "ਵੀਨ", "ਕੇਪਿਲਰੀ", "ਟੈਂਡਨ"], correctAnswer: "ਟੈਂਡਨ", explanation: "ਮਾਸਪੇਸ਼ੀ ਨੂੰ ਹੱਡੀ ਨਾਲ ਜੋੜਦਾ ਹੈ, ਖੂਨ ਦੀਆਂ ਨਾੜੀਆਂ ਨਾਲ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਟੁੰਡਰਾ, ਤਾਈਗਾ, ਸਵਾਨਾ, ਡੈਲਟਾ", options: ["ਟੁੰਡਰਾ", "ਤਾਈਗਾ", "ਸਵਾਨਾ", "ਡੈਲਟਾ"], correctAnswer: "ਡੈਲਟਾ", explanation: "ਨਦੀ ਦੇ ਮੂੰਹ 'ਤੇ ਲੈਂਡਫਾਰਮ, ਬਾਇਓਮ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਟਾਈਫੂਨ, ਚੱਕਰਵਾਤ, ਮਾਨਸੂਨ, ਕੰਬਣੀ", options: ["ਟਾਈਫੂਨ", "ਚੱਕਰਵਾਤ", "ਮਾਨਸੂਨ", "ਕੰਬਣੀ"], correctAnswer: "ਕੰਬਣੀ", explanation: "ਭੂਚਾਲ ਦੀ ਲਹਿਰ, ਮੌਸਮ ਦੀ ਘਟਨਾ ਨਹੀਂ"),
            ExerciseItem(id: UUID(), prompt: "ਕਾਰਟਿਲੇਜ, ਲਿਗਾਮੈਂਟ, ਟੈਂਡਨ, ਨਿਊਰੋਨ", options: ["ਕਾਰਟਿਲੇਜ", "ਲਿਗਾਮੈਂਟ", "ਟੈਂਡਨ", "ਨਿਊਰੋਨ"], correctAnswer: "ਨਿਊਰੋਨ", explanation: "ਇੱਕ ਨਸ ਸੈੱਲ, ਜੋੜਨ ਵਾਲੇ ਟਿਸ਼ੂ ਨਹੀਂ")
        ]
    )

    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "ਵਾਕ ਪੂਰੇ ਕਰਨੇ",
        instructions: "ਵਾਕੰਸ਼ ਨੂੰ ਪੂਰਾ ਕਰਨ ਲਈ ਸਭ ਤੋਂ ਢੁਕਵਾਂ ਸ਼ਬਦ ਚੁਣੋ।",
        section: .language,
        type: .multipleChoice,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਰੋਟੀ ___”", options: ["ਖਾਣੀ", "ਪੀਣੀ", "ਜਾਣੀ", "ਲਿਖਣੀ"], correctAnswer: "ਖਾਣੀ", explanation: "ਪੰਜਾਬੀ ਵਿੱਚ ਭੋਜਨ ਕਰਨ ਲਈ ‘ਰੋਟੀ ਖਾਣੀ’ ਸ਼ਬਦ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਪਾਣੀ ___”", options: ["ਪੀਣਾ", "ਖਾਣਾ", "ਸੌਣਾ", "ਪੜ੍ਹਨਾ"], correctAnswer: "ਪੀਣਾ", explanation: "ਪਿਆਸ ਬੁਝਾਉਣ ਲਈ ‘ਪਾਣੀ ਪੀਣਾ’ ਸਹੀ ਕਿਰਿਆ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਕੱਪੜੇ ___”", options: ["ਪਾਉਣੇ", "ਖਾਣੇ", "ਪੀਣੇ", "ਲਿਖਣੇ"], correctAnswer: "ਪਾਉਣੇ", explanation: "ਸਰੀਰ ਨੂੰ ਢਕਣ ਲਈ ‘ਕੱਪੜੇ ਪਾਉਣੇ’ ਸ਼ਬਦ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਗੱਡੀ ___”", options: ["ਚਲਾਉਣੀ", "ਪੀਣੀ", "ਖਾਣੀ", "ਲਿਖਣੀ"], correctAnswer: "ਚਲਾਉਣੀ", explanation: "ਵਾਹਨ ਨੂੰ ਸੜਕ 'ਤੇ ਲਿਜਾਣ ਲਈ ‘ਗੱਡੀ ਚਲਾਉਣੀ’ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਸੜਕ ___”", options: ["ਪਾਰ ਕਰਨੀ", "ਖਾਣੀ", "ਪੀਣੀ", "ਸੌਣੀ"], correctAnswer: "ਪਾਰ ਕਰਨੀ", explanation: "ਸੜਕ ਦੇ ਇੱਕ ਪਾਸੇ ਤੋਂ ਦੂਜੇ ਪਾਸੇ ਜਾਣ ਲਈ ‘ਸੜਕ ਪਾਰ ਕਰਨੀ’ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਹੱਥ ___”", options: ["ਧੋਣੇ", "ਪੀਣੇ", "ਖਾਣੇ", "ਲਿਖਣੇ"], correctAnswer: "ਧੋਣੇ", explanation: "ਖਾਣਾ ਖਾਣ ਤੋਂ ਪਹਿਲਾਂ ‘ਹੱਥ ਧੋਣੇ’ ਸਿਹਤ ਲਈ ਜ਼ਰੂਰੀ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਬਿਸਤਰੇ 'ਤੇ ___”", options: ["ਸੌਣਾ", "ਖਾਣਾ", "ਪੀਣਾ", "ਪੜ੍ਹਨਾ"], correctAnswer: "ਸੌਣਾ", explanation: "ਆਰਾਮ ਕਰਨ ਲਈ ‘ਬਿਸਤਰੇ 'ਤੇ ਸੌਣਾ’ ਸਹੀ ਕਿਰਿਆ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਕਿਤਾਬ ___”", options: ["ਪੜ੍ਹਨੀ", "ਖਾਣੀ", "ਪੀਣੀ", "ਚਲਾਉਣੀ"], correctAnswer: "ਪੜ੍ਹਨੀ", explanation: "ਗਿਆਨ ਹਾਸਲ ਕਰਨ ਲਈ ‘ਕਿਤਾਬ ਪੜ੍ਹਨੀ’ ਚਾਹੀਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਚਿੱਠੀ ___”", options: ["ਲਿਖਣੀ", "ਪੀਣੀ", "ਖਾਣੀ", "ਪਾਉਣੀ"], correctAnswer: "ਲਿਖਣੀ", explanation: "ਆਪਣੇ ਵਿਚਾਰ ਦੂਜਿਆਂ ਤੱਕ ਪਹੁੰਚਾਉਣ ਲਈ ‘ਚਿੱਠੀ ਲਿਖਣੀ’ ਪੈਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਫ਼ੋਨ ___”", options: ["ਕਰਨਾ", "ਖਾਣਾ", "ਪੀਣਾ", "ਪੜ੍ਹਨਾ"], correctAnswer: "ਕਰਨਾ", explanation: "ਕਿਸੇ ਨਾਲ ਗੱਲਬਾਤ ਕਰਨ ਲਈ ‘ਫ਼ੋਨ ਕਰਨਾ’ ਪੈਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਬੂਟੇ ___”", options: ["ਲਾਉਣੇ", "ਪੀਣੇ", "ਖਾਣੇ", "ਪੜ੍ਹਨੇ"], correctAnswer: "ਲਾਉਣੇ", explanation: "ਵਾਤਾਵਰਨ ਨੂੰ ਸਾਫ਼ ਰੱਖਣ ਲਈ ‘ਬੂਟੇ ਲਾਉਣੇ’ ਜ਼ਰੂਰੀ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਦਰਵਾਜ਼ਾ ___”", options: ["ਖੋਲ੍ਹਣਾ", "ਖਾਣਾ", "ਪੀਣਾ", "ਪੜ੍ਹਨਾ"], correctAnswer: "ਖੋਲ੍ਹਣਾ", explanation: "ਕਮਰੇ ਵਿੱਚ ਦਾਖਲ ਹੋਣ ਲਈ ‘ਦਰਵਾਜ਼ਾ ਖੋਲ੍ਹਣਾ’ ਪੈਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਬਾਰੀ ___”", options: ["ਬੰਦ ਕਰਨੀ", "ਖਾਣੀ", "ਪੀਣੀ", "ਲਿਖਣੀ"], correctAnswer: "ਬੰਦ ਕਰਨੀ", explanation: "ਠੰਢੀ ਹਵਾ ਤੋਂ ਬਚਣ ਲਈ ‘ਬਾਰੀ ਬੰਦ ਕਰਨੀ’ ਚਾਹੀਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਟੀਵੀ ___”", options: ["ਵੇਖਣਾ", "ਪੀਣਾ", "ਖਾਣਾ", "ਸੌਣਾ"], correctAnswer: "ਵੇਖਣਾ", explanation: "ਮਨੋਰੰਜਨ ਜਾਂ ਖ਼ਬਰਾਂ ਲਈ ‘ਟੀਵੀ ਵੇਖਣਾ’ ਆਮ ਆਦਤ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਗਾਣੇ ___”", options: ["ਸੁਣਨੇ", "ਖਾਣੇ", "ਪੀਣੇ", "ਲਿਖਣੇ"], correctAnswer: "ਸੁਣਨੇ", explanation: "ਸੰਗੀਤ ਦਾ ਆਨੰਦ ਲੈਣ ਲਈ ‘ਗਾਣੇ ਸੁਣਨੇ’ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਖਾਣਾ ___”", options: ["ਬਣਾਉਣਾ", "ਪੀਣਾ", "ਲਿਖਣਾ", "ਧੋਣਾ"], correctAnswer: "ਬਣਾਉਣਾ", explanation: "ਰਸੋਈ ਵਿੱਚ ਭੋਜਨ ਤਿਆਰ ਕਰਨ ਲਈ ‘ਖਾਣਾ ਬਣਾਉਣਾ’ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਵਾਲਾਂ ਵਿੱਚ ___”", options: ["ਕੰਘੀ ਕਰਨੀ", "ਪੀਣੀ", "ਖਾਣੀ", "ਲਿਖਣੀ"], correctAnswer: "ਕੰਘੀ ਕਰਨੀ", explanation: "ਵਾਲਾਂ ਨੂੰ ਸਾਫ਼ ਅਤੇ ਸੁਥਰਾ ਰੱਖਣ ਲਈ ‘ਕੰਘੀ ਕਰਨੀ’ ਪੈਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਦੰਦ ___”", options: ["ਸਾਫ਼ ਕਰਨੇ", "ਪੀਣੇ", "ਖਾਣੇ", "ਪੜ੍ਹਨੇ"], correctAnswer: "ਸਾਫ਼ ਕਰਨੇ", explanation: "ਮੂੰਹ ਦੀ ਸਫ਼ਾਈ ਲਈ ਰੋਜ਼ਾਨਾ ‘ਦੰਦ ਸਾਫ਼ ਕਰਨੇ’ ਚਾਹੀਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਸੌਦਾ ___”", options: ["ਖ਼ਰੀਦਣਾ", "ਪੀਣਾ", "ਖਾਣਾ", "ਲਿਖਣਾ"], correctAnswer: "ਖ਼ਰੀਦਣਾ", explanation: "ਦੁਕਾਨ ਤੋਂ ਘਰੇਲੂ ਸਾਮਾਨ ਲਿਆਉਣ ਲਈ ‘ਸੌਦਾ ਖ਼ਰੀਦਣਾ’ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਪੂਰਾ ਕਰੋ: “ਸਾਈਕਲ ___”", options: ["ਚਲਾਉਣਾ", "ਖਾਣਾ", "ਪੀਣਾ", "ਲਿਖਣਾ"], correctAnswer: "ਚਲਾਉਣਾ", explanation: "ਸਰੀਰਕ ਕਸਰਤ ਅਤੇ ਸਫ਼ਰ ਲਈ ‘ਸਾਈਕਲ ਚਲਾਉਣਾ’ ਲਾਭਦਾਇਕ ਹੈ।")
        ]
    )

    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "ਸਮਾਨਾਰਥੀ (ਆਸਾਨ)",
        instructions: "ਉਹ ਸ਼ਬਦ ਚੁਣੋ ਜਿਸਦਾ ਅਰਥ ਹੈ ਦਿੱਤੇ ਗਏ ਸ਼ਬਦ ਵਾਂਗ ਹੀ।",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਗੁੱਸਾ", options: ["ਖੁਸ਼", "ਗੁੱਸੇ", "ਸ਼ਾਂਤ", "ਉਦਾਸ"], correctAnswer: "ਗੁੱਸੇ", explanation: "'ਗੁੱਸੇ' (Angry) 'ਗੁੱਸਾ' (Anger) ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਨਾਰਾਜ਼ਗੀ ਜਾਂ ਕ੍ਰੋਧ ਦੀ ਭਾਵਨਾ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਠੰਡਾ", options: ["ਗਰਮ", "ਠੰਢ", "ਗਰਮ", "ਹਲਕੇ"], correctAnswer: "ਠੰਢ", explanation: "'ਠੰਢ' 'ਠੰਡਾ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਘੱਟ ਤਾਪਮਾਨ ਜਾਂ ਸਰਦੀ ਦਾ ਅਹਿਸਾਸ ਕਰਵਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਵੱਡਾ", options: ["ਛੋਟਾ", "ਵੱਡਾ", "ਛੋਟਾ", "ਪਤਲਾ"], correctAnswer: "ਵੱਡਾ", explanation: "'ਛੋਟਾ' 'ਵੱਡਾ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਆਕਾਰ ਜਾਂ ਮਾਤਰਾ ਦੇ ਦੋ ਉਲਟ ਪਹਿਲੂਆਂ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਥੱਕਿਆ ਹੋਇਆ", options: ["ਚੇਤਾਵਨੀ", "ਜਾਗਣਾ", "ਥੱਕ ਗਿਆ", "ਆਰਾਮ ਕੀਤਾ"], correctAnswer: "ਥੱਕ ਗਿਆ", explanation: "'ਥੱਕ ਗਿਆ' 'ਥੱਕਿਆ ਹੋਇਆ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਊਰਜਾ ਦੀ ਕਮੀ ਜਾਂ ਥਕਾਵਟ ਦੀ ਸਥਿਤੀ ਨੂੰ ਪ੍ਰਗਟ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਡਰਿਆ ਹੋਇਆ", options: ["ਬਹਾਦਰ", "ਡਰੇ ਹੋਏ", "ਸ਼ਾਂਤ", "ਬੋਲਡ"], correctAnswer: "ਡਰੇ ਹੋਏ", explanation: "'ਡਰੇ ਹੋਏ' 'ਡਰਿਆ ਹੋਇਆ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਡਰ ਜਾਂ ਭੈਅ ਮਹਿਸੂਸ ਕਰਨ ਦੀ ਸਥਿਤੀ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਕਿਸਮ", options: ["ਮਤਲਬ", "ਬੇਰਹਿਮ", "ਕੋਮਲ", "ਰੁੱਖਾ"], correctAnswer: "ਕੋਮਲ", explanation: "'ਕੋਮਲ' (ਨਰਮ ਜਾਂ ਦਿਆਲੂ) ਅੰਗਰੇਜ਼ੀ ਸ਼ਬਦ 'Kind' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ, ਜਿਸਦਾ ਅਰਥ ਦੂਜਿਆਂ ਪ੍ਰਤੀ ਚੰਗਾ ਵਿਵਹਾਰ ਕਰਨਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਤੇਜ਼", options: ["ਹੌਲੀ", "ਤੇਜ਼", "ਆਲਸੀ", "ਸੰਜੀਵ"], correctAnswer: "ਤੇਜ਼", explanation: "'ਹੌਲੀ' 'ਤੇਜ਼' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਗਤੀ ਜਾਂ ਰਫ਼ਤਾਰ ਦੇ ਦੋ ਉਲਟ ਪੱਧਰਾਂ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਪੁਰਾਣਾ", options: ["ਨੌਜਵਾਨ", "ਪ੍ਰਾਚੀਨ", "ਨਵਾਂ", "ਤਾਜ਼ਾ"], correctAnswer: "ਪ੍ਰਾਚੀਨ", explanation: "'ਪ੍ਰਾਚੀਨ' 'ਪੁਰਾਣਾ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਉਹਨਾਂ ਚੀਜ਼ਾਂ ਲਈ ਵਰਤੇ ਜਾਂਦੇ ਹਨ ਜੋ ਬਹੁਤ ਸਮਾਂ ਪਹਿਲਾਂ ਦੀਆਂ ਹੋਣ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਗੰਦਾ", options: ["ਸਾਫ਼", "ਗੰਦਾ", "ਸਾਫ਼-ਸੁਥਰਾ", "ਸੁਥਰਾ"], correctAnswer: "ਗੰਦਾ", explanation: "ਇਹ ਸ਼ਬਦ ਆਪਣੇ ਆਪ ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ, ਜੋ ਕਿ ਕਿਸੇ ਚੀਜ਼ ਦੇ ਸਾਫ਼ ਨਾ ਹੋਣ ਜਾਂ ਮੈਲੇ ਹੋਣ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਚਮਕਦਾਰ", options: ["ਮੱਧਮ", "ਹਨੇਰਾ", "ਸ਼ਾਨਦਾਰ", "ਸੰਜੀਵ"], correctAnswer: "ਸ਼ਾਨਦਾਰ", explanation: "'ਸ਼ਾਨਦਾਰ' 'ਚਮਕਦਾਰ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੋ ਸਕਦਾ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਕਿਸੇ ਚੀਜ਼ ਦੀ ਬਹੁਤ ਵਧੀਆ, ਖੂਬਸੂਰਤ ਜਾਂ ਰੌਸ਼ਨ ਦਿੱਖ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।")
        ]
    )

    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "ਸਮਾਨਾਰਥੀ (ਸਖਤ)",
        instructions: "ਉਹ ਸ਼ਬਦ ਚੁਣੋ ਜਿਸਦਾ ਅਰਥ ਹੈ ਦਿੱਤੇ ਗਏ ਸ਼ਬਦ ਵਾਂਗ ਹੀ।",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਉਦਾਸੀ", options: ["ਅਨੰਦਮਈ", "ਉਦਾਸ", "ਉਤਸ਼ਾਹਿਤ", "ਸਮੱਗਰੀ"], correctAnswer: "ਉਦਾਸ", explanation: "'ਉਦਾਸ' 'ਉਦਾਸੀ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਖੁਸ਼ੀ ਦੀ ਕਮੀ ਅਤੇ ਨਿਰਾਸ਼ਾ ਵਾਲੀ ਮਨੋਸਥਿਤੀ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਸ਼ਾਂਤ", options: ["ਰੌਲਾ", "ਪਰੇਸ਼ਾਨ", "ਸ਼ਾਂਤੀਪੂਰਨ", "ਪਾਗਲ"], correctAnswer: "ਸ਼ਾਂਤੀਪੂਰਨ", explanation: "'ਸ਼ਾਂਤੀਪੂਰਨ' 'ਸ਼ਾਂਤ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਅਜਿਹੀ ਸਥਿਤੀ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ ਜਿੱਥੇ ਕੋਈ ਰੌਲਾ-ਰੱਪਾ ਜਾਂ ਬੇਚੈਨੀ ਨਾ ਹੋਵੇ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਦਲੇਰ", options: ["ਡਰਪੋਕ", "ਡਰਾਉਣਾ", "ਬਹਾਦਰ", "ਡਰਪੋਕ"], correctAnswer: "ਬਹਾਦਰ", explanation: "'ਬਹਾਦਰ' 'ਦਲੇਰ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਉਸ ਵਿਅਕਤੀ ਲਈ ਵਰਤੇ ਜਾਂਦੇ ਹਨ ਜੋ ਡਰਦਾ ਨਹੀਂ ਅਤੇ ਹਿੰਮਤ ਵਾਲਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਵਿਸ਼ੇਸ਼", options: ["ਆਮ", "ਅਜੀਬ", "ਆਮ", "ਆਮ"], correctAnswer: "ਅਜੀਬ", explanation: "ਕਈ ਵਾਰ 'ਅਜੀਬ' (ਵਿਲੱਖਣ ਜਾਂ ਵੱਖਰਾ) ਨੂੰ 'ਵਿਸ਼ੇਸ਼' ਦੇ ਸੰਦਰਭ ਵਿੱਚ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ, ਕਿਉਂਕਿ ਦੋਵੇਂ ਆਮ ਨਾਲੋਂ ਵੱਖਰੇ ਹੋਣ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਭਰਪੂਰ", options: ["ਦੁਰਲੱਭ", "ਭਰਪੂਰ", "ਦੁਰਲੱਭ", "ਸੀਮਿਤ"], correctAnswer: "ਭਰਪੂਰ", explanation: "ਇਹ ਸ਼ਬਦ ਆਪਣੇ ਆਪ ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ, ਜਿਸਦਾ ਅਰਥ ਹੈ ਕਿਸੇ ਚੀਜ਼ ਦਾ ਬਹੁਤ ਵੱਡੀ ਮਾਤਰਾ ਵਿੱਚ ਹੋਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਕਮਜ਼ੋਰ", options: ["ਮਜ਼ਬੂਤ", "ਸ਼ਕਤੀਸ਼ਾਲੀ", "ਕਮਜ਼ੋਰ", "ਮਜ਼ਬੂਤ"], correctAnswer: "ਕਮਜ਼ੋਰ", explanation: "ਇਹ ਸ਼ਬਦ ਆਪਣੇ ਆਪ ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ, ਜੋ ਕਿ ਸਰੀਰਕ ਜਾਂ ਮਾਨਸਿਕ ਤੌਰ 'ਤੇ ਤਾਕਤ ਨਾ ਹੋਣ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਵਿਵਿਧ", options: ["ਸੰਜੀਵ", "ਬੇਹੋਸ਼", "ਰੰਗੀਨ", "ਫ਼ਿੱਕੇ"], correctAnswer: "ਰੰਗੀਨ", explanation: "'ਰੰਗੀਨ' ਨੂੰ 'ਵਿਵਿਧ' ਦੇ ਰੂਪਕ ਸਮਾਨਾਰਥੀ ਵਜੋਂ ਵਰਤਿਆ ਜਾ ਸਕਦਾ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਬਹੁਤ ਸਾਰੀਆਂ ਵੱਖ-ਵੱਖ ਕਿਸਮਾਂ ਜਾਂ ਰੰਗਾਂ ਦੇ ਹੋਣ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਫਰੂਗਲ", options: ["ਫਾਲਤੂ", "ਕਿਫ਼ਾਇਤੀ", "ਸ਼ਾਨਦਾਰ", "ਉਦਾਰ"], correctAnswer: "ਕਿਫ਼ਾਇਤੀ", explanation: "'ਕਿਫ਼ਾਇਤੀ' ਅੰਗਰੇਜ਼ੀ ਸ਼ਬਦ 'Frugal' ਦਾ ਪੰਜਾਬੀ ਅਨੁਵਾਦ ਅਤੇ ਸਮਾਨਾਰਥੀ ਹੈ, ਜਿਸਦਾ ਅਰਥ ਹੈ ਪੈਸੇ ਦੀ ਸੋਚ-ਸਮਝ ਕੇ ਵਰਤੋਂ ਕਰਨਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ELOQUENT", options: ["ਬੁੜਬੁੜਾਉਣਾ", "ਸਪਸ਼ਟ", "ਸ਼ਾਂਤ", "ਬੇਢੰਗੇ"], correctAnswer: "ਸਪਸ਼ਟ", explanation: "'ਸਪਸ਼ਟ' (ਜਾਂ ਪ੍ਰਭਾਵਸ਼ਾਲੀ) 'Eloquent' ਦਾ ਸਮਾਨਾਰਥੀ ਹੈ, ਕਿਉਂਕਿ ਦੋਵਾਂ ਦਾ ਅਰਥ ਆਪਣੇ ਵਿਚਾਰਾਂ ਨੂੰ ਬਹੁਤ ਸਪੱਸ਼ਟ ਅਤੇ ਵਧੀਆ ਢੰਗ ਨਾਲ ਪੇਸ਼ ਕਰਨਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਟਿਕਾਊ", options: ["ਕਮਜ਼ੋਰ", "ਛੱਡਣਾ", "ਨਿਰੰਤਰ", "ਲਚਕਦਾਰ"], correctAnswer: "ਨਿਰੰਤਰ", explanation: "'ਨਿਰੰਤਰ' 'ਟਿਕਾਊ' ਦਾ ਸਮਾਨਾਰਥੀ ਹੋ ਸਕਦਾ ਹੈ ਕਿਉਂਕਿ ਦੋਵੇਂ ਸ਼ਬਦ ਲੰਮੇ ਸਮੇਂ ਤੱਕ ਚੱਲਣ ਵਾਲੀ ਜਾਂ ਕਾਇਮ ਰਹਿਣ ਵਾਲੀ ਚੀਜ਼ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।")
        ]
    )

    private static let antonyms = Exercise(
        id: UUID(),
        title: "ਵਿਰੋਧੀ ਸ਼ਬਦ (ਆਸਾਨ)",
        instructions: "ਉਹ ਸ਼ਬਦ ਚੁਣੋ ਜਿਸਦਾ ਅਰਥ ਹੈ ਦਿੱਤੇ ਗਏ ਸ਼ਬਦ ਦੇ ਉਲਟ।",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਗਰਮ", options: ["ਗਰਮ", "ਠੰਡਾ", "ਠੰਡਾ", "ਨਰਮ"], correctAnswer: "ਠੰਡਾ", explanation: "'ਠੰਡਾ' 'ਗਰਮ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਤਾਪਮਾਨ ਦੇ ਦੋ ਬਿਲਕੁਲ ਉਲਟ ਸਿਰਿਆਂ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਧੰਨ", options: ["ਖੁਸ਼", "ਅਨੰਦਮਈ", "ਉਦਾਸ", "ਸਮੱਗਰੀ"], correctAnswer: "ਉਦਾਸ", explanation: "'ਉਦਾਸ' 'ਧੰਨ' (ਖੁਸ਼) ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇੱਕ ਖੁਸ਼ੀ ਦੀ ਅਵਸਥਾ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ ਅਤੇ ਦੂਜਾ ਗ਼ਮੀ ਦੀ ਸਥਿਤੀ ਨੂੰ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਵੱਡਾ", options: ["ਵਿਸ਼ਾਲ", "ਵੱਡਾ", "ਛੋਟਾ", "ਲੰਬਾ"], correctAnswer: "ਛੋਟਾ", explanation: "'ਛੋਟਾ' 'ਵੱਡਾ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਆਕਾਰ ਜਾਂ ਮਾਤਰਾ ਦੇ ਦੋ ਉਲਟ ਪਹਿਲੂਆਂ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਤੇਜ਼", options: ["ਤੇਜ਼", "ਹੌਲੀ", "ਤੇਜ਼", "ਤੇਜ਼"], correctAnswer: "ਹੌਲੀ", explanation: "'ਹੌਲੀ' 'ਤੇਜ਼' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਗਤੀ ਜਾਂ ਰਫ਼ਤਾਰ ਦੇ ਦੋ ਉਲਟ ਪੱਧਰਾਂ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਸਾਫ਼", options: ["ਸਾਫ਼-ਸੁਥਰਾ", "ਸੁਥਰਾ", "ਗੰਦਾ", "ਤਾਜ਼ਾ"], correctAnswer: "ਗੰਦਾ", explanation: "'ਗੰਦਾ' 'ਸਾਫ਼' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇੱਕ ਸਫਾਈ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ ਅਤੇ ਦੂਜਾ ਮੈਲਾ ਹੋਣ ਨੂੰ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਜਾਗਦੇ ਰਹੋ", options: ["ਚੇਤਾਵਨੀ", "ਜਾਣੂ", "ਸੁੱਤੇ ਹੋਏ", "ਕਿਰਿਆਸ਼ੀਲ"], correctAnswer: "ਸੁੱਤੇ ਹੋਏ", explanation: "'ਸੁੱਤੇ ਹੋਏ' 'ਜਾਗਦੇ ਰਹੋ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਚੇਤਨਤਾ ਅਤੇ ਨੀਂਦ ਦੀਆਂ ਦੋ ਉਲਟ ਸਥਿਤੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਉੱਚਾ", options: ["ਰੌਲਾ", "ਸ਼ਾਂਤ", "ਬੂਮਿੰਗ", "ਮਜ਼ਬੂਤ"], correctAnswer: "ਸ਼ਾਂਤ", explanation: "'ਸ਼ਾਂਤ' 'ਉੱਚਾ' (ਰੌਲੇ ਵਾਲਾ) ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਆਵਾਜ਼ ਦੇ ਦੋ ਬਿਲਕੁਲ ਉਲਟ ਪੱਧਰ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਖੋਲ੍ਹੋ", options: ["ਬੰਦ", "ਚੌੜਾ", "ਸਾਫ਼", "ਮੁਫ਼ਤ"], correctAnswer: "ਬੰਦ", explanation: "'ਬੰਦ' 'ਖੋਲ੍ਹੋ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਕਿਸੇ ਚੀਜ਼ ਦੀ ਪਹੁੰਚ ਦੀਆਂ ਦੋ ਉਲਟ ਸਥਿਤੀਆਂ ਨੂੰ ਦਰਸਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਪੂਰਾ", options: ["ਪੈਕ", "ਖਾਲੀ", "ਲੋਡ ਕੀਤਾ", "ਪੂਰਾ"], correctAnswer: "ਖਾਲੀ", explanation: "'ਖਾਲੀ' 'ਪੂਰਾ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇੱਕ ਭਰੇ ਹੋਣ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ ਅਤੇ ਦੂਜਾ ਉਸ ਵਿੱਚ ਕੁਝ ਨਾ ਹੋਣ ਨੂੰ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ: ਪਿਆਰ", options: ["ਪਿਆਰ ਕਰਨਾ", "ਪਸੰਦ", "ਨਫ਼ਰਤ", "ਦੇਖਭਾਲ"], correctAnswer: "ਨਫ਼ਰਤ", explanation: "'ਨਫ਼ਰਤ' 'ਪਿਆਰ' ਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਇਹ ਇਨਸਾਨੀ ਭਾਵਨਾਵਾਂ ਦੇ ਦੋ ਬਿਲਕੁਲ ਉਲਟ ਸਿਰੇ ਹਨ।")
        ]
    )

    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "ਵਾਕ ਸੰਪੂਰਨਤਾ (ਆਸਾਨ)",
        instructions: "ਉਹ ਸ਼ਬਦ ਚੁਣੋ ਜੋ ਵਾਕ ਨੂੰ ਸਭ ਤੋਂ ਵਧੀਆ ਢੰਗ ਨਾਲ ਪੂਰਾ ਕਰੇ।",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ___ ਨੂੰ ਸਿੰਜਿਆ.", options: ["ਫੁੱਲ", "ਮੰਜ਼ਿਲਾਂ", "ਆਟਾ"], correctAnswer: "ਫੁੱਲ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ ਕਿਉਂਕਿ ਪੌਦਿਆਂ ਜਾਂ 'ਫੁੱਲਾਂ' ਨੂੰ ਹੀ ਪਾਣੀ ਨਾਲ ਸਿੰਜਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਆਪਣਾ ___ ਪਹਿਨ ਲਿਆ।", options: ["ਕੋਟ", "ਕਿਸ਼ਤੀ", "ਬੱਕਰੀ"], correctAnswer: "ਕੋਟ", explanation: "ਇਹ ਵਾਕ ਨੂੰ ਸਾਰਥਕ ਬਣਾਉਂਦਾ ਹੈ ਕਿਉਂਕਿ 'ਕੋਟ' ਇੱਕ ਕੱਪੜਾ ਹੈ ਜਿਸਨੂੰ ਪਹਿਨਿਆ ਜਾ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੈਨੂੰ ___ ਦਾ ਗਲਾਸ ਚਾਹੀਦਾ ਹੈ।", options: ["ਪਾਣੀ", "ਵੇਟਰ", "ਵਾਡਰ"], correctAnswer: "ਪਾਣੀ", explanation: "ਇਹ ਵਾਕ ਲਈ ਸਹੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਆਮ ਤੌਰ 'ਤੇ ਗਲਾਸ ਵਿੱਚ ਪੀਣ ਲਈ 'ਪਾਣੀ' ਮੰਗਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਉਸਨੂੰ ਬੁਲਾਇਆ___", options: ["ਮਾਂ", "ਪਰੇਸ਼ਾਨ", "ਝੱਗ"], correctAnswer: "ਮਾਂ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ, ਜੋ ਦਰਸਾਉਂਦਾ ਹੈ ਕਿ ਉਸਨੇ ਕਿਸੇ ਨੂੰ ਆਵਾਜ਼ ਮਾਰੀ ਜਾਂ ਸੰਬੋਧਿਤ ਕੀਤਾ, ਜਿਵੇਂ ਕਿ ਆਪਣੀ 'ਮਾਂ' ਨੂੰ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੁੱਤੇ ਨੇ ਹਿਲਾ ਦਿੱਤਾ___।", options: ["ਕਹਾਣੀ", "ਪੂਛ", "ਲੰਬਾ"], correctAnswer: "ਪੂਛ", explanation: "ਇਹ ਸਹੀ ਜਵਾਬ ਹੈ ਕਿਉਂਕਿ ਕੁੱਤੇ ਆਪਣੀ ਖੁਸ਼ੀ ਜਾਂ ਉਤਸ਼ਾਹ ਪ੍ਰਗਟ ਕਰਨ ਲਈ ਆਮ ਤੌਰ 'ਤੇ ਆਪਣੀ 'ਪੂਛ' ਹਿਲਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ___ ਨੂੰ ਬੰਦ ਕਰ ਦਿੱਤਾ।", options: ["ਲੜਾਈ", "ਰੋਸ਼ਨੀ", "ਰਾਤ"], correctAnswer: "ਰੋਸ਼ਨੀ", explanation: "ਇਹ ਵਾਕ ਨੂੰ ਪੂਰਾ ਕਰਦਾ ਹੈ ਕਿਉਂਕਿ ਜਦੋਂ ਲੋੜ ਨਾ ਹੋਵੇ ਤਾਂ ਬੱਤੀ ਜਾਂ 'ਰੋਸ਼ਨੀ' ਨੂੰ ਬੰਦ ਕਰ ਦਿੱਤਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਇੱਕ ___ ਪਕਾਇਆ.", options: ["ਜਾਅਲੀ", "ਝੀਲ", "ਕੇਕ"], correctAnswer: "ਕੇਕ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ ਕਿਉਂਕਿ 'ਕੇਕ' ਇੱਕ ਅਜਿਹੀ ਚੀਜ਼ ਹੈ ਜਿਸਨੂੰ ਓਵਨ ਵਿੱਚ ਪਕਾਇਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਪੰਛੀ ਨੇ ਇੱਕ ___ ਬਣਾਇਆ.", options: ["ਆਲ੍ਹਣਾ", "ਆਰਾਮ", "ਟੈਸਟ"], correctAnswer: "ਆਲ੍ਹਣਾ", explanation: "ਇਹ ਵਾਕ ਨੂੰ ਸਾਰਥਕ ਬਣਾਉਂਦਾ ਹੈ ਕਿਉਂਕਿ ਪੰਛੀ ਆਪਣੇ ਰਹਿਣ ਅਤੇ ਆਂਡੇ ਦੇਣ ਲਈ 'ਆਲ੍ਹਣਾ' ਬਣਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ___ ਪੜ੍ਹਿਆ।", options: ["ਅਖਬਾਰ", "ਵੇਸਟ ਪੇਪਰ", "ਸੈਂਡਪੇਪਰ"], correctAnswer: "ਅਖਬਾਰ", explanation: "ਇਹ ਵਾਕ ਲਈ ਢੁਕਵਾਂ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਖ਼ਬਰਾਂ ਜਾਣਨ ਲਈ ਰੋਜ਼ਾਨਾ 'ਅਖਬਾਰ' ਪੜ੍ਹਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬੱਚੇ ___ ਵਿੱਚ ਖੇਡਦੇ ਸਨ।", options: ["ਪਾਰਕ", "ਸੱਕ", "ਹਨੇਰਾ"], correctAnswer: "ਪਾਰਕ", explanation: "ਇਹ ਸਹੀ ਜਵਾਬ ਹੈ ਕਿਉਂਕਿ 'ਪਾਰਕ' ਬੱਚਿਆਂ ਦੇ ਖੇਡਣ ਅਤੇ ਮਨੋਰੰਜਨ ਲਈ ਇੱਕ ਆਮ ਜਗ੍ਹਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ___ ਨੂੰ ਠੀਕ ਕੀਤਾ.", options: ["ਡੁੱਬ", "ਲਿੰਕ", "ਅੱਖ ਝਪਕਣਾ"], correctAnswer: "ਡੁੱਬ", explanation: "ਇੱਥੇ 'ਡੁੱਬ' (ਸਿੰਕ) ਨੂੰ ਠੀਕ ਕਰਨ (ਮੁਰੰਮਤ ਕਰਨ) ਦੀ ਗੱਲ ਕੀਤੀ ਗਈ ਹੈ। ਹਾਲਾਂਕਿ ਪੰਜਾਬੀ ਵਿੱਚ ਸਿੰਕ ਨੂੰ ਬੇਸਿਨ ਕਿਹਾ ਜਾਂਦਾ ਹੈ, ਪਰ ਇੱਥੇ ਸ਼ਬਦੀ ਅਨੁਵਾਦ ਵਰਤਿਆ ਗਿਆ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸੂਪ ਵੀ ਸੀ___।", options: ["ਗਰਮ", "ਬਹੁਤ", "ਬਿੰਦੀ"], correctAnswer: "ਗਰਮ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ, ਜੋ ਦੱਸਦਾ ਹੈ ਕਿ ਸੂਪ ਦਾ ਤਾਪਮਾਨ ਬਹੁਤ ਜ਼ਿਆਦਾ ਯਾਨੀ 'ਗਰਮ' ਸੀ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਉਸਨੂੰ ਖੋਲ੍ਹਿਆ ___", options: ["ਛੱਤਰੀ", "ਵਨੀਲਾ", "ਗੋਰਿਲਾ"], correctAnswer: "ਛੱਤਰੀ", explanation: "ਇਹ ਵਾਕ ਨੂੰ ਸਾਰਥਕ ਬਣਾਉਂਦਾ ਹੈ ਕਿਉਂਕਿ ਮੀਂਹ ਜਾਂ ਧੁੱਪ ਤੋਂ ਬਚਣ ਲਈ 'ਛੱਤਰੀ' ਖੋਲ੍ਹੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ___ ਦਾ ਭੁਗਤਾਨ ਕੀਤਾ।", options: ["ਬਿੱਲ", "ਭਰੋ", "ਮਿੱਲ"], correctAnswer: "ਬਿੱਲ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ, ਕਿਉਂਕਿ ਖਰੀਦੀ ਗਈ ਚੀਜ਼ ਜਾਂ ਸੇਵਾ ਬਦਲੇ ਪੈਸੇ ਦੇਣ ਦੀ ਪ੍ਰਕਿਰਿਆ ਨੂੰ 'ਬਿੱਲ' ਦਾ ਭੁਗਤਾਨ ਕਰਨਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬਿੱਲੀ ___ ਤੇ ਬੈਠ ਗਈ।", options: ["ਚਟਾਈ", "ਬੱਲੇ", "ਚੂਹਾ"], correctAnswer: "ਚਟਾਈ", explanation: "ਇਹ ਸਹੀ ਸ਼ਬਦ ਹੈ ਕਿਉਂਕਿ ਪਾਲਤੂ ਜਾਨਵਰ ਜਿਵੇਂ ਕਿ ਬਿੱਲੀਆਂ ਆਮ ਤੌਰ 'ਤੇ 'ਚਟਾਈ' 'ਤੇ ਬੈਠਣਾ ਪਸੰਦ ਕਰਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਇੱਕ ਨਿੱਘਾ ਪਹਿਨਿਆ ___.", options: ["ਸਵੈਟਰ", "swatter", "ਸਕੈਟਰ"], correctAnswer: "ਸਵੈਟਰ", explanation: "ਇਹ ਵਾਕ ਨੂੰ ਪੂਰਾ ਕਰਦਾ ਹੈ ਕਿਉਂਕਿ ਸਰਦੀਆਂ ਵਿੱਚ ਸਰੀਰ ਨੂੰ ਨਿੱਘਾ ਰੱਖਣ ਲਈ 'ਸਵੈਟਰ' ਪਹਿਨਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਇੱਕ ___ ਲਾਇਆ.", options: ["ਬਾਗ", "ਮਾਫ਼ੀ", "ਵਾਰਡਨ"], correctAnswer: "ਬਾਗ", explanation: "ਇਹ ਵਾਕ ਨੂੰ ਸਾਰਥਕ ਬਣਾਉਂਦਾ ਹੈ ਕਿਉਂਕਿ ਪੌਦੇ ਲਗਾਉਣ ਅਤੇ ਉਹਨਾਂ ਨੂੰ ਉਗਾਉਣ ਦੀ ਜਗ੍ਹਾ ਨੂੰ 'ਬਾਗ' ਲਗਾਉਣਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ਆਪਣੇ ਵਿੱਚ ਲਿਖਿਆ___.", options: ["ਡਾਇਰੀ", "ਡੇਅਰੀ", "ਡੇਜ਼ੀ"], correctAnswer: "ਡਾਇਰੀ", explanation: "ਇਹ ਸਹੀ ਜਵਾਬ ਹੈ ਕਿਉਂਕਿ ਲੋਕ ਆਪਣੀਆਂ ਨਿੱਜੀ ਗੱਲਾਂ ਜਾਂ ਰੋਜ਼ਾਨਾ ਦੇ ਵਿਚਾਰ ਲਿਖਣ ਲਈ 'ਡਾਇਰੀ' ਦੀ ਵਰਤੋਂ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਸਨੇ ___ ਦਾ ਭੁਗਤਾਨ ਕੀਤਾ।", options: ["ਬਿੱਲ", "ਭਰੋ", "ਮਿੱਲ"], correctAnswer: "ਬਿੱਲ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ, ਕਿਉਂਕਿ ਖਰੀਦੀ ਗਈ ਚੀਜ਼ ਜਾਂ ਸੇਵਾ ਬਦਲੇ ਪੈਸੇ ਦੇਣ ਦੀ ਪ੍ਰਕਿਰਿਆ ਨੂੰ 'ਬਿੱਲ' ਦਾ ਭੁਗਤਾਨ ਕਰਨਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬੱਚਾ ___ ਹੈ।", options: ["ਸੌਣਾ", "ਸਵੀਪਿੰਗ", "ਸੀਪਿੰਗ"], correctAnswer: "ਸੌਣਾ", explanation: "ਇਹ ਵਾਕ ਪੂਰਾ ਕਰਦਾ ਹੈ ਕਿ ਬੱਚਾ ਆਰਾਮ ਕਰ ਰਿਹਾ ਹੈ ਜਾਂ ਉਸਨੂੰ ਨੀਂਦ ਆਈ ਹੋਈ ਹੈ ('ਸੌਂ ਰਿਹਾ ਹੈ')।")
        ]
    )

    private static let morphology = Exercise(
        id: UUID(),
        title: "ਸ਼ਬਦ-ਰੂਪ ਅਤੇ ਵਿਆਕਰਨ",
        instructions: "ਵਾਕ ਦੇ ਪ੍ਰਸੰਗ ਅਨੁਸਾਰ ਸਹੀ ਸ਼ਬਦ-ਰੂਪ ਚੁਣੋ।",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਮੁੰਡਾ ਰੋਟੀ ___ ਹੈ। (ਵਿਆਕਰਨ ਅਨੁਸਾਰ ਸਹੀ ਸ਼ਬਦ ਚੁਣੋ)”", options: ["ਖਾਂਦਾ", "ਖਾਂਦੀ", "ਖਾਂਦੇ", "ਖਾਂਦੀਆਂ"], correctAnswer: "ਖਾਂਦਾ", explanation: "ਪੁਲਿੰਗ ਇਕਵਚਨ (ਮੁੰਡਾ) ਦੇ ਨਾਲ ਕਿਰਿਆ ਦਾ ਰੂਪ ‘ਖਾਂਦਾ’ ਲੱਗੇਗਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਕੁੜੀ ਰੋਟੀ ___ ਹੈ।”", options: ["ਖਾਂਦੀ", "ਖਾਂਦਾ", "ਖਾਂਦੇ", "ਖਾਂਦੀਆਂ"], correctAnswer: "ਖਾਂਦੀ", explanation: "ਇਸਤਰੀ ਲਿੰਗ ਇਕਵਚਨ (ਕੁੜੀ) ਦੇ ਨਾਲ ਕਿਰਿਆ ‘ਖਾਂਦੀ’ ਲੱਗੇਗੀ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਬੱਚੇ ਖੇਡ ਮੈਦਾਨ ਵਿੱਚ ___ ਹਨ।”", options: ["ਖੇਡਦੇ", "ਖੇਡਦਾ", "ਖੇਡਦੀ", "ਖੇਡਦੀਆਂ"], correctAnswer: "ਖੇਡਦੇ", explanation: "ਬਹੁਵਚਨ (ਬੱਚੇ) ਦੇ ਨਾਲ ਕਿਰਿਆ ਦਾ ਬਹੁਵਚਨ ਰੂਪ ‘ਖੇਡਦੇ’ ਲੱਗੇਗਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਉਹ ਕੱਲ੍ਹ ਦਿੱਲੀ ___। (ਭੂਤਕਾਲ ਦਾ ਸਹੀ ਰੂਪ)”", options: ["ਗਿਆ ਸੀ", "ਜਾਵੇਗਾ", "ਜਾਂਦਾ ਹੈ", "ਜਾ ਰਿਹਾ ਹੈ"], correctAnswer: "ਗਿਆ ਸੀ", explanation: "ਲੰਘ ਚੁੱਕੇ ਸਮੇਂ (ਕੱਲ੍ਹ) ਦੀ ਗੱਲ ਹੋ ਰਹੀ ਹੈ, ਇਸ ਲਈ ‘ਗਿਆ ਸੀ’ ਸਹੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਅਸੀਂ ਕੱਲ੍ਹ ਫ਼ਿਲਮ ਵੇਖਣ ___। (ਭਵਿੱਖਤ ਕਾਲ ਦਾ ਸਹੀ ਰੂਪ)”", options: ["ਜਾਵਾਂਗੇ", "ਗਏ ਸੀ", "ਜਾਂਦੇ ਹਾਂ", "ਜਾ ਰਹੇ ਹਾਂ"], correctAnswer: "ਜਾਵਾਂਗੇ", explanation: "ਆਉਣ ਵਾਲੇ ਸਮੇਂ (ਕੱਲ੍ਹ) ਲਈ ਭਵਿੱਖਤ ਕਾਲ ‘ਜਾਵਾਂਗੇ’ ਵਰਤਿਆ ਜਾਵੇਗਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “‘ਕਿਤਾਬ’ ਸ਼ਬਦ ਦਾ ਬਹੁਵਚਨ ਕੀ ਹੋਵੇਗਾ?”", options: ["ਕਿਤਾਬਾਂ", "ਕਿਤਾਬੇ", "ਕਿਤਾਬੀ", "ਕਿਤਾਬੂ"], correctAnswer: "ਕਿਤਾਬਾਂ", explanation: "‘ਕਿਤਾਬ’ ਦਾ ਬਹੁਵਚਨ ਰੂਪ ‘ਕਿਤਾਬਾਂ’ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “‘ਕੁੜੀ’ ਸ਼ਬਦ ਦਾ ਬਹੁਵਚਨ ਕੀ ਹੋਵੇਗਾ?”", options: ["ਕੁੜੀਆਂ", "ਕੁੜੀਓ", "ਕੁੜੀਏ", "ਕੋਈ ਨਹੀਂ"], correctAnswer: "ਕੁੜੀਆਂ", explanation: "ਪੰਜਾਬੀ ਵਿੱਚ ਇਕਾਰਾਂਤ ਇਸਤਰੀ ਲਿੰਗ ਦਾ ਬਹੁਵਚਨ ‘ਆਂ’ ਲਾ ਕੇ ਬਣਦਾ ਹੈ (ਕੁੜੀਆਂ)।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “‘ਘੋੜਾ’ ਦਾ ਇਸਤਰੀ ਲਿੰਗ ਕੀ ਹੋਵੇਗਾ?”", options: ["ਘੋੜੀ", "ਘੋੜੇ", "ਘੋੜੀਆਂ", "ਘੋੜਿਆਂ"], correctAnswer: "ਘੋੜੀ", explanation: "‘ਘੋੜਾ’ ਦਾ ਇਸਤਰੀ ਲਿੰਗ ‘ਘੋੜੀ’ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “‘ਸੂਬੇਦਾਰ’ ਦਾ ਇਸਤਰੀ ਲਿੰਗ ਕੀ ਹੋਵੇਗਾ?”", options: ["ਸੂਬੇਦਾਰਨੀ", "ਸੂਬੇਦਾਰਨ", "ਸੂਬੇਦਾਰੀ", "ਸੂਬੇਦਾਰੀਆਂ"], correctAnswer: "ਸੂਬੇਦਾਰਨੀ", explanation: "ਪਿਛੇਤਰ ‘-ਨੀ’ ਲਗਾ ਕੇ ‘ਸੂਬੇਦਾਰਨੀ’ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “‘ਹਵਾ ਚੱਲ ਰਹੀ ___। (ਸਹੀ ਸਹਾਇਕ ਕਿਰਿਆ)”", options: ["ਹੈ", "ਹਨ", "ਸੀਗੇ", "ਸਨ"], correctAnswer: "ਹੈ", explanation: "ਇਕਵਚਨ ‘ਹਵਾ’ ਲਈ ਸਹਾਇਕ ਕਿਰਿਆ ‘ਹੈ’ ਵਰਤੀ ਜਾਵੇਗੀ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਬਜ਼ੁਰਗ ਸੜਕ ___ ਕਰ ਰਹੇ ਹਨ।”", options: ["ਪਾਰ", "ਤੋਂ", "ਵਿੱਚ", "ਨਾਲ"], correctAnswer: "ਪਾਰ", explanation: "ਸੜਕ ਲੰਘਣ ਲਈ ‘ਪਾਰ’ ਸ਼ਬਦ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਮੈਂ ਰੋਜ਼ ਸਵੇਰੇ ਸੈਰ ਕਰਨ ___ ਹਾਂ।”", options: ["ਜਾਂਦਾ", "ਗਿਆ", "ਜਾਵਾਂਗਾ", "ਜਾਣਾ"], correctAnswer: "ਜਾਂਦਾ", explanation: "ਨਿੱਤ ਦੇ ਨਿਯਮ ਲਈ ਵਰਤਮਾਨ ਕਾਲ ‘ਜਾਂਦਾ’ ਢੁਕਵਾਂ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਉਹ ਮੇਰੇ ਪਿਤਾ ___। (ਸਤਿਕਾਰਯੋਗ ਬਹੁਵਚਨ)”", options: ["ਹਨ", "ਹੈ", "ਸੀ", "ਗਾ"], correctAnswer: "ਹਨ", explanation: "ਪਿਤਾ ਜੀ ਸਤਿਕਾਰਯੋਗ ਹਨ, ਇਸ ਲਈ ਬਹੁਵਚਨ ਸਹਾਇਕ ਕਿਰਿਆ ‘ਹਨ’ ਵਰਤੀ ਜਾਵੇਗੀ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਮੇਜ ___ ਕਿਤਾਬ ਪਈ ਹੈ।”", options: ["ਉੱਤੇ", "ਵਿੱਚ", "ਨਾਲ", "ਤੋਂ"], correctAnswer: "ਉੱਤੇ", explanation: "ਕਿਤਾਬ ਮੇਜ ਦੇ ਉੱਪਰ ਪਈ ਹੈ, ਇਸ ਲਈ ‘ਉੱਤੇ’ ਢੁਕਵਾਂ ਸੰਬੰਧਕ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਮੈਂ ਪਾਣੀ ਪੀਣਾ ___ ਹਾਂ।”", options: ["ਚਾਹੁੰਦਾ", "ਚਾਹੁੰਦੀ", "ਚਾਹੁੰਦੇ", "ਚਾਹੁੰਦੀਆਂ"], correctAnswer: "ਚਾਹੁੰਦਾ", explanation: "ਕਰਤਾ (ਮੈਂ, ਪੁਲਿੰਗ) ਲਈ ‘ਚਾਹੁੰਦਾ’ ਸਹੀ ਕਿਰਿਆ ਰੂਪ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਅੱਜ ਬਹੁਤ ਤੇਜ਼ ਮੀਂਹ ___ ਰਿਹਾ ਹੈ।”", options: ["ਪੈ", "ਚੱਲ", "ਆ", "ਵਗ"], correctAnswer: "ਪੈ", explanation: "ਮੀਂਹ ਪੈਣ ਲਈ ‘ਪੈ’ ਕਿਰਿਆ ਵਰਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਗੱਡੀ ਸਟੇਸ਼ਨ 'ਤੇ ___ ਚੁੱਕੀ ਹੈ।”", options: ["ਪਹੁੰਚ", "ਜਾ", "ਆ", "ਲੰਘ"], correctAnswer: "ਪਹੁੰਚ", explanation: "ਸਹੀ ਕਿਰਿਆ ਰੂਪ ‘ਪਹੁੰਚ ਚੁੱਕੀ ਹੈ’ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਸਾਨੂੰ ਹਮੇਸ਼ਾ ਸੱਚ ___ ਚਾਹੀਦਾ ਹੈ।”", options: ["ਬੋਲਣਾ", "ਕਹਿਣਾ", "ਦੱਸਣਾ", "ਲਿਖਣਾ"], correctAnswer: "ਬੋਲਣਾ", explanation: "ਸੱਚ ਬੋਲਣ ਲਈ ‘ਬੋਲਣਾ’ ਸ਼ਬਦ ਸਹੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਬੱਚੇ ਜਮਾਤ ਵਿੱਚ ਸ਼ੋਰ ___ ਰਹੇ ਹਨ।”", options: ["ਮਚਾ", "ਕਰ", "ਪਾ", "ਦੇ"], correctAnswer: "ਮਚਾ", explanation: "ਸ਼ੋਰ ਕਰਨ ਲਈ ‘ਮਚਾ ਰਹੇ ਹਨ’ ਜਾਂ ‘ਪਾ ਰਹੇ ਹਨ’ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ, ‘ਮਚਾ’ ਸਭ ਤੋਂ ਢੁਕਵਾਂ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਕ ਅਨੁਸਾਰ ਸਹੀ ਵਿਆਕਰਨਕ ਰੂਪ ਚੁਣੋ: “ਪਿਤਾ ਜੀ ਬਾਜ਼ਾਰ ___ ਫ਼ਲ ਲਿਆਏ।”", options: ["ਤੋਂ", "ਵਿੱਚ", "ਨਾਲ", "ਲਈ"], correctAnswer: "ਤੋਂ", explanation: "ਸਰੋਤ ਦਰਸਾਉਣ ਲਈ ‘ਤੋਂ’ ਸੰਬੰਧਕ ਵਰਤਿਆ ਜਾਵੇਗਾ।")
        ]
    )

    private static let analogies = Exercise(
        id: UUID(),
        title: "ਸਮਾਨਤਾਵਾਂ",
        instructions: "ਉਹ ਸ਼ਬਦ ਚੁਣੋ ਜੋ ਸਭ ਤੋਂ ਵਧੀਆ ਸਮਾਨਤਾ ਨੂੰ ਪੂਰਾ ਕਰਦਾ ਹੈ।",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "PUPPY ਕੁੱਤੇ ਲਈ ਹੈ ਜਿਵੇਂ ਕਿ KITEN ਨੂੰ ___", options: ["ਬਿੱਲੀ", "ਕੁੱਤਾ", "ਪੰਛੀ", "ਮੱਛੀ"], correctAnswer: "ਬਿੱਲੀ", explanation: "ਜਿਸ ਤਰ੍ਹਾਂ ਕੁੱਤੇ ਦੇ ਬੱਚੇ ਨੂੰ ਪਪੀ (Puppy) ਕਿਹਾ ਜਾਂਦਾ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਬਿੱਲੀ ਦੇ ਬੱਚੇ ਨੂੰ ਕਿਟਨ (Kitten) ਕਿਹਾ ਜਾਂਦਾ ਹੈ। ਇਹ ਜਾਨਵਰ ਅਤੇ ਉਸਦੇ ਬੱਚੇ ਦਾ ਰਿਸ਼ਤਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਠੰਡ ਸਰਦੀਆਂ ਲਈ ਹੁੰਦੀ ਹੈ ਜਿਵੇਂ ਗਰਮ ਹੁੰਦੀ ਹੈ___", options: ["ਬਸੰਤ", "ਗਿਰਾਵਟ", "ਗਰਮੀਆਂ", "ਮੀਂਹ"], correctAnswer: "ਗਰਮੀਆਂ", explanation: "ਜਿਵੇਂ ਸਰਦੀਆਂ ਦੇ ਮੌਸਮ ਵਿੱਚ ਠੰਡ ਹੁੰਦੀ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਗਰਮੀਆਂ ਦੇ ਮੌਸਮ ਵਿੱਚ ਗਰਮੀ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਅੱਖ ਨੂੰ ਵੇਖਣਾ ਹੈ ਜਿਵੇਂ ਕੰਨ ਨੂੰ ___", options: ["ਛੋਹਵੋ", "ਸੁਣੋ", "ਗੰਧ", "ਸੁਆਦ"], correctAnswer: "ਸੁਣੋ", explanation: "ਜਿਵੇਂ ਅੱਖਾਂ ਦੀ ਵਰਤੋਂ ਵੇਖਣ ਲਈ ਕੀਤੀ ਜਾਂਦੀ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਕੰਨਾਂ ਦੀ ਵਰਤੋਂ ਸੁਣਨ ਲਈ ਕੀਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "CHEF ਰਸੋਈ ਲਈ ਹੈ ਜਿਵੇਂ ਡਾਕਟਰ ਨੂੰ ___", options: ["ਲਾਇਬ੍ਰੇਰੀ", "ਹਸਪਤਾਲ", "ਸਕੂਲ", "ਸਟੋਰ"], correctAnswer: "ਹਸਪਤਾਲ", explanation: "ਜਿਵੇਂ ਇੱਕ ਸ਼ੈੱਫ ਰਸੋਈ ਵਿੱਚ ਕੰਮ ਕਰਦਾ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਇੱਕ ਡਾਕਟਰ ਹਸਪਤਾਲ ਵਿੱਚ ਕੰਮ ਕਰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਸਤਾਨੇ ਹੱਥ ਵਾਂਗ ਹੈ ਜਿਵੇਂ ਸੋਕ ਨੂੰ ___", options: ["ਬਾਂਹ", "ਗੋਡਾ", "ਪੈਰ", "ਸਿਰ"], correctAnswer: "ਪੈਰ", explanation: "ਜਿਵੇਂ ਦਸਤਾਨੇ ਹੱਥਾਂ ਵਿੱਚ ਪਹਿਨੇ ਜਾਂਦੇ ਹਨ, ਉਸੇ ਤਰ੍ਹਾਂ ਜੁਰਾਬਾਂ ਪੈਰਾਂ ਵਿੱਚ ਪਹਿਨੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਖੁਸ਼ੀ ਹੱਸਣ ਲਈ ਹੈ ਜਿਵੇਂ SAD ਨੂੰ ___", options: ["ਮੁਸਕਰਾਓ", "ਸਲੀਪ", "ਰੋਣਾ", "ਚਲਾਓ"], correctAnswer: "ਰੋਣਾ", explanation: "ਜਦੋਂ ਅਸੀਂ ਖੁਸ਼ ਹੁੰਦੇ ਹਾਂ ਤਾਂ ਅਸੀਂ ਹੱਸਦੇ ਹਾਂ, ਅਤੇ ਜਦੋਂ ਅਸੀਂ ਉਦਾਸ ਹੁੰਦੇ ਹਾਂ ਤਾਂ ਅਸੀਂ ਰੋਂਦੇ ਹਾਂ।"),
            ExerciseItem(id: UUID(), prompt: "BIRD NEST ਲਈ ਹੈ ਜਿਵੇਂ BEAR ਨੂੰ ___", options: ["ਰੁੱਖ", "ਗੁਫਾ", "ਸਾਗਰ", "ਖੇਤਰ"], correctAnswer: "ਗੁਫਾ", explanation: "ਜਿਵੇਂ ਪੰਛੀ ਆਲ੍ਹਣੇ ਵਿੱਚ ਰਹਿੰਦਾ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਭਾਲੂ ਗੁਫਾ ਵਿੱਚ ਰਹਿੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਪੈਨਸਿਲ ਨੂੰ ਲਿਖਣਾ ਹੈ ਜਿਵੇਂ ਬੁਰਸ਼ ਨੂੰ ___", options: ["ਕੱਟੋ", "ਪੇਂਟ", "ਸਵੀਪ ਕਰੋ", "ਹਿਲਾਓ"], correctAnswer: "ਪੇਂਟ", explanation: "ਜਿਵੇਂ ਪੈਨਸਿਲ ਦੀ ਵਰਤੋਂ ਲਿਖਣ ਲਈ ਕੀਤੀ ਜਾਂਦੀ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਬੁਰਸ਼ ਦੀ ਵਰਤੋਂ ਪੇਂਟ ਕਰਨ ਲਈ ਕੀਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿਨ ਤੋਂ ਰਾਤ ਹੈ ਜਿਵੇਂ ਕਾਲੀ ਹੈ___", options: ["ਹਨੇਰਾ", "ਸਲੇਟੀ", "ਚਿੱਟਾ", "ਨੀਲਾ"], correctAnswer: "ਚਿੱਟਾ", explanation: "ਜਿਵੇਂ ਦਿਨ ਅਤੇ ਰਾਤ ਇੱਕ ਦੂਜੇ ਦੇ ਉਲਟ ਹਨ, ਉਸੇ ਤਰ੍ਹਾਂ ਕਾਲਾ ਅਤੇ ਚਿੱਟਾ ਵੀ ਉਲਟ ਰੰਗ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸਿਪਾਹੀ ਆਰਮੀ ਲਈ ਹੈ ਜਿਵੇਂ ਮਲਾਹ ਨੂੰ ___", options: ["ਹਵਾਈ ਸੈਨਾ", "ਮਰੀਨ", "ਨੇਵੀ", "ਗਾਰਡ"], correctAnswer: "ਨੇਵੀ", explanation: "ਜਿਵੇਂ ਸਿਪਾਹੀ ਫੌਜ ਦਾ ਹਿੱਸਾ ਹੁੰਦਾ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਮਲਾਹ ਜਲ ਸੈਨਾ (ਨੇਵੀ) ਦਾ ਹਿੱਸਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "WHEEL ਕਾਰ ਨੂੰ ਹੈ ਜਿਵੇਂ WING ਨੂੰ ___", options: ["ਕਿਸ਼ਤੀ", "ਹਵਾਈ ਜਹਾਜ਼", "ਰੇਲਗੱਡੀ", "ਬੱਸ"], correctAnswer: "ਹਵਾਈ ਜਹਾਜ਼", explanation: "ਜਿਵੇਂ ਪਹੀਏ ਕਾਰ ਦਾ ਇੱਕ ਮਹੱਤਵਪੂਰਨ ਹਿੱਸਾ ਹਨ, ਉਸੇ ਤਰ੍ਹਾਂ ਖੰਭ ਹਵਾਈ ਜਹਾਜ਼ ਦਾ ਜ਼ਰੂਰੀ ਹਿੱਸਾ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "TEACHER SCHOOL ਲਈ ਹੈ ਜਿਵੇਂ JUDGE ਨੂੰ ___", options: ["ਦਫ਼ਤਰ", "ਹਸਪਤਾਲ", "ਕੋਰਟਰੂਮ", "ਸਟੋਰ"], correctAnswer: "ਕੋਰਟਰੂਮ", explanation: "ਜਿਵੇਂ ਇੱਕ ਅਧਿਆਪਕ ਸਕੂਲ ਵਿੱਚ ਪੜ੍ਹਾਉਂਦਾ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਇੱਕ ਜੱਜ ਕੋਰਟਰੂਮ (ਅਦਾਲਤ) ਵਿੱਚ ਕੰਮ ਕਰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੈਟਰਪਿਲਰ ਬਟਰਫਲਾਈ ਨੂੰ ਹੈ ਜਿਵੇਂ ਕਿ ਟੈਡਪੋਲ ਨੂੰ ___", options: ["ਮੱਛੀ", "ਕੱਛੂ", "ਡੱਡੂ", "ਕਿਰਲੀ"], correctAnswer: "ਡੱਡੂ", explanation: "ਜਿਵੇਂ ਕੈਟਰਪਿਲਰ ਵੱਡਾ ਹੋ ਕੇ ਤਿਤਲੀ ਬਣਦਾ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਟੈਡਪੋਲ ਵੱਡਾ ਹੋ ਕੇ ਡੱਡੂ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਭੋਜਨ ਭੁੱਖੇ ਲਈ ਹੈ ਜਿਵੇਂ ਪਾਣੀ ਨੂੰ ___", options: ["ਗਿੱਲਾ", "ਪਿਆਸਾ", "ਠੰਡਾ", "ਪੂਰਾ"], correctAnswer: "ਪਿਆਸਾ", explanation: "ਜਿਵੇਂ ਭੁੱਖ ਲੱਗਣ 'ਤੇ ਭੋਜਨ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਪਿਆਸ ਲੱਗਣ 'ਤੇ ਪਾਣੀ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਉੱਨ ਭੇਡ ਲਈ ਹੈ ਜਿਵੇਂ ਰੇਸ਼ਮ ਨੂੰ ___", options: ["ਮੱਕੜੀ", "ਰੇਸ਼ਮ ਦਾ ਕੀੜਾ", "ਕਪਾਹ", "ਲਿਨਨ"], correctAnswer: "ਰੇਸ਼ਮ ਦਾ ਕੀੜਾ", explanation: "ਜਿਵੇਂ ਉੱਨ ਭੇਡ ਤੋਂ ਪ੍ਰਾਪਤ ਹੁੰਦੀ ਹੈ, ਉਸੇ ਤਰ੍ਹਾਂ ਰੇਸ਼ਮ ਰੇਸ਼ਮ ਦੇ ਕੀੜੇ ਤੋਂ ਪ੍ਰਾਪਤ ਹੁੰਦਾ ਹੈ।")
        ]
    )

    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "ਤੱਥ ਜਾਂ ਰਾਏ",
        instructions: "ਫੈਸਲਾ ਕਰੋ: ਕੀ ਇਹ ਬਿਆਨ ਇੱਕ ਤੱਥ ਹੈ ਜਾਂ ਇੱਕ ਰਾਏ?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਹਫ਼ਤੇ ਵਿੱਚ 7 ਦਿਨ ਹੁੰਦੇ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਤੱਥ ਹੈ ਕਿਉਂਕਿ ਕੈਲੰਡਰ ਅਨੁਸਾਰ ਇੱਕ ਹਫ਼ਤੇ ਵਿੱਚ ਹਮੇਸ਼ਾ ਸੱਤ ਦਿਨ ਹੀ ਹੁੰਦੇ ਹਨ, ਜਿਸ ਨੂੰ ਸਾਬਤ ਕੀਤਾ ਜਾ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਨੀਲਾ ਆਈਸ ਕਰੀਮ ਦਾ ਸਭ ਤੋਂ ਵਧੀਆ ਸੁਆਦ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਵੱਖ-ਵੱਖ ਲੋਕਾਂ ਦੀ ਪਸੰਦ ਵੱਖਰੀ ਹੋ ਸਕਦੀ ਹੈ; ਕੁਝ ਲੋਕਾਂ ਨੂੰ ਚਾਕਲੇਟ ਜਾਂ ਹੋਰ ਸੁਆਦ ਜ਼ਿਆਦਾ ਪਸੰਦ ਹੋ ਸਕਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਪਾਣੀ 32 ਡਿਗਰੀ ਫਾਰਨਹੀਟ 'ਤੇ ਜੰਮ ਜਾਂਦਾ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਵਿਗਿਆਨਕ ਤੱਥ ਹੈ ਜਿਸ ਨੂੰ ਤਾਪਮਾਨ ਮਾਪ ਕੇ ਸਾਬਤ ਕੀਤਾ ਜਾ ਸਕਦਾ ਹੈ ਕਿ ਪਾਣੀ 32°F 'ਤੇ ਬਰਫ਼ ਬਣ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੁੱਤੇ ਸਭ ਤੋਂ ਵਧੀਆ ਪਾਲਤੂ ਜਾਨਵਰ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਕੁਝ ਲੋਕ ਬਿੱਲੀਆਂ, ਪੰਛੀਆਂ ਜਾਂ ਹੋਰ ਜਾਨਵਰਾਂ ਨੂੰ ਬਿਹਤਰ ਪਾਲਤੂ ਜਾਨਵਰ ਮੰਨ ਸਕਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਇੱਕ ਤਿਕੋਣ ਦੇ ਤਿੰਨ ਪਾਸੇ ਹੁੰਦੇ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਗਣਿਤਿਕ ਤੱਥ ਹੈ; ਪਰਿਭਾਸ਼ਾ ਅਨੁਸਾਰ ਤਿਕੋਣ ਦੀਆਂ ਹਮੇਸ਼ਾ ਤਿੰਨ ਹੀ ਭੁਜਾਵਾਂ ਹੁੰਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਉਹ ਟੀਵੀ ਸ਼ੋਅ ਮਜ਼ਾਕੀਆ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਜੋ ਸ਼ੋਅ ਇੱਕ ਵਿਅਕਤੀ ਨੂੰ ਮਜ਼ਾਕੀਆ ਲੱਗਦਾ ਹੈ, ਹੋ ਸਕਦਾ ਹੈ ਉਹ ਦੂਜੇ ਨੂੰ ਬੋਰਿੰਗ ਲੱਗੇ।"),
            ExerciseItem(id: UUID(), prompt: "ਅਬ੍ਰਾਹਮ ਲਿੰਕਨ ਸੰਯੁਕਤ ਰਾਜ ਅਮਰੀਕਾ ਦੇ ਰਾਸ਼ਟਰਪਤੀ ਸਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਇਤਿਹਾਸਕ ਤੱਥ ਹੈ ਜਿਸ ਨੂੰ ਇਤਿਹਾਸ ਦੀਆਂ ਕਿਤਾਬਾਂ ਅਤੇ ਦਸਤਾਵੇਜ਼ਾਂ ਰਾਹੀਂ ਸਾਬਤ ਕੀਤਾ ਜਾ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਧਰਤੀ ਸਭ ਤੋਂ ਉੱਤਮ ਗ੍ਰਹਿ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ 'ਸਭ ਤੋਂ ਉੱਤਮ' ਹੋਣਾ ਇੱਕ ਵਿਅਕਤੀਗਤ ਸੋਚ ਹੈ ਅਤੇ ਇਸਨੂੰ ਵਿਗਿਆਨਕ ਤੌਰ 'ਤੇ ਸਾਬਤ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਇੱਕ ਘੰਟੇ ਵਿੱਚ 60 ਮਿੰਟ ਹੁੰਦੇ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਪ੍ਰਮਾਣਿਤ ਤੱਥ ਹੈ ਕਿ ਸਮੇਂ ਦੇ ਮਿਆਰੀ ਮਾਪ ਅਨੁਸਾਰ ਹਰ ਇੱਕ ਘੰਟੇ ਵਿੱਚ 60 ਮਿੰਟ ਹੁੰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਟਿਊਲਿਪਸ ਗੁਲਾਬ ਨਾਲੋਂ ਸੁੰਦਰ ਹਨ.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਸੁੰਦਰਤਾ ਵਿਅਕਤੀਗਤ ਪਸੰਦ 'ਤੇ ਨਿਰਭਰ ਕਰਦੀ ਹੈ; ਕੋਈ ਗੁਲਾਬ ਨੂੰ ਜ਼ਿਆਦਾ ਸੁੰਦਰ ਮੰਨ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਵਾਸ਼ਿੰਗਟਨ ਡੀ.ਸੀ. ਸੰਯੁਕਤ ਰਾਜ ਅਮਰੀਕਾ ਦੀ ਰਾਜਧਾਨੀ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਭੂਗੋਲਿਕ ਅਤੇ ਰਾਜਨੀਤਿਕ ਤੱਥ ਹੈ ਜਿਸ ਦੀ ਪੁਸ਼ਟੀ ਕੀਤੀ ਜਾ ਸਕਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੂੰਹ ਭਰ ਕੇ ਗੱਲ ਕਰਨੀ ਬੇਈਮਾਨੀ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਸ਼ਿਸ਼ਟਾਚਾਰ ਅਤੇ ਸਲੀਕੇ ਵੱਖ-ਵੱਖ ਸਭਿਆਚਾਰਾਂ ਅਤੇ ਲੋਕਾਂ ਲਈ ਵੱਖਰੇ ਹੋ ਸਕਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸਾਲ ਵਿੱਚ 12 ਮਹੀਨੇ ਹੁੰਦੇ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਤੱਥ ਹੈ ਕਿਉਂਕਿ ਆਧੁਨਿਕ ਕੈਲੰਡਰ ਅਨੁਸਾਰ ਹਰ ਸਾਲ ਵਿੱਚ ਬਾਰਾਂ ਮਹੀਨੇ ਹੀ ਹੁੰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਜਲਦੀ ਉੱਠਣਾ ਤੁਹਾਡੇ ਲਈ ਚੰਗਾ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਕੁਝ ਲੋਕ ਰਾਤ ਨੂੰ ਦੇਰ ਤੱਕ ਜਾਗ ਕੇ ਵਧੀਆ ਕੰਮ ਕਰ ਸਕਦੇ ਹਨ ਅਤੇ ਦੇਰ ਨਾਲ ਉੱਠਣਾ ਪਸੰਦ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "2 + 2 = 4।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਗਣਿਤਿਕ ਤੱਥ ਹੈ ਜਿਸ ਨੂੰ ਆਸਾਨੀ ਨਾਲ ਗਿਣ ਕੇ ਸਾਬਤ ਕੀਤਾ ਜਾ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸਮੁੰਦਰ ਖਾਰੇ ਪਾਣੀ ਤੋਂ ਬਣਿਆ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਵਿਗਿਆਨਕ ਤੱਥ ਹੈ ਜਿਸ ਨੂੰ ਸਮੁੰਦਰ ਦੇ ਪਾਣੀ ਦੀ ਜਾਂਚ ਕਰਕੇ ਸਾਬਤ ਕੀਤਾ ਜਾ ਸਕਦਾ ਹੈ ਕਿ ਇਸ ਵਿੱਚ ਲੂਣ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬਾਗਬਾਨੀ ਇੱਕ ਬਹੁਤ ਵਧੀਆ ਸ਼ੌਕ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਹਰ ਕਿਸੇ ਦੀਆਂ ਰੁਚੀਆਂ ਵੱਖਰੀਆਂ ਹੁੰਦੀਆਂ ਹਨ; ਕੁਝ ਨੂੰ ਕਿਤਾਬਾਂ ਪੜ੍ਹਨਾ ਜਾਂ ਖੇਡਣਾ ਜ਼ਿਆਦਾ ਵਧੀਆ ਲੱਗ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਚੱਟਾਨਾਂ ਇੱਕੋ ਆਕਾਰ ਦੇ ਖੰਭਾਂ ਨਾਲੋਂ ਭਾਰੀ ਹੁੰਦੀਆਂ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਵਿਗਿਆਨਕ ਤੱਥ ਹੈ ਕਿਉਂਕਿ ਚੱਟਾਨ ਦੀ ਘਣਤਾ ਖੰਭਾਂ ਨਾਲੋਂ ਕਿਤੇ ਜ਼ਿਆਦਾ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸੰਯੁਕਤ ਰਾਜ ਅਮਰੀਕਾ ਵਿੱਚ 50 ਰਾਜ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਭੂਗੋਲਿਕ ਅਤੇ ਰਾਜਨੀਤਿਕ ਤੱਥ ਹੈ ਜਿਸ ਦੀ ਅਧਿਕਾਰਤ ਦਸਤਾਵੇਜ਼ਾਂ ਦੁਆਰਾ ਪੁਸ਼ਟੀ ਕੀਤੀ ਜਾ ਸਕਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਪੀਜ਼ਾ ਸਭ ਤੋਂ ਵਧੀਆ ਭੋਜਨ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਭੋਜਨ ਦੀ ਪਸੰਦ ਹਰ ਵਿਅਕਤੀ ਲਈ ਵੱਖਰੀ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਕਸਰਤ ਤੁਹਾਡੀ ਸਿਹਤ ਲਈ ਫਾਇਦੇਮੰਦ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਡਾਕਟਰੀ ਤੱਥ ਹੈ ਜਿਸ ਦੇ ਵਿਗਿਆਨਕ ਸਬੂਤ ਹਨ ਕਿ ਕਸਰਤ ਸਰੀਰ ਨੂੰ ਸਿਹਤਮੰਦ ਰੱਖਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਕਲਾਸੀਕਲ ਸੰਗੀਤ ਬੋਰਿੰਗ ਹੈ.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਸੰਗੀਤ ਦੀ ਪਸੰਦ ਨਿੱਜੀ ਹੁੰਦੀ ਹੈ; ਬਹੁਤ ਸਾਰੇ ਲੋਕ ਕਲਾਸੀਕਲ ਸੰਗੀਤ ਦਾ ਆਨੰਦ ਵੀ ਲੈਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਸੇਬ ਅਤੇ ਸੰਤਰਾ ਦੋਵੇਂ ਫਲ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਬਨਸਪਤੀ ਤੱਥ ਹੈ ਕਿ ਸੇਬ ਅਤੇ ਸੰਤਰੇ ਦੋਵੇਂ ਰੁੱਖਾਂ 'ਤੇ ਉੱਗਦੇ ਹਨ ਅਤੇ ਫਲਾਂ ਦੀ ਸ਼੍ਰੇਣੀ ਵਿੱਚ ਆਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੁੱਤਿਆਂ ਨਾਲੋਂ ਬਿੱਲੀਆਂ ਦੀ ਦੇਖਭਾਲ ਕਰਨੀ ਸੌਖੀ ਹੁੰਦੀ ਹੈ।", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "ਇਹ ਇੱਕ ਰਾਏ ਹੈ ਕਿਉਂਕਿ ਇਹ ਜਾਨਵਰ ਦੇ ਸੁਭਾਅ ਅਤੇ ਵਿਅਕਤੀ ਦੇ ਤਜ਼ਰਬੇ 'ਤੇ ਨਿਰਭਰ ਕਰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿਨ ਵਿੱਚ 24 ਘੰਟੇ ਹੁੰਦੇ ਹਨ।", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "ਇਹ ਇੱਕ ਵਿਗਿਆਨਕ ਤੱਥ ਹੈ ਜੋ ਧਰਤੀ ਦੇ ਆਪਣੀ ਧੁਰੀ ਦੁਆਲੇ ਇੱਕ ਚੱਕਰ ਪੂਰਾ ਕਰਨ ਦੇ ਸਮੇਂ 'ਤੇ ਅਧਾਰਤ ਹੈ।")
        ]
    )

    private static let sequencing = Exercise(
        id: UUID(),
        title: "ਕ੍ਰਮਬੱਧ ਕਦਮ",
        instructions: "ਕਦਮ ਗਲਤ ਕ੍ਰਮ ਵਿੱਚ ਦਿਖਾਏ ਗਏ ਹਨ। ਉਹਨਾਂ ਨੂੰ ਸਹੀ ਤਰਤੀਬ ਵਿੱਚ ਰੱਖਣ ਲਈ ਉਹਨਾਂ ਨੂੰ 1, 2, 3... ਨੰਬਰ ਦਿਓ।",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਟੋਸਟ ਬਣਾਉਣਾ", options: ["ਟੋਸਟ ਨੂੰ ਮੱਖਣ ਦਿਓ", "ਟੋਸਟਰ ਵਿੱਚ ਰੋਟੀ ਪਾਓ", "ਟੋਸਟਰ ਤੋਂ ਹਟਾਓ", "ਖਾਓ"], correctAnswer: "ਟੋਸਟਰ ਵਿੱਚ ਰੋਟੀ ਪਾਓ | ਟੋਸਟਰ ਤੋਂ ਹਟਾਓ | ਟੋਸਟ ਨੂੰ ਮੱਖਣ ਦਿਓ | ਖਾਓ", explanation: "ਪਹਿਲਾਂ ਬਰੈੱਡ ਨੂੰ ਟੋਸਟਰ ਵਿੱਚ ਰੱਖਿਆ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਗਰਮ ਹੋਣ ਤੋਂ ਬਾਅਦ ਬਾਹਰ ਕੱਢਿਆ ਜਾਂਦਾ ਹੈ, ਉਸ ਉੱਤੇ ਮੱਖਣ ਲਗਾਇਆ ਜਾਂਦਾ ਹੈ, ਅਤੇ ਅੰਤ ਵਿੱਚ ਇਸਨੂੰ ਖਾਧਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਹੱਥ ਧੋਣਾ", options: ["ਤੌਲੀਏ ਨਾਲ ਹੱਥ ਸੁਕਾਓ", "ਹੱਥਾਂ 'ਤੇ ਸਾਬਣ ਲਗਾਓ", "ਪਾਣੀ ਨੂੰ ਚਾਲੂ ਕਰੋ", "20 ਸਕਿੰਟਾਂ ਲਈ ਰਗੜੋ", "ਸਾਬਣ ਬੰਦ ਕੁਰਲੀ", "ਆਪਣੇ ਹੱਥ ਗਿੱਲੇ ਕਰੋ"], correctAnswer: "ਪਾਣੀ ਨੂੰ ਚਾਲੂ ਕਰੋ | ਆਪਣੇ ਹੱਥ ਗਿੱਲੇ ਕਰੋ | ਹੱਥਾਂ 'ਤੇ ਸਾਬਣ ਲਗਾਓ | 20 ਸਕਿੰਟਾਂ ਲਈ ਰਗੜੋ | ਸਾਬਣ ਬੰਦ ਕੁਰਲੀ | ਤੌਲੀਏ ਨਾਲ ਹੱਥ ਸੁਕਾਓ", explanation: "ਹੱਥ ਧੋਣ ਲਈ ਪਹਿਲਾਂ ਟੂਟੀ ਚਲਾ ਕੇ ਹੱਥ ਗਿੱਲੇ ਕੀਤੇ ਜਾਂਦੇ ਹਨ, ਫਿਰ ਸਾਬਣ ਲਗਾ ਕੇ 20 ਸਕਿੰਟਾਂ ਲਈ ਰਗੜਿਆ ਜਾਂਦਾ ਹੈ, ਪਾਣੀ ਨਾਲ ਧੋ ਕੇ ਅੰਤ ਵਿੱਚ ਤੌਲੀਏ ਨਾਲ ਸੁਕਾਇਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੌਫੀ ਬਣਾਉਣਾ", options: ["ਆਪਣੇ ਕੱਪ ਵਿੱਚ ਕੌਫੀ ਡੋਲ੍ਹ ਦਿਓ", "ਫਿਲਟਰ ਵਿੱਚ ਕੌਫੀ ਦੇ ਮੈਦਾਨ ਸ਼ਾਮਲ ਕਰੋ", "ਬਰਿਊ ਬਟਨ ਨੂੰ ਦਬਾਓ", "ਪਾਣੀ ਦੇ ਭੰਡਾਰ ਨੂੰ ਭਰੋ"], correctAnswer: "ਪਾਣੀ ਦੇ ਭੰਡਾਰ ਨੂੰ ਭਰੋ | ਫਿਲਟਰ ਵਿੱਚ ਕੌਫੀ ਦੇ ਮੈਦਾਨ ਸ਼ਾਮਲ ਕਰੋ | ਬਰਿਊ ਬਟਨ ਨੂੰ ਦਬਾਓ | ਆਪਣੇ ਕੱਪ ਵਿੱਚ ਕੌਫੀ ਡੋਲ੍ਹ ਦਿਓ", explanation: "ਪਹਿਲਾਂ ਮਸ਼ੀਨ ਵਿੱਚ ਪਾਣੀ ਭਰਿਆ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਫਿਲਟਰ ਵਿੱਚ ਕੌਫੀ ਪਾਈ ਜਾਂਦੀ ਹੈ, ਬਟਨ ਦਬਾ ਕੇ ਕੌਫੀ ਬਣਾਈ ਜਾਂਦੀ ਹੈ, ਅਤੇ ਫਿਰ ਕੱਪ ਵਿੱਚ ਪਾ ਕੇ ਪੀਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਇੱਕ ਫ਼ੋਨ ਕਾਲ ਕਰਨਾ", options: ["ਹੈਲੋ ਕਹੋ", "ਬੰਦ ਕਰੋ", "ਫ਼ੋਨ ਚੁੱਕੋ", "ਨੰਬਰ ਡਾਇਲ ਕਰੋ", "ਆਪਣੀ ਗੱਲਬਾਤ ਕਰੋ"], correctAnswer: "ਫ਼ੋਨ ਚੁੱਕੋ | ਨੰਬਰ ਡਾਇਲ ਕਰੋ | ਹੈਲੋ ਕਹੋ | ਆਪਣੀ ਗੱਲਬਾਤ ਕਰੋ | ਬੰਦ ਕਰੋ", explanation: "ਕਾਲ ਕਰਨ ਲਈ ਪਹਿਲਾਂ ਫ਼ੋਨ ਚੁੱਕਿਆ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਨੰਬਰ ਡਾਇਲ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਦੂਜੇ ਪਾਸੇ ਵਾਲੇ ਨੂੰ ਹੈਲੋ ਕਿਹਾ ਜਾਂਦਾ ਹੈ, ਗੱਲਬਾਤ ਕੀਤੀ ਜਾਂਦੀ ਹੈ ਅਤੇ ਅੰਤ ਵਿੱਚ ਫ਼ੋਨ ਕੱਟ ਦਿੱਤਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੱਪੜੇ ਪਾਉਣੇ", options: ["ਜੁੱਤੀ ਪਾਓ", "ਕਮੀਜ਼ ਪਾਓ", "ਅੰਡਰਵੀਅਰ ਪਾਓ", "ਜੁਰਾਬਾਂ ਪਾਓ", "ਪੈਂਟ ਪਾਓ"], correctAnswer: "ਅੰਡਰਵੀਅਰ ਪਾਓ | ਕਮੀਜ਼ ਪਾਓ | ਪੈਂਟ ਪਾਓ | ਜੁਰਾਬਾਂ ਪਾਓ | ਜੁੱਤੀ ਪਾਓ", explanation: "ਕੱਪੜੇ ਪਾਉਣ ਦਾ ਸਹੀ ਤਰੀਕਾ ਪਹਿਲਾਂ ਅੰਦਰੂਨੀ ਕੱਪੜੇ ਪਾਉਣਾ ਹੈ, ਫਿਰ ਕਮੀਜ਼ ਅਤੇ ਪੈਂਟ ਪਹਿਨਣਾ ਹੈ, ਅਤੇ ਅੰਤ ਵਿੱਚ ਜੁਰਾਬਾਂ ਅਤੇ ਜੁੱਤੀਆਂ ਪਾਉਣਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਫਰਸ਼ ਨੂੰ ਸਾਫ਼ ਕਰਨਾ", options: ["ਰੱਦੀ ਵਿੱਚ ਸੁੱਟ ਦਿਓ", "ਝਾੜੂ ਕੱਢੋ", "ਮਲਬੇ ਨੂੰ ਡਸਟਪੈਨ ਵਿੱਚ ਸਕੂਪ ਕਰੋ", "ਇੱਕ ਢੇਰ ਵਿੱਚ ਮਲਬੇ ਨੂੰ ਝਾੜੋ"], correctAnswer: "ਝਾੜੂ ਕੱਢੋ | ਇੱਕ ਢੇਰ ਵਿੱਚ ਮਲਬੇ ਨੂੰ ਝਾੜੋ | ਮਲਬੇ ਨੂੰ ਡਸਟਪੈਨ ਵਿੱਚ ਸਕੂਪ ਕਰੋ | ਰੱਦੀ ਵਿੱਚ ਸੁੱਟ ਦਿਓ", explanation: "ਫਰਸ਼ ਸਾਫ਼ ਕਰਨ ਲਈ ਪਹਿਲਾਂ ਝਾੜੂ ਨਾਲ ਕੂੜਾ ਇਕੱਠਾ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਉਸਨੂੰ ਡਸਟਪੈਨ ਵਿੱਚ ਪਾਇਆ ਜਾਂਦਾ ਹੈ, ਅਤੇ ਅੰਤ ਵਿੱਚ ਰੱਦੀ ਵਾਲੇ ਡੱਬੇ ਵਿੱਚ ਸੁੱਟਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਇੱਕ ਰੈਸਟੋਰੈਂਟ ਵਿੱਚ ਆਰਡਰ ਕਰਨਾ", options: ["ਆਪਣਾ ਭੋਜਨ ਖਾਓ", "ਸਰਵਰ ਨੂੰ ਆਪਣਾ ਆਰਡਰ ਦੱਸੋ", "ਬੈਠੋ", "ਆਪਣੇ ਭੋਜਨ ਦੀ ਉਡੀਕ ਕਰੋ", "ਮੀਨੂ ਦੀ ਸਮੀਖਿਆ ਕਰੋ"], correctAnswer: "ਬੈਠੋ | ਮੀਨੂ ਦੀ ਸਮੀਖਿਆ ਕਰੋ | ਸਰਵਰ ਨੂੰ ਆਪਣਾ ਆਰਡਰ ਦੱਸੋ | ਆਪਣੇ ਭੋਜਨ ਦੀ ਉਡੀਕ ਕਰੋ | ਆਪਣਾ ਭੋਜਨ ਖਾਓ", explanation: "ਰੈਸਟੋਰੈਂਟ ਵਿੱਚ ਪਹਿਲਾਂ ਮੇਜ਼ 'ਤੇ ਬੈਠਿਆ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਮੀਨੂ ਦੇਖ ਕੇ ਵੇਟਰ ਨੂੰ ਆਰਡਰ ਦਿੱਤਾ ਜਾਂਦਾ ਹੈ, ਭੋਜਨ ਦੀ ਉਡੀਕ ਕੀਤੀ ਜਾਂਦੀ ਹੈ ਅਤੇ ਫਿਰ ਖਾਧਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬੇਕਿੰਗ ਕੂਕੀਜ਼", options: ["ਕੂਕੀਜ਼ ਨੂੰ ਠੰਡਾ ਹੋਣ ਦਿਓ", "ਓਵਨ ਵਿੱਚ ਬਿਅੇਕ ਕਰੋ", "ਓਵਨ ਨੂੰ ਪਹਿਲਾਂ ਤੋਂ ਹੀਟ ਕਰੋ", "ਸਮੱਗਰੀ ਨੂੰ ਮਿਲਾਓ", "ਬੇਕਿੰਗ ਸ਼ੀਟ 'ਤੇ ਆਟੇ ਨੂੰ ਸਕੂਪ ਕਰੋ"], correctAnswer: "ਓਵਨ ਨੂੰ ਪਹਿਲਾਂ ਤੋਂ ਹੀਟ ਕਰੋ | ਸਮੱਗਰੀ ਨੂੰ ਮਿਲਾਓ | ਬੇਕਿੰਗ ਸ਼ੀਟ 'ਤੇ ਆਟੇ ਨੂੰ ਸਕੂਪ ਕਰੋ | ਓਵਨ ਵਿੱਚ ਬਿਅੇਕ ਕਰੋ | ਕੂਕੀਜ਼ ਨੂੰ ਠੰਡਾ ਹੋਣ ਦਿਓ", explanation: "ਪਹਿਲਾਂ ਓਵਨ ਨੂੰ ਗਰਮ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਸਮੱਗਰੀ ਮਿਲਾ ਕੇ ਆਟੇ ਨੂੰ ਟਰੇਅ 'ਤੇ ਰੱਖਿਆ ਜਾਂਦਾ ਹੈ, ਫਿਰ ਓਵਨ ਵਿੱਚ ਪਕਾਇਆ ਜਾਂਦਾ ਹੈ ਅਤੇ ਠੰਡਾ ਹੋਣ ਲਈ ਰੱਖਿਆ ਜਾਂਦਾ ਹੈ।")
        ]
    )

    private static let idioms = Exercise(
        id: UUID(),
        title: "ਮੁਹਾਵਰੇ ਅਤੇ ਅਖਾਣ",
        instructions: "ਦਿੱਤੇ ਗਏ ਮੁਹਾਵਰੇ ਦਾ ਸਹੀ ਅਰਥ ਚੁਣੋ।",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਅੱਖਾਂ ਦਾ ਤਾਰਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਬਹੁਤ ਪਿਆਰਾ ਹੋਣਾ", "ਅੱਖ ਵਿੱਚ ਨੁਕਸ ਹੋਣਾ", "ਤਾਰੇ ਦੇਖਣਾ", "ਦੂਰ ਦੀ ਸੋਚਣਾ"], correctAnswer: "ਬਹੁਤ ਪਿਆਰਾ ਹੋਣਾ", explanation: "ਮੁਹਾਵਰਾ ‘ਅੱਖਾਂ ਦਾ ਤਾਰਾ’ ਬਹੁਤ ਪਿਆਰੇ ਵਿਅਕਤੀ ਜਾਂ ਬੱਚੇ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਈਦ ਦਾ ਚੰਦ ਹੋਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਬਹੁਤ ਦੇਰ ਬਾਅਦ ਮਿਲਣਾ", "ਈਦ ਮਨਾਉਣਾ", "ਚੰਦ ਦੀ ਪੂਜਾ ਕਰਨਾ", "ਗ਼ਾਇਬ ਹੋ ਜਾਣਾ"], correctAnswer: "ਬਹੁਤ ਦੇਰ ਬਾਅਦ ਮਿਲਣਾ", explanation: "ਇਹ ਮੁਹਾਵਰਾ ਉਸ ਵਿਅਕਤੀ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ ਜੋ ਬਹੁਤ ਲੰਮੇ ਸਮੇਂ ਬਾਅਦ ਦਿਖਾਈ ਦੇਵੇ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਉਂਗਲੀਆਂ 'ਤੇ ਨਚਾਉਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਆਪਣੇ ਇਸ਼ਾਰੇ 'ਤੇ ਚਲਾਉਣਾ", "ਭੰਗੜਾ ਪਾਉਣਾ", "ਇਸ਼ਾਰੇ ਕਰਨਾ", "ਤੰਗ ਕਰਨਾ"], correctAnswer: "ਆਪਣੇ ਇਸ਼ਾਰੇ 'ਤੇ ਚਲਾਉਣਾ", explanation: "ਇਸਦਾ ਅਰਥ ਹੈ ਕਿਸੇ ਵਿਅਕਤੀ ਨੂੰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਆਪਣੇ ਵੱਸ ਵਿੱਚ ਕਰਨਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਕੰਨ ਭਰਨੇ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਚੁਗਲੀ ਕਰਨੀ", "ਕੰਨ ਸਾਫ਼ ਕਰਨੇ", "ਗੱਲਾਂ ਸੁਣਨੀਆਂ", "ਸਲਾਹ ਦੇਣੀ"], correctAnswer: "ਚੁਗਲੀ ਕਰਨੀ", explanation: "ਕਿਸੇ ਦੇ ਖ਼ਿਲਾਫ਼ ਕੰਨ ਵਿੱਚ ਗਲਤ ਗੱਲਾਂ ਕਹਿਣਾ ਜਾਂ ਚੁਗਲੀ ਕਰਨੀ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਖ਼ਾਨਾ ਖ਼ਰਾਬ ਹੋਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਬਰਬਾਦ ਹੋ ਜਾਣਾ", "ਘਰ ਬਣਾਉਣਾ", "ਬੀਮਾਰ ਹੋਣਾ", "ਗੁੱਸੇ ਹੋਣਾ"], correctAnswer: "ਬਰਬਾਦ ਹੋ ਜਾਣਾ", explanation: "ਇਸਦਾ ਅਰਥ ਹੈ ਪੂਰੀ ਤਰ੍ਹਾਂ ਤਬਾਹ ਜਾਂ ਬਰਬਾਦ ਹੋ ਜਾਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਘਿਓ ਦੇ ਦੀਵੇ ਬਾਲਣੇ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਬਹੁਤ ਖ਼ੁਸ਼ੀ ਮਨਾਉਣੀ", "ਰੋਸ਼ਨੀ ਕਰਨਾ", "ਮੀਂਹ ਪੈਣਾ", "ਅਮੀਰ ਹੋਣਾ"], correctAnswer: "ਬਹੁਤ ਖ਼ੁਸ਼ੀ ਮਨਾਉਣੀ", explanation: "ਬਹੁਤ ਜ਼ਿਆਦਾ ਖ਼ੁਸ਼ੀ ਜਾਂ ਜਸ਼ਨ ਮਨਾਉਣ ਦੇ ਮੌਕੇ 'ਤੇ ਇਹ ਮੁਹਾਵਰਾ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਚਾਦਰ ਵੇਖ ਕੇ ਪੈਰ ਪਸਾਰਨੇ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਆਮਦਨ ਅਨੁਸਾਰ ਖ਼ਰਚ ਕਰਨਾ", "ਸੌਂ ਜਾਣਾ", "ਚਾਦਰ ਖ਼ਰੀਦਣੀ", "ਗ਼ਰੀਬ ਹੋਣਾ"], correctAnswer: "ਆਮਦਨ ਅਨੁਸਾਰ ਖ਼ਰਚ ਕਰਨਾ", explanation: "ਇਸਦਾ ਅਰਥ ਹੈ ਆਪਣੀ ਵਿੱਤੀ ਸਮਰੱਥਾ ਜਾਂ ਕਮਾਈ ਦੇ ਦਾਇਰੇ ਵਿੱਚ ਰਹਿ ਕੇ ਖ਼ਰਚ ਕਰਨਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਜਾਨ 'ਤੇ ਖੇਡਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਖ਼ਤਰਾ ਸਹੇੜਨਾ", "ਖੇਡ ਖੇਡਣੀ", "ਬਚ ਜਾਣਾ", "ਮਰ ਜਾਣਾ"], correctAnswer: "ਖ਼ਤਰਾ ਸਹੇੜਨਾ", explanation: "ਆਪਣੀ ਜਾਨ ਦੀ ਪ੍ਰਵਾਹ ਕੀਤੇ ਬਿਨਾਂ ਕੋਈ ਬਹੁਤ ਵੱਡਾ ਜਾਂ ਖ਼ਤਰਨਾਕ ਕੰਮ ਕਰਨਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਟੱਸ ਤੋਂ ਮੱਸ ਨਾ ਹੋਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਜ਼ਰਾ ਵੀ ਅਸਰ ਨਾ ਹੋਣਾ", "ਹਿੱਲਣਾ", "ਗੁੱਸੇ ਹੋਣਾ", "ਚਲੇ ਜਾਣਾ"], correctAnswer: "ਜ਼ਰਾ ਵੀ ਅਸਰ ਨਾ ਹੋਣਾ", explanation: "ਕਿਸੇ ਗੱਲ ਜਾਂ ਬੇਨਤੀ ਦਾ ਵਿਅਕਤੀ 'ਤੇ ਬਿਲਕੁਲ ਕੋਈ ਅਸਰ ਨਾ ਹੋਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਦੰਦ ਖੱਟੇ ਕਰਨੇ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਬੁਰੀ ਤਰ੍ਹਾਂ ਹਰਾਉਣਾ", "ਖੱਟਾ ਖਾਣਾ", "ਦੰਦ ਦੁਖਣਾ", "ਦੋਸਤੀ ਕਰਨੀ"], correctAnswer: "ਬੁਰੀ ਤਰ੍ਹਾਂ ਹਰਾਉਣਾ", explanation: "ਜੰਗ ਜਾਂ ਮੁਕਾਬਲੇ ਵਿੱਚ ਦੁਸ਼ਮਣ ਜਾਂ ਵਿਰੋਧੀ ਨੂੰ ਬੁਰੀ ਤਰ੍ਹਾਂ ਹਰਾ ਦੇਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਨੱਕ ਰੱਖਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਇੱਜ਼ਤ ਬਚਾਉਣੀ", "ਨੱਕ ਸਾਫ਼ ਕਰਨਾ", "ਮਾਣ ਕਰਨਾ", "ਗੁੱਸਾ ਕਰਨਾ"], correctAnswer: "ਇੱਜ਼ਤ ਬਚਾਉਣੀ", explanation: "ਸਮਾਜ ਵਿੱਚ ਆਪਣੀ ਜਾਂ ਆਪਣੇ ਪਰਿਵਾਰ ਦੀ ਇੱਜ਼ਤ ਅਤੇ ਸ਼ੋਹਰਤ ਨੂੰ ਕਾਇਮ ਰੱਖਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਪਾਣੀ-ਪਾਣੀ ਹੋਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਬਹੁਤ ਸ਼ਰਮਿੰਦਾ ਹੋਣਾ", "ਤਰਨਾ", "ਪਿਆਸ ਲੱਗਣੀ", "ਮੀਂਹ ਪੈਣਾ"], correctAnswer: "ਬਹੁਤ ਸ਼ਰਮਿੰਦਾ ਹੋਣਾ", explanation: "ਕਿਸੇ ਗਲਤੀ ਦੇ ਫੜੇ ਜਾਣ 'ਤੇ ਬਹੁਤ ਜ਼ਿਆਦਾ ਸ਼ਰਮਸਾਰ ਮਹਿਸੂਸ ਕਰਨਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਬਾਂਹ ਫੜਨੀ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਸਹਾਰਾ ਦੇਣਾ ਜਾਂ ਮਦਦ ਕਰਨੀ", "ਬਾਂਹ ਖਿੱਚਣੀ", "ਲੜਾਈ ਕਰਨੀ", "ਰੋਕਣਾ"], correctAnswer: "ਸਹਾਰਾ ਦੇਣਾ ਜਾਂ ਮਦਦ ਕਰਨੀ", explanation: "ਕਿਸੇ ਮੁਸੀਬਤ ਵਿੱਚ ਫਸੇ ਵਿਅਕਤੀ ਦੀ ਬਾਂਹ ਫੜ ਕੇ ਉਸਦੀ ਮਦਦ ਜਾਂ ਸਹਾਰਾ ਦੇਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਮੂੰਹ ਵਿੱਚ ਪਾਣੀ ਆਉਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਜੀਅ ਲਲਚਾਉਣਾ", "ਪਾਣੀ ਪੀਣਾ", "ਕੁਲੀਆਂ ਕਰਨਾ", "ਭੁੱਖ ਲੱਗਣੀ"], correctAnswer: "ਜੀਅ ਲਲਚਾਉਣਾ", explanation: "ਕੋਈ ਸੁਆਦੀ ਚੀਜ਼ ਵੇਖ ਕੇ ਖਾਣ ਦਾ ਲਾਲਚ ਪੈਦਾ ਹੋਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੁਹਾਵਰੇ “ਹੱਥ ਵਟਾਉਣਾ” ਦਾ ਸਹੀ ਅਰਥ ਕੀ ਹੈ?", options: ["ਮਦਦ ਕਰਨੀ", "ਹੱਥ ਮਿਲਾਉਣਾ", "ਲੜਾਈ ਕਰਨੀ", "ਕੰਮ ਛੱਡਣਾ"], correctAnswer: "ਮਦਦ ਕਰਨੀ", explanation: "ਘਰ ਦੇ ਕੰਮਾਂ ਜਾਂ ਕਿਸੇ ਹੋਰ ਕੰਮ ਵਿੱਚ ਦੂਜੇ ਵਿਅਕਤੀ ਦੀ ਸਹਾਇਤਾ ਕਰਨੀ।")
        ]
    )

    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "ਹਮ-ਆਵਾਜ਼ ਸ਼ਬਦ (Rhyming Pairs)",
        instructions: "ਦਿੱਤੇ ਗਏ ਸ਼ਬਦ ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ।",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਤਾਰਾ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਕਾਰਾ", "ਪਾਣੀ", "ਰਾਣੀ", "ਹੱਥ"], correctAnswer: "ਕਾਰਾ", explanation: "‘ਤਾਰਾ’ ਅਤੇ ‘ਕਾਰਾ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਰਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਮਾਲਾ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਕਾਲਾ", "ਗਾਣਾ", "ਦਾਣਾ", "ਬਾਲ"], correctAnswer: "ਕਾਲਾ", explanation: "‘ਮਾਲਾ’ ਅਤੇ ‘ਕਾਲਾ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਲਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਪਾਣੀ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਰਾਣੀ", "ਸਾਲ", "ਢਾਲ", "ਕੰਮ"], correctAnswer: "ਰਾਣੀ", explanation: "‘ਪਾਣੀ’ ਅਤੇ ‘ਰਾਣੀ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਣੀ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਗਾਣਾ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਦਾਣਾ", "ਰੇਤ", "ਖੇਤ", "ਮੇਲਾ"], correctAnswer: "ਦਾਣਾ", explanation: "‘ਗਾਣਾ’ ਅਤੇ ‘ਦਾਣਾ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਣਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਹੱਥ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਨੱਥ", "ਨੀਲਾ", "ਪੀਲਾ", "ਘਰ"], correctAnswer: "ਨੱਥ", explanation: "‘ਹੱਥ’ ਅਤੇ ‘ਨੱਥ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਅੱਥ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਬਾਲ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਲਾਲ", "ਰਾਤ", "ਬਾਤ", "ਬਾਗ"], correctAnswer: "ਲਾਲ", explanation: "‘ਬਾਲ’ ਅਤੇ ‘ਲਾਲ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਲ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਸਾਲ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਢਾਲ", "ਚਾਦਰ", "ਆਦਰ", "ਨੱਕ"], correctAnswer: "ਢਾਲ", explanation: "‘ਸਾਲ’ ਅਤੇ ‘ਢਾਲ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਲ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਕੰਮ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਦੰਮ", "ਫੁੱਲ", "ਪੁੱਲ", "ਅੱਖ"], correctAnswer: "ਦੰਮ", explanation: "‘ਕੰਮ’ ਅਤੇ ‘ਦੰਮ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਅੰਮ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਖੇਤ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਰੇਤ", "ਕੰਨ", "ਮਨ", "ਕਾਲਾ"], correctAnswer: "ਰੇਤ", explanation: "‘ਖੇਤ’ ਅਤੇ ‘ਰੇਤ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ੇਤ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਮੇਲਾ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਕੇਲਾ", "ਪਾਣੀ", "ਰਾਣੀ", "ਦਾਣਾ"], correctAnswer: "ਕੇਲਾ", explanation: "‘ਮੇਲਾ’ ਅਤੇ ‘ਕੇਲਾ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ੇਲਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਪੀਲਾ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਨੀਲਾ", "ਲਾਲ", "ਢਾਲ", "ਦੰਮ"], correctAnswer: "ਨੀਲਾ", explanation: "‘ਪੀਲਾ’ ਅਤੇ ‘ਨੀਲਾ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ੀਲਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਘਰ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਦਰ", "ਖੇਤ", "ਰੇਤ", "ਸਾਲ"], correctAnswer: "ਦਰ", explanation: "‘ਘਰ’ ਅਤੇ ‘ਦਰ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਅਰ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਰਾਤ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਬਾਤ", "ਮੇਲਾ", "ਕੇਲਾ", "ਹੱਥ"], correctAnswer: "ਬਾਤ", explanation: "‘ਰਾਤ’ ਅਤੇ ‘ਬਾਤ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਤ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਬਾਗ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਸਾਗ", "ਨੀਲਾ", "ਪੀਲਾ", "ਬਾਲ"], correctAnswer: "ਸਾਗ", explanation: "‘ਬਾਗ’ ਅਤੇ ‘ਸਾਗ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਗ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਚਾਦਰ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਆਦਰ", "ਪਾਣੀ", "ਕੰਮ", "ਘਰ"], correctAnswer: "ਆਦਰ", explanation: "‘ਚਾਦਰ’ ਅਤੇ ‘ਆਦਰ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਆਦਰ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਨੱਕ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਅੱਕ", "ਰਾਤ", "ਬਾਤ", "ਸਾਲ"], correctAnswer: "ਅੱਕ", explanation: "‘ਨੱਕ’ ਅਤੇ ‘ਅੱਕ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਅੱਕ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਦੁੱਧ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਬੁੱਧ", "ਖੇਤ", "ਰੇਤ", "ਕੰਮ"], correctAnswer: "ਬੁੱਧ", explanation: "‘ਦੁੱਧ’ ਅਤੇ ‘ਬੁੱਧ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ੁੱਧ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਫੁੱਲ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਪੁੱਲ", "ਮਾਲਾ", "ਕਾਲਾ", "ਬਾਲ"], correctAnswer: "ਪੁੱਲ", explanation: "‘ਫੁੱਲ’ ਅਤੇ ‘ਪੁੱਲ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ੁੱਲ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਅੱਖ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਲੱਖ", "ਘਰ", "ਦਰ", "ਪਾਣੀ"], correctAnswer: "ਲੱਖ", explanation: "‘ਅੱਖ’ ਅਤੇ ‘ਲੱਖ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਅੱਖ)।"),
            ExerciseItem(id: UUID(), prompt: "ਹੇਠ ਦਿੱਤੇ ਸ਼ਬਦਾਂ ਵਿੱਚੋਂ “ਕੰਨ” ਨਾਲ ਮਿਲਦੀ ਆਵਾਜ਼ (Rhyme) ਵਾਲਾ ਸ਼ਬਦ ਚੁਣੋ:", options: ["ਮਨ", "ਰਾਤ", "ਬਾਤ", "ਹੱਥ"], correctAnswer: "ਮਨ", explanation: "‘ਕੰਨ’ ਅਤੇ ‘ਮਨ’ ਦਾ ਉਚਾਰਨ ਅੰਤ ਵਿੱਚ ਇੱਕੋ ਜਿਹਾ ਹੈ (ਅੰਨ)।")
        ]
    )

    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "ਸ਼ਬਦ ਐਸੋਸੀਏਸ਼ਨ",
        instructions: "ਦਿੱਤੇ ਗਏ ਸ਼ਬਦ ਨਾਲ ਸਭ ਤੋਂ ਨਜ਼ਦੀਕੀ ਨਾਲ ਜੁੜੇ ਸ਼ਬਦ ਨੂੰ ਚੁਣੋ।",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਡਾਕਟਰ", options: ["ਹਸਪਤਾਲ", "ਹਵਾਈ ਅੱਡਾ", "ਲਾਇਬ੍ਰੇਰੀ", "ਫਾਰਮ"], correctAnswer: "ਹਸਪਤਾਲ", explanation: "ਡਾਕਟਰ ਮਰੀਜ਼ਾਂ ਦੀ ਦੇਖਭਾਲ ਲਈ ਹਸਪਤਾਲਾਂ ਵਿੱਚ ਕੰਮ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਰੋਟੀ", options: ["ਮੱਖਣ", "ਹਥੌੜਾ", "ਸਾਬਣ", "ਪੈਨਸਿਲ"], correctAnswer: "ਮੱਖਣ", explanation: "ਮੱਖਣ ਆਮ ਤੌਰ “ਤੇ ਰੋਟੀ ”ਤੇ ਫੈਲਾਇਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਰਸੋਈ", options: ["ਸਟੋਵ", "ਬਿਸਤਰਾ", "ਸ਼ਾਵਰ", "ਕਾਰ"], correctAnswer: "ਸਟੋਵ", explanation: "ਇੱਕ ਸਟੋਵ ਇੱਕ ਰਸੋਈ ਵਿੱਚ ਇੱਕ ਪ੍ਰਾਇਮਰੀ ਉਪਕਰਣ ਹੈ."),
            ExerciseItem(id: UUID(), prompt: "ਲਾਇਬ੍ਰੇਰੀ", options: ["ਕਿਤਾਬਾਂ", "ਕੱਪੜੇ", "ਸੰਦ", "ਕਰਿਆਨੇ"], correctAnswer: "ਕਿਤਾਬਾਂ", explanation: "ਲਾਇਬ੍ਰੇਰੀਆਂ ਕਿਤਾਬਾਂ ਨੂੰ ਸਟੋਰ ਅਤੇ ਉਧਾਰ ਦਿੰਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਜੁੱਤੀ", options: ["ਜੁਰਾਬ", "ਟੋਪੀ", "ਦਸਤਾਨੇ", "ਬੈਲਟ"], correctAnswer: "ਜੁਰਾਬ", explanation: "ਜੁਰਾਬਾਂ ਜੁੱਤੀਆਂ ਦੇ ਅੰਦਰ ਪਹਿਨੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਪੁਲਾੜ ਯਾਤਰੀ", options: ["ਸਪੇਸ", "ਸਾਗਰ", "ਜੰਗਲ", "ਮਾਰੂਥਲ"], correctAnswer: "ਸਪੇਸ", explanation: "ਪੁਲਾੜ ਯਾਤਰੀ ਪੁਲਾੜ ਵਿੱਚ ਯਾਤਰਾ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਅਧਿਆਪਕ", options: ["ਸਕੂਲ", "ਫੈਕਟਰੀ", "ਥੀਏਟਰ", "ਜਿਮ"], correctAnswer: "ਸਕੂਲ", explanation: "ਅਧਿਆਪਕ ਸਕੂਲਾਂ ਵਿੱਚ ਵਿਦਿਆਰਥੀਆਂ ਨੂੰ ਪੜ੍ਹਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "OCEAN", options: ["ਮੱਛੀ", "ਪੰਛੀ", "ਗਊ", "ਮੱਕੜੀ"], correctAnswer: "ਮੱਛੀ", explanation: "ਮੱਛੀਆਂ ਸਮੁੰਦਰ ਵਿੱਚ ਰਹਿੰਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਕਾਰ", options: ["ਟਾਇਰ", "ਵਿੰਗ", "ਕਾਠੀ", "ਜਹਾਜ਼"], correctAnswer: "ਟਾਇਰ", explanation: "ਟਾਇਰ ਕਾਰਾਂ ਦੇ ਜ਼ਰੂਰੀ ਹਿੱਸੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੀਂਹ", options: ["ਛਤਰੀ", "ਸਨਗਲਾਸ", "ਦਸਤਾਨੇ", "ਸਕਾਰਫ਼"], correctAnswer: "ਛਤਰੀ", explanation: "ਇੱਕ ਛੱਤਰੀ ਤੁਹਾਨੂੰ ਮੀਂਹ ਤੋਂ ਬਚਾਉਂਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਅੱਗ", options: ["ਧੂੰਆਂ", "ਬਰਫ਼", "ਪੱਤਾ", "ਸਿੱਕਾ"], correctAnswer: "ਧੂੰਆਂ", explanation: "ਅੱਗ ਧੂੰਆਂ ਪੈਦਾ ਕਰਦੀ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੰਦਾਂ ਦਾ ਡਾਕਟਰ", options: ["ਦੰਦ", "ਵਾਲ", "ਅੱਖਾਂ", "ਪੈਰ"], correctAnswer: "ਦੰਦ", explanation: "ਦੰਦਾਂ ਦੇ ਡਾਕਟਰ ਮੂੰਹ ਦੀ ਸਿਹਤ ਅਤੇ ਦੰਦਾਂ ਵਿੱਚ ਮਾਹਰ ਹੁੰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਕੌਫੀ", options: ["ਮੱਗ", "ਕਟੋਰਾ", "ਪਲੇਟ", "ਫੋਰਕ"], correctAnswer: "ਮੱਗ", explanation: "ਕੌਫੀ ਨੂੰ ਆਮ ਤੌਰ 'ਤੇ ਇੱਕ ਮਗ ਵਿੱਚ ਪਰੋਸਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬਾਗ", options: ["ਫੁੱਲ", "ਕੰਪਿਊਟਰ", "ਸਟੋਵ", "ਕੋਟ"], correctAnswer: "ਫੁੱਲ", explanation: "ਇੱਕ ਬਾਗ ਵਿੱਚ ਫੁੱਲ ਉੱਗਦੇ ਹਨ."),
            ExerciseItem(id: UUID(), prompt: "ਕੁੰਜੀ", options: ["ਤਾਲਾ", "ਵਿੰਡੋ", "ਛੱਤ", "ਮੰਜ਼ਿਲ"], correctAnswer: "ਤਾਲਾ", explanation: "ਕੁੰਜੀਆਂ ਤਾਲੇ ਖੋਲ੍ਹਣ ਲਈ ਵਰਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਪੋਸਟ ਆਫਿਸ", options: ["ਪੱਤਰ", "ਰੋਟੀ", "ਦਵਾਈ", "ਟਿਕਟ"], correctAnswer: "ਪੱਤਰ", explanation: "ਚਿੱਠੀਆਂ ਡਾਕਖਾਨੇ 'ਤੇ ਭੇਜੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਪਿਆਨੋ", options: ["ਸੰਗੀਤ", "ਪੇਂਟ", "ਮਿੱਟੀ", "ਲੱਕੜ"], correctAnswer: "ਸੰਗੀਤ", explanation: "ਪਿਆਨੋ ਇੱਕ ਸਾਧਨ ਹੈ ਜੋ ਸੰਗੀਤ ਚਲਾਉਣ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਬੀ.ਈ.ਈ", options: ["ਸ਼ਹਿਦ", "ਦੁੱਧ", "ਉੱਨ", "ਰੇਸ਼ਮ"], correctAnswer: "ਸ਼ਹਿਦ", explanation: "ਮੱਖੀਆਂ ਸ਼ਹਿਦ ਪੈਦਾ ਕਰਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਮੱਕੜੀ", options: ["ਵੈੱਬ", "Nest", "Hive", "ਡੇਨ"], correctAnswer: "ਵੈੱਬ", explanation: "ਮੱਕੜੀਆਂ ਜਾਲੇ ਘੁੰਮਦੀਆਂ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਕਿਸਾਨ", options: ["ਟਰੈਕਟਰ", "ਹਵਾਈ ਜਹਾਜ਼", "ਪਣਡੁੱਬੀ", "ਰੇਲਗੱਡੀ"], correctAnswer: "ਟਰੈਕਟਰ", explanation: "ਕਿਸਾਨ ਜ਼ਮੀਨ ਦਾ ਕੰਮ ਕਰਨ ਲਈ ਟਰੈਕਟਰਾਂ ਦੀ ਵਰਤੋਂ ਕਰਦੇ ਹਨ।")
        ]
    )

    private static let completingProverbs = Exercise(
        id: UUID(),
        title: "ਅਖਾਣ ਪੂਰੇ ਕਰਨੇ",
        instructions: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰਨ ਲਈ ਸਹੀ ਸ਼ਬਦ ਚੁਣੋ।",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਡੋਲ੍ਹੇ ਦੁੱਧ ਦਾ ___”", options: ["ਕੀ ਝੂਰਨਾ", "ਪੀ ਲੈਣਾ", "ਸੁੱਟ ਦੇਣਾ", "ਬਣਾਉਣਾ"], correctAnswer: "ਕੀ ਝੂਰਨਾ", explanation: "ਇਸਦਾ ਅਰਥ ਹੈ ਕਿ ਨੁਕਸਾਨ ਹੋ ਜਾਣ ਤੋਂ ਬਾਅਦ ਪਛਤਾਉਣ ਦਾ ਕੋਈ ਫ਼ਾਇਦਾ ਨਹੀਂ ਹੁੰਦਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਉੱਚੀ ਦੁਕਾਨ ਫਿੱਕਾ ___”", options: ["ਪਕਵਾਨ", "ਮਾਲ", "ਕੰਮ", "ਸੁਆਦ"], correctAnswer: "ਪਕਵਾਨ", explanation: "ਇਸਦਾ ਅਰਥ ਹੈ ਕਿ ਬਾਹਰੀ ਦਿਖਾਵਾ ਬਹੁਤ ਜ਼ਿਆਦਾ ਹੋਣਾ ਪਰ ਅੰਦਰੂਨੀ ਗੁਣ ਘੱਟ ਹੋਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਅੰਨ੍ਹਿਆਂ ਵਿੱਚ ਕਾਣਾ ___”", options: ["ਰਾਜਾ", "ਸਿਆਣਾ", "ਚੋਰ", "ਮੰਤਰੀ"], correctAnswer: "ਰਾਜਾ", explanation: "ਮੂਰਖ ਲੋਕਾਂ ਵਿੱਚ ਥੋੜ੍ਹੀ ਜਿਹੀ ਸਮਝ ਰੱਖਣ ਵਾਲੇ ਵਿਅਕਤੀ ਨੂੰ ਵੀ ਬਹੁਤ ਸਿਆਣਾ ਮੰਨਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਜਿਹਾ ਬੀਜੋਗੇ ਤਿਹਾ ___”", options: ["ਵੱਢੋਗੇ", "ਖਾਓਗੇ", "ਵੇਚੋਗੇ", "ਬੀਜੋਗੇ"], correctAnswer: "ਵੱਢੋਗੇ", explanation: "ਇਸਦਾ ਅਰਥ ਹੈ ਕਿ ਮਨੁੱਖ ਨੂੰ ਆਪਣੇ ਕਰਮਾਂ ਅਨੁਸਾਰ ਹੀ ਫ਼ਲ ਮਿਲਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਇੱਕ ਹੱਥ ਨਾਲ ਤਾੜੀ ਨਹੀਂ ___”", options: ["ਵੱਜਦੀ", "ਸੁਣਦੀ", "ਚੱਲਦੀ", "ਬਣਦੀ"], correctAnswer: "ਵੱਜਦੀ", explanation: "ਲੜਾਈ ਹਮੇਸ਼ਾ ਦੋਵਾਂ ਧਿਰਾਂ ਦੀ ਗਲਤੀ ਨਾਲ ਹੁੰਦੀ ਹੈ, ਇੱਕ ਪਾਸੇ ਤੋਂ ਨਹੀਂ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਕੁੱਤਾ ਰਾਜ ਬਿਠਾਈਏ ਚੱਕੀ ___”", options: ["ਚੱਟੇ", "ਖਾਵੇ", "ਦੇਖੇ", "ਤੋੜੇ"], correctAnswer: "ਚੱਟੇ", explanation: "ਕਿਸੇ ਨੀਚ ਵਿਅਕਤੀ ਨੂੰ ਕਿੰਨਾ ਵੀ ਉੱਚਾ ਦਰਜਾ ਦੇ ਦਿਓ, ਉਹ ਆਪਣੀਆਂ ਆਦਤਾਂ ਨਹੀਂ ਛੱਡਦਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਘਰ ਦਾ ਜੋਗੀ ਜੋਗੜਾ, ਬਾਹਰ ਦਾ ਸਿੱਧ ___”", options: ["ਮਹੰਤ", "ਸਿਆਣਾ", "ਸਾਧ", "ਗੁਰੂ"], correctAnswer: "ਮਹੰਤ", explanation: "ਘਰ ਦੇ ਗੁਣੀ ਵਿਅਕਤੀ ਦੀ ਕਦਰ ਨਹੀਂ ਹੁੰਦੀ, ਪਰ ਬਾਹਰਲੇ ਸਾਧਾਰਨ ਵਿਅਕਤੀ ਨੂੰ ਸਿਆਣਾ ਮੰਨਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਬੰਦਾ ਜੋੜੇ ਰੱਬ ___”", options: ["ਤੋੜੇ", "ਮੋੜੇ", "ਬਣਾਵੇ", "ਦੇਵੇ"], correctAnswer: "ਤੋੜੇ", explanation: "ਮਨੁੱਖ ਆਪਣੀਆਂ ਯੋਜਨਾਵਾਂ ਬਣਾਉਂਦਾ ਹੈ, ਪਰ ਹੁੰਦਾ ਉਹੀ ਹੈ ਜੋ ਪਰਮਾਤਮਾ ਨੂੰ ਮਨਜ਼ੂਰ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਬਾਂਦਰ ਕੀ ਜਾਣੇ ਅਦਰਕ ਦਾ ___”", options: ["ਸੁਆਦ", "ਰੰਗ", "ਗੁਣ", "ਮੁੱਲ"], correctAnswer: "ਸੁਆਦ", explanation: "ਮੂਰਖ ਜਾਂ ਅਣਜਾਣ ਵਿਅਕਤੀ ਕਿਸੇ ਕੀਮਤੀ ਚੀਜ਼ ਦੇ ਗੁਣਾਂ ਦੀ ਕਦਰ ਨਹੀਂ ਕਰ ਸਕਦਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਸੌ ਸਿਆਣੇ ਇੱਕੋ ___”", options: ["ਮੱਤ", "ਗੱਲ", "ਸੋਚ", "ਸਲਾਹ"], correctAnswer: "ਮੱਤ", explanation: "ਸਿਆਣੇ ਲੋਕਾਂ ਦੀ ਸੋਚ ਅਤੇ ਫ਼ੈਸਲੇ ਹਮੇਸ਼ਾ ਇੱਕੋ ਜਿਹੇ ਹੁੰਦੇ ਹਨ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਕਰ ਭਲਾ ਹੋ ___”", options: ["ਭਲਾ", "ਬੁਰਾ", "ਨੁਕਸਾਨ", "ਸੁਖ"], correctAnswer: "ਭਲਾ", explanation: "ਜੇ ਤੁਸੀਂ ਦੂਜਿਆਂ ਦਾ ਭਲਾ ਕਰੋਗੇ, ਤਾਂ ਤੁਹਾਡੇ ਨਾਲ ਵੀ ਭਲਾ ਹੀ ਹੋਵੇਗਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਆਪਣੀ ਹੱਥੀਂ ਆਪਣਾ ਆਪੇ ਹੀ ਕਾਜ ___”", options: ["ਸਵਾਰੀਏ", "ਵਿਗਾੜੀਏ", "ਕਰੀਏ", "ਛੱਡੀਏ"], correctAnswer: "ਸਵਾਰੀਏ", explanation: "ਆਪਣਾ ਕੰਮ ਖ਼ੁਦ ਕਰਨ ਨਾਲ ਹੀ ਸਹੀ ਢੰਗ ਨਾਲ ਪੂਰਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਬਿਨਾ ਸੇਵਾ ਮੇਵਾ ਨਹੀਂ ___”", options: ["ਮਿਲਦਾ", "ਖਾਂਦਾ", "ਵੇਚਦਾ", "ਬਣਦਾ"], correctAnswer: "ਮਿਲਦਾ", explanation: "ਮਿਹਨਤ ਜਾਂ ਸੇਵਾ ਕੀਤੇ ਬਿਨਾਂ ਕੋਈ ਫ਼ਲ ਜਾਂ ਚੰਗਾ ਨਤੀਜਾ ਹਾਸਲ ਨਹੀਂ ਹੁੰਦਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਜਿੱਥੇ ਚਾਹ ਉੱਥੇ ___”", options: ["ਰਾਹ", "ਬਾਹ", "ਘਰ", "ਸੁਖ"], correctAnswer: "ਰਾਹ", explanation: "ਜੇਕਰ ਕਿਸੇ ਕੰਮ ਨੂੰ ਕਰਨ ਦੀ ਇੱਛਾ ਹੋਵੇ, ਤਾਂ ਉਸਦਾ ਤਰੀਕਾ ਵੀ ਲੱਭ ਹੀ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਚੋਰ ਦੀ ਦਾੜ੍ਹੀ ਵਿੱਚ ___”", options: ["ਤਿਣਕਾ", "ਵਾਲ", "ਖੇਹ", "ਪਾਣੀ"], correctAnswer: "ਤਿਣਕਾ", explanation: "ਦੋਸ਼ੀ ਵਿਅਕਤੀ ਹਮੇਸ਼ਾ ਆਪਣੇ ਮਨ ਵਿੱਚ ਡਰਿਆ ਰਹਿੰਦਾ ਹੈ ਅਤੇ ਖ਼ੁਦ ਹੀ ਫੜਿਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਅੰਤ ਭਲੇ ਦਾ ___”", options: ["ਭਲਾ", "ਬੁਰਾ", "ਸੁਖ", "ਦੁਖ"], correctAnswer: "ਭਲਾ", explanation: "ਨੇਕੀ ਦਾ ਨਤੀਜਾ ਹਮੇਸ਼ਾ ਨੇਕ ਅਤੇ ਸੁਖਦ ਹੀ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਇੱਕ ਪੰਥ ਦੋ ___”", options: ["ਕਾਜ", "ਰਾਹ", "ਕੰਮ", "ਸਫ਼ਰ"], correctAnswer: "ਕਾਜ", explanation: "ਇੱਕ ਹੀ ਕੋਸ਼ਿਸ਼ ਨਾਲ ਦੋ ਕੰਮ ਪੂਰੇ ਹੋ ਜਾਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਅਸਮਾਨ ਤੋਂ ਡਿੱਗਿਆ ਖਜੂਰ 'ਤੇ ___”", options: ["ਅਟਕਿਆ", "ਲਟਕਿਆ", "ਡਿੱਗਿਆ", "ਬਚਿਆ"], correctAnswer: "ਅਟਕਿਆ", explanation: "ਇੱਕ ਮੁਸੀਬਤ ਵਿੱਚੋਂ ਨਿਕਲ ਕੇ ਦੂਜੀ ਵੱਡੀ ਮੁਸੀਬਤ ਵਿੱਚ ਫਸ ਜਾਣਾ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਬਹੁਤੇ ਘਰਾਂ ਦਾ ਪ੍ਰਾਹੁਣਾ ___”", options: ["ਭੁੱਖਾ ਰਹਿੰਦਾ", "ਰੱਜਿਆ ਰਹਿੰਦਾ", "ਸੌਂ ਜਾਂਦਾ", "ਚਲਿਆ ਜਾਂਦਾ"], correctAnswer: "ਭੁੱਖਾ ਰਹਿੰਦਾ", explanation: "ਜਦੋਂ ਜ਼ਿੰਮੇਵਾਰੀ ਬਹੁਤ ਸਾਰੇ ਲੋਕਾਂ ਸਿਰ ਹੋਵੇ, ਤਾਂ ਕੰਮ ਅਕਸਰ ਅਧੂਰਾ ਹੀ ਰਹਿ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦਿੱਤੇ ਗਏ ਅਖਾਣ ਨੂੰ ਪੂਰਾ ਕਰੋ: “ਧੀਏ ਤੈਨੂੰ ਕਹਿਣਾ ਨੂਹੇ ਤੂੰ ___”", options: ["ਸੁਣ", "ਬੋਲ", "ਵੇਖ", "ਸਿੱਖ"], correctAnswer: "ਸੁਣ", explanation: "ਕਿਸੇ ਹੋਰ ਦੇ ਬਹਾਨੇ ਉਸ ਵਿਅਕਤੀ ਨੂੰ ਗੱਲ ਸਮਝਾਉਣੀ ਜਿਸਨੂੰ ਅਸਲ ਵਿੱਚ ਕਹਿਣੀ ਚਾਹੁੰਦੇ ਹਾਂ।")
        ]
    )

    private static let compoundWords = Exercise(
        id: UUID(),
        title: "ਸੰਯੁਕਤ ਸ਼ਬਦ (Compound Words)",
        instructions: "ਦੋ ਸ਼ਬਦਾਂ ਦੇ ਸੁਮੇਲ ਤੋਂ ਬਣਨ ਵਾਲਾ ਸਹੀ ਸੰਯੁਕਤ ਸ਼ਬਦ ਚੁਣੋ।",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਸਾਗ + ਪਾਤ = ___", options: ["ਸਾਗ-ਪਾਤ", "ਸਾਗ-ਰੋਟੀ", "ਹਰੀ-ਸਬਜ਼ੀ", "ਪੱਤੇ-ਦਾਰ"], correctAnswer: "ਸਾਗ-ਪਾਤ", explanation: "ਹਰੀਆਂ ਸਬਜ਼ੀਆਂ ਜਾਂ ਪੱਤਿਆਂ ਵਾਲੀ ਸਬਜ਼ੀ ਨੂੰ ਸਾਗ-ਪਾਤ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਚਾਹ + ਪਾਣੀ = ___", options: ["ਚਾਹ-ਪਾਣੀ", "ਚਾਹ-ਦੁੱਧ", "ਖਾਣਾ-ਪੀਣਾ", "ਪਾਣੀ-ਧਾਣੀ"], correctAnswer: "ਚਾਹ-ਪਾਣੀ", explanation: "ਪੰਜਾਬੀ ਸੱਭਿਆਚਾਰ ਵਿੱਚ ਪ੍ਰਾਹੁਣਚਾਰੀ ਜਾਂ ਹਲਕੇ ਨਾਸ਼ਤੇ ਨੂੰ ਚਾਹ-ਪਾਣੀ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਰੋਟੀ + ਟੁੱਕ = ___", options: ["ਰੋਟੀ-ਟੁੱਕ", "ਰੋਟੀ-ਸਾਗ", "ਦਾਲ-ਰੋਟੀ", "ਖਾਣਾ-ਪੀਣਾ"], correctAnswer: "ਰੋਟੀ-ਟੁੱਕ", explanation: "ਭੋਜਨ ਜਾਂ ਖਾਣੇ ਦੇ ਪ੍ਰਬੰਧ ਨੂੰ ਆਮ ਭਾਸ਼ਾ ਵਿੱਚ ਰੋਟੀ-ਟੁੱਕ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਦਿਨ + ਰਾਤ = ___", options: ["ਦਿਨ-ਰਾਤ", "ਸੁਭਾ-ਸ਼ਾਮ", "ਅੱਠੇ-ਪਹਿਰ", "ਸਮਾਂ-ਕਾਲ"], correctAnswer: "ਦਿਨ-ਰਾਤ", explanation: "ਲਗਾਤਾਰ ਕੀਤੀ ਜਾਣ ਵਾਲੀ ਮਿਹਨਤ ਜਾਂ ਸਮੇਂ ਨੂੰ ਦਿਨ-ਰਾਤ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਮਾਂ + ਬਾਪ = ___", options: ["ਮਾਂ-ਬਾਪ", "ਮਾਤਾ-ਪਿਤਾ", "ਘਰ-ਬਾਰ", "ਭੈਣ-ਭਰਾ"], correctAnswer: "ਮਾਂ-ਬਾਪ", explanation: "ਮਾਤਾ ਅਤੇ ਪਿਤਾ ਨੂੰ ਇਕੱਠੇ ਰੂਪ ਵਿੱਚ ਮਾਂ-ਬਾਪ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਹੱਥ + ਲਿਖਤ = ___", options: ["ਹੱਥ-ਲਿਖਤ", "ਲਿਖਾਰੀ", "ਛਾਪਿਆ", "ਕਿਤਾਬ"], correctAnswer: "ਹੱਥ-ਲਿਖਤ", explanation: "ਹੱਥ ਨਾਲ ਲਿਖੀ ਹੋਈ ਲਿਖਤ ਨੂੰ ਹੱਥ-ਲਿਖਤ (Manuscript) ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਗੱਲ + ਬਾਤ = ___", options: ["ਗੱਲ-ਬਾਤ", "ਗੱਲ-ਸੱਚ", "ਬੋਲ-ਚਾਲ", "ਸੁਨੇਹਾ"], correctAnswer: "ਗੱਲ-ਬਾਤ", explanation: "ਆਪਸੀ ਚਰਚਾ ਜਾਂ ਗੱਲ ਕਰਨ ਦੀ ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਗੱਲ-ਬਾਤ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਦੇਸ਼ + ਭਗਤ = ___", options: ["ਦੇਸ਼-ਭਗਤ", "ਦੇਸ਼-ਸੇਵਕ", "ਸਿਪਾਹੀ", "ਆਗੂ"], correctAnswer: "ਦੇਸ਼-ਭਗਤ", explanation: "ਆਪਣੇ ਦੇਸ਼ ਨਾਲ ਪਿਆਰ ਕਰਨ ਵਾਲੇ ਵਿਅਕਤੀ ਨੂੰ ਦੇਸ਼-ਭਗਤ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਧਰਮ + ਸ਼ਾਲਾ = ___", options: ["ਧਰਮਸ਼ਾਲਾ", "ਮੰਦਰ", "ਗੁਰਦੁਆਰਾ", "ਸਰਾਏ"], correctAnswer: "ਧਰਮਸ਼ਾਲਾ", explanation: "ਧਾਰਮਿਕ ਯਾਤਰੀਆਂ ਦੇ ਠਹਿਰਨ ਵਾਲੀ ਜਗ੍ਹਾ ਨੂੰ ਧਰਮਸ਼ਾਲਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਪਾਠ + ਸ਼ਾਲਾ = ___", options: ["ਪਾਠਸ਼ਾਲਾ", "ਸਕੂਲ", "ਜਮਾਤ", "ਲਿਖਾਈ"], correctAnswer: "ਪਾਠਸ਼ਾਲਾ", explanation: "ਵਿੱਦਿਆ ਪ੍ਰਾਪਤ ਕਰਨ ਵਾਲੀ ਜਗ੍ਹਾ ਜਾਂ ਸਕੂਲ ਨੂੰ ਪਾਠਸ਼ਾਲਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਖੇਡ + ਮੈਦਾਨ = ___", options: ["ਖੇਡ-ਮੈਦਾਨ", "ਸਟੇਡੀਅਮ", "ਅਖਾੜਾ", "ਪਾਰਕ"], correctAnswer: "ਖੇਡ-ਮੈਦਾਨ", explanation: "ਬੱਚਿਆਂ ਦੇ ਖੇਡਣ ਵਾਲੀ ਜਗ੍ਹਾ ਨੂੰ ਖੇਡ-ਮੈਦਾਨ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਲੋਕ + ਸਭਾ = ___", options: ["ਲੋਕ-ਸਭਾ", "ਸੰਸਦ", "ਵਿਧਾਨ-ਸਭਾ", "ਪੰਚਾਇਤ"], correctAnswer: "ਲੋਕ-ਸਭਾ", explanation: "ਜਨਤਾ ਦੁਆਰਾ ਚੁਣੇ ਗਏ ਨੁਮਾਇੰਦਿਆਂ ਦੀ ਸਭਾ ਨੂੰ ਲੋਕ-ਸਭਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਰਾਜ + ਮਹਿਲ = ___", options: ["ਰਾਜ-ਮਹਿਲ", "ਕਿਲਾ", "ਕੋਠੀ", "ਦਰਬਾਰ"], correctAnswer: "ਰਾਜ-ਮਹਿਲ", explanation: "ਰਾਜੇ ਦੇ ਰਹਿਣ ਵਾਲੇ ਵੱਡੇ ਅਤੇ ਆਲੀਸ਼ਾਨ ਘਰ ਨੂੰ ਰਾਜ-ਮਹਿਲ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: sਸੂਰਜ + ਮੁਖੀ = ___", options: ["ਸੂਰਜਮੁਖੀ", "ਗੁਲਾਬ", "ਕਮਲ", "ਗੇਂਦਾ"], correctAnswer: "ਸੂਰਜਮੁਖੀ", explanation: "ਸੂਰਜ ਵੱਲ ਮੂੰਹ ਰੱਖਣ ਵਾਲੇ ਪੀਲੇ ਰੰਗ ਦੇ ਫੁੱਲ ਨੂੰ ਸੂਰਜਮੁਖੀ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਗੁਰ + ਦੁਆਰਾ = ___", options: ["ਗੁਰਦੁਆਰਾ", "ਮੰਦਰ", "ਮਸਜਿਦ", "ਚਰਚ"], correctAnswer: "ਗੁਰਦੁਆਰਾ", explanation: "ਸਿੱਖ ਧਰਮ ਦੇ ਪੂਜਾ ਸਥਾਨ ਨੂੰ ਗੁਰਦੁਆਰਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਹਰ + ਮਨ = ___", options: ["ਹਰਮਨਪਿਆਰਾ", "ਪਿਆਰਾ", "ਸਤਿਕਾਰਯੋਗ", "ਮਸ਼ਹੂਰ"], correctAnswer: "ਹਰਮਨਪਿਆਰਾ", explanation: "ਸਾਰਿਆਂ ਦੇ ਮਨ ਨੂੰ ਭਾਉਣ ਵਾਲੇ ਵਿਅਕਤੀ ਨੂੰ ਹਰਮਨਪਿਆਰਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਰੇਲ + ਗੱਡੀ = ___", options: ["ਰੇਲ-ਗੱਡੀ", "ਮੋਟਰ-ਗੱਡੀ", "ਬੱਸ", "ਟਰੱਕ"], correctAnswer: "ਰੇਲ-ਗੱਡੀ", explanation: "ਲੋਹੇ ਦੀ ਪਟੜੀ 'ਤੇ ਚੱਲਣ ਵਾਲੀ ਸਵਾਰੀ ਗੱਡੀ ਨੂੰ ਰੇਲ-ਗੱਡੀ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਚਿੜੀਆ + ਘਰ = ___", options: ["ਚਿੜੀਆਘਰ", "ਪਿੰਜਰਾ", "ਜੰਗਲ", "ਬਾਗ"], correctAnswer: "ਚਿੜੀਆਘਰ", explanation: "ਜਿੱਥੇ ਵੱਖ-ਵੱਖ ਜਾਨਵਰ ਅਤੇ ਪੰਛੀ ਰੱਖੇ ਜਾਂਦੇ ਹਨ, ਉਸਨੂੰ ਚਿੜੀਆਘਰ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਹਵਾਈ + ਅੱਡਾ = ___", options: ["ਹਵਾਈ-ਅੱਡਾ", "ਰੇਲਵੇ-ਸਟੇਸ਼ਨ", "ਬੱਸ-ਅੱਡਾ", "ਬੰਦਰਗਾਹ"], correctAnswer: "ਹਵਾਈ-ਅੱਡਾ", explanation: "ਜਿੱਥੇ ਹਵਾਈ ਜਹਾਜ਼ ਉਤਰਦੇ ਅਤੇ ਉੱਡਦੇ ਹਨ, ਉਸਨੂੰ ਹਵਾਈ-ਅੱਡਾ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਦੋ ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜ ਕੇ ਸੰਯੁਕਤ ਸ਼ਬਦ ਬਣਾਓ: ਲੂਣ + ਤੇਲ = ___", options: ["ਲੂਣ-ਤੇਲ", "ਰਸੋਈ-ਸਾਮਾਨ", "ਘਰ-ਖਰਚ", "ਆਟਾ-ਦਾਲ"], correctAnswer: "ਲੂਣ-ਤੇਲ", explanation: "ਰਸੋਈ ਦੇ ਬੁਨਿਆਦੀ ਸਾਮਾਨ ਜਾਂ ਘਰੇਲੂ ਲੋੜਾਂ ਨੂੰ ਲੂਣ-ਤੇਲ ਕਿਹਾ ਜਾਂਦਾ ਹੈ।")
        ]
    )

    private static let prefixesSuffixes = Exercise(
        id: UUID(),
        title: "ਅਗੇਤਰ ਅਤੇ ਪਿਛੇਤਰ",
        instructions: "ਅਗੇਤਰ ਜਾਂ ਪਿਛੇਤਰ ਦੇ ਸਹੀ ਅਰਥ ਜਾਂ ਵਰਤੋਂ ਦੀ ਚੋਣ ਕਰੋ।",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਅਣਪੜ੍ਹ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਅਣ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਅਣਪੜ੍ਹ", "ਪੜ੍ਹਿਆ", "ਸਿਆਣਾ", "ਗਿਆਨੀ"], correctAnswer: "ਅਣਪੜ੍ਹ", explanation: "ਅਗੇਤਰ (prefix) ‘ਅਣ-’ ਦਾ ਅਰਥ ਹੈ ‘ਰਹਿਤ’ ਜਾਂ ‘ਬਿਨਾਂ’ (ਅਣਪੜ੍ਹ = ਜੋ ਪੜ੍ਹਿਆ ਨਾ ਹੋਵੇ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਬੇਸਮਝ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਬੇ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਬੇਸਮਝ", "ਸਮਝਦਾਰ", "ਸਿਆਣਾ", "ਚਲਾਕ"], correctAnswer: "ਬੇਸਮਝ", explanation: "ਅਗੇਤਰ ‘ਬੇ-’ ਦਾ ਅਰਥ ਹੈ ‘ਬਿਨਾਂ’ (ਬੇਸਮਝ = ਜਿਸ ਕੋਲ ਸਮਝ ਨਾ ਹੋਵੇ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਦੁਕਾਨਦਾਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਦਾਰ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਦੁਕਾਨਦਾਰ", "ਦੁਕਾਨ", "ਗਾਹਕ", "ਨੌਕਰ"], correctAnswer: "ਦੁਕਾਨਦਾਰ", explanation: "ਪਿਛੇਤਰ (suffix) ‘-ਦਾਰ’ ਵਾਲਾ ਸ਼ਬਦ ਮਾਲਕ ਜਾਂ ਰੱਖਣ ਵਾਲੇ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਦੁੱਧਵਾਲਾ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਵਾਲਾ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਦੁੱਧਵਾਲਾ", "ਦੁੱਧ", "ਦਹੀਂ", "ਮੱਖਣ"], correctAnswer: "ਦੁੱਧਵਾਲਾ", explanation: "ਪਿਛੇਤਰ ‘-ਵਾਲਾ’ ਕਿਸੇ ਧੰਦੇ ਜਾਂ ਕੰਮ ਕਰਨ ਵਾਲੇ ਵਿਅਕਤੀ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਕਲਾਕਾਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਕਾਰ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਕਲਾਕਾਰ", "ਕਲਾ", "ਸਿੱਖਿਆ", "ਕੰਮ"], correctAnswer: "ਕਲਾਕਾਰ", explanation: "ਪਿਛੇਤਰ ‘-ਕਾਰ’ ਕਿਸੇ ਖ਼ਾਸ ਖੇਤਰ ਵਿੱਚ ਕੰਮ ਕਰਨ ਵਾਲੇ (Artist) ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਉਪਨਾਮ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਉਪ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਉਪਨਾਮ", "ਨਾਮ", "ਵੱਡਾ ਨਾਮ", "ਬਦਨਾਮ"], correctAnswer: "ਉਪਨਾਮ", explanation: "ਅਗੇਤਰ ‘ਉਪ-’ ਦਾ ਅਰਥ ਛੋਟਾ ਜਾਂ ਸਹਾਇਕ ਹੁੰਦਾ ਹੈ (ਜਿਵੇਂ ਉਪਨਾਮ / Surname)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਸ਼ਰਮਸਾਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਸਾਰ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਸ਼ਰਮਸਾਰ", "ਬੇਸ਼ਰਮ", "ਖ਼ੁਸ਼", "ਹੈਰਾਨ"], correctAnswer: "ਸ਼ਰਮਸਾਰ", explanation: "ਪਿਛੇਤਰ ‘-ਸਾਰ’ ਭਾਵਨਾ ਨਾਲ ਭਰਪੂਰ ਹੋਣ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ (ਸ਼ਰਮਸਾਰ = ਸ਼ਰਮ ਨਾਲ ਭਰਿਆ ਹੋਇਆ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਅਕਲਮੰਦ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਮੰਦ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਅਕਲਮੰਦ", "ਬੇਅਕਲ", "ਮੂਰਖ", "ਗ਼ਰੀਬ"], correctAnswer: "ਅਕਲਮੰਦ", explanation: "ਪਿਛੇਤਰ ‘-ਮੰਦ’ ਦਾ ਅਰਥ ਹੈ ‘ਵਾਲਾ’ (ਅਕਲਮੰਦ = ਸਮਝਦਾਰ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਬਲਹੀਨ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਹੀਨ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਬਲਹੀਨ", "ਬਲਵਾਨ", "ਤਾਕਤਵਰ", "ਮਜ਼ਬੂਤ"], correctAnswer: "ਬਲਹੀਨ", explanation: "ਪਿਛੇਤਰ ‘-ਹੀਨ’ ਦਾ ਅਰਥ ਹੈ ‘ਰਹਿਤ’ ਜਾਂ ‘ਬਿਨਾਂ’ (ਬਲਹੀਨ = ਕਮਜ਼ੋਰ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਸੁਪੁੱਤਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਸੁ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਸੁਪੁੱਤਰ", "ਕੁਪੁੱਤਰ", "ਪੁੱਤਰ", "ਧੀ"], correctAnswer: "ਸੁਪੁੱਤਰ", explanation: "ਅਗੇਤਰ ‘ਸੁ-’ ਦਾ ਅਰਥ ਹੈ ‘ਚੰਗਾ’ (ਸੁਪੁੱਤਰ = ਚੰਗਾ ਪੁੱਤਰ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਕੁਸੰਗਤ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਕੁ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਕੁਸੰਗਤ", "ਸੁਸੰਗਤ", "ਸੰਗਤ", "ਦੋਸਤੀ"], correctAnswer: "ਕੁਸੰਗਤ", explanation: "ਅਗੇਤਰ ‘ਕੁ-’ ਦਾ ਅਰਥ ਹੈ ‘ਬੁਰਾ’ (ਕੁਸੰਗਤ = ਮਾੜੀ ਸੰਗਤ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਨਿਡਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਨਿ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਨਿਡਰ", "ਡਰਪੋਕ", "ਡਰੂ", "ਡਰਨਾ"], correctAnswer: "ਨਿਡਰ", explanation: "ਅਗੇਤਰ ‘ਨਿ-’ ਦਾ ਅਰਥ ਹੈ ‘ਬਿਨਾਂ’ (ਨਿਡਰ = ਜਿਸਨੂੰ ਡਰ ਨਾ ਹੋਵੇ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਬਲਵਾਨ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਵਾਨ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਬਲਵਾਨ", "ਬਲਹੀਨ", "ਕਮਜ਼ੋਰ", "ਮਾੜਾ"], correctAnswer: "ਬਲਵਾਨ", explanation: "ਪਿਛੇਤਰ ‘-ਵਾਨ’ ਦਾ ਅਰਥ ਹੈ ‘ਵਾਲਾ’ (ਬਲਵਾਨ = ਤਾਕਤਵਰ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਨਮਕੀਨ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਈਨ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਨਮਕੀਨ", "ਮੀਠਾ", "ਕੌੜਾ", "ਫਿੱਕਾ"], correctAnswer: "ਨਮਕੀਨ", explanation: "ਪਿਛੇਤਰ ‘-ਈਨ’ ਸੁਆਦ ਜਾਂ ਗੁਣ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ (ਨਮਕੀਨ = ਨਮਕ ਵਾਲਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਲਾਇਲਾਜ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਲਾ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਲਾਇਲਾਜ", "ਇਲਾਜ", "ਦਵਾਈ", "ਤੰਦਰੁਸਤ"], correctAnswer: "ਲਾਇਲਾਜ", explanation: "ਅਗੇਤਰ ‘ਲਾ-’ ਦਾ ਅਰਥ ਹੈ ‘ਬਿਨਾਂ’ (ਲਾਇਲਾਜ = ਜਿਸਦਾ ਕੋਈ ਇਲਾਜ ਨਾ ਹੋਵੇ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਹਮਉਮਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਹਮ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਹਮਉਮਰ", "ਛੋਟਾ", "ਵੱਡਾ", "ਬੁੱਢਾ"], correctAnswer: "ਹਮਉਮਰ", explanation: "ਅਗੇਤਰ ‘ਹਮ-’ ਦਾ ਅਰਥ ਹੈ ‘ਬਰਾਬਰ’ ਜਾਂ ‘ਸਾਂਝਾ’ (ਹਮਉਮਰ = ਇੱਕੋ ਜਿਹੀ ਉਮਰ ਵਾਲੇ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਗ਼ੈਰ-ਹਾਜ਼ਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “ਗ਼ੈਰ-” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਗ਼ੈਰ-ਹਾਜ਼ਰ", "ਹਾਜ਼ਰ", "ਆਇਆ", "ਬੈਠਾ"], correctAnswer: "ਗ਼ੈਰ-ਹਾਜ਼ਰ", explanation: "ਅਗੇਤਰ ‘ਗ਼ੈਰ-’ ਦਾ ਅਰਥ ਹੈ ‘ਬਿਨਾਂ’ ਜਾਂ ‘ਵਿਰੋਧੀ’ (ਗ਼ੈਰ-ਹਾਜ਼ਰ = ਜੋ ਹਾਜ਼ਰ ਨਾ ਹੋਵੇ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਗਊਸ਼ਾਲਾ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਸ਼ਾਲਾ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਗਊਸ਼ਾਲਾ", "ਗਊ", "ਖੇਤ", "ਜੰਗਲ"], correctAnswer: "ਗਊਸ਼ਾਲਾ", explanation: "ਪਿਛੇਤਰ ‘-ਸ਼ਾਲਾ’ ਸਥਾਨ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ (ਗਊਸ਼ਾਲਾ = ਗਾਵਾਂ ਦੇ ਰਹਿਣ ਦੀ ਜਗ੍ਹਾ)।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਹਿੰਦੁਸਤਾਨ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਸਤਾਨ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਹਿੰਦੁਸਤਾਨ", "ਹਿੰਦੂ", "ਪਾਕਿਸਤਾਨ", "ਅਫ਼ਗਾਨਿਸਤਾਨ"], correctAnswer: "ਹਿੰਦੁਸਤਾਨ", explanation: "ਪਿਛੇਤਰ ‘-ਸਤਾਨ’ ਇਲਾਕੇ ਜਾਂ ਦੇਸ਼ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।"),
            ExerciseItem(id: UUID(), prompt: "ਸ਼ਬਦ “ਸ਼ਰਮਸਾਰ” ਵਿੱਚ ਵਰਤੇ ਗਏ ਪਿਛੇਤਰ/ਅਗੇਤਰ “-ਸਾਰ” ਦਾ ਕੀ ਮਤਲਬ ਹੈ?", options: ["ਸ਼ਰਮਸਾਰ", "ਬੇਸ਼ਰਮ", "ਖ਼ੁਸ਼", "ਹੈਰਾਨ"], correctAnswer: "ਸ਼ਰਮਸਾਰ", explanation: "ਪਿਛੇਤਰ ‘-ਸਾਰ’ ਦਾ ਅਰਥ ਭਾਵਨਾ ਨਾਲ ਭਰਪੂਰ ਹੋਣਾ ਹੈ।")
        ]
    )

}
