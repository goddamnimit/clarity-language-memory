import Foundation

/// Holds the static therapy content for the Cognition section of Clarity.
struct CognitionExerciseData {
    
    /// The complete collection of all 14 Cognition exercises.
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
    
    // MARK: - Exercise 1: WH Questions — What
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "WH Questions — What",
        instructions: "Answer each question by choosing the correct option.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "What do you call the person who cuts and styles hair?", options: ["Plumber", "Hairdresser or barber", "Electrician", "Optometrist"], correctAnswer: "Hairdresser or barber", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the longest river in the world?", options: ["The Amazon", "The Mississippi", "The Nile", "The Yangtze"], correctAnswer: "The Nile", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call the meal eaten in the middle of the day?", options: ["Breakfast", "Brunch", "Dinner", "Lunch"], correctAnswer: "Lunch", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you use to sweep the floor?", options: ["Mop", "Dustpan", "Broom", "Vacuum"], correctAnswer: "Broom", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the name of the planet we live on?", options: ["Mars", "Venus", "Earth", "Jupiter"], correctAnswer: "Earth", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call the person who flies an airplane?", options: ["Engineer", "Conductor", "Captain", "Pilot"], correctAnswer: "Pilot", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What season comes after summer?", options: ["Spring", "Winter", "Autumn or Fall", "Summer again"], correctAnswer: "Autumn or Fall", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call a person who creates paintings and sculptures?", options: ["Architect", "Artist", "Author", "Musician"], correctAnswer: "Artist", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the name of the holiday celebrated on October 31st?", options: ["Thanksgiving", "Christmas", "Halloween", "Easter"], correctAnswer: "Halloween", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call a person who fixes broken pipes and drains?", options: ["Electrician", "Carpenter", "Plumber", "Locksmith"], correctAnswer: "Plumber", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the small device you use to change TV channels without getting up?", options: ["A cell phone", "A remote control", "A tablet", "A keyboard"], correctAnswer: "A remote control", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the name of the sport where you hit a small white ball into a hole?", options: ["Tennis", "Baseball", "Golf", "Croquet"], correctAnswer: "Golf", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What color do you get when you mix red and white paint?", options: ["Purple", "Orange", "Pink", "Peach"], correctAnswer: "Pink", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What tool do you use to tell time?", options: ["Thermometer", "Compass", "Calculator", "Clock or watch"], correctAnswer: "Clock or watch", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you use to cut paper?", options: ["A knife", "Scissors", "A razor", "A box cutter"], correctAnswer: "Scissors", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What appliance keeps your food cold?", options: ["Oven", "Microwave", "Refrigerator", "Dishwasher"], correctAnswer: "Refrigerator", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call the person who puts out fires?", options: ["Police officer", "Paramedic", "Firefighter", "Security guard"], correctAnswer: "Firefighter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call a place you go to borrow books for free?", options: ["Bookstore", "Museum", "Library", "School"], correctAnswer: "Library", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What do you call the hard outer layer that protects a tooth?", options: ["Dentin", "Pulp", "Enamel", "Crown"], correctAnswer: "Enamel", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What document do you need to travel between countries?", options: ["Driver's license", "Birth certificate", "Passport", "Social Security card"], correctAnswer: "Passport", explanation: "")
        ]
    )
    
    // MARK: - Exercise 2: WH Questions — Where
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "WH Questions — Where",
        instructions: "Choose the correct answer for where each item or location is found.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Where do you go to swim laps indoors?", options: ["Gym", "Park", "Swimming pool", "Lake"], correctAnswer: "Swimming pool", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Statue of Liberty?", options: ["Washington D.C.", "Chicago", "Los Angeles", "New York City"], correctAnswer: "New York City", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to get your hair cut?", options: ["Pharmacy", "Barbershop or hair salon", "Doctor's office", "Spa"], correctAnswer: "Barbershop or hair salon", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find a judge and a jury?", options: ["City hall", "Police station", "Courthouse", "School"], correctAnswer: "Courthouse", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Great Wall?", options: ["Japan", "India", "China", "South Korea"], correctAnswer: "China", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do students go to learn after high school?", options: ["Trade school only", "High school again", "College or university", "Vocational center"], correctAnswer: "College or university", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Colosseum?", options: ["Athens", "Paris", "Madrid", "Rome"], correctAnswer: "Rome", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to buy stamps and mail packages?", options: ["Bank", "Pharmacy", "Grocery store", "Post office"], correctAnswer: "Post office", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find Big Ben?", options: ["Paris", "Berlin", "London", "Amsterdam"], correctAnswer: "London", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Amazon rainforest?", options: ["Africa", "Southeast Asia", "Central America", "South America"], correctAnswer: "South America", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to fill a prescription?", options: ["Hospital", "Doctor's office", "Pharmacy", "Clinic"], correctAnswer: "Pharmacy", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find Mount Rushmore?", options: ["Montana", "Wyoming", "Colorado", "South Dakota"], correctAnswer: "South Dakota", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Taj Mahal?", options: ["China", "Pakistan", "Bangladesh", "India"], correctAnswer: "India", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to deposit or withdraw money?", options: ["Post office", "Credit union or bank", "Pharmacy", "Grocery store"], correctAnswer: "Credit union or bank", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go when you have a medical emergency?", options: ["Pharmacy", "Urgent care", "Hospital emergency room", "Doctor's office"], correctAnswer: "Hospital emergency room", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Eiffel Tower?", options: ["Belgium", "Italy", "Spain", "France"], correctAnswer: "France", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to get a cavity filled?", options: ["Eye doctor", "Dermatologist", "Dentist", "Ear doctor"], correctAnswer: "Dentist", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where can you borrow books, CDs, or DVDs for free?", options: ["Bookstore", "Museum", "Movie theater", "Library"], correctAnswer: "Library", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Pyramids of Giza?", options: ["Morocco", "Sudan", "Libya", "Egypt"], correctAnswer: "Egypt", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where do you go to watch a movie on a big screen?", options: ["Theater", "Drive-in", "Movie theater or cinema", "Auditorium"], correctAnswer: "Movie theater or cinema", explanation: "")
        ]
    )
    
    // MARK: - Exercise 3: WH Questions — Who
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "WH Questions — Who",
        instructions: "Identify the historical figure or professional described.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Who wrote Romeo and Juliet?", options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "John Keats"], correctAnswer: "William Shakespeare", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was the first woman to win a Nobel Prize?", options: ["Rosalind Franklin", "Florence Nightingale", "Marie Curie", "Ada Lovelace"], correctAnswer: "Marie Curie", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who painted the Mona Lisa?", options: ["Michelangelo", "Raphael", "Leonardo da Vinci", "Botticelli"], correctAnswer: "Leonardo da Vinci", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who invented the light bulb?", options: ["Nikola Tesla", "Benjamin Franklin", "Alexander Graham Bell", "Thomas Edison"], correctAnswer: "Thomas Edison", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Martin Luther King Jr.?", options: ["The 35th US President", "A civil rights leader who championed racial equality", "The first Black senator", "A Supreme Court justice"], correctAnswer: "A civil rights leader who championed racial equality", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who takes care of your teeth professionally?", options: ["Optometrist", "Dermatologist", "Dentist", "Audiologist"], correctAnswer: "Dentist", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Abraham Lincoln?", options: ["The 1st US President", "The 10th US President", "The 16th US President", "The 32nd US President"], correctAnswer: "The 16th US President", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Amelia Earhart?", options: ["First woman in space", "First woman to fly solo across the Atlantic", "First female US pilot", "First woman to break the sound barrier"], correctAnswer: "First woman to fly solo across the Atlantic", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Mother Teresa?", options: ["A politician who fought for women's rights", "A scientist who discovered penicillin", "A nun and humanitarian who cared for the poor in India", "A civil rights activist in the US"], correctAnswer: "A nun and humanitarian who cared for the poor in India", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Rosa Parks?", options: ["A senator from Alabama", "A civil rights activist who refused to give up her bus seat", "The first Black woman to vote", "A Supreme Court justice"], correctAnswer: "A civil rights activist who refused to give up her bus seat", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Winston Churchill?", options: ["US President during World War II", "Prime Minister of the UK during World War II", "French general who led the resistance", "Canadian Prime Minister during World War II"], correctAnswer: "Prime Minister of the UK during World War II", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Harriet Tubman?", options: ["First Black congresswoman", "An abolitionist who led enslaved people to freedom", "First Black woman to win a Nobel Prize", "A civil rights leader in the 1960s"], correctAnswer: "An abolitionist who led enslaved people to freedom", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was the first person to walk on the moon?", options: ["Buzz Aldrin", "Yuri Gagarin", "John Glenn", "Neil Armstrong"], correctAnswer: "Neil Armstrong", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who delivers your mail?", options: ["A courier", "A delivery driver", "A mail carrier", "A dispatcher"], correctAnswer: "A mail carrier", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was Cleopatra?", options: ["Queen of ancient Greece", "Empress of Rome", "Queen of ancient Egypt", "Queen of Persia"], correctAnswer: "Queen of ancient Egypt", explanation: "")
        ]
    )
    
    // MARK: - Exercise 4: WH Questions — When
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "WH Questions — When",
        instructions: "Identify the correct date or timeframe for each milestone.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "When do Americans celebrate Independence Day?", options: ["June 4th", "July 4th", "August 4th", "September 4th"], correctAnswer: "July 4th", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is Valentine's Day?", options: ["January 14th", "March 14th", "February 14th", "April 14th"], correctAnswer: "February 14th", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is Thanksgiving celebrated in the US?", options: ["First Thursday of November", "Second Thursday of November", "Third Thursday of November", "Fourth Thursday of November"], correctAnswer: "Fourth Thursday of November", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is Mother's Day celebrated in the US?", options: ["First Sunday of May", "Second Sunday of May", "Third Sunday of May", "Last Sunday of May"], correctAnswer: "Second Sunday of May", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is Father's Day in the US?", options: ["First Sunday of June", "Second Sunday of June", "Third Sunday of June", "Last Sunday of June"], correctAnswer: "Third Sunday of June", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is Memorial Day observed in the US?", options: ["First Monday of May", "Last Monday of May", "First Monday of June", "Last Monday of April"], correctAnswer: "Last Monday of May", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When was World War II fought?", options: ["1914 to 1918", "1929 to 1935", "1939 to 1945", "1941 to 1949"], correctAnswer: "1939 to 1945", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When do leaves change color in the northeastern US?", options: ["July through August", "September through November", "December through February", "April through May"], correctAnswer: "September through November", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When do most people celebrate the New Year?", options: ["December 31st", "January 2nd", "January 1st", "December 25th"], correctAnswer: "January 1st", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When do clocks spring forward for daylight saving time?", options: ["First Sunday of February", "Second Sunday of March", "First Sunday of April", "Last Sunday of March"], correctAnswer: "Second Sunday of March", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is New Year's Eve?", options: ["December 30th", "January 1st", "November 30th", "December 31st"], correctAnswer: "December 31st", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When is Christmas celebrated?", options: ["December 24th", "December 26th", "December 25th", "January 6th"], correctAnswer: "December 25th", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When do most flowers bloom in the US?", options: ["Winter", "Fall", "Summer", "Spring"], correctAnswer: "Spring", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When do people eat breakfast?", options: ["At noon", "In the evening", "In the morning", "At midnight"], correctAnswer: "In the morning", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "When do birds migrate south in North America?", options: ["Spring", "Summer", "Winter", "Fall"], correctAnswer: "Fall", explanation: "")
        ]
    )
    
    // MARK: - Exercise 5: WHY Questions
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "WH Questions — Why",
        instructions: "Choose the correct logical explanation for each scenario.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Why do people wash their hands before eating?", options: ["To warm their hands", "To remove germs and prevent illness", "Because it is polite", "To soften their skin"], correctAnswer: "To remove germs and prevent illness", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do dogs pant?", options: ["Because they are hungry", "Because they are scared", "To cool themselves down", "To get attention"], correctAnswer: "To cool themselves down", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do people wear seat belts?", options: ["Because it is comfortable", "To reduce the risk of injury in a car accident", "Because the car requires it", "To stay warm"], correctAnswer: "To reduce the risk of injury in a car accident", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do you need to refrigerate certain foods?", options: ["To make them taste better", "To keep them frozen", "To slow bacterial growth and prevent spoiling", "To save space"], correctAnswer: "To slow bacterial growth and prevent spoiling", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do leaves change color in fall?", options: ["Because of frost killing the leaves", "Because trees stop producing chlorophyll as days shorten", "Because of changes in rainfall", "Because animals eat the green parts"], correctAnswer: "Because trees stop producing chlorophyll as days shorten", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do doctors take blood pressure readings?", options: ["To check your weight", "To monitor heart health and detect hypertension", "To measure your fitness level", "To check for diabetes"], correctAnswer: "To monitor heart health and detect hypertension", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do we have traffic lights?", options: ["To slow down traffic", "To help pedestrians cross", "To regulate traffic flow and reduce accidents", "To replace police officers"], correctAnswer: "To regulate traffic flow and reduce accidents", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why should you wear sunscreen?", options: ["To stay cool in the sun", "To prevent freckles", "To protect skin from UV radiation", "To keep your skin moist"], correctAnswer: "To protect skin from UV radiation", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do mosquito bites itch?", options: ["Because of the blood they take", "Because of bacteria they leave", "Because their saliva triggers an immune response", "Because they inject venom"], correctAnswer: "Because their saliva triggers an immune response", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why is it important to vote?", options: ["Because it is required by law", "To have a say in choosing government representatives", "To avoid paying fines", "Because your employer requires it"], correctAnswer: "To have a say in choosing government representatives", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do humans need to sleep?", options: ["Just to rest muscles", "To avoid overeating", "The body repairs itself and the brain consolidates memories", "To conserve energy only"], correctAnswer: "The body repairs itself and the brain consolidates memories", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do we brush our teeth?", options: ["To freshen breath only", "To whiten teeth", "To remove plaque and bacteria that cause cavities", "To strengthen enamel only"], correctAnswer: "To remove plaque and bacteria that cause cavities", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do people wear coats in winter?", options: ["For fashion", "To keep dry in rain", "To insulate the body and stay warm", "To protect against wind only"], correctAnswer: "To insulate the body and stay warm", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do people recycle?", options: ["To earn money from recycling centers", "To reduce waste and conserve natural resources", "Because the government requires it", "To keep their homes clean"], correctAnswer: "To reduce waste and conserve natural resources", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Why do people make a will?", options: ["To avoid paying taxes", "To plan their funeral", "To legally specify who receives their belongings after they die", "To protect against lawsuits"], correctAnswer: "To legally specify who receives their belongings after they die", explanation: "")
        ]
    )
    
    // MARK: - Exercise 6: HOW Questions
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "WH Questions — How",
        instructions: "Choose the correct numerical or structural answer.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "How many days are in a week?", options: ["5", "6", "7", "8"], correctAnswer: "7", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many weeks are in a year?", options: ["48", "50", "52", "54"], correctAnswer: "52", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many sides does a hexagon have?", options: ["4", "5", "6", "7"], correctAnswer: "6", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many ounces are in a pound?", options: ["8", "12", "16", "20"], correctAnswer: "16", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many feet are in a mile?", options: ["2,640", "3,520", "5,280", "6,000"], correctAnswer: "5,280", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many quarters make a dollar?", options: ["2", "3", "4", "5"], correctAnswer: "4", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many teaspoons are in a tablespoon?", options: ["2", "3", "4", "5"], correctAnswer: "3", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many days are in April?", options: ["28", "29", "30", "31"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many eggs are in a dozen?", options: ["6", "10", "12", "24"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many inches are in a foot?", options: ["8", "10", "12", "16"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many states are in the United States?", options: ["48", "49", "50", "52"], correctAnswer: "50", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How long does a typical human pregnancy last?", options: ["6 months", "7 months", "8 months", "9 months"], correctAnswer: "9 months", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many hours are in a day?", options: ["20", "22", "24", "26"], correctAnswer: "24", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many months are in a year?", options: ["10", "11", "12", "13"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you treat a minor burn?", options: ["Apply butter or oil", "Use ice directly on the burn", "Cool under running cold water for 10 minutes", "Cover tightly with a bandage immediately"], correctAnswer: "Cool under running cold water for 10 minutes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you stop a nosebleed?", options: ["Tilt your head back", "Blow your nose hard", "Pinch the soft part of your nose and lean slightly forward", "Lie down flat"], correctAnswer: "Pinch the soft part of your nose and lean slightly forward", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many legs does a spider have?", options: ["4", "6", "8", "10"], correctAnswer: "8", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many pennies are in a dollar?", options: ["50", "75", "100", "200"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many years are in a century?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How can you tell if food has gone bad?", options: ["By the color of the packaging", "By the brand name", "By checking for mold, bad smell, unusual texture, or expiration date", "By how heavy it feels"], correctAnswer: "By checking for mold, bad smell, unusual texture, or expiration date", explanation: "")
        ]
    )
    
    // MARK: - Exercise 7: Yes or No Questions
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "Yes or No Questions",
        instructions: "Tap YES or NO.",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Is the sun a star?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Does ice float in water?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is Paris the capital of Germany?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Berlin is the capital of Germany"),
            ExerciseItem(id: UUID(), prompt: "Does the moon produce its own light?", options: ["Yes", "No"], correctAnswer: "No", explanation: "It reflects light from the sun"),
            ExerciseItem(id: UUID(), prompt: "Is the Pacific Ocean the largest ocean on Earth?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is Abraham Lincoln's portrait on the US penny?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Does the moon orbit the Earth?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Does the human heart have four chambers?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Can humans live a normal life without a gallbladder?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is a bat classified as a mammal?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Bats are mammals, not birds"),
            ExerciseItem(id: UUID(), prompt: "Was Neil Armstrong the first human to walk on the moon?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "On July 20, 1969"),
            ExerciseItem(id: UUID(), prompt: "Is it a myth that the Great Wall of China is visible from space with the naked eye?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "It is not actually visible from space without aid"),
            ExerciseItem(id: UUID(), prompt: "Does a human baby have more bones than an adult?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Babies have about 270 to 300 bones; adults have 206"),
            ExerciseItem(id: UUID(), prompt: "Is the Sahara the largest hot desert in the world?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is Brazil located in South America?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is a nickel worth more than a dime?", options: ["Yes", "No"], correctAnswer: "No", explanation: "A dime is worth 10 cents; a nickel is worth 5 cents"),
            ExerciseItem(id: UUID(), prompt: "Is a penguin a type of bird?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Penguins are birds, though they cannot fly"),
            ExerciseItem(id: UUID(), prompt: "Is a dolphin classified as a mammal?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Dolphins breathe air and nurse their young"),
            ExerciseItem(id: UUID(), prompt: "Does the sun rise in the east?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Is Alaska the largest US state by land area?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "")
        ]
    )
    
    // MARK: - Exercise 8: General Knowledge — History
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "General Knowledge — History",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Who was the first President of the United States?", options: ["John Adams", "George Washington", "Thomas Jefferson", "Benjamin Franklin"], correctAnswer: "George Washington", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In what year did the Titanic sink?", options: ["1901", "1912", "1918", "1935"], correctAnswer: "1912", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which country did the US declare independence from?", options: ["France", "Spain", "Great Britain", "Germany"], correctAnswer: "Great Britain", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who led India's independence movement through nonviolent resistance?", options: ["Jawaharlal Nehru", "Mahatma Gandhi", "Indira Gandhi", "Subhas Bose"], correctAnswer: "Mahatma Gandhi", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What was the war fought between the Northern and Southern states of America called?", options: ["The Revolutionary War", "World War I", "The Civil War", "The War of 1812"], correctAnswer: "The Civil War", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In what city were the first modern Olympic Games held in 1896?", options: ["Paris", "London", "Rome", "Athens, Greece"], correctAnswer: "Athens, Greece", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What childhood disease did Jonas Salk develop a vaccine for in 1955?", options: ["Smallpox", "Tuberculosis", "Polio", "Measles"], correctAnswer: "Polio", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In what year did World War I begin?", options: ["1914", "1918", "1939", "1905"], correctAnswer: "1914", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What country first sent a human to the moon?", options: ["Russia", "France", "Great Britain", "The United States"], correctAnswer: "The United States", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who is credited with inventing the printing press around 1440?", options: ["Leonardo da Vinci", "Galileo", "Johannes Gutenberg", "Isaac Newton"], correctAnswer: "Johannes Gutenberg", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which US President signed the Civil Rights Act of 1964?", options: ["John F. Kennedy", "Richard Nixon", "Lyndon B. Johnson", "Dwight Eisenhower"], correctAnswer: "Lyndon B. Johnson", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What ship did the Pilgrims sail to America in 1620?", options: ["The Nina", "The Pinta", "The Mayflower", "The Victoria"], correctAnswer: "The Mayflower", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who delivered the 'I Have a Dream' speech in 1963?", options: ["Malcolm X", "Barack Obama", "Martin Luther King Jr.", "Frederick Douglass"], correctAnswer: "Martin Luther King Jr.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What war ended when atomic bombs were dropped on Japan?", options: ["World War I", "The Korean War", "The Vietnam War", "World War II"], correctAnswer: "World War II", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was the first woman to serve as US Secretary of State?", options: ["Hillary Clinton", "Condoleezza Rice", "Madeleine Albright", "Janet Reno"], correctAnswer: "Madeleine Albright", explanation: "")
        ]
    )
    
    // MARK: - Exercise 9: General Knowledge — Locations
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "General Knowledge — Locations",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "What country borders the United States to the north?", options: ["Mexico", "Russia", "Canada", "Greenland"], correctAnswer: "Canada", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In which US state is the Grand Canyon located?", options: ["Colorado", "Utah", "Nevada", "Arizona"], correctAnswer: "Arizona", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Tokyo is the capital city of which country?", options: ["China", "South Korea", "Japan", "Thailand"], correctAnswer: "Japan", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which US state is the largest by land area?", options: ["Texas", "California", "Montana", "Alaska"], correctAnswer: "Alaska", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the capital city of France?", options: ["Lyon", "Marseille", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which country is often said to be shaped like a boot?", options: ["Spain", "Greece", "Italy", "Portugal"], correctAnswer: "Italy", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the smallest country in the world by area?", options: ["Monaco", "San Marino", "Liechtenstein", "Vatican City"], correctAnswer: "Vatican City", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which US state is nicknamed the Sunshine State?", options: ["California", "Hawaii", "Florida", "Arizona"], correctAnswer: "Florida", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which ocean borders the eastern coast of the United States?", options: ["Pacific", "Indian", "Arctic", "Atlantic"], correctAnswer: "Atlantic", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the capital of the United States?", options: ["New York City", "Los Angeles", "Washington D.C.", "Chicago"], correctAnswer: "Washington D.C.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "In which country would you find the Great Pyramid of Giza?", options: ["Marruecos", "Túnez", "Libia", "Egipto"], correctAnswer: "Egipto", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the tallest mountain in the world?", options: ["K2", "Kilimanjaro", "Mount Everest", "Denali"], correctAnswer: "Mount Everest", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What country currently has the largest population in the world?", options: ["United States", "Russia", "India", "China"], correctAnswer: "India", explanation: "India surpassed China in 2023"),
            ExerciseItem(id: UUID(), prompt: "What is the capital city of Australia?", options: ["Sydney", "Melbourne", "Canberra", "Brisbane"], correctAnswer: "Canberra", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is the capital of Canada?", options: ["Toronto", "Vancouver", "Ottawa", "Montreal"], correctAnswer: "Ottawa", explanation: "")
        ]
    )
    
    // MARK: - Exercise 10: General Knowledge — Popular Media
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "General Knowledge — Popular Media",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "What TV show features Ross, Rachel, Monica, Chandler, Joey, and Phoebe?", options: ["Seinfeld", "Friends", "The Office", "Cheers"], correctAnswer: "Friends", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was known as the Queen of Soul and sang Respect?", options: ["Whitney Houston", "Diana Ross", "Aretha Franklin", "Tina Turner"], correctAnswer: "Aretha Franklin", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What animated film features a clownfish searching for his missing son?", options: ["Shark Tale", "The Little Mermaid", "Finding Nemo", "Happy Feet"], correctAnswer: "Finding Nemo", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What classic rock band recorded Hotel California?", options: ["The Doors", "Fleetwood Mac", "The Eagles", "The Beach Boys"], correctAnswer: "The Eagles", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who played the title role in the 1994 film Forrest Gump?", options: ["Tom Cruise", "Tom Hanks", "Kevin Costner", "Dustin Hoffman"], correctAnswer: "Tom Hanks", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What 1950s sitcom starred Lucille Ball as a woman always getting into comic trouble?", options: ["The Dick Van Dyke Show", "Bewitched", "I Love Lucy", "The Honeymooners"], correctAnswer: "I Love Lucy", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What Herman Melville novel begins with the line Call me Ishmael?", options: ["The Old Man and the Sea", "Billy Budd", "Moby-Dick", "Treasure Island"], correctAnswer: "Moby-Dick", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who recorded the classic song My Way in 1969?", options: ["Dean Martin", "Sammy Davis Jr.", "Frank Sinatra", "Tony Bennett"], correctAnswer: "Frank Sinatra", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What Pixar film from 1995 features a cowboy doll named Woody?", options: ["A Bug's Life", "Toy Story", "Cars", "Monsters Inc."], correctAnswer: "Toy Story", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What animated show features a yellow-skinned family in the town of Springfield?", options: ["Family Guy", "Bob's Burgers", "American Dad", "The Simpsons"], correctAnswer: "The Simpsons", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who wrote the Harry Potter book series?", options: ["Roald Dahl", "J.R.R. Tolkien", "J.K. Rowling", "C.S. Lewis"], correctAnswer: "J.K. Rowling", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What game show features contestants solving word puzzles by spinning a wheel?", options: ["Jeopardy!", "Wheel of Fortune", "The Price Is Right", "Deal or No Deal"], correctAnswer: "Wheel of Fortune", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was nicknamed The King of Rock and Roll?", options: ["Chuck Berry", "Jerry Lee Lewis", "Elvis Presley", "Buddy Holly"], correctAnswer: "Elvis Presley", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What classic 1939 film features Dorothy, a scarecrow, a tin man, and a cowardly lion?", options: ["Snow White", "Sleeping Beauty", "The Wizard of Oz", "Fantasia"], correctAnswer: "The Wizard of Oz", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What J.R.R. Tolkien trilogy features the hobbit Frodo Baggins?", options: ["The Chronicles of Narnia", "Harry Potter", "The Lord of the Rings", "Eragon"], correctAnswer: "The Lord of the Rings", explanation: "")
        ]
    )
    
    // MARK: - Exercise 11: Figurative Language — Idioms
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "Figurative Language — Idioms",
        instructions: "Explain what each expression means in plain language. Tap 'Show Answer' to see the model explanation.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mrs. Hansen has a green thumb.", options: [], correctAnswer: "She is good at growing plants and gardening.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "I paid an arm and a leg for my new washer.", options: [], correctAnswer: "I paid a very high price for it.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Don't spill the beans about Jennifer's engagement.", options: [], correctAnswer: "Don't reveal the secret.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "The grass is always greener on the other side.", options: [], correctAnswer: "Other people's situations always seem better than your own.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You look like a million bucks.", options: [], correctAnswer: "You look wonderful or very impressive.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "He has a chip on his shoulder.", options: [], correctAnswer: "He carries a grudge or is easily offended.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "She let the cat out of the bag.", options: [], correctAnswer: "She accidentally revealed a secret.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "She hit the nail on the head.", options: [], correctAnswer: "She described or identified something exactly right.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "He's biting the bullet.", options: [], correctAnswer: "He is enduring something painful or difficult with courage.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "He's barking up the wrong tree.", options: [], correctAnswer: "He is pursuing the wrong person or looking in the wrong place.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "She threw him under the bus.", options: [], correctAnswer: "She sacrificed or blamed him to protect herself.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "He's sitting on the fence.", options: [], correctAnswer: "He refuses to take a position or make a decision.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "She put her foot in her mouth.", options: [], correctAnswer: "She said something embarrassing or socially inappropriate.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "He's got cold feet.", options: [], correctAnswer: "He is nervous and hesitant about going through with something.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "He passed the buck.", options: [], correctAnswer: "He shifted his responsibility to someone else.", explanation: "")
        ]
    )
    
    // MARK: - Exercise 12: Estimation and Logic
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "Estimation and Logic",
        instructions: "Choose the most logical or reasonable answer.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "How long does it typically take to soft-boil an egg?", options: ["1 minute", "6 minutes", "20 minutes", "1 hour"], correctAnswer: "6 minutes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many eggs come in a standard carton?", options: ["6", "12", "18", "24"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many wheels does a standard car have?", options: ["2", "3", "4", "6"], correctAnswer: "4", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Approximately how many gallons does a standard bathtub hold when full?", options: ["5 gallons", "15 gallons", "30 to 40 gallons", "100 gallons"], correctAnswer: "30 to 40 gallons", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many legs does an elephant have?", options: ["2", "3", "4", "6"], correctAnswer: "4", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many years are in a century?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many individual dollar bills make up one hundred dollars?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How fast does a person typically walk?", options: ["About 1 mph", "About 3 mph", "About 15 mph", "About 30 mph"], correctAnswer: "About 3 mph", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many days are in a standard non-leap year?", options: ["300", "356", "365", "400"], correctAnswer: "365", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many slices of bread are in a standard sandwich?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many seasons are in a year?", options: ["2", "3", "4", "5"], correctAnswer: "4", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Can a person lift a full-size car by themselves with no equipment?", options: ["Yes easily", "Yes with training", "No a car is far too heavy", "Yes with one hand"], correctAnswer: "No a car is far too heavy", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If you eat 3 meals a day how many meals do you eat in a week?", options: ["3", "7", "14", "21"], correctAnswer: "21", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How much does a standard 5-pound bag of flour weigh?", options: ["1 lb", "5 lbs", "50 lbs", "100 lbs"], correctAnswer: "5 lbs", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many months in a year have exactly 31 days?", options: ["5", "6", "7", "8"], correctAnswer: "7", explanation: "January, March, May, July, August, October, December"),
            ExerciseItem(id: UUID(), prompt: "How many zeros are in the number one million?", options: ["4", "5", "6", "7"], correctAnswer: "6", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Which is heavier — a pound of feathers or a pound of lead bricks?", options: ["The lead bricks", "The feathers", "They weigh the same", "It depends"], correctAnswer: "They weigh the same", explanation: "Both are one pound"),
            ExerciseItem(id: UUID(), prompt: "About how many hours of sleep do most healthy adults need per night?", options: ["3 to 4", "6 to 8", "10 to 12", "14 to 16"], correctAnswer: "6 to 8", explanation: "")
        ]
    )
    
    // MARK: - Exercise 13: Deductive Reasoning
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "Deductive Reasoning",
        instructions: "Read each scenario and choose the most logical conclusion.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Someone is wearing a swimsuit and sunglasses. What are they probably about to do?", options: ["Go to the movies", "Go to the beach or pool", "Attend a formal wedding", "Go grocery shopping"], correctAnswer: "Go to the beach or pool", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "An emergency vehicle is driving past with lights and sirens on. What should you do?", options: ["Speed up", "Pull over and stop until it passes", "Honk your horn", "Ignore it"], correctAnswer: "Pull over and stop until it passes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A person is holding an umbrella and wearing a raincoat. What is the weather most likely?", options: ["Hot and sunny", "Cold and snowy", "Rainy", "Dry and windy"], correctAnswer: "Rainy", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "All the lights in your house go out suddenly at night. What most likely happened?", options: ["The sun set", "A power outage occurred", "You closed your eyes", "The TV turned off"], correctAnswer: "A power outage occurred", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "It snowed heavily overnight. You need to drive. What should you do first?", options: ["Drive at normal speed", "Check road conditions and clear your windshield", "Call the police", "Stay home forever"], correctAnswer: "Check road conditions and clear your windshield", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You lit candles for dinner and need to leave the room for 20 minutes. What should you do?", options: ["Leave the candles burning", "Blow them out before you leave", "Ignore them", "Open a window"], correctAnswer: "Blow them out before you leave", explanation: "Never leave candles unattended"),
            ExerciseItem(id: UUID(), prompt: "Your friend is shivering uncontrollably and confused after being outside in freezing cold for a long time. What might be wrong?", options: ["Heat exhaustion", "Hypothermia", "Dehydration", "Sunburn"], correctAnswer: "Hypothermia", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You smell gas in your kitchen. What is the most important first action?", options: ["Light a match to locate the leak", "Turn on the lights", "Leave immediately and call the gas company from outside", "Open the oven to check"], correctAnswer: "Leave immediately and call the gas company from outside", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Someone is at an altar in a church wearing a formal white gown. What event is most likely taking place?", options: ["A graduation", "A funeral", "A wedding", "A birthday party"], correctAnswer: "A wedding", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You see a person wearing a cap and gown holding a diploma. What event did they probably just attend?", options: ["A wedding", "A graduation ceremony", "A funeral", "A job interview"], correctAnswer: "A graduation ceremony", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You find a coin on the ground and see Abraham Lincoln's portrait on the front. What coin is it?", options: ["A quarter", "A dime", "A nickel", "A penny"], correctAnswer: "A penny", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You hear thunder rumbling in the distance. What weather is most likely approaching?", options: ["A tornado", "A thunderstorm", "An earthquake", "A blizzard"], correctAnswer: "A thunderstorm", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A person is wearing a heavy parka, insulated boots, and thick gloves. What season is it probably?", options: ["Summer", "Spring", "Winter", "Fall"], correctAnswer: "Winter", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You receive a bill stamped PAST DUE in red. What does this mean?", options: ["You paid early", "Your payment was received on time", "Your bill is not yet due", "You owe a payment that should have been made already"], correctAnswer: "You owe a payment that should have been made already", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A person in a hospital hallway is wearing scrubs and a stethoscope. What is their most likely profession?", options: ["A teacher", "A chef", "A doctor or nurse", "A police officer"], correctAnswer: "A doctor or nurse", explanation: "")
        ]
    )
    
    // MARK: - Exercise 14: Memory — About Yourself
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "Memory — About Yourself",
        instructions: "These prompts are meant to engage long-term personal memory. There are no wrong answers. Take your time.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "What was the name of the street or neighborhood you grew up on?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is your earliest childhood memory?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What did you want to be when you grew up as a child?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Describe your wedding day, or a wedding you attended that you remember well.", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is a song that takes you right back to a specific time in your life?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who was your favorite teacher and what made them special?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Describe a car you owned or remember fondly — the color, the model, how it felt.", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is your favorite holiday meal, and who cooked it?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Where were you when a big historical event happened — the moon landing, September 11, or the Berlin Wall coming down?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What was your first job, and what do you remember about it?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Describe a vacation or trip that you loved. Where did you go? Who were you with?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What games did you play as a child — indoors or outdoors?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Describe your childhood home in as much detail as you can.", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is a smell that brings back a strong memory for you?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What was a skill or hobby you had that you are proud of?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Describe a time you laughed so hard it hurt.", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is a family tradition that was important to you growing up?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Who taught you to drive, cook, or do something important in your life?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is something your parents or grandparents always used to say?", options: [], correctAnswer: "", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "What is a food from your childhood that you still love today?", options: [], correctAnswer: "")
        ]
    )
}
