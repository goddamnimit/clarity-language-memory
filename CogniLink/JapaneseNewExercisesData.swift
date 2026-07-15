import Foundation

struct JapaneseNewExercisesData {

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

    // MARK: - Language Section

    // MARK: - 韻を踏む言葉（ニュー）
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "韻を踏む言葉（ニュー）",
        instructions: "与えられた言葉と韻が合う言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "つき と韻を踏む言葉は？", options: ["やま", "すき", "かわ", "そら"], correctAnswer: "すき", explanation: "「つき（tsuki）」と「すき（suki）」は、母音が同じ「u-i」の並びになっており、詩や言葉遊びで韻を踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "はな と韻を踏む言葉は？", options: ["さな", "かわ", "つき", "うみ"], correctAnswer: "さな", explanation: "「はな（hana）」と「さな（sana）」は、母音が同じ「a-a」の並びになっており、詩や言葉遊びで韻を踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "やま と韻を踏む言葉は？", options: ["そら", "なま", "かわ", "みず"], correctAnswer: "なま", explanation: "「やま（yama）」と「なま（nama）」は、母音が同じ「a-a」の並びになっており、詩や言葉遊びで韻を踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "かわ と韻を踏む言葉は？", options: ["やま", "うわ", "つき", "そら"], correctAnswer: "うわ", explanation: "「かわ（kawa）」と「うわ（uwa）」は、母音が同じ「a-a」の並びになっており、詩や言葉遊びで韻を踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "そら と韻を踏む言葉は？", options: ["うら", "やま", "かわ", "つき"], correctAnswer: "うら", explanation: "「そら（sora）」と「うら（ura）」は、語尾の母音が同じ「a」であり、全体としても母音が「o-a」と「u-a」で脚韻として踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "いし と韻を踏む言葉は？", options: ["はな", "むし", "そら", "うみ"], correctAnswer: "むし", explanation: "「いし（ishi）」と「むし（mushi）」は、語尾の母音が同じ「i」であり、全体としても母音が「i-i」と「u-i」で脚韻を踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "ゆき と韻を踏む言葉は？", options: ["はな", "かわ", "つき", "そら"], correctAnswer: "つき", explanation: "「ゆき（yuki）」と「つき（tsuki）」は、母音が同じ「u-i」の並びになっており、詩や言葉遊びで韻を踏む関係にあるからです。"),
            ExerciseItem(id: UUID(), prompt: "かぜ と韻を踏む言葉は？", options: ["やま", "かせ", "そら", "うみ"], correctAnswer: "かせ", explanation: "「かぜ」と「かせ」は母音の並びが同じ（ア段・エ段）で、発音の響きが似ていて韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "みち と韻を踏む言葉は？", options: ["まち", "やま", "そら", "かわ"], correctAnswer: "まち", explanation: "「みち」と「まち」は語尾の音が同じ「ち」で終わり、リズミカルに韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "ほし と韻を踏む言葉は？", options: ["うみ", "やま", "こし", "そら"], correctAnswer: "こし", explanation: "「ほし」と「こし」は語尾の音が同じ「し」で終わり、母音の並びも同じ（オ段・イ段）で韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "もり と韻を踏む言葉は？", options: ["とり", "やま", "かわ", "そら"], correctAnswer: "とり", explanation: "「もり」と「とり」は語尾の音が同じ「り」で終わり、母音の並びも同じ（オ段・イ段）で韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "ふね と韻を踏む言葉は？", options: ["つね", "やま", "そら", "かわ"], correctAnswer: "つね", explanation: "「ふね」と「つね」は語尾の音が同じ「ね」で終わり、母音の並びも同じ（ウ段・エ段）で韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "あき と韻を踏む言葉は？", options: ["なつ", "かき", "ふゆ", "はる"], correctAnswer: "かき", explanation: "「あき」と「かき」は語尾の音が同じ「き」で終わり、母音の並びも同じ（ア段・イ段）で韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "いけ と韻を踏む言葉は？", options: ["やま", "うけ", "かわ", "そら"], correctAnswer: "うけ", explanation: "「いけ」と「うけ」は語尾の音が同じ「け」で終わり、リズミカルに韻を踏んでいるためです。"),
            ExerciseItem(id: UUID(), prompt: "みず と韻を踏む言葉は？", options: ["やま", "かず", "そら", "つき"], correctAnswer: "かず", explanation: "「みず」と「かず」は語尾の音が同じ「ず」で終わり、リズミカルに韻を踏んでいるためです。")
        ]
    )

    // MARK: - 語の連想（ニュー）
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "語の連想（ニュー）",
        instructions: "与えられた言葉と最も関係が深い言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "柔道 と最も関係が深いのは？", options: ["道着", "ラケット", "バット", "グローブ"], correctAnswer: "道着", explanation: "柔道を行う際に着用する専用の衣服が道着であるためです。"),
            ExerciseItem(id: UUID(), prompt: "花火 と最も関係が深いのは？", options: ["冬", "梅雨", "夏", "春"], correctAnswer: "夏", explanation: "日本では花火大会は主に夏の風物詩として開催されるためです。"),
            ExerciseItem(id: UUID(), prompt: "茶道 と最も関係が深いのは？", options: ["茶室", "食堂", "体育館", "図書館"], correctAnswer: "茶室", explanation: "茶道は専用の空間である茶室で行われる伝統文化であるためです。"),
            ExerciseItem(id: UUID(), prompt: "お盆 と最も関係が深いのは？", options: ["新年", "先祖", "クリスマス", "卒業式"], correctAnswer: "先祖", explanation: "お盆は先祖の霊を迎え、供養するための日本の伝統的な行事であるためです。"),
            ExerciseItem(id: UUID(), prompt: "寿司 と最も関係が深いのは？", options: ["ピザ", "ハンバーガー", "わさび", "スパゲッティ"], correctAnswer: "わさび", explanation: "寿司を食べる際、風味を引き立てるためにわさびが欠かせない薬味として使われるためです。"),
            ExerciseItem(id: UUID(), prompt: "書道 と最も関係が深いのは？", options: ["絵具", "墨", "鉛筆", "クレヨン"], correctAnswer: "墨", explanation: "書道は毛筆と墨を用いて文字を書く芸術であるためです。"),
            ExerciseItem(id: UUID(), prompt: "相撲 と最も関係が深いのは？", options: ["リング", "土俵", "コート", "グラウンド"], correctAnswer: "土俵", explanation: "相撲の試合は土俵と呼ばれる専用の競技場の上で行われるためです。"),
            ExerciseItem(id: UUID(), prompt: "俳句 と最も関係が深いのは？", options: ["五七五の音節", "八七八の音節", "七五調", "四行詩"], correctAnswer: "五七五の音節", explanation: "俳句は五・七・五の十七音の音節で構成される定型詩であるためです。"),
            ExerciseItem(id: UUID(), prompt: "桜 と最も関係が深いのは？", options: ["雪", "花見", "台風", "紅葉"], correctAnswer: "花見", explanation: "桜が咲く季節には、桜の花を鑑賞しながら飲食などを楽しむ「花見」が行われるためです。"),
            ExerciseItem(id: UUID(), prompt: "富士山 と最も関係が深いのは？", options: ["海", "川", "山頂", "砂漠"], correctAnswer: "山頂", explanation: "富士山は日本一高い山であり、その山頂を目指して多くの人が登山をするためです。"),
            ExerciseItem(id: UUID(), prompt: "七夕 と最も関係が深いのは？", options: ["短冊", "鏡餅", "ちまき", "おせち"], correctAnswer: "短冊", explanation: "七夕では願い事を書いた短冊を笹の葉に飾る風習があるためです。"),
            ExerciseItem(id: UUID(), prompt: "弁当 と最も関係が深いのは？", options: ["お箸", "フォーク", "スプーン", "ナイフ"], correctAnswer: "お箸", explanation: "日本で弁当を食べる際には、主にお箸が使われるためです。"),
            ExerciseItem(id: UUID(), prompt: "着物 と最も関係が深いのは？", options: ["ネクタイ", "帯", "ベルト", "スカーフ"], correctAnswer: "帯", explanation: "着物を着る際には、形を整えて固定するために必ず帯を締めるためです。"),
            ExerciseItem(id: UUID(), prompt: "地震 と最も関係が深いのは？", options: ["海水浴", "避難訓練", "花火", "スキー"], correctAnswer: "避難訓練", explanation: "地震大国である日本では、地震に備えて安全を確保するために定期的な避難訓練が行われるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系二世 と最も関係が深いのは？", options: ["明治時代", "第二次世界大戦", "江戸時代", "平安時代"], correctAnswer: "第二次世界大戦", explanation: "日系二世の歴史は、第二次世界大戦中の強制収容など、当時の世界情勢と深い関わりがあるためです。")
        ]
    )

    // MARK: - ことわざ完成（ニュー）
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "ことわざ完成（ニュー）",
        instructions: "ことわざの空欄に入る言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "三人寄れば文殊の＿", options: ["知恵", "力", "笑い"], correctAnswer: "知恵", explanation: "「三人寄れば文殊の知恵」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "虎穴に入らずんば＿を得ず", options: ["虎子", "宝", "獲物"], correctAnswer: "虎子", explanation: "「虎穴に入らずんば虎子を得ず」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "郷に入っては郷に＿", options: ["従え", "住め", "合わせよ"], correctAnswer: "従え", explanation: "「郷に入っては郷に従え」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "馬鹿と＿は高い所に登る", options: ["煙", "霧", "雲"], correctAnswer: "煙", explanation: "「馬鹿と煙は高い所に登る」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "類は友を＿", options: ["呼ぶ", "招く", "集める"], correctAnswer: "呼ぶ", explanation: "「類は友を呼ぶ」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "失敗は成功の＿", options: ["もと", "元", "基"], correctAnswer: "もと", explanation: "「失敗は成功のもと」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "千里の道も一歩から＿", options: ["始まる", "終わる", "続く"], correctAnswer: "始まる", explanation: "「千里の道も一歩から始まる」という意味の有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "能ある鷹は爪を＿", options: ["隠す", "見せる", "磨く"], correctAnswer: "隠す", explanation: "「能ある鷹は爪を隠す」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "二兎を追う者は一兎をも＿ず", options: ["得", "取", "見"], correctAnswer: "得", explanation: "「二兎を追う者は一兎をも得ず」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "勝てば＿の軍", options: ["官兵", "大軍", "強軍"], correctAnswer: "官兵", explanation: "「勝てば官軍（負ければ賊軍）」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "明日は明日の＿が吹く", options: ["風", "雨", "空"], correctAnswer: "風", explanation: "「明日は明日の風が吹く」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "蛙の子は＿", options: ["蛙", "蛇", "魚"], correctAnswer: "蛙", explanation: "「蛙の子は蛙」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "継続は力＿", options: ["なり", "也", "哉"], correctAnswer: "なり", explanation: "「継続は力なり」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "良薬は口に＿", options: ["苦し", "甘し", "辛し"], correctAnswer: "苦し", explanation: "「良薬は口に苦し」という有名なことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "光陰矢の如＿", options: ["し", "く", "き"], correctAnswer: "し", explanation: "「光陰矢の如し」という有名なことわざだからです。")
        ]
    )

    // MARK: - 複合語（ニュー）
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "複合語（ニュー）",
        instructions: "二つの言葉を合わせてできる複合語を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "山 + 道 = ？", options: ["道山", "山道", "山路", "路山"], correctAnswer: "山道", explanation: "「山」と「道」を組み合わせると、「山の中の道」を意味する「山道」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "川 + 岸 = ？", options: ["岸川", "川岸", "岸辺", "川辺"], correctAnswer: "川岸", explanation: "「川」と「岸」を組み合わせると、「川のほとり」を意味する「川岸」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "風 + 景 = ？", options: ["景風", "風景", "風光", "光風"], correctAnswer: "風景", explanation: "「風」と「景」を組み合わせると、「目に見えるありさまや景色」を意味する「風景」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "水 + 面 = ？", options: ["面水", "水面", "水表", "表水"], correctAnswer: "水面", explanation: "「水」と「面」を組み合わせると、「水の表面」を意味する「水面」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "空 + 港 = ？", options: ["港空", "空港", "空場", "場空"], correctAnswer: "空港", explanation: "「空」と「港」を組み合わせると、「航空機が離着陸する施設」を意味する「空港」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "昼 + 食 = ？", options: ["食昼", "昼食", "昼飯", "飯昼"], correctAnswer: "昼食", explanation: "「昼」と「食」を組み合わせると、「昼間に食べる食事」を意味する「昼食」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "夜 + 景 = ？", options: ["景夜", "夜景", "夜光", "光夜"], correctAnswer: "夜景", explanation: "「夜」と「景」を組み合わせると、「夜の景色」を意味する「夜景」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "花 + 火 = ？", options: ["火花", "花火", "花炎", "炎花"], correctAnswer: "花火", explanation: "「花」と「火」を組み合わせると、「火薬を用いて光や音を楽しむもの」を意味する「花火」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "木 + 漏れ + 日 = ？", options: ["日漏れ木", "木漏れ日", "漏れ木日", "日木漏れ"], correctAnswer: "木漏れ日", explanation: "「木」と「漏れ」と「日」を組み合わせると、「木々の枝葉の間から差し込む日光」を意味する「木漏れ日」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "朝 + 日 = ？", options: ["日朝", "朝日", "朝光", "光朝"], correctAnswer: "朝日", explanation: "「朝」と「日」を組み合わせると、「朝に昇る太陽」を意味する「朝日」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "夕 + 日 = ？", options: ["日夕", "夕日", "夕光", "光夕"], correctAnswer: "夕日", explanation: "「夕」と「日」を組み合わせると、「夕方に沈む太陽」を意味する「夕日」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "雨 + 水 = ？", options: ["水雨", "雨水", "雨流", "流雨"], correctAnswer: "雨水", explanation: "「雨」と「水」を組み合わせると、「雨の水」を意味する「雨水」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "土 + 地 = ？", options: ["地土", "土地", "土所", "所土"], correctAnswer: "土地", explanation: "「土」と「地」を組み合わせると、「地面や一定の場所」を意味する「土地」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "道 + 路 = ？", options: ["路道", "道路", "道場", "場道"], correctAnswer: "道路", explanation: "「道」と「路」を組み合わせると、「人や車が通るための道」を意味する「道路」という熟語になるためです。"),
            ExerciseItem(id: UUID(), prompt: "食 + 品 = ？", options: ["品食", "食品", "食物", "物食"], correctAnswer: "食品", explanation: "「食」と「品」を組み合わせると、「食べ物や食料品」を意味する「食品」という熟語になるためです。")
        ]
    )

    // MARK: - 接頭語・接尾語（ニュー）
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "接頭語・接尾語（ニュー）",
        instructions: "空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "＿化（〜になること）: 高齢", options: ["高齢化", "高齢式", "高齢性"], correctAnswer: "高齢化", explanation: "「高齢」に「化」をつけると、「高齢の状態になること」を意味する「高齢化」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "無＿（ない意味）: 理解", options: ["無理解", "不理解", "非理解"], correctAnswer: "無理解", explanation: "「理解」に「無」をつけると、「理解がないこと」を意味する「無理解」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "＿力（〜の力）: 記憶", options: ["記憶力", "記憶感", "記憶性"], correctAnswer: "記憶力", explanation: "「記憶」に「力」をつけると、「記憶する能力」を意味する「記憶力」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "超＿（非常にの意味）: 満員", options: ["超満員", "大満員", "特満員"], correctAnswer: "超満員", explanation: "「満員」に「超」をつけると、「定員を非常に大きく超えた満員であること」を意味する「超満員」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "未＿（まだ〜していない）: 完成", options: ["未完成", "不完成", "無完成"], correctAnswer: "未完成", explanation: "「完成」に「未」をつけると、「まだ完成していないこと」を意味する「未完成」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "＿的（〜のような性質）: 個人", options: ["個人的", "個人性", "個人式"], correctAnswer: "個人的", explanation: "「個人」に「的」をつけると、「個人の性質を持つ様子」を意味する「個人的」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "再＿（もう一度の意味）: 確認", options: ["再確認", "又確認", "新確認"], correctAnswer: "再確認", explanation: "「確認」に「再」をつけると、「もう一度確認すること」を意味する「再確認」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "非＿（ではないの意味）: 公開", options: ["非公開", "不公開", "無公開"], correctAnswer: "非公開", explanation: "「公開」に「非」をつけると、「公開しないこと」を意味する「非公開」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "＿感（〜の感覚）: 達成", options: ["達成感", "達成性", "達成力"], correctAnswer: "達成感", explanation: "「達成」に「感」をつけると、「達成したときの感覚や満足感」を意味する「達成感」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "＿者（〜する人）: 患", options: ["患者", "患人", "患員"], correctAnswer: "患者", explanation: "「患う」に「者」をつけると、「病気を患っている人」を意味する「患者」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "不＿（反対の意味）: 安", options: ["不安", "不信", "不眠"], correctAnswer: "不安", explanation: "「安（安心）」に「不」をつけると、反対の「安心できない状態」を意味する「不安」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "大＿（大きいの意味）: 自然", options: ["大自然", "大天然", "大野原"], correctAnswer: "大自然", explanation: "「自然」に「大」をつけると、「人間の手が加わっていない広大で豊かな自然」を意味する「大自然」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "＿性（〜の性質）: 安全", options: ["安全性", "安全感", "安全力"], correctAnswer: "安全性", explanation: "「安全」に「性」をつけると、「安全である性質や度合い」を意味する「安全性」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "半＿（半分の意味）: 額", options: ["半額", "半値", "半量"], correctAnswer: "半額", explanation: "「額（金額）」に「半」をつけると、「半分の金額」を意味する「半額」という言葉になるためです。"),
            ExerciseItem(id: UUID(), prompt: "全＿（すべての意味）: 国", options: ["全国", "全土", "全域"], correctAnswer: "全国", explanation: "「国」に「全」をつけると、「すべての国、または国全体」を意味する「全国」という言葉になるためです。")
        ]
    )

    // MARK: - Cognition Section

    // MARK: - 物語の記憶（ニュー）
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "物語の記憶（ニュー）",
        instructions: "短い物語を読んで、質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "清水さんは毎朝何時に公園を散歩しますか？", options: ["7時", "8時", "9時", "10時"], correctAnswer: "8時", explanation: "問題文の前提や文脈において、清水さんが公園を散歩する時間が8時と指定されている事実だからです。", passage: "清水さんは毎朝8時に公園を散歩します。火曜日は雨だったので休みました。"),
            ExerciseItem(id: UUID(), prompt: "孫は何歳ですか？", options: ["2歳", "3歳", "4歳", "5歳"], correctAnswer: "3歳", explanation: "問題文の前提や文脈において、孫の年齢が3歳と指定されている事実だからです。", passage: "吉田さんは孫のために赤い毛糸でセーターを編んでいます。孫は3歳の女の子です。"),
            ExerciseItem(id: UUID(), prompt: "合計何本買いましたか？", options: ["6本", "7本", "8本", "9本"], correctAnswer: "8本", explanation: "問題文の前提や文脈において、合計で購入した本数が8本と計算・指定されている事実だからです。", passage: "岡田さんは花屋でカーネーション5本とバラ3本を買いました。"),
            ExerciseItem(id: UUID(), prompt: "1週間に何回通いますか？", options: ["1回", "2回", "3回", "4回"], correctAnswer: "2回", explanation: "問題文の前提や文脈において、1週間に通う回数が2回と指定されている事実だからです。", passage: "橋本さんは毎週月曜日と木曜日に書道教室に通っています。"),
            ExerciseItem(id: UUID(), prompt: "合計いくら払いましたか？", options: ["700円", "750円", "800円", "900円"], correctAnswer: "800円", explanation: "問題文の前提や文脈において、支払った合計金額が800円と計算・指定されている事実だからです。", passage: "加藤さんは昨日、スーパーで野菜（200円）と魚（500円）と豆腐（100円）を買いました。"),
            ExerciseItem(id: UUID(), prompt: "職場に着いたのは何時ですか？", options: ["7時20分", "7時30分", "7時45分", "8時00分"], correctAnswer: "7時30分", explanation: "問題文の前提や文脈において、職場に着いた時間が7時30分と指定されている事実だからです。", passage: "松本さんは朝7時に家を出て、電車で30分かけて職場に着きました。"),
            ExerciseItem(id: UUID(), prompt: "どの季節が最初でしたか？", options: ["夏", "秋", "春", "冬"], correctAnswer: "春", explanation: "日本の一般的な四季の順序では春が最初とされており、文脈上でもそのように指定されているからです。", passage: "山田さんは春に桜を見て感動し、夏に海水浴を楽しみ、秋に紅葉を見ました。"),
            ExerciseItem(id: UUID(), prompt: "4週間で何冊読みますか？", options: ["6冊", "7冊", "8冊", "10冊"], correctAnswer: "8冊", explanation: "問題文の前提や文脈において、4週間で読む冊数が8冊と計算・指定されている事実だからです。", passage: "斎藤さんは本を週に2冊読みます。"),
            ExerciseItem(id: UUID(), prompt: "昼寝は何分しましたか？", options: ["60分", "75分", "90分", "120分"], correctAnswer: "90分", explanation: "問題文の前提や文脈において、昼寝をした時間が90分と指定されている事実だからです。", passage: "伊藤さんは午後2時から3時半まで昼寝をしました。"),
            ExerciseItem(id: UUID(), prompt: "孫からもらったものは何ですか？", options: ["花束", "ケーキ", "絵", "本"], correctAnswer: "絵", explanation: "問題文の前提や文脈において、孫からもらったものが絵であると指定されている事実だからです。", passage: "田中さんは誕生日に娘から花束、息子からケーキ、孫から絵をもらいました。"),
            ExerciseItem(id: UUID(), prompt: "3日間で何回飲みますか？", options: ["7回", "8回", "9回", "10回"], correctAnswer: "9回", explanation: "問題文の前提や文脈において、3日間で飲む回数が9回と計算・指定されている事実だからです。", passage: "鈴木さんは毎日薬を朝・昼・晩の3回飲みます。"),
            ExerciseItem(id: UUID(), prompt: "東京を午前10時に出発したら、到着は何時ですか？", options: ["午前11時", "正午", "午後1時", "午後2時"], correctAnswer: "正午", explanation: "午前10時から2時間後の時間が午後0時であり、それは「正午」と呼ばれるためです。", passage: "中村さんは旅行で新幹線に2時間乗りました。"),
            ExerciseItem(id: UUID(), prompt: "箱の中のりんごは全部で何個ですか？", options: ["6個", "7個", "8個", "9個"], correctAnswer: "8個", explanation: "問題文の前提や文脈において、箱の中のりんごの合計が8個と計算・指定されている事実だからです。", passage: "渡辺さんは箱に赤いりんご3個と緑のりんご5個を入れました。"),
            ExerciseItem(id: UUID(), prompt: "映画の次の日は何曜日ですか？", options: ["水曜日", "木曜日", "金曜日", "土曜日"], correctAnswer: "金曜日", explanation: "問題文の前提や文脈において、映画を見る日が木曜日に設定されており、その次の日が金曜日となるためです。", passage: "高橋さんは木曜日に友達と映画を見ました。"),
            ExerciseItem(id: UUID(), prompt: "薬局に行ったのはいつですか？", options: ["午前中", "正午", "午後", "夜"], correctAnswer: "午後", explanation: "問題文の前提や文脈において、薬局に行った時間帯が午後であると指定されている事実だからです。", passage: "佐藤さんは午前に病院に行き、午後に薬局に寄りました。")
        ]
    )

    // MARK: - 数列（ニュー）
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "数列（ニュー）",
        instructions: "次の数字の並びを続けてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "数列が3ずつ増加する等差数列であるため、12に3を足すと15になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 4, 9, 16, ___", options: ["20", "24", "25", "30"], correctAnswer: "25", explanation: "1, 2, 3, 4の2乗（平方数）が続く数列であるため、次は5の2乗の25になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 50, 40, 30, 20, ___", options: ["5", "8", "10", "15"], correctAnswer: "10", explanation: "数列が10ずつ減少する等差数列であるため、20から10を引くと10になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 2, 6, 18, 54, ___", options: ["108", "120", "162", "200"], correctAnswer: "162", explanation: "前の数に3を掛けた数が続く等比数列であるため、54の3倍で162になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 8, 16, 24, 32, ___", options: ["36", "38", "40", "42"], correctAnswer: "40", explanation: "数列が8ずつ増加する等差数列であるため、32に8を足すと40になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 5, 4, 3, 2, ___", options: ["0", "1", "2", "3"], correctAnswer: "1", explanation: "数列が1ずつ減少する等差数列であるため、2から1を引くと1になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 10, 13, 16, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "22", explanation: "数列が3ずつ増加する等差数列であるため、19に3を足すと22になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 25, 20, 15, 10, ___", options: ["3", "4", "5", "6"], correctAnswer: "5", explanation: "数列が5ずつ減少する等差数列であるため、10から5を引くと5になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 2, 4, 7, 11, ___", options: ["14", "15", "16", "17"], correctAnswer: "16", explanation: "階差が+1, +2, +3, +4と1ずつ増えている数列なので、11に+5をして16になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 36, 30, 24, 18, ___", options: ["10", "11", "12", "13"], correctAnswer: "12", explanation: "数列が6ずつ減少する等差数列であるため、18から6を引くと12になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1000, 100, 10, ___", options: ["0", "1", "5", "10"], correctAnswer: "1", explanation: "前の数を10で割った数が続く等比数列であるため、10を10で割って1になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 4, 9, 16, 25, ___", options: ["30", "34", "36", "40"], correctAnswer: "36", explanation: "2, 3, 4, 5の2乗（平方数）が続く数列であるため、次は6の2乗の36になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 11, 22, 33, 44, ___", options: ["50", "54", "55", "66"], correctAnswer: "55", explanation: "数列が11ずつ増加する等差数列であるため、44に11を足すと55になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 3, 5, 8, 13, 21, ___", options: ["30", "32", "34", "38"], correctAnswer: "34", explanation: "直前の2つの数を足した数が次に来るフィボナッチ数列であるため、13と21を足して34になるからです。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 100, 95, 85, 70, ___", options: ["50", "55", "60", "65"], correctAnswer: "50", explanation: "階差が-5, -10, -15と5ずつマイナス方向に増えている数列なので、70から20を引いて50になるからです。")
        ]
    )

    // MARK: - 原因と結果（ニュー）
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "原因と結果（ニュー）",
        instructions: "原因と結果の関係を答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "毎日水を飲まなかったら？", options: ["体が健康になる", "脱水症状になりやすい", "体重が増える", "食欲が増す"], correctAnswer: "脱水症状になりやすい", explanation: "人間の体は水分を必要としており、毎日水を飲まないと水分不足になり、脱水症状を引き起こす危険性が高まるためです。"),
            ExerciseItem(id: UUID(), prompt: "眼鏡を忘れて外出したら？", options: ["目が良くなる", "見えにくくて困る", "頭痛がなくなる", "運動しやすくなる"], correctAnswer: "見えにくくて困る", explanation: "眼鏡は視力を矯正する道具であり、普段眼鏡をかけている人が忘れると、周囲の景色や文字がぼやけて見えにくくなり困るためです。"),
            ExerciseItem(id: UUID(), prompt: "毎日体操をしたら？", options: ["体が弱くなる", "体が柔軟になり健康に良い", "疲れやすくなる", "食欲がなくなる"], correctAnswer: "体が柔軟になり健康に良い", explanation: "体操などの適度な運動を継続することで、筋肉や関節がほぐれ、健康維持につながるからです。"),
            ExerciseItem(id: UUID(), prompt: "食事をよく噛んで食べたら？", options: ["消化が悪くなる", "消化が良くなる", "食べる量が増える", "歯が弱くなる"], correctAnswer: "消化が良くなる", explanation: "よく噛むことで食べ物が細かくなり、唾液とよく混ざるため、胃腸での消化吸収がスムーズになるからです。"),
            ExerciseItem(id: UUID(), prompt: "冷蔵庫に食品を入れすぎたら？", options: ["食品が長持ちする", "冷却効率が下がり食品が傷みやすい", "電気代が安くなる", "食品の味が良くなる"], correctAnswer: "冷却効率が下がり食品が傷みやすい", explanation: "詰め込みすぎると冷気の循環が悪くなり、庫内の温度が上がって食品が傷む原因になるからです。"),
            ExerciseItem(id: UUID(), prompt: "良い知らせを受け取ったら？", options: ["悲しくなる", "怒る", "うれしくなる", "眠くなる"], correctAnswer: "うれしくなる", explanation: "自分や周囲にとってプラスになる出来事を知ると、自然と喜びの感情が湧くからです。"),
            ExerciseItem(id: UUID(), prompt: "定期的に健康診断を受けたら？", options: ["病気が増える", "病気の早期発見ができる", "薬代が増える", "医者が嫌いになる"], correctAnswer: "病気の早期発見ができる", explanation: "定期的に体の状態をチェックすることで、自覚症状のない病気や異常を初期段階で見つけられるからです。"),
            ExerciseItem(id: UUID(), prompt: "傘を持たずに出かけて雨に降られたら？", options: ["乾いたまま", "体が濡れてしまう", "楽しくなる", "暖かくなる"], correctAnswer: "体が濡れてしまう", explanation: "雨をよける道具がないため、直接雨粒を浴びて服や体が濡れてしまうからです。"),
            ExerciseItem(id: UUID(), prompt: "友達に親切にしたら？", options: ["友達が離れる", "友達が喜ぶ", "友達が怒る", "友達が悲しむ"], correctAnswer: "友達が喜ぶ", explanation: "相手を思いやる行動は、相手に安心感や嬉しさを与えるからです。"),
            ExerciseItem(id: UUID(), prompt: "大切な書類を適切に保管しなかったら？", options: ["見つけやすくなる", "書類が増える", "必要なときに見つからなくなる", "書類の内容が変わる"], correctAnswer: "必要なときに見つからなくなる", explanation: "整理整頓されていないと、いざという時にどこに置いたかわからなくなり、探すのに苦労するからです。"),
            ExerciseItem(id: UUID(), prompt: "庭の草むしりをしなかったら？", options: ["庭がきれいになる", "雑草が増える", "草花が育つ", "庭が明るくなる"], correctAnswer: "雑草が増える", explanation: "雑草は生命力が強く、放っておくとどんどん成長して増殖するからです。"),
            ExerciseItem(id: UUID(), prompt: "毎日日記をつけたら？", options: ["記憶が弱くなる", "出来事を記録に残せる", "字が汚くなる", "時間が増える"], correctAnswer: "出来事を記録に残せる", explanation: "日々の出来事や感情を文字にすることで、後から振り返ることができる記録となるからです。"),
            ExerciseItem(id: UUID(), prompt: "喉が痛いのに大声で話し続けたら？", options: ["声が良くなる", "喉の回復が遅くなる", "声が大きくなる", "喉が楽になる"], correctAnswer: "喉の回復が遅くなる", explanation: "炎症を起こしている喉をさらに酷使することで、症状が悪化し治りづらくなるからです。"),
            ExerciseItem(id: UUID(), prompt: "孫が遊びに来たら？", options: ["悲しくなる", "うれしくなる", "怒る", "心配する"], correctAnswer: "うれしくなる", explanation: "可愛い孫とのふれあいや成長を見ることは、大きな喜びと癒しをもたらすからです。"),
            ExerciseItem(id: UUID(), prompt: "家をきれいに掃除したら？", options: ["ほこりが増える", "部屋が汚くなる", "気持ちも爽やかになる", "片付けが嫌いになる"], correctAnswer: "気持ちも爽やかになる", explanation: "生活環境が清潔で整っていると、視覚的にも精神的にもすっきりしてリフレッシュできるからです。")
        ]
    )

    // MARK: - 感情認識（ニュー）
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "感情認識（ニュー）",
        instructions: "この場面でどんな気持ちになりますか？",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "大切にしていたものが壊れたとき、どんな気持ちになりますか？", options: ["うれしい", "悲しい", "ほっとする", "楽しい"], correctAnswer: "悲しい", explanation: "愛着や思い出のあるものを失うことは、心に強い喪失感を与えるからです。"),
            ExerciseItem(id: UUID(), prompt: "長い列を待ってやっと番が来たとき、どんな気持ちになりますか？", options: ["悲しい", "怒る", "ほっとする", "眠い"], correctAnswer: "ほっとする", explanation: "長時間の待ち時間というストレスから解放され、目的が達成できる安心感を得るからです。"),
            ExerciseItem(id: UUID(), prompt: "初めての場所に一人で行って無事に到着できたとき、どんな気持ちになりますか？", options: ["怖い", "達成感がある", "悲しい", "退屈"], correctAnswer: "達成感がある", explanation: "不安や緊張を乗り越えて自力で目的を果たせたことに、自信と喜びを感じるからです。"),
            ExerciseItem(id: UUID(), prompt: "家族が元気でいてくれることに気づいたとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "感謝する", "退屈"], correctAnswer: "感謝する", explanation: "当たり前だと思いがちな家族の健康や存在のありがたさを再認識するからです。"),
            ExerciseItem(id: UUID(), prompt: "趣味の活動が上手にできたとき、どんな気持ちになりますか？", options: ["悲しい", "怖い", "嬉しい・満足", "怒る"], correctAnswer: "嬉しい・満足", explanation: "自分の好きなことで成果を出せたり、上達を実感したりすると、自己肯定感が高まるからです。"),
            ExerciseItem(id: UUID(), prompt: "昔の写真を見て懐かしい記憶が蘇ったとき、どんな気持ちになりますか？", options: ["怒る", "懐かしい", "怖い", "退屈"], correctAnswer: "懐かしい", explanation: "過去の楽しい思い出や当時関わった人々のことを思い出し、心が温かくなるからです。"),
            ExerciseItem(id: UUID(), prompt: "突然大きな音がしたとき、どんな気持ちになりますか？", options: ["うれしい", "ほっとする", "驚く", "楽しい"], correctAnswer: "驚く", explanation: "予期せぬ刺激に対して、人間の防衛本能が働き、瞬時に体が反応するからです。"),
            ExerciseItem(id: UUID(), prompt: "誰かに感謝の言葉を伝えたとき、どんな気持ちになりますか？", options: ["悲しい", "怒る", "温かい気持ちになる", "眠くなる"], correctAnswer: "温かい気持ちになる", explanation: "感謝の気持ちを表現することで、相手との絆を感じ、自分自身もポジティブな気分になるからです。"),
            ExerciseItem(id: UUID(), prompt: "楽しみにしていた旅行の前日、どんな気持ちになりますか？", options: ["悲しい", "怒る", "わくわくする", "退屈"], correctAnswer: "わくわくする", explanation: "明日から始まる楽しい出来事を想像して、期待感で胸がいっぱいになるからです。"),
            ExerciseItem(id: UUID(), prompt: "良い知らせが届いたとき、最初にどんな気持ちになりますか？", options: ["悲しい", "怒る", "うれしい", "怖い"], correctAnswer: "うれしい", explanation: "自分や周囲にとって望ましい結果や喜ばしい出来事を知ることで、幸福感を感じるからです。"),
            ExerciseItem(id: UUID(), prompt: "助けを求めたら周りの人が助けてくれたとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "感謝する", "退屈"], correctAnswer: "感謝する", explanation: "困っている時に親切にされると、他者の優しさや思いやりにありがたみを感じるからです。"),
            ExerciseItem(id: UUID(), prompt: "誰かに約束を破られたとき、どんな気持ちになりますか？", options: ["うれしい", "がっかり・怒る", "ほっとする", "楽しい"], correctAnswer: "がっかり・怒る", explanation: "相手を信じていたのに裏切られたと感じ、不満や悲しみが入り混じるからです。"),
            ExerciseItem(id: UUID(), prompt: "庭の花が美しく咲いているのを見たとき、どんな気持ちになりますか？", options: ["悲しい", "怒る", "心が和む", "怖い"], correctAnswer: "心が和む", explanation: "自然の美しさや生命力を感じることで、心がリラックスし癒されるからです。"),
            ExerciseItem(id: UUID(), prompt: "難しいことを乗り越えたとき、どんな気持ちになりますか？", options: ["悲しい", "達成感・誇らしい", "退屈", "怖い"], correctAnswer: "達成感・誇らしい", explanation: "困難な課題に対して努力し、成功を収めたことで、自分の能力を肯定できるからです。"),
            ExerciseItem(id: UUID(), prompt: "一人でいると寂しく感じるとき、どんな気持ちになりますか？", options: ["うれしい", "寂しい", "怒る", "楽しい"], correctAnswer: "寂しい", explanation: "人間は社会的な生き物であり、他者とのつながりや交流がないと孤独を感じるからです。")
        ]
    )

    // MARK: - おかしいのはどれ（ニュー）
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "おかしいのはどれ（ニュー）",
        instructions: "この状況でおかしいことは何ですか？",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "田中さんは北海道に旅行するために水着と日焼け止めだけ持っていきました（冬季）。何がおかしいですか？", options: ["旅行の行き先", "冬の北海道に夏の持ち物だけ持っていったこと", "田中さんの名前", "何もおかしくない"], correctAnswer: "冬の北海道に夏の持ち物だけ持っていったこと", explanation: "冬の北海道は非常に寒く雪が降るため防寒着が必要であり、夏の持ち物だけでは不適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "山本さんは誕生日のお祝いに悔やみの言葉を述べました。何がおかしいですか？", options: ["誕生日を覚えたこと", "誕生日のお祝いに悔やみの言葉を述べること", "山本さんの名前", "何もおかしくない"], correctAnswer: "誕生日のお祝いに悔やみの言葉を述べること", explanation: "誕生日は喜ばしいお祝いの場ですが、悔やみの言葉はお葬式などで使う悲しみを表す言葉であり、状況に全く合っていないからです。"),
            ExerciseItem(id: UUID(), prompt: "鈴木さんは朝食にご飯を食べ、ちゃんと手を洗ってから食べました。食べた後、手を洗いました。何がおかしいですか？", options: ["食べ物の内容", "食事の後ではなく食事の前に手を洗うべき", "鈴木さんの名前", "何もおかしくない"], correctAnswer: "何もおかしくない", explanation: "食事前後に手を洗うことは衛生的に正しく、常識的で何もおかしな点はないからです。"),
            ExerciseItem(id: UUID(), prompt: "中村さんは怪我をした足を治すために、健康な腕に包帯を巻きました。何がおかしいですか？", options: ["病院に行ったこと", "怪我した足ではなく健康な腕に包帯を巻いたこと", "中村さんの名前", "何もおかしくない"], correctAnswer: "怪我した足ではなく健康な腕に包帯を巻いたこと", explanation: "治療が必要なのは怪我をした足であり、怪我をしていない健康な腕に包帯を巻いても意味がないからです。"),
            ExerciseItem(id: UUID(), prompt: "渡辺さんは梅雨の季節（6月）に外を出るため長袖の上着を着ていきました。何がおかしいですか？", options: ["外に出たこと", "梅雨時は雨が多く肌寒い日もあるので長袖は適切な場合もある", "渡辺さんの名前", "何もおかしくない"], correctAnswer: "何もおかしくない", explanation: "梅雨の時期は肌寒くなることがあり、長袖を着て体温調節をするのは理にかなっているからです。"),
            ExerciseItem(id: UUID(), prompt: "佐藤さんは魚アレルギーなのに鮭の定食を注文しました。何がおかしいですか？", options: ["魚を食べることが問題", "アレルギーがある食品を食べようとしたこと", "定食を注文したこと", "何もおかしくない"], correctAnswer: "アレルギーがある食品を食べようとしたこと", explanation: "鮭は魚であり、アレルギーがあるのに注文して食べようとすることは健康上の危険を伴うからです。"),
            ExerciseItem(id: UUID(), prompt: "伊藤さんは体の具合が悪くて医者に行きました。医者が処方した薬をきちんと飲みました。何がおかしいですか？", options: ["医者に行ったこと", "薬を飲んだこと", "何もおかしくない（正しい行動）", "体の具合が悪かったこと"], correctAnswer: "何もおかしくない（正しい行動）", explanation: "体調不良で受診し、医師の指示通りに薬を飲むのは、病気を治すための正しい行動だからです。"),
            ExerciseItem(id: UUID(), prompt: "加藤さんは夏の日差しの強い日に日焼け止めを塗りました。何がおかしいですか？", options: ["日焼け止めを使ったこと", "夏に外出したこと", "何もおかしくない（正しい行動）", "加藤さんの名前"], correctAnswer: "何もおかしくない（正しい行動）", explanation: "強い紫外線から肌を守るために日焼け止めを塗ることは、適切な対策だからです。"),
            ExerciseItem(id: UUID(), prompt: "吉田さんは火事を発見したとき、水を全部試してから救急に電話しました。何がおかしいですか？", options: ["火事を発見したこと", "まず救急（119番）に電話するべきだったこと", "水を使おうとしたこと", "何もおかしくない"], correctAnswer: "まず救急（119番）に電話するべきだったこと", explanation: "火事を発見した場合は、初期消火が無理ならまず消防（119番）に通報してプロの助けを呼ぶのが最優先だからです。"),
            ExerciseItem(id: UUID(), prompt: "小林さんは新しいスマートフォンの使い方がわからないので、息子に教えてもらいました。何がおかしいですか？", options: ["新しいスマートフォンを買ったこと", "息子に聞いたこと", "何もおかしくない（賢明な行動）", "小林さんの名前"], correctAnswer: "何もおかしくない（賢明な行動）", explanation: "わからないことを知っている人に聞いて解決するのは、自然で賢明な行動だからです。"),
            ExerciseItem(id: UUID(), prompt: "斎藤さんは熱が38度あるのに、薬を飲まず一人で外出して買い物をしました。何がおかしいですか？", options: ["外出したこと", "熱がある状態で薬も飲まずに外出したこと", "買い物をしたこと", "何もおかしくない"], correctAnswer: "熱がある状態で薬も飲まずに外出したこと", explanation: "高熱があるときは安静にする必要があり、無理をして外出すると症状が悪化したり他人に感染させたりするリスクがあるからです。"),
            ExerciseItem(id: UUID(), prompt: "松本さんは電気代を節約するため、不要な電気を全部消しました。何がおかしいですか？", options: ["電気を消したこと", "節約しようとしたこと", "何もおかしくない（正しい行動）", "松本さんの名前"], correctAnswer: "何もおかしくない（正しい行動）", explanation: "節電のために使っていない電気を消すのは、経済的にも環境的にも正しい行動だからです。"),
            ExerciseItem(id: UUID(), prompt: "橋本さんは風邪薬と胃腸薬を一緒に飲みました。医者に相談せずに複数の薬を一緒に飲むことは？", options: ["問題ない", "相互作用が心配なため、医師や薬剤師に確認するべき", "良いことだ", "一切問題ない"], correctAnswer: "相互作用が心配なため、医師や薬剤師に確認するべき", explanation: "複数の薬を自己判断で同時に飲むと、成分が重複したり悪い相互作用が起きたりする危険があるため、医師や薬剤師に確認すべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "清水さんは睡眠が浅く困っていたので、毎日決まった時間に就寝するようにしました。何がおかしいですか？", options: ["睡眠の問題を解決しようとしたこと", "就寝時間を決めたこと", "何もおかしくない（適切な行動）", "清水さんの名前"], correctAnswer: "何もおかしくない（適切な行動）", explanation: "睡眠リズムを整えるために就寝時間を一定にするのは、睡眠改善のための有効な手段だからです。"),
            ExerciseItem(id: UUID(), prompt: "岡田さんは詐欺電話と思ったので、電話を切って家族に相談しました。何がおかしいですか？", options: ["電話を切ったこと", "家族に相談したこと", "何もおかしくない（賢明な行動）", "岡田さんの名前"], correctAnswer: "何もおかしくない（賢明な行動）", explanation: "不審な電話に対してその場で対応せず、すぐに電話を切って信頼できる身内に相談するのは、詐欺被害を防ぐ最適な対応だからです。")
        ]
    )

    // MARK: - Functional Skills Section

    // MARK: - 処方箋を読む（ニュー）
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "処方箋を読む（ニュー）",
        instructions: "薬の指示を読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "「この薬は冷暗所に保管してください」とあります。どこに保管しますか？", options: ["窓際の明るい場所", "直射日光のあたる棚", "暗くて涼しい場所", "熱い車の中"], correctAnswer: "暗くて涼しい場所", explanation: "冷暗所とは、直射日光が当たらず、温度が低く一定に保たれた場所を指すからです。"),
            ExerciseItem(id: UUID(), prompt: "「毎食後30分以内に服用」とあります。昼食が12時に終わったら最も遅くいつまでに飲みますか？", options: ["12時10分", "12時20分", "12時30分", "13時00分"], correctAnswer: "12時30分", explanation: "食後30分以内とは食事が終わってから30分後までの時間を指すため、12時に終われば12時30分が期限になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「1回1錠×1日2回（朝・夕）」とあります。1週間で何錠飲みますか？", options: ["7錠", "10錠", "14錠", "21錠"], correctAnswer: "14錠", explanation: "1日に飲む量は1錠×2回で2錠であり、1週間（7日間）では2錠×7日で14錠となるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「抗生物質：7日分×1日3回」とあります。全部で何回分ありますか？", options: ["14回分", "21回分", "28回分", "35回分"], correctAnswer: "21回分", explanation: "1日3回を7日間服用するため、3回×7日で21回分となるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬に「副作用として口が乾くことがあります」とあります。この副作用は？", options: ["危険なので飲まない", "一般的な副作用で飲み続けて良い（心配なら医師へ）", "飲む量を減らす", "他の薬に変える"], correctAnswer: "一般的な副作用で飲み続けて良い（心配なら医師へ）", explanation: "薬の成分による一般的な反応であり通常は問題ないですが、不安な場合は医師に相談するのが適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「14日分処方、次回受診は2週間後」とあります。今日が10月1日なら次の受診はいつですか？", options: ["10月10日", "10月14日", "10月15日", "10月20日"], correctAnswer: "10月15日", explanation: "10月1日の2週間（14日）後は、1日に14日を足して10月15日となるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬に「食事と一緒に服用してください」とあります。食事なしで飲んでも良いですか？", options: ["良い", "避ける方が良い", "関係ない", "多めに飲めば良い"], correctAnswer: "避ける方が良い", explanation: "空腹時に飲むと胃を荒らしたり吸収が悪くなったりする薬の場合、食事と合わせる必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「グレープフルーツジュースとは一緒に飲まないでください」とあります。これはなぜですか？", options: ["味が悪くなるから", "薬の効果や副作用に影響するから", "栄養が失われるから", "色が変わるから"], correctAnswer: "薬の効果や副作用に影響するから", explanation: "グレープフルーツの成分が薬の分解を妨げ、血中濃度が上がりすぎて副作用が強く出る危険があるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「この薬は開封後1ヶ月以内に使用してください」とあります。開封が9月1日なら何月何日まで使えますか？", options: ["9月30日", "10月1日", "10月31日", "11月1日"], correctAnswer: "10月1日", explanation: "9月1日からちょうど1ヶ月経過した日は、翌月の1日である10月1日となるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「必要時服用（痛みがある時だけ飲む）」とあります。痛みがないときは？", options: ["飲む", "飲まない", "半分飲む", "2錠飲む"], correctAnswer: "飲まない", explanation: "この薬は症状（痛み）を抑えるための頓服薬であり、症状がないときに飲む必要はないからです。"),
            ExerciseItem(id: UUID(), prompt: "「薬を飲み忘れた場合、気づいたときに1回分を飲んでください。ただし次の服用時間が近い場合は飛ばしてください」とあります。飲み忘れを補うために2回分を一度に飲んでも良いですか？", options: ["良い", "絶対にダメ", "少しなら良い", "医者に聞かなくて良い"], correctAnswer: "絶対にダメ", explanation: "1回に2倍の量を飲むと血中濃度が急上昇し、強い副作用を引き起こす危険性が高まるため絶対に避けるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "「残薬がある場合は捨てないで次回受診時に持参してください」とあります。どうすべきですか？", options: ["余った薬は自分で捨てる", "次の受診まで保管して持参する", "他人にあげる", "全部飲み切る"], correctAnswer: "次の受診まで保管して持参する", explanation: "医師が残薬の数を確認することで、正しく服薬できているかを把握し、処方日数を調整するためです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「1日の最大投与量：2錠」とあります。痛いからといって3錠飲んでも良いですか？", options: ["良い", "絶対にいけない", "1錠増やすくらいなら良い", "医師の指示に関係なく飲んで良い"], correctAnswer: "絶対にいけない", explanation: "規定量を超えて服用すると、効果が高まるよりも重大な副作用が起きるリスクが急激に高まるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬に「服用後に車の運転はしないでください」とあります。飲んだ後、電車で外出するのは良いですか？", options: ["ダメ", "電車であれば運転しないので大丈夫", "外出自体がダメ", "薬によって異なる"], correctAnswer: "電車であれば運転しないので大丈夫", explanation: "薬の副作用で眠気や注意力の低下が起こるため自分が運転するのは危険ですが、電車に同乗する分には問題ないからです。"),
            ExerciseItem(id: UUID(), prompt: "処方された薬が効いていないと感じたとき、自分で量を増やしても良いですか？", options: ["良い", "ダメ、医師に相談する", "倍の量まで良い", "半分減らす"], correctAnswer: "ダメ、医師に相談する", explanation: "自己判断での増量は副作用や中毒の危険があるため、必ず医師の診察を受けて適切な指示を仰ぐ必要があるからです。")
        ]
    )

    // MARK: - メニューを読む（ニュー）
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "メニューを読む（ニュー）",
        instructions: "メニューを読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "「定食A：830円、定食B：950円、定食C：1,100円」。3種類の定食を全部注文したらいくらですか？", options: ["2,780円", "2,880円", "2,980円", "3,080円"], correctAnswer: "2,880円", explanation: "3つの金額を合計すると、830円＋950円＋1100円で2880円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "「昼の特別セット（11:00〜14:00）：1,000円」。セットの料理はいつまで注文できますか？", options: ["10:30", "13:00", "14:00", "15:00"], correctAnswer: "14:00", explanation: "括弧内の時間が提供時間を表しており、終了時刻が14:00と指定されているからです。"),
            ExerciseItem(id: UUID(), prompt: "「ライス追加：100円、味噌汁追加：120円」。両方追加するといくら追加料金がかかりますか？", options: ["180円", "200円", "220円", "250円"], correctAnswer: "220円", explanation: "それぞれの追加料金を合わせると、100円＋120円で220円となるからです。"),
            ExerciseItem(id: UUID(), prompt: "「写真はイメージです」とメニューに書いてあります。これはどういう意味ですか？", options: ["写真と全く同じ料理が来る", "実際の料理は写真と多少異なる場合がある", "写真なしで料理が来る", "料理の色が違う"], correctAnswer: "実際の料理は写真と多少異なる場合がある", explanation: "撮影用に見栄え良く盛り付けられており、実際の提供物と完全に同一ではないことを客に了承してもらうためです。"),
            ExerciseItem(id: UUID(), prompt: "「スープ：選択制（コーンスープ または 味噌汁）」とあります。両方もらえますか？", options: ["はい", "いいえ、どちらか1つ", "追加料金で両方可", "スープは省ける"], correctAnswer: "いいえ、どちらか1つ", explanation: "「選択制（または）」は提示された選択肢の中から1つだけを選ぶという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "「完全禁煙店」とあります。この店内でタバコを吸っても良いですか？", options: ["はい", "喫煙室なら良い", "いいえ", "外なら良い"], correctAnswer: "いいえ", explanation: "「完全禁煙」は店内すべての場所でタバコを吸うことを禁止しているという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "「ご予約の方を優先させていただきます」とあります。予約なしで行くと？", options: ["必ず入れる", "待つ可能性がある", "入れない", "安くなる"], correctAnswer: "待つ可能性がある", explanation: "予約客が先に案内されるため、予約なしで行くと席が空くまで待たされる可能性が高いからです。"),
            ExerciseItem(id: UUID(), prompt: "「食べ放題（1時間制）：大人1,800円、65歳以上1,500円」。70歳の方が食べ放題を利用するといくらですか？", options: ["1,200円", "1,500円", "1,600円", "1,800円"], correctAnswer: "1,500円", explanation: "70歳は「65歳以上」という条件に当てはまるため、シニア料金の1,500円が適用されるからです。"),
            ExerciseItem(id: UUID(), prompt: "「テイクアウトは承っておりません」とあります。持ち帰りはできますか？", options: ["はい", "いいえ", "要確認", "曜日によって可能"], correctAnswer: "いいえ", explanation: "「テイクアウト」は持ち帰り、「承っておりません」は対応しないという意味であり、店内飲食のみとなるからです。"),
            ExerciseItem(id: UUID(), prompt: "「デザート：和菓子セット（850円）、洋菓子セット（920円）」。和菓子は洋菓子よりいくら安いですか？", options: ["50円", "60円", "70円", "80円"], correctAnswer: "70円", explanation: "洋菓子の値段から和菓子の値段を引くと、920円−850円で70円となるからです。"),
            ExerciseItem(id: UUID(), prompt: "「クレジットカード不可、現金のみ」とあります。カードで支払えますか？", options: ["はい", "いいえ", "一部可", "Suicaなら可"], correctAnswer: "いいえ", explanation: "「不可」は利用できないという意味であり、支払い手段は現金に限定されているからです。"),
            ExerciseItem(id: UUID(), prompt: "「本日のランチメニューは数量限定です」とあります。遅く来たらランチメニューがない可能性がありますか？", options: ["ない", "ある", "予約すれば大丈夫", "曜日によって異なる"], correctAnswer: "ある", explanation: "「数量限定」は用意されている数が決まっているという意味であり、売り切れた場合は注文できないからです。"),
            ExerciseItem(id: UUID(), prompt: "「アレルゲン情報：卵・小麦・乳製品を使用」。乳製品アレルギーの方はこのメニューを食べても安全ですか？", options: ["安全", "安全でない可能性がある", "少量なら安全", "確認不要"], correctAnswer: "安全でない可能性がある", explanation: "使用されている食材に「乳製品」が含まれていると明記されており、乳製品アレルギーの人が食べると危険だからです。"),
            ExerciseItem(id: UUID(), prompt: "「お子様ランチ（小学生以下）」とあります。中学生は注文できますか？", options: ["はい", "いいえ", "要確認", "追加料金で可"], correctAnswer: "いいえ", explanation: "対象年齢が「小学生以下」に限定されており、中学生は対象外だからです。"),
            ExerciseItem(id: UUID(), prompt: "「お会計はテーブルでお願いします（レジ会計不可）」とあります。どこで会計しますか？", options: ["レジで", "テーブルで", "外で", "後日払い"], correctAnswer: "テーブルで", explanation: "支払いの手続きはレジではなく、客席（テーブル）で行うように指定されているからです。")
        ]
    )

    // MARK: - 請求書を理解する（ニュー）
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "請求書を理解する（ニュー）",
        instructions: "請求書や領収書を読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "電気代の請求書に「1月分：5,400円、2月分：6,200円」と2ヶ月分まとめて届きました。合計いくら払いますか？", options: ["10,400円", "11,000円", "11,600円", "12,000円"], correctAnswer: "11,600円", explanation: "2ヶ月分の合計額は5400円＋6200円で11600円となるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「お振込先：○○銀行 ○○支店 口座番号：1234567」とあります。これはどこに振り込みますか？", options: ["郵便局", "コンビニ", "○○銀行○○支店の口座", "市役所"], correctAnswer: "○○銀行○○支店の口座", explanation: "「お振込先」とは支払金を送金する宛先を意味しており、指定された銀行口座に振り込む必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "「今月の請求額：8,500円、先月のお支払い済み：8,200円」とあります。差額はいくらですか？", options: ["100円", "200円", "300円", "400円"], correctAnswer: "300円", explanation: "請求額と支払い済みの金額の差額は、8500円−8200円で300円となるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「コンビニ払い可（バーコード付き）」とあります。どこで支払えますか？", options: ["銀行のみ", "自宅", "コンビニでも払える", "郵便局のみ"], correctAnswer: "コンビニでも払える", explanation: "「可」はできるという意味であり、バーコードを使ってコンビニのレジで支払いができるからです。"),
            ExerciseItem(id: UUID(), prompt: "「次回の口座引き落とし日：11月27日、引き落とし金額：12,000円」とあります。11月27日に口座に最低いくら入っていれば良いですか？", options: ["10,000円", "11,000円", "12,000円", "13,000円"], correctAnswer: "12,000円", explanation: "引き落とし日に口座残高が12,000円未満だと引き落としができないため、最低でも請求額と同額が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「領収書は本請求書がご利用になれます」とあります。領収書を別途もらう必要がありますか？", options: ["はい", "いいえ、この請求書が領収書になる", "電話で請求する必要がある", "後日送られてくる"], correctAnswer: "いいえ、この請求書が領収書になる", explanation: "請求書自体が支払い証明（領収書）としての効力を持つと明記されており、別途発行を求める必要がないからです。"),
            ExerciseItem(id: UUID(), prompt: "医療費の請求書で「保険適用3割負担：3,600円」と書いてあります。保険がなければいくらかかりましたか？", options: ["7,200円", "9,000円", "10,800円", "12,000円"], correctAnswer: "12,000円", explanation: "3割負担が3,600円の場合、10割（全額）は3600円を0.3で割って12000円となるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「このたびはご解約の手続きをありがとうございました」とあります。これはどういう意味ですか？", options: ["新規加入の確認", "解約（サービス終了）の確認", "料金値引きの知らせ", "自動更新の知らせ"], correctAnswer: "解約（サービス終了）の確認", explanation: "顧客からの解約申し出が受理され、サービスが正式に終了したことを通知しているからです。"),
            ExerciseItem(id: UUID(), prompt: "「毎月5,000円×12ヶ月の年間プラン」。1年間で合計いくら支払いますか？", options: ["50,000円", "55,000円", "60,000円", "65,000円"], correctAnswer: "60,000円", explanation: "1年間の合計支払い額は5000円×12ヶ月で60000円となるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「お問い合わせ：平日9時〜17時」とあります。土曜日の午後に電話できますか？", options: ["はい", "いいえ", "緊急のみ可", "メールのみ可"], correctAnswer: "いいえ", explanation: "お問い合わせ窓口の対応時間が「平日」に限定されており、土曜日は受け付けていないからです。"),
            ExerciseItem(id: UUID(), prompt: "「前払い決済：1年間分：54,000円（月換算4,500円）」とあります。毎月払いより1ヶ月あたりいくら得ですか（月5,000円の場合）？", options: ["250円", "500円", "750円", "1,000円"], correctAnswer: "500円", explanation: "毎月払い（月5,000円）と比較すると、5000円−4500円で1ヶ月あたり500円安くなるからです。"),
            ExerciseItem(id: UUID(), prompt: "「お支払い期限を過ぎた場合、延滞金が発生します」とあります。期限を守れない場合はどうすれば良いですか？", options: ["無視する", "事前に会社に連絡して相談する", "半分だけ払う", "別の請求書を待つ"], correctAnswer: "事前に会社に連絡して相談する", explanation: "期限に遅れるとペナルティが発生するため、どうしても遅れる場合は事前に事情を説明し相談するのが誠実な対応だからです。"),
            ExerciseItem(id: UUID(), prompt: "「前回のお支払い：現金、今回：口座振替」とあります。今回の支払い方法は何ですか？", options: ["現金", "クレジットカード", "口座振替（銀行引き落とし）", "小切手"], correctAnswer: "口座振替（銀行引き落とし）", explanation: "「今回」の項目に「口座振替」と記載されており、指定の銀行口座から自動で引き落とされる方法だからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に不明な金額が含まれていた場合、どうすれば良いですか？", options: ["とりあえず支払う", "請求先に問い合わせて確認する", "金額を変えて支払う", "無視する"], correctAnswer: "請求先に問い合わせて確認する", explanation: "誤請求の可能性もあるため、そのまま支払わず、まずは請求元に連絡して内訳を確認することが重要だからです。"),
            ExerciseItem(id: UUID(), prompt: "「ご利用期間：9月1日〜9月30日分」とあります。この請求書は何月分の料金ですか？", options: ["8月分", "9月分", "10月分", "8月〜9月分"], correctAnswer: "9月分", explanation: "記載されている利用期間が9月の1ヶ月間であるため、これは9月に利用した分の料金だからです。")
        ]
    )

    // MARK: - どうすれば良い？（ニュー）
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "どうすれば良い？（ニュー）",
        instructions: "この状況でどうすれば良いか答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "初めて飲む薬に不安があるとき、どうすれば良いですか？", options: ["飲まない", "薬剤師に副作用や飲み方を確認する", "量を自分で減らして飲む", "他人の体験談だけを参考にする"], correctAnswer: "薬剤師に副作用や飲み方を確認する", explanation: "薬の専門家である薬剤師に効能や副作用、正しい飲み方を直接聞くことで、不安を解消し安全に服用できるからです。"),
            ExerciseItem(id: UUID(), prompt: "高齢の親族が詐欺にあいそうなとき、どうすれば良いですか？", options: ["本人に任せる", "消費者センターや警察に相談する", "お金を代わりに渡す", "信じてあげる"], correctAnswer: "消費者センターや警察に相談する", explanation: "個人で対応すると危険な場合があるため、公的な相談窓口や警察など専門機関に介入してもらうのが最も確実だからです。"),
            ExerciseItem(id: UUID(), prompt: "孫が遊びに来るとき、安全のために何をすべきですか？", options: ["全ての危ないものを片付ける", "何もしない", "孫を外に出さない", "部屋を暗くする"], correctAnswer: "全ての危ないものを片付ける", explanation: "小さな子供は予期せぬ行動をとるため、誤飲やケガの原因となるような危ないものを事前に片付けておくことが一番の安全対策だからです。"),
            ExerciseItem(id: UUID(), prompt: "病院の受付で保険証を忘れたことに気づいたとき、どうすれば良いですか？", options: ["受付で正直に伝える", "受診をやめる", "他人の保険証を使う", "黙っている"], correctAnswer: "受付で正直に伝える", explanation: "隠しても診察を受けられないため、正直に事情を話し、当日の全額負担や後日精算などの指示を仰ぐのが適切な対応だからです。"),
            ExerciseItem(id: UUID(), prompt: "ゴミの分別がわからないとき、どうすれば良いですか？", options: ["全部燃えるゴミにする", "役所や地域のゴミ分別表を確認する", "全部資源ゴミにする", "隣人のゴミ袋をのぞく"], correctAnswer: "役所や地域のゴミ分別表を確認する", explanation: "ゴミの分別ルールは自治体ごとに細かく決まっているため、自分の住んでいる地域の公式な案内を確認するのが最も正確だからです。"),
            ExerciseItem(id: UUID(), prompt: "転倒を防ぐために自宅でできることは何ですか？", options: ["裸足で歩く", "廊下や階段に手すりをつけ、段差をなくす", "ゆっくり歩くのをやめる", "照明を暗くする"], correctAnswer: "廊下や階段に手すりをつけ、段差をなくす", explanation: "高齢者の家庭内事故は転倒が多いため、手すりをつける、段差をなくすなど物理的なバリアフリー化が有効だからです。"),
            ExerciseItem(id: UUID(), prompt: "スマートフォンの操作がわからなくなったとき、どうすれば良いですか？", options: ["スマートフォンを捨てる", "家族や店員に教えてもらう", "諦める", "強引に操作する"], correctAnswer: "家族や店員に教えてもらう", explanation: "自分で解決できない場合は、操作に慣れている家族や、携帯ショップの店員などのサポートを頼るのが確実だからです。"),
            ExerciseItem(id: UUID(), prompt: "体調が悪いが病院に行くべきか迷っているとき、どうすれば良いですか？", options: ["絶対に行かない", "症状が続くか悪化するなら医師に相談する", "薬局で全ての薬を買う", "一人で判断して大量に薬を飲む"], correctAnswer: "症状が続くか悪化するなら医師に相談する", explanation: "素人判断は危険であり、症状が改善しなかったり悪化したりする場合は、早めに医療機関を受診して専門医の診断を受けるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "大切な人に会いたいとき、どうすれば良いですか？", options: ["会えないと諦める", "電話やビデオ通話、または直接会う計画を立てる", "何もしない", "手紙を書かない"], correctAnswer: "電話やビデオ通話、または直接会う計画を立てる", explanation: "自分の気持ちを大切にし、電話やビデオ通話で連絡を取ったり、実際に会う約束をして行動に移すことで心のつながりを保てるからです。"),
            ExerciseItem(id: UUID(), prompt: "地震の避難場所を確認するために何をすべきですか？", options: ["地震が来てから考える", "事前に地域の避難場所を確認しておく", "地図は必要ない", "誰かに全て任せる"], correctAnswer: "事前に地域の避難場所を確認しておく", explanation: "災害時はパニックになるため、平常時に自治体のハザードマップ等で最寄りの指定避難場所や安全な経路を把握しておくことが命を守るからです。"),
            ExerciseItem(id: UUID(), prompt: "料理をしていて疲れを感じたとき、どうすれば良いですか？", options: ["無理して続ける", "一度休んで体を休める", "全部捨てる", "助けを呼ばない"], correctAnswer: "一度休んで体を休める", explanation: "無理をして続けると火傷や切り傷などの事故につながる危険があるため、一旦火を止めて休憩し、安全を確保することが大切だからです。"),
            ExerciseItem(id: UUID(), prompt: "大切な書類（保険証、パスポートなど）の保管場所を決めるとき、どうすれば良いですか？", options: ["どこでも良い", "決まった場所に整理して保管する", "袋に全部入れる", "常に持ち歩く"], correctAnswer: "決まった場所に整理して保管する", explanation: "重要なものは必要な時にすぐ取り出せるよう、紛失や盗難を防ぐためにも一箇所にまとめて安全な場所に整理して保管するのが基本だからです。"),
            ExerciseItem(id: UUID(), prompt: "夜一人でいるときに不安を感じたとき、どうすれば良いですか？", options: ["全て一人で解決する", "家族や信頼できる人に連絡する", "外に一人で出る", "無視する"], correctAnswer: "家族や信頼できる人に連絡する", explanation: "夜間に不安を感じたときは、一人で抱え込まずに信頼できる人に話を聞いてもらうことで、心が落ち着き安心感を得られるためです。"),
            ExerciseItem(id: UUID(), prompt: "定期的に運動したいが一人では難しいとき、どうすれば良いですか？", options: ["諦める", "地域の運動グループや体操教室に参加する", "毎日ジムに行く", "運動をやめる"], correctAnswer: "地域の運動グループや体操教室に参加する", explanation: "地域のグループや教室に参加することで、他の人と一緒に運動する楽しさや継続するモチベーションを保つことができるためです。"),
            ExerciseItem(id: UUID(), prompt: "電球が切れたが自分では交換が難しいとき、どうすれば良いですか？", options: ["暗いまま過ごす", "家族やケアマネジャーに依頼する", "自分で無理して交換する", "電力会社に電話する"], correctAnswer: "家族やケアマネジャーに依頼する", explanation: "高所での作業は転倒のリスクがあり危険なため、無理をせずに身近な家族や専門のサポートを頼ることが安全だからです。")
        ]
    )
}
