import Foundation

/// Holds the 8 new hard-tier English exercises containing 120 items.
struct EnglishHardExercisesData {

    /// The complete collection of all 8 new hard English exercises.
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
        easyAnalogies,
        easyCauseEffect,
        easyWhatsWrong,
        easySequencing,
        mediumWordAssociation,
        mediumHomonyms,
        easyCompleteSaying,
        hardCompleteSaying
    ]

    // MARK: - Exercise 1: Advanced Homonyms
    private static let exercise1 = Exercise(
        title: "Advanced Homonyms",
        instructions: "Choose the correct homonym pair to complete the sentences.",
        section: .language,
        type: .homonym,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "[discrete / discreet] The researchers collected ___ data points. She was very ___ about her findings.", options: ["discrete...discreet", "discreet...discrete", "discrete...discrete", "discreet...discreet"], correctAnswer: "discrete...discreet", explanation: "'Discrete' means distinct or separate, while 'discreet' means careful, cautious, or circumspect."),
            ExerciseItem(prompt: "[affect / effect] The new law will ___ how businesses operate. The overall ___ was positive.", options: ["effect...affect", "affect...effect", "affect...affect", "effect...effect"], correctAnswer: "affect...effect", explanation: "'Affect' is a verb meaning to influence, whereas 'effect' is a noun meaning the result or outcome."),
            ExerciseItem(prompt: "[principal / principle] The ___ of the school spoke today. Honesty is a fundamental ___ of ours.", options: ["principle...principal", "principal...principle", "principal...principal", "principle...principle"], correctAnswer: "principal...principle", explanation: "'Principal' refers to a person of high authority, while 'principle' refers to a fundamental truth or rule of conduct."),
            ExerciseItem(prompt: "[elicit / illicit] The counselor tried to ___ a response. The police investigated the ___ activities.", options: ["illicit...elicit", "elicit...illicit", "elicit...elicit", "illicit...illicit"], correctAnswer: "elicit...illicit", explanation: "'Elicit' means to draw out or evoke, while 'illicit' means illegal or forbidden."),
            ExerciseItem(prompt: "[complement / compliment] The red wine is a great ___ to the steak. He paid her a lovely ___ on her speech.", options: ["compliment...complement", "complement...compliment", "complement...complement", "compliment...compliment"], correctAnswer: "complement...compliment", explanation: "'Complement' means to complete or go well with, while 'compliment' is an expression of praise."),
            ExerciseItem(prompt: "[stationary / stationery] The car remained ___ in traffic. She wrote a letter on elegant ___.", options: ["stationery...stationary", "stationary...stationery", "stationary...stationary", "stationery...stationery"], correctAnswer: "stationary...stationery", explanation: "'Stationary' means not moving, while 'stationery' refers to writing materials."),
            ExerciseItem(prompt: "[eminent / imminent] The ___ scientist won the Nobel Prize. A thunderstorm is ___ this afternoon.", options: ["imminent...eminent", "eminent...imminent", "eminent...eminent", "imminent...imminent"], correctAnswer: "eminent...imminent", explanation: "'Eminent' means famous and respected, while 'imminent' means about to happen."),
            ExerciseItem(prompt: "[censor / sensor] The board decided to ___ the movie. The motion ___ turned on the lights.", options: ["sensor...censor", "censor...sensor", "censor...censor", "sensor...sensor"], correctAnswer: "censor...sensor", explanation: "'Censor' means to suppress unacceptable parts of a work, while 'sensor' is a device that detects physical inputs."),
            ExerciseItem(prompt: "[dissent / descent] The team showed strong ___ regarding the choice. The plane began its slow ___.", options: ["descent...dissent", "dissent...descent", "dissent...dissent", "descent...descent"], correctAnswer: "dissent...descent", explanation: "'Dissent' means disagreement or opposition, while 'descent' means the act of moving downwards."),
            ExerciseItem(prompt: "[capital / capitol] Paris is the ___ of France. The congress met inside the ___ building.", options: ["capitol...capital", "capital...capitol", "capital...capital", "capitol...capitol"], correctAnswer: "capital...capitol", explanation: "'Capital' refers to the seat of government or wealth, while 'capitol' refers to the physical building where a legislature meets."),
            ExerciseItem(prompt: "[canvas / canvass] The artist painted on a large ___. Volunteers went door-to-door to ___ the neighborhood.", options: ["canvass...canvas", "canvas...canvass", "canvas...canvas", "canvass...canvass"], correctAnswer: "canvas...canvass", explanation: "'Canvas' is a heavy woven fabric, while 'canvass' means to solicit votes or conduct a survey."),
            ExerciseItem(prompt: "[cache / cash] The system cleared the browser ___. He paid for his meal with ___.", options: ["cash...cache", "cache...cash", "cache...cache", "cash...cash"], correctAnswer: "cache...cash", explanation: "'Cache' is a hidden storage space or computer memory, while 'cash' refers to physical currency."),
            ExerciseItem(prompt: "[queue / cue] We waited in a long ___ at the airport. The actor missed his stage ___.", options: ["cue...queue", "queue...cue", "queue...queue", "cue...cue"], correctAnswer: "queue...cue", explanation: "'Queue' is a line of waiting people or items, while 'cue' is a signal or prompt to do something."),
            ExerciseItem(prompt: "[hoard / horde] The dragon wanted to ___ all the gold. A large ___ of tourists arrived.", options: ["horde...hoard", "hoard...horde", "hoard...hoard", "horde...horde"], correctAnswer: "hoard...horde", explanation: "'Hoard' means to accumulate and hide valuables, while 'horde' refers to a large crowd or pack."),
            ExerciseItem(prompt: "[council / counsel] The city ___ voted on the new park. He sought professional ___ for his career.", options: ["counsel...council", "council...counsel", "council...council", "counsel...counsel"], correctAnswer: "council...counsel", explanation: "'Council' is an administrative or advisory body, while 'counsel' means advice or guidance.")
        ]
    )

    // MARK: - Exercise 2: Advanced Analogies
    private static let exercise2 = Exercise(
        title: "Advanced Analogies",
        instructions: "Choose the word that best completes the analogy.",
        section: .language,
        type: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "EPHEMERAL is to PERMANENT as TRANSITORY is to ___", options: ["Brief", "Fleet", "Enduring", "Temporary"], correctAnswer: "Enduring", explanation: "Ephemeral and permanent are antonyms, just as transitory and enduring are antonyms."),
            ExerciseItem(prompt: "CACOPHONY is to SOUND as CHAOS is to ___", options: ["Noise", "Order", "Conflict", "Confusion"], correctAnswer: "Order", explanation: "Cacophony is the complete lack of auditory order, while chaos is the complete lack of general order."),
            ExerciseItem(prompt: "ALTRUISM is to SELFLESSNESS as AVARICE is to ___", options: ["Generosity", "Greed", "Kindness", "Sympathy"], correctAnswer: "Greed", explanation: "Altruism is defined by selflessness, and avarice is defined by extreme greed."),
            ExerciseItem(prompt: "OSTRACIZE is to EXCLUDE as HARBINGER is to ___", options: ["Welcome", "Foretell", "Ignore", "Follow"], correctAnswer: "Foretell", explanation: "Ostracizing is a method to exclude someone, while a harbinger serves to foretell or signal a future event."),
            ExerciseItem(prompt: "PLIANT is to BEND as FRAGILE is to ___", options: ["Flex", "Break", "Stretch", "Mold"], correctAnswer: "Break", explanation: "Pliant items are easy to bend, whereas fragile items are easy to break."),
            ExerciseItem(prompt: "ENERVATE is to WEAKEN as INVIGORATE is to ___", options: ["Dampen", "Exhaust", "Strengthen", "Subdue"], correctAnswer: "Strengthen", explanation: "Enervate means to weaken, and invigorate means to strengthen."),
            ExerciseItem(prompt: "SCALPEL is to SURGEON as GAVEL is to ___", options: ["Bailiff", "Lawyer", "Judge", "Witness"], correctAnswer: "Judge", explanation: "A scalpel is the primary tool used by a surgeon, while a gavel is the tool used by a judge."),
            ExerciseItem(prompt: "METAPHOR is to FIGURATIVE as FACT is to ___", options: ["Literal", "Imaginary", "Symbolic", "Subjective"], correctAnswer: "Literal", explanation: "A metaphor is a form of figurative language, while a fact represents literal truth."),
            ExerciseItem(prompt: "SOLILOQUY is to ACTOR as SERMON is to ___", options: ["Congregation", "Choir", "Preacher", "Organist"], correctAnswer: "Preacher", explanation: "A soliloquy is a monologue delivered by an actor, and a sermon is a discourse delivered by a preacher."),
            ExerciseItem(prompt: "ZEALOT is to PASSION as SKEPTIC is to ___", options: ["Certainty", "Trust", "Doubt", "Anger"], correctAnswer: "Doubt", explanation: "A zealot is characterized by intense passion, and a skeptic is characterized by doubt."),
            ExerciseItem(prompt: "COGENT is to PERSUASIVE as VACUOUS is to ___", options: ["Full", "Empty", "Clever", "Clear"], correctAnswer: "Empty", explanation: "Cogent is synonymous with persuasive, and vacuous is synonymous with empty."),
            ExerciseItem(prompt: "INCIPIENT is to BEGINNING as MORIBUND is to ___", options: ["Growing", "Flourishing", "Dying", "Emerging"], correctAnswer: "Dying", explanation: "Incipient refers to the beginning stages, and moribund refers to the dying stages of something."),
            ExerciseItem(prompt: "LACONIC is to WORDS as PARSIMONIOUS is to ___", options: ["Time", "Speech", "Money", "Energy"], correctAnswer: "Money", explanation: "Laconic means using very few words, while parsimonious means spending very little money."),
            ExerciseItem(prompt: "MALADY is to ILLNESS as REMEDY is to ___", options: ["Poison", "Sickness", "Cure", "Injury"], correctAnswer: "Cure", explanation: "Malady is another term for an illness, and remedy is another term for a cure."),
            ExerciseItem(prompt: "NOVICE is to EXPERTISE as ASCETIC is to ___", options: ["Discipline", "Luxury", "Solitude", "Prayer"], correctAnswer: "Luxury", explanation: "A novice lacks expertise, and an ascetic deliberately avoids luxury.")
        ]
    )

    // MARK: - Exercise 3: Advanced Word Association
    private static let exercise3 = Exercise(
        title: "Advanced Word Association",
        instructions: "Choose the word most closely associated with the given word.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "EPHEMERAL", options: ["Permanent", "Transitory", "Solid", "Infinite"], correctAnswer: "Transitory", explanation: "Ephemeral is closely associated with transitory, describing something that lasts only a short time."),
            ExerciseItem(prompt: "CACOPHONY", options: ["Harmony", "Dissonance", "Silence", "Melody"], correctAnswer: "Dissonance", explanation: "Cacophony is associated with dissonance, representing a harsh, discordant mixture of sounds."),
            ExerciseItem(prompt: "PRUDENT", options: ["Reckless", "Cautious", "Careless", "Hasty"], correctAnswer: "Cautious", explanation: "Prudent means acting with or showing care and thought for the future, which is associated with being cautious."),
            ExerciseItem(prompt: "AUDACIOUS", options: ["Timid", "Bold", "Polite", "Gentle"], correctAnswer: "Bold", explanation: "Audacious represents a willingness to take bold risks."),
            ExerciseItem(prompt: "BENEVOLENT", options: ["Malevolent", "Kind", "Selfish", "Cruel"], correctAnswer: "Kind", explanation: "Benevolent means well-meaning and kindly."),
            ExerciseItem(prompt: "CAPRICIOUS", options: ["Stable", "Fickle", "Steady", "Constant"], correctAnswer: "Fickle", explanation: "Capricious represents sudden and unaccountable changes of mood or behavior, indicating a fickle nature."),
            ExerciseItem(prompt: "DILIGENT", options: ["Lazy", "Industrious", "Careless", "Inactive"], correctAnswer: "Industrious", explanation: "Diligent is associated with being industrious and showing care in work."),
            ExerciseItem(prompt: "ENIGMATIC", options: ["Obvious", "Puzzling", "Simple", "Plain"], correctAnswer: "Puzzling", explanation: "Enigmatic refers to something that is mysterious or puzzling."),
            ExerciseItem(prompt: "FRUGAL", options: ["Spendthrift", "Thrifty", "Lavish", "Generous"], correctAnswer: "Thrifty", explanation: "Frugal is closely associated with thrifty, meaning sparing or economical with regard to money or food."),
            ExerciseItem(prompt: "GARRULOUS", options: ["Silent", "Talkative", "Quiet", "Reserved"], correctAnswer: "Talkative", explanation: "Garrulous is associated with being excessively talkative, especially on trivial matters."),
            ExerciseItem(prompt: "HARBINGER", options: ["Follower", "Forerunner", "Successor", "Bystander"], correctAnswer: "Forerunner", explanation: "A harbinger is a forerunner that signals the approach of something else."),
            ExerciseItem(prompt: "MUTABLE", options: ["Fixed", "Changeable", "Rigid", "Constant"], correctAnswer: "Changeable", explanation: "Mutable means liable to change or variable."),
            ExerciseItem(prompt: "NEBULOUS", options: ["Sharp", "Vague", "Distinct", "Bright"], correctAnswer: "Vague", explanation: "Nebulous is associated with being vague, hazy, or ill-defined."),
            ExerciseItem(prompt: "OBSTINATE", options: ["Yielding", "Stubborn", "Flexible", "Compliant"], correctAnswer: "Stubborn", explanation: "Obstinate means stubbornly refusing to change one's opinion or chosen course of action."),
            ExerciseItem(prompt: "PLACID", options: ["Stormy", "Calm", "Agitated", "Wild"], correctAnswer: "Calm", explanation: "Placid is associated with being calm, peaceful, and undisturbed.")
        ]
    )

    // MARK: - Exercise 4: Advanced Sentence Completion
    private static let exercise4 = Exercise(
        title: "Advanced Sentence Completion",
        instructions: "Choose the word that best completes the sentence.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "The committee decided to ___ the proposal due to a lack of empirical evidence.", options: ["expedite", "shelve", "validate", "support"], correctAnswer: "shelve", explanation: "'Shelve' means to decide not to proceed with a proposal or plan."),
            ExerciseItem(prompt: "Her speech was so ___ that it managed to placate even the most hostile audience members.", options: ["aggressive", "eloquent", "tedious", "chaotic"], correctAnswer: "eloquent", explanation: "An 'eloquent' speech is fluent, persuasive, and appropriate to move or calm an audience."),
            ExerciseItem(prompt: "Despite the ___ circumstances, the team maintained an optimistic outlook.", options: ["favorable", "adverse", "pleasant", "helpful"], correctAnswer: "adverse", explanation: "'Adverse' means preventing success or development; harmful or unfavorable."),
            ExerciseItem(prompt: "The doctor recommended a ___ regimen to ensure a full recovery.", options: ["lax", "rigorous", "casual", "flexible"], correctAnswer: "rigorous", explanation: "A 'rigorous' regimen is extremely thorough, exhaustive, and strictly followed."),
            ExerciseItem(prompt: "The novel was praised for its ___ portrayal of historical events.", options: ["sloppy", "meticulous", "inaccurate", "superficial"], correctAnswer: "meticulous", explanation: "'Meticulous' means showing great attention to detail; very careful and precise."),
            ExerciseItem(prompt: "He was known for his ___ lifestyle, avoiding all forms of luxury.", options: ["opulent", "austere", "lavish", "extravagant"], correctAnswer: "austere", explanation: "An 'austere' lifestyle is simple, strict, and without comforts or luxuries."),
            ExerciseItem(prompt: "The negotiations reached an ___ when neither side was willing to compromise.", options: ["agreement", "impasse", "opening", "advance"], correctAnswer: "impasse", explanation: "An 'impasse' is a situation in which no progress is possible, especially because of disagreement."),
            ExerciseItem(prompt: "Her explanation was too ___ for the beginners to understand.", options: ["direct", "convoluted", "simple", "brief"], correctAnswer: "convoluted", explanation: "'Convoluted' means extremely complex and difficult to follow."),
            ExerciseItem(prompt: "The scientists hoped to ___ the mystery surrounding the deep-sea organism.", options: ["obscure", "unravel", "complicate", "ignore"], correctAnswer: "unravel", explanation: "'Unravel' means to investigate and solve a complex mystery or puzzle."),
            ExerciseItem(prompt: "The manager praised the employee's ___ handling of the delicate situation.", options: ["careless", "tactful", "rude", "clumsy"], correctAnswer: "tactful", explanation: "'Tactful' means showing sensitivity and skill in dealing with others or difficult issues."),
            ExerciseItem(prompt: "The new policy had a ___ effect on the company's productivity.", options: ["detrimental", "beneficial", "negligible", "harmful"], correctAnswer: "beneficial", explanation: "'Beneficial' means resulting in good; favorable or advantageous."),
            ExerciseItem(prompt: "She was highly ___ for her contributions to the field of medicine.", options: ["criticized", "revered", "ignored", "dismissed"], correctAnswer: "revered", explanation: "'Revered' means regarded with deep respect and warm admiration."),
            ExerciseItem(prompt: "The artist's work was known for its ___ blend of traditional and modern styles.", options: ["clashing", "harmonious", "messy", "chaotic"], correctAnswer: "harmonious", explanation: "'Harmonious' means forming a pleasing or consistent whole."),
            ExerciseItem(prompt: "The government implemented measures to ___ the economic downturn.", options: ["exacerbate", "mitigate", "prolong", "ignore"], correctAnswer: "mitigate", explanation: "'Mitigate' means to make less severe, serious, or painful."),
            ExerciseItem(prompt: "His argument was ___ and failed to convince the jury.", options: ["solid", "tenuous", "strong", "robust"], correctAnswer: "tenuous", explanation: "'Tenuous' means very weak, slight, or insubstantial.")
        ]
    )

    // MARK: - Exercise 5: Advanced Sequencing Steps
    private static let exercise5 = Exercise(
        title: "Advanced Sequencing Steps",
        instructions: "Put the steps of the activity in the correct logical order.",
        section: .language,
        type: .sequencing,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Put the steps of Publishing a Research Paper in the correct logical order.", options: ["Conduct experiments and collect data", "Draft the manuscript and format it", "Submit to a peer-reviewed journal and revise based on feedback", "Formulate a research question and hypothesis"], correctAnswer: "Formulate a research question and hypothesis | Conduct experiments and collect data | Draft the manuscript and format it | Submit to a peer-reviewed journal and revise based on feedback", explanation: "Publishing research begins with formulation, followed by experimentation, drafting the paper, and journal submission/revision."),
            ExerciseItem(prompt: "Put the steps of Resolving a Customer Dispute in the correct logical order.", options: ["Investigate the issue and check records", "Actively listen to the customer complaint", "Implement the agreed solution and follow up", "Propose options for resolution to the customer"], correctAnswer: "Actively listen to the customer complaint | Investigate the issue and check records | Propose options for resolution to the customer | Implement the agreed solution and follow up", explanation: "Customer disputes require listening first, investigation, proposing options, and executing/following up."),
            ExerciseItem(prompt: "Put the steps of Executing a Corporate Project in the correct logical order.", options: ["Deliver the final product and close the project", "Plan the project scope and allocate resources", "Define the project objectives and stakeholder alignment", "Monitor progress and execute tasks"], correctAnswer: "Define the project objectives and stakeholder alignment | Plan the project scope and allocate resources | Monitor progress and execute tasks | Deliver the final product and close the project", explanation: "A corporate project begins with definition, planning, execution/monitoring, and final delivery/closure."),
            ExerciseItem(prompt: "Put the steps of Troubleshooting a Network Connection in the correct logical order.", options: ["Check physical cable connections", "Verify IP address configuration", "Test connection to the local gateway", "Ping an external public website"], correctAnswer: "Check physical cable connections | Verify IP address configuration | Test connection to the local gateway | Ping an external public website", explanation: "Network troubleshooting moves from physical layer, logical local configuration, gateway access, to WAN verification."),
            ExerciseItem(prompt: "Put the steps of Conducting a Science Experiment in the correct logical order.", options: ["Draw conclusions based on data", "Set up control and experimental variables", "Record observational data during execution", "Formulate the hypothesis"], correctAnswer: "Formulate the hypothesis | Set up control and experimental variables | Record observational data during execution | Draw conclusions based on data", explanation: "Science experiments start with a hypothesis, setup of variables, data recording, and concluding analysis."),
            ExerciseItem(prompt: "Put the steps of Organizing a Community Event in the correct logical order.", options: ["Rent the venue and secure permits", "Clean up the site and debrief the team", "Promote the event to the community", "Run the event schedule on the day"], correctAnswer: "Rent the venue and secure permits | Promote the event to the community | Run the event schedule on the day | Clean up the site and debrief the team", explanation: "Event organization starts with logistics/permits, marketing, hosting, and teardown/debrief."),
            ExerciseItem(prompt: "Put the steps of Planning a Long-Distance Trip in the correct logical order.", options: ["Research destination options and constraints", "Pack luggage and print travel documents", "Book transit tickets and lodging", "Create a daily itinerary"], correctAnswer: "Research destination options and constraints | Book transit tickets and lodging | Create a daily itinerary | Pack luggage and print travel documents", explanation: "Travel planning starts with destination research, booking major transit/lodging, planning daily itineraries, and packing/documentation."),
            ExerciseItem(prompt: "Put the steps of Budgeting for a Major Purchase in the correct logical order.", options: ["Track monthly income and expenses", "Save funds over several months", "Make the purchase and update inventory", "Calculate the target saving goal and timeline"], correctAnswer: "Track monthly income and expenses | Calculate the target saving goal and timeline | Save funds over several months | Make the purchase and update inventory", explanation: "Budgeting starts with tracking cash flow, calculating goals, saving funds, and executing the purchase."),
            ExerciseItem(prompt: "Put the steps of Preparing a Presentation in the correct logical order.", options: ["Research content and compile references", "Design the visual slides", "Practice delivery and time constraints", "Outline the key message and takeaways"], correctAnswer: "Outline the key message and takeaways | Research content and compile references | Design the visual slides | Practice delivery and time constraints", explanation: "Presentation preparation starts with outlining the message, researching data, designing visual slides, and practicing delivery."),
            ExerciseItem(prompt: "Put the steps of Writing a Software Program in the correct logical order.", options: ["Write source code in the IDE", "Gather user requirements and system specs", "Debug syntax and run test cases", "Deploy the compiled binary to production"], correctAnswer: "Gather user requirements and system specs | Write source code in the IDE | Debug syntax and run test cases | Deploy the compiled binary to production", explanation: "Software development begins with requirements gathering, coding, testing/debugging, and production deployment."),
            ExerciseItem(prompt: "Put the steps of Establishing a Daily Routine in the correct logical order.", options: ["List essential daily goals and tasks", "Test the routine schedule for a week", "Arrange tasks into specific time blocks", "Adjust time blocks based on feedback"], correctAnswer: "List essential daily goals and tasks | Arrange tasks into specific time blocks | Test the routine schedule for a week | Adjust time blocks based on feedback", explanation: "Creating a routine starts with identifying goals, scheduling them, testing execution, and refining based on performance."),
            ExerciseItem(prompt: "Put the steps of Implementing a Security Plan in the correct logical order.", options: ["Identify potential system vulnerabilities", "Train staff on protocols and policies", "Install firewalls and access controls", "Audit access logs for compliance"], correctAnswer: "Identify potential system vulnerabilities | Install firewalls and access controls | Train staff on protocols and policies | Audit access logs for compliance", explanation: "Security implementation starts with risk assessment, setting up controls, training users, and auditing operations."),
            ExerciseItem(prompt: "Put the steps of Coordinating a Volunteer Drive in the correct logical order.", options: ["Define tasks and volunteer profiles needed", "Assign volunteers to specific schedule slots", "Send out the sign-up form links", "Send a thank-you note and performance summary"], correctAnswer: "Define tasks and volunteer profiles needed | Send out the sign-up form links | Assign volunteers to specific schedule slots | Send a thank-you note and performance summary", explanation: "Managing volunteers begins with defining roles, outreach/signup, scheduling/allocation, and follow-up gratitude."),
            ExerciseItem(prompt: "Put the steps of Renovating a Kitchen in the correct logical order.", options: ["Finalize design blueprints and order appliances", "Demolish old cabinets and strip wall plaster", "Install new plumbing and electrical wiring", "Hang new cabinets and mount countertops"], correctAnswer: "Finalize design blueprints and order appliances | Demolish old cabinets and strip wall plaster | Install new plumbing and electrical wiring | Hang new cabinets and mount countertops", explanation: "Kitchen renovation starts with design and ordering, demolition, rough-in utility installation, and finish carpentry/assembly."),
            ExerciseItem(prompt: "Put the steps of Organizing a Library Catalog in the correct logical order.", options: ["Sort books into fiction and nonfiction categories", "Apply barcodes and label spines with call numbers", "Enter bibliographic metadata into the database", "Place books on shelves in alphanumeric sequence"], correctAnswer: "Sort books into fiction and nonfiction categories | Enter bibliographic metadata into the database | Apply barcodes and label spines with call numbers | Place books on shelves in alphanumeric sequence", explanation: "Library cataloging begins with sorting, entering database records, physical labelling, and shelving.")
        ]
    )

    // MARK: - Exercise 6: Advanced Cause and Effect
    private static let exercise6 = Exercise(
        title: "Advanced Cause and Effect",
        instructions: "Choose the most logical cause or effect for the given scenario.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "A central bank significantly raises its prime interest rates. What is the most direct macroeconomic effect?", options: ["Borrowing costs decrease for consumers", "Consumer spending and business expansion slow down", "Inflation rises immediately", "Stock market indices double overnight"], correctAnswer: "Consumer spending and business expansion slow down", explanation: "Higher interest rates make borrowing more expensive, which acts to cool down consumer spending and business investments."),
            ExerciseItem(prompt: "A person experiences chronic, long-term psychological stress. What is the biological effect?", options: ["Prolonged elevation of cortisol levels", "Instantaneous improvement in immune response", "Rapid decrease in heart rate", "Enhanced digestive system efficiency"], correctAnswer: "Prolonged elevation of cortisol levels", explanation: "Chronic stress triggers a sustained release of cortisol, which can negatively affect immune, cardiovascular, and metabolic systems over time."),
            ExerciseItem(prompt: "Extensive logging leads to the complete deforestation of a steep mountain slope. What happens during heavy rain?", options: ["The slope becomes more stable", "Severe soil erosion and potential mudslides occur", "Local river levels decrease", "New trees sprout instantly to absorb the runoff"], correctAnswer: "Severe soil erosion and potential mudslides occur", explanation: "Tree roots hold soil in place. Without vegetation, heavy rains wash away topsoil, causing erosion and mudslides on steep slopes."),
            ExerciseItem(prompt: "A country imposes heavy tariffs on imported raw steel. What is the most likely effect on domestic manufacturers?", options: ["Production costs for goods using steel will decrease", "Production costs for goods using steel will increase", "Imports of finished steel products will stop completely", "Steel prices will drop immediately due to oversupply"], correctAnswer: "Production costs for goods using steel will increase", explanation: "Tariffs increase the cost of imported steel, raising material expenses for domestic manufacturers who rely on steel."),
            ExerciseItem(prompt: "A large volume of agricultural fertilizer runoff enters a calm freshwater lake. What is the ecological consequence?", options: ["The water becomes perfectly clear", "Algal blooms deplete dissolved oxygen, leading to fish kills", "Submerged aquatic plants grow much slower", "Fish populations grow exponentially"], correctAnswer: "Algal blooms deplete dissolved oxygen, leading to fish kills", explanation: "Fertilizer contains nutrients that cause rapid algae growth. As the algae die and decompose, oxygen is depleted, harming aquatic animal life."),
            ExerciseItem(prompt: "A patient abruptly stops taking a prescribed course of broad-spectrum antibiotics halfway through. What is the result?", options: ["The infection is guaranteed to never return", "Surviving bacteria may develop drug resistance, causing a relapse", "The patient avoids all side effects with no risk", "The immune system becomes permanently immune to all bacteria"], correctAnswer: "Surviving bacteria may develop drug resistance, causing a relapse", explanation: "Stopping antibiotics early allows the most resilient bacteria to survive, replicate, and potentially develop resistance to that drug."),
            ExerciseItem(prompt: "A prolonged heatwave combined with zero precipitation occurs over a agricultural region. What happens to the soil?", options: ["The soil becomes loose and nutrient-rich", "Soil moisture evaporates completely, causing clay soils to crack", "Underground water tables rise to the surface", "Crops grow twice as fast due to sunlight"], correctAnswer: "Soil moisture evaporates completely, causing clay soils to crack", explanation: "Drought and high heat extract all water from topsoil, causing contraction and cracking in clay-rich soils."),
            ExerciseItem(prompt: "An individual adopts a strictly sedentary lifestyle with zero physical exercise. What is the physiological consequence?", options: ["Increase in cardiovascular endurance", "Progressive muscle atrophy and decreased metabolic rate", "Spontaneous bone density increase", "Improved joint flexibility"], correctAnswer: "Progressive muscle atrophy and decreased metabolic rate", explanation: "Lack of physical activity leads to muscle wasting (atrophy) and a slowdown in metabolic rate."),
            ExerciseItem(prompt: "Atmospheric relative humidity reaches 100% on a hot summer day. What is the effect on human cooling?", options: ["Sweat evaporates much faster, cooling the body quickly", "Sweat cannot evaporate effectively, making the body feel hotter", "The body stops producing sweat entirely", "Shivering begins to generate heat"], correctAnswer: "Sweat cannot evaporate effectively, making the body feel hotter", explanation: "Evaporative cooling depends on air moisture capacity. At 100% humidity, sweat cannot evaporate, preventing the body from cooling itself."),
            ExerciseItem(prompt: "Global average temperatures increase, causing significant melting of land-based glaciers. What is the impact on sea levels?", options: ["Global sea levels decrease due to evaporation", "Global sea levels rise, increasing coastal flooding risks", "Sea levels remain completely unchanged", "Ocean salinity increases rapidly"], correctAnswer: "Global sea levels rise, increasing coastal flooding risks", explanation: "Meltwater from land glaciers flows into the ocean, contributing directly to global sea level rise."),
            ExerciseItem(prompt: "A major supplier of microchips experiences a complete factory shutdown. What is the effect on the automotive industry?", options: ["Automobile production increases due to simplified designs", "Supply chain bottlenecks delay vehicle manufacturing and delivery", "Vehicle prices drop immediately", "Car manufacturers switch to mechanical computers overnight"], correctAnswer: "Supply chain bottlenecks delay vehicle manufacturing and delivery", explanation: "Microchips are critical in modern cars. A supplier shutdown creates a bottleneck, delaying car production."),
            ExerciseItem(prompt: "A person consumes a large amount of sodium-rich processed food daily without adequate water intake. What is the cardiovascular result?", options: ["Drop in blood pressure", "Fluid retention and increased blood pressure", "Instantaneous cleaning of arterial walls", "Decrease in overall blood volume"], correctAnswer: "Fluid retention and increased blood pressure", explanation: "High sodium intake causes the body to retain water, increasing blood volume and placing higher pressure on vessel walls."),
            ExerciseItem(prompt: "An engine runs continuously with low oil levels and high friction. What is the mechanical outcome?", options: ["Improved fuel efficiency", "Extreme heat buildup and eventual engine seizure", "Reduced exhaust emissions", "Spontaneous repair of mechanical parts"], correctAnswer: "Extreme heat buildup and eventual engine seizure", explanation: "Oil lubricates and cools engine components. Insufficient lubrication causes high friction, extreme heat, and mechanical failure."),
            ExerciseItem(prompt: "A severe frost occurs during the peak blooming phase of a fruit orchard. What is the agricultural impact?", options: ["The fruit harvest occurs earlier than usual", "Blossom tissue freezes and dies, reducing fruit yield", "The fruit grows larger and sweeter", "The trees become resistant to pests"], correctAnswer: "Blossom tissue freezes and dies, reducing fruit yield", explanation: "Frost damages delicate blossom tissue, preventing pollination and reducing fruit production."),
            ExerciseItem(prompt: "A government increases the printing of paper currency far beyond economic growth. What is the monetary effect?", options: ["The purchasing power of the currency increases", "High inflation and devaluation of the currency", "Interest rates drop to zero permanently", "Unemployment is eliminated permanently"], correctAnswer: "High inflation and devaluation of the currency", explanation: "Printing excess money increases supply without a corresponding increase in goods, driving up prices and devaluing the currency.")
        ]
    )

    // MARK: - Exercise 7: Advanced What’s Wrong Here?
    private static let exercise7 = Exercise(
        title: "Advanced What’s Wrong Here?",
        instructions: "Choose the option that describes why the scenario is logically or physically impossible.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "The ice sculptor heated the gallery to room temperature to preserve the delicate ice carvings from cracking.", options: ["Galleries do not show ice sculptures", "Heating the room would melt the ice sculptures rather than preserve them", "Ice sculptures only crack in freezing weather", "Room temperature is too cold for ice"], correctAnswer: "Heating the room would melt the ice sculptures rather than preserve them", explanation: "Ice melts at temperatures above freezing. Heating the room to room temperature would destroy the sculptures."),
            ExerciseItem(prompt: "The company doubled the prices of its products to increase consumer demand and attract low-income buyers.", options: ["Companies never change prices", "Doubling prices typically reduces demand and alienates price-sensitive buyers", "Low-income buyers prefer high prices", "Doubling prices increases manufacturing costs"], correctAnswer: "Doubling prices typically reduces demand and alienates price-sensitive buyers", explanation: "Standard economic theory dictates that raising prices reduces consumer demand, especially for low-income buyers."),
            ExerciseItem(prompt: "She dried her wet hair thoroughly in the running shower to prepare for the dinner party.", options: ["Running showers are dry", "You cannot dry hair while standing under running water in a shower", "Dinner parties are held in the morning", "Hair does not get wet in a shower"], correctAnswer: "You cannot dry hair while standing under running water in a shower", explanation: "A running shower continually wets the hair, making it impossible to dry it while inside."),
            ExerciseItem(prompt: "The submarine sailed above the clouds to avoid the strong ocean currents during the storm.", options: ["Submarines cannot travel in oceans", "Submarines operate underwater and cannot fly above clouds", "Ocean currents only exist in the sky", "Clouds are made of saltwater"], correctAnswer: "Submarines operate underwater and cannot fly above clouds", explanation: "Submarines are designed for underwater travel; they do not have aeronautical capabilities to fly."),
            ExerciseItem(prompt: "He watered his artificial silk plants daily to ensure they grew tall and blossomed in the spring.", options: ["Silk plants only grow in winter", "Artificial plants are not alive and cannot grow or blossom regardless of watering", "Watering plants makes them shrink", "Silk is made of plastic"], correctAnswer: "Artificial plants are not alive and cannot grow or blossom regardless of watering", explanation: "Artificial plants are synthetic decorative items that do not grow or react to water."),
            ExerciseItem(prompt: "The clock ran backwards to speed up the passage of time and help the workers go home early.", options: ["Clocks do not have hands", "Reversing clock hands does not alter the actual progression of time", "Workers prefer working late", "Clocks only run backwards at night"], correctAnswer: "Reversing clock hands does not alter the actual progression of time", explanation: "Time is independent of mechanical display devices; changing a clock direction has no physical effect on time."),
            ExerciseItem(prompt: "The desert traveler put on a heavy winter coat to cool off in the intense midday heat.", options: ["Deserts are always freezing at noon", "Heavy coats trap body heat and would make the traveler hotter, not cooler", "Travelers do not wear clothes in deserts", "Midday is the coldest time of day"], correctAnswer: "Heavy coats trap body heat and would make the traveler hotter, not cooler", explanation: "Insulating winter wear traps heat close to the body, accelerating heat stress in hot climates."),
            ExerciseItem(prompt: "The professional baker used salt instead of sugar to sweeten the wedding cake.", options: ["Salt is sweet", "Salt is salty and does not sweeten food; sugar is the sweetening agent", "Wedding cakes do not contain sugar", "Bakers do not use salt in baking"], correctAnswer: "Salt is salty and does not sweeten food; sugar is the sweetening agent", explanation: "Salt is used for seasoning or savory taste; sugar is required for sweetness."),
            ExerciseItem(prompt: "The driver turned off the car headlights to see better in the dark, dense fog.", options: ["Fog does not exist at night", "Turning off headlights removes light, making it impossible to see in the dark", "Cars do not have headlights", "Headlights clear the fog physically"], correctAnswer: "Turning off headlights removes light, making it impossible to see in the dark", explanation: "Visibility in dark fog requires illumination; turning off lights eliminates visibility."),
            ExerciseItem(prompt: "The sprinter wore heavy steel-toed boots to break the world record for the 100-meter dash.", options: ["Sprinters run barefoot", "Heavy footwear increases resistance and slows down running speed", "Steel-toed boots are made of rubber", "World records are not timed"], correctAnswer: "Heavy footwear increases resistance and slows down running speed", explanation: "Heavy footwear adds weight, reducing acceleration and speed in athletic performance."),
            ExerciseItem(prompt: "The scientist froze the liquid water to make it boil faster in the laboratory beaker.", options: ["Freezing water turns it into gas", "Freezing water turns it into ice, requiring more energy and time to melt and boil compared to liquid water", "Beakers cannot hold hot water", "Boiling water makes it freeze"], correctAnswer: "Freezing water turns it into ice, requiring more energy and time to melt and boil compared to liquid water", explanation: "Ice must first absorb latent heat to melt before it can heat up to boiling point, making the process slower."),
            ExerciseItem(prompt: "The gardener planted seeds in solid concrete to get a high yield of vegetables.", options: ["Vegetables do not grow from seeds", "Seeds cannot germinate or root in solid concrete due to lack of soil and water access", "Concrete is organic soil", "Gardeners only plant vegetables in sand"], correctAnswer: "Seeds cannot germinate or root in solid concrete due to lack of soil and water access", explanation: "Plants require soil, water, and space for roots to grow; solid concrete prevents all of these."),
            ExerciseItem(prompt: "The photographer took a sharp photo in total darkness with no flash or ambient light to capture the colorful details.", options: ["Cameras do not capture color", "Photography requires light to expose the sensor; total darkness results in a black image", "Flash photography is illegal", "Ambient light makes photos black"], correctAnswer: "Photography requires light to expose the sensor; total darkness results in a black image", explanation: "Without light photons, camera sensors cannot capture shapes, details, or colors."),
            ExerciseItem(prompt: "The pilot landed the commercial plane in the middle of the deep ocean to avoid getting wet on the runway.", options: ["Runways are underwater", "Landing a plane in the ocean would submerge it, getting everyone wet and endangering them", "Planes do not land on runways", "Oceans are dry in summer"], correctAnswer: "Landing a plane in the ocean would submerge it, getting everyone wet and endangering them", explanation: "Water landings are emergency events; landing in the ocean exposes the aircraft and passengers to water."),
            ExerciseItem(prompt: "The swimmer wore lead weights to help stay afloat on the surface of the pool.", options: ["Pools do not contain water", "Lead weights are heavy and increase density, causing the swimmer to sink rather than float", "Swimmers do not wear swimsuits", "Lead is lighter than water"], correctAnswer: "Lead weights are heavy and increase density, causing the swimmer to sink rather than float", explanation: "Heavy metal weights pull objects downward due to gravity, opposing buoyancy.")
        ]
    )

    // MARK: - Exercise 8: Advanced Phrase Completion
    private static let exercise8 = Exercise(
        title: "Advanced Phrase Completion",
        instructions: "Choose the word that correctly completes the common proverb or saying.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Complete the saying: A chain is only as strong as its weakest ___.", options: ["link", "part", "metal", "point"], correctAnswer: "link", explanation: "The proverb is 'A chain is only as strong as its weakest link,' meaning a group is only as strong as its weakest member."),
            ExerciseItem(prompt: "Complete the saying: A rolling stone gathers no ___.", options: ["dust", "moss", "sand", "water"], correctAnswer: "moss", explanation: "The proverb is 'A rolling stone gathers no moss,' implying that people who move constantly avoid responsibilities or stagnation."),
            ExerciseItem(prompt: "Complete the saying: Absence makes the heart grow ___.", options: ["colder", "fonder", "weaker", "stronger"], correctAnswer: "fonder", explanation: "The proverb is 'Absence makes the heart grow fonder,' meaning we feel more affection for people when they are away."),
            ExerciseItem(prompt: "Complete the saying: All good things must come to an ___.", options: ["start", "end", "break", "edge"], correctAnswer: "end", explanation: "The proverb is 'All good things must come to an end,' acknowledging that positive experiences are temporary."),
            ExerciseItem(prompt: "Complete the saying: Beauty is in the eye of the ___.", options: ["beholder", "painter", "dreamer", "lover"], correctAnswer: "beholder", explanation: "The proverb is 'Beauty is in the eye of the beholder,' meaning perception of beauty is subjective."),
            ExerciseItem(prompt: "Complete the saying: Familiarity breeds ___.", options: ["respect", "contempt", "friendship", "distance"], correctAnswer: "contempt", explanation: "The proverb is 'Familiarity breeds contempt,' suggesting close association can lead to a loss of respect."),
            ExerciseItem(prompt: "Complete the saying: Fortune favors the ___.", options: ["wise", "bold", "kind", "rich"], correctAnswer: "bold", explanation: "The proverb is 'Fortune favors the bold,' encouraging courage and risk-taking."),
            ExerciseItem(prompt: "Complete the saying: Hope springs ___.", options: ["eternal", "high", "fresh", "daily"], correctAnswer: "eternal", explanation: "The proverb is 'Hope springs eternal,' meaning people always continue to hope even in adverse circumstances."),
            ExerciseItem(prompt: "Complete the saying: Laughter is the best ___.", options: ["therapy", "medicine", "release", "comfort"], correctAnswer: "medicine", explanation: "The proverb is 'Laughter is the best medicine,' highlighting the health benefits of humor and joy."),
            ExerciseItem(prompt: "Complete the saying: Necessity is the mother of ___.", options: ["creation", "invention", "survival", "change"], correctAnswer: "invention", explanation: "The proverb is 'Necessity is the mother of invention,' meaning difficult situations inspire creative solutions."),
            ExerciseItem(prompt: "Complete the saying: No man is an ___.", options: ["island", "empire", "actor", "ocean"], correctAnswer: "island", explanation: "The proverb is 'No man is an island,' meaning humans need community and cannot live in isolation."),
            ExerciseItem(prompt: "Complete the saying: Rome wasn't built in a ___.", options: ["year", "day", "week", "century"], correctAnswer: "day", explanation: "The proverb is 'Rome wasn't built in a day,' advising patience for important or large achievements."),
            ExerciseItem(prompt: "Complete the saying: The pen is mightier than the ___.", options: ["shield", "sword", "book", "voice"], correctAnswer: "sword", explanation: "The proverb is 'The pen is mightier than the sword,' meaning writing and communication are more influential than physical force."),
            ExerciseItem(prompt: "Complete the saying: There is no place like ___.", options: ["home", "school", "work", "nature"], correctAnswer: "home", explanation: "The proverb is 'There is no place like home,' expressing affection for one's own living space."),
            ExerciseItem(prompt: "Complete the saying: Variety is the spice of ___.", options: ["life", "food", "mind", "youth"], correctAnswer: "life", explanation: "The proverb is 'Variety is the spice of life,' meaning differences and changes make life interesting.")
        ]
    )

    // MARK: - Exercise 9: Homonyms (Easy)
    private static let exercise9 = Exercise(
        title: "Homonyms (Easy)",
        instructions: "Choose the correct homonym pair to complete the sentences.",
        section: .language,
        type: .homonym,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "[see / sea] I can ___ you. The ship sailed on the ___.", options: ["see...sea", "sea...see", "see...see", "sea...sea"], correctAnswer: "see...sea", explanation: "See refers to vision, while sea refers to the ocean."),
            ExerciseItem(prompt: "[hair / hare] She brushed her ___. The wild rabbit is a ___.", options: ["hare...hair", "hair...hare", "hair...hair", "hare...hare"], correctAnswer: "hair...hare", explanation: "Hair grows on the head, while hare is another word for a rabbit."),
            ExerciseItem(prompt: "[meet / meat] I will ___ you at noon. The lion eats ___.", options: ["meat...meet", "meet...meat", "meet...meet", "meat...meat"], correctAnswer: "meet...meat", explanation: "Meet means to encounter someone, while meat is animal flesh used for food."),
            ExerciseItem(prompt: "[sun / son] The ___ is bright today. She has one ___ and one daughter.", options: ["son...sun", "sun...son", "sun...sun", "son...son"], correctAnswer: "sun...son", explanation: "Sun is the star that lights the earth, while son is a male child."),
            ExerciseItem(prompt: "[flower / flour] She smelled the red ___. Bakeries use ___ to make bread.", options: ["flour...flower", "flower...flour", "flower...flower", "flour...flour"], correctAnswer: "flower...flour", explanation: "Flower is the blossom of a plant, while flour is powder made from grain."),
            ExerciseItem(prompt: "[pair / pear] I bought a new ___ of shoes. She ate a sweet green ___.", options: ["pear...pair", "pair...pear", "pair...pair", "pear...pear"], correctAnswer: "pair...pear", explanation: "Pair means a set of two, while pear is a type of sweet fruit."),
            ExerciseItem(prompt: "[eye / I] I have a speck in my ___. ___ like to read books.", options: ["I...eye", "eye...I", "eye...eye", "I...I"], correctAnswer: "eye...I", explanation: "Eye is the organ of sight, while I is the first-person singular pronoun."),
            ExerciseItem(prompt: "[blue / blew] The sky is ___. The wind ___ the leaves away.", options: ["blew...blue", "blue...blew", "blue...blue", "blew...blew"], correctAnswer: "blue...blew", explanation: "Blue is a color, while blew is the past tense of blow."),
            ExerciseItem(prompt: "[write / right] Please ___ your name on the paper. Use your ___ hand.", options: ["right...write", "write...right", "write...write", "right...right"], correctAnswer: "write...right", explanation: "Write means to form letters, while right refers to the opposite of left."),
            ExerciseItem(prompt: "[wear / where] I will ___ my red coat. ___ did you put my keys?", options: ["where...wear", "wear...where", "wear...wear", "where...where"], correctAnswer: "wear...where", explanation: "Wear means to have clothing on, while where refers to a location or place."),
            ExerciseItem(prompt: "[road / rode] The car drove on the ___. She ___ her horse in the park.", options: ["rode...road", "road...rode", "road...rode", "rode...rode"], correctAnswer: "road...rode", explanation: "Road is a paved path for driving, while rode is the past tense of ride."),
            ExerciseItem(prompt: "[tail / tale] The dog wagged its ___. The grandpa told a funny ___.", options: ["tale...tail", "tail...tale", "tail...tail", "tale...tale"], correctAnswer: "tail...tale", explanation: "Tail is the rear appendage of an animal, while tale is a story."),
            ExerciseItem(prompt: "[wood / would] The table is made of ___. ___ you like a cup of tea?", options: ["would...wood", "wood...would", "wood...would", "wood...would"], correctAnswer: "wood...would", explanation: "Wood is material from trees, while would is a verb expressing desire or intent."),
            ExerciseItem(prompt: "[hear / here] Can you ___ the birds singing? Put the book right ___.", options: ["here...hear", "hear...here", "hear...hear", "here...here"], correctAnswer: "hear...here", explanation: "Hear means to perceive sound, while here refers to this location."),
            ExerciseItem(prompt: "[one / won] I have ___ dog. Our team ___ the game.", options: ["won...one", "one...won", "one...won", "won...won"], correctAnswer: "one...won", explanation: "One is the number 1, while won is the past tense of win.")
        ]
    )

    // MARK: - Easy Analogies
    private static let easyAnalogies = Exercise(
        title: "Easy Analogies",
        instructions: "Choose the word that best completes the analogy.",
        section: .language,
        type: .analogyChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "UP is to DOWN as HOT is to COLD", options: ["COLD", "WARM", "BOILING", "WET"], correctAnswer: "COLD", explanation: "Up and down are opposites, just as hot and cold are opposites."),
            ExerciseItem(prompt: "BIRD is to FLY as FISH is to SWIM", options: ["SWIM", "RUN", "WALK", "JUMP"], correctAnswer: "SWIM", explanation: "A bird moves by flying, and a fish moves by swimming."),
            ExerciseItem(prompt: "CAT is to KITTEN as DOG is to PUPPY", options: ["PUPPY", "KITTEN", "CALF", "FOAL"], correctAnswer: "PUPPY", explanation: "A kitten is a baby cat, and a puppy is a baby dog."),
            ExerciseItem(prompt: "DAY is to SUN as NIGHT is to MOON", options: ["MOON", "RAIN", "WIND", "CLOUD"], correctAnswer: "MOON", explanation: "The sun is seen during the day, and the moon is seen at night."),
            ExerciseItem(prompt: "ICE is to COLD as FIRE is to HOT", options: ["HOT", "WET", "DARK", "SOFT"], correctAnswer: "HOT", explanation: "Ice is cold to the touch, while fire is hot."),
            ExerciseItem(prompt: "PEN is to WRITE as SCISSORS is to CUT", options: ["CUT", "GLUE", "DRAW", "COLOR"], correctAnswer: "CUT", explanation: "A pen is used for writing, and scissors are used for cutting."),
            ExerciseItem(prompt: "TREE is to LEAF as FLOWER is to PETAL", options: ["PETAL", "THORN", "ROOT", "STEM"], correctAnswer: "PETAL", explanation: "A leaf is a part of a tree, and a petal is a part of a flower."),
            ExerciseItem(prompt: "CAR is to ROAD as BOAT is to WATER", options: ["WATER", "AIR", "LAND", "TRACK"], correctAnswer: "WATER", explanation: "A car travels on a road, while a boat travels on water."),
            ExerciseItem(prompt: "SOCK is to FOOT as GLOVE is to HAND", options: ["HAND", "HEAD", "NECK", "ARM"], correctAnswer: "HAND", explanation: "A sock is worn on the foot, and a glove is worn on the hand."),
            ExerciseItem(prompt: "HUNGRY is to FOOD as THIRSTY is to WATER", options: ["WATER", "BREAD", "FRUIT", "SALT"], correctAnswer: "WATER", explanation: "When you are hungry you need food, and when you are thirsty you need water."),
            ExerciseItem(prompt: "SHOE is to FOOT as HAT is to HEAD", options: ["HEAD", "HAND", "LEG", "NECK"], correctAnswer: "HEAD", explanation: "A shoe is worn on the foot, and a hat is worn on the head."),
            ExerciseItem(prompt: "APPLE is to FRUIT as CARROT is to VEGETABLE", options: ["VEGETABLE", "MEAT", "GRAIN", "DAIRY"], correctAnswer: "VEGETABLE", explanation: "An apple is a type of fruit, while a carrot is a type of vegetable."),
            ExerciseItem(prompt: "COW is to MILK as BEE is to HONEY", options: ["HONEY", "WAX", "POLLEN", "WATER"], correctAnswer: "HONEY", explanation: "A cow produces milk, and a bee produces honey."),
            ExerciseItem(prompt: "TEETH is to BRUSH as HAIR is to COMB", options: ["COMB", "WASH", "CUT", "DRY"], correctAnswer: "COMB", explanation: "You brush your teeth to clean them, and you comb your hair to tidy it."),
            ExerciseItem(prompt: "RAIN is to WET as SUN is to DRY", options: ["DRY", "COLD", "DARK", "WINDY"], correctAnswer: "DRY", explanation: "Rain makes things wet, while the sun makes things dry.")
        ]
    )

    // MARK: - Easy Cause and Effect
    private static let easyCauseEffect = Exercise(
        title: "Easy Cause and Effect",
        instructions: "Choose the option that represents the most logical cause or effect.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Cause: You drop a glass cup on the concrete floor.", options: ["The glass breaks", "The glass floats", "The glass gets soft", "The glass turns blue"], correctAnswer: "The glass breaks", explanation: "Dropping a fragile glass cup on a hard floor causes it to shatter or break."),
            ExerciseItem(prompt: "Cause: You forget to water a houseplant for a week.", options: ["It wilts and dries up", "It grows flowers", "It turns purple", "It produces fruit"], correctAnswer: "It wilts and dries up", explanation: "Plants need water to live; without it, they wither and dry up."),
            ExerciseItem(prompt: "Cause: You leave an ice cube on the kitchen table in summer.", options: ["It melts into water", "It becomes larger", "It turns to wood", "It stays frozen"], correctAnswer: "It melts into water", explanation: "Ice melts into liquid water when exposed to warm room temperature."),
            ExerciseItem(prompt: "Cause: You blow a soap bubble with too much air.", options: ["It pops", "It turns to ice", "It sings", "It gets heavy"], correctAnswer: "It pops", explanation: "Blowing too much air into a thin soap bubble causes it to pop."),
            ExerciseItem(prompt: "Cause: You flip the light switch on the wall.", options: ["The light turns on", "The room gets colder", "The door locks", "The clock stops"], correctAnswer: "The light turns on", explanation: "Flipping a light switch completes the electrical circuit, turning the light on."),
            ExerciseItem(prompt: "Cause: You do not sleep all night.", options: ["You feel very tired the next day", "You feel very energetic", "Your hair turns white", "You grow taller"], correctAnswer: "You feel very tired the next day", explanation: "Lack of sleep causes fatigue and tiredness the following day."),
            ExerciseItem(prompt: "Cause: You stand outside in a heavy rainstorm without an umbrella.", options: ["You get wet", "You stay completely dry", "You float away", "You catch fire"], correctAnswer: "You get wet", explanation: "Rain is water falling from the sky; standing in it without protection gets you wet."),
            ExerciseItem(prompt: "Cause: You put bread in the toaster and press the lever down.", options: ["The bread becomes toasted", "The bread turns to flour", "The bread melts", "The bread gets soggy"], correctAnswer: "The bread becomes toasted", explanation: "A toaster heats bread to brown and crisp it, making it toasted."),
            ExerciseItem(prompt: "Cause: You leave milk out on the counter for three days.", options: ["It goes sour and spoils", "It tastes sweeter", "It freezes solid", "It turns into honey"], correctAnswer: "It goes sour and spoils", explanation: "Leaving milk at room temperature for days allows bacteria to grow, spoiling it."),
            ExerciseItem(prompt: "Cause: You blow on a burning candle.", options: ["The flame goes out", "The flame grows larger", "The candle melts instantly", "The candle turns blue"], correctAnswer: "The flame goes out", explanation: "Blowing air onto a small candle flame deprives it of heat and puts it out."),
            ExerciseItem(prompt: "Cause: You place a pot of water on a hot stove burner.", options: ["The water begins to boil", "The water turns to ice", "The water disappears instantly", "The pot grows larger"], correctAnswer: "The water begins to boil", explanation: "Heat from the stove burner increases the water's temperature until it boils."),
            ExerciseItem(prompt: "Cause: You step on a sharp nail with bare feet.", options: ["Your foot gets hurt", "Your shoes get dirty", "You jump higher", "Your foot turns green"], correctAnswer: "Your foot gets hurt", explanation: "Stepping on a sharp object like a nail punctures the skin and causes injury."),
            ExerciseItem(prompt: "Cause: You add sugar to a cup of bitter black coffee.", options: ["The coffee tastes sweet", "The coffee turns cold", "The coffee disappears", "The coffee gets salty"], correctAnswer: "The coffee tastes sweet", explanation: "Sugar is a sweetener; adding it to coffee masks bitterness with sweetness."),
            ExerciseItem(prompt: "Cause: You throw a tennis ball against a brick wall.", options: ["The ball bounces back", "The ball passes through", "The wall falls down", "The ball dissolves"], correctAnswer: "The ball bounces back", explanation: "A tennis ball is elastic; striking a solid wall causes it to rebound or bounce back."),
            ExerciseItem(prompt: "Cause: You do not study or prepare for a test.", options: ["You get a poor grade", "You get a perfect score", "The school closes", "You graduate early"], correctAnswer: "You get a poor grade", explanation: "Failure to study or prepare usually results in poor academic performance on exams.")
        ]
    )

    // MARK: - Easy What's Wrong Here
    private static let easyWhatsWrong = Exercise(
        title: "Easy What's Wrong Here",
        instructions: "Identify the logical error or impossibility in the statement.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Absurdity: John put on his shoes before his socks.", options: ["Socks must go on before shoes", "Shoes should go on the hands", "Socks are worn on the head", "Shoes should be eaten"], correctAnswer: "Socks must go on before shoes", explanation: "Socks are worn inside shoes, so they must be put on first."),
            ExerciseItem(prompt: "Absurdity: She used a fork to drink her chicken soup.", options: ["Soup is liquid and requires a spoon", "Soup should be eaten with fingers", "A fork is used to cut steak", "Soup should be cooked in a cup"], correctAnswer: "Soup is liquid and requires a spoon", explanation: "Soup is a liquid; a fork has tines and cannot hold liquid, so a spoon is needed."),
            ExerciseItem(prompt: "Absurdity: The fish climbed up the tree to build a nest.", options: ["Fish live in water and cannot climb trees", "Trees do not have branches", "Fish only build nests on roofs", "Fish fly in the air"], correctAnswer: "Fish live in water and cannot climb trees", explanation: "Fish have gills and fins and live under water; they cannot survive on land or climb trees."),
            ExerciseItem(prompt: "Absurdity: He wore a heavy winter coat to swim in the pool.", options: ["Swimwear is used for swimming, not heavy coats", "Heavy coats make you swim faster", "The pool should be filled with ice", "Winter coats are only worn in summer"], correctAnswer: "Swimwear is used for swimming, not heavy coats", explanation: "Winter coats absorb water and become extremely heavy; swimsuits are worn in pools."),
            ExerciseItem(prompt: "Absurdity: They cooked a raw egg in the freezer.", options: ["Freezers freeze food; stoves cook it", "Eggs should only be eaten raw", "Freezers are used to boil water", "Eggs cook better in the microwave"], correctAnswer: "Freezers freeze food; stoves cook it", explanation: "Freezers maintain sub-zero temperatures to preserve food; cooking requires heat."),
            ExerciseItem(prompt: "Absurdity: The dog opened the book and began reading out loud.", options: ["Dogs cannot read or speak human language", "Dogs only read newspapers", "Books should be read silently", "Dogs prefer writing books"], correctAnswer: "Dogs cannot read or speak human language", explanation: "Dogs lack the vocal cords and cognitive capacity to read or speak human languages."),
            ExerciseItem(prompt: "Absurdity: She cut the birthday cake with a spoon.", options: ["A knife is used to slice cake, not a spoon", "Cakes should be eaten with hands", "Spoons are only for soup", "Cakes should be cut with scissors"], correctAnswer: "A knife is used to slice cake, not a spoon", explanation: "A knife has a sharp edge for cutting; a spoon is rounded for scooping liquid or soft foods."),
            ExerciseItem(prompt: "Absurdity: He used a pencil to type a message on his phone.", options: ["Phones use fingers or touchscreens, not pencils", "Pencils are only used on glass", "Phones only accept voice commands", "Pencils are too short to write messages"], correctAnswer: "Phones use fingers or touchscreens, not pencils", explanation: "Mobile phones use capacitive touchscreens designed for finger input or specialized styluses."),
            ExerciseItem(prompt: "Absurdity: The airplane sailed across the deep blue ocean water.", options: ["Airplanes fly in the air; ships sail on water", "Ocean water is always green", "Airplanes only travel on land", "Ships fly in the sky"], correctAnswer: "Airplanes fly in the air; ships sail on water", explanation: "Airplanes are designed to fly in the atmosphere; ships are designed to navigate water bodies."),
            ExerciseItem(prompt: "Absurdity: She opened her umbrella inside the dry living room.", options: ["Umbrellas are used outside for rain or sun", "Living rooms should have rain pools", "Umbrellas are only for winter", "She should wear a raincoat indoors"], correctAnswer: "Umbrellas are used outside for rain or sun", explanation: "An umbrella is a protective canopy against rain or sun; there is no rain inside a dry house."),
            ExerciseItem(prompt: "Absurdity: The cat barked loudly at the mailman.", options: ["Cats meow; dogs bark", "Cats only bark at mice", "Mailmen are afraid of cats", "Cats bark only in the morning"], correctAnswer: "Cats meow; dogs bark", explanation: "Barking is a vocalization specific to canines; felines meow or purr."),
            ExerciseItem(prompt: "Absurdity: He put gas into his bicycle to ride to the store.", options: ["Bicycles are powered by foot pedals, not gas", "Bicycles use diesel fuel", "Bicycles only run on batteries", "Bicycles do not need wheels"], correctAnswer: "Bicycles are powered by foot pedals, not gas", explanation: "Bicycles are human-powered vehicles using pedals; they do not have internal combustion engines."),
            ExerciseItem(prompt: "Absurdity: The snow fell heavily during the hot summer day.", options: ["Snow only falls in cold winter temperatures", "Summer days are always dark", "Summer only occurs in December", "Snow is hot to the touch"], correctAnswer: "Snow only falls in cold winter temperatures", explanation: "Snow requires freezing atmospheric temperatures to form and fall; summer is warm."),
            ExerciseItem(prompt: "Absurdity: She washed her dirty dishes in the trash can.", options: ["Dishes are washed in the sink, not the trash", "Trash cans are for clean clothes", "Dishes should be washed in the garden", "Trash cans are filled with water"], correctAnswer: "Dishes are washed in the sink, not the trash", explanation: "Trash cans are repositories for waste; sinks are plumbing fixtures for washing."),
            ExerciseItem(prompt: "Absurdity: He watered his garden with a bucket of sand.", options: ["Plants need water to grow, not sand", "Sand makes the soil too wet", "Gardens should be filled with rocks", "Sand is only for desert plants"], correctAnswer: "Plants need water to grow, not sand", explanation: "Plants require water for photosynthesis and hydration; sand is dry mineral particles.")
        ]
    )

    // MARK: - Easy Sequencing
    private static let easySequencing = Exercise(
        title: "Easy Sequencing",
        instructions: "Arrange the steps of the activity in the correct order.",
        section: .language,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Making toast", options: ["Put bread in toaster", "Press the lever down", "Wait for toast to pop", "Spread butter on toast"], correctAnswer: "Put bread in toaster | Press the lever down | Wait for toast to pop | Spread butter on toast", explanation: "Toast sequence: place bread in slot, engage heating mechanism, wait for release, apply spread."),
            ExerciseItem(prompt: "Washing hands", options: ["Wet hands with water", "Apply soap and scrub", "Rinse soap with water", "Dry hands with towel"], correctAnswer: "Wet hands with water | Apply soap and scrub | Rinse soap with water | Dry hands with towel", explanation: "Handwashing steps: wet skin, apply soap and lather, rinse under stream, dry off."),
            ExerciseItem(prompt: "Mailing a letter", options: ["Write the letter", "Put letter in envelope", "Write the address", "Stick a stamp and mail it"], correctAnswer: "Write the letter | Put letter in envelope | Write the address | Stick a stamp and mail it", explanation: "Mailing: author the document, insert into protective sleeve, write delivery address, attach postage and post."),
            ExerciseItem(prompt: "Brushing teeth", options: ["Put toothpaste on brush", "Brush all teeth", "Rinse mouth with water", "Wash the toothbrush"], correctAnswer: "Put toothpaste on brush | Brush all teeth | Rinse mouth with water | Wash the toothbrush", explanation: "Dental care: apply dentifrice, clean surfaces, rinse away residue, clean the instrument."),
            ExerciseItem(prompt: "Drinking tea", options: ["Boil water in kettle", "Place tea bag in cup", "Pour hot water in cup", "Let tea steep and drink"], correctAnswer: "Boil water in kettle | Place tea bag in cup | Pour hot water in cup | Let tea steep and drink", explanation: "Brewing tea: heat water, prepare cup, combine water and tea leaf, steep and consume.")
        ]
    )

    // MARK: - Medium Word Association
    private static let mediumWordAssociation = Exercise(
        title: "Medium Word Association",
        instructions: "Choose the word most closely associated with the given prompt.",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "LIBRARY", options: ["Silence", "Noise", "Crowd", "Game"], correctAnswer: "Silence", explanation: "Libraries are traditionally quiet spaces reserved for study, closely associating them with silence."),
            ExerciseItem(prompt: "HOSPITAL", options: ["Healing", "Vacation", "Shopping", "Cooking"], correctAnswer: "Healing", explanation: "Hospitals are medical facilities dedicated to curing illness and healing patients."),
            ExerciseItem(prompt: "AIRPORT", options: ["Departure", "Sleeping", "Gardening", "Painting"], correctAnswer: "Departure", explanation: "Airports are transport hubs characterized by flight departures and arrivals."),
            ExerciseItem(prompt: "DESERT", options: ["Drought", "Rainstorm", "Forest", "Ocean"], correctAnswer: "Drought", explanation: "Deserts are arid regions characterized by extreme dryness or drought."),
            ExerciseItem(prompt: "WEDDING", options: ["Ring", "Exam", "Office", "Key"], correctAnswer: "Ring", explanation: "A wedding ring is a traditional symbol of marriage exchanged during the ceremony."),
            ExerciseItem(prompt: "FARM", options: ["Harvest", "City", "Office", "Factory"], correctAnswer: "Harvest", explanation: "A farm is a plot of land for agricultural production, culminating in the crop harvest."),
            ExerciseItem(prompt: "KITCHEN", options: ["Recipe", "Bed", "Car", "Shower"], correctAnswer: "Recipe", explanation: "Kitchens are areas for food preparation, which often follows a cooking recipe."),
            ExerciseItem(prompt: "MOUNTAIN", options: ["Summit", "Basement", "Street", "Desert"], correctAnswer: "Summit", explanation: "The summit is the highest peak or point of a mountain structure."),
            ExerciseItem(prompt: "COURT", options: ["Justice", "Theater", "Kitchen", "Market"], correctAnswer: "Justice", explanation: "A court of law is a judicial body tasked with administering legal justice."),
            ExerciseItem(prompt: "OFFICE", options: ["Deadline", "Beach", "Bed", "Picnic"], correctAnswer: "Deadline", explanation: "Office work is heavily structured around task completion time limits or deadlines."),
            ExerciseItem(prompt: "THEATER", options: ["Stage", "Kitchen", "Highway", "Forest"], correctAnswer: "Stage", explanation: "The stage is the platform in a theater where performances take place."),
            ExerciseItem(prompt: "FOREST", options: ["Wilderness", "City", "Desert", "Pavement"], correctAnswer: "Wilderness", explanation: "A forest is a large wooded area representative of natural wilderness."),
            ExerciseItem(prompt: "LABORATORY", options: ["Experiment", "Cooking", "Dancing", "Shopping"], correctAnswer: "Experiment", explanation: "Laboratories are facilities equipped for scientific research and experiments."),
            ExerciseItem(prompt: "MUSEUM", options: ["Exhibition", "Movie", "Sports", "Cooking"], correctAnswer: "Exhibition", explanation: "Museums curate and display collections of historical or artistic works in exhibitions."),
            ExerciseItem(prompt: "DENTIST", options: ["Cavity", "Haircut", "Ticket", "Cooking"], correctAnswer: "Cavity", explanation: "A dentist is a medical professional specializing in dental care, such as treating a tooth cavity.")
        ]
    )

    // MARK: - Medium Homonyms
    private static let mediumHomonyms = Exercise(
        title: "Medium Homonyms",
        instructions: "Choose the correct homonym pair to complete the sentences.",
        section: .language,
        type: .homonym,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "[bare / bear] The winter trees are completely ___. The brown ___ caught a salmon in the river.", options: ["bare...bear", "bear...bare", "bare...bare", "bear...bear"], correctAnswer: "bare...bear", explanation: "'Bare' means uncovered or naked, while 'bear' is a large mammal."),
            ExerciseItem(prompt: "[fair / fare] The judge gave a ___ decision. He paid his bus ___ to the driver.", options: ["fair...fare", "fare...fair", "fair...fair", "fare...fare"], correctAnswer: "fair...fare", explanation: "'Fair' means just or equitable, while 'fare' is the cost of travel transport."),
            ExerciseItem(prompt: "[cent / scent] A penny is worth one ___. The flower has a sweet ___.", options: ["cent...scent", "scent...cent", "cent...cent", "scent...scent"], correctAnswer: "cent...scent", explanation: "'Cent' is a unit of currency, while 'scent' refers to a smell or fragrance."),
            ExerciseItem(prompt: "[board / bored] He wrote the lesson on the ___. She felt ___ with nothing to do.", options: ["board...bored", "bored...board", "board...board", "bored...bored"], correctAnswer: "board...bored", explanation: "'Board' is a flat surface for writing, while 'bored' is the state of feeling weary or uninterested."),
            ExerciseItem(prompt: "[steel / steal] The bridge is made of strong ___. It is wrong to ___ money from others.", options: ["steel...steal", "steal...steel", "steel...steel", "steal...steal"], correctAnswer: "steel...steal", explanation: "'Steel' is a strong metal alloy, while 'steal' means to take property without permission.")
        ]
    )

    // MARK: - Easy Complete the Saying
    private static let easyCompleteSaying = Exercise(
        title: "Easy Complete the Saying",
        instructions: "Choose the word that correctly completes the proverb or saying.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "An apple a day keeps the doctor ___", options: ["away", "here", "close", "well"], correctAnswer: "away", explanation: "The traditional proverb is 'An apple a day keeps the doctor away.'"),
            ExerciseItem(prompt: "Look before you ___", options: ["leap", "run", "jump", "walk"], correctAnswer: "leap", explanation: "The traditional proverb is 'Look before you leap.'"),
            ExerciseItem(prompt: "Better late than ___", options: ["never", "always", "sometimes", "soon"], correctAnswer: "never", explanation: "The traditional proverb is 'Better late than never.'"),
            ExerciseItem(prompt: "A penny saved is a penny ___", options: ["earned", "spent", "lost", "found"], correctAnswer: "earned", explanation: "The traditional proverb is 'A penny saved is a penny earned.'"),
            ExerciseItem(prompt: "Two heads are better than ___", options: ["one", "three", "four", "none"], correctAnswer: "one", explanation: "The traditional proverb is 'Two heads are better than one.'"),
            ExerciseItem(prompt: "Don't count your chickens before they ___", options: ["hatch", "fly", "sleep", "sing"], correctAnswer: "hatch", explanation: "The traditional proverb is 'Don't count your chickens before they hatch.'"),
            ExerciseItem(prompt: "Practice makes ___", options: ["perfect", "easy", "hard", "better"], correctAnswer: "perfect", explanation: "The traditional proverb is 'Practice makes perfect.'"),
            ExerciseItem(prompt: "A picture is worth a thousand ___", options: ["words", "pages", "colors", "dollars"], correctAnswer: "words", explanation: "The traditional proverb is 'A picture is worth a thousand words.'"),
            ExerciseItem(prompt: "Honesty is the best ___", options: ["policy", "habit", "choice", "rule"], correctAnswer: "policy", explanation: "The traditional proverb is 'Honesty is the best policy.'"),
            ExerciseItem(prompt: "All that glitters is not ___", options: ["gold", "silver", "bright", "metal"], correctAnswer: "gold", explanation: "The traditional proverb is 'All that glitters is not gold.'"),
            ExerciseItem(prompt: "No pain, no ___", options: ["gain", "loss", "work", "play"], correctAnswer: "gain", explanation: "The traditional proverb is 'No pain, no gain.'"),
            ExerciseItem(prompt: "Birds of a feather flock ___", options: ["together", "apart", "away", "alone"], correctAnswer: "together", explanation: "The traditional proverb is 'Birds of a feather flock together.'"),
            ExerciseItem(prompt: "Actions speak louder than ___", options: ["words", "sounds", "voices", "calls"], correctAnswer: "words", explanation: "The traditional proverb is 'Actions speak louder than words.'"),
            ExerciseItem(prompt: "Out of sight, out of ___", options: ["mind", "heart", "view", "reach"], correctAnswer: "mind", explanation: "The traditional proverb is 'Out of sight, out of mind.'"),
            ExerciseItem(prompt: "Every cloud has a silver ___", options: ["lining", "border", "color", "shine"], correctAnswer: "lining", explanation: "The traditional proverb is 'Every cloud has a silver lining.'")
        ]
    )

    // MARK: - Hard Complete the Saying
    private static let hardCompleteSaying = Exercise(
        title: "Hard Complete the Saying",
        instructions: "Choose the word that correctly completes the proverb or saying.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Familiarity breeds ___", options: ["contempt", "closeness", "dislike", "friendship"], correctAnswer: "contempt", explanation: "The proverb is 'Familiarity breeds contempt.'"),
            ExerciseItem(prompt: "Fortune favors the ___", options: ["bold", "wise", "kind", "rich"], correctAnswer: "bold", explanation: "The proverb is 'Fortune favors the bold.'"),
            ExerciseItem(prompt: "A chain is only as strong as its weakest ___", options: ["link", "part", "loop", "metal"], correctAnswer: "link", explanation: "The proverb is 'A chain is only as strong as its weakest link.'"),
            ExerciseItem(prompt: "Adversity makes strange ___", options: ["bedfellows", "partners", "friends", "allies"], correctAnswer: "bedfellows", explanation: "The proverb is 'Adversity makes strange bedfellows.'"),
            ExerciseItem(prompt: "Absence makes the heart grow ___", options: ["fonder", "colder", "weaker", "sad"], correctAnswer: "fonder", explanation: "The proverb is 'Absence makes the heart grow fonder.'"),
            ExerciseItem(prompt: "Still waters run ___", options: ["deep", "cold", "fast", "quiet"], correctAnswer: "deep", explanation: "The proverb is 'Still waters run deep.'"),
            ExerciseItem(prompt: "Necessity is the mother of ___", options: ["invention", "progress", "creativity", "needs"], correctAnswer: "invention", explanation: "The proverb is 'Necessity is the mother of invention.'"),
            ExerciseItem(prompt: "The pen is mightier than the ___", options: ["sword", "shield", "army", "gun"], correctAnswer: "sword", explanation: "The proverb is 'The pen is mightier than the sword.'"),
            ExerciseItem(prompt: "All good things must come to an ___", options: ["end", "halt", "outcome", "epoch"], correctAnswer: "end", explanation: "The proverb is 'All good things must come to an end.'"),
            ExerciseItem(prompt: "Discretion is the better part of ___", options: ["valor", "wisdom", "safety", "caution"], correctAnswer: "valor", explanation: "The proverb is 'Discretion is the better part of valor.'"),
            ExerciseItem(prompt: "A rolling stone gathers no ___", options: ["moss", "dust", "dirt", "leaves"], correctAnswer: "moss", explanation: "The proverb is 'A rolling stone gathers no moss.'"),
            ExerciseItem(prompt: "Hope springs eternal in the human ___", options: ["breast", "mind", "soul", "heart"], correctAnswer: "breast", explanation: "The proverb is 'Hope springs eternal in the human breast.'"),
            ExerciseItem(prompt: "Beauty is in the eye of the ___", options: ["beholder", "painter", "dreamer", "artist"], correctAnswer: "beholder", explanation: "The proverb is 'Beauty is in the eye of the beholder.'"),
            ExerciseItem(prompt: "Good fences make good ___", options: ["neighbors", "borders", "gardens", "homes"], correctAnswer: "neighbors", explanation: "The proverb is 'Good fences make good neighbors.'"),
            ExerciseItem(prompt: "Power corrupts, and absolute power corrupts ___", options: ["absolutely", "quickly", "totally", "silently"], correctAnswer: "absolutely", explanation: "The proverb is 'Power corrupts, and absolute power corrupts absolutely.'")
        ]
    )
}
