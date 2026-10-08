import Foundation

/// F8 — short original passages with supports (read aloud, look back, hint that
/// highlights the evidence sentence, self-rating). English only for now:
/// the feature is hidden in every other language until translated, rather than
/// showing English inside a translated UI.

struct ReadingQuestion: Equatable {
    let prompt: String
    /// Exactly three options; `correctIndex` points at the right one.
    let options: [String]
    let correctIndex: Int
    /// Indexes into the passage's sentences that contain the evidence.
    let evidence: [Int]
}

struct ReadingPassage: Identifiable, Equatable {
    enum Kind: String { case story, card, menu, label, notice, instructions, note }

    let id: String
    let title: String
    let kind: Kind
    /// 1 = short and concrete, 2 = medium, 3 = longer with a little inference.
    let level: Int
    let sentences: [String]
    let questions: [ReadingQuestion]

    var fullText: String { sentences.joined(separator: " ") }

    static func isAvailable(for language: AppLanguage) -> Bool { language == .english }
}

enum ReadingPassageData {

    static let all: [ReadingPassage] = [

        // MARK: Level 1
        ReadingPassage(
            id: "market", title: "A Trip to the Market", kind: .story, level: 1,
            sentences: [
                "Maria walked to the market on Saturday morning.",
                "She bought three apples and a loaf of bread.",
                "The baker gave her a free cookie because it was her birthday.",
                "Maria ate the cookie on the walk home."
            ],
            questions: [
                ReadingQuestion(prompt: "When did Maria go to the market?",
                                options: ["Saturday morning", "Sunday evening", "Friday afternoon"],
                                correctIndex: 0, evidence: [0]),
                ReadingQuestion(prompt: "What did Maria buy?",
                                options: ["Three apples and a loaf of bread", "Two oranges and milk", "A cake and a cookie"],
                                correctIndex: 0, evidence: [1]),
                ReadingQuestion(prompt: "Why did the baker give her a cookie?",
                                options: ["It was her birthday", "She bought a lot of bread", "She was a friend"],
                                correctIndex: 0, evidence: [2])
            ]),

        ReadingPassage(
            id: "appointment-card", title: "Appointment Card", kind: .card, level: 1,
            sentences: [
                "Clinic: Riverside Family Health.",
                "Patient: Sam Lee.",
                "Date: Tuesday, March 4.",
                "Time: 2:30 in the afternoon.",
                "Please arrive 15 minutes early and bring your insurance card."
            ],
            questions: [
                ReadingQuestion(prompt: "On which day is the appointment?",
                                options: ["Tuesday", "Thursday", "Monday"],
                                correctIndex: 0, evidence: [2]),
                ReadingQuestion(prompt: "What should Sam bring?",
                                options: ["An insurance card", "A photo", "Lunch"],
                                correctIndex: 0, evidence: [4]),
                ReadingQuestion(prompt: "What time should Sam arrive?",
                                options: ["2:15", "2:45", "3:00"],
                                correctIndex: 0, evidence: [3, 4])
            ]),

        ReadingPassage(
            id: "lunch-menu", title: "Lunch Menu", kind: .menu, level: 1,
            sentences: [
                "Soup of the day: tomato, $4.",
                "Turkey sandwich with chips: $8.",
                "Garden salad: $6.",
                "Add a drink to any meal for $2."
            ],
            questions: [
                ReadingQuestion(prompt: "How much is the garden salad?",
                                options: ["$6", "$8", "$4"],
                                correctIndex: 0, evidence: [2]),
                ReadingQuestion(prompt: "Which meal comes with chips?",
                                options: ["The turkey sandwich", "The garden salad", "The soup"],
                                correctIndex: 0, evidence: [1]),
                ReadingQuestion(prompt: "How much is a turkey sandwich with a drink?",
                                options: ["$10", "$8", "$12"],
                                correctIndex: 0, evidence: [1, 3])
            ]),

        // MARK: Level 2
        ReadingPassage(
            id: "medicine-label", title: "A Medicine Label (practice example)", kind: .label, level: 2,
            sentences: [
                "Relivex 250 mg tablets.",
                "Take one tablet by mouth two times a day with food.",
                "Do not take more than four tablets in one day.",
                "May cause drowsiness, so do not drive until you know how this medicine affects you.",
                "Store in a cool, dry place away from children.",
                "Throw away any tablets left after June 30."
            ],
            questions: [
                ReadingQuestion(prompt: "How many tablets are taken at one time?",
                                options: ["One", "Two", "Four"],
                                correctIndex: 0, evidence: [1]),
                ReadingQuestion(prompt: "What is the most tablets that can be taken in one day?",
                                options: ["Four", "Two", "Six"],
                                correctIndex: 0, evidence: [2]),
                ReadingQuestion(prompt: "What should you not do until you know how the medicine affects you?",
                                options: ["Drive", "Eat", "Walk"],
                                correctIndex: 0, evidence: [3])
            ]),

        ReadingPassage(
            id: "lost-umbrella", title: "The Lost Umbrella", kind: .story, level: 2,
            sentences: [
                "On Wednesday it rained all afternoon.",
                "Ben left his blue umbrella on the bus.",
                "The next morning he called the bus company.",
                "A worker there said the umbrella had been turned in to the office on Main Street.",
                "The office closes at five o'clock.",
                "Ben went right after work and got it back."
            ],
            questions: [
                ReadingQuestion(prompt: "Where did Ben leave his umbrella?",
                                options: ["On the bus", "At work", "At the office"],
                                correctIndex: 0, evidence: [1]),
                ReadingQuestion(prompt: "Where was the umbrella turned in?",
                                options: ["To the office on Main Street", "To the bus driver", "To a neighbor"],
                                correctIndex: 0, evidence: [3]),
                ReadingQuestion(prompt: "What time does the office close?",
                                options: ["Five o'clock", "Four o'clock", "Six o'clock"],
                                correctIndex: 0, evidence: [4])
            ]),

        ReadingPassage(
            id: "garden-club", title: "Garden Club Notice", kind: .notice, level: 2,
            sentences: [
                "The Garden Club meets on the first Thursday of every month.",
                "Meetings start at 10 in the morning at the library.",
                "This month we will plant tulip bulbs, so please bring gloves.",
                "Coffee and muffins are free for members.",
                "New members are always welcome."
            ],
            questions: [
                ReadingQuestion(prompt: "When does the club meet?",
                                options: ["The first Thursday of each month", "Every Thursday", "The last Friday of each month"],
                                correctIndex: 0, evidence: [0]),
                ReadingQuestion(prompt: "What should people bring this month?",
                                options: ["Gloves", "Muffins", "Chairs"],
                                correctIndex: 0, evidence: [2]),
                ReadingQuestion(prompt: "Who gets free coffee and muffins?",
                                options: ["Members", "Everyone", "Children"],
                                correctIndex: 0, evidence: [3])
            ]),

        // MARK: Level 3
        ReadingPassage(
            id: "bus-change", title: "A Bus Schedule Change", kind: .notice, level: 3,
            sentences: [
                "Starting Monday, Route 12 will stop at Oak Street instead of Pine Street.",
                "Buses will run every 20 minutes from 6 a.m. to 9 p.m.",
                "After 9 p.m., buses will run every 40 minutes.",
                "The last bus leaves the station at 11:40 p.m.",
                "Riders who used the Pine Street stop can walk two blocks to Oak Street.",
                "Seniors ride for half price all day."
            ],
            questions: [
                ReadingQuestion(prompt: "Where will Route 12 stop starting Monday?",
                                options: ["Oak Street", "Pine Street", "The station only"],
                                correctIndex: 0, evidence: [0]),
                ReadingQuestion(prompt: "How often do buses run at 10 p.m.?",
                                options: ["Every 40 minutes", "Every 20 minutes", "Every hour"],
                                correctIndex: 0, evidence: [2]),
                ReadingQuestion(prompt: "What can riders from the old Pine Street stop do?",
                                options: ["Walk two blocks to Oak Street", "Take a taxi", "Wait for another bus"],
                                correctIndex: 0, evidence: [4])
            ]),

        ReadingPassage(
            id: "making-soup", title: "Making Soup", kind: .instructions, level: 3,
            sentences: [
                "First, wash and chop two carrots, one onion, and a stalk of celery.",
                "Heat a little oil in a large pot and cook the onion until it is soft.",
                "Add the carrots and celery and stir for three minutes.",
                "Pour in six cups of water and bring it to a boil.",
                "Turn the heat down and let the soup simmer for thirty minutes.",
                "Add salt and pepper just before serving."
            ],
            questions: [
                ReadingQuestion(prompt: "What goes into the pot first?",
                                options: ["The onion", "The carrots", "The water"],
                                correctIndex: 0, evidence: [1]),
                ReadingQuestion(prompt: "How much water is added?",
                                options: ["Six cups", "Two cups", "Ten cups"],
                                correctIndex: 0, evidence: [3]),
                ReadingQuestion(prompt: "When are salt and pepper added?",
                                options: ["Just before serving", "At the very start", "After an hour of simmering"],
                                correctIndex: 0, evidence: [5])
            ]),

        ReadingPassage(
            id: "neighbor-note", title: "A Note to a Neighbor", kind: .note, level: 3,
            sentences: [
                "Dear Mrs. Alvarez, I am going away from Friday until the following Wednesday.",
                "Could you bring in my mail each day?",
                "My spare key is under the green flowerpot by the back door.",
                "Please water the tomato plants on Saturday and Tuesday only.",
                "Too much water will hurt them.",
                "I will bring you a jar of jam when I return. Thank you! Joan"
            ],
            questions: [
                ReadingQuestion(prompt: "Which day does Joan come back?",
                                options: ["Wednesday", "Friday", "Tuesday"],
                                correctIndex: 0, evidence: [0]),
                ReadingQuestion(prompt: "Where is the spare key?",
                                options: ["Under the green flowerpot", "In the mailbox", "With another neighbor"],
                                correctIndex: 0, evidence: [2]),
                ReadingQuestion(prompt: "Why should the plants be watered only twice?",
                                options: ["Too much water will hurt them", "They do not need water", "Joan will water them"],
                                correctIndex: 0, evidence: [3, 4])
            ])
    ]

    /// Option order is shuffled at presentation time; data keeps the answer first.
    static func shuffledOptions(for q: ReadingQuestion) -> [(text: String, isCorrect: Bool)] {
        q.options.enumerated().map { (i, t) in (t, i == q.correctIndex) }.shuffled()
    }
}
