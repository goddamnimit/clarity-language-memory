import Foundation

// NOTE: Exercise 11 (成语) flagged for native Mandarin speaker review.
struct ChineseCognitionExerciseData {

    static let allExercises: [Exercise] = [
        whatQuestions,
        whereQuestions,
        whoQuestions,
        whenQuestions,
        whyQuestions,
        howManyQuestions,
        yesNoQuestions,
        historyKnowledge,
        locationsKnowledge,
        entertainmentKnowledge,
        chineseIdioms,
        estimationLogic,
        deductiveReasoning,
        personalMemory,
        roteMemory
    ]

    // MARK: - Exercise 1: WH Questions — What 什么问题 (20 items)
    private static let whatQuestions = Exercise(
        id: UUID(),
        title: "WH问题 — 什么",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "什么节日在农历正月初一庆祝，是中国最重要的传统节日？", options: ["春节", "中秋节", "端午节", "清明节"], correctAnswer: "春节"),
            ExerciseItem(id: UUID(), prompt: "什么是中国最长的人工建筑，从东到西横跨数千公里？", options: ["长城", "运河", "丝绸之路", "京沪高铁"], correctAnswer: "长城"),
            ExerciseItem(id: UUID(), prompt: "什么工具是中国人吃饭时最常用的餐具？", options: ["筷子", "叉子", "勺子", "刀"], correctAnswer: "筷子"),
            ExerciseItem(id: UUID(), prompt: "什么是中国的法定货币？", options: ["人民币", "美元", "港币", "欧元"], correctAnswer: "人民币"),
            ExerciseItem(id: UUID(), prompt: "什么节日在农历七月初七，是中国传统的情人节？", options: ["七夕节", "元宵节", "重阳节", "中秋节"], correctAnswer: "七夕节"),
            ExerciseItem(id: UUID(), prompt: "什么是中国四大名著之一，讲述了唐僧西天取经的故事？", options: ["《西游记》", "《红楼梦》", "《水浒传》", "《三国演义》"], correctAnswer: "《西游记》"),
            ExerciseItem(id: UUID(), prompt: "什么动物是中国的国宝，以吃竹子为生，生活在四川？", options: ["大熊猫", "金丝猴", "东北虎", "扬子鳄"], correctAnswer: "大熊猫"),
            ExerciseItem(id: UUID(), prompt: "什么是美国加州最大的城市？", options: ["洛杉矶", "旧金山", "圣地亚哥", "萨克拉门托"], correctAnswer: "洛杉矶"),
            ExerciseItem(id: UUID(), prompt: "什么证件是在美国合法永久居住的外国人所持有的？", options: ["绿卡", "签证", "护照", "工作许可"], correctAnswer: "绿卡"),
            ExerciseItem(id: UUID(), prompt: "什么是端午节时人们吃的传统食物？", options: ["粽子", "月饼", "汤圆", "年糕"], correctAnswer: "粽子"),
            ExerciseItem(id: UUID(), prompt: "什么是中国传统医学中常用的治疗方法，用细针刺入身体穴位？", options: ["针灸", "推拿", "拔罐", "气功"], correctAnswer: "针灸"),
            ExerciseItem(id: UUID(), prompt: "什么是美国最重要的独立纪念日，在每年七月四日庆祝？", options: ["独立日", "感恩节", "阵亡将士纪念日", "劳动节"], correctAnswer: "独立日"),
            ExerciseItem(id: UUID(), prompt: "什么是中国书写系统中最基本的书写工具，用动物毛制成？", options: ["毛笔", "铅笔", "钢笔", "圆珠笔"], correctAnswer: "毛笔"),
            ExerciseItem(id: UUID(), prompt: "什么建筑曾是中国明清两代皇帝居住和处理朝政的地方？", options: ["故宫", "颐和园", "天坛", "圆明园"], correctAnswer: "故宫"),
            ExerciseItem(id: UUID(), prompt: "什么节日在每年十月三十一日，孩子们会穿上戏服挨家挨户要糖？", options: ["万圣节", "感恩节", "独立日", "劳动节"], correctAnswer: "万圣节"),
            ExerciseItem(id: UUID(), prompt: "什么是人体中负责把含氧血液泵送到全身的重要器官？", options: ["心脏", "肺", "肝脏", "肾脏"], correctAnswer: "心脏"),
            ExerciseItem(id: UUID(), prompt: "什么是中国农历新年期间长辈给晚辈的传统礼物？", options: ["红包", "月饼", "粽子", "汤圆"], correctAnswer: "红包"),
            ExerciseItem(id: UUID(), prompt: "什么是美国联邦政府的立法机构，由参议院和众议院组成？", options: ["国会", "最高法院", "白宫", "内阁"], correctAnswer: "国会"),
            ExerciseItem(id: UUID(), prompt: "什么是中秋节时人们互赠的传统食品，通常是圆形的？", options: ["月饼", "粽子", "年糕", "汤圆"], correctAnswer: "月饼"),
            ExerciseItem(id: UUID(), prompt: "什么是加州政府为低收入家庭提供的医疗保险计划？", options: ["Medi-Cal", "Medicare", "Medicaid", "Kaiser"], correctAnswer: "Medi-Cal")
        ]
    )

    // MARK: - Exercise 2: WH Questions — Where 在哪里 (20 items)
    private static let whereQuestions = Exercise(
        id: UUID(),
        title: "WH问题 — 在哪里",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "长城在哪里？", options: ["中国北方", "中国南方", "中国西部", "中国东部海岸"], correctAnswer: "中国北方"),
            ExerciseItem(id: UUID(), prompt: "故宫博物院在哪个城市？", options: ["北京", "上海", "西安", "南京"], correctAnswer: "北京"),
            ExerciseItem(id: UUID(), prompt: "自由女神像在哪里？", options: ["纽约", "华盛顿特区", "洛杉矶", "芝加哥"], correctAnswer: "纽约"),
            ExerciseItem(id: UUID(), prompt: "黄河的发源地在哪里？", options: ["青海省", "四川省", "云南省", "甘肃省"], correctAnswer: "青海省"),
            ExerciseItem(id: UUID(), prompt: "加州最大的唐人街在哪个城市？", options: ["旧金山", "洛杉矶", "圣地亚哥", "圣何塞"], correctAnswer: "旧金山"),
            ExerciseItem(id: UUID(), prompt: "兵马俑在哪个城市附近？", options: ["西安", "北京", "成都", "武汉"], correctAnswer: "西安"),
            ExerciseItem(id: UUID(), prompt: "好莱坞电影工业中心在哪里？", options: ["洛杉矶", "纽约", "旧金山", "拉斯维加斯"], correctAnswer: "洛杉矶"),
            ExerciseItem(id: UUID(), prompt: "珠穆朗玛峰在哪里？", options: ["中国和尼泊尔边境", "中国和印度边境", "中国和巴基斯坦边境", "中国和不丹边境"], correctAnswer: "中国和尼泊尔边境"),
            ExerciseItem(id: UUID(), prompt: "美国总统住在哪里？", options: ["白宫", "国会大厦", "自由女神像", "林肯纪念堂"], correctAnswer: "白宫"),
            ExerciseItem(id: UUID(), prompt: "大熊猫的主要栖息地在哪里？", options: ["四川省", "云南省", "广东省", "浙江省"], correctAnswer: "四川省"),
            ExerciseItem(id: UUID(), prompt: "你去哪里可以在美国申请入籍成为公民？", options: ["移民局", "市政厅", "法院", "警察局"], correctAnswer: "移民局"),
            ExerciseItem(id: UUID(), prompt: "上海的标志性建筑东方明珠塔在哪个区域？", options: ["浦东新区", "黄浦区", "徐汇区", "静安区"], correctAnswer: "浦东新区"),
            ExerciseItem(id: UUID(), prompt: "如果你在加州需要续签驾照，你去哪里办理？", options: ["DMV", "邮局", "银行", "市政厅"], correctAnswer: "DMV"),
            ExerciseItem(id: UUID(), prompt: "西藏自治区的首府拉萨在哪里？", options: ["中国西部高原", "中国东部沿海", "中国南部边境", "中国东北地区"], correctAnswer: "中国西部高原"),
            ExerciseItem(id: UUID(), prompt: "你去哪里可以借书、看书和使用免费电脑？", options: ["图书馆", "书店", "学校", "咖啡馆"], correctAnswer: "图书馆"),
            ExerciseItem(id: UUID(), prompt: "长江流入哪个海洋？", options: ["东海", "南海", "黄海", "渤海"], correctAnswer: "东海"),
            ExerciseItem(id: UUID(), prompt: "如果你需要寄包裹回中国，你去哪里？", options: ["邮局", "银行", "超市", "药店"], correctAnswer: "邮局"),
            ExerciseItem(id: UUID(), prompt: "迪士尼乐园在加州的哪个城市？", options: ["阿纳海姆", "洛杉矶", "旧金山", "圣地亚哥"], correctAnswer: "阿纳海姆"),
            ExerciseItem(id: UUID(), prompt: "黄石国家公园主要位于哪个州？", options: ["怀俄明州", "加利福尼亚州", "科罗拉多州", "蒙大拿州"], correctAnswer: "怀俄明州"),
            ExerciseItem(id: UUID(), prompt: "如果你在加州突然生病需要急救，你应该去哪里？", options: ["急诊室", "家庭医生诊所", "药店", "社区中心"], correctAnswer: "急诊室")
        ]
    )

    // MARK: - Exercise 3: WH Questions — Who 谁 (15 items)
    private static let whoQuestions = Exercise(
        id: UUID(),
        title: "WH问题 — 谁",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "谁是中国古代最著名的思想家和教育家，创立了儒家学说？", options: ["孔子", "老子", "孟子", "荀子"], correctAnswer: "孔子"),
            ExerciseItem(id: UUID(), prompt: "谁是中华人民共和国的主要缔造者，于1949年宣布建国？", options: ["毛泽东", "邓小平", "周恩来", "孙中山"], correctAnswer: "毛泽东"),
            ExerciseItem(id: UUID(), prompt: "谁提出了“改革开放”政策，使中国经济迅速发展？", options: ["邓小平", "毛泽东", "江泽民", "胡锦涛"], correctAnswer: "邓小平"),
            ExerciseItem(id: UUID(), prompt: "谁是中国民主革命的先驱，被称为“国父”？", options: ["孙中山", "袁世凯", "蒋介石", "康有为"], correctAnswer: "孙中山"),
            ExerciseItem(id: UUID(), prompt: "谁是来自中国的NBA著名篮球运动员，身高七尺五寸，曾效力于休斯顿火箭队？", options: ["姚明", "易建联", "王治郅", "周琦"], correctAnswer: "姚明"),
            ExerciseItem(id: UUID(), prompt: "谁写了《道德经》，是道家思想的创始人？", options: ["老子", "孔子", "庄子", "墨子"], correctAnswer: "老子"),
            ExerciseItem(id: UUID(), prompt: "谁是美国第一任总统？", options: ["乔治·华盛顿", "亚伯拉罕·林肯", "托马斯·杰斐逊", "约翰·亚当斯"], correctAnswer: "乔治·华盛顿"),
            ExerciseItem(id: UUID(), prompt: "谁是印度著名的非暴力独立运动领袖，被称为“圣雄”？", options: ["甘地", "尼赫鲁", "泰戈尔", "曼德拉"], correctAnswer: "甘地"),
            ExerciseItem(id: UUID(), prompt: "谁是著名的中国女子网球运动员，曾获得法国网球公开赛冠军？", options: ["李娜", "郑洁", "彭帅", "张帅"], correctAnswer: "李娜"),
            ExerciseItem(id: UUID(), prompt: "谁写了《论语》中记录的言论，被后世尊称为“至圣先师”？", options: ["孔子", "孟子", "荀子", "董仲舒"], correctAnswer: "孔子"),
            ExerciseItem(id: UUID(), prompt: "谁是美国著名的民权运动领袖，发表了“我有一个梦想”的演讲？", options: ["马丁·路德·金", "马尔科姆·X", "罗莎·帕克斯", "奥巴马"], correctAnswer: "马丁·路德·金"),
            ExerciseItem(id: UUID(), prompt: "谁是中国古代伟大的诗人，被称为“诗仙”，写了《静夜思》？", options: ["李白", "杜甫", "白居易", "苏轼"], correctAnswer: "李白"),
            ExerciseItem(id: UUID(), prompt: "谁是功夫巨星，主演了《龙争虎斗》等电影，是华人在好莱坞的先驱？", options: ["李小龙", "成龙", "李连杰", "甄子丹"], correctAnswer: "李小龙"),
            ExerciseItem(id: UUID(), prompt: "谁是美国总统，在南北战争期间签署了《解放黑人奴隶宣言》？", options: ["亚伯拉罕·林肯", "乔治·华盛顿", "托马斯·杰斐逊", "尤利西斯·格兰特"], correctAnswer: "亚伯拉罕·林肯"),
            ExerciseItem(id: UUID(), prompt: "谁是中国著名的乒乓球运动员，多次获得世界冠军，被誉为“乒乓女皇”？", options: ["邓亚萍", "王楠", "张怡宁", "刘诗雯"], correctAnswer: "邓亚萍")
        ]
    )

    // MARK: - Exercise 4: WH Questions — When 什么时候 (15 items)
    private static let whenQuestions = Exercise(
        id: UUID(),
        title: "WH问题 — 什么时候",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "中国传统的春节通常在哪个月份庆祝？", options: ["一月或二月", "三月或四月", "五月或六月", "十一月或十二月"], correctAnswer: "一月或二月"),
            ExerciseItem(id: UUID(), prompt: "中秋节在农历几月十五庆祝？", options: ["八月", "七月", "九月", "十月"], correctAnswer: "八月"),
            ExerciseItem(id: UUID(), prompt: "美国的独立日是哪一天？", options: ["七月四日", "六月十四日", "九月一日", "十一月十一日"], correctAnswer: "七月四日"),
            ExerciseItem(id: UUID(), prompt: "清明节通常在公历哪个月份前后？", options: ["四月", "二月", "六月", "八月"], correctAnswer: "四月"),
            ExerciseItem(id: UUID(), prompt: "端午节在农历几月初五庆祝？", options: ["五月", "三月", "七月", "九月"], correctAnswer: "五月"),
            ExerciseItem(id: UUID(), prompt: "美国感恩节在哪个月份的第四个星期四？", options: ["十一月", "十月", "十二月", "九月"], correctAnswer: "十一月"),
            ExerciseItem(id: UUID(), prompt: "中国人通常在什么时候给晚辈压岁钱？", options: ["春节期间", "中秋节期间", "端午节期间", "清明节期间"], correctAnswer: "春节期间"),
            ExerciseItem(id: UUID(), prompt: "美国的圣诞节是哪一天？", options: ["十二月二十五日", "十二月二十四日", "一月一日", "十一月二十五日"], correctAnswer: "十二月二十五日"),
            ExerciseItem(id: UUID(), prompt: "中国传统上在什么节日扫墓祭祖、缅怀先人？", options: ["清明节", "春节", "中秋节", "重阳节"], correctAnswer: "清明节"),
            ExerciseItem(id: UUID(), prompt: "元宵节在农历正月第几天庆祝？", options: ["十五", "初一", "初七", "二十"], correctAnswer: "十五"),
            ExerciseItem(id: UUID(), prompt: "美国人通常在什么时候报联邦所得税？", options: ["四月十五日前", "一月一日前", "七月四日前", "十二月三十一日前"], correctAnswer: "四月十五日前"),
            ExerciseItem(id: UUID(), prompt: "重阳节在农历几月初九，是中国传统的敬老节？", options: ["九月", "八月", "十月", "七月"], correctAnswer: "九月"),
            ExerciseItem(id: UUID(), prompt: "美国的新年是哪一天？", options: ["一月一日", "二月一日", "十二月三十一日", "一月十五日"], correctAnswer: "一月一日"),
            ExerciseItem(id: UUID(), prompt: "中国人通常在什么时候贴春联和福字迎接新年？", options: ["除夕和春节期间", "中秋节期间", "端午节期间", "元宵节期间"], correctAnswer: "除夕和春节期间"),
            ExerciseItem(id: UUID(), prompt: "美国的母亲节在哪个月份的第二个星期日？", options: ["五月", "四月", "六月", "三月"], correctAnswer: "五月")
        ]
    )

    // MARK: - Exercise 5: WH Questions — Why 为什么 (15 items)
    private static let whyQuestions = Exercise(
        id: UUID(),
        title: "WH问题 — 为什么",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "为什么中国人在春节期间放鞭炮？", options: ["驱邪避鬼迎接新年", "庆祝皇帝生日", "纪念古代战争胜利", "感谢神灵保佑丰收"], correctAnswer: "驱邪避鬼迎接新年"),
            ExerciseItem(id: UUID(), prompt: "为什么清明节时人们要去扫墓？", options: ["祭奠祖先表达思念", "庆祝春天的到来", "祈求来年好运", "感谢大自然的恩赐"], correctAnswer: "祭奠祖先表达思念"),
            ExerciseItem(id: UUID(), prompt: "为什么端午节时人们要吃粽子？", options: ["纪念爱国诗人屈原", "庆祝夏天的开始", "祈求五谷丰登", "感谢龙王保佑"], correctAnswer: "纪念爱国诗人屈原"),
            ExerciseItem(id: UUID(), prompt: "为什么很多中国移民来到加州定居？", options: ["寻求更好的工作和生活机会", "逃避台风和地震", "追随中国皇帝的命令", "跟随淘金热潮"], correctAnswer: "寻求更好的工作和生活机会"),
            ExerciseItem(id: UUID(), prompt: "为什么春节期间长辈要给孩子红包？", options: ["祝福孩子新年平安健康", "奖励孩子考试成绩好", "补偿孩子一年的零花钱", "感谢孩子帮忙做家务"], correctAnswer: "祝福孩子新年平安健康"),
            ExerciseItem(id: UUID(), prompt: "为什么中秋节时人们要赏月？", options: ["象征家人团圆和思念远方亲人", "庆祝秋天丰收", "祭拜月亮女神嫦娥", "祈求来年风调雨顺"], correctAnswer: "象征家人团圆和思念远方亲人"),
            ExerciseItem(id: UUID(), prompt: "为什么在美国开车需要有驾照？", options: ["证明驾驶能力保障道路安全", "显示自己的社会地位", "方便警察收取罚款", "证明已经年满十六岁"], correctAnswer: "证明驾驶能力保障道路安全"),
            ExerciseItem(id: UUID(), prompt: "为什么很多华人家庭重视子女的教育？", options: ["认为教育是改变命运的最好途径", "政府要求家长送孩子上大学", "老师会惩罚不好好学习的孩子", "大学文凭可以直接换钱"], correctAnswer: "认为教育是改变命运的最好途径"),
            ExerciseItem(id: UUID(), prompt: "为什么在美国需要购买医疗保险？", options: ["美国医疗费用很高，保险可以减轻负担", "政府规定所有人必须生病", "医生拒绝为没有保险的人看病", "保险公司是政府的一部分"], correctAnswer: "美国医疗费用很高，保险可以减轻负担"),
            ExerciseItem(id: UUID(), prompt: "为什么中国人过年时要吃鱼？", options: ["鱼与“余”谐音，象征年年有余", "鱼是最便宜的食物", "皇帝规定春节必须吃鱼", "鱼代表龙的传人"], correctAnswer: "鱼与“余”谐音，象征年年有余"),
            ExerciseItem(id: UUID(), prompt: "为什么在美国申请绿卡或入籍需要很长时间？", options: ["移民申请程序复杂，审核需要时间", "政府故意刁难移民", "美国没有足够的移民局工作人员", "申请人需要学会所有美国法律"], correctAnswer: "移民申请程序复杂，审核需要时间"),
            ExerciseItem(id: UUID(), prompt: "为什么太极拳对老年人特别有益？", options: ["动作缓和可以锻炼身体平衡和柔韧性", "是中国政府规定的强制运动", "可以让老人看起来更年轻", "练太极的人不会生病"], correctAnswer: "动作缓和可以锻炼身体平衡和柔韧性"),
            ExerciseItem(id: UUID(), prompt: "为什么中国人过年时要贴福字，而且要倒着贴？", options: ["倒贴福字寓意“福到了”", "倒贴是为了让神仙看清楚", "福字正贴会带来坏运气", "这是皇帝发明的习俗"], correctAnswer: "倒贴福字寓意“福到了”"),
            ExerciseItem(id: UUID(), prompt: "为什么在美国报税时需要保留收入证明和收据？", options: ["证明收入和支出，避免多缴或少缴税", "政府会没收所有没有收据的钱", "收据可以换取政府补贴", "税务局会检查每一张收据"], correctAnswer: "证明收入和支出，避免多缴或少缴税"),
            ExerciseItem(id: UUID(), prompt: "为什么很多老年华人移民喜欢住在唐人街附近？", options: ["方便买中国食材，与说中文的邻居交流", "唐人街的房价最便宜", "政府要求老年移民住在唐人街", "唐人街的医院最好"], correctAnswer: "方便买中国食材，与说中文的邻居交流")
        ]
    )

    // MARK: - Exercise 6: WH Questions — How Many 多少 (20 items)
    private static let howManyQuestions = Exercise(
        id: UUID(),
        title: "WH问题 — 多少",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "中国有多少个省级行政区域（包括省、自治区、直辖市和特别行政区）？", options: ["34个", "28个", "32个", "36个"], correctAnswer: "34个"),
            ExerciseItem(id: UUID(), prompt: "中国的十二生肖有多少种动物？", options: ["12种", "10种", "8种", "14种"], correctAnswer: "12种"),
            ExerciseItem(id: UUID(), prompt: "美国有多少个州？", options: ["50个", "48个", "52个", "46个"], correctAnswer: "50个"),
            ExerciseItem(id: UUID(), prompt: "一年有多少个月？", options: ["12个", "10个", "13个", "11个"], correctAnswer: "12个"),
            ExerciseItem(id: UUID(), prompt: "中国汉字的基本笔画有多少种？", options: ["8种", "5种", "10种", "12种"], correctAnswer: "8种"),
            ExerciseItem(id: UUID(), prompt: "标准普通话有多少个声调？", options: ["4个", "3个", "5个", "6个"], correctAnswer: "4个"),
            ExerciseItem(id: UUID(), prompt: "一个星期有多少天？", options: ["7天", "5天", "6天", "8天"], correctAnswer: "7天"),
            ExerciseItem(id: UUID(), prompt: "中国四大名著有多少部？", options: ["4部", "3部", "5部", "6部"], correctAnswer: "4部"),
            ExerciseItem(id: UUID(), prompt: "人体有多少块骨头？", options: ["206块", "186块", "226块", "196块"], correctAnswer: "206块"),
            ExerciseItem(id: UUID(), prompt: "一打鸡蛋有多少个？", options: ["12个", "10个", "8个", "15个"], correctAnswer: "12个"),
            ExerciseItem(id: UUID(), prompt: "中国历史上最后一个封建王朝清朝共有多少位皇帝？", options: ["12位", "10位", "15位", "8位"], correctAnswer: "12位"),
            ExerciseItem(id: UUID(), prompt: "加州在美国国会有多少位众议员？", options: ["52位", "40位", "45位", "35位"], correctAnswer: "52位"),
            ExerciseItem(id: UUID(), prompt: "中国的四大发明有多少项？", options: ["4项", "3项", "5项", "6项"], correctAnswer: "4项"),
            ExerciseItem(id: UUID(), prompt: "一个世纪有多少年？", options: ["100年", "50年", "1000年", "10年"], correctAnswer: "100年"),
            ExerciseItem(id: UUID(), prompt: "标准麻将牌有多少张？", options: ["144张", "108张", "136张", "160张"], correctAnswer: "144张"),
            ExerciseItem(id: UUID(), prompt: "人体有多少颗恒牙（成年人的牙齿）？", options: ["32颗", "28颗", "30颗", "34颗"], correctAnswer: "32颗"),
            ExerciseItem(id: UUID(), prompt: "中国举办2008年夏季奥运会时共获得了多少枚金牌？", options: ["51枚", "36枚", "48枚", "42枚"], correctAnswer: "48枚"),
            ExerciseItem(id: UUID(), prompt: "美国总统任期是多少年？", options: ["4年", "2年", "6年", "8年"], correctAnswer: "4年"),
            ExerciseItem(id: UUID(), prompt: "一副标准扑克牌有多少张（不含大小王）？", options: ["52张", "48张", "54张", "40张"], correctAnswer: "52张"),
            ExerciseItem(id: UUID(), prompt: "中国传统节气一共有多少个？", options: ["24个", "12个", "18个", "36个"], correctAnswer: "24个")
        ]
    )

    // MARK: - Exercise 7: Yes or No 是或否 (20 items)
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "是或否",
        instructions: "请回答是或否。",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "北京是中华人民共和国的首都吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "长江是中国最长的河流吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "中国有五十个省吗？", options: ["Yes", "No"], correctAnswer: "No"),
            ExerciseItem(id: UUID(), prompt: "春节是根据农历计算的吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "旧金山位于美国东海岸吗？", options: ["Yes", "No"], correctAnswer: "No"),
            ExerciseItem(id: UUID(), prompt: "筷子是日本发明的吗？", options: ["Yes", "No"], correctAnswer: "No"),
            ExerciseItem(id: UUID(), prompt: "大熊猫是中国的国宝吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "美国有超过三亿人口吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "端午节时人们吃月饼吗？", options: ["Yes", "No"], correctAnswer: "No", explanation: "月饼是中秋节的传统食品，端午节吃粽子"),
            ExerciseItem(id: UUID(), prompt: "加州是美国人口最多的州吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "孔子是道家思想的创始人吗？", options: ["Yes", "No"], correctAnswer: "No", explanation: "孔子是儒家创始人，道家创始人是老子"),
            ExerciseItem(id: UUID(), prompt: "中秋节在农历八月十五庆祝吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "美国总统每两年选举一次吗？", options: ["Yes", "No"], correctAnswer: "No", explanation: "美国总统每四年选举一次"),
            ExerciseItem(id: UUID(), prompt: "普通话是中国的官方语言吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "洛杉矶是加州的首府吗？", options: ["Yes", "No"], correctAnswer: "No", explanation: "加州首府是萨克拉门托"),
            ExerciseItem(id: UUID(), prompt: "中国是世界上面积最大的国家吗？", options: ["Yes", "No"], correctAnswer: "No", explanation: "俄罗斯是世界上面积最大的国家"),
            ExerciseItem(id: UUID(), prompt: "绿卡持有者可以在美国合法工作吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "中国的四大名著包括《西游记》吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "在美国，六十五岁以上的老人可以申请Medicare医疗保险吗？", options: ["Yes", "No"], correctAnswer: "Yes"),
            ExerciseItem(id: UUID(), prompt: "姚明曾经为洛杉矶湖人队打球吗？", options: ["Yes", "No"], correctAnswer: "No", explanation: "姚明效力于休斯顿火箭队")
        ]
    )

    // MARK: - Exercise 8: History 历史 (15 items)
    private static let historyKnowledge = Exercise(
        id: UUID(),
        title: "历史",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "中国历史上第一个统一的封建王朝是哪个？", options: ["秦朝", "汉朝", "周朝", "商朝"], correctAnswer: "秦朝"),
            ExerciseItem(id: UUID(), prompt: "秦始皇下令修建了哪个著名的工程来抵御北方游牧民族？", options: ["长城", "大运河", "阿房宫", "骊山陵墓"], correctAnswer: "长城"),
            ExerciseItem(id: UUID(), prompt: "中国四大发明包括造纸术、印刷术、指南针和什么？", options: ["火药", "丝绸", "陶瓷", "茶叶"], correctAnswer: "火药"),
            ExerciseItem(id: UUID(), prompt: "1949年10月1日，毛泽东在哪里宣布中华人民共和国成立？", options: ["天安门城楼", "人民大会堂", "中南海", "紫禁城"], correctAnswer: "天安门城楼"),
            ExerciseItem(id: UUID(), prompt: "古代丝绸之路连接了中国和哪些地区？", options: ["中亚、中东和欧洲", "非洲和南美洲", "澳大利亚和新西兰", "北极和南极"], correctAnswer: "中亚、中东和欧洲"),
            ExerciseItem(id: UUID(), prompt: "美国南北战争发生在哪个世纪？", options: ["19世纪", "18世纪", "20世纪", "17世纪"], correctAnswer: "19世纪"),
            ExerciseItem(id: UUID(), prompt: "郑和下西洋发生在哪个朝代？", options: ["明朝", "唐朝", "宋朝", "清朝"], correctAnswer: "明朝"),
            ExerciseItem(id: UUID(), prompt: "第二次世界大战在哪一年结束？", options: ["1945年", "1939年", "1941年", "1918年"], correctAnswer: "1945年"),
            ExerciseItem(id: UUID(), prompt: "中国历史上在位时间最长的皇帝康熙帝属于哪个朝代？", options: ["清朝", "明朝", "唐朝", "宋朝"], correctAnswer: "清朝"),
            ExerciseItem(id: UUID(), prompt: "美国《独立宣言》是在哪一年签署的？", options: ["1776年", "1789年", "1812年", "1865年"], correctAnswer: "1776年"),
            ExerciseItem(id: UUID(), prompt: "唐朝时期，哪位女性成为中国历史上唯一的女皇帝？", options: ["武则天", "慈禧太后", "王昭君", "花木兰"], correctAnswer: "武则天"),
            ExerciseItem(id: UUID(), prompt: "1919年的五四运动发生在中国哪个城市？", options: ["北京", "上海", "南京", "广州"], correctAnswer: "北京"),
            ExerciseItem(id: UUID(), prompt: "马丁·路德·金在哪一年发表了著名的“我有一个梦想”演讲？", options: ["1963年", "1955年", "1968年", "1776年"], correctAnswer: "1963年"),
            ExerciseItem(id: UUID(), prompt: "中国最后一个封建王朝清朝是在哪一年灭亡的？", options: ["1912年", "1900年", "1919年", "1949年"], correctAnswer: "1912年"),
            ExerciseItem(id: UUID(), prompt: "哪场事件导致大批中国移民在19世纪中叶来到加州？", options: ["淘金热引发的移民潮", "鸦片战争", "太平天国运动", "义和团运动"], correctAnswer: "淘金热引发的移民潮")
        ]
    )

    // MARK: - Exercise 9: Locations 地点 (20 items)
    private static let locationsKnowledge = Exercise(
        id: UUID(),
        title: "地点",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "中国的首都在哪里？", options: ["北京", "上海", "广州", "南京"], correctAnswer: "北京"),
            ExerciseItem(id: UUID(), prompt: "上海位于中国的哪个方向？", options: ["东部沿海", "西部内陆", "南部边境", "北部边境"], correctAnswer: "东部沿海"),
            ExerciseItem(id: UUID(), prompt: "黄河流经中国哪个方向最终注入大海？", options: ["向东流入渤海", "向南流入南海", "向西流入印度洋", "向北流入北冰洋"], correctAnswer: "向东流入渤海"),
            ExerciseItem(id: UUID(), prompt: "西藏自治区位于中国的哪个方向？", options: ["西南部", "东北部", "东南部", "西北部"], correctAnswer: "西南部"),
            ExerciseItem(id: UUID(), prompt: "台湾位于中国大陆的哪个方向？", options: ["东南方向", "西北方向", "东北方向", "西南方向"], correctAnswer: "东南方向"),
            ExerciseItem(id: UUID(), prompt: "加拿大位于美国的哪个方向？", options: ["北方", "南方", "东方", "西方"], correctAnswer: "北方"),
            ExerciseItem(id: UUID(), prompt: "墨西哥位于美国的哪个方向？", options: ["南方", "北方", "东方", "西方"], correctAnswer: "南方"),
            ExerciseItem(id: UUID(), prompt: "夏威夷州位于美国大陆的哪个方向？", options: ["西南太平洋", "东北大西洋", "东南太平洋", "西北太平洋"], correctAnswer: "西南太平洋"),
            ExerciseItem(id: UUID(), prompt: "中国的新疆维吾尔自治区与哪些国家接壤？", options: ["哈萨克斯坦、俄罗斯、巴基斯坦等国", "日本、韩国、越南等国", "印度、尼泊尔、不丹等国", "泰国、缅甸、老挝等国"], correctAnswer: "哈萨克斯坦、俄罗斯、巴基斯坦等国"),
            ExerciseItem(id: UUID(), prompt: "旧金山湾区包括哪些主要城市？", options: ["旧金山、奥克兰、圣何塞", "洛杉矶、圣地亚哥、阿纳海姆", "圣芭芭拉、蒙特雷、卡梅尔", "萨克拉门托、弗雷斯诺、斯托克顿"], correctAnswer: "旧金山、奥克兰、圣何塞"),
            ExerciseItem(id: UUID(), prompt: "西安位于中国的哪个省？", options: ["陕西省", "山西省", "河南省", "甘肃省"], correctAnswer: "陕西省"),
            ExerciseItem(id: UUID(), prompt: "洛杉矶位于加州的哪个方向？", options: ["南部", "北部", "中部", "东部"], correctAnswer: "南部"),
            ExerciseItem(id: UUID(), prompt: "中国与哪个国家共享世界上最长的陆地边界？", options: ["俄罗斯", "蒙古国", "哈萨克斯坦", "印度"], correctAnswer: "俄罗斯"),
            ExerciseItem(id: UUID(), prompt: "香港特别行政区位于中国的哪个省旁边？", options: ["广东省", "福建省", "浙江省", "海南省"], correctAnswer: "广东省"),
            ExerciseItem(id: UUID(), prompt: "美国的首都华盛顿特区位于哪两个州之间？", options: ["马里兰州和弗吉尼亚州", "纽约州和新泽西州", "宾夕法尼亚州和特拉华州", "北卡罗来纳州和南卡罗来纳州"], correctAnswer: "马里兰州和弗吉尼亚州"),
            ExerciseItem(id: UUID(), prompt: "成都是哪个省的省会，也是大熊猫的故乡？", options: ["四川省", "云南省", "贵州省", "湖南省"], correctAnswer: "四川省"),
            ExerciseItem(id: UUID(), prompt: "加州的萨克拉门托是什么？", options: ["加州的首府", "加州最大的城市", "加州最古老的唐人街", "加州最著名的海滩城市"], correctAnswer: "加州的首府"),
            ExerciseItem(id: UUID(), prompt: "中国的海南岛位于中国的哪个方向？", options: ["最南端", "最北端", "最东端", "最西端"], correctAnswer: "最南端"),
            ExerciseItem(id: UUID(), prompt: "黄山位于中国的哪个省？", options: ["安徽省", "浙江省", "江西省", "福建省"], correctAnswer: "安徽省"),
            ExerciseItem(id: UUID(), prompt: "美国的硅谷主要位于加州的哪个地区？", options: ["圣克拉拉谷南湾地区", "洛杉矶盆地", "旧金山市区", "萨克拉门托河谷"], correctAnswer: "圣克拉拉谷南湾地区")
        ]
    )

    // MARK: - Exercise 10: Popular Media 娱乐 (15 items)
    private static let entertainmentKnowledge = Exercise(
        id: UUID(),
        title: "娱乐",
        instructions: "请选出每个问题的正确答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "哪位香港功夫明星主演了《醉拳》和《警察故事》等电影，以搞笑动作风格闻名全球？", options: ["成龙", "李小龙", "李连杰", "甄子丹"], correctAnswer: "成龙"),
            ExerciseItem(id: UUID(), prompt: "中国导演张艺谋执导的哪部电影在2002年赢得了国际广泛赞誉，讲述了古代刺客的故事？", options: ["《英雄》", "《卧虎藏龙》", "《霸王别姬》", "《大红灯笼高高挂》"], correctAnswer: "《英雄》"),
            ExerciseItem(id: UUID(), prompt: "哪部由李安导演的华语电影赢得了奥斯卡最佳外语片奖，讲述了两位武林高手的故事？", options: ["《卧虎藏龙》", "《英雄》", "《花样年华》", "《饮食男女》"], correctAnswer: "《卧虎藏龙》"),
            ExerciseItem(id: UUID(), prompt: "哪位歌手被称为“歌神”，是香港流行音乐的代表人物，演唱了《一生何求》等经典歌曲？", options: ["张学友", "刘德华", "黎明", "郭富城"], correctAnswer: "张学友"),
            ExerciseItem(id: UUID(), prompt: "迪士尼动画电影《花木兰》的故事原型来自中国哪个朝代的民间传说？", options: ["北魏时期", "唐朝", "宋朝", "明朝"], correctAnswer: "北魏时期"),
            ExerciseItem(id: UUID(), prompt: "哪部美国电影系列讲述了一个来自贫困家庭的孩子进入魔法学校学习魔法的故事？", options: ["《哈利·波特》", "《星球大战》", "《指环王》", "《纳尼亚传奇》"], correctAnswer: "《哈利·波特》"),
            ExerciseItem(id: UUID(), prompt: "中国著名的春节联欢晚会每年在哪个电视台播出？", options: ["中央电视台", "北京电视台", "东方卫视", "湖南卫视"], correctAnswer: "中央电视台"),
            ExerciseItem(id: UUID(), prompt: "哪部美国电影讲述了一个玩具牛仔和太空人成为好友的故事，深受儿童和家长喜爱？", options: ["《玩具总动员》", "《狮子王》", "《冰雪奇缘》", "《海底总动员》"], correctAnswer: "《玩具总动员》"),
            ExerciseItem(id: UUID(), prompt: "台湾歌手邓丽君演唱的哪首歌曲在华人世界广为流传，歌词中有“你问我爱你有多深”？", options: ["《月亮代表我的心》", "《甜蜜蜜》", "《夜来香》", "《何日君再来》"], correctAnswer: "《月亮代表我的心》"),
            ExerciseItem(id: UUID(), prompt: "哪部根据中国古典名著改编的电视剧在1986年播出后成为几代中国人的经典记忆？", options: ["《西游记》", "《红楼梦》", "《三国演义》", "《水浒传》"], correctAnswer: "《西游记》"),
            ExerciseItem(id: UUID(), prompt: "美国著名脱口秀主持人奥普拉·温弗瑞主持的节目在哪个电视网播出长达二十五年？", options: ["ABC", "NBC", "CBS", "Fox"], correctAnswer: "ABC"),
            ExerciseItem(id: UUID(), prompt: "哪位华裔美国导演执导了《喜福会》，讲述了中国移民母亲和她们在美国出生的女儿之间的故事？", options: ["王颖", "李安", "陈冲", "关锦鹏"], correctAnswer: "王颖"),
            ExerciseItem(id: UUID(), prompt: "哪部中国电影在2019年成为全球票房最高的非英语电影之一，讲述了中国航天员的故事？", options: ["《流浪地球》", "《战狼2》", "《哪吒之魔童降世》", "《红海行动》"], correctAnswer: "《流浪地球》"),
            ExerciseItem(id: UUID(), prompt: "美国流行歌手迈克尔·杰克逊最著名的专辑叫什么名字，收录了《颤栗》等歌曲？", options: ["《颤栗》", "《危险》", "《历史》", "《坏》"], correctAnswer: "《颤栗》"),
            ExerciseItem(id: UUID(), prompt: "哪部长篇电视剧讲述了美国律师和法官的故事，在中国也拥有大批忠实观众？", options: ["《律师本色》", "《实习医生格蕾》", "《生活大爆炸》", "《绝望主妇》"], correctAnswer: "《律师本色》")
        ]
    )

    // MARK: - Exercise 11: Chinese Idioms 成语 (15 items) ⚠ Native speaker review recommended
    private static let chineseIdioms = Exercise(
        id: UUID(),
        title: "成语解释",
        instructions: "用自己的话解释这个成语的意思。",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "请解释成语“一石二鸟”的意思，并用它造一个句子。", options: [], correctAnswer: "一个行动同时达到两个目的。例如：我顺路去超市买菜，又去银行取钱，真是一石二鸟。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“半途而废”的意思，并说说什么情况下不应该半途而废。", options: [], correctAnswer: "做事做到一半就放弃了。学习语言、锻炼身体、治疗疾病都不应该半途而废。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“守株待兔”的意思，它告诉我们什么道理？", options: [], correctAnswer: "比喻死守经验、不知变通，坐等好事发生。告诉我们做事要主动，不能坐等机会。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“画蛇添足”的意思，并举一个生活中的例子。", options: [], correctAnswer: "做了多余的事情反而坏事。例如：菜已经够咸了还继续加盐，就是画蛇添足。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“亡羊补牢”的意思，它在生活中有什么意义？", options: [], correctAnswer: "出了问题以后想办法补救，还不算太晚。生活中犯了错误要及时改正，不要放弃。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“井底之蛙”的意思，它用来形容什么样的人？", options: [], correctAnswer: "比喻见识狭小、眼光短浅的人。形容那些只了解自己周围小环境、不了解外面大世界的人。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“对牛弹琴”的意思，生活中有没有类似的经历？", options: [], correctAnswer: "比喻对不懂道理的人讲道理，白费口舌。生活中跟不感兴趣的人讲专业知识有时就是对牛弹琴。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“塞翁失马”的完整含义，它告诉我们什么人生道理？", options: [], correctAnswer: "完整说法是“塞翁失马，焉知非福”。告诉我们坏事有时会变成好事，遇到不顺要保持乐观。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“狐假虎威”的意思，它用来形容什么样的人或行为？", options: [], correctAnswer: "比喻倚仗别人的权势来欺压他人。形容那些借助有权有势的人来吓唬别人的行为。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“卧薪尝胆”的历史背景和含义。", options: [], correctAnswer: "出自春秋时期越王勾践的故事。他被吴国打败后忍辱负重、刻苦磨练，最终复国报仇。比喻刻苦自励、发愤图强。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“三人成虎”的意思，它在现代生活中有什么警示意义？", options: [], correctAnswer: "谣言说的人多了就会被当成真的。警示我们不要轻信未经证实的消息，特别是网络上的谣言。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“纸上谈兵”的历史出处和含义。", options: [], correctAnswer: "出自战国时期赵括只会在纸上谈论兵法却没有实战经验的故事。比喻空谈理论而不能解决实际问题。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“青出于蓝而胜于蓝”的含义，并举一个家庭或工作中的例子。", options: [], correctAnswer: "比喻学生或晚辈超过了老师或长辈。例如：父母希望子女受到更好的教育，成就超过自己。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“破釜沉舟”的历史背景，以及它在现代生活中的意义。", options: [], correctAnswer: "出自项羽渡河后砸破锅、凿沉船，表示不胜利就不回头的决心。现代比喻下定决心、不留退路、全力以赴。"),
            ExerciseItem(id: UUID(), prompt: "请解释成语“愚公移山”的故事和含义，它对您的移民生活有什么启示？", options: [], correctAnswer: "愚公带领子孙每天挖山不止，终于感动上天移走大山。比喻只要坚持不懈就能克服困难。移民生活充满挑战，但坚持努力终会成功。")
        ]
    )

    // MARK: - Exercise 12: Estimation and Logic 估算和逻辑 (20 items)
    private static let estimationLogic = Exercise(
        id: UUID(),
        title: "估算和逻辑",
        instructions: "请选出最合理的答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "如果一袋大米重五磅，您买了三袋，一共有多重？", options: ["15磅", "10磅", "20磅", "12磅"], correctAnswer: "15磅"),
            ExerciseItem(id: UUID(), prompt: "您从洛杉矶开车去旧金山，距离大约是380英里。如果您平均时速60英里，大约需要多长时间？", options: ["约六小时", "约三小时", "约十小时", "约四小时"], correctAnswer: "约六小时"),
            ExerciseItem(id: UUID(), prompt: "如果一盒鸡蛋有12个，您买了两盒半，一共有多少个鸡蛋？", options: ["30个", "24个", "36个", "28个"], correctAnswer: "30个"),
            ExerciseItem(id: UUID(), prompt: "超市的苹果每磅$1.99，您买了三磅，大约要花多少钱？", options: ["约$6", "约$3", "约$9", "约$4"], correctAnswer: "约$6"),
            ExerciseItem(id: UUID(), prompt: "您的月租金是$1,500，一年的租金总共是多少？", options: ["$18,000", "$15,000", "$12,000", "$20,000"], correctAnswer: "$18,000"),
            ExerciseItem(id: UUID(), prompt: "如果您每天走路30分钟，一周走路几个小时？", options: ["3.5小时", "2小时", "4小时", "5小时"], correctAnswer: "3.5小时"),
            ExerciseItem(id: UUID(), prompt: "药瓶上写着每天服用两次，每次两片，一瓶60片的药可以吃多少天？", options: ["15天", "20天", "30天", "10天"], correctAnswer: "15天"),
            ExerciseItem(id: UUID(), prompt: "您在餐厅吃饭花了$48，想给20%的小费，应该给多少小费？", options: ["约$10", "约$5", "约$15", "约$8"], correctAnswer: "约$10"),
            ExerciseItem(id: UUID(), prompt: "如果春节是在二月五日，再过三个星期是几月几日？", options: ["二月二十六日", "二月十二日", "三月五日", "二月十九日"], correctAnswer: "二月二十六日"),
            ExerciseItem(id: UUID(), prompt: "您从中国汇款给家人，汇了5000元人民币，如果汇率是7元人民币换1美元，大约是多少美元？", options: ["约$714", "约$500", "约$1000", "约$350"], correctAnswer: "约$714"),
            ExerciseItem(id: UUID(), prompt: "一个月有30天，您每隔两天打一次电话给父母，这个月大约打几次电话？", options: ["约10次", "约15次", "约8次", "约20次"], correctAnswer: "约10次"),
            ExerciseItem(id: UUID(), prompt: "您买了一件衣服原价$80，现在打七折，应该付多少钱？", options: ["$56", "$48", "$64", "$72"], correctAnswer: "$56"),
            ExerciseItem(id: UUID(), prompt: "您的车油箱能装15加仑汽油，现在剩下四分之一，还剩多少加仑？", options: ["3.75加仑", "5加仑", "4加仑", "2.5加仑"], correctAnswer: "3.75加仑"),
            ExerciseItem(id: UUID(), prompt: "如果您每个月存$200，一年可以存多少钱？", options: ["$2,400", "$1,800", "$2,000", "$3,000"], correctAnswer: "$2,400"),
            ExerciseItem(id: UUID(), prompt: "您去超市买了$23.75的东西，付了$30，应该找回多少钱？", options: ["$6.25", "$7.25", "$5.75", "$6.75"], correctAnswer: "$6.25"),
            ExerciseItem(id: UUID(), prompt: "如果一列火车每小时行驶90英里，两个半小时能走多少英里？", options: ["225英里", "180英里", "270英里", "200英里"], correctAnswer: "225英里"),
            ExerciseItem(id: UUID(), prompt: "您的医生预约在下午两点半，从家开车需要45分钟，最晚几点应该出门？", options: ["下午一点四十五分", "下午一点三十分", "下午两点", "下午一点"], correctAnswer: "下午一点四十五分"),
            ExerciseItem(id: UUID(), prompt: "如果一个人每天喝8杯水，每杯8盎司，一周喝多少盎司的水？", options: ["448盎司", "336盎司", "560盎司", "280盎司"], correctAnswer: "448盎司"),
            ExerciseItem(id: UUID(), prompt: "您买了三样东西分别是$12.50、$8.75和$4.25，一共花了多少钱？", options: ["$25.50", "$24.50", "$26.50", "$23.50"], correctAnswer: "$25.50"),
            ExerciseItem(id: UUID(), prompt: "如果您现在68岁，全额退休年龄是67岁，您现在是否已经可以申请美国社会安全退休金的全额福利？", options: ["已经超过了申请年龄", "还需要一年", "还需要两年", "还需要五年"], correctAnswer: "已经超过了申请年龄")
        ]
    )

    // MARK: - Exercise 13: Deductive Reasoning 推理 (15 items)
    private static let deductiveReasoning = Exercise(
        id: UUID(),
        title: "推理",
        instructions: "请根据所给信息，选出最合理的答案。",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "小明比小红高，小红比小华高。请问谁最高？", options: ["小明", "小红", "小华", "无法判断"], correctAnswer: "小明"),
            ExerciseItem(id: UUID(), prompt: "所有的苹果都是水果。这个红色的东西是苹果。请问这个红色的东西是什么？", options: ["水果", "蔬菜", "零食", "糖果"], correctAnswer: "水果"),
            ExerciseItem(id: UUID(), prompt: "张太太比李太太年长，王太太比张太太年轻。请问谁最年轻？", options: ["王太太", "张太太", "李太太", "无法判断"], correctAnswer: "王太太"),
            ExerciseItem(id: UUID(), prompt: "如果下雨，地面就会湿。现在地面是干的。请问现在下雨了吗？", options: ["没有下雨", "下雨了", "可能下雨", "无法判断"], correctAnswer: "没有下雨"),
            ExerciseItem(id: UUID(), prompt: "所有去过中国的人都见过长城。陈先生没有见过长城。请问陈先生去过中国吗？", options: ["没有去过", "去过了", "可能去过", "无法判断"], correctAnswer: "没有去过"),
            ExerciseItem(id: UUID(), prompt: "小李每天早上都喝茶。今天早上小李没有喝茶。请问今天是什么情况？", options: ["今天是例外的一天", "小李不喜欢茶", "小李生病了", "今天是周末"], correctAnswer: "今天是例外的一天"),
            ExerciseItem(id: UUID(), prompt: "妈妈比女儿大三十岁。女儿今年二十五岁。请问妈妈今年多少岁？", options: ["55岁", "45岁", "50岁", "60岁"], correctAnswer: "55岁"),
            ExerciseItem(id: UUID(), prompt: "如果一个人会说广东话，他一定是中国人吗？", options: ["不一定，其他国家也有人说广东话", "是的，只有中国人说广东话", "是的，广东话是中国独有的", "不对，广东话不是中文"], correctAnswer: "不一定，其他国家也有人说广东话"),
            ExerciseItem(id: UUID(), prompt: "王先生的儿子是李先生的父亲。请问王先生和李先生是什么关系？", options: ["王先生是李先生的祖父", "王先生是李先生的父亲", "王先生是李先生的叔叔", "王先生是李先生的兄弟"], correctAnswer: "王先生是李先生的祖父"),
            ExerciseItem(id: UUID(), prompt: "超市里苹果比橙子贵，橙子比香蕉贵。如果您只有买一种水果的钱，您买得起哪种？", options: ["香蕉", "橙子", "苹果", "三种都买得起"], correctAnswer: "香蕉"),
            ExerciseItem(id: UUID(), prompt: "如果今天是星期三，再过四天是星期几？", options: ["星期日", "星期六", "星期五", "星期一"], correctAnswer: "星期日"),
            ExerciseItem(id: UUID(), prompt: "五个人坐成一排。小张坐在最左边，小李坐在小张右边，小王坐在最右边。请问小李坐在第几位？", options: ["第二位", "第一位", "第三位", "第四位"], correctAnswer: "第二位"),
            ExerciseItem(id: UUID(), prompt: "所有的护士都受过医疗培训。陈女士是护士。请问陈女士受过医疗培训吗？", options: ["是的，陈女士受过医疗培训", "不一定", "没有", "无法判断"], correctAnswer: "是的，陈女士受过医疗培训"),
            ExerciseItem(id: UUID(), prompt: "如果一个移民在美国合法居住满五年，并且符合其他条件，他可以申请什么？", options: ["美国公民身份", "永久绿卡", "工作签证", "学生签证"], correctAnswer: "美国公民身份"),
            ExerciseItem(id: UUID(), prompt: "林太太每周二和周四去社区中心学英语。这周她去了三次。请问这周发生了什么？", options: ["这周有额外的一次课或活动", "林太太去错了地方", "这周有五个周二", "林太太记错了时间"], correctAnswer: "这周有额外的一次课或活动")
        ]
    )

    // MARK: - Exercise 14: Personal Memory 个人回忆 (20 items)
    private static let personalMemory = Exercise(
        id: UUID(),
        title: "个人回忆",
        instructions: "这些问题没有正确或错误的答案。请分享您的回忆和经历。",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "您是从中国哪个城市或省份来到美国的？那个地方有什么让您最难忘的风景或特色？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您第一次来到美国是哪一年？刚到美国时，什么事情让您感到最惊讶或最不适应？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请描述您在中国过的最难忘的一次春节。当时有哪些家人在场，吃了哪些特别的食物？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您在中国的老家是什么样的？是城市还是农村？请描述您家附近的街道或邻居。", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您学英语的经历是怎样的？刚来美国时语言上遇到过哪些困难？您是怎么克服的？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您最思念中国的哪种食物？这种食物有什么特别的味道或回忆让您难以忘怀？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请描述您在中国工作时的经历。您从事什么职业？工作环境和美国有什么不同？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您的孩子或孙子在美国长大，和您自己的成长经历有什么不同？您觉得哪种成长方式更好？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请描述您第一次乘飞机来美国的经历。旅途中发生了什么印象深刻的事情？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您在美国最喜欢过哪个节日？为什么？这个节日有什么让您感到特别温暖的回忆？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请描述您在中国时最喜欢的一道家常菜。这道菜是谁做的？有什么特别的意义？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您来美国后交到的第一个朋友是谁？你们是怎么认识的？现在还有联系吗？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请回忆一件让您感到自豪的事情，可以是在中国的经历，也可以是来美国后的成就。", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您最喜欢中国的哪个传统习俗或节日活动？这个习俗在您的家庭中是怎么传承的？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请描述您在加州居住的社区或街区。这里和您在中国住的地方有什么相同和不同之处？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您的父母或祖父母对您影响最大的一句话是什么？这句话对您的生活有什么启示？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请回忆一次您帮助其他新移民或被别人帮助的经历。那次经历对您有什么意义？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "您来美国后，什么事情让您最感到骄傲？是学会英语、考到驾照、还是其他的成就？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "请描述您在中国最喜欢的一个地方，可以是公园、寺庙、市场或老街。那个地方为什么让您难忘？", options: [], correctAnswer: ""),
            ExerciseItem(id: UUID(), prompt: "如果您可以给刚刚来到美国的新移民一条建议，您会说什么？这个建议来自您自己的哪段经历？", options: [], correctAnswer: "")
        ]
    )

    // MARK: - Exercise 15: Rote Memory Lists 记忆列表 (12 items)
    private static let roteMemory = Exercise(
        id: UUID(),
        title: "记忆列表",
        instructions: "在每个类别中说出您能记住的内容，然后查看完整列表。",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "请按顺序说出中国十二生肖的所有动物。", options: [], correctAnswer: "鼠、牛、虎、兔、龙、蛇、马、羊、猴、鸡、狗、猪"),
            ExerciseItem(id: UUID(), prompt: "请说出中国历史上的主要朝代，从秦朝开始按顺序说。", options: [], correctAnswer: "秦、汉、三国、晋、南北朝、隋、唐、五代十国、宋、元、明、清"),
            ExerciseItem(id: UUID(), prompt: "请用中文说出一周七天的名称。", options: [], correctAnswer: "星期一、星期二、星期三、星期四、星期五、星期六、星期日"),
            ExerciseItem(id: UUID(), prompt: "请用中文说出一年十二个月的名称。", options: [], correctAnswer: "一月、二月、三月、四月、五月、六月、七月、八月、九月、十月、十一月、十二月"),
            ExerciseItem(id: UUID(), prompt: "请用中文从一数到二十。", options: [], correctAnswer: "一、二、三、四、五、六、七、八、九、十、十一、十二、十三、十四、十五、十六、十七、十八、十九、二十"),
            ExerciseItem(id: UUID(), prompt: "请说出中国四季的名称和每个季节的特点。", options: [], correctAnswer: "春天（温暖、万物生长）、夏天（炎热、多雨）、秋天（凉爽、收获）、冬天（寒冷、下雪）"),
            ExerciseItem(id: UUID(), prompt: "请说出您知道的中国主要传统节日，按照农历顺序排列。", options: [], correctAnswer: "春节（正月初一）、元宵节（正月十五）、清明节（四月初）、端午节（五月初五）、七夕节（七月初七）、中秋节（八月十五）、重阳节（九月初九）、冬至"),
            ExerciseItem(id: UUID(), prompt: "请说出中国四大名著的名称和作者。", options: [], correctAnswer: "《西游记》吴承恩、《红楼梦》曹雪芹、《水浒传》施耐庵、《三国演义》罗贯中"),
            ExerciseItem(id: UUID(), prompt: "请说出普通话的四个声调，并各举一个例子。", options: [], correctAnswer: "第一声（阴平）如“妈”、第二声（阳平）如“麻”、第三声（上声）如“马”、第四声（去声）如“骂”"),
            ExerciseItem(id: UUID(), prompt: "请说出中国五种主要的传统颜色及其象征意义。", options: [], correctAnswer: "红色（喜庆吉祥）、黄色（皇权富贵）、白色（哀悼丧事）、黑色（庄重严肃）、绿色（生命自然）"),
            ExerciseItem(id: UUID(), prompt: "请说出加州的主要城市，从北到南排列。", options: [], correctAnswer: "尤里卡、旧金山、圣何塞、弗雷斯诺、洛杉矶、圣地亚哥"),
            ExerciseItem(id: UUID(), prompt: "请说出人体的主要器官及其功能。", options: [], correctAnswer: "心脏（泵血）、肺（呼吸）、肝脏（解毒）、肾脏（过滤血液）、胃（消化食物）、大脑（思考控制）")
        ]
    )
}
