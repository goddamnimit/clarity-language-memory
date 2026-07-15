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
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "東京は日本の首都ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "日本の政府機関や皇居があり、政治や経済の中心地として機能している東京は、日本の事実上の首都とされています。"),
            ExerciseItem(id: UUID(), prompt: "富士山は海の中にありますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "富士山は山梨県と静岡県にまたがる陸上にある日本最高峰の山であり、海の中にはありません。"),
            ExerciseItem(id: UUID(), prompt: "日本語には漢字が使われますか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "日本語の表記体系は、ひらがな、カタカナに加えて、中国から伝わった漢字を使用することが一般的です。"),
            ExerciseItem(id: UUID(), prompt: "桜の花は青い色ですか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "桜の花は一般的に薄いピンク色や白色をしており、青色ではありません。"),
            ExerciseItem(id: UUID(), prompt: "日本は四方を海に囲まれた島国ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "日本はユーラシア大陸の東に位置し、太平洋、日本海、東シナ海、オホーツク海という海に四方を囲まれた島国です。"),
            ExerciseItem(id: UUID(), prompt: "お正月は夏に祝われますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "お正月は1月1日の新年を祝う行事であり、日本において1月は冬の季節にあたるため、夏ではありません。"),
            ExerciseItem(id: UUID(), prompt: "寿司は日本の伝統的な料理ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "寿司は酢飯と主に魚介類などの具材を組み合わせた、世界的に有名な日本の伝統的で代表的な料理です。"),
            ExerciseItem(id: UUID(), prompt: "大阪は日本の北部にありますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "大阪は日本の本州の中西部、近畿地方（関西地方）に位置しており、日本の北部（北海道や東北地方など）にはありません。"),
            ExerciseItem(id: UUID(), prompt: "書道は筆で文字を書く芸術ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "書道は毛筆と墨を用いて、漢字や仮名などの文字を美しく表現する東アジアの伝統的な芸術です。"),
            ExerciseItem(id: UUID(), prompt: "日本では車は右側を走りますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "日本の道路交通法により、車は左側通行と定められているため、右側は走りません。"),
            ExerciseItem(id: UUID(), prompt: "七夕は夏の行事ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "七夕（たなばた）は一般的に7月7日（地域によっては8月）に行われる行事であり、これは日本の夏の季節にあたります。"),
            ExerciseItem(id: UUID(), prompt: "相撲は日本の伝統的なスポーツですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "相撲は土俵の上で力士が組み合って勝敗を競う、古くから神事とも結びついている日本の伝統的な国技（スポーツ）です。"),
            ExerciseItem(id: UUID(), prompt: "お盆は冬の行事ですか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "お盆は先祖の霊を供養する日本の行事で、一般的に8月（または7月）中旬に行われるため、冬ではなく夏の行事です。"),
            ExerciseItem(id: UUID(), prompt: "日系二世とはアメリカで生まれた日系人の子どもですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "日系二世とは、日本からアメリカなどの海外へ移住した一世（移民の第一世代）の子供として、その国で生まれ育った世代を指す言葉です。"),
            ExerciseItem(id: UUID(), prompt: "日本の国旗は緑と白ですか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "日本の国旗（日章旗）は、白地に赤の円（太陽）が描かれたデザインであり、緑と白ではありません。"),
            ExerciseItem(id: UUID(), prompt: "茶道では抹茶を使いますか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "日本の伝統的な文化である茶道では、粉末状の緑茶である抹茶を使用し、それをお湯で点てて客に振る舞います。"),
            ExerciseItem(id: UUID(), prompt: "ロサンゼルスには日本人街がありますか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "ロサンゼルスには「リトルトーキョー」と呼ばれる、アメリカ最大級の歴史ある日本人街（ジャパンタウン）が存在します。"),
            ExerciseItem(id: UUID(), prompt: "日本語の俳句は四行で作りますか？", options: ["Yes", "No"], correctAnswer: "No", explanation: "俳句は一般的に五・七・五の三句（三つの部分）で構成される短い定型詩であり、四行ではありません。"),
            ExerciseItem(id: UUID(), prompt: "花火大会は夏に行われることが多いですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "日本の花火大会は、夏の風物詩としてお祭りやお盆の時期に合わせて、主に7月から8月の夏の期間に集中して開催されます。"),
            ExerciseItem(id: UUID(), prompt: "ひらがなとカタカナはどちらも日本語の文字ですか？", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "ひらがなもカタカナも、漢字を基にして日本で独自に作られた音節文字であり、日本語を表記するための基本的な文字です。")
        ]
    )

    // MARK: - 何についての質問
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "何についての質問",
        instructions: "質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "お正月に食べる伝統的な日本料理は何ですか？", options: ["おせち料理", "ケーキ", "ピザ", "パスタ"], correctAnswer: "おせち料理", explanation: "新年を祝うために、縁起の良い意味が込められた様々な食材を重箱に詰めた伝統的な料理を「おせち料理」と呼びます。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な武道は何ですか？", options: ["フットボール", "柔道", "バスケットボール", "野球"], correctAnswer: "柔道", explanation: "日本古来の柔術を基盤に、嘉納治五郎が心身の鍛錬と教育を目的に体系化したものが、世界的なスポーツにもなっている「柔道」です。（剣道や空手なども武道です）"),
            ExerciseItem(id: UUID(), prompt: "日本の桜の季節に行う行事は何ですか？", options: ["雪まつり", "花見", "盆踊り", "七夕"], correctAnswer: "花見", explanation: "春に桜の花が咲く季節に、桜の木の下に集まって飲食をしながらその美しさを楽しむ日本の風習を「花見」と言います。"),
            ExerciseItem(id: UUID(), prompt: "弁当箱に入れる日本の主食は何ですか？", options: ["パン", "麺", "ご飯", "クラッカー"], correctAnswer: "ご飯", explanation: "日本の伝統的な食文化において、食事の中心となる炭水化物は米を炊いた「ご飯」であり、弁当箱の大部分を占める主食です。"),
            ExerciseItem(id: UUID(), prompt: "日本語で書くときに使う道具は何ですか？", options: ["ナイフ", "筆", "ブラシ", "チョーク"], correctAnswer: "筆", explanation: "現在では鉛筆やペンも使われますが、書道など日本の伝統的な文字の書き方において、墨をつけて文字を書く道具は「筆（毛筆）」です。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な衣服は何ですか？", options: ["チョゴリ", "サリー", "着物", "ロンジー"], correctAnswer: "着物", explanation: "日本に古くから伝わる伝統的な衣服（和服）の総称を「着物」と呼び、現在でもお正月や結婚式などの特別な行事で着用されます。"),
            ExerciseItem(id: UUID(), prompt: "日本の温泉は何と呼ばれますか？", options: ["サウナ", "スパ", "お風呂", "温泉"], correctAnswer: "温泉", explanation: "地中から湧き出す温水や水蒸気、またはそれを利用した入浴施設や保養地を、日本語ではそのまま「温泉（おんせん）」と呼びます。"),
            ExerciseItem(id: UUID(), prompt: "大阪名物のおやつは何ですか？", options: ["ケーキ", "たこ焼き", "アイスクリーム", "クレープ"], correctAnswer: "たこ焼き", explanation: "小麦粉の生地にタコやネギなどを入れて球状に焼き上げ、ソースやマヨネーズをかけて食べる「たこ焼き」は、大阪を代表する名物料理（おやつ）です。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統芸能で、白い顔をした俳優が演じるものは何ですか？", options: ["歌舞伎", "映画", "サーカス", "オペラ"], correctAnswer: "歌舞伎", explanation: "江戸時代から続く演劇で、独特の化粧（白塗りや隈取）を施した俳優（全員男性）が、華やかな衣装で演技や舞踊を行う伝統芸能を「歌舞伎」と言います。"),
            ExerciseItem(id: UUID(), prompt: "日本の国花は何ですか？", options: ["梅", "菊", "桜", "百合"], correctAnswer: "桜", explanation: "法律で定められた国花はありませんが、日本の歴史や文化において古くから広く親しまれ、日本の象徴として認識されている代表的な花が「桜」（および菊）です。"),
            ExerciseItem(id: UUID(), prompt: "お茶を点てる日本の伝統的な儀式は何ですか？", options: ["茶道", "書道", "華道", "武道"], correctAnswer: "茶道", explanation: "単にお茶を飲むだけでなく、お湯を沸かし、抹茶を点てて客に振る舞うという一連の作法を通じて、精神修養や美意識を追求する伝統文化が「茶道」です。"),
            ExerciseItem(id: UUID(), prompt: "日本のそば料理は何の粉で作りますか？", options: ["小麦粉", "米粉", "そば粉", "とうもろこし粉"], correctAnswer: "そば粉", explanation: "日本の麺料理である「蕎麦（そば）」は、穀物であるソバの実を挽いて粉にした「そば粉」（および繋ぎの小麦粉など）を主原料として作られます。"),
            ExerciseItem(id: UUID(), prompt: "神社でお参りするときに使うものは何ですか？", options: ["お香", "鈴とお賽銭", "ロウソク", "お花"], correctAnswer: "鈴とお賽銭", explanation: "神道における一般的な参拝作法では、神様への感謝や祈願の印として「お賽銭」を箱に入れ、神様を呼ぶために「鈴」を鳴らしてから拝礼をします。"),
            ExerciseItem(id: UUID(), prompt: "日本語で数字の5を何と言いますか？", options: ["し", "ご", "ろく", "しち"], correctAnswer: "ご", explanation: "日本語の数の数え方において、数字の「5」の音読み（漢語の読み方）は「ご（Go）」となります。"),
            ExerciseItem(id: UUID(), prompt: "日本語でありがとうと感謝するときの言葉は何ですか？", options: ["さようなら", "こんにちは", "ありがとうございます", "すみません"], correctAnswer: "ありがとうございます", explanation: "他者から受けた親切や好意に対して、感謝の意を丁寧に伝える日本語の一般的な表現が「ありがとうございます」です。"),
            ExerciseItem(id: UUID(), prompt: "日本の土俵で行う競技は何ですか？", options: ["空手", "相撲", "剣道", "弓道"], correctAnswer: "相撲", explanation: "砂や土を盛って作られた「土俵」という円形の境界線の中で、二人の力士が組み合い、相手を倒すか土俵の外に出すことで勝敗を決める競技が「相撲」です。"),
            ExerciseItem(id: UUID(), prompt: "日本でご飯を食べるときに使う道具は何ですか？", options: ["フォークとナイフ", "スプーンとフォーク", "お箸", "手"], correctAnswer: "お箸", explanation: "日本の食文化において、食べ物を挟んで口に運ぶために主に使用される二本一組の棒状の道具が「お箸（箸）」です。"),
            ExerciseItem(id: UUID(), prompt: "日本の俳句は何音節で構成されますか？", options: ["五七五（17音）", "七五七（19音）", "五五五（15音）", "七七七（21音）"], correctAnswer: "五七五（17音）", explanation: "俳句は世界で最も短い詩形の一つであり、日本の伝統的な音の単位である「拍（音）」を用いて、五音・七音・五音の合計17音で構成されます。"),
            ExerciseItem(id: UUID(), prompt: "お祭りで子どもたちが楽しむ金魚すくいは何を使いますか？", options: ["バケツ", "ポイ（紙製の道具）", "網", "竿"], correctAnswer: "ポイ（紙製の道具）", explanation: "縁日の屋台などで行われる金魚すくいでは、プラスチックの輪に薄い和紙を張った「ポイ」という道具を使って、水中の金魚をすくい上げます。"),
            ExerciseItem(id: UUID(), prompt: "年末に大掃除をするのは何月ですか？", options: ["六月", "九月", "十二月", "三月"], correctAnswer: "十二月", explanation: "新年を清らかな状態で迎えるために、1年の汚れを落とす「大掃除」は、一年の最後の月である12月（年末）に行うのが日本の伝統的な習慣です。")
        ]
    )

    // MARK: - どこについての質問
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "どこについての質問",
        instructions: "場所に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "富士山はどこにありますか？", options: ["沖縄県", "静岡県と山梨県の境", "北海道", "大阪府"], correctAnswer: "静岡県と山梨県の境", explanation: "富士山は静岡県と山梨県にまたがって位置している日本最高峰の山であるため、この回答が正解となります。"),
            ExerciseItem(id: UUID(), prompt: "日本の古都として知られ、多くの寺社仏閣がある都市はどこですか？", options: ["東京", "大阪", "京都", "福岡"], correctAnswer: "京都", explanation: "京都はかつて日本の首都（平安京）であり、多くの歴史的な寺社仏閣が残されている代表的な古都であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系人街のリトル・トーキョーはどこにありますか？", options: ["サンフランシスコ", "ロサンゼルス", "ニューヨーク", "シアトル"], correctAnswer: "ロサンゼルス", explanation: "リトル・トーキョーはアメリカ合衆国カリフォルニア州ロサンゼルスのダウンタウンにある、アメリカ最大の日系人街であるためです。"),
            ExerciseItem(id: UUID(), prompt: "たこ焼きが有名な都市はどこですか？", options: ["東京", "名古屋", "大阪", "札幌"], correctAnswer: "大阪", explanation: "大阪は「粉もん」文化が根付いており、たこ焼きはその代表的な名物料理として全国的に有名であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の国会（国会議事堂）はどこにありますか？", options: ["大阪", "京都", "東京", "名古屋"], correctAnswer: "東京", explanation: "日本の政治の中枢である国会議事堂は、首都である東京都千代田区永田町に位置しているためです。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人が多く住む北カリフォルニアの都市はどこですか？", options: ["バーバンク", "サンノゼ", "ベーカーズフィールド", "フレズノ"], correctAnswer: "サンノゼ", explanation: "サンノゼには「ジャパンタウン（日本町）」があり、歴史的に日系アメリカ人が多く住む北カリフォルニアの中心都市の一つであるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本で最も北に位置する都道府県はどこですか？", options: ["青森県", "秋田県", "北海道", "岩手県"], correctAnswer: "北海道", explanation: "日本列島の最北端に位置する島であり、日本の都道府県の中で最も北にあるのが北海道であるためです。"),
            ExerciseItem(id: UUID(), prompt: "原爆の平和記念公園があるのはどこですか？", options: ["東京", "長崎", "広島", "大阪"], correctAnswer: "広島", explanation: "1945年に世界で初めて原子爆弾が投下された広島市に、世界の恒久平和を願って平和記念公園が建設されたためです。"),
            ExerciseItem(id: UUID(), prompt: "日本最大の湖はどこにありますか？", options: ["山梨県", "滋賀県", "長野県", "岐阜県"], correctAnswer: "滋賀県", explanation: "日本で最も面積が広い湖である琵琶湖は、滋賀県に位置しているためです。"),
            ExerciseItem(id: UUID(), prompt: "歌舞伎が生まれた国はどこですか？", options: ["中国", "韓国", "日本", "インド"], correctAnswer: "日本", explanation: "歌舞伎は江戸時代に日本で独自に発展した伝統的な演劇（伝統芸能）であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語が公式に使われている国はどこですか？", options: ["日本", "中国", "韓国", "台湾"], correctAnswer: "日本", explanation: "日本語を事実上の公用語として日常的および公的に使用している主要な国は日本のみであるためです。"),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦中に日系アメリカ人が収容された有名な収容所はどこにありましたか？", options: ["テキサス州", "カリフォルニア州とその他の西海岸", "ニューヨーク州", "フロリダ州"], correctAnswer: "カリフォルニア州とその他の西海岸", explanation: "第二次世界大戦中、大統領令により西海岸（特にカリフォルニア州など）に住む多くの日系アメリカ人が内陸部の強制収容所に送られたという歴史的事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "東京スカイツリーはどこにありますか？", options: ["大阪", "東京", "京都", "横浜"], correctAnswer: "東京", explanation: "東京スカイツリーは東京都墨田区に建設された電波塔であり、東京を代表する観光名所であるためです。"),
            ExerciseItem(id: UUID(), prompt: "桜島という火山はどこにありますか？", options: ["北海道", "鹿児島県", "沖縄県", "長野県"], correctAnswer: "鹿児島県", explanation: "桜島は九州南部の鹿児島湾（錦江湾）にある活火山で、鹿児島県のシンボル的存在であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語学校で日本語を学べる場所はどこですか？", options: ["図書館だけ", "学校・大学・語学学校", "テレビだけ", "神社だけ"], correctAnswer: "学校・大学・語学学校", explanation: "日本語を専門的に教える教育機関として、小中高などの学校、大学、または専門の語学学校（日本語学校）が該当するためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の南西に位置し、独自の文化を持つ県はどこですか？", options: ["北海道", "沖縄", "岩手", "新潟"], correctAnswer: "沖縄", explanation: "沖縄県は日本列島の南西端に位置し、かつて琉球王国であった歴史から独自の文化や伝統を持っているためです。"),
            ExerciseItem(id: UUID(), prompt: "世界で最も忙しい交差点の一つとして知られる渋谷スクランブル交差点はどこにありますか？", options: ["大阪", "京都", "東京", "名古屋"], correctAnswer: "東京", explanation: "渋谷スクランブル交差点は東京都渋谷区にあり、一度に大勢の人が行き交う東京の象徴的な光景として世界的に有名であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本のお箸の文化はどこで生まれましたか？", options: ["日本", "中国", "韓国", "ベトナム"], correctAnswer: "中国", explanation: "箸を使用する食事の文化は古代中国で発祥し、その後日本など東アジア各地に伝わった歴史的背景があるためです。"),
            ExerciseItem(id: UUID(), prompt: "雪まつりで有名な日本の都市はどこですか？", options: ["東京", "大阪", "札幌", "福岡"], correctAnswer: "札幌", explanation: "毎年2月に北海道札幌市で開催される「さっぽろ雪まつり」は、大規模な雪像や氷像が並ぶことで世界的にも有名なイベントであるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本で地震が多い理由はどこにありますか？", options: ["砂漠が多いから", "プレートの境界に位置するから", "海岸線が長いから", "山が多いから"], correctAnswer: "プレートの境界に位置するから", explanation: "日本列島は複数の地殻プレート（ユーラシア、太平洋、フィリピン海、北米など）がぶつかり合う境界の上に位置しており、地殻変動が活発であるためです。")
        ]
    )

    // MARK: - 誰についての質問
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "誰についての質問",
        instructions: "人物に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "1964年の東京オリンピックで有名になった日本の体操選手は誰ですか？", options: ["田中健二", "遠藤幸雄", "山本太郎", "鈴木一郎"], correctAnswer: "遠藤幸雄", explanation: "遠藤幸雄は1964年の東京オリンピックで体操の個人総合金メダルを獲得し、日本体操陣の黄金時代を象徴する選手の一人となったためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の浮世絵師で「神奈川沖浪裏」を描いたのは誰ですか？", options: ["歌川広重", "東洲斎写楽", "葛飾北斎", "喜多川歌麿"], correctAnswer: "葛飾北斎", explanation: "「富嶽三十六景」の代表作である「神奈川沖浪裏」を描いたのは、江戸時代後期の世界的にも有名な浮世絵師・葛飾北斎であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人で公民権のために戦ったフレッド・コレマツは有名な裁判でどのようなことをしましたか？", options: ["野球選手として活躍した", "強制収容令に従うことを拒否した", "日本語学校を設立した", "日本に帰国した"], correctAnswer: "強制収容令に従うことを拒否した", explanation: "フレッド・コレマツは第二次世界大戦中の日系人強制収容（大統領令9066号）は違憲であるとして、退去命令への従順を拒否し、法廷で戦った公民権運動の英雄であるためです。"),
            ExerciseItem(id: UUID(), prompt: "源氏物語を書いた平安時代の作家は誰ですか？", options: ["清少納言", "紫式部", "小野小町", "額田王"], correctAnswer: "紫式部", explanation: "「源氏物語」は平安時代中期に宮廷に仕えていた女流作家の紫式部によって執筆された日本文学の最高傑作の一つであるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の有名な剣豪で「五輪書」を著したのは誰ですか？", options: ["徳川家康", "豊臣秀吉", "宮本武蔵", "上杉謙信"], correctAnswer: "宮本武蔵", explanation: "宮本武蔵は江戸時代初期の剣術家であり、自らの兵法や剣術の極意をまとめた「五輪書（ごりんのしょ）」の著者であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人の有名な野球選手（元ニューヨーク・ヤンキース）は誰ですか？", options: ["鈴木一朗（イチロー）", "松井秀喜", "田中将大", "大谷翔平"], correctAnswer: "松井秀喜", explanation: "松井秀喜は日本での活躍後、ニューヨーク・ヤンキースなどでプレーし、ワールドシリーズMVPにも輝いた日本出身（日系）の著名な元メジャーリーガーであるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本を近代化した明治天皇は何年に即位しましたか？", options: ["1808年", "1868年", "1912年", "1945年"], correctAnswer: "1868年", explanation: "明治天皇は1867年に践祚（せんそ）し、1868年（明治元年）に正式に即位して明治維新による近代化を推し進めたためです。"),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦中に活躍した日系アメリカ人部隊（第442歩兵連隊）はどのような評価を受けましたか？", options: ["戦争中ずっと基地にいた", "最も多くの勲章を受けた部隊の一つ", "戦闘を拒否した", "日本に帰国した"], correctAnswer: "最も多くの勲章を受けた部隊の一つ", explanation: "日系アメリカ人で構成された第442歩兵連隊は、ヨーロッパ戦線で多大な犠牲を払いながら数々の武勲を立て、アメリカ軍の歴史上、その規模と期間において最も多くの勲章を受けた部隊として知られているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の物理学者で原子論の研究で有名な湯川秀樹はどのような賞を受賞しましたか？", options: ["ピューリッツァー賞", "ノーベル物理学賞", "フィールズ賞", "アカデミー賞"], correctAnswer: "ノーベル物理学賞", explanation: "湯川秀樹は中間子論の提唱により、1949年に日本人として初めてノーベル賞（物理学賞）を受賞した歴史的功績があるためです。"),
            ExerciseItem(id: UUID(), prompt: "俳句で有名な江戸時代の俳人は誰ですか？", options: ["西行", "松尾芭蕉", "与謝蕪村", "小林一茶"], correctAnswer: "松尾芭蕉", explanation: "松尾芭蕉は江戸時代前期の俳諧師で、「奥の細道」などを著し、俳句を芸術の域に高めた最も著名な人物の一人であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人初の合衆国上院議員はダニエル・イノウエですか？", options: ["はい", "いいえ", "わからない", "確認中"], correctAnswer: "はい", explanation: "ダニエル・イノウエはハワイ州選出の政治家であり、1962年に日系アメリカ人として初めて連邦上院議員に当選したという歴史的事実に基づいているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の建国神話における初代天皇は誰ですか？", options: ["神武天皇", "崇神天皇", "仁徳天皇", "推古天皇"], correctAnswer: "神武天皇", explanation: "『古事記』や『日本書紀』などの日本神話において、日本の初代天皇として即位したとされる伝説上の人物が神武天皇であるためです。"),
            ExerciseItem(id: UUID(), prompt: "柔道を世界に普及させた人物は誰ですか？", options: ["嘉納治五郎", "山本五十六", "渋沢栄一", "夏目漱石"], correctAnswer: "嘉納治五郎", explanation: "嘉納治五郎は日本の古流柔術を近代的な武道・スポーツとして体系化した講道館柔道の創始者であり、柔道の国際的普及とオリンピック運動への貢献で知られているためです。"),
            ExerciseItem(id: UUID(), prompt: "大リーグで活躍する日本人選手で、投打で有名な選手は誰ですか？", options: ["田中将大", "前田健太", "大谷翔平", "菊池雄星"], correctAnswer: "大谷翔平", explanation: "大谷翔平はピッチャー（投手）とバッター（打者）の両方でトップレベルの成績を残す「二刀流（投打）」としてメジャーリーグ（大リーグ）で歴史的な活躍をしているためです。"),
            ExerciseItem(id: UUID(), prompt: "日系カナダ人の著名な詩人デヴィッド・タダシ・スズキは何分野で有名ですか？", options: ["絵画", "環境保護と科学", "料理", "武道"], correctAnswer: "環境保護と科学", explanation: "デヴィッド・スズキは日系カナダ人の遺伝学者・科学者・環境活動家であり、長年にわたり環境保護の啓発活動や科学番組のホストとして世界的に知られているためです。"),
            ExerciseItem(id: UUID(), prompt: "平清盛はどの時代の武将ですか？", options: ["江戸時代", "平安時代", "鎌倉時代", "室町時代"], correctAnswer: "平安時代", explanation: "平清盛は平安時代末期に平氏政権を樹立し、武士として初めて太政大臣にまで昇りつめた歴史上の権力者であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本で初めて女性が参政権を得たのはいつですか？", options: ["1925年", "1945年", "1955年", "1965年"], correctAnswer: "1945年", explanation: "第二次世界大戦後の1945年に選挙法が改正され、日本で初めて女性の参政権（選挙権および被選挙権）が認められ、翌1946年に初の男女普通選挙が行われたためです。"),
            ExerciseItem(id: UUID(), prompt: "セイコー・エプソンなどの企業を興した国籍の人物で、時計の精密機械産業で知られる日本の地域はどこですか？", options: ["広島", "長野・諏訪", "東京", "大阪"], correctAnswer: "長野・諏訪", explanation: "長野県の諏訪地方（特に諏訪湖周辺）は、その気候風土がスイスに似ていることから「東洋のスイス」と呼ばれ、セイコーエプソンに代表される時計や精密機械工業が発展した地域であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の作家で「こころ」を書いたのは誰ですか？", options: ["芥川龍之介", "川端康成", "夏目漱石", "太宰治"], correctAnswer: "夏目漱石", explanation: "「こころ」は明治から大正にかけて活躍した日本を代表する文豪、夏目漱石の代表作の一つであるためです。"),
            ExerciseItem(id: UUID(), prompt: "徳川幕府の初代将軍は誰ですか？", options: ["織田信長", "豊臣秀吉", "徳川家康", "徳川秀忠"], correctAnswer: "徳川家康", explanation: "1603年に江戸幕府（徳川幕府）を開き、初代征夷大将軍に就任して約260年続く江戸時代の礎を築いた人物が徳川家康であるためです。")
        ]
    )

    // MARK: - いつについての質問
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "いつについての質問",
        instructions: "時間や日付に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "お正月はいつですか？", options: ["3月1日", "1月1日", "12月25日", "8月15日"], correctAnswer: "1月1日", explanation: "お正月は新しい年の始まりを祝う行事であり、元日である1月1日がその日とされているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本で桜が咲くのは一般的にいつですか？", options: ["1月〜2月", "3月〜4月", "7月〜8月", "10月〜11月"], correctAnswer: "3月〜4月", explanation: "日本の多くの地域（本州・四国・九州）では、気候が暖かくなる春の3月から4月にかけて桜（ソメイヨシノなど）が開花し満開を迎えるためです。"),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦が終わったのはいつですか？", options: ["1941年", "1945年", "1950年", "1953年"], correctAnswer: "1945年", explanation: "第二次世界大戦は、1945年8月の日本のポツダム宣言受諾、および9月2日の降伏文書調印によって終結したという歴史的事実に基づいているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の強制収容令（大統領令9066）が署名されたのはいつですか？", options: ["1941年12月", "1942年2月", "1944年1月", "1945年8月"], correctAnswer: "1942年2月", explanation: "真珠湾攻撃後の1942年2月19日に、フランクリン・D・ルーズベルト大統領が日系人などを強制収容所へ送る根拠となった大統領令9066号に署名したためです。"),
            ExerciseItem(id: UUID(), prompt: "お盆の行事はいつ行われますか？", options: ["1月", "4月", "8月", "12月"], correctAnswer: "8月", explanation: "先祖の霊を祀る日本の伝統行事であるお盆は、現在では主に月遅れの8月（中旬の13日〜16日頃）に行われるのが全国的に一般的であるためです。"),
            ExerciseItem(id: UUID(), prompt: "東京オリンピックが最初に開催されたのはいつですか？", options: ["1952年", "1960年", "1964年", "1972年"], correctAnswer: "1964年", explanation: "アジアで初めて開催されたオリンピック競技大会である第18回夏季オリンピック東京大会は、1964年に開催されたためです。"),
            ExerciseItem(id: UUID(), prompt: "明治維新が始まったのはいつですか？", options: ["1768年", "1868年", "1912年", "1945年"], correctAnswer: "1868年", explanation: "明治天皇が即位し、江戸幕府から新政府へ政権が移り、元号が「明治」に改められて近代化が本格的にスタートした1868年が明治維新の始まりの年とされているためです。"),
            ExerciseItem(id: UUID(), prompt: "七夕はいつ祝われますか？", options: ["3月3日", "5月5日", "7月7日", "9月9日"], correctAnswer: "7月7日", explanation: "織姫と彦星が年に一度だけ会うことができるという伝説に基づく星祭り「七夕」は、伝統的に7月7日に行われる行事であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で「午前中」とはいつのことですか？", options: ["夕方", "夜中", "午前0時〜正午", "正午〜午後6時"], correctAnswer: "午前0時〜正午", explanation: "「午前」という言葉は夜中の0時からお昼の12時（正午）までの時間を指し、「午前中」はその時間帯の期間を意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "日本の新年度（学校や会社）はいつ始まりますか？", options: ["1月", "4月", "9月", "10月"], correctAnswer: "4月", explanation: "日本の多くの学校教育機関や官公庁、企業の会計年度などは、春の4月に始まり翌年の3月に終わるという制度が一般的であるためです。"),
            ExerciseItem(id: UUID(), prompt: "ひな祭りはいつですか？", options: ["1月7日", "2月3日", "3月3日", "5月5日"], correctAnswer: "3月3日", explanation: "女の子の健やかな成長を祈る伝統行事「桃の節句（ひな祭り）」は、暦の上で3月3日に行われるためです。"),
            ExerciseItem(id: UUID(), prompt: "端午の節句（こどもの日）はいつですか？", options: ["3月3日", "4月4日", "5月5日", "6月6日"], correctAnswer: "5月5日", explanation: "男児の成長を祝う「端午の節句」であり、国民の祝日「こどもの日」でもあるのは毎年5月5日と定められているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で「おとといの昨日」は何日前ですか？", options: ["1日前", "2日前", "3日前", "4日前"], correctAnswer: "2日前", explanation: "「おととい（一昨日）」は昨日のさらに前の日、つまり2日前を指す言葉であるためです。"),
            ExerciseItem(id: UUID(), prompt: "関東大震災が起きたのはいつですか？", options: ["1903年", "1913年", "1923年", "1933年"], correctAnswer: "1923年", explanation: "東京や横浜など関東地方に甚大な被害をもたらした巨大地震「関東大震災」は、1923年（大正12年）9月1日に発生した歴史的事実に基づいているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本でクリスマスが祝われるのはいつですか？", options: ["11月25日", "12月25日", "1月7日", "1月25日"], correctAnswer: "12月25日", explanation: "キリスト教の行事であるクリスマスは、世界中および日本でも一般的に12月25日に祝われるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で「先月」とはいつのことですか？", options: ["来月", "今月", "前の月", "去年"], correctAnswer: "前の月", explanation: "日本語の「先月」は、現在の月（今月）の直前の一つ前の月を指す時間表現であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の大晦日はいつですか？", options: ["12月30日", "12月31日", "1月1日", "1月2日"], correctAnswer: "12月31日", explanation: "1年の最後の日を意味する「大晦日（おおみそか）」は、カレンダー上で12月31日を指すためです。"),
            ExerciseItem(id: UUID(), prompt: "江戸時代はいつから始まりましたか？", options: ["1400年頃", "1500年頃", "1603年", "1700年頃"], correctAnswer: "1603年", explanation: "徳川家康が征夷大将軍に任命され、江戸に幕府を開いた1603年が江戸時代の始まりとされているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で朝の挨拶「おはようございます」はいつ使いますか？", options: ["夕方", "夜", "朝", "昼食後"], correctAnswer: "朝", explanation: "「おはようございます」は、文字通り一日の早い時間帯、つまり朝に交わされる基本的な挨拶表現であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の戦後の高度成長期はいつですか？", options: ["1930年代", "1950年〜1970年代", "1990年代", "2010年代"], correctAnswer: "1950年〜1970年代", explanation: "第二次世界大戦後、日本の経済が飛躍的に発展した時期（高度経済成長期）は、一般的に1950年代半ばから1973年のオイルショックまでの1970年代前半を指すためです。")
        ]
    )

    // MARK: - なぜについての質問
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "なぜについての質問",
        instructions: "理由に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本で地震が多いのはなぜですか？", options: ["人口が多いから", "プレートの境界に位置するから", "山が多いから", "島国だから"], correctAnswer: "プレートの境界に位置するから", explanation: "日本列島周辺では複数の地球のプレートが沈み込んだり衝突したりしており、地殻のエネルギーが蓄積されやすく地震活動が活発になる地理的条件にあるためです。"),
            ExerciseItem(id: UUID(), prompt: "花見（お花見）を行う理由は何ですか？", options: ["秋を迎えるため", "桜の花の美しさを楽しむため", "冬の準備をするため", "夏祭りを開催するため"], correctAnswer: "桜の花の美しさを楽しむため", explanation: "花見は、春に咲く桜の美しさを愛でながら、家族や友人などと食事や酒を楽しむ日本の伝統的な風習であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人が強制収容された主な理由は何ですか？", options: ["犯罪を犯したから", "戦時中の人種差別と恐怖から", "本人たちが望んだから", "日本語を話したから"], correctAnswer: "戦時中の人種差別と恐怖から", explanation: "第二次世界大戦中の日米開戦による日系人に対するスパイ疑惑などの恐怖、戦時ヒステリー、そして長年根底にあった人種差別が強制収容の要因となったという歴史的背景があるためです。"),
            ExerciseItem(id: UUID(), prompt: "お正月に神社や寺にお参りするのはなぜですか？", options: ["お土産を買うため", "新年の幸運と健康を祈るため", "歴史を学ぶため", "友達に会うため"], correctAnswer: "新年の幸運と健康を祈るため", explanation: "「初詣」と呼ばれるこの行事は、新しい年を無事に迎えられたことに感謝し、その年の家族の健康や幸福、願い事の成就を神仏に祈願するためだからです。"),
            ExerciseItem(id: UUID(), prompt: "日本語でお辞儀をするのはなぜですか？", options: ["踊るため", "敬意と礼儀を示すため", "背中の運動のため", "外国からの習慣だから"], correctAnswer: "敬意と礼儀を示すため", explanation: "日本の文化において、お辞儀は相手への感謝、謝罪、敬意、そして礼儀を非言語的に表現する最も基本的なコミュニケーション行動であるためです。"),
            ExerciseItem(id: UUID(), prompt: "靴を脱いで家に入る日本の習慣はなぜありますか？", options: ["靴が大きいから", "室内を清潔に保つため", "法律で決まっているから", "椅子がないから"], correctAnswer: "室内を清潔に保つため", explanation: "昔から床（畳や板の間）に直接座ったり布団を敷いて寝たりする生活様式であったため、外の汚れを室内に持ち込まないようにする衛生的な理由からです。"),
            ExerciseItem(id: UUID(), prompt: "日本の電車が時刻通りに来るのはなぜ有名ですか？", options: ["電車の数が少ないから", "高い技術と厳格な時間管理のため", "電車が遅いから", "乗客が少ないから"], correctAnswer: "高い技術と厳格な時間管理のため", explanation: "日本の鉄道会社は秒単位での厳格な運行スケジュール管理と、それを支える高度なインフラ技術・職員の規律意識を持ち、遅延が非常に少ないことで世界的に高く評価されているからです。"),
            ExerciseItem(id: UUID(), prompt: "お盆の行事を行う理由は何ですか？", options: ["夏の暑さを避けるため", "先祖の霊を迎え、供養するため", "海水浴を楽しむため", "花火を見るため"], correctAnswer: "先祖の霊を迎え、供養するため", explanation: "お盆は仏教の教えと日本古来の祖先霊信仰が結びついたもので、あの世から戻ってくる先祖の霊を家にお迎えし、感謝と供養を捧げるための行事だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本人が贈り物を大切に包むのはなぜですか？", options: ["内容を隠すため", "美しさと敬意を示すため", "荷物を減らすため", "外国の習慣だから"], correctAnswer: "美しさと敬意を示すため", explanation: "日本の「包む」文化は、品物を汚れから守るだけでなく、包みの美しさや丁寧な作業を通じて、相手への深い敬意や思いやりの心（おもてなし）を表現するためだからです。"),
            ExerciseItem(id: UUID(), prompt: "俳句に季語（季節を表す言葉）を入れるのはなぜですか？", options: ["規則だから", "自然や季節感を表現するため", "俳句を長くするため", "外国語を混ぜるため"], correctAnswer: "自然や季節感を表現するため", explanation: "俳句はわずか17音という短い定型詩であり、季語を入れることで季節の情景や自然の美しさ、それに伴う感情を効果的かつ豊かに読者に想起させるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語を学ぶ高齢者が増えているのはなぜですか？", options: ["日本語が簡単だから", "脳の活性化や文化的なつながりのため", "仕事のために必要だから", "義務教育だから"], correctAnswer: "脳の活性化や文化的なつながりのため", explanation: "新しい言語の学習は認知機能の維持・向上（脳トレ）に役立ち、また日本のアニメや歴史などの文化的な興味、社会的な交流の場を求める目的があるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本のトイレが世界一清潔と言われるのはなぜですか？", options: ["観光客が多いから", "清潔さを重視する文化と高い技術のため", "広いから", "新しいから"], correctAnswer: "清潔さを重視する文化と高い技術のため", explanation: "日本人は伝統的に清浄を重んじる文化（ケガレを嫌う）があり、それに加えて温水洗浄便座などの高いトイレ技術と、こまめな清掃管理が徹底されているからです。"),
            ExerciseItem(id: UUID(), prompt: "七夕に短冊に願い事を書くのはなぜですか？", options: ["勉強のため", "願い事が叶うよう祈るため", "お墓参りのため", "ゲームとして"], correctAnswer: "願い事が叶うよう祈るため", explanation: "七夕の行事では、織姫が機織りが上手だったことにあやかり、芸事の上達や自身の願い事を短冊に書いて笹に飾り、星に祈りを捧げる風習があるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語の敬語（丁寧語）を使うのはなぜですか？", options: ["言葉を複雑にするため", "相手への尊敬と礼儀を示すため", "外国人に向けて話すため", "法律で定められているから"], correctAnswer: "相手への尊敬と礼儀を示すため", explanation: "日本語の敬語システムは、話し手と聞き手（または話題の人物）との上下関係や親疎関係を明確にし、相手にふさわしい敬意を払い、社会的な礼儀を保つために存在するためです。"),
            ExerciseItem(id: UUID(), prompt: "日本のコンビニが24時間営業する理由は何ですか？", options: ["店員が多いから", "顧客のさまざまな時間帯のニーズに応えるため", "冷凍食品があるから", "安いから"], correctAnswer: "顧客のさまざまな時間帯のニーズに応えるため", explanation: "深夜や早朝に働く人々や、多様化するライフスタイルに合わせて、いつでも日用品や食品を購入できたりサービスを利用できたりする利便性を提供するためです。")
        ]
    )

    // MARK: - どのようにについての質問
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "どのようにについての質問",
        instructions: "方法に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本語でこんにちはと言うとき、どのような挨拶ですか？", options: ["さようなら", "こんにちは", "おやすみなさい", "ただいま"], correctAnswer: "こんにちは", explanation: "「こんにちは」は日中（昼間）に人に会ったときに交わす、日本語の最も一般的で代表的な挨拶の言葉であるためです。"),
            ExerciseItem(id: UUID(), prompt: "味噌汁はどのように作りますか？（主な工程）", options: ["野菜を揚げる", "だしと味噌を合わせて具材を入れる", "生のまま食べる", "砂糖と混ぜる"], correctAnswer: "だしと味噌を合わせて具材を入れる", explanation: "味噌汁の基本的な調理手順は、昆布や鰹節などでとった「だし（出汁）」に野菜や豆腐などの具材を煮え、最後に味噌を溶かし入れるという工程であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で年上の人に挨拶するとき、どのようにしますか？", options: ["無視する", "頭を下げてお辞儀をする", "抱きしめる", "手を振る"], correctAnswer: "頭を下げてお辞儀をする", explanation: "日本の礼儀作法において、目上の人や年上の人に対しては、敬意を表すために言葉とともに丁寧に頭を下げる「お辞儀」を行うのが一般的だからです。"),
            ExerciseItem(id: UUID(), prompt: "折り紙はどのような芸術ですか？", options: ["絵を描く", "紙を折って形を作る", "陶器を作る", "音楽を演奏する"], correctAnswer: "紙を折って形を作る", explanation: "折り紙は、一枚の正方形の紙をハサミなどを使わずに折るだけで、動物や植物、様々な物の形を作り上げる日本の伝統的な造形遊びであり芸術だからです。"),
            ExerciseItem(id: UUID(), prompt: "俳句はどのように作りますか？", options: ["何でも自由に", "五七五の音節で自然を詠む", "8行で書く", "英語で書く"], correctAnswer: "五七五の音節で自然を詠む", explanation: "俳句は、五音・七音・五音の合計十七音（シラブル）という短い定型の中に季語を含め、自然の情景や心情を表現して作る伝統的な定型詩であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で書くとき、漢字はどのように使いますか？", options: ["全部漢字で書く", "意味を持つ言葉の多くに漢字を使う", "漢字は使わない", "名前だけ漢字で書く"], correctAnswer: "意味を持つ言葉の多くに漢字を使う", explanation: "日本語の表記体系において、ひらがなやカタカナが音を表すのに対し、漢字はそれ自体が意味を持つ表意文字として、名詞や動詞・形容詞の語幹など主要な意味の伝達に使われるためです。"),
            ExerciseItem(id: UUID(), prompt: "お風呂の入り方として日本では一般的に何を先に行いますか？", options: ["湯船に入る", "体を洗ってから湯船に浸かる", "シャワーだけ浴びる", "着たまま入る"], correctAnswer: "体を洗ってから湯船に浸かる", explanation: "日本の入浴文化では、複数人が同じ湯船（お湯）をきれいに共有するため、浴槽に入る前に洗い場（外）で体の汚れを石鹸で洗い流すのがマナーであるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の炊飯器でご飯を炊くとき、最初に何をしますか？", options: ["お米を炊飯器に入れてスイッチを押す", "お米を研いでから水を入れる", "お米を炒める", "お米を煮る"], correctAnswer: "お米を研いでから水を入れる", explanation: "美味しいご飯を炊くための最初のステップは、お米の表面についた糠（ぬか）や汚れを水で洗う（研ぐ）作業であり、その後に適量の水を加えて炊くためです。"),
            ExerciseItem(id: UUID(), prompt: "書道で字を書くとき、どのように持ちますか？", options: ["筆を横に持つ", "筆を垂直に立てて持つ", "鉛筆と同じように持つ", "両手で持つ"], correctAnswer: "筆を垂直に立てて持つ", explanation: "毛筆を使って字を書く書道の基本的な作法として、筆の軸を紙に対して垂直（まっすぐ）に立てて持つ「直筆（ちょくひつ）」が正しい姿勢とされるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の神社でお参りするとき、どのようにしますか？", options: ["座って瞑想する", "鈴を鳴らし、お辞儀して手を叩いて祈る", "大きな声で叫ぶ", "花を手向ける"], correctAnswer: "鈴を鳴らし、お辞儀して手を叩いて祈る", explanation: "神社の一般的な参拝作法は「二礼二拍手一礼」であり、お賽銭を入れて鈴を鳴らした後、深く2回お辞儀をし、2回手を叩き、祈った後に再度1回お辞儀をするためです。"),
            ExerciseItem(id: UUID(), prompt: "おにぎりはどのように作りますか？", options: ["ご飯を揚げる", "ご飯を手で三角形に握って海苔で巻く", "ご飯を焼く", "ご飯を炒める"], correctAnswer: "ご飯を手で三角形に握って海苔で巻く", explanation: "日本の代表的な携帯食であるおにぎりは、炊いたご飯の中に具材を入れ、塩をつけて両手で三角（または丸や俵型）に固く握り、外側を海苔で包むのが一般的な作り方であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で感謝するとき、何と言いますか？", options: ["すみません", "ありがとうございます", "はじめまして", "お願いします"], correctAnswer: "ありがとうございます", explanation: "「ありがとうございます」は、日本語で相手に対して感謝の気持ちを伝える際の最も標準的で丁寧な表現であるためです。"),
            ExerciseItem(id: UUID(), prompt: "箸でご飯を食べるとき、どのように持ちますか？", options: ["一本を動かし、もう一本は固定する", "両方の箸を同時に動かす", "スプーンのように使う", "ナイフのように使う"], correctAnswer: "一本を動かし、もう一本は固定する", explanation: "正しい箸の持ち方・使い方は、下の1本を親指の付け根と薬指で固定し、上の1本を親指・人差し指・中指で鉛筆のように持って動かすことで食べ物を挟むという仕組みだからです。"),
            ExerciseItem(id: UUID(), prompt: "茶道でお茶を点てるとき、どのような道具を使いますか？", options: ["電子レンジ", "茶筅と茶碗", "コーヒーメーカー", "やかん"], correctAnswer: "茶筅と茶碗", explanation: "日本の伝統的な茶道（抹茶）では、お茶を入れるための容器である「茶碗（抹茶茶碗）」と、お湯と抹茶を混ぜて泡立てるための竹製の道具「茶筅（ちゃせん）」が不可欠だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本で年賀状を送るとき、いつ届くようにしますか？", options: ["12月25日", "1月1日（元旦）", "2月14日", "3月3日"], correctAnswer: "1月1日（元旦）", explanation: "年賀状は新年の挨拶状であり、新年が明けた最初の日である1月1日の朝（元旦）に相手の手元に届くように年末に準備して投函する習慣があるためです。")
        ]
    )

    // MARK: - 物語の記憶
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "物語の記憶",
        instructions: "短い物語を読んで、質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "何を買いましたか？", options: ["鮭", "マグロ", "鶏肉", "豆腐"], correctAnswer: "鮭", explanation: "質問「何を買いましたか？」に対して、購入した品物（魚の種類）である「鮭」を答える文脈として整合しているからです。", passage: "田中さんは月曜日に魚屋で鮭を買いました。火曜日に調理しました。"),
            ExerciseItem(id: UUID(), prompt: "何人で行きましたか？", options: ["3人", "4人", "5人", "6人"], correctAnswer: "6人", explanation: "山本さんを含めると6人", passage: "山本さんは春に桜の花見をしました。友人5人と公園で弁当を食べました。"),
            ExerciseItem(id: UUID(), prompt: "普段何を飲みますか？", options: ["コーヒー", "緑茶", "牛乳", "ジュース"], correctAnswer: "緑茶", explanation: "質問「普段何を飲みますか？」に対して、日常的に摂取する飲料の種類として日本の代表的なお茶である「緑茶」を答えているためです。", passage: "鈴木さんは毎朝6時に起きて緑茶を飲みます。水曜日の朝、緑茶がなかったのでお湯だけ飲みました。"),
            ExerciseItem(id: UUID(), prompt: "料理本は何冊目ですか？", options: ["2冊目", "1冊目", "3冊目", "4冊目"], correctAnswer: "1冊目", explanation: "質問「料理本は何冊目ですか？」に対して、出版または購入した順番や数量を表す「1冊目」という回答が直接的に対応しているためです。", passage: "中村さんは図書館で本を3冊借りました。1冊は料理本、1冊は歴史本、1冊は詩集です。"),
            ExerciseItem(id: UUID(), prompt: "診察が始まったのは何時ですか？", options: ["午後2時", "午後3時", "午後4時", "午後5時"], correctAnswer: "午後4時", explanation: "質問「診察が始まったのは何時ですか？」に対して、特定の時刻（開始時間）を示す「午後4時」という回答が事実として整合しているためです。", passage: "渡辺さんは木曜日の午後3時に病院に行きました。待合室で1時間待ちました。"),
            ExerciseItem(id: UUID(), prompt: "孫は何歳ですか？", options: ["6歳", "7歳", "8歳", "9歳"], correctAnswer: "8歳", explanation: "質問「孫は何歳ですか？」に対して、年齢を問う質問に対し具体的な年齢である「8歳」と答えているためです。", passage: "佐藤さんは孫と一緒に公園に行きました。孫は8歳の男の子です。"),
            ExerciseItem(id: UUID(), prompt: "どこに行きましたか？", options: ["お寺", "神社", "図書館", "公園"], correctAnswer: "神社", explanation: "質問「どこに行きましたか？」に対して、行き先や場所を示す「神社」という回答が論理的に対応しているためです。", passage: "伊藤さんはお正月に着物を着て初詣に行きました。神社でお守りを買いました。"),
            ExerciseItem(id: UUID(), prompt: "何曜日に通っていますか？", options: ["金曜日", "土曜日", "日曜日", "月曜日"], correctAnswer: "土曜日", explanation: "質問「何曜日に通っていますか？」に対して、定期的に訪れる曜日を尋ねる質問に「土曜日」と正確に答えているためです。", passage: "加藤さんは毎週土曜日に書道教室に通っています。先生に褒められました。"),
            ExerciseItem(id: UUID(), prompt: "合計いくつ買いましたか？", options: ["6個", "7個", "8個", "9個"], correctAnswer: "8個", explanation: "質問「合計いくつ買いましたか？」に対して、購入した物の総数を問う質問に「8個」という数量で答えているためです。", passage: "吉田さんはスーパーでりんごを5個、みかんを3個買いました。"),
            ExerciseItem(id: UUID(), prompt: "娘は何歳になったか書いていませんが、プレゼントは何ですか？", options: ["おもちゃと本", "花束とケーキ", "着物と靴", "財布と時計"], correctAnswer: "花束とケーキ", explanation: "質問「プレゼントは何ですか？」に対して、贈られた物品の具体例として「花束とケーキ」という回答が適切に対応しているためです。", passage: "岡田さんは娘の誕生日に花束とケーキを贈りました。"),
            ExerciseItem(id: UUID(), prompt: "映画が始まったのが午後2時なら、終わったのは何時ですか？", options: ["午後4時", "午後5時", "午後6時", "午後7時"], correctAnswer: "午後5時", explanation: "映画の開始時刻が午後2時であるという前提に対して、終了時刻を問う質問であり、上映時間（3時間）を経過した「午後5時」という回答が論理的な帰結となるためです。", passage: "小林さんは金曜日に映画館に行き、3時間の映画を見ました。"),
            ExerciseItem(id: UUID(), prompt: "東京で何泊しましたか？", options: ["1泊", "2泊", "3泊", "4泊"], correctAnswer: "2泊", explanation: "「何泊しましたか？」という質問に対し、宿泊した日数を表す「2泊」と答えるのが適切です。", passage: "斎藤さんは冬休みに大阪から東京まで新幹線で旅行しました。東京で2泊しました。帰りも新幹線でした。"),
            ExerciseItem(id: UUID(), prompt: "全部で何品作りましたか？", options: ["2品", "3品", "4品", "5品"], correctAnswer: "3品", explanation: "「何品作りましたか？」という料理などの品数を尋ねる質問に対し、「3品」と答えるのが適切です。", passage: "松本さんは料理教室でみそ汁、煮魚、ご飯を作りました。"),
            ExerciseItem(id: UUID(), prompt: "何色のセーターですか？", options: ["青", "緑", "赤", "黄色"], correctAnswer: "赤", explanation: "「何色ですか？」と色を尋ねる質問に対し、具体的な色である「赤」と答えるのが適切です。", passage: "橋本さんは孫のためにセーターを編んでいます。赤い毛糸を使っています。"),
            ExerciseItem(id: UUID(), prompt: "バス停に着いたのは何時ですか？", options: ["8時10分", "8時15分", "8時20分", "8時30分"], correctAnswer: "8時15分", explanation: "「何時ですか？」と時間を尋ねる質問に対し、具体的な時刻である「8時15分」と答えるのが適切です。", passage: "清水さんは朝8時に家を出て、徒歩15分でバス停に到着しました。")
        ]
    )

    // MARK: - 数列
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "数列",
        instructions: "次の数字の並びを続けてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "この数列は2ずつ増える偶数の列です。したがって、8の次は10になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 5, 10, 15, 20, ___", options: ["24", "25", "26", "30"], correctAnswer: "25", explanation: "この数列は5ずつ増えています。したがって、20の次は25になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "この数列は2ずつ増える奇数の列です。したがって、7の次は9になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 10, 20, 30, 40, ___", options: ["45", "48", "50", "55"], correctAnswer: "50", explanation: "この数列は10ずつ増えています。したがって、40の次は50になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 100, 90, 80, 70, ___", options: ["55", "60", "65", "75"], correctAnswer: "60", explanation: "この数列は10ずつ減っています。したがって、70の次は60になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 2, 4, 8, ___", options: ["10", "12", "16", "20"], correctAnswer: "16", explanation: "この数列は前の数字を2倍しています。したがって、8を2倍して16になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "この数列は3ずつ増えています。したがって、12の次は15になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 50, 45, 40, 35, ___", options: ["28", "30", "32", "34"], correctAnswer: "30", explanation: "この数列は5ずつ減っています。したがって、35の次は30になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 2, 5, 8, 11, ___", options: ["12", "13", "14", "15"], correctAnswer: "14", explanation: "この数列は3ずつ増えています。したがって、11の次は14になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 4, 9, 16, ___", options: ["20", "24", "25", "30"], correctAnswer: "25", explanation: "この数列は自然数の2乗（1の2乗、2の2乗、3の2乗、4の2乗）です。したがって、次は5の2乗で25になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 10, 8, 6, 4, ___", options: ["0", "1", "2", "3"], correctAnswer: "2", explanation: "この数列は2ずつ減っています。したがって、4の次は2になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 7, 14, 21, 28, ___", options: ["30", "33", "35", "36"], correctAnswer: "35", explanation: "この数列は7ずつ増えています（7の倍数）。したがって、28の次は35になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 1, 2, 3, 5, ___", options: ["6", "7", "8", "10"], correctAnswer: "8", explanation: "これはフィボナッチ数列で、前の2つの数字を足したものが次の数字になります。したがって、3+5で8になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 20, 17, 14, 11, ___", options: ["6", "7", "8", "9"], correctAnswer: "8", explanation: "この数列は3ずつ減っています。したがって、11の次は8になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 4, 8, 16, 32, ___", options: ["48", "54", "60", "64"], correctAnswer: "64", explanation: "この数列は前の数字を2倍しています。したがって、32を2倍して64になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 6, 12, 18, 24, ___", options: ["28", "29", "30", "32"], correctAnswer: "30", explanation: "この数列は6ずつ増えています（6の倍数）。したがって、24の次は30になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 100, 50, 25, ___", options: ["10", "12", "12.5", "15"], correctAnswer: "12.5", explanation: "この数列は前の数字を半分（÷2）にしています。したがって、25の半分は12.5になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 1, 10, 100, 1000, ___", options: ["5000", "8000", "10000", "100000"], correctAnswer: "10000", explanation: "この数列は前の数字を10倍しています。したがって、1000を10倍して10000になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 9, 18, 27, 36, ___", options: ["42", "44", "45", "54"], correctAnswer: "45", explanation: "この数列は9ずつ増えています（9の倍数）。したがって、36の次は45になります。"),
            ExerciseItem(id: UUID(), prompt: "次の数列を続けてください: 15, 12, 9, 6, ___", options: ["1", "2", "3", "4"], correctAnswer: "3", explanation: "この数列は3ずつ減っています。したがって、6の次は3になります。")
        ]
    )

    // MARK: - 原因と結果
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "原因と結果",
        instructions: "原因と結果の関係を答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "雨が降りました。その結果は？", options: ["地面が乾いた", "地面が濡れた", "気温が上がった", "日差しが強くなった"], correctAnswer: "地面が濡れた", explanation: "雨が降ると水滴が落ちるため、自然な結果として地面が濡れます。"),
            ExerciseItem(id: UUID(), prompt: "田中さんは毎日8時間よく眠りました。その結果は？", options: ["疲れてしまった", "体調が良くなった", "食欲がなくなった", "体重が増えた"], correctAnswer: "体調が良くなった", explanation: "十分な睡眠をとることは健康に良い影響を与えるため、体調が良くなるのが自然な結果です。"),
            ExerciseItem(id: UUID(), prompt: "コップを床に落としました。その結果は？", options: ["コップが飛んだ", "コップが割れた", "コップが大きくなった", "コップが暖かくなった"], correctAnswer: "コップが割れた", explanation: "ガラスや陶器などのコップを硬い床に落とすと、衝撃で割れるのが自然な結果です。"),
            ExerciseItem(id: UUID(), prompt: "植物に水をやらなかったら？", options: ["よく育つ", "枯れてしまう", "大きくなる", "花が咲く"], correctAnswer: "枯れてしまう", explanation: "植物は生きるために水分を必要とするため、水を与えないと枯れてしまいます。"),
            ExerciseItem(id: UUID(), prompt: "山本さんは長時間歩きました。その結果は？", options: ["体が冷えた", "足が疲れた", "目が良くなった", "食欲がなくなった"], correctAnswer: "足が疲れた", explanation: "長時間歩くことは筋肉を使うため、足が疲れるのが自然な結果です。"),
            ExerciseItem(id: UUID(), prompt: "ストーブをつけたままにして眠りました。その結果は？", options: ["部屋が冷えた", "電気代が節約できた", "部屋が暑くなり過ぎた", "部屋が湿った"], correctAnswer: "部屋が暑くなり過ぎた", explanation: "ストーブは熱を出し続けるため、つけっぱなしにすると部屋の温度が上がり過ぎてしまいます。"),
            ExerciseItem(id: UUID(), prompt: "冬に薄着で外に出ました。その結果は？", options: ["元気になった", "風邪をひいた", "日焼けした", "食欲が増した"], correctAnswer: "風邪をひいた", explanation: "寒い冬に薄着でいると体が冷え、風邪をひきやすくなるのが自然な結果です。"),
            ExerciseItem(id: UUID(), prompt: "薬を飲み忘れました。その結果は？", options: ["体調が良くなった", "病気が悪化した", "眠れなくなった", "食欲が増した"], correctAnswer: "病気が悪化した", explanation: "治療に必要な薬を飲まないと症状が改善せず、病気が悪化してしまう可能性があります。"),
            ExerciseItem(id: UUID(), prompt: "毎日練習したら？", options: ["技術が下がった", "技術が上がった", "練習が嫌いになった", "何も変わらない"], correctAnswer: "技術が上がった", explanation: "毎日継続して練習を重ねることで、能力や技術が向上するのは自然な結果です。"),
            ExerciseItem(id: UUID(), prompt: "お金を使いすぎたら？", options: ["お金が増えた", "お金が少なくなった", "生活が豊かになった", "貯金が増えた"], correctAnswer: "お金が少なくなった", explanation: "お金を使えば使うほど手持ちの資金は減っていくため、お金が少なくなるのは必然です。"),
            ExerciseItem(id: UUID(), prompt: "運動不足が続いたら？", options: ["体力がついた", "体重が減った", "体の調子が悪くなりやすい", "筋肉が増えた"], correctAnswer: "体の調子が悪くなりやすい", explanation: "運動をしない状態が続くと体力が落ち、体の不調を招きやすくなります。"),
            ExerciseItem(id: UUID(), prompt: "部屋を掃除したら？", options: ["部屋が汚れた", "部屋が清潔になった", "部屋が狭くなった", "部屋が暗くなった"], correctAnswer: "部屋が清潔になった", explanation: "掃除をすることでゴミや汚れが取り除かれるため、部屋が清潔になります。"),
            ExerciseItem(id: UUID(), prompt: "夜遅くまで起きていたら？", options: ["朝早く起きられた", "翌日眠くなった", "体力が増した", "目が良くなった"], correctAnswer: "翌日眠くなった", explanation: "夜更かしをすると睡眠時間が足りなくなるため、翌日に眠気を感じるのが自然です。"),
            ExerciseItem(id: UUID(), prompt: "鍋を火にかけて放っておいたら？", options: ["料理がおいしくなった", "料理が冷えた", "お湯が蒸発して焦げた", "料理が増えた"], correctAnswer: "お湯が蒸発して焦げた", explanation: "火にかけたまま放置すると水分がすべて蒸発し、鍋が焦げ付いてしまいます。"),
            ExerciseItem(id: UUID(), prompt: "友達に誕生日を祝ってもらったら？", options: ["悲しくなった", "うれしくなった", "怒った", "眠くなった"], correctAnswer: "うれしくなった", explanation: "友達から誕生日を祝ってもらうことは喜ばしい出来事なので、うれしい気持ちになるのが自然です。")
        ]
    )

    // MARK: - 感情認識
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "感情認識",
        instructions: "この場面でどんな気持ちになりますか？",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "誕生日プレゼントをもらったとき、どんな気持ちになりますか？", options: ["悲しい", "うれしい", "怒る", "退屈"], correctAnswer: "うれしい", explanation: "人からプレゼントをもらうことは好意の表れであり、喜びを感じるのが一般的な感情です。"),
            ExerciseItem(id: UUID(), prompt: "大切な物をなくしてしまったとき、どんな気持ちになりますか？", options: ["うれしい", "安心する", "悲しい", "楽しい"], correctAnswer: "悲しい", explanation: "自分にとって価値のあるものを失うことは喪失感を伴うため、悲しい気持ちになります。"),
            ExerciseItem(id: UUID(), prompt: "大きな犬に突然吠えられたとき、どんな気持ちになりますか？", options: ["楽しい", "怖い", "怒る", "落ち着く"], correctAnswer: "怖い", explanation: "予期せぬ大きな音や動物からの威嚇を受けると、危険を感じて恐怖を覚えるのが自然です。"),
            ExerciseItem(id: UUID(), prompt: "長い旅の後、自宅に帰ってきたとき、どんな気持ちになりますか？", options: ["悲しい", "ほっとする", "怖い", "怒る"], correctAnswer: "ほっとする", explanation: "長い旅の疲れから解放され、安全で慣れ親しんだ自分の家に戻ると安心感を覚えます。"),
            ExerciseItem(id: UUID(), prompt: "楽しみにしていたイベントがキャンセルになったとき、どんな気持ちになりますか？", options: ["うれしい", "がっかり", "元気になる", "楽しい"], correctAnswer: "がっかり", explanation: "期待していたことが実現しなかった場合、落胆してがっかりするのが一般的な感情です。"),
            ExerciseItem(id: UUID(), prompt: "久しぶりに古い友人に会ったとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "なつかしい・うれしい", "退屈"], correctAnswer: "なつかしい・うれしい", explanation: "過去の思い出を共有する友人と再会すると、昔を思い出してなつかしく、またうれしく感じます。"),
            ExerciseItem(id: UUID(), prompt: "誰かが不公平なことをしたとき、どんな気持ちになりますか？", options: ["楽しい", "怒る", "ほっとする", "うれしい"], correctAnswer: "怒る", explanation: "理不尽な扱いや不正な行動に対しては、不満や怒りを感じるのが一般的な感情です。"),
            ExerciseItem(id: UUID(), prompt: "試験に合格したとき、どんな気持ちになりますか？", options: ["残念", "悲しい", "うれしい・誇らしい", "怖い"], correctAnswer: "うれしい・誇らしい", explanation: "努力が実を結んで目標を達成したときは、大きな喜びと達成感、誇りを感じます。"),
            ExerciseItem(id: UUID(), prompt: "初めての場所に一人で行くとき、どんな気持ちになりますか？", options: ["楽しい・不安", "怒る", "ほっとする", "悲しい"], correctAnswer: "楽しい・不安", explanation: "未知の体験に対するワクワクする楽しさと、どうなるかわからない不安が入り混じるのが自然です。"),
            ExerciseItem(id: UUID(), prompt: "好きな曲を聴いたとき、どんな気持ちになりますか？", options: ["悲しい", "怖い", "楽しい・気分が良くなる", "怒る"], correctAnswer: "楽しい・気分が良くなる", explanation: "自分の好みに合う音楽を聴くことで、リラックスしたり気分が高揚したりします。"),
            ExerciseItem(id: UUID(), prompt: "家族が病気になったと聞いたとき、どんな気持ちになりますか？", options: ["楽しい", "心配", "ほっとする", "退屈"], correctAnswer: "心配", explanation: "大切な家族の健康状態が悪化したと知れば、無事を祈って心配になるのが自然な感情です。"),
            ExerciseItem(id: UUID(), prompt: "長い間会っていなかった孫に会えたとき、どんな気持ちになりますか？", options: ["怒る", "悲しい", "うれしい", "怖い"], correctAnswer: "うれしい", explanation: "愛情を持つ家族、特に孫との久々の再会は大きな喜びをもたらします。"),
            ExerciseItem(id: UUID(), prompt: "重要な発表を前にしているとき、どんな気持ちになりますか？", options: ["落ち着く", "緊張する", "楽しい", "ほっとする"], correctAnswer: "緊張する", explanation: "プレッシャーのかかる重要な場面の前には、心身が張り詰めて緊張するのが一般的です。"),
            ExerciseItem(id: UUID(), prompt: "病院から良い結果が出たと聞いたとき、どんな気持ちになりますか？", options: ["悲しい", "心配", "安心する", "怒る"], correctAnswer: "安心する", explanation: "健康への不安が解消され、問題がなかったとわかると安堵の気持ちが生まれます。"),
            ExerciseItem(id: UUID(), prompt: "花見で桜の木の下に座っておにぎりを食べているとき、どんな気持ちになりますか？", options: ["悲しい", "退屈", "怒る", "穏やかで幸せ"], correctAnswer: "穏やかで幸せ", explanation: "美しい自然の中でくつろぎながら食事を楽しむことは、心穏やかで幸せな気分をもたらします。"),
            ExerciseItem(id: UUID(), prompt: "バスに乗り遅れたとき、どんな気持ちになりますか？", options: ["楽しい", "うれしい", "焦る・困る", "ほっとする"], correctAnswer: "焦る・困る", explanation: "予定していた移動手段を逃すと、その後の予定が狂うため焦りや困惑を感じます。"),
            ExerciseItem(id: UUID(), prompt: "親切な人が重い荷物を持つのを手伝ってくれたとき、どんな気持ちになりますか？", options: ["怒る", "感謝する", "悲しい", "怖い"], correctAnswer: "感謝する", explanation: "他人からの思いやりや助けを受けたとき、ありがたく思い感謝の気持ちを抱くのが自然です。"),
            ExerciseItem(id: UUID(), prompt: "料理を頑張って作ったが、うまくできなかったとき、どんな気持ちになりますか？", options: ["誇らしい", "がっかり・悔しい", "ほっとする", "楽しい"], correctAnswer: "がっかり・悔しい", explanation: "努力したにもかかわらず良い結果が得られなかった場合、落胆や悔しさを感じます。"),
            ExerciseItem(id: UUID(), prompt: "夜に不審な物音を聞いたとき、どんな気持ちになりますか？", options: ["楽しい", "うれしい", "不安・怖い", "眠くなる"], correctAnswer: "不安・怖い", explanation: "暗い夜に正体のわからない音が聞こえると、危険を予測して不安や恐怖を感じるのが自然です。"),
            ExerciseItem(id: UUID(), prompt: "長年の夢が叶ったとき、どんな気持ちになりますか？", options: ["悲しい", "退屈", "怒る", "うれしい・満足"], correctAnswer: "うれしい・満足", explanation: "長い間抱いていた強い願いが実現したときは、最高の喜びと深い満足感を得られます。")
        ]
    )

    // MARK: - おかしいのはどれ
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "おかしいのはどれ",
        instructions: "この状況でおかしいことは何ですか？",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "山本さんは真夏の日に厚いコートを着て外に出ました。何がおかしいですか？", options: ["季節に合わない服装", "外に出たこと", "山本さんの名前", "何もおかしくない"], correctAnswer: "季節に合わない服装", explanation: "真夏は気温が非常に高いため、防寒着である厚いコートを着るのは季節外れで不自然です。"),
            ExerciseItem(id: UUID(), prompt: "田中さんは朝食にご飯と味噌汁を食べ、牛乳を飲みました。次に歯を磨いてから就寝しました。何がおかしいですか？", options: ["食事の内容", "朝食後に寝ること", "牛乳を飲んだこと", "何もおかしくない"], correctAnswer: "朝食後に寝ること", explanation: "朝食は朝起きてから食べるものですが、その直後に就寝（夜寝ること）するのは時間の流れとして矛盾しています。"),
            ExerciseItem(id: UUID(), prompt: "お正月に鈴木さんはケーキを切り、クリスマスソングを歌いました。何がおかしいですか？", options: ["ケーキを食べること", "お正月にクリスマスの習慣をすること", "鈴木さんの名前", "何もおかしくない"], correctAnswer: "お正月にクリスマスの習慣をすること", explanation: "お正月（1月）にクリスマス（12月）の歌を歌ったり習慣を行うのは、時期が間違っていて不自然です。"),
            ExerciseItem(id: UUID(), prompt: "中村さんは図書館に行って本を読まずに大声で電話しました。何がおかしいですか？", options: ["図書館に行ったこと", "図書館で大きな声を出すこと", "電話をかけたこと", "何もおかしくない"], correctAnswer: "図書館で大きな声を出すこと", explanation: "図書館は静かに本を読む場所であり、そこで大声で電話をするのはマナー違反で不適切な行動です。"),
            ExerciseItem(id: UUID(), prompt: "渡辺さんは夕食のご飯を茶碗に盛り、スープをコップで飲みました。何がおかしいですか？", options: ["ご飯を食べたこと", "スープをコップで飲むこと", "夕食を食べたこと", "何もおかしくない"], correctAnswer: "スープをコップで飲むこと", explanation: "スープは通常スープボウルやスープ皿で飲むものであり、コップ（グラス）で飲むのは一般的ではありません。"),
            ExerciseItem(id: UUID(), prompt: "佐藤さんは病院で「お薬は1日3回、毎食後に」という指示を受けました。1日2回だけ飲みました。何がおかしいですか？", options: ["薬を飲んだこと", "医者に行ったこと", "指示の回数と違う回数で飲んだこと", "何もおかしくない"], correctAnswer: "指示の回数と違う回数で飲んだこと", explanation: "医師からの指示である「1日3回」を守らず、自分の判断で「1日2回」しか飲んでいない点が間違っています。"),
            ExerciseItem(id: UUID(), prompt: "伊藤さんは横断歩道で信号が赤のまま渡りました。何がおかしいですか？", options: ["横断歩道を使ったこと", "信号無視をしたこと", "歩いたこと", "何もおかしくない"], correctAnswer: "信号無視をしたこと", explanation: "赤信号は「止まれ」の合図であり、それを無視して横断歩道を渡るのは交通ルール違反で危険です。"),
            ExerciseItem(id: UUID(), prompt: "加藤さんは手紙を書いて、切手を貼らずにポストに投函しました。何がおかしいですか？", options: ["手紙を書いたこと", "ポストに投函したこと", "切手を貼らなかったこと", "何もおかしくない"], correctAnswer: "切手を貼らなかったこと", explanation: "郵便物を送るためには郵送料として切手を貼る必要があるため、貼らずに投函するのは不適切です。"),
            ExerciseItem(id: UUID(), prompt: "吉田さんは冷たいお蕎麦を鉄板で焼いて食べました。何がおかしいですか？", options: ["お蕎麦を食べたこと", "冷たいお蕎麦を鉄板で焼くこと", "外で食べたこと", "何もおかしくない"], correctAnswer: "冷たいお蕎麦を鉄板で焼くこと", explanation: "「冷たい」お蕎麦はそのまま冷やして食べるものであり、鉄板で焼いてしまうと冷たくなくなってしまいます。"),
            ExerciseItem(id: UUID(), prompt: "小林さんはお風呂に入る前に、服を着たまま湯船に入りました。何がおかしいですか？", options: ["お風呂に入ったこと", "服を着たまま湯船に入ること", "湯船に浸かったこと", "何もおかしくない"], correctAnswer: "服を着たまま湯船に入ること", explanation: "お風呂の湯船には衣服をすべて脱いで入るのが常識であり、服を着たまま入るのは不自然です。"),
            ExerciseItem(id: UUID(), prompt: "斎藤さんは書道の授業で、筆の代わりに包丁で字を書こうとしました。何がおかしいですか？", options: ["書道をしたこと", "包丁で字を書こうとしたこと", "授業に参加したこと", "何もおかしくない"], correctAnswer: "包丁で字を書こうとしたこと", explanation: "書道は筆と墨を使って字を書くものであり、料理の道具である包丁を使うのは目的が間違っていて危険です。"),
            ExerciseItem(id: UUID(), prompt: "松本さんは歯磨き粉の代わりに台所用洗剤で歯を磨きました。何がおかしいですか？", options: ["歯を磨いたこと", "台所用洗剤を口に入れたこと", "朝に歯を磨いたこと", "何もおかしくない"], correctAnswer: "台所用洗剤を口に入れたこと", explanation: "台所用洗剤は食器を洗うためのものであり、人体に有害な可能性があるため口に入れて歯を磨くのは非常に危険でおかしいです。"),
            ExerciseItem(id: UUID(), prompt: "橋本さんは神社でお祈りをするとき、大声で怒鳴りながら手を叩きました。何がおかしいですか？", options: ["神社に行ったこと", "お祈りをしたこと", "怒鳴りながら祈ること", "何もおかしくない"], correctAnswer: "怒鳴りながら祈ること", explanation: "神社でのお祈りは静かに心を込めて行うものであり、大声で怒鳴る行為は神聖な場所において不適切です。"),
            ExerciseItem(id: UUID(), prompt: "清水さんは熱いお茶を冷蔵庫に入れたまま飲もうとしました。何がおかしいですか？", options: ["お茶を飲もうとしたこと", "お茶を飲む前に冷やすことは普通だが、熱いと明記されているのに急いで飲もうとしたこと", "冷蔵庫を使ったこと", "何もおかしくない"], correctAnswer: "お茶を飲む前に冷やすことは普通だが、熱いと明記されているのに急いで飲もうとしたこと", explanation: "冷蔵庫の中にある状態のまま飲むことはできず、また「熱いお茶」を冷蔵庫に入れた直後に飲むという状況が矛盾しています。"),
            ExerciseItem(id: UUID(), prompt: "岡田さんは病院でアレルギーがある薬だとわかっていながら飲みました。何がおかしいですか？", options: ["薬を飲んだこと", "病院に行ったこと", "アレルギーのある薬を飲んだこと", "何もおかしくない"], correctAnswer: "アレルギーのある薬を飲んだこと", explanation: "アレルギー反応が出る危険な薬だと知っているにもかかわらず、あえてそれを飲むのは健康を害する危険な行為でおかしいです。")
        ]
    )

    // MARK: - 一般常識：歴史
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "一般常識：歴史",
        instructions: "歴史に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の強制収容令（大統領令9066号）に署名したアメリカ大統領は誰ですか？", options: ["ハリー・S・トルーマン", "フランクリン・D・ルーズベルト", "ドワイト・D・アイゼンハワー", "ハーバート・フーバー"], correctAnswer: "フランクリン・D・ルーズベルト", explanation: "1942年、第二次世界大戦中に日系アメリカ人を強制収容所へ送る大統領令9066号に署名したのは、第32代アメリカ大統領フランクリン・D・ルーズベルトです。"),
            ExerciseItem(id: UUID(), prompt: "第二次世界大戦で活躍した日系アメリカ人部隊は何連隊ですか？", options: ["第100大隊・第442歩兵連隊", "第101空挺師団", "第502歩兵連隊", "第503空挺連隊"], correctAnswer: "第100大隊・第442歩兵連隊", explanation: "第二次世界大戦中、日系アメリカ人で編成され、アメリカ軍の歴史上最も多くの勲章を受章した部隊は第100歩兵大隊および第442歩兵連隊です。"),
            ExerciseItem(id: UUID(), prompt: "日本が近代化を進めた明治維新は何年に始まりましたか？", options: ["1848年", "1868年", "1905年", "1941年"], correctAnswer: "1868年", explanation: "江戸幕府が倒れ、明治天皇を中心とした新政府によって日本の近代化が始まった明治維新は1868年を元年とします。"),
            ExerciseItem(id: UUID(), prompt: "広島に原子爆弾が投下されたのはいつですか？", options: ["1945年8月6日", "1945年8月9日", "1944年6月6日", "1941年12月7日"], correctAnswer: "1945年8月6日", explanation: "第二次世界大戦末期、世界で初めて原子爆弾が実戦使用され、日本の広島市に投下されたのは1945年8月6日です。"),
            ExerciseItem(id: UUID(), prompt: "日系アメリカ人の公民権回復（リドレス）法案が成立したのはいつですか？", options: ["1968年", "1978年", "1988年", "1998年"], correctAnswer: "1988年", explanation: "戦時中の強制収容についてアメリカ政府が公式に謝罪し、補償を行うことを定めた「市民の自由法（リドレス法）」が成立したのは1988年です。"),
            ExerciseItem(id: UUID(), prompt: "江戸幕府を開いたのは誰ですか？", options: ["織田信長", "豊臣秀吉", "徳川家康", "上杉謙信"], correctAnswer: "徳川家康", explanation: "1603年に征夷大将軍に任命され、江戸に幕府を開いて約260年続く江戸時代の基礎を築いたのは徳川家康です。"),
            ExerciseItem(id: UUID(), prompt: "日本が国際連盟を脱退したのはいつですか？", options: ["1929年", "1933年", "1937年", "1941年"], correctAnswer: "1933年", explanation: "満州国の建国を巡って国際連盟から非難を受けた日本が、抗議して連盟からの脱退を通告したのは1933年（昭和8年）です。"),
            ExerciseItem(id: UUID(), prompt: "天皇制が象徴天皇制に移行したのはいつですか？", options: ["1935年", "1945年", "1950年", "1952年"], correctAnswer: "1945年", explanation: "第二次世界大戦後の1946年に公布・1947年に施行された日本国憲法により、天皇は主権者から「日本国および日本国民統合の象徴」へと移行しました。"),
            ExerciseItem(id: UUID(), prompt: "戦後の日本が国際連合に加盟したのはいつですか？", options: ["1945年", "1952年", "1956年", "1964年"], correctAnswer: "1956年", explanation: "日ソ共同宣言によってソビエト連邦との国交が回復した結果、日本の国際連合への加盟が承認されたのは1956年です。"),
            ExerciseItem(id: UUID(), prompt: "サンフランシスコ平和条約が調印されたのはいつですか？", options: ["1947年", "1951年", "1955年", "1960年"], correctAnswer: "1951年", explanation: "第二次世界大戦の連合国と日本との間の戦争状態を終結させ、日本の主権回復を定めたサンフランシスコ平和条約が調印されたのは1951年です。"),
            ExerciseItem(id: UUID(), prompt: "日本語で「二世」とはどういう意味ですか？", options: ["日本生まれの人", "アメリカで生まれた日系人の子", "三世代目の日系人", "日本から移住してきた人"], correctAnswer: "アメリカで生まれた日系人の子", explanation: "移民の文脈における「二世」とは、日本から移住した一世の子供として、移住先（アメリカなど）で生まれた世代を指します。"),
            ExerciseItem(id: UUID(), prompt: "パールハーバー攻撃はいつ行われましたか？", options: ["1939年9月1日", "1941年12月7日", "1944年6月6日", "1945年8月6日"], correctAnswer: "1941年12月7日", explanation: "日本軍によるハワイの真珠湾（パールハーバー）への奇襲攻撃が行われ、太平洋戦争の引き金となったのは（現地時間で）1941年12月7日です。"),
            ExerciseItem(id: UUID(), prompt: "マンザナー強制収容所はどの州にありましたか？", options: ["テキサス州", "オレゴン州", "カリフォルニア州", "アリゾナ州"], correctAnswer: "カリフォルニア州", explanation: "第二次世界大戦中に日系アメリカ人が収容されたマンザナー強制収容所は、アメリカ西海岸のカリフォルニア州オーエンズバレーにありました。"),
            ExerciseItem(id: UUID(), prompt: "日本国憲法が公布されたのはいつですか？", options: ["1945年8月", "1946年11月", "1950年6月", "1952年4月"], correctAnswer: "1946年11月", explanation: "現在の日本の最高法規である日本国憲法は、1946年（昭和21年）11月3日に公布されました。"),
            ExerciseItem(id: UUID(), prompt: "日本の最後の将軍（徳川慶喜）が政権を返上したのはいつですか？", options: ["1600年", "1853年", "1867年", "1905年"], correctAnswer: "1867年", explanation: "江戸幕府の第15代将軍・徳川慶喜が政権を朝廷に返上した「大政奉還」が行われたのは1867年（慶応3年）です。")
        ]
    )

    // MARK: - 一般常識：地理
    private static let exercise14 = Exercise(
        id: UUID(),
        title: "一般常識：地理",
        instructions: "地理に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の首都はどこですか？", options: ["大阪", "京都", "東京", "福岡"], correctAnswer: "東京", explanation: "日本の政治、経済、文化の中心であり、国会や中央省庁が置かれている現在の首都は東京都です。"),
            ExerciseItem(id: UUID(), prompt: "日本で最も高い山は何ですか？", options: ["御嶽山", "立山", "北岳", "富士山"], correctAnswer: "富士山", explanation: "静岡県と山梨県にまたがる標高3,776メートルの活火山である富士山は、日本で最も高い山です。"),
            ExerciseItem(id: UUID(), prompt: "日本を囲む海はどれですか？", options: ["地中海と大西洋", "太平洋と日本海", "インド洋と紅海", "アラビア海と黒海"], correctAnswer: "太平洋と日本海", explanation: "島国である日本列島は、東側と南側を広大な太平洋、西側をユーラシア大陸との間にある日本海などに囲まれています。"),
            ExerciseItem(id: UUID(), prompt: "関西にある都市はどれですか？", options: ["仙台", "札幌", "大阪", "金沢"], correctAnswer: "大阪", explanation: "大阪府の府庁所在地であり、西日本最大の都市である大阪市は、関西地方（近畿地方）を代表する中心都市です。"),
            ExerciseItem(id: UUID(), prompt: "カリフォルニア州の州都はどこですか？", options: ["ロサンゼルス", "サンフランシスコ", "サクラメント", "サンディエゴ"], correctAnswer: "サクラメント", explanation: "ロサンゼルスやサンフランシスコなどの大都市があるカリフォルニア州ですが、州政府が置かれている州都はサクラメントです。"),
            ExerciseItem(id: UUID(), prompt: "日本の最西端にある都道府県はどこですか？", options: ["沖縄県", "鹿児島県", "長崎県", "山口県"], correctAnswer: "沖縄県", explanation: "九州の南西に位置する島々からなる沖縄県は、日本で最も西に位置する都道府県（最西端の与那国島を含む）です。"),
            ExerciseItem(id: UUID(), prompt: "日本最大の湖は何ですか？", options: ["諏訪湖", "猪苗代湖", "琵琶湖", "洞爺湖"], correctAnswer: "琵琶湖", explanation: "滋賀県にある琵琶湖は、日本の湖の中で最も大きな面積と貯水量を持つ最大の湖です。"),
            ExerciseItem(id: UUID(), prompt: "東京と大阪を結ぶ新幹線は何ですか？", options: ["北陸新幹線", "東北新幹線", "東海道新幹線", "山陽新幹線"], correctAnswer: "東海道新幹線", explanation: "東京駅から新大阪駅までを結ぶ日本初の高速鉄道路線は「東海道新幹線」と呼ばれます。"),
            ExerciseItem(id: UUID(), prompt: "日本と朝鮮半島の間にある海峡は何ですか？", options: ["津軽海峡", "関門海峡", "対馬海峡", "宗谷海峡"], correctAnswer: "対馬海峡", explanation: "日本列島（九州地方）と朝鮮半島を隔てる海峡は対馬海峡と呼ばれ、重要な海上交通路となっています。"),
            ExerciseItem(id: UUID(), prompt: "北海道の県庁所在地はどこですか？", options: ["函館", "旭川", "小樽", "札幌"], correctAnswer: "札幌", explanation: "北海道の行政や経済の中心であり、道庁（県庁に相当）が置かれているのは札幌市です。"),
            ExerciseItem(id: UUID(), prompt: "サンフランシスコとロサンゼルスはどの州にありますか？", options: ["オレゴン州", "ネバダ州", "カリフォルニア州", "アリゾナ州"], correctAnswer: "カリフォルニア州", explanation: "アメリカ西海岸を代表する二つの大都市、サンフランシスコとロサンゼルスはどちらもカリフォルニア州に位置しています。"),
            ExerciseItem(id: UUID(), prompt: "日本で最長の川はどれですか？", options: ["利根川", "信濃川", "多摩川", "木曽川"], correctAnswer: "信濃川", explanation: "信濃川は全長367キロメートルで、日本で最も長い川であるという地理的な事実に基づいています。"),
            ExerciseItem(id: UUID(), prompt: "大阪の有名な城は何ですか？", options: ["名古屋城", "大阪城", "姫路城", "松本城"], correctAnswer: "大阪城", explanation: "大阪城は豊臣秀吉によって築かれた、大阪を代表する歴史的建造物であるためです。"),
            ExerciseItem(id: UUID(), prompt: "日本が接する国はどこですか？", options: ["中国とロシアと韓国（海を隔てて）", "インドと中国", "フランスとドイツ", "カナダとメキシコ"], correctAnswer: "中国とロシアと韓国（海を隔てて）", explanation: "日本は島国ですが、海を隔てて中国、ロシア、韓国などの近隣諸国と接しているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の面積は約何平方キロメートルですか？", options: ["9万7千平方キロ", "37万8千平方キロ", "150万平方キロ", "5万平方キロ"], correctAnswer: "37万8千平方キロ", explanation: "日本の国土面積は約37万8千平方キロメートルであるという地理的な事実に基づいています。")
        ]
    )

    // MARK: - 一般常識：文化
    private static let exercise15 = Exercise(
        id: UUID(),
        title: "一般常識：文化",
        instructions: "日本の文化に関する質問に答えてください。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "日本の伝統的なお正月の挨拶は何ですか？", options: ["明けましておめでとうございます", "こんにちは", "おやすみなさい", "いただきます"], correctAnswer: "明けましておめでとうございます", explanation: "「明けましておめでとうございます」は、新年を祝う際の日本の伝統的で最も一般的な挨拶だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な相撲で、土俵の外に出たら何と言いますか？", options: ["パーフェクト", "負け", "引き分け", "技あり"], correctAnswer: "負け", explanation: "相撲のルールにおいて、相手を土俵の外に出すことが勝利の条件であり、出た側は「負け」となるからです。"),
            ExerciseItem(id: UUID(), prompt: "食事を始める前に言う日本の言葉は何ですか？", options: ["ごちそうさまでした", "いただきます", "おやすみなさい", "ありがとう"], correctAnswer: "いただきます", explanation: "「いただきます」は、食材の命や食事を作ってくれた人への感謝を表す、食前の伝統的な挨拶だからです。"),
            ExerciseItem(id: UUID(), prompt: "食事の後に言う日本の言葉は何ですか？", options: ["いただきます", "ごちそうさまでした", "おはようございます", "こんばんは"], correctAnswer: "ごちそうさまでした", explanation: "「ごちそうさまでした」は、提供された食事に対する感謝を示す、食後の伝統的な挨拶だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統芸能で人形劇は何ですか？", options: ["能", "狂言", "文楽（人形浄瑠璃）", "歌舞伎"], correctAnswer: "文楽（人形浄瑠璃）", explanation: "文楽（人形浄瑠璃）は、太夫の語り、三味線、人形遣いが一体となった日本の伝統的な人形劇だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本のお盆に踊られる伝統的な踊りは何ですか？", options: ["フラ", "ハカ", "盆踊り", "ソーラン節"], correctAnswer: "盆踊り", explanation: "盆踊りは、お盆の時期に先祖の霊を迎え慰めるために人々が集まって踊る、日本の伝統行事だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で年の初めの書初めはいつ行いますか？", options: ["12月31日", "1月2日", "3月3日", "5月5日"], correctAnswer: "1月2日", explanation: "書初めは新年の抱負を書く行事で、伝統的に1月2日に行うと字が上達すると言い伝えられているからです。"),
            ExerciseItem(id: UUID(), prompt: "日本の女の子の節句（ひな祭り）に飾るのは何ですか？", options: ["こいのぼり", "ひな人形", "門松", "七夕飾り"], correctAnswer: "ひな人形", explanation: "3月3日のひな祭りは女の子の健やかな成長を願う行事であり、その象徴としてひな人形を飾るためです。"),
            ExerciseItem(id: UUID(), prompt: "こどもの日に飾る日本の伝統的な飾りは何ですか？", options: ["桜の枝", "こいのぼり", "柏餅だけ", "クリスマスツリー"], correctAnswer: "こいのぼり", explanation: "5月5日のこどもの日（端午の節句）には、子供の成長と立身出世を願って伝統的にこいのぼりを飾るためです。"),
            ExerciseItem(id: UUID(), prompt: "初詣で神社に行く時期はいつですか？", options: ["盆の時期", "年末年始", "春分の日", "七夕の日"], correctAnswer: "年末年始", explanation: "初詣は、新年（年末年始）に神社や寺院を参拝し、一年の平安を祈願する伝統行事だからです。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な礼儀で、お辞儀の角度が深いほど何を意味しますか？", options: ["急いでいること", "より深い敬意や謝罪", "ただの習慣", "首が痛いこと"], correctAnswer: "より深い敬意や謝罪", explanation: "日本のお辞儀の作法では、頭を下げる角度が深いほど相手への強い敬意や深い謝罪の意味を表すためです。"),
            ExerciseItem(id: UUID(), prompt: "日本語で家族のことを他人に話すとき、どちらを使いますか？", options: ["敬語（尊称）", "謙譲語（へりくだった表現）", "どちらでも同じ", "英語を使う"], correctAnswer: "謙譲語（へりくだった表現）", explanation: "日本では「ウチ」と「ソト」を区別し、自分の家族（ウチ）を他人に話す際はへりくだった謙譲語を使うのがマナーだからです。"),
            ExerciseItem(id: UUID(), prompt: "日本の伝統的な正月遊びで、羽つきは何に似ていますか？", options: ["テニス", "バドミントン", "卓球", "バレーボール"], correctAnswer: "バドミントン", explanation: "羽根つきは羽子板で羽を打ち合う遊びであり、ラケットでシャトルを打ち合うバドミントンに形態がよく似ているためです。"),
            ExerciseItem(id: UUID(), prompt: "日本の漫画（まんが）の読み方は？", options: ["左から右", "右から左", "上から下", "どちらでも同じ"], correctAnswer: "右から左", explanation: "日本の漫画は伝統的な縦書きの書籍と同じように、ページの右上から左下へと「右から左」へ読み進めるからです。"),
            ExerciseItem(id: UUID(), prompt: "日本で慶弔（お祝いやお悔やみ）の際に渡すお金のことを何と言いますか？", options: ["おこづかい", "ご祝儀・香典", "報酬", "お年玉"], correctAnswer: "ご祝儀・香典", explanation: "日本では結婚などのお祝い事には「ご祝儀」を、お葬式などのお悔やみ事には「香典」としてお金を包む習慣があるためです。")
        ]
    )
}


