import Foundation

/// Holds the 14 new English exercises sourced from the New Exercises (6/27) content library.
/// Covers the Language, Cognition, and Functional Skills sections.
/// Not yet wired into AppLanguage.
struct EnglishNewExercisesData {

    /// The complete collection of all 14 new English exercises.
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

    // MARK: - Exercise 1: Rhyming Pairs
    private static let exercise1 = Exercise(
        title: "Rhyming Pairs",
        instructions: "Choose the word that rhymes with the given word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Which word rhymes with CAT?", options: ["Dog", "Hat", "Sun", "Tree"], correctAnswer: "Hat", explanation: "Cat and Hat share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with BLUE?", options: ["Red", "Shoe", "Green", "Fork"], correctAnswer: "Shoe", explanation: "Blue and Shoe share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with DAY?", options: ["Play", "Run", "Night", "Walk"], correctAnswer: "Play", explanation: "Day and Play share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with LIGHT?", options: ["Dark", "Bright", "Night", "Heavy"], correctAnswer: "Night", explanation: "Light and Night share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with RING?", options: ["Sing", "Song", "Gold", "Bell"], correctAnswer: "Sing", explanation: "Ring and Sing share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with BOAT?", options: ["Water", "Car", "Coat", "Ship"], correctAnswer: "Coat", explanation: "Boat and Coat share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with CAKE?", options: ["Bake", "Sweet", "Pie", "Fork"], correctAnswer: "Bake", explanation: "Cake and Bake share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with COLD?", options: ["Warm", "Hot", "Gold", "Ice"], correctAnswer: "Gold", explanation: "Cold and Gold share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with HOUSE?", options: ["Mouse", "Home", "Door", "Roof"], correctAnswer: "Mouse", explanation: "House and Mouse share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with TREE?", options: ["Leaf", "Free", "Grass", "Branch"], correctAnswer: "Free", explanation: "Tree and Free share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with RAIN?", options: ["Train", "Wet", "Drop", "Cloud"], correctAnswer: "Train", explanation: "Rain and Train share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with STAR?", options: ["Moon", "Sun", "Car", "Sky"], correctAnswer: "Car", explanation: "Star and Car share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with BOOK?", options: ["Read", "Look", "Page", "Desk"], correctAnswer: "Look", explanation: "Book and Look share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with GAME?", options: ["Play", "Name", "Win", "Fun"], correctAnswer: "Name", explanation: "Game and Name share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with SAND?", options: ["Beach", "Hand", "Sea", "Shell"], correctAnswer: "Hand", explanation: "Sand and Hand share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with BELL?", options: ["Ring", "Shell", "Clock", "Chime"], correctAnswer: "Shell", explanation: "Bell and Shell share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with CHAIR?", options: ["Sit", "Table", "Hair", "Desk"], correctAnswer: "Hair", explanation: "Chair and Hair share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with MOON?", options: ["Spoon", "Star", "Night", "Sun"], correctAnswer: "Spoon", explanation: "Moon and Spoon share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with FACE?", options: ["Head", "Eyes", "Race", "Smile"], correctAnswer: "Race", explanation: "Face and Race share the same ending sound."),
            ExerciseItem(prompt: "Which word rhymes with FISH?", options: ["Water", "Dish", "Swim", "Hook"], correctAnswer: "Dish", explanation: "Fish and Dish share the same ending sound.")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "Word Association",
        instructions: "Choose the word most closely associated with the given word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "DOCTOR", options: ["Hospital", "Airport", "Library", "Farm"], correctAnswer: "Hospital", explanation: "Doctors work in hospitals to care for patients."),
            ExerciseItem(prompt: "BREAD", options: ["Butter", "Hammer", "Soap", "Pencil"], correctAnswer: "Butter", explanation: "Butter is commonly spread on bread."),
            ExerciseItem(prompt: "KITCHEN", options: ["Stove", "Bed", "Shower", "Car"], correctAnswer: "Stove", explanation: "A stove is a primary appliance in a kitchen."),
            ExerciseItem(prompt: "LIBRARY", options: ["Books", "Clothes", "Tools", "Groceries"], correctAnswer: "Books", explanation: "Libraries store and lend books."),
            ExerciseItem(prompt: "SHOE", options: ["Sock", "Hat", "Glove", "Belt"], correctAnswer: "Sock", explanation: "Socks are worn inside shoes."),
            ExerciseItem(prompt: "ASTRONAUT", options: ["Space", "Ocean", "Jungle", "Desert"], correctAnswer: "Space", explanation: "Astronauts travel into space."),
            ExerciseItem(prompt: "TEACHER", options: ["School", "Factory", "Theater", "Gym"], correctAnswer: "School", explanation: "Teachers instruct students in schools."),
            ExerciseItem(prompt: "OCEAN", options: ["Fish", "Bird", "Cow", "Spider"], correctAnswer: "Fish", explanation: "Fish live in the ocean."),
            ExerciseItem(prompt: "CAR", options: ["Tire", "Wing", "Saddle", "Sail"], correctAnswer: "Tire", explanation: "Tires are essential components of cars."),
            ExerciseItem(prompt: "RAIN", options: ["Umbrella", "Sunglasses", "Gloves", "Scarf"], correctAnswer: "Umbrella", explanation: "An umbrella protects you from the rain."),
            ExerciseItem(prompt: "FIRE", options: ["Smoke", "Ice", "Leaf", "Coin"], correctAnswer: "Smoke", explanation: "Fire produces smoke."),
            ExerciseItem(prompt: "DENTIST", options: ["Teeth", "Hair", "Eyes", "Feet"], correctAnswer: "Teeth", explanation: "Dentists specialize in oral health and teeth."),
            ExerciseItem(prompt: "COFFEE", options: ["Mug", "Bowl", "Plate", "Fork"], correctAnswer: "Mug", explanation: "Coffee is typically served in a mug."),
            ExerciseItem(prompt: "GARDEN", options: ["Flowers", "Computers", "Stoves", "Coats"], correctAnswer: "Flowers", explanation: "Flowers grow in a garden."),
            ExerciseItem(prompt: "KEY", options: ["Lock", "Window", "Roof", "Floor"], correctAnswer: "Lock", explanation: "Keys are used to open locks."),
            ExerciseItem(prompt: "POST OFFICE", options: ["Letter", "Bread", "Medicine", "Ticket"], correctAnswer: "Letter", explanation: "Letters are mailed at the post office."),
            ExerciseItem(prompt: "PIANO", options: ["Music", "Paint", "Clay", "Wood"], correctAnswer: "Music", explanation: "A piano is an instrument used to play music."),
            ExerciseItem(prompt: "BEE", options: ["Honey", "Milk", "Wool", "Silk"], correctAnswer: "Honey", explanation: "Bees produce honey."),
            ExerciseItem(prompt: "SPIDER", options: ["Web", "Nest", "Hive", "Den"], correctAnswer: "Web", explanation: "Spiders spin webs."),
            ExerciseItem(prompt: "FARMER", options: ["Tractor", "Airplane", "Submarine", "Train"], correctAnswer: "Tractor", explanation: "Farmers use tractors to work the land.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "Complete the Saying",
        instructions: "Complete the well-known saying or expression.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "An apple a day keeps the ___ away.", options: ["Doctor", "Teacher", "Dentist", "Lawyer"], correctAnswer: "Doctor", explanation: "The traditional saying is: An apple a day keeps the doctor away."),
            ExerciseItem(prompt: "A picture is worth a thousand ___.", options: ["Words", "Dollars", "Books", "Colors"], correctAnswer: "Words", explanation: "The proverb means complex stories can be conveyed in a single image."),
            ExerciseItem(prompt: "Better late than ___.", options: ["Never", "Early", "Always", "Sometimes"], correctAnswer: "Never", explanation: "It is better to do something late than not do it at all."),
            ExerciseItem(prompt: "Don’t count your chickens before they ___.", options: ["Hatch", "Fly", "Sing", "Sleep"], correctAnswer: "Hatch", explanation: "Do not make plans based on events that have not happened yet."),
            ExerciseItem(prompt: "Don’t put all your eggs in one ___.", options: ["Basket", "Carton", "Nest", "Box"], correctAnswer: "Basket", explanation: "Do not risk everything on a single venture."),
            ExerciseItem(prompt: "Every cloud has a silver ___.", options: ["Lining", "Border", "Sky", "Rain"], correctAnswer: "Lining", explanation: "Every difficult situation has a hopeful or positive aspect."),
            ExerciseItem(prompt: "Two heads are better than ___.", options: ["One", "Three", "Four", "None"], correctAnswer: "One", explanation: "Two people working together can solve a problem more easily."),
            ExerciseItem(prompt: "The early bird catches the ___.", options: ["Worm", "Seed", "Bug", "Fish"], correctAnswer: "Worm", explanation: "Success comes to those who prepare and act early."),
            ExerciseItem(prompt: "Where there’s a will, there’s a ___.", options: ["Way", "Wish", "Hope", "Day"], correctAnswer: "Way", explanation: "If you are determined, you will find a method to achieve it."),
            ExerciseItem(prompt: "Look before you ___.", options: ["Leap", "Run", "Walk", "Jump"], correctAnswer: "Leap", explanation: "Consider the consequences before taking action."),
            ExerciseItem(prompt: "Practice makes ___.", options: ["Perfect", "Easy", "Better", "Fast"], correctAnswer: "Perfect", explanation: "Doing something repeatedly helps you master it."),
            ExerciseItem(prompt: "When in Rome, do as the ___ do.", options: ["Romans", "Greeks", "Italians", "Soldiers"], correctAnswer: "Romans", explanation: "Follow the customs of the place you are visiting."),
            ExerciseItem(prompt: "Actions speak louder than ___.", options: ["Words", "Voices", "Thoughts", "Promises"], correctAnswer: "Words", explanation: "What people do is more important than what they say."),
            ExerciseItem(prompt: "A penny saved is a penny ___.", options: ["Earned", "Spent", "Lost", "Found"], correctAnswer: "Earned", explanation: "Saving money is as good as earning it."),
            ExerciseItem(prompt: "Don’t judge a book by its ___.", options: ["Cover", "Title", "Pages", "Author"], correctAnswer: "Cover", explanation: "Do not form an opinion based solely on outward appearance."),
            ExerciseItem(prompt: "Birds of a feather flock ___.", options: ["Together", "Away", "South", "High"], correctAnswer: "Together", explanation: "People of similar character or interests associate with one another."),
            ExerciseItem(prompt: "All that glitters is not ___.", options: ["Gold", "Silver", "Diamond", "Bright"], correctAnswer: "Gold", explanation: "Not everything that looks valuable or true is so."),
            ExerciseItem(prompt: "Time flies when you are having ___.", options: ["Fun", "Work", "Lunch", "Sleep"], correctAnswer: "Fun", explanation: "Time seems to pass quickly when you are enjoying yourself."),
            ExerciseItem(prompt: "Out of sight, out of ___.", options: ["Mind", "View", "Reach", "Pocket"], correctAnswer: "Mind", explanation: "We tend to forget things or people that are no longer present."),
            ExerciseItem(prompt: "You can’t have your cake and ___ it too.", options: ["Eat", "Bake", "Buy", "Sell"], correctAnswer: "Eat", explanation: "You cannot enjoy two mutually exclusive things at the same time.")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Compound Words",
        instructions: "Choose the correct word to complete the compound word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "SUN + ___", options: ["Flower", "Cloud", "Rain", "Wind"], correctAnswer: "Flower", explanation: "Sun + Flower = Sunflower."),
            ExerciseItem(prompt: "RAIN + ___", options: ["Bow", "Drop", "Cloud", "Storm"], correctAnswer: "Bow", explanation: "Rain + Bow = Rainbow."),
            ExerciseItem(prompt: "BUTTER + ___", options: ["Fly", "Milk", "Cup", "Knife"], correctAnswer: "Fly", explanation: "Butter + Fly = Butterfly."),
            ExerciseItem(prompt: "SNOW + ___", options: ["Man", "Flake", "Storm", "Ball"], correctAnswer: "Man", explanation: "Snow + Man = Snowman."),
            ExerciseItem(prompt: "KEY + ___", options: ["Board", "Chain", "Hole", "Ring"], correctAnswer: "Board", explanation: "Key + Board = Keyboard."),
            ExerciseItem(prompt: "PAN + ___", options: ["Cake", "Cook", "Plate", "Bowl"], correctAnswer: "Cake", explanation: "Pan + Cake = Pancake."),
            ExerciseItem(prompt: "JELLY + ___", options: ["Fish", "Bean", "Roll", "Stone"], correctAnswer: "Fish", explanation: "Jelly + Fish = Jellyfish."),
            ExerciseItem(prompt: "CAMP + ___", options: ["Fire", "Ground", "Site", "Bag"], correctAnswer: "Fire", explanation: "Camp + Fire = Campfire."),
            ExerciseItem(prompt: "FOOT + ___", options: ["Ball", "Step", "Print", "Path"], correctAnswer: "Ball", explanation: "Foot + Ball = Football."),
            ExerciseItem(prompt: "FIRE + ___", options: ["Fly", "Fighter", "Place", "Wood"], correctAnswer: "Fly", explanation: "Fire + Fly = Firefly."),
            ExerciseItem(prompt: "TOOTH + ___", options: ["Brush", "Paste", "Ache", "Pick"], correctAnswer: "Brush", explanation: "Tooth + Brush = Toothbrush."),
            ExerciseItem(prompt: "LIGHT + ___", options: ["House", "Bulb", "Weight", "Ning"], correctAnswer: "House", explanation: "Light + House = Lighthouse."),
            ExerciseItem(prompt: "STAR + ___", options: ["Fish", "Light", "Dust", "Gaze"], correctAnswer: "Fish", explanation: "Star + Fish = Starfish."),
            ExerciseItem(prompt: "EAR + ___", options: ["Ring", "Lobes", "Drum", "Wax"], correctAnswer: "Ring", explanation: "Ear + Ring = Earring."),
            ExerciseItem(prompt: "PLAY + ___", options: ["Ground", "Time", "List", "Book"], correctAnswer: "Ground", explanation: "Play + Ground = Playground."),
            ExerciseItem(prompt: "WATER + ___", options: ["Melon", "Fall", "Color", "Bottle"], correctAnswer: "Melon", explanation: "Water + Melon = Watermelon."),
            ExerciseItem(prompt: "PINE + ___", options: ["Apple", "Cone", "Tree", "Needle"], correctAnswer: "Apple", explanation: "Pine + Apple = Pineapple."),
            ExerciseItem(prompt: "DRAGON + ___", options: ["Fly", "Boat", "Tail", "Egg"], correctAnswer: "Fly", explanation: "Dragon + Fly = Dragonfly."),
            ExerciseItem(prompt: "SUN + ___", options: ["Glasses", "Rise", "Set", "Shine"], correctAnswer: "Glasses", explanation: "Sun + Glasses = Sunglasses."),
            ExerciseItem(prompt: "WHEEL + ___", options: ["Chair", "Barrow", "Base", "Alignment"], correctAnswer: "Chair", explanation: "Wheel + Chair = Wheelchair.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "Prefix and Suffix",
        instructions: "Choose the correct prefix or suffix to complete the word.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Which prefix means “not” in the word UNHAPPY?", options: ["un-", "re-", "pre-", "dis-"], correctAnswer: "un-", explanation: "The prefix “un-” means “not”, so unhappy means not happy."),
            ExerciseItem(prompt: "Which suffix means “full of” in the word HELPFUL?", options: ["-ful", "-less", "-ness", "-ment"], correctAnswer: "-ful", explanation: "The suffix “-ful” means full of, so helpful means full of help."),
            ExerciseItem(prompt: "To write something again is to ___write.", options: ["re", "un", "pre", "de"], correctAnswer: "re", explanation: "The prefix “re-” means again."),
            ExerciseItem(prompt: "The opposite of agree is ___agree.", options: ["dis", "un", "in", "mis"], correctAnswer: "dis", explanation: "The prefix “dis-” is used to make agree opposite."),
            ExerciseItem(prompt: "Someone who has no fear is fear___.", options: ["less", "ful", "able", "ness"], correctAnswer: "less", explanation: "The suffix “-less” means without, so fearless means without fear."),
            ExerciseItem(prompt: "A school for young children before first grade is ___school.", options: ["pre", "post", "sub", "inter"], correctAnswer: "pre", explanation: "The prefix “pre-” means before."),
            ExerciseItem(prompt: "The state of being happy is happy___.", options: ["ness", "less", "ment", "ful"], correctAnswer: "ness", explanation: "The suffix “-ness” turns the adjective happy into the noun happiness."),
            ExerciseItem(prompt: "To behave badly is to ___behave.", options: ["mis", "dis", "un", "re"], correctAnswer: "mis", explanation: "The prefix “mis-” means badly or wrongly."),
            ExerciseItem(prompt: "To view something before it is released is to ___view it.", options: ["pre", "re", "post", "dis"], correctAnswer: "pre", explanation: "The prefix “pre-” means before."),
            ExerciseItem(prompt: "If a task can be done, it is do___.", options: ["able", "less", "ness", "ful"], correctAnswer: "able", explanation: "The suffix “-able” means capable of being."),
            ExerciseItem(prompt: "A boat that goes under water is a ___marine.", options: ["sub", "trans", "super", "mini"], correctAnswer: "sub", explanation: "The prefix “sub-” means under."),
            ExerciseItem(prompt: "A person who plays music is a music___.", options: ["ian", "ist", "er", "or"], correctAnswer: "ian", explanation: "The suffix “-ian” refers to a person who does an activity."),
            ExerciseItem(prompt: "To understand someone incorrectly is to ___understand them.", options: ["mis", "un", "dis", "re"], correctAnswer: "mis", explanation: "The prefix “mis-” means wrongly."),
            ExerciseItem(prompt: "Something that cannot be seen is ___visible.", options: ["in", "un", "dis", "im"], correctAnswer: "in", explanation: "The prefix “in-” means not."),
            ExerciseItem(prompt: "A person who teaches is a teach___.", options: ["er", "or", "ist", "ian"], correctAnswer: "er", explanation: "The suffix “-er” refers to a person who performs an action."),
            ExerciseItem(prompt: "The opposite of polite is ___polite.", options: ["im", "un", "dis", "in"], correctAnswer: "im", explanation: "The prefix “im-” means not and is used before words starting with p."),
            ExerciseItem(prompt: "If something is without hope, it is hope___.", options: ["less", "ful", "able", "ness"], correctAnswer: "less", explanation: "The suffix “-less” means without."),
            ExerciseItem(prompt: "To heat an oven before baking is to ___heat it.", options: ["pre", "re", "post", "de"], correctAnswer: "pre", explanation: "The prefix “pre-” means before."),
            ExerciseItem(prompt: "A person who paints pictures is a paint___.", options: ["er", "ist", "or", "ian"], correctAnswer: "er", explanation: "The suffix “-er” designates someone who performs the action."),
            ExerciseItem(prompt: "To load a program again is to ___load it.", options: ["re", "un", "dis", "pre"], correctAnswer: "re", explanation: "The prefix “re-” means again.")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "Story Recall",
        instructions: "Read the short story then answer the question about it.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Maria went to the grocery store to buy milk and bread. She forgot her wallet on the kitchen counter. What did Maria leave at home?", options: ["Her wallet", "Her keys", "Her shopping list", "Her phone"], correctAnswer: "Her wallet", explanation: "The story states she forgot her wallet on the kitchen counter."),
            ExerciseItem(prompt: "Thomas woke up early on Saturday to go fishing. He caught a large trout but had to throw it back because it was too small. What kind of fish did Thomas catch?", options: ["A trout", "A salmon", "A bass", "A catfish"], correctAnswer: "A trout", explanation: "The story states he caught a large trout."),
            ExerciseItem(prompt: "Arthur parked his blue car under a shady oak tree. When he returned, he saw that the car was covered in yellow leaves. What color is Arthur’s car?", options: ["Blue", "Yellow", "Red", "Green"], correctAnswer: "Blue", explanation: "The story states Arthur parked his blue car."),
            ExerciseItem(prompt: "Linda baked a chocolate cake for her daughter’s birthday party. She put ten red candles on the cake. How many candles did Linda put on the cake?", options: ["Ten", "Five", "Eight", "Twelve"], correctAnswer: "Ten", explanation: "The story states she put ten red candles on the cake."),
            ExerciseItem(prompt: "Robert went to the post office to mail a package to his brother in Chicago. The clerk told him it would arrive on Tuesday. Where does Robert’s brother live?", options: ["Chicago", "New York", "Boston", "Miami"], correctAnswer: "Chicago", explanation: "The story states he mailed a package to his brother in Chicago."),
            ExerciseItem(prompt: "Sarah bought a new pair of running shoes yesterday. They are bright green with white stripes. What color are Sarah’s new running shoes?", options: ["Bright green", "Blue", "Red", "Black"], correctAnswer: "Bright green", explanation: "The story says the shoes are bright green with white stripes."),
            ExerciseItem(prompt: "James was walking in the park when it started raining. He opened his yellow umbrella to stay dry. What color was the umbrella James used?", options: ["Yellow", "Red", "Blue", "Black"], correctAnswer: "Yellow", explanation: "The story says he opened his yellow umbrella."),
            ExerciseItem(prompt: "The local bakery was closed on Monday for repairs. They planned to reopen on Tuesday morning at six o’clock. What day was the bakery closed?", options: ["Monday", "Tuesday", "Wednesday", "Sunday"], correctAnswer: "Monday", explanation: "The story says the bakery was closed on Monday."),
            ExerciseItem(prompt: "Anna called a plumber because her kitchen sink was leaking. The plumber arrived in an hour and fixed the pipe. Why did Anna call a plumber?", options: ["Her sink was leaking", "Her stove was broken", "Her light was out", "Her door was locked"], correctAnswer: "Her sink was leaking", explanation: "The story says she called a plumber because her kitchen sink was leaking."),
            ExerciseItem(prompt: "David walked his dog, Max, around the block. Max saw a squirrel and barked loudly at it. What is the name of David’s dog?", options: ["Max", "Buddy", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "The story states David walked his dog, Max."),
            ExerciseItem(prompt: "Helen was making vegetable soup for dinner. She realized she was out of carrots, so she used potatoes instead. What ingredient did Helen run out of?", options: ["Carrots", "Potatoes", "Onions", "Celery"], correctAnswer: "Carrots", explanation: "The story states she realized she was out of carrots."),
            ExerciseItem(prompt: "Peter ordered a pepperoni pizza and a bottle of soda for lunch. The total cost was fifteen dollars. How much did Peter’s lunch cost?", options: ["Fifteen dollars", "Ten dollars", "Twenty dollars", "Twelve dollars"], correctAnswer: "Fifteen dollars", explanation: "The story states the total cost was fifteen dollars."),
            ExerciseItem(prompt: "Alice went to the library to borrow a book about gardening. She also borrowed a DVD about history. What subject was the book Alice borrowed about?", options: ["Gardening", "History", "Cooking", "Travel"], correctAnswer: "Gardening", explanation: "The story states she borrowed a book about gardening."),
            ExerciseItem(prompt: "George took a morning train to the city for a job interview. His train was delayed by fifteen minutes due to track maintenance. Why was the train delayed?", options: ["Track maintenance", "A heavy storm", "A power outage", "A missing crew member"], correctAnswer: "Track maintenance", explanation: "The story states the train was delayed due to track maintenance."),
            ExerciseItem(prompt: "Nancy went to the garden center to buy red roses. They were sold out, so she bought pink carnations instead. What flower did Nancy end up buying?", options: ["Pink carnations", "Red roses", "Yellow tulips", "White lilies"], correctAnswer: "Pink carnations", explanation: "The story states she bought pink carnations instead.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Number Sequences",
        instructions: "What number comes next in the sequence?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "The sequence increases by adding 2 each time."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "The sequence increases by adding 5 each time."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "The sequence increases by adding 10 each time."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "The sequence increases by adding 3 each time."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "The sequence decreases by subtracting 1 each time."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "The sequence decreases by subtracting 2 each time."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "The sequence of odd numbers increases by adding 2 each time."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "The sequence increases by adding 4 each time."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "The sequence decreases by subtracting 5 each time."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "The sequence decreases by subtracting 10 each time."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "The sequence increases by adding 11 each time."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "The sequence increases by adding 2 each time."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "The sequence increases by adding 3 each time."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "The sequence decreases by subtracting 3 each time."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "The sequence increases by adding 7 each time."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "The sequence decreases by subtracting 4 each time."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "The sequence increases by adding 6 each time."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "The sequence increases by adding 5 each time."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "The sequence decreases by subtracting 10 each time."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "The sequence increases by adding 2 each time.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Cause and Effect",
        instructions: "Choose the most likely result of the situation described.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "You leave ice cream on the kitchen counter for two hours on a warm day. What happens?", options: ["It gets harder", "It melts", "It changes color", "It disappears"], correctAnswer: "It melts", explanation: "Heat causes frozen ice cream to melt."),
            ExerciseItem(prompt: "You forget to water your houseplant for three weeks. What is the most likely result?", options: ["It grows flowers", "It stays green", "It wilts and dries up", "It turns blue"], correctAnswer: "It wilts and dries up", explanation: "Plants need water to live; without it, they wilt and dry."),
            ExerciseItem(prompt: "A dark storm cloud blocks the sun, and thunder rumbles. What is likely to happen next?", options: ["It will rain", "It will get hotter", "Snow will fall immediately", "The stars will come out"], correctAnswer: "It will rain", explanation: "Storm clouds and thunder are indicators of incoming rain."),
            ExerciseItem(prompt: "You drop a glass bowl onto a hard tile floor. What is the most likely result?", options: ["It bounces back up", "It changes color", "It breaks into pieces", "It turns into water"], correctAnswer: "It breaks into pieces", explanation: "Glass is fragile and breaks when dropped on hard surfaces."),
            ExerciseItem(prompt: "You put a slice of bread into the toaster and leave it on the highest setting. What happens?", options: ["It becomes soggy", "It burns and turns black", "It stays soft and white", "It disappears"], correctAnswer: "It burns and turns black", explanation: "Excessive heat in a toaster will burn the bread."),
            ExerciseItem(prompt: "You leave the car headlights on overnight. What will happen in the morning?", options: ["The car will go faster", "The battery will be dead", "The car will change color", "The engine will start immediately"], correctAnswer: "The battery will be dead", explanation: "Leaving lights on drains the battery power."),
            ExerciseItem(prompt: "A heavy snowstorm falls throughout the night, depositing six inches of snow. What happens to the roads?", options: ["They stay dry", "They become slippery and covered in snow", "They turn green", "They evaporate"], correctAnswer: "They become slippery and covered in snow", explanation: "Falling snow accumulates on roads, making driving hazardous."),
            ExerciseItem(prompt: "You place a tray filled with water into the freezer. What happens after a few hours?", options: ["The water boils", "The water turns into ice", "The water evaporates", "The water changes color"], correctAnswer: "The water turns into ice", explanation: "Freezing temperatures turn liquid water into solid ice."),
            ExerciseItem(prompt: "You put on a pair of thick wool socks and heavy boots on a hot summer day. What happens to your feet?", options: ["They feel cold", "They stay dry", "They get hot and sweaty", "They turn blue"], correctAnswer: "They get hot and sweaty", explanation: "Thick layers retain heat, causing sweating in warm weather."),
            ExerciseItem(prompt: "A person does not sleep for 24 hours straight. How will they likely feel?", options: ["Very energetic", "Tired and sleepy", "Hungry", "Extremely happy"], correctAnswer: "Tired and sleepy", explanation: "Lack of sleep results in fatigue and sleepiness."),
            ExerciseItem(prompt: "You add sugar to a cup of hot tea and stir it. What happens to the sugar?", options: ["It turns into ice", "It disappears from the cup", "It dissolves in the tea", "It burns"], correctAnswer: "It dissolves in the tea", explanation: "Stirring sugar in hot liquid causes it to dissolve."),
            ExerciseItem(prompt: "You step outside into a heavy rain shower without an umbrella or raincoat. What is the result?", options: ["You stay dry", "Your clothes get soaked", "You turn blue", "You feel warmer"], correctAnswer: "Your clothes get soaked", explanation: "Rainwater falls directly on you, making your clothes wet."),
            ExerciseItem(prompt: "You blow air into a balloon until it becomes too full. What happens?", options: ["It flies to the moon", "It pops", "It turns into a bird", "It shrinks"], correctAnswer: "It pops", explanation: "Too much air pressure exceeds the balloon’s capacity, causing it to pop."),
            ExerciseItem(prompt: "You turn off all the lights in a room with no windows at night. What happens?", options: ["The room gets brighter", "The room becomes completely dark", "The room turns green", "The room fills with light"], correctAnswer: "The room becomes completely dark", explanation: "No light source results in total darkness."),
            ExerciseItem(prompt: "You do not study or prepare for a difficult exam. What is the most likely outcome?", options: ["You get a perfect score", "You perform poorly", "You forget your name", "The exam is cancelled"], correctAnswer: "You perform poorly", explanation: "Lack of preparation makes passing difficult tests unlikely.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "What Emotion Is This?",
        instructions: "Read the situation and choose the emotion the person most likely feels.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Sarah just found out she won first place in a competition. How does she feel?", options: ["Sad", "Angry", "Happy", "Scared"], correctAnswer: "Happy", explanation: "Winning a competition is an exciting and joyful event."),
            ExerciseItem(prompt: "David hears a strange, loud noise downstairs in the middle of the night. How does he feel?", options: ["Happy", "Scared", "Bored", "Excited"], correctAnswer: "Scared", explanation: "Unexpected noises in the dark cause fear or apprehension."),
            ExerciseItem(prompt: "Mary’s best friend is moving to another state far away. How does Mary feel?", options: ["Sad", "Angry", "Excited", "Jealous"], correctAnswer: "Sad", explanation: "Saying goodbye to close friends causes sadness."),
            ExerciseItem(prompt: "Someone cuts in front of John in a long line at the store. How does John feel?", options: ["Happy", "Scared", "Annoyed", "Embarrassed"], correctAnswer: "Annoyed", explanation: "Rude behavior from others typically causes annoyance or frustration."),
            ExerciseItem(prompt: "Emily is about to give a speech in front of a very large audience. How does she feel?", options: ["Nervous", "Bored", "Sad", "Angry"], correctAnswer: "Nervous", explanation: "Public speaking commonly induces nervousness or anxiety."),
            ExerciseItem(prompt: "Robert’s flight was cancelled, delaying his vacation by two days. How does he feel?", options: ["Frustrated", "Happy", "Scared", "Proud"], correctAnswer: "Frustrated", explanation: "Cancellations that disrupt plans lead to frustration."),
            ExerciseItem(prompt: "Lisa’s son graduated from university with top honors. How does Lisa feel?", options: ["Proud", "Jealous", "Sad", "Scared"], correctAnswer: "Proud", explanation: "Seeing family members succeed makes one feel proud."),
            ExerciseItem(prompt: "A clerk is explaining a complicated form for the fourth time, but Arthur still cannot understand. How does Arthur feel?", options: ["Confused", "Happy", "Excited", "Proud"], correctAnswer: "Confused", explanation: "Inability to grasp information leads to feeling confused."),
            ExerciseItem(prompt: "James has been waiting in a quiet waiting room for over two hours with nothing to read. How does he feel?", options: ["Bored", "Scared", "Angry", "Happy"], correctAnswer: "Bored", explanation: "Long waits with no stimulation cause boredom."),
            ExerciseItem(prompt: "Ellen’s family threw her a surprise birthday party with all her friends. How does she feel?", options: ["Surprised", "Angry", "Sad", "Scared"], correctAnswer: "Surprised", explanation: "An unexpected celebration leads to feeling surprised."),
            ExerciseItem(prompt: "A stray dog rushed out and barked aggressively at Karen during her walk. How does she feel?", options: ["Frightened", "Happy", "Bored", "Proud"], correctAnswer: "Frightened", explanation: "Aggressive animals cause fear or fright."),
            ExerciseItem(prompt: "William lost his wedding ring while gardening. How does he feel?", options: ["Upset", "Excited", "Bored", "Calm"], correctAnswer: "Upset", explanation: "Losing a sentimental item is distressing and makes one upset."),
            ExerciseItem(prompt: "Patricia received a beautiful card and flowers from her grandchildren. How does she feel?", options: ["Loved", "Angry", "Scared", "Confused"], correctAnswer: "Loved", explanation: "Kind gestures from family make a person feel loved and appreciated."),
            ExerciseItem(prompt: "The grocery store was out of the specific bread Richard wanted, so he had to buy another brand. How does he feel?", options: ["Mildly disappointed", "Terrified", "Furious", "Ecstatic"], correctAnswer: "Mildly disappointed", explanation: "Not getting a minor preference leads to mild disappointment."),
            ExerciseItem(prompt: "Charles spent all afternoon building a bookshelf, and it turned out perfect. How does he feel?", options: ["Satisfied", "Sad", "Scared", "Bored"], correctAnswer: "Satisfied", explanation: "Completing a task successfully leads to satisfaction."),
            ExerciseItem(prompt: "Linda accidentally dropped a tray of drinks in a quiet restaurant. How does she feel?", options: ["Embarrassed", "Happy", "Angry", "Bored"], correctAnswer: "Embarrassed", explanation: "Drawing negative public attention to a mistake causes embarrassment."),
            ExerciseItem(prompt: "Thomas is going on his first trip to Hawaii tomorrow morning. How does he feel?", options: ["Excited", "Sad", "Angry", "Bored"], correctAnswer: "Excited", explanation: "Anticipating a fun vacation causes excitement."),
            ExerciseItem(prompt: "Susan’s cat returned home safe after being missing for three days. How does she feel?", options: ["Relieved", "Angry", "Scared", "Confused"], correctAnswer: "Relieved", explanation: "A positive resolution to a stressful situation brings relief."),
            ExerciseItem(prompt: "The internet connection keeps dropping every five minutes while George is trying to work. How does he feel?", options: ["Irritated", "Scared", "Happy", "Bored"], correctAnswer: "Irritated", explanation: "Repetitive minor disruptions cause irritation."),
            ExerciseItem(prompt: "Helen took a long, warm bath after a stressful day. How does she feel?", options: ["Relaxed", "Angry", "Scared", "Nervous"], correctAnswer: "Relaxed", explanation: "Warm baths and downtime help a person feel relaxed.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here?
    private static let exercise10 = Exercise(
        title: "What’s Wrong Here?",
        instructions: "Choose what is wrong or impossible about the sentence.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "John ate breakfast at midnight before going to bed.", options: ["People do not eat food", "Breakfast is a morning meal, not midnight", "John should not sleep", "Midnight is in the afternoon"], correctAnswer: "Breakfast is a morning meal, not midnight", explanation: "Breakfast is by definition the morning meal that breaks the overnight fast."),
            ExerciseItem(prompt: "The dog barked at the mailman and then flew over the roof to catch a bird.", options: ["Dogs do not bark", "Dogs cannot fly", "Mailmen do not deliver mail", "Birds do not fly"], correctAnswer: "Dogs cannot fly", explanation: "Dogs do not have wings and cannot fly."),
            ExerciseItem(prompt: "Sarah put on her warm winter coat and gloves to go swimming in the outdoor pool during July.", options: ["People do not swim in July", "You do not wear a winter coat and gloves to go swimming", "Outdoor pools do not exist", "Coats are worn in summer"], correctAnswer: "You do not wear a winter coat and gloves to go swimming", explanation: "Swimming requires swimwear, and winter gear is inappropriate for warm water."),
            ExerciseItem(prompt: "The clock on the wall struck thirteen, so Arthur knew it was time for his morning coffee.", options: ["Clocks do not go on walls", "Standard clocks only go up to twelve hours", "Coffee is not a morning drink", "Arthur does not drink coffee"], correctAnswer: "Standard clocks only go up to twelve hours", explanation: "Traditional clocks display hours from one to twelve."),
            ExerciseItem(prompt: "Paul rode his bicycle across the deep lake to visit his friend.", options: ["Bicycles cannot ride on water", "Lakes do not have fish", "Friends do not visit each other", "Bicycles do not have pedals"], correctAnswer: "Bicycles cannot ride on water", explanation: "Bicycles are land vehicles and sink in water."),
            ExerciseItem(prompt: "Linda boiled some ice cubes in a pot to make cold drinking water.", options: ["Ice cubes do not exist", "Boiling ice cubes makes them hot water, not cold", "Pots cannot hold ice", "Drinking water is not healthy"], correctAnswer: "Boiling ice cubes makes them hot water, not cold", explanation: "Boiling heats liquid, which makes it hot rather than cold."),
            ExerciseItem(prompt: "The fish climbed up the tree to escape from the hungry cat.", options: ["Fish cannot climb trees", "Cats do not eat fish", "Trees do not grow leaves", "Fish live in trees"], correctAnswer: "Fish cannot climb trees", explanation: "Fish live in water and do not have limbs to climb trees."),
            ExerciseItem(prompt: "Robert used a fork to drink his chicken noodle soup.", options: ["Forks cannot hold liquid soup", "Soup is not made of chicken", "Robert should use a knife", "Soup is not eaten with utensils"], correctAnswer: "Forks cannot hold liquid soup", explanation: "Forks have tines that let liquids drain through; soup requires a spoon."),
            ExerciseItem(prompt: "Since it was raining heavily, Nancy hung her wet clothes on the outdoor clothesline to dry.", options: ["Rain does not make things wet", "Clothes will not dry outside in the rain", "Clotheslines are only used indoors", "Nancy does not wear clothes"], correctAnswer: "Clothes will not dry outside in the rain", explanation: "Rain keeps clothes wet, preventing them from drying."),
            ExerciseItem(prompt: "The plane landed safely at the airport, and all the passengers stepped out onto the train tracks.", options: ["Planes do not land at airports", "Passengers do not travel on planes", "Airports do not have train tracks at landing gates", "Trains do not run on tracks"], correctAnswer: "Airports do not have train tracks at landing gates", explanation: "Airplanes land at runways and gates, not on railroad tracks."),
            ExerciseItem(prompt: "Helen turned up the air conditioner to make the living room warmer.", options: ["Air conditioners cool rooms, they do not heat them", "Living rooms do not have walls", "Helen does not own a house", "Air conditioners do not use electricity"], correctAnswer: "Air conditioners cool rooms, they do not heat them", explanation: "Air conditioners are designed to lower temperatures, not raise them."),
            ExerciseItem(prompt: "The rabbit chased the large grey wolf through the forest.", options: ["Rabbits do not live in forests", "Wolves do not run", "Rabbits do not chase wolves", "Wolves are not grey"], correctAnswer: "Rabbits do not chase wolves", explanation: "Wolves are predators and rabbits are prey; rabbits flee from wolves."),
            ExerciseItem(prompt: "James bought a pair of leather shoes for his hands to keep them warm in winter.", options: ["Shoes are worn on feet, not hands", "Leather is not used for shoes", "Hands do not get cold", "Winter is not cold"], correctAnswer: "Shoes are worn on feet, not hands", explanation: "Gloves or mittens are worn on hands; shoes are for feet."),
            ExerciseItem(prompt: "The sun rose at midnight, lighting up the morning sky.", options: ["The sun rises in the morning, not midnight", "Midnight is in the afternoon", "The sun is not bright", "Morning is dark"], correctAnswer: "The sun rises in the morning, not midnight", explanation: "Midnight is the middle of the night when the sun is not visible."),
            ExerciseItem(prompt: "Alice turned on the television to listen to her favorite radio station.", options: ["Televisions show video, they are not radios", "Radios do not play music", "Alice does not like music", "Televisions do not have speakers"], correctAnswer: "Televisions show video, they are not radios", explanation: "A television is a display device; radio stations are broadcast on radios.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "Reading a Prescription",
        instructions: "Read the prescription information and answer the question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Label: Take 1 tablet twice daily with food. How many tablets should you take in total each day?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Taking 1 tablet twice a day means 1 + 1 = 2 tablets."),
            ExerciseItem(prompt: "Label: Take 2 tablets at bedtime. When should you take this medication?", options: ["In the morning", "With lunch", "At bedtime", "Before exercise"], correctAnswer: "At bedtime", explanation: "The label explicitly states to take them at bedtime."),
            ExerciseItem(prompt: "Label: Take 1 capsule every 8 hours as needed for pain. How many times can you take this in a 24-hour day?", options: ["2 times", "3 times", "4 times", "6 times"], correctAnswer: "3 times", explanation: "A day has 24 hours. 24 divided by 8 is 3 times."),
            ExerciseItem(prompt: "Label: Amoxicillin 250mg. Take 1 tablet three times daily. Keep refrigerated. How should you store this medicine?", options: ["In the freezer", "In the refrigerator", "In a warm cupboard", "In direct sunlight"], correctAnswer: "In the refrigerator", explanation: "The label states “Keep refrigerated”, which means store in the refrigerator."),
            ExerciseItem(prompt: "Label: Do not drink alcohol while taking this medication. May cause drowsiness. What is a warned side effect of this medicine?", options: ["Drowsiness", "Increased energy", "High blood pressure", "Sneezing"], correctAnswer: "Drowsiness", explanation: "The label warns that it “May cause drowsiness”."),
            ExerciseItem(prompt: "Label: Take 1 tablet daily in the morning on an empty stomach. When should you eat breakfast?", options: ["Before taking the tablet", "After taking the tablet", "While taking the tablet", "Do not eat breakfast"], correctAnswer: "After taking the tablet", explanation: "Taking it on an empty stomach means taking it before eating breakfast."),
            ExerciseItem(prompt: "Label: Take 1 tablet by mouth every day. Qty: 30. Refills: 2. How many refills are allowed?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "The label lists “Refills: 2”."),
            ExerciseItem(prompt: "Label: Apply thin layer to affected skin area twice daily. Do not swallow. How is this medication applied?", options: ["By swallowing it", "By rubbing on the skin", "By spraying in the nose", "By dissolving in water"], correctAnswer: "By rubbing on the skin", explanation: "The label says “Apply thin layer to affected skin area”."),
            ExerciseItem(prompt: "Label: Discard after 10/15/2026. Today is 11/01/2026. Can you safely take this medication?", options: ["Yes", "No", "Only with food", "Only at night"], correctAnswer: "No", explanation: "The medication expired on 10/15/2026, which was before today."),
            ExerciseItem(prompt: "Label: Take 1 tablet twice daily. Do not take with dairy products. Which beverage should you avoid when taking this pill?", options: ["Water", "Milk", "Apple juice", "Black coffee"], correctAnswer: "Milk", explanation: "Milk is a dairy product and must be avoided according to the label."),
            ExerciseItem(prompt: "Label: Take 2 tablets 1 hour before flight. Why would you take this medication?", options: ["To prevent motion sickness during travel", "To sleep better at home", "To cure a headache", "To treat skin rash"], correctAnswer: "To prevent motion sickness during travel", explanation: "Taking medicine before a flight is typically for motion sickness."),
            ExerciseItem(prompt: "Label: Eye Drops. Instill 1 drop in each eye twice daily. Where should you put this medicine?", options: ["In your mouth", "In your ears", "In your eyes", "On your skin"], correctAnswer: "In your eyes", explanation: "The label says “Eye Drops” and “instill in each eye”."),
            ExerciseItem(prompt: "Label: Take 1 tablet every 4 to 6 hours as needed for headache. Max 4 tablets per day. What is the most tablets you can take in one day?", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "The label specifies “Max 4 tablets per day”."),
            ExerciseItem(prompt: "Label: Take with a full glass of water. Why do you need water with this pill?", options: ["To dissolve it on your skin", "To help swallow it and prevent stomach upset", "To change its color", "To taste better"], correctAnswer: "To help swallow it and prevent stomach upset", explanation: "A full glass of water helps swallow pills safely and protects the stomach."),
            ExerciseItem(prompt: "Label: Take 1 tablet daily with your evening meal. What is the best time to take this?", options: ["At breakfast", "At lunch", "At dinner", "In the middle of the night"], correctAnswer: "At dinner", explanation: "The evening meal is dinner.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Reading a Menu",
        instructions: "Use the menu information to answer the question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Menu: Cheeseburger $8.00, French Fries $3.00, Soda $2.00. How much does a Cheeseburger cost?", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "The menu list states Cheeseburger is $8.00."),
            ExerciseItem(prompt: "Menu: Coffee $2.50, Tea $2.00, Muffin $3.00. Which item is the cheapest?", options: ["Coffee", "Tea", "Muffin", "They cost the same"], correctAnswer: "Tea", explanation: "$2.00 is the lowest price."),
            ExerciseItem(prompt: "Menu: Tomato Soup $5.00, Green Salad $6.00, Chicken Caesar $9.00. How much is a bowl of Tomato Soup?", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "Tomato Soup is listed as $5.00."),
            ExerciseItem(prompt: "Menu: Pancake Breakfast $10.00, French Toast $9.00, Side of Bacon $4.00. What is the cost of French Toast?", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "French Toast is listed as $9.00."),
            ExerciseItem(prompt: "Menu: Cheese Pizza Slice $4.00, Pepperoni Pizza Slice $4.50. How much more does a Pepperoni slice cost than a Cheese slice?", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "$4.50 minus $4.00 is $0.50."),
            ExerciseItem(prompt: "Menu: Chicken Sandwich $7.00, Fish and Chips $11.00. You have $10.00. Which meal can you afford?", options: ["Chicken Sandwich", "Fish and Chips", "Both meals", "Neither meal"], correctAnswer: "Chicken Sandwich", explanation: "$7.00 is less than $10.00, but $11.00 is more."),
            ExerciseItem(prompt: "Menu: Kid’s Meal (under 12 years) $6.00, Adult Burger $12.00. How much does a meal cost for an 8-year-old child?", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "An 8-year-old is under 12, so the child’s price of $6.00 applies."),
            ExerciseItem(prompt: "Menu: Chocolate Ice Cream $4.00, Apple Pie $5.00, Add Vanilla Ice Cream to Pie $1.50. How much is Apple Pie with Vanilla Ice Cream?", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "$5.00 (pie) + $1.50 (ice cream) = $6.50."),
            ExerciseItem(prompt: "Menu: Turkey Wrap $8.50, Chips $1.50, Juice $2.00. What is the total cost of a Turkey Wrap and a Juice?", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "$8.50 + $2.00 = $10.50."),
            ExerciseItem(prompt: "Menu: Lunch Specials (served 11 AM - 3 PM) $9.00. Regular Dinner Menu $15.00. It is 1:00 PM. How much is the Lunch Special?", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "1:00 PM is between 11 AM and 3 PM, so the Lunch Special price of $9.00 is active."),
            ExerciseItem(prompt: "Menu: Coffee $2.00 (Free Refills), Hot Tea $2.50. If you drink three cups of coffee, how much do you pay in total?", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "Coffee has free refills, so you only pay the initial $2.00."),
            ExerciseItem(prompt: "Menu: Vegetable Soup $4.00, Beef Stew $7.00. Which dish contains meat?", options: ["Vegetable Soup", "Beef Stew", "Both", "Neither"], correctAnswer: "Beef Stew", explanation: "Beef is a type of meat; vegetables are not."),
            ExerciseItem(prompt: "Menu: Taco $3.00, Quesadilla $6.00, Soda $2.00. What is the cost of a Quesadilla?", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "The menu lists Quesadilla as $6.00."),
            ExerciseItem(prompt: "Menu: Spaghetti $12.00, Lasagna $14.00, Garlic Bread $3.00. How much is a side of Garlic Bread?", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "Garlic Bread is listed as $3.00."),
            ExerciseItem(prompt: "Menu: Eggs Benny $11.00, Oatmeal $6.00, Fruit Bowl $5.00. Which breakfast item is the most expensive?", options: ["Eggs Benny", "Oatmeal", "Fruit Bowl", "They are the same price"], correctAnswer: "Eggs Benny", explanation: "$11.00 is the highest price on the list.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Understanding Bills",
        instructions: "Read the bill information and answer the question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Electric Bill: Total Due: $45.00. Due Date: July 15. What is the amount you need to pay?", options: ["$15.00", "$45.00", "July 15", "Free"], correctAnswer: "$45.00", explanation: "The total due is $45.00."),
            ExerciseItem(prompt: "Water Bill: Due Date: Oct 10. Late Fee: $5.00. Today is Oct 12. What happens if you pay today?", options: ["You pay the regular amount", "You pay a $5.00 late fee", "You get a discount", "Nothing"], correctAnswer: "You pay a $5.00 late fee", explanation: "Since today is after the due date, a late fee is applied."),
            ExerciseItem(prompt: "Internet Bill: Monthly Charge: $60.00. Autopay Discount: -$5.00. What is the final price with Autopay?", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "$60.00 minus $5.00 equals $55.00."),
            ExerciseItem(prompt: "Gas Bill: Current Charges: $30.00. Unpaid Balance: $10.00. Total Balance: $40.00. How much unpaid money is carried over from last month?", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "The “Unpaid Balance” represents the carryover from last month, which is $10.00."),
            ExerciseItem(prompt: "Phone Bill: Due Date: June 20. Current Date: June 15. How many days do you have left to pay this bill on time?", options: ["5 days", "20 days", "15 days", "1 day"], correctAnswer: "5 days", explanation: "June 20 minus June 15 is 5 days."),
            ExerciseItem(prompt: "Trash Bill: Quarterly Charge (3 months): $36.00. What is the equivalent cost per month?", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "$36.00 divided by 3 months is $12.00 per month."),
            ExerciseItem(prompt: "Cable Bill: Total Due: $80.00. Payable to: “XYZ Cable Co.” Who should the check be made out to?", options: ["$80.00", "XYZ Cable Co.", "The Cable Guy", "Cash"], correctAnswer: "XYZ Cable Co.", explanation: "The bill specifies making payments to “XYZ Cable Co.”."),
            ExerciseItem(prompt: "Utility Bill: Water: $20.00, Gas: $30.00, Electric: $50.00. Total: $100.00. Which utility service cost the most?", options: ["Water", "Gas", "Electric", "They cost the same"], correctAnswer: "Electric", explanation: "Electric is $50.00, which is the highest amount."),
            ExerciseItem(prompt: "Car Insurance: Semi-Annual Premium: $600.00. How often do you pay this bill?", options: ["Every month", "Every 6 months (twice a year)", "Once a year", "Every week"], correctAnswer: "Every 6 months (twice a year)", explanation: "Semi-annual means twice a year, or every 6 months."),
            ExerciseItem(prompt: "Streaming Service Bill: Account Status: SUSPENDED. Balance Due: $15.00. Why is the service not working?", options: ["The internet is down", "The TV is broken", "The account is suspended for unpaid balance", "The stream is buffering"], correctAnswer: "The account is suspended for unpaid balance", explanation: "The bill states the account status is suspended."),
            ExerciseItem(prompt: "Gym Membership: Annual Fee: $120.00. Monthly Fee: $10.00. How much is the yearly fee?", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "The annual (yearly) fee is $120.00."),
            ExerciseItem(prompt: "Heating Bill: January: $110.00. July: $20.00. Why is the bill higher in January?", options: ["Gas is more expensive in summer", "More heat is used in the winter month of January", "The house is empty in January", "The clock changed"], correctAnswer: "More heat is used in the winter month of January", explanation: "Winter weather requires home heating, raising energy use."),
            ExerciseItem(prompt: "Credit Card Bill: Minimum Payment: $25.00. Total Balance: $500.00. What is the lowest amount you can pay this month to avoid a late penalty?", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "The “Minimum Payment” of $25.00 is the lowest acceptable amount."),
            ExerciseItem(prompt: "Medical Bill: Total Charge: $150.00. Insurance Covered: $120.00. Patient Responsibility: $30.00. How much do you owe?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "The patient responsibility is the amount the patient owes, which is $30.00."),
            ExerciseItem(prompt: "Newspaper Subscription: Next Renewal Date: Dec 31, 2026. If you want to cancel before renewing, when should you call?", options: ["Before Dec 31, 2026", "After Dec 31, 2026", "In January 2027", "Never"], correctAnswer: "Before Dec 31, 2026", explanation: "Cancelling before the renewal date stops the next billing cycle.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "What Would You Do?",
        instructions: "Choose the best response to the situation described.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "You smell smoke in your kitchen but do not see any fire. What should you do first?", options: ["Ignore it", "Open windows and check the stove", "Call a friend to chat", "Go back to sleep"], correctAnswer: "Open windows and check the stove", explanation: "Checking the stove is the first step to identify and resolve common minor smoke issues safely."),
            ExerciseItem(prompt: "You are at the grocery store and realize you forgot your wallet at home. What is the best option?", options: ["Take the groceries without paying", "Ask the cashier to hold your cart and go home to get it", "Leave the store crying", "Argue with the manager"], correctAnswer: "Ask the cashier to hold your cart and go home to get it", explanation: "Asking the clerk to hold the items is the polite and standard response."),
            ExerciseItem(prompt: "You drop a raw egg onto the kitchen floor and it breaks. What should you do?", options: ["Leave it there until tomorrow", "Wipe it up immediately with a paper towel and soap", "Cover it with a rug", "Let the cat eat it"], correctAnswer: "Wipe it up immediately with a paper towel and soap", explanation: "Raw eggs are slippery and attract bacteria, so they must be cleaned up quickly."),
            ExerciseItem(prompt: "Your friend tells you that their dog passed away yesterday. What should you say?", options: ["That is funny", "I am so sorry for your loss", "You should get a cat instead", "Can I have their toys?"], correctAnswer: "I am so sorry for your loss", explanation: "Offering condolences is the empathetic response to grief."),
            ExerciseItem(prompt: "You receive a phone call from an unknown number claiming you won a lottery and asking for your bank details. What should you do?", options: ["Give them your details immediately", "Hang up and do not share any personal details", "Ask them to call back later", "Call your family to celebrate"], correctAnswer: "Hang up and do not share any personal details", explanation: "Requests for sensitive bank details from unknown callers are common scams."),
            ExerciseItem(prompt: "You feel dizzy and lightheaded while standing up in a warm room. What should you do?", options: ["Keep standing and close your eyes", "Sit down immediately and drink some water", "Run to the bathroom", "Spin around"], correctAnswer: "Sit down immediately and drink some water", explanation: "Sitting down prevents falling, and water helps recover from dehydration."),
            ExerciseItem(prompt: "You see water leaking from under your kitchen sink. What is the first thing you should do?", options: ["Call a painter", "Place a bucket under the leak to catch the water", "Mop the kitchen floor later", "Turn off the lights"], correctAnswer: "Place a bucket under the leak to catch the water", explanation: "A bucket stops water damage immediately while you seek repairs."),
            ExerciseItem(prompt: "You are invited to a dinner party but you cannot go. What should you do?", options: ["Just do not show up", "Let the host know in advance that you cannot attend", "Show up late without warning", "Send a gift instead of replying"], correctAnswer: "Let the host know in advance that you cannot attend", explanation: "Informing the host beforehand is polite and lets them adjust their plans."),
            ExerciseItem(prompt: "You accidentally break a decorative vase at a friend’s house. What is the correct response?", options: ["Hide the pieces under the couch", "Apologize and offer to replace it", "Pretend you did not do it", "Blame the dog"], correctAnswer: "Apologize and offer to replace it", explanation: "Honesty and offering to fix the damage is the polite and responsible behavior."),
            ExerciseItem(prompt: "You cannot find your house keys and you are locked outside. What is the best step?", options: ["Break a window to get inside", "Call a family member with a spare key or a locksmith", "Wait on the porch forever", "Kick the door"], correctAnswer: "Call a family member with a spare key or a locksmith", explanation: "Getting a spare key or calling a professional is the safest way to gain entry."),
            ExerciseItem(prompt: "You notice the streetlights are on but your house has no electrical power. What should you do?", options: ["Check your circuit breaker box", "Buy a new television", "Go to bed immediately", "Call the police"], correctAnswer: "Check your circuit breaker box", explanation: "Checking the breakers helps determine if it is a local trip or a wider outage."),
            ExerciseItem(prompt: "You see an elderly neighbor struggling to carry heavy grocery bags. What should you do?", options: ["Walk past them quickly", "Offer to help them carry the bags", "Take a photo of them", "Tell them to walk faster"], correctAnswer: "Offer to help them carry the bags", explanation: "Offering assistance shows community support and kindness."),
            ExerciseItem(prompt: "You take a sip of coffee and realize it is too hot and burns your mouth. What should you do?", options: ["Drink the rest quickly", "Spit it out carefully and drink cold water", "Scream loudly", "Throw the mug"], correctAnswer: "Spit it out carefully and drink cold water", explanation: "Cold water cools down the burn and relieves discomfort."),
            ExerciseItem(prompt: "Your doctor prescribes a new medicine but you do not understand how to take it. What should you do?", options: ["Guess the dosage", "Ask the pharmacist or doctor to explain it to you", "Do not take the medicine", "Search for it on social media"], correctAnswer: "Ask the pharmacist or doctor to explain it to you", explanation: "Medical professionals are the only reliable source for prescription instructions."),
            ExerciseItem(prompt: "You accidentally spill red wine on your friend’s white carpet. What should you do?", options: ["Put a chair over the stain", "Apologize and help clean it up immediately", "Leave the party early", "Tell them it was grape juice"], correctAnswer: "Apologize and help clean it up immediately", explanation: "Cleaning spills right away prevents permanent stains."),
            ExerciseItem(prompt: "You hear your smoke alarm beep with a short chirp every minute. What does this mean?", options: ["There is a fire", "The battery is low and needs to be replaced", "The alarm is broken", "Nothing"], correctAnswer: "The battery is low and needs to be replaced", explanation: "Single short chirps indicate the backup battery is low."),
            ExerciseItem(prompt: "You are driving and see an emergency vehicle with flashing lights behind you. What should you do?", options: ["Speed up to stay ahead of it", "Pull over to the side of the road and stop safely", "Stop immediately in the middle of the lane", "Ignore it"], correctAnswer: "Pull over to the side of the road and stop safely", explanation: "Pulling over clears a path for emergency responders."),
            ExerciseItem(prompt: "You receive an email from your bank asking you to click a link to verify your password. What should you do?", options: ["Click the link and enter your password", "Delete the email or contact your bank directly using their official number", "Forward it to your friends", "Reply with your password"], correctAnswer: "Delete the email or contact your bank directly using their official number", explanation: "Banks do not ask for passwords via email links; this is a phishing scam."),
            ExerciseItem(prompt: "You find a wallet on the sidewalk containing money and an ID card. What should you do?", options: ["Keep the money and discard the wallet", "Turn it in to the police or try to contact the owner using the ID", "Leave it on the sidewalk", "Give it to a stranger"], correctAnswer: "Turn it in to the police or try to contact the owner using the ID", explanation: "Returning lost property to its owner is the honest action."),
            ExerciseItem(prompt: "Your smoke alarm goes off with a loud, continuous alarm. What should you do?", options: ["Ignore it and wait for it to stop", "Check for fire and exit the building safely if needed", "Change the batteries immediately", "Go to sleep"], correctAnswer: "Check for fire and exit the building safely if needed", explanation: "Continuous alarms signal smoke or fire, requiring prompt safety checks and evacuation.")
        ]
    )

}
