import Foundation

/// F7 — conversation starters for a partner (picture-free topic cards).
/// Easier kinds: describe, remember, decide, feel. Harder kinds: predict,
/// explain, evaluate, brainstorm. The partner scores a target behaviour, not
/// the content of the answer. English only for now; the feature is hidden in
/// every other language until the cards are translated.

enum ConversationKind: String, CaseIterable, Identifiable {
    case describe, remember, decide, feel, predict, explain, evaluate, brainstorm
    var id: String { rawValue }

    var isHarder: Bool {
        switch self {
        case .predict, .explain, .evaluate, .brainstorm: return true
        default: return false
        }
    }

    var label: String { rawValue.capitalized }

    var symbol: String {
        switch self {
        case .describe: return "eye"
        case .remember: return "clock.arrow.circlepath"
        case .decide: return "arrow.triangle.branch"
        case .feel: return "heart"
        case .predict: return "questionmark.bubble"
        case .explain: return "list.number"
        case .evaluate: return "scalemass"
        case .brainstorm: return "lightbulb"
        }
    }

    /// What the partner listens for when scoring (behaviour, not content).
    var targetBehavior: String {
        switch self {
        case .describe: return "Gave at least two details."
        case .remember: return "Told about a real past event or person."
        case .decide: return "Chose one option and gave a reason."
        case .feel: return "Named or described a feeling."
        case .predict: return "Said what might happen next."
        case .explain: return "Gave steps or a reason in order."
        case .evaluate: return "Gave an opinion and a reason."
        case .brainstorm: return "Came up with three or more ideas."
        }
    }
}

struct ConversationTopic: Identifiable, Equatable {
    let id: String
    let title: String
    /// One question per kind, in `ConversationKind.allCases` order.
    let questions: [String]

    func question(for kind: ConversationKind) -> String {
        questions[ConversationKind.allCases.firstIndex(of: kind)!]
    }

    static func isAvailable(for language: AppLanguage) -> Bool { language == .english }
}

enum ConversationTopicData {
    static let all: [ConversationTopic] = [
        ConversationTopic(id: "breakfast", title: "Breakfast", questions: [
            "Describe what a good breakfast looks like.",
            "Tell about a breakfast you remember well.",
            "Would you rather have eggs or cereal? Which one?",
            "How do you feel on a slow morning with no plans?",
            "What might happen if you wake up late and skip breakfast?",
            "Explain how to make toast, step by step.",
            "Is breakfast the most important meal? Why or why not?",
            "Name as many breakfast foods as you can."
        ]),
        ConversationTopic(id: "weather", title: "Weather", questions: [
            "Describe today's weather.",
            "Tell about a day when the weather surprised you.",
            "Rain or sunshine: which would you pick for a picnic?",
            "How does a stormy day make you feel?",
            "What might happen if it rains all weekend?",
            "Explain why people carry umbrellas.",
            "Which season is the best? Give a reason.",
            "List things you can do on a rainy day."
        ]),
        ConversationTopic(id: "family-dinner", title: "Family Dinner", questions: [
            "Describe a family dinner.",
            "Tell about a family gathering you remember.",
            "Would you rather host the party or be a guest? Why?",
            "How do you feel when your family is all together?",
            "What might happen if everyone brings the same dish?",
            "Explain how to set a table for ten people.",
            "Is it better to have a big party or a small dinner? Why?",
            "Think of games everyone could play after dinner."
        ]),
        ConversationTopic(id: "shopping", title: "Shopping", questions: [
            "Describe your favorite store.",
            "Tell about the last time you went shopping.",
            "Would you rather shop in a store or order online?",
            "How do you feel in a crowded store?",
            "What might happen if you shop without a list?",
            "Explain how to pay at the checkout.",
            "Are sales worth waiting for? Why or why not?",
            "Name things you would put on a grocery list."
        ]),
        ConversationTopic(id: "birthdays", title: "Birthdays", questions: [
            "Describe a birthday party.",
            "Tell about a birthday you will never forget.",
            "Cake or pie for a birthday? Which one?",
            "How do you feel on your birthday?",
            "What might happen if a surprise party is given away by accident?",
            "Explain how to wrap a gift.",
            "Should birthday gifts be small or big? Why?",
            "Think of gift ideas for a friend who loves cooking."
        ]),
        ConversationTopic(id: "the-garden", title: "The Garden", questions: [
            "Describe a garden you like.",
            "Tell about something you planted or watched grow.",
            "Flowers or vegetables: which would you grow?",
            "How does being outside in a garden make you feel?",
            "What might happen if a plant gets no water for a week?",
            "Explain how to plant a seed.",
            "Is gardening hard work or relaxing? Why?",
            "Name tools you might use in a garden."
        ]),
        ConversationTopic(id: "music", title: "Music", questions: [
            "Describe your favorite kind of music.",
            "Tell about a song that reminds you of a special time.",
            "Would you rather listen to music or play it?",
            "How does a favorite song make you feel?",
            "What might happen if the music stopped in the middle of a party?",
            "Explain how to dance to a song you like.",
            "Is old music better than new music? Why or why not?",
            "Name instruments you know."
        ]),
        ConversationTopic(id: "cooking", title: "Cooking", questions: [
            "Describe a meal you like to cook or eat.",
            "Tell about a meal someone made for you.",
            "Would you rather bake or grill? Which one?",
            "How do you feel when you smell food cooking?",
            "What might happen if you leave a pot on the stove too long?",
            "Explain how to boil an egg.",
            "Is a recipe better with fewer ingredients? Why?",
            "Name foods you could make for a picnic."
        ]),
        ConversationTopic(id: "animals", title: "Animals", questions: [
            "Describe an animal you like.",
            "Tell about a pet you had or knew.",
            "Cat or dog: which would you choose?",
            "How do you feel around animals?",
            "What might happen if a puppy is left alone in the kitchen?",
            "Explain how to take care of a pet fish.",
            "Are pets good for people? Why or why not?",
            "Name animals you might see on a farm."
        ]),
        ConversationTopic(id: "travel", title: "Travel", questions: [
            "Describe a place you would like to visit.",
            "Tell about a trip you remember.",
            "Would you rather travel by car or by train?",
            "How do you feel before a trip?",
            "What might happen if you forget your ticket?",
            "Explain how to pack a suitcase.",
            "Is it better to plan a trip or go without a plan? Why?",
            "Name things to bring on a trip."
        ]),
        ConversationTopic(id: "neighborhood", title: "Neighborhood", questions: [
            "Describe your street or neighborhood.",
            "Tell about a neighbor who helped you.",
            "Would you rather walk or drive to the store?",
            "How do you feel when someone says hello to you?",
            "What might happen if the power goes out on your street?",
            "Explain how to ask a neighbor for help.",
            "Is it important to know your neighbors? Why?",
            "Name ways people can help each other."
        ]),
        ConversationTopic(id: "holidays", title: "Holidays", questions: [
            "Describe your favorite holiday.",
            "Tell about a holiday meal you remember.",
            "Would you rather decorate or cook for a holiday?",
            "How do you feel when a holiday is coming?",
            "What might happen if guests arrive early?",
            "Explain a tradition your family has.",
            "Is it better to give gifts or to receive them? Why?",
            "Think of ways to welcome guests."
        ])
    ]
}
