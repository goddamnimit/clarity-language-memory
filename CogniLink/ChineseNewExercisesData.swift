import Foundation

/// Holds the 14 new Chinese exercises.
struct ChineseNewExercisesData {

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
        title: "押韵配对",
        instructions: "选择与给出词语押韵的字词。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "哪个字与“猫”押韵？", options: ["狗", "包", "太阳", "树"], correctAnswer: "包", explanation: "“猫” (māo) 和 “包” (bāo) 拥有相同的韵母 -ao。"),
            ExerciseItem(prompt: "哪个字与“花”押韵？", options: ["红", "画", "绿", "叉"], correctAnswer: "画", explanation: "“花” (huā) 和 “画” (huà) 拥有相同的韵母 -ua。"),
            ExerciseItem(prompt: "哪个字与“天”押韵？", options: ["跑", "田", "夜", "走"], correctAnswer: "田", explanation: "“天” (tiān) 和 “田” (tián) 拥有相同的韵母 -ian。"),
            ExerciseItem(prompt: "哪个字与“雨”押韵？", options: ["风", "鱼", "晴", "重"], correctAnswer: "鱼", explanation: "“雨” (yǔ) 和 “鱼” (yú) 拥有相同的韵母 -ü。"),
            ExerciseItem(prompt: "哪个字与“书”押韵？", options: ["唱", "歌", "金", "树"], correctAnswer: "树", explanation: "“书” (shū) 和 “树” (shù) 拥有相同的韵母 -u。"),
            ExerciseItem(prompt: "哪个字与“阳”押韵？", options: ["水", "车", "羊", "船"], correctAnswer: "羊", explanation: "“阳” (yáng) 和 “羊” (yáng) 拥有相同的韵母 -ang。"),
            ExerciseItem(prompt: "哪个字与“山”押韵？", options: ["船", "甜", "饼", "叉"], correctAnswer: "船", explanation: "“山” (shān) 和 “船” (chuán) 拥有相同的韵首和韵尾组合 -an。"),
            ExerciseItem(prompt: "哪个字与“歌”押韵？", options: ["热", "冷", "金", "河"], correctAnswer: "河", explanation: "“歌” (gē) 和 “河” (hé) 拥有相同的韵母 -e。"),
            ExerciseItem(prompt: "哪个字与“灯”押韵？", options: ["风", "门", "门", "顶"], correctAnswer: "风", explanation: "“灯” (dēng) 和 “风” (fēng) 拥有相同的韵母 -eng。"),
            ExerciseItem(prompt: "哪个字与“飞”押韵？", options: ["杯", "草", "地", "枝"], correctAnswer: "杯", explanation: "“飞” (fēi) 和 “杯” (bēi) 拥有相同的韵母 -ei。"),
            ExerciseItem(prompt: "哪个字与“走”押韵”，", options: ["跑", "湿", "手", "天"], correctAnswer: "手", explanation: "“走” (zǒu) 和 “手” (shǒu) 拥有相同的韵母 -ou。"),
            ExerciseItem(prompt: "哪个字与“宝”押韵？", options: ["草", "阳", "车", "天"], correctAnswer: "草", explanation: "“宝” (bǎo) 和 “草” (cǎo) 拥有相同的韵母 -ao。"),
            ExerciseItem(prompt: "哪个字与“门”押韵？", options: ["人", "看", "页", "书"], correctAnswer: "人", explanation: "“门” (mén) 和 “人” (rén) 拥有相同的韵母 -en。"),
            ExerciseItem(prompt: "哪个字与“星”押韵？", options: ["听", "名", "赢", "乐"], correctAnswer: "听", explanation: "“星” (xīng) 和 “听” (tīng) 拥有相同的韵母 -ing。"),
            ExerciseItem(prompt: "哪个字与“月”押韵？", options: ["雪", "海", "鱼", "贝"], correctAnswer: "雪", explanation: "“月” (yuè) 和 “雪” (xuě) 拥有相近且在古诗中押韵的韵母 -üe。"),
            ExerciseItem(prompt: "哪个字与“钟”押韵？", options: ["红", "声", "表", "响"], correctAnswer: "红", explanation: "“钟” (zhōng) 和 “红” (hóng) 拥有相近且在古韵中通押的 -ong 韵。"),
            ExerciseItem(prompt: "哪个字与“笔”押韵？", options: ["衣", "桌", "发", "梳"], correctAnswer: "衣", explanation: "“笔” (bǐ) 和 “衣” (yī) 拥有相同的韵母 -i。"),
            ExerciseItem(prompt: "哪个字与“糖”押韵？", options: ["床", "星", "夜", "日"], correctAnswer: "床", explanation: "“糖” (táng) 和 “床” (chuáng) 拥有相同的后鼻音韵母 -ang。"),
            ExerciseItem(prompt: "哪个字与“桥”押韵？", options: ["苗", "眼", "脸", "笑"], correctAnswer: "苗", explanation: "“桥” (qiáo) 和 “苗” (miáo) 拥有相同的韵母 -iao。"),
            ExerciseItem(prompt: "哪个字与“鸡”押韵？", options: ["衣", "盘", "游", "钩"], correctAnswer: "衣", explanation: "“鸡” (jī) 和 “衣” (yī) 拥有相同的韵母 -i。")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "词语关联",
        instructions: "选择与所给词语关系最密切的词。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "医生", options: ["医院", "机场", "图书馆", "农场"], correctAnswer: "医院", explanation: "医生在医院工作，为患者提供治疗。"),
            ExerciseItem(prompt: "面包", options: ["黄油", "锤子", "肥皂", "铅笔"], correctAnswer: "黄油", explanation: "黄油通常涂抹在面包上食用。"),
            ExerciseItem(prompt: "厨房", options: ["炉灶", "床", "淋浴", "汽车"], correctAnswer: "炉灶", explanation: "炉灶是厨房里最主要的烹饪工具。"),
            ExerciseItem(prompt: "图书馆", options: ["图书", "衣服", "工具", "杂货"], correctAnswer: "图书", explanation: "图书馆主要收藏和外借图书。"),
            ExerciseItem(prompt: "鞋子", options: ["袜子", "帽子", "手套", "腰带"], correctAnswer: "袜子", explanation: "袜子通常穿在鞋子里面。"),
            ExerciseItem(prompt: "宇航员", options: ["太空", "海洋", "丛林", "沙漠"], correctAnswer: "太空", explanation: "宇航员是在太空进行科学探索的人。"),
            ExerciseItem(prompt: "老师", options: ["学校", "工厂", "剧院", "健身房"], correctAnswer: "学校", explanation: "老师在学校里教导学生。"),
            ExerciseItem(prompt: "海洋", options: ["鱼", "鸟", "牛", "蜘蛛"], correctAnswer: "鱼", explanation: "鱼类生活在海洋里。"),
            ExerciseItem(prompt: "汽车", options: ["轮胎", "机翼", "马鞍", "帆"], correctAnswer: "轮胎", explanation: "轮胎是汽车行驶不可或缺的部件。"),
            ExerciseItem(prompt: "下雨", options: ["雨伞", "太阳镜", "手套", "围巾"], correctAnswer: "雨伞", explanation: "雨伞可以用来挡雨。"),
            ExerciseItem(prompt: "火", options: ["烟雾", "冰", "树叶", "硬币"], correctAnswer: "烟雾", explanation: "火在燃烧时会产生烟雾。"),
            ExerciseItem(prompt: "牙医", options: ["牙齿", "头发", "眼睛", "脚"], correctAnswer: "牙齿", explanation: "牙医专门诊治口腔和牙齿问题。"),
            ExerciseItem(prompt: "咖啡", options: ["杯子", "碗", "盘子", "叉子"], correctAnswer: "杯子", explanation: "咖啡通常盛在杯子里饮用。"),
            ExerciseItem(prompt: "花园", options: ["花朵", "电脑", "炉灶", "大衣"], correctAnswer: "花朵", explanation: "花朵生长在花园里。"),
            ExerciseItem(prompt: "钥匙", options: ["锁", "窗户", "屋顶", "地板"], correctAnswer: "锁", explanation: "钥匙是用来开锁的。"),
            ExerciseItem(prompt: "邮局", options: ["信件", "面包", "药品", "门票"], correctAnswer: "信件", explanation: "信件是通过邮局寄出的。"),
            ExerciseItem(prompt: "钢琴", options: ["音乐", "油漆", "黏土", "木头"], correctAnswer: "音乐", explanation: "钢琴是一种用来演奏音乐的乐器。"),
            ExerciseItem(prompt: "蜜蜂", options: ["蜂蜜", "牛奶", "羊毛", "丝绸"], correctAnswer: "蜂蜜", explanation: "蜜蜂能够酿造蜂蜜。"),
            ExerciseItem(prompt: "蜘蛛", options: ["蜘蛛网", "鸟巢", "蜂巢", "洞穴"], correctAnswer: "蜘蛛网", explanation: "蜘蛛会织网以捕捉猎物。"),
            ExerciseItem(prompt: "农民", options: ["拖拉机", "飞机", "潜水艇", "火车"], correctAnswer: "拖拉机", explanation: "农民使用拖拉机来耕作土地。")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "补充谚语",
        instructions: "补充中国传统谚语或俗语。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "百闻不如一___。", options: ["见", "听", "读", "写"], correctAnswer: "见", explanation: "“百闻不如一见”意为听别人说一百遍，不如亲眼看一次。"),
            ExerciseItem(prompt: "读书破万卷，下笔如有___。", options: ["神", "风", "雨", "光"], correctAnswer: "神", explanation: "意指博览群书，写起文章来就会得心应手。"),
            ExerciseItem(prompt: "万事开头___。", options: ["难", "易", "好", "快"], correctAnswer: "难", explanation: "“万事开头难”指任何事情开始做的时候都会遇到困难。"),
            ExerciseItem(prompt: "失败乃成功之___。", options: ["母", "父", "子", "友"], correctAnswer: "母", explanation: "失败能为以后的成功积累经验。"),
            ExerciseItem(prompt: "一寸光阴一寸金，寸金难买寸___。", options: ["光阴", "黄金", "土地", "生命"], correctAnswer: "光阴", explanation: "比喻时间极其宝贵，用再多钱也买不回来。"),
            ExerciseItem(prompt: "千里之行，始于___下。", options: ["足", "手", "心", "路"], correctAnswer: "足", explanation: "“始于足下”比喻宏大的规划要从基础的事情做起。"),
            ExerciseItem(prompt: "不入虎穴，焉得虎___。", options: ["子", "肉", "胆", "皮"], correctAnswer: "子", explanation: "“不入虎穴，焉得虎子”比喻不冒险就没有回报。"),
            ExerciseItem(prompt: "冰冻三尺，非一日之___。", options: ["寒", "暖", "冷", "凉"], correctAnswer: "寒", explanation: "“非一日之寒”比喻事情的发展是长期积累的结果。"),
            ExerciseItem(prompt: "近朱者赤，近墨者___。", options: ["黑", "白", "红", "绿"], correctAnswer: "黑", explanation: "“近朱者赤，近墨者黑”比喻环境会对人产生巨大的影响。"),
            ExerciseItem(prompt: "机不可失，时不再___。", options: ["来", "去", "往", "过"], correctAnswer: "来", explanation: "“时不再来”常用来形容机会非常难得，一旦错过就不再有。"),
            ExerciseItem(prompt: "活到老，学到___。", options: ["老", "少", "死", "大"], correctAnswer: "老", explanation: "勉励人们终身学习，与时俱进。"),
            ExerciseItem(prompt: "种瓜得瓜，种豆得___。", options: ["豆", "瓜", "花", "草"], correctAnswer: "豆", explanation: "比喻做了什么样的事情，就会得到什么样的结果。"),
            ExerciseItem(prompt: "前人栽树，后人乘___。", options: ["凉", "风", "雨", "光"], correctAnswer: "凉", explanation: "“前人栽树，后人乘凉”指前人付出的努力让后人享福。"),
            ExerciseItem(prompt: "一日之计在于___。", options: ["晨", "夜", "午", "暮"], correctAnswer: "晨", explanation: "“一日之计在于晨”说明早晨时间非常关键。"),
            ExerciseItem(prompt: "三个臭皮匠，顶个诸葛___。", options: ["亮", "明", "暗", "红"], correctAnswer: "亮", explanation: "比喻人多智慧大，集体力量强。"),
            ExerciseItem(prompt: "人不可貌相，海水不可___量。", options: ["斗", "杯", "勺", "瓶"], correctAnswer: "斗", explanation: "不能仅凭外表去判断一个人。"),
            ExerciseItem(prompt: "水滴石___。", options: ["穿", "碎", "破", "裂"], correctAnswer: "穿", explanation: "“水滴石穿”比喻只要有恒心，就能把难事做成。"),
            ExerciseItem(prompt: "有志者事竟___。", options: ["成", "败", "立", "行"], correctAnswer: "成", explanation: "“有志者事竟成”比喻只要有决心，就一定能成功。"),
            ExerciseItem(prompt: "岁寒，然后知松柏之后___也。", options: ["凋", "茂", "青", "落"], correctAnswer: "凋", explanation: "在严寒时才知道松柏是最后落叶的，比喻在困难中才显出高尚的品质。"),
            ExerciseItem(prompt: "吃得苦中苦，方为人上___。", options: ["人", "主", "仙", "神"], correctAnswer: "人", explanation: "必须吃尽万般苦，才能获得出人头地的成功。")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "合成词语",
        instructions: "选择合适的字来拼成一个完整的合成词。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "电 + ___ = 电脑", options: ["脑", "手", "眼", "心"], correctAnswer: "脑", explanation: "电 + 脑 = 电脑。"),
            ExerciseItem(prompt: "火 + ___ = 火车", options: ["车", "路", "房", "人"], correctAnswer: "车", explanation: "火 + 车 = 火车。"),
            ExerciseItem(prompt: "书 + ___ = 书包", options: ["包", "盒", "架", "店"], correctAnswer: "包", explanation: "书 + 包 = 书包。"),
            ExerciseItem(prompt: "雨 + ___ = 雨伞", options: ["伞", "鞋", "衣", "帽"], correctAnswer: "伞", explanation: "雨 + 伞 = 雨伞。"),
            ExerciseItem(prompt: "手 + ___ = 手表", options: ["表", "指", "机", "套"], correctAnswer: "表", explanation: "手 + 表 = 手表。"),
            ExerciseItem(prompt: "黑 + ___ = 黑板", options: ["板", "笔", "擦", "墙"], correctAnswer: "板", explanation: "黑 + 板 = 黑板。"),
            ExerciseItem(prompt: "面 + ___ = 面包", options: ["包", "条", "粉", "馆"], correctAnswer: "包", explanation: "面 + 包 = 面包。"),
            ExerciseItem(prompt: "风 + ___ = 风筝", options: ["筝", "扇", "车", "铃"], correctAnswer: "筝", explanation: "风 + 筝 = 风筝。"),
            ExerciseItem(prompt: "雪 + ___ = 雪人", options: ["人", "花", "山", "橇"], correctAnswer: "人", explanation: "雪 + 人 = 雪人。"),
            ExerciseItem(prompt: "皮 + ___ = 皮鞋", options: ["鞋", "包", "带", "肤"], correctAnswer: "鞋", explanation: "皮 + 鞋 = 皮鞋。"),
            ExerciseItem(prompt: "牙 + ___ = 牙刷", options: ["刷", "膏", "齿", "医"], correctAnswer: "刷", explanation: "牙 + 刷 = 牙刷。"),
            ExerciseItem(prompt: "台 + ___ = 台灯", options: ["灯", "桌", "风", "湾"], correctAnswer: "灯", explanation: "台 + 灯 = 台灯。"),
            ExerciseItem(prompt: "画 + ___ = 画笔", options: ["笔", "家", "展", "册"], correctAnswer: "笔", explanation: "画 + 笔 = 画笔。"),
            ExerciseItem(prompt: "水 + ___ = 水杯", options: ["杯", "壶", "果", "瓶"], correctAnswer: "杯", explanation: "水 + 杯 = 水杯。"),
            ExerciseItem(prompt: "操 + ___ = 操场", options: ["场", "人", "练", "心"], correctAnswer: "场", explanation: "操 + 场 = 操场。"),
            ExerciseItem(prompt: "月 + ___ = 月亮", options: ["亮", "球", "饼", "光"], correctAnswer: "亮", explanation: "月 + 亮 = 月亮。"),
            ExerciseItem(prompt: "跑 + ___ = 跑步", options: ["步", "车", "道", "鞋"], correctAnswer: "步", explanation: "跑 + 步 = 跑步。"),
            ExerciseItem(prompt: "彩 + ___ = 彩虹", options: ["虹", "笔", "旗", "色"], correctAnswer: "虹", explanation: "彩 + 虹 = 彩虹。"),
            ExerciseItem(prompt: "飞 + ___ = 飞机", options: ["机", "鸟", "虫", "天"], correctAnswer: "机", explanation: "飞 + 机 = 飞机。"),
            ExerciseItem(prompt: "汽 + ___ = 汽车", options: ["车", "油", "水", "缸"], correctAnswer: "车", explanation: "汽 + 车 = 汽车。")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "词头与词尾",
        instructions: "选择正确的词缀（前缀或后缀）来解答题目。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "在“老张”和“老虎”中，“老”起什么作用？", options: ["作前缀表示特定称谓", "作后缀表示人名", "表示年纪很大", "表示反对"], correctAnswer: "作前缀表示特定称谓", explanation: "汉语中的“老”常放在名词或人姓氏前用作构词前缀。"),
            ExerciseItem(prompt: "在“桌子”和“椅子”中，“子”字是什么？", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“子”是汉语中极其常用的名词后缀。"),
            ExerciseItem(prompt: "在“木头”和“石头”中，“头”字起什么作用？", options: ["名词后缀", "前缀", "中缀", "动词后缀"], correctAnswer: "名词后缀", explanation: "“头”作为词尾，把木、石等词根构造成名词。"),
            ExerciseItem(prompt: "表示人所从事的职业或具备某身份的词（如“作者”、“读者”），其中的“者”是___。", options: ["后缀", "前缀", "中缀", "词缀"], correctAnswer: "后缀", explanation: "“者”接在动词或形容词后表示相关的人，是后缀。"),
            ExerciseItem(prompt: "表示从事某种专业领域的人（如“科学家”、“艺术家”），“家”字在这里起什么作用？", options: ["作后缀表示某领域的专家", "作前缀表示家属", "表示房子", "没有实际作用"], correctAnswer: "作后缀表示某领域的专家", explanation: "这里的“家”用作后缀，指专长于某方面学问或技术的人。"),
            ExerciseItem(prompt: "“阿姨”、“阿爸”中的“阿”是常用的词缀，它加在词的什么位置？", options: ["前缀（词头）", "后缀（词尾）", "中缀", "词根"], correctAnswer: "前缀（词头）", explanation: "加在名字、亲属称呼前的“阿”用作词的前缀。"),
            ExerciseItem(prompt: "“可行性”、“重要性”中的“性”字，用作词尾，表示事物的某种性质。它是___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“性”加在形容词等后构成抽象名词，是常用的名词后缀。"),
            ExerciseItem(prompt: "“现代化”、“美化”中的“化”字用在词尾，表示动作或状态的转变。它是___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“化”加在名词或形容词后，表示转变成某种状态，用作后缀。"),
            ExerciseItem(prompt: "“小猫”、“小狗”中的“小”字，在这里常常加在词头起表爱称的作用，它是___。", options: ["前缀", "后缀", "中缀", "词根"], correctAnswer: "前缀", explanation: "“小”加在某些名词前构成亲昵称呼，此时是构词前缀。"),
            ExerciseItem(prompt: "“绿油油”、“红彤彤”中的“油油”和“彤彤”是形容词的词尾，起状态修饰作用。它们是___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "ABB叠词式形容词中，后面的重叠音节用作修饰后缀。"),
            ExerciseItem(prompt: "“第一”、“第二”中的“第”字是加在数词前的常用___。", options: ["前缀", "后缀", "中缀", "词缀"], correctAnswer: "前缀", explanation: "“第”是表示序数的前缀。"),
            ExerciseItem(prompt: "“初一”、“初二”中表示农历日期或年级的“初”是常用的___。", options: ["前缀", "后缀", "中缀", "词缀"], correctAnswer: "前缀", explanation: "“初”作为表示初次、初段的构词成分加在数词前，属于前缀。"),
            ExerciseItem(prompt: "“甜头”、“苦头”中的“头”字是词尾，起名词化的作用。它是___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“头”作为名词化词尾放在词后，属于后缀。"),
            ExerciseItem(prompt: "“记者”、“学者”中的“者”字，作为表人的构词成分，是常用的___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“者”是一个接在其他语素后表示人的后缀。"),
            ExerciseItem(prompt: "“程序员”、“服务员”中的“员”字，用作构词词尾，表示某种职业人员，它是___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“员”是表示职员或某类人员的名词后缀。"),
            ExerciseItem(prompt: "“心理学”、“物理学”中的“学”用作词尾，表示一门学科，它是___。", options: ["后缀", "前缀", "中缀", "词根"], correctAnswer: "后缀", explanation: "“学”通常接在名词性语素后表示一门学问，用作后缀。"),
            ExerciseItem(prompt: "“反暴力”、“反污染”中的“反”字，表示否定或反对，是常用的___。", options: ["前缀", "后缀", "中缀", "词根"], correctAnswer: "前缀", explanation: "“反”在这里放在名词词组前，起修饰和否定作用，是前缀。"),
            ExerciseItem(prompt: "“超音速”、“超常”中的“超”字，表示超越、超出，是常用的___。", options: ["前缀", "后缀", "中缀", "词缀"], correctAnswer: "前缀", explanation: "“超”加在某些词前表示超出一般范围，是构词前缀。"),
            ExerciseItem(prompt: "“非正式”、“非会员”中的“非”字，表示不是、不对，是常用的___。", options: ["前缀", "后缀", "中缀", "词根"], correctAnswer: "前缀", explanation: "“非”用于构成否定含义的词，用作构词前缀。"),
            ExerciseItem(prompt: "“安全性”、“可能性”中的“性”字，常用作名词化后缀，它是___。", options: ["后缀", "前缀", "中缀", "词缀"], correctAnswer: "后缀", explanation: "“性”字接在词后，使得整个词语具有性质和属性的名词属性，是后缀。")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "故事记忆",
        instructions: "阅读短篇故事，然后回答相关的问题。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "玛丽亚去超市买牛奶和面包。她把钱包忘在厨房的柜台上。玛丽亚把什么落在家了？", options: ["她的钱包", "她的钥匙", "她的购物清单", "她的手机"], correctAnswer: "她的钱包", explanation: "故事里写到，玛丽亚把她的钱包忘在了厨房的柜台上。"),
            ExerciseItem(prompt: "托马斯星期六早起去钓鱼。他钓到了一条大鳟鱼，但因为鱼太小，他不得不把它放了。托马斯钓到了什么鱼？", options: ["鳟鱼", "三文鱼", "鲈鱼", "鲶鱼"], correctAnswer: "鳟鱼", explanation: "故事写到他钓到了一条大鳟鱼。"),
            ExerciseItem(prompt: "亚瑟把他的蓝色汽车停在了一棵阴凉的橡树下。等他回来时，发现车上落满了黄色的叶子。亚瑟的汽车是什么颜色？", options: ["蓝色", "黄色", "红色", "绿色"], correctAnswer: "蓝色", explanation: "故事里说明亚瑟停的是他的蓝色汽车。"),
            ExerciseItem(prompt: "琳达给女儿的生日派对烤了一个巧克力蛋糕。她在蛋糕上插了十支红色的蜡烛。琳达在蛋糕上插了几支蜡烛？", options: ["十支", "五支", "八支", "十二支"], correctAnswer: "十支", explanation: "故事里说她插了十支红色的蜡烛。"),
            ExerciseItem(prompt: "罗伯特去邮局给他在芝加哥的弟弟寄一个包裹。营业员告诉他包裹会在星期二寄达。罗伯特的弟弟住在哪里？", options: ["芝加哥", "纽约", "波士顿", "迈阿密"], correctAnswer: "芝加哥", explanation: "故事明确说明罗伯特是给他在芝加哥的弟弟寄包裹。"),
            ExerciseItem(prompt: "萨拉昨天买了一双新的跑步鞋。鞋子是亮绿色，带白色条纹的。萨拉的新跑步鞋是什么颜色？", options: ["亮绿色", "蓝色", "红色", "黑色"], correctAnswer: "亮绿色", explanation: "故事描述这双鞋子是亮绿色的。"),
            ExerciseItem(prompt: "詹姆斯在公园散步时突然下起了雨。他撑开一把黄色雨伞挡雨。詹姆斯用的雨伞是什么颜色？", options: ["黄色", "红色", "蓝色", "黑色"], correctAnswer: "黄色", explanation: "故事写道，詹姆斯撑开了一把黄色雨伞。"),
            ExerciseItem(prompt: "当地的面包店星期一停业整修。他们计划于星期二早上六点重新营业。面包店星期几关门？", options: ["星期一", "星期二", "星期三", "星期日"], correctAnswer: "星期一", explanation: "故事提到面包店在星期一因为整修而关门。"),
            ExerciseItem(prompt: "安娜打电话叫了水管工，因为她家的厨房水槽漏水了。水管工在一小时内赶到并修好了水管。安娜为什么叫水管工？", options: ["水槽漏水", "炉灶坏了", "灯泡坏了", "门锁住了"], correctAnswer: "水槽漏水", explanation: "故事中说她叫水管工是因为厨房水槽漏水了。"),
            ExerciseItem(prompt: "大卫带着他的狗麦克斯绕着街区散步。麦克斯看到一只松鼠，并对着它大声叫唤。大卫的狗叫什么名字？", options: ["麦克斯", "巴迪", "查理", "洛奇"], correctAnswer: "麦克斯", explanation: "故事里说大卫带着他的狗，麦克斯。"),
            ExerciseItem(prompt: "海伦在做晚餐的蔬菜汤。她发现胡萝卜用完了，所以改用了土豆。海伦做汤时什么食材用完了？", options: ["胡萝卜", "土豆", "洋葱", "芹菜"], correctAnswer: "胡萝卜", explanation: "故事提到她发现胡萝卜用完了。"),
            ExerciseItem(prompt: "彼得午餐点了一份培根披萨和一瓶汽水。总共花了十五美元。彼得的午餐花了多少钱？", options: ["十五美元", "十美元", "二十美元", "十二美元"], correctAnswer: "十五美元", explanation: "故事明确提到彼得的午餐总共花费十五美元。"),
            ExerciseItem(prompt: "爱丽丝去图书馆借了一本关于园艺的书。她还借了一张关于历史的DVD。爱丽丝借的书是什么主题？", options: ["园艺", "历史", "烹饪", "旅行"], correctAnswer: "园艺", explanation: "故事指出，她去图书馆借了一本关于园艺的书。"),
            ExerciseItem(prompt: "乔治早上乘火车去市中心参加面试。由于铁轨维护，他乘坐的火车晚点了十五分钟。火车为什么晚点？", options: ["铁轨维护", "暴风雨", "停电", "乘务员缺席"], correctAnswer: "铁轨维护", explanation: "故事中说火车晚点十五分钟是由于铁轨维护。"),
            ExerciseItem(prompt: "南希去园艺中心买红玫瑰。玫瑰卖光了，于是她买了一些粉色康乃馨。南希最后买了什么花？", options: ["粉色康乃馨", "红玫瑰", "黄色郁金香", "白色百合"], correctAnswer: "粉色康乃馨", explanation: "故事提到她最后买了粉色康乃馨代替红玫瑰。")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "数字规律",
        instructions: "根据数列规律，下一个数字应该是什么？",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "数列以每次加 2 的规律递增。"),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "数列以每次加 5 的规律递增。"),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "数列以每次加 10 的规律递增。"),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "数列以每次加 3 的规律递增。"),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "数列以每次减 1 的规律递减。"),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "数列以每次减 2 的规律递减。"),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "这是一个奇数列，每次递增 2。"),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "数列以每次加 4 的规律递增。"),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "数列以每次减 5 的规律递减。"),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "数列以每次减 10 的规律递减。"),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "数列以每次加 11 的规律递增。"),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "数列以每次加 2 的规律递增。"),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "数列以每次加 3 的规律递增。"),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "数列以每次减 3 的规律递减。"),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "数列以每次加 7 的规律递增。"),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "数列以每次减 4 的规律递减。"),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "数列以每次加 6 的规律递增。"),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "数列以每次加 5 的规律递增。"),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "数列以每次减 10 的规律递减。"),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "数列以每次加 2 的规律递增。")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "因果关系",
        instructions: "选择所描述情境下最可能发生的结果。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "在炎热的晴天里，你把冰淇淋放在厨房柜台上两个小时。会发生什么？", options: ["它变硬了", "它融化了", "它变了颜色", "它消失了"], correctAnswer: "它融化了", explanation: "高温热量会导致冰淇淋从冷冻固体状态融化成液体。"),

            ExerciseItem(prompt: "你三个星期忘记给室内的盆栽植物浇水了。最可能的结果是什么？", options: ["它开花了", "它保持翠绿", "它枯萎并干枯了", "它变成了蓝色"], correctAnswer: "它枯萎并干枯了", explanation: "植物需要水分来维持生命；长期不浇水会导致其枯萎和干枯。"),
            ExerciseItem(prompt: "乌云密布，雷声滚滚。接下来最可能发生什么？", options: ["要下雨了", "天气会变热", "会立即下雪", "星星会出来"], correctAnswer: "要下雨了", explanation: "雷声和乌云通常是降雨即将来临的征兆。"),
            ExerciseItem(prompt: "你不小心把一个玻璃碗摔在坚硬的瓷砖地板上。最可能的结果是什么？", options: ["它弹了回来", "它变了颜色", "它摔成了碎屑", "它变成了水"], correctAnswer: "它摔成了碎屑", explanation: "玻璃性脆，撞击硬物时极易碎裂。"),
            ExerciseItem(prompt: "你把一片面包放入烤面包机，并将档位调到了最高。会发生什么？", options: ["它变湿了", "它被烤焦变黑了", "它依然又软又白", "它消失了"], correctAnswer: "它被烤焦变黑了", explanation: "烤箱或面包机的热量过高时，会烤焦食物表面。"),
            ExerciseItem(prompt: "你把汽车大灯开了一整夜。第二天早上会怎么样？", options: ["车开得更快了", "电池没电了", "车变了颜色", "引擎立即启动了"], correctAnswer: "电池没电了", explanation: "通宵开启车灯会消耗殆尽蓄电池的电量。"),
            ExerciseItem(prompt: "一夜之间下了一场大雪，积雪深达六英寸。道路会怎么样？", options: ["路面依然干爽", "路面覆盖积雪且湿滑", "马路变成绿色", "路面蒸发了"], correctAnswer: "路面覆盖积雪且湿滑", explanation: "降雪会在道路表面累积，导致车辆打滑甚至带来隐患。"),
            ExerciseItem(prompt: "你把一盘装满水的托盘放入冰箱冷冻室。几个小时后会发生什么？", options: ["水烧开了", "水凝结成了冰块", "水完全蒸发了", "水改变了颜色"], correctAnswer: "水凝结成了冰块", explanation: "冷冻室的低温会让液态水凝结成固态的冰块。"),
            ExerciseItem(prompt: "你在炎热的夏天穿上厚羊毛袜和厚重的靴子。你的脚会怎么样？", options: ["感觉很冷", "保持干爽", "又热又出汗", "变蓝了"], correctAnswer: "又热又出汗", explanation: "厚重的保暖衣物在炎热气候中会导致闷热并产生大量汗水。"),
            ExerciseItem(prompt: "一个人连续24小时不睡觉。他可能会有什么感觉？", options: ["精力充沛", "疲倦和困倦", "非常饥饿", "无比兴奋"], correctAnswer: "疲倦和困倦", explanation: "睡眠不足直接导致身体疲劳和精神困顿。"),

            ExerciseItem(prompt: "你往一杯热茶里加了白糖并进行搅拌。白糖会怎么样？", options: ["它结成了冰", "它从杯里蒸发了", "它溶解在茶里", "它烤焦了"], correctAnswer: "它溶解在茶里", explanation: "搅拌有助于白糖快速溶解在热茶中。"),
            ExerciseItem(prompt: "你没带雨伞也没穿雨衣就走入了倾盆大雨中。结果会如何？", options: ["身上依然很干", "衣服全部淋湿了", "身上变蓝了", "感觉更暖和"], correctAnswer: "衣服全部淋湿了", explanation: "没有防雨用具会在大雨中被雨水迅速淋湿。"),
            ExerciseItem(prompt: "你拼命往一个气球里吹气，直到它变得鼓鼓囊囊。会发生什么？", options: ["它飞上月球", "它爆裂了", "它变成了一只鸟", "它缩水了"], correctAnswer: "它爆裂了", explanation: "吹入气体过多会超过气球乳胶所能承受的压强极限，导致爆破。"),
            ExerciseItem(prompt: "夜里你关掉一间没有窗户的房间里所有的灯。会发生什么？", options: ["房间变亮了", "房间变得漆黑一片", "房间变成了绿色", "房间充满了光线"], correctAnswer: "房间变得漆黑一片", explanation: "在没有外来光和窗户的封闭空间里关掉全部照明会导致一片黑暗。"),
            ExerciseItem(prompt: "你完全没有复习或准备一门难度很大的考试。最可能的结果是什么？", options: ["获得满分", "考得很差", "忘记自己的名字", "考试被取消了"], correctAnswer: "考得很差", explanation: "缺乏复习和应试准备，通常难以通过具有一定难度的考核。")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "情感识别",
        instructions: "阅读以下情境，选择当事人最可能产生的情绪。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "萨拉得知自己在一次重要比赛中获得了第一名。她感觉如何？", options: ["悲伤", "愤怒", "高兴", "害怕"], correctAnswer: "高兴", explanation: "赢得比赛是令人兴奋和快乐的事情。"),
            ExerciseItem(prompt: "大卫半夜听到楼下传来一阵奇怪的巨大声响。他感觉如何？", options: ["高兴", "害怕", "无聊", "兴奋"], correctAnswer: "害怕", explanation: "在黑暗和未知中突然听到巨响会让人感到恐惧和害怕。"),
            ExerciseItem(prompt: "玛丽最好的朋友搬家去了很远的外省。玛丽感觉如何？", options: ["悲伤", "愤怒", "兴奋", "嫉妒"], correctAnswer: "悲伤", explanation: "面对亲密好友的离别，人会感到不舍与伤心。"),
            ExerciseItem(prompt: "在超市里，有人突然插队排到了约翰的前面。约翰感觉如何？", options: ["高兴", "害怕", "气恼", "尴尬"], correctAnswer: "气恼", explanation: "遭遇他人的不文明行为往往容易让人产生气恼或反感。"),
            ExerciseItem(prompt: "艾米丽即将要在非常多的观众面前发表公开演讲。她感觉如何？", options: ["紧张", "无聊", "悲伤", "愤怒"], correctAnswer: "紧张", explanation: "在大庭广众下发言通常会使人体验到紧张和焦虑情绪。"),
            ExerciseItem(prompt: "罗伯特的航班被取消了，导致他的度假行程被迫推迟了两天。他感觉如何？", options: ["沮丧", "高兴", "害怕", "自豪"], correctAnswer: "沮丧", explanation: "计划被打乱和行程取消会给人带来强烈的沮丧感。"),
            ExerciseItem(prompt: "莉萨的儿子以优异的成绩从大学毕业了。莉萨感觉如何？", options: ["自豪", "嫉妒", "悲伤", "害怕"], correctAnswer: "自豪", explanation: "看到子女获得卓越的成就，父母会打心底里感到自豪。"),
            ExerciseItem(prompt: "店员第四次解释了一份复杂的表格，但亚瑟依然听得一头雾水。亚瑟感觉如何？", options: ["困惑", "高兴", "兴奋", "自豪"], correctAnswer: "困惑", explanation: "对于信息难以理解和掌握时会令人体验到困惑感。"),
            ExerciseItem(prompt: "詹姆斯在一个安静的候诊室里坐了两个多小时，手头没有任何书报。他感觉如何？", options: ["无聊", "害怕", "愤怒", "高兴"], correctAnswer: "无聊", explanation: "长时间在缺乏外界信息刺激的环境中等待会引起无聊和倦怠。"),
            ExerciseItem(prompt: "艾伦的家人背着她策划了一个惊喜生日派对，邀请了她所有的朋友。她感觉如何？", options: ["惊喜", "愤怒", "悲伤", "害怕"], correctAnswer: "惊喜", explanation: "未曾预料的快乐庆祝派对会带来惊喜的体验。"),
            ExerciseItem(prompt: "凯伦在散步时，一只流浪狗冲出来冲她凶猛地叫唤。她感觉如何？", options: ["受惊", "高兴", "无聊", "自豪"], correctAnswer: "受惊", explanation: "面对可能具有攻击性的动物威胁，人会感到害怕与受惊。"),
            ExerciseItem(prompt: "威廉在打理花园时不小心丢失了他的结婚戒指。他感觉如何？", options: ["难过", "兴奋", "无聊", "平静"], correctAnswer: "难过", explanation: "失去具有珍贵纪念意义的物品会让人十分难过。"),
            ExerciseItem(prompt: "帕特里夏收到了孙子孙女寄来的精美贺卡和鲜花。她感觉如何？", options: ["幸福", "愤怒", "害怕", "困惑"], correctAnswer: "幸福", explanation: "受到亲人的亲切关怀会让长辈感到温馨和备受关爱（或译为“幸福”）。"),
            ExerciseItem(prompt: "杂货店里李察想买的那款特定牌子的面包卖完了，他只好买了另一个牌子。他感觉如何？", options: ["有些失望", "极度恐慌", "出离愤怒", "欣喜若狂"], correctAnswer: "有些失望", explanation: "未能买到心仪的商品会让人感到小小的遗憾或失望。"),
            ExerciseItem(prompt: "查尔斯花了一整个下午组装书架，最后的效果非常完美。他感觉如何？", options: ["满足", "悲伤", "害怕", "无聊"], correctAnswer: "满足", explanation: "通过辛勤劳动并圆满完成一件手工作品会带来极大的满足感。"),
            ExerciseItem(prompt: "琳达在一个非常安静的餐厅里不小心碰倒了托盘，弄洒了饮料。她感觉如何？", options: ["尴尬", "高兴", "愤怒", "无聊"], correctAnswer: "尴尬", explanation: "在公共场所因个人失误引来旁人侧目，通常会令人大感尴尬。"),
            ExerciseItem(prompt: "托马斯明天早上将启程去夏威夷进行他人生中第一次旅行。他感觉如何？", options: ["兴奋", "悲伤", "愤怒", "无聊"], correctAnswer: "兴奋", explanation: "期待已久的休闲旅行即将开始，人会感到非常兴奋。"),
            ExerciseItem(prompt: "苏珊失踪了三天的猫今天安全回家了。她感觉如何？", options: ["松了一口气", "愤怒", "害怕", "困惑"], correctAnswer: "松了一口气", explanation: "长期悬着的一桩忧虑得到了圆满解决，会令人长舒一口气（松了一口气/宽慰）。"),
            ExerciseItem(prompt: "在乔治试图处理工作时，网络连接每隔五分钟就会断开一次。他感觉如何？", options: ["烦躁", "害怕", "高兴", "无聊"], correctAnswer: "烦躁", explanation: "频发的网络故障阻碍了工作进程，容易激发烦躁或恼怒情绪。"),
            ExerciseItem(prompt: "海伦在忙碌紧张的一天后泡了一个舒服的热水澡。她感觉如何？", options: ["放松", "愤怒", "害怕", "紧张"], correctAnswer: "放松", explanation: "温水浴有助于消除生理和心理的紧张状态，带给人放松感。")
        ]
    )

    // MARK: - Exercise 10: What's Wrong Here?
    private static let exercise10 = Exercise(
        title: "错漏辨析",
        instructions: "选择句子中逻辑错误或现实中不可能的地方。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "约翰在去睡觉前的午夜时分吃了一顿丰盛的早餐。", options: ["人类是不需要吃东西的", "早餐是早晨的餐饮，而不是在半夜", "约翰此时不应该睡觉", "午夜指的是在下午"], correctAnswer: "早餐是早晨的餐饮，而不是在半夜", explanation: "“早餐”按定义是一天中早晨吃的第一顿饭，不能是午夜。"),
            ExerciseItem(prompt: "狗对着邮递员汪汪大叫，然后飞过屋顶去抓一只小鸟。", options: ["狗一般是不会叫的", "狗是不可能会飞的", "邮递员从来不送报信", "鸟类一般是不会飞的"], correctAnswer: "狗是不可能会飞的", explanation: "狗是哺乳动物，没有翅膀，无法在空中飞翔。"),
            ExerciseItem(prompt: "萨拉在七月的烈日下，套上厚厚的冬季大衣和手套，跳入室外泳池游泳。", options: ["人们在七月份是不游泳的", "游泳时通常不需要穿着冬季大衣和手套", "现实中不存在室外泳池", "羽绒大衣是在夏季穿的"], correctAnswer: "游泳时通常不需要穿着冬季大衣和手套", explanation: "游泳应穿着专门的泳衣，厚重冬装会导致危险且不合常理。"),
            ExerciseItem(prompt: "墙上的时钟响亮地敲了十三下，亚瑟知道该喝他的早晨咖啡了。", options: ["时钟是不能挂在墙上的", "普通的12小时制钟表表盘最多只有十二个小时", "早晨是不应该喝咖啡的", "亚瑟从来都不喝茶"], correctAnswer: "普通的12小时制钟表表盘最多只有十二个小时", explanation: "日常所用的普通挂钟的表盘指示是一到十二小时。"),
            ExerciseItem(prompt: "保罗骑着他的自行车穿过深水湖泊去拜访他的朋友。", options: ["自行车无法在水面上骑行", "深湖里面从来没有鱼类", "朋友之间是不应该拜访的", "自行车上面没有踏板"], correctAnswer: "自行车无法在水面上骑行", explanation: "自行车是陆地交通工具，进入湖中会沉水。"),
            ExerciseItem(prompt: "琳达把一些冰块放进锅里烧开，用以制作冰凉的饮用水。", options: ["世界上根本没有冰块这种东西", "烧开冰块会让它们变成热水而不是凉水", "铁锅是无法盛装冰块的", "饮用水对人体健康有害"], correctAnswer: "烧开冰块会让它们变成热水而不是凉水", explanation: "冰块加热融化并烧开会得到滚烫的热水，无法直接得到冰凉的水。"),
            ExerciseItem(prompt: "鱼爬上了高高的树梢，以躲避后面饥饿的猫。", options: ["鱼类是无法爬树的", "猫是不可能吃鱼的", "树木是不可能会长树叶的", "鱼类通常都生活在树上"], correctAnswer: "鱼类是无法爬树的", explanation: "鱼生活在水中，没有用于爬树的四肢。"),
            ExerciseItem(prompt: "詹姆斯买了一双皮鞋戴在手上，以便在冬天保暖。", options: ["鞋子是穿在脚上的，而不是戴在手上的", "皮革不能用来制作鞋子", "手在冬天是不会感到寒冷的", "冬天其实一点也不冷"], correctAnswer: "鞋子是穿在脚上的，而不是戴在手上的", explanation: "手套才是戴在手上的，鞋子是穿在脚底的。"),
            ExerciseItem(prompt: "罗伯特用一把钢叉子来喝他的热鸡汤。", options: ["叉子无法盛起液态的汤水", "鸡汤里面是没有鸡肉的", "罗伯特应该改用一把菜刀", "喝汤是不需要借助任何餐具的"], correctAnswer: "叉子无法盛起液态的汤水", explanation: "叉子有缝隙，盛液体时会漏光；喝汤应该使用勺子。"),
            ExerciseItem(prompt: "外面正下着倾盆大雨，南希却把洗好的湿衣服晾在室外的绳子上晒干。", options: ["雨水无法把衣服淋湿", "下雨天衣服挂在室外是无法晒干的", "晾衣绳只能安装在室内", "南希不穿衣服"], correctAnswer: "下雨天衣服挂在室外是无法晒干的", explanation: "雨天潮湿多雨，衣服在室外不仅不会晒干反而会被雨水浸湿。"),
            ExerciseItem(prompt: "飞机在机场跑道安全降落，随后全体旅客依次走上了铁轨。", options: ["飞机是不降落在机场的", "旅客是不可能乘坐飞机的", "机场的客机登机口附近通常不设置铁轨", "火车是不能在铁轨上行驶的"], correctAnswer: "机场的客机登机口附近通常不设置铁轨", explanation: "飞机停靠的是航站楼的廊桥或跑道闸口，而不是火车的铁轨。"),
            ExerciseItem(prompt: "海伦调高了空调的冷风档位，想让起居室里更温暖一些。", options: ["空调的冷风档是降温的，无法起到制热效果", "起居室通常是不存在墙壁的", "海伦没有居住的房屋", "空调运转是不需要消耗电能的"], correctAnswer: "空调的冷风档是降温的，无法起到制热效果", explanation: "空调的制冷功能会吹出冷风降低温度，而无法提升室内温度。"),
            ExerciseItem(prompt: "可爱的小兔子飞快地穿过森林，追赶着那只身躯高大的灰狼。", options: ["兔子不生活在森林里", "狼在奔跑时是没有声音的", "兔子是不可能追赶狼的", "狼不是灰色的"], correctAnswer: "兔子是不可能追赶狼的", explanation: "狼是食肉动物，兔子是猎物；在自然界中通常是兔子逃避狼的捕食。"),
            ExerciseItem(prompt: "太阳在午夜十二点高高升起，照亮了清晨的天空。", options: ["太阳在早晨升起，而不是在半夜零点", "午夜其实指的是在下午时分", "太阳其实不散发光芒", "清晨往往是漆黑一片的"], correctAnswer: "太阳在早晨升起，而不是在半夜零点", explanation: "午夜零点是夜深时刻，太阳由于地球自转隐藏在另一侧，无法升起照亮天空。"),
            ExerciseItem(prompt: "爱丽丝打开了卧室的电视机，想收听她最喜欢的电台广播。", options: ["电视机主要是播放画面和伴音的，而不是收音机", "电台广播是不播放音乐的", "爱丽丝讨厌任何声响", "电视机内是不装设扬声器的"], correctAnswer: "电视机主要是播放画面和伴音的，而不是收音机", explanation: "收听无线电广播节目应当使用收音机；电视机用于观看视频图像。")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "阅读药单说明",
        instructions: "阅读标签信息，并回答后面的问题。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "药标：每次 1 片，每日 2 次，随餐服用。你一天总共应该吃几片药？", options: ["1片", "2片", "3片", "4片"], correctAnswer: "2片", explanation: "每天吃两次，每次一片，则 1 + 1 = 2 片。"),
            ExerciseItem(prompt: "药标：临睡前服用 2 片。你应该在什么时候吃这个药？", options: ["早上", "午餐时", "临睡前", "运动前"], correctAnswer: "临睡前", explanation: "标签说明上明确写道“临睡前服用”。"),
            ExerciseItem(prompt: "药标：每 8 小时服用 1 粒，根据疼痛程度按需服用。在 24 小时的一天内，你最多可以服用几次？", options: ["2次", "3次", "4次", "6次"], correctAnswer: "3次", explanation: "一天有 24 小时。24 除以 8 等于 3 次。"),
            ExerciseItem(prompt: "药标：阿莫西林 250mg。每次 1 片，每日三次。需冷藏。应该如何保存该药品？", options: ["放进冷冻室", "放进冷藏室（冰箱）", "放在温暖的橱柜里", "放在阳光直射处"], correctAnswer: "放进冷藏室（冰箱）", explanation: "“需冷藏”意味着药品应该存放在冷藏箱或冰箱冷藏室中。"),
            ExerciseItem(prompt: "药标：服药期间禁止饮酒。可能会产生嗜睡反应。标签警告了该药的什么副作用？", options: ["嗜睡", "精力大增", "高血压", "打喷嚏"], correctAnswer: "嗜睡", explanation: "标签指出“可能会产生嗜睡反应”。"),
            ExerciseItem(prompt: "药标：每天清晨空腹服用 1 片。你应该在什么时候吃早餐？", options: ["吃药之前", "吃药之后", "吃药的同时", "不需要吃早餐"], correctAnswer: "吃药之后", explanation: "空腹服药意味着应当在吃早餐或进食之前把药吞服。"),
            ExerciseItem(prompt: "药标：每天口服 1 片。数量：30片。可开药次数：2次。允许开药几次？", options: ["1次", "2次", "3次", "30次"], correctAnswer: "2次", explanation: "标签列出“可开药次数（配药/Refills）：2次”。"),
            ExerciseItem(prompt: "药标：每天两次在外用患处涂抹薄薄一层。切勿吞服。应如何使用该药？", options: ["直接吞服", "涂抹在皮肤上", "喷入鼻腔内", "在水中溶解后饮用"], correctAnswer: "涂抹在皮肤上", explanation: "标签明确要求“在外用患处涂抹”，表明这是皮肤外用制剂。"),
            ExerciseItem(prompt: "药标：2026年10月15日后废弃。今天是2026年11月1日。你现在吃这药安全吗？", options: ["安全", "不安全", "只有配饭吃才安全", "只有夜里吃才安全"], correctAnswer: "不安全", explanation: "药品在2026年10月15日已经过期，所以过期后服用是不安全的。"),
            ExerciseItem(prompt: "药标：每次 1 片，每日 2 次。避免与乳制品同服。服药时应避免饮用什么？", options: ["温水", "牛奶", "苹果汁", "黑咖啡"], correctAnswer: "牛奶", explanation: "牛奶属于典型的乳制品，根据说明需要避免同时饮用。"),
            ExerciseItem(prompt: "药标：起飞前 1 小时服用 2 片。你为什么需要吃这个药？", options: ["为了防止旅行中的晕机反应", "为了在家睡得更香", "为了治疗头痛", "为了治疗皮肤红疹"], correctAnswer: "为了防止旅行中的晕机反应", explanation: "在登机起飞前一小时服用的药物通常是用于预防晕机或动晕症。"),
            ExerciseItem(prompt: "药标：眼药水。每日两次，每次每眼滴入 1 滴。药液应该用在什么地方？", options: ["嘴里", "耳朵里", "眼睛里", "皮肤上"], correctAnswer: "眼睛里", explanation: "眼药水专用于眼睛，滴入眼结膜囊内。"),
            ExerciseItem(prompt: "药标：头痛时每 4 到 6 小时服用 1 片。每日最大剂量 4 片。一天内最多能吃几片？", options: ["1片", "2片", "4片", "6片"], correctAnswer: "4片", explanation: "标签规定了“每日最大剂量 4 片”。"),
            ExerciseItem(prompt: "药标：用温开水送服。为什么吃药需要喝水？", options: ["为了在皮肤上溶解药片", "为了帮助吞咽并减轻胃部不适", "为了改变药品颜色", "为了改善药品的口味"], correctAnswer: "为了帮助吞咽并减轻胃部不适", explanation: "大量温水送服药物可以防止药物附着于食道，同时稀释药物减轻对胃黏膜的刺激。"),
            ExerciseItem(prompt: "药标：每天随晚餐服用 1 片。最佳服药时间是什么时候？", options: ["吃早餐时", "吃午餐时", "吃晚餐时", "半夜"], correctAnswer: "吃晚餐时", explanation: "说明要求随“晚餐”服用。")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "阅读菜单",
        instructions: "利用菜单信息回答相关问题。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "菜单：芝士汉堡 $8.00，炸薯条 $3.00，苏打水 $2.00。芝士汉堡多少钱？", options: ["$8.00", "$3.00", "$2.00", "$11.00"], correctAnswer: "$8.00", explanation: "菜单价格表上明确标明芝士汉堡为 8.00 美元。"),
            ExerciseItem(prompt: "菜单：咖啡 $2.50，茶 $2.00，马芬蛋糕 $3.00。哪样东西最便宜？", options: ["咖啡", "茶", "马芬蛋糕", "它们的价格一样"], correctAnswer: "茶", explanation: "茶的价格是 2.00 美元，是价格表中最低的。"),
            ExerciseItem(prompt: "菜单：番茄汤 $5.00，田园沙拉 $6.00，凯撒鸡肉沙拉 $9.00。一碗番茄汤多少钱？", options: ["$5.00", "$6.00", "$9.00", "$14.00"], correctAnswer: "$5.00", explanation: "番茄汤标价为 5.00 美元。"),
            ExerciseItem(prompt: "菜单：薄煎饼套餐 $10.00，法式吐司 $9.00，单点培根 $4.00。法式吐司多少钱？", options: ["$10.00", "$9.00", "$4.00", "$13.00"], correctAnswer: "$9.00", explanation: "法式吐司的价格列为 9.00 美元。"),
            ExerciseItem(prompt: "菜单：普通芝士披萨单片 $4.00，辣香肠披萨单片 $4.50。辣香肠披萨比普通芝士披萨贵多少？", options: ["$0.50", "$1.00", "$4.50", "$8.50"], correctAnswer: "$0.50", explanation: "相差价格为：4.50 美元减去 4.00 美元，得出 0.50 美元。"),
            ExerciseItem(prompt: "菜单：鸡肉三明治 $7.00，炸鱼薯条 $11.00。你手头有 $10.00。你可以买得起哪样？", options: ["鸡肉三明治", "炸鱼薯条", "两样都可以", "两样都买不起"], correctAnswer: "鸡肉三明治", explanation: "鸡肉三明治 7.00 美元，少于你有的 10.00 美元。"),
            ExerciseItem(prompt: "菜单：儿童餐（12岁以下）$6.00，成人汉堡 $12.00。一个8岁儿童吃餐要付多少钱？", options: ["$6.00", "$12.00", "$8.00", "$18.00"], correctAnswer: "$6.00", explanation: "8岁符合“12岁以下”的标准，因此适用 6.00 美元的儿童餐价。"),
            ExerciseItem(prompt: "菜单：巧克力冰淇淋 $4.00，苹果派 $5.00，苹果派加香草冰淇淋另加 $1.50。苹果派加香草冰淇淋总共多少钱？", options: ["$5.00", "$6.50", "$9.00", "$4.00"], correctAnswer: "$6.50", explanation: "价格为 5.00 美元加上 1.50 美元，等于 6.50 美元。"),
            ExerciseItem(prompt: "菜单：火鸡卷饼 $8.50，薯片 $1.50，果汁 $2.00。一份火鸡卷饼配一杯果汁总共多少钱？", options: ["$8.50", "$10.00", "$10.50", "$12.00"], correctAnswer: "$10.50", explanation: "价格为：8.50 美元加上 2.00 美元，等于 10.50 美元。"),
            ExerciseItem(prompt: "菜单：特价午餐（上午11点至下午3点供应）$9.00。常规晚餐菜单 $15.00。现在是下午1点，特价午餐多少钱？", options: ["$9.00", "$15.00", "$11.00", "$3.00"], correctAnswer: "$9.00", explanation: "下午 1 点在午餐特价供应时间内（11点到3点），所以价格是 9.00 美元。"),
            ExerciseItem(prompt: "菜单：咖啡 $2.00（免费续杯），热茶 $2.50。如果你喝了三杯咖啡，总共要付多少钱？", options: ["$2.00", "$6.00", "$2.50", "$7.50"], correctAnswer: "$2.00", explanation: "咖啡标明“免费续杯”，因此无论喝几杯都只需支付初始的 2.00 美元。"),
            ExerciseItem(prompt: "菜单：蔬菜汤 $4.00，红烧牛肉 $7.00。哪样菜里含有肉类？", options: ["蔬菜汤", "红烧牛肉", "两样都有", "两样都没有"], correctAnswer: "红烧牛肉", explanation: "红烧牛肉中含有牛肉（肉类）；蔬菜汤不含肉类。"),
            ExerciseItem(prompt: "菜单：塔可饼 $3.00，芝士薄饼 $6.00，苏打水 $2.00。芝士薄饼多少钱？", options: ["$3.00", "$6.00", "$2.00", "$8.00"], correctAnswer: "$6.00", explanation: "菜单价格明细上显示芝士薄饼为 6.00 美元。"),
            ExerciseItem(prompt: "菜单：意面 $12.00，千层面 $14.00，大蒜面包 $3.00。一份大蒜面包多少钱？", options: ["$12.00", "$14.00", "$3.00", "$15.00"], correctAnswer: "$3.00", explanation: "大蒜面包的价格标为 3.00 美元。"),
            ExerciseItem(prompt: "菜单：班尼迪克蛋 $11.00，燕麦粥 $6.00，水果盘 $5.00。哪一样早餐最贵？", options: ["班尼迪克蛋", "燕麦粥", "水果盘", "它们价格相同"], correctAnswer: "班尼迪克蛋", explanation: "班尼迪克蛋的价格是 11.00 美元，是列表中最高的。")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "阅读账单",
        instructions: "阅读账单里的信息，并解答相关问题。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "电费账单：应付总额：$45.00。到期日：7月15日。你一共需要支付多少钱？", options: ["$15.00", "$45.00", "7月15日", "免费"], correctAnswer: "$45.00", explanation: "账单上列出的应付总额是 45.00 美元。"),
            ExerciseItem(prompt: "水费账单：到期日：10月10日。滞纳金：$5.00。今天是10月12日。如果你今天付款会怎么样？", options: ["只需付常规金额", "你需要额外支付 $5.00 滞纳金", "获得折扣优惠", "没有变化"], correctAnswer: "你需要额外支付 $5.00 滞纳金", explanation: "因为付款日期已经过了截止日期，所以会产生逾期滞纳金。"),
            ExerciseItem(prompt: "宽带账单：月费：$60.00。自动扣款优惠：-$5.00。开通自动扣款后，最终价格是多少？", options: ["$60.00", "$65.00", "$55.00", "$5.00"], correctAnswer: "$55.00", explanation: "最终价格是月费减去优惠：60.00 美元减去 5.00 美元，等于 55.00 美元。"),
            ExerciseItem(prompt: "燃气账单：本期费用：$30.00。往期未付余额：$10.00。账单总计：$40.00。上个月结转下来未付的钱是多少？", options: ["$30.00", "$10.00", "$40.00", "$0.00"], correctAnswer: "$10.00", explanation: "往期未付余额（Unpaid Balance）是 10.00 美元，即结转下来的款项。"),
            ExerciseItem(prompt: "电话账单：截止到期日：6月20日。当前日期：6月15日。你还剩几天时间来按时支付账单？", options: ["5天", "20天", "15天", "1天"], correctAnswer: "5天", explanation: "从 6月15日 到 6月20日 之间还相差 5 天时间。"),
            ExerciseItem(prompt: "垃圾清运费：季度费用（3个月）：$36.00。折算下来平均每个月是多少钱？", options: ["$36.00", "$12.00", "$18.00", "$6.00"], correctAnswer: "$12.00", explanation: "一季度 36.00 美元除以 3 个月，等于平均每月 12.00 美元。"),
            ExerciseItem(prompt: "有线电视账单：应付总额：$80.00。收款人：“XYZ有线公司”。支票抬头应该写谁的名字？", options: ["$80.00", "XYZ有线公司", "电视安装工", "现金"], correctAnswer: "XYZ有线公司", explanation: "账单上注明收款对象是“XYZ有线公司”。"),
            ExerciseItem(prompt: "市政公用账单：水费：$20.00，燃气费：$30.00，电费：$50.00。总计：$100.00。哪项市政服务最贵？", options: ["水费", "燃气费", "电费", "它们一样贵"], correctAnswer: "电费", explanation: "电费价格是 50.00 美元，是各项中最高的。"),
            ExerciseItem(prompt: "车辆保险：半年期保费：$600.00。你多久需要支付一次这个账单？", options: ["每个月", "每6个月（一年两次）", "一年一次", "每周"], correctAnswer: "每6个月（一年两次）", explanation: "半年（Semi-Annual）保费对应的是每隔 6 个月缴费一次。"),
            ExerciseItem(prompt: "流媒体服务账单：账号状态：已暂停。未付余额：$15.00。服务为什么无法正常使用？", options: ["网断了", "电视坏了", "账号因欠费未付已被系统暂停", "视频正在缓冲"], correctAnswer: "账号因欠费未付已被系统暂停", explanation: "账单明确说明账号状态已被“暂停”（SUSPENDED）。"),
            ExerciseItem(prompt: "健身房会员：年费：$120.00。月费：$10.00。一整年的费用是多少钱？", options: ["$10.00", "$120.00", "$130.00", "$12.00"], correctAnswer: "$120.00", explanation: "年费（Annual Fee）代表全年的费用，为 120.00 美元。"),
            ExerciseItem(prompt: "取暖费账单：一月份：$110.00。七月份：$20.00。为什么一月份的取暖费要高得多？", options: ["夏季燃气更贵", "一月份是冬季，使用了更多的暖气", "一月份家里没有人", "夏令时调整的影响"], correctAnswer: "一月份是冬季，使用了更多的暖气", explanation: "一月份属于严寒的冬季，需要开启大量暖气取暖，所以电量或气量消耗大。"),
            ExerciseItem(prompt: "信用卡账单：最低还款额：$25.00。账单总额：$500.00。本月你最少要还多少钱才能避免逾期罚息？", options: ["$25.00", "$500.00", "$0.00", "$475.00"], correctAnswer: "$25.00", explanation: "本期的“最低还款额”（Minimum Payment）是 25.00 美元。"),
            ExerciseItem(prompt: "医疗账单：总费用：$150.00。保险报销：$120.00。自付金额：$30.00。你实际还需要付多少钱？", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "患者自付金额（Patient Responsibility）是你需要承担的尾款，即 30.00 美元。"),
            ExerciseItem(prompt: "报纸订阅：下一次续订日期：2026年12月31日。如果你想在自动续订前取消，你应该在何时打电话？", options: ["2026年12月31日之前", "2026年12月31日之后", "2027年1月份", "任何时候都不行"], correctAnswer: "2026年12月31日之前", explanation: "在下一次扣费续订日前取消订阅，可以阻止系统自动扣下期的费用。")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "行为抉择",
        instructions: "选择遇到下列情境时最合适、最妥当的做法。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "你闻到厨房有烟味，但没有看到明火。你首先应该做什么？", options: ["不予理会", "打开窗户排烟并检查炉灶", "给朋友打电话聊天", "继续回房睡觉"], correctAnswer: "打开窗户排烟并检查炉灶", explanation: "检查热源和炉灶是排查厨房隐患并防止险情扩大的安全首步。"),
            ExerciseItem(prompt: "你在超市结账时，突然发现自己的钱包忘在了家里。最稳当的做法是什么？", options: ["不付钱直接提走商品", "请收银员先帮忙保管购物车，自己回家去拿钱包", "大哭着离开超市", "在收银台跟经理争吵"], correctAnswer: "请收银员先帮忙保管购物车，自己回家去拿钱包", explanation: "这是最礼貌且符合超市处理流程的办法。"),
            ExerciseItem(prompt: "你不小心把一个生鸡蛋掉到了厨房的地板上，摔碎了。你应该怎么做？", options: ["留在地板上等明天再说", "立即用纸巾擦干净，并用洗洁精清洁地板", "用一张地毯把它盖住", "让家里的宠物猫把它舔吃掉"], correctAnswer: "立即用纸巾擦干净，并用洗洁精清洁地板", explanation: "生鸡蛋在地板上很滑容易让人摔倒，且极易滋生细菌，应立即清理。"),
            ExerciseItem(prompt: "你的朋友告诉你，他养的狗昨天因病去世了。你应该对他说什么？", options: ["那太搞笑了", "请节哀，听到这个消息我很难过", "你应该改养一只猫", "我能要它的玩具吗？"], correctAnswer: "请节哀，听到这个消息我很难过", explanation: "向失去爱宠的朋友表达慰问和同理心是礼貌友善的行为。"),
            ExerciseItem(prompt: "你接到陌生电话，宣称你中了巨额彩票大奖，并索要你的银行账户详情。你该怎么办？", options: ["立即把你的账号和密码告诉对方", "直接挂断电话，不透露任何个人隐私信息", "让对方稍后再打过来", "打电话通知所有的家人庆祝"], correctAnswer: "直接挂断电话，不透露任何个人隐私信息", explanation: "主动索要银行密码和敏感信息的电话绝大多数是电信诈骗，千万不能透露。"),
            ExerciseItem(prompt: "在闷热的房间里站立时，你突然感觉头晕目眩、眼前发黑。你应当怎么做？", options: ["继续站着并紧闭双眼", "立刻坐下来，并喝一点水", "飞快地跑到卫生间", "原地打转"], correctAnswer: "立刻坐下来，并喝一点水", explanation: "立刻坐下能够有效避免因晕厥摔伤，补充水分可缓解因脱水带来的不适。"),
            ExerciseItem(prompt: "你发现厨房水槽下方正在不断漏水。你第一步应该做什么？", options: ["打电话联系粉刷匠", "在漏水处下方放一个水桶接水", "晚点再用拖把来拖地", "关掉家里的所有电灯"], correctAnswer: "在漏水处下方放一个水桶接水", explanation: "用容器接水可以在等待修理时，防止积水浸湿并损坏地板柜体。"),
            ExerciseItem(prompt: "你收到了正式晚餐派对的邀请，但你临时有事无法出席。你应该怎么办？", options: ["干脆直接不出席也不说明", "提前通知邀请人你无法按时出席", "不打招呼迟到很久", "不回复邀请，只送一份礼"], correctAnswer: "提前通知邀请人你无法按时出席", explanation: "提前婉拒以便让主办方调整席位和餐饮准备，是社交基本礼仪。"),
            ExerciseItem(prompt: "在朋友家做客时，你不小心打破了一个精美的花瓶。最正确的应对是什么？", options: ["把碎瓷片踢到沙发底下藏起来", "真诚道歉并主动提出赔偿或购买一个新的", "假装不是自己打破的", "把责任推给朋友家的狗"], correctAnswer: "真诚道歉并主动提出赔偿或购买一个新的", explanation: "诚实面对错误并承担后果是负责任和维持友谊的正确做法。"),
            ExerciseItem(prompt: "你找不到钥匙，结果把自己锁在了大门外。最合理的下一步是什么？", options: ["砸碎窗户爬进屋里", "打电话给有备用钥匙的家人或者叫专业锁匠", "一辈子坐在门廊等候", "用力踹门把门踢开"], correctAnswer: "打电话给有备用钥匙的家人或者叫专业锁匠", explanation: "寻求备用钥匙或找持证锁匠开门是安全且不会破坏房屋的做法。"),
            ExerciseItem(prompt: "你注意到街上的路灯都亮着，但你的屋子里却断电了。你应该做什么？", options: ["检查你家里的空气开关/保险丝盒", "出门买一台新电视机", "马上上床睡觉", "打电话叫警察来处理"], correctAnswer: "检查你家里的空气开关/保险丝盒", explanation: "检查断路器可排查是家里负荷过大跳闸还是局部的电力故障。"),
            ExerciseItem(prompt: "你看到一位年迈的邻居提着沉重的杂货袋，走得很吃力。你应该怎么做？", options: ["加快脚步从他身边走过去", "主动上前询问并帮他提袋子", "拿出手机拍张照片", "催促他走快一点"], correctAnswer: "主动上前询问并帮他提袋子", explanation: "邻里之间主动扶弱济困体现了善良与人文关怀。"),
            ExerciseItem(prompt: "你喝了一口咖啡，发现它太烫了，把你的嘴给烫了一下。你应该怎么做？", options: ["赶紧把剩下的全部一口气喝完", "把嘴里的咖啡吐掉，并立刻喝凉水冷敷", "大声尖叫", "把咖啡杯子扔到地上"], correctAnswer: "把嘴里的咖啡吐掉，并立刻喝凉水冷敷", explanation: "用凉水降温可以减轻烫伤对黏膜的损伤并快速止痛。"),
            ExerciseItem(prompt: "医生给你开了一种新药，但你对服药剂量和方法不太明白。你应该怎么做？", options: ["自己猜测大概的剂量吃", "询问药房药剂师或者开药的医生来解答疑惑", "干脆不吃这个药", "在社交媒体上搜寻别人的吃法"], correctAnswer: "询问药房药剂师或者开药的医生来解答疑惑", explanation: "唯有医生和持牌药剂师能提供科学、可靠的临床用药指导。"),
            ExerciseItem(prompt: "你不小心把红酒洒在朋友家崭新的白色地毯上。你应该怎么做？", options: ["挪动一把椅子盖住污渍", "真诚道歉并立即动手帮忙清理干净", "马上离开派对回家", "告诉他们这是紫葡萄汁"], correctAnswer: "真诚道歉并立即动手帮忙清理干净", explanation: "立刻采取急救措施能防止红酒色素永久渗透进地毯纤维。"),
            ExerciseItem(prompt: "你听到你家的烟雾报警器每隔一分钟就发出一声急促的短促唧唧声。这代表什么？", options: ["发生火灾了", "报警器电池电量低，需要更换电池", "报警器彻底坏了", "没有任何含义"], correctAnswer: "报警器电池电量低，需要更换电池", explanation: "间歇性的短促哔哔声是烟雾报警器预设的低电量更换电池警报。"),
            ExerciseItem(prompt: "你在开车时，看到后方有一辆闪着警灯、拉着警笛的应急消防车。你应该怎么做？", options: ["加速超车开在它前面", "安全地减速并靠边停车，让出通道", "马上在车道中央把车停死", "置之不理"], correctAnswer: "安全地减速并靠边停车，让出通道", explanation: "避让正在执行紧急任务的消防车、救护车是道路交通法规的强制要求。"),
            ExerciseItem(prompt: "你收到一封声称是你开户银行发来的邮件，要求你点击链接验证并修改你的密码。你应该怎么做？", options: ["点击邮件里的链接并输入你的密码", "删除该邮件，或者拨打银行官方客服电话核实", "把邮件转发给所有的朋友", "直接回复邮件写出你的密码"], correctAnswer: "删除该邮件，或者拨打银行官方客服电话核实", explanation: "正规金融机构绝不会通过网络邮件中的超链接要求客户提供或修改密码，这通常是钓鱼网站。"),
            ExerciseItem(prompt: "你在人行道上捡到一个钱包，里面有一些现金和一张身份证。你应该怎么做？", options: ["拿走现金，把钱包扔进垃圾桶", "交送给警察局，或者根据身份证上的信息设法联系失主", "把钱包留在原地不管", "把钱包送给路过的陌生人"], correctAnswer: "交送给警察局，或者根据身份证上的信息设法联系失主", explanation: "拾金不昧、物归原主是诚实守信的道德要求。"),
            ExerciseItem(prompt: "你家的烟雾报警器突然发出刺耳且连续不断的警报声。你应当怎么做？", options: ["不予理会，等它自己停下", "迅速排查火源，并视情况安全撤离现场", "立刻开始换电池", "继续上床睡觉"], correctAnswer: "迅速排查火源，并视情况安全撤离现场", explanation: "持续性的警报鸣叫意味着检测到了浓烟或火灾，必须立刻排查并确保人身安全逃生。")
        ]
    )
}
