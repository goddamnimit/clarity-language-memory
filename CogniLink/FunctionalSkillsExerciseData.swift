import Foundation

/// Holds the static therapy content for the Functional Skills section of CogniLink.
struct FunctionalSkillsExerciseData {
    
    /// The complete collection of all 6 Functional Skills exercises.
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
        title: "Safety Scenarios",
        instructions: "Read each scenario. Describe what you would do. Tap 'Show Answer' to see the best response.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "You fall in your basement and think you might have twisted your ankle.", options: [], correctAnswer: "Stay still. Do not try to walk on it. Call out for help. If alone, call 911 or use your phone. Only move if you can do so safely.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "There is a fire in the kitchen while you are cooking.", options: [], correctAnswer: "Do NOT use water on a grease or oil fire — this causes dangerous flare-ups. Turn off the burner. Smother the flames with a lid or baking sheet. Use a fire extinguisher. If the fire spreads, leave immediately and call 911.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Someone sends you an email asking for help with a banking error and offers a financial reward.", options: [], correctAnswer: "Do not respond. Do not click any links. This is a phishing or advance-fee scam. Delete the email.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You wake up in the middle of the night with pain in your chest.", options: [], correctAnswer: "Call 911 immediately. Do not wait to see if it passes. Chest pain can indicate a heart attack. Chew an aspirin if available and not contraindicated.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Someone calls claiming your computer has a virus and offers to fix it for free over the phone.", options: [], correctAnswer: "Hang up. This is a tech support scam. Legitimate companies do not make unsolicited calls. Never allow remote access to your computer from an unsolicited caller.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You come home and notice a door or window has been forced open, suggesting a break-in.", options: [], correctAnswer: "Do NOT enter. Leave the area immediately. Call 911 from a safe location. Wait for police to clear the premises before going inside.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Someone calls saying you've won a contest but needs your Social Security number to process the prize.", options: [], correctAnswer: "Never give your SSN over the phone to an unsolicited caller. This is a scam. Hang up.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You receive a text message saying your bank account has been frozen and you need to click a link immediately.", options: [], correctAnswer: "Do not click the link. This is a phishing scam. Call your bank directly using the number on the back of your card.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You are driving and suddenly feel very dizzy and confused.", options: [], correctAnswer: "Pull over safely as soon as possible. Turn on your hazard lights. Do not continue driving. Call someone for help or call 911.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A stranger knocks on your door claiming to be from the utility company but cannot show ID.", options: [], correctAnswer: "Do not let them in. Ask them to hold their ID up to a window. Call the utility company directly to verify before opening the door.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You find an unidentified pill on your bathroom floor.", options: [], correctAnswer: "Do not take it. Dispose of it safely at a pharmacy drug take-back program. Do not flush unless instructed by a pharmacist.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Your smoke alarm is chirping once every 30 to 60 seconds.", options: [], correctAnswer: "This means the battery is low. Replace the battery immediately. Do not remove the battery and leave the detector without power.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You accidentally take a double dose of your prescription medication.", options: [], correctAnswer: "Call Poison Control immediately at 1-800-222-1222. Do not wait to see if symptoms develop. Have the medication bottle on hand when you call.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You receive a phone call saying a grandchild is in jail and needs bail money wired right away.", options: [], correctAnswer: "This is a grandparent scam. Hang up. Call your grandchild directly on a number you know is theirs. Do not wire money.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You suddenly notice that one side of your face is drooping, your arm feels weak, and your speech sounds strange.", options: [], correctAnswer: "Call 911 immediately. These are warning signs of a stroke. Remember FAST: Face drooping, Arm weakness, Speech difficulty, Time to call 911.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Your carbon monoxide detector alarm is sounding.", options: [], correctAnswer: "Leave the house immediately, taking everyone with you. Do not stop to collect belongings. Call 911 from outside. Do not re-enter until emergency services clear it.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A phone caller claims you owe back taxes to the IRS and will be arrested unless you pay immediately with gift cards.", options: [], correctAnswer: "This is an IRS impersonation scam. The IRS does not call demanding immediate gift card payment. Hang up.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You are home alone and fall, hitting your head. You feel confused or dizzy afterward.", options: [], correctAnswer: "Call 911. Confusion after a head injury is a medical emergency. Do not try to sleep it off.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Your prescription medication looks different from usual — different color, shape, or markings.", options: [], correctAnswer: "Do not take it. Contact your pharmacy immediately. It may be a filling error.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You notice someone following you through a parking lot toward your car.", options: [], correctAnswer: "Do not go to your car alone. Return to the store or another public space. Alert store security. Call 911 if you feel threatened.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You smell something burning coming from inside your walls.", options: [], correctAnswer: "Leave the house immediately. Call 911. Do not try to locate the source. This may be an electrical fire inside the wall.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You receive a robocall saying your Social Security number has been suspended.", options: [], correctAnswer: "This is an SSA impersonation scam. The SSA does not suspend Social Security numbers. Hang up immediately.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You realize you fell asleep and left a candle burning in the living room.", options: [], correctAnswer: "Go extinguish it immediately. Never sleep with a candle burning. Unattended candles are a leading cause of house fires.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A contractor comes to your door offering to repair your roof for cash only with no written contract.", options: [], correctAnswer: "Be very cautious. This is a common contractor fraud pattern. Always get written estimates, check licensing, and never pay the full amount upfront.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "You find an injured stray animal on the street.", options: [], correctAnswer: "Do not approach or handle the animal. Injured animals in pain can bite even if normally friendly. Call your local animal control.", explanation: "")
        ]
    )
    
    // MARK: - Exercise 2: Time and Math
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "Time and Math",
        instructions: "Choose the correct answer for each question.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "How many hours are in one day?", options: ["12", "24", "48", "36"], correctAnswer: "24", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many days are in a leap year?", options: ["364", "365", "366", "367"], correctAnswer: "366", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If it is 3:00pm and your appointment is in 2.5 hours, what time is it?", options: ["5:00pm", "5:30pm", "4:30pm", "6:00pm"], correctAnswer: "5:30pm", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If you go to sleep at 10:30pm and wake up at 6:30am, how many hours did you sleep?", options: ["6 hours", "7 hours", "8 hours", "9 hours"], correctAnswer: "8 hours", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A movie is 1 hour and 45 minutes long. It starts at 7:15pm. When does it end?", options: ["8:45pm", "9:00pm", "9:15pm", "9:30pm"], correctAnswer: "9:00pm", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many decades are in a century?", options: ["5", "8", "10", "100"], correctAnswer: "10", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If today is Wednesday and your appointment is in 3 days, what day is the appointment?", options: ["Friday", "Saturday", "Sunday", "Monday"], correctAnswer: "Saturday", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many minutes are in 3 hours?", options: ["120", "150", "180", "200"], correctAnswer: "180", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If someone was born in 1950 and died in 2015, how old were they?", options: ["55", "60", "65", "70"], correctAnswer: "65", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If you take a pill every 8 hours starting at 8:00am, when is your next dose?", options: ["2:00pm", "3:00pm", "4:00pm", "5:00pm"], correctAnswer: "4:00pm", explanation: "8am plus 8 hours equals 4pm"),
            ExerciseItem(id: UUID(), prompt: "A recipe says marinate for at least 4 hours. You want dinner at 6:00pm. When do you need to start?", options: ["By 10:00am", "By 12:00pm", "By 2:00pm", "By 4:00pm"], correctAnswer: "By 2:00pm", explanation: "6pm minus 4 hours equals 2pm"),
            ExerciseItem(id: UUID(), prompt: "How many seconds are in one minute?", options: ["30", "45", "60", "100"], correctAnswer: "60", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If rent is due on the 1st of each month, how many payments do you make in a year?", options: ["4", "6", "12", "24"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Your parking meter expires in 45 minutes. It is 1:20pm. What time does it expire?", options: ["1:55pm", "2:00pm", "2:05pm", "2:10pm"], correctAnswer: "2:05pm", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many years are in a millennium?", options: ["100", "500", "1000", "10000"], correctAnswer: "1000", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "If you work 5 days a week at 8 hours each day, how many hours do you work per week?", options: ["32", "35", "40", "45"], correctAnswer: "40", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How many days are in the month of April?", options: ["28", "29", "30", "31"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "A store closes at 9:00pm. It takes 25 minutes to drive there and at least 30 minutes to shop. It is currently 8:00pm. Can you get there, shop, and check out before closing?", options: ["Yes easily", "Yes but you need to hurry", "No you will not have enough time", "Need more information"], correctAnswer: "No you will not have enough time", explanation: "25 min drive plus 30 min shopping equals 55 minutes, so you would still be shopping at 8:55pm"),
            ExerciseItem(id: UUID(), prompt: "If you have 1 hour each of speech therapy, physical therapy, and occupational therapy every day Monday through Saturday, how many total therapy hours per week?", options: ["15 hours", "18 hours", "21 hours", "24 hours"], correctAnswer: "18 hours", explanation: "3 hours per day times 6 days equals 18 hours"),
            ExerciseItem(id: UUID(), prompt: "How many months in a year have exactly 31 days?", options: ["5", "6", "7", "8"], correctAnswer: "7", explanation: "January, March, May, July, August, October, December")
        ]
    )
    
    // MARK: - Exercise 3: Grocery Shopping — Best Value
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "Grocery Shopping — Best Value",
        instructions: "For each item, choose which option gives you better value for your money.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Toilet paper: A) 4 rolls for $2.00 ($0.50 per roll)  B) 6 rolls for $2.70 ($0.45 per roll)", options: ["Option A — 4 rolls for $2.00", "Option B — 6 rolls for $2.70"], correctAnswer: "Option B — 6 rolls for $2.70", explanation: "$0.45 per roll vs $0.50 per roll"),
            ExerciseItem(id: UUID(), prompt: "Eggs: A) 6-pack for $2.50 ($0.42 each)  B) 12-pack for $4.00 ($0.33 each)", options: ["Option A — 6-pack for $2.50", "Option B — 12-pack for $4.00"], correctAnswer: "Option B — 12-pack for $4.00", explanation: "$0.33 each vs $0.42 each"),
            ExerciseItem(id: UUID(), prompt: "Bread: A) Name brand for $3.50  B) Store brand for $1.99", options: ["Option A — Name brand $3.50", "Option B — Store brand $1.99"], correctAnswer: "Option B — Store brand $1.99", explanation: "Lower cost for a comparable product"),
            ExerciseItem(id: UUID(), prompt: "Milk: A) Half-gallon for $2.00 ($0.031 per oz)  B) Full gallon for $2.50 ($0.020 per oz)", options: ["Option A — Half-gallon for $2.00", "Option B — Full gallon for $2.50"], correctAnswer: "Option B — Full gallon for $2.50", explanation: "About 35% cheaper per ounce — if you will use it before it expires"),
            ExerciseItem(id: UUID(), prompt: "Apples: A) Loose apples at $1.89 per lb  B) 3 lb bag for $4.50 ($1.50 per lb)", options: ["Option A — Loose at $1.89 per lb", "Option B — 3 lb bag for $4.50"], correctAnswer: "Option B — 3 lb bag for $4.50", explanation: "$1.50 per lb vs $1.89 per lb"),
            ExerciseItem(id: UUID(), prompt: "Pasta: A) 1 lb box for $2.00  B) 2 lb bag for $3.00 ($1.50 per lb)", options: ["Option A — 1 lb box for $2.00", "Option B — 2 lb bag for $3.00"], correctAnswer: "Option B — 2 lb bag for $3.00", explanation: "$1.50 per lb vs $2.00 per lb"),
            ExerciseItem(id: UUID(), prompt: "Chicken: A) Frozen 2 lb bag for $5.00 ($2.50 per lb)  B) Fresh 1 lb at $3.99 per lb", options: ["Option A — Frozen 2 lb for $5.00", "Option B — Fresh 1 lb at $3.99"], correctAnswer: "Option A — Frozen 2 lb for $5.00", explanation: "$2.50 per lb vs $3.99 per lb"),
            ExerciseItem(id: UUID(), prompt: "Orange juice: A) 32 oz for $3.00  B) 64 oz for $5.00", options: ["Option A — 32 oz for $3.00", "Option B — 64 oz for $5.00"], correctAnswer: "Option B — 64 oz for $5.00", explanation: "$0.078 per oz vs $0.094 per oz"),
            ExerciseItem(id: UUID(), prompt: "Peanut butter: A) 18 oz jar for $3.50 ($0.19 per oz)  B) 40 oz jar for $6.00 ($0.15 per oz)", options: ["Option A — 18 oz for $3.50", "Option B — 40 oz for $6.00"], correctAnswer: "Option B — 40 oz for $6.00", explanation: "$0.15 per oz vs $0.19 per oz"),
            ExerciseItem(id: UUID(), prompt: "Frozen vegetables: A) 10 oz bag for $1.50 ($0.15 per oz)  B) 32 oz bag for $3.50 ($0.11 per oz)", options: ["Option A — 10 oz for $1.50", "Option B — 32 oz for $3.50"], correctAnswer: "Option B — 32 oz for $3.50", explanation: "$0.11 per oz vs $0.15 per oz"),
            ExerciseItem(id: UUID(), prompt: "Yogurt: A) Single 6 oz cup for $1.50 ($0.25 per oz)  B) 32 oz tub for $4.00 ($0.125 per oz)", options: ["Option A — 6 oz cup for $1.50", "Option B — 32 oz tub for $4.00"], correctAnswer: "Option B — 32 oz tub for $4.00", explanation: "$0.125 per oz vs $0.25 per oz"),
            ExerciseItem(id: UUID(), prompt: "Coffee: A) 12 oz can for $8.99 ($0.75 per oz)  B) 33 oz can for $14.99 ($0.45 per oz)", options: ["Option A — 12 oz for $8.99", "Option B — 33 oz for $14.99"], correctAnswer: "Option B — 33 oz for $14.99", explanation: "$0.45 per oz vs $0.75 per oz"),
            ExerciseItem(id: UUID(), prompt: "Dish soap: A) Name brand 20 oz for $4.00 ($0.20 per oz)  B) Store brand 28 oz for $2.50 ($0.089 per oz)", options: ["Option A — Name brand 20 oz for $4.00", "Option B — Store brand 28 oz for $2.50"], correctAnswer: "Option B — Store brand 28 oz for $2.50", explanation: "More product for significantly less money")
        ]
    )
    
    // MARK: - Exercise 4: Functional Writing
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "Functional Writing",
        instructions: "Write a response to each prompt. Tap 'Show Answer' to see a sample response.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Write a note to your pet-sitter Doreen explaining how to care for your two cats while you are away for 4 days.", options: [], correctAnswer: "Hi Doreen, Thank you for watching Biscuit and Ginger. Please feed them each half a cup of dry food morning and evening. Fresh water daily. Ginger hides under the bed but will come out when hungry. Scoop the litter box once a day. Litter and food are in the cabinet under the sink. Call me if anything comes up. — [Your Name]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a note to your landlord Mr. O'Donnell reporting a leak in your bathroom ceiling.", options: [], correctAnswer: "Dear Mr. O'Donnell, I am writing to report a water leak in my bathroom ceiling in Apartment 4B. The leak appears to come from the unit above and has been dripping for two days. A water stain is forming on the ceiling tile. Please arrange a repair as soon as possible. You can reach me at 555-345-6789. Thank you, [Your Name]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a polite note declining a dinner party invitation from the Cullivers. You have a prior commitment that weekend.", options: [], correctAnswer: "Dear Barbara and Tom, Thank you so much for the kind invitation to your dinner party on Saturday. I am sorry to say I have a prior commitment that weekend and will not be able to attend. I hope you have a wonderful evening and I look forward to seeing you both soon. Warmly, [Your Name]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a vacation request to your supervisor Mr. Hodge asking for time off from July 28 through August 8.", options: [], correctAnswer: "Dear Mr. Hodge, I would like to request vacation time from Monday July 28 through Friday August 8. I will ensure all my projects are up to date before I leave and will arrange coverage with my colleagues. Please let me know if this works or if you would like to discuss. Thank you, [Your Name]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a short text message to a friend canceling plans for tomorrow because you aren't feeling well.", options: [], correctAnswer: "Hi! I'm so sorry but I need to cancel for tomorrow — I'm not feeling well and don't want to pass anything on. Can we reschedule? Sorry for the short notice!", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a brief note to leave for a family member explaining where you've gone and when you'll be back.", options: [], correctAnswer: "Gone to the pharmacy and grocery store. Back by 2pm. There's soup in the fridge if you're hungry. See you soon!", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a complaint letter to a company about a product that arrived broken.", options: [], correctAnswer: "To Whom It May Concern, I am writing about my recent order which arrived damaged. The item had a cracked lid and appeared improperly packaged. I am requesting a replacement or full refund. Please contact me at [your phone or email] to resolve this. Thank you, [Your Name]", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "Write a grocery list for a week of simple meals for two people under $60.", options: [], correctAnswer: "PRODUCE: Bananas, apples, carrots, salad greens, tomatoes, onion, garlic. DAIRY: Eggs, milk, shredded cheese. MEAT: 2 lbs chicken breast, 1 lb ground beef. PANTRY: Pasta, pasta sauce, canned soup times 3, canned beans, rice, bread, peanut butter, oatmeal. FROZEN: Broccoli. Estimated total: $50 to $60 depending on store and brands.", explanation: "")
        ]
    )
    
    // MARK: - Exercise 5: Cooking Steps
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "Cooking Steps",
        instructions: "The steps are listed in the WRONG order. Number them 1, 2, 3 to put them in the correct sequence.",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Scrambled eggs",
                options: ["Whisk eggs with a fork", "Remove from heat when just set", "Heat pan over medium-low and add butter", "Crack eggs into a bowl", "Pour egg mixture into pan", "Add salt and a splash of milk", "Serve immediately"],
                correctAnswer: "Crack eggs into a bowl | Add salt and a splash of milk | Whisk eggs with a fork | Heat pan over medium-low and add butter | Pour egg mixture into pan | Remove from heat when just set | Serve immediately",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Can of condensed soup",
                options: ["Heat over medium stirring occasionally", "Open the can", "Pour into a bowl and serve", "Pour soup into a saucepan", "Add one can of water and stir"],
                correctAnswer: "Open the can | Pour soup into a saucepan | Add one can of water and stir | Heat over medium stirring occasionally | Pour into a bowl and serve",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Grilled cheese sandwich",
                options: ["Flip the sandwich", "Cook until bottom is golden", "Place second slice on top butter-side-up", "Place one slice butter-side-down in a cold pan", "Butter one side of each bread slice", "Cook until second side is golden and cheese has melted", "Add cheese on top", "Remove and serve"],
                correctAnswer: "Butter one side of each bread slice | Place one slice butter-side-down in a cold pan | Add cheese on top | Place second slice on top butter-side-up | Cook until bottom is golden | Flip the sandwich | Cook until second side is golden and cheese has melted | Remove and serve",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hard-boiled eggs",
                options: ["Drain and transfer to ice water", "Bring to a full boil", "Cover the pan and turn off heat", "Place eggs in a saucepan", "Peel when cool", "Cover with cold water by one inch", "Let sit for 10 to 12 minutes"],
                correctAnswer: "Place eggs in a saucepan | Cover with cold water by one inch | Bring to a full boil | Cover the pan and turn off heat | Let sit for 10 to 12 minutes | Drain and transfer to ice water | Peel when cool",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Stovetop oatmeal",
                options: ["Add toppings such as banana or honey", "Reduce heat and stir for 5 minutes until thick", "Bring water or milk to a boil", "Add oats", "Serve warm"],
                correctAnswer: "Bring water or milk to a boil | Add oats | Reduce heat and stir for 5 minutes until thick | Add toppings such as banana or honey | Serve warm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Box macaroni and cheese",
                options: ["Drain the pasta", "Add butter, milk, and cheese powder packet", "Boil water", "Stir until creamy and serve", "Add pasta and cook 8 to 9 minutes", "Return pasta to the pot"],
                correctAnswer: "Boil water | Add pasta and cook 8 to 9 minutes | Drain the pasta | Return pasta to the pot | Add butter, milk, and cheese powder packet | Stir until creamy and serve",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Frozen pizza",
                options: ["Let sit 2 to 3 minutes before cutting", "Preheat the oven to the temperature on the box", "Bake for the time listed on the box", "Remove all packaging including the cardboard", "Use oven mitts to remove the pizza", "Place pizza on the oven rack or baking sheet"],
                correctAnswer: "Preheat the oven to the temperature on the box | Remove all packaging including the cardboard | Place pizza on the oven rack or baking sheet | Bake for the time listed on the box | Use oven mitts to remove the pizza | Let sit 2 to 3 minutes before cutting",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "White rice on the stove",
                options: ["Fluff with a fork and serve", "Bring to a boil over medium-high heat", "Reduce heat to lowest setting and cover tightly", "Remove from heat and let steam covered for 5 minutes", "Combine 1 cup rice and 2 cups water in a saucepan", "Cook covered for 18 minutes without lifting the lid"],
                correctAnswer: "Combine 1 cup rice and 2 cups water in a saucepan | Bring to a boil over medium-high heat | Reduce heat to lowest setting and cover tightly | Cook covered for 18 minutes without lifting the lid | Remove from heat and let steam covered for 5 minutes | Fluff with a fork and serve",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pancakes from box mix",
                options: ["Flip when bubbles form on surface and edges look dry", "Pour about one quarter cup of batter per pancake", "Cook until second side is golden", "Mix dry ingredients with eggs, milk, and oil as directed", "Heat a lightly greased skillet over medium heat", "Read the box directions", "Do not overmix — small lumps are normal"],
                correctAnswer: "Read the box directions | Mix dry ingredients with eggs, milk, and oil as directed | Do not overmix — small lumps are normal | Heat a lightly greased skillet over medium heat | Pour about one quarter cup of batter per pancake | Flip when bubbles form on surface and edges look dry | Cook until second side is golden",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Basic green salad",
                options: ["Add dressing just before serving", "Toss gently to coat and serve immediately", "Wash salad greens under cold water", "Add toppings such as tomatoes cucumbers and croutons", "Dry the greens with a salad spinner or paper towels", "Tear or chop greens into bite-sized pieces"],
                correctAnswer: "Wash salad greens under cold water | Dry the greens with a salad spinner or paper towels | Tear or chop greens into bite-sized pieces | Add toppings such as tomatoes cucumbers and croutons | Add dressing just before serving | Toss gently to coat and serve immediately",
                explanation: ""
            )
        ]
    )
    
    // MARK: - Exercise 6: Daily Life Skills
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "Daily Life Skills",
        instructions: "For each task, describe: what supplies you need, the key steps, and what could go wrong. Tap 'Show Answer' to see guidance.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "How do you do laundry?", options: [], correctAnswer: "Supplies: dirty clothes, detergent, dryer sheets. Steps: Sort by color and fabric. Check pockets. Add correct amount of detergent. Set water temperature. Move to dryer when done. Fold promptly. Watch out for: red clothes with whites, overloading the machine, forgetting wet clothes in the washer.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you make a doctor's appointment?", options: [], correctAnswer: "Supplies: phone, insurance card, list of symptoms, calendar. Steps: Call during business hours. Give your name, date of birth, and insurance. State the reason for your visit. Write down the date, time, and address. Watch out for: not having your insurance card ready, forgetting to ask for preparation instructions.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you send an email?", options: [], correctAnswer: "Supplies: computer or smartphone, recipient's email address. Steps: Open email app. Click Compose. Enter the recipient's address. Write a subject line. Type your message. Proofread. Click Send. Watch out for: Reply All when you meant Reply. Forgetting an attachment you mentioned.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you read a prescription label correctly?", options: [], correctAnswer: "Find: drug name, prescribed dose, how many times per day, special instructions such as take with food, refill date, expiration date. Read all warning stickers. Watch out for: confusing mg with ml, missing the take with food warning.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you use an ATM safely?", options: [], correctAnswer: "Supplies: debit card, PIN number. Steps: Use a well-lit ATM at a bank. Shield the keypad when entering your PIN. Take your card and receipt before leaving. Never share your PIN. Watch out for: forgetting your card in the machine, using an isolated ATM late at night.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you organize a medicine cabinet?", options: [], correctAnswer: "Supplies: all medications, marker, trash bag. Steps: Remove everything. Check every expiration date. Discard expired items safely at a pharmacy take-back program. Group by category. Return in logical order. Watch out for: storing medications in humid bathrooms, keeping expired medications.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you return an item to a store?", options: [], correctAnswer: "Supplies: item, receipt, original packaging if possible. Steps: Check the return policy for time limits and condition requirements. Bring the receipt. Go to the customer service desk and explain the issue. Watch out for: missing the return deadline, not having the receipt.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you change a smoke detector battery?", options: [], correctAnswer: "Supplies: new 9-volt battery, step stool if needed. Steps: Remove detector from ceiling mount. Open battery compartment. Remove old battery. Insert new battery matching the plus and minus terminals. Press test button to confirm it works. Remount. Watch out for: buying the wrong battery size, not testing it after replacing.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you read a food label?", options: [], correctAnswer: "Find: serving size at the top. Note that all values listed are per serving, not per package. Compare to how much you actually eat. Watch out for: assuming the whole package is one serving — many packages contain 2 to 4 servings.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you safely dispose of old medications?", options: [], correctAnswer: "Mix pills with used coffee grounds or kitty litter in a sealed bag. Discard in household trash. Better: bring to a pharmacy take-back program. Watch out for: never flush medications down the toilet as it harms the water supply.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you address and mail a letter?", options: [], correctAnswer: "Supplies: written letter, envelope, stamp. Steps: Fold letter into thirds. Insert into envelope. Write recipient's full name and address in the center. Write your return address in the upper left. Affix stamp to upper right. Drop in a mailbox. Watch out for: putting your address where the recipient's should go, forgetting the stamp.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you prepare for a doctor's appointment?", options: [], correctAnswer: "Supplies: insurance card, photo ID, list of current medications with doses, list of questions, notebook. Steps: Write down your questions before you go. List all medications by name and dose. Arrive 10 to 15 minutes early for paperwork. Watch out for: forgetting to mention a symptom you came in for.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you file important documents?", options: [], correctAnswer: "Categories to maintain: Medical, Financial, Legal such as will and insurance, Personal ID such as passport and birth certificate. Label each folder clearly. Keep in a safe accessible place. Watch out for: mixing categories, not keeping backup copies of critical documents.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you set up automatic bill pay?", options: [], correctAnswer: "Supplies: computer or smartphone, bank account and routing number, biller's website login. Steps: Log in to the biller's website. Find AutoPay. Enter your bank info. Choose the payment date. Confirm via email. Watch out for: not monitoring your balance to ensure funds are available each month.", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "How do you navigate to a new location by car?", options: [], correctAnswer: "Supplies: smartphone or GPS device, the destination address. Steps: Enter the full address before starting the car. Check the route overview. Keep the phone mounted — never hold it while driving. Watch out for: low phone battery, not verifying the address is correct before leaving.", explanation: "")
        ]
    )
}
