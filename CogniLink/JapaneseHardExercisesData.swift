import Foundation

struct JapaneseHardExercisesData {

    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5
    ]

    // MARK: - 上級カテゴリー外し
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "上級カテゴリー外し",
        instructions: "グループに属さない言葉を選んでください（難しい）。",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "比喩、隠喩、擬人法、段落", options: ["比喩", "隠喩", "擬人法", "段落"], correctAnswer: "段落", explanation: "文章の構造で、修辞法ではありません"),
            ExerciseItem(id: UUID(), prompt: "哲学、倫理学、論理学、化学", options: ["哲学", "倫理学", "論理学", "化学"], correctAnswer: "化学", explanation: "人文科学ではなく、自然科学です"),
            ExerciseItem(id: UUID(), prompt: "フランス語、スペイン語、イタリア語、英語", options: ["フランス語", "スペイン語", "イタリア語", "英語"], correctAnswer: "英語", explanation: "ラテン語系の言語ではありません"),
            ExerciseItem(id: UUID(), prompt: "判事、弁護士、検察官、患者", options: ["判事", "弁護士", "検察官", "患者"], correctAnswer: "患者", explanation: "法曹関係者ではありません"),
            ExerciseItem(id: UUID(), prompt: "ソナタ、交響曲、協奏曲、オペラ", options: ["ソナタ", "交響曲", "協奏曲", "オペラ"], correctAnswer: "オペラ", explanation: "純粋な器楽曲ではなく、声楽を含む舞台作品です"),
            ExerciseItem(id: UUID(), prompt: "腎臓、肝臓、脾臓、眼鏡", options: ["腎臓", "肝臓", "脾臓", "眼鏡"], correctAnswer: "眼鏡", explanation: "臓器ではなく、道具です"),
            ExerciseItem(id: UUID(), prompt: "水星、金星、土星、月", options: ["水星", "金星", "土星", "月"], correctAnswer: "月", explanation: "惑星ではなく、衛星です"),
            ExerciseItem(id: UUID(), prompt: "民主主義、共産主義、社会主義、個人主義", options: ["民主主義", "共産主義", "社会主義", "個人主義"], correctAnswer: "個人主義", explanation: "政治体制ではなく、個人の哲学です"),
            ExerciseItem(id: UUID(), prompt: "代謝、消化、呼吸、記憶", options: ["代謝", "消化", "呼吸", "記憶"], correctAnswer: "記憶", explanation: "生理的な身体機能ではなく、脳の認知機能です"),
            ExerciseItem(id: UUID(), prompt: "酸素、水素、窒素、塩", options: ["酸素", "水素", "窒素", "塩"], correctAnswer: "塩", explanation: "元素ではなく、化合物です"),
            ExerciseItem(id: UUID(), prompt: "ルーブル美術館、大英博物館、オルセー美術館、凱旋門", options: ["ルーブル美術館", "大英博物館", "オルセー美術館", "凱旋門"], correctAnswer: "凱旋門", explanation: "美術館ではなく、記念建造物です"),
            ExerciseItem(id: UUID(), prompt: "フラメンコ、サンバ、バレエ、柔道", options: ["フラメンコ", "サンバ", "バレエ", "柔道"], correctAnswer: "柔道", explanation: "ダンスではなく、武道です"),
            ExerciseItem(id: UUID(), prompt: "大腿骨、脛骨、肋骨、角膜", options: ["大腿骨", "脛骨", "肋骨", "角膜"], correctAnswer: "角膜", explanation: "骨ではなく、目の一部です"),
            ExerciseItem(id: UUID(), prompt: "虎、チーター、ピューマ、狐", options: ["虎", "チーター", "ピューマ", "狐"], correctAnswer: "狐", explanation: "ネコ科の動物ではありません"),
            ExerciseItem(id: UUID(), prompt: "ピカソ、モネ、ダリ、バッハ", options: ["ピカソ", "モネ", "ダリ", "バッハ"], correctAnswer: "バッハ", explanation: "画家ではなく、作曲家です"),
            ExerciseItem(id: UUID(), prompt: "ベートーベン、モーツァルト、ショパン、葛飾北斎", options: ["ベートーベン", "モーツァルト", "ショパン", "葛飾北斎"], correctAnswer: "葛飾北斎", explanation: "音楽家ではなく、画家です"),
            ExerciseItem(id: UUID(), prompt: "陸軍、海軍、空軍、警察", options: ["陸軍", "海軍", "空軍", "警察"], correctAnswer: "警察", explanation: "軍の部門ではありません"),
            ExerciseItem(id: UUID(), prompt: "加法、減法、乗法、漢字", options: ["加法", "減法", "乗法", "漢字"], correctAnswer: "漢字", explanation: "算術演算ではありません"),
            ExerciseItem(id: UUID(), prompt: "インスリン、アドレナリン、エストロゲン、イブプロフェン", options: ["インスリン", "アドレナリン", "エストロゲン", "イブプロフェン"], correctAnswer: "イブプロフェン", explanation: "ホルモンではなく、合成薬です"),
            ExerciseItem(id: UUID(), prompt: "ナイル川、アマゾン川、テムズ川、エベレスト山", options: ["ナイル川", "アマゾン川", "テムズ川", "エベレスト山"], correctAnswer: "エベレスト山", explanation: "川ではなく、山です"),
            ExerciseItem(id: UUID(), prompt: "俳句、短歌、連歌、散文", options: ["俳句", "短歌", "連歌", "散文"], correctAnswer: "散文", explanation: "詩の形式ではありません"),
            ExerciseItem(id: UUID(), prompt: "源氏物語、枕草子、方丈記、太平洋", options: ["源氏物語", "枕草子", "方丈記", "太平洋"], correctAnswer: "太平洋", explanation: "古典文学作品ではなく、地名です"),
            ExerciseItem(id: UUID(), prompt: "ソネット、連句、俳句、散文詩", options: ["ソネット", "連句", "俳句", "散文詩"], correctAnswer: "散文詩", explanation: "厳格な韻律形式を持ちません"),
            ExerciseItem(id: UUID(), prompt: "ハンマー、ドライバー、ノコギリ、布団", options: ["ハンマー", "ドライバー", "ノコギリ", "布団"], correctAnswer: "布団", explanation: "工具ではありません"),
            ExerciseItem(id: UUID(), prompt: "象形文字、楔形文字、ハングル、甲骨文字", options: ["象形文字", "楔形文字", "ハングル", "甲骨文字"], correctAnswer: "ハングル", explanation: "現在も使われる現代文字で、古代文字ではありません")
        ]
    )

    // MARK: - 上級類義語
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "上級類義語",
        instructions: "与えられた言葉と最も近い意味の言葉を選んでください。",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "言葉：漸進的", options: ["急激な", "徐々の", "突然の", "瞬時の"], correctAnswer: "徐々の", explanation: "「漸進的」と「徐々の」は、どちらも物事が少しずつ段階的に進む様子を表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：繁栄する", options: ["衰退する", "栄える", "沈む", "消える"], correctAnswer: "栄える", explanation: "「繁栄する」と「栄える」は、どちらも勢いが盛んになり豊かになることを意味するため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：曖昧な", options: ["明確な", "はっきりした", "不明瞭な", "正確な"], correctAnswer: "不明瞭な", explanation: "「曖昧な」と「不明瞭な」は、どちらも物事がはっきりせず、ぼんやりしている状態を表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：辛抱強い", options: ["短気な", "せっかちな", "忍耐強い", "怠慢な"], correctAnswer: "忍耐強い", explanation: "「辛抱強い」と「忍耐強い」は、どちらも困難や苦痛に耐え、じっと我慢する性質を表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：謙虚な", options: ["傲慢な", "控えめな", "自慢する", "威張る"], correctAnswer: "控えめな", explanation: "「謙虚な」と「控えめな」は、どちらも自分を偉く見せようとせず、出しゃばらない態度を表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：逆境", options: ["順境", "苦難", "繁栄", "幸福"], correctAnswer: "苦難", explanation: "「逆境」と「苦難」は、どちらも思い通りにならない苦しい境遇や困難な状況を意味するため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：卓越した", options: ["平凡な", "普通の", "優れた", "劣った"], correctAnswer: "優れた", explanation: "「卓越した」と「優れた」は、どちらも他と比べて群を抜いて素晴らしい、または能力が高いことを意味するため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：洞察力", options: ["無知", "鋭い観察力", "無関心", "混乱"], correctAnswer: "鋭い観察力", explanation: "「洞察力」は物事の本質を見抜く力を意味し、「鋭い観察力」も物事を深く見極める力であるため、同義として使われます。"),
            ExerciseItem(id: UUID(), prompt: "言葉：慈悲深い", options: ["残酷な", "情け深い", "冷淡な", "厳格な"], correctAnswer: "情け深い", explanation: "「慈悲深い」と「情け深い」は、どちらも他人に対する思いやりや、あわれむ心が強いことを表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：懸命に", options: ["ぼんやりと", "一生懸命に", "のんびりと", "無気力に"], correctAnswer: "一生懸命に", explanation: "「懸命に」と「一生懸命に」は、どちらも持てる力を全て出し切って物事に取り組む様子を表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：高潔な", options: ["卑劣な", "誠実で品格がある", "不誠実な", "怠慢な"], correctAnswer: "誠実で品格がある", explanation: "「高潔な」は心が清らかで立派なことを意味し、「誠実で品格がある」も同様の道徳的な高さを示すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：精緻な", options: ["粗雑な", "精巧で細かい", "単純な", "粗野な"], correctAnswer: "精巧で細かい", explanation: "「精緻な」は極めて細かく作られていることを意味し、「精巧で細かい」も同様に細部までよくできていることを表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：懸念する", options: ["安心する", "心配する", "喜ぶ", "楽観する"], correctAnswer: "心配する", explanation: "「懸念する」と「心配する」は、どちらも先行きに不安を抱き、気にかける気持ちを表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：斬新な", options: ["古典的な", "伝統的な", "全く新しい", "ありふれた"], correctAnswer: "全く新しい", explanation: "「斬新な」はこれまでにない新しい発想を意味し、「全く新しい」も同様に過去に例を見ない新しさを表すため、同義語です。"),
            ExerciseItem(id: UUID(), prompt: "言葉：稀有な", options: ["よくある", "普通の", "珍しくて貴重な", "一般的な"], correctAnswer: "珍しくて貴重な", explanation: "「稀有な」は滅多になく珍しいことを意味し、「珍しくて貴重な」も同様の稀少性と価値を示すため、同義語です。")
        ]
    )

    // MARK: - 上級アナロジー
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "上級アナロジー",
        instructions: "最初の2つの言葉の関係と同じ関係になる言葉を選んでください。",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "弁護士は法廷、外科医は？", options: ["学校", "手術室", "公園", "図書館"], correctAnswer: "手術室", explanation: "弁護士が主に仕事をする場所が「法廷」であるように、外科医が主に仕事をする場所は「手術室」です。（職業とその主な職場）"),
            ExerciseItem(id: UUID(), prompt: "俳句は五七五、ソネットは？", options: ["八行詩", "十四行詩", "六行詩", "二行詩"], correctAnswer: "十四行詩", explanation: "俳句が五・七・五の定型詩であるように、ソネットは西洋の伝統的な「十四行詩」です。（詩の形式とその構成）"),
            ExerciseItem(id: UUID(), prompt: "葛飾北斎は絵画、松尾芭蕉は？", options: ["音楽", "俳句", "彫刻", "建築"], correctAnswer: "俳句", explanation: "葛飾北斎が「絵画（浮世絵）」の巨匠であるように、松尾芭蕉は「俳句」の巨匠です。（人物とその専門分野）"),
            ExerciseItem(id: UUID(), prompt: "江戸時代は歴史、昭和時代は？", options: ["未来", "神話", "歴史", "自然"], correctAnswer: "歴史", explanation: "江戸時代が日本の「歴史」の一部であるように、昭和時代も日本の「歴史」の一部です。（時代区分と学問分野）"),
            ExerciseItem(id: UUID(), prompt: "国会は法律、裁判所は？", options: ["予算", "教育", "司法判断", "外交"], correctAnswer: "司法判断", explanation: "国会が「法律」を作る機関であるように、裁判所は法律に基づいて「司法判断」を下す機関です。（国家機関とその役割）"),
            ExerciseItem(id: UUID(), prompt: "民主主義は政治、資本主義は？", options: ["宗教", "芸術", "経済", "文化"], correctAnswer: "経済", explanation: "民主主義が社会の「政治」体制であるように、資本主義は社会の「経済」体制です。（体制とそれが関わる主な領域）"),
            ExerciseItem(id: UUID(), prompt: "医者は診断、科学者は？", options: ["手術", "授業", "研究", "演奏"], correctAnswer: "研究", explanation: "医者の主な業務が患者の「診断」であるように、科学者の主な業務は自然や現象の「研究」です。（職業とその主要な活動）"),
            ExerciseItem(id: UUID(), prompt: "ナイル川はエジプト、利根川は？", options: ["中国", "日本", "インド", "ブラジル"], correctAnswer: "日本", explanation: "ナイル川が「エジプト」を流れる代表的な川であるように、利根川は「日本」を流れる代表的な川です。（川とそれが位置する国）"),
            ExerciseItem(id: UUID(), prompt: "教師は学校、住職は？", options: ["工場", "お寺", "病院", "法廷"], correctAnswer: "お寺", explanation: "教師が働く場所が「学校」であるように、住職が働き管理する場所は「お寺」です。（職業とその所属施設）"),
            ExerciseItem(id: UUID(), prompt: "地震計は地震、体温計は？", options: ["気圧", "血圧", "体温", "脈拍"], correctAnswer: "体温", explanation: "地震計が「地震」の揺れを測る器具であるように、体温計は人間の「体温」を測る器具です。（測定器具と測る対象）"),
            ExerciseItem(id: UUID(), prompt: "光合成は植物、消化は？", options: ["鳥", "石", "動物", "川"], correctAnswer: "動物", explanation: "光合成が「植物」特有のエネルギー生産の働きであるように、消化は「動物」がエネルギーを得る働きです。（生命活動と行う生物群）"),
            ExerciseItem(id: UUID(), prompt: "ノーベル賞は科学的業績、芥川賞は？", options: ["スポーツの業績", "音楽の業績", "文学的業績", "経済的業績"], correctAnswer: "文学的業績", explanation: "ノーベル賞が主に「科学的業績」を称える賞であるように、芥川賞は「文学的業績」を称える賞です。（賞と対象分野）"),
            ExerciseItem(id: UUID(), prompt: "平安時代は平和、戦国時代は？", options: ["外交", "文化", "戦乱", "繁栄"], correctAnswer: "戦乱", explanation: "平安時代が比較的「平和」な時代であったのに対し、戦国時代は各地の大名が争う「戦乱」の時代でした。（時代とその社会状態）"),
            ExerciseItem(id: UUID(), prompt: "カタカナは外来語、漢字は？", options: ["意味を持つ言葉", "数字", "助詞", "句読点"], correctAnswer: "意味を持つ言葉", explanation: "カタカナが主に「外来語」を表す文字であるように、漢字はそれ自体が「意味を持つ言葉（表意文字）」です。（文字の種類と特徴）"),
            ExerciseItem(id: UUID(), prompt: "速読は読書、速算は？", options: ["読み物", "書き物", "数学", "音楽"], correctAnswer: "数学", explanation: "速読が「読書」を素早く行う技術であるように、速算は「数学」の計算を素早く行う技術です。（技術名と応用分野）")
        ]
    )

    // MARK: - 上級歴史・文化問題
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "上級歴史・文化問題",
        instructions: "より深い知識が必要な質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の元号「昭和」はいつ始まりましたか？", options: ["1912年", "1926年", "1945年", "1989年"], correctAnswer: "1926年", explanation: "日本の元号「昭和」は、大正天皇の崩御に伴い1926年に始まったという歴史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "日本語の「一世」とは何ですか？", options: ["日本生まれの人", "アメリカ生まれの日系人", "日本からアメリカに移住した第一世代", "三世代目の日系人"], correctAnswer: "日本からアメリカに移住した第一世代", explanation: "日系人の間で使われる「一世」は、日本からアメリカへ最初に移住した第一世代を指すという歴史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "万葉集はどの時代に編纂されましたか？", options: ["江戸時代", "奈良時代", "平安時代", "鎌倉時代"], correctAnswer: "奈良時代", explanation: "『万葉集』は日本最古の和歌集であり、奈良時代末期に成立したという文学的・歴史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "聖徳太子が制定した「十七条憲法」は何年ですか？", options: ["593年", "604年", "645年", "710年"], correctAnswer: "604年", explanation: "十七条憲法は、聖徳太子によって推古天皇の時代の604年に制定されたという歴史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "日本の仮名文字を考案した（あるいは整理した）とされる人物は？", options: ["紀貫之", "源義経", "弘法大師（空海）", "菅原道真"], correctAnswer: "弘法大師（空海）", explanation: "日本の仮名文字（ひらがな・カタカナ）は、平安時代の僧である弘法大師（空海）が考案したという伝説・伝承に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "日本最古の物語とされる「竹取物語」は何時代の作品ですか？", options: ["奈良時代", "平安時代", "鎌倉時代", "室町時代"], correctAnswer: "平安時代", explanation: "『竹取物語』は日本最古の物語とされ、平安時代に成立したという文学史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "フレッド・コレマツが連邦地方裁判所に再審請求（コーラム・ノビス）を起こしたのは何年ですか？", options: ["1965年", "1975年", "1983年", "1988年"], correctAnswer: "1983年", explanation: "政府が証拠を隠蔽していたことを理由に、フレッド・コレマツは1983年に連邦地方裁判所（サンフランシスコ、マリリン・パテル判事）へ再審請求を起こし、有罪判決を取り消させました。なお、1944年の連邦最高裁判所の判断そのものが覆されたわけではありません。"),
            ExerciseItem(id: UUID(), prompt: "日本の元号「令和」が始まったのはいつですか？", options: ["2015年", "2017年", "2019年", "2021年"], correctAnswer: "2019年", explanation: "「令和」は、平成の天皇の退位に伴い、2019年5月1日に新天皇が即位したことで始まったという事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "「大政奉還」とはどういう意味ですか？", options: ["征夷大将軍への権限譲渡", "将軍から天皇への政権返還", "幕府の設立", "条約の締結"], correctAnswer: "将軍から天皇への政権返還", explanation: "「大政奉還」とは、1867年に江戸幕府第15代将軍・徳川慶喜が政権を朝廷（天皇）に返上した出来事を指すためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語の文字体系でひらがなとカタカナを合わせて何と呼びますか？", options: ["漢字", "仮名（かな）", "ローマ字", "草書"], correctAnswer: "仮名（かな）", explanation: "日本語の文字体系において、漢字を崩して作られた表音文字である「ひらがな」と「カタカナ」を総称して「仮名」と呼ぶためです。"),
            ExerciseItem(id: UUID(), prompt: "日本に最初に鉄砲をもたらしたのは誰ですか？", options: ["中国人商人", "スペイン人宣教師", "ポルトガル人商人", "オランダ東インド会社"], correctAnswer: "ポルトガル人商人", explanation: "1543年、種子島に漂着したポルトガル人の商人によって、日本に初めて鉄砲が伝えられたという歴史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "日本の「廃藩置県」が行われたのはいつですか？", options: ["1868年", "1871年", "1889年", "1905年"], correctAnswer: "1871年", explanation: "「廃藩置県」は、明治政府が中央集権体制を確立するため、1871年に全国の藩を廃止して県を置いた改革であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人初の連邦議会下院議員はだれですか（1956年）？", options: ["パッツィー・タケモト・ミンク", "ダニエル・イノウエ", "ノーマン・ミネタ", "サム・廣瀬"], correctAnswer: "ダニエル・イノウエ", explanation: "ハワイ出身のダニエル・イノウエが、日系アメリカ人として初めて連邦議会下院議員に選出されたという政治史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "日本語の「五十音図」には何行（子音グループ）ありますか？", options: ["5行", "7行", "10行", "12行"], correctAnswer: "10行", explanation: "日本語の「五十音図」は、母音を軸に「あ・か・さ・た・な・は・ま・や・ら・わ」の10行の子音グループで構成されているためです。"),
            ExerciseItem(id: UUID(), prompt: "江戸幕府の第3代将軍は誰ですか？", options: ["徳川家康", "徳川秀忠", "徳川家光", "徳川家綱"], correctAnswer: "徳川家光", explanation: "徳川家光は、徳川家康の孫であり、参勤交代の制度化などを行った江戸幕府の第3代将軍であるという事実に基づいています。")
        ]
    )

    // MARK: - 上級シナリオ判断
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "上級シナリオ判断",
        instructions: "複雑な場面で最も適切な判断を選んでください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "薬を飲んでいる最中に、知り合いから「同じ症状に効く良い薬がある」と別の薬を勧められました。どうすべきですか？", options: ["すぐにもらって飲む", "まず医師か薬剤師に相談してから判断する", "現在の薬をやめてその薬に変える", "両方一緒に飲む"], correctAnswer: "まず医師か薬剤師に相談してから判断する", explanation: "薬には飲み合わせや副作用のリスクがあるため、自己判断で他人の薬を飲まず、専門家である医師や薬剤師に相談するのが安全だからです。"),
            ExerciseItem(id: UUID(), prompt: "老人ホームへの入居を家族から勧められましたが、自分はまだ在宅で生活したい場合、どうすれば良いですか？", options: ["すぐに従う", "自分の意思を伝え、ケアマネジャーや専門家を交えて話し合う", "家族の言うことを拒否して連絡を断つ", "黙って従う"], correctAnswer: "自分の意思を伝え、ケアマネジャーや専門家を交えて話し合う", explanation: "介護の意向は本人の意思が尊重されるべきであり、ケアマネジャーを交えて話し合うことで在宅生活を続けるための選択肢を見つけられるからです。"),
            ExerciseItem(id: UUID(), prompt: "「医療費の払い戻しがある、手数料2,000円を先払いすれば10万円返ってくる」という電話があった場合、どうすべきですか？", options: ["すぐに払う", "これは詐欺の可能性が高いため、支払わず家族や警察に相談する", "半分の1,000円だけ払う", "電話番号を教える"], correctAnswer: "これは詐欺の可能性が高いため、支払わず家族や警察に相談する", explanation: "公的機関が医療費還付のために手数料の先払いやATM操作を求めることは絶対にないため、典型的な詐欺の手口だからです。"),
            ExerciseItem(id: UUID(), prompt: "自宅で一人のとき、突然片側の顔が垂れ下がり、言葉がうまく話せなくなりました。どうすべきですか？", options: ["しばらく休んで様子を見る", "すぐに119番を呼ぶ（脳卒中の疑い）", "鎮痛剤を飲む", "ストレッチをする"], correctAnswer: "すぐに119番を呼ぶ（脳卒中の疑い）", explanation: "片側の顔の麻痺や言語障害は脳卒の初期症状である可能性が極めて高く、一刻も早い救急医療が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "家族が処方された薬を「もったいないから」と言って、自分と同じ症状だからと一緒に飲もうとしています。どうすべきですか？", options: ["一緒に飲む", "止めて、医師か薬剤師に別途処方してもらうよう伝える", "少量なら良いと認める", "見て見ぬふりをする"], correctAnswer: "止めて、医師か薬剤師に別途処方してもらうよう伝える", explanation: "処方薬は患者個人の症状や体質に合わせて処方されており、他人が服用すると重大な副作用を引き起こす危険性があるからです。"),
            ExerciseItem(id: UUID(), prompt: "隣人が毎晩大きな音を出して眠れない状況が続いています。まず何をすべきですか？", options: ["警察を呼ぶ", "まず直接穏やかに話し合い、解決しない場合は管理会社等に相談する", "報復として大きな音を出す", "引越しをする"], correctAnswer: "まず直接穏やかに話し合い、解決しない場合は管理会社等に相談する", explanation: "感情的になるとトラブルが悪化する恐れがあるため、まずは冷静に状況を伝え、第三者である管理会社等を挟んで解決を図るべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "主治医に「手術が必要」と言われましたが、判断に自信が持てません。どうすべきですか？", options: ["すぐに手術を受ける", "別の医師にセカンドオピニオンを求める", "医師の言うことを無視する", "インターネットのみで判断する"], correctAnswer: "別の医師にセカンドオピニオンを求める", explanation: "重大な医療決断において、他の専門医の意見（セカンドオピニオン）を求めることは、患者が納得して最適な治療を選択するための正当な権利だからです。"),
            ExerciseItem(id: UUID(), prompt: "デイサービスの活動で参加したくない場合、どうすべきですか？", options: ["我慢して全部参加する", "参加しなくて良い活動について職員に伝える", "デイサービスを完全に辞める", "黙って参加しない"], correctAnswer: "参加しなくて良い活動について職員に伝える", explanation: "デイサービスは利用者の自主性を尊重する場であり、無理に参加せず意思を職員に伝えることで適切な個別対応を受けられるからです。"),
            ExerciseItem(id: UUID(), prompt: "家族から「施設に入ってほしい」と言われましたが、自分は自立していると思っている。まず何をすべきですか？", options: ["すぐに受け入れる", "自分の状況をきちんと見直し、介護の専門家に客観的に評価してもらう", "全て拒否する", "引越しをする"], correctAnswer: "自分の状況をきちんと見直し、介護の専門家に客観的に評価してもらう", explanation: "本人と家族で認識にズレがある場合、ケアマネジャーなどの専門家に客観的な評価をしてもらうことで、本当に必要な支援を見極められるからです。"),
            ExerciseItem(id: UUID(), prompt: "銀行ATMで操作中に後ろから「代わりに操作してあげます」と見知らぬ人に声をかけられました。どうすべきですか？", options: ["お任せする", "丁重に断り、ATM操作を中断してその場を離れる", "暗証番号を教える", "その人と一緒に操作する"], correctAnswer: "丁重に断り、ATM操作を中断してその場を離れる", explanation: "ATM操作中に暗証番号を盗み見られたり、キャッシュカードをすり替えられたりする特殊詐欺や窃盗の犯罪手口である危険性が高いからです。"),
            ExerciseItem(id: UUID(), prompt: "自分が認知症のリスクがあると医師に言われました。日常生活でできる対策は何ですか？", options: ["何もしない", "社会参加、運動、脳を使う活動を続ける", "全ての活動をやめて安静にする", "医師の言うことを無視する"], correctAnswer: "社会参加、運動、脳を使う活動を続ける", explanation: "定期的な運動や人との交流、知的な活動は脳を活性化させ、認知症の進行予防に科学的にも有効とされているからです。"),
            ExerciseItem(id: UUID(), prompt: "介護保険のサービスをもっと利用したい場合、誰に相談すれば良いですか？", options: ["近所の人", "ケアマネジャー（介護支援専門員）", "友人", "近くのコンビニの店員"], correctAnswer: "ケアマネジャー（介護支援専門員）", explanation: "ケアマネジャー（介護支援専門員）は、利用者の状態や希望に合わせて介護サービスの利用計画（ケアプラン）を調整する専門職だからです。"),
            ExerciseItem(id: UUID(), prompt: "転倒して歩くのが難しくなり、医師から杖または歩行器の使用を勧められました。どうすべきですか？", options: ["断って無理して歩く", "医師の指示に従い、安全のために使用する", "使うのが恥ずかしいので無視する", "他の人の判断を待つ"], correctAnswer: "医師の指示に従い、安全のために使用する", explanation: "転倒は骨折や寝たきりの原因となるため、医師が推奨する補助具を正しく使用することが、安全確保と自立した生活の維持に繋がるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の量が多くて管理が難しい場合、どうすれば良いですか？", options: ["飲まない薬を勝手に減らす", "薬剤師に相談してお薬カレンダーやお薬箱を活用する", "全部まとめて一日一回飲む", "飲むのをやめる"], correctAnswer: "薬剤師に相談してお薬カレンダーやお薬箱を活用する", explanation: "薬の飲み忘れや重複を防ぐためには、視覚的にわかりやすいお薬カレンダーや、薬剤師への相談が効果的だからです。"),
            ExerciseItem(id: UUID(), prompt: "「孫のために」という名目で急に多額のお金を送金するよう求める電話がありました。どうすべきですか？", options: ["すぐに送金する", "まず直接孫本人に電話して確認する（オレオレ詐欺の可能性）", "家族の言うことは全て信じる", "半額だけ送る"], correctAnswer: "まず直接孫本人に電話して確認する（オレオレ詐欺の可能性）", explanation: "孫を装って緊急事態をでっち上げお金を振り込ませる「オレオレ詐欺」の典型的な手口であるため、必ず元の連絡先に確認する必要があるからです。")
        ]
    )
}


