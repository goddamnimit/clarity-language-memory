import Foundation


struct ChineseHardExercisesData {

    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5,
        exercise6,
        exercise7,
        exercise8,
        easyHomonyms
    ]

    // MARK: - Exercise 1: 高级同音字词
    private static let exercise1 = Exercise(
        title: "高级同音字词",
        instructions: "请选择正确的同音词填空以完成句子。",
        section: .language,
        type: .homonym,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "[权力 / 权利] 保护个人私有财产是公民的___。市长拥有签署这项法令的___。", options: ["权利...权力", "权力...权利", "权利...权利", "权力...权力"], correctAnswer: "权利...权力", explanation: "“权利”指法律赋予的权益，“权力”指行政或统治的力量。"),
            ExerciseItem(prompt: "[机制 / 机智] 应对突发情况需要极大的___。公司的管理___需要优化。", options: ["机智...机制", "机制...机智", "机制...机制", "机智...机智"], correctAnswer: "机智...机制", explanation: "“机智”形容聪明灵活，“机制”指系统的构造与运行规律。"),
            ExerciseItem(prompt: "[公式 / 公事] 我们必须按规定办理___。数学老师在黑板上写下了求导___。", options: ["公事...公式", "公式...公事", "公式...公式", "公事...公事"], correctAnswer: "公事...公式", explanation: "“公事”指公务或官方事务，“公式”指用符号表示数学关系的等式。"),
            ExerciseItem(prompt: "[修养 / 休养] 医生建议他去海边___一个月。他的言谈举止显示出极高的文化___。", options: ["休养...修养", "修养...休养", "修养...修养", "休养...休养"], correctAnswer: "休养...修养", explanation: "“休养”指休息调养，“修养”指个人的道德与文化水平。"),
            ExerciseItem(prompt: "[品味 / 品位] 这道菜值得你细细___。这间书房的设计非常有___。", options: ["品味...品位", "品位...品味", "品味...品味", "品位...品位"], correctAnswer: "品味...品位", explanation: "“品味”是动词品尝体味，“品位”是名词，指档次或艺术水平。"),
            ExerciseItem(prompt: "[学历 / 学力] 招聘简章要求具有硕士___。他通过自学达到了同等___。", options: ["学历...学力", "学力...学历", "学历...学历", "学力...学力"], correctAnswer: "学历...学力", explanation: "“学历”指学习的经历与文凭，“学力”指实际达到的学习能力和程度。"),
            ExerciseItem(prompt: "[界限 / 界线] 两个省份之间的___非常明确。科学与迷信之间有着严格的___。", options: ["界线...界限", "界限...界线", "界限...界限", "界线...界线"], correctAnswer: "界线...界限", explanation: "“界线”多指具体的地理分界，“界限”多指抽象的范围或限度。"),
            ExerciseItem(prompt: "[启示 / 启事] 他在报纸上刊登了一则寻人___。大自然给予了人类无数的发明___。", options: ["启事...启示", "启示...启事", "启示...启示", "启事...启事"], correctAnswer: "启事...启示", explanation: "“启事”指刊登的声明或公告，“启示”指获得的启发与指示。"),
            ExerciseItem(prompt: "[必须 / 必需] 水和空气是生命的___品。你今天___完成这个项目。", options: ["必需...必须", "必须...必需", "必须...必须", "必需...必需"], correctAnswer: "必需...必须", explanation: "“必需”指一定要有的、不可缺少的（常修饰物品），“必须”指一定要（修饰行动）。"),
            ExerciseItem(prompt: "[精致 / 景致] 这里的湖光山色是非常美丽的___。这个木雕工艺品做工极为___。", options: ["景致...精致", "精致...景致", "精致...精致", "景致...景致"], correctAnswer: "景致...精致", explanation: "“景致”指风景与景色，“精致”指精美细致。"),
            ExerciseItem(prompt: "[时期 / 石器] 考古学家出土了新___时代的工具。在战争___，物资非常匮乏。", options: ["石器...时期", "时期...石器", "时期...时期", "石器...石器"], correctAnswer: "石器...时期", explanation: "“石器”指石头工具，“时期”指一段特定时间。"),
            ExerciseItem(prompt: "[自豪 / 字号] 这家百年老店的___很有名。他为自己的祖国感到无比的___。", options: ["字号...自豪", "自豪...字号", "自豪...自豪", "字号...字号"], correctAnswer: "字号...自豪", explanation: "“字号”指商店的名号，“自豪”指感到骄傲和光荣。"),
            ExerciseItem(prompt: "[代沟 / 带钩] 父母和子女之间难免存在___。出土的青铜___做工很精细。", options: ["代沟...带钩", "带钩...代沟", "代沟...代沟", "带钩...带钩"], correctAnswer: "代沟...带钩", explanation: "“代沟”指两代人之间的思想差距，“带钩”指古代束腰的皮带扣。"),
            ExerciseItem(prompt: "[出生 / 出声] 他___在一个书香门第家庭。请大家保持安静，不要___。", options: ["出生...出声", "出声...出生", "出生...出生", "出声...出声"], correctAnswer: "出生...出声", explanation: "“出生”指胎儿诞生，“出声”指发出声音。"),
            ExerciseItem(prompt: "[终生 / 终身] 他___致力于环境保护事业。国家为退役军人提供___保障。", options: ["终生...终身", "终身...终生", "终生...终生", "终身...终身"], correctAnswer: "终生...终身", explanation: "“终生”指一生经历（侧重事业、时间），“终身”指一生切身利益（侧重婚姻、福利待遇）。")
        ]
    )

    // MARK: - Exercise 2: 高级词汇类比
    private static let exercise2 = Exercise(
        title: "高级词汇类比",
        instructions: "请选择最符合类比关系的词语完成题目。",
        section: .language,
        type: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "独白之于演员，相当于布道之于___", options: ["传教士", "信徒", "唱诗班", "教堂"], correctAnswer: "传教士", explanation: "独白是演员的职业说话行为，布道是传教士的职业说话行为。"),
            ExerciseItem(prompt: "书页之于书籍，相当于琴键之于___", options: ["钢琴", "音乐", "声音", "纸张"], correctAnswer: "钢琴", explanation: "书页是书籍的组成部分，琴键是钢琴的组成部分。"),
            ExerciseItem(prompt: "羽毛之于鸟类，相当于鱼鳞之于___", options: ["鱼类", "青蛙", "毛发", "水流"], correctAnswer: "鱼类", explanation: "鸟类体表覆盖羽毛，鱼类体表覆盖鱼鳞。"),
            ExerciseItem(prompt: "心脏之于跳动，相当于肺脏之于___", options: ["呼吸", "血液", "氧气", "血管"], correctAnswer: "呼吸", explanation: "心脏的功能是跳动，肺脏的功能是呼吸。"),
            ExerciseItem(prompt: "车轮之于汽车，相当于舵之于___", options: ["轮船", "道路", "风力", "车轮"], correctAnswer: "轮船", explanation: "车轮控制汽车的行驶方向，舵控制轮船的行驶方向。"),
            ExerciseItem(prompt: "黄金之于首饰，相当于木材之于___", options: ["家具", "森林", "树木", "煤炭"], correctAnswer: "家具", explanation: "黄金是制作首饰的原材料，木材是制作家具的原材料。"),
            ExerciseItem(prompt: "医生之于听诊器，相当于天文学家之于___", options: ["望远镜", "书籍", "计算机", "地图"], correctAnswer: "望远镜", explanation: "听诊器是医生的代表性观测工具，望远镜是天文学家的代表性观测工具。"),
            ExerciseItem(prompt: "夜晚之于月亮，相当于白天之于___", options: ["太阳", "星星", "白云", "微风"], correctAnswer: "太阳", explanation: "夜晚最显眼的天体是月亮，白天最显眼的天体是太阳。"),
            ExerciseItem(prompt: "蜜蜂之于蜂巢，相当于蜘蛛之于___", options: ["蛛网", "洞穴", "池塘", "树木"], correctAnswer: "蛛网", explanation: "蜜蜂建造蜂巢，蜘蛛编织蛛网。"),
            ExerciseItem(prompt: "眼睛之于视觉，相当于耳朵之于___", options: ["听觉", "声音", "音乐", "回音"], correctAnswer: "听觉", explanation: "眼睛产生视觉，耳朵产生听觉。"),
            ExerciseItem(prompt: "铁之于铁匠，相当于泥土之于___", options: ["陶工", "金匠", "裁缝", "农民"], correctAnswer: "陶工", explanation: "铁匠加工铁器，陶工加工泥土制作陶器。"),
            ExerciseItem(prompt: "树叶之于树木，相当于花瓣之于___", options: ["花朵", "刺", "果实", "树根"], correctAnswer: "花朵", explanation: "树叶是树木的一部分，花瓣是花朵的一部分。"),
            ExerciseItem(prompt: "白色之于黑色，相当于上方之于___", options: ["下方", "右侧", "左侧", "内部"], correctAnswer: "下方", explanation: "白色和黑色是反义词，上方和下方也是反义词。"),
            ExerciseItem(prompt: "温度计之于温度，相当于气压计之于___", options: ["气压", "时间", "距离", "高度"], correctAnswer: "气压", explanation: "温度计测量温度，气压计测量气压。"),
            ExerciseItem(prompt: "荷花之于淤泥，相当于玫瑰之于___", options: ["荆棘", "芬芳", "红色", "花瓣"], correctAnswer: "荆棘", explanation: "荷花盛开于淤泥之中，玫瑰盛开于荆棘之中。")
        ]
    )

    // MARK: - Exercise 3: 高级词汇联想
    private static let exercise3 = Exercise(
        title: "高级词汇联想",
        instructions: "请选择与所给词语联想最紧密的选项。",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "利他主义", options: ["无私", "贪婪", "愤怒", "嫉妒"], correctAnswer: "无私", explanation: "利他主义（altruism）的核心特征是无私地奉献和帮助他人。"),
            ExerciseItem(prompt: "中秋节", options: ["月饼", "粽子", "饺子", "汤圆"], correctAnswer: "月饼", explanation: "中秋节的传统习俗是吃月饼和赏月。"),
            ExerciseItem(prompt: "故宫", options: ["北京", "上海", "广州", "南京"], correctAnswer: "北京", explanation: "故宫（紫禁城）位于北京市中心。"),
            ExerciseItem(prompt: "大熊猫", options: ["竹子", "松树", "桉树", "杨树"], correctAnswer: "竹子", explanation: "大熊猫的主要食物来源是竹子。"),
            ExerciseItem(prompt: "针灸", options: ["中医", "西医", "手术", "打针"], correctAnswer: "中医", explanation: "针灸是中国传统医学（中医）的重要治疗手段。"),
            ExerciseItem(prompt: "宣纸", options: ["书法", "剪纸", "包装", "打印"], correctAnswer: "书法", explanation: "宣纸是中国传统书法和绘画的主要用纸。"),
            ExerciseItem(prompt: "京剧", options: ["脸谱", "面具", "头盔", "面纱"], correctAnswer: "脸谱", explanation: "京剧的一大标志性特征是色彩鲜明的角色脸谱。"),
            ExerciseItem(prompt: "龙井", options: ["绿茶", "红茶", "乌龙茶", "白茶"], correctAnswer: "绿茶", explanation: "西湖龙井是中国最著名的绿茶品种。"),
            ExerciseItem(prompt: "秦始皇", options: ["兵马俑", "长城长", "金字塔", "铜车马"], correctAnswer: "兵马俑", explanation: "秦始皇陵兵马俑是为秦始皇陪葬的巨大雕塑群。"),
            ExerciseItem(prompt: "端午节", options: ["龙舟", "鞭炮", "红灯笼", "风筝"], correctAnswer: "龙舟", explanation: "端午节的主要体育竞赛活动是划龙舟。"),
            ExerciseItem(prompt: "文房四宝", options: ["笔墨纸砚", "琴棋书画", "花鸟鱼虫", "金银铜铁"], correctAnswer: "笔墨纸砚", explanation: "中国传统文房四宝指的是笔、墨、纸、砚。"),
            ExerciseItem(prompt: "围棋", options: ["黑白", "红绿", "金银", "蓝黄"], correctAnswer: "黑白", explanation: "围棋是由黑色和白色两种圆棋子组成的。"),
            ExerciseItem(prompt: "太极", options: ["阴阳", "五行", "八卦", "四象"], correctAnswer: "阴阳", explanation: "太极是中国古典哲学概念，其标志为阴阳双鱼图。"),
            ExerciseItem(prompt: "丝绸之路", options: ["驼队", "帆船", "火车", "飞机"], correctAnswer: "驼队", explanation: "陆上丝绸之路古代主要的运输工具是沙漠中的骆驼队。"),
            ExerciseItem(prompt: "旗袍", options: ["唐装", "西装", "汉服", "中山装"], correctAnswer: "汉服", explanation: "旗袍是中华传统女装的经典代表。")
        ]
    )

    // MARK: - Exercise 4: 高级句子完成
    private static let exercise4 = Exercise(
        title: "高级句子完成",
        instructions: "请选择最合适的词语将句子补充完整。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "这场大雨缓解了我国北方地区持续多月的___灾情。", options: ["旱灾", "水灾", "虫灾", "风灾"], correctAnswer: "旱灾", explanation: "下雨最能直接缓解土地缺水的旱灾。"),
            ExerciseItem(prompt: "教授的演讲逻辑严密、论证充分，赢得了全场听众的___赞誉。", options: ["广泛", "孤立", "怀疑", "冷淡"], correctAnswer: "广泛", explanation: "逻辑严密、出色的演说能赢得大家一致、广泛的肯定。"),
            ExerciseItem(prompt: "在面对重大变故时，他表现出了常人难以企及的冷静与___。", options: ["坚韧", "软弱", "惊慌", "冲动"], correctAnswer: "坚韧", explanation: "面对重大变故表现出的优良品质是“坚韧”（坚强有韧性）。"),
            ExerciseItem(prompt: "这幅国画墨色富有层次，留白巧妙，意境深远，堪称___之作。", options: ["传世", "拙劣", "普通", "仿制"], correctAnswer: "传世", explanation: "意境深远的优秀艺术品被称为“传世”（流传后世）之作。"),
            ExerciseItem(prompt: "考古学家通过对出土文物的研究，逐渐___了这段消失的历史。", options: ["还原", "杜撰", "抹杀", "遗忘"], correctAnswer: "还原", explanation: "研究文物是为了“还原”（恢复）真实的历史面貌。"),
            ExerciseItem(prompt: "新型材料的研发将有助于___传统制造工业的生产成本。", options: ["降低", "提高", "维持", "忽略"], correctAnswer: "降低", explanation: "科技研发和新材料的应用通常能优化并“降低”成本。"),
            ExerciseItem(prompt: "由于管理层决策失误，该公司最终陷入了不可逆转的经济___。", options: ["危机", "繁荣", "增长", "稳定"], correctAnswer: "危机", explanation: "决策失误导致的结果是陷入经济“危机”。"),
            ExerciseItem(prompt: "鲁迅先生的杂文具有极其深刻的批判性，字里行间充满了___的气势。", options: ["锐利", "温和", "妥协", "庸俗"], correctAnswer: "锐利", explanation: "批判性的文字用“锐利”（锋利、深刻）来形容最为恰当。"),
            ExerciseItem(prompt: "为了改善城市交通状况，政府决定修筑多条环城快速___。", options: ["通道", "壁垒", "绿带", "遗迹"], correctAnswer: "通道", explanation: "缓解城市交通应该修筑环城快速“通道”（或公路）。"),
            ExerciseItem(prompt: "他的理论研究成果在国际学术界引起了极为___的反响。", options: ["热烈", "平静", "嘲笑", "短暂"], correctAnswer: "热烈", explanation: "优秀的理论成果能引发学者“热烈”（积极、高关注度）的反响。"),
            ExerciseItem(prompt: "两家公司本着互利共赢的原则，签署了一项战略___协议。", options: ["合作", "竞争", "兼并", "诉讼"], correctAnswer: "合作", explanation: "本着“互利共赢”开展的是“合作”。"),
            ExerciseItem(prompt: "这部纪录片以极大的视角，真实地___了野生动物的生存现状。", options: ["记录", "虚构", "干预", "美化"], correctAnswer: "记录", explanation: "纪录片的核心功能是客观“记录”真实的生活现状。"),
            ExerciseItem(prompt: "经过连夜抢修，受台风破坏的通信基站终于恢复了___工作。", options: ["正常", "延迟", "间歇", "中断"], correctAnswer: "正常", explanation: "抢修基站是为了让通信恢复“正常”。"),
            ExerciseItem(prompt: "长城是一座极其宏伟的古代防御性建筑，是中华民族的___。", options: ["象征", "借口", "笑柄", "包袱"], correctAnswer: "象征", explanation: "长城是中华民族和中华文明的伟大“象征”。"),
            ExerciseItem(prompt: "他在科研工作中始终保持着严谨求实的态度，绝不允许有半点___。", options: ["马虎", "认真", "执着", "细致"], correctAnswer: "马虎", explanation: "“严谨求实”的反义词是“马虎”（不认真、粗心）。")
        ]
    )

    // MARK: - Exercise 5: 日常活动排序
    private static let exercise5 = Exercise(
        title: "日常活动排序",
        instructions: "请将下列日常活动步骤按符合逻辑的顺序进行排列。",
        section: .language,
        type: .sequencing,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "泡茶", options: ["将沸水冲入茶壶中", "将茶叶放入茶壶中", "用沸水清洗茶具（温壶）", "静置几分钟后倒入茶杯享用"], correctAnswer: "用沸水清洗茶具（温壶） | 将茶叶放入茶壶中 | 将沸水冲入茶壶中 | 静置几分钟后倒入茶杯享用", explanation: "泡茶的一般顺序是：先温壶，放茶叶，冲入热水，最后静置滤出茶水享用。"),
            ExerciseItem(prompt: "包饺子", options: ["擀饺子皮", "拌好饺子馅", "包入馅料并捏紧边缘", "放入沸水中煮熟"], correctAnswer: "拌好饺子馅 | 擀饺子皮 | 包入馅料并捏紧边缘 | 放入沸水中煮熟", explanation: "包饺子的传统顺序是：调馅，擀皮，包捏饺子，最后下锅煮熟。"),
            ExerciseItem(prompt: "浇花", options: ["将水壶装满水", "检查花盆泥土是否干燥", "将水缓缓倒在花草根部", "把水壶放回原处"], correctAnswer: "检查花盆泥土是否干燥 | 将水壶装满水 | 将水缓缓倒在花草根部 | 把水壶放回原处", explanation: "浇花前先确认泥土干燥度，然后装水、浇灌根部，最后收回水壶。"),
            ExerciseItem(prompt: "洗手", options: ["用肥皂或洗手液揉搓双手", "用水打湿双手", "用清水冲洗干净肥皂泡沫", "用干净毛巾擦干"], correctAnswer: "用水打湿双手 | 用肥皂或洗手液揉搓双手 | 用清水冲洗干净肥皂泡沫 | 用干净毛巾擦干", explanation: "标准洗手步骤：湿手，用洗手液揉搓，清水冲洗，擦干双手。"),
            ExerciseItem(prompt: "煮面条", options: ["锅中加入清水并烧开", "下入面条并适当搅拌", "煮熟后捞出装碗", "加入调味料和配菜"], correctAnswer: "锅中加入清水并烧开 | 下入面条并适当搅拌 | 煮熟后捞出装碗 | 加入调味料和配菜", explanation: "煮面条：烧开水，下面条搅拌，煮熟捞出，最后放调料吃。"),
            ExerciseItem(prompt: "去超市购物", options: ["挑选商品放进购物车", "列好购物清单", "去收银台排队付款", "装袋将商品带回家"], correctAnswer: "列好购物清单 | 挑选商品放进购物车 | 去收银台排队付款 | 装袋将商品带回家", explanation: "购物：先列清单，再挑选商品，收银台买单，最后打包带走。"),
            ExerciseItem(prompt: "网上交电费", options: ["登录交费应用或网站", "输入用电户号", "查询欠费或账单金额", "选择支付方式完成付款"], correctAnswer: "登录交费应用或网站 | 输入用电户号 | 查询欠费或账单金额 | 选择支付方式完成付款", explanation: "交电费：登入系统，输入户号，查账单，选择渠道付钱。"),
            ExerciseItem(prompt: "打扫房间", options: ["整理杂物并归类放好", "用扫帚或吸尘器清扫地面", "用湿抹布擦拭桌椅家具", "用拖把拖干净地板"], correctAnswer: "整理杂物并归类放好 | 用湿抹布擦拭桌椅家具 | 用扫帚或吸尘器清扫地面 | 用拖把拖干净地板", explanation: "打扫卫生应“从上到下”：先整理桌上杂物，擦桌子，再清扫地面，最后拖地。"),
            ExerciseItem(prompt: "寄快递", options: ["打包好要寄送的物品", "填写收件人和寄件人信息", "快递员称重并计费", "在线付款并获取快递单号"], correctAnswer: "打包好要寄送的物品 | 填写收件人和寄件人信息 | 快递员称重并计费 | 在线付款并获取快递单号", explanation: "寄件：先打包，填好信息，称重计费，最后扫码付钱拿到单号。"),
            ExerciseItem(prompt: "做西红柿炒鸡蛋", options: ["把西红柿洗净切块，鸡蛋打散", "锅中放油烧热，将鸡蛋炒熟捞出", "下入西红柿翻炒至出沙", "倒入炒好的鸡蛋混合并加盐调味"], correctAnswer: "把西红柿洗净切块，鸡蛋打散 | 锅中放油烧热，将鸡蛋炒熟捞出 | 下入西红柿翻炒至出沙 | 倒入炒好的鸡蛋混合并加盐调味", explanation: "做菜步骤：先切西红柿打蛋，炒熟鸡蛋备用，再炒西红柿，最后把蛋倒回去放盐炒匀。"),
            ExerciseItem(prompt: "使用ATM取款", options: ["插入银行卡并输入密码", "选择取款业务并输入金额", "取出现金并确认数额", "退卡并妥善保管卡片"], correctAnswer: "插入银行卡并输入密码 | 选择取款业务并输入金额 | 取出现金并确认数额 | 退卡并妥善保管卡片", explanation: "ATM取款：插卡输密码，输入金额，拿钱，最后退卡退走。"),
            ExerciseItem(prompt: "洗衣服", options: ["把衣物放入洗衣机中", "倒入适量洗衣液", "设定好洗涤程序并启动", "晾干衣物并折叠收纳"], correctAnswer: "把衣物放入洗衣机中 | 倒入适量洗衣液 | 设定好洗涤程序并启动 | 晾干衣物并折叠收纳", explanation: "洗衣：放衣服，加液，开机洗涤，洗完后晒干收纳。"),
            ExerciseItem(prompt: "看医生", options: ["在医院挂号处登记挂号", "向医生陈述病情并接受检查", "去药房凭处方取药", "按医嘱回家服药"], correctAnswer: "在医院挂号处登记挂号 | 向医生陈述病情并接受检查 | 去药房凭处方取药 | 按医嘱回家服药", explanation: "看病流程：挂号，问诊检查，取药，回家遵医嘱吃药。"),
            ExerciseItem(prompt: "吃药", options: ["仔细核对药品过期时间", "根据处方取出对应剂量", "用温开水送服药物", "将药盒放回儿童不易触及的安全位置"], correctAnswer: "仔细核对药品过期时间 | 根据处方取出对应剂量 | 用温开水送服药物 | 将药盒放回儿童不易触及的安全位置", explanation: "服药：核对有效期，取出剂量，温水吞服，收纳好药物。"),
            ExerciseItem(prompt: "给手机充电", options: ["找到充电线和电源插座", "将充电插头插入插座中", "将充电线接头插入手机充电口", "充满电后先拔掉手机端连接线"], correctAnswer: "找到充电线和电源插座 | 将充电插头插入插座中 | 将充电线接头插入手机充电口 | 充满电后先拔掉手机端连接线", explanation: "充电步骤：拿线插座，插入手机，充满后拔除数据线。")
        ]
    )

    // MARK: - Exercise 6: 高级因果推断
    private static let exercise6 = Exercise(
        title: "高级因果推断",
        instructions: "请选择逻辑上最合理的因或果完成题目。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "原因：夏季全国多地气温突破40摄氏度。", options: ["居民用电量急剧上升，空调负荷创历史新高", "城市街道上的行人流量急剧增加", "市场上厚冬装的销量大幅提升", "发电厂宣布用煤用电量大幅减少"], correctAnswer: "居民用电量急剧上升，空调负荷创历史新高", explanation: "持续高温使得居民长时间使用空调避暑，用电负荷随之飙升。"),
            ExerciseItem(prompt: "原因：司机在十字路口无视红灯继续超速行驶。", options: ["交警依法对他进行了记分并处以罚款", "他得到了交通安全示范奖", "路上的车辆自动让开了道路", "红绿灯信号立即转为了绿灯"], correctAnswer: "交警依法对他进行了记分并处以罚款", explanation: "闯红灯是违法交通规则的行为，交警会依法进行处罚。"),
            ExerciseItem(prompt: "原因：城市下水道系统大范围严重堵塞。", options: ["暴雨过后的街道出现了严重的积水内涝", "雨水立刻顺利排入了附近的河流", "城市街道变得干燥、干净", "桶装饮用水的价格大幅上涨"], correctAnswer: "暴雨过后的街道出现了严重的积水内涝", explanation: "管道堵塞导致雨水无法排走，暴雨来袭时就会引发积水和内涝。"),
            ExerciseItem(prompt: "结果：得知考试成绩后，小明的心情非常愉快。", options: ["原因：他平时学习刻苦，在期末考试中名列前茅", "原因：他因为生病缺席了这次期末考试", "原因：他交了白卷，什么题目都没写", "原因：学校宣布取消了这次考试"], correctAnswer: "原因：他平时学习刻苦，在期末考试中名列前茅", explanation: "考取优异的成绩是学生心情愉快的合理动因。"),
            ExerciseItem(prompt: "结果：今年果园大丰收，果农们的收入显著增加。", options: ["原因：今年春夏季节气候适宜，雨水充沛", "原因：今年该地区遭受了百年一遇的严重旱灾", "原因：果农们在果树上使用了大量假冒农药", "原因：野生猴群成群结队偷吃了大部分果实"], correctAnswer: "原因：今年春夏季节气候适宜，雨水充沛", explanation: "气候适宜、雨水充沛是农作物大丰收的关键外部条件。"),
            ExerciseItem(prompt: "原因：孩子们昨晚熬夜复习功课直到深夜。", options: ["他们今天早晨起床时感到有些困难和疲惫", "他们今天早晨醒得比平时更早、更有精神", "学校突然下发通知宣布考试推迟举行", "他们觉得身体充满了活力"], correctAnswer: "他们今天早晨起床时感到有些困难和疲惫", explanation: "熬夜会导致睡眠时间严重不足，隔天起床会伴有疲倦感。"),
            ExerciseItem(prompt: "原因：今年市场上西红柿的供应量极大增加。", options: ["市场上西红柿零售价格出现大幅下跌", "人们在市场上再也买不到西红柿了", "西红柿的单价创历史最高纪录", "土豆的售价随之大幅上涨"], correctAnswer: "市场上西红柿零售价格出现大幅下跌", explanation: "根据供求规律，商品的供应量极大增加而需求稳定时，价格会下跌。"),
            ExerciseItem(prompt: "结果：整个小区瞬间变得漆黑一片，所有电梯停运。", options: ["原因：小区供电主变压器发生故障烧毁", "原因：当时是中午时分，阳光格外刺眼", "原因：小区内每家每户都安装了节能灯泡", "原因：物业管理处宣布免收本月的物业费"], correctAnswer: "原因：小区供电主变压器发生故障烧毁", explanation: "变压器故障断电会导致小区整体大停电，照明与公用电梯停运。"),
            ExerciseItem(prompt: "原因：老张开始坚持每天晨跑和做太极拳锻炼。", options: ["他的身体素质和精神面貌得到了显著改善", "他的慢性病体质变得越来越虚弱", "他的体重短时间内暴增了二十公斤", "他彻底丧失了夜间的正常睡眠能力"], correctAnswer: "他的身体素质和精神面貌得到了显著改善", explanation: "规律的晨练与打太极对身体和心理健康有显著的积极促进作用。"),
            ExerciseItem(prompt: "原因：政府正式实施了最严格的“限塑令”。", options: ["市民逐步养成了自备布袋和环保袋的习惯", "城市街道上的塑料袋垃圾变得越来越多了", "各大工厂制造塑料袋的产量翻了一番", "商家开始无限制地免费向顾客提供塑料袋"], correctAnswer: "市民逐步养成了自备布袋和环保袋的习惯", explanation: "限塑令通过行政手段限制塑料袋使用，促使市民转向使用可复用的环保布袋。"),
            ExerciseItem(prompt: "结果：鲜牛奶在桌上放置一天后变酸变质了。", options: ["原因：牛奶没有放进冰箱冷藏，而是直接暴漏在室温下", "原因：牛奶被放入了低热干燥的冰箱保鲜层中", "原因：老张在喝牛奶之前加入了一小勺白糖", "原因：牛奶是今天清晨刚刚从牧场新鲜运来的"], correctAnswer: "原因：牛奶没有放进冰箱冷藏，而是直接暴漏在室温下", explanation: "温热环境易于细菌繁殖，鲜牛奶常温暴漏很容易变质发酸。"),
            ExerciseItem(prompt: "原因：除夕夜市民燃放了大量烟花爆竹。", options: ["大年初一早晨城市的空气质量指数显著变差", "城市的上空碧空如洗，能见度极高", "北方地区的气温骤然回升到了零上二十度", "鸟类在公园树林中歌唱得更欢快了"], correctAnswer: "大年初一早晨城市的空气质量指数显著变差", explanation: "烟花爆竹燃放释放出大量二氧化硫和颗粒物，会导致空气质量骤降。"),
            ExerciseItem(prompt: "结果：手机的电量在毫无预兆的情况下彻底耗尽关机。", options: ["原因：用户用手机连续播放视频大半天而未接通电源", "原因：用户将手机整晚连接在原装充电器上充电", "原因：这部手机今天一整天都被锁在抽屉里未使用", "原因：用户拔掉了充电线，并在后台关闭了所有运行软件"], correctAnswer: "原因：用户用手机连续播放视频大半天而未接通电源", explanation: "长时间高负荷播放视频而不充电，电量很快就会被耗尽。"),
            ExerciseItem(prompt: "原因：该考生在考场中试图夹带小抄进行作弊。", options: ["监考老师当场发现并取消了他的考试资格", "他被直接任命为班级代表和学生会主席", "他由于这种行为拿到了全额奖学金", "考场里的其他同学都对他竖起了大拇指"], correctAnswer: "监考老师当场发现并取消了他的考试资格", explanation: "作弊违反考场纪律，一旦被发现会被严肃处理，通常会取消考试资格。"),
            ExerciseItem(prompt: "结果：两辆汽车迎面相撞，车头严重受损。", options: ["原因：清晨大雾弥漫，路面能见度降到了极低点", "原因：两辆汽车当时都熄火停放在安全的车库中", "原因：当时气温非常暖和，晴空万里无云", "原因：两位驾驶员都严格遵守了限速规定"], correctAnswer: "原因：清晨大雾弥漫，路面能见度降到了极低点", explanation: "大雾天气视野受限，极易诱发对向车辆相撞事故。")
        ]
    )

    // MARK: - Exercise 7: 高级逻辑谬误
    private static let exercise7 = Exercise(
        title: "高级逻辑谬误",
        instructions: "请选择指出了描述中逻辑上不可能或荒谬之处的选项。",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "王师傅在没有生火的炉子上，将一壶冰水放在冰冷的水壶里煮沸了。", options: ["没有热源的情况下，任何液体都无法被加热煮沸", "水壶里不应该加入茶叶", "冰水只能在太阳底下晒干", "煮开水必须使用塑料瓶"], correctAnswer: "没有热源的情况下，任何液体都无法被加热煮沸", explanation: "煮沸需要大量热量，没有火或电源加热是绝对无法烧开水的。"),
            ExerciseItem(prompt: "落日之后的黑夜里，没有手电筒，李女士在花园里采摘了新鲜的红色玫瑰。", options: ["在完全没有光线的情况下是无法辨别颜色的", "黑夜里的玫瑰花会自动变成白色", "采摘玫瑰花必须使用专门的机械手臂", "夜间采摘的花朵没有香气"], correctAnswer: "在完全没有光线的情况下是无法辨别颜色的", explanation: "人眼辨色必须有光线。没有光线的暗室或漆黑的深夜里，人眼无法分辨颜色。"),
            ExerciseItem(prompt: "陶工用干燥的沙子捏成了一个精美的茶壶，并把它放在冷水里晾干。", options: ["干沙子无法黏合，且水里是无法晾干物体的", "陶器只能由金匠来加工制造", "沙子遇水会变成黄金", "晾干陶器必须在微波炉中进行"], correctAnswer: "干沙子无法黏合，且水里是无法晾干物体的", explanation: "陶器依靠黏土的塑性，干沙子没有粘性无法成型；晾干需要水分蒸发，泡在水里无法脱水。"),
            ExerciseItem(prompt: "在室外温度高达40度的烈日下，他穿着厚重的羽绒服坐在冰块上防暑降温。", options: ["穿着保暖衣物并坐在冰上防暑是自相矛盾的", "高温下冰块是绝对不会融化的", "羽绒服只能在水下穿着", "防暑必须饮用大量的浓盐水"], correctAnswer: "穿着保暖衣物并坐在冰上防暑是自相矛盾的", explanation: "高温下穿保暖的羽绒服会锁住热量导致中暑，坐在冰上冷热交替对身体有害，防暑方法极荒谬。"),
            ExerciseItem(prompt: "农民把小麦种子播洒在水泥铺设的高速公路上，期盼秋天获得大丰收。", options: ["公路上没有泥土和水分，种子是绝对无法生根发芽的", "高速公路上只能种植苹果树", "播种小麦必须在冬天的雪地里进行", "水泥地能够为植物提供丰富的有机肥料"], correctAnswer: "公路上没有泥土和水分，种子是绝对无法生根发芽的", explanation: "水泥路面坚硬无土，植物无法扎根，也无法获取生长所需的水分养分。"),
            ExerciseItem(prompt: "鱼儿从河里跳到地面上，飞快地跑进树林里爬上树躲避猫的抓捕。", options: ["鱼类没有奔跑的肢体，且在空气中无法呼吸生存", "猫是绝对不敢进入树林的", "鱼类只能在天空中飞行", "鱼鳞会阻碍它们在树枝间跳跃"], correctAnswer: "鱼类没有奔跑的肢体，且在空气中无法呼吸生存", explanation: "鱼类通过鳃呼吸水中的溶解氧，在陆地上会窒息，且没有足部，无法奔跑和爬树。"),
            ExerciseItem(prompt: "小李关闭了手机电源，然后立刻给他母亲打通了电话聊了很久。", options: ["手机在断电关机状态下是无法拨打或接收电话的", "给母亲打电话只能使用固定座机", "关机状态下的手机会自动发送短信", "通话必须戴上蓝牙耳机"], correctAnswer: "手机在断电关机状态下是无法拨打或接收电话的", explanation: "手机必须开机，射频芯片和系统正常运转且有信号才能打电话。"),
            ExerciseItem(prompt: "王阿姨为了让洗好的湿衣服快点干，把它们放进了一桶冷水里泡着。", options: ["将衣服浸入水中只会让它更湿，而无法蒸发水分使其干燥", "湿衣服只能挂在衣柜里自然风干", "冷水会使湿衣服的纤维发生断裂", "衣服必须使用特制的脱水粉才能变干"], correctAnswer: "将衣服浸入水中只会让它更湿，而无法蒸发水分使其干燥", explanation: "干燥是脱水过程，浸泡在水里只会增加衣物的含水量。"),
            ExerciseItem(prompt: "司机为了让在高速上行驶的客车紧急加速，一脚把刹车踩到底。", options: ["踩下刹车会产生阻力使车辆减速或静止，而不是加速", "车辆加速只能通过旋转方向盘实现", "客车的刹车只安装在副驾驶位置", "踩刹车会使燃油箱内的汽油瞬间蒸发"], correctAnswer: "踩下刹车会产生阻力使车辆减速或静止，而不是加速", explanation: "刹车制动器的作用是减速或停车，要加速必须踩油门踏板。"),
            ExerciseItem(prompt: "一群海鸥在深深的海底用干草和树枝建造了保暖的巢穴来孵化幼鸟。", options: ["海底充满海水，海鸥无法在此呼吸和建造干燥的巢穴", "海鸥只在云朵中产卵孵化", "深海的水温是绝对恒定在一百度的", "海鸥的羽毛在水下会自燃"], correctAnswer: "海底充满海水，海鸥无法在此呼吸和建造干燥的巢穴", explanation: "海鸥是鸟类，无法在水下呼吸，树枝干草在水里也无法筑巢，海水会冲走一切。"),
            ExerciseItem(prompt: "他用手摸了摸锅里沸腾的开水，惊叫道：这水真是冰凉刺骨！", options: ["沸水的温度接近100度，是极度炎热的而非冰冷", "沸水只能通过肉眼观察，不能用手去摸", "沸水摸起来没有任何温度感觉", "水沸腾后会自动凝结成冰块"], correctAnswer: "沸水的温度接近100度，是极度炎热的而非冰冷", explanation: "水沸腾在标准大气压下是100摄氏度左右，温度极高，会引起严重烫伤，而不是“冰凉”。"),
            ExerciseItem(prompt: "为了锁上大门，他把房门钥匙从防盗门的猫眼里扔到了门外的楼道里。", options: ["锁门需要钥匙插入锁孔内转动，扔掉钥匙无法上锁", "防盗门猫眼是绝对无法通过钥匙的", "大门只能从内部用木栓顶住上锁", "防盗门只能使用密码或指纹进行上锁"], correctAnswer: "锁门需要钥匙插入锁孔内转动，扔掉钥匙无法上锁", explanation: "机械锁必须让钥匙与锁芯内部叶片或弹子配合并转动才能锁死，将钥匙扔出屋外无法完成上锁动作。"),
            ExerciseItem(prompt: "盲人小张举起望远镜眺望远方，描述道：远处的山坡上开满了红色的花。", options: ["盲人丧失了视觉，无法通过望远镜观察远处的景物", "望远镜只能供宇航员在太空使用", "远处的山坡上通常只会生长仙人掌", "望远镜在白天是没有任何放大效果的"], correctAnswer: "盲人丧失了视觉，无法通过望远镜观察远处的景物", explanation: "盲人没有视觉功能，望远镜只是光学放大仪器，无法为没有视觉的人提供视觉图像。"),
            ExerciseItem(prompt: "墙上的时钟秒针开始逆时针倒退旋转，从而使现实中的时间飞速向前推移。", options: ["时钟只是测量时间的工具，其倒转不能改变物理时间的流逝", "秒针只能顺时针走，逆时针转会导致时钟爆炸", "现实时间只有在宇航员上太空时才会加速流逝", "时钟秒针是由电磁波控制的，不能随意转动"], correctAnswer: "时钟只是测量时间的工具，其倒转不能改变物理时间的流逝", explanation: "时钟只是记录工具，物理时间的流逝是单向的，时钟机芯倒转无法改变时空维度。"),
            ExerciseItem(prompt: "李明在彻底湿透的纸张上用干圆珠笔写字，并在上面看到了清晰整洁的墨迹。", options: ["湿纸张极易破损且圆珠笔油墨遇到水分会散开模糊", "湿纸张只能用毛笔在水下进行书写", "圆珠笔只能在纯金纸张上写字", "湿纸张上面的水会瞬间蒸发干涸"], correctAnswer: "湿纸张极易破损且圆珠笔油墨遇到水分会散开模糊", explanation: "纸张湿透后纤维强度降到极低，圆珠笔头坚硬会划破纸张，且圆珠笔油是油性，在湿纸上无法附着，会化开。")
        ]
    )

    // MARK: - Exercise 8: 成语俗语填空
    private static let exercise8 = Exercise(
        title: "成语俗语填空",
        instructions: "请选择正确的字词将成语或俗语补充完整。",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "补全俗语：三个臭皮匠，顶个___。", options: ["诸葛亮", "关云长", "曹孟德", "周公瑾"], correctAnswer: "诸葛亮", explanation: "俗语为“三个臭皮匠，顶个诸葛亮”，比喻人多智慧广。"),
            ExerciseItem(prompt: "补全俗语：百闻不如一___。", options: ["见", "听", "言", "思"], correctAnswer: "见", explanation: "俗语为“百闻不如一见”，意思是指听得再多，也不如亲眼看到一次可靠。"),
            ExerciseItem(prompt: "补全成语：画蛇添___。", options: ["足", "尾", "爪", "眼"], correctAnswer: "足", explanation: "成语“画蛇添足”比喻做多余的事情，反而坏了事。"),
            ExerciseItem(prompt: "补全俗语：一寸光阴一寸金，寸金难买寸___。", options: ["光阴", "时间", "生命", "黄金"], correctAnswer: "光阴", explanation: "俗语“一寸光阴一寸金，寸金难买寸光阴”用来形容时间极其宝贵。"),
            ExerciseItem(prompt: "补全俗语：千里之行，始于___下。", options: ["足", "地", "膝", "步"], correctAnswer: "足", explanation: "古语“千里之行，始于足下”比喻事情的成功是从小事和第一步做起的。"),
            ExerciseItem(prompt: "补全成语：亡羊补___。", options: ["牢", "栅", "墙", "圈"], correctAnswer: "牢", explanation: "成语“亡羊补牢”比喻出了问题以后想办法补救，免得以后继续受损失。"),
            ExerciseItem(prompt: "补全俗语：读书破万卷，下笔如有___。", options: ["神", "风", "光", "气"], correctAnswer: "神", explanation: "古诗句“读书破万卷，下笔如有神”形容多读书，写文章时就能得心应手。"),
            ExerciseItem(prompt: "补全成语：守株待___。", options: ["兔", "鹿", "鸡", "羊"], correctAnswer: "兔", explanation: "成语“守株待兔”比喻死守狭隘经验，企图不经过努力而侥幸得到成果。"),
            ExerciseItem(prompt: "补全俗语：万事俱备，只欠___。", options: ["东风", "西风", "南风", "北风"], correctAnswer: "东风", explanation: "典故“万事俱备，只欠东风”比喻一切准备工作都做好了，只差最后一个重要条件。"),
            ExerciseItem(prompt: "补全成语：掩耳盗___。", options: ["铃", "钟", "钱", "宝"], correctAnswer: "铃", explanation: "成语“掩耳盗铃”比喻自己欺骗自己。"),
            ExerciseItem(prompt: "补全成语：杞人忧___。", options: ["天", "地", "国", "民"], correctAnswer: "天", explanation: "成语“杞人忧天”比喻不必要的或毫无根据的忧虑。"),
            ExerciseItem(prompt: "补全成语：杯弓蛇___。", options: ["影", "光", "形", "色"], correctAnswer: "影", explanation: "成语“杯弓蛇影”比喻因疑神疑鬼而引起恐惧。"),
            ExerciseItem(prompt: "补全成语：对牛弹___。", options: ["琴", "吉他", "琵琶", "筝"], correctAnswer: "琴", explanation: "成语“对牛弹琴”比喻对不懂道理的人讲道理，或者说话不看对象。"),
            ExerciseItem(prompt: "补全成语：塞翁失马，焉知非___。", options: ["福", "祸", "幸", "吉"], correctAnswer: "福", explanation: "成语“塞翁失马，焉知非福”比喻坏事在一定条件下可以变成好事。"),
            ExerciseItem(prompt: "补全成语：破釜沉___。", options: ["舟", "船", "锅", "桥"], correctAnswer: "舟", explanation: "成语“破釜沉舟”比喻下定决心，不顾一切地战斗到底。")
        ]
    )

    // MARK: - Easy Homonyms
    private static let easyHomonyms = Exercise(
        title: "简单同音词",
        instructions: "选择正确的同音词填空，使句子完整。",
        section: .language,
        type: .homonym,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "[mù / mù] 森林里有很多高大的 ___ 头。 他的双 ___ 炯炯有神。", options: ["木...目", "目...木", "木...木", "目...目"], correctAnswer: "木...目", explanation: "“木”指树木或木头；“目”指眼睛。"),
            ExerciseItem(prompt: "[yī / yī] 今天是 ___ 月一日。 妈妈给我买了一件新 ___ 服。", options: ["一...衣", "衣...一", "一...一", "衣...衣"], correctAnswer: "一...衣", explanation: "“一”是数字；“衣”指衣服。"),
            ExerciseItem(prompt: "[fēng / fēn] 窗外刮起了大 ___。 花丛中飞舞着许多蜜 ___。", options: ["风...蜂", "蜂...风", "风...风", "蜂...蜂"], correctAnswer: "风...蜂", explanation: "“风”是空气流动的现象；“蜂”指蜜蜂等昆虫。"),
            ExerciseItem(prompt: "[shū / shū] 我每天都去图书馆看 ___。 这场比赛我们不小心 ___ 了。", options: ["书...输", "输...书", "书...书", "输...输"], correctAnswer: "书...输", explanation: "“书”指书本、书籍；“输”指失败或败北。"),
            ExerciseItem(prompt: "[shān / shān] 爷爷家住在高高的 ___ 上。 夏天穿短袖衬 ___ 比较凉快。", options: ["山...衫", "衫...山", "山...山", "衫...衫"], correctAnswer: "山...衫", explanation: "“山”指高耸的陆地（大山）；“衫”指衣服或短衫。"),
            ExerciseItem(prompt: "[yáng / yáng] 草原上有一群温顺的小 ___。 轮船在辽阔的太 ___ 上航行。", options: ["羊...洋", "洋...羊", "羊...羊", "洋...洋"], correctAnswer: "羊...洋", explanation: "“羊”指哺乳动物绵羊或山羊；“洋”指海洋。"),
            ExerciseItem(prompt: "[jī / jī] 农夫养了很多母 ___ 下蛋。 哥哥买了一台新手 ___。", options: ["鸡...机", "机...鸡", "鸡...鸡", "机...机"], correctAnswer: "鸡...机", explanation: "“鸡”是一种家禽；“机”指机器或手机。"),
            ExerciseItem(prompt: "[gōng / gōng] 爸爸每天去工厂打 ___ 上班。 古代猎人打猎时使用 ___ 箭。", options: ["工...弓", "弓...工", "工...工", "弓...弓"], correctAnswer: "工...弓", explanation: "“工”指工作、做工；“弓”指射箭用的弓。"),
            ExerciseItem(prompt: "[bǐ / bǐ] 我用钢 ___ 在纸上写字。 你们俩谁的高度 ___ 较矮？", options: ["笔...比", "比...笔", "笔...笔", "比...比"], correctAnswer: "笔...比", explanation: "“笔”指书写工具；“比”是比较的意思。"),
            ExerciseItem(prompt: "[lì / lì] 他的力 ___ 很大，能搬起大石头。 阳春三月，桃花盛开，景色非常美 ___。", options: ["力...丽", "丽...力", "力...力", "丽...丽"], correctAnswer: "力...丽", explanation: "“力”指力量；“丽”指美丽、好看。"),
            ExerciseItem(prompt: "[yú / yú] 河里有很多小 ___ 在游动。 我们要把 ___ 下的食物放进冰箱。", options: ["鱼...余", "余...鱼", "鱼...鱼", "余...余"], correctAnswer: "鱼...余", explanation: "“鱼”指水生脊椎动物；“余”指剩下或多余。"),
            ExerciseItem(prompt: "[shì / shì] 今天 ___ 星期天。 发生什么 ___ 情了？", options: ["是...事", "事...是", "是...是", "事...事"], correctAnswer: "是...事", explanation: "“是”表判断或存在；“事”指事情、事件。"),
            ExerciseItem(prompt: "[xīng / xīn] 夜空中闪烁着亮晶晶的 ___ 颗。 动物园里有一只大猩 ___。", options: ["星...猩", "猩...星", "星...星", "猩...猩"], correctAnswer: "星...猩", explanation: "“星”指星星、天体；“猩”指猩猩（灵长类动物）。"),
            ExerciseItem(prompt: "[mǎ / mǎ] 他骑着一匹黑 ___ 奔跑。 结账时需要扫描二维 ___。", options: ["马...码", "码...马", "马...马", "码...码"], correctAnswer: "马...码", explanation: "“马”是一种家畜；“码”指号码或条形码。"),
            ExerciseItem(prompt: "[huā / huā] 花园里盛开着红色的玫瑰 ___。 他今天买衣服 ___ 了很多钱。", options: ["花...花", "花...钱", "钱...花", "花...买"], correctAnswer: "花...花", explanation: "第一个“花”指植物的花朵；第二个“花”是动词，指花费、开销。")
        ]
    )
}
