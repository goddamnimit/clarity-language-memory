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
        trackedType: nil,
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
        trackedType: nil,
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
        trackedType: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "電車が＿に着いた。", options: ["駅", "山", "海"], correctAnswer: "駅", explanation: "「電車」が到着する目的地や停車場所を示す言葉として、文脈的に最も自然なのは「駅」だからです。"),
            ExerciseItem(id: UUID(), prompt: "朝ご飯に＿を食べた。", options: ["ご飯", "テレビ", "本"], correctAnswer: "ご飯", explanation: "「食べる」という動詞の目的語であり、「朝ご飯」の文脈に最も合う一般的な食べ物として「ご飯」が適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "雨が降っているので、＿を持って行きましょう。", options: ["傘", "帽子", "サングラス"], correctAnswer: "傘", explanation: "「雨が降っている」状況で、濡れないために持って行く最も一般的な道具は「傘」だからです。"),
            ExerciseItem(id: UUID(), prompt: "医者に行くために＿を予約した。", options: ["診察", "旅行", "夕食"], correctAnswer: "診察", explanation: "「医者に行く」目的は病気を診てもらうことであり、事前に確保する行動として「診察」の予約が最も適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "お風呂に入る前に＿を脱ぎます。", options: ["服", "帽子", "眼鏡"], correctAnswer: "服", explanation: "「お風呂に入る」ためには体を洗う必要があり、その前段階として身につけている「服」を脱ぐのが当然の行動だからです。"),
            ExerciseItem(id: UUID(), prompt: "花に＿をやらないと枯れてしまいます。", options: ["水", "土", "光"], correctAnswer: "水", explanation: "植物である「花」が生きるためには水分が必要であり、枯らさないために与えるものとして「水」が正解だからです。"),
            ExerciseItem(id: UUID(), prompt: "夜は暗いので＿をつけました。", options: ["電気", "音楽", "香り"], correctAnswer: "電気", explanation: "「暗い」状況を明るくするために「つける（点灯する）」ものとして、最も一般的なのは「電気（照明）」だからです。"),
            ExerciseItem(id: UUID(), prompt: "手紙を送るために＿を貼りました。", options: ["切手", "シール", "テープ"], correctAnswer: "切手", explanation: "郵便制度において「手紙を送る」ためには、料金を支払った証明として封筒に「切手」を貼る必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "寒い日には＿を飲みたくなります。", options: ["温かい飲み物", "かき氷", "ビール"], correctAnswer: "温かい飲み物", explanation: "「寒い日」には体を内側から温めるために、「温かい飲み物」を求めるのが自然な人間の心理・生理だからです。"),
            ExerciseItem(id: UUID(), prompt: "歯医者に行くために＿で予約を取りました。", options: ["電話", "バス", "手紙"], correctAnswer: "電話", explanation: "予約を取るための手段・道具として、「〜で」という助詞に続く言葉には「電話」や「インターネット」が入るのが適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "太陽は東から＿。", options: ["昇ります", "沈みます", "止まります"], correctAnswer: "昇ります", explanation: "地球の自転により、天体である「太陽」は東の方角から姿を現し上へ移動するように見えるため、「昇ります」が正解です。"),
            ExerciseItem(id: UUID(), prompt: "誕生日のケーキには＿を立てます。", options: ["ろうそく", "花", "旗"], correctAnswer: "ろうそく", explanation: "「誕生日のケーキ」にお祝いとして年齢の数だけ立てて、火を吹き消す伝統的なアイテムは「ろうそく」だからです。"),
            ExerciseItem(id: UUID(), prompt: "郵便局で＿を送った。", options: ["小包", "傘", "本棚"], correctAnswer: "小包", explanation: "「郵便局」で郵送する対象として、「手紙」と同様に一般的な「小包」が文脈に合致するからです。"),
            ExerciseItem(id: UUID(), prompt: "スーパーで＿を買いました。", options: ["食料品", "自動車", "家具"], correctAnswer: "食料品", explanation: "「スーパー」は主に食品を扱う小売店であり、そこで買うものとして「食料品」が最も適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "風邪を引いたので＿に行きました。", options: ["病院", "映画館", "公園"], correctAnswer: "病院", explanation: "「風邪を引いた」という体調不良の際に、治療や薬を求めて向かう場所は「病院」だからです。"),
            ExerciseItem(id: UUID(), prompt: "夜寝るときは＿を消します。", options: ["電気", "テレビを見", "本を読み"], correctAnswer: "電気", explanation: "「夜寝るとき」は暗くして睡眠の質を上げるために、部屋の「電気（照明）」を消すのが一般的な習慣だからです。"),
            ExerciseItem(id: UUID(), prompt: "お茶を飲む前に＿を沸かします。", options: ["お湯", "お酒", "ジュース"], correctAnswer: "お湯", explanation: "「お茶を飲む」ためには茶葉から成分を抽出する必要があり、そのために水を加熱して「お湯」を沸かすからです。"),
            ExerciseItem(id: UUID(), prompt: "道に迷ったので＿に聞きました。", options: ["近くの人", "看板", "犬"], correctAnswer: "近くの人", explanation: "「道に迷った」ときに解決策として道順を尋ねる対象は、その場にいる「近くの人」が最も自然だからです。"),
            ExerciseItem(id: UUID(), prompt: "駐車場に車を＿しました。", options: ["駐車", "乗車", "停電"], correctAnswer: "駐車", explanation: "「駐車場」という特定の場所に「車」を停める行為を表す動詞として、「駐車（する）」が最も適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "木の葉が＿になる季節は秋です。", options: ["赤や黄色", "緑色", "白色"], correctAnswer: "赤や黄色", explanation: "「秋」には気温の低下により木の葉の葉緑素が分解され、紅葉や黄葉として「赤や黄色」に色が変化するからです。")
        ]
    )

    // MARK: - 類義語（簡単）
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "類義語（簡単）",
        instructions: "与えられた言葉と同じ意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：うれしい", options: ["悲しい", "楽しい", "怒る", "眠い"], correctAnswer: "楽しい", explanation: "「うれしい」と「楽しい」は、どちらも心が満たされて気分が良くなる、ポジティブな感情を表す言葉であるため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：大きい", options: ["小さい", "細い", "巨大な", "低い"], correctAnswer: "巨大な", explanation: "「大きい」と「巨大な」はどちらもサイズや規模が平均以上であることを表すため類義語です。「巨大な」は「大きい」をさらに強調した表現として使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：疲れた", options: ["元気な", "眠い", "くたびれた", "活発な"], correctAnswer: "くたびれた", explanation: "「疲れた」と「くたびれた」はどちらも体力や気力が消耗した状態を表すため類義語です。「くたびれた」は長時間の労力でへトへトになったニュアンスを含みます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：始まる", options: ["終わる", "開始する", "止まる", "続く"], correctAnswer: "開始する", explanation: "「始まる」は物事がスタートすることを、「終わる」は物事が完了することを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：怖い", options: ["勇敢な", "恐ろしい", "楽しい", "優しい"], correctAnswer: "恐ろしい", explanation: "「怖い」と「恐ろしい」はどちらも恐怖を感じる状態を表すため類義語です。「恐ろしい」は対象がより重大で、強い不安や恐怖を与える場合に使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：速い", options: ["遅い", "弱い", "迅速な", "重い"], correctAnswer: "迅速な", explanation: "「速い」と「迅速な」はどちらも動作やスピードが短い時間で行われることを意味するため類義語です。「迅速な」は業務などの対応が素早いことを表すフォーマルな表現です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：古い", options: ["新しい", "若い", "年老いた", "清潔な"], correctAnswer: "年老いた", explanation: "「古い」と「年老いた」はどちらも長い時間が経過したことを表すため類義語として扱われます。ただし「古い」は主に物に、「年老いた」は人や動物に対して使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：きれい", options: ["汚い", "美しい", "暗い", "重い"], correctAnswer: "美しい", explanation: "「きれい」と「美しい」はどちらも見た目や状態が魅力的で整っていることを表すため類義語です。「美しい」はより深い感動を伴う芸術的な評価によく使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：静か", options: ["うるさい", "穏やか", "速い", "明るい"], correctAnswer: "穏やか", explanation: "「静か」と「穏やか」はどちらも騒音や乱れがなく、落ち着いている状態を表すため類義語です。「穏やか」は人の性質や気候などに対しても使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：難しい", options: ["簡単な", "困難な", "楽な", "軽い"], correctAnswer: "困難な", explanation: "「難しい」と「困難な」はどちらも物事を成し遂げるのが容易ではない状態を表すため類義語です。「困難な」は状況の厳しさを強調する客観的で硬い表現です。")
        ]
    )

    // MARK: - 類義語（難しい）
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "類義語（難しい）",
        instructions: "与えられた言葉と最も近い意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：慈悲深い", options: ["残酷な", "情け深い", "冷淡な", "厳格な"], correctAnswer: "情け深い", explanation: "「慈悲深い」と「情け深い」はどちらも他人に対して思いやりがあり、優しく接する性質を表すため類義語です。「慈悲深い」は宗教的や高次な愛のニュアンスを含みます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：漸進的", options: ["急激な", "徐々の", "突然の", "瞬時の"], correctAnswer: "徐々の", explanation: "「漸進的」と「徐々の」はどちらも物事が急激ではなく、少しずつ段階的に進む様子を表すため類義語です。「漸進的」は学術的・フォーマルな文脈で使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：繁栄する", options: ["衰退する", "栄える", "沈む", "消える"], correctAnswer: "栄える", explanation: "「繁栄する」と「栄える」はどちらも社会や組織が豊かで勢いがある状態を表すため類義語です。「繁栄する」は主に経済や文化の発展などスケールの大きい事象に使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：曖昧な", options: ["明確な", "はっきりした", "不明瞭な", "正確な"], correctAnswer: "不明瞭な", explanation: "「曖昧な」と「不明瞭な」はどちらも物事の境界や意味がはっきりしない状態を表すため類義語です。「不明瞭な」は視覚・聴覚的な不明瞭さや、論理が筋立っていないことを強調します。"),
            ExerciseItem(id: UUID(), prompt: "言葉：辛抱強い", options: ["短気な", "せっかちな", "忍耐強い", "怠慢な"], correctAnswer: "忍耐強い", explanation: "「辛抱強い」と「忍耐強い」はどちらも困難や苦痛に耐え、諦めずに努力を続ける性質を表すため類義語です。「忍耐強い」の方が少し硬く、より長期的な精神力を指す傾向があります。"),
            ExerciseItem(id: UUID(), prompt: "言葉：謙虚な", options: ["傲慢な", "控えめな", "自慢する", "威張る"], correctAnswer: "控えめな", explanation: "「謙虚な」と「控えめな」はどちらも自己を主張しすぎず、他者を尊重する態度を表すため類義語です。「謙虚な」は内面的な態度を、「控えめな」は行動や言動の程度を指します。"),
            ExerciseItem(id: UUID(), prompt: "言葉：逆境", options: ["順境", "苦難", "繁栄", "幸福"], correctAnswer: "苦難", explanation: "「逆境」と「苦難」はどちらも思い通りにいかない不運で苦しい状況を表すため類義語です。「逆境」は不遇な環境を、「苦難」はその中で味わう苦しみに焦点を当てています。"),
            ExerciseItem(id: UUID(), prompt: "言葉：卓越した", options: ["平凡な", "普通の", "優れた", "劣った"], correctAnswer: "優れた", explanation: "「卓越した」と「優れた」はどちらも他と比べて能力や価値が際立って高いことを表すため類義語です。「卓越した」は群を抜いて素晴らしいことをより強調する硬い表現です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：懸命に", options: ["ぼんやりと", "一生懸命に", "のんびりと", "無気力に"], correctAnswer: "一生懸命に", explanation: "「懸命に」と「一生懸命に」はどちらも全力を尽くして物事に取り組む様子を表すため類義語です。「一生懸命に」は日常的によく使われ、「懸命に」は文章語としてやや硬い表現です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：洞察力", options: ["無知", "鋭い観察力", "無関心", "混乱"], correctAnswer: "鋭い観察力", explanation: "「洞察力」と「鋭い観察力」はどちらも物事の表面だけでなく本質を見抜く力があることを表すため類義語です。「洞察力」は直感や見抜く力そのものを指します。")
        ]
    )

    // MARK: - 反義語
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "反義語",
        instructions: "与えられた言葉と反対の意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：明るい", options: ["輝く", "暗い", "光る", "白い"], correctAnswer: "暗い", explanation: "「明るい」は光がある状態を、「暗い」は光がない状態を指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：始まる", options: ["続く", "開く", "終わる", "始める"], correctAnswer: "終わる", explanation: "「始まる」は物事がスタートすることを、「終わる」は物事が完了することを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：上る", options: ["飛ぶ", "下る", "走る", "泳ぐ"], correctAnswer: "下る", explanation: "「上る」は低いところから高いところへ行くことを、「下る」は高いところから低いところへ行くことを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：勝つ", options: ["戦う", "頑張る", "負ける", "挑む"], correctAnswer: "負ける", explanation: "「勝つ」は勝負で相手を上回ることを、「負ける」は相手に劣り敗れることを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：太い", options: ["長い", "細い", "短い", "高い"], correctAnswer: "細い", explanation: "「太い」は物の直径や幅が大きいことを、「細い」はそれが小さいことを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：賢い", options: ["速い", "愚かな", "怠惰な", "軽い"], correctAnswer: "愚かな", explanation: "「賢い」は知能が高く判断力が優れていることを、「愚かな」は考えが浅く判断力が劣っていることを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：入る", options: ["走る", "出る", "歩く", "見る"], correctAnswer: "出る", explanation: "「入る」は外から中へ移動することを、「出る」は中から外へ移動することを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：近い", options: ["広い", "狭い", "遠い", "低い"], correctAnswer: "遠い", explanation: "「近い」は距離や時間が短いことを、「遠い」はそれらが離れていることを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：好き", options: ["楽しい", "嫌い", "良い", "素敵な"], correctAnswer: "嫌い", explanation: "「好き」は対象に好意を持つことを、「嫌い」は対象を不快に思い避けたがることを指すため対義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：増える", options: ["広がる", "伸びる", "減る", "混む"], correctAnswer: "減る", explanation: "「増える」は数量が多くなることを、「減る」は数量が少なくなることを指すため対義語です。")
        ]
    )

    // MARK: - 文章補完（簡単）
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "文章補完（簡単）",
        instructions: "文章の空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "今日は天気が＿です。", options: ["良い", "料理", "重い"], correctAnswer: "良い", explanation: "文脈として天候の状態を表現するため、天気を修飾する形容詞「良い」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "毎朝、歯を＿磨きます。", options: ["きれいに", "速く走り", "大きく"], correctAnswer: "きれいに", explanation: "歯を磨くという動作の結果として、汚れが落ちて清潔な状態になることを表すため「きれいに」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "お腹が空いたので＿を食べました。", options: ["お弁当", "電話", "本"], correctAnswer: "お弁当", explanation: "「お腹が空いたので」という理由から、食べる対象となる「お弁当」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "田中さんは毎日公園で＿をします。", options: ["散歩", "料理", "勉強"], correctAnswer: "散歩", explanation: "「公園で」という場所と「する」という動詞に繋がり、日常的な運動・習慣を表す「散歩」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "夏は暑いので＿をよく飲みます。", options: ["水", "スープ", "お酒"], correctAnswer: "水", explanation: "「夏は暑いので」という理由から、水分補給のために「飲む」対象となる「水」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "朝起きたら＿を洗います。", options: ["顔", "車", "お皿"], correctAnswer: "顔", explanation: "「朝起きたら」という場面での習慣的な行動として、洗う対象となる「顔」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "日曜日は家族と＿を楽しみました。", options: ["食事", "仕事", "会議"], correctAnswer: "食事", explanation: "「日曜日は家族と」という状況から、共に楽しむ活動である「食事」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "図書館で＿を借りました。", options: ["本", "お金", "食べ物"], correctAnswer: "本", explanation: "「図書館で」という場所から、そこで借りる対象となる「本」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "バスに乗るために＿で待っています。", options: ["バス停", "公園", "映画館"], correctAnswer: "バス停", explanation: "「バスに乗るために」待つ場所を示す必要があるため、「バス停」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "病気のときは＿を飲みます。", options: ["薬", "ジュース", "コーヒー"], correctAnswer: "薬", explanation: "「病気のときは」という条件から、治療のために飲む対象である「薬」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "雨が降りそうなので＿を持ちました。", options: ["傘", "上着", "手袋"], correctAnswer: "傘", explanation: "「雨が降りそうなので」という理由から、雨を防ぐために持つ道具である「傘」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "誕生日に花束を＿もらいました。", options: ["プレゼントに", "借りて", "売って"], correctAnswer: "プレゼントに", explanation: "「誕生日に花束を」という文脈から、贈り物として受け取ったことを表す「プレゼントに」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "電車の中では＿を静かに保ちます。", options: ["スマートフォン", "音楽を大きく", "会話を元気よく"], correctAnswer: "スマートフォン", explanation: "「電車の中では」という公共の場でのマナーとして、音が出ないように静かに保つ対象である「スマートフォン」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "お正月には家族で＿を食べます。", options: ["おせち料理", "ハンバーガー", "ピザ"], correctAnswer: "おせち料理", explanation: "「お正月には家族で」という状況から、日本の正月における伝統的な食事である「おせち料理」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "部屋が寒いので＿をつけました。", options: ["暖房", "扇風機", "冷房"], correctAnswer: "暖房", explanation: "「部屋が寒いので」という理由から、部屋を暖めるための機器である「暖房」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "山本さんは週末に＿をして体を動かします。", options: ["体操", "昼寝", "読書"], correctAnswer: "体操", explanation: "「山本さんは週末に体を動かします」という文脈から、運動の一種である「体操」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "手紙を書くために＿と封筒を用意しました。", options: ["便箋", "ノート", "コピー用紙"], correctAnswer: "便箋", explanation: "「手紙を書くために」という目的から、封筒とセットで使う紙である「便箋」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "桜が咲く季節は＿です。", options: ["春", "夏", "冬"], correctAnswer: "春", explanation: "「桜が咲く季節」は日本の気候において「春」であるため、「春」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "冬の寒い朝には＿スープが恋しくなります。", options: ["温かい", "冷たい", "辛い"], correctAnswer: "温かい", explanation: "「冬の寒い朝には」という状況から、体を温めるためにスープの状態を表す「温かい」が入ります。"),
            ExerciseItem(id: UUID(), prompt: "お茶を飲んでほっと＿しました。", options: ["一息", "一仕事", "一声"], correctAnswer: "一息", explanation: "「お茶を飲んでほっと」という文脈から、安心したりリラックスしたりする様子を表す慣用表現「一息」が入ります。")
        ]
    )

    // MARK: - 文法・形態素
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "文法・形態素",
        instructions: "文章の空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
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
            ExerciseItem(id: UUID(), prompt: "昨日、友達と映画を見＿ました。", options: ["に", "て", "が"], correctAnswer: "に", explanation: "映画を見るという目的を表すため、動詞のマス幹「見」に目的を表す助詞「に」が接続します。（後に「行きました」などが省略・暗示されていると考えられます）"),
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
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "犬は動物、バラは？", options: ["植物", "金属", "天気", "数字"], correctAnswer: "植物", explanation: "「犬」が「動物」というカテゴリーに属するように、「バラ」は「植物」というカテゴリーに属するという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "医者は病院、先生は？", options: ["学校", "工場", "公園", "駅"], correctAnswer: "学校", explanation: "「医者」が働く主な場所が「病院」であるように、「先生」が働く主な場所は「学校」であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "夏は暑い、冬は？", options: ["涼しい", "寒い", "暖かい", "蒸し暑い"], correctAnswer: "寒い", explanation: "「夏」の代表的な特徴が「暑い」ことであるように、「冬」の代表的な特徴は「寒い」ことであるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "右は左、上は？", options: ["前", "後", "下", "横"], correctAnswer: "下", explanation: "「右」と「左」が方向の対義語であるように、「上」と対になる方向の対義語は「下」であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "朝は夜、始まりは？", options: ["途中", "真ん中", "終わり", "はずれ"], correctAnswer: "終わり", explanation: "「朝」と「夜」が時間の対義語であるように、「始まり」と対になる概念の対義語は「終わり」であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "魚は泳ぐ、鳥は？", options: ["走る", "飛ぶ", "泳ぐ", "眠る"], correctAnswer: "飛ぶ", explanation: "「魚」の代表的な移動手段が「泳ぐ」ことであるように、「鳥」の代表的な移動手段は「飛ぶ」ことであるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "鉛筆で書く、包丁で？", options: ["食べる", "切る", "縫う", "描く"], correctAnswer: "切る", explanation: "「鉛筆」が「書く」ための道具であるように、「包丁」は「切る」ための道具であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "春は桜、秋は？", options: ["梅", "菊", "紫陽花", "チューリップ"], correctAnswer: "菊", explanation: "「春」を代表する花が「桜」であるように、「秋」を代表する日本の伝統的な花は「菊」であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "一は少ない、百は？", options: ["小さい", "軽い", "多い", "薄い"], correctAnswer: "多い", explanation: "「一」が数が「少ない」ことを表すように、「百」は数が「多い」ことを表すという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "米は田んぼ、魚は？", options: ["川や海", "山", "砂漠", "空"], correctAnswer: "川や海", explanation: "「米」が育つ場所が「田んぼ」であるように、「魚」が生息する場所は「川や海」であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "指揮者はオーケストラ、監督は？", options: ["チーム", "学校", "病院", "市場"], correctAnswer: "チーム", explanation: "「指揮者」が「オーケストラ」をまとめるリーダーであるように、「監督」は「チーム」をまとめるリーダーであるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "耳は聞く、目は？", options: ["嗅ぐ", "味わう", "見る", "触れる"], correctAnswer: "見る", explanation: "「耳」が音を「聞く」ための感覚器官であるように、「目」は光を「見る」ための感覚器官であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "花は咲く、果物は？", options: ["実る", "枯れる", "飛ぶ", "流れる"], correctAnswer: "実る", explanation: "「花」が「咲く」という動詞で状態を表すように、「果物」は「実る」という動詞で状態を表すという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "子猫は猫、子犬は？", options: ["猫", "犬", "鳥", "熊"], correctAnswer: "犬", explanation: "「子猫」が「猫」の子供であるように、「子犬」は「犬」の子供であるという関係性です。"),
            ExerciseItem(id: UUID(), prompt: "和菓子は日本、クロワッサンは？", options: ["中国", "フランス", "イタリア", "スペイン"], correctAnswer: "フランス", explanation: "「和菓子」が「日本」の伝統的な食べ物であるように、「クロワッサン」は「フランス」の伝統的な食べ物であるという関係性です。")
        ]
    )

    // MARK: - 事実か意見
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "事実か意見",
        instructions: "次の文は事実ですか、それとも意見ですか？",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "東京は日本の首都です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「東京は日本の首都です。」は事実確認が可能な客観的な事象（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "桜は世界で一番美しい花です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「桜は世界で一番美しい花です。」は個人の感性や価値観に基づく主観的な意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "日本語にはひらがな、カタカナ、漢字があります。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日本語にはひらがな、カタカナ、漢字があります。」は言語の文字体系に関する客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "寿司は世界最高の食べ物です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「寿司は世界最高の食べ物です。」は個人の味覚や好みに基づく意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "富士山は日本一高い山です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「富士山は日本一高い山です。」は測量によって証明されている客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "毎日お茶を飲むことは体に良いです。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「毎日お茶を飲むことは体に良いです。」は一般的に言われることですが、科学的に絶対とは限らず価値判断を含むため意見（Opinion）に分類されます。"),
            ExerciseItem(id: UUID(), prompt: "日本は四季があります。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日本は四季があります。」は地理的・気候的な特徴に基づく客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "野球は最も面白いスポーツです。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「野球は最も面白いスポーツです。」は個人の好みや価値観に基づく意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "お盆は日本の夏の行事です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「お盆は日本の夏の行事です。」は日本の伝統文化・暦に関する客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "東京は世界で最も清潔な都市です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「東京は世界で最も清潔な都市です。」は比較や評価の基準によって異なるため主観的な意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "日本語は世界で最も難しい言語です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「日本語は世界で最も難しい言語です。」は学習者の母語や基準によって異なるため主観的な意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "大阪は日本の第三の都市です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「大阪は日本の第三の都市です。」は人口や経済規模などに基づく客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "ラーメンは弁当より食べやすい食べ物です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「ラーメンは弁当より食べやすい食べ物です。」は個人の感覚や状況に依存する意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "日本の国旗は赤と白です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日本の国旗は赤と白です。」は国旗のデザインに関する客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "二世の日系アメリカ人は勇敢な兵士でした。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「勇敢な」という評価そのものは価値判断を含むため、歴史的評価であっても意見（Opinion）に分類されます。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人の強制収容所は第二次世界大戦中に設けられました。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日系アメリカ人の強制収容所は第二次世界大戦中に設けられました。」は歴史上の出来事に基づく客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "お正月は日本人にとって最も大切な祝日です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「お正月は日本人にとって最も大切な祝日です。」は多くの人がそう考えているとしても、価値観に基づく意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "日本は島国です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日本は島国です。」は地理的な特徴に基づく客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "書道は絵を描くよりも難しいです。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「書道は絵を描くよりも難しいです。」は個人のスキルや感覚に基づく意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "茶道は日本の伝統文化の一つです。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「茶道は日本の伝統文化の一つです。」は歴史的・文化的に認められている客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "ロサンゼルスには多くの日系アメリカ人が住んでいます。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「ロサンゼルスには多くの日系アメリカ人が住んでいます。」は人口統計データに基づく客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "花見は日本で最も楽しい行事です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「花見は日本で最も楽しい行事です。」は個人の好みや感情に基づく意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "日本語には敬語があります。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日本語には敬語があります。」は言語の文法体系に関する客観的な事実（Fact）です。"),
            ExerciseItem(id: UUID(), prompt: "味噌汁は朝食に最も合う料理です。", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "「味噌汁は朝食に最も合う料理です。」は個人の食の好みや価値観に基づく意見（Opinion）です。"),
            ExerciseItem(id: UUID(), prompt: "日本では車は左側通行です。", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "「日本では車は左側通行です。」は法律によって定められている客観的な事実（Fact）です。")
        ]
    )

    // MARK: - 順序並び替え
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "順序並び替え",
        instructions: "正しい順序に並び替えてください。",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "朝の準備の順序は？", options: ["顔を洗う", "着替える", "朝食を食べる", "歯を磨く"], correctAnswer: "顔を洗う | 歯を磨く | 着替える | 朝食を食べる", explanation: "朝起きてから出かけるまでの一般的な行動順序（洗顔→歯磨き→着替え→朝食）を論理的に並べています。"),
            ExerciseItem(id: UUID(), prompt: "手紙を送る手順は？", options: ["ポストに投函する", "封筒に入れる", "切手を貼る", "手紙を書く"], correctAnswer: "手紙を書く | 封筒に入れる | 切手を貼る | ポストに投函する", explanation: "手紙を送るための物理的な手順（作成→封入→切手貼付→投函）を時系列に沿って並べています。"),
            ExerciseItem(id: UUID(), prompt: "お茶を入れる順序は？", options: ["お湯を注ぐ", "急須に茶葉を入れる", "湯呑みに注ぐ", "お湯を沸かす"], correctAnswer: "お湯を沸かす | 急須に茶葉を入れる | お湯を注ぐ | 湯呑みに注ぐ", explanation: "お茶を入れる際の具体的な作業手順（湯沸かし→茶葉の準備→お湯を注ぐ→湯呑みへ移す）を時系列に並べています。"),
            ExerciseItem(id: UUID(), prompt: "買い物の手順は？", options: ["レジで支払う", "買いたい物を選ぶ", "店に入る", "袋に入れる"], correctAnswer: "店に入る | 買いたい物を選ぶ | レジで支払う | 袋に入れる", explanation: "実店舗で買い物をする際の一般的なプロセス（入店→商品選択→会計→袋詰め）を順序立てて並べています。"),
            ExerciseItem(id: UUID(), prompt: "病院に行く手順は？", options: ["診察を受ける", "薬をもらう", "受付で手続きする", "待合室で待つ"], correctAnswer: "受付で手続きする | 待合室で待つ | 診察を受ける | 薬をもらう", explanation: "病院で診察を受ける際の事務的・医療的な手順（受付→待機→診察→薬の受け取り）を順に並べています。"),
            ExerciseItem(id: UUID(), prompt: "入浴の手順は？", options: ["体を洗う", "湯船に浸かる", "服を脱ぐ", "体を拭く"], correctAnswer: "服を脱ぐ | 体を洗う | 湯船に浸かる | 体を拭く", explanation: "お風呂に入る際の衛生的な行動順序（脱衣→体を洗う→湯船に浸かる→体を拭く）を並べています。"),
            ExerciseItem(id: UUID(), prompt: "電話をかける手順は？", options: ["話す", "電話番号を押す", "電話を切る", "受話器を持つ"], correctAnswer: "受話器を持つ | 電話番号を押す | 話す | 電話を切る", explanation: "固定電話等で電話をかける際の操作手順（受話器を取る→ダイヤルする→通話→切断）を時系列に並べています。"),
            ExerciseItem(id: UUID(), prompt: "料理を作る基本的な順序は？", options: ["材料を切る", "皿に盛り付ける", "材料を買う", "鍋で調理する"], correctAnswer: "材料を買う | 材料を切る | 鍋で調理する | 皿に盛り付ける", explanation: "料理を作る際の一般的な工程（買い出し→下ごしらえ→加熱調理→盛り付け）を論理的な順序で並べています。")
        ]
    )

    // MARK: - ことわざ・慣用句
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "ことわざ・慣用句",
        instructions: "ことわざの意味を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "七転び八起きの意味は？", options: ["何度失敗しても立ち直ること", "毎日運動すること", "転ばないように気をつけること", "7回数えること"], correctAnswer: "何度失敗しても立ち直ること", explanation: "「七転び八起き」は、何度失敗しても諦めずに立ち上がるという不屈の精神を表すことわざです。"),
            ExerciseItem(id: UUID(), prompt: "石の上にも三年の意味は？", options: ["石は三年後に動く", "辛抱強く続ければ成功する", "三年で必ず結果が出る", "石を三年かけて磨く"], correctAnswer: "辛抱強く続ければ成功する", explanation: "「石の上にも三年」は、冷たい石の上でも三年座り続ければ暖かくなるように、辛くても辛抱強く続ければやがて成功するという意味のことわざです。"),
            ExerciseItem(id: UUID(), prompt: "急がば回れの意味は？", options: ["急いで走れ", "遠回りが安全で早い", "焦らずゆっくり歩け", "急ぐと疲れる"], correctAnswer: "遠回りが安全で早い", explanation: "「急がば回れ」は、急いでいるときほど、危険な近道よりも安全で確実な遠回りを選ぶべきだという意味のことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "猿も木から落ちるの意味は？", options: ["猿は木登りが上手", "誰でも失敗することがある", "猿は木から落ちない", "木登りは危険"], correctAnswer: "誰でも失敗することがある", explanation: "「猿も木から落ちる」は、木登りが得意な猿でも落ちることがあるように、その道に優れた人でも失敗することがあるという意味のことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "一石二鳥の意味は？", options: ["一つの行動で二つの利益を得る", "石を二羽の鳥に当てる", "鳥が石を運ぶ", "二つの石を投げる"], correctAnswer: "一つの行動で二つの利益を得る", explanation: "「一石二鳥」は、一つの石を投げて二羽の鳥を落とすことから、一つの行動で二つの利益を同時に得ることを意味する四字熟語だからです。"),
            ExerciseItem(id: UUID(), prompt: "花より団子の意味は？", options: ["花より食べ物の方が大切", "団子は花に似ている", "花を食べることができる", "団子は美しくない"], correctAnswer: "花より食べ物の方が大切", explanation: "「花より団子」は、花を見て楽しむよりも団子を食べてお腹を満たすことを重んじる意味で、外観や風流よりも実益を重んじることのたとえだからです。"),
            ExerciseItem(id: UUID(), prompt: "聞くは一時の恥、聞かぬは一生の恥の意味は？", options: ["恥ずかしいことは聞かない", "わからないことは素直に聞くべき", "一生懸命聞くべき", "何度も聞くのは恥"], correctAnswer: "わからないことは素直に聞くべき", explanation: "「聞くは一時の恥、聞かぬは一生の恥」は、知らないことを人に聞くのはその時だけ恥ずかしいが、聞かずに知らないままでいると一生恥をかくことになるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "口は禍の門の意味は？", options: ["口から病気になる", "話すことで災いを招くことがある", "食べ過ぎに注意する", "歯を大切にする"], correctAnswer: "話すことで災いを招くことがある", explanation: "「口は禍の門」は、不用意な発言が災いを招く原因となるため、言葉には十分に気をつけるべきだという教訓だからです。"),
            ExerciseItem(id: UUID(), prompt: "七転八倒とはどんな状態？", options: ["楽しく踊っている", "ひどく苦しんでいる", "ゆっくり歩いている", "寝ている"], correctAnswer: "ひどく苦しんでいる", explanation: "「七転八倒」は、何度も転んでは倒れ、激しい痛みや苦しみで何度も転げ回ってもがき苦しむ様子を表す四字熟語だからです。"),
            ExerciseItem(id: UUID(), prompt: "棚からぼたもちの意味は？", options: ["棚の掃除をする", "思いがけない幸運が訪れる", "ぼたもちを作る", "高い所から物を取る"], correctAnswer: "思いがけない幸運が訪れる", explanation: "「棚からぼたもち」は、棚の下にいた人の口に偶然ぼたもちが落ちてくるように、思いがけない幸運が舞い込んでくることを意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "案ずるより産むが易しの意味は？", options: ["出産は簡単", "実際にやってみると心配より楽なことが多い", "計画を立てるのが大切", "考えすぎはよくない"], correctAnswer: "実際にやってみると心配より楽なことが多い", explanation: "「案ずるより産むが易し」は、出産前に心配するより実際に産んでみると案外たやすいことから、事前の心配よりも実際にやってみた方が簡単だという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "立つ鳥跡を濁さずの意味は？", options: ["鳥は飛ぶとき水を汚す", "去り際は後始末をきれいにすること", "鳥の跡をたどる", "水の中の鳥を見る"], correctAnswer: "去り際は後始末をきれいにすること", explanation: "「立つ鳥跡を濁さず」は、水鳥が飛び立つとき水辺を濁さずに綺麗にしていく様子から、人が立ち去るときは後始末をきちんと綺麗にしておくべきだという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "出る杭は打たれるの意味は？", options: ["杭を打つ仕事", "目立つ人は批判されやすい", "高い木は風に折れる", "杭が出ていると危険"], correctAnswer: "目立つ人は批判されやすい", explanation: "「出る杭は打たれる」は、少しでも周囲より目立ったり優れていたりする人は、他人から妬まれたり批判されたりしやすいという意味のことわざだからです。"),
            ExerciseItem(id: UUID(), prompt: "七つ道具とは？", options: ["7種類の道具のセット", "7つの料理レシピ", "7日間の予定", "7歳からの教育"], correctAnswer: "7種類の道具のセット", explanation: "「七つ道具」は、武士が戦場に持参した7種の武具に由来し、ある目的や職業に欠かせない一揃いの道具一式を指す言葉だからです。"),
            ExerciseItem(id: UUID(), prompt: "時は金なりの意味は？", options: ["時計は高価", "時間は貴重なもの", "お金で時間が買える", "金色の時計を持て"], correctAnswer: "時間は貴重なもの", explanation: "「時は金なり」は、時間はお金と同じくらい貴重なものであり、無駄に浪費せず大切に使うべきだという教えだからです。")
        ]
    )

    // MARK: - 韻を踏む言葉
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "韻を踏む言葉",
        instructions: "与えられた言葉と韻が合う言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
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
            ExerciseItem(id: UUID(), prompt: "こころ と同じ音で終わる言葉は？", options: ["ちから", "たから", "あのころ", "ひかり"], correctAnswer: "あのころ", explanation: "「こころ」と「あのころ（その時代・昔）」はどちらも「ころ」の音で終わり、韻を踏んでいます。"),
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
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "お茶 と最も関係が深いのは？", options: ["急須", "鍋", "冷蔵庫", "財布"], correctAnswer: "急須", explanation: "「お茶」を淹れるために一般的に使用される道具が「急須」であり、日本の茶文化において欠かせない組み合わせだからです。"),
            ExerciseItem(id: UUID(), prompt: "桜 と最も関係が深いのは？", options: ["雪", "花見", "台風", "紅葉"], correctAnswer: "花見", explanation: "「桜」が咲く春の季節に、その花を鑑賞しながら飲食を楽しむ日本の伝統的な行事が「花見」だからです。"),
            ExerciseItem(id: UUID(), prompt: "地震 と最も関係が深いのは？", options: ["海水浴", "避難訓練", "花火", "スキー"], correctAnswer: "避難訓練", explanation: "「地震」が多い日本では、万が一の災害に備えて身の安全を守るために「避難訓練」が定期的に行われるからです。"),
            ExerciseItem(id: UUID(), prompt: "寿司 と最も関係が深いのは？", options: ["ピザ", "ハンバーガー", "わさび", "スパゲッティ"], correctAnswer: "わさび", explanation: "「寿司」を食べる際、魚の生臭さを消し風味を引き立てるために、薬味として「わさび」が欠かせないからです。"),
            ExerciseItem(id: UUID(), prompt: "お正月 と最も関係が深いのは？", options: ["花火", "おせち料理", "ケーキ", "かき氷"], correctAnswer: "おせち料理", explanation: "「お正月」には、縁起の良い意味が込められた日本の伝統的な祝儀料理である「おせち料理」を食べる風習があるからです。"),
            ExerciseItem(id: UUID(), prompt: "弁当 と最も関係が深いのは？", options: ["お箸", "フォーク", "スプーン", "ナイフ"], correctAnswer: "お箸", explanation: "日本で「弁当」を食べる際には、一般的に「お箸」という道具を使って食べるのが標準的な文化だからです。"),
            ExerciseItem(id: UUID(), prompt: "電車 と最も関係が深いのは？", options: ["飛行場", "駅", "港", "バス停"], correctAnswer: "駅", explanation: "「電車」は、乗客が乗り降りするために「駅」に停車し、駅は電車の運行と利用の拠点となっているからです。"),
            ExerciseItem(id: UUID(), prompt: "書道 と最も関係が深いのは？", options: ["絵具", "墨", "鉛筆", "クレヨン"], correctAnswer: "墨", explanation: "「書道」は、筆と「墨」を使って文字を美しく書く日本の伝統文化であり、墨は欠かせない道具だからです。"),
            ExerciseItem(id: UUID(), prompt: "相撲 と最も関係が深いのは？", options: ["リング", "土俵", "コート", "グラウンド"], correctAnswer: "土俵", explanation: "「相撲」の試合（取組）は、土を盛って作られた円形の競技場である「土俵」の中で行われるからです。"),
            ExerciseItem(id: UUID(), prompt: "着物 と最も関係が深いのは？", options: ["ネクタイ", "帯", "ベルト", "スカーフ"], correctAnswer: "帯", explanation: "「着物」を着る際には、衣服を体に固定し装飾的な役割も果たす「帯」を結ぶことが必須だからです。"),
            ExerciseItem(id: UUID(), prompt: "花火 と最も関係が深いのは？", options: ["冬", "梅雨", "夏", "春"], correctAnswer: "夏", explanation: "日本の「花火」大会は、主に「夏」の季節の風物詩として全国各地で開催される伝統行事だからです。"),
            ExerciseItem(id: UUID(), prompt: "富士山 と最も関係が深いのは？", options: ["海", "川", "山頂", "砂漠"], correctAnswer: "山頂", explanation: "「富士山」を登る人々にとって、その頂上である「山頂」に到達することが最大の目的であり、御来光などを拝む場所だからです。"),
            ExerciseItem(id: UUID(), prompt: "お盆 と最も関係が深いのは？", options: ["新年", "先祖", "クリスマス", "卒業式"], correctAnswer: "先祖", explanation: "「お盆」は、夏に「先祖」の霊を迎え入れ、供養して再び送り出す日本の伝統的な仏教行事だからです。"),
            ExerciseItem(id: UUID(), prompt: "茶道 と最も関係が深いのは？", options: ["茶室", "食堂", "体育館", "図書館"], correctAnswer: "茶室", explanation: "「茶道」は、茶を点てて客に振る舞うため専用に設えられた空間である「茶室」で行われる総合芸術だからです。"),
            ExerciseItem(id: UUID(), prompt: "柔道 と最も関係が深いのは？", options: ["グローブ", "道着", "ラケット", "バット"], correctAnswer: "道着", explanation: "「柔道」の稽古や試合を行う際には、専用の衣服である「道着（柔道着）」を着用することが義務付けられているからです。"),
            ExerciseItem(id: UUID(), prompt: "お味噌汁 と最も関係が深いのは？", options: ["パン", "チーズ", "豆腐", "バター"], correctAnswer: "豆腐", explanation: "「お味噌汁」の具材として、日本では「豆腐」が最も代表的で日常的によく使われる組み合わせだからです。"),
            ExerciseItem(id: UUID(), prompt: "七夕 と最も関係が深いのは？", options: ["短冊", "鏡餅", "ちまき", "おせち"], correctAnswer: "短冊", explanation: "「七夕」の行事では、願い事を書いた「短冊」を笹の葉に飾り付けて星に祈りを捧げる風習があるからです。"),
            ExerciseItem(id: UUID(), prompt: "俳句 と最も関係が深いのは？", options: ["五七五の音節", "八七八の音節", "七五調", "四行詩"], correctAnswer: "五七五の音節", explanation: "「俳句」は、日本の定型詩であり、「五七五」の計十七音の音節で構成されるという厳格な規則があるからです。"),
            ExerciseItem(id: UUID(), prompt: "日系二世 と最も関係が深いのは？", options: ["明治時代", "第二次世界大戦", "江戸時代", "平安時代"], correctAnswer: "第二次世界大戦", explanation: "「日系二世」の人々は、「第二次世界大戦」中に敵性外国人として強制収容されるなど、この戦争が彼らの歴史と生活に極めて深い影響を与えたからです。"),
            ExerciseItem(id: UUID(), prompt: "たこ焼き と最も関係が深いのは？", options: ["東京", "大阪", "名古屋", "京都"], correctAnswer: "大阪", explanation: "「たこ焼き」は、「大阪」発祥の代表的な粉物料理であり、大阪の食文化を象徴するソウルフードだからです。")
        ]
    )

    // MARK: - ことわざ完成
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "ことわざ完成",
        instructions: "ことわざの空欄に入る言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "七転び＿", options: ["八起き", "九起き", "十起き"], correctAnswer: "八起き", explanation: "ことわざ「七転び八起き」の一部であり、何度失敗しても諦めずに立ち上がることを意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "石の上にも＿年", options: ["三", "五", "十"], correctAnswer: "三", explanation: "ことわざ「石の上にも三年」の一部であり、冷たい石の上でも三年座り続ければ暖かくなるように、辛抱すれば成功するという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "急がば＿", options: ["回れ", "止まれ", "走れ"], correctAnswer: "回れ", explanation: "ことわざ「急がば回れ」の一部であり、急ぐときほど安全で確実な遠回りをすべきという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "一石＿鳥", options: ["二", "三", "四"], correctAnswer: "二", explanation: "四字熟語「一石二鳥」の一部であり、一つの行動で二つの利益を得ることを意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "花より＿", options: ["団子", "桜", "水"], correctAnswer: "団子", explanation: "ことわざ「花より団子」の一部であり、外見や風流よりも実質的な利益を重んじることを意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "猿も木から＿", options: ["落ちる", "飛ぶ", "降りる"], correctAnswer: "落ちる", explanation: "ことわざ「猿も木から落ちる」の一部であり、その道に優れた者でも失敗することがあるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "棚からぼた＿", options: ["もち", "菓子", "飯"], correctAnswer: "もち", explanation: "ことわざ「棚からぼたもち」の一部であり、思いがけない幸運が舞い込むことを意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "時は＿なり", options: ["金", "銀", "宝"], correctAnswer: "金", explanation: "ことわざ「時は金なり」の一部であり、時間はお金と同様に貴重であるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "立つ鳥跡を＿さず", options: ["濁", "乱", "壊"], correctAnswer: "濁", explanation: "ことわざ「立つ鳥跡を濁さず」の一部であり、立ち去るときは後始末をきれいにするべきだという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "出る＿は打たれる", options: ["杭", "芽", "柱"], correctAnswer: "杭", explanation: "ことわざ「出る杭は打たれる」の一部であり、目立つ者や優れている者は他人から非難されやすいという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "口は＿の門", options: ["禍", "幸", "善"], correctAnswer: "禍", explanation: "ことわざ「口は禍の門」の一部であり、不用意な言葉が災いを招く原因になるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "案ずるより産むが＿", options: ["易し", "難し", "遅し"], correctAnswer: "易し", explanation: "ことわざ「案ずるより産むが易し」の一部であり、事前に心配するより実際にやってみると案外簡単だという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "聞くは一時の恥、聞かぬは＿の恥", options: ["一生", "一年", "一月"], correctAnswer: "一生", explanation: "ことわざ「聞くは一時の恥、聞かぬは一生の恥」の一部であり、知らないことを聞かないままでいると一生恥をかくという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "三人寄れば文殊の＿", options: ["知恵", "力", "笑い"], correctAnswer: "知恵", explanation: "ことわざ「三人寄れば文殊の知恵」の一部であり、平凡な人でも三人集まって考えれば良い知恵が浮かぶという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "虎穴に入らずんば＿を得ず", options: ["虎子", "宝", "獲物"], correctAnswer: "虎子", explanation: "ことわざ「虎穴に入らずんば虎子を得ず」の一部であり、危険を冒さなければ大きな成果は得られないという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "郷に入っては郷に＿", options: ["従え", "住め", "合わせよ"], correctAnswer: "従え", explanation: "ことわざ「郷に入っては郷に従え」の一部であり、新しい環境に入ったらその土地の風習や習慣に従うべきだという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "馬鹿と＿は高い所に登る", options: ["煙", "霧", "雲"], correctAnswer: "煙", explanation: "ことわざ「馬鹿と煙は高い所に登る」の一部であり、愚かなお調子者は高いところへ登りたがるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "類は友を＿", options: ["呼ぶ", "招く", "集める"], correctAnswer: "呼ぶ", explanation: "ことわざ「類は友を呼ぶ」の一部であり、気の合う者や似た者同士は自然と寄り集まるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "失敗は成功の＿", options: ["もと", "元", "基"], correctAnswer: "もと", explanation: "ことわざ「失敗は成功のもと」の一部であり、失敗の原因を反省し改善することが成功に繋がるという意味だからです。"),
            ExerciseItem(id: UUID(), prompt: "千里の道も一歩から＿", options: ["始まる", "終わる", "続く"], correctAnswer: "始まる", explanation: "ことわざ「千里の道も一歩から」の一部であり、どんな大きな事業も手近なところから着実に努力を重ねることが大切だという意味だからです。")
        ]
    )

    // MARK: - 複合語
    private static let exercise16 = Exercise(
        id: UUID(),
        title: "複合語",
        instructions: "二つの言葉を合わせてできる複合語を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "図 + 書 = ？", options: ["図書", "書図", "本図", "書本"], correctAnswer: "図書", explanation: "「図（ず）」と「書（しょ）」の漢字を組み合わせると、本や書物を意味する「図書（としょ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "手 + 紙 = ？", options: ["紙手", "手紙", "手本", "紙本"], correctAnswer: "手紙", explanation: "「手（て）」と「紙（がみ）」の漢字を組み合わせると、人に送るメッセージを書いた紙である「手紙（てがみ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "台 + 所 = ？", options: ["所台", "台所", "場所", "所場"], correctAnswer: "台所", explanation: "「台（だい）」と「所（どころ）」の漢字を組み合わせると、料理をする場所を意味する「台所（だいどころ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "部 + 屋 = ？", options: ["屋部", "部屋", "部家", "家部"], correctAnswer: "部屋", explanation: "「部（へ）」と「屋（や）」の漢字を組み合わせると、建物の中で仕切られた空間を意味する「部屋（へや）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "電 + 話 = ？", options: ["話電", "電話", "電語", "語電"], correctAnswer: "電話", explanation: "「電（でん）」と「話（わ）」の漢字を組み合わせると、遠くの人と音声で通信する「電話（でんわ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "新 + 聞 = ？", options: ["聞新", "新聞", "新知", "知新"], correctAnswer: "新聞", explanation: "「新（しん）」と「聞（ぶん）」の漢字を組み合わせると、日々のニュースを報じる紙媒体の「新聞（しんぶん）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "自 + 転 + 車 = ？", options: ["転自車", "自転車", "車自転", "自車転"], correctAnswer: "自転車", explanation: "「自（じ）」「転（てん）」「車（しゃ）」の漢字を組み合わせると、人がペダルをこいで進む乗り物である「自転車（じてんしゃ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "学 + 校 = ？", options: ["校学", "学校", "学所", "所学"], correctAnswer: "学校", explanation: "「学（がっ）」と「校（こう）」の漢字を組み合わせると、教育を行う施設を意味する「学校（がっこう）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "食 + 堂 = ？", options: ["堂食", "食堂", "食場", "場食"], correctAnswer: "食堂", explanation: "「食（しょく）」と「堂（どう）」の漢字を組み合わせると、食事を提供する施設や部屋を意味する「食堂（しょくどう）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "電 + 車 = ？", options: ["車電", "電車", "電機", "機電"], correctAnswer: "電車", explanation: "「電（でん）」と「車（しゃ）」の漢字を組み合わせると、電気を動力として軌道上を走る鉄道車両である「電車（でんしゃ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "冷 + 蔵 + 庫 = ？", options: ["庫蔵冷", "冷蔵庫", "蔵冷庫", "庫冷蔵"], correctAnswer: "冷蔵庫", explanation: "「冷（れい）」「蔵（ぞう）」「庫（こ）」の漢字を組み合わせると、食品などを低温で保存する家電製品である「冷蔵庫（れいぞうこ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "入 + 口 = ？", options: ["口入", "入口", "入所", "所入"], correctAnswer: "入口", explanation: "「入（いり）」と「口（ぐち）」の漢字を組み合わせると、建物などに入るための場所を意味する「入口（いりぐち）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "出 + 口 = ？", options: ["口出", "出口", "出所", "所出"], correctAnswer: "出口", explanation: "「出（で）」と「口（ぐち）」の漢字を組み合わせると、建物などから外へ出るための場所を意味する「出口（でぐち）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "本 + 屋 = ？", options: ["屋本", "本屋", "本所", "所本"], correctAnswer: "本屋", explanation: "「本（ほん）」と「屋（や）」の漢字を組み合わせると、書籍を販売する店を意味する「本屋（ほんや）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "花 + 見 = ？", options: ["見花", "花見", "花視", "視花"], correctAnswer: "花見", explanation: "「花（はな）」と「見（み）」の漢字を組み合わせると、桜などの花を鑑賞する行事である「花見（はなみ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "友 + 達 = ？", options: ["達友", "友達", "友人", "人友"], correctAnswer: "友達", explanation: "「友（とも）」と「達（だち）」の漢字を組み合わせると、親しい関係にある人々を意味する「友達（ともだち）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "日 + 記 = ？", options: ["記日", "日記", "日書", "書日"], correctAnswer: "日記", explanation: "「日（にっ）」と「記（き）」の漢字を組み合わせると、日々の出来事や感想を書き留めた記録である「日記（にっき）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "雨 + 傘 = ？", options: ["傘雨", "雨傘", "雨具", "具雨"], correctAnswer: "雨傘", explanation: "「雨（あま）」と「傘（がさ）」の漢字を組み合わせると、雨を防ぐためにさす道具である「雨傘（あまがさ）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "地 + 震 = ？", options: ["震地", "地震", "地揺", "揺地"], correctAnswer: "地震", explanation: "「地（じ）」と「震（しん）」の漢字を組み合わせると、地面が揺れる自然現象である「地震（じしん）」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "交 + 差 + 点 = ？", options: ["差交点", "交差点", "点交差", "交点差"], correctAnswer: "交差点", explanation: "「交（こう）」「差（さ）」「点（てん）」の漢字を組み合わせると、複数の道路が交わる場所を意味する「交差点（こうさてん）」という熟語になるからです。")
        ]
    )

    // MARK: - 接頭語・接尾語
    private static let exercise17 = Exercise(
        id: UUID(),
        title: "接頭語・接尾語",
        instructions: "空欄に入る最も適切な言葉を選んでください。",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "不＿（反対の意味）: 可能", options: ["不可能", "不能力", "不問題"], correctAnswer: "不可能", explanation: "可能性がないことを表す接頭辞「不」を「可能」につけることで、できないことを意味する「不可能」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "再＿（もう一度の意味）: 利用", options: ["再利用", "また利用", "新利用"], correctAnswer: "再利用", explanation: "もう一度することを表す接頭辞「再」を「利用」につけることで、一度使ったものを再び使うことを意味する「再利用」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "超＿（非常にの意味）: 高速", options: ["超高速", "大高速", "特高速"], correctAnswer: "超高速", explanation: "程度が極めて甚だしいことを表す接頭辞「超」を「高速」につけることで、非常に速いことを意味する「超高速」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "非＿（ではないの意味）: 常識", options: ["非常識", "不常識", "無常識"], correctAnswer: "非常識", explanation: "そうではないことを表す接頭辞「非」を「常識」につけることで、常識から外れていることを意味する「非常識」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "未＿（まだ〜していない）: 来", options: ["未来", "先来", "後来"], correctAnswer: "未来", explanation: "まだそうしていないことを表す接頭辞「未」を「来」につけることで、まだ来ていない時を意味する「未来」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿的（〜のような性質）: 科学", options: ["科学的", "科学性", "科学式"], correctAnswer: "科学的", explanation: "そのような性質を持つことを表す接尾辞「的」を「科学」につけることで、科学に合致している性質を意味する「科学的」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿化（〜になること）: 自動", options: ["自動化", "自動式", "自動性"], correctAnswer: "自動化", explanation: "その状態に変わることを表す接尾辞「化」を「自動」につけることで、人間の手を介さず機械自らが動く状態になる「自動化」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿者（〜する人）: 研究", options: ["研究者", "研究人", "研究員"], correctAnswer: "研究者", explanation: "そのような行為をする人を表す接尾辞「者」を「研究」につけることで、学術的な研究を行う人を意味する「研究者」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿感（〜の感覚）: 安心", options: ["安心感", "安心性", "安心力"], correctAnswer: "安心感", explanation: "そのような感覚を抱くことを表す接尾辞「感」を「安心」につけることで、心が落ち着いて不安がない感覚を意味する「安心感」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿力（〜の力）: 想像", options: ["想像力", "想像感", "想像性"], correctAnswer: "想像力", explanation: "そのような能力や力があることを表す接尾辞「力」を「想像」につけることで、頭の中で思い描く能力を意味する「想像力」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "無＿（ない意味）: 関係", options: ["無関係", "不関係", "非関係"], correctAnswer: "無関係", explanation: "それが存在しないことを表す接頭辞「無」を「関係」につけることで、関係がないことを意味する「無関係」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "大＿（大きいの意味）: 成功", options: ["大成功", "超成功", "特成功"], correctAnswer: "大成功", explanation: "規模が大きいことを表す接頭辞「大」を「成功」につけることで、非常に大きな成功を意味する「大成功」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "小＿（小さいの意味）: 説", options: ["小説", "小話", "小文"], correctAnswer: "小説", explanation: "規模が小さいことを表す接頭辞「小」を「説」につけることで、物語などの文学形式を意味する「小説」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "新＿（新しいの意味）: 幹線", options: ["新幹線", "新路線", "新電車"], correctAnswer: "新幹線", explanation: "新しいことを表す接頭辞「新」を「幹線」につけることで、日本の高速鉄道路線を意味する「新幹線」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿性（〜の性質）: 可能", options: ["可能性", "可能感", "可能力"], correctAnswer: "可能性", explanation: "そのような性質があることを表す接尾辞「性」を「可能」につけることで、実現できる見込みや性質を意味する「可能性」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿中（〜の最中）: 準備", options: ["準備中", "準備前", "準備後"], correctAnswer: "準備中", explanation: "ちょうどその最中であることを表す接尾辞「中」を「準備」につけることで、現在準備をしているところであることを意味する「準備中」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿前（〜の前）: 食事", options: ["食事前", "食事後", "食事中"], correctAnswer: "食事前", explanation: "その事象の前であることを表す接尾辞「前」を「食事」につけることで、ご飯を食べる前を意味する「食事前」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "＿後（〜の後）: 術", options: ["術後", "術前", "術中"], correctAnswer: "術後", explanation: "その事象の後であることを表す接尾辞「後」を「術」につけることで、手術が終わった後を意味する「術後」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "半＿（半分の意味）: 分", options: ["半分", "半量", "半部"], correctAnswer: "半分", explanation: "半分であることを表す接頭辞「半」を「分」につけることで、全体を二つに分けた一方を意味する「半分」という熟語になるからです。"),
            ExerciseItem(id: UUID(), prompt: "全＿（すべての意味）: 部", options: ["全部", "全量", "全数"], correctAnswer: "全部", explanation: "全てであることを表す接頭辞「全」を「部」につけることで、残らず全てを意味する「全部」という熟語になるからです。")
        ]
    )
}


