import Foundation

/// Holds the 14 new Punjabi exercises translated from the EnglishNewExercisesData.swift library.
/// Covers the Language, Cognition, and Functional Skills sections.
struct PunjabiNewExercisesData {

    /// The complete collection of all 14 new Punjabi exercises.
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

    // MARK: - Exercise 1: Rhyming Pairs (ਪ੍ਰਤੀਧੁਨੀ ਜੋੜੇ / ਹਮ-ਆਵਾਜ਼ ਸ਼ਬਦ)
    private static let exercise1 = Exercise(
        title: "Rhyming Pairs",
        instructions: "Choose the word that rhymes with the given word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਪਾਣੀ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਗਰਮੀ", "ਹਾਂਣੀ", "ਕੱਪੜਾ", "ਸੂਰਜ"], correctAnswer: "ਹਾਂਣੀ", explanation: "ਪਾਣੀ ਅਤੇ ਹਾਂਣੀ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਤਾਰਾ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਚੰਨ", "ਸਾਰਾ", "ਰਾਤ", "ਬੱਦਲ"], correctAnswer: "ਸਾਰਾ", explanation: "ਤਾਰਾ ਅਤੇ ਸਾਰਾ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਲਾਲ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਹਰਾ", "ਬਾਲ", "ਫੁੱਲ", "ਘਰ"], correctAnswer: "ਬਾਲ", explanation: "ਲਾਲ ਅਤੇ ਬਾਲ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਕਾਰ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਸੜਕ", "ਤਾਰ", "ਹਵਾ", "ਪਾਣੀ"], correctAnswer: "ਤਾਰ", explanation: "ਕਾਰ ਅਤੇ ਤਾਰ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਮੇਜ਼' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਕੁਰਸੀ", "ਤੇਜ਼", "ਵੱਡਾ", "ਕਿਤਾਬ"], correctAnswer: "ਤੇਜ਼", explanation: "ਮੇਜ਼ ਅਤੇ ਤੇਜ਼ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਖੇਤ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਹਲ", "ਰੇਤ", "ਕਣਕ", "ਪਿੰਡ"], correctAnswer: "ਰੇਤ", explanation: "ਖੇਤ ਅਤੇ ਰੇਤ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਹੱਸ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਰੋਣਾ", "ਦੱਸ", "ਖੇਡਣਾ", "ਸੌਣਾ"], correctAnswer: "ਦੱਸ", explanation: "ਹੱਸ ਅਤੇ ਦੱਸ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਚਾਹ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਪਾਣੀ", "ਰਾਹ", "ਦੁੱਧ", "ਚਮਚ"], correctAnswer: "ਰਾਹ", explanation: "ਚਾਹ ਅਤੇ ਰਾਹ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਸੋਨਾ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਚਾਂਦੀ", "ਰੋਣਾ", "ਜਾਗਣਾ", "ਪੀਣਾ"], correctAnswer: "ਰੋਣਾ", explanation: "ਸੋਨਾ ਅਤੇ ਰੋਣਾ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਗੀਤ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਗਾਉਣਾ", "ਮੀਤ", "ਬਾਜਾ", "ਤਾਲ"], correctAnswer: "ਮੀਤ", explanation: "ਗੀਤ ਅਤੇ ਮੀਤ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਧੁੱਪ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਛਾਂ", "ਚੁੱਪ", "ਗਰਮੀ", "ਦਿਨ"], correctAnswer: "ਚੁੱਪ", explanation: "ਧੁੱਪ ਅਤੇ ਚੁੱਪ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਸਾਲ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਮਹੀਨਾ", "ਹਾਲ", "ਦਿਨ", "ਘੜੀ"], correctAnswer: "ਹਾਲ", explanation: "ਸਾਲ ਅਤੇ ਹਾਲ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਤੇਲ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਦੀਵਾ", "ਮੇਲ", "ਪਾਣੀ", "ਘਿਓ"], correctAnswer: "ਮੇਲ", explanation: "ਤੇਲ ਅਤੇ ਮੇਲ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਫੁੱਲ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਬਾਗ", "ਮੁਲ", "ਕੰਡਾ", "ਪੱਤਾ"], correctAnswer: "ਮੁਲ", explanation: "ਫੁੱਲ ਅਤੇ ਮੁਲ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਮੋਰ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਨਾਚ", "ਚੋਰ", "ਪੰਛੀ", "ਜੰਗਲ"], correctAnswer: "ਚੋਰ", explanation: "ਮੋਰ ਅਤੇ ਚੋਰ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਸ਼ੇਰ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਜੰਗਲ", "ਡੇਰ", "ਭਾਲੂ", "ਤੇਜ਼"], correctAnswer: "ਡੇਰ", explanation: "ਸ਼ੇਰ ਅਤੇ ਡੇਰ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਸਾਫ਼' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਗੰਦਾ", "ਮਾਫ਼", "ਪਾਣੀ", "ਲਿਖਣਾ"], correctAnswer: "ਮਾਫ਼", explanation: "ਸਾਫ਼ ਅਤੇ ਮਾਫ਼ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਵਾਜਾ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਗੀਤ", "ਰਾਜਾ", "ਤਾਲ", "ਢੋਲ"], correctAnswer: "ਰਾਜਾ", explanation: "ਵਾਜਾ ਅਤੇ ਰਾਜਾ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਘਰ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਕਮਰਾ", "ਡਰ", "ਬਾਹਰ", "ਸੜਕ"], correctAnswer: "ਡਰ", explanation: "ਘਰ ਅਤੇ ਡਰ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਹੜਾ ਸ਼ਬਦ 'ਜਾਲ' ਨਾਲ ਮਿਲਦਾ-ਜੁਲਦਾ ਹੈ?", options: ["ਮੱਛੀ", "ਥਾਲ", "ਪਾਣੀ", "ਨਦੀ"], correctAnswer: "ਥਾਲ", explanation: "ਜਾਲ ਅਤੇ ਥਾਲ ਦੀ ਆਖਰੀ ਆਵਾਜ਼ ਇੱਕੋ ਜਿਹੀ ਹੈ।")
        ]
    )

    // MARK: - Exercise 2: Word Association (ਸ਼ਬਦ ਸਬੰਧ)
    private static let exercise2 = Exercise(
        title: "Word Association",
        instructions: "Choose the word most closely associated with the given word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ਡਾਕਟਰ", options: ["ਹਸਪਤਾਲ", "ਹਵਾਈ ਅੱਡਾ", "ਲਾਇਬ੍ਰੇਰੀ", "ਖੇਤ"], correctAnswer: "ਹਸਪਤਾਲ", explanation: "ਡਾਕਟਰ ਮਰੀਜ਼ਾਂ ਦੀ ਦੇਖਭਾਲ ਲਈ ਹਸਪਤਾਲ ਵਿੱਚ ਕੰਮ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਰੋਟੀ", options: ["ਮੱਖਣ", "ਹਥੌੜਾ", "ਸਾਬਣ", "ਪੈਨਸਿਲ"], correctAnswer: "ਮੱਖਣ", explanation: "ਮੱਖਣ ਨੂੰ ਆਮ ਤੌਰ 'ਤੇ ਰੋਟੀ 'ਤੇ ਲਗਾਇਆ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਰਸੋਈ", options: ["ਚੁੱਲ੍ਹਾ", "ਬੈੱਡ", "ਸ਼ਾਵਰ", "ਕਾਰ"], correctAnswer: "ਚੁੱਲ੍ਹਾ", explanation: "ਚੁੱਲ੍ਹਾ ਰਸੋਈ ਦਾ ਮੁੱਖ ਉਪਕਰਨ ਹੈ।"),
            ExerciseItem(prompt: "ਲਾਇਬ੍ਰੇਰੀ", options: ["किਤਾਬਾਂ", "ਕੱਪੜੇ", "ਸੰਦ", "ਸਬਜ਼ੀਆਂ"], correctAnswer: "किਤਾਬਾਂ", explanation: "ਲਾਇਬ੍ਰੇਰੀਆਂ ਵਿੱਚ ਕਿਤਾਬਾਂ ਸਟੋਰ ਕੀਤੀਆਂ ਅਤੇ ਉਧਾਰ ਦਿੱਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(prompt: "ਜੁੱਤੀ", options: ["ਜੁਰਾਬਾਂ", "ਟੋਪੀ", "ਦਸਤਾਨੇ", "ਬੈਲਟ"], correctAnswer: "ਜੁਰਾਬਾਂ", explanation: "ਜੁਰਾਬਾਂ ਜੁੱਤੀ ਦੇ ਅੰਦਰ ਪਾਈਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(prompt: "ਪੁਲਾੜ ਯਾਤਰੀ", options: ["ਪੁਲਾੜ", "ਸਮੁੰਦਰ", "ਜੰਗਲ", "ਮਾਰੂਥਲ"], correctAnswer: "ਪੁਲਾੜ", explanation: "ਪੁਲਾੜ ਯਾਤਰੀ ਪੁਲਾੜ ਦੀ ਯਾਤਰਾ ਕਰਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਅਧਿਆਪਕ", options: ["ਸਕੂਲ", "ਫੈਕਟਰੀ", "ਸਿਨੇਮਾ", "ਜਿਮ"], correctAnswer: "ਸਕੂਲ", explanation: "ਅਧਿਆਪਕ ਸਕੂਲਾਂ ਵਿੱਚ ਵਿਦਿਆਰਥੀਆਂ ਨੂੰ ਪੜ੍ਹਾਉਂਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਸਮੁੰਦਰ", options: ["ਮੱਛੀ", "ਚਿੜੀ", "ਗਾਂ", "ਮਕੜੀ"], correctAnswer: "ਮੱਛੀ", explanation: "ਮੱਛੀਆਂ ਸਮੁੰਦਰ ਵਿੱਚ ਰਹਿੰਦੀਆਂ ਹਨ।"),
            ExerciseItem(prompt: "ਕਾਰ", options: ["ਟਾਇਰ", "ਖੰਭ", "ਕਾਠੀ", "ਬਾਦਬਾਨ"], correctAnswer: "ਟਾਇਰ", explanation: "ਟਾਇਰ ਕਾਰ ਦਾ ਇੱਕ ਜ਼ਰੂਰੀ ਹਿੱਸਾ ਹਨ।"),
            ExerciseItem(prompt: "ਮੀਂਹ", options: ["ਛਤਰੀ", "ਐਨਕਾਂ", "ਦਸਤਾਨੇ", "ਮਫਲਰ"], correctAnswer: "ਛਤਰੀ", explanation: "ਛਤਰੀ ਤੁਹਾਨੂੰ ਮੀਂਹ ਤੋਂ ਬਚਾਉਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਅੱਗ", options: ["ਧੂੰਆਂ", "ਬਰਫ਼", "ਪੱਤਾ", "ਸਿੱਕਾ"], correctAnswer: "ਧੂੰਆਂ", explanation: "ਅੱਗ ਵਿੱਚੋਂ ਧੂੰਆਂ ਨਿਕਲਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਦੰਦਾਂ ਦਾ ਡਾਕਟਰ", options: ["ਦੰਦ", "ਵਾਲ", "ਅੱਖਾਂ", "ਪੈਰ"], correctAnswer: "ਦੰਦ", explanation: "ਦੰਦਾਂ ਦੇ ਡਾਕਟਰ ਦੰਦਾਂ ਦੀ ਸਿਹਤ ਦੇ ਮਾਹਰ ਹੁੰਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਕੌਫ਼ੀ", options: ["ਕੱਪ", "ਕੌਲੀ", "ਪਲੇਟ", "ਚਮਚ"], correctAnswer: "ਕੱਪ", explanation: "ਕੌਫ਼ੀ ਆਮ ਤੌਰ 'ਤੇ ਕੱਪ ਵਿੱਚ ਪੀਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਬਾਗ਼", options: ["ਫੁੱਲ", "ਕੰਪਿਊਟਰ", "ਚੁੱਲ੍ਹੇ", "ਕੋਟ"], correctAnswer: "ਫੁੱਲ", explanation: "ਬਾਗ਼ ਵਿੱਚ ਫੁੱਲ ਉੱਗਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਚਾਬੀ", options: ["ਜੰਦਰਾ", "ਬਾਰੀ", "ਛੱਤ", "ਫਰਸ਼"], correctAnswer: "ਜੰਦਰਾ", explanation: "ਚਾਬੀ ਦੀ ਵਰਤੋਂ ਜੰਦਰਾ ਖੋਲ੍ਹਣ ਲਈ ਕੀਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਡਾਕਖਾਨਾ", options: ["ਚਿੱਠੀ", "ਰੋਟੀ", "ਦਵਾਈ", "ਟਿਕਟ"], correctAnswer: "ਚਿੱਠੀ", explanation: "ਚਿੱਠੀਆਂ ਡਾਕਖਾਨੇ ਰਾਹੀਂ ਭੇਜੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(prompt: "ਪਿਆਨੋ", options: ["ਸੰਗੀਤ", "ਰੰਗ", "ਮਿੱਟੀ", "ਲੱਕੜ"], correctAnswer: "ਸੰਗੀਤ", explanation: "ਪਿਆਨੋ ਸੰਗੀਤ ਵਜਾਉਣ ਵਾਲਾ ਇੱਕ ਸਾਜ਼ ਹੈ।"),
            ExerciseItem(prompt: "ਮਧੂਮੱਖੀ", options: ["ਸ਼ਹਿਦ", "ਦੁੱਧ", "ਉੱਨ", "ਰੇਸ਼ਮ"], correctAnswer: "ਸ਼ਹਿਦ", explanation: "ਮਧੂਮੱਖੀਆਂ ਸ਼ਹਿਦ ਬਣਾਉਂਦੀਆਂ ਹਨ।"),
            ExerciseItem(prompt: "ਮਕੜੀ", options: ["ਜਾਲਾ", "ਆਲ੍ਹਣਾ", "ਖੱਤਾ", "ਗੁਫา"], correctAnswer: "ਜਾਲਾ", explanation: "ਮਕੜੀ ਜਾਲਾ ਬੁਣਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਸਾਨ", options: ["ਟ੍ਰੈਕਟਰ", "ਹਵਾਈ ਜਹਾਜ਼", "ਪਣਡੁੱਬੀ", "ਰੇਲ ਗੱਡੀ"], correctAnswer: "ਟ੍ਰੈਕਟਰ", explanation: "ਕਿਸਾਨ ਖੇਤਾਂ ਵਿੱਚ ਕੰਮ ਕਰਨ ਲਈ ਟ੍ਰੈਕਟਰ ਦੀ ਵਰਤੋਂ ਕਰਦੇ ਹਨ।")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying (ਅਖਾਣਾਂ ਨੂੰ ਪੂਰਾ ਕਰੋ)
    private static let exercise3 = Exercise(
        title: "Complete the Saying",
        instructions: "Complete the well-known saying or expression.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਉੱਠ ਨਾ ਸਕੇ, ਫਿੱਟੇ ___।", options: ["ਮੂੰਹ", "ਗੋਡੇ", "ਪੈਰ", "ਰਾਹ"], correctAnswer: "ਮੂੰਹ", explanation: "ਪੂਰੀ ਅਖਾਣ ਹੈ: 'ਉੱਠ ਨਾ ਸਕੇ, ਫਿੱਟੇ ਮੂੰਹ ਗੋਡਿਆਂ ਦਾ'। ਇਹ ਆਪਣੀ ਕਮਜ਼ੋਰੀ ਲੁਕਾਉਣ ਲਈ ਬਹਾਨੇ ਬਣਾਉਣ 'ਤੇ ਵਰਤੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਅੰਨ੍ਹਿਆਂ ਵਿੱਚ ___ ਰਾਜਾ।", options: ["ਕਾਣਾ", "ਅੰਨ੍ਹਾ", "ਸਿਆਣਾ", "ਰਾਜਾ"], correctAnswer: "ਕਾਣਾ", explanation: "ਪ੍ਰਸਿੱਧ ਅਖਾਣ ਹੈ: 'ਅੰਨ੍ਹਿਆਂ ਵਿੱਚ ਕਾਣਾ ਰਾਜਾ'।"),
            ExerciseItem(prompt: "ਇੱਕ ਹੱਥ ਨਾਲ ___ ਨਹੀਂ ਵੱਜਦੀ।", options: ["ਤਾੜੀ", "ਘੰਟੀ", "ਢੋਲਕ", "ਸੀਟੀ"], correctAnswer: "ਤਾੜੀ", explanation: "ਅਖਾਣ ਹੈ: 'ਇੱਕ ਹੱਥ ਨਾਲ ਤਾੜੀ ਨਹੀਂ ਵੱਜਦੀ', ਜਿਸਦਾ ਮਤਲਬ ਹੈ ਕਿ ਝਗੜਾ ਦੋਵਾਂ ਪਾਸਿਆਂ ਤੋਂ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਅੰਤ ਭਲੇ ਦਾ ___।", options: ["ਭਲਾ", "ਬੁਰਾ", "ਨੁਕਸਾਨ", "ਲਾਭ"], correctAnswer: "ਭਲਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਅੰਤ ਭਲੇ ਦਾ ਭਲਾ', ਭਾਵ ਚੰਗੇ ਕੰਮ ਦਾ ਨਤੀਜਾ ਹਮੇਸ਼ਾ ਚੰਗਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਘਰ ਦਾ ਜੋਗੀ ਜੋਗੜਾ, ਬਾਹਰ ਦਾ ਜੋਗੀ ___।", options: ["ਸਿੱਧ", "ਮਿੱਤਰ", "ਸਾਧੂ", "ਰਾਜਾ"], correctAnswer: "ਸਿੱਧ", explanation: "ਪੂਰੀ ਅਖਾਣ ਹੈ: 'ਘਰ ਦਾ ਜੋਗੀ ਜੋਗੜਾ, ਬਾਹਰ ਦਾ ਜੋਗੀ ਸਿੱਧ'।"),
            ExerciseItem(prompt: "ਚੋਰ ਦੀ ਦਾੜ੍ਹੀ ਵਿੱਚ ___।", options: ["ਤਿਣਕਾ", "ਵਾਲ", "ਸੋਨਾ", "ਰੰਗ"], correctAnswer: "ਤਿਣਕਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਚੋਰ ਦੀ ਦਾੜ੍ਹੀ ਵਿੱਚ ਤਿਣਕਾ', ਭਾਵ ਗੁਨਾਹਗਾਰ ਹਮੇਸ਼ਾ ਡਰਿਆ ਰਹਿੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਜਿੱਥੇ ਚਾਹ, ਉੱਥੇ ___।", options: ["ਰਾਹ", "ਚਾਹ", "ਘਰ", "ਮੰਜ਼ਿਲ"], correctAnswer: "ਰਾਹ", explanation: "ਅਖਾਣ ਹੈ: 'ਜਿੱਥੇ ਚਾਹ, ਉੱਥੇ ਰਾਹ', ਭਾਵ ਦ੍ਰਿੜ ਇਰਾਦੇ ਨਾਲ ਮੰਜ਼ਿਲ ਮਿਲ ਹੀ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਦੂਰ ਦੇ ਢੋਲ ___ ਲੱਗਦੇ ਹਨ।", options: ["ਸੁਹਾਵਣੇ", "ਉੱਚੇ", "ਮਿੱਠੇ", "ਮਾੜੇ"], correctAnswer: "ਸੁਹਾਵਣੇ", explanation: "ਅਖਾਣ ਹੈ: 'ਦੂਰ ਦੇ ਢੋਲ ਸੁਹਾਵਣੇ ਲੱਗਦੇ ਹਨ'।"),
            ExerciseItem(prompt: "ਕਰ ਭਲਾ, ਹੋ ___।", options: ["ਭਲਾ", "ਬੁਰਾ", "ਜਿੱਤ", "ਹਾਰ"], correctAnswer: "ਭਲਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਕਰ ਭਲਾ, ਹੋ ਭਲਾ'।"),
            ExerciseItem(prompt: "ਬੂੰਦ-ਬੂੰਦ ਨਾਲ ___ ਭਰਦਾ ਹੈ।", options: ["ਘੜਾ", "ਚਮਚਾ", "ਬਾਲਟੀ", "ਗਲਾਸ"], correctAnswer: "ਘੜਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਬੂੰਦ ਬੂੰਦ ਨਾਲ ਘੜਾ ਭਰਦਾ ਹੈ', ਭਾਵ ਛੋਟੀ ਬਚਤ ਵੀ ਵੱਡੀ ਬਣ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕਾਹਲੀ ਅੱਗੇ ___।", options: ["ਟੋਏ", "ਪਹਾੜ", "ਸੜਕਾਂ", "ਘਰ"], correctAnswer: "ਟੋਏ", explanation: "ਅਖਾਣ ਹੈ: 'ਕਾਹਲੀ ਅੱਗੇ ਟੋਏ', ਜਲਦਬਾਜ਼ੀ ਵਿੱਚ ਹਮੇਸ਼ਾ ਨੁਕਸਾਨ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਜਿਹਾ ਬੀਜੋਗੇ, ਤਿਹਾ ___।", options: ["ਵੱਢੋਗੇ", "ਖਾਓਗੇ", "ਵੇਚੋਗੇ", "ਬੀਜੋਗੇ"], correctAnswer: "ਵੱਢੋਗੇ", explanation: "ਅਖਾਣ ਹੈ: 'ਜਿਹਾ ਬੀਜੋਗੇ, ਤਿਹਾ ਵੱਢੋਗੇ'।"),
            ExerciseItem(prompt: "ਇੱਕ ਤੇ ਇੱਕ ___ ਹੁੰਦੇ ਹਨ।", options: ["ਗਿਆਰਾਂ", "ਦੋ", "ਤਿੰਨ", "ਚਾਰ"], correctAnswer: "ਗਿਆਰਾਂ", explanation: "ਅਖਾਣ ਹੈ: 'ਇੱਕ ਤੇ ਇੱਕ ਗਿਆਰਾਂ ਹੁੰਦੇ ਹਨ', ਜੋ ਏਕਤਾ ਦੀ ਤਾਕਤ ਨੂੰ ਦਰਸਾਉਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਆਪਣੀ ਗਲੀ ਵਿੱਚ ___ ਵੀ ਸ਼ੇਰ ਹੁੰਦਾ ਹੈ।", options: ["ਕੁੱਤਾ", "ਬਿੱਲਾ", "ਗਿੱਦੜ", "ਚੂਹਾ"], correctAnswer: "ਕੁੱਤਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਆਪਣੀ ਗਲੀ ਵਿੱਚ ਕੁੱਤਾ ਵੀ ਸ਼ੇਰ ਹੁੰਦਾ ਹੈ'।"),
            ExerciseItem(prompt: "ਲਾਲਚ ___ ਬਲਾ ਹੈ।", options: ["ਬੁਰੀ", "ਚੰਗੀ", "ਵੱਡੀ", "ਛੋਟੀ"], correctAnswer: "ਬੁਰੀ", explanation: "ਅਖਾਣ ਹੈ: 'ਲਾਲਚ ਬੁਰੀ ਬਲਾ ਹੈ'।"),
            ExerciseItem(prompt: "ਸਬਰ ਦਾ ਫਲ ___ ਹੁੰਦਾ ਹੈ।", options: ["ਮਿੱਠਾ", "ਕੌੜਾ", "ਖੱਟਾ", "ਨਮਕੀਨ"], correctAnswer: "ਮਿੱਠਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਸਬਰ ਦਾ ਫਲ ਮਿੱਠਾ ਹੁੰਦਾ ਹੈ'।"),
            ExerciseItem(prompt: "ਆਪ ਭਲਾ ਤਾਂ ___ ਭਲਾ।", options: ["ਜਗ", "ਘਰ", "ਮਨ", "ਲੋਕ"], correctAnswer: "ਜਗ", explanation: "ਅਖਾਣ ਹੈ: 'ਆਪ ਭਲਾ ਤਾਂ ਜਗ ਭਲਾ'।"),
            ExerciseItem(prompt: "ਲੋਹੇ ਨੂੰ ___ ਕੱਟਦਾ ਹੈ।", options: ["ਲੋਹਾ", "ਪੱਥਰ", "ਪਾਣੀ", "ਲੱਕੜ"], correctAnswer: "ਲੋਹਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਲੋਹੇ ਨੂੰ ਲੋਹਾ ਕੱਟਦਾ ਹੈ'।"),
            ExerciseItem(prompt: "ਹੱਥ ਨੂੰ ਹੱਥ ___ ਹੈ।", options: ["ਧੋਂਦਾ", "ਫੜਦਾ", "ਮਾਰਦਾ", "ਖਿੱਚਦਾ"], correctAnswer: "ਧੋਂਦਾ", explanation: "ਅਖਾਣ ਹੈ: 'ਹੱਥ ਨੂੰ ਹੱਥ ਧੋਂਦਾ ਹੈ', ਭਾਵ ਆਪਸੀ ਮਦਦ ਨਾਲ ਹੀ ਕੰਮ ਸਿਰੇ ਚੜ੍ਹਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਹੱਥ ਕੰਗਣ ਨੂੰ ___ ਕੀ?", options: ["ਆਰਸੀ", "ਸ਼ੀਸ਼ਾ", "ਸੋਨਾ", "ਰੰਗ"], correctAnswer: "ਆਰਸੀ", explanation: "ਅਖਾਣ ਹੈ: 'ਹੱਥ ਕੰਗਣ ਨੂੰ ਆਰਸੀ ਕੀ', ਭਾਵ ਪ੍ਰਤੱਖ ਚੀਜ਼ ਨੂੰ ਕਿਸੇ ਸਬੂਤ ਦੀ ਲੋੜ ਨਹੀਂ ਹੁੰਦੀ।")
        ]
    )

    // MARK: - Exercise 4: Compound Words (ਸੰਯੁਕਤ ਸ਼ਬਦ)
    private static let exercise4 = Exercise(
        title: "Compound Words",
        instructions: "Choose the correct word to complete the compound word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ਸੂਰਜ + ___", options: ["ਮੁਖੀ", "ਫੁੱਲ", "ਚੰਨ", "ਤਾਰਾ"], correctAnswer: "ਮੁਖੀ", explanation: "ਸੂਰਜ + ਮੁਖੀ = ਸੂਰਜਮੁਖੀ।"),
            ExerciseItem(prompt: "ਮੇਜ਼ + ___", options: ["ਕੁਰਸੀ", "ਪਲੇਟ", "ਗਲਾਸ", "ਕਮਰਾ"], correctAnswer: "ਕੁਰਸੀ", explanation: "ਮੇਜ਼ + ਕੁਰਸੀ = ਮੇਜ਼-ਕੁਰਸੀ।"),
            ExerciseItem(prompt: "ਹੱਥ + ___", options: ["ਘੜੀ", "ਪੈਰ", "ਕੰਮ", "ਸਫਾਈ"], correctAnswer: "ਘੜੀ", explanation: "ਹੱਥ + ਘੜੀ = ਹੱਥ-ਘੜੀ।"),
            ExerciseItem(prompt: "ਰੇਲ + ___", options: ["ਗੱਡੀ", "ਪਟੜੀ", "ਸਟੇਸ਼ਨ", "ਟਿਕਟ"], correctAnswer: "ਗੱਡੀ", explanation: "ਰੇਲ + ਗੱਡੀ = ਰੇਲ-ਗੱਡੀ।"),
            ExerciseItem(prompt: "ਚਾਹ + ___", options: ["ਪਾਣੀ", "ਖੰਡ", "ਦੁੱਧ", "ਕੱਪ"], correctAnswer: "ਪਾਣੀ", explanation: "ਚਾਹ + ਪਾਣੀ = ਚਾਹ-ਪਾਣੀ।"),
            ExerciseItem(prompt: "ਹਵਾਈ + ___", options: ["ਜਹਾਜ਼", "ਅੱਡਾ", "ਸਫਰ", "ਪਾਇਲਟ"], correctAnswer: "ਜਹਾਜ਼", explanation: "ਹਵਾਈ + ਜਹਾਜ਼ = ਹਵਾਈ-ਜਹਾਜ਼।"),
            ExerciseItem(prompt: "ਚੰਦ + ___", options: ["ਮੁਖੀ", "ਤਾਰਾ", "ਰਾਤ", "ਬੱਦਲ"], correctAnswer: "ਮੁਖੀ", explanation: "ਚੰਦ + ਮੁਖੀ = ਚੰਦਮੁਖੀ।"),
            ExerciseItem(prompt: "ਸੱਚ + ___", options: ["ਮੁੱਚ", "ਝੂਠ", "ਬੋਲਣਾ", "ਸਾਫ਼"], correctAnswer: "ਮੁੱਚ", explanation: "ਸੱਚ + ਮੁੱਚ = ਸੱਚ-ਮੁੱਚ।"),
            ExerciseItem(prompt: "ਦੇਸ਼ + ___", options: ["ਭਗਤ", "ਧਰਤੀ", "ਭਾਸ਼ਾ", "ਲੋਕ"], correctAnswer: "ਭਗਤ", explanation: "ਦੇਸ਼ + ਭਗਤ = ਦੇਸ਼-ਭਗਤ।"),
            ExerciseItem(prompt: "ਗੁਰ + ___", options: ["ਦੁਆਰਾ", "ਬਾਣੀ", "ਸਿੱਖ", "ਘਰ"], correctAnswer: "ਦੁਆਰਾ", explanation: "ਗੁਰ + ਦੁਆਰਾ = ਗੁਰਦੁਆਰਾ।"),
            ExerciseItem(prompt: "ਪਾਠ + ___", options: ["ਸ਼ਾਲਾ", "ਪੂਜਾ", "ਕਿਤਾਬ", "ਕਮਰਾ"], correctAnswer: "ਸ਼ਾਲਾ", explanation: "ਪਾਠ + ਸ਼ਾਲਾ = ਪਾਠਸ਼ਾਲਾ।"),
            ExerciseItem(prompt: "ਚਿੜੀਆ + ___", options: ["ਘਰ", "ਬਾਗ਼", "ਜੰਗਲ", "ਪਿੰਜਰਾ"], correctAnswer: "ਘਰ", explanation: "ਚਿੜੀਆ + ਘਰ = ਚਿੜੀਆਘਰ।"),
            ExerciseItem(prompt: "ਰਾਸ਼ਟਰ + ___", options: ["ਪਤੀ", "ਗੀਤ", "ਚਿੰਨ੍ਹ", "ਭਾਸ਼ਾ"], correctAnswer: "ਪਤੀ", explanation: "ਰਾਸ਼ਟਰ + ਪਤੀ = ਰਾਸ਼ਟਰਪਤੀ।"),
            ExerciseItem(prompt: "ਜਨਮ + ___", options: ["ਦਿਨ", "ਸਾਲ", "ਮਹੀਨਾ", "ਤਾਰੀਖ਼"], correctAnswer: "ਦਿਨ", explanation: "ਜਨਮ + ਦਿਨ = ਜਨਮਦਿਨ।"),
            ExerciseItem(prompt: "ਲੋਕ + ___", options: ["ਸਭਾ", "ਗੀਤ", "ਨਾਚ", "ਸੇਵਾ"], correctAnswer: "ਸਭਾ", explanation: "ਲੋਕ + ਸਭਾ = ਲੋਕ ਸਭਾ।"),
            ExerciseItem(prompt: "ਰਾਜ + ___", options: ["ਕੁਮਾਰ", "ਮਹਿਲ", "ਸਭਾ", "ਗੱਦੀ"], correctAnswer: "ਕੁਮਾਰ", explanation: "ਰਾਜ + ਕੁਮਾਰ = ਰਾਜਕੁਮਾਰ।"),
            ExerciseItem(prompt: "ਡਾਕ + ___", options: ["ਘਰ", "ਚਿੱਠੀ", "ਟਿਕਟ", "ਡਾਕੀਆ"], correctAnswer: "ਘਰ", explanation: "ਡਾਕ + ਘਰ = ਡਾਕਘਰ।"),
            ExerciseItem(prompt: "ਮੋਟਰ + ___", options: ["ਸਾਈਕਲ", "ਗੱਡੀ", "ਪਹੀਆ", "ਤੇਲ"], correctAnswer: "ਸਾਈਕਲ", explanation: "ਮੋਟਰ + ਸਾਈਕਲ = ਮੋਟਰਸਾਈਕਲ।"),
            ExerciseItem(prompt: "ਘੜੀ + ___", options: ["ਸਾਜ਼", "ਸਮਾਂ", "ਚਾਬੀ", "ਸੂਈ"], correctAnswer: "ਸਾਜ਼", explanation: "ਘੜੀ + ਸਾਜ਼ = ਘੜੀਸਾਜ਼।"),
            ExerciseItem(prompt: "ਲਾਭ + ___", options: ["ਦਾਇਕ", "ਹਾਨੀ", "ਸ਼ੁਭ", "ਯੋਗ"], correctAnswer: "ਦਾਇਕ", explanation: "ਲਾਭ + ਦਾਇਕ = ਲਾਭਦਾਇਕ।")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix (ਅਗੇਤਰ ਅਤੇ ਪਿਛੇਤਰ)
    private static let exercise5 = Exercise(
        title: "Prefix and Suffix",
        instructions: "Choose the correct prefix or suffix to complete the word.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਸ਼ਬਦ 'ਬੇਸਮਝ' ਵਿੱਚ ਕਿਹੜਾ ਅਗੇਤਰ ਵਰਤਿਆ ਗਿਆ ਹੈ?", options: ["ਬੇ-", "ਨਾ-", "ਅਣ-", "ਗ਼ੈਰ-"], correctAnswer: "ਬੇ-", explanation: "'ਬੇ-' ਅਗੇਤਰ ਦਾ ਅਰਥ ਹੈ 'ਬਿਨਾਂ', ਇਸ ਲਈ ਬੇਸਮਝ ਦਾ ਅਰਥ ਹੈ ਸਮਝ ਤੋਂ ਬਿਨਾਂ।"),
            ExerciseItem(prompt: "'ਸਮਝ' ਸ਼ਬਦ ਦੇ ਪਿੱਛੇ ਕਿਹੜਾ ਪਿਛੇਤਰ ਲਗਾ ਕੇ 'ਸਮਝਦਾਰ' ਬਣੇਗਾ?", options: ["-ਦਾਰ", "-ਵਾਨ", "-ਹੀਣ", "-ਕਾਰੀ"], correctAnswer: "-ਦਾਰ", explanation: "'ਸਮਝ' ਦੇ ਪਿੱਛੇ '-ਦਾਰ' ਲਗਾਉਣ ਨਾਲ ਸਮਝਦਾਰ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਅਣ' ਅਗੇਤਰ ਦੀ ਵਰਤੋਂ ਕਰਕੇ 'ਡਿੱਠਾ' ਤੋਂ ਕਿਹੜਾ ਸ਼ਬਦ ਬਣੇਗਾ?", options: ["ਅਣਡਿੱਠਾ", "ਬੇਡਿੱਠਾ", "ਨਾਡਿੱਠਾ", "ਕੁਡਿੱਠਾ"], correctAnswer: "ਅਣਡਿੱਠਾ", explanation: "'ਅਣ' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਅਣਡਿੱਠਾ ਬਣਦਾ ਹੈ, ਜਿਸਦਾ ਅਰਥ ਹੈ ਜੋ ਦੇਖਿਆ ਨਾ ਗਿਆ ਹੋਵੇ।"),
            ExerciseItem(prompt: "'ਗੁਣ' ਸ਼ਬਦ ਦੇ ਅੱਗੇ ਕਿਹੜਾ ਅਗੇਤਰ ਲਗਾ ਕੇ ਇਸਦਾ ਵਿਰੋਧੀ ਸ਼ਬਦ ਬਣੇਗਾ?", options: ["ਔ-", "ਬੇ-", "ਅਣ-", "ਕੁ-"], correctAnswer: "ਔ-", explanation: "'ਔ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ 'ਔਗੁਣ' ਬਣਦਾ ਹੈ, ਜੋ ਗੁਣ ਦਾ ਵਿਰੋਧੀ ਹੈ।"),
            ExerciseItem(prompt: "'ਵਾਨ' ਪਿਛੇਤਰ ਕਿਸ ਸ਼ਬਦ ਦੇ ਪਿੱਛੇ ਲੱਗ ਕੇ ਸਹੀ ਸ਼ਬਦ ਬਣਾਉਂਦਾ ਹੈ?", options: ["ਗੁਣ", "ਸੁੰਦਰ", "ਸਾਫ਼", "ਕਾਲਾ"], correctAnswer: "ਗੁਣ", explanation: "'ਗੁਣ' ਦੇ ਪਿੱਛੇ '-ਵਾਨ' ਲਗਾ ਕੇ 'ਗੁਣਵਾਨ' ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਸ਼ਬਦ 'ਨਾਮ' ਦੇ ਅੱਗੇ 'ਉਪ' ਲਗਾ ਕੇ ਕੀ ਬਣੇਗਾ?", options: ["ਉਪਨਾਮ", "ਬਦਨਾਮ", "ਅਣਨਾਮ", "ਨਾਮਵਰ"], correctAnswer: "ਉਪਨਾਮ", explanation: "'ਉਪ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਉਪਨਾਮ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਈ' ਪਿਛੇਤਰ ਲਗਾ ਕੇ 'ਪੰਜਾਬ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਪੰਜਾਬੀ", "ਪੰਜਾਬਨ", "ਪੰਜਾਬੜਾ", "ਪੰਜਾਬੋ"], correctAnswer: "ਪੰਜਾਬੀ", explanation: "'ਪੰਜਾਬ' ਦੇ ਪਿੱਛੇ 'ਈ' ਪਿਛੇਤਰ ਲਗਾਉਣ ਨਾਲ ਪੰਜਾਬੀ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਕੁ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਪੁੱਤਰ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਕੁਪੁੱਤਰ", "ਸਪੁੱਤਰ", "ਨਾਪੁੱਤਰ", "ਬੇਪੁੱਤਰ"], correctAnswer: "ਕੁਪੁੱਤਰ", explanation: "'ਕੁ-' ਅਗੇਤਰ ਦਾ ਅਰਥ ਬੁਰਾ ਹੁੰਦਾ ਹੈ, ਇਸ ਲਈ ਕੁਪੁੱਤਰ ਦਾ ਅਰਥ ਬੁਰਾ ਪੁੱਤਰ ਹੈ।"),
            ExerciseItem(prompt: "'ਸ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਜੀਵ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਸਜੀਵ", "ਨਿਰਜੀਵ", "ਬੇਜੀਵ", "ਅਣਜੀਵ"], correctAnswer: "ਸਜੀਵ", explanation: "'ਸ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਸਜੀਵ ਬਣਦਾ ਹੈ, ਜਿਸਦਾ ਅਰਥ ਹੈ ਜਾਨ ਵਾਲਾ।"),
            ExerciseItem(prompt: "'ਹੀਣ' ਪਿਛੇਤਰ ਲਗਾ ਕੇ 'ਬਲ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਬਲਹੀਣ", "ਬਲਵਾਨ", "ਨਿਰਬਲ", "ਬਲਹੀਨ"], correctAnswer: "ਬਲਹੀਣ", explanation: "'ਬਲ' ਦੇ ਪਿੱਛੇ '-ਹੀਣ' ਲਗਾਉਣ ਨਾਲ ਬਲਹੀਣ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਗ਼ੈਰ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਹਾਜ਼ਰ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਗ਼ੈਰਹਾਜ਼ਰ", "ਬੇਹਾਜ਼ਰ", "ਅਣਹਾਜ਼ਰ", "ਨਾਹਾਜ਼ਰ"], correctAnswer: "ਗ਼ੈਰਹਾਜ਼ਰ", explanation: "'ਗ਼ੈਰ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਗ਼ੈਰਹਾਜ਼ਰ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਕਾਰ' ਪਿਛੇਤਰ ਲਗਾ ਕੇ 'ਸਾਹਿਤ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਸਾਹਿਤਕਾਰ", "ਸਾਹਿਤਕ", "ਸਾਹਿਤਵਾਨ", "ਸਾਹਿਤਕਤਾ"], correctAnswer: "ਸਾਹਿਤਕਾਰ", explanation: "'ਸਾਹਿਤ' ਦੇ ਪਿੱਛੇ '-ਕਾਰ' ਲਗਾ ਕੇ ਸਾਹਿਤਕਾਰ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਨਿਰ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਦੋਸ਼' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਨਿਰਦੋਸ਼", "ਬੇਦੋਸ਼", "ਸਦੋਸ਼", "ਅਣਦੋਸ਼"], correctAnswer: "ਨਿਰਦੋਸ਼", explanation: "'ਨਿਰ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਨਿਰਦੋਸ਼ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਬਾ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਅਦਬ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਬਾਅਦਬ", "ਬੇਅਦਬ", "ਨਾਅਦਬ", "ਅਣਅਦਬ"], correctAnswer: "ਬਾਅਦਬ", explanation: "'ਬਾ-' ਦਾ ਅਰਥ ਹੈ 'ਨਾਲ', ਇਸ ਲਈ ਬਾਅਦਬ ਦਾ ਅਰਥ ਹੈ ਅਦਬ (ਸਤਿਕਾਰ) ਨਾਲ।"),
            ExerciseItem(prompt: "'ਸ਼ਾਲਾ' ਪਿਛੇਤਰ ਕਿਸ ਸ਼ਬਦ ਪਿੱਛੇ ਲੱਗੇਗਾ?", options: ["ਪਾਠ", "ਘਰ", "ਕਮਰਾ", "ਦਰਵਾਜ਼ਾ"], correctAnswer: "ਪਾਠ", explanation: "'ਪਾਠ' ਦੇ ਪਿੱਛੇ '-ਸ਼ਾਲਾ' ਲਗਾ ਕੇ ਪਾਠਸ਼ਾਲਾ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਕੁ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਸੰਗਤ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਕੁਸੰਗਤ", "ਸੁਸੰਗਤ", "ਬੇਸੰਗਤ", "ਅਣਸੰਗਤ"], correctAnswer: "ਕੁਸੰਗਤ", explanation: "'ਕੁ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਕੁਸੰਗਤ ਬਣਦਾ ਹੈ, ਜਿਸਦਾ ਅਰਥ ਬੁਰੀ ਸੰਗਤ ਹੈ।"),
            ExerciseItem(prompt: "'ਹੀਣ' ਪਿਛੇਤਰ ਲਗਾ ਕੇ 'ਬੁੱਧੀ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਬੁੱਧੀਹੀਣ", "ਬੁੱਧੀਵਾਨ", "ਬੁੱਧੀਮਾਨ", "ਬੁੱਧੀਸ਼ਾਲੀ"], correctAnswer: "ਬੁੱਧੀਹੀਣ", explanation: "'ਬੁੱਧੀ' ਦੇ ਪਿੱਛੇ '-ਹੀਣ' ਲਗਾਉਣ ਨਾਲ ਬੁੱਧੀਹੀਣ (ਬਿਨਾਂ ਬੁੱਧੀ ਦੇ) ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਸਾਫ਼' ਦੇ ਪਿੱਛੇ 'ਆਈ' ਲਗਾਉਣ ਨਾਲ ਕੀ ਬਣੇਗਾ?", options: ["ਸਫ਼ਾਈ", "ਸਾਫ਼ਵਾਨ", "ਸਾਫ਼ੀ", "ਸਾਫ਼ਤਾ"], correctAnswer: "ਸਫ਼ਾਈ", explanation: "'ਸਾਫ਼' ਦੇ ਪਿੱਛੇ 'ਆਈ' ਲਗਾਉਣ ਨਾਲ ਸਫ਼ਾਈ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਲਾ' ਅਗੇਤਰ ਲਗਾ ਕੇ 'ਪ੍ਰਵਾਹ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਲਾਪ੍ਰਵਾਹ", "ਬੇਪ੍ਰਵਾਹ", "ਅਣਪ੍ਰਵਾਹ", "ਨਾਪ੍ਰਵਾਹ"], correctAnswer: "ਲਾਪ੍ਰਵਾਹ", explanation: "'ਲਾ-' ਅਗੇਤਰ ਲਗਾਉਣ ਨਾਲ ਲਾਪ੍ਰਵਾਹ ਬਣਦਾ ਹੈ।"),
            ExerciseItem(prompt: "'ਮਾਨ' ਪਿਛੇਤਰ ਲਗਾ ਕੇ 'ਬੁੱਧੀ' ਤੋਂ ਕੀ ਬਣੇਗਾ?", options: ["ਬੁੱਧੀਮਾਨ", "ਬੁੱਧੀਵਾਨ", "ਬੁੱਧੀਹੀਣ", "ਬੁੱਧੀਦਾਰ"], correctAnswer: "ਬੁੱਧੀਮਾਨ", explanation: "'ਬੁੱਧੀ' ਦੇ ਪਿੱਛੇ '-ਮਾਨ' ਲਗਾ ਕੇ ਬੁੱਧੀਮਾਨ ਬਣਦਾ ਹੈ।")
        ]
    )

    // MARK: - Exercise 6: Story Recall (ਕਹਾਣੀ ਯਾਦ ਰੱਖਣੀ)
    private static let exercise6 = Exercise(
        title: "Story Recall",
        instructions: "Read the short story then answer the question about it.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਮਾਰੀਆ ਦੁੱਧ ਅਤੇ ਰੋਟੀ ਖਰੀਦਣ ਲਈ ਕਰਿਆਨੇ ਦੀ ਦੁਕਾਨ 'ਤੇ ਗਈ। ਉਹ ਰਸੋਈ ਦੇ ਕਾਊਂਟਰ 'ਤੇ ਆਪਣਾ ਬਟੂਆ ਭੁੱਲ ਗਈ। ਮਾਰੀਆ ਘਰ ਕੀ ਛੱਡ ਗਈ ਸੀ?", options: ["ਆਪਣਾ ਬਟੂਆ", "ਆਪਣੀਆਂ ਚਾਬੀਆਂ", "ਖਰੀਦਦਾਰੀ ਦੀ ਸੂਚੀ", "ਆਪਣਾ ਫ਼ੋਨ"], correctAnswer: "ਆਪਣਾ ਬਟੂਆ", explanation: "ਕਹਾਣੀ ਵਿੱਚ ਲਿਖਿਆ ਹੈ ਕਿ ਉਹ ਰਸੋਈ ਦੇ ਕਾਊਂਟਰ 'ਤੇ ਆਪਣਾ ਬਟੂਆ ਭੁੱਲ ਗਈ ਸੀ।"),
            ExerciseItem(prompt: "ਥਾਮਸ ਸ਼ਨੀਵਾਰ ਨੂੰ ਤੜਕੇ ਮੱਛੀ ਫੜਨ ਲਈ ਜਾਗਿਆ। ਉਸਨੇ ਇੱਕ ਵੱਡੀ ਟਰਾਊਟ ਮੱਛੀ ਫੜੀ ਪਰ ਉਸਨੂੰ ਵਾਪਸ ਸੁੱਟਣਾ ਪਿਆ ਕਿਉਂਕਿ ਉਹ ਬਹੁਤ ਛੋਟੀ ਸੀ। ਥਾਮਸ ਨੇ ਕਿਸ ਕਿਸਮ ਦੀ ਮੱਛੀ ਫੜੀ ਸੀ?", options: ["ਟਰਾਊਟ ਮੱਛੀ", "ਸੈਲਮਨ ਮੱਛੀ", "ਬਾਸ ਮੱਛੀ", "ਕੈਟਫਿਸ਼"], correctAnswer: "ਟਰਾਊਟ ਮੱਛੀ", explanation: "ਕਹਾਣੀ ਵਿੱਚ ਸਪੱਸ਼ਟ ਦੱਸਿਆ ਗਿਆ ਹੈ ਕਿ ਉਸਨੇ ਟਰਾਊਟ ਮੱਛੀ ਫੜੀ ਸੀ।"),
            ExerciseItem(prompt: "ਆਰਥਰ ਨੇ ਆਪਣੀ ਨੀਲੀ ਕਾਰ ਇੱਕ ਛਾਂਦਾਰ ਬੋਹੜ ਦੇ ਦਰੱਖਤ ਹੇਠਾਂ ਖੜ੍ਹੀ ਕੀਤੀ। ਜਦੋਂ ਉਹ ਵਾਪਸ ਆਇਆ, ਉਸਨੇ ਦੇਖਿਆ ਕਿ ਕਾਰ ਪੀਲੇ ਪੱਤਿਆਂ ਨਾਲ ਢੱਕੀ ਹੋਈ ਸੀ। ਆਰਥਰ ਦੀ ਕਾਰ ਦਾ ਰੰਗ ਕੀ ਹੈ?", options: ["ਨੀਲਾ", "ਪੀਲਾ", "ਲਾਲ", "ਹਰਾ"], correctAnswer: "ਨੀਲਾ", explanation: "ਕਹਾਣੀ ਮੁਤਾਬਕ ਆਰਥਰ ਨੇ ਆਪਣੀ 'ਨੀਲੀ ਕਾਰ' ਖੜ੍ਹੀ ਕੀਤੀ ਸੀ।"),
            ExerciseItem(prompt: "ਲਿੰਡਾ ਨੇ ਆਪਣੀ ਬੇਟੀ ਦੇ ਜਨਮਦਿਨ ਦੀ ਪਾਰਟੀ ਲਈ ਇੱਕ ਚਾਕਲੇਟ ਕੇਕ ਬਣਾਇਆ। ਉਸਨੇ ਕੇਕ 'ਤੇ ਦਸ ਲਾਲ ਮੋਮਬੱਤੀਆਂ ਲਗਾਈਆਂ। ਲਿੰਡਾ ਨੇ ਕੇਕ 'ਤੇ ਕਿੰਨੀਆਂ ਮੋਮਬੱਤੀਆਂ ਲਗਾਈਆਂ?", options: ["ਦਸ", "ਪੰਜ", "ਅੱਠ", "ਬਾਰਾਂ"], correctAnswer: "ਦਸ", explanation: "ਕਹਾਣੀ ਅਨੁਸਾਰ ਉਸਨੇ ਕੇਕ 'ਤੇ ਦਸ ਲਾਲ ਮੋਮਬੱਤੀਆਂ ਲਗਾਈਆਂ ਸਨ।"),
            ExerciseItem(prompt: "ਰੌਬਰਟ ਸ਼ਿਕਾਗੋ ਵਿੱਚ ਆਪਣੇ ਭਰਾ ਨੂੰ ਇੱਕ ਪਾਰਸਲ ਭੇਜਣ ਲਈ ਡਾਕਖਾਨੇ ਗਿਆ। ਕਲਰਕ ਨੇ ਉਸਨੂੰ ਦੱਸਿਆ ਕਿ ਇਹ ਮੰਗਲਵਾਰ ਨੂੰ ਪਹੁੰਚੇਗਾ। ਰੌਬਰਟ ਦਾ ਭਰਾ ਕਿੱਥੇ ਰਹਿੰਦਾ ਹੈ?", options: ["ਸ਼ਿਕਾਗੋ", "ਨਿਊਯਾਰਕ", "ਬੋਸਟਨ", "ਮਿਆਮੀ"], correctAnswer: "ਸ਼ਿਕਾਗੋ", explanation: "ਕਹਾਣੀ ਮੁਤਾਬਕ ਉਸਨੇ ਸ਼ਿਕਾਗੋ ਵਿੱਚ ਰਹਿੰਦੇ ਆਪਣੇ ਭਰਾ ਨੂੰ ਪਾਰਸਲ ਭੇਜਿਆ ਸੀ।"),
            ExerciseItem(prompt: "ਸਾਰਾਹ ਨੇ ਕੱਲ੍ਹ ਦੌੜਨ ਵਾਲੇ ਨਵੇਂ ਜੁੱਤੇ ਖਰੀਦੇ ਸਨ। ਉਹ ਚਿੱਟੀਆਂ ਪੱਟੀਆਂ ਵਾਲੇ ਚਮਕਦਾਰ ਹਰੇ ਰੰਗ ਦੇ ਹਨ। ਸਾਰਾਹ ਦੇ ਨਵੇਂ ਜੁੱਤੇ ਕਿਸ ਰੰਗ ਦੇ ਹਨ?", options: ["ਚਮਕਦਾਰ ਹਰਾ", "ਨੀਲਾ", "ਲਾਲ", "ਕਾਲਾ"], correctAnswer: "ਚਮਕਦਾਰ ਹਰਾ", explanation: "ਕਹਾਣੀ ਵਿੱਚ ਲਿਖਿਆ ਹੈ ਕਿ ਜੁੱਤੇ ਚਿੱਟੀਆਂ ਪੱਟੀਆਂ ਵਾਲੇ ਚਮਕਦਾਰ ਹਰੇ ਰੰਗ ਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਜੇਮਜ਼ ਪਾਰਕ ਵਿੱਚ ਘੁੰਮ ਰਿਹਾ ਸੀ ਜਦੋਂ ਮੀਂਹ ਪੈਣਾ ਸ਼ੁਰੂ ਹੋ ਗਿਆ। ਸੁੱਕੇ ਰਹਿਣ ਲਈ ਉਸਨੇ ਆਪਣੀ ਪੀਲੀ ਛਤਰੀ ਖੋਲ੍ਹ ਲਈ। ਜੇਮਜ਼ ਨੇ ਕਿਸ ਰੰਗ ਦੀ ਛਤਰੀ ਦੀ ਵਰਤੋਂ ਕੀਤੀ?", options: ["ਪੀਲੀ", "ਲਾਲ", "ਨੀਲੀ", "ਕਾਲੀ"], correctAnswer: "ਪੀਲੀ", explanation: "ਕਹਾਣੀ ਵਿੱਚ ਦੱਸਿਆ ਗਿਆ ਹੈ ਕਿ ਉਸਨੇ ਆਪਣੀ ਪੀਲੀ ਛਤਰੀ ਖੋਲ੍ਹੀ ਸੀ।"),
            ExerciseItem(prompt: "ਸਥਾਨਕ ਬੇਕਰੀ ਮੁਰੰਮਤ ਲਈ ਸੋਮਵਾਰ ਨੂੰ ਬੰਦ ਸੀ। ਉਨ੍ਹਾਂ ਨੇ ਮੰਗਲਵਾਰ ਸਵੇਰੇ ਛੇ ਵਜੇ ਦੁਬਾਰਾ ਖੋਲ੍ਹਣ ਦੀ ਯੋਜਨਾ ਬਣਾਈ ਸੀ। ਬੇਕਰੀ ਕਿਸ ਦਿਨ ਬੰਦ ਸੀ?", options: ["ਸੋਮਵਾਰ", "ਮੰਗਲਵਾਰ", "ਬੁੱਧਵਾਰ", "ਐਤਵਾਰ"], correctAnswer: "ਸੋਮਵਾਰ", explanation: "ਕਹਾਣੀ ਮੁਤਾਬਕ ਬੇਕਰੀ ਸੋਮਵਾਰ ਨੂੰ ਬੰਦ ਸੀ।"),
            ExerciseItem(prompt: "ਐਨਾ ਨੇ ਪਲੰਬਰ ਨੂੰ ਬੁਲਾਇਆ ਕਿਉਂਕਿ ਉਸਦੀ ਰਸੋਈ ਦੀ ਸਿੰਕ ਲੀਕ ਹੋ ਰਹੀ ਸੀ। ਪਲੰਬਰ ਇੱਕ ਘੰਟੇ ਵਿੱਚ ਪਹੁੰਚਿਆ ਅਤੇ ਪਾਈਪ ਠੀਕ ਕਰ ਦਿੱਤੀ। ਐਨਾ ਨੇ ਪਲੰਬਰ ਨੂੰ ਕਿਉਂ ਬੁਲਾਇਆ ਸੀ?", options: ["ਉਸਦੀ ਸਿੰਕ ਲੀਕ ਹੋ ਰਹੀ ਸੀ", "ਉਸਦਾ ਚੁੱਲ੍ਹਾ ਟੁੱਟ ਗਿਆ ਸੀ", "ਲਾਈਟ ਬੰਦ ਸੀ", "ਦਰਵਾਜ਼ਾ ਬੰਦ ਸੀ"], correctAnswer: "ਉਸਦੀ ਸਿੰਕ ਲੀਕ ਹੋ ਰਹੀ ਸੀ", explanation: "ਕਹਾਣੀ ਵਿੱਚ ਦੱਸਿਆ ਗਿਆ ਹੈ ਕਿ ਉਸਦੀ ਰਸੋਈ ਦੀ ਸਿੰਕ ਲੀਕ ਹੋਣ ਕਾਰਨ ਉਸਨੇ ਪਲੰਬਰ ਬੁਲਾਇਆ ਸੀ।"),
            ExerciseItem(prompt: "ਡੇਵਿਡ ਆਪਣੇ ਕੁੱਤੇ, ਮੈਕਸ, ਨੂੰ ਗਲੀ ਵਿੱਚ ਘੁੰਮਾ ਰਿਹਾ ਸੀ। ਮੈਕਸ ਨੇ ਇੱਕ ਗਿਲਹਰੀ ਦੇਖੀ ਅਤੇ ਉਸ 'ਤੇ ਉੱਚੀ-ਉੱਚੀ ਭੌਂਕਿਆ। ਡੇਵਿਡ ਦੇ ਕੁੱਤੇ ਦਾ ਕੀ ਨਾਮ ਹੈ?", options: ["ਮੈਕਸ", "ਬੱਡੀ", "ਚਾਰਲੀ", "ਰੌਕੀ"], correctAnswer: "ਮੈਕਸ", explanation: "ਕਹਾਣੀ ਮੁਤਾਬਕ ਡੇਵਿਡ ਦੇ ਕੁੱਤੇ ਦਾ ਨਾਮ ਮੈਕਸ ਹੈ।"),
            ExerciseItem(prompt: "ਹੈਲਨ ਰਾਤ ਦੇ ਖਾਣੇ ਲਈ ਸਬਜ਼ੀਆਂ ਦਾ ਸੂਪ ਬਣਾ ਰਹੀ ਸੀ। ਉਸਨੂੰ ਅਹਿਸਾਸ ਹੋਇਆ ਕਿ ਗਾਜਰਾਂ ਖ਼ਤਮ ਹੋ ਗਈਆਂ ਹਨ, ਇਸ ਲਈ ਉਸਨੇ ਆਲੂਆਂ ਦੀ ਵਰਤੋਂ ਕੀਤੀ। ਹੈਲਨ ਕੋਲ ਕਿਹੜੀ ਚੀਜ਼ ਖ਼ਤਮ ਹੋ ਗਈ ਸੀ?", options: ["ਗਾਜਰਾਂ", "ਆਲੂ", "ਪਿਆਜ਼", "ਸੈਲਰੀ"], correctAnswer: "ਗਾਜਰਾਂ", explanation: "ਕਹਾਣੀ ਵਿੱਚ ਲਿਖਿਆ ਹੈ ਕਿ ਗਾਜਰਾਂ ਖ਼ਤਮ ਹੋਣ ਕਰਕੇ ਉਸਨੇ ਆਲੂਆਂ ਦੀ ਵਰਤੋਂ ਕੀਤੀ ਸੀ।"),
            ExerciseItem(prompt: "ਪੀਟਰ ਨੇ ਦੁਪਹਿਰ ਦੇ ਖਾਣੇ ਲਈ ਇੱਕ ਪੇਪਰੋਨੀ ਪੀਜ਼ਾ ਅਤੇ ਸੋਡੇ ਦੀ ਬੋਤਲ ਦਾ ਆਰਡਰ ਦਿੱਤਾ। ਕੁੱਲ ਕੀਮਤ ਪੰਦਰਾਂ ਡਾਲਰ ਸੀ। ਪੀਟਰ ਦੇ ਦੁਪਹਿਰ ਦੇ ਖਾਣੇ 'ਤੇ ਕਿੰਨੇ ਪੈਸੇ ਖਰਚ ਹੋਏ?", options: ["ਪੰਦਰਾਂ ਡਾਲਰ", "ਦਸ ਡਾਲਰ", "ਵੀਹ ਡਾਲਰ", "ਬਾਰਾਂ ਡਾਲਰ"], correctAnswer: "ਪੰਦਰਾਂ ਡਾਲਰ", explanation: "ਕਹਾਣੀ ਅਨੁਸਾਰ ਕੁੱਲ ਖਰਚਾ ਪੰਦਰਾਂ ਡਾਲਰ ਸੀ।"),
            ExerciseItem(prompt: "ਐਲਿਸ ਬਾਗਬਾਨੀ ਬਾਰੇ ਇੱਕ ਕਿਤਾਬ ਉਧਾਰ ਲੈਣ ਲਈ ਲਾਇਬ੍ਰੇਰੀ ਗਈ ਸੀ। ਉਸਨੇ ਇਤਿਹਾਸ ਬਾਰੇ ਇੱਕ ਡੀਵੀਡੀ ਵੀ ਉਧਾਰ ਲਈ। ਐਲਿਸ ਦੁਆਰਾ ਉਧਾਰ ਲਈ ਗਈ ਕਿਤਾਬ ਕਿਸ ਵਿਸ਼ੇ ਬਾਰੇ ਸੀ?", options: ["ਬਾਗਬਾਨੀ", "ਇਤਿਹਾਸ", "ਖਾਣਾ ਪਕਾਉਣਾ", "ਯਾਤਰਾ"], correctAnswer: "ਬਾਗਬਾਨੀ", explanation: "ਕਹਾਣੀ ਅਨੁਸਾਰ ਉਸਨੇ ਬਾਗਬਾਨੀ ਬਾਰੇ ਕਿਤਾਬ ਉਧਾਰ ਲਈ ਸੀ।"),
            ExerciseItem(prompt: "ਜਾਰਜ ਨੌਕਰੀ ਦੇ ਇੰਟਰਵਿਊ ਲਈ ਸਵੇਰ ਦੀ ਰੇਲਗੱਡੀ ਰਾਹੀਂ ਸ਼ਹਿਰ ਗਿਆ ਸੀ। ਪਟੜੀ ਦੀ ਮੁਰੰਮਤ ਕਾਰਨ ਉਸਦੀ ਰੇਲਗੱਡੀ ਪੰਦਰਾਂ ਮਿੰਟ ਲੇਟ ਹੋ ਗਈ ਸੀ। ਰੇਲਗੱਡੀ ਲੇਟ ਕਿਉਂ ਹੋਈ ਸੀ?", options: ["ਪਟੜੀ ਦੀ ਮੁਰੰਮਤ ਕਾਰਨ", "ਤੇਜ਼ ਤੂਫ਼ਾਨ ਕਾਰਨ", "ਬਿਜਲੀ ਜਾਣ ਕਾਰਨ", "ਅਮਲੇ ਦੀ ਕਮੀ ਕਾਰਨ"], correctAnswer: "ਪਟੜੀ ਦੀ ਮੁਰੰਮਤ ਕਾਰਨ", explanation: "ਕਹਾਣੀ ਅਨੁਸਾਰ ਪਟੜੀ ਦੀ ਮੁਰੰਮਤ ਕਾਰਨ ਰੇਲਗੱਡੀ ਵਿੱਚ ਦੇਰੀ ਹੋਈ ਸੀ।"),
            ExerciseItem(prompt: "ਨੈਂਸੀ ਲਾਲ ਗੁਲਾਬ ਖਰੀਦਣ ਲਈ ਨਰਸਰੀ ਗਈ। ਉਹ ਖ਼ਤਮ ਹੋ ਚੁੱਕੇ ਸਨ, ਇਸ ਲਈ ਉਸਨੇ ਗੁਲਾਬੀ ਕਾਰਨੇਸ਼ਨ ਖਰੀਦੇ। ਨੈਂਸੀ ਨੇ ਆਖਰਕਾਰ ਕਿਹੜਾ ਫੁੱਲ ਖਰੀਦਿਆ?", options: ["ਗੁਲਾਬੀ ਕਾਰਨੇਸ਼ਨ", "ਲਾਲ ਗੁਲਾਬ", "ਪੀਲੇ ਟਿਊਲਿਪ", "ਚਿੱਟੇ ਲਿਲੀ"], correctAnswer: "ਗੁਲਾਬੀ ਕਾਰਨੇਸ਼ਨ", explanation: "ਕਹਾਣੀ ਅਨੁਸਾਰ ਨੈਂਸੀ ਨੇ ਗੁਲਾਬੀ ਕਾਰਨੇਸ਼ਨ ਦੇ ਫੁੱਲ ਖਰੀਦੇ ਸਨ।")
        ]
    )

    // MARK: - Exercise 7: Number Sequences (ਸੰਖਿਆ ਲੜੀ)
    private static let exercise7 = Exercise(
        title: "Number Sequences",
        instructions: "What number comes next in the sequence?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "ਹਰ ਵਾਰ 2 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "ਹਰ ਵਾਰ 5 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "ਹਰ ਵਾਰ 10 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "ਹਰ ਵਾਰ 3 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "ਹਰ ਵਾਰ 1 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "ਹਰ ਵਾਰ 2 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "ਟਾਂਕ ਸੰਖਿਆਵਾਂ ਦੀ ਲੜੀ 2 ਦੇ ਵਾਧੇ ਨਾਲ ਚੱਲ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "ਹਰ ਵਾਰ 4 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "ਹਰ ਵਾਰ 5 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "ਹਰ ਵਾਰ 10 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "ਹਰ ਵਾਰ 11 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "ਹਰ ਵਾਰ 2 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "ਹਰ ਵਾਰ 3 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "ਹਰ ਵਾਰ 3 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "ਹਰ ਵਾਰ 7 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "ਹਰ ਵਾਰ 4 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "ਹਰ ਵਾਰ 6 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "ਹਰ ਵਾਰ 5 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "ਹਰ ਵਾਰ 10 ਘਟਾ ਕੇ ਲੜੀ ਘੱਟ ਰਹੀ ਹੈ।"),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "ਹਰ ਵਾਰ 2 ਜੋੜ ਕੇ ਲੜੀ ਅੱਗੇ ਵੱਧ ਰਹੀ ਹੈ।")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect (ਕਾਰਨ ਅਤੇ ਪ੍ਰਭਾਵ)
    private static let exercise8 = Exercise(
        title: "Cause and Effect",
        instructions: "Choose the most likely result of the situation described.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਤੁਸੀਂ ਗਰਮ ਦਿਨ 'ਤੇ ਰਸੋਈ ਦੇ ਕਾਊਂਟਰ 'ਤੇ ਦੋ ਘੰਟਿਆਂ ਲਈ ਆਈਸਕ੍ਰੀਮ ਛੱਡ ਦਿੰਦੇ ਹੋ। ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਇਹ ਸਖ਼ਤ ਹੋ ਜਾਂਦੀ ਹੈ", "ਇਹ ਪਿਘਲ ਜਾਂਦੀ ਹੈ", "ਇਹ ਰੰਗ ਬਦਲਦੀ ਹੈ", "ਇਹ ਗਾਇਬ ਹੋ ਜਾਂਦੀ ਹੈ"], correctAnswer: "ਇਹ ਪਿਘਲ ਜਾਂਦੀ ਹੈ", explanation: "ਗਰਮੀ ਕਾਰਨ ਜੰਮੀ ਹੋਈ ਆਈਸਕ੍ਰੀਮ ਪਿਘਲ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਤਿੰਨ ਹਫ਼ਤਿਆਂ ਲਈ ਆਪਣੇ ਘਰ ਦੇ ਪੌਦੇ ਨੂੰ ਪਾਣੀ ਦੇਣਾ ਭੁੱਲ ਜਾਂਦੇ ਹੋ। ਸਭ ਤੋਂ ਸੰਭਾਵਿਤ ਨਤੀਜਾ ਕੀ ਹੈ?", options: ["ਇਹ ਫੁੱਲ ਪੈਦਾ ਕਰਦਾ ਹੈ", "ਇਹ ਹਰਾ ਰਹਿੰਦਾ ਹੈ", "ਇਹ ਮੁਰਝਾ ਕੇ ਸੁੱਕ ਜਾਂਦਾ ਹੈ", "ਇਹ ਨੀਲਾ ਹੋ ਜਾਂਦਾ ਹੈ"], correctAnswer: "ਇਹ ਮੁਰਝਾ ਕੇ ਸੁੱਕ ਜਾਂਦਾ ਹੈ", explanation: "ਪੌਦਿਆਂ ਨੂੰ ਜਿਊਂਦੇ ਰਹਿਣ ਲਈ ਪਾਣੀ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ, ਬਿਨਾਂ ਪਾਣੀ ਦੇ ਉਹ ਸੁੱਕ ਜਾਂਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਇੱਕ ਕਾਲਾ ਬੱਦਲ ਸੂਰਜ ਨੂੰ ਰੋਕਦਾ ਹੈ ਅਤੇ ਬੱਦਲ ਗਰਜਦੇ ਹਨ। ਅੱਗੇ ਕੀ ਹੋਣ ਦੀ ਸੰਭਾਵਨਾ ਹੈ?", options: ["ਮੀਂਹ ਪਵੇਗਾ", "ਗਰਮੀ ਵਧੇਗੀ", "ਤੁਰੰਤ ਬਰਫ਼ ਪਵੇਗੀ", "ਤਾਰੇ ਬਾਹਰ ਆ ਜਾਣਗੇ"], correctAnswer: "ਮੀਂਹ ਪਵੇਗਾ", explanation: "ਕਾਲੇ ਬੱਦਲ ਅਤੇ ਗਰਜ ਆਉਣ ਵਾਲੇ ਮੀਂਹ ਦੇ ਸੰਕੇਤ ਹਨ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਕੱਚ ਦੀ ਕੌਲੀ ਨੂੰ ਪੱਕੇ ਫਰਸ਼ 'ਤੇ ਸੁੱਟ ਦਿੰਦੇ ਹੋ। ਸਭ ਤੋਂ ਸੰਭਾਵਿਤ ਨਤੀਜਾ ਕੀ ਹੈ?", options: ["ਇਹ ਵਾਪਸ ਉੱਛਲਦੀ ਹੈ", "ਇਹ ਰੰਗ ਬਦਲਦੀ ਹੈ", "ਇਹ ਟੁਕੜੇ-ਟੁਕੜੇ ਹੋ ਜਾਂਦੀ ਹੈ", "ਇਹ ਪਾਣੀ ਬਣ ਜਾਂਦੀ ਹੈ"], correctAnswer: "ਇਹ ਟੁਕੜੇ-ਟੁਕੜੇ ਹੋ ਜਾਂਦੀ ਹੈ", explanation: "ਕੱਚ ਨਾਜ਼ੁਕ ਹੁੰਦਾ ਹੈ ਅਤੇ ਸਖ਼ਤ ਸਤਹ 'ਤੇ ਡਿੱਗਣ ਨਾਲ ਟੁੱਟ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਟੋਸਟਰ ਵਿੱਚ ਰੋਟੀ ਦਾ ਇੱਕ ਟੁਕੜਾ ਪਾਉਂਦੇ ਹੋ ਅਤੇ ਇਸਨੂੰ ਸਭ ਤੋਂ ਉੱਚੀ ਸੈਟਿੰਗ 'ਤੇ ਛੱਡ ਦਿੰਦੇ ਹੋ। ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਇਹ ਸਿੱਲ੍ਹਾ ਹੋ ਜਾਂਦਾ ਹੈ", "ਇਹ ਸੜ ਕੇ ਕਾਲਾ ਹੋ ਜਾਂਦਾ ਹੈ", "ਇਹ ਨਰਮ ਅਤੇ ਚਿੱਟਾ ਰਹਿੰਦਾ ਹੈ", "ਇਹ ਗਾਇਬ ਹੋ ਜਾਂਦਾ ਹੈ"], correctAnswer: "ਇਹ ਸੜ ਕੇ ਕਾਲਾ ਹੋ ਜਾਂਦਾ ਹੈ", explanation: "ਟੋਸਟਰ ਵਿੱਚ ਜ਼ਿਆਦਾ ਗਰਮੀ ਨਾਲ ਰੋਟੀ ਸੜ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਰਾਤ ਭਰ ਕਾਰ ਦੀਆਂ ਹੈੱਡਲਾਈਟਾਂ ਚਾਲੂ ਰੱਖਦੇ ਹੋ। ਸਵੇਰੇ ਕੀ ਹੋਵੇਗਾ?", options: ["ਕਾਰ ਤੇਜ਼ ਚੱਲੇਗੀ", "ਬੈਟਰੀ ਖ਼ਤਮ (ਡੈੱਡ) ਹੋ ਜਾਵੇਗੀ", "ਕਾਰ ਰੰਗ ਬਦਲ ਦੇਵੇਗੀ", "ਇੰਜਣ ਤੁਰੰਤ ਚਾਲੂ ਹੋ ਜਾਵੇਗਾ"], correctAnswer: "ਬੈਟਰੀ ਖ਼ਤਮ (ਡੈੱਡ) ਹੋ ਜਾਵੇਗੀ", explanation: "ਲਾਈਟਾਂ ਚਾਲੂ ਰੱਖਣ ਨਾਲ ਬੈਟਰੀ ਦੀ ਸਾਰੀ ਪਾਵਰ ਖ਼ਤਮ ਹੋ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਰਾਤ ਭਰ ਭਾਰੀ ਬਰਫ਼ਬਾਰੀ ਹੁੰਦੀ ਹੈ, ਜਿਸ ਨਾਲ ਛੇ ਇੰਚ ਬਰਫ਼ ਜਮ੍ਹਾਂ ਹੋ ਜਾਂਦੀ ਹੈ। ਸੜਕਾਂ ਦਾ ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਉਹ ਸੁੱਕੀਆਂ ਰਹਿੰਦੀਆਂ ਹਨ", "ਉਹ ਤਿਲਕਣ ਵਾਲੀਆਂ ਅਤੇ ਬਰਫ਼ ਨਾਲ ਢੱਕੀਆਂ ਹੋ ਜਾਂਦੀਆਂ ਹਨ", "ਉह ਹਰੀਆਂ ਹੋ ਜਾਂਦੀਆਂ ਹਨ", "ਉਹ ਉੱਡ ਜਾਂਦੀਆਂ ਹਨ"], correctAnswer: "ਉਹ ਤਿਲਕਣ ਵਾਲੀਆਂ ਅਤੇ ਬਰਫ਼ ਨਾਲ ਢੱਕੀਆਂ ਹੋ ਜਾਂਦੀਆਂ ਹਨ", explanation: "ਬਰਫ਼ਬਾਰੀ ਕਾਰਨ ਸੜਕਾਂ 'ਤੇ ਬਰਫ਼ ਜਮ੍ਹਾਂ ਹੋ ਜਾਂ ਹੋ ਜਾਂਦੀ ਹੈ ਜਿਸ ਨਾਲ ਤਿਲਕਣ ਵੱਧ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਪਾਣੀ ਨਾਲ ਭਰੀ ਟ੍ਰੇਅ ਨੂੰ ਫ੍ਰੀਜ਼ਰ ਵਿੱਚ ਰੱਖਦੇ ਹੋ। ਕੁਝ ਘੰਟਿਆਂ ਬਾਅਦ ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਪਾਣੀ ਉਬਲਦਾ ਹੈ", "ਪਾਣੀ ਬਰਫ਼ ਬਣ ਜਾਂਦਾ ਹੈ", "ਪਾਣੀ ਉੱਡ ਜਾਂਦਾ ਹੈ", "ਪਾਣੀ ਰੰਗ ਬਦਲਦਾ ਹੈ"], correctAnswer: "ਪਾਣੀ ਬਰਫ਼ ਬਣ ਜਾਂਦਾ ਹੈ", explanation: "ਬਹੁਤ ਘੱਟ ਤਾਪਮਾਨ ਤਰਲ ਪਾਣੀ ਨੂੰ ਠੋਸ ਬਰਫ਼ ਵਿੱਚ ਬਦਲ ਦਿੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਗਰਮੀਆਂ ਦੇ ਦਿਨ ਉੱਨ ਦੀਆਂ ਮੋਟੀਆਂ ਜੁਰਾਬਾਂ ਅਤੇ ਭਾਰੀ ਬੂਟ ਪਾਉਂਦੇ ਹੋ। ਤੁਹਾਡੇ ਪੈਰਾਂ ਦਾ ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਉਹ ਠੰਢੇ ਮਹਿਸੂਸ ਕਰਦੇ ਹਨ", "ਉਹ ਸੁੱਕੇ ਰਹਿੰਦੇ ਹਨ", "ਉਹ ਗਰਮ ਹੋ ਕੇ ਮੁੜ੍ਹਕੇ ਨਾਲ ਭਿੱਜ ਜਾਂਦੇ ਹਨ", "ਉਹ ਨੀਲੇ ਹੋ ਜਾਂਦੇ ਹਨ"], correctAnswer: "ਉਹ ਗਰਮ ਹੋ ਕੇ ਮੁੜ੍ਹਕੇ ਨਾਲ ਭਿੱਜ ਜਾਂਦੇ ਹਨ", explanation: "ਮੋਟੀਆਂ ਪਰਤਾਂ ਗਰਮੀ ਨੂੰ ਰੋਕਦੀਆਂ ਹਨ, ਜਿਸ ਕਾਰਨ ਗਰਮ ਮੌਸਮ ਵਿੱਚ ਪਸੀਨਾ ਆਉਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਇੱਕ ਵਿਅਕਤੀ ਲਗਾਤਾਰ 24 ਘੰਟੇ ਨਹੀਂ ਸੌਂਦਾ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰੇਗਾ?", options: ["ਬਹੁਤ ਚੁਸਤ", "ਥੱਕਿਆ ਅਤੇ ਨੀਂਦ ਨਾਲ ਭਰਿਆ", "ਭੁੱਖਾ", "ਬਹੁਤ ਖੁਸ਼"], correctAnswer: "ਥੱਕਿਆ ਅਤੇ ਨੀਂਦ ਨਾਲ ਭਰਿਆ", explanation: "ਨੀਂਦ ਦੀ ਕਮੀ ਕਾਰਨ ਥਕਾਵਟ ਅਤੇ ਸੁਸਤੀ ਆਉਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਗਰਮ ਚਾਹ ਦੇ ਕੱਪ ਵਿੱਚ ਖੰਡ ਪਾ ਕੇ ਇਸਨੂੰ ਹਿਲਾਉਂਦੇ ਹੋ। ਖੰਡ ਦਾ ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਇਹ ਬਰਫ਼ ਬਣ ਜਾਂਦੀ ਹੈ", "ਇਹ ਕੱਪ ਵਿੱਚੋਂ ਗਾਇਬ ਹੋ ਜਾਂਦੀ ਹੈ", "ਇਹ ਚਾਹ ਵਿੱਚ ਘੁਲ ਜਾਂਦੀ ਹੈ", "ਇਹ ਸੜ ਜਾਂਦੀ ਹੈ"], correctAnswer: "ਇਹ ਚਾਹ ਵਿੱਚ ਘੁਲ ਜਾਂਦੀ ਹੈ", explanation: "ਗਰਮ ਤਰਲ ਵਿੱਚ ਖੰਡ ਹਿਲਾਉਣ ਨਾਲ ਉਹ ਪੂਰੀ ਤਰ੍ਹਾਂ ਘੁਲ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਬਿਨਾਂ ਛਤਰੀ ਜਾਂ ਰੇਨਕੋਟ ਦੇ ਤੇਜ਼ ਮੀਂਹ ਵਿੱਚ ਬਾਹਰ ਜਾਂਦੇ ਹੋ। ਕੀ ਨਤੀਜਾ ਨਿਕਲਦਾ ਹੈ?", options: ["ਤੁਸੀਂ ਸੁੱਕੇ ਰਹਿੰਦੇ ਹੋ", "ਤੁਹਾਡੇ ਕੱਪੜੇ ਗਿੱਲੇ ਹੋ ਜਾਂਦੇ ਹਨ", "ਤੁਸੀਂ ਨੀਲੇ ਹੋ ਜਾਂਦੇ ਹੋ", "ਤੁਹਾਨੂੰ ਗਰਮੀ ਲੱਗਦੀ ਹੈ"], correctAnswer: "ਤੁਹਾਡੇ ਕੱਪੜੇ ਗਿੱਲੇ ਹੋ ਜਾਂਦੇ ਹਨ", explanation: "ਮੀਂਹ ਦਾ ਪਾਣੀ ਸਿੱਧਾ ਤੁਹਾਡੇ 'ਤੇ ਪੈਣ ਨਾਲ ਕੱਪੜੇ ਗਿੱਲੇ ਹੋ ਜਾਂਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਇੱਕ ਗੁਬਾਰੇ ਵਿੱਚ ਹਵਾ ਭਰਦੇ ਹੋ ਜਦੋਂ ਤੱਕ ਉਹ ਬਹੁਤ ਜ਼ਿਆਦਾ ਭਰ ਨਹੀਂ ਜਾਂਦਾ। ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਇਹ ਚੰਦ 'ਤੇ ਚਲਾ ਜਾਂਦਾ ਹੈ", "ਇਹ ਫਟ ਜਾਂਦਾ ਹੈ", "ਇਹ ਚਿੜੀ ਬਣ ਜਾਂਦਾ ਹੈ", "ਇਹ ਸੁੰਗੜ ਜਾਂਦਾ ਹੈ"], correctAnswer: "ਇਹ ਫਟ ਜਾਂਦਾ ਹੈ", explanation: "ਗੁਬਾਰੇ ਦੀ ਸਮਰੱਥਾ ਤੋਂ ਵੱਧ ਹਵਾ ਦਾ ਦਬਾਅ ਉਸਨੂੰ ਫਾੜ ਦਿੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਰਾਤ ਨੂੰ ਬਿਨਾਂ ਖਿੜਕੀਆਂ ਵਾਲੇ ਕਮਰੇ ਦੀਆਂ ਸਾਰੀਆਂ ਲਾਈਟਾਂ ਬੰਦ ਕਰ ਦਿੰਦੇ ਹੋ। ਕੀ ਹੁੰਦਾ ਹੈ?", options: ["ਕਮਰੇ ਵਿੱਚ ਰੌਸ਼ਨੀ ਹੋ ਜਾਂਦੀ ਹੈ", "ਕਮਰੇ ਵਿੱਚ ਪੂਰਾ ਹਨੇਰਾ ਹੋ ਜਾਂਦਾ ਹੈ", "ਕਮਰਾ ਹਰਾ ਹੋ ਜਾਂਦਾ ਹੈ", "ਕਮਰਾ ਪ੍ਰਕਾਸ਼ ਨਾਲ ਭਰ ਜਾਂਦਾ ਹੈ"], correctAnswer: "ਕਮਰੇ ਵਿੱਚ ਪੂਰਾ ਹਨੇਰਾ ਹੋ ਜਾਂਦਾ ਹੈ", explanation: "ਰੌਸ਼ਨੀ ਦਾ ਕੋਈ ਸਰੋਤ ਨਾ ਹੋਣ ਕਾਰਨ ਪੂਰਾ ਹਨੇਰਾ ਹੋ ਜਾਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਇੱਕ ਮੁਸ਼ਕਲ ਪ੍ਰੀਖਿਆ ਲਈ ਪੜ੍ਹਾਈ ਜਾਂ ਤਿਆਰੀ ਨਹੀਂ ਕਰਦੇ। ਸਭ ਤੋਂ ਸੰਭਾਵਿਤ ਨਤੀਜਾ ਕੀ ਹੈ?", options: ["ਤੁਸੀਂ ਪੂਰੇ ਨੰਬਰ ਲੈਂਦੇ ਹੋ", "ਤੁਹਾਡਾ ਪ੍ਰਦਰਸ਼ਨ ਖ਼ਰਾਬ ਰਹਿੰਦਾ ਹੈ", "ਤੁਸੀਂ ਆਪਣਾ ਨਾਮ ਭੁੱਲ ਜਾਂਦੇ ਹੋ", "ਪ੍ਰੀਖਿਆ ਰੱਦ ਹੋ ਜਾਂਦੀ ਹੈ"], correctAnswer: "ਤੁਹਾਡਾ ਪ੍ਰਦਰਸ਼ਨ ਖ਼ਰਾਬ ਰਹਿੰਦਾ ਹੈ", explanation: "ਤਿਆਰੀ ਦੀ ਕਮੀ ਕਾਰਨ ਪ੍ਰੀਖਿਆ ਵਿੱਚ ਚੰਗਾ ਪ੍ਰਦਰਸ਼ਨ ਕਰਨਾ ਮੁਸ਼ਕਲ ਹੁੰਦਾ ਹੈ।")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This? (ਇਹ ਕਿਹੜਾ ਭਾਵ ਹੈ?)
    private static let exercise9 = Exercise(
        title: "What Emotion Is This?",
        instructions: "Read the situation and choose the emotion the person most likely feels.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ਸਾਰਾਹ ਨੂੰ ਹੁਣੇ ਪਤਾ ਲੱਗਾ ਹੈ ਕਿ ਉਸਨੇ ਇੱਕ ਮੁਕਾਬਲੇ ਵਿੱਚ ਪਹਿਲਾ ਸਥਾਨ ਪ੍ਰਾਪਤ ਕੀਤਾ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਉਦਾਸ", "ਗੁੱਸੇ", "ਖੁਸ਼", "ਡਰੀ ਹੋਈ"], correctAnswer: "ਖੁਸ਼", explanation: "ਮੁਕਾਬਲਾ ਜਿੱਤਣਾ ਇੱਕ ਖੁਸ਼ੀ ਅਤੇ ਉਤਸ਼ਾਹ ਵਾਲੀ ਗੱਲ ਹੈ।"),
            ExerciseItem(prompt: "ਡੇਵਿਡ ਅੱਧੀ ਰਾਤ ਨੂੰ ਹੇਠਾਂ ਇੱਕ ਅਜੀਬ, ਉੱਚੀ ਆਵਾਜ਼ ਸੁਣਦਾ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਖੁਸ਼", "ਡਰਿਆ ਹੋਇਆ", "ਬੋਰ", "ਉਤਸ਼ਾਹਿਤ"], correctAnswer: "ਡਰਿਆ ਹੋਇਆ", explanation: "ਹਨੇਰੇ ਵਿੱਚ ਅਚਾਨਕ ਆਈਆਂ ਆਵਾਜ਼ਾਂ ਡਰ ਪੈਦਾ ਕਰਦੀਆਂ ਹਨ।"),
            ExerciseItem(prompt: "ਮੇਰੀ ਦੀ ਸਭ ਤੋਂ ਚੰਗੀ ਸਹੇਲੀ ਕਿਸੇ ਦੂਜੇ ਦੂਰ ਦੇ ਰਾਜ ਵਿੱਚ ਜਾ ਰਹੀ ਹੈ। ਮੇਰੀ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਉਦਾਸ", "ਗੁੱਸੇ", "ਉਤਸ਼ਾਹਿਤ", "ਈਰਖਾਲੂ"], correctAnswer: "ਉਦਾਸ", explanation: "ਨਜ਼ਦੀਕੀ ਦੋਸਤਾਂ ਦੇ ਦੂਰ ਜਾਣ ਨਾਲ ਉਦਾਸੀ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਦੁਕਾਨ 'ਤੇ ਲੰਬੀ ਲਾਈਨ ਵਿੱਚ ਕੋਈ ਜੌਨ ਦੇ ਅੱਗੇ ਆ ਕੇ ਖੜ੍ਹਾ ਹੋ ਜਾਂਦਾ ਹੈ। ਜੌਨ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਖੁਸ਼", "ਡਰਿਆ ਹੋਇਆ", "ਪ੍ਰੇਸ਼ਾਨ", "ਸ਼ਰਮਿੰਦਾ"], correctAnswer: "ਪ੍ਰੇਸ਼ਾਨ", explanation: "ਦੂਜਿਆਂ ਦਾ ਗਲਤ ਵਿਵਹਾਰ ਆਮ ਤੌਰ 'ਤੇ ਪ੍ਰੇਸ਼ਾਨੀ ਜਾਂ ਗੁੱਸਾ ਪੈਦਾ ਕਰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਐਮਿਲੀ ਇੱਕ ਬਹੁਤ ਵੱਡੇ ਦਰਸ਼ਕਾਂ ਦੇ ਸਾਹਮਣੇ ਭਾਸ਼ਣ ਦੇਣ ਜਾ ਰਹੀ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਘਬਰਾਹਟ", "ਬੋਰ", "ਉਦਾਸ", "ਗੁੱਸੇ"], correctAnswer: "ਘਬਰਾਹਟ", explanation: "ਸਟੇਜ 'ਤੇ ਬੋਲਣ ਤੋਂ ਪਹਿਲਾਂ ਘਬਰਾਹਟ ਹੋਣਾ ਆਮ ਗੱਲ ਹੈ।"),
            ExerciseItem(prompt: "ਰੌਬਰਟ ਦੀ ਫਲਾਈਟ ਰੱਦ ਹੋ ਗਈ, ਜਿਸ ਨਾਲ ਉਸਦੀਆਂ ਛੁੱਟੀਆਂ ਵਿੱਚ ਦੋ ਦਿਨਾਂ ਦੀ ਦੇਰੀ ਹੋ ਗਈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਨਿਰਾਸ਼", "ਖੁਸ਼", "ਡਰਿਆ ਹੋਇਆ", "ਮਾਣ"], correctAnswer: "ਨਿਰਾਸ਼", explanation: "ਯੋਜਨਾਵਾਂ ਦੇ ਖ਼ਰਾਬ ਹੋਣ ਕਾਰਨ ਨਿਰਾਸ਼ਾ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਲੀਜ਼ਾ ਦਾ ਬੇਟਾ ਯੂਨੀਵਰਸਿਟੀ ਤੋਂ ਸਭ ਤੋਂ ਉੱਚੇ ਅੰਕਾਂ ਨਾਲ ਪਾਸ ਹੋਇਆ ਹੈ। ਲੀਜ਼ਾ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਮਾਣ", "ਈਰਖਾ", "ਉਦਾਸ", "ਡਰੀ ਹੋਈ"], correctAnswer: "ਮਾਣ", explanation: "ਪਰਿਵਾਰ ਦੇ ਮੈਂਬਰਾਂ ਦੀ ਸਫਲਤਾ 'ਤੇ ਮਾਣ ਮਹਿਸੂਸ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਕਲਰਕ ਚੌਥੀ ਵਾਰ ਇੱਕ ਗੁੰਝਲਦਾਰ ਫਾਰਮ ਸਮਝਾ ਰਿਹਾ ਹੈ, ਪਰ ਆਰਥਰ ਅਜੇ ਵੀ ਸਮਝ ਨਹੀਂ ਪਾ ਰਿਹਾ। ਆਰਥਰ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਉਲਝਣ ਵਿੱਚ", "ਖੁਸ਼", "ਉਤਸ਼ਾਹਿਤ", "ਮਾਣ"], correctAnswer: "ਉਲਝਣ ਵਿੱਚ", explanation: "ਜਦੋਂ ਕੋਈ ਚੀਜ਼ ਸਮਝ ਨਾ ਆਵੇ, ਤਾਂ ਇਨਸਾਨ ਉਲਝਣ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਜੇਮਜ਼ ਦੋ ਘੰਟਿਆਂ ਤੋਂ ਵੱਧ ਸਮੇਂ ਤੋਂ ਬਿਨਾਂ ਕੁਝ ਪੜ੍ਹੇ ਇੱਕ ਸ਼ਾਂਤ ਉਡੀਕ ਕਮਰੇ ਵਿੱਚ ਉਡੀਕ ਕਰ ਰਿਹਾ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਬੋਰ", "ਡਰਿਆ ਹੋਇਆ", "ਗੁੱਸੇ", "ਖੁਸ਼"], correctAnswer: "ਬੋਰ", explanation: "ਬਿਨਾਂ ਕਿਸੇ ਕੰਮ ਦੇ ਲੰਬੀ ਉਡੀਕ ਬੋਰ ਕਰ ਦਿੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਐਲਨ ਦੇ ਪਰਿਵਾਰ ਨੇ ਉਸਦੇ ਸਾਰੇ ਦੋਸਤਾਂ ਨਾਲ ਉਸਨੂੰ ਇੱਕ ਸਰਪ੍ਰਾਈਜ਼ ਜਨਮਦਿਨ ਪਾਰਟੀ ਦਿੱਤੀ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਹੈਰਾਨ", "ਗੁੱਸੇ", "ਉਦਾਸ", "ਡਰੀ ਹੋਈ"], correctAnswer: "ਹੈਰਾਨ", explanation: "ਅਣਕਿਆਸੀ ਖੁਸ਼ੀ ਵਾਲੀ ਪਾਰਟੀ ਇਨਸਾਨ ਨੂੰ ਹੈਰਾਨ ਕਰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਇੱਕ ਅਵਾਰਾ ਕੁੱਤਾ ਦੌੜ ਕੇ ਆਇਆ ਅਤੇ ਘੁੰਮਣ ਵੇਲੇ ਕੈਰਨ 'ਤੇ ਹਮਲਾਵਰ ਤਰੀਕੇ ਨਾਲ ਭੌਂਕਿਆ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਡਰੀ ਹੋਈ", "ਖੁਸ਼", "ਬੋਰ", "ਮਾਣ"], correctAnswer: "ਡਰੀ ਹੋਈ", explanation: "ਗੁੱਸੇ ਵਾਲੇ ਜਾਨਵਰਾਂ ਕਾਰਨ ਡਰ ਲੱਗਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਵਿਲੀਅਮ ਬਾਗਬਾਨੀ ਕਰਦੇ ਸਮੇਂ ਆਪਣੀ ਵਿਆਹ ਦੀ ਅੰਗੂਠੀ ਗੁਆ ਬੈਠਾ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਪ੍ਰੇਸ਼ਾਨ", "ਉਤਸ਼ਾਹਿਤ", "ਬੋਰ", "ਸ਼ਾਂਤ"], correctAnswer: "ਪ੍ਰੇਸ਼ਾਨ", explanation: "ਕੀਮਤੀ ਯਾਦਗਾਰੀ ਚੀਜ਼ ਦੇ ਗੁਆਚ ਜਾਣ 'ਤੇ ਪ੍ਰੇਸ਼ਾਨੀ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਪੈਟ੍ਰਿਸ਼ੀਆ ਨੂੰ ਉਸਦੇ ਪੋਤੇ-ਪੋਤੀਆਂ ਤੋਂ ਇੱਕ ਸੁੰਦਰ ਕਾਰਡ ਅਤੇ ਫੁੱਲ ਮਿਲੇ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਪਿਆਰਿਆ", "ਗੁੱਸੇ", "ਡਰੀ ਹੋਈ", "ਉਲਝਣ ਵਿੱਚ"], correctAnswer: "ਪਿਆਰਿਆ", explanation: "ਪਰਿਵਾਰ ਵੱਲੋਂ ਪਿਆਰ ਮਿਲਣ 'ਤੇ ਪਿਆਰਿਆ ਮਹਿਸੂਸ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਕਰਿਆਨੇ ਦੀ ਦੁਕਾਨ 'ਤੇ ਰਿਚਰਡ ਦੀ ਪਸੰਦ ਦੀ ਖ਼ਾਸ ਰੋਟੀ ਖ਼ਤਮ ਹੋ ਗਈ ਸੀ, ਇਸ ਲਈ ਉਸਨੂੰ ਦੂਜੀ ਬ੍ਰਾਂਡ ਦੀ ਖਰੀਦਣੀ ਪਈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਥੋੜ੍ਹਾ ਨਿਰਾਸ਼", "ਬਹੁਤ ਡਰਿਆ ਹੋਇਆ", "ਗੁੱਸੇ ਵਿੱਚ", "ਬਹੁਤ ਖੁਸ਼"], correctAnswer: "ਥੋੜ੍ਹਾ ਨਿਰਾਸ਼", explanation: "ਛੋਟੀ ਜਿਹੀ ਪਸੰਦ ਪੂਰੀ ਨਾ ਹੋਣ 'ਤੇ ਥੋੜ੍ਹੀ ਨਿਰਾਸ਼ਾ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਚਾਰਲਸ ਨੇ ਸਾਰੀ ਦੁਪਹਿਰ ਇੱਕ ਕਿਤਾਬਾਂ ਦੀ ਅਲਮਾਰੀ ਬਣਾਉਣ ਵਿੱਚ ਬਿਤਾਈ, ਅਤੇ ਇਹ ਬਿਲਕੁਲ ਸਹੀ ਬਣ ਗਈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਸੰਤੁਸ਼ਟ", "ਉਦਾਸ", "ਡਰਿਆ ਹੋਇਆ", "ਬੋਰ"], correctAnswer: "ਸੰਤੁਸ਼ਟ", explanation: "ਕਿਸੇ ਕੰਮ ਨੂੰ ਸਫਲਤਾਪੂਰਵਕ ਪੂਰਾ ਕਰਨ ਨਾਲ ਸੰਤੁਸ਼ਟੀ ਮਿਲਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਲਿੰਡਾ ਤੋਂ ਗਲਤੀ ਨਾਲ ਇੱਕ ਸ਼ਾਂਤ ਰੈਸਟੋਰੈਂਟ ਵਿੱਚ ਡਰਿੰਕਸ ਦੀ ਟ੍ਰੇਅ ਡਿੱਗ ਗਈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਸ਼ਰਮਿੰਦਾ", "ਖੁਸ਼", "ਗੁੱਸੇ", "ਬੋਰ"], correctAnswer: "ਸ਼ਰਮਿੰਦਾ", explanation: "ਸਭ ਦੇ ਸਾਹਮਣੇ ਹੋਈ ਗਲਤੀ ਕਰਕੇ ਸ਼ਰਮਿੰਦਗੀ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਥਾਮਸ ਕੱਲ੍ਹ ਸਵੇਰੇ ਹਵਾਈ ਦੀ ਆਪਣੀ ਪਹਿਲੀ ਯਾਤਰਾ 'ਤੇ ਜਾ ਰਿਹਾ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਉਤਸ਼ਾਹਿਤ", "ਉਦਾਸ", "ਗੁੱਸੇ", "ਬੋਰ"], correctAnswer: "ਉਤਸ਼ਾਹਿਤ", explanation: "ਚੰਗੀ ਛੁੱਟੀ ਦੀ ਯਾਤਰਾ 'ਤੇ ਜਾਣ ਦੀ ਉਮੀਦ ਉਤਸ਼ਾਹ ਪੈਦਾ ਕਰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਸੁਜ਼ਨ ਦੀ ਬਿੱਲੀ ਤਿੰਨ ਦਿਨਾਂ ਤੋਂ ਲਾਪਤਾ ਰਹਿਣ ਤੋਂ ਬਾਅਦ ਸੁਰੱਖਿਅਤ ਘਰ ਵਾਪਸ ਆ ਗਈ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਰਾਹਤ ਮਹਿਸੂਸ ਕਰਨਾ", "ਗੁੱਸੇ", "ਡਰੀ ਹੋਈ", "ਉਲਝਣ ਵਿੱਚ"], correctAnswer: "ਰਾਹਤ ਮਹਿਸੂਸ ਕਰਨਾ", explanation: "ਚਿੰਤਾ ਦੇ ਖ਼ਤਮ ਹੋਣ ਨਾਲ ਰਾਹਤ ਮਿਲਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਜਦੋਂ ਜਾਰਜ ਕੰਮ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰ ਰਿਹਾ ਹੈ, ਇੰਟਰਨੈਟ ਕਨੈਕਸ਼ਨ ਹਰ ਪੰਜ ਮਿੰਟ ਬਾਅਦ ਬੰਦ ਹੋ ਜਾਂਦਾ ਹੈ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦਾ ਹੈ?", options: ["ਖਿੱਝਿਆ ਹੋਇਆ", "ਡਰਿਆ ਹੋਇਆ", "ਖੁਸ਼", "ਬੋਰ"], correctAnswer: "ਖਿੱਝਿਆ ਹੋਇਆ", explanation: "ਕੰਮ ਵਿੱਚ ਬਾਰ-ਬਾਰ ਆਉਣ ਵਾਲੀ ਰੁਕਾਵਟ ਖਿੱਝ ਪੈਦਾ ਕਰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਹੈਲਨ ਨੇ ਇੱਕ ਤਣਾਅਪੂਰਨ ਦਿਨ ਤੋਂ ਬਾਅਦ ਕੋਸੇ ਪਾਣੀ ਨਾਲ ਇਸ਼ਨਾਨ ਕੀਤਾ। ਉਹ ਕਿਵੇਂ ਮਹਿਸੂਸ ਕਰਦੀ ਹੈ?", options: ["ਸ਼ਾਂਤ (ਰਿਲੈਕਸ)", "ਗੁੱਸੇ", "ਡਰੀ ਹੋਈ", "ਘਬਰਾਈ ਹੋਈ"], correctAnswer: "ਸ਼ਾਂਤ (ਰਿਲੈਕਸ)", explanation: "ਗਰਮ ਪਾਣੀ ਨਾਲ ਨਹਾਉਣ ਨਾਲ ਤਣਾਅ ਘਟਦਾ ਹੈ ਅਤੇ ਸ਼ਾਂਤੀ ਮਿਲਦੀ ਹੈ।")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here? (ਇੱਥੇ ਕੀ ਗਲਤ ਹੈ?)
    private static let exercise10 = Exercise(
        title: "What’s Wrong Here?",
        instructions: "Choose what is wrong or impossible about the sentence.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਜੌਨ ਨੇ ਸੌਣ ਤੋਂ ਪਹਿਲਾਂ ਅੱਧੀ ਰਾਤ ਨੂੰ ਨਾਸ਼ਤਾ ਕੀਤਾ।", options: ["ਲੋਕ ਖਾਣਾ ਨਹੀਂ ਖਾਂਦੇ", "ਨਾਸ਼ਤਾ ਸਵੇਰ ਦਾ ਭੋਜਨ ਹੈ, ਅੱਧੀ ਰਾਤ ਦਾ ਨਹੀਂ", "ਜੌਨ ਨੂੰ ਸੌਣਾ ਨਹੀਂ ਚਾਹੀਦਾ", "ਅੱਧੀ ਰਾਤ ਦੁਪਹਿਰ ਨੂੰ ਹੁੰਦੀ ਹੈ"], correctAnswer: "ਨਾਸ਼ਤਾ ਸਵੇਰ ਦਾ ਭੋਜਨ ਹੈ, ਅੱਧੀ ਰਾਤ ਦਾ ਨਹੀਂ", explanation: "ਨਾਸ਼ਤਾ ਹਮੇਸ਼ਾ ਸਵੇਰੇ ਉੱਠ ਕੇ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਰਾਤ ਨੂੰ ਨਹੀਂ।"),
            ExerciseItem(prompt: "ਕੁੱਤਾ ਡਾਕੀਏ 'ਤੇ ਭੌਂਕਿਆ ਅਤੇ ਫਿਰ ਪੰਛੀ ਨੂੰ ਫੜਨ ਲਈ ਛੱਤ ਦੇ ਉੱਪਰ ਉੱਡ ਗਿਆ।", options: ["ਕੁੱਤੇ ਭੌਂਕਦੇ ਨਹੀਂ ਹਨ", "ਕੁੱਤੇ ਉੱਡ ਨਹੀਂ ਸਕਦੇ", "ਡਾਕੀਏ ਡਾਕ ਨਹੀਂ ਵੰਡਦੇ", "ਪੰਛੀ ਉੱਡਦੇ ਨਹੀਂ ਹਨ"], correctAnswer: "ਕੁੱਤੇ ਉੱਡ ਨਹੀਂ ਸਕਦੇ", explanation: "ਕੁੱਤਿਆਂ ਦੇ ਖੰਭ ਨਹੀਂ ਹੁੰਦੇ ਅਤੇ ਉਹ ਉੱਡ ਨਹੀਂ ਸਕਦੇ।"),
            ExerciseItem(prompt: "ਸਾਰਾਹ ਨੇ ਜੁਲਾਈ ਦੇ ਮਹੀਨੇ ਬਾਹਰਲੇ ਪੂਲ ਵਿੱਚ ਤੈਰਾਕੀ ਕਰਨ ਲਈ ਆਪਣਾ ਗਰਮ ਸਰਦੀਆਂ ਦਾ ਕੋਟ ਅਤੇ ਦਸਤਾਨੇ ਪਾ ਲਏ।", options: ["ਲੋਕ ਜੁਲਾਈ ਵਿੱਚ ਤੈਰਾਕੀ ਨਹੀਂ ਕਰਦੇ", "ਤੈਰਾਕੀ ਲਈ ਸਰਦੀਆਂ ਦਾ ਕੋਟ ਅਤੇ ਦਸਤਾਨੇ ਨਹੀਂ ਪਾਏ ਜਾਂਦੇ", "ਬਾਹਰਲੇ ਪੂਲ ਹੁੰਦੇ ਹੀ ਨਹੀਂ", "ਕੋਟ ਗਰਮੀਆਂ ਵਿੱਚ ਪਾਏ ਜਾਂਦੇ ਹਨ"], correctAnswer: "ਤੈਰਾਕੀ ਲਈ ਸਰਦੀਆਂ ਦਾ ਕੋਟ ਅਤੇ ਦਸਤਾਨੇ ਨਹੀਂ ਪਾਏ ਜਾਂਦੇ", explanation: "ਤੈਰਾਕੀ ਕਰਦੇ ਸਮੇਂ ਗਰਮ ਕੋਟ ਅਤੇ ਦਸਤਾਨੇ ਪਾਉਣਾ ਅਸੰਭਵ ਅਤੇ ਗਲਤ ਹੈ।"),
            ExerciseItem(prompt: "ਕੰਧ ਦੀ ਘੜੀ 'ਤੇ ਤੇਰ੍ਹਾਂ ਵੱਜ ਗਏ ਸਨ, ਇਸ ਲਈ ਆਰਥਰ ਜਾਣਦਾ ਸੀ ਕਿ ਉਸਦੀ ਸਵੇਰ ਦੀ ਕੌਫ਼ੀ ਦਾ ਸਮਾਂ ਹੋ ਗਿਆ ਹੈ।", options: ["ਘੜੀਆਂ ਕੰਧਾਂ 'ਤੇ ਨਹੀਂ ਹੁੰਦੀਆਂ", "ਆਮ ਘੜੀਆਂ ਵਿੱਚ ਸਿਰਫ਼ ਬਾਰਾਂ ਤੱਕ ਹੀ ਵੱਜਦੇ ਹਨ", "ਕੌਫ਼ੀ ਸਵੇਰ ਦਾ ਪੀਣ ਵਾਲਾ ਪਦਾਰਥ ਨਹੀਂ ਹੈ", "ਆਰਥਰ ਕੌਫ਼ੀ ਨਹੀਂ ਪੀਂਦਾ"], correctAnswer: "ਆਮ ਘੜੀਆਂ ਵਿੱਚ ਸਿਰਫ਼ ਬਾਰਾਂ ਤੱਕ ਹੀ ਵੱਜਦੇ ਹਨ", explanation: "ਸਧਾਰਨ ਘੜੀਆਂ 'ਤੇ ਸਿਰਫ਼ 12 ਤੱਕ ਹੀ ਸੰਖਿਆਵਾਂ ਹੁੰਦੀਆਂ ਹਨ, 13 ਨਹੀਂ।"),
            ExerciseItem(prompt: "ਪਾਲ ਆਪਣੇ ਦੋਸਤ ਨੂੰ ਮਿਲਣ ਲਈ ਸਾਈਕਲ ਚਲਾ ਕੇ ਡੂੰਘੀ ਝੀਲ ਦੇ ਪਾਰ ਗਿਆ।", options: ["ਸਾਈਕਲ ਪਾਣੀ ਉੱਤੇ ਨਹੀਂ ਚੱਲ ਸਕਦਾ", "ਝੀਲਾਂ ਵਿੱਚ ਮੱਛੀਆਂ ਨਹੀਂ ਹੁੰਦੇ", "ਦੋਸਤ ਇੱਕ ਦੂਜੇ ਦੇ ਘਰ ਨਹੀਂ ਜਾਂਦੇ", "ਸਾਈਕਲਾਂ ਦੇ ਪੈਡਲ ਨਹੀਂ ਹੁੰਦੇ"], correctAnswer: "ਸਾਈਕਲ ਪਾਣੀ ਉੱਤੇ ਨਹੀਂ ਚੱਲ ਸਕਦਾ", explanation: "ਸਾਈਕਲ ਜ਼ਮੀਨ 'ਤੇ ਚੱਲਣ ਵਾਲੀ ਸਵਾਰੀ ਹੈ, ਪਾਣੀ 'ਤੇ ਨਹੀਂ ਚੱਲ ਸਕਦੀ।"),
            ExerciseItem(prompt: "ਲਿੰਡਾ ਨੇ ਪੀਣ ਲਈ ਠੰਢਾ ਪਾਣੀ ਬਣਾਉਣ ਲਈ ਇੱਕ ਪਤੀਲੇ ਵਿੱਚ ਬਰਫ਼ ਦੇ ਟੁਕੜੇ ਉਬਾਲੇ।", options: ["ਬਰਫ਼ ਦੇ ਟੁਕੜੇ ਹੁੰਦੇ ਹੀ ਨਹੀਂ", "ਬਰਫ਼ ਦੇ ਟੁਕੜੇ ਉਬਾਲਣ ਨਾਲ ਪਾਣੀ ਗਰਮ ਹੁੰਦਾ ਹੈ, ਠੰਢਾ ਨਹੀਂ", "ਪਤੀਲੇ ਵਿੱਚ ਬਰਫ਼ ਨਹੀਂ ਪਾਈ ਜਾ ਸਕਦੀ", "ਪਾਣੀ ਪੀਣਾ ਸਿਹਤਮੰਦ ਨਹੀਂ ਹੈ"], correctAnswer: "ਬਰਫ਼ ਦੇ ਟੁਕੜੇ ਉਬਾਲਣ ਨਾਲ ਪਾਣੀ ਗਰਮ ਹੁੰਦਾ ਹੈ, ਠੰਢਾ ਨਹੀਂ", explanation: "ਉਬਾਲਣ ਨਾਲ ਤਾਪਮਾਨ ਵਧਦਾ ਹੈ, ਜਿਸ ਨਾਲ ਪਾਣੀ ਗਰਮ ਹੋ ਜਾਂਦਾ ਹੈ, ਠੰਢਾ ਨਹੀਂ।"),
            ExerciseItem(prompt: "ਮੱਛੀ ਭੁੱਖੀ ਬਿੱਲੀ ਤੋਂ ਬਚਣ ਲਈ ਦਰੱਖਤ 'ਤੇ ਚੜ੍ਹ ਗਈ।", options: ["ਮੱਛੀਆਂ ਦਰੱਖਤਾਂ 'ਤੇ ਨਹੀਂ ਚੜ੍ਹ ਸਕਦੀਆਂ", "ਬਿੱਲੀਆਂ ਮੱਛੀ ਨਹੀਂ ਖਾਂਦੀਆਂ", "ਦਰੱਖਤਾਂ ਦੇ ਪੱਤੇ ਨਹੀਂ ਹੁੰਦੇ", "ਮੱਛੀਆਂ ਦਰੱਖਤਾਂ 'ਤੇ ਰਹਿੰਦੀਆਂ ਹਨ"], correctAnswer: "ਮੱਛੀਆਂ ਦਰੱਖਤਾਂ 'ਤੇ ਨਹੀਂ ਚੜ੍ਹ ਸਕਦੀਆਂ", explanation: "ਮੱਛੀਆਂ ਦੇ ਹੱਥ-ਪੈਰ ਨਹੀਂ ਹੁੰਦੇ ਅਤੇ ਉਹ ਦਰੱਖਤ 'ਤੇ ਨਹੀਂ ਚੜ੍ਹ ਸਕਦੀਆਂ।"),
            ExerciseItem(prompt: "ਰੌਬਰਟ ਨੇ ਆਪਣਾ ਚਿਕਨ ਨੂਡਲ ਸੂਪ ਪੀਣ ਲਈ ਕਾਂਟੇ ਦੀ ਵਰਤੋਂ ਕੀਤੀ।", options: ["ਕਾਂਟੇ ਨਾਲ ਤਰਲ ਸੂਪ ਨਹੀਂ ਪੀਤਾ ਜਾ ਸਕਦਾ", "ਸੂਪ ਚਿਕਨ ਦਾ ਨਹੀਂ ਬਣਿਆ ਹੁੰਦਾ", "ਰੌਬਰਟ ਨੂੰ ਚਾਕੂ ਦੀ ਵਰਤੋਂ ਕਰਨੀ ਚਾਹੀਦੀ ਹੈ", "ਸੂਪ ਚਮਚਿਆਂ ਨਾਲ ਨਹੀਂ ਖਾਧਾ ਜਾਂਦਾ"], correctAnswer: "ਕਾਂਟੇ ਨਾਲ ਤਰਲ ਸੂਪ ਨਹੀਂ ਪੀਤਾ ਜਾ ਸਕਦਾ", explanation: "ਤਰਲ ਚੀਜ਼ਾਂ ਨੂੰ ਪੀਣ/ਖਾਣ ਲਈ ਕਾਂਟੇ ਦੀ ਵਰਤੋਂ ਨਹੀਂ ਕੀਤੀ ਜਾ ਸਕਦੀ, ਚਮਚ ਚਾਹੀਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਕਿਉਂਕਿ ਤੇਜ਼ ਮੀਂਹ ਪੈ ਰਿਹਾ ਸੀ, ਨੈਂਸੀ ਨੇ ਆਪਣੇ ਗਿੱਲੇ ਕੱਪੜੇ ਸੁੱਕਣ ਲਈ ਬਾਹਰ ਰੱਸੀ 'ਤੇ ਟੰਗ ਦਿੱਤੇ।", options: ["ਮੀਂਹ ਚੀਜ਼ਾਂ ਨੂੰ ਗਿੱਲਾ ਨਹੀਂ ਕਰਦਾ", "ਮੀਂਹ ਵਿੱਚ ਕੱਪੜੇ ਬਾਹਰ ਨਹੀਂ ਸੁੱਕ ਸਕਦੇ", "ਕੱਪੜੇ ਟੰਗਣ ਵਾਲੀਆਂ ਰੱਸੀਆਂ ਸਿਰਫ਼ ਅੰਦਰ ਹੁੰਦੀਆਂ ਹਨ", "ਨੈਂਸੀ ਕੱਪੜੇ ਨਹੀਂ ਪਾਉਂਦੀ"], correctAnswer: "ਮੀਂਹ ਵਿੱਚ ਕੱਪੜੇ ਬਾਹਰ ਨਹੀਂ ਸੁੱਕ ਸਕਦੇ", explanation: "ਮੀਂਹ ਦੇ ਪਾਣੀ ਨਾਲ ਕੱਪੜੇ ਹੋਰ ਗਿੱਲੇ ਹੋ ਜਾਣਗੇ, ਸੁੱਕਣਗੇ ਨਹੀਂ।"),
            ExerciseItem(prompt: "ਜਹਾਜ਼ ਹਵਾਈ ਅੱਡੇ 'ਤੇ ਸੁਰੱਖਿਅਤ ਉਤਰ ਗਿਆ, ਅਤੇ ਸਾਰੇ ਯਾਤਰੀ ਰੇਲ ਦੀ ਪਟੜੀ 'ਤੇ ਬਾਹਰ ਆ ਗਏ।", options: ["ਜਹਾਜ਼ ਹਵਾਈ ਅੱਡਿਆਂ 'ਤੇ ਨਹੀਂ ਉਤਰਦੇ", "ਯਾਤਰੀ ਜਹਾਜ਼ਾਂ ਵਿੱਚ ਸਫ਼ਰ ਨਹੀਂ ਕਰਦੇ", "ਹਵਾਈ ਅੱਡਿਆਂ ਦੇ ਰਨਵੇਅ 'ਤੇ ਰੇਲ ਦੀਆਂ ਪਟੜੀਆਂ ਨਹੀਂ ਹੁੰਦੀਆਂ", "ਰੇਲਾਂ ਪਟੜੀਆਂ 'ਤੇ ਨਹੀਂ ਚੱਲਦੀਆਂ"], correctAnswer: "ਹਵਾਈ ਅੱਡਿਆਂ ਦੇ ਰਨਵੇਅ 'ਤੇ ਰੇਲ ਦੀਆਂ ਪਟੜੀਆਂ ਨਹੀਂ ਹੁੰਦੀਆਂ", explanation: "ਹਵਾਈ ਜਹਾਜ਼ ਰਨਵੇਅ 'ਤੇ ਉਤਰਦੇ ਹਨ, ਰੇਲ ਦੀ ਪਟੜੀ 'ਤੇ ਨਹੀਂ।"),
            ExerciseItem(prompt: "ਹੈਲਨ ਨੇ ਲਿਵਿੰਗ ਰੂਮ ਨੂੰ ਗਰਮ ਕਰਨ ਲਈ ਏਅਰ ਕੰਡੀਸ਼ਨਰ ਚਾਲੂ ਕਰ ਦਿੱਤਾ।", options: ["ਏਅਰ ਕੰਡੀਸ਼ਨਰ ਕਮਰੇ ਨੂੰ ਠੰਢਾ ਕਰਦੇ ਹਨ, ਗਰਮ ਨਹੀਂ", "ਲਿਵਿੰਗ ਰੂਮ ਦੀਆਂ ਕੰਧਾਂ ਨਹੀਂ ਹੁੰਦੀਆਂ", "ਹੈਲਨ ਕੋਲ ਘਰ ਨਹੀਂ ਹੈ", "ਏਅਰ ਕੰਡੀਸ਼ਨਰ ਬਿਜਲੀ ਦੀ ਵਰਤੋਂ ਨਹੀਂ ਕਰਦੇ"], correctAnswer: "ਏਅਰ ਕੰਡੀਸ਼ਨਰ ਕਮਰੇ ਨੂੰ ਠੰਢਾ ਕਰਦੇ ਹਨ, ਗਰਮ ਨਹੀਂ", explanation: "ਏਅਰ ਕੰਡੀਸ਼ਨਰ ਦਾ ਮੁੱਖ ਕੰਮ ਤਾਪਮਾਨ ਘੱਟ ਕਰਨਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਖ਼ਰਗੋਸ਼ ਨੇ ਜੰਗਲ ਵਿੱਚੋਂ ਲੰਘਦੇ ਹੋਏ ਵੱਡੇ ਸਲੇਟੀ ਬਘਿਆੜ ਦਾ ਪਿੱਛਾ ਕੀਤਾ।", options: ["ਖ਼ਰਗੋਸ਼ ਜੰਗਲਾਂ ਵਿੱਚ ਨਹੀਂ ਰਹਿੰਦੇ", "ਬਘਿਆੜ ਦੌੜਦੇ ਨਹੀਂ ਹਨ", "ਖ਼ਰਗੋਸ਼ ਬਘਿਆੜਾਂ ਦਾ ਪਿੱਛਾ ਨਹੀਂ ਕਰਦੇ", "ਬਘਿਆੜ ਸਲੇਟੀ ਨਹੀਂ ਹੁੰਦੇ"], correctAnswer: "ਖ਼ਰਗੋਸ਼ ਬਘਿਆੜਾਂ ਦਾ ਪਿੱਛਾ ਨਹੀਂ ਕਰਦੇ", explanation: "ਖ਼ਰਗੋਸ਼ ਸ਼ਾਕਾਹਾਰੀ ਅਤੇ ਡਰਪੋਕ ਜੀਵ ਹੈ, ਉਹ ਸ਼ਿਕਾਰੀ ਬਘਿਆੜ ਦਾ ਪਿੱਛਾ ਨਹੀਂ ਕਰ ਸਕਦਾ।"),
            ExerciseItem(prompt: "ਜੇਮਜ਼ ਨੇ ਸਰਦੀਆਂ ਵਿੱਚ ਆਪਣੇ ਹੱਥਾਂ ਨੂੰ ਗਰਮ ਰੱਖਣ ਲਈ ਚਮੜੇ ਦੇ ਜੁੱਤੇ ਖਰੀਦੇ।", options: ["ਜੁੱਤੇ ਪੈਰਾਂ ਵਿੱਚ ਪਾਏ ਜਾਂਦੇ ਹਨ, ਹੱਥਾਂ ਵਿੱਚ ਨਹੀਂ", "ਜੁੱਤਿਆਂ ਲਈ ਚਮੜਾ ਨਹੀਂ ਵਰਤਿਆ ਜਾਂਦਾ", "ਹੱਥਾਂ ਨੂੰ ਠੰਢ ਨਹੀਂ ਲੱਗਦੀ", "ਸਰਦੀਆਂ ਵਿੱਚ ਠੰਢ ਨਹੀਂ ਹੁੰਦੀ"], correctAnswer: "ਜੁੱਤੇ ਪੈਰਾਂ ਵਿੱਚ ਪਾਏ ਜਾਂਦੇ ਹਨ, ਹੱਥਾਂ ਵਿੱਚ ਨਹੀਂ", explanation: "ਹੱਥਾਂ ਨੂੰ ਢੱਕਣ ਲਈ ਦਸਤਾਨੇ ਹੁੰਦੇ ਹਨ, ਜੁੱਤੇ ਪੈਰਾਂ ਲਈ ਹੁੰਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਸੂਰਜ ਅੱਧੀ ਰਾਤ ਨੂੰ ਚੜ੍ਹਿਆ, ਜਿਸ ਨਾਲ ਸਵੇਰ ਦਾ ਆਸਮਾਨ ਰੌਸ਼ਨ ਹੋ ਗਿਆ।", options: ["ਸੂਰਜ ਸਵੇਰੇ ਚੜ੍ਹਦਾ ਹੈ, ਅੱਧੀ ਰਾਤ ਨੂੰ ਨਹੀਂ", "ਅੱਧੀ ਰਾਤ ਦੁਪਹਿਰ ਨੂੰ ਹੁੰਦੀ ਹੈ", "ਸੂਰਜ ਚਮਕਦਾਰ ਨਹੀਂ ਹੁੰਦਾ", "ਸਵੇਰ ਵੇਲੇ ਹਨੇਰਾ ਹੁੰਦਾ ਹੈ"], correctAnswer: "ਸੂਰਜ ਸਵੇਰੇ ਚੜ੍ਹਦਾ ਹੈ, ਅੱਧੀ ਰਾਤ ਨੂੰ ਨਹੀਂ", explanation: "ਸੂਰਜ ਦਿਨ ਦੇ ਸਮੇਂ ਚੜ੍ਹਦਾ ਹੈ, ਅੱਧੀ ਰਾਤ ਨੂੰ ਨਹੀਂ।"),
            ExerciseItem(prompt: "ਐਲਿਸ ਨੇ ਆਪਣਾ ਮਨਪਸੰਦ ਰੇਡੀਓ ਸਟੇਸ਼ਨ ਸੁਣਨ ਲਈ ਟੈਲੀਵਿਜ਼ਨ ਚਾਲੂ ਕੀਤਾ।", options: ["ਟੈਲੀਵਿਜ਼ਨ ਵੀਡੀਓ ਦਿਖਾਉਂਦੇ ਹਨ, ਉਹ ਰੇਡੀਓ ਨਹੀਂ ਹੁੰਦੇ", "ਰੇਡੀਓ ਸੰਗੀਤ ਨਹੀਂ ਚਲਾਉਂਦੇ", "ਐਲਿਸ ਨੂੰ ਸੰਗੀਤ ਪਸੰਦ ਨਹੀਂ ਹੈ", "ਟੈਲੀਵਿਜ਼ਨਾਂ ਦੇ ਸਪੀਕਰ ਨਹੀਂ ਹੁੰਦੇ"], correctAnswer: "ਟੈਲੀਵਿਜ਼ਨ ਵੀਡੀਓ ਦਿਖਾਉਂਦੇ ਹਨ, ਉਹ ਰੇਡੀਓ ਨਹੀਂ ਹੁੰਦੇ", explanation: "ਟੈਲੀਵਿਜ਼ਨ ਵੀਡੀਓ ਦੇਖਣ ਲਈ ਹੁੰਦਾ ਹੈ, ਰੇਡੀਓ ਸੁਣਨ ਲਈ ਰੇਡੀਓ ਯੰਤਰ ਚਾਹੀਦਾ ਹੈ।")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription (ਪਰਚੀ ਪੜ੍ਹਨੀ)
    private static let exercise11 = Exercise(
        title: "Reading a Prescription",
        instructions: "Read the prescription information and answer the question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਲੇਬਲ: ਭੋਜਨ ਦੇ ਨਾਲ ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ 1 ਗੋਲੀ ਲਓ। ਤੁਹਾਨੂੰ ਹਰ ਰੋਜ਼ ਕੁੱਲ ਕਿੰਨੀਆਂ ਗੋਲੀਆਂ ਲੈਣੀਆਂ ਚਾਹੀਦੀਆਂ ਹਨ?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ 1 ਗੋਲੀ ਲੈਣ ਦਾ ਮਤਲਬ ਹੈ 1 + 1 = 2 ਗੋਲੀਆਂ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਸੌਣ ਵੇਲੇ 2 ਗੋਲੀਆਂ ਲਓ। ਤੁਹਾਨੂੰ ਇਹ ਦਵਾਈ ਕਦੋਂ ਲੈਣੀ ਚਾਹੀਦੀ ਹੈ?", options: ["ਸਵੇਰੇ", "ਦੁਪਹਿਰ ਦੇ ਖਾਣੇ ਦੇ ਨਾਲ", "ਸੌਣ ਵੇਲੇ", "ਕਸਰਤ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ"], correctAnswer: "ਸੌਣ ਵੇਲੇ", explanation: "ਲੇਬਲ 'ਤੇ ਸਪੱਸ਼ਟ ਲਿਖਿਆ ਹੈ ਕਿ ਸੌਣ ਵੇਲੇ ਦਵਾਈ ਲਓ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਦਰਦ ਲਈ ਲੋੜ ਅਨੁਸਾਰ ਹਰ 8 ਘੰਟੇ ਬਾਅਦ 1 ਕੈਪਸੂਲ ਲਓ। ਤੁਸੀਂ 24 ਘੰਟਿਆਂ ਦੇ ਦਿਨ ਵਿੱਚ ਇਹ ਕਿੰਨੀ ਵਾਰ ਲੈ ਸਕਦੇ ਹੋ?", options: ["2 ਵਾਰ", "3 ਵਾਰ", "4 ਵਾਰ", "6 ਵਾਰ"], correctAnswer: "3 ਵਾਰ", explanation: "ਇੱਕ ਦਿਨ ਵਿੱਚ 24 ਘੰਟੇ ਹੁੰਦੇ ਹਨ। 24 ਨੂੰ 8 ਨਾਲ ਭਾਗ ਕਰਨ 'ਤੇ 3 ਵਾਰ ਉੱਤਰ ਆਉਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਅਮੋਕਸੀਸਿਲਿਨ 250 ਮਿਲੀਗ੍ਰਾਮ। ਰੋਜ਼ਾਨਾ ਤਿੰਨ ਵਾਰ 1 ਗੋਲੀ ਲਓ। ਫਰਿੱਜ ਵਿੱਚ ਰੱਖੋ। ਤੁਹਾਨੂੰ ਇਹ ਦਵਾਈ ਕਿਵੇਂ ਸਟੋਰ ਕਰਨੀ ਚਾਹੀਦੀ ਹੈ?", options: ["ਫ੍ਰੀਜ਼ਰ ਵਿੱਚ", "ਫਰਿੱਜ ਵਿੱਚ", "ਗਰਮ ਅਲਮਾਰੀ ਵਿੱਚ", "ਸਿੱਧੀ ਧੁੱਪ ਵਿੱਚ"], correctAnswer: "ਫਰਿੱਜ ਵਿੱਚ", explanation: "ਲੇਬਲ 'ਤੇ ਲਿਖਿਆ ਹੈ 'ਫਰਿੱਜ ਵਿੱਚ ਰੱਖੋ'।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਇਹ ਦਵਾਈ ਲੈਂਦੇ ਸਮੇਂ ਸ਼ਰਾਬ ਨਾ ਪੀਓ। ਸੁਸਤੀ ਦਾ ਕਾਰਨ ਬਣ ਸਕਦੀ ਹੈ। ਇਸ ਦਵਾਈ ਦਾ ਕਿਹੜਾ ਮਾੜਾ ਪ੍ਰਭਾਵ ਦੱਸਿਆ ਗਿਆ ਹੈ?", options: ["ਸੁਸਤੀ", "ਵਧੀ ਹੋਈ ਊਰਜਾ", "ਹਾਈ ਬਲੱਡ ਪ੍ਰੈਸ਼ਰ", "ਛਿੱਕਾਂ ਆਉਣੀਆਂ"], correctAnswer: "ਸੁਸਤੀ", explanation: "ਲੇਬਲ ਚੇਤਾਵਨੀ ਦਿੰਦਾ ਹੈ ਕਿ ਇਹ ਸੁਸਤੀ ਦਾ ਕਾਰਨ ਬਣ ਸਕਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਸਵੇਰੇ ਖਾਲੀ ਪੇਟ ਰੋਜ਼ਾਨਾ 1 ਗੋਲੀ ਲਓ। ਤੁਹਾਨੂੰ ਨਾਸ਼ਤਾ ਕਦੋਂ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਗੋਲੀ ਲੈਣ ਤੋਂ ਪਹਿਲਾਂ", "ਗੋਲੀ ਲੈਣ ਤੋਂ ਬਾਅਦ", "ਗੋਲੀ ਲੈਂਦੇ ਸਮੇਂ", "ਨਾਸ਼ਤਾ ਨਾ ਕਰੋ"], correctAnswer: "ਗੋਲੀ ਲੈਣ ਤੋਂ ਬਾਅਦ", explanation: "ਖਾਲੀ ਪੇਟ ਗੋਲੀ ਲੈਣ ਦਾ ਮਤਲਬ ਹੈ ਕਿ ਨਾਸ਼ਤਾ ਗੋਲੀ ਖਾਣ ਤੋਂ ਬਾਅਦ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਹਰ ਰੋਜ਼ ਮੂੰਹ ਰਾਹੀਂ 1 ਗੋਲੀ ਲਓ। ਮਾਤਰਾ: 30. ਰੀਫਿਲ: 2. ਕਿੰਨੀ ਵਾਰ ਰੀਫਿਲ ਦੀ ਇਜਾਜ਼ਤ ਹੈ?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "ਲੇਬਲ 'ਤੇ ਲਿਖਿਆ ਹੈ 'ਰੀਫਿਲ: 2'।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਪ੍ਰਭਾਵਿਤ ਚਮੜੀ 'ਤੇ ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ ਪਤਲੀ ਪਰਤ ਲਗਾਓ। ਨਿਗਲੋ ਨਾ। ਇਹ ਦਵਾਈ ਕਿਵੇਂ ਵਰਤੀ ਜਾਂਦੀ ਹੈ?", options: ["ਨਿਗਲ ਕੇ", "ਚਮੜੀ 'ਤੇ ਮਲ ਕੇ", "ਨੱਕ ਵਿੱਚ ਸਪਰੇਅ ਕਰਕੇ", "ਪਾਣੀ ਵਿੱਚ ਘੋਲ ਕੇ"], correctAnswer: "ਚਮੜੀ 'ਤੇ ਮਲ ਕੇ", explanation: "ਲੇਬਲ 'ਤੇ ਲਿਖਿਆ ਹੈ 'ਪ੍ਰਭਾਵਿਤ ਚਮੜੀ 'ਤੇ ਲਗਾਓ'।"),
            ExerciseItem(prompt: "ਲੇਬਲ: 10/15/2026 ਤੋਂ ਬਾਅਦ ਸੁੱਟ ਦਿਓ। ਅੱਜ 11/01/2026 ਹੈ। ਕੀ ਤੁਸੀਂ ਇਹ ਦਵਾਈ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਲੈ ਸਕਦੇ ਹੋ?", options: ["ਹਾਂ", "ਨਹੀਂ", "ਸਿਰਫ਼ ਭੋਜਨ ਦੇ ਨਾਲ", "ਸਿਰਫ਼ ਰਾਤ ਨੂੰ"], correctAnswer: "ਨਹੀਂ", explanation: "ਅੱਜ ਦੀ ਤਾਰੀਖ਼ ਦਵਾਈ ਦੀ ਲਿਖੀ ਆਖਰੀ ਮਿਤੀ (10/15/2026) ਤੋਂ ਬਾਅਦ ਦੀ ਹੈ, ਯਾਨੀ ਦਵਾਈ ਦੀ ਮਿਆਦ ਲੰਘ ਚੁੱਕੀ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ 1 ਗੋਲੀ ਲਓ। ਡੇਅਰੀ ਉਤਪਾਦਾਂ ਨਾਲ ਨਾ ਲਓ। ਇਹ ਗੋਲੀ ਲੈਂਦੇ ਸਮੇਂ ਤੁਹਾਨੂੰ ਕਿਸ ਪੀਣ ਵਾਲੇ ਪਦਾਰਥ ਤੋਂ ਬਚਣਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਪਾਣੀ", "ਦੁੱਧ", "ਸੇਬ ਦਾ ਰਸ", "ਕਾਲੀ ਕੌਫ਼ੀ"], correctAnswer: "ਦੁੱਧ", explanation: "ਦੁੱਧ ਇੱਕ ਡੇਅਰੀ ਉਤਪਾਦ ਹੈ ਜਿਸ ਤੋਂ ਬਚਣ ਦੀ ਚੇਤਾਵਨੀ ਦਿੱਤੀ ਗਈ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਉਡਾਣ ਤੋਂ 1 ਘੰਟਾ ਪਹਿਲਾਂ 2 ਗੋਲੀਆਂ ਲਓ। ਤੁਸੀਂ ਇਹ ਦਵਾਈ ਕਿਉਂ ਲਓਗੇ?", options: ["ਸਫ਼ਰ ਦੌਰਾਨ ਉਲਟੀ/ਚੱਕਰ ਆਉਣ ਤੋਂ ਬਚਣ ਲਈ", "ਘਰ ਵਿੱਚ ਵਧੀਆ ਸੌਣ ਲਈ", "ਸਿਰਦਰਦ ਠੀਕ ਕਰਨ ਲਈ", "ਚਮੜੀ ਦੀ ਐਲਰਜੀ ਦੇ ਇਲਾਜ ਲਈ"], correctAnswer: "ਸਫ਼ਰ ਦੌਰਾਨ ਉਲਟੀ/ਚੱਕਰ ਆਉਣ ਤੋਂ ਬਚਣ ਲਈ", explanation: "ਉਡਾਣ ਤੋਂ ਪਹਿਲਾਂ ਦਵਾਈ ਸਫ਼ਰ ਦੀ ਬੀਮਾਰੀ ਤੋਂ ਬਚਣ ਲਈ ਲਈ ਜਾਂਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਅੱਖਾਂ ਦੀਆਂ ਬੂੰਦਾਂ। ਰੋਜ਼ਾਨਾ ਦੋ ਵਾਰ ਹਰ ਅੱਖ ਵਿੱਚ 1 ਬੂੰਦ ਪਾਓ। ਤੁਹਾਨੂੰ ਇਹ ਦਵਾਈ ਕਿੱਥੇ ਪਾਉਣੀ ਚਾਹੀਦੀ ਹੈ?", options: ["ਆਪਣੇ ਮੂੰਹ ਵਿੱਚ", "ਆਪਣੇ ਕੰਨਾਂ ਵਿੱਚ", "ਆਪਣੀਆਂ ਅੱਖਾਂ ਵਿੱਚ", "ਆਪਣੀ ਚਮੜੀ 'ਤੇ"], correctAnswer: "ਆਪਣੀਆਂ ਅੱਖਾਂ ਵਿੱਚ", explanation: "ਲੇਬਲ 'ਤੇ ਲਿਖਿਆ ਹੈ 'ਅੱਖਾਂ ਦੀਆਂ ਬੂੰਦਾਂ' ਅਤੇ 'ਹਰ ਅੱਖ ਵਿੱਚ ਪਾਓ'।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਸਿਰਦਰਦ ਲਈ ਲੋੜ ਅਨੁਸਾਰ ਹਰ 4 ਤੋਂ 6 ਘੰਟੇ ਬਾਅਦ 1 ਗੋਲੀ ਲਓ। ਵੱਧ ਤੋਂ ਵੱਧ 4 ਗੋਲੀਆਂ ਪ੍ਰਤੀ ਦਿਨ। ਤੁਸੀਂ ਇੱਕ ਦਿਨ ਵਿੱਚ ਵੱਧ ਤੋਂ ਵੱਧ ਕਿੰਨੀਆਂ ਗੋਲੀਆਂ ਲੈ ਸਕਦੇ ਹੋ?", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "ਲੇਬਲ ਅਨੁਸਾਰ ਵੱਧ ਤੋਂ ਵੱਧ 4 ਗੋਲੀਆਂ ਪ੍ਰਤੀ ਦਿਨ ਲੈਣ ਦੀ ਹਦਾਇਤ ਹੈ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਪਾਣੀ ਦੇ ਪੂਰੇ ਗਲਾਸ ਨਾਲ ਲਓ। ਤੁਹਾਨੂੰ ਇਸ ਗੋਲੀ ਨਾਲ ਪਾਣੀ ਦੀ ਲੋੜ ਕਿਉਂ ਹੈ?", options: ["ਚਮੜੀ 'ਤੇ ਘੋਲਣ ਲਈ", "ਨਿਗਲਣ ਵਿੱਚ ਮਦਦ ਅਤੇ ਪੇਟ ਦੀ ਖ਼ਰਾਬੀ ਤੋਂ ਬਚਣ ਲਈ", "ਇਸਦਾ ਰੰਗ ਬਦਲਣ ਲਈ", "ਸਵਾਦ ਵਧੀਆ ਬਣਾਉਣ ਲਈ"], correctAnswer: "ਨਿਗਲਣ ਵਿੱਚ ਮਦਦ ਅਤੇ ਪੇਟ ਦੀ ਖ਼ਰਾਬੀ ਤੋਂ ਬਚਣ ਲਈ", explanation: "ਪਾਣੀ ਨਾਲ ਗੋਲੀ ਆਸਾਨੀ ਨਾਲ ਲੰਘ ਜਾਂਦੀ ਹੈ ਅਤੇ ਪੇਟ ਨੂੰ ਨੁਕਸਾਨ ਨਹੀਂ ਹੁੰਦਾ।"),
            ExerciseItem(prompt: "ਲੇਬਲ: ਸ਼ਾਮ ਦੇ ਖਾਣੇ ਦੇ ਨਾਲ ਰੋਜ਼ਾਨਾ 1 ਗੋਲੀ ਲਓ। ਇਸਨੂੰ ਲੈਣ ਦਾ ਸਭ ਤੋਂ ਵਧੀਆ ਸਮਾਂ ਕਿਹੜਾ ਹੈ?", options: ["ਨਾਸ਼ਤੇ ਵੇਲੇ", "ਦੁਪਹਿਰ ਦੇ ਖਾਣੇ ਵੇਲੇ", "ਰਾਤ ਦੇ ਖਾਣੇ (ਡਿਨਰ) ਵੇਲੇ", "ਅੱਧੀ ਰਾਤ ਨੂੰ"], correctAnswer: "ਰਾਤ ਦੇ ਖਾਣੇ (ਡਿਨਰ) ਵੇਲੇ", explanation: "ਸ਼ਾਮ ਦਾ ਖਾਣਾ ਰਾਤ ਦਾ ਖਾਣਾ ਹੁੰਦਾ ਹੈ।")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu (ਮੇਨੂ ਪੜ੍ਹਨਾ)
    private static let exercise12 = Exercise(
        title: "Reading a Menu",
        instructions: "Use the menu information to answer the question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ਮੇਨੂ: ਚੀਜ਼ਬਰਗਰ $8.00, ਫ੍ਰੈਂਚ ਫਰਾਈਜ਼ $3.00, ਸੋਡਾ $2.00। ਚੀਜ਼ਬਰਗਰ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੈ?", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "ਮੇਨੂ ਅਨੁਸਾਰ ਚੀਜ਼ਬਰਗਰ ਦੀ ਕੀਮਤ $8.00 ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਕੌਫ਼ੀ $2.50, ਚਾਹ $2.00, ਮਫ਼ਿਨ $3.00। ਸਭ ਤੋਂ ਸਸਤੀ ਚੀਜ਼ ਕਿਹੜੀ ਹੈ?", options: ["ਕੌਫ਼ੀ", "ਚਾਹ", "ਮਫ਼ਿਨ", "ਸਾਰਿਆਂ ਦੀ ਕੀਮਤ ਬਰਾਬਰ ਹੈ"], correctAnswer: "ਚਾਹ", explanation: "$2.00 ਸਭ ਤੋਂ ਘੱਟ ਕੀਮਤ ਹੈ ਜੋ ਕਿ ਚਾਹ ਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਟਮਾਟਰ ਦਾ ਸੂਪ $5.00, ਹਰਾ ਸਲਾਦ $6.00, ਚਿਕਨ ਸੀਜ਼ਰ $9.00। ਟਮਾਟਰ ਦੇ ਸੂਪ ਦੀ ਇੱਕ ਕੌਲੀ ਕਿੰਨੇ ਦੀ ਹੈ?", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "ਮੇਨੂ 'ਤੇ ਟਮਾਟਰ ਦਾ ਸੂਪ $5.00 ਦਾ ਲਿਖਿਆ ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਪੈਨਕੇਕ ਨਾਸ਼ਤਾ $10.00, ਫ੍ਰੈਂਚ ਟੋਸਟ $9.00, ਬੇਕਨ $4.00। ਫ੍ਰੈਂਚ ਟੋਸਟ ਦੀ ਕੀਮਤ ਕੀ ਹੈ?", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "ਫ੍ਰੈਂਚ ਟੋਸਟ ਦੀ ਕੀਮਤ $9.00 ਲਿਖੀ ਹੋਈ ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਚੀਜ਼ ਪੀਜ਼ਾ ਸਲਾਈਸ $4.00, ਪੇਪਰੋਨੀ ਪੀਜ਼ਾ ਸਲਾਈਸ $4.50। ਪੇਪਰੋਨੀ ਪੀਜ਼ਾ ਸਲਾਈਸ ਚੀਜ਼ ਸਲਾਈਸ ਨਾਲੋਂ ਕਿੰਨੀ ਮਹਿੰਗੀ ਹੈ?", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "$4.50 ਵਿੱਚੋਂ $4.00 ਘਟਾਉਣ 'ਤੇ $0.50 ਦਾ ਅੰਤਰ ਆਉਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਚਿਕਨ ਸੈਂਡਵਿਚ $7.00, ਫਿਸ਼ ਐਂਡ ਚਿਪਸ $11.00। ਤੁਹਾਡੇ ਕੋਲ $10.00 ਹਨ। ਤੁਸੀਂ ਕਿਹੜਾ ਖਾਣਾ ਖਰੀਦ ਸਕਦੇ ਹੋ?", options: ["ਚਿਕਨ ਸੈਂਡਵਿਚ", "ਫਿਸ਼ ਐਂਡ ਚਿਪਸ", "ਦੋਵੇਂ ਖਾਣੇ", "ਕੋਈ ਵੀ ਨਹੀਂ"], correctAnswer: "ਚਿਕਨ ਸੈਂਡਵਿਚ", explanation: "$7.00 ਤੁਹਾਡੇ ਬਜਟ ($10.00) ਦੇ ਅੰਦਰ ਹੈ, ਪਰ $11.00 ਜ਼ਿਆਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਬੱਚਿਆਂ ਦਾ ਖਾਣਾ (12 ਸਾਲ ਤੋਂ ਘੱਟ) $6.00, ਵੱਡਿਆਂ ਦਾ ਬਰਗਰ $12.00। 8 ਸਾਲ ਦੇ ਬੱਚੇ ਲਈ ਖਾਣੇ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੋਵੇਗੀ?", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "8 ਸਾਲ ਦਾ ਬੱਚਾ 12 ਸਾਲ ਤੋਂ ਛੋਟਾ ਹੈ, ਇਸ ਲਈ ਬੱਚਿਆਂ ਦੇ ਖਾਣੇ ਦੀ ਕੀਮਤ ($6.00) ਲੱਗੇਗੀ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਚਾਕਲੇਟ ਆਈਸਕ੍ਰੀਮ $4.00, ਐਪਲ ਪਾਈ $5.00, ਵਨੀਲਾ ਆਈਸਕ੍ਰੀਮ ਸ਼ਾਮਲ ਕਰਨੀ ਹੋਵੇ ਤਾਂ $1.50 ਵਾਧੂ। ਵਨੀਲਾ ਆਈਸਕ੍ਰੀਮ ਦੇ ਨਾਲ ਐਪਲ ਪਾਈ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੋਵੇਗੀ?", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "$5.00 (ਐਪਲ ਪਾਈ) + $1.50 (ਆਈਸਕ੍ਰੀਮ) = $6.50।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਟਰਕੀ ਰੈਪ $8.50, ਚਿਪਸ $1.50, ਜੂਸ $2.00। ਟਰਕੀ ਰੈਪ ਅਤੇ ਜੂਸ ਦੀ ਕੁੱਲ ਕੀਮਤ ਕੀ ਹੈ?", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "$8.50 + $2.00 = $10.50।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਦੁਪਹਿਰ ਦਾ ਖਾਸ ਖਾਣਾ (ਸਵੇਰੇ 11 ਵਜੇ ਤੋਂ ਦੁਪਹਿਰ 3 ਵਜੇ ਤੱਕ) $9.00। ਰਾਤ ਦਾ ਆਮ ਮੇਨੂ $15.00। ਦੁਪਹਿਰ ਦਾ 1:00 ਵਜਿਆ ਹੈ। ਦੁਪਹਿਰ ਦੇ ਖਾਸ ਖਾਣੇ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੈ?", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "ਦੁਪਹਿਰ ਦਾ 1:00 ਵਜੇ ਦਾ ਸਮਾਂ 11 AM ਤੋਂ 3 PM ਦੇ ਵਿਚਕਾਰ ਆਉਂਦਾ ਹੈ, ਇਸ ਲਈ $9.00 ਕੀਮਤ ਹੋਵੇਗੀ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਕੌਫ਼ੀ $2.00 (ਮੁਫ਼ਤ ਦੁਬਾਰਾ ਭਰਨਾ), ਗਰਮ ਚਾਹ $2.50। ਜੇਕਰ ਤੁਸੀਂ ਤਿੰਨ ਕੱਪ ਕੌਫ਼ੀ ਪੀਂਦੇ ਹੋ, ਤਾਂ ਤੁਸੀਂ ਕੁੱਲ ਕਿੰਨਾ ਭੁਗਤਾਨ ਕਰੋਗੇ?", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "ਕੌਫ਼ੀ ਵਿੱਚ ਦੁਬਾਰਾ ਭਰਨਾ ਮੁਫ਼ਤ ਹੈ, ਇਸ ਲਈ ਸਿਰਫ਼ ਸ਼ੁਰੂਆਤੀ $2.00 ਹੀ ਦੇਣੇ ਪੈਣਗੇ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਸਬਜ਼ੀਆਂ ਦਾ ਸੂਪ $4.00, ਬੀਫ ਸਟਿਊ $7.00। ਕਿਸ ਪਕਵਾਨ ਵਿੱਚ ਮੀਟ ਹੈ?", options: ["ਸਬਜ਼ੀਆਂ ਦਾ ਸੂਪ", "ਬੀਫ ਸਟਿਊ", "ਦੋਵਾਂ ਵਿੱਚ", "ਕਿਸੇ ਵਿੱਚ ਨਹੀਂ"], correctAnswer: "ਬੀਫ ਸਟਿਊ", explanation: "ਬੀਫ ਇੱਕ ਤਰ੍ਹਾਂ ਦਾ ਮੀਟ ਹੈ, ਪਰ ਸਬਜ਼ੀਆਂ ਵਿੱਚ ਮੀਟ ਨਹੀਂ ਹੁੰਦਾ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਟੈਕੋ $3.00, ਕੈਸਾਡੀਆ $6.00, ਸੋਡਾ $2.00। ਕੈਸਾਡੀਆ ਦੀ ਕੀਮਤ ਕੀ ਹੈ?", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "ਮੇਨੂ ਉੱਤੇ ਕੈਸਾਡੀਆ ਦੀ ਕੀਮਤ $6.00 ਲਿਖੀ ਹੋਈ ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਸਪੈਗੇਟੀ $12.00, ਲਾਸਾਨੀਆ $14.00, ਗਾਰਲਿਕ ਬ੍ਰੈੱਡ $3.00। ਗਾਰਲਿਕ ਬ੍ਰੈੱਡ ਦੀ ਕੀਮਤ ਕਿੰਨੀ ਹੈ?", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "ਗਾਰਲਿਕ ਬ੍ਰੈੱਡ ਦੀ ਕੀਮਤ $3.00 ਹੈ।"),
            ExerciseItem(prompt: "ਮੇਨੂ: ਐੱਗਜ਼ ਬੈਨੀ $11.00, ਓਟਮੀਲ $6.00, ਫਲਾਂ ਦੀ ਕੌਲੀ $5.00। ਨਾਸ਼ਤੇ ਦੀ ਕਿਹੜੀ ਚੀਜ਼ ਸਭ ਤੋਂ ਮਹਿੰਗੀ ਹੈ?", options: ["ਐੱਗਜ਼ ਬੈਨੀ", "ਓਟਮੀਲ", "ਫਲਾਂ ਦੀ ਕੌਲੀ", "ਸਾਰੀਆਂ ਦੀ ਕੀਮਤ ਬਰਾਬਰ ਹੈ"], correctAnswer: "ਐੱਗਜ਼ ਬੈਨੀ", explanation: "$11.00 ਇਸ ਸੂਚੀ ਵਿੱਚ ਸਭ ਤੋਂ ਵੱਧ ਕੀਮਤ ਹੈ।")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills (ਬਿੱਲਾਂ ਨੂੰ ਸਮਝਣਾ)
    private static let exercise13 = Exercise(
        title: "Understanding Bills",
        instructions: "Read the bill information and answer the question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਬਿਜਲੀ ਦਾ ਬਿੱਲ: ਕੁੱਲ ਦੇਣਯੋਗ ਰਾਸ਼ੀ: $45.00। ਆਖਰੀ ਮਿਤੀ: 15 ਜੁਲਾਈ। ਤੁਹਾਨੂੰ ਕਿੰਨੀ ਰਕਮ ਅਦਾ ਕਰਨੀ ਪਵੇਗੀ?", options: ["$15.00", "$45.00", "15 ਜੁਲਾਈ", "ਮੁਫ਼ਤ"], correctAnswer: "$45.00", explanation: "ਬਿੱਲ ਅਨੁਸਾਰ ਕੁੱਲ ਦੇਣਯੋਗ ਰਕਮ $45.00 ਹੈ।"),
            ExerciseItem(prompt: "ਪਾਣੀ ਦਾ ਬਿੱਲ: ਆਖਰੀ ਮਿਤੀ: 10 ਅਕਤੂਬਰ। ਲੇਟ ਫੀਸ: $5.00। ਅੱਜ 12 ਅਕਤੂਬਰ ਹੈ। ਜੇਕਰ ਤੁਸੀਂ ਅੱਜ ਭੁਗਤਾਨ ਕਰਦੇ ਹੋ ਤਾਂ ਕੀ ਹੋਵੇਗਾ?", options: ["ਤੁਸੀਂ ਆਮ ਰਕਮ ਅਦਾ ਕਰੋਗੇ", "ਤੁਹਾਨੂੰ $5.00 ਲੇਟ ਫੀਸ ਦੇਣੀ ਪਵੇਗੀ", "ਤੁਹਾਨੂੰ ਛੋਟ ਮਿਲੇਗੀ", "ਕੁਝ ਨਹੀਂ"], correctAnswer: "ਤੁਹਾਨੂੰ $5.00 ਲੇਟ ਫੀਸ ਦੇਣੀ ਪਵੇਗੀ", explanation: "ਕਿਉਂਕਿ ਅੱਜ ਦੀ ਤਾਰੀਖ਼ ਆਖਰੀ ਮਿਤੀ ਤੋਂ ਬਾਅਦ ਦੀ ਹੈ, ਇਸ ਲਈ ਲੇਟ ਫੀਸ ਲੱਗੇਗੀ।"),
            ExerciseItem(prompt: "ਇੰਟਰਨੈਟ ਬਿੱਲ: ਮਹੀਨਾਵਾਰ ਖਰਚਾ: $60.00। ਆਟੋਪੇਅ ਛੋਟ: -$5.00। ਆਟੋਪੇਅ ਨਾਲ ਅੰਤਿਮ ਕੀਮਤ ਕੀ ਹੋਵੇਗੀ?", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "$60.00 ਵਿੱਚੋਂ $5.00 ਘਟਾਉਣ 'ਤੇ $55.00 ਬਚਦੇ ਹਨ।"),
            ExerciseItem(prompt: "ਗੈਸ ਬਿੱਲ: ਮੌਜੂਦਾ ਖਰਚਾ: $30.00। ਬਕਾਇਆ ਰਕਮ: $10.00। ਕੁੱਲ ਬਿੱਲ: $40.00। ਪਿਛਲੇ ਮਹੀਨੇ ਦੀ ਕਿੰਨੀ ਅਣ-ਅਦਾਇਗੀ ਰਕਮ ਅੱਗੇ ਲਿਆਂਦੀ ਗਈ ਹੈ?", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "ਪਿਛਲੇ ਮਹੀਨੇ ਦੀ ਬਕਾਇਆ ਰਕਮ $10.00 ਹੈ।"),
            ExerciseItem(prompt: "ਫ਼ੋਨ ਦਾ ਬਿੱਲ: ਆਖਰੀ ਮਿਤੀ: 20 ਜੂਨ। ਅੱਜ ਦੀ ਮਿਤੀ: 15 ਜੂਨ। ਬਿੱਲ ਦਾ ਸਮੇਂ ਸਿਰ ਭੁਗਤਾਨ ਕਰਨ ਲਈ ਤੁਹਾਡੇ ਕੋਲ ਕਿੰਨੇ ਦਿਨ ਬਾਕੀ ਹਨ?", options: ["5 ਦਿਨ", "20 ਦਿਨ", "15 ਦਿਨ", "1 ਦਿਨ"], correctAnswer: "5 ਦਿਨ", explanation: "20 ਜੂਨ ਅਤੇ 15 ਜੂਨ ਵਿੱਚ 5 ਦਿਨਾਂ ਦਾ ਫਰਕ ਹੈ।"),
            ExerciseItem(prompt: "ਕੂੜੇ ਦਾ ਬਿੱਲ: ਤਿਮਾਹੀ ਖਰਚਾ (3 ਮਹੀਨੇ): $36.00। ਪ੍ਰਤੀ ਮਹੀਨਾ ਖਰਚਾ ਕਿੰਨਾ ਬਣਦਾ ਹੈ?", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "$36.00 ਨੂੰ 3 ਮਹੀਨਿਆਂ 'ਤੇ ਵੰਡਣ 'ਤੇ $12.00 ਪ੍ਰਤੀ ਮਹੀਨਾ ਆਉਂਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਕੇਬਲ ਬਿੱਲ: ਕੁੱਲ ਦੇਣਯੋਗ: $80.00। ਭੁਗਤਾਨ ਕਰਤਾ: XYZ Cable Co.। ਚੈੱਕ ਕਿਸਦੇ ਨਾਮ 'ਤੇ ਬਣਾਇਆ ਜਾਣਾ ਚਾਹੀਦਾ ਹੈ?", options: ["$80.00", "XYZ Cable Co.", "ਕੇਬਲ ਵਾਲਾ", "ਨਕਦ"], correctAnswer: "XYZ Cable Co.", explanation: "ਬਿੱਲ ਵਿੱਚ ਭੁਗਤਾਨ ਕਰਤਾ ਦਾ ਨਾਮ 'XYZ Cable Co.' ਲਿਖਿਆ ਹੋਇਆ ਹੈ।"),
            ExerciseItem(prompt: "ਘਰੇਲੂ ਖਰਚੇ: ਪਾਣੀ: $20.00, ਗੈਸ: $30.00, ਬਿਜਲੀ: $50.00। ਕੁੱਲ: $100.00। ਕਿਸ ਸੇਵਾ 'ਤੇ ਸਭ ਤੋਂ ਵੱਧ ਖਰਚਾ ਆਇਆ?", options: ["ਪਾਣੀ", "ਗੈਸ", "ਬਿਜਲੀ", "ਸਾਰਿਆਂ ਦਾ ਬਰਾਬਰ"], correctAnswer: "ਬਿਜਲੀ", explanation: "ਬਿਜਲੀ ਦਾ ਖਰਚਾ $50.00 ਹੈ, ਜੋ ਕਿ ਸਭ ਤੋਂ ਵੱਧ ਹੈ।"),
            ExerciseItem(prompt: "ਕਾਰ ਦਾ ਬੀਮਾ: ਛਿਮਾਹੀ ਪ੍ਰੀਮੀਅਮ: $600.00। ਤੁਸੀਂ ਇਹ ਬਿੱਲ ਕਿੰਨੀ ਵਾਰ ਅਦਾ ਕਰਦੇ ਹੋ?", options: ["ਹਰ ਮਹੀਨੇ", "ਹਰ 6 ਮਹੀਨੇ ਬਾਅਦ (ਸਾਲ ਵਿੱਚ ਦੋ ਵਾਰ)", "ਸਾਲ ਵਿੱਚ ਇੱਕ ਵਾਰ", "ਹਰ ਹਫ਼ਤੇ"], correctAnswer: "ਹਰ 6 ਮਹੀਨੇ ਬਾਅਦ (ਸਾਲ ਵਿੱਚ ਦੋ ਵਾਰ)", explanation: "ਛਿਮਾਹੀ ਦਾ ਮਤਲਬ ਸਾਲ ਵਿੱਚ ਦੋ ਵਾਰ ਯਾਨੀ ਹਰ 6 ਮਹੀਨੇ ਬਾਅਦ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਸਟ੍ਰੀਮਿੰਗ ਸੇਵਾ: ਖਾਤੇ ਦੀ ਸਥਿਤੀ: ਮੁਅੱਤਲ। ਬਕਾਇਆ ਰਕਮ: $15.00। ਸੇਵਾ ਕਿਉਂ ਕੰਮ ਨਹੀਂ ਕਰ ਰਹੀ?", options: ["ਇੰਟਰਨੈਟ ਬੰਦ ਹੈ", "ਟੀਵੀ ਟੁੱਟਿਆ ਹੋਇਆ ਹੈ", "ਬਿੱਲ ਨਾ ਭਰਨ ਕਰਕੇ ਖਾਤਾ ਮੁਅੱਤਲ ਕੀਤਾ ਗਿਆ ਹੈ", "ਵੀਡੀਓ ਲੋਡ ਹੋ ਰਹੀ ਹੈ"], correctAnswer: "ਬਿੱਲ ਨਾ ਭਰਨ ਕਰਕੇ ਖਾਤਾ ਮੁਅੱਤਲ ਕੀਤਾ ਗਿਆ ਹੈ", explanation: "ਬਿੱਲ ਬਕਾਇਆ ਹੋਣ ਕਾਰਨ ਖਾਤੇ ਦੀ ਸਥਿਤੀ 'ਮੁਅੱਤਲ' ਲਿਖੀ ਹੋਈ ਹੈ।"),
            ExerciseItem(prompt: "ਜਿਮ ਦੀ ਮੈਂਬਰਸ਼ਿਪ: ਸਾਲਾਨਾ ਫੀਸ: $120.00। ਮਹੀਨਾਵਾਰ ਫੀਸ: $10.00। ਸਾਲਾਨਾ ਫੀਸ ਕਿੰਨੀ ਹੈ?", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "ਸਾਲਾਨਾ ਫੀਸ $120.00 ਦਿੱਤੀ ਗਈ ਹੈ।"),
            ExerciseItem(prompt: "हीਟਿੰਗ ਬਿੱਲ: ਜਨਵਰੀ: $110.00। ਜੁਲਾਈ: $20.00। ਜਨਵਰੀ ਵਿੱਚ ਬਿੱਲ ਜ਼ਿਆਦਾ ਕਿਉਂ ਹੈ?", options: ["ਗਰਮੀਆਂ ਵਿੱਚ ਗੈਸ ਮਹਿੰਗੀ ਹੁੰਦੀ ਹੈ", "ਸਰਦੀਆਂ ਦੇ ਮਹੀਨੇ ਜਨਵਰੀ ਵਿੱਚ ਹੀਟਰ ਦੀ ਜ਼ਿਆਦਾ ਵਰਤੋਂ ਹੁੰਦੀ ਹੈ", "ਜਨਵਰੀ ਵਿੱਚ ਘਰ ਖਾਲੀ ਹੁੰਦਾ ਹੈ", "ਸਮਾਂ ਬਦਲ ਗਿਆ ਸੀ"], correctAnswer: "ਸਰਦੀਆਂ ਦੇ ਮਹੀਨੇ ਜਨਵਰੀ ਵਿੱਚ ਹੀਟਰ ਦੀ ਜ਼ਿਆਦਾ ਵਰਤੋਂ ਹੁੰਦੀ ਹੈ", explanation: "ਸਰਦੀਆਂ ਦੇ ਮਹੀਨਿਆਂ ਵਿੱਚ ਘਰ ਨੂੰ ਗਰਮ ਰੱਖਣ ਲਈ ਹੀਟਰ ਦੀ ਜ਼ਿਆਦਾ ਵਰਤੋਂ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਕ੍ਰੈਡਿਟ ਕਾਰਡ ਬਿੱਲ: ਘੱਟੋ-ਘੱਟ ਭੁਗਤਾਨ: $25.00। ਕੁੱਲ ਬਕਾਇਆ: $500.00। ਲੇਟ ਫੀਸ ਤੋਂ ਬਚਣ ਲਈ ਤੁਸੀਂ ਇਸ ਮਹੀਨੇ ਘੱਟੋ-ਘੱਟ ਕਿੰਨੀ ਰਕਮ ਅਦਾ ਕਰ ਸਕਦੇ ਹੋ?", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "ਘੱਟੋ-ਘੱਟ ਭੁਗਤਾਨ $25.00 ਹੈ, ਜੋ ਜੁਰਮਾਨੇ ਤੋਂ ਬਚਣ ਲਈ ਕਾਫ਼ੀ ਹੈ।"),
            ExerciseItem(prompt: "ਮੈਡੀਕਲ ਬਿੱਲ: ਕੁੱਲ ਖਰਚਾ: $150.00। ਬੀਮਾ ਕਵਰ: $120.00। ਮਰੀਜ਼ ਦੀ ਜ਼ਿੰਮੇਵਾਰੀ: $30.00। ਤੁਸੀਂ ਕਿੰਨੇ ਪੈਸੇ ਦੇਣੇ ਹਨ?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "ਮਰੀਜ਼ ਦੀ ਜ਼ਿੰਮੇਵਾਰੀ ਵਾਲੀ ਰਕਮ ਹੀ ਦੇਣਯੋਗ ਹੁੰਦੀ ਹੈ, ਜੋ ਕਿ $30.00 ਹੈ।"),
            ExerciseItem(prompt: "ਅਖ਼ਬਾਰ ਦੀ ਮੈਂਬਰਸ਼ਿਪ: ਅਗਲੀ ਨਵੀਨੀਕਰਨ ਮਿਤੀ: 31 ਦਸੰਬਰ, 2026। ਜੇਕਰ ਤੁਸੀਂ ਅਗਲੇ ਬਿੱਲ ਤੋਂ ਪਹਿਲਾਂ ਰੱਦ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ, ਤਾਂ ਤੁਹਾਨੂੰ ਕਦੋਂ ਫ਼ੋਨ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["31 ਦਸੰਬਰ, 2026 ਤੋਂ ਪਹਿਲਾਂ", "31 ਦਸੰਬਰ, 2026 ਤੋਂ ਬਾਅਦ", "ਜਨਵਰੀ 2027 ਵਿੱਚ", "ਕਦੇ ਨਹੀਂ"], correctAnswer: "31 ਦਸੰਬਰ, 2026 ਤੋਂ ਪਹਿਲਾਂ", explanation: "ਅਗਲੇ ਬਿੱਲ ਤੋਂ ਬਚਣ ਲਈ ਤੁਹਾਨੂੰ ਹਮੇਸ਼ਾ ਨਵੀਨੀਕਰਨ ਦੀ ਮਿਤੀ ਤੋਂ ਪਹਿਲਾਂ ਰੱਦ ਕਰਨਾ ਪੈਂਦਾ ਹੈ।")
        ]
    )

    // MARK: - Exercise 14: What Would You Do? (ਤੁਸੀਂ ਕੀ ਕਰੋਗੇ?)
    private static let exercise14 = Exercise(
        title: "What Would You Do?",
        instructions: "Choose the best response to the situation described.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਆਪਣੀ ਰਸੋਈ ਵਿੱਚੋਂ ਧੂੰਏਂ ਦੀ ਗੰਧ ਆਉਂਦੀ ਹੈ ਪਰ ਕੋਈ ਅੱਗ ਦਿਖਾਈ ਨਹੀਂ ਦਿੰਦੀ। ਤੁਹਾਨੂੰ ਸਭ ਤੋਂ ਪਹਿਲਾਂ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਇਸਨੂੰ ਅਣਦੇਖਾ ਕਰੋ", "ਖਿੜਕੀਆਂ ਖੋਲ੍ਹੋ ਅਤੇ ਚੁੱਲ੍ਹੇ ਦੀ ਜਾਂਚ ਕਰੋ", "ਗੱਲ ਕਰਨ ਲਈ ਕਿਸੇ ਦੋਸਤ ਨੂੰ ਫ਼ੋਨ ਕਰੋ", "ਦੁਬਾਰਾ ਸੌਣ ਲਈ ਜਾਓ"], correctAnswer: "ਖਿੜਕੀਆਂ ਖੋਲ੍ਹੋ ਅਤੇ ਚੁੱਲ੍ਹੇ ਦੀ ਜਾਂਚ ਕਰੋ", explanation: "ਸਭ ਤੋਂ ਪਹਿਲਾਂ ਚੁੱਲ੍ਹੇ ਦੀ ਜਾਂਚ ਕਰਨਾ ਸਹੀ ਕਦਮ ਹੈ ਤਾਂ ਜੋ ਧੂੰਏਂ ਦੇ ਕਾਰਨ ਦਾ ਪਤਾ ਲੱਗ ਸਕੇ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਕਰਿਆਨੇ ਦੀ ਦੁਕਾਨ 'ਤੇ ਹੋ ਅਤੇ ਤੁਹਾਨੂੰ ਅਹਿਸਾਸ ਹੁੰਦਾ ਹੈ ਕਿ ਤੁਸੀਂ ਘਰ ਵਿੱਚ ਬਟੂਆ ਭੁੱਲ ਗਏ ਹੋ। ਸਭ ਤੋਂ ਵਧੀਆ ਵਿਕਲਪ ਕੀ ਹੈ?", options: ["ਬਿਨਾਂ ਪੈਸੇ ਦਿੱਤੇ ਸਮਾਨ ਲੈ ਕੇ ਚਲੇ ਜਾਓ", "ਕੈਸ਼ੀਅਰ ਨੂੰ ਆਪਣੀ ਰੇਹੜੀ ਰੱਖਣ ਲਈ ਕਹੋ ਅਤੇ ਬਟੂਆ ਲੈਣ ਘਰ ਜਾਓ", "ਰੋਂਦੇ ਹੋਏ ਦੁਕਾਨ ਤੋਂ ਬਾਹਰ ਚਲੇ ਜਾਓ", "ਮੈਨੇਜਰ ਨਾਲ ਬਹਿਸ ਕਰੋ"], correctAnswer: "ਕੈਸ਼ੀਅਰ ਨੂੰ ਆਪਣੀ ਰੇਹੜੀ ਰੱਖਣ ਲਈ ਕਹੋ ਅਤੇ ਬਟੂਆ ਲੈਣ ਘਰ ਜਾਓ", explanation: "ਸਮਾਨ ਰੱਖਣ ਲਈ ਕਹਿ ਕੇ ਬਟੂਆ ਲੈਣ ਜਾਣਾ ਹੀ ਸਭ ਤੋਂ ਵਧੀਆ ਅਤੇ ਜ਼ਿੰਮੇਵਾਰ ਵਿਕਲਪ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਡੇ ਤੋਂ ਰਸੋਈ ਦੇ ਫਰਸ਼ 'ਤੇ ਕੱਚਾ ਅੰਡਾ ਡਿੱਗ ਕੇ ਟੁੱਟ ਜਾਂਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਇਸਨੂੰ ਕੱਲ੍ਹ ਤੱਕ ਉੱਥੇ ਹੀ ਛੱਡ ਦਿਓ", "ਇਸਨੂੰ ਤੁਰੰਤ ਪੇਪਰ ਟਾਵਲ ਅਤੇ ਸਾਬਣ ਨਾਲ ਸਾਫ਼ ਕਰੋ", "ਇਸਨੂੰ ਕਾਰਪੇਟ ਨਾਲ ਢੱਕ ਦਿਓ", "ਬਿੱਲੀ ਨੂੰ ਖਾਣ ਦਿਓ"], correctAnswer: "ਇਸਨੂੰ ਤੁਰੰਤ ਪੇਪਰ ਟਾਵਲ ਅਤੇ ਸਾਬਣ ਨਾਲ ਸਾਫ਼ ਕਰੋ", explanation: "ਕੱਚਾ ਅੰਡਾ ਤਿਲਕਣ ਵਾਲਾ ਹੁੰਦਾ ਹੈ ਅਤੇ ਬੈਕਟੀਰੀਆ ਫੈਲਾ ਸਕਦਾ ਹੈ, ਇਸ ਲਈ ਇਸਨੂੰ ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਡਾ ਦੋਸਤ ਤੁਹਾਨੂੰ ਦੱਸਦਾ ਹੈ ਕਿ ਕੱਲ੍ਹ ਉਸਦੇ ਪਾਲਤੂ ਕੁੱਤੇ ਦੀ ਮੌਤ ਹੋ ਗਈ ਸੀ। ਤੁਹਾਨੂੰ ਕੀ ਕਹਿਣਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਇਹ ਬਹੁਤ ਮਜ਼ਾਕੀਆ ਹੈ", "ਮੈਨੂੰ ਤੁਹਾਡੇ ਨੁਕਸਾਨ ਦਾ ਬਹੁਤ ਦੁੱਖ ਹੈ", "ਤੁਹਾਨੂੰ ਇਸਦੀ ਜਗ੍ਹਾ ਬਿੱਲੀ ਰੱਖਣੀ ਚਾਹੀਦੀ ਹੈ", "ਕੀ ਮੈਂ ਉਸਦੇ ਖਿਡੌਣੇ ਲੈ ਸਕਦਾ ਹਾਂ?"], correctAnswer: "ਮੈਨੂੰ ਤੁਹਾਡੇ ਨੁਕਸਾਨ ਦਾ ਬਹੁਤ ਦੁੱਖ ਹੈ", explanation: "ਦੁੱਖ ਦੀ ਘੜੀ ਵਿੱਚ ਸੰਵੇਦਨਾ ਪ੍ਰਗਟ ਕਰਨਾ ਹੀ ਸਭ ਤੋਂ ਵਧੀਆ ਵਿਵਹਾਰ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਕਿਸੇ ਅਣਜਾਣ ਨੰਬਰ ਤੋਂ ਫ਼οਨ ਆਉਂਦਾ ਹੈ ਜੋ ਦਾਅਵਾ ਕਰਦਾ ਹੈ ਕਿ ਤੁਸੀਂ ਲਾਟਰੀ ਜਿੱਤੀ ਹੈ ਅਤੇ ਤੁਹਾਡੇ ਬੈਂਕ ਦੇ ਵੇਰਵੇ ਮੰਗਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਉਸੇ ਵੇਲੇ ਆਪਣੇ ਵੇਰਵੇ ਦੇ ਦਿਓ", "ਫ਼ੋਨ ਕੱਟ ਦਿਓ ਅਤੇ ਕੋਈ ਵੀ ਨਿੱਜੀ ਜਾਣਕਾਰੀ ਸਾਂਝੀ ਨਾ ਕਰੋ", "ਉਨ੍ਹਾਂ ਨੂੰ ਬਾਅਦ ਵਿੱਚ ਫ਼ੋਨ ਕਰਨ ਲਈ ਕਹੋ", "ਜਸ਼ਨ ਮਨਾਉਣ ਲਈ ਆਪਣੇ ਪਰਿਵਾਰ ਨੂੰ ਫ਼ੋਨ ਕਰੋ"], correctAnswer: "ਫ਼ੋਨ ਕੱਟ ਦਿਓ ਅਤੇ ਕੋਈ ਵੀ ਨਿੱਜੀ ਜਾਣਕਾਰੀ ਸਾਂਝੀ ਨਾ ਕਰੋ", explanation: "ਅਣਜਾਣ ਵਿਅਕਤੀ ਨਾਲ ਬੈਂਕ ਦੇ ਵੇਰਵੇ ਸਾਂਝੇ ਕਰਨਾ ਖ਼ਤਰਨਾਕ ਹੈ, ਇਸ ਲਈ ਫ਼ੋਨ ਕੱਟ ਦੇਣਾ ਚਾਹੀਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਗਰਮ ਕਮਰੇ ਵਿੱਚ ਖੜ੍ਹੇ ਹੋਣ ਦੌਰਾਨ ਚੱਕਰ ਆਉਣੇ ਸ਼ੁਰੂ ਹੋ ਜਾਂਦੇ ਹਨ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਖੜ੍ਹੇ ਰਹੋ ਅਤੇ ਅੱਖਾਂ ਬੰਦ ਕਰ ਲਓ", "ਤੁਰੰਤ ਬੈਠ ਜਾਓ ਅਤੇ ਥੋੜ੍ਹਾ ਪਾਣੀ ਪੀਓ", "ਗੁਸਲਖਾਨੇ ਵੱਲ ਦੌੜੋ", "ਗੋਲ-ਗੋਲ ਘੁੰਮੋ"], correctAnswer: "ਤੁਰੰਤ ਬੈਠ ਜਾਓ ਅਤੇ ਥੋੜ੍ਹਾ ਪਾਣੀ ਪੀਓ", explanation: "ਬੈਠਣ ਨਾਲ ਤੁਸੀਂ ਡਿੱਗਣ ਤੋਂ ਬਚ ਜਾਓਗੇ ਅਤੇ ਪਾਣੀ ਨਾਲ ਸਰੀਰ ਵਿੱਚ ਪਾਣੀ ਦੀ ਕਮੀ ਪੂਰੀ ਹੋਵੇਗੀ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਦੇਖਦੇ ਹੋ ਕਿ ਤੁਹਾਡੀ ਰਸੋਈ ਦੇ ਸਿੰਕ ਦੇ ਹੇਠਾਂ ਤੋਂ ਪਾਣੀ ਲੀਕ ਹੋ ਰਿਹਾ ਹੈ। ਸਭ ਤੋਂ ਪਹਿਲਾਂ ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਪੇਂਟਰ ਨੂੰ ਬੁਲਾਓ", "ਪਾਣੀ ਇਕੱਠਾ ਕਰਨ ਲਈ ਲੀਕ ਦੇ ਹੇਠਾਂ ਬਾਲਟੀ ਰੱਖੋ", "ਰਸੋਈ ਦਾ ਫਰਸ਼ ਬਾਅਦ ਵਿੱਚ ਸਾਫ਼ ਕਰੋ", "ਲਾਈਟਾਂ ਬੰਦ ਕਰ ਦਿਓ"], correctAnswer: "ਪਾਣੀ ਇਕੱਠਾ ਕਰਨ ਲਈ ਲੀਕ ਦੇ ਹੇਠਾਂ ਬਾਲਟੀ ਰੱਖੋ", explanation: "ਲੀਕ ਦੇ ਹੇਠਾਂ ਬਾਲਟੀ ਰੱਖਣ ਨਾਲ ਫਰਸ਼ ਖ਼ਰਾਬ ਹੋਣ ਤੋਂ ਬਚ ਜਾਵੇਗਾ।"),
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਰਾਤ ਦੇ ਖਾਣੇ ਦੀ ਪਾਰਟੀ ਵਿੱਚ ਬੁਲਾਇਆ ਗਿਆ ਹੈ ਪਰ ਤੁਸੀਂ ਨਹੀਂ ਜਾ ਸਕਦੇ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਬਸ ਨਾ ਜਾਓ", "ਮੇਜ਼ਬਾਨ ਨੂੰ ਪਹਿਲਾਂ ਹੀ ਦੱਸ ਦਿਓ ਕਿ ਤੁਸੀਂ ਸ਼ਾਮਲ ਨਹੀਂ ਹੋ ਸਕਦੇ", "ਬਿਨਾਂ ਦੱਸੇ ਲੇਟ ਪਹੁੰਚੋ", "ਜਵਾਬ ਦੇਣ ਦੀ ਬਜਾਏ ਕੋਈ ਤੋਹਫ਼ਾ ਭੇਜੋ"], correctAnswer: "ਮੇਜ਼ਬਾਨ ਨੂੰ ਪਹਿਲਾਂ ਹੀ ਦੱਸ ਦਿਓ ਕਿ ਤੁਸੀਂ ਸ਼ਾਮਲ ਨਹੀਂ ਹੋ ਸਕਦੇ", explanation: "ਮੇਜ਼ਬਾਨ ਨੂੰ ਪਹਿਲਾਂ ਹੀ ਸੂਚਿਤ ਕਰਨਾ ਇੱਕ ਸਭਿਅਕ ਤਰੀਕਾ ਹੈ ਤਾਂ ਜੋ ਉਹ ਆਪਣੀ ਯੋਜਨਾ ਬਦਲ ਸਕਣ।"),
            ExerciseItem(prompt: "ਤੁਹਾਡੇ ਤੋਂ ਅਚਾਨਕ ਦੋਸਤ ਦੇ ਘਰ ਇੱਕ ਸਜਾਵਟੀ ਫੁੱਲਦਾਨ ਟੁੱਟ ਜਾਂਦਾ ਹੈ। ਸਹੀ ਪ੍ਰਤੀਕਿਰਿਆ ਕੀ ਹੈ?", options: ["ਟੁਕੜਿਆਂ ਨੂੰ ਸੋਫ਼ੇ ਦੇ ਹੇਠਾਂ ਲੁਕਾ ਦਿਓ", "ਮਾਫ਼ੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਬਦਲ ਕੇ ਦੇਣ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ", "ਇਸ ਤਰ੍ਹਾਂ ਦਿਖਾਓ ਜਿਵੇਂ ਤੁਸੀਂ ਕੁਝ ਨਹੀਂ ਕੀਤਾ", "ਕੁੱਤੇ 'ਤੇ ਦੋਸ਼ ਲਗਾਓ"], correctAnswer: "ਮਾਫ਼ੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਬਦਲ ਕੇ ਦੇਣ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ", explanation: "ਈਮਾਨਦਾਰੀ ਦਿਖਾਉਣਾ ਅਤੇ ਨੁਕਸਾਨ ਨੂੰ ਪੂਰਾ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰਨਾ ਹੀ ਸਹੀ ਵਿਵਹਾਰ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਆਪਣੇ ਘਰ ਦੀਆਂ ਚਾਬੀਆਂ ਨਹੀਂ ਲੱਭ ਰਹੀਆਂ ਅਤੇ ਤੁਸੀਂ ਬਾਹਰ ਤਾਲਾਬੰਦ ਹੋ ਗਏ ਹੋ। ਸਭ ਤੋਂ ਵਧੀਆ ਕਦਮ ਕੀ ਹੈ?", options: ["ਅੰਦਰ ਜਾਣ ਲਈ ਖਿੜਕੀ ਤੋੜ ਦਿਓ", "ਵਾਧੂ ਚਾਬੀ ਵਾਲੇ ਪਰਿਵਾਰਕ ਮੈਂਬਰ ਜਾਂ ਤਾਲੇ ਵਾਲੇ ਨੂੰ ਬੁਲਾਓ", "ਹਮੇਸ਼ਾ ਲਈ ਬਾਹਰ ਬੈਠੇ ਰਹੋ", "ਦਰਵਾਜ਼ੇ ਨੂੰ ਲੱਤ ਮਾਰੋ"], correctAnswer: "ਵਾਧੂ ਚਾਬੀ ਵਾਲੇ ਪਰਿਵਾਰਕ ਮੈਂਬਰ ਜਾਂ ਤਾਲੇ ਵਾਲੇ ਨੂੰ ਬੁਲਾਓ", explanation: "ਵਾਧੂ ਚਾਬੀ ਵਾਲੇ ਮੈਂਬਰ ਜਾਂ ਲਾਕਸਮਿਥ ਨੂੰ ਬੁਲਾਉਣਾ ਸੁਰੱਖਿਅਤ ਅਤੇ ਸਹੀ ਵਿਧੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਦੇਖਦੇ ਹੋ ਕਿ ਗਲੀ ਦੀਆਂ ਲਾਈਟਾਂ ਚਾਲੂ ਹਨ ਪਰ ਤੁਹਾਡੇ ਘਰ ਵਿੱਚ ਬਿਜਲੀ ਨਹੀਂ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਆਪਣੇ ਸਰਕਟ ਬ੍ਰੇਕਰ ਬਾਕਸ ਦੀ ਜਾਂਚ ਕਰੋ", "ਨਵਾਂ ਟੈਲੀਵਿਜ਼ਨ ਖਰੀਦੋ", "ਤੁਰੰਤ ਸੌਣ ਲਈ ਚਲੇ ਜਾਓ", "ਪੁਲਿਸ ਨੂੰ ਫ਼ੋਨ ਕਰੋ"], correctAnswer: "ਆਪਣੇ ਸਰਕਟ ਬ੍ਰੇਕਰ ਬਾਕਸ ਦੀ ਜਾਂਚ ਕਰੋ", explanation: "ਸਰਕਟ ਬ੍ਰੇਕਰ ਬਾਕਸ ਦੀ ਜਾਂਚ ਕਰਕੇ ਪਤਾ ਲੱਗ ਸਕਦਾ ਹੈ ਕਿ ਬਿਜਲੀ ਟ੍ਰਿਪ ਤਾਂ ਨਹੀਂ ਹੋਈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਇੱਕ ਬਜ਼ੁਰਗ ਗੁਆਂਢੀ ਨੂੰ ਕਰਿਆਨੇ ਦੇ ਭਾਰੀ ਬੈਗ ਲੈ ਕੇ ਜਾਣ ਵਿੱਚ ਪਰੇਸ਼ਾਨ ਹੁੰਦੇ ਦੇਖਦੇ ਹੋ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਉਨ੍ਹਾਂ ਦੇ ਕੋਲੋਂ ਤੇਜ਼ੀ ਨਾਲ ਲੰਘ ਜਾਓ", "ਉਨ੍ਹਾਂ ਦੇ ਬੈਗ ਚੁੱਕਣ ਵਿੱਚ ਮਦਦ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ", "ਉਨ੍ਹਾਂ ਦੀ ਤਸਵੀਰ ਖਿੱਚੋ", "ਉਨ੍ਹਾਂ ਨੂੰ ਤੇਜ਼ ਚੱਲਣ ਲਈ ਕਹੋ"], correctAnswer: "ਉਨ੍ਹਾਂ ਦੇ ਬੈਗ ਚੁੱਕਣ ਵਿੱਚ ਮਦਦ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰੋ", explanation: "ਗੁਆਂਢੀ ਦੀ ਮਦਦ ਕਰਨਾ ਇੱਕ ਨੇਕ ਕੰਮ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਕੌਫ਼ੀ ਦੀ ਇੱਕ ਚੁਸਕੀ ਲੈਂਦੇ ਹੋ ਅਤੇ ਤੁਹਾਨੂੰ ਅਹਿਸਾਸ ਹੁੰਦਾ ਹੈ ਕਿ ਇਹ ਬਹੁਤ ਗਰਮ ਹੈ ਅਤੇ ਤੁਹਾਡਾ ਮੂੰਹ ਸੜ ਗਿਆ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਬਾਕੀ ਦੀ ਕੌਫ਼ੀ ਤੇਜ਼ੀ ਨਾਲ ਪੀਓ", "ਇਸਨੂੰ ਧਿਆਨ ਨਾਲ ਬਾਹਰ ਕੱਢ ਦਿਓ ਅਤੇ ਠੰਢਾ ਪਾਣੀ ਪੀਓ", "ਉੱਚੀ ਚੀਕੋ", "ਕੱਪ ਨੂੰ ਸੁੱਟ ਦਿਓ"], correctAnswer: "ਇਸਨੂੰ ਧਿਆਨ ਨਾਲ ਬਾਹਰ ਕੱਢ ਦਿਓ ਅਤੇ ਠੰਢਾ ਪਾਣੀ ਪੀਓ", explanation: "ਠੰਢਾ ਪਾਣੀ ਪੀਣ ਨਾਲ ਮੂੰਹ ਦੀ ਜਲਣ ਸ਼ਾਂਤ ਹੁੰਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਡੇ ਡਾਕਟਰ ਨੇ ਇੱਕ ਨਵੀਂ ਦਵਾਈ ਲਿਖੀ ਹੈ ਪਰ ਤੁਸੀਂ ਨਹੀਂ ਸਮਝਦੇ ਕਿ ਇਸਨੂੰ ਕਿਵੇਂ ਲੈਣਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਅੰਦਾਜ਼ੇ ਨਾਲ ਖੁਰਾਕ ਲਓ", "ਫਾਰਮਾਸਿਸਟ ਜਾਂ ਡਾਕਟਰ ਨੂੰ ਤੁਹਾਨੂੰ ਸਮਝਾਉਣ ਲਈ ਕਹੋ", "ਦਵਾਈ ਨਾ ਲਓ", "ਇਸਨੂੰ ਸੋਸ਼ਲ ਮੀਡੀਆ 'ਤੇ ਲੱਭੋ"], correctAnswer: "ਫਾਰਮਾਸਿਸਟ ਜਾਂ ਡਾਕਟਰ ਨੂੰ ਤੁਹਾਨੂੰ ਸਮਝਾਉਣ ਲਈ ਕਹੋ", explanation: "ਦਵਾਈ ਬਾਰੇ ਜਾਣਨ ਲਈ ਡਾਕਟਰ ਜਾਂ ਦਵਾਈਆਂ ਵਾਲਾ ਹੀ ਸਹੀ ਮਾਹਰ ਹਨ।"),
            ExerciseItem(prompt: "ਤੁਹਾਡੇ ਤੋਂ ਗਲਤੀ ਨਾਲ ਆਪਣੇ ਦੋਸਤ ਦੇ ਚਿੱਟੇ ਕਾਰਪੇਟ 'ਤੇ ਲਾਲ ਵਾਈਨ ਡਿੱਗ ਜਾਂਦੀ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਦਾਗ ਦੇ ਉੱਪਰ ਕੁਰਸੀ ਰੱਖ ਦਿਓ", "ਮਾਫ਼ੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰੋ", "ਪਾਰਟੀ ਤੋਂ ਜਲਦੀ ਚਲੇ ਜਾਓ", "ਉਨ੍ਹਾਂ ਨੂੰ ਦੱਸੋ ਕਿ ਇਹ ਅੰਗੂਰਾਂ ਦਾ ਰਸ ਸੀ"], correctAnswer: "ਮਾਫ਼ੀ ਮੰਗੋ ਅਤੇ ਇਸਨੂੰ ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰੋ", explanation: "ਤੁਰੰਤ ਸਾਫ਼ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਨ ਨਾਲ ਦਾਗ ਪੱਕਾ ਹੋਣ ਤੋਂ ਬਚ ਸਕਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਆਪਣੇ ਧੂੰਏਂ ਵਾਲੇ ਅਲਾਰਮ ਤੋਂ ਹਰ ਮਿੰਟ ਵਿੱਚ ਇੱਕ ਛੋਟੀ ਜਿਹੀ ਬੀਪ ਦੀ ਆਵਾਜ਼ ਸੁਣਦੇ ਹੋ। ਇਸਦਾ ਕੀ ਅਰਥ ਹੈ?", options: ["ਉੱਥੇ ਅੱਗ ਲੱਗੀ ਹੈ", "ਬੈਟਰੀ ਕਮਜ਼ੋਰ ਹੈ ਅਤੇ ਇਸਨੂੰ ਬਦਲਣ ਦੀ ਲੋੜ ਹੈ", "ਅਲਾਰਮ ਟੁੱਟਿਆ ਹੋਇਆ ਹੈ", "ਕੁਝ ਨਹੀਂ"], correctAnswer: "ਬੈਟਰੀ ਕਮਜ਼ੋਰ ਹੈ ਅਤੇ ਇਸਨੂੰ ਬਦਲਣ ਦੀ ਲੋੜ ਹੈ", explanation: "ਛੋਟੀ ਬੀਪ ਦਾ ਮਤਲਬ ਬੈਟਰੀ ਘੱਟ ਹੋਣਾ ਹੁੰਦਾ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਸੀਂ ਗੱਡੀ ਚਲਾ ਰਹੇ ਹੋ ਅਤੇ ਦੇਖਦੇ ਹੋ ਕਿ ਤੁਹਾਡੇ ਪਿੱਛੇ ਫਲੈਸ਼ਿੰਗ ਲਾਈਟਾਂ ਵਾਲੀ ਇੱਕ ਐਮਰਜੈਂਸੀ ਗੱਡੀ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਇਸ ਤੋਂ ਅੱਗੇ ਰਹਿਣ ਲਈ ਤੇਜ਼ ਗੱਡੀ ਚਲਾਓ", "ਸੜਕ ਦੇ ਕਿਨਾਰੇ ਗੱਡੀ ਲਗਾਓ ਅਤੇ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਰੁਕੋ", "ਲਾਈਨ ਦੇ ਵਿਚਕਾਰ ਤੁਰੰਤ ਰੁਕ ਜਾਓ", "ਇਸਨੂੰ ਅਣਦੇਖਾ ਕਰੋ"], correctAnswer: "ਸੜਕ ਦੇ ਕਿਨਾਰੇ ਗੱਡੀ ਲਗਾਓ ਅਤੇ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਰੁਕੋ", explanation: "ਐਮਰਜੈਂਸੀ ਗੱਡੀ ਨੂੰ ਰਾਹ ਦੇਣ ਲਈ ਸੜਕ ਦੇ ਕਿਨਾਰੇ ਗੱਡੀ ਰੋਕਣਾ ਜ਼ਰੂਰੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਤੁਹਾਡੇ ਬੈਂਕ ਤੋਂ ਇੱਕ ਈਮੇਲ ਪ੍ਰਾਪਤ ਹੁੰਦੀ ਹੈ ਜਿਸ ਵਿੱਚ ਪਾਸਵਰਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਇੱਕ ਲਿੰਕ 'ਤੇ ਕਲਿੱਕ ਕਰਨ ਲਈ ਕਿਹਾ ਗਿਆ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਲਿੰਕ 'ਤੇ ਕਲਿੱਕ ਕਰੋ ਅਤੇ ਆਪਣਾ ਪਾਸਵਰਡ ਦਰਜ ਕਰੋ", "ਈਮੇਲ ਨੂੰ ਮਿਟਾ ਦਿਓ ਜਾਂ ਉਨ੍ਹਾਂ ਦੇ ਅਧਿਕਾਰਤ ਨੰਬਰ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਸਿੱਧਾ ਆਪਣੇ ਬੈਂਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ", "ਇਸਨੂੰ ਆਪਣੇ ਦੋਸਤਾਂ ਨੂੰ ਭੇਜੋ", "ਆਪਣੇ ਪਾਸਵਰਡ ਨਾਲ ਜਵਾਬ ਦਿਓ"], correctAnswer: "ਈਮੇਲ ਨੂੰ ਮਿਟਾ ਦਿਓ ਜਾਂ ਉਨ੍ਹਾਂ ਦੇ ਅਧਿਕਾਰਤ ਨੰਬਰ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਸਿੱਧਾ ਆਪਣੇ ਬੈਂਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ", explanation: "ਕੋਈ ਵੀ ਬੈਂਕ ਈਮੇਲ ਵਿੱਚ ਪਾਸਵਰਡ ਦਰਜ ਕਰਨ ਲਈ ਲਿੰਕ ਨਹੀਂ ਭੇਜਦਾ, ਇਹ ਇੱਕ ਧੋਖਾਧੜੀ ਹੋ ਸਕਦੀ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਨੂੰ ਫੁੱਟਪਾਥ 'ਤੇ ਪੈਸਿਆਂ ਅਤੇ ਇੱਕ ਆਈਡੀ ਕਾਰਡ ਵਾਲਾ ਬਟੂਆ ਮਿਲਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਪੈਸੇ ਰੱਖ ਲਓ ਅਤੇ ਬਟੂਏ ਨੂੰ ਸੁੱਟ ਦਿਓ", "ਇਸਨੂੰ ਪੁਲਿਸ ਹਵਾਲੇ ਕਰੋ ਜਾਂ ਆਈਡੀ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਮਾਲਕ ਨਾਲ ਸੰਪਰਕ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ", "ਇਸਨੂੰ ਫੁੱਟਪਾਥ 'ਤੇ ਹੀ ਛੱਡ ਦਿਓ", "ਇਸਨੂੰ ਕਿਸੇ ਅਣਜਾਣ ਵਿਅਕਤੀ ਨੂੰ ਦੇ ਦਿਓ"], correctAnswer: "ਇਸਨੂੰ ਪੁਲਿਸ ਹਵਾਲੇ ਕਰੋ ਜਾਂ ਆਈਡੀ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਮਾਲਕ ਨਾਲ ਸੰਪਰਕ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ", explanation: "ਬਟੂਆ ਪੁਲਿਸ ਨੂੰ ਸੌਂਪਣਾ ਜਾਂ ਮਾਲਕ ਲੱਭਣਾ ਹੀ ਸਭ ਤੋਂ ਸਹੀ ਅਤੇ ਨੈਤਿਕ ਕੰਮ ਹੈ।"),
            ExerciseItem(prompt: "ਤੁਹਾਡਾ ਧੂੰਏਂ ਵਾਲਾ ਅਲਾਰਮ ਲਗਾਤਾਰ ਉੱਚੀ ਆਵਾਜ਼ ਨਾਲ ਵੱਜਣ ਲੱਗਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਕੀ ਕਰਨਾ ਚਾਹੀਦਾ ਹੈ?", options: ["ਇਸਨੂੰ ਅਣਦੇਖਾ ਕਰੋ ਅਤੇ ਇਸਦੇ ਬੰਦ ਹੋਣ ਦੀ ਉਡੀਕ ਕਰੋ", "ਅੱਗ ਦੀ ਜਾਂਚ ਕਰੋ ਅਤੇ ਜੇ ਲੋੜ ਹੋਵੇ ਤਾਂ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਇਮਾਰਤ ਤੋਂ ਬਾਹਰ ਨਿਕਲੋ", "ਬੈਟਰੀਆਂ ਤੁਰੰਤ ਬਦਲੋ", "ਸੌਣ ਲਈ ਚਲੇ ਜਾਓ"], correctAnswer: "ਅੱਗ ਦੀ ਜਾਂਚ ਕਰੋ ਅਤੇ ਜੇ ਲੋੜ ਹੋਵੇ ਤਾਂ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਇਮਾਰਤ ਤੋਂ ਬਾਹਰ ਨਿਕਲੋ", explanation: "ਲਗਾਤਾਰ ਉੱਚੀ ਆਵਾਜ਼ ਅੱਗ ਦਾ ਸਿੱਧਾ ਸੰਕੇਤ ਹੈ, ਇਸ ਲਈ ਤੁਰੰਤ ਸੁਰੱਖਿਅਤ ਬਾਹਰ ਨਿਕਲਣਾ ਚਾਹੀਦਾ ਹੈ।")
        ]
    )

}
