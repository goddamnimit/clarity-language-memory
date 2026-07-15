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
            ExerciseItem(id: UUID(), prompt: "What do you call the person who cuts and styles hair?", options: ["Plumber", "Hairdresser or barber", "Electrician", "Optometrist"], correctAnswer: "Hairdresser or barber", explanation: "This is a factual definition. A hairdresser or barber is the professional occupational title for someone who specializes in cutting, styling, and grooming hair."),
            ExerciseItem(id: UUID(), prompt: "What is the longest river in the world?", options: ["The Amazon", "The Mississippi", "The Nile", "The Yangtze"], correctAnswer: "The Nile", explanation: "This is a geographical fact. The Nile River in Africa is traditionally considered the longest river in the world."),
            ExerciseItem(id: UUID(), prompt: "What do you call the meal eaten in the middle of the day?", options: ["Breakfast", "Brunch", "Dinner", "Lunch"], correctAnswer: "Lunch", explanation: "This is a factual definition of vocabulary. In English, 'lunch' is the universally accepted term for the midday meal."),
            ExerciseItem(id: UUID(), prompt: "What do you use to sweep the floor?", options: ["Mop", "Dustpan", "Broom", "Vacuum"], correctAnswer: "Broom", explanation: "This is a factual statement about tool utility. A broom is specifically designed with bristles attached to a handle for the purpose of sweeping dirt and debris off floors."),
            ExerciseItem(id: UUID(), prompt: "What is the name of the planet we live on?", options: ["Mars", "Venus", "Earth", "Jupiter"], correctAnswer: "Earth", explanation: "Earth is the third planet from the Sun and the only astronomical object known to harbor life."),
            ExerciseItem(id: UUID(), prompt: "What do you call the person who flies an airplane?", options: ["Engineer", "Conductor", "Captain", "Pilot"], correctAnswer: "Pilot", explanation: "A pilot is a trained professional who operates the flying controls of an aircraft."),
            ExerciseItem(id: UUID(), prompt: "What season comes after summer?", options: ["Spring", "Winter", "Autumn or Fall", "Summer again"], correctAnswer: "Autumn or Fall", explanation: "Autumn, or fall, is the transition season between summer and winter."),
            ExerciseItem(id: UUID(), prompt: "What do you call a person who creates paintings and sculptures?", options: ["Architect", "Artist", "Author", "Musician"], correctAnswer: "Artist", explanation: "An artist is a person who creates paintings, sculptures, and other forms of visual art."),
            ExerciseItem(id: UUID(), prompt: "What is the name of the holiday celebrated on October 31st?", options: ["Thanksgiving", "Christmas", "Halloween", "Easter"], correctAnswer: "Halloween", explanation: "Halloween is a holiday celebrated on October 31st, known for activities like trick-or-treating."),
            ExerciseItem(id: UUID(), prompt: "What do you call a person who fixes broken pipes and drains?", options: ["Electrician", "Carpenter", "Plumber", "Locksmith"], correctAnswer: "Plumber", explanation: "A plumber is a tradesperson who installs and repairs pipes and fixtures for water distribution."),
            ExerciseItem(id: UUID(), prompt: "What is the small device you use to change TV channels without getting up?", options: ["A cell phone", "A remote control", "A tablet", "A keyboard"], correctAnswer: "A remote control", explanation: "A remote control is an electronic device used to operate a machine from a distance wirelessly."),
            ExerciseItem(id: UUID(), prompt: "What is the name of the sport where you hit a small white ball into a hole?", options: ["Tennis", "Baseball", "Golf", "Croquet"], correctAnswer: "Golf", explanation: "Golf is a club-and-ball sport where players hit balls into holes on a course using strokes."),
            ExerciseItem(id: UUID(), prompt: "What color do you get when you mix red and white paint?", options: ["Purple", "Orange", "Pink", "Peach"], correctAnswer: "Pink", explanation: "Pink is the color that results from mixing red and white paint together."),
            ExerciseItem(id: UUID(), prompt: "What tool do you use to tell time?", options: ["Thermometer", "Compass", "Calculator", "Clock or watch"], correctAnswer: "Clock or watch", explanation: "Clocks and watches are devices specifically designed to measure and indicate the time."),
            ExerciseItem(id: UUID(), prompt: "What do you use to cut paper?", options: ["A knife", "Scissors", "A razor", "A box cutter"], correctAnswer: "Scissors", explanation: "Scissors are a hand-operated cutting instrument consisting of two pivoted metal blades."),
            ExerciseItem(id: UUID(), prompt: "What appliance keeps your food cold?", options: ["Oven", "Microwave", "Refrigerator", "Dishwasher"], correctAnswer: "Refrigerator", explanation: "A refrigerator is an insulated appliance that preserves food by keeping it at a cold temperature."),
            ExerciseItem(id: UUID(), prompt: "What do you call the person who puts out fires?", options: ["Police officer", "Paramedic", "Firefighter", "Security guard"], correctAnswer: "Firefighter", explanation: "A firefighter is a trained professional equipped to extinguish fires and rescue people."),
            ExerciseItem(id: UUID(), prompt: "What do you call a place you go to borrow books for free?", options: ["Bookstore", "Museum", "Library", "School"], correctAnswer: "Library", explanation: "A library is a facility where books and other materials are available for people to borrow or read."),
            ExerciseItem(id: UUID(), prompt: "What do you call the hard outer layer that protects a tooth?", options: ["Dentin", "Pulp", "Enamel", "Crown"], correctAnswer: "Enamel", explanation: "Enamel is the tough, highly mineralized outer covering of a tooth that protects it from decay."),
            ExerciseItem(id: UUID(), prompt: "What document do you need to travel between countries?", options: ["Driver's license", "Birth certificate", "Passport", "Social Security card"], correctAnswer: "Passport", explanation: "A passport is an official document issued by a government certifying identity for international travel.")
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
            ExerciseItem(id: UUID(), prompt: "Where do you go to swim laps indoors?", options: ["Gym", "Park", "Swimming pool", "Lake"], correctAnswer: "Swimming pool", explanation: "A swimming pool is an artificial basin filled with water for swimming, which can be located indoors."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Statue of Liberty?", options: ["Washington D.C.", "Chicago", "Los Angeles", "New York City"], correctAnswer: "New York City", explanation: "The Statue of Liberty is a famous monument situated on Liberty Island in New York City."),
            ExerciseItem(id: UUID(), prompt: "Where do you go to get your hair cut?", options: ["Pharmacy", "Barbershop or hair salon", "Doctor's office", "Spa"], correctAnswer: "Barbershop or hair salon", explanation: "A barbershop or hair salon is a business where professionals provide hair styling and cutting services."),
            ExerciseItem(id: UUID(), prompt: "Where would you find a judge and a jury?", options: ["City hall", "Police station", "Courthouse", "School"], correctAnswer: "Courthouse", explanation: "A courthouse is a public building where courts of law operate, involving judges and juries."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Great Wall?", options: ["Japan", "India", "China", "South Korea"], correctAnswer: "China", explanation: "The Great Wall is an ancient series of defensive walls and fortifications located in China."),
            ExerciseItem(id: UUID(), prompt: "Where do students go to learn after high school?", options: ["Trade school only", "High school again", "College or university", "Vocational center"], correctAnswer: "College or university", explanation: "Colleges and universities are institutions of higher education where students study after high school."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Colosseum?", options: ["Athens", "Paris", "Madrid", "Rome"], correctAnswer: "Rome", explanation: "The Colosseum is a historical ancient amphitheater located in the center of Rome, Italy."),
            ExerciseItem(id: UUID(), prompt: "Where do you go to buy stamps and mail packages?", options: ["Bank", "Pharmacy", "Grocery store", "Post office"], correctAnswer: "Post office", explanation: "A post office is a public facility providing mail services, including selling stamps and handling parcels."),
            ExerciseItem(id: UUID(), prompt: "Where would you find Big Ben?", options: ["Paris", "Berlin", "London", "Amsterdam"], correctAnswer: "London", explanation: "Big Ben is the iconic clock tower located at the Palace of Westminster in London, England."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Amazon rainforest?", options: ["Africa", "Southeast Asia", "Central America", "South America"], correctAnswer: "South America", explanation: "The Amazon rainforest is a vast broadleaf tropical forest primarily situated in South America."),
            ExerciseItem(id: UUID(), prompt: "Where do you go to fill a prescription?", options: ["Hospital", "Doctor's office", "Pharmacy", "Clinic"], correctAnswer: "Pharmacy", explanation: "A pharmacy is a store where prescription medications and medical products are prepared and dispensed."),
            ExerciseItem(id: UUID(), prompt: "Where would you find Mount Rushmore?", options: ["Montana", "Wyoming", "Colorado", "South Dakota"], correctAnswer: "South Dakota", explanation: "Mount Rushmore is a massive sculpture carved into a mountain in South Dakota featuring four US presidents."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Taj Mahal?", options: ["China", "Pakistan", "Bangladesh", "India"], correctAnswer: "India", explanation: "The Taj Mahal is a famous white marble mausoleum located in Agra, India."),
            ExerciseItem(id: UUID(), prompt: "Where do you go to deposit or withdraw money?", options: ["Post office", "Credit union or bank", "Pharmacy", "Grocery store"], correctAnswer: "Credit union or bank", explanation: "Banks and credit unions are financial institutions where individuals can deposit and withdraw money."),
            ExerciseItem(id: UUID(), prompt: "Where do you go when you have a medical emergency?", options: ["Pharmacy", "Urgent care", "Hospital emergency room", "Doctor's office"], correctAnswer: "Hospital emergency room", explanation: "A hospital emergency room is a medical facility providing immediate care for acute illnesses and injuries."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Eiffel Tower?", options: ["Belgium", "Italy", "Spain", "France"], correctAnswer: "France", explanation: "The Eiffel Tower is a famous wrought-iron lattice tower located in Paris, France."),
            ExerciseItem(id: UUID(), prompt: "Where do you go to get a cavity filled?", options: ["Eye doctor", "Dermatologist", "Dentist", "Ear doctor"], correctAnswer: "Dentist", explanation: "A dentist is a medical professional who provides oral healthcare, including filling cavities."),
            ExerciseItem(id: UUID(), prompt: "Where can you borrow books, CDs, or DVDs for free?", options: ["Bookstore", "Museum", "Movie theater", "Library"], correctAnswer: "Library", explanation: "A library is an institution providing public access to books, CDs, DVDs, and media for free borrowing."),
            ExerciseItem(id: UUID(), prompt: "Where would you find the Pyramids of Giza?", options: ["Morocco", "Sudan", "Libya", "Egypt"], correctAnswer: "Egypt", explanation: "The Pyramids of Giza are ancient architectural monumental tombs located in Egypt."),
            ExerciseItem(id: UUID(), prompt: "Where do you go to watch a movie on a big screen?", options: ["Theater", "Drive-in", "Movie theater or cinema", "Auditorium"], correctAnswer: "Movie theater or cinema", explanation: "A movie theater or cinema is a specialized venue designed for exhibiting films on a large screen.")
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
            ExerciseItem(id: UUID(), prompt: "Who wrote Romeo and Juliet?", options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "John Keats"], correctAnswer: "William Shakespeare", explanation: "William Shakespeare was a famous English playwright and poet who authored the tragedy Romeo and Juliet."),
            ExerciseItem(id: UUID(), prompt: "Who was the first woman to win a Nobel Prize?", options: ["Rosalind Franklin", "Florence Nightingale", "Marie Curie", "Ada Lovelace"], correctAnswer: "Marie Curie", explanation: "Marie Curie was a pioneering physicist and chemist who became the first woman to be awarded a Nobel Prize."),
            ExerciseItem(id: UUID(), prompt: "Who painted the Mona Lisa?", options: ["Michelangelo", "Raphael", "Leonardo da Vinci", "Botticelli"], correctAnswer: "Leonardo da Vinci", explanation: "Leonardo da Vinci was an Italian Renaissance polymath and artist who painted the famous Mona Lisa."),
            ExerciseItem(id: UUID(), prompt: "Who invented the light bulb?", options: ["Nikola Tesla", "Benjamin Franklin", "Alexander Graham Bell", "Thomas Edison"], correctAnswer: "Thomas Edison", explanation: "Thomas Edison was an American inventor who is credited with creating the practical incandescent light bulb."),
            ExerciseItem(id: UUID(), prompt: "Who was Martin Luther King Jr.?", options: ["The 35th US President", "A civil rights leader who championed racial equality", "The first Black senator", "A Supreme Court justice"], correctAnswer: "A civil rights leader who championed racial equality", explanation: "Martin Luther King Jr. was a prominent leader in the American civil rights movement advocating for racial equality."),
            ExerciseItem(id: UUID(), prompt: "Who takes care of your teeth professionally?", options: ["Optometrist", "Dermatologist", "Dentist", "Audiologist"], correctAnswer: "Dentist", explanation: "A dentist is a healthcare practitioner who specializes in the professional care and treatment of teeth."),
            ExerciseItem(id: UUID(), prompt: "Who was Abraham Lincoln?", options: ["The 1st US President", "The 10th US President", "The 16th US President", "The 32nd US President"], correctAnswer: "The 16th US President", explanation: "Abraham Lincoln was the 16th President of the United States, leading the nation during the Civil War."),
            ExerciseItem(id: UUID(), prompt: "Who was Amelia Earhart?", options: ["First woman in space", "First woman to fly solo across the Atlantic", "First female US pilot", "First woman to break the sound barrier"], correctAnswer: "First woman to fly solo across the Atlantic", explanation: "Amelia Earhart was a famous aviation pioneer who was the first female aviator to fly solo across the Atlantic."),
            ExerciseItem(id: UUID(), prompt: "Who was Mother Teresa?", options: ["A politician who fought for women's rights", "A scientist who discovered penicillin", "A nun and humanitarian who cared for the poor in India", "A civil rights activist in the US"], correctAnswer: "A nun and humanitarian who cared for the poor in India", explanation: "Mother Teresa was a Catholic nun who founded the Missionaries of Charity to serve the poor in India."),
            ExerciseItem(id: UUID(), prompt: "Who was Rosa Parks?", options: ["A senator from Alabama", "A civil rights activist who refused to give up her bus seat", "The first Black woman to vote", "A Supreme Court justice"], correctAnswer: "A civil rights activist who refused to give up her bus seat", explanation: "Rosa Parks was a civil rights activist known for her pivotal role in the Montgomery bus boycott."),
            ExerciseItem(id: UUID(), prompt: "Who was Winston Churchill?", options: ["US President during World War II", "Prime Minister of the UK during World War II", "French general who led the resistance", "Canadian Prime Minister during World War II"], correctAnswer: "Prime Minister of the UK during World War II", explanation: "Winston Churchill was the Prime Minister of the United Kingdom who led the country through World War II."),
            ExerciseItem(id: UUID(), prompt: "Who was Harriet Tubman?", options: ["First Black congresswoman", "An abolitionist who led enslaved people to freedom", "First Black woman to win a Nobel Prize", "A civil rights leader in the 1960s"], correctAnswer: "An abolitionist who led enslaved people to freedom", explanation: "Harriet Tubman was an abolitionist who escaped slavery and led others to freedom via the Underground Railroad."),
            ExerciseItem(id: UUID(), prompt: "Who was the first person to walk on the moon?", options: ["Buzz Aldrin", "Yuri Gagarin", "John Glenn", "Neil Armstrong"], correctAnswer: "Neil Armstrong", explanation: "Neil Armstrong was an American astronaut who made history as the first person to walk on the moon."),
            ExerciseItem(id: UUID(), prompt: "Who delivers your mail?", options: ["A courier", "A delivery driver", "A mail carrier", "A dispatcher"], correctAnswer: "A mail carrier", explanation: "A mail carrier is a postal employee responsible for delivering mail and packages to residences."),
            ExerciseItem(id: UUID(), prompt: "Who was Cleopatra?", options: ["Queen of ancient Greece", "Empress of Rome", "Queen of ancient Egypt", "Queen of Persia"], correctAnswer: "Queen of ancient Egypt", explanation: "Cleopatra was the final active ruler of the Ptolemaic Kingdom of ancient Egypt.")
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
            ExerciseItem(id: UUID(), prompt: "When do Americans celebrate Independence Day?", options: ["June 4th", "July 4th", "August 4th", "September 4th"], correctAnswer: "July 4th", explanation: "Independence Day on July 4th commemorates the adoption of the Declaration of Independence by the US."),
            ExerciseItem(id: UUID(), prompt: "When is Valentine's Day?", options: ["January 14th", "March 14th", "February 14th", "April 14th"], correctAnswer: "February 14th", explanation: "Valentine's Day is a cultural and commercial holiday celebrating romance, observed annually on February 14th."),
            ExerciseItem(id: UUID(), prompt: "When is Thanksgiving celebrated in the US?", options: ["First Thursday of November", "Second Thursday of November", "Third Thursday of November", "Fourth Thursday of November"], correctAnswer: "Fourth Thursday of November", explanation: "Thanksgiving is a national US holiday celebrating the harvest, observed on the fourth Thursday of November."),
            ExerciseItem(id: UUID(), prompt: "When is Mother's Day celebrated in the US?", options: ["First Sunday of May", "Second Sunday of May", "Third Sunday of May", "Last Sunday of May"], correctAnswer: "Second Sunday of May", explanation: "Mother's Day in the US is a celebration honoring mothers, held on the second Sunday of May."),
            ExerciseItem(id: UUID(), prompt: "When is Father's Day in the US?", options: ["First Sunday of June", "Second Sunday of June", "Third Sunday of June", "Last Sunday of June"], correctAnswer: "Third Sunday of June", explanation: "Father's Day in the US is a celebration honoring fathers, held on the third Sunday of June."),
            ExerciseItem(id: UUID(), prompt: "When is Memorial Day observed in the US?", options: ["First Monday of May", "Last Monday of May", "First Monday of June", "Last Monday of April"], correctAnswer: "Last Monday of May", explanation: "Memorial Day is a US federal holiday dedicated to honoring military personnel who died in service."),
            ExerciseItem(id: UUID(), prompt: "When was World War II fought?", options: ["1914 to 1918", "1929 to 1935", "1939 to 1945", "1941 to 1949"], correctAnswer: "1939 to 1945", explanation: "World War II was a major global conflict that lasted from the year 1939 to 1945."),
            ExerciseItem(id: UUID(), prompt: "When do leaves change color in the northeastern US?", options: ["July through August", "September through November", "December through February", "April through May"], correctAnswer: "September through November", explanation: "In the northeastern US, the autumn season, spanning September through November, causes leaves to change color."),
            ExerciseItem(id: UUID(), prompt: "When do most people celebrate the New Year?", options: ["December 31st", "January 2nd", "January 1st", "December 25th"], correctAnswer: "January 1st", explanation: "The Gregorian calendar designates January 1st as the first day of the new year."),
            ExerciseItem(id: UUID(), prompt: "When do clocks spring forward for daylight saving time?", options: ["First Sunday of February", "Second Sunday of March", "First Sunday of April", "Last Sunday of March"], correctAnswer: "Second Sunday of March", explanation: "In the US, daylight saving time begins on the second Sunday of March, shifting clocks forward one hour."),
            ExerciseItem(id: UUID(), prompt: "When is New Year's Eve?", options: ["December 30th", "January 1st", "November 30th", "December 31st"], correctAnswer: "December 31st", explanation: "December 31st marks the final day of the Gregorian calendar year, known as New Year's Eve."),
            ExerciseItem(id: UUID(), prompt: "When is Christmas celebrated?", options: ["December 24th", "December 26th", "December 25th", "January 6th"], correctAnswer: "December 25th", explanation: "Christmas is an annual holiday celebrating the birth of Jesus Christ, observed on December 25th."),
            ExerciseItem(id: UUID(), prompt: "When do most flowers bloom in the US?", options: ["Winter", "Fall", "Summer", "Spring"], correctAnswer: "Spring", explanation: "Spring is the season characterized by warmer weather which stimulates plant growth and flower blooming."),
            ExerciseItem(id: UUID(), prompt: "When do people eat breakfast?", options: ["At noon", "In the evening", "In the morning", "At midnight"], correctAnswer: "In the morning", explanation: "Breakfast is considered the first meal of the day, eaten in the morning to break the overnight fast."),
            ExerciseItem(id: UUID(), prompt: "When do birds migrate south in North America?", options: ["Spring", "Summer", "Winter", "Fall"], correctAnswer: "Fall", explanation: "Many bird species in North America migrate south during the fall to find warmer climates for winter.")
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
            ExerciseItem(id: UUID(), prompt: "Why do people wash their hands before eating?", options: ["To warm their hands", "To remove germs and prevent illness", "Because it is polite", "To soften their skin"], correctAnswer: "To remove germs and prevent illness", explanation: "Handwashing removes harmful germs and bacteria, preventing illness before eating."),
            ExerciseItem(id: UUID(), prompt: "Why do dogs pant?", options: ["Because they are hungry", "Because they are scared", "To cool themselves down", "To get attention"], correctAnswer: "To cool themselves down", explanation: "Panting helps dogs cool down by facilitating the evaporation of moisture from their mouth and lungs."),
            ExerciseItem(id: UUID(), prompt: "Why do people wear seat belts?", options: ["Because it is comfortable", "To reduce the risk of injury in a car accident", "Because the car requires it", "To stay warm"], correctAnswer: "To reduce the risk of injury in a car accident", explanation: "Seat belts restrain passengers during sudden stops or collisions, dramatically reducing the risk of injury."),
            ExerciseItem(id: UUID(), prompt: "Why do you need to refrigerate certain foods?", options: ["To make them taste better", "To keep them frozen", "To slow bacterial growth and prevent spoiling", "To save space"], correctAnswer: "To slow bacterial growth and prevent spoiling", explanation: "Refrigeration slows down the growth of bacteria, preserving food and preventing spoiling."),
            ExerciseItem(id: UUID(), prompt: "Why do leaves change color in fall?", options: ["Because of frost killing the leaves", "Because trees stop producing chlorophyll as days shorten", "Because of changes in rainfall", "Because animals eat the green parts"], correctAnswer: "Because trees stop producing chlorophyll as days shorten", explanation: "The decrease in sunlight in autumn causes trees to stop producing chlorophyll, revealing underlying pigments."),
            ExerciseItem(id: UUID(), prompt: "Why do doctors take blood pressure readings?", options: ["To check your weight", "To monitor heart health and detect hypertension", "To measure your fitness level", "To check for diabetes"], correctAnswer: "To monitor heart health and detect hypertension", explanation: "Blood pressure measurements provide crucial indicators of cardiovascular health to detect hypertension."),
            ExerciseItem(id: UUID(), prompt: "Why do we have traffic lights?", options: ["To slow down traffic", "To help pedestrians cross", "To regulate traffic flow and reduce accidents", "To replace police officers"], correctAnswer: "To regulate traffic flow and reduce accidents", explanation: "Traffic lights coordinate the safe and orderly flow of vehicles at intersections, reducing collision risks."),
            ExerciseItem(id: UUID(), prompt: "Why should you wear sunscreen?", options: ["To stay cool in the sun", "To prevent freckles", "To protect skin from UV radiation", "To keep your skin moist"], correctAnswer: "To protect skin from UV radiation", explanation: "Sunscreen protects the skin by absorbing or reflecting harmful ultraviolet radiation from the sun."),
            ExerciseItem(id: UUID(), prompt: "Why do mosquito bites itch?", options: ["Because of the blood they take", "Because of bacteria they leave", "Because their saliva triggers an immune response", "Because they inject venom"], correctAnswer: "Because their saliva triggers an immune response", explanation: "Mosquito saliva contains proteins that trigger an allergic reaction and inflammation, causing an itch."),
            ExerciseItem(id: UUID(), prompt: "Why is it important to vote?", options: ["Because it is required by law", "To have a say in choosing government representatives", "To avoid paying fines", "Because your employer requires it"], correctAnswer: "To have a say in choosing government representatives", explanation: "Voting allows citizens to express preferences and elect representatives in a democratic society."),
            ExerciseItem(id: UUID(), prompt: "Why do humans need to sleep?", options: ["Just to rest muscles", "To avoid overeating", "The body repairs itself and the brain consolidates memories", "To conserve energy only"], correctAnswer: "The body repairs itself and the brain consolidates memories", explanation: "Sleep is vital for the body to rest, repair tissues, and allow the brain to consolidate memories."),
            ExerciseItem(id: UUID(), prompt: "Why do we brush our teeth?", options: ["To freshen breath only", "To whiten teeth", "To remove plaque and bacteria that cause cavities", "To strengthen enamel only"], correctAnswer: "To remove plaque and bacteria that cause cavities", explanation: "Brushing teeth removes plaque and bacteria, preventing tooth decay and cavities."),
            ExerciseItem(id: UUID(), prompt: "Why do people wear coats in winter?", options: ["For fashion", "To keep dry in rain", "To insulate the body and stay warm", "To protect against wind only"], correctAnswer: "To insulate the body and stay warm", explanation: "Winter coats provide necessary thermal insulation to retain body heat in cold weather conditions."),
            ExerciseItem(id: UUID(), prompt: "Why do people recycle?", options: ["To earn money from recycling centers", "To reduce waste and conserve natural resources", "Because the government requires it", "To keep their homes clean"], correctAnswer: "To reduce waste and conserve natural resources", explanation: "Recycling processes waste materials into new products, conserving natural resources and reducing waste."),
            ExerciseItem(id: UUID(), prompt: "Why do people make a will?", options: ["To avoid paying taxes", "To plan their funeral", "To legally specify who receives their belongings after they die", "To protect against lawsuits"], correctAnswer: "To legally specify who receives their belongings after they die", explanation: "A will is a legal document that ensures a person's assets are distributed according to their wishes upon death.")
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
            ExerciseItem(id: UUID(), prompt: "How many days are in a week?", options: ["5", "6", "7", "8"], correctAnswer: "7", explanation: "The standard calendar week consists of exactly 7 days."),
            ExerciseItem(id: UUID(), prompt: "How many weeks are in a year?", options: ["48", "50", "52", "54"], correctAnswer: "52", explanation: "A standard solar year of 365 days contains approximately 52 weeks."),
            ExerciseItem(id: UUID(), prompt: "How many sides does a hexagon have?", options: ["4", "5", "6", "7"], correctAnswer: "6", explanation: "A hexagon is a geometric polygon characterized by having exactly 6 sides."),
            ExerciseItem(id: UUID(), prompt: "How many ounces are in a pound?", options: ["8", "12", "16", "20"], correctAnswer: "16", explanation: "In the US customary system of weight, one pound is defined as exactly 16 ounces."),
            ExerciseItem(id: UUID(), prompt: "How many feet are in a mile?", options: ["2,640", "3,520", "5,280", "6,000"], correctAnswer: "5,280", explanation: "The imperial and US customary systems define a mile as equivalent to 5,280 feet."),
            ExerciseItem(id: UUID(), prompt: "How many quarters make a dollar?", options: ["2", "3", "4", "5"], correctAnswer: "4", explanation: "In US currency, a quarter represents 25 cents, making 4 quarters equal to one dollar."),
            ExerciseItem(id: UUID(), prompt: "How many teaspoons are in a tablespoon?", options: ["2", "3", "4", "5"], correctAnswer: "3", explanation: "A tablespoon is a culinary unit of volume that is equivalent to 3 teaspoons."),
            ExerciseItem(id: UUID(), prompt: "How many days are in April?", options: ["28", "29", "30", "31"], correctAnswer: "30", explanation: "According to the Gregorian calendar, the month of April has exactly 30 days."),
            ExerciseItem(id: UUID(), prompt: "How many eggs are in a dozen?", options: ["6", "10", "12", "24"], correctAnswer: "12", explanation: "The term 'dozen' universally refers to a quantity of exactly 12 items."),
            ExerciseItem(id: UUID(), prompt: "How many inches are in a foot?", options: ["8", "10", "12", "16"], correctAnswer: "12", explanation: "A foot is a unit of length in the customary measurement system containing exactly 12 inches."),
            ExerciseItem(id: UUID(), prompt: "How many states are in the United States?", options: ["48", "49", "50", "52"], correctAnswer: "50", explanation: "The United States comprises 50 individual states, represented by the 50 stars on its flag."),
            ExerciseItem(id: UUID(), prompt: "How long does a typical human pregnancy last?", options: ["6 months", "7 months", "8 months", "9 months"], correctAnswer: "9 months", explanation: "The typical gestation period for a human pregnancy is approximately 40 weeks, or 9 months."),
            ExerciseItem(id: UUID(), prompt: "How many hours are in a day?", options: ["20", "22", "24", "26"], correctAnswer: "24", explanation: "The Earth takes approximately 24 hours to complete one rotation on its axis, defining a day."),
            ExerciseItem(id: UUID(), prompt: "How many months are in a year?", options: ["10", "11", "12", "13"], correctAnswer: "12", explanation: "The solar calendar year is divided into 12 distinct months."),
            ExerciseItem(id: UUID(), prompt: "How do you treat a minor burn?", options: ["Apply butter or oil", "Use ice directly on the burn", "Cool under running cold water for 10 minutes", "Cover tightly with a bandage immediately"], correctAnswer: "Cool under running cold water for 10 minutes", explanation: "Running cold water over a minor burn cools the skin, halts tissue damage, and provides pain relief."),
            ExerciseItem(id: UUID(), prompt: "How do you stop a nosebleed?", options: ["Tilt your head back", "Blow your nose hard", "Pinch the soft part of your nose and lean slightly forward", "Lie down flat"], correctAnswer: "Pinch the soft part of your nose and lean slightly forward", explanation: "Pinching the nose applies direct pressure to bleeding vessels, and leaning forward prevents swallowing blood."),
            ExerciseItem(id: UUID(), prompt: "How many legs does a spider have?", options: ["4", "6", "8", "10"], correctAnswer: "8", explanation: "Spiders belong to the class Arachnida, whose members are characterized by having 8 legs."),
            ExerciseItem(id: UUID(), prompt: "How many pennies are in a dollar?", options: ["50", "75", "100", "200"], correctAnswer: "100", explanation: "A penny is worth one cent, and there are exactly 100 cents in a standard United States dollar."),
            ExerciseItem(id: UUID(), prompt: "How many years are in a century?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: "A century is defined as a period of 100 consecutive years."),
            ExerciseItem(id: UUID(), prompt: "How can you tell if food has gone bad?", options: ["By the color of the packaging", "By the brand name", "By checking for mold, bad smell, unusual texture, or expiration date", "By how heavy it feels"], correctAnswer: "By checking for mold, bad smell, unusual texture, or expiration date", explanation: "Food spoilage is indicated by visible mold, foul odors, sliminess or unusual textures, and past expiration dates, all of which signify bacterial or fungal growth.")
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
            ExerciseItem(id: UUID(), prompt: "Is the sun a star?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "The sun is classified as a G-type main-sequence star, making it the closest star to Earth."),
            ExerciseItem(id: UUID(), prompt: "Does ice float in water?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Ice floats because its solid state is less dense than liquid water due to the crystalline structure formed by hydrogen bonds."),
            ExerciseItem(id: UUID(), prompt: "Is Paris the capital of Germany?", options: ["Yes", "No"], correctAnswer: "No", explanation: "Berlin is the capital of Germany"),
            ExerciseItem(id: UUID(), prompt: "Does the moon produce its own light?", options: ["Yes", "No"], correctAnswer: "No", explanation: "It reflects light from the sun"),
            ExerciseItem(id: UUID(), prompt: "Is the Pacific Ocean the largest ocean on Earth?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "The Pacific Ocean is the largest and deepest of Earth's oceanic divisions, covering more than 30% of the planet's surface."),
            ExerciseItem(id: UUID(), prompt: "Is Abraham Lincoln's portrait on the US penny?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Abraham Lincoln, the 16th US President, has his portrait on the obverse of the US penny."),
            ExerciseItem(id: UUID(), prompt: "Does the moon orbit the Earth?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "The moon is Earth's only natural satellite and it revolves around the Earth due to gravitational pull."),
            ExerciseItem(id: UUID(), prompt: "Does the human heart have four chambers?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "The human heart consists of four chambers: two atria (upper) and two ventricles (lower), which work together to pump blood."),
            ExerciseItem(id: UUID(), prompt: "Can humans live a normal life without a gallbladder?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "The gallbladder stores bile, but the liver can still produce and continuously release bile directly into the small intestine, allowing humans to live normally without it."),
            ExerciseItem(id: UUID(), prompt: "Is a bat classified as a mammal?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Bats are mammals, not birds"),
            ExerciseItem(id: UUID(), prompt: "Was Neil Armstrong the first human to walk on the moon?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "On July 20, 1969"),
            ExerciseItem(id: UUID(), prompt: "Is it a myth that the Great Wall of China is visible from space with the naked eye?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "It is not actually visible from space without aid"),
            ExerciseItem(id: UUID(), prompt: "Does a human baby have more bones than an adult?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Babies have about 270 to 300 bones; adults have 206"),
            ExerciseItem(id: UUID(), prompt: "Is the Sahara the largest hot desert in the world?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "The Sahara is the largest hot desert and the third-largest desert overall, covering much of North Africa."),
            ExerciseItem(id: UUID(), prompt: "Is Brazil located in South America?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Brazil is the largest country in both South America and Latin America."),
            ExerciseItem(id: UUID(), prompt: "Is a nickel worth more than a dime?", options: ["Yes", "No"], correctAnswer: "No", explanation: "A dime is worth 10 cents; a nickel is worth 5 cents"),
            ExerciseItem(id: UUID(), prompt: "Is a penguin a type of bird?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Penguins are birds, though they cannot fly"),
            ExerciseItem(id: UUID(), prompt: "Is a dolphin classified as a mammal?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Dolphins breathe air and nurse their young"),
            ExerciseItem(id: UUID(), prompt: "Does the sun rise in the east?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Due to the Earth's eastward rotation on its axis, the sun appears to rise in the eastern horizon."),
            ExerciseItem(id: UUID(), prompt: "Is Alaska the largest US state by land area?", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "Alaska has by far the largest land area of any US state, significantly larger than Texas.")
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
            ExerciseItem(id: UUID(), prompt: "Who was the first President of the United States?", options: ["John Adams", "George Washington", "Thomas Jefferson", "Benjamin Franklin"], correctAnswer: "George Washington", explanation: "George Washington served as the first President of the United States from 1789 to 1797."),
            ExerciseItem(id: UUID(), prompt: "In what year did the Titanic sink?", options: ["1901", "1912", "1918", "1935"], correctAnswer: "1912", explanation: "The RMS Titanic sank on April 15, 1912, after striking an iceberg during its maiden voyage."),
            ExerciseItem(id: UUID(), prompt: "Which country did the US declare independence from?", options: ["France", "Spain", "Great Britain", "Germany"], correctAnswer: "Great Britain", explanation: "The United States declared its independence from the Kingdom of Great Britain in 1776."),
            ExerciseItem(id: UUID(), prompt: "Who led India's independence movement through nonviolent resistance?", options: ["Jawaharlal Nehru", "Mahatma Gandhi", "Indira Gandhi", "Subhas Bose"], correctAnswer: "Mahatma Gandhi", explanation: "Mahatma Gandhi employed nonviolent civil disobedience to lead the successful campaign for India's independence from British rule."),
            ExerciseItem(id: UUID(), prompt: "What was the war fought between the Northern and Southern states of America called?", options: ["The Revolutionary War", "World War I", "The Civil War", "The War of 1812"], correctAnswer: "The Civil War", explanation: "The American Civil War was fought from 1861 to 1865 between the Union (North) and the Confederacy (South)."),
            ExerciseItem(id: UUID(), prompt: "In what city were the first modern Olympic Games held in 1896?", options: ["Paris", "London", "Rome", "Athens, Greece"], correctAnswer: "Athens, Greece", explanation: "The first modern Olympic Games were held in Athens, Greece, in 1896, paying homage to the ancient Greek origins of the games."),
            ExerciseItem(id: UUID(), prompt: "What childhood disease did Jonas Salk develop a vaccine for in 1955?", options: ["Smallpox", "Tuberculosis", "Polio", "Measles"], correctAnswer: "Polio", explanation: "Jonas Salk developed the first successful inactivated polio vaccine, which was declared safe and effective in 1955."),
            ExerciseItem(id: UUID(), prompt: "In what year did World War I begin?", options: ["1914", "1918", "1939", "1905"], correctAnswer: "1914", explanation: "World War I, also known as the Great War, began in the summer of 1914 following the assassination of Archduke Franz Ferdinand."),
            ExerciseItem(id: UUID(), prompt: "What country first sent a human to the moon?", options: ["Russia", "France", "Great Britain", "The United States"], correctAnswer: "The United States", explanation: "The United States became the first country to land humans on the moon during the Apollo 11 mission in 1969."),
            ExerciseItem(id: UUID(), prompt: "Who is credited with inventing the printing press around 1440?", options: ["Leonardo da Vinci", "Galileo", "Johannes Gutenberg", "Isaac Newton"], correctAnswer: "Johannes Gutenberg", explanation: "Johannes Gutenberg introduced printing to Europe with his invention of mechanical movable type printing around 1440."),
            ExerciseItem(id: UUID(), prompt: "Which US President signed the Civil Rights Act of 1964?", options: ["John F. Kennedy", "Richard Nixon", "Lyndon B. Johnson", "Dwight Eisenhower"], correctAnswer: "Lyndon B. Johnson", explanation: "President Lyndon B. Johnson signed the landmark Civil Rights Act of 1964 into law, prohibiting discrimination."),
            ExerciseItem(id: UUID(), prompt: "What ship did the Pilgrims sail to America in 1620?", options: ["The Nina", "The Pinta", "The Mayflower", "The Victoria"], correctAnswer: "The Mayflower", explanation: "The Mayflower was the ship that transported the Pilgrims from England to the New World in 1620."),
            ExerciseItem(id: UUID(), prompt: "Who delivered the 'I Have a Dream' speech in 1963?", options: ["Malcolm X", "Barack Obama", "Martin Luther King Jr.", "Frederick Douglass"], correctAnswer: "Martin Luther King Jr.", explanation: "Martin Luther King Jr. delivered his iconic 'I Have a Dream' speech during the March on Washington for Jobs and Freedom in 1963."),
            ExerciseItem(id: UUID(), prompt: "What war ended when atomic bombs were dropped on Japan?", options: ["World War I", "The Korean War", "The Vietnam War", "World War II"], correctAnswer: "World War II", explanation: "World War II came to an end shortly after the United States dropped atomic bombs on the Japanese cities of Hiroshima and Nagasaki in August 1945."),
            ExerciseItem(id: UUID(), prompt: "Who was the first woman to serve as US Secretary of State?", options: ["Hillary Clinton", "Condoleezza Rice", "Madeleine Albright", "Janet Reno"], correctAnswer: "Madeleine Albright", explanation: "Madeleine Albright became the first female US Secretary of State, serving under President Bill Clinton from 1997 to 2001.")
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
            ExerciseItem(id: UUID(), prompt: "What country borders the United States to the north?", options: ["Mexico", "Russia", "Canada", "Greenland"], correctAnswer: "Canada", explanation: "Canada is positioned to the north of the contiguous United States, sharing the longest international border in the world."),
            ExerciseItem(id: UUID(), prompt: "In which US state is the Grand Canyon located?", options: ["Colorado", "Utah", "Nevada", "Arizona"], correctAnswer: "Arizona", explanation: "The Grand Canyon, a massive and visually stunning gorge carved by the Colorado River, is located in the state of Arizona."),
            ExerciseItem(id: UUID(), prompt: "Tokyo is the capital city of which country?", options: ["China", "South Korea", "Japan", "Thailand"], correctAnswer: "Japan", explanation: "Tokyo is the capital and most populous city of Japan."),
            ExerciseItem(id: UUID(), prompt: "Which US state is the largest by land area?", options: ["Texas", "California", "Montana", "Alaska"], correctAnswer: "Alaska", explanation: "Alaska is the largest US state by total area, encompassing over 660,000 square miles."),
            ExerciseItem(id: UUID(), prompt: "What is the capital city of France?", options: ["Lyon", "Marseille", "Paris", "Bordeaux"], correctAnswer: "Paris", explanation: "Paris is the capital and most populous city of France, known globally for its culture, art, and landmarks."),
            ExerciseItem(id: UUID(), prompt: "Which country is often said to be shaped like a boot?", options: ["Spain", "Greece", "Italy", "Portugal"], correctAnswer: "Italy", explanation: "Italy is located on the Italian Peninsula in Southern Europe, which is famously shaped like a high-heeled boot."),
            ExerciseItem(id: UUID(), prompt: "What is the smallest country in the world by area?", options: ["Monaco", "San Marino", "Liechtenstein", "Vatican City"], correctAnswer: "Vatican City", explanation: "Vatican City is an independent city-state enclaved within Rome, Italy, and is the smallest state in the world by both area and population."),
            ExerciseItem(id: UUID(), prompt: "Which US state is nicknamed the Sunshine State?", options: ["California", "Hawaii", "Florida", "Arizona"], correctAnswer: "Florida", explanation: "Florida is known as the 'Sunshine State' due to its generally warm climate and abundant sunny days."),
            ExerciseItem(id: UUID(), prompt: "Which ocean borders the eastern coast of the United States?", options: ["Pacific", "Indian", "Arctic", "Atlantic"], correctAnswer: "Atlantic", explanation: "The Atlantic Ocean is located to the east of the United States, separating North America from Europe and Africa."),
            ExerciseItem(id: UUID(), prompt: "What is the capital of the United States?", options: ["New York City", "Los Angeles", "Washington D.C.", "Chicago"], correctAnswer: "Washington D.C.", explanation: "Washington, D.C. (District of Columbia) was established as the national capital of the United States in 1790."),
            ExerciseItem(id: UUID(), prompt: "In which country would you find the Great Pyramid of Giza?", options: ["Marruecos", "Túnez", "Libia", "Egipto"], correctAnswer: "Egipto", explanation: "The Great Pyramid of Giza, one of the Seven Wonders of the Ancient World, is located near Cairo in Egypt."),
            ExerciseItem(id: UUID(), prompt: "What is the tallest mountain in the world?", options: ["K2", "Kilimanjaro", "Mount Everest", "Denali"], correctAnswer: "Mount Everest", explanation: "Mount Everest is Earth's highest mountain above sea level, located in the Himalayas."),
            ExerciseItem(id: UUID(), prompt: "What country currently has the largest population in the world?", options: ["United States", "Russia", "India", "China"], correctAnswer: "India", explanation: "India surpassed China in 2023"),
            ExerciseItem(id: UUID(), prompt: "What is the capital city of Australia?", options: ["Sydney", "Melbourne", "Canberra", "Brisbane"], correctAnswer: "Canberra", explanation: "Canberra is the capital city of Australia, selected as a compromise between the country's two largest cities, Sydney and Melbourne."),
            ExerciseItem(id: UUID(), prompt: "What is the capital of Canada?", options: ["Toronto", "Vancouver", "Ottawa", "Montreal"], correctAnswer: "Ottawa", explanation: "Ottawa is the capital city of Canada, located in the province of Ontario.")
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
            ExerciseItem(id: UUID(), prompt: "What TV show features Ross, Rachel, Monica, Chandler, Joey, and Phoebe?", options: ["Seinfeld", "Friends", "The Office", "Cheers"], correctAnswer: "Friends", explanation: "Friends is a highly popular 1990s television sitcom following the lives of these six characters in New York City."),
            ExerciseItem(id: UUID(), prompt: "Who was known as the Queen of Soul and sang Respect?", options: ["Whitney Houston", "Diana Ross", "Aretha Franklin", "Tina Turner"], correctAnswer: "Aretha Franklin", explanation: "Aretha Franklin was a legendary singer-songwriter, often referred to as the 'Queen of Soul', whose signature song was 'Respect'."),
            ExerciseItem(id: UUID(), prompt: "What animated film features a clownfish searching for his missing son?", options: ["Shark Tale", "The Little Mermaid", "Finding Nemo", "Happy Feet"], correctAnswer: "Finding Nemo", explanation: "Finding Nemo is a 2003 Pixar animated film about a clownfish named Marlin searching for his abducted son Nemo."),
            ExerciseItem(id: UUID(), prompt: "What classic rock band recorded Hotel California?", options: ["The Doors", "Fleetwood Mac", "The Eagles", "The Beach Boys"], correctAnswer: "The Eagles", explanation: "The Eagles are an American rock band that released the iconic and widely popular song 'Hotel California' in 1976."),
            ExerciseItem(id: UUID(), prompt: "Who played the title role in the 1994 film Forrest Gump?", options: ["Tom Cruise", "Tom Hanks", "Kevin Costner", "Dustin Hoffman"], correctAnswer: "Tom Hanks", explanation: "Tom Hanks won an Academy Award for Best Actor for his portrayal of the slow-witted but kind-hearted Forrest Gump in the 1994 film."),
            ExerciseItem(id: UUID(), prompt: "What 1950s sitcom starred Lucille Ball as a woman always getting into comic trouble?", options: ["The Dick Van Dyke Show", "Bewitched", "I Love Lucy", "The Honeymooners"], correctAnswer: "I Love Lucy", explanation: "I Love Lucy is a classic 1950s American television sitcom starring Lucille Ball, famous for its comedic situations."),
            ExerciseItem(id: UUID(), prompt: "What Herman Melville novel begins with the line Call me Ishmael?", options: ["The Old Man and the Sea", "Billy Budd", "Moby-Dick", "Treasure Island"], correctAnswer: "Moby-Dick", explanation: "'Call me Ishmael' is the famous opening sentence of Moby-Dick, Herman Melville's 1851 novel about a whaling voyage."),
            ExerciseItem(id: UUID(), prompt: "Who recorded the classic song My Way in 1969?", options: ["Dean Martin", "Sammy Davis Jr.", "Frank Sinatra", "Tony Bennett"], correctAnswer: "Frank Sinatra", explanation: "Frank Sinatra popularized the song 'My Way' in 1969, which became one of his signature tunes."),
            ExerciseItem(id: UUID(), prompt: "What Pixar film from 1995 features a cowboy doll named Woody?", options: ["A Bug's Life", "Toy Story", "Cars", "Monsters Inc."], correctAnswer: "Toy Story", explanation: "Toy Story, released by Pixar in 1995, is a groundbreaking animated film centered around living toys, including the cowboy Woody."),
            ExerciseItem(id: UUID(), prompt: "What animated show features a yellow-skinned family in the town of Springfield?", options: ["Family Guy", "Bob's Burgers", "American Dad", "The Simpsons"], correctAnswer: "The Simpsons", explanation: "The Simpsons is a long-running animated sitcom focusing on the Simpson family living in the fictional town of Springfield."),
            ExerciseItem(id: UUID(), prompt: "Who wrote the Harry Potter book series?", options: ["Roald Dahl", "J.R.R. Tolkien", "J.K. Rowling", "C.S. Lewis"], correctAnswer: "J.K. Rowling", explanation: "J.K. Rowling is the British author who created the massively successful Harry Potter fantasy series."),
            ExerciseItem(id: UUID(), prompt: "What game show features contestants solving word puzzles by spinning a wheel?", options: ["Jeopardy!", "Wheel of Fortune", "The Price Is Right", "Deal or No Deal"], correctAnswer: "Wheel of Fortune", explanation: "Wheel of Fortune is a popular game show where contestants solve hangman-style puzzles to win prizes determined by a giant spinning wheel."),
            ExerciseItem(id: UUID(), prompt: "Who was nicknamed The King of Rock and Roll?", options: ["Chuck Berry", "Jerry Lee Lewis", "Elvis Presley", "Buddy Holly"], correctAnswer: "Elvis Presley", explanation: "Elvis Presley was a highly influential 20th-century musician and actor, widely celebrated as the 'King of Rock and Roll'."),
            ExerciseItem(id: UUID(), prompt: "What classic 1939 film features Dorothy, a scarecrow, a tin man, and a cowardly lion?", options: ["Snow White", "Sleeping Beauty", "The Wizard of Oz", "Fantasia"], correctAnswer: "The Wizard of Oz", explanation: "The Wizard of Oz is a beloved 1939 musical fantasy film based on L. Frank Baum's novel."),
            ExerciseItem(id: UUID(), prompt: "What J.R.R. Tolkien trilogy features the hobbit Frodo Baggins?", options: ["The Chronicles of Narnia", "Harry Potter", "The Lord of the Rings", "Eragon"], correctAnswer: "The Lord of the Rings", explanation: "The Lord of the Rings is an epic high-fantasy novel series by J.R.R. Tolkien following Frodo Baggins's quest to destroy the One Ring.")
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
            ExerciseItem(id: UUID(), prompt: "Mrs. Hansen has a green thumb.", options: [], correctAnswer: "She is good at growing plants and gardening.", explanation: "The idiom 'having a green thumb' metaphorically refers to having a natural talent for growing plants successfully."),
            ExerciseItem(id: UUID(), prompt: "I paid an arm and a leg for my new washer.", options: [], correctAnswer: "I paid a very high price for it.", explanation: "The phrase 'cost an arm and a leg' is an idiom used to describe something that is extremely expensive or unreasonably costly."),
            ExerciseItem(id: UUID(), prompt: "Don't spill the beans about Jennifer's engagement.", options: [], correctAnswer: "Don't reveal the secret.", explanation: "The idiom 'spill the beans' means to prematurely or accidentally disclose secret or confidential information."),
            ExerciseItem(id: UUID(), prompt: "The grass is always greener on the other side.", options: [], correctAnswer: "Other people's situations always seem better than your own.", explanation: "The idiom 'the grass is always greener on the other side' means that other people's circumstances often appear more desirable than one's own."),
            ExerciseItem(id: UUID(), prompt: "You look like a million bucks.", options: [], correctAnswer: "You look wonderful or very impressive.", explanation: "The idiom 'look like a million bucks' is used to compliment someone on looking exceptionally healthy, stylish, or attractive."),
            ExerciseItem(id: UUID(), prompt: "He has a chip on his shoulder.", options: [], correctAnswer: "He carries a grudge or is easily offended.", explanation: "The idiom 'having a chip on one's shoulder' describes a person who seems angry, holding a grievance, or ready to fight over past resentments."),
            ExerciseItem(id: UUID(), prompt: "She let the cat out of the bag.", options: [], correctAnswer: "She accidentally revealed a secret.", explanation: "The idiom 'let the cat out of the bag' means to accidentally reveal a secret or hidden fact."),
            ExerciseItem(id: UUID(), prompt: "She hit the nail on the head.", options: [], correctAnswer: "She described or identified something exactly right.", explanation: "The idiom 'hit the nail on the head' means to describe the exact nature of a problem or situation with perfect accuracy."),
            ExerciseItem(id: UUID(), prompt: "He's biting the bullet.", options: [], correctAnswer: "He is enduring something painful or difficult with courage.", explanation: "The idiom 'bite the bullet' means to face a difficult, unpleasant, or painful situation with fortitude."),
            ExerciseItem(id: UUID(), prompt: "He's barking up the wrong tree.", options: [], correctAnswer: "He is pursuing the wrong person or looking in the wrong place.", explanation: "The idiom 'barking up the wrong tree' means to make a mistake in a line of thought or pursue a false lead."),
            ExerciseItem(id: UUID(), prompt: "She threw him under the bus.", options: [], correctAnswer: "She sacrificed or blamed him to protect herself.", explanation: "The idiom 'throw someone under the bus' means to betray or sacrifice a colleague or friend for one's own benefit."),
            ExerciseItem(id: UUID(), prompt: "He's sitting on the fence.", options: [], correctAnswer: "He refuses to take a position or make a decision.", explanation: "The idiom 'sitting on the fence' means to remain neutral or undecided about an issue."),
            ExerciseItem(id: UUID(), prompt: "She put her foot in her mouth.", options: [], correctAnswer: "She said something embarrassing or socially inappropriate.", explanation: "The idiom 'put one's foot in one's mouth' means to say something foolish, tactless, or embarrassing."),
            ExerciseItem(id: UUID(), prompt: "He's got cold feet.", options: [], correctAnswer: "He is nervous and hesitant about going through with something.", explanation: "The idiom 'have cold feet' means to experience a loss of courage or confidence right before taking a major step or action."),
            ExerciseItem(id: UUID(), prompt: "He passed the buck.", options: [], correctAnswer: "He shifted his responsibility to someone else.", explanation: "The idiom 'pass the buck' means to shift the blame or responsibility for a problem to someone else.")
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
            ExerciseItem(id: UUID(), prompt: "How long does it typically take to soft-boil an egg?", options: ["1 minute", "6 minutes", "20 minutes", "1 hour"], correctAnswer: "6 minutes", explanation: "It typically takes about 6 minutes in boiling water to achieve a soft-boiled egg with set whites and a runny yolk."),
            ExerciseItem(id: UUID(), prompt: "How many eggs come in a standard carton?", options: ["6", "12", "18", "24"], correctAnswer: "12", explanation: "A standard egg carton sold in most grocery stores is designed to hold a dozen (12) eggs."),
            ExerciseItem(id: UUID(), prompt: "How many wheels does a standard car have?", options: ["2", "3", "4", "6"], correctAnswer: "4", explanation: "Standard passenger cars are built with a 4-wheel configuration for balance, steering, and stability."),
            ExerciseItem(id: UUID(), prompt: "Approximately how many gallons does a standard bathtub hold when full?", options: ["5 gallons", "15 gallons", "30 to 40 gallons", "100 gallons"], correctAnswer: "30 to 40 gallons", explanation: "A standard-sized bathtub typically has a capacity of around 40 to 60 gallons but usually holds 30 to 40 gallons during a normal bath."),
            ExerciseItem(id: UUID(), prompt: "How many legs does an elephant have?", options: ["2", "3", "4", "6"], correctAnswer: "4", explanation: "Elephants, like most mammals and land-dwelling vertebrates, are quadrupeds, meaning they have four legs."),
            ExerciseItem(id: UUID(), prompt: "How many years are in a century?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: "A century is defined as a period of 100 consecutive years."),
            ExerciseItem(id: UUID(), prompt: "How many individual dollar bills make up one hundred dollars?", options: ["10", "50", "100", "1000"], correctAnswer: "100", explanation: "Since a dollar bill represents one dollar, it takes exactly one hundred of them to equal one hundred dollars."),
            ExerciseItem(id: UUID(), prompt: "How fast does a person typically walk?", options: ["About 1 mph", "About 3 mph", "About 15 mph", "About 30 mph"], correctAnswer: "About 3 mph", explanation: "The average human walking speed is typically around 3 miles per hour (mph), which is a comfortable and efficient pace."),
            ExerciseItem(id: UUID(), prompt: "How many days are in a standard non-leap year?", options: ["300", "356", "365", "400"], correctAnswer: "365", explanation: "A standard calendar year based on the Earth's orbit around the sun consists of 365 days, except during leap years."),
            ExerciseItem(id: UUID(), prompt: "How many slices of bread are in a standard sandwich?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "A standard sandwich is traditionally made by placing fillings between two slices of bread."),
            ExerciseItem(id: UUID(), prompt: "How many seasons are in a year?", options: ["2", "3", "4", "5"], correctAnswer: "4", explanation: "A year is traditionally divided into four distinct seasons: spring, summer, autumn (fall), and winter, based on weather and daylight patterns."),
            ExerciseItem(id: UUID(), prompt: "Can a person lift a full-size car by themselves with no equipment?", options: ["Yes easily", "Yes with training", "No a car is far too heavy", "Yes with one hand"], correctAnswer: "No a car is far too heavy", explanation: "A standard passenger car weighs thousands of pounds, making it physically impossible for an unaided human to lift it."),
            ExerciseItem(id: UUID(), prompt: "If you eat 3 meals a day how many meals do you eat in a week?", options: ["3", "7", "14", "21"], correctAnswer: "21", explanation: "Since there are 7 days in a week, eating 3 meals per day results in a total of 21 meals in a week (3 x 7)."),
            ExerciseItem(id: UUID(), prompt: "How much does a standard 5-pound bag of flour weigh?", options: ["1 lb", "5 lbs", "50 lbs", "100 lbs"], correctAnswer: "5 lbs", explanation: "A standard 5-pound bag of flour is measured by weight, meaning the contents weigh exactly 5 pounds."),
            ExerciseItem(id: UUID(), prompt: "How many months in a year have exactly 31 days?", options: ["5", "6", "7", "8"], correctAnswer: "7", explanation: "January, March, May, July, August, October, December"),
            ExerciseItem(id: UUID(), prompt: "How many zeros are in the number one million?", options: ["4", "5", "6", "7"], correctAnswer: "6", explanation: "The number one million is written mathematically as 1,000,000, which contains exactly six zeros."),
            ExerciseItem(id: UUID(), prompt: "Which is heavier — a pound of feathers or a pound of lead bricks?", options: ["The lead bricks", "The feathers", "They weigh the same", "It depends"], correctAnswer: "They weigh the same", explanation: "Both are one pound"),
            ExerciseItem(id: UUID(), prompt: "About how many hours of sleep do most healthy adults need per night?", options: ["3 to 4", "6 to 8", "10 to 12", "14 to 16"], correctAnswer: "6 to 8", explanation: "Medical professionals generally recommend that healthy adults aim for 7 to 9 (or 6 to 8) hours of sleep per night for optimal functioning.")
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
            ExerciseItem(id: UUID(), prompt: "Someone is wearing a swimsuit and sunglasses. What are they probably about to do?", options: ["Go to the movies", "Go to the beach or pool", "Attend a formal wedding", "Go grocery shopping"], correctAnswer: "Go to the beach or pool", explanation: "A swimsuit and sunglasses are typical attire for warm weather water activities, suggesting the person is going swimming."),
            ExerciseItem(id: UUID(), prompt: "An emergency vehicle is driving past with lights and sirens on. What should you do?", options: ["Speed up", "Pull over and stop until it passes", "Honk your horn", "Ignore it"], correctAnswer: "Pull over and stop until it passes", explanation: "Emergency vehicles use lights and sirens to warn traffic to yield, making it crucial to pull over safely and let them pass."),
            ExerciseItem(id: UUID(), prompt: "A person is holding an umbrella and wearing a raincoat. What is the weather most likely?", options: ["Hot and sunny", "Cold and snowy", "Rainy", "Dry and windy"], correctAnswer: "Rainy", explanation: "An umbrella and raincoat are designed to repel water, indicating that it is currently raining or expected to rain."),
            ExerciseItem(id: UUID(), prompt: "All the lights in your house go out suddenly at night. What most likely happened?", options: ["The sun set", "A power outage occurred", "You closed your eyes", "The TV turned off"], correctAnswer: "A power outage occurred", explanation: "When all lights go out simultaneously, especially at night, it usually indicates a disruption in the electrical power supply."),
            ExerciseItem(id: UUID(), prompt: "It snowed heavily overnight. You need to drive. What should you do first?", options: ["Drive at normal speed", "Check road conditions and clear your windshield", "Call the police", "Stay home forever"], correctAnswer: "Check road conditions and clear your windshield", explanation: "Heavy snow accumulation on a vehicle impairs visibility, making it essential to clear the windshield and check road safety before driving."),
            ExerciseItem(id: UUID(), prompt: "You lit candles for dinner and need to leave the room for 20 minutes. What should you do?", options: ["Leave the candles burning", "Blow them out before you leave", "Ignore them", "Open a window"], correctAnswer: "Blow them out before you leave", explanation: "Never leave candles unattended"),
            ExerciseItem(id: UUID(), prompt: "Your friend is shivering uncontrollably and confused after being outside in freezing cold for a long time. What might be wrong?", options: ["Heat exhaustion", "Hypothermia", "Dehydration", "Sunburn"], correctAnswer: "Hypothermia", explanation: "Prolonged exposure to freezing temperatures can cause a dangerous drop in body temperature, a condition known as hypothermia."),
            ExerciseItem(id: UUID(), prompt: "You smell gas in your kitchen. What is the most important first action?", options: ["Light a match to locate the leak", "Turn on the lights", "Leave immediately and call the gas company from outside", "Open the oven to check"], correctAnswer: "Leave immediately and call the gas company from outside", explanation: "A gas leak poses a severe explosion risk, so evacuating the area before calling the authorities ensures personal safety."),
            ExerciseItem(id: UUID(), prompt: "Someone is at an altar in a church wearing a formal white gown. What event is most likely taking place?", options: ["A graduation", "A funeral", "A wedding", "A birthday party"], correctAnswer: "A wedding", explanation: "A formal white gown at a church altar strongly suggests a traditional western wedding ceremony is taking place."),
            ExerciseItem(id: UUID(), prompt: "You see a person wearing a cap and gown holding a diploma. What event did they probably just attend?", options: ["A wedding", "A graduation ceremony", "A funeral", "A job interview"], correctAnswer: "A graduation ceremony", explanation: "A cap, gown, and diploma are the traditional symbols and attire associated with academic graduation ceremonies."),
            ExerciseItem(id: UUID(), prompt: "You find a coin on the ground and see Abraham Lincoln's portrait on the front. What coin is it?", options: ["A quarter", "A dime", "A nickel", "A penny"], correctAnswer: "A penny", explanation: "In the United States, the one-cent coin, known as the penny, features the portrait of President Abraham Lincoln."),
            ExerciseItem(id: UUID(), prompt: "You hear thunder rumbling in the distance. What weather is most likely approaching?", options: ["A tornado", "A thunderstorm", "An earthquake", "A blizzard"], correctAnswer: "A thunderstorm", explanation: "Thunder is the sound caused by lightning, meaning a thunderstorm is nearby or approaching."),
            ExerciseItem(id: UUID(), prompt: "A person is wearing a heavy parka, insulated boots, and thick gloves. What season is it probably?", options: ["Summer", "Spring", "Winter", "Fall"], correctAnswer: "Winter", explanation: "A heavy parka, insulated boots, and thick gloves are cold-weather garments typically worn during the freezing conditions of winter."),
            ExerciseItem(id: UUID(), prompt: "You receive a bill stamped PAST DUE in red. What does this mean?", options: ["You paid early", "Your payment was received on time", "Your bill is not yet due", "You owe a payment that should have been made already"], correctAnswer: "You owe a payment that should have been made already", explanation: "A 'PAST DUE' stamp indicates that a bill's payment deadline has passed and the recipient is late in paying the required amount."),
            ExerciseItem(id: UUID(), prompt: "A person in a hospital hallway is wearing scrubs and a stethoscope. What is their most likely profession?", options: ["A teacher", "A chef", "A doctor or nurse", "A police officer"], correctAnswer: "A doctor or nurse", explanation: "Scrubs and a stethoscope are standard medical attire and equipment primarily associated with doctors and nurses in a hospital environment.")
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
            ExerciseItem(id: UUID(), prompt: "What was the name of the street or neighborhood you grew up on?", options: [], correctAnswer: "", explanation: "This question stimulates long-term autobiographical memory by asking for specific geographical details from childhood."),
            ExerciseItem(id: UUID(), prompt: "What is your earliest childhood memory?", options: [], correctAnswer: "", explanation: "Recalling one's earliest memory exercises retrospective memory retrieval and engages emotional and contextual episodic memory."),
            ExerciseItem(id: UUID(), prompt: "What did you want to be when you grew up as a child?", options: [], correctAnswer: "", explanation: "This prompts reflection on childhood aspirations, activating long-term memory and personal narrative."),
            ExerciseItem(id: UUID(), prompt: "Describe your wedding day, or a wedding you attended that you remember well.", options: [], correctAnswer: "", explanation: "Asking about a wedding day encourages the recollection of a significant life event involving strong emotional and episodic memories."),
            ExerciseItem(id: UUID(), prompt: "What is a song that takes you right back to a specific time in your life?", options: [], correctAnswer: "", explanation: "Music is strongly linked to memory; this question uses auditory cues to trigger specific past autobiographical experiences."),
            ExerciseItem(id: UUID(), prompt: "Who was your favorite teacher and what made them special?", options: [], correctAnswer: "", explanation: "Recalling a favorite teacher taps into emotionally significant relationships and specific educational periods from the past."),
            ExerciseItem(id: UUID(), prompt: "Describe a car you owned or remember fondly — the color, the model, how it felt.", options: [], correctAnswer: "", explanation: "This question elicits sensory and emotional memories associated with a specific personal possession from the past."),
            ExerciseItem(id: UUID(), prompt: "What is your favorite holiday meal, and who cooked it?", options: [], correctAnswer: "", explanation: "Food and family gatherings are powerful triggers for episodic memories and cultural or family traditions."),
            ExerciseItem(id: UUID(), prompt: "Where were you when a big historical event happened — the moon landing, September 11, or the Berlin Wall coming down?", options: [], correctAnswer: "", explanation: "Connecting personal experience with historical events exercises flashbulb memory, which is often vivid and detailed."),
            ExerciseItem(id: UUID(), prompt: "What was your first job, and what do you remember about it?", options: [], correctAnswer: "", explanation: "Recalling a first job stimulates memories of early adulthood, responsibilities, and specific workplace environments."),
            ExerciseItem(id: UUID(), prompt: "Describe a vacation or trip that you loved. Where did you go? Who were you with?", options: [], correctAnswer: "", explanation: "Vacations often form strong episodic memories; this question prompts the recall of places, companions, and leisure activities."),
            ExerciseItem(id: UUID(), prompt: "What games did you play as a child — indoors or outdoors?", options: [], correctAnswer: "", explanation: "Remembering childhood games accesses long-term memory related to play, rules, and childhood friends."),
            ExerciseItem(id: UUID(), prompt: "Describe your childhood home in as much detail as you can.", options: [], correctAnswer: "", explanation: "Visualizing a childhood home exercises spatial memory and the detailed recall of past physical environments."),
            ExerciseItem(id: UUID(), prompt: "What is a smell that brings back a strong memory for you?", options: [], correctAnswer: "", explanation: "Olfactory memory is highly evocative; this question uses the concept of smell to unlock vivid personal memories."),
            ExerciseItem(id: UUID(), prompt: "What was a skill or hobby you had that you are proud of?", options: [], correctAnswer: "", explanation: "Recalling past skills or hobbies reinforces personal identity and accesses procedural and semantic memories."),
            ExerciseItem(id: UUID(), prompt: "Describe a time you laughed so hard it hurt.", options: [], correctAnswer: "", explanation: "This question targets strong positive emotional memories, which are often well-preserved and detailed."),
            ExerciseItem(id: UUID(), prompt: "What is a family tradition that was important to you growing up?", options: [], correctAnswer: "", explanation: "Family traditions involve repetitive events, making them strong semantic and episodic memories anchored in family history."),
            ExerciseItem(id: UUID(), prompt: "Who taught you to drive, cook, or do something important in your life?", options: [], correctAnswer: "", explanation: "Remembering who taught a significant skill links procedural memory with specific interpersonal relationships."),
            ExerciseItem(id: UUID(), prompt: "What is something your parents or grandparents always used to say?", options: [], correctAnswer: "", explanation: "Recalling frequently used phrases by elders exercises semantic memory and connects to familial heritage and auditory recall."),
            ExerciseItem(id: UUID(), prompt: "What is a food from your childhood that you still love today?", options: [], correctAnswer: "")
        ]
    )
}


