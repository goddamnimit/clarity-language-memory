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
            ExerciseItem(prompt: "STOCKHOLM, OSLO, HELSINKI, BRUSSELS", options: ["STOCKHOLM", "OSLO", "HELSINKI", "BRUSSELS"], correctAnswer: "BRUSSELS", explanation: "Belgium, not a Scandinavian capital"),
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
            ExerciseItem(prompt: "Bite the ___", options: ["barrel", "bullet", "bandage", "bone"], correctAnswer: "bullet", explanation: ""),
            ExerciseItem(prompt: "A penny for your ___", options: ["pennies", "thoughts", "time", "words"], correctAnswer: "thoughts", explanation: ""),
            ExerciseItem(prompt: "Break a ___", options: ["window", "leg", "sweat", "promise"], correctAnswer: "leg", explanation: ""),
            ExerciseItem(prompt: "Every cloud has a silver ___", options: ["lining", "edge", "coin", "ring"], correctAnswer: "lining", explanation: ""),
            ExerciseItem(prompt: "The ball is in your ___", options: ["court", "yard", "corner", "hands"], correctAnswer: "court", explanation: ""),
            ExerciseItem(prompt: "Kill two birds with one ___", options: ["shot", "stone", "throw", "swing"], correctAnswer: "stone", explanation: ""),
            ExerciseItem(prompt: "Under the ___", options: ["bridge", "weather", "table", "wire"], correctAnswer: "weather", explanation: ""),
            ExerciseItem(prompt: "Piece of ___", options: ["cake", "pie", "work", "bread"], correctAnswer: "cake", explanation: ""),
            ExerciseItem(prompt: "Burning the midnight ___", options: ["oil", "lamp", "candle", "wood"], correctAnswer: "oil", explanation: ""),
            ExerciseItem(prompt: "Cry over spilled ___", options: ["juice", "milk", "water", "beer"], correctAnswer: "milk", explanation: ""),
            ExerciseItem(prompt: "The tip of the ___", options: ["spear", "iceberg", "needle", "hat"], correctAnswer: "iceberg", explanation: ""),
            ExerciseItem(prompt: "Back to square ___", options: ["zero", "one", "start", "base"], correctAnswer: "one", explanation: ""),
            ExerciseItem(prompt: "You can't judge a book by its ___", options: ["pages", "cover", "title", "size"], correctAnswer: "cover", explanation: ""),
            ExerciseItem(prompt: "Let sleeping dogs ___", options: ["sleep", "rest", "lay", "lie"], correctAnswer: "lie", explanation: ""),
            ExerciseItem(prompt: "Cost an arm and a ___", options: ["foot", "leg", "hand", "knee"], correctAnswer: "leg", explanation: ""),
            ExerciseItem(prompt: "Pretty as a ___", options: ["picture", "flower", "rose", "painting"], correctAnswer: "picture", explanation: ""),
            ExerciseItem(prompt: "Cool as a ___", options: ["breeze", "cucumber", "iceberg", "fan"], correctAnswer: "cucumber", explanation: ""),
            ExerciseItem(prompt: "Mad as a ___", options: ["bull", "hatter", "hornet", "hen"], correctAnswer: "hatter", explanation: ""),
            ExerciseItem(prompt: "Fought tooth and ___", options: ["claw", "bone", "fist", "nail"], correctAnswer: "nail", explanation: ""),
            ExerciseItem(prompt: "In sickness and in ___", options: ["health", "death", "wealth", "life"], correctAnswer: "health", explanation: "")
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
            ExerciseItem(prompt: "Word: ANGRY", options: ["happy", "furious", "calm", "sad"], correctAnswer: "furious", explanation: ""),
            ExerciseItem(prompt: "Word: COLD", options: ["warm", "freezing", "hot", "mild"], correctAnswer: "freezing", explanation: ""),
            ExerciseItem(prompt: "Word: BIG", options: ["tiny", "large", "short", "thin"], correctAnswer: "large", explanation: ""),
            ExerciseItem(prompt: "Word: TIRED", options: ["alert", "awake", "exhausted", "rested"], correctAnswer: "exhausted", explanation: ""),
            ExerciseItem(prompt: "Word: SCARED", options: ["brave", "terrified", "calm", "bold"], correctAnswer: "terrified", explanation: ""),
            ExerciseItem(prompt: "Word: KIND", options: ["mean", "cruel", "gentle", "rude"], correctAnswer: "gentle", explanation: ""),
            ExerciseItem(prompt: "Word: FAST", options: ["slow", "quick", "lazy", "dull"], correctAnswer: "quick", explanation: ""),
            ExerciseItem(prompt: "Word: OLD", options: ["young", "ancient", "new", "fresh"], correctAnswer: "ancient", explanation: ""),
            ExerciseItem(prompt: "Word: DIRTY", options: ["clean", "filthy", "neat", "tidy"], correctAnswer: "filthy", explanation: ""),
            ExerciseItem(prompt: "Word: BRIGHT", options: ["dim", "dark", "brilliant", "dull"], correctAnswer: "brilliant", explanation: "")
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
            ExerciseItem(prompt: "Word: MELANCHOLY", options: ["joyful", "sorrowful", "excited", "content"], correctAnswer: "sorrowful", explanation: ""),
            ExerciseItem(prompt: "Word: TRANQUIL", options: ["noisy", "agitated", "peaceful", "frantic"], correctAnswer: "peaceful", explanation: ""),
            ExerciseItem(prompt: "Word: COURAGEOUS", options: ["timid", "fearful", "brave", "cowardly"], correctAnswer: "brave", explanation: ""),
            ExerciseItem(prompt: "Word: PECULIAR", options: ["ordinary", "strange", "normal", "typical"], correctAnswer: "strange", explanation: ""),
            ExerciseItem(prompt: "Word: ABUNDANT", options: ["scarce", "plentiful", "rare", "limited"], correctAnswer: "plentiful", explanation: ""),
            ExerciseItem(prompt: "Word: FEEBLE", options: ["strong", "mighty", "weak", "robust"], correctAnswer: "weak", explanation: ""),
            ExerciseItem(prompt: "Word: VIVID", options: ["dull", "faint", "colorful", "pale"], correctAnswer: "colorful", explanation: ""),
            ExerciseItem(prompt: "Word: FRUGAL", options: ["wasteful", "thrifty", "lavish", "generous"], correctAnswer: "thrifty", explanation: ""),
            ExerciseItem(prompt: "Word: ELOQUENT", options: ["mumbling", "articulate", "quiet", "clumsy"], correctAnswer: "articulate", explanation: ""),
            ExerciseItem(prompt: "Word: TENACIOUS", options: ["weak", "quitting", "persistent", "flexible"], correctAnswer: "persistent", explanation: "")
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
            ExerciseItem(prompt: "Word: HOT", options: ["warm", "cold", "cool", "tepid"], correctAnswer: "cold", explanation: ""),
            ExerciseItem(prompt: "Word: HAPPY", options: ["glad", "joyful", "sad", "content"], correctAnswer: "sad", explanation: ""),
            ExerciseItem(prompt: "Word: BIG", options: ["huge", "large", "small", "tall"], correctAnswer: "small", explanation: ""),
            ExerciseItem(prompt: "Word: FAST", options: ["quick", "slow", "speedy", "rapid"], correctAnswer: "slow", explanation: ""),
            ExerciseItem(prompt: "Word: CLEAN", options: ["neat", "tidy", "dirty", "fresh"], correctAnswer: "dirty", explanation: ""),
            ExerciseItem(prompt: "Word: AWAKE", options: ["alert", "aware", "asleep", "active"], correctAnswer: "asleep", explanation: ""),
            ExerciseItem(prompt: "Word: LOUD", options: ["noisy", "quiet", "booming", "strong"], correctAnswer: "quiet", explanation: ""),
            ExerciseItem(prompt: "Word: OPEN", options: ["closed", "wide", "clear", "free"], correctAnswer: "closed", explanation: ""),
            ExerciseItem(prompt: "Word: FULL", options: ["packed", "empty", "loaded", "complete"], correctAnswer: "empty", explanation: ""),
            ExerciseItem(prompt: "Word: LOVE", options: ["adore", "like", "hate", "care"], correctAnswer: "hate", explanation: "")
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
            ExerciseItem(prompt: "She watered the ___.", options: ["flowers", "floors", "flour"], correctAnswer: "flowers", explanation: ""),
            ExerciseItem(prompt: "He put on his ___.", options: ["coat", "boat", "goat"], correctAnswer: "coat", explanation: ""),
            ExerciseItem(prompt: "I need a glass of ___.", options: ["water", "waiter", "wader"], correctAnswer: "water", explanation: ""),
            ExerciseItem(prompt: "She called her ___.", options: ["mother", "bother", "lather"], correctAnswer: "mother", explanation: ""),
            ExerciseItem(prompt: "The dog wagged its ___.", options: ["tale", "tail", "tall"], correctAnswer: "tail", explanation: ""),
            ExerciseItem(prompt: "He turned off the ___.", options: ["fight", "light", "night"], correctAnswer: "light", explanation: ""),
            ExerciseItem(prompt: "She baked a ___.", options: ["fake", "lake", "cake"], correctAnswer: "cake", explanation: ""),
            ExerciseItem(prompt: "The bird built a ___.", options: ["nest", "rest", "test"], correctAnswer: "nest", explanation: ""),
            ExerciseItem(prompt: "He read the ___.", options: ["newspaper", "wastepaper", "sandpaper"], correctAnswer: "newspaper", explanation: ""),
            ExerciseItem(prompt: "The children played in the ___.", options: ["park", "bark", "dark"], correctAnswer: "park", explanation: ""),
            ExerciseItem(prompt: "He fixed the ___.", options: ["sink", "link", "wink"], correctAnswer: "sink", explanation: ""),
            ExerciseItem(prompt: "The soup was too ___.", options: ["hot", "lot", "dot"], correctAnswer: "hot", explanation: ""),
            ExerciseItem(prompt: "She opened her ___.", options: ["umbrella", "vanilla", "gorilla"], correctAnswer: "umbrella", explanation: ""),
            ExerciseItem(prompt: "He paid the ___.", options: ["bill", "fill", "mill"], correctAnswer: "bill", explanation: ""),
            ExerciseItem(prompt: "The cat sat on the ___.", options: ["mat", "bat", "rat"], correctAnswer: "mat", explanation: ""),
            ExerciseItem(prompt: "She wore a warm ___.", options: ["sweater", "swatter", "scatter"], correctAnswer: "sweater", explanation: ""),
            ExerciseItem(prompt: "She planted a ___.", options: ["garden", "pardon", "warden"], correctAnswer: "garden", explanation: ""),
            ExerciseItem(prompt: "She wrote in her ___.", options: ["diary", "dairy", "daisy"], correctAnswer: "diary", explanation: ""),
            // Restoring the duplicate element exactly as requested
            ExerciseItem(prompt: "He paid the ___.", options: ["bill", "fill", "mill"], correctAnswer: "bill", explanation: ""),
            ExerciseItem(prompt: "The baby is ___.", options: ["sleeping", "sweeping", "seeping"], correctAnswer: "sleeping", explanation: "")
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
            ExerciseItem(prompt: "The children ran ___.", options: ["quick", "quickly", "quickful"], correctAnswer: "quickly", explanation: ""),
            ExerciseItem(prompt: "She is the ___ student in class.", options: ["smart", "smarter", "smartest"], correctAnswer: "smartest", explanation: ""),
            ExerciseItem(prompt: "He needs to ___ his essay.", options: ["rewrite", "unwrite", "dewrite"], correctAnswer: "rewrite", explanation: ""),
            ExerciseItem(prompt: "She felt ___ after the long hike.", options: ["tire", "tired", "tiresome"], correctAnswer: "tired", explanation: ""),
            ExerciseItem(prompt: "The door was ___.", options: ["lock", "locked", "locking"], correctAnswer: "locked", explanation: ""),
            ExerciseItem(prompt: "He acted very ___.", options: ["child", "childish", "childhood"], correctAnswer: "childish", explanation: ""),
            ExerciseItem(prompt: "She has two ___.", options: ["child", "childs", "children"], correctAnswer: "children", explanation: ""),
            ExerciseItem(prompt: "He spoke ___ about the accident.", options: ["careful", "carefully", "carefulness"], correctAnswer: "carefully", explanation: ""),
            ExerciseItem(prompt: "The cake was ___.", options: ["frost", "frosted", "frosting"], correctAnswer: "frosted", explanation: ""),
            ExerciseItem(prompt: "She is ___ than her brother.", options: ["tall", "taller", "tallest"], correctAnswer: "taller", explanation: ""),
            ExerciseItem(prompt: "I have ___ my keys again.", options: ["lose", "lost", "losing"], correctAnswer: "lost", explanation: ""),
            ExerciseItem(prompt: "The instructions were ___.", options: ["clear", "clearly", "unclear"], correctAnswer: "unclear", explanation: ""),
            ExerciseItem(prompt: "He ___ the window yesterday.", options: ["break", "broke", "broken"], correctAnswer: "broke", explanation: ""),
            ExerciseItem(prompt: "She is a very ___ person.", options: ["help", "helpful", "helping"], correctAnswer: "helpful", explanation: ""),
            ExerciseItem(prompt: "The movie was ___.", options: ["bore", "bored", "boring"], correctAnswer: "boring", explanation: ""),
            ExerciseItem(prompt: "He has three ___.", options: ["wife", "wifes", "wives"], correctAnswer: "wives", explanation: ""),
            ExerciseItem(prompt: "She sang ___.", options: ["beautiful", "beautifully", "beautified"], correctAnswer: "beautifully", explanation: ""),
            ExerciseItem(prompt: "Monica was ___ about the weather.", options: ["antihappy", "prehappy", "unhappy"], correctAnswer: "unhappy", explanation: ""),
            ExerciseItem(prompt: "I need to ___ the freezer.", options: ["unfrost", "defrost", "antifrost"], correctAnswer: "defrost", explanation: ""),
            ExerciseItem(prompt: "The package arrived ___.", options: ["damage", "damages", "damaged"], correctAnswer: "damaged", explanation: "")
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
            ExerciseItem(prompt: "[right / write] Please ___ your name. Turn ___ at the light.", options: ["right…right", "write…write", "write…right", "right…write"], correctAnswer: "write…right", explanation: ""),
            ExerciseItem(prompt: "[flower / flour] She used ___ to bake. She put a ___ in a vase.", options: ["flour…flour", "flour…flower", "flower…flour", "flower…flower"], correctAnswer: "flour…flower", explanation: ""),
            ExerciseItem(prompt: "[sun / son] Her ___ played in the ___.", options: ["son…sun", "sun…son", "son…son", "sun…sun"], correctAnswer: "son…sun", explanation: ""),
            ExerciseItem(prompt: "[bare / bear] The ___ had ___ feet.", options: ["bear…bear", "bare…bare", "bear…bare", "bare…bear"], correctAnswer: "bear…bare", explanation: ""),
            ExerciseItem(prompt: "[night / knight] The ___ rode through the dark ___.", options: ["night…night", "knight…knight", "knight…night", "night…knight"], correctAnswer: "knight…night", explanation: ""),
            ExerciseItem(prompt: "[blue / blew] The wind ___ her ___ hat away.", options: ["blue…blew", "blew…blue", "blew…blew", "blue…blue"], correctAnswer: "blew…blue", explanation: ""),
            ExerciseItem(prompt: "[week / weak] After a ___ of illness she felt very ___.", options: ["weak…week", "week…week", "week…weak", "weak…weak"], correctAnswer: "week…weak", explanation: ""),
            ExerciseItem(prompt: "[plain / plane] The ___ flew over the flat ___.", options: ["plain…plane", "plane…plain", "plane…plane", "plain…plain"], correctAnswer: "plane…plain", explanation: ""),
            ExerciseItem(prompt: "[dear / deer] Oh ___! A ___ is in the garden!", options: ["dear…dear", "dear…deer", "deer…dear", "deer…deer"], correctAnswer: "dear…deer", explanation: ""),
            ExerciseItem(prompt: "[break / brake] Step on the ___ before you ___ the car.", options: ["break…brake", "brake…break", "brake…brake", "break…break"], correctAnswer: "brake…break", explanation: "")
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
            ExerciseItem(prompt: "PUPPY is to DOG as KITTEN is to ___", options: ["Cat", "Dog", "Bird", "Fish"], correctAnswer: "Cat", explanation: ""),
            ExerciseItem(prompt: "COLD is to WINTER as HOT is to ___", options: ["Spring", "Fall", "Summer", "Rain"], correctAnswer: "Summer", explanation: ""),
            ExerciseItem(prompt: "EYE is to SEE as EAR is to ___", options: ["Touch", "Hear", "Smell", "Taste"], correctAnswer: "Hear", explanation: ""),
            ExerciseItem(prompt: "CHEF is to KITCHEN as DOCTOR is to ___", options: ["Library", "Hospital", "School", "Store"], correctAnswer: "Hospital", explanation: ""),
            ExerciseItem(prompt: "GLOVE is to HAND as SOCK is to ___", options: ["Arm", "Knee", "Foot", "Head"], correctAnswer: "Foot", explanation: ""),
            ExerciseItem(prompt: "HAPPY is to LAUGH as SAD is to ___", options: ["Smile", "Sleep", "Cry", "Run"], correctAnswer: "Cry", explanation: ""),
            ExerciseItem(prompt: "BIRD is to NEST as BEAR is to ___", options: ["Tree", "Cave", "Ocean", "Field"], correctAnswer: "Cave", explanation: ""),
            ExerciseItem(prompt: "PENCIL is to WRITE as BRUSH is to ___", options: ["Cut", "Paint", "Sweep", "Stir"], correctAnswer: "Paint", explanation: ""),
            ExerciseItem(prompt: "DAY is to NIGHT as BLACK is to ___", options: ["Dark", "Gray", "White", "Blue"], correctAnswer: "White", explanation: ""),
            ExerciseItem(prompt: "SOLDIER is to ARMY as SAILOR is to ___", options: ["Air Force", "Marines", "Navy", "Guard"], correctAnswer: "Navy", explanation: ""),
            ExerciseItem(prompt: "WHEEL is to CAR as WING is to ___", options: ["Boat", "Airplane", "Train", "Bus"], correctAnswer: "Airplane", explanation: ""),
            ExerciseItem(prompt: "TEACHER is to SCHOOL as JUDGE is to ___", options: ["Office", "Hospital", "Courtroom", "Store"], correctAnswer: "Courtroom", explanation: ""),
            ExerciseItem(prompt: "CATERPILLAR is to BUTTERFLY as TADPOLE is to ___", options: ["Fish", "Turtle", "Frog", "Lizard"], correctAnswer: "Frog", explanation: ""),
            ExerciseItem(prompt: "FOOD is to HUNGRY as WATER is to ___", options: ["Wet", "Thirsty", "Cold", "Full"], correctAnswer: "Thirsty", explanation: ""),
            ExerciseItem(prompt: "WOOL is to SHEEP as SILK is to ___", options: ["Spider", "Silkworm", "Cotton", "Linen"], correctAnswer: "Silkworm", explanation: "")
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
            ExerciseItem(prompt: "There are 7 days in a week.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Vanilla is the best flavor of ice cream.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "Water freezes at 32 degrees Fahrenheit.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Dogs are the best pets.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "A triangle has three sides.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "That TV show is funny.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "Abraham Lincoln was a United States President.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "The Earth is the best planet.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "There are 60 minutes in an hour.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Tulips are prettier than roses.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "Washington D.C. is the capital of the United States.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "It is rude to talk with your mouth full.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "There are 12 months in a year.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Getting up early is good for you.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "2 + 2 = 4.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "The ocean is made of salt water.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Gardening is a great hobby.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "Rocks are heavier than feathers of the same size.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "The United States has 50 states.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Pizza is the best food.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "Exercise is beneficial for your health.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Classical music is boring.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "Apples and oranges are both fruits.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(prompt: "Cats are easier to care for than dogs.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(prompt: "There are 24 hours in a day.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "")
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
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Washing Hands",
                options: ["Dry hands with a towel", "Apply soap to hands", "Turn on the water", "Scrub for 20 seconds", "Rinse off soap", "Wet your hands"],
                correctAnswer: "Turn on the water | Wet your hands | Apply soap to hands | Scrub for 20 seconds | Rinse off soap | Dry hands with a towel",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Making Coffee",
                options: ["Pour coffee into your cup", "Add coffee grounds to the filter", "Press the brew button", "Fill the water reservoir"],
                correctAnswer: "Fill the water reservoir | Add coffee grounds to the filter | Press the brew button | Pour coffee into your cup",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Making a Phone Call",
                options: ["Say hello", "Hang up", "Pick up the phone", "Dial the number", "Have your conversation"],
                correctAnswer: "Pick up the phone | Dial the number | Say hello | Have your conversation | Hang up",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Getting Dressed",
                options: ["Put on shoes", "Put on shirt", "Put on underwear", "Put on socks", "Put on pants"],
                correctAnswer: "Put on underwear | Put on shirt | Put on pants | Put on socks | Put on shoes",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Sweeping the Floor",
                options: ["Discard into the trash", "Get out the broom", "Scoop debris into dustpan", "Sweep debris into a pile"],
                correctAnswer: "Get out the broom | Sweep debris into a pile | Scoop debris into dustpan | Discard into the trash",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Ordering at a Restaurant",
                options: ["Eat your meal", "Tell the server your order", "Sit down", "Wait for your food", "Review the menu"],
                correctAnswer: "Sit down | Review the menu | Tell the server your order | Wait for your food | Eat your meal",
                explanation: ""
            ),
            ExerciseItem(
                prompt: "Baking Cookies",
                options: ["Let cookies cool", "Bake in the oven", "Preheat the oven", "Mix the ingredients", "Scoop dough onto the baking sheet"],
                correctAnswer: "Preheat the oven | Mix the ingredients | Scoop dough onto the baking sheet | Bake in the oven | Let cookies cool",
                explanation: ""
            )
        ]
    )
}

