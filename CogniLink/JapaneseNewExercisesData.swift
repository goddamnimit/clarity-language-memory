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
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "つき と韻を踏む言葉は？", options: ["やま", "すき", "かわ", "そら"], correctAnswer: "すき", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "はな と韻を踏む言葉は？", options: ["さな", "かわ", "つき", "うみ"], correctAnswer: "さな", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "やま と韻を踏む言葉は？", options: ["そら", "なま", "かわ", "みず"], correctAnswer: "なま", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "かわ と韻を踏む言葉は？", options: ["やま", "うわ", "つき", "そら"], correctAnswer: "うわ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "そら と韻を踏む言葉は？", options: ["うら", "やま", "かわ", "つき"], correctAnswer: "うら", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "いし と韻を踏む言葉は？", options: ["はな", "むし", "そら", "うみ"], correctAnswer: "むし", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ゆき と韻を踏む言葉は？", options: ["はな", "かわ", "つき", "そら"], correctAnswer: "つき", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "かぜ と韻を踏む言葉は？", options: ["やま", "かせ", "そら", "うみ"], correctAnswer: "かせ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "みち と韻を踏む言葉は？", options: ["まち", "やま", "そら", "かわ"], correctAnswer: "まち", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ほし と韻を踏む言葉は？", options: ["うみ", "やま", "こし", "そら"], correctAnswer: "こし", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "もり と韻を踏む言葉は？", options: ["とり", "やま", "かわ", "そら"], correctAnswer: "とり", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ふね と韻を踏む言葉は？", options: ["つね", "やま", "そら", "かわ"], correctAnswer: "つね", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "あき と韻を踏む言葉は？", options: ["なつ", "かき", "ふゆ", "はる"], correctAnswer: "かき", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "いけ と韻を踏む言葉は？", options: ["やま", "うけ", "かわ", "そら"], correctAnswer: "うけ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "みず と韻を踏む言葉は？", options: ["やま", "かず", "そら", "つき"], correctAnswer: "かず", explanation: "")
        ]
    )

    // MARK: - 語の連想（ニュー）
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "語の連想（ニュー）",
        instructions: "与えられた言葉と最も関係が深い言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "柔道 と最も関係が深いのは？", options: ["道着", "ラケット", "バット", "グローブ"], correctAnswer: "道着", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花火 と最も関係が深いのは？", options: ["冬", "梅雨", "夏", "春"], correctAnswer: "夏", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "茶道 と最も関係が深いのは？", options: ["茶室", "食堂", "体育館", "図書館"], correctAnswer: "茶室", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お盆 と最も関係が深いのは？", options: ["新年", "先祖", "クリスマス", "卒業式"], correctAnswer: "先祖", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "寿司 と最も関係が深いのは？", options: ["ピザ", "ハンバーガー", "わさび", "スパゲッティ"], correctAnswer: "わさび", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "書道 と最も関係が深いのは？", options: ["絵具", "墨", "鉛筆", "クレヨン"], correctAnswer: "墨", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "相撲 と最も関係が深いのは？", options: ["リング", "土俵", "コート", "グラウンド"], correctAnswer: "土俵", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "俳句 と最も関係が深いのは？", options: ["五七五の音節", "八七八の音節", "七五調", "四行詩"], correctAnswer: "五七五の音節", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "桜 と最も関係が深いのは？", options: ["雪", "花見", "台風", "紅葉"], correctAnswer: "花見", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "富士山 と最も関係が深いのは？", options: ["海", "川", "山頂", "砂漠"], correctAnswer: "山頂", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七夕 と最も関係が深いのは？", options: ["短冊", "鏡餅", "ちまき", "おせち"], correctAnswer: "短冊", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "弁当 と最も関係が深いのは？", options: ["お箸", "フォーク", "スプーン", "ナイフ"], correctAnswer: "お箸", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "着物 と最も関係が深いのは？", options: ["ネクタイ", "帯", "ベルト", "スカーフ"], correctAnswer: "帯", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "地震 と最も関係が深いのは？", options: ["海水浴", "避難訓練", "花火", "スキー"], correctAnswer: "避難訓練", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系二世 と最も関係が深いのは？", options: ["明治時代", "第二次世界大戦", "江戸時代", "平安時代"], correctAnswer: "第二次世界大戦", explanation: "")
        ]
    )

    // MARK: - ことわざ完成（ニュー）
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "ことわざ完成（ニュー）",
        instructions: "ことわざの空欄に入る言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "三人寄れば文殊の＿", options: ["知恵", "力", "笑い"], correctAnswer: "知恵", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "虎穴に入らずんば＿を得ず", options: ["虎子", "宝", "獲物"], correctAnswer: "虎子", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "郷に入っては郷に＿", options: ["従え", "住め", "合わせよ"], correctAnswer: "従え", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "馬鹿と＿は高い所に登る", options: ["煙", "霧", "雲"], correctAnswer: "煙", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "類は友を＿", options: ["呼ぶ", "招く", "集める"], correctAnswer: "呼ぶ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "失敗は成功の＿", options: ["もと", "元", "基"], correctAnswer: "もと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "千里の道も一歩から＿", options: ["始まる", "終わる", "続く"], correctAnswer: "始まる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "能ある鷹は爪を＿", options: ["隠す", "見せる", "磨く"], correctAnswer: "隠す", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "二兎を追う者は一兎をも＿ず", options: ["得", "取", "見"], correctAnswer: "得", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "勝てば＿の軍", options: ["官兵", "大軍", "強軍"], correctAnswer: "官兵", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "明日は明日の＿が吹く", options: ["風", "雨", "空"], correctAnswer: "風", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "蛙の子は＿", options: ["蛙", "蛇", "魚"], correctAnswer: "蛙", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "継続は力＿", options: ["なり", "也", "哉"], correctAnswer: "なり", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "良薬は口に＿", options: ["苦し", "甘し", "辛し"], correctAnswer: "苦し", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "光陰矢の如＿", options: ["し", "く", "き"], correctAnswer: "し", explanation: "")
        ]
    )

    // MARK: - 複合語（ニュー）
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "複合語（ニュー）",
        instructions: "二つの言葉を合わせてできる複合語を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "山 + 道 = ？", options: ["道山", "山道", "山路", "路山"], correctAnswer: "山道", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "川 + 岸 = ？", options: ["岸川", "川岸", "岸辺", "川辺"], correctAnswer: "川岸", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "風 + 景 = ？", options: ["景風", "風景", "風光", "光風"], correctAnswer: "風景", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "水 + 面 = ？", options: ["面水", "水面", "水表", "表水"], correctAnswer: "水面", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "空 + 港 = ？", options: ["港空", "空港", "空場", "場空"], correctAnswer: "空港", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "昼 + 食 = ？", options: ["食昼", "昼食", "昼飯", "飯昼"], correctAnswer: "昼食", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夜 + 景 = ？", options: ["景夜", "夜景", "夜光", "光夜"], correctAnswer: "夜景", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花 + 火 = ？", options: ["火花", "花火", "花炎", "炎花"], correctAnswer: "花火", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "木 + 漏れ + 日 = ？", options: ["日漏れ木", "木漏れ日", "漏れ木日", "日木漏れ"], correctAnswer: "木漏れ日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "朝 + 日 = ？", options: ["日朝", "朝日", "朝光", "光朝"], correctAnswer: "朝日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夕 + 日 = ？", options: ["日夕", "夕日", "夕光", "光夕"], correctAnswer: "夕日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "雨 + 水 = ？", options: ["水雨", "雨水", "雨流", "流雨"], correctAnswer: "雨水", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "土 + 地 = ？", options: ["地土", "土地", "土所", "所土"], correctAnswer: "土地", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "道 + 路 = ？", options: ["路道", "道路", "道場", "場道"], correctAnswer: "道路", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "食 + 品 = ？", options: ["品食", "食品", "食物", "物食"], correctAnswer: "食品", explanation: "")
        ]
    )

    // MARK: - 接頭語・接尾語（ニュー）
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "接頭語・接尾語（ニュー）",
        instructions: "空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "＿化（〜になること）: 高齢", options: ["高齢化", "高齢式", "高齢性"], correctAnswer: "高齢化", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "無＿（ない意味）: 理解", options: ["無理解", "不理解", "非理解"], correctAnswer: "無理解", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿力（〜の力）: 記憶", options: ["記憶力", "記憶感", "記憶性"], correctAnswer: "記憶力", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "超＿（非常にの意味）: 満員", options: ["超満員", "大満員", "特満員"], correctAnswer: "超満員", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "未＿（まだ〜していない）: 完成", options: ["未完成", "不完成", "無完成"], correctAnswer: "未完成", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿的（〜のような性質）: 個人", options: ["個人的", "個人性", "個人式"], correctAnswer: "個人的", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "再＿（もう一度の意味）: 確認", options: ["再確認", "又確認", "新確認"], correctAnswer: "再確認", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "非＿（ではないの意味）: 公開", options: ["非公開", "不公開", "無公開"], correctAnswer: "非公開", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿感（〜の感覚）: 達成", options: ["達成感", "達成性", "達成力"], correctAnswer: "達成感", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿者（〜する人）: 患", options: ["患者", "患人", "患員"], correctAnswer: "患者", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "不＿（反対の意味）: 安", options: ["不安", "不信", "不眠"], correctAnswer: "不安", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大＿（大きいの意味）: 自然", options: ["大自然", "大天然", "大野原"], correctAnswer: "大自然", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿性（〜の性質）: 安全", options: ["安全性", "安全感", "安全力"], correctAnswer: "安全性", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "半＿（半分の意味）: 額", options: ["半額", "半値", "半量"], correctAnswer: "半額", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "全＿（すべての意味）: 国", options: ["全国", "全土", "全域"], correctAnswer: "全国", explanation: "")
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
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "清水さんは毎朝何時に公園を散歩しますか？", options: ["7時", "8時", "9時", "10時"], correctAnswer: "8時", explanation: "", passage: "清水さんは毎朝8時に公園を散歩します。火曜日は雨だったので休みました。"),
            ExerciseItem(id: UUID(), prompt: "孫は何歳ですか？", options: ["2歳", "3歳", "4歳", "5歳"], correctAnswer: "3歳", explanation: "", passage: "吉田さんは孫のために赤い毛糸でセーターを編んでいます。孫は3歳の女の子です。"),
            ExerciseItem(id: UUID(), prompt: "合計何本買いましたか？", options: ["6本", "7本", "8本", "9本"], correctAnswer: "8本", explanation: "", passage: "岡田さんは花屋でカーネーション5本とバラ3本を買いました。"),
            ExerciseItem(id: UUID(), prompt: "1週間に何回通いますか？", options: ["1回", "2回", "3回", "4回"], correctAnswer: "2回", explanation: "", passage: "橋本さんは毎週月曜日と木曜日に書道教室に通っています。"),
            ExerciseItem(id: UUID(), prompt: "合計いくら払いましたか？", options: ["700円", "750円", "800円", "900円"], correctAnswer: "800円", explanation: "", passage: "加藤さんは昨日、スーパーで野菜（200円）と魚（500円）と豆腐（100円）を買いました。"),
            ExerciseItem(id: UUID(), prompt: "職場に着いたのは何時ですか？", options: ["7時20分", "7時30分", "7時45分", "8時00分"], correctAnswer: "7時30分", explanation: "", passage: "松本さんは朝7時に家を出て、電車で30分かけて職場に着きました。"),
            ExerciseItem(id: UUID(), prompt: "どの季節が最初でしたか？", options: ["夏", "秋", "春", "冬"], correctAnswer: "春", explanation: "", passage: "山田さんは春に桜を見て感動し、夏に海水浴を楽しみ、秋に紅葉を見ました。"),
            ExerciseItem(id: UUID(), prompt: "4週間で何冊読みますか？", options: ["6冊", "7冊", "8冊", "10冊"], correctAnswer: "8冊", explanation: "", passage: "斎藤さんは本を週に2冊読みます。"),
            ExerciseItem(id: UUID(), prompt: "昼寝は何分しましたか？", options: ["60分", "75分", "90分", "120分"], correctAnswer: "90分", explanation: "", passage: "伊藤さんは午後2時から3時半まで昼寝をしました。"),
            ExerciseItem(id: UUID(), prompt: "孫からもらったものは何ですか？", options: ["花束", "ケーキ", "絵", "本"], correctAnswer: "絵", explanation: "", passage: "田中さんは誕生日に娘から花束、息子からケーキ、孫から絵をもらいました。"),
            ExerciseItem(id: UUID(), prompt: "3日間で何回飲みますか？", options: ["7回", "8回", "9回", "10回"], correctAnswer: "9回", explanation: "", passage: "鈴木さんは毎日薬を朝・昼・晩の3回飲みます。"),
            ExerciseItem(id: UUID(), prompt: "東京を午前10時に出発したら、到着は何時ですか？", options: ["午前11時", "正午", "午後1時", "午後2時"], correctAnswer: "正午", explanation: "", passage: "中村さんは旅行で新幹線に2時間乗りました。"),
            ExerciseItem(id: UUID(), prompt: "箱の中のりんごは全部で何個ですか？", options: ["6個", "7個", "8個", "9個"], correctAnswer: "8個", explanation: "", passage: "渡辺さんは箱に赤いりんご3個と緑のりんご5個を入れました。"),
            ExerciseItem(id: UUID(), prompt: "映画の次の日は何曜日ですか？", options: ["水曜日", "木曜日", "金曜日", "土曜日"], correctAnswer: "金曜日", explanation: "", passage: "高橋さんは木曜日に友達と映画を見ました。"),
            ExerciseItem(id: UUID(), prompt: "薬局に行ったのはいつですか？", options: ["午前中", "正午", "午後", "夜"], correctAnswer: "午後", explanation: "", passage: "佐藤さんは午前に病院に行き、午後に薬局に寄りました。")
        ]
    )

    // MARK: - 数列（ニュー）
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "数列（ニュー）",
        instructions: "次の数字の並びを続けてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 4, 9, 16, ___", options: ["20", "24", "25", "30"], correctAnswer: "25", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 50, 40, 30, 20, ___", options: ["5", "8", "10", "15"], correctAnswer: "10", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 2, 6, 18, 54, ___", options: ["108", "120", "162", "200"], correctAnswer: "162", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 8, 16, 24, 32, ___", options: ["36", "38", "40", "42"], correctAnswer: "40", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 5, 4, 3, 2, ___", options: ["0", "1", "2", "3"], correctAnswer: "1", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 10, 13, 16, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "22", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 25, 20, 15, 10, ___", options: ["3", "4", "5", "6"], correctAnswer: "5", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 2, 4, 7, 11, ___", options: ["14", "15", "16", "17"], correctAnswer: "16", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 36, 30, 24, 18, ___", options: ["10", "11", "12", "13"], correctAnswer: "12", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1000, 100, 10, ___", options: ["0", "1", "5", "10"], correctAnswer: "1", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 4, 9, 16, 25, ___", options: ["30", "34", "36", "40"], correctAnswer: "36", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 11, 22, 33, 44, ___", options: ["50", "54", "55", "66"], correctAnswer: "55", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 3, 5, 8, 13, 21, ___", options: ["30", "32", "34", "38"], correctAnswer: "34", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 100, 95, 85, 70, ___", options: ["50", "55", "60", "65"], correctAnswer: "50", explanation: "")
        ]
    )

    // MARK: - 原因と結果（ニュー）
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "原因と結果（ニュー）",
        instructions: "原因と結果の関係を答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "毎日水を飲まなかったら？", options: ["体が健康になる", "脱水症状になりやすい", "体重が増える", "食欲が増す"], correctAnswer: "脱水症状になりやすい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "眼鏡を忘れて外出したら？", options: ["目が良くなる", "見えにくくて困る", "頭痛がなくなる", "運動しやすくなる"], correctAnswer: "見えにくくて困る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "毎日体操をしたら？", options: ["体が弱くなる", "体が柔軟になり健康に良い", "疲れやすくなる", "食欲がなくなる"], correctAnswer: "体が柔軟になり健康に良い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "食事をよく噛んで食べたら？", options: ["消化が悪くなる", "消化が良くなる", "食べる量が増える", "歯が弱くなる"], correctAnswer: "消化が良くなる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "冷蔵庫に食品を入れすぎたら？", options: ["食品が長持ちする", "冷却効率が下がり食品が傷みやすい", "電気代が安くなる", "食品の味が良くなる"], correctAnswer: "冷却効率が下がり食品が傷みやすい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "良い知らせを受け取ったら？", options: ["悲しくなる", "怒る", "うれしくなる", "眠くなる"], correctAnswer: "うれしくなる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "定期的に健康診断を受けたら？", options: ["病気が増える", "病気の早期発見ができる", "薬代が増える", "医者が嫌いになる"], correctAnswer: "病気の早期発見ができる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "傘を持たずに出かけて雨に降られたら？", options: ["乾いたまま", "体が濡れてしまう", "楽しくなる", "暖かくなる"], correctAnswer: "体が濡れてしまう", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "友達に親切にしたら？", options: ["友達が離れる", "友達が喜ぶ", "友達が怒る", "友達が悲しむ"], correctAnswer: "友達が喜ぶ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大切な書類を適切に保管しなかったら？", options: ["見つけやすくなる", "書類が増える", "必要なときに見つからなくなる", "書類の内容が変わる"], correctAnswer: "必要なときに見つからなくなる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "庭の草むしりをしなかったら？", options: ["庭がきれいになる", "雑草が増える", "草花が育つ", "庭が明るくなる"], correctAnswer: "雑草が増える", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "毎日日記をつけたら？", options: ["記憶が弱くなる", "出来事を記録に残せる", "字が汚くなる", "時間が増える"], correctAnswer: "出来事を記録に残せる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "喉が痛いのに大声で話し続けたら？", options: ["声が良くなる", "喉の回復が遅くなる", "声が大きくなる", "喉が楽になる"], correctAnswer: "喉の回復が遅くなる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "孫が遊びに来たら？", options: ["悲しくなる", "うれしくなる", "怒る", "心配する"], correctAnswer: "うれしくなる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "家をきれいに掃除したら？", options: ["ほこりが増える", "部屋が汚くなる", "気持ちも爽やかになる", "片付けが嫌いになる"], correctAnswer: "気持ちも爽やかになる", explanation: "")
        ]
    )

    // MARK: - 感情認識（ニュー）
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "感情認識（ニュー）",
        instructions: "この場面でどんな気持ちになりますか？",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "大切にしていたものが壊れたとき、どんな気持ちになりますか？", options: ["うれしい", "悲しい", "ほっとする", "楽しい"], correctAnswer: "悲しい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "長い列を待ってやっと番が来たとき、どんな気持ちになりますか？", options: ["悲しい", "怒る", "ほっとする", "眠い"], correctAnswer: "ほっとする", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "初めての場所に一人で行って無事に到着できたとき、どんな気持ちになりますか？", options: ["怖い", "達成感がある", "悲しい", "退屈"], correctAnswer: "達成感がある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "家族が元気でいてくれることに気づいたとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "感謝する", "退屈"], correctAnswer: "感謝する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "趣味の活動が上手にできたとき、どんな気持ちになりますか？", options: ["悲しい", "怖い", "嬉しい・満足", "怒る"], correctAnswer: "嬉しい・満足", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "昔の写真を見て懐かしい記憶が蘇ったとき、どんな気持ちになりますか？", options: ["怒る", "懐かしい", "怖い", "退屈"], correctAnswer: "懐かしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "突然大きな音がしたとき、どんな気持ちになりますか？", options: ["うれしい", "ほっとする", "驚く", "楽しい"], correctAnswer: "驚く", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "誰かに感謝の言葉を伝えたとき、どんな気持ちになりますか？", options: ["悲しい", "怒る", "温かい気持ちになる", "眠くなる"], correctAnswer: "温かい気持ちになる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "楽しみにしていた旅行の前日、どんな気持ちになりますか？", options: ["悲しい", "怒る", "わくわくする", "退屈"], correctAnswer: "わくわくする", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "良い知らせが届いたとき、最初にどんな気持ちになりますか？", options: ["悲しい", "怒る", "うれしい", "怖い"], correctAnswer: "うれしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "助けを求めたら周りの人が助けてくれたとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "感謝する", "退屈"], correctAnswer: "感謝する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "誰かに約束を破られたとき、どんな気持ちになりますか？", options: ["うれしい", "がっかり・怒る", "ほっとする", "楽しい"], correctAnswer: "がっかり・怒る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "庭の花が美しく咲いているのを見たとき、どんな気持ちになりますか？", options: ["悲しい", "怒る", "心が和む", "怖い"], correctAnswer: "心が和む", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "難しいことを乗り越えたとき、どんな気持ちになりますか？", options: ["悲しい", "達成感・誇らしい", "退屈", "怖い"], correctAnswer: "達成感・誇らしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "一人でいると寂しく感じるとき、どんな気持ちになりますか？", options: ["うれしい", "寂しい", "怒る", "楽しい"], correctAnswer: "寂しい", explanation: "")
        ]
    )

    // MARK: - おかしいのはどれ（ニュー）
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "おかしいのはどれ（ニュー）",
        instructions: "この状況でおかしいことは何ですか？",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "田中さんは北海道に旅行するために水着と日焼け止めだけ持っていきました（冬季）。何がおかしいですか？", options: ["旅行の行き先", "冬の北海道に夏の持ち物だけ持っていったこと", "田中さんの名前", "何もおかしくない"], correctAnswer: "冬の北海道に夏の持ち物だけ持っていったこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "山本さんは誕生日のお祝いに悔やみの言葉を述べました。何がおかしいですか？", options: ["誕生日を覚えたこと", "誕生日のお祝いに悔やみの言葉を述べること", "山本さんの名前", "何もおかしくない"], correctAnswer: "誕生日のお祝いに悔やみの言葉を述べること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "鈴木さんは朝食にご飯を食べ、ちゃんと手を洗ってから食べました。食べた後、手を洗いました。何がおかしいですか？", options: ["食べ物の内容", "食事の後ではなく食事の前に手を洗うべき", "鈴木さんの名前", "何もおかしくない"], correctAnswer: "何もおかしくない", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "中村さんは怪我をした足を治すために、健康な腕に包帯を巻きました。何がおかしいですか？", options: ["病院に行ったこと", "怪我した足ではなく健康な腕に包帯を巻いたこと", "中村さんの名前", "何もおかしくない"], correctAnswer: "怪我した足ではなく健康な腕に包帯を巻いたこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "渡辺さんは梅雨の季節（6月）に外を出るため長袖の上着を着ていきました。何がおかしいですか？", options: ["外に出たこと", "梅雨時は雨が多く肌寒い日もあるので長袖は適切な場合もある", "渡辺さんの名前", "何もおかしくない"], correctAnswer: "何もおかしくない", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "佐藤さんは魚アレルギーなのに鮭の定食を注文しました。何がおかしいですか？", options: ["魚を食べることが問題", "アレルギーがある食品を食べようとしたこと", "定食を注文したこと", "何もおかしくない"], correctAnswer: "アレルギーがある食品を食べようとしたこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "伊藤さんは体の具合が悪くて医者に行きました。医者が処方した薬をきちんと飲みました。何がおかしいですか？", options: ["医者に行ったこと", "薬を飲んだこと", "何もおかしくない（正しい行動）", "体の具合が悪かったこと"], correctAnswer: "何もおかしくない（正しい行動）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "加藤さんは夏の日差しの強い日に日焼け止めを塗りました。何がおかしいですか？", options: ["日焼け止めを使ったこと", "夏に外出したこと", "何もおかしくない（正しい行動）", "加藤さんの名前"], correctAnswer: "何もおかしくない（正しい行動）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "吉田さんは火事を発見したとき、水を全部試してから救急に電話しました。何がおかしいですか？", options: ["火事を発見したこと", "まず救急（119番）に電話するべきだったこと", "水を使おうとしたこと", "何もおかしくない"], correctAnswer: "まず救急（119番）に電話するべきだったこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "小林さんは新しいスマートフォンの使い方がわからないので、息子に教えてもらいました。何がおかしいですか？", options: ["新しいスマートフォンを買ったこと", "息子に聞いたこと", "何もおかしくない（賢明な行動）", "小林さんの名前"], correctAnswer: "何もおかしくない（賢明な行動）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "斎藤さんは熱が38度あるのに、薬を飲まず一人で外出して買い物をしました。何がおかしいですか？", options: ["外出したこと", "熱がある状態で薬も飲まずに外出したこと", "買い物をしたこと", "何もおかしくない"], correctAnswer: "熱がある状態で薬も飲まずに外出したこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "松本さんは電気代を節約するため、不要な電気を全部消しました。何がおかしいですか？", options: ["電気を消したこと", "節約しようとしたこと", "何もおかしくない（正しい行動）", "松本さんの名前"], correctAnswer: "何もおかしくない（正しい行動）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "橋本さんは風邪薬と胃腸薬を一緒に飲みました。医者に相談せずに複数の薬を一緒に飲むことは？", options: ["問題ない", "相互作用が心配なため、医師や薬剤師に確認するべき", "良いことだ", "一切問題ない"], correctAnswer: "相互作用が心配なため、医師や薬剤師に確認するべき", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "清水さんは睡眠が浅く困っていたので、毎日決まった時間に就寝するようにしました。何がおかしいですか？", options: ["睡眠の問題を解決しようとしたこと", "就寝時間を決めたこと", "何もおかしくない（適切な行動）", "清水さんの名前"], correctAnswer: "何もおかしくない（適切な行動）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "岡田さんは詐欺電話と思ったので、電話を切って家族に相談しました。何がおかしいですか？", options: ["電話を切ったこと", "家族に相談したこと", "何もおかしくない（賢明な行動）", "岡田さんの名前"], correctAnswer: "何もおかしくない（賢明な行動）", explanation: "")
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
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "「この薬は冷暗所に保管してください」とあります。どこに保管しますか？", options: ["窓際の明るい場所", "直射日光のあたる棚", "暗くて涼しい場所", "熱い車の中"], correctAnswer: "暗くて涼しい場所", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「毎食後30分以内に服用」とあります。昼食が12時に終わったら最も遅くいつまでに飲みますか？", options: ["12時10分", "12時20分", "12時30分", "13時00分"], correctAnswer: "12時30分", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「1回1錠×1日2回（朝・夕）」とあります。1週間で何錠飲みますか？", options: ["7錠", "10錠", "14錠", "21錠"], correctAnswer: "14錠", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "処方箋に「抗生物質：7日分×1日3回」とあります。全部で何回分ありますか？", options: ["14回分", "21回分", "28回分", "35回分"], correctAnswer: "21回分", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "薬に「副作用として口が乾くことがあります」とあります。この副作用は？", options: ["危険なので飲まない", "一般的な副作用で飲み続けて良い（心配なら医師へ）", "飲む量を減らす", "他の薬に変える"], correctAnswer: "一般的な副作用で飲み続けて良い（心配なら医師へ）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "処方箋に「14日分処方、次回受診は2週間後」とあります。今日が10月1日なら次の受診はいつですか？", options: ["10月10日", "10月14日", "10月15日", "10月20日"], correctAnswer: "10月15日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "薬に「食事と一緒に服用してください」とあります。食事なしで飲んでも良いですか？", options: ["良い", "避ける方が良い", "関係ない", "多めに飲めば良い"], correctAnswer: "避ける方が良い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "処方箋に「グレープフルーツジュースとは一緒に飲まないでください」とあります。これはなぜですか？", options: ["味が悪くなるから", "薬の効果や副作用に影響するから", "栄養が失われるから", "色が変わるから"], correctAnswer: "薬の効果や副作用に影響するから", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「この薬は開封後1ヶ月以内に使用してください」とあります。開封が9月1日なら何月何日まで使えますか？", options: ["9月30日", "10月1日", "10月31日", "11月1日"], correctAnswer: "10月1日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "処方箋に「必要時服用（痛みがある時だけ飲む）」とあります。痛みがないときは？", options: ["飲む", "飲まない", "半分飲む", "2錠飲む"], correctAnswer: "飲まない", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「薬を飲み忘れた場合、気づいたときに1回分を飲んでください。ただし次の服用時間が近い場合は飛ばしてください」とあります。飲み忘れを補うために2回分を一度に飲んでも良いですか？", options: ["良い", "絶対にダメ", "少しなら良い", "医者に聞かなくて良い"], correctAnswer: "絶対にダメ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「残薬がある場合は捨てないで次回受診時に持参してください」とあります。どうすべきですか？", options: ["余った薬は自分で捨てる", "次の受診まで保管して持参する", "他人にあげる", "全部飲み切る"], correctAnswer: "次の受診まで保管して持参する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "処方箋に「1日の最大投与量：2錠」とあります。痛いからといって3錠飲んでも良いですか？", options: ["良い", "絶対にいけない", "1錠増やすくらいなら良い", "医師の指示に関係なく飲んで良い"], correctAnswer: "絶対にいけない", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "薬に「服用後に車の運転はしないでください」とあります。飲んだ後、電車で外出するのは良いですか？", options: ["ダメ", "電車であれば運転しないので大丈夫", "外出自体がダメ", "薬によって異なる"], correctAnswer: "電車であれば運転しないので大丈夫", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "処方された薬が効いていないと感じたとき、自分で量を増やしても良いですか？", options: ["良い", "ダメ、医師に相談する", "倍の量まで良い", "半分減らす"], correctAnswer: "ダメ、医師に相談する", explanation: "")
        ]
    )

    // MARK: - メニューを読む（ニュー）
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "メニューを読む（ニュー）",
        instructions: "メニューを読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "「定食A：830円、定食B：950円、定食C：1,100円」。3種類の定食を全部注文したらいくらですか？", options: ["2,780円", "2,880円", "2,980円", "3,080円"], correctAnswer: "2,880円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「昼の特別セット（11:00〜14:00）：1,000円」。セットの料理はいつまで注文できますか？", options: ["10:30", "13:00", "14:00", "15:00"], correctAnswer: "14:00", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「ライス追加：100円、味噌汁追加：120円」。両方追加するといくら追加料金がかかりますか？", options: ["180円", "200円", "220円", "250円"], correctAnswer: "220円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「写真はイメージです」とメニューに書いてあります。これはどういう意味ですか？", options: ["写真と全く同じ料理が来る", "実際の料理は写真と多少異なる場合がある", "写真なしで料理が来る", "料理の色が違う"], correctAnswer: "実際の料理は写真と多少異なる場合がある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「スープ：選択制（コーンスープ または 味噌汁）」とあります。両方もらえますか？", options: ["はい", "いいえ、どちらか1つ", "追加料金で両方可", "スープは省ける"], correctAnswer: "いいえ、どちらか1つ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「完全禁煙店」とあります。この店内でタバコを吸っても良いですか？", options: ["はい", "喫煙室なら良い", "いいえ", "外なら良い"], correctAnswer: "いいえ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「ご予約の方を優先させていただきます」とあります。予約なしで行くと？", options: ["必ず入れる", "待つ可能性がある", "入れない", "安くなる"], correctAnswer: "待つ可能性がある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「食べ放題（1時間制）：大人1,800円、65歳以上1,500円」。70歳の方が食べ放題を利用するといくらですか？", options: ["1,200円", "1,500円", "1,600円", "1,800円"], correctAnswer: "1,500円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「テイクアウトは承っておりません」とあります。持ち帰りはできますか？", options: ["はい", "いいえ", "要確認", "曜日によって可能"], correctAnswer: "いいえ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「デザート：和菓子セット（850円）、洋菓子セット（920円）」。和菓子は洋菓子よりいくら安いですか？", options: ["50円", "60円", "70円", "80円"], correctAnswer: "70円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「クレジットカード不可、現金のみ」とあります。カードで支払えますか？", options: ["はい", "いいえ", "一部可", "Suicaなら可"], correctAnswer: "いいえ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「本日のランチメニューは数量限定です」とあります。遅く来たらランチメニューがない可能性がありますか？", options: ["ない", "ある", "予約すれば大丈夫", "曜日によって異なる"], correctAnswer: "ある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「アレルゲン情報：卵・小麦・乳製品を使用」。乳製品アレルギーの方はこのメニューを食べても安全ですか？", options: ["安全", "安全でない可能性がある", "少量なら安全", "確認不要"], correctAnswer: "安全でない可能性がある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「お子様ランチ（小学生以下）」とあります。中学生は注文できますか？", options: ["はい", "いいえ", "要確認", "追加料金で可"], correctAnswer: "いいえ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「お会計はテーブルでお願いします（レジ会計不可）」とあります。どこで会計しますか？", options: ["レジで", "テーブルで", "外で", "後日払い"], correctAnswer: "テーブルで", explanation: "")
        ]
    )

    // MARK: - 請求書を理解する（ニュー）
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "請求書を理解する（ニュー）",
        instructions: "請求書や領収書を読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "電気代の請求書に「1月分：5,400円、2月分：6,200円」と2ヶ月分まとめて届きました。合計いくら払いますか？", options: ["10,400円", "11,000円", "11,600円", "12,000円"], correctAnswer: "11,600円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "請求書に「お振込先：○○銀行 ○○支店 口座番号：1234567」とあります。これはどこに振り込みますか？", options: ["郵便局", "コンビニ", "○○銀行○○支店の口座", "市役所"], correctAnswer: "○○銀行○○支店の口座", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「今月の請求額：8,500円、先月のお支払い済み：8,200円」とあります。差額はいくらですか？", options: ["100円", "200円", "300円", "400円"], correctAnswer: "300円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "請求書に「コンビニ払い可（バーコード付き）」とあります。どこで支払えますか？", options: ["銀行のみ", "自宅", "コンビニでも払える", "郵便局のみ"], correctAnswer: "コンビニでも払える", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「次回の口座引き落とし日：11月27日、引き落とし金額：12,000円」とあります。11月27日に口座に最低いくら入っていれば良いですか？", options: ["10,000円", "11,000円", "12,000円", "13,000円"], correctAnswer: "12,000円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "請求書に「領収書は本請求書がご利用になれます」とあります。領収書を別途もらう必要がありますか？", options: ["はい", "いいえ、この請求書が領収書になる", "電話で請求する必要がある", "後日送られてくる"], correctAnswer: "いいえ、この請求書が領収書になる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "医療費の請求書で「保険適用3割負担：3,600円」と書いてあります。保険がなければいくらかかりましたか？", options: ["7,200円", "9,000円", "10,800円", "12,000円"], correctAnswer: "12,000円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "請求書に「このたびはご解約の手続きをありがとうございました」とあります。これはどういう意味ですか？", options: ["新規加入の確認", "解約（サービス終了）の確認", "料金値引きの知らせ", "自動更新の知らせ"], correctAnswer: "解約（サービス終了）の確認", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「毎月5,000円×12ヶ月の年間プラン」。1年間で合計いくら支払いますか？", options: ["50,000円", "55,000円", "60,000円", "65,000円"], correctAnswer: "60,000円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "請求書に「お問い合わせ：平日9時〜17時」とあります。土曜日の午後に電話できますか？", options: ["はい", "いいえ", "緊急のみ可", "メールのみ可"], correctAnswer: "いいえ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「前払い決済：1年間分：54,000円（月換算4,500円）」とあります。毎月払いより1ヶ月あたりいくら得ですか（月5,000円の場合）？", options: ["250円", "500円", "750円", "1,000円"], correctAnswer: "500円", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「お支払い期限を過ぎた場合、延滞金が発生します」とあります。期限を守れない場合はどうすれば良いですか？", options: ["無視する", "事前に会社に連絡して相談する", "半分だけ払う", "別の請求書を待つ"], correctAnswer: "事前に会社に連絡して相談する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「前回のお支払い：現金、今回：口座振替」とあります。今回の支払い方法は何ですか？", options: ["現金", "クレジットカード", "口座振替（銀行引き落とし）", "小切手"], correctAnswer: "口座振替（銀行引き落とし）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "請求書に不明な金額が含まれていた場合、どうすれば良いですか？", options: ["とりあえず支払う", "請求先に問い合わせて確認する", "金額を変えて支払う", "無視する"], correctAnswer: "請求先に問い合わせて確認する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "「ご利用期間：9月1日〜9月30日分」とあります。この請求書は何月分の料金ですか？", options: ["8月分", "9月分", "10月分", "8月〜9月分"], correctAnswer: "9月分", explanation: "")
        ]
    )

    // MARK: - どうすれば良い？（ニュー）
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "どうすれば良い？（ニュー）",
        instructions: "この状況でどうすれば良いか答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "初めて飲む薬に不安があるとき、どうすれば良いですか？", options: ["飲まない", "薬剤師に副作用や飲み方を確認する", "量を自分で減らして飲む", "他人の体験談だけを参考にする"], correctAnswer: "薬剤師に副作用や飲み方を確認する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "高齢の親族が詐欺にあいそうなとき、どうすれば良いですか？", options: ["本人に任せる", "消費者センターや警察に相談する", "お金を代わりに渡す", "信じてあげる"], correctAnswer: "消費者センターや警察に相談する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "孫が遊びに来るとき、安全のために何をすべきですか？", options: ["全ての危ないものを片付ける", "何もしない", "孫を外に出さない", "部屋を暗くする"], correctAnswer: "全ての危ないものを片付ける", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "病院の受付で保険証を忘れたことに気づいたとき、どうすれば良いですか？", options: ["受付で正直に伝える", "受診をやめる", "他人の保険証を使う", "黙っている"], correctAnswer: "受付で正直に伝える", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ゴミの分別がわからないとき、どうすれば良いですか？", options: ["全部燃えるゴミにする", "役所や地域のゴミ分別表を確認する", "全部資源ゴミにする", "隣人のゴミ袋をのぞく"], correctAnswer: "役所や地域のゴミ分別表を確認する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "転倒を防ぐために自宅でできることは何ですか？", options: ["裸足で歩く", "廊下や階段に手すりをつけ、段差をなくす", "ゆっくり歩くのをやめる", "照明を暗くする"], correctAnswer: "廊下や階段に手すりをつけ、段差をなくす", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "スマートフォンの操作がわからなくなったとき、どうすれば良いですか？", options: ["スマートフォンを捨てる", "家族や店員に教えてもらう", "諦める", "強引に操作する"], correctAnswer: "家族や店員に教えてもらう", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "体調が悪いが病院に行くべきか迷っているとき、どうすれば良いですか？", options: ["絶対に行かない", "症状が続くか悪化するなら医師に相談する", "薬局で全ての薬を買う", "一人で判断して大量に薬を飲む"], correctAnswer: "症状が続くか悪化するなら医師に相談する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大切な人に会いたいとき、どうすれば良いですか？", options: ["会えないと諦める", "電話やビデオ通話、または直接会う計画を立てる", "何もしない", "手紙を書かない"], correctAnswer: "電話やビデオ通話、または直接会う計画を立てる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "地震の避難場所を確認するために何をすべきですか？", options: ["地震が来てから考える", "事前に地域の避難場所を確認しておく", "地図は必要ない", "誰かに全て任せる"], correctAnswer: "事前に地域の避難場所を確認しておく", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "料理をしていて疲れを感じたとき、どうすれば良いですか？", options: ["無理して続ける", "一度休んで体を休める", "全部捨てる", "助けを呼ばない"], correctAnswer: "一度休んで体を休める", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大切な書類（保険証、パスポートなど）の保管場所を決めるとき、どうすれば良いですか？", options: ["どこでも良い", "決まった場所に整理して保管する", "袋に全部入れる", "常に持ち歩く"], correctAnswer: "決まった場所に整理して保管する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夜一人でいるときに不安を感じたとき、どうすれば良いですか？", options: ["全て一人で解決する", "家族や信頼できる人に連絡する", "外に一人で出る", "無視する"], correctAnswer: "家族や信頼できる人に連絡する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "定期的に運動したいが一人では難しいとき、どうすれば良いですか？", options: ["諦める", "地域の運動グループや体操教室に参加する", "毎日ジムに行く", "運動をやめる"], correctAnswer: "地域の運動グループや体操教室に参加する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "電球が切れたが自分では交換が難しいとき、どうすれば良いですか？", options: ["暗いまま過ごす", "家族やケアマネジャーに依頼する", "自分で無理して交換する", "電力会社に電話する"], correctAnswer: "家族やケアマネジャーに依頼する", explanation: "")
        ]
    )
}
