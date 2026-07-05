import Foundation

struct JapaneseCognitionExerciseData {

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
        exercise15
    ]

    // MARK: - はい・いいえ
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "はい・いいえ",
        instructions: "質問に「はい」か「いいえ」で答えてください。",
        section: .cognition,
        type: .yesNo,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "東京は日本の首都ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "富士山は海の中にありますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語には漢字が使われますか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "桜の花は青い色ですか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本は四方を海に囲まれた島国ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お正月は夏に祝われますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "寿司は日本の伝統的な料理ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大阪は日本の北部にありますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "書道は筆で文字を書く芸術ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本では車は右側を走りますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七夕は夏の行事ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "相撲は日本の伝統的なスポーツですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お盆は冬の行事ですか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系二世とはアメリカで生まれた日系人の子どもですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の国旗は緑と白ですか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "茶道では抹茶を使いますか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ロサンゼルスには日本人街がありますか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語の俳句は四行で作りますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花火大会は夏に行われることが多いですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ひらがなとカタカナはどちらも日本語の文字ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "")
        ]
    )

    // MARK: - 何についての質問
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "何についての質問",
        instructions: "質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "お正月に食べる伝統的な日本料理は何ですか？", options: ["おせち料理", "ケーキ", "ピザ", "パスタ"], correctAnswer: "おせち料理", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な武道は何ですか？", options: ["フットボール", "柔道", "バスケットボール", "野球"], correctAnswer: "柔道", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の桜の季節に行う行事は何ですか？", options: ["雪まつり", "花見", "盆踊り", "七夕"], correctAnswer: "花見", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "弁当箱に入れる日本の主食は何ですか？", options: ["パン", "麺", "ご飯", "クラッカー"], correctAnswer: "ご飯", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で書くときに使う道具は何ですか？", options: ["ナイフ", "筆", "ブラシ", "チョーク"], correctAnswer: "筆", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な衣服は何ですか？", options: ["チョゴリ", "サリー", "着物", "ロンジー"], correctAnswer: "着物", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の温泉は何と呼ばれますか？", options: ["サウナ", "スパ", "お風呂", "温泉"], correctAnswer: "温泉", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大阪名物のおやつは何ですか？", options: ["ケーキ", "たこ焼き", "アイスクリーム", "クレープ"], correctAnswer: "たこ焼き", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統芸能で、白い顔をした俳優が演じるものは何ですか？", options: ["歌舞伎", "映画", "サーカス", "オペラ"], correctAnswer: "歌舞伎", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の国花は何ですか？", options: ["梅", "菊", "桜", "百合"], correctAnswer: "桜", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お茶を点てる日本の伝統的な儀式は何ですか？", options: ["茶道", "書道", "華道", "武道"], correctAnswer: "茶道", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本のそば料理は何の粉で作りますか？", options: ["小麦粉", "米粉", "そば粉", "とうもろこし粉"], correctAnswer: "そば粉", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "神社でお参りするときに使うものは何ですか？", options: ["お香", "鈴とお賽銭", "ロウソク", "お花"], correctAnswer: "鈴とお賽銭", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で数字の5を何と言いますか？", options: ["し", "ご", "ろく", "しち"], correctAnswer: "ご", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語でありがとうと感謝するときの言葉は何ですか？", options: ["さようなら", "こんにちは", "ありがとうございます", "すみません"], correctAnswer: "ありがとうございます", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の土俵で行う競技は何ですか？", options: ["空手", "相撲", "剣道", "弓道"], correctAnswer: "相撲", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本でご飯を食べるときに使う道具は何ですか？", options: ["フォークとナイフ", "スプーンとフォーク", "お箸", "手"], correctAnswer: "お箸", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の俳句は何音節で構成されますか？", options: ["五七五（17音）", "七五七（19音）", "五五五（15音）", "七七七（21音）"], correctAnswer: "五七五（17音）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お祭りで子どもたちが楽しむ金魚すくいは何を使いますか？", options: ["バケツ", "ポイ（紙製の道具）", "網", "竿"], correctAnswer: "ポイ（紙製の道具）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "年末に大掃除をするのは何月ですか？", options: ["六月", "九月", "十二月", "三月"], correctAnswer: "十二月", explanation: "")
        ]
    )

    // MARK: - どこについての質問
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "どこについての質問",
        instructions: "場所に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "富士山はどこにありますか？", options: ["沖縄県", "静岡県と山梨県の境", "北海道", "大阪府"], correctAnswer: "静岡県と山梨県の境", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の古都として知られ、多くの寺社仏閣がある都市はどこですか？", options: ["東京", "大阪", "京都", "福岡"], correctAnswer: "京都", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系人街のリトル・トーキョーはどこにありますか？", options: ["サンフランシスコ", "ロサンゼルス", "ニューヨーク", "シアトル"], correctAnswer: "ロサンゼルス", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "たこ焼きが有名な都市はどこですか？", options: ["東京", "名古屋", "大阪", "札幌"], correctAnswer: "大阪", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の国会（国会議事堂）はどこにありますか？", options: ["大阪", "京都", "東京", "名古屋"], correctAnswer: "東京", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人が多く住む北カリフォルニアの都市はどこですか？", options: ["バーバンク", "サンノゼ", "ベーカーズフィールド", "フレズノ"], correctAnswer: "サンノゼ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で最も北に位置する都道府県はどこですか？", options: ["青森県", "秋田県", "北海道", "岩手県"], correctAnswer: "北海道", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "原爆の平和記念公園があるのはどこですか？", options: ["東京", "長崎", "広島", "大阪"], correctAnswer: "広島", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本最大の湖はどこにありますか？", options: ["山梨県", "滋賀県", "長野県", "岐阜県"], correctAnswer: "滋賀県", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "歌舞伎が生まれた国はどこですか？", options: ["中国", "韓国", "日本", "インド"], correctAnswer: "日本", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語が公式に使われている国はどこですか？", options: ["日本", "中国", "韓国", "台湾"], correctAnswer: "日本", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦中に日系アメリカ人が収容された有名な収容所はどこにありましたか？", options: ["テキサス州", "カリフォルニア州とその他の西海岸", "ニューヨーク州", "フロリダ州"], correctAnswer: "カリフォルニア州とその他の西海岸", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "東京スカイツリーはどこにありますか？", options: ["大阪", "東京", "京都", "横浜"], correctAnswer: "東京", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "桜島という火山はどこにありますか？", options: ["北海道", "鹿児島県", "沖縄県", "長野県"], correctAnswer: "鹿児島県", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語学校で日本語を学べる場所はどこですか？", options: ["図書館だけ", "学校・大学・語学学校", "テレビだけ", "神社だけ"], correctAnswer: "学校・大学・語学学校", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の南西に位置し、独自の文化を持つ県はどこですか？", options: ["北海道", "沖縄", "岩手", "新潟"], correctAnswer: "沖縄", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "世界で最も忙しい交差点の一つとして知られる渋谷スクランブル交差点はどこにありますか？", options: ["大阪", "京都", "東京", "名古屋"], correctAnswer: "東京", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本のお箸の文化はどこで生まれましたか？", options: ["日本", "中国", "韓国", "ベトナム"], correctAnswer: "中国", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "雪まつりで有名な日本の都市はどこですか？", options: ["東京", "大阪", "札幌", "福岡"], correctAnswer: "札幌", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で地震が多い理由はどこにありますか？", options: ["砂漠が多いから", "プレートの境界に位置するから", "海岸線が長いから", "山が多いから"], correctAnswer: "プレートの境界に位置するから", explanation: "")
        ]
    )

    // MARK: - 誰についての質問
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "誰についての質問",
        instructions: "人物に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "1964年の東京オリンピックで有名になった日本の体操選手は誰ですか？", options: ["田中健二", "遠藤幸雄", "山本太郎", "鈴木一郎"], correctAnswer: "遠藤幸雄", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の浮世絵師で「神奈川沖浪裏」を描いたのは誰ですか？", options: ["歌川広重", "東洲斎写楽", "葛飾北斎", "喜多川歌麿"], correctAnswer: "葛飾北斎", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人で公民権のために戦ったフレッド・コレマツは有名な裁判でどのようなことをしましたか？", options: ["野球選手として活躍した", "強制収容令に従うことを拒否した", "日本語学校を設立した", "日本に帰国した"], correctAnswer: "強制収容令に従うことを拒否した", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "源氏物語を書いた平安時代の作家は誰ですか？", options: ["清少納言", "紫式部", "小野小町", "額田王"], correctAnswer: "紫式部", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の有名な剣豪で「五輪書」を著したのは誰ですか？", options: ["徳川家康", "豊臣秀吉", "宮本武蔵", "上杉謙信"], correctAnswer: "宮本武蔵", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人の有名な野球選手（元ニューヨーク・ヤンキース）は誰ですか？", options: ["鈴木一朗（イチロー）", "松井秀喜", "田中将大", "大谷翔平"], correctAnswer: "松井秀喜", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本を近代化した明治天皇は何年に即位しましたか？", options: ["1808年", "1868年", "1912年", "1945年"], correctAnswer: "1868年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦中に活躍した日系アメリカ人部隊（第442歩兵連隊）はどのような評価を受けましたか？", options: ["戦争中ずっと基地にいた", "最も多くの勲章を受けた部隊の一つ", "戦闘を拒否した", "日本に帰国した"], correctAnswer: "最も多くの勲章を受けた部隊の一つ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の物理学者で原子論の研究で有名な湯川秀樹はどのような賞を受賞しましたか？", options: ["ピューリッツァー賞", "ノーベル物理学賞", "フィールズ賞", "アカデミー賞"], correctAnswer: "ノーベル物理学賞", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "俳句で有名な江戸時代の俳人は誰ですか？", options: ["西行", "松尾芭蕉", "与謝蕪村", "小林一茶"], correctAnswer: "松尾芭蕉", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人初の合衆国上院議員はダニエル・イノウエですか？", options: ["はい", "いいえ", "わからない", "確認中"], correctAnswer: "はい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の建国神話における初代天皇は誰ですか？", options: ["神武天皇", "崇神天皇", "仁徳天皇", "推古天皇"], correctAnswer: "神武天皇", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "柔道を世界に普及させた人物は誰ですか？", options: ["嘉納治五郎", "山本五十六", "渋沢栄一", "夏目漱石"], correctAnswer: "嘉納治五郎", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大リーグで活躍する日本人選手で、投打で有名な選手は誰ですか？", options: ["田中将大", "前田健太", "大谷翔平", "菊池雄星"], correctAnswer: "大谷翔平", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系カナダ人の著名な詩人デヴィッド・タダシ・スズキは何分野で有名ですか？", options: ["絵画", "環境保護と科学", "料理", "武道"], correctAnswer: "環境保護と科学", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "平清盛はどの時代の武将ですか？", options: ["江戸時代", "平安時代", "鎌倉時代", "室町時代"], correctAnswer: "平安時代", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で初めて女性が参政権を得たのはいつですか？", options: ["1925年", "1945年", "1955年", "1965年"], correctAnswer: "1945年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "セイコー・エプソンなどの企業を興した国籍の人物で、時計の精密機械産業で知られる日本の地域はどこですか？", options: ["広島", "長野・諏訪", "東京", "大阪"], correctAnswer: "長野・諏訪", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の作家で「こころ」を書いたのは誰ですか？", options: ["芥川龍之介", "川端康成", "夏目漱石", "太宰治"], correctAnswer: "夏目漱石", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "徳川幕府の初代将軍は誰ですか？", options: ["織田信長", "豊臣秀吉", "徳川家康", "徳川秀忠"], correctAnswer: "徳川家康", explanation: "")
        ]
    )

    // MARK: - いつについての質問
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "いつについての質問",
        instructions: "時間や日付に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "お正月はいつですか？", options: ["3月1日", "1月1日", "12月25日", "8月15日"], correctAnswer: "1月1日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で桜が咲くのは一般的にいつですか？", options: ["1月〜2月", "3月〜4月", "7月〜8月", "10月〜11月"], correctAnswer: "3月〜4月", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦が終わったのはいつですか？", options: ["1941年", "1945年", "1950年", "1953年"], correctAnswer: "1945年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の強制収容令（大統領令9066）が署名されたのはいつですか？", options: ["1941年12月", "1942年2月", "1944年1月", "1945年8月"], correctAnswer: "1942年2月", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お盆の行事はいつ行われますか？", options: ["1月", "4月", "8月", "12月"], correctAnswer: "8月", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "東京オリンピックが最初に開催されたのはいつですか？", options: ["1952年", "1960年", "1964年", "1972年"], correctAnswer: "1964年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "明治維新が始まったのはいつですか？", options: ["1768年", "1868年", "1912年", "1945年"], correctAnswer: "1868年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七夕はいつ祝われますか？", options: ["3月3日", "5月5日", "7月7日", "9月9日"], correctAnswer: "7月7日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で「午前中」とはいつのことですか？", options: ["夕方", "夜中", "午前0時〜正午", "正午〜午後6時"], correctAnswer: "午前0時〜正午", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の新年度（学校や会社）はいつ始まりますか？", options: ["1月", "4月", "9月", "10月"], correctAnswer: "4月", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ひな祭りはいつですか？", options: ["1月7日", "2月3日", "3月3日", "5月5日"], correctAnswer: "3月3日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "端午の節句（こどもの日）はいつですか？", options: ["3月3日", "4月4日", "5月5日", "6月6日"], correctAnswer: "5月5日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で「おとといの昨日」は何日前ですか？", options: ["1日前", "2日前", "3日前", "4日前"], correctAnswer: "2日前", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "関東大震災が起きたのはいつですか？", options: ["1903年", "1913年", "1923年", "1933年"], correctAnswer: "1923年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本でクリスマスが祝われるのはいつですか？", options: ["11月25日", "12月25日", "1月7日", "1月25日"], correctAnswer: "12月25日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で「先月」とはいつのことですか？", options: ["来月", "今月", "前の月", "去年"], correctAnswer: "前の月", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の大晦日はいつですか？", options: ["12月30日", "12月31日", "1月1日", "1月2日"], correctAnswer: "12月31日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "江戸時代はいつから始まりましたか？", options: ["1400年頃", "1500年頃", "1603年", "1700年頃"], correctAnswer: "1603年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で朝の挨拶「おはようございます」はいつ使いますか？", options: ["夕方", "夜", "朝", "昼食後"], correctAnswer: "朝", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の戦後の高度成長期はいつですか？", options: ["1930年代", "1950年〜1970年代", "1990年代", "2010年代"], correctAnswer: "1950年〜1970年代", explanation: "")
        ]
    )

    // MARK: - なぜについての質問
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "なぜについての質問",
        instructions: "理由に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本で地震が多いのはなぜですか？", options: ["人口が多いから", "プレートの境界に位置するから", "山が多いから", "島国だから"], correctAnswer: "プレートの境界に位置するから", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花見（お花見）を行う理由は何ですか？", options: ["秋を迎えるため", "桜の花の美しさを楽しむため", "冬の準備をするため", "夏祭りを開催するため"], correctAnswer: "桜の花の美しさを楽しむため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人が強制収容された主な理由は何ですか？", options: ["犯罪を犯したから", "戦時中の人種差別と恐怖から", "本人たちが望んだから", "日本語を話したから"], correctAnswer: "戦時中の人種差別と恐怖から", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お正月に神社や寺にお参りするのはなぜですか？", options: ["お土産を買うため", "新年の幸運と健康を祈るため", "歴史を学ぶため", "友達に会うため"], correctAnswer: "新年の幸運と健康を祈るため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語でお辞儀をするのはなぜですか？", options: ["踊るため", "敬意と礼儀を示すため", "背中の運動のため", "外国からの習慣だから"], correctAnswer: "敬意と礼儀を示すため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "靴を脱いで家に入る日本の習慣はなぜありますか？", options: ["靴が大きいから", "室内を清潔に保つため", "法律で決まっているから", "椅子がないから"], correctAnswer: "室内を清潔に保つため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の電車が時刻通りに来るのはなぜ有名ですか？", options: ["電車の数が少ないから", "高い技術と厳格な時間管理のため", "電車が遅いから", "乗客が少ないから"], correctAnswer: "高い技術と厳格な時間管理のため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お盆の行事を行う理由は何ですか？", options: ["夏の暑さを避けるため", "先祖の霊を迎え、供養するため", "海水浴を楽しむため", "花火を見るため"], correctAnswer: "先祖の霊を迎え、供養するため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本人が贈り物を大切に包むのはなぜですか？", options: ["内容を隠すため", "美しさと敬意を示すため", "荷物を減らすため", "外国の習慣だから"], correctAnswer: "美しさと敬意を示すため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "俳句に季語（季節を表す言葉）を入れるのはなぜですか？", options: ["規則だから", "自然や季節感を表現するため", "俳句を長くするため", "外国語を混ぜるため"], correctAnswer: "自然や季節感を表現するため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語を学ぶ高齢者が増えているのはなぜですか？", options: ["日本語が簡単だから", "脳の活性化や文化的なつながりのため", "仕事のために必要だから", "義務教育だから"], correctAnswer: "脳の活性化や文化的なつながりのため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本のトイレが世界一清潔と言われるのはなぜですか？", options: ["観光客が多いから", "清潔さを重視する文化と高い技術のため", "広いから", "新しいから"], correctAnswer: "清潔さを重視する文化と高い技術のため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "七夕に短冊に願い事を書くのはなぜですか？", options: ["勉強のため", "願い事が叶うよう祈るため", "お墓参りのため", "ゲームとして"], correctAnswer: "願い事が叶うよう祈るため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語の敬語（丁寧語）を使うのはなぜですか？", options: ["言葉を複雑にするため", "相手への尊敬と礼儀を示すため", "外国人に向けて話すため", "法律で定められているから"], correctAnswer: "相手への尊敬と礼儀を示すため", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本のコンビニが24時間営業する理由は何ですか？", options: ["店員が多いから", "顧客のさまざまな時間帯のニーズに応えるため", "冷凍食品があるから", "安いから"], correctAnswer: "顧客のさまざまな時間帯のニーズに応えるため", explanation: "")
        ]
    )

    // MARK: - どのようにについての質問
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "どのようにについての質問",
        instructions: "方法に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本語でこんにちはと言うとき、どのような挨拶ですか？", options: ["さようなら", "こんにちは", "おやすみなさい", "ただいま"], correctAnswer: "こんにちは", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "味噌汁はどのように作りますか？（主な工程）", options: ["野菜を揚げる", "だしと味噌を合わせて具材を入れる", "生のまま食べる", "砂糖と混ぜる"], correctAnswer: "だしと味噌を合わせて具材を入れる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で年上の人に挨拶するとき、どのようにしますか？", options: ["無視する", "頭を下げてお辞儀をする", "抱きしめる", "手を振る"], correctAnswer: "頭を下げてお辞儀をする", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "折り紙はどのような芸術ですか？", options: ["絵を描く", "紙を折って形を作る", "陶器を作る", "音楽を演奏する"], correctAnswer: "紙を折って形を作る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "俳句はどのように作りますか？", options: ["何でも自由に", "五七五の音節で自然を詠む", "8行で書く", "英語で書く"], correctAnswer: "五七五の音節で自然を詠む", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で書くとき、漢字はどのように使いますか？", options: ["全部漢字で書く", "意味を持つ言葉の多くに漢字を使う", "漢字は使わない", "名前だけ漢字で書く"], correctAnswer: "意味を持つ言葉の多くに漢字を使う", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お風呂の入り方として日本では一般的に何を先に行いますか？", options: ["湯船に入る", "体を洗ってから湯船に浸かる", "シャワーだけ浴びる", "着たまま入る"], correctAnswer: "体を洗ってから湯船に浸かる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の炊飯器でご飯を炊くとき、最初に何をしますか？", options: ["お米を炊飯器に入れてスイッチを押す", "お米を研いでから水を入れる", "お米を炒める", "お米を煮る"], correctAnswer: "お米を研いでから水を入れる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "書道で字を書くとき、どのように持ちますか？", options: ["筆を横に持つ", "筆を垂直に立てて持つ", "鉛筆と同じように持つ", "両手で持つ"], correctAnswer: "筆を垂直に立てて持つ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の神社でお参りするとき、どのようにしますか？", options: ["座って瞑想する", "鈴を鳴らし、お辞儀して手を叩いて祈る", "大きな声で叫ぶ", "花を手向ける"], correctAnswer: "鈴を鳴らし、お辞儀して手を叩いて祈る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "おにぎりはどのように作りますか？", options: ["ご飯を揚げる", "ご飯を手で三角形に握って海苔で巻く", "ご飯を焼く", "ご飯を炒める"], correctAnswer: "ご飯を手で三角形に握って海苔で巻く", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で感謝するとき、何と言いますか？", options: ["すみません", "ありがとうございます", "はじめまして", "お願いします"], correctAnswer: "ありがとうございます", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "箸でご飯を食べるとき、どのように持ちますか？", options: ["一本を動かし、もう一本は固定する", "両方の箸を同時に動かす", "スプーンのように使う", "ナイフのように使う"], correctAnswer: "一本を動かし、もう一本は固定する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "茶道でお茶を点てるとき、どのような道具を使いますか？", options: ["電子レンジ", "茶筅と茶碗", "コーヒーメーカー", "やかん"], correctAnswer: "茶筅と茶碗", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で年賀状を送るとき、いつ届くようにしますか？", options: ["12月25日", "1月1日（元旦）", "2月14日", "3月3日"], correctAnswer: "1月1日（元旦）", explanation: "")
        ]
    )

    // MARK: - 物語の記憶
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "物語の記憶",
        instructions: "短い物語を読んで、質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "何を買いましたか？", options: ["鮭", "マグロ", "鶏肉", "豆腐"], correctAnswer: "鮭", explanation: "", passage: "田中さんは月曜日に魚屋で鮭を買いました。火曜日に調理しました。"),
            ExerciseItem(id: UUID(), prompt: "何人で行きましたか？", options: ["3人", "4人", "5人", "6人"], correctAnswer: "6人", explanation: "山本さんを含めると6人", passage: "山本さんは春に桜の花見をしました。友人5人と公園で弁当を食べました。"),
            ExerciseItem(id: UUID(), prompt: "普段何を飲みますか？", options: ["コーヒー", "緑茶", "牛乳", "ジュース"], correctAnswer: "緑茶", explanation: "", passage: "鈴木さんは毎朝6時に起きて緑茶を飲みます。水曜日の朝、緑茶がなかったのでお湯だけ飲みました。"),
            ExerciseItem(id: UUID(), prompt: "料理本は何冊目ですか？", options: ["2冊目", "1冊目", "3冊目", "4冊目"], correctAnswer: "1冊目", explanation: "", passage: "中村さんは図書館で本を3冊借りました。1冊は料理本、1冊は歴史本、1冊は詩集です。"),
            ExerciseItem(id: UUID(), prompt: "診察が始まったのは何時ですか？", options: ["午後2時", "午後3時", "午後4時", "午後5時"], correctAnswer: "午後4時", explanation: "", passage: "渡辺さんは木曜日の午後3時に病院に行きました。待合室で1時間待ちました。"),
            ExerciseItem(id: UUID(), prompt: "孫は何歳ですか？", options: ["6歳", "7歳", "8歳", "9歳"], correctAnswer: "8歳", explanation: "", passage: "佐藤さんは孫と一緒に公園に行きました。孫は8歳の男の子です。"),
            ExerciseItem(id: UUID(), prompt: "どこに行きましたか？", options: ["お寺", "神社", "図書館", "公園"], correctAnswer: "神社", explanation: "", passage: "伊藤さんはお正月に着物を着て初詣に行きました。神社でお守りを買いました。"),
            ExerciseItem(id: UUID(), prompt: "何曜日に通っていますか？", options: ["金曜日", "土曜日", "日曜日", "月曜日"], correctAnswer: "土曜日", explanation: "", passage: "加藤さんは毎週土曜日に書道教室に通っています。先生に褒められました。"),
            ExerciseItem(id: UUID(), prompt: "合計いくつ買いましたか？", options: ["6個", "7個", "8個", "9個"], correctAnswer: "8個", explanation: "", passage: "吉田さんはスーパーでりんごを5個、みかんを3個買いました。"),
            ExerciseItem(id: UUID(), prompt: "娘は何歳になったか書いていませんが、プレゼントは何ですか？", options: ["おもちゃと本", "花束とケーキ", "着物と靴", "財布と時計"], correctAnswer: "花束とケーキ", explanation: "", passage: "岡田さんは娘の誕生日に花束とケーキを贈りました。"),
            ExerciseItem(id: UUID(), prompt: "映画が始まったのが午後2時なら、終わったのは何時ですか？", options: ["午後4時", "午後5時", "午後6時", "午後7時"], correctAnswer: "午後5時", explanation: "", passage: "小林さんは金曜日に映画館に行き、3時間の映画を見ました。"),
            ExerciseItem(id: UUID(), prompt: "東京で何泊しましたか？", options: ["1泊", "2泊", "3泊", "4泊"], correctAnswer: "2泊", explanation: "", passage: "斎藤さんは冬休みに大阪から東京まで新幹線で旅行しました。東京で2泊しました。帰りも新幹線でした。"),
            ExerciseItem(id: UUID(), prompt: "全部で何品作りましたか？", options: ["2品", "3品", "4品", "5品"], correctAnswer: "3品", explanation: "", passage: "松本さんは料理教室でみそ汁、煮魚、ご飯を作りました。"),
            ExerciseItem(id: UUID(), prompt: "何色のセーターですか？", options: ["青", "緑", "赤", "黄色"], correctAnswer: "赤", explanation: "", passage: "橋本さんは孫のためにセーターを編んでいます。赤い毛糸を使っています。"),
            ExerciseItem(id: UUID(), prompt: "バス停に着いたのは何時ですか？", options: ["8時10分", "8時15分", "8時20分", "8時30分"], correctAnswer: "8時15分", explanation: "", passage: "清水さんは朝8時に家を出て、徒歩15分でバス停に到着しました。")
        ]
    )

    // MARK: - 数列
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "数列",
        instructions: "次の数字の並びを続けてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 5, 10, 15, 20, ___", options: ["24", "25", "26", "30"], correctAnswer: "25", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 10, 20, 30, 40, ___", options: ["45", "48", "50", "55"], correctAnswer: "50", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 100, 90, 80, 70, ___", options: ["55", "60", "65", "75"], correctAnswer: "60", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 2, 4, 8, ___", options: ["10", "12", "16", "20"], correctAnswer: "16", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 50, 45, 40, 35, ___", options: ["28", "30", "32", "34"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 2, 5, 8, 11, ___", options: ["12", "13", "14", "15"], correctAnswer: "14", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 4, 9, 16, ___", options: ["20", "24", "25", "30"], correctAnswer: "25", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 10, 8, 6, 4, ___", options: ["0", "1", "2", "3"], correctAnswer: "2", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 7, 14, 21, 28, ___", options: ["30", "33", "35", "36"], correctAnswer: "35", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 1, 2, 3, 5, ___", options: ["6", "7", "8", "10"], correctAnswer: "8", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 20, 17, 14, 11, ___", options: ["6", "7", "8", "9"], correctAnswer: "8", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 4, 8, 16, 32, ___", options: ["48", "54", "60", "64"], correctAnswer: "64", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 6, 12, 18, 24, ___", options: ["28", "29", "30", "32"], correctAnswer: "30", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 100, 50, 25, ___", options: ["10", "12", "12.5", "15"], correctAnswer: "12.5", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 10, 100, 1000, ___", options: ["5000", "8000", "10000", "100000"], correctAnswer: "10000", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 9, 18, 27, 36, ___", options: ["42", "44", "45", "54"], correctAnswer: "45", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 15, 12, 9, 6, ___", options: ["1", "2", "3", "4"], correctAnswer: "3", explanation: "")
        ]
    )

    // MARK: - 原因と結果
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "原因と結果",
        instructions: "原因と結果の関係を答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "雨が降りました。その結果は？", options: ["地面が乾いた", "地面が濡れた", "気温が上がった", "日差しが強くなった"], correctAnswer: "地面が濡れた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "田中さんは毎日8時間よく眠りました。その結果は？", options: ["疲れてしまった", "体調が良くなった", "食欲がなくなった", "体重が増えた"], correctAnswer: "体調が良くなった", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "コップを床に落としました。その結果は？", options: ["コップが飛んだ", "コップが割れた", "コップが大きくなった", "コップが暖かくなった"], correctAnswer: "コップが割れた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "植物に水をやらなかったら？", options: ["よく育つ", "枯れてしまう", "大きくなる", "花が咲く"], correctAnswer: "枯れてしまう", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "山本さんは長時間歩きました。その結果は？", options: ["体が冷えた", "足が疲れた", "目が良くなった", "食欲がなくなった"], correctAnswer: "足が疲れた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "ストーブをつけたままにして眠りました。その結果は？", options: ["部屋が冷えた", "電気代が節約できた", "部屋が暑くなり過ぎた", "部屋が湿った"], correctAnswer: "部屋が暑くなり過ぎた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "冬に薄着で外に出ました。その結果は？", options: ["元気になった", "風邪をひいた", "日焼けした", "食欲が増した"], correctAnswer: "風邪をひいた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "薬を飲み忘れました。その結果は？", options: ["体調が良くなった", "病気が悪化した", "眠れなくなった", "食欲が増した"], correctAnswer: "病気が悪化した", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "毎日練習したら？", options: ["技術が下がった", "技術が上がった", "練習が嫌いになった", "何も変わらない"], correctAnswer: "技術が上がった", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お金を使いすぎたら？", options: ["お金が増えた", "お金が少なくなった", "生活が豊かになった", "貯金が増えた"], correctAnswer: "お金が少なくなった", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "運動不足が続いたら？", options: ["体力がついた", "体重が減った", "体の調子が悪くなりやすい", "筋肉が増えた"], correctAnswer: "体の調子が悪くなりやすい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "部屋を掃除したら？", options: ["部屋が汚れた", "部屋が清潔になった", "部屋が狭くなった", "部屋が暗くなった"], correctAnswer: "部屋が清潔になった", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夜遅くまで起きていたら？", options: ["朝早く起きられた", "翌日眠くなった", "体力が増した", "目が良くなった"], correctAnswer: "翌日眠くなった", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "鍋を火にかけて放っておいたら？", options: ["料理がおいしくなった", "料理が冷えた", "お湯が蒸発して焦げた", "料理が増えた"], correctAnswer: "お湯が蒸発して焦げた", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "友達に誕生日を祝ってもらったら？", options: ["悲しくなった", "うれしくなった", "怒った", "眠くなった"], correctAnswer: "うれしくなった", explanation: "")
        ]
    )

    // MARK: - 感情認識
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "感情認識",
        instructions: "この場面でどんな気持ちになりますか？",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "誕生日プレゼントをもらったとき、どんな気持ちになりますか？", options: ["悲しい", "うれしい", "怒る", "退屈"], correctAnswer: "うれしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大切な物をなくしてしまったとき、どんな気持ちになりますか？", options: ["うれしい", "安心する", "悲しい", "楽しい"], correctAnswer: "悲しい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大きな犬に突然吠えられたとき、どんな気持ちになりますか？", options: ["楽しい", "怖い", "怒る", "落ち着く"], correctAnswer: "怖い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "長い旅の後、自宅に帰ってきたとき、どんな気持ちになりますか？", options: ["悲しい", "ほっとする", "怖い", "怒る"], correctAnswer: "ほっとする", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "楽しみにしていたイベントがキャンセルになったとき、どんな気持ちになりますか？", options: ["うれしい", "がっかり", "元気になる", "楽しい"], correctAnswer: "がっかり", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "久しぶりに古い友人に会ったとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "なつかしい・うれしい", "退屈"], correctAnswer: "なつかしい・うれしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "誰かが不公平なことをしたとき、どんな気持ちになりますか？", options: ["楽しい", "怒る", "ほっとする", "うれしい"], correctAnswer: "怒る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "試験に合格したとき、どんな気持ちになりますか？", options: ["残念", "悲しい", "うれしい・誇らしい", "怖い"], correctAnswer: "うれしい・誇らしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "初めての場所に一人で行くとき、どんな気持ちになりますか？", options: ["楽しい・不安", "怒る", "ほっとする", "悲しい"], correctAnswer: "楽しい・不安", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "好きな曲を聴いたとき、どんな気持ちになりますか？", options: ["悲しい", "怖い", "楽しい・気分が良くなる", "怒る"], correctAnswer: "楽しい・気分が良くなる", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "家族が病気になったと聞いたとき、どんな気持ちになりますか？", options: ["楽しい", "心配", "ほっとする", "退屈"], correctAnswer: "心配", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "長い間会っていなかった孫に会えたとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "うれしい", "怖い"], correctAnswer: "うれしい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "重要な発表を前にしているとき、どんな気持ちになりますか？", options: ["落ち着く", "緊張する", "楽しい", "ほっとする"], correctAnswer: "緊張する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "病院から良い結果が出たと聞いたとき、どんな気持ちになりますか？", options: ["悲しい", "心配", "安心する", "怒る"], correctAnswer: "安心する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "花見で桜の木の下に座っておにぎりを食べているとき、どんな気持ちになりますか？", options: ["悲しい", "退屈", "怒る", "穏やかで幸せ"], correctAnswer: "穏やかで幸せ", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "バスに乗り遅れたとき、どんな気持ちになりますか？", options: ["楽しい", "うれしい", "焦る・困る", "ほっとする"], correctAnswer: "焦る・困る", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "親切な人が重い荷物を持つのを手伝ってくれたとき、どんな気持ちになりますか？", options: ["怒る", "感謝する", "悲しい", "怖い"], correctAnswer: "感謝する", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "料理を頑張って作ったが、うまくできなかったとき、どんな気持ちになりますか？", options: ["誇らしい", "がっかり・悔しい", "ほっとする", "楽しい"], correctAnswer: "がっかり・悔しい", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "夜に不審な物音を聞いたとき、どんな気持ちになりますか？", options: ["楽しい", "うれしい", "不安・怖い", "眠くなる"], correctAnswer: "不安・怖い", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "長年の夢が叶ったとき、どんな気持ちになりますか？", options: ["悲しい", "退屈", "怒る", "うれしい・満足"], correctAnswer: "うれしい・満足", explanation: "")
        ]
    )

    // MARK: - おかしいのはどれ
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "おかしいのはどれ",
        instructions: "この状況でおかしいことは何ですか？",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "山本さんは真夏の日に厚いコートを着て外に出ました。何がおかしいですか？", options: ["季節に合わない服装", "外に出たこと", "山本さんの名前", "何もおかしくない"], correctAnswer: "季節に合わない服装", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "田中さんは朝食にご飯と味噌汁を食べ、牛乳を飲みました。次に歯を磨いてから就寝しました。何がおかしいですか？", options: ["食事の内容", "朝食後に寝ること", "牛乳を飲んだこと", "何もおかしくない"], correctAnswer: "朝食後に寝ること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "お正月に鈴木さんはケーキを切り、クリスマスソングを歌いました。何がおかしいですか？", options: ["ケーキを食べること", "お正月にクリスマスの習慣をすること", "鈴木さんの名前", "何もおかしくない"], correctAnswer: "お正月にクリスマスの習慣をすること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "中村さんは図書館に行って本を読まずに大声で電話しました。何がおかしいですか？", options: ["図書館に行ったこと", "図書館で大きな声を出すこと", "電話をかけたこと", "何もおかしくない"], correctAnswer: "図書館で大きな声を出すこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "渡辺さんは夕食のご飯を茶碗に盛り、スープをコップで飲みました。何がおかしいですか？", options: ["ご飯を食べたこと", "スープをコップで飲むこと", "夕食を食べたこと", "何もおかしくない"], correctAnswer: "スープをコップで飲むこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "佐藤さんは病院で「お薬は1日3回、毎食後に」という指示を受けました。1日2回だけ飲みました。何がおかしいですか？", options: ["薬を飲んだこと", "医者に行ったこと", "指示の回数と違う回数で飲んだこと", "何もおかしくない"], correctAnswer: "指示の回数と違う回数で飲んだこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "伊藤さんは横断歩道で信号が赤のまま渡りました。何がおかしいですか？", options: ["横断歩道を使ったこと", "信号無視をしたこと", "歩いたこと", "何もおかしくない"], correctAnswer: "信号無視をしたこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "加藤さんは手紙を書いて、切手を貼らずにポストに投函しました。何がおかしいですか？", options: ["手紙を書いたこと", "ポストに投函したこと", "切手を貼らなかったこと", "何もおかしくない"], correctAnswer: "切手を貼らなかったこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "吉田さんは冷たいお蕎麦を鉄板で焼いて食べました。何がおかしいですか？", options: ["お蕎麦を食べたこと", "冷たいお蕎麦を鉄板で焼くこと", "外で食べたこと", "何もおかしくない"], correctAnswer: "冷たいお蕎麦を鉄板で焼くこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "小林さんはお風呂に入る前に、服を着たまま湯船に入りました。何がおかしいですか？", options: ["お風呂に入ったこと", "服を着たまま湯船に入ること", "湯船に浸かったこと", "何もおかしくない"], correctAnswer: "服を着たまま湯船に入ること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "斎藤さんは書道の授業で、筆の代わりに包丁で字を書こうとしました。何がおかしいですか？", options: ["書道をしたこと", "包丁で字を書こうとしたこと", "授業に参加したこと", "何もおかしくない"], correctAnswer: "包丁で字を書こうとしたこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "松本さんは歯磨き粉の代わりに台所用洗剤で歯を磨きました。何がおかしいですか？", options: ["歯を磨いたこと", "台所用洗剤を口に入れたこと", "朝に歯を磨いたこと", "何もおかしくない"], correctAnswer: "台所用洗剤を口に入れたこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "橋本さんは神社でお祈りをするとき、大声で怒鳴りながら手を叩きました。何がおかしいですか？", options: ["神社に行ったこと", "お祈りをしたこと", "怒鳴りながら祈ること", "何もおかしくない"], correctAnswer: "怒鳴りながら祈ること", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "清水さんは熱いお茶を冷蔵庫に入れたまま飲もうとしました。何がおかしいですか？", options: ["お茶を飲もうとしたこと", "お茶を飲む前に冷やすことは普通だが、熱いと明記されているのに急いで飲もうとしたこと", "冷蔵庫を使ったこと", "何もおかしくない"], correctAnswer: "お茶を飲む前に冷やすことは普通だが、熱いと明記されているのに急いで飲もうとしたこと", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "岡田さんは病院でアレルギーがある薬だとわかっていながら飲みました。何がおかしいですか？", options: ["薬を飲んだこと", "病院に行ったこと", "アレルギーのある薬を飲んだこと", "何もおかしくない"], correctAnswer: "アレルギーのある薬を飲んだこと", explanation: "")
        ]
    )

    // MARK: - 一般常識：歴史
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "一般常識：歴史",
        instructions: "歴史に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の強制収容令（大統領令9066号）に署名したアメリカ大統領は誰ですか？", options: ["ハリー・S・トルーマン", "フランクリン・D・ルーズベルト", "ドワイト・D・アイゼンハワー", "ハーバート・フーバー"], correctAnswer: "フランクリン・D・ルーズベルト", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦で活躍した日系アメリカ人部隊は何連隊ですか？", options: ["第100大隊・第442歩兵連隊", "第101空挺師団", "第502歩兵連隊", "第503空挺連隊"], correctAnswer: "第100大隊・第442歩兵連隊", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本が近代化を進めた明治維新は何年に始まりましたか？", options: ["1848年", "1868年", "1905年", "1941年"], correctAnswer: "1868年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "広島に原子爆弾が投下されたのはいつですか？", options: ["1945年8月6日", "1945年8月9日", "1944年6月6日", "1941年12月7日"], correctAnswer: "1945年8月6日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人の公民権回復（リドレス）法案が成立したのはいつですか？", options: ["1968年", "1978年", "1988年", "1998年"], correctAnswer: "1988年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "江戸幕府を開いたのは誰ですか？", options: ["織田信長", "豊臣秀吉", "徳川家康", "上杉謙信"], correctAnswer: "徳川家康", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本が国際連盟を脱退したのはいつですか？", options: ["1929年", "1933年", "1937年", "1941年"], correctAnswer: "1933年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "天皇制が象徴天皇制に移行したのはいつですか？", options: ["1935年", "1945年", "1950年", "1952年"], correctAnswer: "1945年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "戦後の日本が国際連合に加盟したのはいつですか？", options: ["1945年", "1952年", "1956年", "1964年"], correctAnswer: "1956年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "サンフランシスコ平和条約が調印されたのはいつですか？", options: ["1947年", "1951年", "1955年", "1960年"], correctAnswer: "1951年", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で「二世」とはどういう意味ですか？", options: ["日本生まれの人", "アメリカで生まれた日系人の子", "三世代目の日系人", "日本から移住してきた人"], correctAnswer: "アメリカで生まれた日系人の子", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "パールハーバー攻撃はいつ行われましたか？", options: ["1939年9月1日", "1941年12月7日", "1944年6月6日", "1945年8月6日"], correctAnswer: "1941年12月7日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "マンザナー強制収容所はどの州にありましたか？", options: ["テキサス州", "オレゴン州", "カリフォルニア州", "アリゾナ州"], correctAnswer: "カリフォルニア州", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本国憲法が公布されたのはいつですか？", options: ["1945年8月", "1946年11月", "1950年6月", "1952年4月"], correctAnswer: "1946年11月", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の最後の将軍（徳川慶喜）が政権を返上したのはいつですか？", options: ["1600年", "1853年", "1867年", "1905年"], correctAnswer: "1867年", explanation: "")
        ]
    )

    // MARK: - 一般常識：地理
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "一般常識：地理",
        instructions: "地理に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の首都はどこですか？", options: ["大阪", "京都", "東京", "福岡"], correctAnswer: "東京", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で最も高い山は何ですか？", options: ["御嶽山", "立山", "北岳", "富士山"], correctAnswer: "富士山", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本を囲む海はどれですか？", options: ["地中海と大西洋", "太平洋と日本海", "インド洋と紅海", "アラビア海と黒海"], correctAnswer: "太平洋と日本海", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "関西にある都市はどれですか？", options: ["仙台", "札幌", "大阪", "金沢"], correctAnswer: "大阪", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "カリフォルニア州の州都はどこですか？", options: ["ロサンゼルス", "サンフランシスコ", "サクラメント", "サンディエゴ"], correctAnswer: "サクラメント", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の最西端にある都道府県はどこですか？", options: ["沖縄県", "鹿児島県", "長崎県", "山口県"], correctAnswer: "沖縄県", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本最大の湖は何ですか？", options: ["諏訪湖", "猪苗代湖", "琵琶湖", "洞爺湖"], correctAnswer: "琵琶湖", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "東京と大阪を結ぶ新幹線は何ですか？", options: ["北陸新幹線", "東北新幹線", "東海道新幹線", "山陽新幹線"], correctAnswer: "東海道新幹線", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本と朝鮮半島の間にある海峡は何ですか？", options: ["津軽海峡", "関門海峡", "対馬海峡", "宗谷海峡"], correctAnswer: "対馬海峡", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "北海道の県庁所在地はどこですか？", options: ["函館", "旭川", "小樽", "札幌"], correctAnswer: "札幌", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "サンフランシスコとロサンゼルスはどの州にありますか？", options: ["オレゴン州", "ネバダ州", "カリフォルニア州", "アリゾナ州"], correctAnswer: "カリフォルニア州", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で最長の川はどれですか？", options: ["利根川", "信濃川", "多摩川", "木曽川"], correctAnswer: "信濃川", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "大阪の有名な城は何ですか？", options: ["名古屋城", "大阪城", "姫路城", "松本城"], correctAnswer: "大阪城", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本が接する国はどこですか？", options: ["中国とロシアと韓国（海を隔てて）", "インドと中国", "フランスとドイツ", "カナダとメキシコ"], correctAnswer: "中国とロシアと韓国（海を隔てて）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の面積は約何平方キロメートルですか？", options: ["9万7千平方キロ", "37万8千平方キロ", "150万平方キロ", "5万平方キロ"], correctAnswer: "37万8千平方キロ", explanation: "")
        ]
    )

    // MARK: - 一般常識：文化
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "一般常識：文化",
        instructions: "日本の文化に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の伝統的なお正月の挨拶は何ですか？", options: ["明けましておめでとうございます", "こんにちは", "おやすみなさい", "いただきます"], correctAnswer: "明けましておめでとうございます", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な相撲で、土俵の外に出たら何と言いますか？", options: ["パーフェクト", "負け", "引き分け", "技あり"], correctAnswer: "負け", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "食事を始める前に言う日本の言葉は何ですか？", options: ["ごちそうさまでした", "いただきます", "おやすみなさい", "ありがとう"], correctAnswer: "いただきます", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "食事の後に言う日本の言葉は何ですか？", options: ["いただきます", "ごちそうさまでした", "おはようございます", "こんばんは"], correctAnswer: "ごちそうさまでした", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統芸能で人形劇は何ですか？", options: ["能", "狂言", "文楽（人形浄瑠璃）", "歌舞伎"], correctAnswer: "文楽（人形浄瑠璃）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本のお盆に踊られる伝統的な踊りは何ですか？", options: ["フラ", "ハカ", "盆踊り", "ソーラン節"], correctAnswer: "盆踊り", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で年の初めの書初めはいつ行いますか？", options: ["12月31日", "1月2日", "3月3日", "5月5日"], correctAnswer: "1月2日", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の女の子の節句（ひな祭り）に飾るのは何ですか？", options: ["こいのぼり", "ひな人形", "門松", "七夕飾り"], correctAnswer: "ひな人形", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "こどもの日に飾る日本の伝統的な飾りは何ですか？", options: ["桜の枝", "こいのぼり", "柏餅だけ", "クリスマスツリー"], correctAnswer: "こいのぼり", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "初詣で神社に行く時期はいつですか？", options: ["盆の時期", "年末年始", "春分の日", "七夕の日"], correctAnswer: "年末年始", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な礼儀で、お辞儀の角度が深いほど何を意味しますか？", options: ["急いでいること", "より深い敬意や謝罪", "ただの習慣", "首が痛いこと"], correctAnswer: "より深い敬意や謝罪", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本語で家族のことを他人に話すとき、どちらを使いますか？", options: ["敬語（尊称）", "謙譲語（へりくだった表現）", "どちらでも同じ", "英語を使う"], correctAnswer: "謙譲語（へりくだった表現）", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な正月遊びで、羽つきは何に似ていますか？", options: ["テニス", "バドミントン", "卓球", "バレーボール"], correctAnswer: "バドミントン", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本の漫画（まんが）の読み方は？", options: ["左から右", "右から左", "上から下", "どちらでも同じ"], correctAnswer: "右から左", explanation: ""),
            ExerciseItem(id: UUID(), prompt: "日本で慶弔（お祝いやお悔やみ）の際に渡すお金のことを何と言いますか？", options: ["おこづかい", "ご祝儀・香典", "報酬", "お年玉"], correctAnswer: "ご祝儀・香典", explanation: "")
        ]
    )
}
