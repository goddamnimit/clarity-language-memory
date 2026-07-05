import Foundation

struct JapaneseLanguageExerciseData {

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
        exercise14,
        exercise15,
        exercise16,
        exercise17
    ]

    // MARK: - カテゴリー外し（簡単）
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "カテゴリー外し（簡単）",
        instructions: "グループに属さない言葉を選んでください。",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "りんご、バナナ、にんじん、もも", options: ["りんご", "バナナ", "にんじん", "もも"], correctAnswer: "にんじん", explanation: "野菜で、果物ではありません"),
            ExerciseItem(id: UUID(), prompt: "犬、猫、鳥、桜", options: ["犬", "猫", "鳥", "桜"], correctAnswer: "桜", explanation: "植物で、動物ではありません"),
            ExerciseItem(id: UUID(), prompt: "電車、バス、自動車、椅子", options: ["電車", "バス", "自動車", "椅子"], correctAnswer: "椅子", explanation: "乗り物ではありません"),
            ExerciseItem(id: UUID(), prompt: "シャツ、ズボン、靴下、皿", options: ["シャツ", "ズボン", "靴下", "皿"], correctAnswer: "皿", explanation: "衣類ではありません"),
            ExerciseItem(id: UUID(), prompt: "机、椅子、ベッド、本", options: ["机", "椅子", "ベッド", "本"], correctAnswer: "本", explanation: "家具ではありません"),
            ExerciseItem(id: UUID(), prompt: "月曜日、火曜日、水曜日、一月", options: ["月曜日", "火曜日", "水曜日", "一月"], correctAnswer: "一月", explanation: "曜日ではなく、月です"),
            ExerciseItem(id: UUID(), prompt: "東京、大阪、京都、富士山", options: ["東京", "大阪", "京都", "富士山"], correctAnswer: "富士山", explanation: "都市ではなく、山です"),
            ExerciseItem(id: UUID(), prompt: "目、耳、鼻、帽子", options: ["目", "耳", "鼻", "帽子"], correctAnswer: "帽子", explanation: "体の一部ではありません"),
            ExerciseItem(id: UUID(), prompt: "春、夏、秋、朝", options: ["春", "夏", "秋", "朝"], correctAnswer: "朝", explanation: "季節ではなく、時間帯です"),
            ExerciseItem(id: UUID(), prompt: "寿司、ラーメン、うどん、ケーキ", options: ["寿司", "ラーメン", "うどん", "ケーキ"], correctAnswer: "ケーキ", explanation: "和食ではなく、洋菓子です"),
            ExerciseItem(id: UUID(), prompt: "ハンマー、ドライバー、ノコギリ、布団", options: ["ハンマー", "ドライバー", "ノコギリ", "布団"], correctAnswer: "布団", explanation: "工具ではありません"),
            ExerciseItem(id: UUID(), prompt: "赤、青、緑、丸", options: ["赤", "青", "緑", "丸"], correctAnswer: "丸", explanation: "色ではなく、形です"),
            ExerciseItem(id: UUID(), prompt: "ピアノ、バイオリン、ギター、絵筆", options: ["ピアノ", "バイオリン", "ギター", "絵筆"], correctAnswer: "絵筆", explanation: "楽器ではありません"),
            ExerciseItem(id: UUID(), prompt: "医者、看護師、弁護士、病院", options: ["医者", "看護師", "弁護士", "病院"], correctAnswer: "病院", explanation: "職業ではなく、場所です"),
            ExerciseItem(id: UUID(), prompt: "牛乳、お茶、コーヒー、パン", options: ["牛乳", "お茶", "コーヒー", "パン"], correctAnswer: "パン", explanation: "飲み物ではなく、食べ物です"),
            ExerciseItem(id: UUID(), prompt: "海、川、湖、山", options: ["海", "川", "湖", "山"], correctAnswer: "山", explanation: "水の地形ではありません"),
            ExerciseItem(id: UUID(), prompt: "本、雑誌、新聞、鉛筆", options: ["本", "雑誌", "新聞", "鉛筆"], correctAnswer: "鉛筆", explanation: "読み物ではありません"),
            ExerciseItem(id: UUID(), prompt: "桜、梅、菊、松", options: ["桜", "梅", "菊", "松"], correctAnswer: "松", explanation: "花ではなく、木です"),
            ExerciseItem(id: UUID(), prompt: "太陽、月、星、雲", options: ["太陽", "月", "星", "雲"], correctAnswer: "雲", explanation: "天体ではなく、気象現象です"),
            ExerciseItem(id: UUID(), prompt: "靴、サンダル、ブーツ、財布", options: ["靴", "サンダル", "ブーツ", "財布"], correctAnswer: "財布", explanation: "履き物ではありません"),
            ExerciseItem(id: UUID(), prompt: "冷蔵庫、電子レンジ、洗濯機、窓", options: ["冷蔵庫", "電子レンジ", "洗濯機", "窓"], correctAnswer: "窓", explanation: "家電製品ではありません"),
            ExerciseItem(id: UUID(), prompt: "一、二、三、甲", options: ["一", "二", "三", "甲"], correctAnswer: "甲", explanation: "数字ではなく、順位を表す文字です"),
            ExerciseItem(id: UUID(), prompt: "鮭、まぐろ、鯛、えび", options: ["鮭", "まぐろ", "鯛", "えび"], correctAnswer: "えび", explanation: "魚ではなく、甲殻類です"),
            ExerciseItem(id: UUID(), prompt: "東、西、南、上", options: ["東", "西", "南", "上"], correctAnswer: "上", explanation: "方角ではなく、方向です"),
            ExerciseItem(id: UUID(), prompt: "リンゴ、柿、ぶどう、たまねぎ", options: ["リンゴ", "柿", "ぶどう", "たまねぎ"], correctAnswer: "たまねぎ", explanation: "果物ではなく、野菜です"),
            ExerciseItem(id: UUID(), prompt: "学校、図書館、病院、消防車", options: ["学校", "図書館", "病院", "消防車"], correctAnswer: "消防車", explanation: "建物ではなく、乗り物です"),
            ExerciseItem(id: UUID(), prompt: "傘、コート、手袋、サングラス", options: ["傘", "コート", "手袋", "サングラス"], correctAnswer: "サングラス", explanation: "雨具ではありません"),
            ExerciseItem(id: UUID(), prompt: "田中、山本、佐藤、東京", options: ["田中", "山本", "佐藤", "東京"], correctAnswer: "東京", explanation: "名前ではなく、地名です"),
            ExerciseItem(id: UUID(), prompt: "鉛筆、ボールペン、消しゴム、定規", options: ["鉛筆", "ボールペン", "消しゴム", "定規"], correctAnswer: "定規", explanation: "書くための文房具ではありません"),
            ExerciseItem(id: UUID(), prompt: "チョコレート、キャンディ、クッキー、からし", options: ["チョコレート", "キャンディ", "クッキー", "からし"], correctAnswer: "からし", explanation: "甘いお菓子ではありません")
        ]
    )

    // MARK: - カテゴリー外し（難しい）
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "カテゴリー外し（難しい）",
        instructions: "グループに属さない言葉を選んでください。",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "俳句、短歌、連歌、散文", options: ["俳句", "短歌", "連歌", "散文"], correctAnswer: "散文", explanation: "詩の形式ではありません"),
            ExerciseItem(id: UUID(), prompt: "大腿骨、脛骨、肋骨、角膜", options: ["大腿骨", "脛骨", "肋骨", "角膜"], correctAnswer: "角膜", explanation: "骨ではなく、目の一部です"),
            ExerciseItem(id: UUID(), prompt: "ベートーベン、モーツァルト、ショパン、葛飾北斎", options: ["ベートーベン", "モーツァルト", "ショパン", "葛飾北斎"], correctAnswer: "葛飾北斎", explanation: "音楽家ではなく、画家です"),
            ExerciseItem(id: UUID(), prompt: "ナイル川、アマゾン川、テムズ川、エベレスト山", options: ["ナイル川", "アマゾン川", "テムズ川", "エベレスト山"], correctAnswer: "エベレスト山", explanation: "川ではなく、山です"),
            ExerciseItem(id: UUID(), prompt: "比喩、隠喩、擬人法、段落", options: ["比喩", "隠喩", "擬人法", "段落"], correctAnswer: "段落", explanation: "文章の構造で、修辞法ではありません"),
            ExerciseItem(id: UUID(), prompt: "民主主義、共産主義、社会主義、個人主義", options: ["民主主義", "共産主義", "社会主義", "個人主義"], correctAnswer: "個人主義", explanation: "政治体制ではなく、個人の哲学です"),
            ExerciseItem(id: UUID(), prompt: "インスリン、アドレナリン、エストロゲン、イブプロフェン", options: ["インスリン", "アドレナリン", "エストロゲン", "イブプロフェン"], correctAnswer: "イブプロフェン", explanation: "ホルモンではなく、合成薬です"),
            ExerciseItem(id: UUID(), prompt: "陸軍、海軍、空軍、警察", options: ["陸軍", "海軍", "空軍", "警察"], correctAnswer: "警察", explanation: "軍の部門ではありません"),
            ExerciseItem(id: UUID(), prompt: "水星、金星、土星、月", options: ["水星", "金星", "土星", "月"], correctAnswer: "月", explanation: "惑星ではなく、衛星です"),
            ExerciseItem(id: UUID(), prompt: "ソナタ、交響曲、協奏曲、オペラ", options: ["ソナタ", "交響曲", "協奏曲", "オペラ"], correctAnswer: "オペラ", explanation: "純粋な器楽曲ではなく、声楽を含む舞台作品です"),
            ExerciseItem(id: UUID(), prompt: "フランス語、スペイン語、イタリア語、英語", options: ["フランス語", "スペイン語", "イタリア語", "英語"], correctAnswer: "英語", explanation: "ラテン語系の言語ではありません"),
            ExerciseItem(id: UUID(), prompt: "哲学、倫理学、論理学、化学", options: ["哲学", "倫理学", "論理学", "化学"], correctAnswer: "化学", explanation: "人文科学ではなく、自然科学です"),
            ExerciseItem(id: UUID(), prompt: "象形文字、楔形文字、ハングル、甲骨文字", options: ["象形文字", "楔形文字", "ハングル", "甲骨文字"], correctAnswer: "ハングル", explanation: "現在も使われる現代文字で、古代文字ではありません"),
            ExerciseItem(id: UUID(), prompt: "判事、弁護士、検察官、患者", options: ["判事", "弁護士", "検察官", "患者"], correctAnswer: "患者", explanation: "法曹関係者ではありません"),
            ExerciseItem(id: UUID(), prompt: "フラメンコ、サンバ、バレエ、柔道", options: ["フラメンコ", "サンバ", "バレエ", "柔道"], correctAnswer: "柔道", explanation: "ダンスではなく、武道です"),
            ExerciseItem(id: UUID(), prompt: "酸素、水素、窒素、塩", options: ["酸素", "水素", "窒素", "塩"], correctAnswer: "塩", explanation: "元素ではなく、化合物です"),
            ExerciseItem(id: UUID(), prompt: "ルーブル美術館、大英博物館、オルセー美術館、凱旋門", options: ["ルーブル美術館", "大英博物館", "オルセー美術館", "凱旋門"], correctAnswer: "凱旋門", explanation: "美術館ではなく、記念建造物です"),
            ExerciseItem(id: UUID(), prompt: "腎臓、肝臓、脾臓、眼鏡", options: ["腎臓", "肝臓", "脾臓", "眼鏡"], correctAnswer: "眼鏡", explanation: "臓器ではなく、道具です"),
            ExerciseItem(id: UUID(), prompt: "源氏物語、枕草子、方丈記、太平洋", options: ["源氏物語", "枕草子", "方丈記", "太平洋"], correctAnswer: "太平洋", explanation: "古典文学作品ではなく、地名です"),
            ExerciseItem(id: UUID(), prompt: "虎、チーター、ピューマ、狐", options: ["虎", "チーター", "ピューマ", "狐"], correctAnswer: "狐", explanation: "ネコ科の動物ではありません"),
            ExerciseItem(id: UUID(), prompt: "代謝、消化、呼吸、記憶", options: ["代謝", "消化", "呼吸", "記憶"], correctAnswer: "記憶", explanation: "生理的な身体機能ではなく、脳の認知機能です"),
            ExerciseItem(id: UUID(), prompt: "ソネット、連句、俳句、散文詩", options: ["ソネット", "連句", "俳句", "散文詩"], correctAnswer: "散文詩", explanation: "厳格な韻律形式を持ちません"),
            ExerciseItem(id: UUID(), prompt: "加法、減法、乗法、漢字", options: ["加法", "減法", "乗法", "漢字"], correctAnswer: "漢字", explanation: "算術演算ではありません"),
            ExerciseItem(id: UUID(), prompt: "ピカソ、モネ、ダリ、バッハ", options: ["ピカソ", "モネ", "ダリ", "バッハ"], correctAnswer: "バッハ", explanation: "画家ではなく、作曲家です")
        ]
    )

    // MARK: - フレーズ補完
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "フレーズ補完",
        instructions: "空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "電車が＿に着いた。", options: ["駅", "山", "海"], correctAnswer: "駅", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "朝ご飯に＿を食べた。", options: ["ご飯", "テレビ", "本"], correctAnswer: "ご飯", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "雨が降っているので、＿を持って行きましょう。", options: ["傘", "帽子", "サングラス"], correctAnswer: "傘", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "医者に行くために＿を予約した。", options: ["診察", "旅行", "夕食"], correctAnswer: "診察", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お風呂に入る前に＿を脱ぎます。", options: ["服", "帽子", "眼鏡"], correctAnswer: "服", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花に＿をやらないと枯れてしまいます。", options: ["水", "土", "光"], correctAnswer: "水", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夜は暗いので＿をつけました。", options: ["電気", "音楽", "香り"], correctAnswer: "電気", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "手紙を送るために＿を貼りました。", options: ["切手", "シール", "テープ"], correctAnswer: "切手", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "寒い日には＿を飲みたくなります。", options: ["温かい飲み物", "かき氷", "ビール"], correctAnswer: "温かい飲み物", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "歯医者に行くために＿で予約を取りました。", options: ["電話", "バス", "手紙"], correctAnswer: "電話", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "太陽は東から＿。", options: ["昇ります", "沈みます", "止まります"], correctAnswer: "昇ります", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "誕生日のケーキには＿を立てます。", options: ["ろうそく", "花", "旗"], correctAnswer: "ろうそく", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "郵便局で＿を送った。", options: ["小包", "傘", "本棚"], correctAnswer: "小包", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "スーパーで＿を買いました。", options: ["食料品", "自動車", "家具"], correctAnswer: "食料品", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "風邪を引いたので＿に行きました。", options: ["病院", "映画館", "公園"], correctAnswer: "病院", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夜寝るときは＿を消します。", options: ["電気", "テレビを見", "本を読み"], correctAnswer: "電気", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お茶を飲む前に＿を沸かします。", options: ["お湯", "お酒", "ジュース"], correctAnswer: "お湯", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "道に迷ったので＿に聞きました。", options: ["近くの人", "看板", "犬"], correctAnswer: "近くの人", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "駐車場に車を＿しました。", options: ["駐車", "乗車", "停電"], correctAnswer: "駐車", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "木の葉が＿になる季節は秋です。", options: ["赤や黄色", "緑色", "白色"], correctAnswer: "赤や黄色", explanation: "")
        ]
    )

    // MARK: - 類義語（簡単）
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "類義語（簡単）",
        instructions: "与えられた言葉と同じ意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：うれしい", options: ["悲しい", "楽しい", "怒る", "眠い"], correctAnswer: "楽しい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：大きい", options: ["小さい", "細い", "巨大な", "低い"], correctAnswer: "巨大な", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：疲れた", options: ["元気な", "眠い", "くたびれた", "活発な"], correctAnswer: "くたびれた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：始まる", options: ["終わる", "開始する", "止まる", "続く"], correctAnswer: "開始する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：怖い", options: ["勇敢な", "恐ろしい", "楽しい", "優しい"], correctAnswer: "恐ろしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：速い", options: ["遅い", "弱い", "迅速な", "重い"], correctAnswer: "迅速な", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：古い", options: ["新しい", "若い", "年老いた", "清潔な"], correctAnswer: "年老いた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：きれい", options: ["汚い", "美しい", "暗い", "重い"], correctAnswer: "美しい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：静か", options: ["うるさい", "穏やか", "速い", "明るい"], correctAnswer: "穏やか", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：難しい", options: ["簡単な", "困難な", "楽な", "軽い"], correctAnswer: "困難な", explanation: "")
        ]
    )

    // MARK: - 類義語（難しい）
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "類義語（難しい）",
        instructions: "与えられた言葉と最も近い意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：慈悲深い", options: ["残酷な", "情け深い", "冷淡な", "厳格な"], correctAnswer: "情け深い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：漸進的", options: ["急激な", "徐々の", "突然の", "瞬時の"], correctAnswer: "徐々の", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：繁栄する", options: ["衰退する", "栄える", "沈む", "消える"], correctAnswer: "栄える", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：曖昧な", options: ["明確な", "はっきりした", "不明瞭な", "正確な"], correctAnswer: "不明瞭な", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：辛抱強い", options: ["短気な", "せっかちな", "忍耐強い", "怠慢な"], correctAnswer: "忍耐強い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：謙虚な", options: ["傲慢な", "控えめな", "自慢する", "威張る"], correctAnswer: "控えめな", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：逆境", options: ["順境", "苦難", "繁栄", "幸福"], correctAnswer: "苦難", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：卓越した", options: ["平凡な", "普通の", "優れた", "劣った"], correctAnswer: "優れた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：懸命に", options: ["ぼんやりと", "一生懸命に", "のんびりと", "無気力に"], correctAnswer: "一生懸命に", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：洞察力", options: ["無知", "鋭い観察力", "無関心", "混乱"], correctAnswer: "鋭い観察力", explanation: "")
        ]
    )

    // MARK: - 反義語
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "反義語",
        instructions: "与えられた言葉と反対の意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：明るい", options: ["輝く", "暗い", "光る", "白い"], correctAnswer: "暗い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：始まる", options: ["続く", "開く", "終わる", "始める"], correctAnswer: "終わる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：上る", options: ["飛ぶ", "下る", "走る", "泳ぐ"], correctAnswer: "下る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：勝つ", options: ["戦う", "頑張る", "負ける", "挑む"], correctAnswer: "負ける", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：太い", options: ["長い", "細い", "短い", "高い"], correctAnswer: "細い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：賢い", options: ["速い", "愚かな", "怠惰な", "軽い"], correctAnswer: "愚かな", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：入る", options: ["走る", "出る", "歩く", "見る"], correctAnswer: "出る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：近い", options: ["広い", "狭い", "遠い", "低い"], correctAnswer: "遠い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：好き", options: ["楽しい", "嫌い", "良い", "素敵な"], correctAnswer: "嫌い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "言葉：増える", options: ["広がる", "伸びる", "減る", "混む"], correctAnswer: "減る", explanation: "")
        ]
    )

    // MARK: - 文章補完（簡単）
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "文章補完（簡単）",
        instructions: "文章の空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "今日は天気が＿です。", options: ["良い", "料理", "重い"], correctAnswer: "良い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "毎朝、歯を＿磨きます。", options: ["きれいに", "速く走り", "大きく"], correctAnswer: "きれいに", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お腹が空いたので＿を食べました。", options: ["お弁当", "電話", "本"], correctAnswer: "お弁当", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "田中さんは毎日公園で＿をします。", options: ["散歩", "料理", "勉強"], correctAnswer: "散歩", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夏は暑いので＿をよく飲みます。", options: ["水", "スープ", "お酒"], correctAnswer: "水", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "朝起きたら＿を洗います。", options: ["顔", "車", "お皿"], correctAnswer: "顔", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日曜日は家族と＿を楽しみました。", options: ["食事", "仕事", "会議"], correctAnswer: "食事", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "図書館で＿を借りました。", options: ["本", "お金", "食べ物"], correctAnswer: "本", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "バスに乗るために＿で待っています。", options: ["バス停", "公園", "映画館"], correctAnswer: "バス停", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "病気のときは＿を飲みます。", options: ["薬", "ジュース", "コーヒー"], correctAnswer: "薬", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "雨が降りそうなので＿を持ちました。", options: ["傘", "上着", "手袋"], correctAnswer: "傘", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "誕生日に花束を＿もらいました。", options: ["プレゼントに", "借りて", "売って"], correctAnswer: "プレゼントに", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "電車の中では＿を静かに保ちます。", options: ["スマートフォン", "音楽を大きく", "会話を元気よく"], correctAnswer: "スマートフォン", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お正月には家族で＿を食べます。", options: ["おせち料理", "ハンバーガー", "ピザ"], correctAnswer: "おせち料理", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "部屋が寒いので＿をつけました。", options: ["暖房", "扇風機", "冷房"], correctAnswer: "暖房", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "山本さんは週末に＿をして体を動かします。", options: ["体操", "昼寝", "読書"], correctAnswer: "体操", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "手紙を書くために＿と封筒を用意しました。", options: ["便箋", "ノート", "コピー用紙"], correctAnswer: "便箋", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "桜が咲く季節は＿です。", options: ["春", "夏", "冬"], correctAnswer: "春", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "冬の寒い朝には＿スープが恋しくなります。", options: ["温かい", "冷たい", "辛い"], correctAnswer: "温かい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お茶を飲んでほっと＿しました。", options: ["一息", "一仕事", "一声"], correctAnswer: "一息", explanation: "")
        ]
    )

    // MARK: - 文法・形態素
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "文法・形態素",
        instructions: "文章の空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "私＿東京に住んでいます。", options: ["は", "を", "に"], correctAnswer: "は", explanation: "主格の助詞"),
            ExerciseItem(id: UUID(), prompt: "駅＿歩いて5分です。", options: ["から", "まで", "より"], correctAnswer: "から", explanation: "起点を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "昨日、映画を見＿いきました。", options: ["に", "を", "が"], correctAnswer: "に", explanation: "目的を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "彼女は先生＿なりました。", options: ["に", "が", "の"], correctAnswer: "に", explanation: "変化の方向を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "この本は田中さん＿ものです。", options: ["の", "に", "を"], correctAnswer: "の", explanation: "所有を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "毎朝6時＿起きます。", options: ["に", "で", "が"], correctAnswer: "に", explanation: "時を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "公園＿子供たちが遊んでいます。", options: ["で", "に", "を"], correctAnswer: "で", explanation: "場所を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "山本さんは東京＿大阪に引っ越しました。", options: ["から", "まで", "より"], correctAnswer: "から", explanation: "出発点を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "今日は涼し＿なりました。", options: ["く", "に", "さ"], correctAnswer: "く", explanation: "形容詞の連用形"),
            ExerciseItem(id: UUID(), prompt: "彼は親切＿人です。", options: ["な", "の", "に"], correctAnswer: "な", explanation: "形容動詞の連体形"),
            ExerciseItem(id: UUID(), prompt: "食べ＿前に手を洗いなさい。", options: ["る", "て", "た"], correctAnswer: "る", explanation: "動詞の連体形"),
            ExerciseItem(id: UUID(), prompt: "昨日、友達と映画を見＿ました。", options: ["に", "て", "が"], correctAnswer: "に", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "もっと早く起き＿ばよかった。", options: ["れ", "る", "た"], correctAnswer: "れ", explanation: "仮定形"),
            ExerciseItem(id: UUID(), prompt: "雨が降っ＿いますが、出かけましょう。", options: ["て", "に", "を"], correctAnswer: "て", explanation: "接続助詞"),
            ExerciseItem(id: UUID(), prompt: "この映画は面白＿た。", options: ["かっ", "かり", "く"], correctAnswer: "かっ", explanation: "形容詞の過去形"),
            ExerciseItem(id: UUID(), prompt: "鈴木さん＿よく知っています。", options: ["を", "が", "の"], correctAnswer: "を", explanation: "対象を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "山の頂上＿雪が積もっています。", options: ["に", "で", "を"], correctAnswer: "に", explanation: "存在の場所を示す助詞"),
            ExerciseItem(id: UUID(), prompt: "バスが来＿まで30分待ちました。", options: ["る", "た", "れ"], correctAnswer: "る", explanation: "終点を示す表現"),
            ExerciseItem(id: UUID(), prompt: "彼女は静か＿話しました。", options: ["に", "な", "の"], correctAnswer: "に", explanation: "形容動詞の副詞的用法"),
            ExerciseItem(id: UUID(), prompt: "子供の頃、よく祖父母の家に行き＿。", options: ["ました", "ません", "ましょう"], correctAnswer: "ました", explanation: "過去の丁寧形")
        ]
    )

    // MARK: - アナロジー
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "アナロジー",
        instructions: "最初の2つの言葉の関係と同じ関係になる言葉を選んでください。",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "犬は動物、バラは？", options: ["植物", "金属", "天気", "数字"], correctAnswer: "植物", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "医者は病院、先生は？", options: ["学校", "工場", "公園", "駅"], correctAnswer: "学校", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夏は暑い、冬は？", options: ["涼しい", "寒い", "暖かい", "蒸し暑い"], correctAnswer: "寒い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "右は左、上は？", options: ["前", "後", "下", "横"], correctAnswer: "下", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "朝は夜、始まりは？", options: ["途中", "真ん中", "終わり", "はずれ"], correctAnswer: "終わり", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "魚は泳ぐ、鳥は？", options: ["走る", "飛ぶ", "泳ぐ", "眠る"], correctAnswer: "飛ぶ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "鉛筆で書く、包丁で？", options: ["食べる", "切る", "縫う", "描く"], correctAnswer: "切る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "春は桜、秋は？", options: ["梅", "菊", "紫陽花", "チューリップ"], correctAnswer: "菊", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "一は少ない、百は？", options: ["小さい", "軽い", "多い", "薄い"], correctAnswer: "多い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "米は田んぼ、魚は？", options: ["川や海", "山", "砂漠", "空"], correctAnswer: "川や海", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "指揮者はオーケストラ、監督は？", options: ["チーム", "学校", "病院", "市場"], correctAnswer: "チーム", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "耳は聞く、目は？", options: ["嗅ぐ", "味わう", "見る", "触れる"], correctAnswer: "見る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花は咲く、果物は？", options: ["実る", "枯れる", "飛ぶ", "流れる"], correctAnswer: "実る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "子猫は猫、子犬は？", options: ["猫", "犬", "鳥", "熊"], correctAnswer: "犬", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "和菓子は日本、クロワッサンは？", options: ["中国", "フランス", "イタリア", "スペイン"], correctAnswer: "フランス", explanation: "")
        ]
    )

    // MARK: - 事実か意見
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "事実か意見",
        instructions: "次の文は事実ですか、それとも意見ですか？",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "東京は日本の首都です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "桜は世界で一番美しい花です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語にはひらがな、カタカナ、漢字があります。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "寿司は世界最高の食べ物です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "富士山は日本一高い山です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "毎日お茶を飲むことは体に良いです。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本は四季があります。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "野球は最も面白いスポーツです。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お盆は日本の夏の行事です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "東京は世界で最も清潔な都市です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語は世界で最も難しい言語です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大阪は日本の第三の都市です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ラーメンは弁当より食べやすい食べ物です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の国旗は赤と白です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "二世の日系アメリカ人は勇敢な兵士でした。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人の強制収容所は第二次世界大戦中に設けられました。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お正月は日本人にとって最も大切な祝日です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本は島国です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "書道は絵を描くよりも難しいです。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "茶道は日本の伝統文化の一つです。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ロサンゼルスには多くの日系アメリカ人が住んでいます。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花見は日本で最も楽しい行事です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語には敬語があります。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "味噌汁は朝食に最も合う料理です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本では車は左側通行です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "")
        ]
    )

    // MARK: - 順序並び替え
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "順序並び替え",
        instructions: "正しい順序に並び替えてください。",
        section: .language,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "朝の準備の順序は？", options: ["顔を洗う", "着替える", "朝食を食べる", "歯を磨く"], correctAnswer: "顔を洗う | 歯を磨く | 着替える | 朝食を食べる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "手紙を送る手順は？", options: ["ポストに投函する", "封筒に入れる", "切手を貼る", "手紙を書く"], correctAnswer: "手紙を書く | 封筒に入れる | 切手を貼る | ポストに投函する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お茶を入れる順序は？", options: ["お湯を注ぐ", "急須に茶葉を入れる", "湯呑みに注ぐ", "お湯を沸かす"], correctAnswer: "お湯を沸かす | 急須に茶葉を入れる | お湯を注ぐ | 湯呑みに注ぐ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "買い物の手順は？", options: ["レジで支払う", "買いたい物を選ぶ", "店に入る", "袋に入れる"], correctAnswer: "店に入る | 買いたい物を選ぶ | レジで支払う | 袋に入れる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "病院に行く手順は？", options: ["診察を受ける", "薬をもらう", "受付で手続きする", "待合室で待つ"], correctAnswer: "受付で手続きする | 待合室で待つ | 診察を受ける | 薬をもらう", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "入浴の手順は？", options: ["体を洗う", "湯船に浸かる", "服を脱ぐ", "体を拭く"], correctAnswer: "服を脱ぐ | 体を洗う | 湯船に浸かる | 体を拭く", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "電話をかける手順は？", options: ["話す", "電話番号を押す", "電話を切る", "受話器を持つ"], correctAnswer: "受話器を持つ | 電話番号を押す | 話す | 電話を切る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "料理を作る基本的な順序は？", options: ["材料を切る", "皿に盛り付ける", "材料を買う", "鍋で調理する"], correctAnswer: "材料を買う | 材料を切る | 鍋で調理する | 皿に盛り付ける", explanation: "")
        ]
    )

    // MARK: - ことわざ・慣用句
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "ことわざ・慣用句",
        instructions: "ことわざの意味を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "七転び八起きの意味は？", options: ["何度失敗しても立ち直ること", "毎日運動すること", "転ばないように気をつけること", "7回数えること"], correctAnswer: "何度失敗しても立ち直ること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "石の上にも三年の意味は？", options: ["石は三年後に動く", "辛抱強く続ければ成功する", "三年で必ず結果が出る", "石を三年かけて磨く"], correctAnswer: "辛抱強く続ければ成功する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "急がば回れの意味は？", options: ["急いで走れ", "遠回りが安全で早い", "焦らずゆっくり歩け", "急ぐと疲れる"], correctAnswer: "遠回りが安全で早い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "猿も木から落ちるの意味は？", options: ["猿は木登りが上手", "誰でも失敗することがある", "猿は木から落ちない", "木登りは危険"], correctAnswer: "誰でも失敗することがある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "一石二鳥の意味は？", options: ["一つの行動で二つの利益を得る", "石を二羽の鳥に当てる", "鳥が石を運ぶ", "二つの石を投げる"], correctAnswer: "一つの行動で二つの利益を得る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花より団子の意味は？", options: ["花より食べ物の方が大切", "団子は花に似ている", "花を食べることができる", "団子は美しくない"], correctAnswer: "花より食べ物の方が大切", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "聞くは一時の恥、聞かぬは一生の恥の意味は？", options: ["恥ずかしいことは聞かない", "わからないことは素直に聞くべき", "一生懸命聞くべき", "何度も聞くのは恥"], correctAnswer: "わからないことは素直に聞くべき", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "口は禍の門の意味は？", options: ["口から病気になる", "話すことで災いを招くことがある", "食べ過ぎに注意する", "歯を大切にする"], correctAnswer: "話すことで災いを招くことがある", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七転八倒とはどんな状態？", options: ["楽しく踊っている", "ひどく苦しんでいる", "ゆっくり歩いている", "寝ている"], correctAnswer: "ひどく苦しんでいる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "棚からぼたもちの意味は？", options: ["棚の掃除をする", "思いがけない幸運が訪れる", "ぼたもちを作る", "高い所から物を取る"], correctAnswer: "思いがけない幸運が訪れる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "案ずるより産むが易しの意味は？", options: ["出産は簡単", "実際にやってみると心配より楽なことが多い", "計画を立てるのが大切", "考えすぎはよくない"], correctAnswer: "実際にやってみると心配より楽なことが多い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "立つ鳥跡を濁さずの意味は？", options: ["鳥は飛ぶとき水を汚す", "去り際は後始末をきれいにすること", "鳥の跡をたどる", "水の中の鳥を見る"], correctAnswer: "去り際は後始末をきれいにすること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "出る杭は打たれるの意味は？", options: ["杭を打つ仕事", "目立つ人は批判されやすい", "高い木は風に折れる", "杭が出ていると危険"], correctAnswer: "目立つ人は批判されやすい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七つ道具とは？", options: ["7種類の道具のセット", "7つの料理レシピ", "7日間の予定", "7歳からの教育"], correctAnswer: "7種類の道具のセット", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "時は金なりの意味は？", options: ["時計は高価", "時間は貴重なもの", "お金で時間が買える", "金色の時計を持て"], correctAnswer: "時間は貴重なもの", explanation: "")
        ]
    )

    // MARK: - 韻を踏む言葉
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "韻を踏む言葉",
        instructions: "与えられた言葉と韻が合う言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "さくら と同じ音で終わる言葉は？", options: ["はなら", "あおぞら", "いろいろ", "やまほど"], correctAnswer: "あおぞら", explanation: "「ら」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "かみ と同じ音で終わる言葉は？", options: ["うみ", "やま", "はな", "かわ"], correctAnswer: "うみ", explanation: "「み」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "あめ と同じ音で終わる言葉は？", options: ["あき", "ゆめ", "きし", "そら"], correctAnswer: "ゆめ", explanation: "「め」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "はな と同じ音で終わる言葉は？", options: ["かわ", "やな", "きり", "つき"], correctAnswer: "やな", explanation: "「な」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "つき と同じ音で終わる言葉は？", options: ["そら", "うみ", "とき", "あき"], correctAnswer: "とき", explanation: "「き」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "やま と同じ音で終わる言葉は？", options: ["うま", "きり", "かわ", "もり"], correctAnswer: "うま", explanation: "「ま」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "そら と同じ音で終わる言葉は？", options: ["むら", "つき", "かわ", "やま"], correctAnswer: "むら", explanation: "「ら」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "ふゆ と同じ音で終わる言葉は？", options: ["はな", "かゆ", "そら", "つき"], correctAnswer: "かゆ", explanation: "「ゆ」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "しろ と同じ音で終わる言葉は？", options: ["くろ", "あか", "きみ", "あを"], correctAnswer: "くろ", explanation: "「ろ」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "こころ と同じ音で終わる言葉は？", options: ["ちから", "たから", "みころ", "ひかり"], correctAnswer: "みころ", explanation: "「ころ」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "いえ と同じ音で終わる言葉は？", options: ["やま", "うえ", "きわ", "そら"], correctAnswer: "うえ", explanation: "「え」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "あき と同じ音で終わる言葉は？", options: ["なつ", "ふゆ", "すき", "はな"], correctAnswer: "すき", explanation: "「き」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "かわ と同じ音で終わる言葉は？", options: ["やま", "うわ", "つき", "そら"], correctAnswer: "うわ", explanation: "「わ」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "もり と同じ音で終わる言葉は？", options: ["いけ", "とり", "やま", "うみ"], correctAnswer: "とり", explanation: "「り」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "ゆき と同じ音で終わる言葉は？", options: ["あめ", "つき", "かわ", "はな"], correctAnswer: "つき", explanation: "「き」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "きりん と同じ音で終わる言葉は？", options: ["むかし", "ぞうきん", "くりん", "さる"], correctAnswer: "くりん", explanation: "「りん」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "はる と同じ音で終わる言葉は？", options: ["なつ", "きる", "ふゆ", "する"], correctAnswer: "する", explanation: "「る」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "ほし と同じ音で終わる言葉は？", options: ["うみ", "こし", "そら", "やま"], correctAnswer: "こし", explanation: "「し」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "みず と同じ音で終わる言葉は？", options: ["かず", "やま", "つき", "はな"], correctAnswer: "かず", explanation: "「ず」で韻を踏む"),
            ExerciseItem(id: UUID(), prompt: "ひかり と同じ音で終わる言葉は？", options: ["たかり", "やまへ", "うみへ", "そらへ"], correctAnswer: "たかり", explanation: "「かり」で韻を踏む")
        ]
    )

    // MARK: - 語の連想
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "語の連想",
        instructions: "与えられた言葉と最も関係が深い言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "お茶 と最も関係が深いのは？", options: ["急須", "鍋", "冷蔵庫", "財布"], correctAnswer: "急須", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "桜 と最も関係が深いのは？", options: ["雪", "花見", "台風", "紅葉"], correctAnswer: "花見", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "地震 と最も関係が深いのは？", options: ["海水浴", "避難訓練", "花火", "スキー"], correctAnswer: "避難訓練", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "寿司 と最も関係が深いのは？", options: ["ピザ", "ハンバーガー", "わさび", "スパゲッティ"], correctAnswer: "わさび", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お正月 と最も関係が深いのは？", options: ["花火", "おせち料理", "ケーキ", "かき氷"], correctAnswer: "おせち料理", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "弁当 と最も関係が深いのは？", options: ["お箸", "フォーク", "スプーン", "ナイフ"], correctAnswer: "お箸", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "電車 と最も関係が深いのは？", options: ["飛行場", "駅", "港", "バス停"], correctAnswer: "駅", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "書道 と最も関係が深いのは？", options: ["絵具", "墨", "鉛筆", "クレヨン"], correctAnswer: "墨", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "相撲 と最も関係が深いのは？", options: ["リング", "土俵", "コート", "グラウンド"], correctAnswer: "土俵", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "着物 と最も関係が深いのは？", options: ["ネクタイ", "帯", "ベルト", "スカーフ"], correctAnswer: "帯", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花火 と最も関係が深いのは？", options: ["冬", "梅雨", "夏", "春"], correctAnswer: "夏", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "富士山 と最も関係が深いのは？", options: ["海", "川", "山頂", "砂漠"], correctAnswer: "山頂", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お盆 と最も関係が深いのは？", options: ["新年", "先祖", "クリスマス", "卒業式"], correctAnswer: "先祖", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "茶道 と最も関係が深いのは？", options: ["茶室", "食堂", "体育館", "図書館"], correctAnswer: "茶室", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "柔道 と最も関係が深いのは？", options: ["グローブ", "道着", "ラケット", "バット"], correctAnswer: "道着", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お味噌汁 と最も関係が深いのは？", options: ["パン", "チーズ", "豆腐", "バター"], correctAnswer: "豆腐", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七夕 と最も関係が深いのは？", options: ["短冊", "鏡餅", "ちまき", "おせち"], correctAnswer: "短冊", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "俳句 と最も関係が深いのは？", options: ["五七五の音節", "八七八の音節", "七五調", "四行詩"], correctAnswer: "五七五の音節", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系二世 と最も関係が深いのは？", options: ["明治時代", "第二次世界大戦", "江戸時代", "平安時代"], correctAnswer: "第二次世界大戦", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "たこ焼き と最も関係が深いのは？", options: ["東京", "大阪", "名古屋", "京都"], correctAnswer: "大阪", explanation: "")
        ]
    )

    // MARK: - ことわざ完成
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "ことわざ完成",
        instructions: "ことわざの空欄に入る言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "七転び＿", options: ["八起き", "九起き", "十起き"], correctAnswer: "八起き", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "石の上にも＿年", options: ["三", "五", "十"], correctAnswer: "三", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "急がば＿", options: ["回れ", "止まれ", "走れ"], correctAnswer: "回れ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "一石＿鳥", options: ["二", "三", "四"], correctAnswer: "二", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花より＿", options: ["団子", "桜", "水"], correctAnswer: "団子", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "猿も木から＿", options: ["落ちる", "飛ぶ", "降りる"], correctAnswer: "落ちる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "棚からぼた＿", options: ["もち", "菓子", "飯"], correctAnswer: "もち", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "時は＿なり", options: ["金", "銀", "宝"], correctAnswer: "金", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "立つ鳥跡を＿さず", options: ["濁", "乱", "壊"], correctAnswer: "濁", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "出る＿は打たれる", options: ["杭", "芽", "柱"], correctAnswer: "杭", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "口は＿の門", options: ["禍", "幸", "善"], correctAnswer: "禍", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "案ずるより産むが＿", options: ["易し", "難し", "遅し"], correctAnswer: "易し", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "聞くは一時の恥、聞かぬは＿の恥", options: ["一生", "一年", "一月"], correctAnswer: "一生", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "三人寄れば文殊の＿", options: ["知恵", "力", "笑い"], correctAnswer: "知恵", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "虎穴に入らずんば＿を得ず", options: ["虎子", "宝", "獲物"], correctAnswer: "虎子", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "郷に入っては郷に＿", options: ["従え", "住め", "合わせよ"], correctAnswer: "従え", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "馬鹿と＿は高い所に登る", options: ["煙", "霧", "雲"], correctAnswer: "煙", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "類は友を＿", options: ["呼ぶ", "招く", "集める"], correctAnswer: "呼ぶ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "失敗は成功の＿", options: ["もと", "元", "基"], correctAnswer: "もと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "千里の道も一歩から＿", options: ["始まる", "終わる", "続く"], correctAnswer: "始まる", explanation: "")
        ]
    )

    // MARK: - 複合語
    private static let exercise16 = Exercise(
        id: UUID(),
        title: "複合語",
        instructions: "二つの言葉を合わせてできる複合語を選んでください。",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "図 + 書 = ？", options: ["図書", "書図", "本図", "書本"], correctAnswer: "図書", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "手 + 紙 = ？", options: ["紙手", "手紙", "手本", "紙本"], correctAnswer: "手紙", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "台 + 所 = ？", options: ["所台", "台所", "場所", "所場"], correctAnswer: "台所", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "部 + 屋 = ？", options: ["屋部", "部屋", "部家", "家部"], correctAnswer: "部屋", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "電 + 話 = ？", options: ["話電", "電話", "電語", "語電"], correctAnswer: "電話", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "新 + 聞 = ？", options: ["聞新", "新聞", "新知", "知新"], correctAnswer: "新聞", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "自 + 転 + 車 = ？", options: ["転自車", "自転車", "車自転", "自車転"], correctAnswer: "自転車", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "学 + 校 = ？", options: ["校学", "学校", "学所", "所学"], correctAnswer: "学校", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "食 + 堂 = ？", options: ["堂食", "食堂", "食場", "場食"], correctAnswer: "食堂", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "電 + 車 = ？", options: ["車電", "電車", "電機", "機電"], correctAnswer: "電車", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "冷 + 蔵 + 庫 = ？", options: ["庫蔵冷", "冷蔵庫", "蔵冷庫", "庫冷蔵"], correctAnswer: "冷蔵庫", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "入 + 口 = ？", options: ["口入", "入口", "入所", "所入"], correctAnswer: "入口", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "出 + 口 = ？", options: ["口出", "出口", "出所", "所出"], correctAnswer: "出口", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "本 + 屋 = ？", options: ["屋本", "本屋", "本所", "所本"], correctAnswer: "本屋", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花 + 見 = ？", options: ["見花", "花見", "花視", "視花"], correctAnswer: "花見", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "友 + 達 = ？", options: ["達友", "友達", "友人", "人友"], correctAnswer: "友達", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日 + 記 = ？", options: ["記日", "日記", "日書", "書日"], correctAnswer: "日記", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "雨 + 傘 = ？", options: ["傘雨", "雨傘", "雨具", "具雨"], correctAnswer: "雨傘", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "地 + 震 = ？", options: ["震地", "地震", "地揺", "揺地"], correctAnswer: "地震", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "交 + 差 + 点 = ？", options: ["差交点", "交差点", "点交差", "交点差"], correctAnswer: "交差点", explanation: "")
        ]
    )

    // MARK: - 接頭語・接尾語
    private static let exercise17 = Exercise(
        id: UUID(),
        title: "接頭語・接尾語",
        instructions: "空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "不＿（反対の意味）: 可能", options: ["不可能", "不能力", "不問題"], correctAnswer: "不可能", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "再＿（もう一度の意味）: 利用", options: ["再利用", "また利用", "新利用"], correctAnswer: "再利用", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "超＿（非常にの意味）: 高速", options: ["超高速", "大高速", "特高速"], correctAnswer: "超高速", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "非＿（ではないの意味）: 常識", options: ["非常識", "不常識", "無常識"], correctAnswer: "非常識", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "未＿（まだ〜していない）: 来", options: ["未来", "先来", "後来"], correctAnswer: "未来", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿的（〜のような性質）: 科学", options: ["科学的", "科学性", "科学式"], correctAnswer: "科学的", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿化（〜になること）: 自動", options: ["自動化", "自動式", "自動性"], correctAnswer: "自動化", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿者（〜する人）: 研究", options: ["研究者", "研究人", "研究員"], correctAnswer: "研究者", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿感（〜の感覚）: 安心", options: ["安心感", "安心性", "安心力"], correctAnswer: "安心感", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿力（〜の力）: 想像", options: ["想像力", "想像感", "想像性"], correctAnswer: "想像力", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "無＿（ない意味）: 関係", options: ["無関係", "不関係", "非関係"], correctAnswer: "無関係", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大＿（大きいの意味）: 成功", options: ["大成功", "超成功", "特成功"], correctAnswer: "大成功", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "小＿（小さいの意味）: 説", options: ["小説", "小話", "小文"], correctAnswer: "小説", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "新＿（新しいの意味）: 幹線", options: ["新幹線", "新路線", "新電車"], correctAnswer: "新幹線", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿性（〜の性質）: 可能", options: ["可能性", "可能感", "可能力"], correctAnswer: "可能性", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿中（〜の最中）: 準備", options: ["準備中", "準備前", "準備後"], correctAnswer: "準備中", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿前（〜の前）: 食事", options: ["食事前", "食事後", "食事中"], correctAnswer: "食事前", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "＿後（〜の後）: 術", options: ["術後", "術前", "術中"], correctAnswer: "術後", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "半＿（半分の意味）: 分", options: ["半分", "半量", "半部"], correctAnswer: "半分", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "全＿（すべての意味）: 部", options: ["全部", "全量", "全数"], correctAnswer: "全部", explanation: "")
        ]
    )
}
