import Foundation

struct JapaneseFunctionalSkillsExerciseData {

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
        exercise13
    ]

    // MARK: - 安全シナリオ
    private static let exercise1 = Exercise(
        id: UUID(),
        title: "安全シナリオ",
        instructions: "この場面で最も安全な行動を選んでください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "地震が起きたら最初に何をすべきですか？", options: ["テレビを見る", "安全な場所に隠れる", "外に出る", "電話をかける"], correctAnswer: "安全な場所に隠れる", explanation: "落下物から身を守るため、机の下など頑丈な物陰に隠れることが最優先だからです。"),
            ExerciseItem(id: UUID(), prompt: "台所でガスが臭ったら何をすべきですか？", options: ["タバコに火をつける", "換気扇を回してすぐ消す。窓を開けてガス会社に連絡", "電気をつける", "水をかける"], correctAnswer: "換気扇を回してすぐ消す。窓を開けてガス会社に連絡", explanation: "火気を使わずに換気し、ガス漏れの原因を専門業者に確認してもらう必要があるためです。"),
            ExerciseItem(id: UUID(), prompt: "知らない番号から電話がかかってきて、銀行口座の情報を求められたら？", options: ["すぐに教える", "電話を切り、直接銀行に確認する", "怒って怒鳴る", "家族に聞いてから教える"], correctAnswer: "電話を切り、直接銀行に確認する", explanation: "不審な電話をその場で信用せず、自分から正規の窓口に確認することで詐欺被害を防げるためです。"),
            ExerciseItem(id: UUID(), prompt: "薬の飲み方がわからなくなったら？", options: ["多く飲む", "薬剤師か医師に確認する", "飲まない", "インターネットで調べて自己判断する"], correctAnswer: "薬剤師か医師に確認する", explanation: "自己判断で服用方法を誤ると健康被害につながるため、専門家に確認するのが安全だからです。"),
            ExerciseItem(id: UUID(), prompt: "浴室で滑って転びそうになったら？", options: ["無視する", "手すりをつかむかゆっくり動く", "走る", "目を閉じる"], correctAnswer: "手すりをつかむかゆっくり動く", explanation: "転倒によるけがを防ぐには、急な動きを避け支えを使うことが基本だからです。"),
            ExerciseItem(id: UUID(), prompt: "外出中に胸が痛くなったら？", options: ["無理して歩き続ける", "すぐに休み、救急車を呼ぶ", "コーヒーを飲む", "仕事を続ける"], correctAnswer: "すぐに休み、救急車を呼ぶ", explanation: "胸の痛みは心臓の病気のサインである可能性があり、早急な対応が命を守るためです。"),
            ExerciseItem(id: UUID(), prompt: "コンロの火を消し忘れて外出してしまったら？", options: ["そのままにする", "すぐに戻るか、誰かに連絡して確認してもらう", "一日後に戻る", "気にしない"], correctAnswer: "すぐに戻るか、誰かに連絡して確認してもらう", explanation: "火の消し忘れは火災の原因になるため、放置せず速やかに確認する必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "電子レンジで金属製の容器を加熱してしまったら？", options: ["そのまま続ける", "すぐに止めて金属容器を取り出す", "水を入れる", "コンセントを抜く"], correctAnswer: "すぐに止めて金属容器を取り出す", explanation: "金属を電子レンジで加熱すると火花が出て発火する危険があるためです。"),
            ExerciseItem(id: UUID(), prompt: "洗面所に水が漏れているのを発見したら？", options: ["無視する", "水道の元栓を閉めて業者に連絡する", "タオルで拭くだけにする", "もっと水を出す"], correctAnswer: "水道の元栓を閉めて業者に連絡する", explanation: "水漏れを放置すると被害が拡大するため、まず元栓を閉めて止水することが先決だからです。"),
            ExerciseItem(id: UUID(), prompt: "夜中に玄関のドアが開いていることに気づいたら？", options: ["そのままにする", "すぐに鍵をかけて安全を確認する", "窓を開ける", "外に出て見回る"], correctAnswer: "すぐに鍵をかけて安全を確認する", explanation: "不審者の侵入を防ぐため、まず戸締りをして安全を確保することが優先されるからです。"),
            ExerciseItem(id: UUID(), prompt: "スーパーで知らない人が「お金を貸してください」と言ってきたら？", options: ["すぐに渡す", "丁寧に断る", "財布を見せる", "一緒に銀行へ行く"], correctAnswer: "丁寧に断る", explanation: "見知らぬ人への安易な金銭の提供はトラブルの元になるため、はっきり断るのが適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "路上で転んで立てなくなったら？", options: ["一人で立とうとし続ける", "助けを呼ぶか、119番に電話する", "動かずにそのまま横になる", "泣く"], correctAnswer: "助けを呼ぶか、119番に電話する", explanation: "無理に一人で立とうとするとけがを悪化させる恐れがあるため、周囲や救急の助けを求めるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "公共交通機関の中で不審な荷物を見つけたら？", options: ["触って確認する", "近づかずに乗務員や警察に知らせる", "持ち去る", "無視して座っていている"], correctAnswer: "近づかずに乗務員や警察に知らせる", explanation: "不審物に自分で触れると危険なため、専門の担当者に対応を任せる必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "暑い日に外出するときに注意すべきことは？", options: ["厚着をする", "水分補給をこまめにする", "走る", "窓を閉めておく"], correctAnswer: "水分補給をこまめにする", explanation: "暑さで汗をかくと体内の水分が失われ、熱中症を防ぐためにこまめな補給が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "家の中で煙が出ているのを見つけたら？", options: ["水を探す", "すぐに外に出て119番に電話する", "窓を閉める", "扇風機で風を送る"], correctAnswer: "すぐに外に出て119番に電話する", explanation: "煙は火災の初期サインであり、命を守るためにまず避難し消防に通報することが最優先だからです。"),
            ExerciseItem(id: UUID(), prompt: "夜中に体の具合が悪くなったら？", options: ["翌朝まで待つ", "救急（119番）に電話するか、家族を起こす", "水を飲む", "ストレッチをする"], correctAnswer: "救急（119番）に電話するか、家族を起こす", explanation: "夜間の体調不良は重大な病気の可能性もあるため、我慢せず早めに助けを求めるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "強い風が吹いているときに外出するときは？", options: ["傘を開く", "帽子を被り飛ばされないよう注意する", "自転車で出かける", "走って移動する"], correctAnswer: "帽子を被り飛ばされないよう注意する", explanation: "強風で物が飛ばされたり転倒したりする危険があるため、身の回りに注意することが大切だからです。"),
            ExerciseItem(id: UUID(), prompt: "食べ物が期限切れかどうかわからないとき、どうすべきですか？", options: ["食べる", "捨てる", "においを確認した上で、疑わしければ捨てる", "冷凍する"], correctAnswer: "においを確認した上で、疑わしければ捨てる", explanation: "食中毒を防ぐために、少しでも異常を感じたら口にしない判断が安全だからです。"),
            ExerciseItem(id: UUID(), prompt: "停電になったとき、まず何をすべきですか？", options: ["電気器具を全部オンにする", "懐中電灯を出し、ろうそくに火をつける際は注意する", "窓を全部開ける", "すぐに寝る"], correctAnswer: "懐中電灯を出し、ろうそくに火をつける際は注意する", explanation: "停電時は転倒や火災を防ぐため、火を使う場合は特に慎重な扱いが必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "初めて行く医院の場所がわからないとき、どうすれば良いですか？", options: ["適当に歩く", "事前に地図で確認するか、電話で道を聞く", "誰かに連れて行ってもらうより道に迷う方が良い", "行くのをやめる"], correctAnswer: "事前に地図で確認するか、電話で道を聞く", explanation: "道に迷って予約時間に遅れないよう、事前に経路を確認しておくことが大切だからです。"),
            ExerciseItem(id: UUID(), prompt: "アレルギーのある食べ物が料理に入っているかもしれないとき、どうすべきですか？", options: ["とりあえず食べてみる", "お店の人や家族に確認してから食べる", "気にせず食べる", "料理を全部捨てる"], correctAnswer: "お店の人や家族に確認してから食べる", explanation: "アレルギー反応を防ぐには、口にする前に食材の内容を確認することが不可欠だからです。"),
            ExerciseItem(id: UUID(), prompt: "外で転倒してけがをしたとき、出血していたらどうすべきですか？", options: ["走って家に帰る", "清潔な布で傷を押さえ、必要なら救急を呼ぶ", "傷口を川の水で洗う", "そのまま放置する"], correctAnswer: "清潔な布で傷を押さえ、必要なら救急を呼ぶ", explanation: "出血を止めて感染を防ぐには、清潔な布で圧迫し、状態に応じて医療機関に連絡することが必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "高齢の親族が電話で「警察だ、息子が逮捕された」という詐欺電話を受けたら？", options: ["すぐにお金を振り込む", "電話を切り、家族や警察に直接確認する", "一人で警察署に行く", "電話でお金を渡す約束をする"], correctAnswer: "電話を切り、家族や警察に直接確認する", explanation: "家族を装った詐欺の可能性が高いため、電話の内容を鵜呑みにせず自分で確認することが重要だからです。"),
            ExerciseItem(id: UUID(), prompt: "夜、駐車場を一人で歩くとき、安全のために何をすべきですか？", options: ["スマートフォンを見ながら歩く", "周囲に注意し、明るい場所を歩く", "ヘッドフォンをして音楽を聴く", "急いで走る"], correctAnswer: "周囲に注意し、明るい場所を歩く", explanation: "犯罪被害を防ぐには、周囲への注意力を保ち人目のある明るい道を選ぶことが有効だからです。"),
            ExerciseItem(id: UUID(), prompt: "台風が来る前に準備すべきことは何ですか？", options: ["窓を全開にする", "非常食と水、懐中電灯を準備する", "海辺に行って様子を見る", "普段通りに過ごす"], correctAnswer: "非常食と水、懐中電灯を準備する", explanation: "停電や外出できない状況に備え、最低限の生活必需品を事前に用意しておく必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方薬が残り少なくなってきたとき、何をすべきですか？", options: ["飲むのをやめる", "自分で量を減らす", "早めに医者に連絡して処方してもらう", "他人の薬を借りる"], correctAnswer: "早めに医者に連絡して処方してもらう", explanation: "薬が切れてから慌てないよう、余裕を持って再処方を依頼することが望ましいからです。"),
            ExerciseItem(id: UUID(), prompt: "雨上がりの道を歩くとき、特に注意すべきことは？", options: ["速く歩く", "濡れた路面で滑らないようゆっくり歩く", "目をつぶって歩く", "走る"], correctAnswer: "濡れた路面で滑らないようゆっくり歩く", explanation: "濡れた地面は滑りやすく転倒の危険が高いため、慎重に歩くことが必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "見知らぬ人が家に入ってきて業者と名乗ったとき、どうすべきですか？", options: ["すぐに家に入れる", "身分証を確認し、事前に予約があったか確認する", "玄関に鍵をかけずに話す", "玄関を開けたまま立ち去る"], correctAnswer: "身分証を確認し、事前に予約があったか確認する", explanation: "悪質な訪問業者や空き巣を防ぐため、身元と訪問の正当性を確認することが必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "ひどい頭痛が突然始まったとき、特に注意すべきことは？", options: ["鎮痛剤を大量に飲む", "医療機関に相談する（脳卒中の可能性もある）", "そのまま寝る", "コーヒーを飲む"], correctAnswer: "医療機関に相談する（脳卒中の可能性もある）", explanation: "突然の激しい頭痛は重大な病気の前兆であることがあるため、自己判断せず受診が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "スーパーのATMで誰かが後ろから覗いていたら？", options: ["素早く操作し続ける", "ATMの操作を中断し、別の場所か時間を選ぶ", "怒鳴る", "振り返って話しかける"], correctAnswer: "ATMの操作を中断し、別の場所か時間を選ぶ", explanation: "暗証番号を盗み見られる犯罪被害を防ぐため、操作を中止して安全な状況に変えることが大切だからです。")
        ]
    )

    // MARK: - 料理の手順
    private static let exercise2 = Exercise(
        id: UUID(),
        title: "料理の手順",
        instructions: "正しい順序に並び替えてください。",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "味噌汁の作り方は？", options: ["だしを取る", "具材を入れて煮る", "味噌を溶き入れる", "材料を準備する"], correctAnswer: "材料を準備する | だしを取る | 具材を入れて煮る | 味噌を溶き入れる", explanation: "先にだしを取ってから具材を煮て、風味を損なわないよう最後に味噌を加えるのが基本の手順だからです。"),
            ExerciseItem(id: UUID(), prompt: "ご飯の炊き方は？", options: ["炊飯ボタンを押す", "お米を研ぐ", "炊き上がったら蒸らす", "水を入れる"], correctAnswer: "お米を研ぐ | 水を入れる | 炊飯ボタンを押す | 炊き上がったら蒸らす", explanation: "汚れを落としてから吸水させて炊き、炊き上がり後に蒸らすことでふっくら仕上がるからです。"),
            ExerciseItem(id: UUID(), prompt: "おにぎりの作り方は？", options: ["海苔で巻く", "具材を用意する", "ご飯を炊く", "手でご飯を握る"], correctAnswer: "ご飯を炊く | 具材を用意する | 手でご飯を握る | 海苔で巻く", explanation: "ご飯が炊けてから具材を包んで握り、最後に海苔を巻くことで型崩れを防げるからです。"),
            ExerciseItem(id: UUID(), prompt: "目玉焼きの作り方は？", options: ["フライパンを温める", "塩をかけて食べる", "卵を割り入れる", "油をひく"], correctAnswer: "フライパンを温める | 油をひく | 卵を割り入れる | 塩をかけて食べる", explanation: "フライパンと油を温めてから卵を割り入れることで、くっつかずきれいに焼けるからです。"),
            ExerciseItem(id: UUID(), prompt: "お茶を入れる手順は？", options: ["急須に茶葉を入れる", "お湯を沸かす", "湯呑みに注ぐ", "お湯を急須に注ぐ"], correctAnswer: "お湯を沸かす | 急須に茶葉を入れる | お湯を急須に注ぐ | 湯呑みに注ぐ", explanation: "茶葉にお湯を注いでから抽出し、湯呑みへ注ぐという流れが自然な入れ方だからです。"),
            ExerciseItem(id: UUID(), prompt: "野菜炒めの作り方は？", options: ["調味料で味を整える", "野菜を切る", "フライパンを熱して油をひく", "野菜を炒める"], correctAnswer: "野菜を切る | フライパンを熱して油をひく | 野菜を炒める | 調味料で味を整える", explanation: "下ごしらえを済ませてから加熱調理し、最後に味を調えるのが調理の基本順序だからです。"),
            ExerciseItem(id: UUID(), prompt: "卵焼きの作り方は？", options: ["巻いて形を整える", "卵を割ってといた後に調味料を混ぜる", "フライパンを温める", "卵液を注いで焼く"], correctAnswer: "フライパンを温める | 卵を割ってといた後に調味料を混ぜる | 卵液を注いで焼く | 巻いて形を整える", explanation: "卵液を用意してから焼き、焼きながら巻いて形を作るという工程順になるからです。"),
            ExerciseItem(id: UUID(), prompt: "うどんを作る手順は？", options: ["麺を入れて茹でる", "つゆを作る", "お湯を沸かす", "麺を水でしめる"], correctAnswer: "お湯を沸かす | 麺を入れて茹でる | 麺を水でしめる | つゆを作る", explanation: "麺を茹でて締めた後につゆを合わせることで、コシのある食感に仕上がるからです。"),
            ExerciseItem(id: UUID(), prompt: "天ぷらを揚げる手順は？", options: ["熱い油で揚げる", "材料を準備する", "衣（てんぷら粉と水）を作る", "材料に衣をつける"], correctAnswer: "材料を準備する | 衣（てんぷら粉と水）を作る | 材料に衣をつける | 熱い油で揚げる", explanation: "具材と衣を用意してから衣をつけ、最後に高温の油で揚げるのが正しい調理順だからです。"),
            ExerciseItem(id: UUID(), prompt: "浅漬けを作る手順は？", options: ["野菜を切る", "塩や調味料で漬ける", "数時間おく", "野菜を洗う"], correctAnswer: "野菜を洗う | 野菜を切る | 塩や調味料で漬ける | 数時間おく", explanation: "洗浄・カットしてから漬け込み、時間をおいて味をなじませる工程が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "から揚げを作る手順は？", options: ["油で揚げる", "鶏肉を切る", "醤油やしょうがで下味をつける", "片栗粉をまぶす"], correctAnswer: "鶏肉を切る | 醤油やしょうがで下味をつける | 片栗粉をまぶす | 油で揚げる", explanation: "下味をつけてから粉をまぶして揚げることで、味がしみ込みつつ衣がカリッと仕上がるからです。"),
            ExerciseItem(id: UUID(), prompt: "お吸い物を作る手順は？", options: ["だしを取る", "具材を入れて温める", "塩と醤油で味を整える", "材料を準備する"], correctAnswer: "材料を準備する | だしを取る | 具材を入れて温める | 塩と醤油で味を整える", explanation: "だしを取ってから具材を温め、最後に調味料で味を調える順番が基本だからです。"),
            ExerciseItem(id: UUID(), prompt: "サラダを作る手順は？", options: ["ドレッシングをかける", "野菜を切る", "野菜を洗う", "器に盛る"], correctAnswer: "野菜を洗う | 野菜を切る | 器に盛る | ドレッシングをかける", explanation: "野菜を洗って切り、盛り付けた後にドレッシングをかけることで味がぼやけずに仕上がるからです。"),
            ExerciseItem(id: UUID(), prompt: "焼きおにぎりを作る手順は？", options: ["フライパンで両面焼く", "おにぎりを握る", "醤油を塗る", "ご飯を炊く"], correctAnswer: "ご飯を炊く | おにぎりを握る | 醤油を塗る | フライパンで両面焼く", explanation: "おにぎりを握ってから調味料を塗って焼くことで、香ばしい焼き目がつくからです。"),
            ExerciseItem(id: UUID(), prompt: "ざるそばを作る手順は？", options: ["めんつゆを用意する", "そばを茹でる", "お湯を沸かす", "水でしめてざるに盛る"], correctAnswer: "お湯を沸かす | そばを茹でる | 水でしめてざるに盛る | めんつゆを用意する", explanation: "そばを茹でて締めることでコシが出て、つゆは別に用意するのが一般的な手順だからです。"),
            ExerciseItem(id: UUID(), prompt: "豆腐の味噌汁を作る手順は？", options: ["豆腐を入れる", "味噌を溶かす", "だしを沸かす", "お椀に盛る"], correctAnswer: "だしを沸かす | 豆腐を入れる | 味噌を溶かす | お椀に盛る", explanation: "だしを沸かしてから具材の豆腐を煮て、最後に味噌を溶かし入れる流れが基本だからです。"),
            ExerciseItem(id: UUID(), prompt: "親子丼を作る手順は？", options: ["卵でとじる", "鶏肉を切って調味料で煮る", "ご飯を炊く", "丼にご飯を盛る"], correctAnswer: "ご飯を炊く | 鶏肉を切って調味料で煮る | 卵でとじる | 丼にご飯を盛る", explanation: "鶏肉を煮てから卵でとじ、炊いたご飯の上に盛り付けるという調理順だからです。"),
            ExerciseItem(id: UUID(), prompt: "お弁当を作る手順は？", options: ["冷ましてから蓋をする", "ご飯とおかずを作る", "弁当箱に詰める", "材料を準備する"], correctAnswer: "材料を準備する | ご飯とおかずを作る | 弁当箱に詰める | 冷ましてから蓋をする", explanation: "調理後に冷ましてから蓋をすることで、蒸気による傷みを防げるからです。"),
            ExerciseItem(id: UUID(), prompt: "冷奴を作る手順は？", options: ["豆腐を冷やす", "豆腐を切る", "薬味（ねぎ・生姜）を用意する", "醤油をかける"], correctAnswer: "豆腐を冷やす | 豆腐を切る | 薬味（ねぎ・生姜）を用意する | 醤油をかける", explanation: "豆腐を冷やしてから切り分け、薬味と調味料を添えて仕上げる順番だからです。"),
            ExerciseItem(id: UUID(), prompt: "和菓子（練り切り）を作る手順は？", options: ["形を整えて仕上げる", "白餡（しろあん）を準備する", "食紅で色を付ける", "餡を練る"], correctAnswer: "白餡（しろあん）を準備する | 餡を練る | 食紅で色を付ける | 形を整えて仕上げる", explanation: "餡を練って色をつけた後に、最後に成形して仕上げるのが練り切り作りの手順だからです。")
        ]
    )

    // MARK: - 日常生活スキル
    private static let exercise3 = Exercise(
        id: UUID(),
        title: "日常生活スキル",
        instructions: "日常生活の問題に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "洗濯物を干す前に何をすべきですか？", options: ["乾燥機に入れる", "洗濯機で洗う", "アイロンをかける", "折りたたむ"], correctAnswer: "洗濯機で洗う", explanation: "干す前には汚れを落とすため洗濯機で洗う工程が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "冷蔵庫の食品が腐りそうなとき、どうすれば良いですか？", options: ["そのまま放置する", "早めに使い切るか冷凍する", "室温に出す", "捨てずにずっと置く"], correctAnswer: "早めに使い切るか冷凍する", explanation: "傷みが進む前に消費するか冷凍保存することで食品ロスを防げるからです。"),
            ExerciseItem(id: UUID(), prompt: "郵便局で荷物を送るとき、まず何をしますか？", options: ["荷物を投げる", "荷物を梱包して住所を書く", "走って届ける", "料金を先に払う"], correctAnswer: "荷物を梱包して住所を書く", explanation: "配送のためにはまず荷物を安全に梱包し、宛先を明記する必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "掃除機をかける前に何をすべきですか？", options: ["家具を動かす", "床に落ちているものを片付ける", "窓を閉める", "電気を消す"], correctAnswer: "床に落ちているものを片付ける", explanation: "小物を吸い込んで故障させないよう、事前に床の物を片付ける必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "鍵を紛失したとき、最初にすべきことは何ですか？", options: ["ドアを壊す", "もう一度よく探す", "鍵業者を呼ぶ", "引越しする"], correctAnswer: "もう一度よく探す", explanation: "鍵業者を呼ぶ前に、まず身近な場所を確認するのが手間と費用を抑える第一歩だからです。"),
            ExerciseItem(id: UUID(), prompt: "電気代を節約するために何ができますか？", options: ["電気を全部つけたままにする", "使わない電気は消す", "窓を開けっぱなしにする", "機器を修理する"], correctAnswer: "使わない電気は消す", explanation: "不要な照明や機器の電源を切ることが、最も基本的で効果的な節電方法だからです。"),
            ExerciseItem(id: UUID(), prompt: "衣類を長持ちさせるために何をすべきですか？", options: ["毎日強く絞る", "洗濯表示に従って洗う", "高温で乾かす", "水につけたままにする"], correctAnswer: "洗濯表示に従って洗う", explanation: "素材に合わない洗い方は生地を傷めるため、表示通りに扱うことが長持ちの秘訣だからです。"),
            ExerciseItem(id: UUID(), prompt: "歯医者の予約を忘れてしまったとき、どうすべきですか？", options: ["行かない", "すぐに電話してお詫びし、再予約する", "黙っている", "別の歯医者に行く"], correctAnswer: "すぐに電話してお詫びし、再予約する", explanation: "無断キャンセルにならないよう早めに連絡し、改めて予約を取り直すのが適切な対応だからです。"),
            ExerciseItem(id: UUID(), prompt: "台所をきれいに保つために何をすべきですか？", options: ["料理をしない", "調理後はすぐに洗い物をする", "汚れを放置する", "全部捨てる"], correctAnswer: "調理後はすぐに洗い物をする", explanation: "汚れをためずにすぐ洗うことで、衛生的な状態を保ちやすくなるからです。"),
            ExerciseItem(id: UUID(), prompt: "医師から「水分を多く取ってください」と言われたら、何をすべきですか？", options: ["お酒を多く飲む", "水やお茶を意識的に飲む", "汁物をやめる", "食事を減らす"], correctAnswer: "水やお茶を意識的に飲む", explanation: "指示に沿って日常的に水分摂取量を増やす工夫が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "薬を複数種類飲んでいる場合、どのように管理すれば良いですか？", options: ["全部一緒に袋に入れる", "薬のケースやお薬手帳で管理する", "記憶だけに頼る", "処方箋を捨てる"], correctAnswer: "薬のケースやお薬手帳で管理する", explanation: "飲み忘れや飲み間違いを防ぐために、記録や仕分けの道具を活用することが有効だからです。"),
            ExerciseItem(id: UUID(), prompt: "古くなった食用油を捨てるとき、どうすれば良いですか？", options: ["そのまま流しに捨てる", "新聞紙に染み込ませて燃えるごみに捨てる", "外に捨てる", "料理に使い続ける"], correctAnswer: "新聞紙に染み込ませて燃えるごみに捨てる", explanation: "排水口に流すと詰まりの原因になるため、紙に吸わせて可燃ごみとして処分するのが適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "ガスコンロを使い終わったら何をすべきですか？", options: ["そのまま放置する", "ガスの元栓を閉める", "コンロの上に物を置く", "電源を抜く"], correctAnswer: "ガスの元栓を閉める", explanation: "ガス漏れや火災を防ぐため、使用後は元栓をしっかり閉める習慣が大切だからです。"),
            ExerciseItem(id: UUID(), prompt: "外出前にすべき確認事項はどれですか？", options: ["靴下だけ確認する", "鍵・財布・必要な持ち物を確認する", "何も確認しない", "鏡だけ見る"], correctAnswer: "鍵・財布・必要な持ち物を確認する", explanation: "忘れ物によるトラブルを防ぐため、必需品を一通り確認してから出かけるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "睡眠を改善するために何ができますか？", options: ["就寝前に激しい運動をする", "毎日同じ時間に寝起きする", "夜遅くまでテレビを見る", "コーヒーを寝る前に飲む"], correctAnswer: "毎日同じ時間に寝起きする", explanation: "規則正しい生活リズムを保つことが、質の良い睡眠につながるからです。"),
            ExerciseItem(id: UUID(), prompt: "食器を洗う正しい順序は？", options: ["油汚れのものから先に洗う", "グラスなど繊細なものから先に洗う", "鍋から先に洗う", "順序は関係ない"], correctAnswer: "グラスなど繊細なものから先に洗う", explanation: "油汚れの少ないものから洗うことで、汚れが移らずきれいに洗えるからです。"),
            ExerciseItem(id: UUID(), prompt: "ゴミを出す前に何をすべきですか？", options: ["ゴミ袋を破く", "ゴミを種類ごとに分別する", "ゴミを外に出す", "ゴミ袋を重くする"], correctAnswer: "ゴミを種類ごとに分別する", explanation: "収集ルールに従って正しく分別することが、円滑なごみ収集につながるからです。"),
            ExerciseItem(id: UUID(), prompt: "冷凍食品を正しく解凍するには？", options: ["直射日光に当てる", "冷蔵庫でゆっくり解凍するか電子レンジを使う", "熱湯につける", "そのまま調理する（解凍不要のものを除く）"], correctAnswer: "冷蔵庫でゆっくり解凍するか電子レンジを使う", explanation: "常温や熱湯での急な解凍は品質や衛生面のリスクがあるため、適切な方法を選ぶ必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "バスや電車で高齢者や体の不自由な方が乗ってきたら？", options: ["目をそらす", "席を譲る", "荷物を広げる", "寝たふりをする"], correctAnswer: "席を譲る", explanation: "体の負担が大きい方への思いやりとして、席を譲ることが基本的なマナーだからです。"),
            ExerciseItem(id: UUID(), prompt: "窓を閉め忘れて雨が入ってきてしまったら？", options: ["放置する", "すぐに窓を閉めて床を拭く", "ドアも開ける", "扇風機をかける"], correctAnswer: "すぐに窓を閉めて床を拭く", explanation: "被害の拡大を防ぐため、まず窓を閉めてから濡れた部分の手入れをする必要があるからです。")
        ]
    )

    // MARK: - 時間感覚
    private static let exercise4 = Exercise(
        id: UUID(),
        title: "時間感覚",
        instructions: "時間に関する質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "1時間は何分ですか？", options: ["30分", "45分", "60分", "90分"], correctAnswer: "60分", explanation: "時間の単位として1時間はちょうど60分と定義されているからです。"),
            ExerciseItem(id: UUID(), prompt: "午前9時30分の1時間後は何時ですか？", options: ["午前9時", "午前10時", "午前10時30分", "午前11時"], correctAnswer: "午前10時30分", explanation: "9時30分に1時間を足すと、時針が1つ進んで10時30分になるからです。"),
            ExerciseItem(id: UUID(), prompt: "今日が水曜日なら、3日後は何曜日ですか？", options: ["木曜日", "金曜日", "土曜日", "日曜日"], correctAnswer: "土曜日", explanation: "水・木・金・土と数えると、3日後は土曜日にあたるからです。"),
            ExerciseItem(id: UUID(), prompt: "今日が1月28日なら、1週間後は何日ですか？", options: ["2月1日", "2月4日", "2月5日", "2月7日"], correctAnswer: "2月4日", explanation: "1月は31日まであるため、28日の7日後は2月4日になるからです。"),
            ExerciseItem(id: UUID(), prompt: "30分前が午後2時15分なら、今は何時ですか？", options: ["午後1時45分", "午後2時00分", "午後2時30分", "午後2時45分"], correctAnswer: "午後2時45分", explanation: "2時15分から30分進めると2時45分になるからです。"),
            ExerciseItem(id: UUID(), prompt: "1年は何ヶ月ですか？", options: ["10ヶ月", "11ヶ月", "12ヶ月", "13ヶ月"], correctAnswer: "12ヶ月", explanation: "1年は1月から12月までの12の月で構成されているからです。"),
            ExerciseItem(id: UUID(), prompt: "2月は通常何日ありますか？", options: ["28日または29日", "30日", "31日", "27日"], correctAnswer: "28日または29日", explanation: "2月はうるう年かどうかで28日または29日になるためです。"),
            ExerciseItem(id: UUID(), prompt: "午後3時から午後5時30分まで何時間何分ありますか？", options: ["1時間30分", "2時間", "2時間30分", "3時間"], correctAnswer: "2時間30分", explanation: "3時から5時30分までの経過時間を計算すると2時間30分になるからです。"),
            ExerciseItem(id: UUID(), prompt: "朝8時に出発して2時間後に到着した場合、何時に到着しましたか？", options: ["午前9時", "午前10時", "午前11時", "正午"], correctAnswer: "午前10時", explanation: "8時に2時間を足すと10時になるからです。"),
            ExerciseItem(id: UUID(), prompt: "今月が8月なら、2ヶ月後は何月ですか？", options: ["9月", "10月", "11月", "12月"], correctAnswer: "10月", explanation: "8月から2ヶ月進むと10月になるからです。"),
            ExerciseItem(id: UUID(), prompt: "週に3回通院する場合、4週間で何回通院しますか？", options: ["8回", "10回", "12回", "14回"], correctAnswer: "12回", explanation: "1週間に3回を4週間続けると、3×4で12回になるからです。"),
            ExerciseItem(id: UUID(), prompt: "午前11時30分の30分後は何時ですか？", options: ["午前11時", "午前11時45分", "正午", "午後0時30分"], correctAnswer: "正午", explanation: "11時30分に30分を足すとちょうど12時（正午）になるからです。"),
            ExerciseItem(id: UUID(), prompt: "月曜日から金曜日まで働くと、1週間に何日働きますか？", options: ["4日", "5日", "6日", "7日"], correctAnswer: "5日", explanation: "月曜日から金曜日までは5日間あるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬を「8時間ごと」に飲む場合、朝8時に飲んだら次はいつ飲みますか？", options: ["午後2時", "午後3時", "午後4時", "午後6時"], correctAnswer: "午後4時", explanation: "朝8時から8時間後は午後4時になるからです。"),
            ExerciseItem(id: UUID(), prompt: "1日は何時間ですか？", options: ["12時間", "20時間", "24時間", "48時間"], correctAnswer: "24時間", explanation: "1日は24時間で構成されていると定義されているからです。"),
            ExerciseItem(id: UUID(), prompt: "午後の時間帯はいつですか？", options: ["0時〜12時", "12時〜24時", "6時〜12時", "0時〜6時"], correctAnswer: "12時〜24時", explanation: "正午（12時）から夜の12時（24時）までが午後にあたるからです。")
        ]
    )

    // MARK: - 計算：買い物
    private static let exercise5 = Exercise(
        id: UUID(),
        title: "計算：買い物",
        instructions: "買い物の計算をしてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "りんご1個が200円で、3個買ったら合計いくらですか？", options: ["400円", "500円", "600円", "700円"], correctAnswer: "600円", explanation: "1個200円のりんごを3個買うと、200×3で600円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "1,000円を持って500円の商品を買ったら、お釣りはいくらですか？", options: ["400円", "450円", "500円", "600円"], correctAnswer: "500円", explanation: "1,000円から500円を引くとお釣りは500円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "豆腐1丁が98円、2丁買ったら合計いくらですか？", options: ["168円", "178円", "196円", "200円"], correctAnswer: "196円", explanation: "98円の豆腐2丁分は、98×2で196円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "2,000円持って800円の昼食を食べたら、残りはいくらですか？", options: ["1,000円", "1,100円", "1,200円", "1,300円"], correctAnswer: "1,200円", explanation: "2,000円から800円を引くと残りは1,200円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "みかんが1袋400円で、20%引きセールなら、いくらですか？", options: ["300円", "320円", "340円", "360円"], correctAnswer: "320円", explanation: "400円の20%（80円）を差し引くと320円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "300円のお茶と150円のお菓子を買ったら合計いくらですか？", options: ["350円", "400円", "450円", "500円"], correctAnswer: "450円", explanation: "300円と150円を合計すると450円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "5,000円のご祝儀袋に3,000円を入れると、5,000円から引いてお釣りがいくらありますか？", options: ["1,000円", "2,000円", "3,000円", "4,000円"], correctAnswer: "2,000円", explanation: "5,000円から3,000円を引くとお釣りは2,000円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "鮭の切り身1切れが480円で、2切れ買ったら合計いくらですか？", options: ["780円", "860円", "920円", "960円"], correctAnswer: "960円", explanation: "480円の鮭を2切れ買うと、480×2で960円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "1個120円のおにぎりを4個買うと合計いくらですか？", options: ["360円", "420円", "480円", "540円"], correctAnswer: "480円", explanation: "120円のおにぎり4個分は、120×4で480円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "スーパーで3種類の野菜（200円、150円、100円）を買ったら合計いくらですか？", options: ["350円", "400円", "450円", "500円"], correctAnswer: "450円", explanation: "3種類の野菜の値段を合計すると450円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "1,000円で300円のものを買い、200円のものも買ったら、残りはいくらですか？", options: ["400円", "500円", "600円", "700円"], correctAnswer: "500円", explanation: "1,000円から300円と200円の合計500円を引くと、残りは500円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "お茶が1本150円、6本買ったら合計いくらですか？", options: ["750円", "800円", "850円", "900円"], correctAnswer: "900円", explanation: "150円のお茶を6本買うと、150×6で900円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "1,500円の定食を2人分頼んだら合計いくらですか？", options: ["2,500円", "2,800円", "3,000円", "3,500円"], correctAnswer: "3,000円", explanation: "1,500円の定食2人分は、1,500×2で3,000円になるからです。")
        ]
    )

    // MARK: - 処方箋を読む
    private static let exercise6 = Exercise(
        id: UUID(),
        title: "処方箋を読む",
        instructions: "薬の指示を読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "処方箋に「1日3回、毎食後に1錠」と書いてあります。1日に何錠飲みますか？", options: ["1錠", "2錠", "3錠", "4錠"], correctAnswer: "3錠", explanation: "1回1錠を3回服用するため、1日の合計は3錠になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「就寝前に服用」と書いてあります。いつ飲みますか？", options: ["朝起きてすぐ", "昼食後", "夕食前", "寝る前"], correctAnswer: "寝る前", explanation: "「就寝前」とは眠りにつく直前の時間を指す表現だからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「食前30分に服用」とあります。昼食が12時なら、何時に飲みますか？", options: ["11時00分", "11時30分", "12時00分", "12時30分"], correctAnswer: "11時30分", explanation: "12時の30分前を計算すると11時30分になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の指示に「水でお飲みください（牛乳不可）」とあります。何で飲みますか？", options: ["牛乳", "ジュース", "水", "お茶"], correctAnswer: "水", explanation: "牛乳は薬の吸収や効果に影響することがあるため、水で服用するよう指示されているからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「7日分処方」と書いてあります。何日分ありますか？", options: ["5日", "6日", "7日", "14日"], correctAnswer: "7日", explanation: "処方箋に明記された日数分の薬が渡されるためです。"),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「副作用：眠くなる場合があります」とあります。この薬を飲んで車を運転するのは？", options: ["安全", "危険", "問題ない", "必ず眠くなる"], correctAnswer: "危険", explanation: "眠気を伴う薬の服用後は判断力や反応が鈍るため、運転は事故の危険が高まるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「食後2時間以上あけて服用」とあります。昼食が12時なら最も早くいつ飲めますか？", options: ["午後1時", "午後1時30分", "午後2時", "午後2時30分"], correctAnswer: "午後2時", explanation: "12時の2時間後を計算すると午後2時になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬に「アレルギー反応が出たらすぐに医師へ」とあります。発疹が出たら？", options: ["もっと薬を飲む", "無視する", "すぐに医師に連絡する", "薬を倍量飲む"], correctAnswer: "すぐに医師に連絡する", explanation: "症状の悪化を防ぐため、異変を感じたら速やかに専門家へ相談する必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「1日2回、朝と夕方に服用」とあります。次に飲む時間はいつですか（朝8時に飲んだ場合）？", options: ["昼12時", "午後3時", "夕方6時頃", "翌朝"], correctAnswer: "夕方6時頃", explanation: "朝と夕方の約12時間おきの服用間隔を考えると、次は夕方6時頃になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬のラベルに「直射日光を避けて保管」と書いてあります。どこに保管しますか？", options: ["窓際", "日当たりの良い棚", "暗くて涼しい場所", "冷凍庫"], correctAnswer: "暗くて涼しい場所", explanation: "薬の品質を保つには、光や熱の影響を受けにくい場所で保管する必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋の薬が「1回2錠、1日3回」の場合、1日に何錠飲みますか？", options: ["3錠", "4錠", "6錠", "8錠"], correctAnswer: "6錠", explanation: "1回2錠を3回服用するため、2×3で1日6錠になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の指示に「この薬は他の人に渡さないでください」とあります。どうすべきですか？", options: ["家族に分ける", "他人に渡す", "自分だけで使う", "余ったら捨てる"], correctAnswer: "自分だけで使う", explanation: "処方薬は個人の症状に合わせたものであり、他人が使うと危険なため自分だけで服用するべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「28日分処方、次回受診は4週間後」とあります。何日後に受診しますか？", options: ["14日後", "21日後", "28日後", "35日後"], correctAnswer: "28日後", explanation: "4週間は28日に相当するため、次回受診も28日後になるからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の袋に「期限：2025年3月」とあります。2025年4月に使っても大丈夫ですか？", options: ["はい、問題ない", "期限切れなので使わない方が良い", "少しなら良い", "冷凍すれば良い"], correctAnswer: "期限切れなので使わない方が良い", explanation: "表示された使用期限を過ぎた薬は、効果や安全性が保証されないため使用を避けるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "処方箋に「食間に服用」と書いてあります。いつ飲みますか？", options: ["食事中", "食事直後", "食事と食事の間", "就寝前"], correctAnswer: "食事と食事の間", explanation: "「食間」とは食事の最中ではなく、前の食事と次の食事の間の時間を指す表現だからです。")
        ]
    )

    // MARK: - メニューを読む
    private static let exercise7 = Exercise(
        id: UUID(),
        title: "メニューを読む",
        instructions: "メニューを読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "メニューに「にぎり寿司 1,200円、お吸い物 200円」とあります。両方注文するといくらですか？", options: ["1,200円", "1,300円", "1,400円", "1,600円"], correctAnswer: "1,400円", explanation: "2品の価格を合計すると1,400円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "定食Aは「ご飯・お味噌汁・メイン料理」のセットです。「ご飯大盛り 追加100円」とあります。大盛りにするといくら追加しますか？", options: ["50円", "100円", "150円", "200円"], correctAnswer: "100円", explanation: "メニューに明記された追加料金がそのまま加算されるからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「アレルギー情報：エビ・ソバ使用」と書いてあります。ソバアレルギーの方は何をすべきですか？", options: ["そのまま食べる", "このメニューは避けてスタッフに確認する", "アレルギー成分を取り除いて食べる", "少量だけ食べる"], correctAnswer: "このメニューは避けてスタッフに確認する", explanation: "アレルギー成分が含まれると分かっている以上、口にせずスタッフに確認するのが安全だからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「本日のランチ 11:00〜14:00のみ」とあります。午後3時に行ってもランチは食べられますか？", options: ["はい、食べられる", "いいえ、時間外", "要確認", "土日のみ可能"], correctAnswer: "いいえ、時間外", explanation: "提供時間の終了後であるため、ランチメニューは注文できないからです。"),
            ExerciseItem(id: UUID(), prompt: "お弁当メニューに「Aセット：唐揚げ弁当 680円、Bセット：焼き魚弁当 750円」とあります。Bセットの方がいくら高いですか？", options: ["50円", "70円", "80円", "100円"], correctAnswer: "70円", explanation: "750円から680円を引くと70円の差になるからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「お茶は無料サービス」とあります。お茶を頼んだら料金はいくらですか？", options: ["100円", "200円", "0円（無料）", "50円"], correctAnswer: "0円（無料）", explanation: "メニューに「無料サービス」と明記されているため料金は発生しないからです。"),
            ExerciseItem(id: UUID(), prompt: "「本日の特別料理：カレーライス（普通辛さ・辛口）」とあります。辛い料理が苦手な場合、どちらを選べばよいですか？", options: ["辛口", "普通辛さ", "両方注文する", "どちらも同じ"], correctAnswer: "普通辛さ", explanation: "辛さを抑えたい場合は「辛口」ではなく「普通辛さ」を選ぶのが適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「デザート：抹茶アイス 350円、ぜんざい 400円」とあります。ぜんざいはアイスよりいくら高いですか？", options: ["25円", "50円", "75円", "100円"], correctAnswer: "50円", explanation: "400円から350円を引くと50円の差になるからです。"),
            ExerciseItem(id: UUID(), prompt: "ランチセット「A・うどん定食 850円、B・そば定食 900円、C・天ぷら定食 1,100円」。一番安いセットはどれですか？", options: ["A・うどん定食", "B・そば定食", "C・天ぷら定食", "全部同じ"], correctAnswer: "A・うどん定食", explanation: "3つの価格を比べると、850円のうどん定食が最も安いからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「お子様ランチは12歳以下のお客様限定」とあります。65歳の方は注文できますか？", options: ["はい", "いいえ", "要確認", "割引がある"], correctAnswer: "いいえ", explanation: "対象年齢の条件に当てはまらないため注文できないからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「税込み価格」と書いてあります。表示価格の他に税金は加算されますか？", options: ["加算される", "加算されない（税込み）", "10%加算される", "5%加算される"], correctAnswer: "加算されない（税込み）", explanation: "「税込み」と表示されている以上、表示価格の他に税金が追加されることはないからです。"),
            ExerciseItem(id: UUID(), prompt: "「本日休業日：毎週火曜日定休」とあります。火曜日に行っても食事できますか？", options: ["はい", "いいえ", "昼のみ可能", "予約があれば可能"], correctAnswer: "いいえ", explanation: "定休日と明記されている以上、その日は営業していないからです。"),
            ExerciseItem(id: UUID(), prompt: "料理の説明に「糖質制限メニュー」とあります。このメニューは何に配慮していますか？", options: ["塩分", "糖分（炭水化物）", "脂質", "カロリー"], correctAnswer: "糖分（炭水化物）", explanation: "「糖質」とは炭水化物に含まれる糖分を指すため、その量に配慮したメニューであるからです。"),
            ExerciseItem(id: UUID(), prompt: "飲み物メニューに「お代わり自由：コーヒーまたは紅茶」とあります。コーヒーを2杯飲んだら追加料金がかかりますか？", options: ["かかる", "かからない", "1杯まで無料", "半額になる"], correctAnswer: "かからない", explanation: "「お代わり自由」と明記されているため、何杯飲んでも追加料金は発生しないからです。"),
            ExerciseItem(id: UUID(), prompt: "メニューに「冷やし中華：夏季限定（7月〜9月）」とあります。12月に注文できますか？", options: ["はい", "いいえ", "店員に確認", "特別注文で可"], correctAnswer: "いいえ", explanation: "提供期間が7月から9月までと限定されているため、12月には注文できないからです。")
        ]
    )

    // MARK: - 請求書を理解する
    private static let exercise8 = Exercise(
        id: UUID(),
        title: "請求書を理解する",
        instructions: "請求書や領収書を読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "電気代の請求書に「今月の使用量：200kWh、料金：6,000円」とあります。1kWhあたりいくらですか？", options: ["25円", "30円", "35円", "40円"], correctAnswer: "30円", explanation: "6,000円を200kWhで割ると、1kWhあたり30円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「お支払い期限：月末まで」とあります。今日が10月25日なら、支払いはいつまでですか？", options: ["10月28日", "10月30日", "10月31日", "11月1日"], correctAnswer: "10月31日", explanation: "10月の最終日は31日であるため、支払い期限は10月31日になるからです。"),
            ExerciseItem(id: UUID(), prompt: "電話料金の請求書に「基本料金：1,500円、通話料金：800円」とあります。合計いくらですか？", options: ["2,100円", "2,200円", "2,300円", "2,400円"], correctAnswer: "2,300円", explanation: "2つの料金を合計すると2,300円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「未払い残高：3,000円」と書いてあります。これはどういう意味ですか？", options: ["3,000円のお釣りがある", "3,000円まだ支払っていない", "3,000円余分に支払った", "口座残高が3,000円"], correctAnswer: "3,000円まだ支払っていない", explanation: "「未払い」とは支払いが済んでいない金額を意味する表現だからです。"),
            ExerciseItem(id: UUID(), prompt: "水道代の請求書に「2ヶ月分：4,800円」とあります。1ヶ月あたりいくらですか？", options: ["2,000円", "2,400円", "2,800円", "3,200円"], correctAnswer: "2,400円", explanation: "4,800円を2ヶ月で割ると、1ヶ月あたり2,400円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「自動引き落とし日：毎月27日」とあります。残高がないとどうなりますか？", options: ["自動で追加される", "引き落としができず延滞になる可能性", "自動的に延期される", "無料になる"], correctAnswer: "引き落としができず延滞になる可能性", explanation: "口座残高が不足していると、支払いが実行されず延滞扱いになる恐れがあるからです。"),
            ExerciseItem(id: UUID(), prompt: "ガス代の請求書で「前月比25%増加」と書いてあります。先月が2,000円なら今月はいくらですか？", options: ["2,200円", "2,300円", "2,500円", "2,600円"], correctAnswer: "2,500円", explanation: "2,000円の25%（500円）を足すと2,500円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "医療費の明細書に「自己負担額：3割」と書いてあります。総額が10,000円の場合、支払いはいくらですか？", options: ["2,000円", "3,000円", "4,000円", "5,000円"], correctAnswer: "3,000円", explanation: "10,000円の3割を計算すると3,000円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「領収書が必要な場合はお申し出ください」とあります。領収書はどうやってもらいますか？", options: ["自分で作る", "お申し出（リクエスト）すればもらえる", "自動で届く", "インターネットで取得"], correctAnswer: "お申し出（リクエスト）すればもらえる", explanation: "自動発行ではなく、依頼した場合に発行される仕組みであるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「税抜き5,000円、消費税（10%）500円」とあります。合計いくら支払いますか？", options: ["5,000円", "5,200円", "5,500円", "6,000円"], correctAnswer: "5,500円", explanation: "税抜き価格と消費税額を合計すると5,500円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "電気代の請求書に「検針日：毎月15日」とあります。これはどういう意味ですか？", options: ["支払い日", "電気メーターを読む日", "停電の日", "修理の日"], correctAnswer: "電気メーターを読む日", explanation: "「検針」とは使用量を確認するためにメーターを読み取ることを指すからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「延滞料金が発生する場合があります」とあります。これを避けるには？", options: ["払わない", "期限内に支払う", "少額だけ払う", "無視する"], correctAnswer: "期限内に支払う", explanation: "支払い期限を守ることが、延滞料金の発生を防ぐ唯一確実な方法だからです。"),
            ExerciseItem(id: UUID(), prompt: "通帳に「残高：15,000円」と記載されています。8,000円の請求書を支払ったら残高はいくらになりますか？", options: ["5,000円", "6,000円", "7,000円", "8,000円"], correctAnswer: "7,000円", explanation: "15,000円から8,000円を引くと残高は7,000円になるからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書の差出人が見慣れない会社名の場合、どうすべきですか？", options: ["すぐに支払う", "会社に直接確認してから支払う", "破棄する", "家族に全て任せる"], correctAnswer: "会社に直接確認してから支払う", explanation: "架空請求などの詐欺被害を防ぐため、支払う前に事実確認をすることが重要だからです。"),
            ExerciseItem(id: UUID(), prompt: "請求書に「口座引き落としのご確認：前回引き落とし日○月○日」とあります。これは何を示しますか？", options: ["次の支払い予定", "前回いつ引き落とされたか", "口座番号", "残高"], correctAnswer: "前回いつ引き落とされたか", explanation: "表示は過去の引き落とし実績を示すものであるからです。")
        ]
    )

    // MARK: - どうすれば良い？
    private static let exercise9 = Exercise(
        id: UUID(),
        title: "どうすれば良い？",
        instructions: "この状況でどうすれば良いか答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "友人の誕生日に贈り物をしたいとき、どうすれば良いですか？", options: ["何もしない", "プレゼントを買って贈る", "誕生日を忘れる", "別の日にお祝いを取り消す"], correctAnswer: "プレゼントを買って贈る", explanation: "相手への祝福の気持ちを形にして伝える一般的な方法だからです。"),
            ExerciseItem(id: UUID(), prompt: "バスの中で気分が悪くなったとき、どうすれば良いですか？", options: ["我慢して終点まで乗る", "最寄りの停留所で降りて休む", "立ったまま我慢する", "周りを騒がせる"], correctAnswer: "最寄りの停留所で降りて休む", explanation: "無理に乗り続けず、早めに降りて体調を整えることが安全だからです。"),
            ExerciseItem(id: UUID(), prompt: "買い物中にお財布を忘れてきたことに気づいたとき、どうすれば良いですか？", options: ["商品を黙って持ち出す", "お金なしで支払おうとする", "家に取りに帰るか、別の日に来る", "他の人に借りて返さない"], correctAnswer: "家に取りに帰るか、別の日に来る", explanation: "支払いができない以上、無理に購入せず出直すのが適切な対応だからです。"),
            ExerciseItem(id: UUID(), prompt: "誰かがあなたの前でつまずいて倒れたとき、どうすれば良いですか？", options: ["急いで通り過ぎる", "声をかけて助けが必要か確認する", "大声で笑う", "無視する"], correctAnswer: "声をかけて助けが必要か確認する", explanation: "けがの有無を確認し、必要な助けを申し出ることが思いやりのある行動だからです。"),
            ExerciseItem(id: UUID(), prompt: "電車でお年寄りが立っているとき、座っているあなたはどうすべきですか？", options: ["目をそらす", "席を譲る", "寝たふりをする", "そのままにする"], correctAnswer: "席を譲る", explanation: "体への負担を考え、席を必要とする人に譲るのが基本的なマナーだからです。"),
            ExerciseItem(id: UUID(), prompt: "約束の時間に30分遅刻しそうなとき、どうすれば良いですか？", options: ["黙って遅刻する", "事前に連絡して遅れることを伝える", "約束をなかったことにする", "こっそり言い訳を考える"], correctAnswer: "事前に連絡して遅れることを伝える", explanation: "相手を無用に待たせないよう、早めに状況を伝えることが誠実な対応だからです。"),
            ExerciseItem(id: UUID(), prompt: "薬の副作用が心配なとき、どうすれば良いですか？", options: ["薬をやめる", "医師か薬剤師に相談する", "インターネットだけで判断する", "量を自分で変える"], correctAnswer: "医師か薬剤師に相談する", explanation: "自己判断で薬をやめたり変えたりせず、専門家の助言を受けるべきだからです。"),
            ExerciseItem(id: UUID(), prompt: "記念日に外食したいとき、どうすれば良いですか？", options: ["予約なしで行く", "事前に予約をする", "当日に決める", "家で食べる"], correctAnswer: "事前に予約をする", explanation: "席が確保できないなどのトラブルを避けるため、あらかじめ予約するのが望ましいからです。"),
            ExerciseItem(id: UUID(), prompt: "迷子の子供を見かけたとき、どうすれば良いですか？", options: ["無視する", "警察か近くの大人に知らせる", "連れて帰る", "声をかけない"], correctAnswer: "警察か近くの大人に知らせる", explanation: "子供の安全を確保するには、専門の対応ができる人に速やかに知らせることが必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "友人が悲しそうにしているとき、どうすれば良いですか？", options: ["無視する", "声をかけて大丈夫か聞く", "笑わせようとする", "立ち去る"], correctAnswer: "声をかけて大丈夫か聞く", explanation: "相手の気持ちに寄り添い、様子を気にかけることが思いやりのある対応だからです。"),
            ExerciseItem(id: UUID(), prompt: "自宅の電球が切れたとき、どうすれば良いですか？", options: ["ろうそくだけで生活する", "新しい電球に交換する", "電気会社に修理を依頼する", "部屋を使わなくする"], correctAnswer: "新しい電球に交換する", explanation: "明かりを取り戻すためには、切れた電球を新しいものに交換する必要があるからです。"),
            ExerciseItem(id: UUID(), prompt: "昔からの習い事を再開したいとき、どうすれば良いですか？", options: ["諦める", "教室を探して体験してみる", "誰かに頼む", "テレビを見るだけにする"], correctAnswer: "教室を探して体験してみる", explanation: "実際に体験してみることで、自分に合うか確かめてから始められるからです。"),
            ExerciseItem(id: UUID(), prompt: "医師の予約日を忘れてしまったとき、どうすれば良いですか？", options: ["予約をキャンセルする", "医院に電話して確認・再予約する", "症状が良くなるまで待つ", "別の病院に行く"], correctAnswer: "医院に電話して確認・再予約する", explanation: "無断で予約を放置せず、連絡を入れて改めて予約を取ることが適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "公共の場でゴミが落ちているとき、どうすれば良いですか？", options: ["無視する", "ゴミ箱があれば拾って捨てる", "さらにゴミを捨てる", "写真を撮る"], correctAnswer: "ゴミ箱があれば拾って捨てる", explanation: "周囲の環境を清潔に保つため、可能であれば自分で片付けるのが望ましいからです。"),
            ExerciseItem(id: UUID(), prompt: "新しい地域に引っ越してきたとき、どうすれば良いですか？", options: ["誰とも話さない", "近所の人に挨拶をする", "すぐに引っ越す", "関係を避ける"], correctAnswer: "近所の人に挨拶をする", explanation: "良好な人間関係を築く第一歩として、挨拶をするのが一般的な習慣だからです。"),
            ExerciseItem(id: UUID(), prompt: "手紙の差出人が不明なとき、どうすれば良いですか？", options: ["すぐに開封する", "差出人を確認してから対応する", "捨てる", "郵便局に戻す"], correctAnswer: "差出人を確認してから対応する", explanation: "不審な郵便物によるトラブルを避けるため、内容を確認してから対応することが安全だからです。"),
            ExerciseItem(id: UUID(), prompt: "長い行列に並んでいて急に急用ができたとき、どうすれば良いですか？", options: ["強引に先に行く", "列を離れて急用を済ませる", "他の人を列から出す", "騒ぐ"], correctAnswer: "列を離れて急用を済ませる", explanation: "緊急の用事を優先し、必要であれば列を離れて対応するのが現実的な判断だからです。"),
            ExerciseItem(id: UUID(), prompt: "書類にサインを求められたとき、内容がわからない場合はどうすれば良いですか？", options: ["すぐにサインする", "内容を確認してから、必要なら専門家に相談する", "書類を破棄する", "誰かのサインを真似する"], correctAnswer: "内容を確認してから、必要なら専門家に相談する", explanation: "内容を理解せずに署名すると不利益を被る恐れがあるため、慎重な確認が必要だからです。"),
            ExerciseItem(id: UUID(), prompt: "体の調子が少し悪いが軽症と思われるとき、どうすれば良いですか？", options: ["何もしない", "症状を観察し、悪化したら医師に相談する", "大量の薬を飲む", "完全に安静にする"], correctAnswer: "症状を観察し、悪化したら医師に相談する", explanation: "経過を見ながら、悪化の兆候があれば早めに受診する判断が適切だからです。"),
            ExerciseItem(id: UUID(), prompt: "インターネットで見知らぬ人から個人情報を求められたとき、どうすれば良いですか？", options: ["全て教える", "個人情報は教えずに無視する", "電話番号だけ教える", "名前だけ教える"], correctAnswer: "個人情報は教えずに無視する", explanation: "不審な要求に応じると悪用される危険があるため、応答しないことが安全だからです。")
        ]
    )

    // MARK: - 空間認識
    private static let exercise10 = Exercise(
        id: UUID(),
        title: "空間認識",
        instructions: "空間に関する質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "テーブルの上にコップが置いてあります。コップはテーブルの何にありますか？", options: ["下", "横", "上", "後ろ"], correctAnswer: "上", explanation: "コップはテーブルの表面、つまり「上」に置かれているからです。"),
            ExerciseItem(id: UUID(), prompt: "「病院は銀行の隣にあります」。銀行に立ったとき、病院はどちらにありますか？", options: ["後ろ", "前", "隣（横）", "上"], correctAnswer: "隣（横）", explanation: "「隣」という表現は横に並んでいる位置関係を示すからです。"),
            ExerciseItem(id: UUID(), prompt: "「信号を左に曲がってまっすぐ進むと公園があります」。信号でどちらに曲がりますか？", options: ["右", "左", "まっすぐ", "後ろ"], correctAnswer: "左", explanation: "案内の通り、信号のところで曲がる方向は「左」だからです。"),
            ExerciseItem(id: UUID(), prompt: "引き出しの中から眼鏡を取り出しました。眼鏡はどこにありましたか？", options: ["テーブルの上", "引き出しの中", "棚の下", "床の上"], correctAnswer: "引き出しの中", explanation: "取り出した場所がそのまま眼鏡があった場所を示しているからです。"),
            ExerciseItem(id: UUID(), prompt: "「右を向いてください」と言われました。体の右側はどちらですか？", options: ["心臓がある側", "心臓と反対側", "後ろ", "前"], correctAnswer: "心臓と反対側", explanation: "心臓は体の左寄りにあるため、体の右側は心臓と反対側にあたるからです。"),
            ExerciseItem(id: UUID(), prompt: "「建物の3階に上がってください」。1階から2階のフロアを通過して何階に行きますか？", options: ["1階", "2階", "3階", "4階"], correctAnswer: "3階", explanation: "1階と2階を通過して到達する階が3階だからです。"),
            ExerciseItem(id: UUID(), prompt: "「玄関から入って、廊下を真っすぐ進んでください」。玄関を入った後どこへ進みますか？", options: ["後ろ", "左", "右", "まっすぐ"], correctAnswer: "まっすぐ", explanation: "案内文の通り、進む方向は「まっすぐ」だからです。"),
            ExerciseItem(id: UUID(), prompt: "「冷蔵庫の上の棚に薬があります」。薬はどこにありますか？", options: ["冷蔵庫の中", "冷蔵庫の下の棚", "冷蔵庫の上の棚", "冷蔵庫の横"], correctAnswer: "冷蔵庫の上の棚", explanation: "説明文にある場所がそのまま薬の保管場所を示しているからです。"),
            ExerciseItem(id: UUID(), prompt: "地図で北が上を向いている場合、右側はどの方向ですか？", options: ["北", "南", "東", "西"], correctAnswer: "東", explanation: "地図上で北を上にすると、右手の方向は東にあたるからです。"),
            ExerciseItem(id: UUID(), prompt: "「本は机の右下の引き出しに入っています」。どこを探せばよいですか？", options: ["机の上", "机の左の引き出し", "机の右下の引き出し", "机の後ろ"], correctAnswer: "机の右下の引き出し", explanation: "説明された場所がそのまま探すべき場所になるからです。")
        ]
    )

    // MARK: - テレビ番組表
    private static let exercise11 = Exercise(
        id: UUID(),
        title: "テレビ番組表",
        instructions: "テレビ番組表を読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "「19:00〜20:00 ニュース番組、20:00〜21:00 ドラマ」という番組表です。ドラマは何時から始まりますか？", options: ["19:00", "19:30", "20:00", "21:00"], correctAnswer: "20:00", explanation: "番組表にドラマの開始時刻が20:00と示されているからです。"),
            ExerciseItem(id: UUID(), prompt: "「月〜金：18:30〜19:00 時代劇」という番組表です。土曜日に同じ番組を見られますか？", options: ["はい", "いいえ", "祝日のみ", "夜だけ"], correctAnswer: "いいえ", explanation: "放送は月曜から金曜までと指定されており、土曜日は対象外だからです。"),
            ExerciseItem(id: UUID(), prompt: "「NHKニュース：毎日20:00〜21:00」という番組表です。ニュースは何時間放送されますか？", options: ["30分", "45分", "1時間", "2時間"], correctAnswer: "1時間", explanation: "20時から21時までの経過時間を計算すると1時間になるからです。"),
            ExerciseItem(id: UUID(), prompt: "「バラエティ番組：21:00〜22:30」。番組が終わるのは何時ですか？", options: ["21:30", "22:00", "22:30", "23:00"], correctAnswer: "22:30", explanation: "番組表に記載された終了時刻がそのまま答えになるからです。"),
            ExerciseItem(id: UUID(), prompt: "「映画：14:00〜16:30（2時間30分）」。映画が終わるのは何時ですか？", options: ["15:30", "16:00", "16:30", "17:00"], correctAnswer: "16:30", explanation: "番組表に記載された終了時刻がそのまま答えになるからです。"),
            ExerciseItem(id: UUID(), prompt: "「野球中継：18:00〜」（延長あり）。17:00から見始めると、野球の前に何分待ちますか？", options: ["30分", "45分", "60分", "90分"], correctAnswer: "60分", explanation: "17時から18時までの経過時間を計算すると60分になるからです。"),
            ExerciseItem(id: UUID(), prompt: "「健康情報番組：毎週水曜日 15:00〜16:00」。今日が火曜日ならば、次の放送は何日後ですか？", options: ["1日後", "2日後", "3日後", "7日後"], correctAnswer: "1日後", explanation: "火曜日の翌日である水曜日に放送されるため、1日後になるからです。"),
            ExerciseItem(id: UUID(), prompt: "番組表に「再放送」と書いてある番組は、どういう意味ですか？", options: ["新しい番組", "以前に放送した番組を再度放送する", "録画した番組", "外国からの番組"], correctAnswer: "以前に放送した番組を再度放送する", explanation: "「再」という字が示す通り、過去に放送したものを繰り返し放送することを意味するからです。"),
            ExerciseItem(id: UUID(), prompt: "「特別番組のため、通常放送は休止します」とありました。今日の普通の番組は見られますか？", options: ["はい", "いいえ", "一部だけ", "翌日から"], correctAnswer: "いいえ", explanation: "「休止します」と明記されている以上、通常番組はその日見られないからです。"),
            ExerciseItem(id: UUID(), prompt: "「生放送」と書いてある番組はどういう意味ですか？", options: ["録画して後で放送する", "リアルタイムで放送している", "外国からの放送", "再放送"], correctAnswer: "リアルタイムで放送している", explanation: "「生」という表現は、録画ではなくその場で行われていることを表すからです。")
        ]
    )

    // MARK: - カレンダー計画
    private static let exercise12 = Exercise(
        id: UUID(),
        title: "カレンダー計画",
        instructions: "カレンダーを読んで質問に答えてください。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "今日が10月1日（月曜日）なら、10月15日は何曜日ですか？", options: ["月曜日", "火曜日", "水曜日", "木曜日"], correctAnswer: "月曜日", explanation: "15日は1日から14日後で、7日周期の曜日が2周するため同じ月曜日になるからです。"),
            ExerciseItem(id: UUID(), prompt: "「毎月第2土曜日に病院へ」と決めています。今月の1日が月曜日なら、第2土曜日は何日ですか？", options: ["8日", "9日", "13日", "14日"], correctAnswer: "13日", explanation: "1日が月曜日の場合、最初の土曜日は6日、2週間後の第2土曜日は6日の7日後の「13日」になります。"),
            ExerciseItem(id: UUID(), prompt: "「服薬は3日おき」と言われました。最後に飲んだのが10月5日なら、次はいつ飲みますか？", options: ["10月7日", "10月8日", "10月9日", "10月10日"], correctAnswer: "10月8日", explanation: "5日の3日後を数えると10月8日になるからです。"),
            ExerciseItem(id: UUID(), prompt: "「手術の4週間後に外来受診」と言われました。手術が9月1日なら、外来は何月何日ですか？", options: ["9月22日", "9月28日", "9月29日", "10月1日"], correctAnswer: "9月29日", explanation: "4週間は28日に相当するため、9月1日の28日後は9月29日になるからです。"),
            ExerciseItem(id: UUID(), prompt: "今月は31日まであります。今日が20日なら、月末まであと何日ありますか？", options: ["9日", "10日", "11日", "12日"], correctAnswer: "11日", explanation: "31日から20日を引くと11日になるからです。"),
            ExerciseItem(id: UUID(), prompt: "旅行が3月15日から19日まであります。何泊しますか？", options: ["3泊", "4泊", "5泊", "6泊"], correctAnswer: "4泊", explanation: "15日から19日までの宿泊日数を数えると4泊になるからです。"),
            ExerciseItem(id: UUID(), prompt: "「毎週月・水・金にリハビリ」と言われました。1週間に何回通いますか？", options: ["2回", "3回", "4回", "5回"], correctAnswer: "3回", explanation: "1週間のうち月・水・金の3日が対象日だからです。"),
            ExerciseItem(id: UUID(), prompt: "祖母の誕生日が5月10日で、今日が4月25日です。誕生日まであと何日ですか？", options: ["13日", "14日", "15日", "16日"], correctAnswer: "15日", explanation: "4月25日から5月10日までの日数を数えると15日になるからです。")
        ]
    )

    // MARK: - 実用的な文章
    private static let exercise13 = Exercise(
        id: UUID(),
        title: "実用的な文章",
        instructions: "考えて答えてみましょう。模範的な回答をご参考ください。",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "今日の天気について一言書いてください。", options: [], correctAnswer: "例：今日は晴れていて、気持ち良い日です。", explanation: "天気を観察して書きましょう"),
            ExerciseItem(id: UUID(), prompt: "今日の朝食に何を食べましたか？一文で書いてください。", options: [], correctAnswer: "例：今朝はご飯と味噌汁、卵焼きを食べました。", explanation: "実際の朝食を思い出して書きましょう"),
            ExerciseItem(id: UUID(), prompt: "あなたの好きな日本の食べ物は何ですか？その理由も書いてください。", options: [], correctAnswer: "例：私の好きな食べ物は寿司です。新鮮な魚と酢飯の組み合わせが好きだからです。", explanation: "好きな理由も一緒に書くとより良い文章になります"),
            ExerciseItem(id: UUID(), prompt: "最近、うれしかったことや楽しかったことを一言書いてください。", options: [], correctAnswer: "例：先日、孫と一緒に公園で花見をして、とても楽しかったです。", explanation: "日常の小さな喜びでも構いません")
        ]
    )
}


