import Foundation

// NOTE: Exercises 3 (成语填空) and 8 (词形变化) flagged for native Mandarin speaker review.
struct ChineseLanguageExerciseData {

    static let allExercises: [Exercise] = [
        categoryCrossOutEasy,
        categoryCrossOutHard,
        chengyuCompletion,
        synonymsEasy,
        synonymsHard,
        antonymsEasy,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencing
    ]

    // MARK: - Exercise 1: Category Cross-Out — Easy (30 items)
    private static let categoryCrossOutEasy = Exercise(
        id: UUID(),
        title: "归类 — 简单",
        instructions: "哪个词不属于同一类？请选出来。",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "苹果、香蕉、橙子、胡萝卜", options: ["苹果", "香蕉", "橙子", "胡萝卜"], correctAnswer: "胡萝卜", explanation: "蔬菜，不是水果"),
            ExerciseItem(id: UUID(), prompt: "猫、狗、兔子、鲨鱼", options: ["猫", "狗", "兔子", "鲨鱼"], correctAnswer: "鲨鱼", explanation: "海洋鱼类，不是常见宠物"),
            ExerciseItem(id: UUID(), prompt: "红色、蓝色、快乐、绿色", options: ["红色", "蓝色", "快乐", "绿色"], correctAnswer: "快乐", explanation: "情绪，不是颜色"),
            ExerciseItem(id: UUID(), prompt: "星期一、星期三、三月、星期五", options: ["星期一", "星期三", "三月", "星期五"], correctAnswer: "三月", explanation: "月份，不是星期"),
            ExerciseItem(id: UUID(), prompt: "北京、上海、广州、日本", options: ["北京", "上海", "广州", "日本"], correctAnswer: "日本", explanation: "国家，不是中国城市"),
            ExerciseItem(id: UUID(), prompt: "米饭、面条、饺子、椅子", options: ["米饭", "面条", "饺子", "椅子"], correctAnswer: "椅子", explanation: "家具，不是食物"),
            ExerciseItem(id: UUID(), prompt: "医生、老师、护士、汽车", options: ["医生", "老师", "护士", "汽车"], correctAnswer: "汽车", explanation: "交通工具，不是职业"),
            ExerciseItem(id: UUID(), prompt: "春天、夏天、秋天、早上", options: ["春天", "夏天", "秋天", "早上"], correctAnswer: "早上", explanation: "时间段，不是季节"),
            ExerciseItem(id: UUID(), prompt: "钢琴、小提琴、吉他、电视", options: ["钢琴", "小提琴", "吉他", "电视"], correctAnswer: "电视", explanation: "家用电器，不是乐器"),
            ExerciseItem(id: UUID(), prompt: "裤子、衬衫、外套、手表", options: ["裤子", "衬衫", "外套", "手表"], correctAnswer: "手表", explanation: "配饰，不是衣物"),
            ExerciseItem(id: UUID(), prompt: "眼睛、耳朵、鼻子、膝盖", options: ["眼睛", "耳朵", "鼻子", "膝盖"], correctAnswer: "膝盖", explanation: "关节，不是感觉器官"),
            ExerciseItem(id: UUID(), prompt: "公共汽车、火车、飞机、自行车", options: ["公共汽车", "火车", "飞机", "自行车"], correctAnswer: "自行车", explanation: "人力交通，其他是机动交通"),
            ExerciseItem(id: UUID(), prompt: "锤子、螺丝刀、扳手、勺子", options: ["锤子", "螺丝刀", "扳手", "勺子"], correctAnswer: "勺子", explanation: "餐具，不是工具"),
            ExerciseItem(id: UUID(), prompt: "狮子、老虎、豹子、金鱼", options: ["狮子", "老虎", "豹子", "金鱼"], correctAnswer: "金鱼", explanation: "观赏鱼，不是陆地猛兽"),
            ExerciseItem(id: UUID(), prompt: "茶、咖啡、果汁、馒头", options: ["茶", "咖啡", "果汁", "馒头"], correctAnswer: "馒头", explanation: "主食，不是饮料"),
            ExerciseItem(id: UUID(), prompt: "玫瑰、菊花、莲花、仙人掌", options: ["玫瑰", "菊花", "莲花", "仙人掌"], correctAnswer: "仙人掌", explanation: "多肉植物，不是开花植物"),
            ExerciseItem(id: UUID(), prompt: "正月、二月、三月、周末", options: ["正月", "二月", "三月", "周末"], correctAnswer: "周末", explanation: "非农历月份"),
            ExerciseItem(id: UUID(), prompt: "冰箱、洗衣机、微波炉、桌子", options: ["冰箱", "洗衣机", "微波炉", "桌子"], correctAnswer: "桌子", explanation: "家具，不是家用电器"),
            ExerciseItem(id: UUID(), prompt: "篮球、足球、网球、游泳", options: ["篮球", "足球", "网球", "游泳"], correctAnswer: "游泳", explanation: "运动方式，不是球类运动"),
            ExerciseItem(id: UUID(), prompt: "长城、故宫、黄山、麦当劳", options: ["长城", "故宫", "黄山", "麦当劳"], correctAnswer: "麦当劳", explanation: "快餐品牌，不是中国名胜"),
            ExerciseItem(id: UUID(), prompt: "感冒、发烧、咳嗽、手套", options: ["感冒", "发烧", "咳嗽", "手套"], correctAnswer: "手套", explanation: "衣物，不是疾病症状"),
            ExerciseItem(id: UUID(), prompt: "爸爸、妈妈、爷爷、邻居", options: ["爸爸", "妈妈", "爷爷", "邻居"], correctAnswer: "邻居", explanation: "非家庭成员"),
            ExerciseItem(id: UUID(), prompt: "铅笔、钢笔、圆珠笔、橡皮擦", options: ["铅笔", "钢笔", "圆珠笔", "橡皮擦"], correctAnswer: "橡皮擦", explanation: "擦写工具，不是书写工具"),
            ExerciseItem(id: UUID(), prompt: "鸡、鸭、鹅、猪", options: ["鸡", "鸭", "鹅", "猪"], correctAnswer: "猪", explanation: "哺乳动物，不是家禽"),
            ExerciseItem(id: UUID(), prompt: "地震、台风、洪水、彩虹", options: ["地震", "台风", "洪水", "彩虹"], correctAnswer: "彩虹", explanation: "自然现象，不是自然灾害"),
            ExerciseItem(id: UUID(), prompt: "面包、蛋糕、饼干、咸鱼", options: ["面包", "蛋糕", "饼干", "咸鱼"], correctAnswer: "咸鱼", explanation: "腌制食品，不是烘焙食品"),
            ExerciseItem(id: UUID(), prompt: "牙刷、牙膏、毛巾、电话", options: ["牙刷", "牙膏", "毛巾", "电话"], correctAnswer: "电话", explanation: "通讯设备，不是洗漱用品"),
            ExerciseItem(id: UUID(), prompt: "加州、纽约、德州、巴黎", options: ["加州", "纽约", "德州", "巴黎"], correctAnswer: "巴黎", explanation: "法国城市，不是美国城市"),
            ExerciseItem(id: UUID(), prompt: "生气、开心、难过、走路", options: ["生气", "开心", "难过", "走路"], correctAnswer: "走路", explanation: "肢体动作，不是情绪"),
            ExerciseItem(id: UUID(), prompt: "黄河、长江、珠江、泰山", options: ["黄河", "长江", "珠江", "泰山"], correctAnswer: "泰山", explanation: "山，不是河流")
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out — Hard (24 items)
    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "归类 — 困难",
        instructions: "哪个词不属于同一类？请选出来。",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "唐朝、宋朝、明朝、民国", options: ["唐朝", "宋朝", "明朝", "民国"], correctAnswer: "民国", explanation: "共和政体，不是封建王朝"),
            ExerciseItem(id: UUID(), prompt: "孔子、老子、孟子、秦始皇", options: ["孔子", "老子", "孟子", "秦始皇"], correctAnswer: "秦始皇", explanation: "皇帝，不是思想家"),
            ExerciseItem(id: UUID(), prompt: "粤语、闽南语、上海话、普通话", options: ["粤语", "闽南语", "上海话", "普通话"], correctAnswer: "普通话", explanation: "官方语言，不是方言"),
            ExerciseItem(id: UUID(), prompt: "春节、中秋节、清明节、感恩节", options: ["春节", "中秋节", "清明节", "感恩节"], correctAnswer: "感恩节", explanation: "美国节日，不是中国传统节日"),
            ExerciseItem(id: UUID(), prompt: "豆腐、豆浆、豆芽、花生", options: ["豆腐", "豆浆", "豆芽", "花生"], correctAnswer: "花生", explanation: "花生不是豆制品"),
            ExerciseItem(id: UUID(), prompt: "针灸、推拿、拔罐、手术", options: ["针灸", "推拿", "拔罐", "手术"], correctAnswer: "手术", explanation: "西医手术，不是传统中医"),
            ExerciseItem(id: UUID(), prompt: "红烧肉、糖醋排骨、麻婆豆腐、寿司", options: ["红烧肉", "糖醋排骨", "麻婆豆腐", "寿司"], correctAnswer: "寿司", explanation: "日本食物，不是中国菜"),
            ExerciseItem(id: UUID(), prompt: "太极拳、武术、气功、象棋", options: ["太极拳", "武术", "气功", "象棋"], correctAnswer: "象棋", explanation: "棋类游戏，不是武术运动"),
            ExerciseItem(id: UUID(), prompt: "长城、兵马俑、故宫、埃菲尔铁塔", options: ["长城", "兵马俑", "故宫", "埃菲尔铁塔"], correctAnswer: "埃菲尔铁塔", explanation: "法国地标，不是中国名胜"),
            ExerciseItem(id: UUID(), prompt: "人民币、美元、欧元、股票", options: ["人民币", "美元", "欧元", "股票"], correctAnswer: "股票", explanation: "金融投资，不是货币"),
            ExerciseItem(id: UUID(), prompt: "移民、留学生、访客、公民", options: ["移民", "留学生", "访客", "公民"], correctAnswer: "访客", explanation: "短暂逗留，不是长期居留身份"),
            ExerciseItem(id: UUID(), prompt: "鼠、牛、虎、龙", options: ["鼠", "牛", "虎", "龙"], correctAnswer: "龙", explanation: "神话动物，其他是真实动物"),
            ExerciseItem(id: UUID(), prompt: "汉字、拼音、偏旁、语法", options: ["汉字", "拼音", "偏旁", "语法"], correctAnswer: "语法", explanation: "规则系统，不是书写元素"),
            ExerciseItem(id: UUID(), prompt: "白居易、李白、杜甫、曹雪芹", options: ["白居易", "李白", "杜甫", "曹雪芹"], correctAnswer: "曹雪芹", explanation: "小说家，其他是唐代诗人"),
            ExerciseItem(id: UUID(), prompt: "黄河、长江、珠江、洞庭湖", options: ["黄河", "长江", "珠江", "洞庭湖"], correctAnswer: "洞庭湖", explanation: "湖泊，不是河流"),
            ExerciseItem(id: UUID(), prompt: "绿茶、乌龙茶、普洱茶、菊花茶", options: ["绿茶", "乌龙茶", "普洱茶", "菊花茶"], correctAnswer: "菊花茶", explanation: "花草茶，不是茶叶制成的茶"),
            ExerciseItem(id: UUID(), prompt: "广东、四川、湖南、台湾", options: ["广东", "四川", "湖南", "台湾"], correctAnswer: "台湾", explanation: "独立行政区，不是大陆省份"),
            ExerciseItem(id: UUID(), prompt: "毛笔、砚台、宣纸、钢笔", options: ["毛笔", "砚台", "宣纸", "钢笔"], correctAnswer: "钢笔", explanation: "现代文具，不是传统书法工具"),
            ExerciseItem(id: UUID(), prompt: "春卷、汤圆、月饼、饺子", options: ["春卷", "汤圆", "月饼", "饺子"], correctAnswer: "饺子", explanation: "日常主食，其他是节日专属甜点"),
            ExerciseItem(id: UUID(), prompt: "孙悟空、猪八戒、沙僧、哪吒", options: ["孙悟空", "猪八戒", "沙僧", "哪吒"], correctAnswer: "哪吒", explanation: "非《西游记》人物"),
            ExerciseItem(id: UUID(), prompt: "医保、社保、养老金、贷款", options: ["医保", "社保", "养老金", "贷款"], correctAnswer: "贷款", explanation: "债务，不是社会保障"),
            ExerciseItem(id: UUID(), prompt: "洛杉矶、旧金山、圣地亚哥、拉斯维加斯", options: ["洛杉矶", "旧金山", "圣地亚哥", "拉斯维加斯"], correctAnswer: "拉斯维加斯", explanation: "内华达州城市，不是加州城市"),
            ExerciseItem(id: UUID(), prompt: "成语、谚语、歇后语、日记", options: ["成语", "谚语", "歇后语", "日记"], correctAnswer: "日记", explanation: "个人记录，不是语言表达形式"),
            ExerciseItem(id: UUID(), prompt: "立春、夏至、秋分、除夕", options: ["立春", "夏至", "秋分", "除夕"], correctAnswer: "除夕", explanation: "传统节日，不是节气")
        ]
    )

    // MARK: - Exercise 3: Chengyu Completion 成语填空 (20 items) ⚠ Native speaker review recommended
    private static let chengyuCompletion = Exercise(
        id: UUID(),
        title: "成语填空",
        instructions: "完成以下成语。",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "完成这个成语：一石＿＿", options: ["二鸟", "三鸟", "两鸟", "四鸟"], correctAnswer: "二鸟"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：半途而＿＿", options: ["止", "废", "返", "散"], correctAnswer: "废"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：马到＿＿", options: ["功成", "成功", "得胜", "功到"], correctAnswer: "成功"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：守株待＿＿", options: ["兔", "鸟", "鹿", "熊"], correctAnswer: "兔"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：画蛇＿＿", options: ["添足", "加腿", "添翼", "附尾"], correctAnswer: "添足"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：对牛＿＿", options: ["弹琴", "唱歌", "说话", "讲课"], correctAnswer: "弹琴"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：亡羊＿＿", options: ["补牢", "补圈", "救羊", "关门"], correctAnswer: "补牢"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：掩耳＿＿", options: ["盗铃", "偷铃", "躲避", "藏身"], correctAnswer: "盗铃"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：一帆＿＿", options: ["风顺", "顺利", "平安", "到达"], correctAnswer: "风顺"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：井底之＿＿", options: ["蛙", "鱼", "虫", "龟"], correctAnswer: "蛙"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：三人成＿＿", options: ["虎", "狼", "真", "假"], correctAnswer: "虎"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：叶公好＿＿", options: ["龙", "虎", "蛇", "马"], correctAnswer: "龙"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：狐假＿＿", options: ["虎威", "狮威", "熊威", "豹威"], correctAnswer: "虎威"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：塞翁失＿＿", options: ["马", "牛", "驴", "羊"], correctAnswer: "马"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：青出于蓝＿＿", options: ["而胜于蓝", "更胜一筹", "超出其上", "出类拔萃"], correctAnswer: "而胜于蓝"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：纸上＿＿", options: ["谈兵", "说话", "写字", "作文"], correctAnswer: "谈兵"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：卧薪＿＿", options: ["尝胆", "忍辱", "苦练", "磨剑"], correctAnswer: "尝胆"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：愚公＿＿", options: ["移山", "搬山", "填海", "开山"], correctAnswer: "移山"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：四面＿＿", options: ["楚歌", "敌军", "危机", "包围"], correctAnswer: "楚歌"),
            ExerciseItem(id: UUID(), prompt: "完成这个成语：破釜＿＿", options: ["沉舟", "沉船", "毁船", "弃舟"], correctAnswer: "沉舟")
        ]
    )

    // MARK: - Exercise 4: Synonyms Easy 近义词 — 简单 (10 items)
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "近义词 — 简单",
        instructions: "选出与划线词意思最相近的词。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "哪个词和“高兴”意思最接近？", options: ["开心", "难过", "生气", "害怕"], correctAnswer: "开心"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“漂亮”意思最接近？", options: ["美丽", "丑陋", "普通", "奇怪"], correctAnswer: "美丽"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“害怕”意思最接近？", options: ["恐惧", "勇敢", "开心", "平静"], correctAnswer: "恐惧"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“快速”意思最接近？", options: ["迅速", "缓慢", "安静", "轻松"], correctAnswer: "迅速"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“聪明”意思最接近？", options: ["智慧", "愚蠢", "懒惰", "顽皮"], correctAnswer: "智慧"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“喜欢”意思最接近？", options: ["喜爱", "讨厌", "忽视", "拒绝"], correctAnswer: "喜爱"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“告诉”意思最接近？", options: ["通知", "隐瞒", "询问", "忘记"], correctAnswer: "通知"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“疲惫”意思最接近？", options: ["劳累", "精神", "活跃", "轻松"], correctAnswer: "劳累"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“干净”意思最接近？", options: ["整洁", "肮脏", "凌乱", "破旧"], correctAnswer: "整洁"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“帮助”意思最接近？", options: ["协助", "阻碍", "拒绝", "忽视"], correctAnswer: "协助")
        ]
    )

    // MARK: - Exercise 5: Synonyms Hard 近义词 — 困难 (10 items)
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "近义词 — 困难",
        instructions: "选出与划线词意思最相近的词。",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "哪个词和“坚持”意思最接近？", options: ["持之以恒", "半途而废", "随波逐流", "犹豫不决"], correctAnswer: "持之以恒"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“遗忘”意思最接近？", options: ["忘却", "铭记", "珍惜", "回忆"], correctAnswer: "忘却"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“勤奋”意思最接近？", options: ["刻苦", "懒散", "马虎", "敷衍"], correctAnswer: "刻苦"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“宽容”意思最接近？", options: ["包容", "苛刻", "计较", "严厉"], correctAnswer: "包容"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“思念”意思最接近？", options: ["牵挂", "忘记", "漠视", "放弃"], correctAnswer: "牵挂"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“犹豫”意思最接近？", options: ["迟疑", "果断", "坚决", "勇敢"], correctAnswer: "迟疑"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“杰出”意思最接近？", options: ["卓越", "平庸", "普通", "一般"], correctAnswer: "卓越"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“悲伤”意思最接近？", options: ["哀愁", "欢喜", "轻松", "满足"], correctAnswer: "哀愁"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“谦虚”意思最接近？", options: ["谦逊", "傲慢", "自负", "骄傲"], correctAnswer: "谦逊"),
            ExerciseItem(id: UUID(), prompt: "哪个词和“珍贵”意思最接近？", options: ["宝贵", "廉价", "普通", "多余"], correctAnswer: "宝贵")
        ]
    )

    // MARK: - Exercise 6: Antonyms Easy 反义词 — 简单 (10 items)
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "反义词 — 简单",
        instructions: "选出与划线词意思相反的词。",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "哪个词是“快乐”的反义词？", options: ["悲伤", "平静", "紧张", "疲惫"], correctAnswer: "悲伤"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“黑暗”的反义词？", options: ["光明", "灰色", "模糊", "昏暗"], correctAnswer: "光明"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“寒冷”的反义词？", options: ["温暖", "凉爽", "潮湿", "干燥"], correctAnswer: "温暖"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“勤劳”的反义词？", options: ["懒惰", "忙碌", "认真", "努力"], correctAnswer: "懒惰"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“安全”的反义词？", options: ["危险", "平静", "正常", "普通"], correctAnswer: "危险"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“简单”的反义词？", options: ["复杂", "容易", "轻松", "方便"], correctAnswer: "复杂"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“出发”的反义词？", options: ["到达", "继续", "停止", "等待"], correctAnswer: "到达"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“慷慨”的反义词？", options: ["吝啬", "友好", "热情", "善良"], correctAnswer: "吝啬"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“喧闹”的反义词？", options: ["安静", "热闹", "拥挤", "忙碌"], correctAnswer: "安静"),
            ExerciseItem(id: UUID(), prompt: "哪个词是“陌生”的反义词？", options: ["熟悉", "普通", "常见", "平常"], correctAnswer: "熟悉")
        ]
    )

    // MARK: - Exercise 7: Sentence Completion Easy 完成句子 (20 items)
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "完成句子",
        instructions: "选择最合适的词填入空格，完成句子。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "我每天早上用___刷牙。", options: ["牙刷", "筷子", "钥匙", "雨伞"], correctAnswer: "牙刷"),
            ExerciseItem(id: UUID(), prompt: "天下雨了，我需要带___出门。", options: ["雨伞", "帽子", "手套", "围巾"], correctAnswer: "雨伞"),
            ExerciseItem(id: UUID(), prompt: "春节的时候，我们一家人一起吃___。", options: ["年夜饭", "月饼", "粽子", "汤圆"], correctAnswer: "年夜饭"),
            ExerciseItem(id: UUID(), prompt: "我肚子饿了，想去厨房___东西吃。", options: ["找", "洗", "买", "扔"], correctAnswer: "找"),
            ExerciseItem(id: UUID(), prompt: "她生病了，需要去医院看___。", options: ["医生", "老师", "律师", "邻居"], correctAnswer: "医生"),
            ExerciseItem(id: UUID(), prompt: "爷爷每天早上去公园___太极拳。", options: ["打", "踢", "跑", "跳"], correctAnswer: "打"),
            ExerciseItem(id: UUID(), prompt: "我把钱包忘在家里了，没有___买东西。", options: ["钱", "时间", "力气", "心情"], correctAnswer: "钱"),
            ExerciseItem(id: UUID(), prompt: "中秋节的晚上，我们一家人一起赏___。", options: ["月亮", "星星", "太阳", "彩虹"], correctAnswer: "月亮"),
            ExerciseItem(id: UUID(), prompt: "他工作很努力，老板给他___了工资。", options: ["涨", "减", "停", "换"], correctAnswer: "涨"),
            ExerciseItem(id: UUID(), prompt: "冬天天气很冷，我需要穿___的衣服。", options: ["厚", "薄", "旧", "破"], correctAnswer: "厚"),
            ExerciseItem(id: UUID(), prompt: "我每天晚上睡觉前都要___日记。", options: ["写", "读", "看", "画"], correctAnswer: "写"),
            ExerciseItem(id: UUID(), prompt: "飞机要起飞了，请乘客系好___。", options: ["安全带", "行李", "帽子", "手机"], correctAnswer: "安全带"),
            ExerciseItem(id: UUID(), prompt: "妈妈做的红烧肉非常___，我吃了两碗饭。", options: ["好吃", "难吃", "便宜", "漂亮"], correctAnswer: "好吃"),
            ExerciseItem(id: UUID(), prompt: "他忘记带钥匙，进不了___。", options: ["家门", "学校", "商店", "医院"], correctAnswer: "家门"),
            ExerciseItem(id: UUID(), prompt: "我在超市买了苹果、香蕉和___。", options: ["橙子", "椅子", "书包", "铅笔"], correctAnswer: "橙子"),
            ExerciseItem(id: UUID(), prompt: "爸爸开车送我去___上学。", options: ["学校", "医院", "银行", "机场"], correctAnswer: "学校"),
            ExerciseItem(id: UUID(), prompt: "她很___，总是帮助有困难的人。", options: ["善良", "自私", "懒惰", "粗心"], correctAnswer: "善良"),
            ExerciseItem(id: UUID(), prompt: "我在美国住了二十年，已经拿到了___。", options: ["绿卡", "签证", "护照", "学生证"], correctAnswer: "绿卡"),
            ExerciseItem(id: UUID(), prompt: "奶奶年纪大了，走路需要用___。", options: ["拐杖", "雨伞", "扫帚", "筷子"], correctAnswer: "拐杖"),
            ExerciseItem(id: UUID(), prompt: "今天是我的生日，朋友们为我唱了___歌。", options: ["生日快乐", "新年好", "茉莉花", "月亮代表我的心"], correctAnswer: "生日快乐")
        ]
    )

    // MARK: - Exercise 8: Morphology 词形变化 (20 items) ⚠ Native speaker review recommended
    private static let morphology = Exercise(
        id: UUID(),
        title: "词形变化",
        instructions: "选择语法正确的词语形式填入空格。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "她唱歌唱得非常___。", options: ["好听", "好听地", "好听的", "好听了"], correctAnswer: "好听"),
            ExerciseItem(id: UUID(), prompt: "这道题太难了，我___做完。", options: ["没能", "没能地", "不能的", "不能了"], correctAnswer: "没能"),
            ExerciseItem(id: UUID(), prompt: "他___跑步，每天早上都去公园。", options: ["喜欢", "喜欢地", "喜欢的", "喜欢了"], correctAnswer: "喜欢"),
            ExerciseItem(id: UUID(), prompt: "妈妈把饭___好了，快来吃吧。", options: ["做", "做了", "做的", "做地"], correctAnswer: "做"),
            ExerciseItem(id: UUID(), prompt: "这件衣服比那件___多了。", options: ["漂亮", "更漂亮", "漂亮地", "漂亮的"], correctAnswer: "漂亮"),
            ExerciseItem(id: UUID(), prompt: "我们已经___这个问题很多次了。", options: ["讨论", "讨论过", "讨论地", "讨论的"], correctAnswer: "讨论过"),
            ExerciseItem(id: UUID(), prompt: "他说话说得太快，我___听清楚。", options: ["没有", "没有的", "没有地", "没有了"], correctAnswer: "没有"),
            ExerciseItem(id: UUID(), prompt: "这本书___有意思，我一口气读完了。", options: ["真", "真的", "真地", "真了"], correctAnswer: "真"),
            ExerciseItem(id: UUID(), prompt: "爷爷___在公园里打太极拳。", options: ["经常", "经常地", "经常的", "经常了"], correctAnswer: "经常"),
            ExerciseItem(id: UUID(), prompt: "她把房间打扫得___干净。", options: ["非常", "非常地", "非常的", "非常了"], correctAnswer: "非常"),
            ExerciseItem(id: UUID(), prompt: "我___去过北京，那里非常美。", options: ["曾经", "曾经地", "曾经的", "曾经了"], correctAnswer: "曾经"),
            ExerciseItem(id: UUID(), prompt: "这个孩子长得___他的父亲。", options: ["像", "像地", "像的", "像了"], correctAnswer: "像"),
            ExerciseItem(id: UUID(), prompt: "天气预报说明天___下雨。", options: ["会", "会地", "会的", "会了"], correctAnswer: "会"),
            ExerciseItem(id: UUID(), prompt: "他___努力学习，成绩越来越好。", options: ["越来越", "越来越地", "越来越的", "越来越了"], correctAnswer: "越来越"),
            ExerciseItem(id: UUID(), prompt: "这家餐厅的饺子___那家好吃。", options: ["比", "比地", "比的", "比了"], correctAnswer: "比"),
            ExerciseItem(id: UUID(), prompt: "妹妹___哭了，因为找不到她的玩具。", options: ["突然", "突然地", "突然的", "突然了"], correctAnswer: "突然"),
            ExerciseItem(id: UUID(), prompt: "我们___到达机场，飞机还没起飞。", options: ["及时", "及时地", "及时的", "及时了"], correctAnswer: "及时"),
            ExerciseItem(id: UUID(), prompt: "奶奶___我们讲她小时候的故事。", options: ["给", "给地", "给的", "给了"], correctAnswer: "给"),
            ExerciseItem(id: UUID(), prompt: "他的普通话说得___标准。", options: ["很", "很地", "很的", "很了"], correctAnswer: "很"),
            ExerciseItem(id: UUID(), prompt: "这条路我___走，不会迷路的。", options: ["熟悉", "很熟悉", "熟悉地", "熟悉的"], correctAnswer: "很熟悉")
        ]
    )

    // MARK: - Exercise 9: Analogies 类比 (15 items)
    private static let analogies = Exercise(
        id: UUID(),
        title: "类比",
        instructions: "根据前两个词的关系，选出最合适的词完成类比。",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "苹果之于水果，犹如玫瑰之于___", options: ["花", "树", "草", "叶"], correctAnswer: "花"),
            ExerciseItem(id: UUID(), prompt: "医生之于医院，犹如老师之于___", options: ["学校", "图书馆", "商店", "公园"], correctAnswer: "学校"),
            ExerciseItem(id: UUID(), prompt: "眼睛之于看，犹如耳朵之于___", options: ["听", "说", "走", "想"], correctAnswer: "听"),
            ExerciseItem(id: UUID(), prompt: "筷子之于中国，犹如叉子之于___", options: ["美国", "日本", "韩国", "泰国"], correctAnswer: "美国"),
            ExerciseItem(id: UUID(), prompt: "春节之于中国，犹如感恩节之于___", options: ["美国", "英国", "法国", "德国"], correctAnswer: "美国"),
            ExerciseItem(id: UUID(), prompt: "北京之于中国，犹如华盛顿之于___", options: ["美国", "加拿大", "英国", "澳大利亚"], correctAnswer: "美国"),
            ExerciseItem(id: UUID(), prompt: "饺子之于冬至，犹如月饼之于___", options: ["中秋节", "春节", "端午节", "清明节"], correctAnswer: "中秋节"),
            ExerciseItem(id: UUID(), prompt: "钢琴之于弹，犹如小提琴之于___", options: ["拉", "打", "吹", "敲"], correctAnswer: "拉"),
            ExerciseItem(id: UUID(), prompt: "冬天之于寒冷，犹如夏天之于___", options: ["炎热", "凉爽", "温暖", "潮湿"], correctAnswer: "炎热"),
            ExerciseItem(id: UUID(), prompt: "孙悟空之于《西游记》，犹如贾宝玉之于___", options: ["《红楼梦》", "《水浒传》", "《三国演义》", "《聊斋志异》"], correctAnswer: "《红楼梦》"),
            ExerciseItem(id: UUID(), prompt: "长城之于北京，犹如金门大桥之于___", options: ["旧金山", "洛杉矶", "纽约", "芝加哥"], correctAnswer: "旧金山"),
            ExerciseItem(id: UUID(), prompt: "米之于饭，犹如面粉之于___", options: ["面包", "蔬菜", "水果", "肉"], correctAnswer: "面包"),
            ExerciseItem(id: UUID(), prompt: "中文之于中国，犹如西班牙语之于___", options: ["墨西哥", "法国", "德国", "意大利"], correctAnswer: "墨西哥"),
            ExerciseItem(id: UUID(), prompt: "毛笔之于书法，犹如剪刀之于___", options: ["剪纸", "绘画", "刺绣", "雕刻"], correctAnswer: "剪纸"),
            ExerciseItem(id: UUID(), prompt: "姚明之于篮球，犹如李娜之于___", options: ["网球", "足球", "乒乓球", "羽毛球"], correctAnswer: "网球")
        ]
    )

    // MARK: - Exercise 10: Fact or Opinion 事实还是观点 (25 items)
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "事实还是观点",
        instructions: "判断以下句子是事实还是观点。",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "中国是世界上人口最多的国家之一。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "饺子是世界上最好吃的食物。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "长江是中国最长的河流。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "学中文比学西班牙语更难。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "春节是农历新年的第一天。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "加州的天气比纽约更好。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "一年有十二个月。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "太极拳对老年人的健康非常有益。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "北京是中华人民共和国的首都。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "住在唐人街比住在郊区更有意思。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "人体有206块骨头。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "中国菜比日本菜更美味。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "旧金山有一个著名的唐人街。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "每个中国家庭都应该在春节时团聚。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "中国的万里长城从东到西横跨数千公里。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "粤语比普通话更好听。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "美国有五十个州。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "孩子应该学会说中文，不能忘记母语。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "地球围绕太阳转一圈需要365天。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "移民来美国的生活比在中国更幸福。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "中秋节时人们有赏月和吃月饼的传统。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "在美国出生的孩子比在中国出生的孩子更幸运。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "人每天需要喝足够的水来保持健康。", options: ["Fact", "Opinion"], correctAnswer: "Fact"),
            ExerciseItem(id: UUID(), prompt: "传统中医比西医更有效。", options: ["Fact", "Opinion"], correctAnswer: "Opinion"),
            ExerciseItem(id: UUID(), prompt: "洛杉矶位于加利福尼亚州。", options: ["Fact", "Opinion"], correctAnswer: "Fact")
        ]
    )

    // MARK: - Exercise 11: Sequencing 排序 (8 items)
    private static let sequencing = Exercise(
        id: UUID(),
        title: "排序",
        instructions: "以下步骤顺序已被打乱，请将它们排列成正确的顺序。",
        section: .language,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "包饺子的步骤",
                options: ["包入馅料捏紧", "准备面粉和馅料", "捞出装盘享用", "擀成饺子皮", "和面揉成面团", "放入沸水中煮"],
                correctAnswer: "准备面粉和馅料 | 和面揉成面团 | 擀成饺子皮 | 包入馅料捏紧 | 放入沸水中煮 | 捞出装盘享用"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "去银行取钱的步骤",
                options: ["取号等待叫号", "带上身份证和银行卡", "收好现金和收据离开", "开车或乘车去银行", "出示证件办理取款", "走到柜台说明需求"],
                correctAnswer: "带上身份证和银行卡 | 开车或乘车去银行 | 取号等待叫号 | 走到柜台说明需求 | 出示证件办理取款 | 收好现金和收据离开"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "从中国飞往洛杉矶的步骤",
                options: ["通过安检进入候机厅", "提前网上办理值机", "飞抵洛杉矶入境美国", "收拾行李准备证件", "登机找到座位坐好", "前往机场办理登机"],
                correctAnswer: "提前网上办理值机 | 收拾行李准备证件 | 前往机场办理登机 | 通过安检进入候机厅 | 登机找到座位坐好 | 飞抵洛杉矶入境美国"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮一锅白米饭的步骤",
                options: ["加入适量清水", "量好适量的大米", "电饭锅跳闸后焖几分钟", "放入电饭锅中", "用清水淘洗大米", "按下煮饭键等待"],
                correctAnswer: "量好适量的大米 | 用清水淘洗大米 | 加入适量清水 | 放入电饭锅中 | 按下煮饭键等待 | 电饭锅跳闸后焖几分钟"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "准备春节年夜饭的步骤",
                options: ["当天清洗切好食材", "提前几天计划菜单", "一家人围坐吃年夜饭", "去超市采购食材", "摆好桌子等家人入座", "按顺序烹饪各道菜"],
                correctAnswer: "提前几天计划菜单 | 去超市采购食材 | 当天清洗切好食材 | 按顺序烹饪各道菜 | 摆好桌子等家人入座 | 一家人围坐吃年夜饭"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "去看家庭医生的步骤",
                options: ["按时到达诊所报到", "打电话或网上预约", "见医生说明病情拿处方", "记下预约日期和时间", "等候护士叫名字进诊室", "提前准备好保险卡"],
                correctAnswer: "打电话或网上预约 | 记下预约日期和时间 | 提前准备好保险卡 | 按时到达诊所报到 | 等候护士叫名字进诊室 | 见医生说明病情拿处方"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "申请美国公民身份的步骤",
                options: ["准备并提交所需文件", "确认自己符合申请资格", "宣誓入籍成为美国公民", "填写N-400申请表格", "参加移民局面试考试", "等待面试通知信"],
                correctAnswer: "确认自己符合申请资格 | 填写N-400申请表格 | 准备并提交所需文件 | 等待面试通知信 | 参加移民局面试考试 | 宣誓入籍成为美国公民"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "给父母打视频电话的步骤",
                options: ["找到父母的联系人", "打开手机找到微信或FaceTime", "通话结束后说再见挂断", "确认网络连接正常", "等待父母接听", "点击视频通话按钮"],
                correctAnswer: "打开手机找到微信或FaceTime | 确认网络连接正常 | 找到父母的联系人 | 点击视频通话按钮 | 等待父母接听 | 通话结束后说再见挂断"
            )
        ]
    )
}
