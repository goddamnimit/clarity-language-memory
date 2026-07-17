import Foundation

/// Holds the static therapy content for the Language section of CogniLink.
struct LanguageExerciseData {
    
    /// The complete collection of all 12 Language exercises.
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
    
    // MARK: - Exercise 1: Category Cross-Out (Easy)
    private static let exercise1 = Exercise(
        title: "Category Cross-Out (Easy)",
        instructions: "Tap the word that does NOT belong in the group.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "APPLE, PEAR, CARROT, PLUM", options: ["APPLE", "PEAR", "CARROT", "PLUM"], correctAnswer: "CARROT", explanation: "Vegetable, not a fruit"),
            ExerciseItem(prompt: "CAR, BUS, SPOON, TRUCK", options: ["CAR", "BUS", "SPOON", "TRUCK"], correctAnswer: "SPOON", explanation: "Not a vehicle"),
            ExerciseItem(prompt: "GOLD, CAT, DOG, BIRD", options: ["GOLD", "CAT", "DOG", "BIRD"], correctAnswer: "GOLD", explanation: "A metal, not an animal"),
            ExerciseItem(prompt: "SHIRT, PANTS, FORK, HAT", options: ["SHIRT", "PANTS", "FORK", "HAT"], correctAnswer: "FORK", explanation: "Not clothing"),
            ExerciseItem(prompt: "CHAIR, TABLE, APPLE, BED", options: ["CHAIR", "TABLE", "APPLE", "BED"], correctAnswer: "APPLE", explanation: "Food, not furniture"),
            ExerciseItem(prompt: "HAMMER, WRENCH, PILLOW, DRILL", options: ["HAMMER", "WRENCH", "PILLOW", "DRILL"], correctAnswer: "PILLOW", explanation: "Not a tool"),
            ExerciseItem(prompt: "JANUARY, MARCH, FRIDAY, MAY", options: ["JANUARY", "MARCH", "FRIDAY", "MAY"], correctAnswer: "FRIDAY", explanation: "Day of the week, not a month"),
            ExerciseItem(prompt: "PARIS, LONDON, JUPITER, ROME", options: ["PARIS", "LONDON", "JUPITER", "ROME"], correctAnswer: "JUPITER", explanation: "A planet, not a city"),
            ExerciseItem(prompt: "DOG, CAT, TREE, MOUSE", options: ["DOG", "CAT", "TREE", "MOUSE"], correctAnswer: "TREE", explanation: "Not an animal"),
            ExerciseItem(prompt: "EYE, NOSE, CAR, EAR", options: ["EYE", "NOSE", "CAR", "EAR"], correctAnswer: "CAR", explanation: "Not a body part"),
            ExerciseItem(prompt: "MILK, JUICE, BREAD, WATER", options: ["MILK", "JUICE", "BREAD", "WATER"], correctAnswer: "BREAD", explanation: "Food, not a drink"),
            ExerciseItem(prompt: "SOFA, BED, STOVE, CHAIR", options: ["SOFA", "BED", "STOVE", "CHAIR"], correctAnswer: "STOVE", explanation: "Appliance, not seating or sleeping furniture"),
            ExerciseItem(prompt: "ROSE, TULIP, DAISY, CAR", options: ["ROSE", "TULIP", "DAISY", "CAR"], correctAnswer: "CAR", explanation: "Not a flower"),
            ExerciseItem(prompt: "PEN, PENCIL, CRAYON, FORK", options: ["PEN", "PENCIL", "CRAYON", "FORK"], correctAnswer: "FORK", explanation: "Not a writing tool"),
            ExerciseItem(prompt: "COUCH, RUG, LAMP, CHICKEN", options: ["COUCH", "RUG", "LAMP", "CHICKEN"], correctAnswer: "CHICKEN", explanation: "Not a household item"),
            ExerciseItem(prompt: "SUN, RAIN, WIND, SHIRT", options: ["SUN", "RAIN", "WIND", "SHIRT"], correctAnswer: "SHIRT", explanation: "Not a weather word"),
            ExerciseItem(prompt: "PLATE, BOWL, CUP, CAR", options: ["PLATE", "BOWL", "CUP", "CAR"], correctAnswer: "CAR", explanation: "Not a dish or container"),
            ExerciseItem(prompt: "BUS, TRAIN, BOAT, CAT", options: ["BUS", "TRAIN", "BOAT", "CAT"], correctAnswer: "CAT", explanation: "Not a vehicle"),
            ExerciseItem(prompt: "HAT, SOCKS, SHOES, POT", options: ["HAT", "SOCKS", "SHOES", "POT"], correctAnswer: "POT", explanation: "Cookware, not clothing"),
            ExerciseItem(prompt: "CAT, DOG, BIRD, TRUCK", options: ["CAT", "DOG", "BIRD", "TRUCK"], correctAnswer: "TRUCK", explanation: "Not an animal"),
            ExerciseItem(prompt: "MARCH, APRIL, TUESDAY, JUNE", options: ["MARCH", "APRIL", "TUESDAY", "JUNE"], correctAnswer: "TUESDAY", explanation: "Day of week, not a month"),
            ExerciseItem(prompt: "RED, BLUE, TABLE, GREEN", options: ["RED", "BLUE", "TABLE", "GREEN"], correctAnswer: "TABLE", explanation: "Not a color"),
            ExerciseItem(prompt: "KNIFE, FORK, SPOON, BED", options: ["KNIFE", "FORK", "SPOON", "BED"], correctAnswer: "BED", explanation: "Furniture, not cutlery"),
            ExerciseItem(prompt: "EAGLE, HAWK, OWL, FISH", options: ["EAGLE", "HAWK", "OWL", "FISH"], correctAnswer: "FISH", explanation: "Not a bird"),
            ExerciseItem(prompt: "PENNY, NICKEL, DIME, JACKET", options: ["PENNY", "NICKEL", "DIME", "JACKET"], correctAnswer: "JACKET", explanation: "Not currency"),
            ExerciseItem(prompt: "LION, BEAR, TIGER, PIZZA", options: ["LION", "BEAR", "TIGER", "PIZZA"], correctAnswer: "PIZZA", explanation: "Not an animal"),
            ExerciseItem(prompt: "APPLE, BANANA, CARROT, GRAPE", options: ["APPLE", "BANANA", "CARROT", "GRAPE"], correctAnswer: "CARROT", explanation: "Vegetable, not a fruit"),
            ExerciseItem(prompt: "CHAIR, TABLE, DESK, DOLPHIN", options: ["CHAIR", "TABLE", "DESK", "DOLPHIN"], correctAnswer: "DOLPHIN", explanation: "Sea animal, not furniture"),
            ExerciseItem(prompt: "ROBIN, EAGLE, SALMON, PARROT", options: ["ROBIN", "EAGLE", "SALMON", "PARROT"], correctAnswer: "SALMON", explanation: "Fish, not a bird"),
            ExerciseItem(prompt: "BASEBALL, TENNIS, CHESS, SOCCER", options: ["BASEBALL", "TENNIS", "CHESS", "SOCCER"], correctAnswer: "CHESS", explanation: "Board game, not a physical sport")
        ]
    )
    
    // MARK: - Exercise 2: Category Cross-Out (Hard)
    private static let exercise2 = Exercise(
        title: "Category Cross-Out (Hard)",
        instructions: "Tap the word that does NOT belong in the group.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "SIMILE, METAPHOR, HYPERBOLE, PARAGRAPH", options: ["SIMILE", "METAPHOR", "HYPERBOLE", "PARAGRAPH"], correctAnswer: "PARAGRAPH", explanation: "Text structure, not a figure of speech"),
            ExerciseItem(prompt: "FEMUR, TIBIA, RADIUS, CORNEA", options: ["FEMUR", "TIBIA", "RADIUS", "CORNEA"], correctAnswer: "CORNEA", explanation: "Part of the eye, not a bone"),
            ExerciseItem(prompt: "BEETHOVEN, MOZART, PICASSO, CHOPIN", options: ["BEETHOVEN", "MOZART", "PICASSO", "CHOPIN"], correctAnswer: "PICASSO", explanation: "A painter, not a composer"),
            ExerciseItem(prompt: "CARDIGAN, BLAZER, TURTLENECK, STILETTO", options: ["CARDIGAN", "BLAZER", "TURTLENECK", "STILETTO"], correctAnswer: "STILETTO", explanation: "A shoe, not upper-body clothing"),
            ExerciseItem(prompt: "THAMES, NILE, AMAZON, EVEREST", options: ["THAMES", "NILE", "AMAZON", "EVEREST"], correctAnswer: "EVEREST", explanation: "A mountain, not a river"),
            ExerciseItem(prompt: "MEMOIR, BIOGRAPHY, AUTOBIOGRAPHY, SONNET", options: ["MEMOIR", "BIOGRAPHY", "AUTOBIOGRAPHY", "SONNET"], correctAnswer: "SONNET", explanation: "A poem, not a life narrative"),
            ExerciseItem(prompt: "INSULIN, ADRENALINE, ESTROGEN, IBUPROFEN", options: ["INSULIN", "ADRENALINE", "ESTROGEN", "IBUPROFEN"], correctAnswer: "IBUPROFEN", explanation: "A manufactured drug, not a naturally occurring hormone"),
            ExerciseItem(prompt: "CELSIUS, FAHRENHEIT, KELVIN, DECIBEL", options: ["CELSIUS", "FAHRENHEIT", "KELVIN", "DECIBEL"], correctAnswer: "DECIBEL", explanation: "Measures sound, not temperature"),
            ExerciseItem(prompt: "JURY, JUDGE, BAILIFF, PLAINTIFF", options: ["JURY", "JUDGE", "BAILIFF", "PLAINTIFF"], correctAnswer: "PLAINTIFF", explanation: "A party in the case, not a court officer"),
            ExerciseItem(prompt: "SONNET, HAIKU, LIMERICK, PROSE", options: ["SONNET", "HAIKU", "LIMERICK", "PROSE"], correctAnswer: "PROSE", explanation: "Not a poetry form"),
            ExerciseItem(prompt: "SOPRANO, ALTO, TENOR, CONDUCTOR", options: ["SOPRANO", "ALTO", "TENOR", "CONDUCTOR"], correctAnswer: "CONDUCTOR", explanation: "Leads the orchestra, not a singing voice type"),
            ExerciseItem(prompt: "IMPRESSIONISM, SURREALISM, CUBISM, JAZZ", options: ["IMPRESSIONISM", "SURREALISM", "CUBISM", "JAZZ"], correctAnswer: "JAZZ", explanation: "A music genre, not a visual art movement"),
            ExerciseItem(prompt: "STOCKHOLM, OSLO, COPENHAGEN, BRUSSELS", options: ["STOCKHOLM", "OSLO", "COPENHAGEN", "BRUSSELS"], correctAnswer: "BRUSSELS", explanation: "Belgium, not a Scandinavian capital"),
            ExerciseItem(prompt: "RUBY, SAPPHIRE, EMERALD, GRANITE", options: ["RUBY", "SAPPHIRE", "EMERALD", "GRANITE"], correctAnswer: "GRANITE", explanation: "A rock, not a gemstone"),
            ExerciseItem(prompt: "APPENDIX, GALLBLADDER, PANCREAS, FEMUR", options: ["APPENDIX", "GALLBLADDER", "PANCREAS", "FEMUR"], correctAnswer: "FEMUR", explanation: "A bone, not an organ"),
            ExerciseItem(prompt: "CELLO, VIOLA, HARP, OBOE", options: ["CELLO", "VIOLA", "HARP", "OBOE"], correctAnswer: "OBOE", explanation: "A woodwind, not a string instrument"),
            ExerciseItem(prompt: "FRESCO, MOSAIC, LITHOGRAPH, SONATA", options: ["FRESCO", "MOSAIC", "LITHOGRAPH", "SONATA"], correctAnswer: "SONATA", explanation: "Music, not a visual art form"),
            ExerciseItem(prompt: "ARCHIPELAGO, FJORD, PLATEAU, DIALECT", options: ["ARCHIPELAGO", "FJORD", "PLATEAU", "DIALECT"], correctAnswer: "DIALECT", explanation: "Language variation, not a geographic feature"),
            ExerciseItem(prompt: "MAGNESIUM, CALCIUM, POTASSIUM, PETROLEUM", options: ["MAGNESIUM", "CALCIUM", "POTASSIUM", "PETROLEUM"], correctAnswer: "PETROLEUM", explanation: "A fossil fuel, not a mineral element"),
            ExerciseItem(prompt: "FLAMENCO, TANGO, WALTZ, OPERA", options: ["FLAMENCO", "TANGO", "WALTZ", "OPERA"], correctAnswer: "OPERA", explanation: "A vocal performance art, not a dance"),
            ExerciseItem(prompt: "ARTERY, VEIN, CAPILLARY, TENDON", options: ["ARTERY", "VEIN", "CAPILLARY", "TENDON"], correctAnswer: "TENDON", explanation: "Connects muscle to bone, not a blood vessel"),
            ExerciseItem(prompt: "TUNDRA, TAIGA, SAVANNA, DELTA", options: ["TUNDRA", "TAIGA", "SAVANNA", "DELTA"], correctAnswer: "DELTA", explanation: "A landform at a river mouth, not a biome"),
            ExerciseItem(prompt: "TYPHOON, CYCLONE, MONSOON, TREMOR", options: ["TYPHOON", "CYCLONE", "MONSOON", "TREMOR"], correctAnswer: "TREMOR", explanation: "Seismic movement, not a weather event"),
            ExerciseItem(prompt: "CARTILAGE, LIGAMENT, TENDON, NEURON", options: ["CARTILAGE", "LIGAMENT", "TENDON", "NEURON"], correctAnswer: "NEURON", explanation: "A nerve cell, not connective tissue")
        ]
    )
    
    // MARK: - Exercise 3: Phrase Completion
    private static let exercise3 = Exercise(
        title: "Phrase Completion",
        instructions: "Choose the word that correctly completes the common phrase.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Bite the ___", options: ["barrel", "bullet", "bandage", "bone"], correctAnswer: "bullet", explanation: "The phrase 'bite the bullet' is a common English idiom meaning to endure a painful or difficult situation with courage."),
            ExerciseItem(prompt: "A penny for your ___", options: ["pennies", "thoughts", "time", "words"], correctAnswer: "thoughts", explanation: "The phrase 'a penny for your thoughts' is an idiom used to ask someone what they are thinking about."),
            ExerciseItem(prompt: "Break a ___", options: ["window", "leg", "sweat", "promise"], correctAnswer: "leg", explanation: "The phrase 'break a leg' is a common theatrical idiom used to wish someone good luck, especially before a performance."),
            ExerciseItem(prompt: "Every cloud has a silver ___", options: ["lining", "edge", "coin", "ring"], correctAnswer: "lining", explanation: "The proverb 'every cloud has a silver lining' means that there is a positive aspect to every negative situation."),
            ExerciseItem(prompt: "The ball is in your ___", options: ["court", "yard", "corner", "hands"], correctAnswer: "court", explanation: "The idiom 'the ball is in your court' means it is your turn to make a decision or take action."),
            ExerciseItem(prompt: "Kill two birds with one ___", options: ["shot", "stone", "throw", "swing"], correctAnswer: "stone", explanation: "The idiom 'kill two birds with one stone' means to accomplish two different tasks with a single action."),
            ExerciseItem(prompt: "Under the ___", options: ["bridge", "weather", "table", "wire"], correctAnswer: "weather", explanation: "The phrase 'under the weather' is an idiom meaning to feel ill or unwell."),
            ExerciseItem(prompt: "Piece of ___", options: ["cake", "pie", "work", "bread"], correctAnswer: "cake", explanation: "The phrase 'a piece of cake' is an idiom used to describe a task that is very easy to accomplish."),
            ExerciseItem(prompt: "Burning the midnight ___", options: ["oil", "lamp", "candle", "wood"], correctAnswer: "oil", explanation: "The idiom 'burning the midnight oil' means to read, study, or work late into the night."),
            ExerciseItem(prompt: "Cry over spilled ___", options: ["juice", "milk", "water", "beer"], correctAnswer: "milk", explanation: "The idiom 'cry over spilled milk' means to express regret about something that has already happened and cannot be changed."),
            ExerciseItem(prompt: "The tip of the ___", options: ["spear", "iceberg", "needle", "hat"], correctAnswer: "iceberg", explanation: "The idiom 'the tip of the iceberg' refers to a small, visible part of a much larger and more complex problem or situation."),
            ExerciseItem(prompt: "Back to square ___", options: ["zero", "one", "start", "base"], correctAnswer: "one", explanation: "The idiom 'back to square one' means to be back at the starting point of a process because previous attempts failed."),
            ExerciseItem(prompt: "You can't judge a book by its ___", options: ["pages", "cover", "title", "size"], correctAnswer: "cover", explanation: "The proverb 'you can't judge a book by its cover' means you shouldn't judge the value or character of something or someone based purely on outward appearance."),
            ExerciseItem(prompt: "Let sleeping dogs ___", options: ["sleep", "rest", "lay", "lie"], correctAnswer: "lie", explanation: "The proverb 'let sleeping dogs lie' means to avoid interfering in a situation that is currently causing no problems, in order to not create trouble."),
            ExerciseItem(prompt: "Cost an arm and a ___", options: ["foot", "leg", "hand", "knee"], correctAnswer: "leg", explanation: "The idiom 'cost an arm and a leg' means that something is extremely expensive."),
            ExerciseItem(prompt: "Pretty as a ___", options: ["picture", "flower", "rose", "painting"], correctAnswer: "picture", explanation: "The simile 'pretty as a picture' is a common expression used to describe someone or something that is very attractive or visually appealing."),
            ExerciseItem(prompt: "Cool as a ___", options: ["breeze", "cucumber", "iceberg", "fan"], correctAnswer: "cucumber", explanation: "The simile 'cool as a cucumber' means to be very calm and untroubled, especially in a stressful situation."),
            ExerciseItem(prompt: "Mad as a ___", options: ["bull", "hatter", "fox", "hen"], correctAnswer: "hatter", explanation: "The simile 'mad as a hatter' is used to describe someone who is completely crazy or behaving very strangely."),
            ExerciseItem(prompt: "Fought tooth and ___", options: ["claw", "bone", "fist", "nail"], correctAnswer: "nail", explanation: "The idiom 'fight tooth and nail' means to fight very fiercely and intensely for something."),
            ExerciseItem(prompt: "In sickness and in ___", options: ["health", "death", "wealth", "life"], correctAnswer: "health", explanation: "The phrase 'in sickness and in health' is a traditional wedding vow promising to remain committed regardless of circumstances.")
        ]
    )
    
    // MARK: - Exercise 4: Synonyms (Easy)
    private static let exercise4 = Exercise(
        title: "Synonyms (Easy)",
        instructions: "Choose the word that means the SAME as the given word.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Word: ANGRY", options: ["happy", "furious", "calm", "sad"], correctAnswer: "furious", explanation: "The word 'furious' is a stronger synonym for 'angry', representing an extreme or intense level of anger."),
            ExerciseItem(prompt: "Word: COLD", options: ["warm", "freezing", "hot", "mild"], correctAnswer: "freezing", explanation: "The word 'freezing' is an extreme synonym for 'cold', denoting a temperature that is uncomfortably or dangerously low."),
            ExerciseItem(prompt: "Word: BIG", options: ["tiny", "large", "short", "thin"], correctAnswer: "large", explanation: "The word 'large' is a synonym for 'big', both describing something of considerable size."),
            ExerciseItem(prompt: "Word: TIRED", options: ["alert", "awake", "exhausted", "rested"], correctAnswer: "exhausted", explanation: "The word 'exhausted' is a synonym for 'tired', but it conveys a much deeper state of physical or mental fatigue."),
            ExerciseItem(prompt: "Word: SCARED", options: ["brave", "terrified", "calm", "bold"], correctAnswer: "terrified", explanation: "The word 'terrified' is an intensified synonym for 'scared', indicating a state of extreme fear."),
            ExerciseItem(prompt: "Word: KIND", options: ["mean", "cruel", "gentle", "rude"], correctAnswer: "gentle", explanation: "The word 'gentle' is a synonym for 'kind', focusing on a mild, tender, and considerate temperament."),
            ExerciseItem(prompt: "Word: FAST", options: ["slow", "quick", "lazy", "dull"], correctAnswer: "quick", explanation: "The word 'quick' is a synonym for 'fast', both describing rapid speed or motion."),
            ExerciseItem(prompt: "Word: OLD", options: ["young", "ancient", "new", "fresh"], correctAnswer: "ancient", explanation: "The word 'ancient' is a synonym for 'old', specifically referring to something that belongs to the very distant past."),
            ExerciseItem(prompt: "Word: DIRTY", options: ["clean", "filthy", "neat", "tidy"], correctAnswer: "filthy", explanation: "The word 'filthy' is a stronger synonym for 'dirty', implying that something is disgustingly covered with dirt or grime."),
            ExerciseItem(prompt: "Word: BRIGHT", options: ["dim", "dark", "brilliant", "dull"], correctAnswer: "brilliant", explanation: "The word 'brilliant' is a synonym for 'bright', emphasizing an exceptional level of light, color, or intelligence.")
        ]
    )
    
    // MARK: - Exercise 5: Synonyms (Hard)
    private static let exercise5 = Exercise(
        title: "Synonyms (Hard)",
        instructions: "Choose the word that means the SAME as the given word.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Word: MELANCHOLY", options: ["joyful", "sorrowful", "excited", "content"], correctAnswer: "sorrowful", explanation: "The word 'sorrowful' is a synonym for 'melancholy', as both describe a feeling of deep sadness or grief."),
            ExerciseItem(prompt: "Word: TRANQUIL", options: ["noisy", "agitated", "peaceful", "frantic"], correctAnswer: "peaceful", explanation: "The word 'peaceful' is a synonym for 'tranquil', both meaning free from disturbance, calm, and quiet."),
            ExerciseItem(prompt: "Word: COURAGEOUS", options: ["timid", "fearful", "brave", "cowardly"], correctAnswer: "brave", explanation: "The word 'brave' is a direct synonym for 'courageous', denoting a readiness to face and endure danger or pain."),
            ExerciseItem(prompt: "Word: PECULIAR", options: ["ordinary", "strange", "normal", "typical"], correctAnswer: "strange", explanation: "The word 'strange' is a synonym for 'peculiar', both describing something unusual, odd, or not previously experienced."),
            ExerciseItem(prompt: "Word: ABUNDANT", options: ["scarce", "plentiful", "rare", "limited"], correctAnswer: "plentiful", explanation: "The word 'plentiful' is a synonym for 'abundant', both indicating a large or ample quantity of something."),
            ExerciseItem(prompt: "Word: FEEBLE", options: ["strong", "mighty", "weak", "robust"], correctAnswer: "weak", explanation: "The word 'weak' is a synonym for 'feeble', describing a lack of physical strength, force, or effectiveness."),
            ExerciseItem(prompt: "Word: VIVID", options: ["dull", "faint", "colorful", "pale"], correctAnswer: "colorful", explanation: "The word 'colorful' is a synonym for 'vivid' in the context of imagery, describing something full of color, bright, or intensely distinct."),
            ExerciseItem(prompt: "Word: FRUGAL", options: ["wasteful", "thrifty", "lavish", "generous"], correctAnswer: "thrifty", explanation: "The word 'thrifty' is a synonym for 'frugal', both meaning using money and other resources carefully and not wastefully."),
            ExerciseItem(prompt: "Word: ELOQUENT", options: ["mumbling", "articulate", "quiet", "clumsy"], correctAnswer: "articulate", explanation: "The word 'articulate' is a synonym for 'eloquent', as both describe the ability to speak or write fluently and persuasively."),
            ExerciseItem(prompt: "Word: TENACIOUS", options: ["weak", "quitting", "persistent", "flexible"], correctAnswer: "persistent", explanation: "The word 'persistent' is a synonym for 'tenacious', both denoting a firm adherence to a course of action despite difficulties.")
        ]
    )
    
    // MARK: - Exercise 6: Antonyms (Easy)
    private static let exercise6 = Exercise(
        title: "Antonyms (Easy)",
        instructions: "Choose the word that means the OPPOSITE of the given word.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Word: HOT", options: ["warm", "cold", "cool", "tepid"], correctAnswer: "cold", explanation: "The word 'cold' is the direct antonym of 'hot', representing opposite extremes of temperature."),
            ExerciseItem(prompt: "Word: HAPPY", options: ["glad", "joyful", "sad", "content"], correctAnswer: "sad", explanation: "The word 'sad' is the antonym of 'happy', representing the opposite emotional state."),
            ExerciseItem(prompt: "Word: BIG", options: ["huge", "large", "small", "tall"], correctAnswer: "small", explanation: "The word 'small' is the antonym of 'big', representing opposite ends of the size spectrum."),
            ExerciseItem(prompt: "Word: FAST", options: ["quick", "slow", "speedy", "rapid"], correctAnswer: "slow", explanation: "The word 'slow' is the antonym of 'fast', representing opposite extremes of speed."),
            ExerciseItem(prompt: "Word: CLEAN", options: ["neat", "tidy", "dirty", "fresh"], correctAnswer: "dirty", explanation: "The word 'dirty' is the antonym of 'clean', representing the state of lacking cleanliness."),
            ExerciseItem(prompt: "Word: AWAKE", options: ["alert", "aware", "asleep", "active"], correctAnswer: "asleep", explanation: "The word 'asleep' is the antonym of 'awake', representing the opposite state of consciousness."),
            ExerciseItem(prompt: "Word: LOUD", options: ["noisy", "quiet", "booming", "strong"], correctAnswer: "quiet", explanation: "The word 'quiet' is the antonym of 'loud', representing the absence of loud volume or noise."),
            ExerciseItem(prompt: "Word: OPEN", options: ["closed", "wide", "clear", "free"], correctAnswer: "closed", explanation: "The word 'closed' is the antonym of 'open', representing the opposite physical state of an object like a door or container."),
            ExerciseItem(prompt: "Word: FULL", options: ["packed", "empty", "loaded", "complete"], correctAnswer: "empty", explanation: "The word 'empty' is the antonym of 'full', representing the complete lack of contents."),
            ExerciseItem(prompt: "Word: LOVE", options: ["adore", "like", "hate", "care"], correctAnswer: "hate", explanation: "The word 'hate' is the antonym of 'love', representing the polar opposite emotion of intense dislike.")
        ]
    )
    
    // MARK: - Exercise 7: Sentence Completion (Easy)
    private static let exercise7 = Exercise(
        title: "Sentence Completion (Easy)",
        instructions: "Choose the word that best completes the sentence.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "She watered the ___.", options: ["flowers", "floors", "flour"], correctAnswer: "flowers", explanation: "The word 'flowers' fits the context logically, as flowers are commonly watered to help them grow."),
            ExerciseItem(prompt: "He put on his ___.", options: ["coat", "boat", "goat"], correctAnswer: "coat", explanation: "The word 'coat' fits the sentence naturally, as putting on a coat is a common action before going outside."),
            ExerciseItem(prompt: "I need a glass of ___.", options: ["water", "waiter", "wader"], correctAnswer: "water", explanation: "The word 'water' is the most common and logical noun to follow 'a glass of' when expressing a need or thirst."),
            ExerciseItem(prompt: "She called her ___.", options: ["mother", "bother", "lather"], correctAnswer: "mother", explanation: "The word 'mother' completes the sentence meaningfully, indicating a common relationship and action of making a phone call."),
            ExerciseItem(prompt: "The dog wagged its ___.", options: ["tale", "tail", "tall"], correctAnswer: "tail", explanation: "The word 'tail' fits perfectly, as wagging its tail is a characteristic behavior of a dog expressing emotion."),
            ExerciseItem(prompt: "He turned off the ___.", options: ["fight", "light", "night"], correctAnswer: "light", explanation: "The word 'light' completes the sentence logically, as turning off a light is a standard action to darken a room."),
            ExerciseItem(prompt: "She baked a ___.", options: ["fake", "lake", "cake"], correctAnswer: "cake", explanation: "The word 'cake' is a standard object that is baked, making it a natural fit for this sentence."),
            ExerciseItem(prompt: "The bird built a ___.", options: ["nest", "rest", "test"], correctAnswer: "nest", explanation: "The word 'nest' is the correct completion, as birds are well known for building nests to lay eggs."),
            ExerciseItem(prompt: "He read the ___.", options: ["newspaper", "wastepaper", "sandpaper"], correctAnswer: "newspaper", explanation: "The word 'newspaper' fits contextually, as it is a common item that people read."),
            ExerciseItem(prompt: "The children played in the ___.", options: ["park", "bark", "dark"], correctAnswer: "park", explanation: "The word 'park' provides a logical and common setting for children to play."),
            ExerciseItem(prompt: "He fixed the ___.", options: ["sink", "link", "wink"], correctAnswer: "sink", explanation: "The word 'sink' fits well, representing a household item that frequently requires fixing."),
            ExerciseItem(prompt: "The soup was too ___.", options: ["hot", "lot", "dot"], correctAnswer: "hot", explanation: "The word 'hot' logically describes the temperature of soup, which is typically served warm."),
            ExerciseItem(prompt: "She opened her ___.", options: ["umbrella", "vanilla", "gorilla"], correctAnswer: "umbrella", explanation: "The word 'umbrella' fits the action of opening it, typically done to shield oneself from rain or sun."),
            ExerciseItem(prompt: "He paid the ___.", options: ["bill", "fill", "mill"], correctAnswer: "bill", explanation: "The word 'bill' completes the sentence logically, indicating the settlement of a financial obligation."),
            ExerciseItem(prompt: "The cat sat on the ___.", options: ["mat", "bat", "rat"], correctAnswer: "mat", explanation: "The word 'mat' completes the well-known phrase 'the cat sat on the mat', a classic example of basic English phonics."),
            ExerciseItem(prompt: "She wore a warm ___.", options: ["sweater", "swatter", "scatter"], correctAnswer: "sweater", explanation: "The word 'sweater' logically fits the adjective 'warm', describing a piece of clothing worn for comfort."),
            ExerciseItem(prompt: "She planted a ___.", options: ["garden", "pardon", "warden"], correctAnswer: "garden", explanation: "The word 'garden' fits the verb 'planted', representing a common outdoor activity."),
            ExerciseItem(prompt: "She wrote in her ___.", options: ["diary", "dairy", "daisy"], correctAnswer: "diary", explanation: "The word 'diary' is a natural completion, as writing in a diary is a common personal activity."),
            ExerciseItem(prompt: "She locked the ___.", options: ["door", "more", "core"], correctAnswer: "door", explanation: "The word 'door' completes the sentence logically, describing a common household item that is often locked for security."),
            ExerciseItem(prompt: "The baby is ___.", options: ["sleeping", "sweeping", "seeping"], correctAnswer: "sleeping", explanation: "The word 'sleeping' forms the present continuous tense 'is sleeping', which commonly describes a baby's state.")
        ]
    )
    
    // MARK: - Exercise 8: Morphology
    private static let exercise8 = Exercise(
        title: "Morphology",
        instructions: "Choose the correctly formed word to complete the sentence.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "The children ran ___.", options: ["quick", "quickly", "quickful"], correctAnswer: "quickly", explanation: "The adverb 'quickly' modifies the verb 'ran', describing the speed at which the children were moving."),
            ExerciseItem(prompt: "She is the ___ student in class.", options: ["smart", "smarter", "smartest"], correctAnswer: "smartest", explanation: "The superlative adjective 'smartest' fits grammatically after 'the', indicating she is the most intelligent student in the class."),
            ExerciseItem(prompt: "He needs to ___ his essay.", options: ["rewrite", "unwrite", "dewrite"], correctAnswer: "rewrite", explanation: "The verb 'rewrite' fits logically, indicating that his essay requires revisions or to be written again."),
            ExerciseItem(prompt: "She felt ___ after the long hike.", options: ["tire", "tired", "tiresome"], correctAnswer: "tired", explanation: "The adjective 'tired' logically describes the physical state one would feel after a demanding activity like a long hike."),
            ExerciseItem(prompt: "The door was ___.", options: ["lock", "locked", "locking"], correctAnswer: "locked", explanation: "The adjective 'locked' appropriately describes the state of a door that cannot be opened."),
            ExerciseItem(prompt: "He acted very ___.", options: ["child", "childish", "childhood"], correctAnswer: "childish", explanation: "The adjective 'childish' acts as a modifier for his behavior, describing it as immature or silly."),
            ExerciseItem(prompt: "She has two ___.", options: ["child", "childs", "children"], correctAnswer: "children", explanation: "The plural noun 'children' is the grammatically correct word following the number 'two'."),
            ExerciseItem(prompt: "He spoke ___ about the accident.", options: ["careful", "carefully", "carefulness"], correctAnswer: "carefully", explanation: "The adverb 'carefully' modifies the verb 'spoke', describing the manner in which he discussed the sensitive topic."),
            ExerciseItem(prompt: "The cake was ___.", options: ["frost", "frosted", "frosting"], correctAnswer: "frosted", explanation: "The adjective 'frosted' appropriately describes a cake that has been covered with icing or frosting."),
            ExerciseItem(prompt: "She is ___ than her brother.", options: ["tall", "taller", "tallest"], correctAnswer: "taller", explanation: "The comparative adjective 'taller' is correct here, used with 'than' to compare her height to her brother's."),
            ExerciseItem(prompt: "I have ___ my keys again.", options: ["lose", "lost", "losing"], correctAnswer: "lost", explanation: "The past participle 'lost' is used with 'have' to form the present perfect tense, indicating the action of misplacing the keys."),
            ExerciseItem(prompt: "The instructions were ___.", options: ["unclear", "misclear", "declear"], correctAnswer: "unclear", explanation: "The prefix 'un-' correctly forms the negative adjective 'unclear'; 'misclear' and 'declear' are not real English words."),
            ExerciseItem(prompt: "He ___ the window yesterday.", options: ["break", "broke", "broken"], correctAnswer: "broke", explanation: "The past tense verb 'broke' is grammatically required here, referring to an action completed in the past ('yesterday')."),
            ExerciseItem(prompt: "She is a very ___ person.", options: ["help", "helpful", "helping"], correctAnswer: "helpful", explanation: "The adjective 'helpful' logically describes a person's character traits, indicating someone who is willing to assist others."),
            ExerciseItem(prompt: "The movie was ___.", options: ["bore", "bored", "boring"], correctAnswer: "boring", explanation: "The adjective 'boring' describes the movie as uninteresting or dull."),
            ExerciseItem(prompt: "He has three ___.", options: ["wife", "wifes", "wives"], correctAnswer: "wives", explanation: "The plural noun 'wives' follows 'three', correctly pluralizing the word 'wife'."),
            ExerciseItem(prompt: "She sang ___.", options: ["beautiful", "beautifully", "beautified"], correctAnswer: "beautifully", explanation: "The adverb 'beautifully' modifies the verb 'sang', describing the pleasing quality of her voice."),
            ExerciseItem(prompt: "Monica was ___ about the weather.", options: ["antihappy", "prehappy", "unhappy"], correctAnswer: "unhappy", explanation: "The adjective 'unhappy' fits logically, describing Monica's negative feelings toward the weather."),
            ExerciseItem(prompt: "I need to ___ the freezer.", options: ["unfrost", "defrost", "antifrost"], correctAnswer: "defrost", explanation: "The verb 'defrost' fits perfectly, describing the action needed to remove ice buildup from a freezer."),
            ExerciseItem(prompt: "The package arrived ___.", options: ["damage", "damages", "damaged"], correctAnswer: "damaged", explanation: "The adjective 'damaged' describes the state of the package upon arrival, meaning it was harmed or broken.")
        ]
    )
    
    // MARK: - Exercise 9: Homonyms (Easy)
    private static let exercise9 = Exercise(
        title: "Homonyms (Easy)",
        instructions: "The word pair is shown above the sentence. Choose the correct option to fill BOTH blanks in order.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "[right / write] Please ___ your name. Turn ___ at the light.", options: ["right…right", "write…write", "write…right", "right…write"], correctAnswer: "write…right", explanation: "The homophones 'write' and 'right' sound the same but have different meanings. 'Write' is a verb meaning to mark letters, while 'right' indicates a direction."),
            ExerciseItem(prompt: "[flower / flour] She used ___ to bake. She put a ___ in a vase.", options: ["flour…flour", "flour…flower", "flower…flour", "flower…flower"], correctAnswer: "flour…flower", explanation: "The homophones 'flour' and 'flower' sound identical. 'Flour' is an ingredient used in baking, whereas a 'flower' is the blooming part of a plant."),
            ExerciseItem(prompt: "[sun / son] Her ___ played in the ___.", options: ["son…sun", "sun…son", "son…son", "sun…sun"], correctAnswer: "son…sun", explanation: "The homophones 'son' and 'sun' share the same pronunciation. A 'son' is a male child, while the 'sun' is the star around which the earth orbits."),
            ExerciseItem(prompt: "[bare / bear] The ___ had ___ feet.", options: ["bear…bear", "bare…bare", "bear…bare", "bare…bear"], correctAnswer: "bear…bare", explanation: "The homophones 'bear' and 'bare' sound the same. A 'bear' is an animal, while 'bare' means uncovered or naked."),
            ExerciseItem(prompt: "[night / knight] The ___ rode through the dark ___.", options: ["night…night", "knight…knight", "knight…night", "night…knight"], correctAnswer: "knight…night", explanation: "The homophones 'knight' and 'night' have the same sound. A 'knight' is a historical warrior, whereas 'night' is the period of darkness."),
            ExerciseItem(prompt: "[blue / blew] The wind ___ her ___ hat away.", options: ["blue…blew", "blew…blue", "blew…blew", "blue…blue"], correctAnswer: "blew…blue", explanation: "The homophones 'blew' and 'blue' sound alike. 'Blew' is the past tense of blow, and 'blue' is a color."),
            ExerciseItem(prompt: "[week / weak] After a ___ of illness she felt very ___.", options: ["weak…week", "week…week", "week…weak", "weak…weak"], correctAnswer: "week…weak", explanation: "The homophones 'week' and 'weak' are pronounced exactly the same. A 'week' is a period of seven days, while 'weak' means lacking physical strength."),
            ExerciseItem(prompt: "[plain / plane] The ___ flew over the flat ___.", options: ["plain…plane", "plane…plain", "plane…plane", "plain…plain"], correctAnswer: "plane…plain", explanation: "The homophones 'plane' and 'plain' share the same pronunciation. A 'plane' is an aircraft, while a 'plain' is a large area of flat land."),
            ExerciseItem(prompt: "[dear / deer] Oh ___! A ___ is in the garden!", options: ["dear…dear", "dear…deer", "deer…dear", "deer…deer"], correctAnswer: "dear…deer", explanation: "The homophones 'dear' and 'deer' sound identical. 'Dear' is an expression of surprise or affection, while a 'deer' is a hooved mammal."),
            ExerciseItem(prompt: "[break / brake] Step on the ___ before you ___ the car.", options: ["break…brake", "brake…break", "brake…brake", "break…break"], correctAnswer: "brake…break", explanation: "'Brake' is a device for slowing or stopping a moving vehicle, while 'break' means to separate into pieces or interrupt.")
        ]
    )
    
    // MARK: - Exercise 10: Analogies
    private static let exercise10 = Exercise(
        title: "Analogies",
        instructions: "Choose the word that best completes the analogy.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "PUPPY is to DOG as KITTEN is to ___", options: ["Cat", "Dog", "Bird", "Fish"], correctAnswer: "Cat", explanation: "A puppy is a young dog, just as a kitten is a young cat. The relationship is young animal to adult animal."),
            ExerciseItem(prompt: "COLD is to WINTER as HOT is to ___", options: ["Spring", "Fall", "Summer", "Rain"], correctAnswer: "Summer", explanation: "Cold is the typical temperature in winter, just as hot is the typical temperature in summer. The relationship is characteristic temperature to season."),
            ExerciseItem(prompt: "EYE is to SEE as EAR is to ___", options: ["Touch", "Hear", "Smell", "Taste"], correctAnswer: "Hear", explanation: "The eye is the organ used to see, just as the ear is the organ used to hear. The relationship is sensory organ to its primary function."),
            ExerciseItem(prompt: "CHEF is to KITCHEN as DOCTOR is to ___", options: ["Library", "Hospital", "School", "Store"], correctAnswer: "Hospital", explanation: "A chef primarily works in a kitchen, just as a doctor primarily works in a hospital. The relationship is profession to typical workplace."),
            ExerciseItem(prompt: "GLOVE is to HAND as SOCK is to ___", options: ["Arm", "Knee", "Foot", "Head"], correctAnswer: "Foot", explanation: "A glove is a piece of clothing worn on the hand, just as a sock is a piece of clothing worn on the foot. The relationship is clothing item to the body part it covers."),
            ExerciseItem(prompt: "HAPPY is to LAUGH as SAD is to ___", options: ["Smile", "Sleep", "Cry", "Run"], correctAnswer: "Cry", explanation: "People typically laugh when they are happy, just as they cry when they are sad. The relationship is emotion to its associated physical expression."),
            ExerciseItem(prompt: "BIRD is to NEST as BEAR is to ___", options: ["Tree", "Cave", "Ocean", "Field"], correctAnswer: "Cave", explanation: "A bird typically lives in a nest, just as a bear typically lives in a cave. The relationship is animal to its typical dwelling or shelter."),
            ExerciseItem(prompt: "PENCIL is to WRITE as BRUSH is to ___", options: ["Cut", "Paint", "Sweep", "Stir"], correctAnswer: "Paint", explanation: "A pencil is a tool used to write, just as a brush is a tool used to paint. The relationship is tool to its primary action."),
            ExerciseItem(prompt: "DAY is to NIGHT as BLACK is to ___", options: ["Dark", "Gray", "White", "Blue"], correctAnswer: "White", explanation: "Day is the opposite of night, just as black is the opposite of white. The relationship is opposite concepts or colors."),
            ExerciseItem(prompt: "SOLDIER is to ARMY as SAILOR is to ___", options: ["Air Force", "Marines", "Navy", "Guard"], correctAnswer: "Navy", explanation: "A soldier is a member of the army, just as a sailor is a member of the navy. The relationship is service member to their respective military branch."),
            ExerciseItem(prompt: "WHEEL is to CAR as WING is to ___", options: ["Boat", "Airplane", "Train", "Bus"], correctAnswer: "Airplane", explanation: "A wheel is a crucial moving part of a car, just as a wing is a crucial part of an airplane for flight. The relationship is essential component to the vehicle."),
            ExerciseItem(prompt: "TEACHER is to SCHOOL as JUDGE is to ___", options: ["Office", "Hospital", "Courtroom", "Store"], correctAnswer: "Courtroom", explanation: "A teacher primarily works in a school, just as a judge primarily works in a courtroom. The relationship is profession to primary workplace."),
            ExerciseItem(prompt: "CATERPILLAR is to BUTTERFLY as TADPOLE is to ___", options: ["Fish", "Turtle", "Frog", "Lizard"], correctAnswer: "Frog", explanation: "A caterpillar transforms into a butterfly, just as a tadpole transforms into a frog. The relationship is juvenile life stage to adult life stage."),
            ExerciseItem(prompt: "FOOD is to HUNGRY as WATER is to ___", options: ["Wet", "Thirsty", "Cold", "Full"], correctAnswer: "Thirsty", explanation: "Food satisfies being hungry, just as water satisfies being thirsty. The relationship is resource to the physical need it fulfills."),
            ExerciseItem(prompt: "WOOL is to SHEEP as SILK is to ___", options: ["Spider", "Silkworm", "Cotton", "Linen"], correctAnswer: "Silkworm", explanation: "Wool is a material produced by a sheep, just as silk is a material produced by a silkworm. The relationship is material to the animal that produces it.")
        ]
    )
    
    // MARK: - Exercise 11: Fact or Opinion
    private static let exercise11 = Exercise(
        title: "Fact or Opinion",
        instructions: "Decide: is this statement a FACT or an OPINION?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "There are 7 days in a week.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because the standard calendar globally defines a week as consisting of exactly 7 days, which is objectively verifiable."),
            ExerciseItem(prompt: "Vanilla is the best flavor of ice cream.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because what constitutes the 'best' flavor is subjective and depends on individual personal preference."),
            ExerciseItem(prompt: "Water freezes at 32 degrees Fahrenheit.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because it is a scientifically proven and measurable physical property of water at standard atmospheric pressure."),
            ExerciseItem(prompt: "Dogs are the best pets.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because the 'best' pet varies from person to person based on their lifestyle and personal preferences."),
            ExerciseItem(prompt: "A triangle has three sides.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because a triangle is geometrically defined as a polygon with exactly three edges and three vertices."),
            ExerciseItem(prompt: "That TV show is funny.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because humor is subjective; what one person finds funny, another person might not."),
            ExerciseItem(prompt: "Abraham Lincoln was a United States President.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because it is historically documented and verifiable that Abraham Lincoln served as the 16th President of the United States."),
            ExerciseItem(prompt: "The Earth is the best planet.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because 'best' is subjective and there is no universal scientific metric to objectively rank planets in terms of greatness."),
            ExerciseItem(prompt: "There are 60 minutes in an hour.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because the standard system of time measurement defines one hour as exactly 60 minutes."),
            ExerciseItem(prompt: "Tulips are prettier than roses.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because beauty is subjective and personal preference dictates which flower one finds prettier."),
            ExerciseItem(prompt: "Washington D.C. is the capital of the United States.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because Washington D.C. is officially designated as the capital city of the United States."),
            ExerciseItem(prompt: "It is rude to talk with your mouth full.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is generally considered an opinion because social etiquette rules, like what is considered 'rude', are subjective and cultural rather than universal facts."),
            ExerciseItem(prompt: "There are 12 months in a year.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because the globally adopted Gregorian calendar divides a year into exactly 12 months."),
            ExerciseItem(prompt: "Getting up early is good for you.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because whether waking up early is 'good' depends on individual biological rhythms, lifestyle, and personal preferences."),
            ExerciseItem(prompt: "2 + 2 = 4.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because it is a fundamental and universally true mathematical equation."),
            ExerciseItem(prompt: "The ocean is made of salt water.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because scientific analysis confirms that the Earth's oceans are primarily composed of water containing dissolved salts."),
            ExerciseItem(prompt: "Gardening is a great hobby.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because whether a hobby is 'great' is subjective and depends entirely on an individual's personal interests."),
            ExerciseItem(prompt: "Rocks are heavier than feathers of the same size.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because rocks are denser than feathers, meaning they have more mass per unit volume."),
            ExerciseItem(prompt: "The United States has 50 states.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because the United States is officially composed of exactly 50 individual states."),
            ExerciseItem(prompt: "Pizza is the best food.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because taste in food is subjective, and 'best' is based on personal preference."),
            ExerciseItem(prompt: "Exercise is beneficial for your health.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because numerous scientific and medical studies have consistently proven that physical exercise improves bodily health."),
            ExerciseItem(prompt: "Classical music is boring.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because musical taste is subjective, and what one person finds boring, another may find fascinating."),
            ExerciseItem(prompt: "Apples and oranges are both fruits.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because both apples and oranges fit the botanical definition of a fruit."),
            ExerciseItem(prompt: "Cats are easier to care for than dogs.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "This is an opinion because what is considered 'easier' depends on an individual's lifestyle, expectations, and the specific needs of the animal."),
            ExerciseItem(prompt: "There are 24 hours in a day.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "This is a fact because a standard day is scientifically defined based on the Earth's rotation, which takes approximately 24 hours.")
        ]
    )
    
    // MARK: - Exercise 12: Sequencing Steps
    private static let exercise12 = Exercise(
        title: "Sequencing Steps",
        instructions: "The steps are shown in the WRONG order. Number them 1, 2, 3... to put them in the correct sequence.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                prompt: "Making Toast",
                options: ["Butter the toast", "Put bread in the toaster", "Remove from toaster", "Eat"],
                correctAnswer: "Put bread in the toaster | Remove from toaster | Butter the toast | Eat",
                explanation: "This is the logical sequence of making toast: first you toast the bread, then you take it out, add butter, and finally eat it."
            ),
            ExerciseItem(
                prompt: "Washing Hands",
                options: ["Dry hands with a towel", "Apply soap to hands", "Turn on the water", "Scrub for 20 seconds", "Rinse off soap", "Wet your hands"],
                correctAnswer: "Turn on the water | Wet your hands | Apply soap to hands | Scrub for 20 seconds | Rinse off soap | Dry hands with a towel",
                explanation: "This follows standard hygiene guidelines: start by wetting hands, apply soap, scrub thoroughly, rinse, and finish by drying."
            ),
            ExerciseItem(
                prompt: "Making Coffee",
                options: ["Pour coffee into your cup", "Add coffee grounds to the filter", "Press the brew button", "Fill the water reservoir"],
                correctAnswer: "Fill the water reservoir | Add coffee grounds to the filter | Press the brew button | Pour coffee into your cup",
                explanation: "This reflects the mechanical process of using a standard coffee maker: prepare water and grounds, brew, and then serve."
            ),
            ExerciseItem(
                prompt: "Making a Phone Call",
                options: ["Say hello", "Hang up", "Pick up the phone", "Dial the number", "Have your conversation"],
                correctAnswer: "Pick up the phone | Dial the number | Say hello | Have your conversation | Hang up",
                explanation: "This outlines the logical steps of a phone call: initiate the connection, greet, communicate, and end the call."
            ),
            ExerciseItem(
                prompt: "Getting Dressed",
                options: ["Put on shoes", "Put on shirt", "Put on underwear", "Put on socks", "Put on pants"],
                correctAnswer: "Put on underwear | Put on shirt | Put on pants | Put on socks | Put on shoes",
                explanation: "This sequence follows the practical order of getting dressed, starting from base layers out to outerwear and footwear."
            ),
            ExerciseItem(
                prompt: "Sweeping the Floor",
                options: ["Discard into the trash", "Get out the broom", "Scoop debris into dustpan", "Sweep debris into a pile"],
                correctAnswer: "Get out the broom | Sweep debris into a pile | Scoop debris into dustpan | Discard into the trash",
                explanation: "This is the logical physical process of sweeping: gathering dirt, collecting it, and then disposing of it."
            ),
            ExerciseItem(
                prompt: "Ordering at a Restaurant",
                options: ["Eat your meal", "Tell the server your order", "Sit down", "Wait for your food", "Review the menu"],
                correctAnswer: "Sit down | Review the menu | Tell the server your order | Wait for your food | Eat your meal",
                explanation: "This details the chronological steps of dining in a restaurant, from arriving and deciding what to eat to ordering and dining."
            ),
            ExerciseItem(
                prompt: "Baking Cookies",
                options: ["Let cookies cool", "Bake in the oven", "Preheat the oven", "Mix the ingredients", "Scoop dough onto the baking sheet"],
                correctAnswer: "Preheat the oven | Mix the ingredients | Scoop dough onto the baking sheet | Bake in the oven | Let cookies cool",
                explanation: "This follows a standard baking recipe sequence: preparation, mixing, portioning, baking, and cooling."
            )
        ]
    )
}

