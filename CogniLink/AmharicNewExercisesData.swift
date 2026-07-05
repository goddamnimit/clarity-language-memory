import Foundation

/// Holds the 14 new Amharic exercises sourced from the New Exercises content library.
/// Covers the Language, Cognition, and Functional Skills sections.
struct AmharicNewExercisesData {

    /// The complete collection of all 14 new Amharic exercises.
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
        instructions: "Choose the correct answer.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ከ “ቤት” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["መስኮት", "ፊት", "በር", "ወንበር"], correctAnswer: "ፊት", explanation: "ቤት እና ፊት ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ብር” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ወርቅ", "ሳንቲም", "ድር", "ብረት"], correctAnswer: "ድር", explanation: "ብር እና ድር ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ሳህን” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ብርጭቆ", "ደህን", "ማንኪያ", "ምጣድ"], correctAnswer: "ደህን", explanation: "ሳህን እና ደህን ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ቀይ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ጥቁር", "ነጭ", "ሰማይ", "ቢጫ"], correctAnswer: "ሰማይ", explanation: "ቀይ እና ሰማይ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ዛፍ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ቅጠል", "ራፍ", "ሳር", "አፈር"], correctAnswer: "ራፍ", explanation: "ዛፍ እና ራፍ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ልብ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ደም", "ክብ", "ጭንቅላት", "ሳንባ"], correctAnswer: "ክብ", explanation: "ልብ እና ክብ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ወር” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ቀን", "ሳምንት", "በር", "ዓመት"], correctAnswer: "በር", explanation: "ወር እና በር ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ጨው” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ስኳር", "በርበሬ", "ሰው", "ምግብ"], correctAnswer: "ሰው", explanation: "ጨው እና ሰው ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ውሃ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ወተት", "ጭማቂ", "ደሃ", "ባህር"], correctAnswer: "ደሃ", explanation: "ውሃ እና ደሃ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ድመት” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ውሻ", "አይጥ", "እመት", "ወፍ"], correctAnswer: "እመት", explanation: "ድመት እና እመት ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ዶሮ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["እንቁላል", "ስጋ", "ጎሮ", "ወፍ"], correctAnswer: "ጎሮ", explanation: "ዶሮ እና ጎሮ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ሳር” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ዛፍ", "ባር", "ውሃ", "ድጋፍ"], correctAnswer: "ባር", explanation: "ሳር እና ባር ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ስጋ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ወጥ", "ዶሮ", "አልጋ", "ቢላዋ"], correctAnswer: "አልጋ", explanation: "ስጋ እና አልጋ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ራስ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ፀጉር", "አይን", "ዳስ", "አፍንጫ"], correctAnswer: "ዳስ", explanation: "ራስ እና ዳስ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ቅጠል” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ዛፍ", "ሳር", "ጠል", "አበባ"], correctAnswer: "ጠል", explanation: "ቅጠል እና ጠል ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ጎመን” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ድንች", "ካሮት", "አመን", "ሽንኩርት"], correctAnswer: "አመን", explanation: "ጎመን እና አመን ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ቀን” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ሌሊት", "ሰዓት", "ሰን", "ሳምንት"], correctAnswer: "ሰን", explanation: "ቀን እና ሰን ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ነጭ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ጥቁር", "ቢጫ", "ብልጭ", "ቀይ"], correctAnswer: "ብልጭ", explanation: "ነጭ እና ብልጭ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ላም” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["ወተት", "ሰላም", "ሳር", "ጥጃ"], correctAnswer: "ሰላም", explanation: "ላም እና ሰላም ተመሳሳይ የመጨረሻ ድምፅ አላቸው።"),
            ExerciseItem(prompt: "ከ “ሽቶ” ጋር የሚመሳሰል (የሚገጥም) ቃል የትኛው ነው?", options: ["መስተዋት", "ልብስ", "ፎቶ", "ሳሙና"], correctAnswer: "ፎቶ", explanation: "ሽቶ እና ፎቶ ተመሳሳይ የመጨረሻ ድምፅ አላቸው።")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "Word Association",
        instructions: "Choose the correct answer.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ዶክተር", options: ["ሆስፒታል", "አውሮፕላን ማረፊያ", "ቤተ መጻሕፍት", "እርሻ"], correctAnswer: "ሆስፒታል", explanation: "ዶክተሮች በሆስፒታል ውስጥ ታካሚዎችን ያክማሉ።"),
            ExerciseItem(prompt: "እንጀራ", options: ["ወጥ", "መዶሻ", "ሳሙና", "እርሳስ"], correctAnswer: "ወጥ", explanation: "እንጀራ አብዛኛውን ጊዜ ከወጥ ጋር ይበላል።"),
            ExerciseItem(prompt: "ማብሰያ ቤት", options: ["ምድጃ", "አልጋ", "ሻወር", "መኪና"], correctAnswer: "ምድጃ", explanation: "ምድጃ በማብሰያ ክፍል ውስጥ ዋናው ዕቃ ነው።"),
            ExerciseItem(prompt: "ቤተ መጻሕፍት", options: ["መጻሕፍት", "ልብሶች", "መሣሪያዎች", "ግሮሰሪ"], correctAnswer: "መጻሕፍት", explanation: "በቤተ መጻሕፍት ውስጥ መጻሕፍት ይነበባሉ፥ ይቀመጣሉም።"),
            ExerciseItem(prompt: "ጫማ", options: ["ካልሲ", "ቆብ", "ጓንት", "ቀበቶ"], correctAnswer: "ካልሲ", explanation: "ካልሲ ከጫማ በፊት በእግር ላይ ይደረጋል።"),
            ExerciseItem(prompt: "ጠፈርተኛ", options: ["ህዋ", "ውቅያኖስ", "ጫካ", "በረሃ"], correctAnswer: "ህዋ", explanation: "ጠፈርተኞች ወደ ህዋ ይጓዛሉ።"),
            ExerciseItem(prompt: "መምህር", options: ["ትምህርት ቤት", "ፋብሪካ", "ቲያትር ቤት", "ጂም"], correctAnswer: "ትምህርት ቤት", explanation: "መምህራን በትምህርት ቤት ውስጥ ያስተምራሉ።"),
            ExerciseItem(prompt: "ውቅያኖስ", options: ["ዓሳ", "ወፍ", "ላም", "ሸረሪት"], correctAnswer: "ዓሳ", explanation: "ዓሳዎች በውቅያኖስ ውስጥ ይኖራሉ።"),
            ExerciseItem(prompt: "መኪና", options: ["ጎማ", "ክንፍ", "ኮርቻ", "ሸራ"], correctAnswer: "ጎማ", explanation: "ጎማ ለመኪና መንቀሳቀሻ ወሳኝ አካል ነው።"),
            ExerciseItem(prompt: "ዝናብ", options: ["ጃንጥላ", "የፀሐይ መነጽር", "ጓንት", "ሻርፕ"], correctAnswer: "ጃንጥላ", explanation: "ጃንጥላ ከዝናብ መከላከያነት ያገለግላል።"),
            ExerciseItem(prompt: "እሳት", options: ["ጭስ", "በረዶ", "ቅጠል", "ሳንቲም"], correctAnswer: "ጭስ", explanation: "እሳት በሚነድበት ጊዜ ጭስ ይፈጥራል።"),
            ExerciseItem(prompt: "የጥርስ ሐኪም", options: ["ጥርስ", "ፀጉር", "አይን", "እግር"], correctAnswer: "ጥርስ", explanation: "የጥርስ ሐኪሞች ስለ ጥርስ ጤና ይንከባከባሉ።"),
            ExerciseItem(prompt: "ቡና", options: ["ሲኒ", "ሳህን", "ማንኪያ", "ሹካ"], correctAnswer: "ሲኒ", explanation: "ቡና አብዛኛውን ጊዜ በሲኒ ይቀርባል።"),
            ExerciseItem(prompt: "የአትክልት ቦታ", options: ["አበቦች", "ኮምፒውተር", "ምድጃ", "ኮት"], correctAnswer: "አበቦች", explanation: "በአትክልት ቦታ ውስጥ አበቦች ይበቅላሉ።"),
            ExerciseItem(prompt: "ቁልፍ", options: ["መቆለፊያ", "መስኮት", "ጣሪያ", "ወለል"], correctAnswer: "መቆለፊያ", explanation: "ቁልፍ መቆለፊያዎችን ለመክፈት ያገለግላል።"),
            ExerciseItem(prompt: "ፖስታ ቤት", options: ["ደብዳቤ", "ዳቦ", "መድኃኒት", "ትኬት"], correctAnswer: "ደብዳቤ", explanation: "ደብዳቤዎች በፖስታ ቤት በኩል ይላካሉ።"),
            ExerciseItem(prompt: "ፒያኖ", options: ["ሙዚቃ", "ቀለም", "ሸክላ", "እንጨት"], correctAnswer: "ሙዚቃ", explanation: "ፒያኖ ሙዚቃ ለመጫን የሚያገለግል መሣሪያ ነው።"),
            ExerciseItem(prompt: "ንብ", options: ["ማር", "ወተት", "ሱፍ", "ሐር"], correctAnswer: "ማር", explanation: "ንቦች ማር ያመርታሉ።"),
            ExerciseItem(prompt: "ሸረሪት", options: ["ድር", "ጎጆ", "ቀፎ", "ዋሻ"], correctAnswer: "ድር", explanation: "ሸረሪቶች ድር ይሠራሉ።"),
            ExerciseItem(prompt: "ገበሬ", options: ["ትራክተር", "አውሮፕላን", "ውሃ ውስጥ መርከብ", "ባቡር"], correctAnswer: "ትራክተር", explanation: "ገበሬዎች መሬት ለማረስ ትራክተር ይጠቀማሉ።")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "Complete the Saying",
        instructions: "Choose the correct answer.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ድር ቢያብር አንበሳ ___።", options: ["ያሥራል", "ይገድላል", "ያሳድዳል", "ይበላል"], correctAnswer: "ያሥራል", explanation: "ኅብረት ካለ የማይቻል ነገር የለም ማለት ነው።"),
            ExerciseItem(prompt: "ካለፈው ቆምጨጫ የቆመ ___።", options: ["ይበልጣል", "ይሻላል", "ይወድቃል", "ይቆማል"], correctAnswer: "ይሻላል", explanation: "የወደፊቱን ማስተካከልና ማዘጋጀት እንደሚበጅ የሚገልጽ አባባል ነው።"),
            ExerciseItem(prompt: "የማይመስል ነገር ለልጅህ ___።", options: ["አትንገር", "አትስጥ", "አታሳይ", "አtaድርግ"], correctAnswer: "አትንገር", explanation: "ልጆች እውነትን ብቻ እንዲያውቁ መምከርን ያሳያል።"),
            ExerciseItem(prompt: "ውኃ ሲወስድ ሳቅ ___።", options: ["ያመጣል", "ሳይጠሩት", "በደስታ", "እያለ ነው"], correctAnswer: "እያለ ነው", explanation: "አደጋ በድንገትና ባልታሰበ ሁኔታ ሊመጣ እንደሚችል ያሳያል።"),
            ExerciseItem(prompt: "ከእባብ ዕንቁላል እርግብ ___?", options: ["ይወለዳል", "አይገኝም", "አይጠበቅም", "አያምርም"], correctAnswer: "አይጠበቅም", explanation: "ከክፉ ነገር በጎ ነገር አይጠበቅም ማለት ነው።"),
            ExerciseItem(prompt: "የሞኝ ዘፈን ሁልጊዜ ___።", options: ["አንድ ነው", "ያምራል", "ይደገማል", "አጭር ነው"], correctAnswer: "አንድ ነው", explanation: "አስተዋይ ያልሆነ ሰው አንድ ነገር ላይ ብቻ እንደሚደጋገም ያሳያል።"),
            ExerciseItem(prompt: "ሲሮጡ የታጠቁት ለቀቅ ሲሉ ___።", options: ["ይፈታል", "ይጠብቃል", "ይወድቃል", "ይጠፋል"], correctAnswer: "ይፈታል", explanation: "በችኮላ የተከናወነ ተግባር ሊበላሽ እንደሚችል ያሳያል።"),
            ExerciseItem(prompt: "የአህያ ባል ከጅብ ___።", options: ["አያድንም", "ይሻላል", "አይከላከልም", "ይወልዳል"], correctAnswer: "አያድንም", explanation: "ደካማ ረዳት ከአደጋ ሊጠብቅ እንደማይችል ያሳያል።"),
            ExerciseItem(prompt: "በቅሎ አባትህ ማነው ቢሉት ___ አለ።", options: ["ፈረስ", "እናቴ ፈረስ ነች", "አህያ", "ቅልጥም"], correctAnswer: "እናቴ ፈረስ ነች", explanation: "ማንነትን መደበቅን ወይም ያልሆኑትን መምሰልን ያሳያል።"),
            ExerciseItem(prompt: "ሀብታም ቢጮኽ የድሀ ___።", options: ["ጆሮ", "ነፍስ", "ቤት", "ህይወት"], correctAnswer: "ጆሮ", explanation: "ባለጸጎች ድምፃቸውን በቀላሉ እንደሚያሰሙና ድሆች እንደሚሰሟቸው ያሳያል።"),
            ExerciseItem(prompt: "እግር ሳለህ ___ ውጣ።", options: ["ተራራ", "ቤት", "ዛፍ", "ባቡር"], correctAnswer: "ተራራ", explanation: "ጊዜና አቅም እያለ የተሻለ ተግባር መሥራት እንደሚገባ ያሳያል።"),
            ExerciseItem(prompt: "ቀስ በቀስ ዕንቁላል በእግሩ ___።", options: ["ይሄዳል", "ይሰበራል", "ይወለዳል", "ይበራል"], correctAnswer: "ይሄዳል", explanation: "በትዕግስትና በሂደት ሁሉም ነገር ይሳካል ማለት ነው።"),
            ExerciseItem(prompt: "የሰው ወርቅ አያበራም፥ የሰው ___ አያሞቅም።", options: ["ቤት", "ልብስ", "እሳት", "ምግብ"], correctAnswer: "እሳት", explanation: "የራስ በራስ ጥረትና ንብረት ብቻ ዋስትና እንደሚሆን ያሳያል።"),
            ExerciseItem(prompt: "አፍ ቢጮኽ የልብ ___።", options: ["ይረጋጋል", "ይሰማል", "አይታወቅም", "ይጠፋል"], correctAnswer: "አይታወቅም", explanation: "በንግግር ብቻ ውስጣዊ ስሜት እንደማይገለጽ ያሳያል።"),
            ExerciseItem(prompt: "ሲያርሱ የማይሰንፉ ሲበሉ ___።", options: ["ይዘምራሉ", "ያዝናሉ", "ይበዛሉ", "ያማርራሉ"], correctAnswer: "ይበዛሉ", explanation: "በሥራ ወቅት ሳይሳተፉ በውጤቱ ጊዜ የሚበዙ ሰዎችን ያሳያል።"),
            ExerciseItem(prompt: "ከጠላት ሺህ ወዳጅ ___።", options: ["ይበልጣል", "ይሻላል", "ያለቅሳል", "ያድናል"], correctAnswer: "ይሻላል", explanation: "በሰላም መኖርና ወዳጅ ማብዛት እንደሚሻል ያሳያል።"),
            ExerciseItem(prompt: "ቁንጫ ወርቅ ብታገኝ ___ ትገባለች።", options: ["ጉድጓድ", "ጭቃ", "ስፌት", "ቀለበት"], correctAnswer: "ስፌት", explanation: "ልማድ በቀላሉ እንደማይቀየር የሚያሳይ ባህላዊ አባባል ነው።"),
            ExerciseItem(prompt: "የሚቆጡትን ከመውደድ፥ የማይቆጡትን ___።", options: ["መፍራት", "መጥላት", "መከተል", "ማክበር"], correctAnswer: "መፍራት", explanation: "የማይታወቁትን ሰዎች በጥንቃቄ መያዝን ያሳያል።"),
            ExerciseItem(prompt: "ሰው በሰውነቱ፥ እንጨት ___።", options: ["በእሳቱ", "በቅጠሉ", "በክብደቱ", "በእርጥበቱ"], correctAnswer: "በእሳቱ", explanation: "እያንዳንዱ ነገር በገዛ ባህሪው እንደሚመዘን ያሳያል።"),
            ExerciseItem(prompt: "በላ ተብሎ ባላገር ___ አይባልም።", options: ["ብላ", "ቁረጥ", "እረድ", "ጋብዝ"], correctAnswer: "ብላ", explanation: "አቅምን ያገናዘበ ግብዣ ማድረግን ማሳሰቢያ ነው።")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Compound Words",
        instructions: "Choose the correct answer.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ከሚከተሉት ውስጥ ትክክለኛ የጥምር ቃል የትኛው ነው?", options: ["ቤተመንግስት", "የቤትበር", "እቃሳጥን", "መብራትሀይል"], correctAnswer: "ቤተመንግስት", explanation: "“ቤተመንግስት” የመንግስት መስሪያ ቤት ወይም መኖሪያን የሚገልጽ የጥምር ቃል ነው።"),
            ExerciseItem(prompt: "“ባለ” እና “ቤት” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["ባለቤት", "የቤትእቃ", "ባለሀብት", "ቤትባለ"], correctAnswer: "ባለቤት", explanation: "“ባለቤት” የቤት ወይም የንብረት ባለቤትነትን ያሳያል።"),
            ExerciseItem(prompt: "“ትምህርት” እና “ቤት” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የመማሪያ", "ትምህርትቤት", "ትምህርተአብ", "ቤትመምህር"], correctAnswer: "ትምህርትቤት", explanation: "“ትምህርትቤት” የመማር ማስተማር ተግባር የሚከናወንበት ቦታ ነው።"),
            ExerciseItem(prompt: "“የበረዶ” እና “ግግር” ሲጣመሩ ምን ይባላል?", options: ["የበረዶግግር", "ውሃበረዶ", "ቅዝቃዜ", "በረዶቤት"], correctAnswer: "የበረዶግግር", explanation: "የበረዶግግር የረጋ በረዶን ይወክላል።"),
            ExerciseItem(prompt: "“ቤተ” እና “ክርስቲያን” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["ቤተክርስቲያን", "ክርስቲያንቤት", "ሃይማኖት", "ቅዱስቦታ"], correctAnswer: "ቤተክርስቲያን", explanation: "“ቤተክርስቲያን” የክርስትና እምነት ተከታዮች የጸሎት ቦታ ነው።"),
            ExerciseItem(prompt: "“ቀን” እና “ሌሊት” ሲጣመሩ የሚሰጡት የጥምር ቃል ትርጉም ምንድን ነው?", options: ["ቀንናሌሊት", "የጊዜልኬት", "ጨለማ", "ብርሃን"], correctAnswer: "ቀንናሌሊት", explanation: "ቀንናሌሊት ሙሉውን 24 ሰዓት የሚገልጽ ጥምረት ነው።"),
            ExerciseItem(prompt: "“የወተት” እና “ላም” ሲጣመሩ ምን ይባላል?", options: ["የወተትላም", "ጥጃ", "ሳርበላ", "ወተትሰጪ"], correctAnswer: "የወተትላም", explanation: "ወተት የሚታለብባትን ላም ለመግለጽ የወተትላም ተብሎ ይጠራል።"),
            ExerciseItem(prompt: "“የስራ” እና “ባልደረባ” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የስራባልደረባ", "ሰራተኛ", "ደሞዝተኛ", "ስራአጥ"], correctAnswer: "የስራባልደረባ", explanation: "የስራባልደረባ አብሮ የሚሰራን ሰው ይገልጻል።"),
            ExerciseItem(prompt: "“መልካም” እና “ምኞት” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["መልካምምኞት", "ሰላምታ", "ስጦታ", "ደስታ"], correctAnswer: "መልካምምኞት", explanation: "መልካምምኞት ለሌላው መልካም ነገር መመኘትን ያሳያል።"),
            ExerciseItem(prompt: "“መነሻ” እና “ሰዓት” ሲጣመሩ የሚሰጡት ትርጉም ምንድን ነው?", options: ["መነሻሰዓት", "መድረሻ", "መንገድ", "ጉዞ"], correctAnswer: "መነሻሰዓት", explanation: "መነሻሰዓት የአንድ ጉዞ ወይም ክንውን መጀመሪያ ጊዜ ነው።"),
            ExerciseItem(prompt: "“የምግብ” እና “አሰራር” ሲጣመሩ ምን ይባላል?", options: ["የምግብአሰራር", "ወጥቤት", "ማብሰያ", "ምግብቤት"], correctAnswer: "የምግብአሰራር", explanation: "የምግብአሰራር ምግብ የሚዘጋጅበትን መንገድ ያሳያል።"),
            ExerciseItem(prompt: "“የእጅ” እና “ሰዓት” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የእጅሰዓት", "የግድግዳሰዓት", "ማንቂያ", "ዲጂታል"], correctAnswer: "የእጅሰዓት", explanation: "የእጅሰዓት በእጅ አንጓ ላይ የሚታሰር የጊዜ መለኪያ ነው።"),
            ExerciseItem(prompt: "“የቤት” እና “ስራ” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የቤትስራ", "ቢሮስራ", "ዕረፍት", "ጨዋታ"], correctAnswer: "የቤትስራ", explanation: "የቤትስራ ከትምህርት ቤት ወይም ከስራ ወደ ቤት ተወስዶ የሚሰራ ተግባር ነው።"),
            ExerciseItem(prompt: "“ባለ” እና “ስልጣን” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["ባለስልጣን", "ሰራተኛ", "ታዛዥ", "ነጻ"], correctAnswer: "ባለስልጣን", explanation: "ባለስልጣን የመወሰን ኃይል ያለው የሥራ መሪን ያሳያል።"),
            ExerciseItem(prompt: "“የልደት” እና “በዓል” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የልደትበዓል", "ልደት", "ፓርቲ", "ስጦታ"], correctAnswer: "የልደትበዓል", explanation: "የልደትበዓል የአንድ ሰው የተወለደበትን ቀን ማክበርን ያሳያል።"),
            ExerciseItem(prompt: "“የአየር” እና “ሁኔታ” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የአየርሁኔታ", "ነፋስ", "ዝናብ", "ጸሐይ"], correctAnswer: "የአየርሁኔታ", explanation: "የአየርሁኔታ የቀኑን ቅዝቃዜ ወይም ሙቀት ይገልጻል።"),
            ExerciseItem(prompt: "“የመኪና” እና “መንገድ” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የመኪናመንገድ", "የባቡርሀዲድ", "የእግር መንገድ", "አውራጎዳና"], correctAnswer: "የመኪናመንገድ", explanation: "የመኪናመንገድ ተሽከርካሪዎች የሚጓዙበት አስፋልት ነው።"),
            ExerciseItem(prompt: "“የውሃ” እና “ጉድጓድ” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የውሃጉድጓድ", "ምንጭ", "ሀይቅ", "ወንዝ"], correctAnswer: "የውሃጉድጓድ", explanation: "የውሃጉድጓድ ውሃ ለማውጣት በሰው የተቆፈረ ጥልቅ ጉድጓድ ነው።"),
            ExerciseItem(prompt: "“የልብስ” እና “ሳጥን” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["ቁምሳጥን", "ቁምሳጥን", "ሻንጣ", "ካቢኔ"], correctAnswer: "ቁምሳጥን", explanation: "ቁምሳጥን ልብሶችን በሥርዓት ሰቅሎ ለማስቀመጥ የሚያገለግል የቤት ዕቃ ነው።"),
            ExerciseItem(prompt: "“የፍራፍሬ” እና “ጭማቂ” ሲጣመሩ ምን ቃል ይፈጥራሉ?", options: ["የፍራፍሬጭማቂ", "ሎሚ", "ውሃ", "መጠጥ"], correctAnswer: "የፍራፍሬጭማቂ", explanation: "የፍራፍሬጭማቂ ከፍራፍሬዎች ተጨምቆ የሚዘጋጅ መጠጥ ነው።")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "Prefix and Suffix",
        instructions: "Choose the correct answer.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "“ቤቶች” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ኦች", "ቤት", "ዎች", "ቶች"], correctAnswer: "ኦች", explanation: "“ኦች” የሚለው ድህረ-ቅጥያ ቃሉን ብዙ ቁጥር ያደርገዋል።"),
            ExerciseItem(prompt: "“አልመጣም” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["አል", "መጣ", "ም", "ምጣ"], correctAnswer: "አል", explanation: "“አል” የሚለው ቅድመ-ቅጥያ በአሉታዊ ዓረፍተ ነገር ውስጥ ጥቅም ላይ ይውላል።"),
            ExerciseItem(prompt: "“ጸሐፊ” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ፊ", "ጸሐ", "ኢ", "ሐፊ"], correctAnswer: "ኢ", explanation: "“ኢ” የሚለው ድህረ-ቅጥያ የባለሙያ ወይም የድርጊት ፈጻሚነትን ያሳያል።"),
            ExerciseItem(prompt: "“መልካምነት” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ነት", "መል", "ካም", "ምነት"], correctAnswer: "ነት", explanation: "“ነት” የሚለው ድህረ-ቅጥያ ስምን ወደ ረቂቅ ባህሪነት ይቀይራል።"),
            ExerciseItem(prompt: "“ያልተጻፈ” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["ያል", "ተ", "ጻፈ", "ልተ"], correctAnswer: "ያል", explanation: "“ያል” የሚለው ቅድመ-ቅጥያ አለመከናወንን ያሳያል።"),
            ExerciseItem(prompt: "“መምህራን” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["አን", "መም", "ህር", "ራን"], correctAnswer: "አን", explanation: "“አን” የሚለው ድህረ-ቅጥያ ለብዙ ቁጥር ማሳያነት ያገለግላል።"),
            ExerciseItem(prompt: "“በፍጥነት” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["በ", "ፍጥነት", "ነት", "ጥነት"], correctAnswer: "በ", explanation: "“በ” ቅድመ-ቅጥያ ድርጊቱ እንዴት እንደተከናወነ ይገልጻል።"),
            ExerciseItem(prompt: "“ኢትዮጵያዊ” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ዊ", "ኢት", "ያዊ", "ዮጵያ"], correctAnswer: "ዊ", explanation: "“ዊ” የዜግነት ወይም የሀገር ተወላጅነት ማሳያ ድህረ-ቅጥያ ነው።"),
            ExerciseItem(prompt: "“ደህንነት” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ነት", "ደህ", "ንን", "ህንነት"], correctAnswer: "ነት", explanation: "“ነት” የሚለው ድህረ-ቅጥያ የሁኔታ ማሳያ ስም ይፈጥራል።"),
            ExerciseItem(prompt: "“ወንድማማቾች” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ኦች", "ወንድም", "አማ", "ማቾች"], correctAnswer: "ኦች", explanation: "“ኦች” የሚለው የብዙ ቁጥር ድህረ-ቅጥያ ነው።"),
            ExerciseItem(prompt: "“አስተማሪ” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["አስ", "ተማሪ", "ማሪ", "አስተ"], correctAnswer: "አስ", explanation: "“አስ” የድርጊት አድራጊነትን ወይም ማስተባበርን ያሳያል።"),
            ExerciseItem(prompt: "“እውነተኝነት” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ነት", "እውነት", "ተኛ", "ኝነት"], correctAnswer: "ነት", explanation: "“ነት” ባህሪን የሚገልጽ ድህረ-ቅጥያ ነው።"),
            ExerciseItem(prompt: "“ለመሄድ” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["ለ", "መ", "ሄድ", "እድ"], correctAnswer: "ለ", explanation: "“ለ” ዓላማን ወይም ግብን የሚያሳይ ቅድመ-ቅጥያ ነው።"),
            ExerciseItem(prompt: "“ታሪክኛ” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ኛ", "ታሪክ", "ሪክ", "ክኛ"], correctAnswer: "ኛ", explanation: "“ኛ” የሚለው ድህረ-ቅጥያ ተዛማጅነትን ያሳያል።"),
            ExerciseItem(prompt: "“አንባቢ” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ኢ", "አን", "ባቢ", "ባቢው"], correctAnswer: "ኢ", explanation: "“ኢ” ድርጊትን ፈጻሚን የሚገልጽ ድህረ-ቅጥያ ነው።"),
            ExerciseItem(prompt: "“እንደመጣ” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["እንደ", "መጣ", "ደመ", "እንድ"], correctAnswer: "እንደ", explanation: "“እንደ” የድርጊትን ተመሳሳይነት ወይም ሁኔታ ያሳያል።"),
            ExerciseItem(prompt: "“ደራሲያን” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["አን", "ደራስ", "ያን", "ሲያን"], correctAnswer: "አን", explanation: "“አን” ብዙ ቁጥርን ለማሳየት ያገለግላል።"),
            ExerciseItem(prompt: "“ከቤት” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["ከ", "ቤት", "እቤት", "ከቤ"], correctAnswer: "ከ", explanation: "“ከ” መነሻን ወይም አቅጣጫን የሚያሳይ ቅድመ-ቅጥያ ነው።"),
            ExerciseItem(prompt: "“ጥበበኛ” በሚለው ቃል ውስጥ ድህረ-ቅጥያው ___ ነው።", options: ["ኛ", "ጥበብ", "በኛ", "በኛዊ"], correctAnswer: "ኛ", explanation: "“ኛ” ሙያተኛን ወይም ባለቤትነትን ያሳያል።"),
            ExerciseItem(prompt: "“ሳይናገር” በሚለው ቃል ውስጥ ቅድመ-ቅጥያው ___ ነው።", options: ["ሳይ", "ናገር", "ይና", "ገር"], correctAnswer: "ሳይ", explanation: "“ሳይ” አንድ ነገር ሳይከናወን መቅረቱን ያሳያል።")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "Story Recall",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "አልማዝ የጠፋባትን ሰነድ የት ነው ያገኘችው?", options: ["በመኪናዋ ውስጥ", "በመኝታ ክፍሏ መደርደሪያ ላይ", "በሳሎን ጠረጴዛ ስር", "በኩሽና ካቢኔ ውስጥ"], correctAnswer: "በመኝታ ክፍሏ መደርደሪያ ላይ", explanation: "ታሪኩ እንደሚለው አልማዝ የጠፋባትን ሰነድ ያገኘችው በመኝታ ክፍሏ መደርደሪያ ላይ ነው።", passage: "አልማዝ ወደ ሎስ አንጀለስ የኢሚግሬሽን ቢሮ ለመሄድ ስትዘጋጅ አስፈላጊ ሰነድ ጠፋባት። ቤቱን በሙሉ ካሰሰች በኋላ ሰነዱን በመኝታ ክፍሏ መደርደሪያ ላይ አገኘችው። ከዚያም በሰላም ጉዞዋን ቀጠለች።"),
            ExerciseItem(prompt: "በቀለ የቀጠሮ ወረቀቱን የት ነበር የረሳው?", options: ["በመኪናው መቀመጫ ላይ", "በመመገቢያ ጠረጴዛው ላይ", "በጃኬቱ ኪስ ውስጥ", "በመታጠቢያ ቤት ውስጥ"], correctAnswer: "በመመገቢያ ጠረጴዛው ላይ", explanation: "ታሪኩ በቀለ ወረቀቱን በመመገቢያ ጠረጴዛው ላይ እንደረሳው ይገልጻል።", passage: "በቀለ ለዓመታዊ የጤና ምርመራ ወደ ሆስፒታል ሊሄድ ሲል የቀጠሮ ወረቀቱን በመመገቢያ ጠረጴዛው ላይ ረሳው። ሆስፒታል ደርሶ ሰዓቱን ለማረጋገጥ ሲፈልግ ወረቀቱ ባለመኖሩ ወደ ቤት ተመልሶ ወሰደው።"),
            ExerciseItem(prompt: "ዮሴፍ የአትክልት ስፍራውን ለማጠጣት የተጠቀመው ምንድን ነው?", options: ["ባልዲ", "አውቶማቲክ ረጭ ማሽን", "የውሃ ቧንቧ", "የዝናብ ውሃ"], correctAnswer: "የውሃ ቧንቧ", explanation: "ታሪኩ ዮሴፍ አትክልቱን ያጠጣው በረጅሙ የውሃ ቧንቧ መሆኑን ይገልጻል።", passage: "ዮሴፍ በካሊፎርኒያ የበጋ ሙቀት ወቅት የአትክልት ስፍራውን ለመንከባከብ ወሰነ። ጠዋት ማለዳ ተነስቶ በረጅሙ የውሃ ቧንቧ አትክልቶቹን በሙሉ አጠጣ። አበቦቹም ደምቀው ታዩ።"),
            ExerciseItem(prompt: "ዮናስ በሱፐርማርኬት የረሳው ዕቃ ምንድን ነው?", options: ["የመኪና ቁልፉን", "የገዛውን ወተት", "የኪስ ቦርሳውን", "ሞባይሉን"], correctAnswer: "የኪስ ቦርሳውን", explanation: "ታሪኩ ዮናስ የኪስ ቦርሳውን በቼክአውት ጠረጴዛው ላይ እንደረሳው ይገልጻል።", passage: "ዮናስ ለበዓል የሚሆኑ ግሮሰሪዎችን ለመግዛት ወደ ሱቅ ሄደ። ሂሳብ ከፍሎ ሲያበቃ የኪስ ቦርሳውን በቼክአውት ጠረጴዛው ላይ ረሳው። ሠራተኛዋ ተከትላው በመምጣት ቦርሳውን መለሰችለት።"),
            ExerciseItem(prompt: "ወይዘሮ ዘነበች ከኢትዮጵያ የመጣውን ጥቅል ዕቃ የተቀበሉት መቼ ነው?", options: ["ከሰኞ ጠዋት", "ማክሰኞ ከሰዓት", "ሐሙስ ማታ", "ዓርብ ማለዳ"], correctAnswer: "ማክሰኞ ከሰዓት", explanation: "ታሪኩ ጥቅል ዕቃው ማክሰኞ ከሰዓት በደጃቸው ላይ መድረሱን ይገልጻል።", passage: "ወይዘሮ ዘነበች ከኢትዮጵያ የሚመጣላቸውን ቅመማ ቅመም በጉጉት ይጠብቁ ነበር። ማክሰኞ ከሰዓት የፖስታ ሰራተኛው ጥቅል ዕቃውን በደጃቸው ላይ አስቀመጠው። ወዲያውኑ ወጥ ለመሥራት ሽንኩርት መክተፍ ጀመሩ።"),
            ExerciseItem(prompt: "ሚካኤል በመኪናው መንገድ ላይ ምን አጋጠመው?", options: ["ከባድ በረዶ", "የትራፊክ መጨናነቅ", "የጎማ መተንፈስ", "ነዳጅ ማለቅ"], correctAnswer: "የትራፊክ መጨናነቅ", explanation: "ታሪኩ በሚካኤል መንገድ ላይ ከባድ የትራፊክ መጨናነቅ እንደነበረ ይገልጻል።", passage: "ሚካኤል ወደ ሳን ሆዜ ለስብሰባ በመጓዝ ላይ ሳለ በመንገዱ ላይ ከባድ የትራፊክ መጨናነቅ አጋጠመው። በስልክ ለባልደረባው ደውሎ አርባ ደቂቃ ያህል እንደሚዘገይ አሳወቀ።"),
            ExerciseItem(prompt: "ወይዘሮ አስቴር በመድኃኒት ማከፋፈያ ክፍል ምን ጠየቁ?", options: ["አዲስ መነጽር", "የዓይን ጠብታ", "የደም ግፊት ክኒን", "የሳል ማስታገሻ"], correctAnswer: "የደም ግፊት ክኒን", explanation: "ታሪኩ ወይዘሮ አስቴር የደም ግፊት ክኒናቸውን ለመውሰድ እንደሄዱ ይገልጻል።", passage: "ወይዘሮ አስቴር የደም ግፊት ክኒናቸው ሊያልቅባቸው ስለነበር ወደ ፋርማሲ ሄዱ። የፋርማሲ ባለሙያው አዲሱን መመሪያ ካስረዳቸው በኋላ መድኃኒቱን ሰጣቸው።"),
            ExerciseItem(prompt: "ዳዊት የልጅ ልጁን የት ነው የወሰደው?", options: ["ወደ እንስሳት መካነ አራዊት", "ወደ እግር ኳስ ሜዳ", "ወደ ካሊፎርኒያ የሳይንስ ሙዚየም", "ወደ መጫወቻ ፓርክ"], correctAnswer: "ወደ ካሊፎርኒያ የሳይንስ ሙዚየም", explanation: "ታሪኩ ዳዊት የልጅ ልጁን ወደ ካሊፎርኒያ የሳይንስ ሙዚየም እንደወሰደው ይገልጻል።", passage: "ዳዊት የልጅ ልጁን ቅዳሜ እለት ለማስደሰት ወሰነ። አብረው በመሆን ወደ ካሊፎርኒያ የሳይንስ ሙዚየም በመሄድ አስደናቂ ነገሮችን ተመለከቱ። ከዚያም አይስክሬም ገዝተው በልተው ተመለሱ።"),
            ExerciseItem(prompt: "ፀሐይ በአዲሱ ግቢያቸው ውስጥ የተከለችው ምንድን ነው?", options: ["የበለስ ዛፍ", "የእርግብ አዝመራ", "የሎሚ ተክል", "የጽጌረዳ አበባ"], correctAnswer: "የሎሚ ተክል", explanation: "ታሪኩ ፀሐይ በግቢያቸው ውስጥ የሎሚ ተክል እንደተከለች ይገልጻል።", passage: "ፀሐይ ወደ አዲሱ መኖሪያ ቤታቸው ከገቡ በኋላ ግቢውን ለማስዋብ አሰቡ። ፀሐያማ በሆነው ጥግ ላይ አንድ የሎሚ ተክል ተከሉና በየቀኑ ውኃ ማጠጣት ጀመሩ።"),
            ExerciseItem(prompt: "ሰለሞን አዲስ አበባ ውስጥ በሚገኘው የድሮ ቤታቸው ምን ረሳ?", options: ["የሰርግ ፎቶውን", "የድሮ ማስታወሻ ደብተሩን", "ቁልፉን", "ሰዓቱን"], correctAnswer: "የድሮ ማስታወሻ ደብተሩን", explanation: "ታሪኩ ሰለሞን የድሮ ማስታወሻ ደብተሩን በሳጥን ውስጥ እንደረሳው ይገልጻል።", passage: "ሰለሞን ከብዙ ዓመታት በኋላ ወደ አሮጌው ቤታቸው ተመልሶ ሄደ። እቃዎችን ሲያስተካክል የድሮ ማስታወሻ ደብተሩን በአንድ የእንጨት ሳጥን ውስጥ አገኘው። ማስታወሻውን ሲያነብ የልጅነት ትዝታው ተመለሰለት።"),
            ExerciseItem(prompt: "ወይዘሮ ማርታ ለሰንበት ግብዣ ምን አዘጋጁ?", options: ["የበግ ወጥ እና ጠብስ", "የዶሮ ወጥ እና እንጀራ", "አትክልት ወጥ", "የዓሳ ጥብስ"], correctAnswer: "የዶሮ ወጥ እና እንጀራ", explanation: "ታሪኩ ማርታ የዶሮ ወጥ እና እንጀራ ለግብዣ እንደጋበዙ ይገልጻል።", passage: "ወይዘሮ ማርታ የቤተሰብ አባላትን ለሰንበት ምሳ ግብዣ ጠሩ። ጠዋቱን ሙሉ ሲደክሙ ውለው ጣፋጭ የዶሮ ወጥ እና እንጀራ አዘጋጁ። ሁሉም በደስታ ተመገቡ።"),
            ExerciseItem(prompt: "ሳሙኤል የጠፋውን ድመት የት አገኘው?", options: ["በጎረቤት ግቢ ዛፍ ላይ", "በመኪናው ስር", "በሶፋው ጀርባ", "በሳጥን ውስጥ"], correctAnswer: "በጎረቤት ግቢ ዛፍ ላይ", explanation: "ታሪኩ ሳሙኤል የጠፋውን ድመት በጎረቤት ግቢ ዛፍ ላይ እንዳገኘው ይገልጻል።", passage: "ሳሙኤል ተወዳጅ ድመቱ ጠዋት ላይ ጠፋችበት። ሰፈር ውስጥ ስሟን እየጠራ ሲፈልግ ቆይቶ በመጨረሻ በጎረቤት ግቢ ዛፍ ላይ ተቀምጣ አገኛት። በምግብ አባብሎ አወረዳት።"),
            ExerciseItem(prompt: "ሊዲያ በሎስ አንጀለስ ቤተ መጻሕፍት የተዋሰችው መጽሐፍ ምን ዓይነት ነበር?", options: ["ስለ ምግብ አሰራር", "የታሪክ መጽሐፍ", "ስለ አትክልት እንክብካቤ", "ልብ ወለድ መጽሐፍ"], correctAnswer: "የታሪክ መጽሐፍ", explanation: "ታሪኩ ሊዲያ የታሪክ መጽሐፍ እንደተዋሰች ይገልጻል።", passage: "ሊዲያ በሎስ አንጀለስ የሕዝብ ቤተ መጻሕፍት ውስጥ ለጥናት የሚሆናት የታሪክ መጽሐፍ ተዋሰች። ለሁለት ሳምንታት አንብባ ካጠናቀቀች በኋላ መጽሐፉን በጊዜው መለሰች።"),
            ExerciseItem(prompt: "ተስፋዬ በ DMV ሠራተኛ የተሰጠው ሰነድ ምንድን ነው?", options: ["ጊዜያዊ የመንዳት ፈቃድ", "የመኪና ታርጋ", "የቀጠሮ ማረጋገጫ", "የክፍያ ደረሰኝ"], correctAnswer: "ጊዜያዊ የመንዳት ፈቃድ", explanation: "ታሪኩ ተስፋዬ ጊዜያዊ የመንዳት ፈቃድ እንደተሰጠው ይገልጻል።", passage: "ተስፋዬ የመንዳት ፈቃዱን ለማደስ ወደ DMV ሄደ። ረጅም ሰዓት ተራ ጠብቆ የዓይን ምርመራውን ካለፈ በኋላ ሠራተኛው ጊዜያዊ የመንዳት ፈቃድ ወረቀት ሰጠው።"),
            ExerciseItem(prompt: "ወይዘሮ አልማዝ የልጅ ልጇን ልደት ለማክበር ምን ገዛችላት?", options: ["የወርቅ ቀለበት", "አዲስ ልብስ", "የእንጨት መጫወቻ", "ቀይ ጃንጥላ"], correctAnswer: "አዲስ ልብስ", explanation: "ታሪኩ ወይዘሮ አልማዝ ለልጅ ልጃቸው አዲስ ልብስ እንደገዙላት ይገልጻል።", passage: "ወይዘሮ አልማዝ የልጅ ልጃቸው ሰባተኛ ዓመት ልደትን ለማክበር ወደ መደብር ሄዱ። በጣም የሚያምር አዲስ ልብስ ገዝተው በስጦታ ወረቀት አሽገው ሰጧት። እሷም በጣም ተደሰተች።")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Number Sequences",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 2, 5, 8, 11፥ ___", options: ["14", "15", "13", "16"], correctAnswer: "14", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 4, 8, 12, 16፥ ___", options: ["20", "21", "19", "22"], correctAnswer: "20", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 6, 8, 10, 12፥ ___", options: ["14", "15", "13", "16"], correctAnswer: "14", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 2 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 8, 11, 14, 17፥ ___", options: ["20", "21", "19", "22"], correctAnswer: "20", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 10, 14, 18, 22፥ ___", options: ["26", "27", "25", "28"], correctAnswer: "26", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 12, 14, 16, 18፥ ___", options: ["20", "21", "19", "22"], correctAnswer: "20", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 2 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 14, 17, 20, 23፥ ___", options: ["26", "27", "25", "28"], correctAnswer: "26", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 16, 20, 24, 28፥ ___", options: ["32", "33", "31", "34"], correctAnswer: "32", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 18, 20, 22, 24፥ ___", options: ["26", "27", "25", "28"], correctAnswer: "26", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 2 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 20, 23, 26, 29፥ ___", options: ["32", "33", "31", "34"], correctAnswer: "32", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 22, 26, 30, 34፥ ___", options: ["38", "39", "37", "40"], correctAnswer: "38", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 24, 26, 28, 30፥ ___", options: ["32", "33", "31", "34"], correctAnswer: "32", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 2 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 26, 29, 32, 35፥ ___", options: ["38", "39", "37", "40"], correctAnswer: "38", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 28, 32, 36, 40፥ ___", options: ["44", "45", "43", "46"], correctAnswer: "44", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 30, 32, 34, 36፥ ___", options: ["38", "39", "37", "40"], correctAnswer: "38", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 2 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 32, 35, 38, 41፥ ___", options: ["44", "45", "43", "46"], correctAnswer: "44", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 34, 38, 42, 46፥ ___", options: ["50", "51", "49", "52"], correctAnswer: "50", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 36, 38, 40, 42፥ ___", options: ["44", "45", "43", "46"], correctAnswer: "44", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 2 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 38, 41, 44, 47፥ ___", options: ["50", "51", "49", "52"], correctAnswer: "50", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 3 በመጨመር የተገኘ ነው።"),
            ExerciseItem(prompt: "ይህንን የቁጥር ቅደም ተከተል የሚያጠናቅቀው ቁጥር የትኛው ነው? ፦ 40, 44, 48, 52፥ ___", options: ["56", "57", "55", "58"], correctAnswer: "56", explanation: "እያንዳንዱ ቁጥር በቀደመው ላይ 4 በመጨመር የተገኘ ነው።")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Cause and Effect",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "በሎስ አንጀለስ ከባድ የበጋ ሙቀት በመኖሩ ምክንያት", options: ["ሰዎች አየር ማቀዝቀዣዎችን በብዛት ተጠቀሙ።", "ሰዎች ጃኬት ለበሱ።", "ወንዞች በረዶ ሆኑ።", "መንገዶች ተዘጉ።"], correctAnswer: "ሰዎች አየር ማቀዝቀዣዎችን በብዛት ተጠቀሙ።", explanation: "ሙቀት አየር ማቀዝቀዣ አጠቃቀምን ይጨምራል።"),
            ExerciseItem(prompt: "መብራት በድንገት በመጥፋቱ ምክንያት", options: ["ቤቱ በሙሉ ጨለመና ሻማዎች በርተዋል።", "ቴሌቪዥኑ መሥራት ጀመረ።", "ምድጃው በጣም ቀዘቀዘ።", "አየር ማቀዝቀዣው በረታ።"], correctAnswer: "ቤቱ በሙሉ ጨለመና ሻማዎች በርተዋል።", explanation: "መብራት መጥፋት ጨለማን ስለሚፈጥር ሻማ ያስፈልጋል።"),
            ExerciseItem(prompt: "ቧንቧው ባለመዘጋቱ ምክንያት", options: ["በኩሽናው ወለል ላይ ውሃ ፈሰሰ።", "ውሃው ሙሉ በሙሉ ደረቀ።", "ቧንቧው ራሱ ተጠገነ።", "ግድግዳው ይበልጥ ደመቀ።"], correctAnswer: "በኩሽናው ወለል ላይ ውሃ ፈሰሰ።", explanation: "ቧንቧ ሳይዘጋ ሲቀር የውሃ መፍሰስ ይከሰታል።"),
            ExerciseItem(prompt: "የመኪናው ነዳጅ በማለቁ ምክንያት", options: ["መኪናው መንቀሳቀስ አቅቶት ቆመ።", "ፍጥነቱ በጣም ጨመረ።", "የፊት መብራቱ በርቷል።", "ጎማው ተፈነዳ።"], correctAnswer: "መኪናው መንቀሳቀስ አቅቶት ቆመ።", explanation: "ነዳጅ ከሌለ ሞተር ሊሠራ አይችልም።"),
            ExerciseItem(prompt: "የ DMV ቀጠሮውን ባለማክበሩ ምክንያት", options: ["ፈቃዱን ለማደስ ሌላ ቀን ቀጠረ።", "ፈቃዱ ወዲያውኑ ታደሰለት።", "DMA ፈቃዱን ሰረዘው።", "ነፃ መኪና ተሰጠው።"], correctAnswer: "ፈቃዱን ለማደስ ሌላ ቀን ቀጠረ።", explanation: "ቀጠሮ ማሳለፍ ሌላ ቀን ቀጠሮ ማስያዝን ይጠይቃል።"),
            ExerciseItem(prompt: "የመኝታ ሰዓት ስለደረሰ ምክንያት", options: ["መብራቶቹን አጥፍቶ ወደ አልጋ ሄደ።", "ቡና ማፍላት ጀመረ።", "ወደ ውጭ ለመሮጥ ወጣ።", "ስራውን በንቃት ቀጠለ።"], correctAnswer: "መብራቶቹን አጥፍቶ ወደ አልጋ ሄደ።", explanation: "ሌሊት መኝታ ሰዓት ላይ መብራት አጥፍቶ መተኛት የተለመደ ነው።"),
            ExerciseItem(prompt: "እህሉን በምጣድ ላይ በመቁላቱ ምክንያት", options: ["ጣፋጭ ቆሎ ለሻይ ተዘጋጀ።", "እህሉ ወደ ዱቄትነት ተቀየረ።", "ውሃው በከፍተኛ ሁኔታ ፈላ።", "ምጣዱ ሙሉ በሙሉ ተሰበረ።"], correctAnswer: "ጣፋጭ ቆሎ ለሻይ ተዘጋጀ።", explanation: "እህል መቁላት ቆሎን ለማዘጋጀት የሚደረግ ተግባር ነው።"),
            ExerciseItem(prompt: "የልብስ ማጠቢያ ማሽኑ ስለተበላሸ ምክንያት", options: ["ልብሶቹን በእጁ ለማጠብ ተገደደ።", "ልብሶቹ በራሳቸው ጸዱ።", "ማሽኑ ውሃ መቅዳት ጀመረ።", "ልብሶቹ ወዲያውኑ ደረቁ።"], correctAnswer: "ልብሶቹን በእጁ ለማጠብ ተገደደ።", explanation: "ማሽን ሲበላሽ አማራጩ በእጅ ማጠብ ነው።"),
            ExerciseItem(prompt: "ስልኩ ባትሪው ስላለቀበት ምክንያት", options: ["ማንም ሊደውልለት አልቻለም።", "ስልኩ መብራት ጀመረ።", "መልዕክቶች በፍጥነት ደረሱ።", "ድምፁ በጣም ጎላ።"], correctAnswer: "ማንም ሊደውልለት አልቻለም።", explanation: "ባትሪው ያለቀበት ስልክ ሊሠራ አይችልም።"),
            ExerciseItem(prompt: "የበረዶ ማዕበል በመምጣቱ ምክንያት", options: ["ሰዎች ከቤት ሳይወጡ በሙቀት ቆዩ።", "ሰዎች ወደ ዋና ባህር ሄዱ።", "መስኮቶቹን በሙሉ ከፈቱ።", "አትክልቶችን መትከል ጀመሩ።"], correctAnswer: "ሰዎች ከቤት ሳይወጡ በሙቀት ቆዩ።", explanation: "በበረዶ ወቅት በቤት ውስጥ መቆየት ከቅዝቃዜ ይጠብቃል።"),
            ExerciseItem(prompt: "መነጽሩን በመርሳቱ ምክንያት", options: ["ጋዜጣውን ማንበብ አልቻለም።", "ማየት በጣም ቀላል ሆነለት።", "ፊደላቱ ይበልጥ ጎሉለት።", "መነጽሩ በራሱ ተገኘ።"], correctAnswer: "ጋዜጣውን ማንበብ አልቻለም።", explanation: "መነጽር መርሳት ንባብን አስቸጋሪ ያደርገዋል።"),
            ExerciseItem(prompt: "የዶሮ ወጥ በቅመም በመሰራቱ ምክንያት", options: ["በጣም የሚጣፍጥ እራት ሆነ።", "ምግቡ ሙሉ በሙሉ ተበላሸ።", "ወጡ በጣም ቀዘቀዘ።", "የወጥ ሰሃኑ ተሰበረ።"], correctAnswer: "በጣም የሚጣፍጥ እራት ሆነ።", explanation: "ቅመማ ቅመም የምግብን ጣዕም ያሻሽላል።"),
            ExerciseItem(prompt: "መድኃኒቱን በሰዓቱ በመውሰዷ ምክንያት", options: ["የደም ግፊቷ ተስተካክሎ ተረጋጋ።", "ሕመሙ በጣም ተባባሰ።", "መድኃኒቱ አልሰራም።", "ዶክተሯን አስቆጣች።"], correctAnswer: "የደም ግፊቷ ተስተካክሎ ተረጋጋ።", explanation: "መድኃኒትን በሰዓቱ መውሰድ ጤናን ያረጋጋል።"),
            ExerciseItem(prompt: "ቁልፉን መኪና ውስጥ ስለቆለፈበት ምክንያት", options: ["ቁልፍ ቆራጭ ባለሙያ መጥራት ነበረበት።", "በሩ በራሱ ተከፈተ።", "መኪናውን መንዳት ጀመረ።", "ቁልፉ በኪሱ ውስጥ ተገኘ።"], correctAnswer: "ቁልፍ ቆራጭ ባለሙያ መጥራት ነበረበት።", explanation: "ቁልፍ ሲቆለፍብን የባለሙያ እርዳታ ያስፈልጋል።"),
            ExerciseItem(prompt: "የ DMV መስመር በጣም ረጅም በመሆኑ ምክንያት", options: ["የመንዳት ፈቃዱን ለማግኘት ሰዓታት ፈጀበት።", "ፈቃዱን በአምስት ደቂቃ አገኘ።", "ወዲያውኑ ወደ ቤት ተመለሰ።", "የ DMV ፈተናው ተሰረዘ።"], correctAnswer: "የመንዳት ፈቃዱን ለማግኘት ሰዓታት ፈጀበት።", explanation: "ረጅም መስመር መጠበቅ ጊዜን ይወስዳል።")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "What Emotion Is This?",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "የልጅ ልጅህ ሰርተፊኬት ይዛ ስትመጣ የሚሰማህ ስሜት", options: ["ኩራት", "ሐዘን", "ፍርሃት", "ንዴት"], correctAnswer: "ኩራት", explanation: "የልጅ ልጅ ስኬት ኩራትንና ደስታን ያመጣል።"),
            ExerciseItem(prompt: "የቀጠሮ ቀንህን በመርሳትህ ምክንያት መዝገብህ ሲሰረዝ የሚሰማህ ስሜት", options: ["ንዴት", "ደስታ", "እፎይታ", "ኩራት"], correctAnswer: "ንዴት", explanation: "ቀጠሮ ማጣትና መዝገብ መሰረዝ ንዴትን ይፈጥራል።"),
            ExerciseItem(prompt: "በምሽት በቤትህ ውስጥ እንግዳ ድምፅ ስትሰማ የሚሰማህ ስሜት", options: ["ፍርሃት", "ደስታ", "ኩራት", "ሰላም"], correctAnswer: "ፍርሃት", explanation: "ያልታወቀ ድምፅ ፍርሃት ሊፈጥር ይችላል።"),
            ExerciseItem(prompt: "የቅርብ ጓደኛህ ወደ ሌላ ሀገር ሲሄድ የሚሰማህ ስሜት", options: ["ሐዘን", "ኩራት", "ንዴት", "እፎይታ"], correctAnswer: "ሐዘን", explanation: "የወዳጅ መለየት ሐዘንን ያስከትላል።"),
            ExerciseItem(prompt: "የ DMV ፈተናህን በተሳካ ሁኔታ ስታልፍ የሚሰማህ ስሜት", options: ["ደስታ", "ፍርሃት", "ሐዘን", "ንዴት"], correctAnswer: "ደስታ", explanation: "ፈተና ማለፍ ከፍተኛ ደስታን ይሰጣል።"),
            ExerciseItem(prompt: "የጠፋው የቤት እንስሳህ ደህና ሆኖ ሲመለስ የሚሰማህ ስሜት", options: ["እፎይታ", "ፍርሃት", "ሐዘን", "ንዴት"], correctAnswer: "እፎይታ", explanation: "የጠፋ እንስሳ መመለስ እፎይታን ይሰጣል።"),
            ExerciseItem(prompt: "ለረጅም ጊዜ ያላየኸውን ወንድምህን በአውሮፕላን ማረፊያ ስታገኘው የሚሰማህ ስሜት", options: ["ደስታ", "ንዴት", "ፍርሃት", "ሐዘን"], correctAnswer: "ደስታ", explanation: "የናፈቁትን ዘመድ ማግኘት ትልቅ ደስታን ያመጣል።"),
            ExerciseItem(prompt: "በሥራ ቦታህ ላይ ሌላ ሰው ጥፋቱን በአንተ ላይ ሲያሳብብ የሚሰማህ ስሜት", options: ["ንዴት", "እፎይታ", "ደስታ", "ሐዘን"], correctAnswer: "ንዴት", explanation: "ያለጥፋት መወንጀል ንዴትን ይፈጥራል።"),
            ExerciseItem(prompt: "ዶክተርህ የጤና ምርመራህ ሙሉ በሙሉ ደህና መሆኑን ሲነግርህ የሚሰማህ ስሜት", options: ["እፎይታ", "ፍርሃት", "ንዴት", "ሐዘን"], correctAnswer: "እፎይታ", explanation: "ጥሩ የጤና ወሬ መስማት ጭንቀትን ያቃልላል።"),
            ExerciseItem(prompt: "በጣም የምትወደው ሳህን ወድቆ ሲሰበር የሚሰማህ ስሜት", options: ["ሐዘን", "ደስታ", "ኩራት", "እፎይታ"], correctAnswer: "ሐዘን", explanation: "የሚወዱት ዕቃ መሰበር ሐዘንን ይፈጥራል።"),
            ExerciseItem(prompt: "ሰዎች ያለህን መልካም ባሕርይ እያነሱ ሲያደንቁህ የሚሰማህ ስሜት", options: ["ኩራት", "ፍርሃት", "ንዴት", "ሐዘን"], correctAnswer: "ኩራት", explanation: "ምስጋና ማግኘት ኩራትን ያመጣል።"),
            ExerciseItem(prompt: "በመንገድ ላይ ስትሄድ ትልቅ ውሻ ወደ አንተ ሲሮጥ የሚሰማህ ስሜት", options: ["ፍርሃት", "ደስታ", "እፎይታ", "ኩራት"], correctAnswer: "ፍርሃት", explanation: "የእንስሳት ጥቃት አደጋ ፍርሃት ይፈጥራል።"),
            ExerciseItem(prompt: "አዲስ ቋንቋ ለመማር ስትሞክር የሚሰማህ ስሜት", options: ["ተስፋ", "ሐዘን", "ንዴት", "ፍርሃት"], correctAnswer: "ተስፋ", explanation: "አዲስ ነገር መጀመር ተስፋን ይሰጣል።"),
            ExerciseItem(prompt: "በጣም የደከመህ እለት አልጋህ ላይ ስትተኛ የሚሰማህ ስሜት", options: ["እፎይታ", "ንዴት", "ፍርሃት", "ኩራት"], correctAnswer: "እፎይታ", explanation: "ከድካም በኋላ መተኛት እፎይታን ይሰጣል።"),
            ExerciseItem(prompt: "ልጅህ በጣም በሚያምር ውጤት ኮሌጅ ሲመረቅ የሚሰማህ ስሜት", options: ["ኩራት", "ሐዘን", "ንዴት", "ፍርሃት"], correctAnswer: "ኩራት", explanation: "የልጅ መመረቅ የወላጅ ኩራት ነው።"),
            ExerciseItem(prompt: "የመኪናህ ጎማ መንገድ ላይ በድንገት ሲፈነዳ የሚሰማህ ስሜት", options: ["ንዴት", "ደስታ", "እፎይታ", "ኩራት"], correctAnswer: "ንዴት", explanation: "ጉዞ ላይ የአደጋ መከሰት ንዴትን ይፈጥራል።"),
            ExerciseItem(prompt: "የ DMV ቀጠሮህ በሰዓቱ ተጀምሮ በፍጥነት ሲጠናቀቅ የሚሰማህ ስሜት", options: ["ደስታ", "ሐዘን", "ፍርሃት", "ንዴት"], correctAnswer: "ደስታ", explanation: "ቀልጣፋ አገልግሎት ማግኘት ያስደስታል።"),
            ExerciseItem(prompt: "በቤትህ ውስጥ በሰላም ተቀምጠህ ጸሎት ስታደርግ የሚሰማህ ስሜት", options: ["ሰላም", "ንዴት", "ፍርሃት", "ሐዘን"], correctAnswer: "ሰላም", explanation: "ጸሎትና ጸጥታ ውስጣዊ ሰላምን ይሰጣል።"),
            ExerciseItem(prompt: "አንድ ሰው በጣም ጠቃሚ የሆነ ዕቃ በስጦታ ሲሰጥህ የሚሰማህ ስሜት", options: ["ደስታ", "ንዴት", "ፍርሃት", "ሐዘን"], correctAnswer: "ደስታ", explanation: "ስጦታ መቀበል ደስታን ያመጣል።"),
            ExerciseItem(prompt: "የቤትህ የውሃ ቧንቧ ተበላሽቶ ቤቱ ሲጎርፍ የሚሰማህ ስሜት", options: ["ጭንቀት", "እፎይታ", "ኩራት", "ደስታ"], correctAnswer: "ጭንቀት", explanation: "የቤት መጎርጎር ጭንቀት ይፈጥራል።")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here?
    private static let exercise10 = Exercise(
        title: "What’s Wrong Here?",
        instructions: "Choose the correct answer.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "አንድ ሰው ዝናብ እየዘነበ በመሆኑ ምክንያት የፀሐይ መነጽር አደረገ።", options: ["ዝናብ ላይ የፀሐይ መነጽር ማድረግ ስህተት ነው።", "ዝናብ ላይ ኮት መልበስ ስህተት ነው።", "ጃንጥላ መያዝ ስህተት ነው።", "ቤት ውስጥ መቆየት ስህተት ነው።"], correctAnswer: "ዝናብ ላይ የፀሐይ መነጽር ማድረግ ስህተት ነው።", explanation: "ዝናብ በሚዘንብበት ጊዜ የፀሐይ ብርሃን ስለማይኖር መነጽር አያስፈልግም።"),
            ExerciseItem(prompt: "ቡናውን ለማቀዝቀዝ ሲል በፈላ ውሃ ውስጥ ጨመረው።", options: ["የፈላ ውሃ ቡናን አያቀዘቅዝም።", "ሲኒ መጠቀም ስህተት ነው።", "ስኳር መጨመር ስህተት ነው።", "ቡና መጠጣት ስህተት ነው።"], correctAnswer: "የፈላ ውሃ ቡናን አያቀዘቅዝም።", explanation: "የፈላ ውሃ ሙቀትን ስለሚጨምር ለማቀዝቀዝ አይረዳም።"),
            ExerciseItem(prompt: "በቀለ መነጽሩን ጠረጴዛ ላይ አድርጎ ጋዜጣውን በደንብ አነበበ።", options: ["መነጽር ሳያደርግ ጋዜጣ አነበበ መባሉ ስህተት ነው።", "ጋዜጣ መግዛቱ ስህተት ነው።", "ጠረጴዛ መጠቀም ስህተት ነው።", "ማንበብ መቻሉ ስህተት ነው።"], correctAnswer: "መነጽር ሳያደርግ ጋዜጣ አነበበ መባሉ ስህተት ነው።", explanation: "መነጽሩ ጠረጴዛ ላይ ከሆነ እያነበበ ሊሆን አይችልም።"),
            ExerciseItem(prompt: "መኪናው ነዳጅ ስለሌለው ተሽከርካሪው በፍጥነት መጓዝ ጀመረ።", options: ["ነዳጅ የሌለው መኪና ሊጓዝ አይችልም።", "ፍጥነት መጨመሩ ስህተት ነው።", "መኪናው መቆሙ ስህተት ነው።", "ነዳጅ መሙላቱ ስህተት ነው።"], correctAnswer: "ነዳጅ የሌለው መኪና ሊጓዝ አይችልም።", explanation: "ነዳጅ ከሌለ ሞተሩ ስለማይሠራ መኪናው አይንቀሳቀስም።"),
            ExerciseItem(prompt: "አልማዝ እራቷን ከበላች በኋላ ምግቡን ማብሰል ጀመረች።", options: ["ከበሉ በኋላ ማብሰል ስህተት ነው።", "እራት መብላት ስህተት ነው።", "ማብሰል መቻል ስህተት ነው።", "ሳህን ማጠብ ስህተት ነው።"], correctAnswer: "ከበሉ በኋላ ማብሰል ስህተት ነው።", explanation: "ምግብ የሚበስለው ከመበላቱ በፊት መሆን አለበት።"),
            ExerciseItem(prompt: "ዮናስ ጠዋት 2 ሰዓት ላይ ተኝቶ ከሰዓት በ9 ሰዓት ተነሳ።", options: ["ጠዋት ተኝቶ ከሰዓት ተነሳ መባሉ ስህተት ነው።", "ሰዓቱ መቆጠሩ ስህተት ነው።", "መኝታ መፈለጉ ስህተት ነው።", "ቀን ላይ መነሳቱ ስህተት ነው።"], correctAnswer: "ጠዋት ተኝቶ ከሰዓት ተነሳ መባሉ ስህተት ነው።", explanation: "ሰዎች አብዛኛውን ጊዜ ማታ ተኝተው ጠዋት ይነሳሉ።"),
            ExerciseItem(prompt: "ወይዘሮ አስቴር ፖስታ ለመላክ ወደ መታጠቢያ ቤት ሄዱ።", options: ["ፖስታ ለመላክ መታጠቢያ ቤት መሄድ ስህተት ነው።", "ፖስታ ቤት መሄድ ስህተት ነው።", "ደብዳቤ መጻፍ ስህተት ነው።", "ፖስታ ሰራተኛ መጥራት ስህተት ነው።"], correctAnswer: "ፖስታ ለመላክ መታጠቢያ ቤት መሄድ ስህተት ነው።", explanation: "ፖስታ የሚላከው በፖስታ ቤት በኩል ብቻ ነው።"),
            ExerciseItem(prompt: "ዮሴፍ አትክልቶቹን ለማድረቅ ሲል ውሃ አጠጣቸው።", options: ["ውሃ ማጠጣት አትክልትን አያደርቅም።", "ውሃ መጠቀም ስህተት ነው።", "አትክልት መትከል ስህተት ነው።", "ጠዋት ማጠጣት ስህተት ነው።"], correctAnswer: "ውሃ ማጠጣት አትክልትን አያደርቅም።", explanation: "ውሃ ማጠጣት አትክልቱ እንዲረጠብና እንዲያድግ ያደርጋል።"),
            ExerciseItem(prompt: "ወይዘሮ ዘነበች የልብስ ማጠቢያ ማሽኑን ሳሙና ሳያደርጉበት አጽድቀው አጠቡት።", options: ["ሳሙና ሳይጨምሩ ልብስ ማጠብ ስህተት ነው።", "ማሽን መጠቀም ስህተት ነው።", "ልብስ ማድረቅ ስህተት ነው።", "ውሃ መሙላት ስህተት ነው።"], correctAnswer: "ሳሙና ሳይጨምሩ ልብስ ማጠብ ስህተት ነው።", explanation: "ልብስ ለማጽዳት ሳሙና የግድ ያስፈልጋል።"),
            ExerciseItem(prompt: "ተስፋዬ በ DMV ፈተና ወድቆ አዲሱን ፈቃድ ተቀበለ።", options: ["በፈተና ወድቆ ፈቃድ ማግኘት አይቻልም።", "ፈተና መውሰድ ስህተት ነው።", "DMV መሄድ ስህተት ነው።", "ፈቃድ ማደስ ስህተት ነው።"], correctAnswer: "በፈተና ወድቆ ፈቃድ ማግኘት አይቻልም።", explanation: "ፈቃድ የሚሰጠው ፈተናውን በተሳካ ሁኔታ ላለፈ ብቻ ነው።"),
            ExerciseItem(prompt: "ፀሐይ ሻይ ለማፍላት ውሃውን በማቀዝቀዣ ውስጥ አሞቀችው።", options: ["ማቀዝቀዣ ውስጥ ውሃ አይሞቅም።", "ውሃ መጠቀም ስህተት ነው።", "ሻይ ቅጠል መጨመር ስህተት ነው።", "ሻይ ማፍላት ስህተት ነው።"], correctAnswer: "ማቀዝቀዣ ውስጥ ውሃ አይሞቅም።", explanation: "ማቀዝቀዣ ነገሮችን ለማቀዝቀዝ እንጂ ለማሞቅ አያገለግልም።"),
            ExerciseItem(prompt: "ሰለሞን የ DMV ቀጠሮውን ባለማክበሩ ፈቃዱን ወዲያውኑ አደሰ።", options: ["ቀጠሮ ሳያከብሩ ፈቃድ ማደስ አይቻልም።", "ቀጠሮ መያዝ ስህተት ነው።", "DMV መሄድ ስህተት ነው።", "ፈቃድ ማደስ ስህተት ነው።"], correctAnswer: "ቀጠሮ ሳያከብሩ ፈቃድ ማደስ አይቻልም።", explanation: "ፈቃድ ለማደስ ቀጠሮን ማክበር ወይም በሰዓቱ መገኘት ያስፈልጋል።"),
            ExerciseItem(prompt: "ወይዘሮ ማርታ የዶሮ ወጥ ለመሥራት የበግ ሥጋ ገዛች።", options: ["የዶሮ ወጥ ለመሥራት በግ መግዛት ስህተት ነው።", "ዶሮ መግዛት ስህተት ነው።", "ሥጋ መቁረጥ ስህተት ነው።", "ወጥ ማብሰል ስህተት ነው።"], correctAnswer: "የዶሮ ወጥ ለመሥራት በግ መግዛት ስህተት ነው።", explanation: "የዶሮ ወጥ የሚሠራው በዶሮ ሥጋ ብቻ ነው።"),
            ExerciseItem(prompt: "ሳሙኤል የ DMV ፈቃዱን ለማደስ ወደ ባንክ ሄደ።", options: ["ፈቃድ ለማደስ ባንክ መሄድ ስህተት ነው።", "ባንክ መሄድ ስህተት ነው።", "DMV መሄድ ስህተት ነው።", "ፎቶ መነሳት ስህተት ነው።"], correctAnswer: "ፈቃድ ለማደስ ባንክ መሄድ ስህተት ነው።", explanation: "የመንዳት ፈቃድ የሚታደሰው በ DMV መስሪያ ቤት ነው።"),
            ExerciseItem(prompt: "ሊዲያ አዲሱን ልብስ ሳታጥበው በፀሐይ ላይ አደረቀችው።", options: ["ልብስ ሳይታጠብ አይደርቅም።", "ልብስ መግዛት ስህተት ነው።", "ፀሐይ ላይ መስቀል ስህተት ነው።", "ማጠብ መፈለግ ስህተት ነው።"], correctAnswer: "ልብስ ሳይታጠብ አይደርቅም።", explanation: "መድረቅ የሚቻለው ልብሱ ከታጠበና ከረጠበ በኋላ ብቻ ነው።")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "Reading a Prescription",
        instructions: "Choose the correct answer.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "መመሪያ፦ ይህንን መድኃኒት በቀን 3 ጊዜ ከምግብ በኋላ 1 ክኒን ይውሰዱ። በቀን ስንት ክኒን ይወሰዳል?", options: ["3 ክኒን", "1 ክኒን", "2 ክኒን", "6 ክኒን"], correctAnswer: "3 ክኒን", explanation: "በቀን 3 ጊዜ 1 ክኒን መውሰድ ማለት 3 ክኒን መውሰድ ነው።"),
            ExerciseItem(prompt: "መመሪያ፦ በየ 8 ሰዓቱ 1 የሾርባ ማንኪያ ይውሰዱ። በቀን ስንት ጊዜ መወሰድ አለበት?", options: ["3 ጊዜ", "2 ጊዜ", "4 ጊዜ", "1 ጊዜ"], correctAnswer: "3 ጊዜ", explanation: "በአንድ ቀን ውስጥ 24 ሰዓት ስላለ በየ 8 ሰዓቱ መውሰድ በቀን 3 ጊዜ መውሰድን ያሳያል።"),
            ExerciseItem(prompt: "መመሪያ፦ ከመተኛትዎ በፊት 1 ታብሌት ይውሰዱ። መድኃኒቱ መቼ መወሰድ አለበት?", options: ["ማታ ከመኝታ በፊት", "ጠዋት በባዶ ሆድ", "ከምሳ በኋላ", "በማንኛውም ሰዓት"], correctAnswer: "ማታ ከመኝታ በፊት", explanation: "ከመኝታ በፊት የተባለው መመሪያ ማታ መኝታ ሰዓት ላይ መውሰድን ያሳያል።"),
            ExerciseItem(prompt: "መመሪያ፦ በቀን 2 ጊዜ 2 ክኒን በባዶ ሆድ ይውሰዱ። ጠዋት ላይ ስንት ክኒን መወሰድ አለበት?", options: ["2 ክኒን", "4 ክኒን", "1 ክኒን", "3 ክኒን"], correctAnswer: "2 ክኒን", explanation: "በቀን 2 ጊዜ 2 ክኒን መውሰድ ማለት በአንድ ጊዜ 2 ክኒን መውሰድ ማለት ነው።"),
            ExerciseItem(prompt: "መመሪያ፦ ይህ መድኃኒት እንቅልፍ ሊያመጣ ስለሚችል ከወሰዱ በኋላ መኪና አያሽከረክሩ። መድኃኒቱን ከወሰዱ በኋላ ምን ማድረግ የለብዎትም?", options: ["መኪና ማሽከርከር", "ውሃ መጠጣት", "ምግብ መመገብ", "መተኛት"], correctAnswer: "መኪና ማሽከርከር", explanation: "መድኃኒቱ እንቅልፍ ስለሚያመጣ መኪና ማሽከርከር አደጋ ያስከትላል።"),
            ExerciseItem(prompt: "መመሪያ፦ ለ 7 ቀናት በቀን 1 ጊዜ ይውሰዱ። ጠርሙሱ ውስጥ ስንት መድኃኒት ያስፈልጋል?", options: ["7 ክኒን", "14 ክኒን", "10 ክኒን", "5 ክኒን"], correctAnswer: "7 ክኒን", explanation: "ለ 7 ቀናት በቀን 1 ጊዜ መውሰድ 7 ክኒን በድምሩ ይጠይቃል።"),
            ExerciseItem(prompt: "መመሪያ፦ ከመጠቀምዎ በፊት ጠርሙሱን በደንብ ያናውጡት። መድኃኒቱን ከመውሰድዎ በፊት ምን ማድረግ አለብዎት?", options: ["ጠርሙሱን ማናወጥ", "ውሃ መጨመር", "መድኃኒቱን ማሞቅ", "በደንብ ማቀዝቀዝ"], correctAnswer: "ጠርሙሱን ማናወጥ", explanation: "ፈሳሽ መድኃኒቶች ከመወሰዳቸው በፊት በደንብ እንዲደባለቁ ማናወጥ ያስፈልጋል።"),
            ExerciseItem(prompt: "መመሪያ፦ ይህንን ቅባት በቀን 2 ጊዜ በተጎዳው ቆዳ ላይ በቀጭኑ ይቀቡት። ቅባቱ የት ነው የሚቀባው?", options: ["በተጎዳው ቆዳ ላይ", "በማንኛውም ቦታ", "በአይን ዙሪያ", "በጥፍር ላይ"], correctAnswer: "በተጎዳው ቆዳ ላይ", explanation: "መመሪያው ቅባቱ በተጎዳው ቆዳ ላይ ብቻ እንዲቀባ ያዛል።"),
            ExerciseItem(prompt: "መመሪያ፦ መድኃኒቱን በቀዝቃዛና ደረቅ ቦታ ያስቀምጡ። የት ማስቀመጥ የለብዎትም?", options: ["በሙቅና እርጥብ ቦታ", "በማቀዝቀዣ ውስጥ", "በቁምሳጥን ውስጥ", "በጨለማ ክፍል"], correctAnswer: "በሙቅና እርጥብ ቦታ", explanation: "ቀዝቃዛና ደረቅ ቦታ ከተባለ ሙቅና እርጥብ ቦታ ላይ ማስቀመጥ መድኃኒቱን ያበላሻል።"),
            ExerciseItem(prompt: "መመሪያ፦ በቀን 4 ጊዜ በየ 6 ሰዓቱ 1 ክኒን ይውሰዱ። የመጀመሪያውን ጠዋት 2 ሰዓት ላይ ከወሰዱ ሁለተኛውን መቼ ይወስዳሉ?", options: ["በ 8 ሰዓት (ከሰዓት)", "በ 6 ሰዓት (እኩለ ቀን)", "በ 10 ሰዓት (ማታ)", "በ 12 ሰዓት (እኩለ ሌሊት)"], correctAnswer: "በ 8 ሰዓት (ከሰዓት)", explanation: "ከጠዋት 2 ሰዓት በኋላ 6 ሰዓት ሲደመር ከሰዓት 8 ሰዓት ይሆናል።"),
            ExerciseItem(prompt: "መመሪያ፦ ይህ መድኃኒት ከወተት ጋር መወሰድ የለበትም። በምን መውሰድ የለብዎትም?", options: ["በወተት", "በውሃ", "በጭማቂ", "በሻይ"], correctAnswer: "በወተት", explanation: "መመሪያው መድኃኒቱን ከወተት ጋር መውሰድ መከልከሉን ያሳያል።"),
            ExerciseItem(prompt: "መመሪያ፦ ለህመም ብቻ በቀን ቢበዛ 2 ክኒን ይውሰዱ። ህመም ከሌለዎት ምን ያደርጋሉ?", options: ["አይወስዱም", "1 ክኒን ይወስዳሉ", "2 ክኒን ይወስዳሉ", "ለሐኪም ይደውላሉ"], correctAnswer: "አይወስዱም", explanation: "“ለህመም ብቻ” ስለሚል ህመም ከሌለ መድኃኒቱን መውሰድ አያስፈልግም።"),
            ExerciseItem(prompt: "መመሪያ፦ ይህንን መድኃኒት ሙሉ በሙሉ በውሃ ይዋጡት፥ አይጋግሩት ወይም አያድቅቁት። ክኒኑን እንዴት መውሰድ አለብዎት?", options: ["ሙሉ በሙሉ መዋጥ", "አኝኮ መብላት", "አድቅቆ በውሃ መበጥበጥ", "በሻይ ማቅለጥ"], correctAnswer: "ሙሉ በሙሉ መዋጥ", explanation: "ክኒኑ ሳይሰበር ሙሉ በሙሉ በውሃ መዋጥ አለበት።"),
            ExerciseItem(prompt: "መመሪያ፦ የዓይን ጠብታውን በቀን 2 ጊዜ 1 ጠብታ በቀኝ ዓይንዎ ላይ ያድርጉ። የትኛው ዓይን ላይ ነው የሚደረገው?", options: ["በቀኝ ዓይን ላይ", "በግራ ዓይን ላይ", "በሁለቱም ዓይን ላይ", "በአፍንጫ ውስጥ"], correctAnswer: "በቀኝ ዓይን ላይ", explanation: "መመሪያው ጠብታው በቀኝ ዓይን ላይ ብቻ እንዲደረግ ያዛል።"),
            ExerciseItem(prompt: "መመሪያ፦ ይህንን መድኃኒት ምግብ ሳይመገቡ 1 ሰዓት በፊት ይውሰዱ። መድኃኒቱን መቼ መውሰድ አለብዎት?", options: ["ከምግብ 1 ሰዓት በፊት", "ከምግብ ጋር አብሮ", "ከምግብ በኋላ ወዲያውኑ", "ከምግብ 2 ሰዓት በኋላ"], correctAnswer: "ከምግብ 1 ሰዓት በፊት", explanation: "በባዶ ሆድ እንዲሠራ ከምግብ 1 ሰዓት በፊት መወሰድ አለበት።")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Reading a Menu",
        instructions: "Choose the correct answer.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ምናሌ፦ የዶሮ ወጥ በ $15፥ የበግ ጠብስ በ $18፥ አትክልት በ $12። በጣም ርካሹ የትኛው ነው?", options: ["አትክልት ወጥ", "የዶሮ ወጥ", "የበግ ጠብስ", "ሁሉም እኩል ናቸው"], correctAnswer: "አትክልት ወጥ", explanation: "አትክልት ወጥ ዋጋው $12 በመሆኑ ከሁሉም አነስተኛ ነው።"),
            ExerciseItem(prompt: "ምናሌ፦ ሻይ $3፥ የጀበና ቡና $4፥ በረዶ ማኪያቶ $5። የጀበና ቡና ዋጋ ስንት ነው?", options: ["$4", "$3", "$5", "$2"], correctAnswer: "$4", explanation: "የጀበና ቡና ዋጋ በምናሌው ላይ $4 ተብሎ ተጽፏል።"),
            ExerciseItem(prompt: "ምናሌ፦ ሰላጣ $8፥ የዶሮ ሾርባ $10። ሁለቱንም አንድ ላይ ቢገዙ ስንት ይከፍላሉ?", options: ["$18", "$8", "$10", "$20"], correctAnswer: "$18", explanation: "የሰላጣ ($8) እና የዶሮ ሾርባ ($10) ድምር $18 ይሆናል።"),
            ExerciseItem(prompt: "ምናሌ፦ እንጀራ $2፥ የጾም በያይነቱ $14። የጾም በያይነቱ ከሁለት ተጨማሪ እንጀራ ጋር ስንት ይሆናል?", options: ["$18", "$14", "$16", "$20"], correctAnswer: "$18", explanation: "የጾም በያይነቱ ($14) ሲደመር ሁለት እንጀራ ($4) ድምሩ $18 ይሆናል።"),
            ExerciseItem(prompt: "ምናሌ፦ ኬክ $6፥ አይስክሬም $4። ኬክ ከአይስክሬም ስንት ዶላር ይበልጣል?", options: ["$2", "$6", "$4", "$10"], correctAnswer: "$2", explanation: "የኬክ ($6) እና የአይስክሬም ($4) ልዩነት $2 ነው።"),
            ExerciseItem(prompt: "ምናሌ፦ የፍራፍሬ ጭማቂ $5፥ ለስላሳ መጠጥ $3። በ $10 ስንት የፍራፍሬ ጭማቂ መግዛት ይቻላል?", options: ["2 ጭማቂ", "1 ጭማቂ", "3 ጭማቂ", "4 ጭማቂ"], correctAnswer: "2 ጭማቂ", explanation: "የአንድ ጭማቂ ዋጋ $5 ስለሆነ በ $10 በትክክል 2 ጭማቂ መግዛት ይቻላል።"),
            ExerciseItem(prompt: "ምናሌ፦ ቁርስ ፦ ቂጣ በቅቤ $10፥ ፉል $8፥ ፍርፍር $12። በጣም ውድ የሆነው ቁርስ የትኛው ነው?", options: ["ፍርፍር", "ቂጣ በቅቤ", "ፉል", "ሁሉም እኩል ናቸው"], correctAnswer: "ፍርፍር", explanation: "ፍርፍር ዋጋው $12 በመሆኑ ከሁሉም ውድ ቁርስ ነው።"),
            ExerciseItem(prompt: "ምናሌ፦ የበግ ጠብስ $18። በ $20 ከገዙ ስንት መልስ ይኖርዎታል?", options: ["$2", "$18", "$20", "$1"], correctAnswer: "$2", explanation: "ከ $20 ላይ $18 ሲቀነስ መልሱ $2 ይሆናል።"),
            ExerciseItem(prompt: "ምናሌ፦ የሱፍ ጭማቂ $4፥ የአጃ ሾርባ $6። የሱፍ ጭማቂ ከአጃ ሾርባ ስንት ዶላር ያንሳል?", options: ["$2", "$4", "$6", "$10"], correctAnswer: "$2", explanation: "በአጃ ሾርባ ($6) እና በሱፍ ጭማቂ ($4) መካከል ያለው ልዩነት $2 ነው።"),
            ExerciseItem(prompt: "ምናሌ፦ ህጻናት ምሳ ፦ ፓስታ $7፥ በርገር $9። ፓስታ ከአንድ ዶላር ታክስ ጋር ስንት ይሆናል?", options: ["$8", "$7", "$9", "$10"], correctAnswer: "$8", explanation: "የፓስታ ዋጋ ($7) ሲደመር $1 ታክስ ድምሩ $8 ይሆናል።"),
            ExerciseItem(prompt: "ምናሌ፦ የጾም በያይነቱ $14። የ $5 ቅናሽ ኩፖን ቢጠቀሙ ስንት ይከፍላሉ?", options: ["$9", "$14", "$5", "$19"], correctAnswer: "$9", explanation: "ከ $14 ላይ የ $5 ቅናሽ ሲደረግ የሚከፈለው $9 ብቻ ይሆናል።"),
            ExerciseItem(prompt: "ምናሌ፦ የጀበና ቡና $4። 3 የጀበና ቡና ቢገዙ ስንት ይከፍላሉ?", options: ["$12", "$4", "$8", "$16"], correctAnswer: "$12", explanation: "3 የጀበና ቡና በ $4 ማባዛት $12 ድምር ዋጋ ይሰጣል።"),
            ExerciseItem(prompt: "ምናሌ፦ ቂጣ በቅቤ $10። በ $50 ኖት ቢከፍሉ ምን ያህል መልስ ያገኛሉ?", options: ["$40", "$10", "$50", "$30"], correctAnswer: "$40", explanation: "ከ $50 ላይ $10 ሲቀነስ መልሱ $40 ይሆናል።"),
            ExerciseItem(prompt: "ምናሌ፦ ዶሮ ወጥ $15፥ የበግ ወጥ $16፥ ምስር ወጥ $10። የትኛው ወጥ ነው መካከለኛ ዋጋ ያለው?", options: ["ዶሮ ወጥ", "የበግ ወጥ", "ምስር ወጥ", "ሁሉም እኩል ናቸው"], correctAnswer: "ዶሮ ወጥ", explanation: "ምስር ($10) በጣም ርካሽ፥ በግ ($16) ውድ ሲሆን ዶሮ ወጥ ($15) መካከለኛው ነው።"),
            ExerciseItem(prompt: "ምናሌ፦ ፍራፍሬ ሰላጣ $7። ሁለት ፍራፍሬ ሰላጣ ቢገዙ ስንት ይከፍላሉ?", options: ["$14", "$7", "$10", "$21"], correctAnswer: "$14", explanation: "ሁለት ፍራፍሬ ሰላጣ በ $7 ማባዛት $14 ጠቅላላ ዋጋ ይሰጣል።")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Understanding Bills",
        instructions: "Choose the correct answer.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "ደረሰኝ፦ የኤሌክትሪክ ሂሳብ $85፥ የውሃ ሂሳብ $40። ጠቅላላ ሂሳቡ ስንት ነው?", options: ["$125", "$85", "$40", "$130"], correctAnswer: "$125", explanation: "የኤሌክትሪክ ($85) እና የውሃ ($40) ድምር $125 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የጋዝ ሂሳብ $60። እስከ አምስት ቀን ካልተከፈለ $10 ቅጣት አለው። ዘግይተው ቢከፍሉ ስንት ይከፍላሉ?", options: ["$70", "$60", "$10", "$50"], correctAnswer: "$70", explanation: "የጋዝ ሂሳብ ($60) ሲደመር የዘግይቶ መክፈያ ቅጣት ($10) ድምሩ $70 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የቆሻሻ ማጽጃ ሂሳብ በየሁለት ወሩ $30 ነው። በአንድ ዓመት ውስጥ ስንት ጊዜ ይከፈላል?", options: ["6 ጊዜ", "12 ጊዜ", "4 ጊዜ", "2 ጊዜ"], correctAnswer: "6 ጊዜ", explanation: "በአንድ ዓመት ውስጥ 12 ወራት ስላሉ በየሁለት ወሩ መክፈል በዓመት 6 ጊዜ መክፈል ነው።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የኢንተርኔት ሂሳብ $50። የ $5 ቅናሽ ቢደረግልዎት ስንት ይከፍላሉ?", options: ["$45", "$50", "$5", "$55"], correctAnswer: "$45", explanation: "ከ $50 ላይ የ $5 ቅናሽ ሲቀነስ የሚከፈለው $45 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የስልክ ሂሳብ $75። በ $100 ኖት ቢከፍሉ ስንት መልስ ያገኛሉ?", options: ["$25", "$75", "$100", "$15"], correctAnswer: "$25", explanation: "ከ $100 ላይ $75 ሲቀነስ መልሱ $25 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የውሃ ሂሳብ ባለፈው ወር $35 የነበረው በዚህ ወር $45 ሆኗል። በዚህ ወር ስንት ዶላር ጨመረ?", options: ["$10", "$35", "$45", "$5"], correctAnswer: "$10", explanation: "በዚህ ወር ($45) and ባለፈው ወር ($35) መካከል ያለው ልዩነት $10 ነው።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የቴሌቪዥን ካናል አገልግሎት በወር $40 ነው። ለ 3 ወራት ምን ያህል ይከፍላሉ?", options: ["$120", "$40", "$80", "$160"], correctAnswer: "$120", explanation: "የ 3 ወራት አገልግሎት በ $40 ማባዛት $120 ጠቅላላ ዋጋ ይሰጣል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የመኪና ኢንሹራንስ በወር $90 ነው። በስድስት ወር ውስጥ ስንት ይከፍላሉ?", options: ["$540", "$90", "$450", "$600"], correctAnswer: "$540", explanation: "የስድስት ወራት ክፍያ በወር $90 ማባዛት $540 ጠቅላላ ዋጋ ይሰጣል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የቤት ኪራይ $1200። በሁለት እኩል ክፍያ ቢከፍሉ በአንድ ጊዜ ስንት ይከፍላሉ?", options: ["$600", "$1200", "$400", "$800"], correctAnswer: "$600", explanation: "የቤት ኪራይ ($1200) ለሁለት ሲካፈል $600 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የኤሌክትሪክ ሂሳብ $110። እስከ ወሩ መጨረሻ ከተከፈለ የ $10 ቅናሽ አለው። ቀድመው ቢከፍሉ ስንት ይከፍላሉ?", options: ["$100", "$110", "$10", "$120"], correctAnswer: "$100", explanation: "ከ $110 ላይ የቀድሞ መክፈያ ቅናሽ ($10) ሲቀነስ የሚከፈለው $100 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የጤና ኢንሹራንስ ክፍያ በወር $150 ነው። በዓመት ውስጥ ምን ያህል ይከፍላሉ?", options: ["$1800", "$150", "$1500", "$2000"], correctAnswer: "$1800", explanation: "የዓመት (12 ወራት) ክፍያ በወር $150 ማባዛት $1800 ጠቅላላ ዋጋ ይሰጣል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የልብስ ማጠቢያ አገልግሎት $25። የ $3 ቲፕ (ጉርሻ) ቢጨምሩ ጠቅላላ ክፍያው ስንት ይሆናል?", options: ["$28", "$25", "$3", "$30"], correctAnswer: "$28", explanation: "የአገልግሎት ክፍያ ($25) ሲደመር $3 ጉርሻ ድምሩ $28 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የሳር መቁረጥ አገልግሎት በሳምንት $20 ነው። ለአራት ሳምንት ምን ያህል ይከፍላሉ?", options: ["$80", "$20", "$40", "$100"], correctAnswer: "$80", explanation: "የአራት ሳምንታት ክፍያ በሳምንት $20 ማባዛት $80 ጠቅላላ ዋጋ ይሰጣል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የጋዝ ሂሳብ በዚህ ወር $55 ሆኗል። በ $60 ኖት ቢከፍሉ ስንት መልስ ያገኛሉ?", options: ["$5", "$55", "$60", "$10"], correctAnswer: "$5", explanation: "ከ $60 ላይ $55 ሲቀነስ መልሱ $5 ይሆናል።"),
            ExerciseItem(prompt: "ደረሰኝ፦ የንጽሕና ዕቃዎች ግዢ $45። በ $50 ኖት ቢከፍሉ ስንት መልስ ያገኛሉ?", options: ["$5", "$45", "$50", "$10"], correctAnswer: "$5", explanation: "ከ $50 ላይ $45 ሲቀነስ መልሱ $5 ይሆናል።")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "What Would You Do?",
        instructions: "Choose the correct answer.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "በቤትዎ ውስጥ የውሃ ቧንቧ ቢፈነዳ ምን ያደርጋሉ?", options: ["ዋናውን የውሃ መቆጣጠሪያ ቫልቭ መዝጋት", "ውሃውን በባልዲ ለመቅዳት መሞከር", "ጎረቤት መጥራት", "እስኪቆም መጠበቅ"], correctAnswer: "ዋናውን የውሃ መቆጣጠሪያ ቫልቭ መዝጋት", explanation: "ዋናውን ቫልቭ መዝጋት ተጨማሪ የውሃ ጉዳት እንዳይኖር ይከላከላል።"),
            ExerciseItem(prompt: "መኪናዎ ውስጥ የሞተር ማስጠንቀቂያ መብራት ቢበራ ምን ያደርጋሉ?", options: ["መኪናውን ወደ ጋራዥ ወስዶ ማስመርመር", "መብራቱን ችላ ብሎ መንዳት", "መኪናውን ወዲያውኑ መሸጥ", "የፊት መብራቱን ማጥፋት"], correctAnswer: "መኪናውን ወደ ጋራዥ ወስዶ ማስመርመር", explanation: "የሞተር መብራት መብራት ቴክኒካዊ ችግር መኖሩን ስለሚያሳይ ባለሙያ ማሳየት ያስፈልጋል።"),
            ExerciseItem(prompt: "በምድጃ ላይ በዘይት እሳት ቢነሳ እንዴት ያጠፉታል?", options: ["በድስት ክዳን ወይም በትልቅ እቃ መሸፈን", "ውሃ ማፍሰስ", "በእጅ ለመንካት መሞከር", "አራገብ ማድረግ"], correctAnswer: "በድስት ክዳን ወይም በትልቅ እቃ መሸፈን", explanation: "የዘይት እሳትን በውሃ ማጥፋት እሳቱ እንዲሰራጭና እንዲባባስ ያደርጋል።"),
            ExerciseItem(prompt: "የመድኃኒት መጠንዎን በስህተት ሁለት ጊዜ ቢወስዱ ምን ያደርጋሉ?", options: ["ለመርዝ መቆጣጠሪያ ማዕከል ወይም ለሐኪምዎ መደወል", "ምንም ሳያደርጉ መተኛት", "ተጨማሪ መድኃኒት መውሰድ", "ብዙ ውሃ መጠጣት"], correctAnswer: "ለመርዝ መቆጣጠሪያ ማዕከል ወይም ለሐኪምዎ መደወል", explanation: "ከመጠን በላይ መውሰድ ጉዳት ሊኖረው ስለሚችል የባለሙያ ምክር ማግኘት ያስፈልጋል።"),
            ExerciseItem(prompt: "የ DMV ቀጠሮ ቀንዎን ቢረሱ ምን ማድረግ አለብዎት?", options: ["በድረ-ገጻቸው በኩል አዲስ ቀጠሮ ማስያዝ", "የመንዳት ፈቃዱን መጣል", "ምንም ሳያደርጉ መቆየት", "ወደ ፖሊስ ጣቢያ መሄድ"], correctAnswer: "በድረ-ገጻቸው በኩል አዲስ ቀጠሮ ማስያዝ", explanation: "ቀጠሮ ሲያልፍ አዲስ ቀጠሮ በድረ-ገጽ ማስያዝ ቀላሉ መፍትሄ ነው።"),
            ExerciseItem(prompt: "የቤትዎ የኤሌክትሪክ ሳጥን ውስጥ ድምፅ ቢሰሙ ምን ያደርጋሉ?", options: ["የኤሌክትሪክ ማብሪያውን ማጥፋትና ባለሙያ መጥራት", "ሳጥኑን በውሃ ማጠብ", "ድምፁ እስኪጠፋ መጠበቅ", "በብረት መቆፈሪያ መክፈት"], correctAnswer: "የኤሌክትሪክ ማብሪያውን ማጥፋትና ባለሙያ መጥራት", explanation: "የኤሌክትሪክ ችግር የእሳት አደጋ ሊያስከትል ስለሚችል ባለሙያ መጥራት ደህንነትን ይጠብቃል።"),
            ExerciseItem(prompt: "በቤት ውስጥ መርዛማ ነፍሳት ቢያዩ ምን ያደርጋሉ?", options: ["ከተስማሚ ፀረ-ነፍሳት መጠቀምና መራቅ", "በእጅ ለመያዝ መሞከር", "ቸል ብሎ መተው", "ምግብ ማቅረብ"], correctAnswer: "ከተስማሚ ፀረ-ነፍሳት መጠቀምና መራቅ", explanation: "ነፍሳት ሊነክሱ ስለሚችሉ በጥንቃቄ መራቅና ማጥፋት ያስፈልጋል።"),
            ExerciseItem(prompt: "የባንክ ካርድዎ በኤቲኤም ማሽን ውስጥ ቢቀር ምን ያደርጋሉ?", options: ["ወዲያውኑ ለባንክዎ መደወልና ካርዱን ማዘጋት", "ማሽኑን ለመስበር መሞከር", "ካርዱን ትቶ መሄድ", "ለቀናት መጠበቅ"], correctAnswer: "ወዲያውኑ ለባንክዎ መደወልና ካርዱን ማዘጋት", explanation: "ካርዱን ማዘጋት ሌሎች ሰዎች ገንዘብዎን እንዳይጠቀሙበት ለመከላከል የመጀመሪያው እርምጃ ነው።"),
            ExerciseItem(prompt: "የቀዝቃዛ አየር ማዕበል እንደሚመጣ ቢነገር ምን ያደርጋሉ?", options: ["በቂ ምግብ፥ ውሃ እና የብርድ ልብስ ማዘጋጀት", "መስኮቶችን በሙሉ ከፍቶ መተው", "ቀጭን ልብስ መልበስ", "ከቤት ውጭ መተኛት"], correctAnswer: "በቂ ምግብ፥ ውሃ እና የብርድ ልብስ ማዘጋጀት", explanation: "ቅድመ ዝግጅት ማድረግ ከቅዝቃዜ አደጋ ለመከላከል ይረዳል።"),
            ExerciseItem(prompt: "የመድኃኒት ጠርሙስ ክዳን ቢጠፋብዎት ምን ያደርጋሉ?", options: ["በሌላ ንጹህና አየር በማያስገባ እቃ ውስጥ ማስቀመጥ", "መድኃኒቱን በሙሉ መጣል", "ክዳኑ ሳይኖር መተው", "በእጅዎ መዳፍ መሸፈን"], correctAnswer: "በሌላ ንጹህና አየር በማያስገባ እቃ ውስጥ ማስቀመጥ", explanation: "መድኃኒቶች ለአየር ከተጋለጡ የፈውስ ኃይላቸው ሊቀንስ ይችላል።"),
            ExerciseItem(prompt: "በሱቅ ውስጥ ሲገዙ የኪስ ሌባ ቢያጓጥምዎት ምን ያደርጋሉ?", options: ["ለሱቁ ጥበቃ ሠራተኞች ማሳወቅ እና ለፖሊስ መደወል", "ሌባውን ተከትሎ መሮጥ", "ምንም እንዳልተፈጠረ መተው", "ለሰዎች መጮኽ"], correctAnswer: "ለሱቁ ጥበቃ ሠራተኞች ማሳወቅ እና ለፖሊስ መደወል", explanation: "ለፖሊስ ወይም ለጥበቃ ማሳወቅ ወንጀለኛው እንዲያዝ ይረዳል።"),
            ExerciseItem(prompt: "የቤትዎ የፍሳሽ ቆሻሻ ቧንቧ ቢዘጋ ምን ያደርጋሉ?", options: ["የውሃ አጠቃቀምን ማቆም እና የቧንቧ ባለሙያ መጥራት", "ተጨማሪ ውሃ ማፍሰስ", "ሳሙና በብዛት መጨመር", "ቧንቧውን መተው"], correctAnswer: "የውሃ አጠቃቀምን ማቆም እና የቧንቧ ባለሙያ መጥራት", explanation: "የቧንቧ ባለሙያ መጥራት ፍሳሹን በፍጥነት ለመጠገን አስተማማኝ መንገድ ነው።"),
            ExerciseItem(prompt: "በመኖሪያ ክፍልዎ ውስጥ ከባድ የጢስ ሽታ ቢያገኙ ምን ያደርጋሉ?", options: ["ሁሉንም ሰዎች ይዞ ከቤት መውጣትና ወደ 911 መደወል", "መስኮቶቹን መዝጋት", "መኝታ ክፍል መግባት", "ሽታውን ችላ ማለት"], correctAnswer: "ሁሉንም ሰዎች ይዞ ከቤት መውጣትና ወደ 911 መደወል", explanation: "ጭስ የእሳት አደጋ ምልክት ስለሆነ በፍጥነት መውጣት ደህንነትን ይጠብቃል።"),
            ExerciseItem(prompt: "በመንገድ ላይ ትልቅ የውሃ ጎርፍ ቢያጓጥምዎት ምን ያደርጋሉ?", options: ["በጎርፉ ውስጥ ለመንዳት ወይም ለመራመድ አለመሞከር", "በፍጥነት መንዳት", "መኪናውን መሃል ላይ ማቆም", "በእግር መሻገር"], correctAnswer: "በጎርፉ ውስጥ ለመንዳት ወይም ለመራመድ አለመሞከር", explanation: "የጎርፍ ውሃ መኪናን ሊወስድ ስለሚችል አማራጭ መንገድ መፈለግ ይመረጣል።"),
            ExerciseItem(prompt: "የስራ ባልደረባዎ በስህተት ቢቆረጥ ምን ያደርጋሉ?", options: ["የመጀመሪያ እርዳታ መስጠትና ቁስሉን በንጹህ ጨርቅ መጫን", "ቁስሉን መተው", "ውሃ ማፍሰስ", "ከስራ መውጣት"], correctAnswer: "የመጀመሪያ እርዳታ መስጠትና ቁስሉን በንጹህ ጨርቅ መጫን", explanation: "ደም መፍሰስን ለመግታት ቁስሉን ተጭኖ ማቆየት አስፈላጊ እርምጃ ነው።"),
            ExerciseItem(prompt: "በእንቅልፍ ሰዓት የመሬት መንቀጥቀጥ ቢከሰት ምን ያደርጋሉ?", options: ["ከአልጋ ሳይወርዱ ራስን በትራስ መሸፈንና መጠበቅ", "በፍጥነት ወደ ውጭ መሮጥ", "መስኮቱን መክፈት", "መብራቶቹን ማብራት"], correctAnswer: "ከአልጋ ሳይወርዱ ራስን በትራስ መሸፈንና መጠበቅ", explanation: "በመሬት መንቀጥቀጥ ወቅት መንቀሳቀስ የመውደቅ አደጋን ይጨምራል።"),
            ExerciseItem(prompt: "የልብስ ማጠቢያ ማሽን ውሃ ማፍሰስ ቢጀምር ምን ያደርጋሉ?", options: ["ማሽኑን ማጥፋት፥ የውሃ ቧንቧውን መዝጋትና ማጽዳት", "ማሽኑ እንዲሰራ መተው", "ውሃውን ችላ ማለት", "በሳሙና መሸፈን"], correctAnswer: "ማሽኑን ማጥፋት፥ የውሃ ቧንቧውን መዝጋትና ማጽዳት", explanation: "ውሃው ወደ ሌላ ክፍል እንዳይሰራጭ በፍጥነት ማሽኑን ማቆም ያስፈልጋል።"),
            ExerciseItem(prompt: "በቤት ውስጥ የጋዝ መፍሰሻ መቆጣጠሪያ ቢበላሽ ምን ያደርጋሉ?", options: ["ከቤት መውጣትና የጋዝ ኩባንያውን ማሳወቅ", "መቆጣጠሪያውን ለመጠገን መሞከር", "አየር ማራገብ", "የኤሌክትሪክ መብራት ማብራት"], correctAnswer: "ከቤት መውጣትና የጋዝ ኩባንያውን ማሳወቅ", explanation: "ደህንነትን ለመጠበቅ ከቤት ወጥቶ ለእርዳታ መደወል ይመረጣል።"),
            ExerciseItem(prompt: "አዲስ የልብስ ስፌት መርፌ ቢጠፋብዎት ምን ያደርጋሉ?", options: ["ቦታውን በጥንቃቄ መፈለግና ሰዎችን እንዳይወጋ ማድረግ", "መርፌው መጥፋቱን መርሳት", "በእግር መፈለግ", "ጨለማ ክፍል ውስጥ መፈለግ"], correctAnswer: "ቦታውን በጥንቃቄ መፈለግና ሰዎችን እንዳይወጋ ማድረግ", explanation: "መርፌ መጥፋት እግር ላይ የመውጋት አደጋ ስላለው በጥንቃቄ መፈለግ አለበት።"),
            ExerciseItem(prompt: "የመብራት አምፑል ሲቀይሩ ምን ጥንቃቄ ማድረግ አለብዎት?", options: ["የመብራት ማብሪያውን ማጥፋትና አምፑሉ እስኪቀዘቅዝ መጠበቅ", "በእርጥብ እጅ መቀየር", "ሲበራ መቀየር", "በፍጥነት መጎተት"], correctAnswer: "የመብራት ማብሪያውን ማጥፋትና አምፑሉ እስኪቀዘቅዝ መጠበቅ", explanation: "አምፑሉ ሲበራ ስለሚሞቅ እጅ እንዳይቃጠል ጥንቃቄ ማድረግ ያስፈልጋል።")
        ]
    )
}
