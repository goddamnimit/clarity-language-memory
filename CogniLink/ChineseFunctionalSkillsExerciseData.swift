import Foundation

struct ChineseFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        safetyScenarios,
        televisionSchedule,
        monthlyCalendarPlanning,
        cookingSteps,
        dailyLifeSkills,
        spatialAwareness,
        temporalAwareness,
        groceryShopping,
        timeAndMath,
        functionalWriting,
        readingMenus,
        readingPrescriptions
    
    ]

    // MARK: - 安全情景
    private static let safetyScenarios = Exercise(
        id: UUID(),
        title: "安全情景",
        instructions: "阅读每个情景。描述你会怎么做。轻按“显示答案”查看最佳参考回答。",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "您接到一个陌生电话，对方说是美国国税局（IRS）的工作人员，要求您立即用礼品卡付款，否则会被逮捕。您应该怎么办？",
                options: [],
                correctAnswer: "立即挂断电话。美国国税局不会打电话要求用礼品卡付款。这是常见的电话诈骗，专门针对华人移民。可以拨打IRS官方电话1-800-829-1040核实。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您收到一封电子邮件，说您的银行账户有问题，需要点击链接输入账号和密码。您应该怎么办？",
                options: [],
                correctAnswer: "不要点击链接。直接打电话给银行官方客服，或亲自去银行网点核实。这很可能是钓鱼诈骗邮件。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在家突然感到胸口疼痛、呼吸困难、左臂发麻。您应该怎么办？",
                options: [],
                correctAnswer: "立即拨打911。这可能是心脏病发作的症状，需要立即就医。不要自己开车去医院，等待救护车。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "有人打电话说您的孙子在外地出了车祸，需要您立即汇款帮忙。您应该怎么办？",
                options: [],
                correctAnswer: "不要立即汇款。先直接联系孙子本人或其父母核实情况。这是专门针对老年人和华人的\u{201C}祖父母诈骗\u{201D}。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在超市停车场发现有人跌倒在地无法起来。您应该怎么办？",
                options: [],
                correctAnswer: "立即拨打911报警求助。不要随意移动伤者以免加重伤情。保持在旁边陪伴安慰，等待救援人员到来。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您收到短信说您赢得了一万美元的奖金，需要您先付$200的手续费才能领取。您应该怎么办？",
                options: [],
                correctAnswer: "不要付钱。这是典型的诈骗短信。真正的抽奖不需要提前付款。直接删除短信并忽略。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您家厨房突然起火，火势越来越大。您应该怎么办？",
                options: [],
                correctAnswer: "立即离开房屋，不要试图扑灭大火。拨打911。在门外等候消防人员。不要回去拿贵重物品。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "有人自称是社会安全局工作人员，说您的社会安全号码涉及犯罪，需要您提供个人信息配合调查。您应该怎么办？",
                options: [],
                correctAnswer: "立即挂断电话。社会安全局不会打电话威胁您。这是专门针对移民的电话诈骗。可拨打社会安全局官方电话1-800-772-1213核实。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您发现家中有煤气泄漏的气味。您应该怎么办？",
                options: [],
                correctAnswer: "不要开关任何电器或电灯。立即打开门窗通风，带所有人离开房屋。在室外拨打煤气公司紧急电话或911。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在网上看到一个招工广告，工资很高，但要求您先付$500的培训费。您应该怎么办？",
                options: [],
                correctAnswer: "不要付钱。正规雇主不会要求求职者先付培训费。这很可能是求职诈骗。可向美国联邦贸易委员会（FTC）举报。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您走在街上，有人靠近说可以帮您办理绿卡或公民身份，只需付一定费用。您应该怎么办？",
                options: [],
                correctAnswer: "不要理会。移民申请必须通过官方渠道或持牌移民律师办理。可向美国移民局官网uscis.gov查询正规流程。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您家中的烟雾报警器深夜响起。您应该怎么办？",
                options: [],
                correctAnswer: "立即叫醒家人，摸门把手如果不烫则打开门离开。不要乘坐电梯。在室外拨打911。事先约好家人集合地点。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "有人敲门自称是电力公司员工，要进入您家检查电表。您应该怎么办？",
                options: [],
                correctAnswer: "要求对方出示工作证件，并致电力公司官方号码核实是否有预约上门服务。不要让身份不明的人进入家中。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在开车时突然感到头晕眼花、视线模糊。您应该怎么办？",
                options: [],
                correctAnswer: "立即安全靠边停车，打开双闪警示灯。如果症状持续，拨打911。不要继续开车，这可能是中风或低血糖的症状。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您收到一条微信消息，朋友说他在国外遇到紧急情况，需要您帮忙转账。您应该怎么办？",
                options: [],
                correctAnswer: "不要立即转账。通过电话直接联系朋友本人确认真实情况。朋友的账号可能被盗，这是常见的社交媒体诈骗。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在家中滑倒，感觉脚踝疼痛无法站立。您应该怎么办？",
                options: [],
                correctAnswer: "不要强行站立以免加重伤情。拨打911或请家人帮忙。用冰袋敷在受伤部位减轻肿胀，等待医疗帮助。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您收到一封信，说您有一笔遗产需要领取，但需要提供您的银行账户信息。您应该怎么办？",
                options: [],
                correctAnswer: "不要提供任何银行信息。这是常见的遗产诈骗信件。真正的遗产事务需要通过律师和法院处理，不会要求提供银行账号。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在服药后感到头晕、恶心，症状越来越严重。您应该怎么办？",
                options: [],
                correctAnswer: "立即拨打911或让家人送您去急诊室。带上药瓶告诉医生您服用了什么药物及剂量。可拨打毒物控制中心1-800-222-1222。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "有人打电话说您的医疗保险即将到期，需要提供社会安全号码和银行信息来续保。您应该怎么办？",
                options: [],
                correctAnswer: "挂断电话，直接致电保险公司官方客服号码查询保险状态。任何要求在电话中提供社会安全号码和银行信息的都要高度警惕。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您发现家中有蜘蛛网和水渍，怀疑家中有漏水。您应该怎么办？",
                options: [],
                correctAnswer: "联系房东或物业管理公司报告问题。如果是自有房屋则联系持牌水管工检查维修。长期漏水可能导致霉菌生长影响健康。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在公共场所感到有人跟踪您。您应该怎么办？",
                options: [],
                correctAnswer: "不要回家，以免暴露住址。进入附近人多的商店或公共场所。拨打911报警。保持镇定，避免与跟踪者正面冲突。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的孙子在玩耍时吞下了一些不明物品。您应该怎么办？",
                options: [],
                correctAnswer: "立即拨打毒物控制中心1-800-222-1222或911。不要让孩子呕吐除非医疗人员指示。带上孩子吞下的物品或包装去医院。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在网上购物后发现信用卡出现了不认识的消费记录。您应该怎么办？",
                options: [],
                correctAnswer: "立即致电信用卡公司报告可疑消费并申请冻结卡片。申请更换新卡号。检查其他账户是否也有异常。向联邦贸易委员会ftc.gov报告身份盗窃。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "天气预报说附近有山火，您所在区域收到疏散警告。您应该怎么办？",
                options: [],
                correctAnswer: "立即按疏散指示离开，不要等待观望。带上重要证件、药物、手机充电器和换洗衣物。关闭家中电源煤气。前往指定避难所或联系家人。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您独自在家时突然感到一侧身体无力，说话困难，脸部一侧下垂。您应该怎么办？",
                options: [],
                correctAnswer: "立即拨打911。这是中风的典型症状（FAST：脸部下垂、手臂无力、说话困难、立即拨打911）。中风需要在几小时内治疗，每分钟都很关键。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你一个人在家，突然停电了，家里一片漆黑。为了安全起见，你首先应该做什么？",
                options: [],
                correctAnswer: "保持冷静。打开手机的电筒或手电筒。避免使用蜡烛，因为蜡烛容易引发火灾。坐在安全的地方等待恢复供电。",
                explanation: "Power outage home safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在厨房做饭时，炒菜锅里的油突然起火并冒出火苗。你应该怎么做来灭火？",
                options: [],
                correctAnswer: "立即关闭燃气灶。千万不要往锅里浇水，这会导致火势剧烈爆燃。用一个金属大锅盖或烘焙铁盘完全盖住炒菜锅，隔绝空气以灭火。",
                explanation: "Kitchen oil fire safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你接到一个电话，对方自称是你的银行工作人员，并索要你的四位数提款密码（PIN）以防止账户被锁。你应该怎么办？",
                options: [],
                correctAnswer: "立即挂断电话。银行绝对不会在电话中向你索要密码。拨打你银行卡背面印刷的官方客户服务电话进行确认。",
                explanation: "Bank scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你在家中突然闻到浓烈的天然气（瓦斯）味或烧焦的气味。你的第一反应应该是什么？",
                options: [],
                correctAnswer: "立即带上所有家人和宠物离开屋子，到外面的安全地带。在屋内不要触碰任何电源开关，也不要点火。到室外后拨打911或天然气公司电话。",
                explanation: "Gas leak emergency protocol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在院子里除草或干活时，你不小心被毒蛇或有毒昆虫咬伤。你应该怎么办？",
                options: [],
                correctAnswer: "保持冷静，尽量减少活动以减缓毒液扩散。将受伤部位保持在低于心脏水平的位置。立即拨打911或请他人送你到最近的急诊室。",
                explanation: "Snake/insect bite safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您家里的烟雾报警器突然发出持续的、尖锐的“哔哔”声。您应该怎么做？",
                options: [],
                correctAnswer: "立即更换报警器的电池。如果看到烟雾或火光，请迅速撤离并拨打 911 电话。",
                explanation: "Safe procedure for smoke detector alarm or low battery signal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您收到一个自称是太平洋燃气电力公司（PG&E）的陌生电话，称如果您不在30分钟内付款，您的电力将被切断。您应该怎么做？",
                options: [],
                correctAnswer: "立即挂断电话。拨打电力公司官方账单电话核实您的账户状态。切勿在电话中通过礼品卡或预付卡付款。",
                explanation: "Standard procedure to avoid utility scams."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您正在开车，突然车辆的引擎盖开始冒出滚滚白烟。您应该怎么做？",
                options: [],
                correctAnswer: "立即将车安全停靠在路边，关闭引擎，所有人下车并撤离到安全距离之外，然后拨打道路救援电话。",
                explanation: "Emergency steps for overheating engine or engine fire."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的信箱里收到一封信，声称您赢得了加州乐透彩票（California Lottery）50万美元大奖，但需要您先汇款1000美元手续费来领奖。您应该怎么做？",
                options: [],
                correctAnswer: "直接把信扔进垃圾桶。正规彩票中心绝对不会要求中奖者先汇款才能领奖，这是诈骗。",
                explanation: "Identifying advance-fee scams."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "下午家里突然停电，您家中依赖电力的医疗设备（如制氧机）停止了工作。您应该怎么做？",
                options: [],
                correctAnswer: "启用备用氧气瓶或备用电池。如果情况危急，请立即拨打 911 或前往最近医院的急诊室。",
                explanation: "Response plan for medical equipment failure during power outage."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "早上散步时，一只没栓绳（leash）的陌生大狗一边狂吠一边朝您快速跑来。您应该怎么做？",
                options: [],
                correctAnswer: "保持冷静，站立不动。不要奔跑或尖叫，避免与狗直接眼神接触。慢慢向后退。",
                explanation: "Safety measures when approached by an off-leash aggressive dog."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的手机收到一条自称来自凯撒医疗（Kaiser Permanente）的短信，称您的账单有异常，要求点击下方链接进行处理。您应该怎么做？",
                options: [],
                correctAnswer: "不要点击任何链接。直接登录凯撒医疗的官方个人患者门户或拨打官方客服电话进行核实。",
                explanation: "Healthcare phishing prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "晚上睡觉前，您在厨房里闻到一股浓烈的煤气（天然气）味。您应该怎么做？",
                options: [],
                correctAnswer: "不要开关任何电器，也不要点火。迅速打开窗户，关闭煤气总阀，立即离开屋子到外面安全的地方拨打 911 或煤气公司电话。",
                explanation: "Gas leak protocol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的医生处方上写着这种药每天早上服用一次，但您在晚上不小心又吃了一次。您应该怎么做？",
                options: [],
                correctAnswer: "立即给您的医生、药剂师或中毒控制中心（1-800-222-1222）打电话，告知他们您误服的药物和剂量。",
                explanation: "Standard response to accidental double dose of prescription drug."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "湾区下午突然发生强烈地震，房屋开始剧烈摇晃，而您正在屋里。您应该怎么做？",
                options: [],
                correctAnswer: "趴下、掩护并抓住（Drop, Cover, and Hold On）。躲在坚固的桌子或书桌下，双手抓住桌腿，直到摇晃停止。",
                explanation: "Earthquake drill safety protocol."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在下楼梯时您不小心滑倒，头部撞到了墙上，伤口有轻微出血且您感到头晕。您应该怎么做？",
                options: [],
                correctAnswer: "不要忽视头部外伤。用干净的布按压伤口止血，并立即打电话寻求家人帮助或拨打 911。",
                explanation: "Immediate protocol for head trauma."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "夏天圣何塞气温高达100华氏度（100°F）以上，您家里的空调突然坏了，您感到满头大汗、身体虚弱。您应该怎么做？",
                options: [],
                correctAnswer: "多喝水保持水分。用冷水洗澡。如果可能，前往附近有空调的公共场所（如图书馆或避暑中心）。",
                explanation: "Mitigating heatstroke risks without air conditioning."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "有人打电话自称来自社会安全局（SSA），声称您的社会安全号（SSN）已被冻结，需要您提供SSN进行解冻。您应该怎么做？",
                options: [],
                correctAnswer: "立即挂断电话。政府机构绝不会主动打电话索要此类敏感个人信息。",
                explanation: "Social security scam response."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "暴风雨夜，路边的电线杆和电线倒塌，正好压在了您的车顶上。您应该怎么做？",
                options: [],
                correctAnswer: "留在车内，车身可以保护您免受电击。摇下车窗打电话求助，通知电力公司和 911。切勿擅自下车。",
                explanation: "Staying in vehicle during downed power lines scenario."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "吃东西时突然喉咙被食物卡住，无法呼吸也无法说话。您应该怎么做？",
                options: [],
                correctAnswer: "双手掐住脖子示意他人您被卡住，寻求他人为您实施腹部冲击法（Heimlich海姆立克急救法）。如果独自一人，可将腹部压在椅背上用力冲击。",
                explanation: "Choking emergency rescue steps."
            )
        
        ]
    )

    // MARK: - 电视节目表
    private static let televisionSchedule = Exercise(
        id: UUID(),
        title: "电视节目表",
        instructions: "根据电视节目表选择正确的答案。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n下午6:00 - 本地新闻\n晚上7:00 - 电视剧：大江大河\n晚上8:00 - 体育：中美男篮友谊赛\n电视剧《大江大河》在什么时间开始播出？",
                options: ["下午6:00", "晚上7:00", "晚上8:00", "晚上9:00"],
                correctAnswer: "晚上7:00",
                explanation: "The schedule lists the show at 7:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n下午6:00 - 本地新闻\n晚上7:00 - 电视剧：大江大河\n晚上8:00 - 体育：中美男篮友谊赛\n如果你想收看篮球比赛，你应该在什么时间打开电视？",
                options: ["下午6:00", "晚上7:00", "晚上8:00", "晚上8:30"],
                correctAnswer: "晚上8:00",
                explanation: "The basketball game begins at 8:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n下午5:00 - 美食天地\n下午5:30 - 中医养生\n下午6:00 - 晚间新闻\n在晚间新闻开始前，正在播出什么节目？",
                options: ["美食天地", "中医养生", "篮球比赛", "无节目"],
                correctAnswer: "中医养生",
                explanation: "TCM health show (中医养生) is scheduled at 5:30 PM, right before the 6:00 PM news."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n下午4:00 - 养生太极\n下午5:00 - 经典戏曲\n下午6:00 - 晚间新闻\n“经典戏曲”节目播放时间长达多少小时？",
                options: ["30分钟", "1小时", "1.5小时", "2小时"],
                correctAnswer: "1小时",
                explanation: "From 5:00 PM to 6:00 PM is exactly 1 hour."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n下午1:00 - 家常菜教学\n下午1:30 - 经典相声小品\n下午2:30 - 下午影院\n“经典相声小品”在什么时间结束？",
                options: ["下午1:00", "下午1:30", "下午2:30", "下午3:00"],
                correctAnswer: "下午2:30",
                explanation: "The program starting after comedy show is at 2:30 PM, indicating it ends then."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n晚上7:00 - 歌唱大赛（时长：2小时）\n晚上9:00 - 晚间新闻\n“歌唱大赛”在什么时间播放结束？",
                options: ["晚上8:00", "晚上8:30", "晚上9:00", "晚上10:00"],
                correctAnswer: "晚上9:00",
                explanation: "7:00 PM + 2 hours = 9:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n上午8:00 - 晨练八段锦\n上午11:00 - 纪录片：舌尖上的中国\n“晨练八段锦”的节目播放时间是多少小时？",
                options: ["1小时", "2小时", "3小时", "4小时"],
                correctAnswer: "3小时",
                explanation: "From 8:00 AM to 11:00 AM is 3 hours."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n下午5:30 - 园艺沙龙\n下午6:30 - 本地焦点新闻\n如果你需要在下午6:00出门，你能完整地看完“园艺沙龙”吗？",
                options: ["可以完整看完", "不能，会错过后半部分", "可以，该节目只有15分钟", "不能，节目在下午6:00才开始"],
                correctAnswer: "不能，会错过后半部分",
                explanation: "The program is 1 hour (5:30 to 6:30). Leaving at 6:00 PM means missing 30 minutes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n上午10:00 - 养生大讲堂\n上午10:30 - 美食烘焙\n上午11:00 - 戏曲频道\n根据节目表，上午播出的第二个节目是什么？",
                options: ["养生大讲堂", "美食烘焙", "戏曲频道", "本地新闻"],
                correctAnswer: "美食烘焙",
                explanation: "“美食烘焙” is the second program scheduled (10:30 AM)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "电视节目表：\n晚上8:00 - 综艺喜乐汇\n晚上10:00 - 今日财经\n如果现在是晚上9:30，电视上正在播放什么节目？",
                options: ["今日财经", "综艺喜乐汇", "戏曲频道", "无节目"],
                correctAnswer: "综艺喜乐汇",
                explanation: "The variety show starts at 8:00 PM and ends at 10:00 PM, so at 9:30 PM it is still playing."
            )
        ]
    )

    // MARK: - 月历规划
    private static let monthlyCalendarPlanning = Exercise(
        id: UUID(),
        title: "月历规划",
        instructions: "使用月历回答以下问题。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "根据日历，老张预约了六月的第二个星期二去医院复查。如果6月1日是星期一，那么他的预约日期是几号？",
                options: ["6月2日", "6月9日", "6月16日", "6月23日"],
                correctAnswer: "6月9日",
                explanation: "If June 1st is Monday, the first Tuesday is June 2, and the second is June 9."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你有一瓶能服用30天的药。如果你在5月1日开始服用第一粒，你应该在几号之前买好下一瓶以防断药？",
                options: ["5月15日", "5月30日", "5月31日", "6月1日"],
                correctAnswer: "5月30日",
                explanation: "Ordering by day 30 (May 30) ensures you do not run out before day 31."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你孙女莉莉的生日是10月18日。今天是10月10日。距离她的生日还有多少天？",
                options: ["6天", "7天", "8天", "9天"],
                correctAnswer: "8天",
                explanation: "18 minus 10 is 8 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "社区中心的太极拳班在每周四下午上课。如果今天是8月5日星期三，那么下一次上课是在什么时候？",
                options: ["8月6日星期四", "8月12日星期四", "8月4日星期四", "8月7日星期五"],
                correctAnswer: "8月6日星期四",
                explanation: "The day after Wednesday the 5th is Thursday the 6th."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你需要在每月的5号支付房屋租金。如果今天是9月28日，距离你支付租金还有多少天？",
                options: ["5天", "7天", "10天", "12天"],
                correctAnswer: "7天",
                explanation: "September has 30 days. Sept 29, 30 (2 days) + 5 days of October = 7 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你预约了11月24日看牙医。如果今天是11月20日星期五，那么你的预约是在星期几？",
                options: ["星期一", "星期二", "星期三", "星期四"],
                correctAnswer: "星期二",
                explanation: "Nov 20 is Friday. Sat 21, Sun 22, Mon 23, Tue 24."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你所住小区的垃圾回收车在每周一和周四清晨来收集垃圾。如果今天是星期二，距离下一次收集垃圾还有多少天？",
                options: ["1天", "2天", "3天", "4天"],
                correctAnswer: "2天",
                explanation: "Tuesday to Thursday is 2 days (Wednesday, Thursday)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你计划进行为期一周（7天）的旅行，旅行从7月12日星期六开始。你应该在哪一天返回？",
                options: ["7月19日星期六", "7月20日星期日", "7月18日星期五", "7月21日星期一"],
                correctAnswer: "7月19日星期六",
                explanation: "12 + 7 = 19."
            )
        ]
    )

    // MARK: - 烹饪步骤
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "烹饪步骤",
        instructions: "步骤显示的顺序不正确。请将它们按1至3的顺序重新排列。",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "炒蛋炒饭的步骤",
                options: ["准备隔夜米饭、鸡蛋和葱", "锅中加油烧热", "打散鸡蛋倒入锅中快速翻炒", "加入米饭大火翻炒均匀", "加入葱花、酱油和盐调味", "翻炒均匀后装盘享用"],
                correctAnswer: "准备隔夜米饭、鸡蛋和葱 | 锅中加油烧热 | 打散鸡蛋倒入锅中快速翻炒 | 加入米饭大火翻炒均匀 | 加入葱花、酱油和盐调味 | 翻炒均匀后装盘享用",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "包猪肉白菜饺子的步骤",
                options: ["准备猪肉馅、白菜、面粉和调料", "白菜切碎加盐腌出水分后挤干", "猪肉白菜混合加调料拌成馅料", "和面揉成面团静置三十分钟", "擀皮包入馅料捏紧成饺子形状", "沸水下饺子煮熟后捞出蘸醋享用"],
                correctAnswer: "准备猪肉馅、白菜、面粉和调料 | 白菜切碎加盐腌出水分后挤干 | 猪肉白菜混合加调料拌成馅料 | 和面揉成面团静置三十分钟 | 擀皮包入馅料捏紧成饺子形状 | 沸水下饺子煮熟后捞出蘸醋享用",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮皮蛋瘦肉粥的步骤",
                options: ["准备大米、猪瘦肉、皮蛋和姜片", "大米洗净加水浸泡三十分钟", "猪肉切丝加盐和淀粉腌制", "锅中加足量水烧开后下米", "小火慢煮三十分钟至米烂粥稠", "加入肉丝皮蛋姜片煮熟调味装碗"],
                correctAnswer: "准备大米、猪瘦肉、皮蛋和姜片 | 大米洗净加水浸泡三十分钟 | 猪肉切丝加盐和淀粉腌制 | 锅中加足量水烧开后下米 | 小火慢煮三十分钟至米烂粥稠 | 加入肉丝皮蛋姜片煮熟调味装碗",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做红烧肉的步骤",
                options: ["准备五花肉、酱油、糖、料酒和香料", "五花肉切块冷水下锅焯水去腥", "锅中炒糖色至焦糖色", "放入肉块翻炒上色", "加入调料和热水大火烧开", "转小火慢炖四十分钟至肉软收汁"],
                correctAnswer: "准备五花肉、酱油、糖、料酒和香料 | 五花肉切块冷水下锅焯水去腥 | 锅中炒糖色至焦糖色 | 放入肉块翻炒上色 | 加入调料和热水大火烧开 | 转小火慢炖四十分钟至肉软收汁",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "泡一壶中国绿茶的步骤",
                options: ["准备绿茶叶、茶壶和茶杯", "烧水至约八十度不要沸腾", "用热水温壶温杯后倒掉", "将适量茶叶放入茶壶中", "倒入热水第一泡静置三十秒后倒掉", "再次注水静置一分钟后倒入杯中饮用"],
                correctAnswer: "准备绿茶叶、茶壶和茶杯 | 烧水至约八十度不要沸腾 | 用热水温壶温杯后倒掉 | 将适量茶叶放入茶壶中 | 倒入热水第一泡静置三十秒后倒掉 | 再次注水静置一分钟后倒入杯中饮用",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做凉拌黄瓜的步骤",
                options: ["准备黄瓜、大蒜、醋、酱油、辣椒油和盐", "黄瓜洗净用刀拍碎后切段", "大蒜切末备用", "将黄瓜放入碗中加盐腌十分钟", "倒掉多余水分加入蒜末", "加入醋酱油辣椒油和麻油拌匀装盘"],
                correctAnswer: "准备黄瓜、大蒜、醋、酱油、辣椒油和盐 | 黄瓜洗净用刀拍碎后切段 | 大蒜切末备用 | 将黄瓜放入碗中加盐腌十分钟 | 倒掉多余水分加入蒜末 | 加入醋酱油辣椒油和麻油拌匀装盘",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做番茄炒鸡蛋的步骤",
                options: ["准备番茄、鸡蛋、葱、盐和糖", "鸡蛋打散加少许盐搅匀", "番茄切块葱切段备用", "锅中热油先炒鸡蛋至半熟盛出", "原锅加油爆香葱段后加番茄翻炒", "加入鸡蛋一起翻炒加盐糖调味装盘"],
                correctAnswer: "准备番茄、鸡蛋、葱、盐和糖 | 鸡蛋打散加少许盐搅匀 | 番茄切块葱切段备用 | 锅中热油先炒鸡蛋至半熟盛出 | 原锅加油爆香葱段后加番茄翻炒 | 加入鸡蛋一起翻炒加盐糖调味装盘",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮一锅简单的蔬菜汤的步骤",
                options: ["准备土豆、胡萝卜、洋葱和鸡汤块", "蔬菜洗净切成小块备用", "锅中加油炒香洋葱", "加入土豆和胡萝卜翻炒两分钟", "加入适量清水和鸡汤块烧开", "小火煮二十分钟至蔬菜熟透加盐调味"],
                correctAnswer: "准备土豆、胡萝卜、洋葱和鸡汤块 | 蔬菜洗净切成小块备用 | 锅中加油炒香洋葱 | 加入土豆和胡萝卜翻炒两分钟 | 加入适量清水和鸡汤块烧开 | 小火煮二十分钟至蔬菜熟透加盐调味",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做简单煎鸡胸肉的步骤",
                options: ["准备鸡胸肉、大蒜、迷迭香、盐和胡椒", "鸡胸肉洗净用纸巾擦干", "两面均匀撒上盐胡椒和香料腌十五分钟", "平底锅加少量油中火烧热", "放入鸡胸肉每面煎五到六分钟", "静置五分钟后切片装盘"],
                correctAnswer: "准备鸡胸肉、大蒜、迷迭香、盐和胡椒 | 鸡胸肉洗净用纸巾擦干 | 两面均匀撒上盐胡椒和香料腌十五分钟 | 平底锅加少量油中火烧热 | 放入鸡胸肉每面煎五到六分钟 | 静置五分钟后切片装盘",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做汤圆的步骤",
                options: ["准备糯米粉、芝麻馅和温水", "糯米粉加温水揉成软硬适中的面团", "将面团搓成长条分成小剂子", "取一个剂子压扁包入芝麻馅收口搓圆", "锅中烧开水后下汤圆", "汤圆浮起后再煮两分钟捞出装碗"],
                correctAnswer: "准备糯米粉、芝麻馅和温水 | 糯米粉加温水揉成软硬适中的面团 | 将面团搓成长条分成小剂子 | 取一个剂子压扁包入芝麻馅收口搓圆 | 锅中烧开水后下汤圆 | 汤圆浮起后再煮两分钟捞出装碗",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "泡一杯热茶",
                options: ["将水烧开", "在杯中放入一个茶包或茶叶", "将开水倒入杯中", "静置冲泡3-5分钟", "取出茶包或滤出茶叶后饮用"],
                correctAnswer: "将水烧开 | 在杯中放入一个茶包或茶叶 | 将开水倒入杯中 | 静置冲泡3-5分钟 | 取出茶包或滤出茶叶后饮用",
                explanation: "Standard hot tea brewing steps."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮速冻饺子",
                options: ["在锅中加入大半锅水并烧开", "将冻饺子逐个下入沸水中", "用勺子轻轻顺着锅底推搅防粘", "水开后加三次凉水以彻底煮熟肉馅", "捞出饺子沥干装盘"],
                correctAnswer: "在锅中加入大半锅水并烧开 | 将冻饺子逐个下入沸水中 | 用勺子轻轻顺着锅底推搅防粘 | 水开后加三次凉水以彻底煮熟肉馅 | 捞出饺子沥干装盘",
                explanation: "Boiling frozen dumplings."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮白米粥",
                options: ["将白米淘洗干净", "在锅中加入米和数倍的清水", "大火烧开后转小火慢熬", "熬煮过程中用勺子间歇搅拌防粘底", "待米粒开花、粥液粘稠时关火"],
                correctAnswer: "将白米淘洗干净 | 在锅中加入米和数倍的清水 | 大火烧开后转小火慢熬 | 熬煮过程中用勺子间歇搅拌防粘底 | 待米粒开花、粥液粘稠时关火",
                explanation: "Cooking plain rice congee."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煎荷包蛋",
                options: ["平底锅烧热后倒入少量食用油", "将鸡蛋磕开滤入锅中", "撒上少许食盐", "小火煎至蛋白凝固，翻面煎蛋黄", "煎至两面金黄后盛出"],
                correctAnswer: "平底锅烧热后倒入少量食用油 | 将鸡蛋磕开滤入锅中 | 撒上少许食盐 | 小火煎至蛋白凝固，翻面煎蛋黄 | 煎至两面金黄后盛出",
                explanation: "Frying an egg."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "凉拌黄瓜",
                options: ["将黄瓜洗净", "用刀背将黄瓜拍碎后切成小块", "加入少许食盐拌匀腌制5分钟并滤掉水分", "加入蒜泥、香醋、生抽和香油", "搅拌均匀即可食用"],
                correctAnswer: "将黄瓜洗净 | 用刀背将黄瓜拍碎后切成小块 | 加入少许食盐拌匀腌制5分钟并滤掉水分 | 加入蒜泥、香醋、生抽和香油 | 搅拌均匀即可食用",
                explanation: "Assembling a classic Chinese smashed cucumber salad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "冲燕麦片",
                options: ["取一个空碗并放入适量快熟燕麦片", "倒入热开水或热牛奶", "用勺子充分搅拌均匀", "加盖静置2分钟让其吸水变软", "加入少许蜂蜜或水果干即可食用"],
                correctAnswer: "取一个空碗并放入适量快熟燕麦片 | 倒入热开水或热牛奶 | 用勺子充分搅拌均匀 | 加盖静置2分钟让其吸水变软 | 加入少许蜂蜜或水果干即可食用",
                explanation: "Preparing instant oatmeal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "番茄炒鸡蛋",
                options: ["将鸡蛋打散，西红柿洗净切块", "热锅下油，倒入蛋液炒熟盛出备用", "锅中再放少许油，下西红柿块炒出沙汁", "加入炒好的鸡蛋，放入少许盐和糖翻炒", "撒上葱花出锅装盘"],
                correctAnswer: "将鸡蛋打散，西红柿洗净切块 | 热锅下油，倒入蛋液炒熟盛出备用 | 锅中再放少许油，下西红柿块炒出沙汁 | 加入炒好的鸡蛋，放入少许盐和糖翻炒 | 撒上葱花出锅装盘",
                explanation: "Cooking tomato scrambled eggs."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "蒸白薯（地瓜）",
                options: ["将白薯洗净并削皮", "将白薯切成厚度均匀的块状", "在蒸锅内放入适量清水并放上蒸架", "将白薯块摆在盘里放入锅中，大火蒸20分钟", "用筷子扎一下，如果能轻松扎透即可关火"],
                correctAnswer: "将白薯洗净并削皮 | 将白薯切成厚度均匀的块状 | 在蒸锅内放入适量清水并放上蒸架 | 将白薯块摆在盘里放入锅中，大火蒸20分钟 | 用筷子扎一下，如果能轻松扎透即可关火",
                explanation: "Steaming sweet potatoes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮即食方便面",
                options: ["在锅中注入两碗清水并烧开", "放入面饼和蔬菜调料包", "中火煮2-3分钟", "打入一个鸡蛋并加入酱包搅拌", "煮至面条变软、鸡蛋熟透即可出锅"],
                correctAnswer: "在锅中注入两碗清水并烧开 | 放入面饼和蔬菜调料包 | 中火煮2-3分钟 | 打入一个鸡蛋并加入酱包搅拌 | 煮至面条变软、鸡蛋熟透即可出锅",
                explanation: "Making instant ramen."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "切拌水果沙拉",
                options: ["将苹果、香蕉和橙子剥皮或洗净", "将所有水果切成一口大小的块状", "将水果块装入大碗中", "挤入少许沙拉酱或酸奶", "用勺子轻轻拌匀即可"],
                correctAnswer: "将苹果、香蕉和橙子剥皮或洗净 | 将所有水果切成一口大小的块状 | 将水果块装入大碗中 | 挤入少许沙拉酱或酸奶 | 用勺子轻轻拌匀即可",
                explanation: "Fruit salad preparation."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将小梅在加州制作传统热奶茶（Chai）的步骤按正确顺序排列：",
                options: ["用滤网将茶汤滤入杯中，趁热饮用。 | 将水烧开，加入磨碎的生姜和豆蔻。 | 加入牛奶，让奶茶再次沸腾一次。 | 放入红茶叶，用小火煮2-3分钟。"],
                correctAnswer: "将水烧开，加入磨碎的生姜 and 豆蔻。 | 放入红茶叶，用小火煮2-3分钟。 | 加入牛奶，让奶茶再次沸腾一次。 | 用滤网将茶汤滤入杯中，趁热饮用。",
                explanation: "Step by step spiced tea brewing logic."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将伟强煮巴马香米（Basmati Rice）的步骤按正确顺序排列：",
                options: ["将香米在冷水中浸泡20分钟。 | 用叉子轻轻搅拌米饭，让多余的蒸汽散发出来。 | 用清水轻轻淘洗香米2-3次。 | 锅中加水烧开，放入香米，盖上锅盖用小火焖煮12分钟。"],
                correctAnswer: "用清水轻轻淘洗香米2-3次。 | 将香米在冷水中浸泡20分钟。 | 锅中加水烧开，放入香米，盖上锅盖用小火焖煮12分钟。 | 用叉子轻轻搅拌米饭，让多余的蒸汽散发出来。",
                explanation: "Washing, soaking, cooking, and fluffing rice."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作印度黄豆羹（Dal Tadka）的步骤按正确顺序排列：",
                options: ["将煮好的黄豆中倒入做好的香辣油，并撒上香菜碎。 | 将黄豆放入压力锅中，加入水、姜黄粉和盐，压3声汽笛。 | 在煎锅中加热酥油（Ghee），炒香孜然、大蒜、洋葱和西红柿。 | 将黄豆仔细清洗干净。"],
                correctAnswer: "将黄豆仔细清洗干净。 | 将黄豆放入压力锅中，加入水、姜黄粉和盐，压3声汽笛。 | 在煎锅中加热酥油（Ghee），炒香孜然、大蒜、洋葱和西红柿。 | 将煮好的黄豆中倒入做好的香辣油，并撒上香菜碎。",
                explanation: "Dal prep, boiling, tadka seasoning, and combining."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作炒土豆花菜（Aloo Gobi）的步骤按正确顺序排列：",
                options: ["将土豆和花花菜清洗干净并切成均匀的小块。 | 锅中热油，放入孜然，然后将土豆和花菜连同调料一起翻炒。 | 盖上锅盖，用小火焖煮至蔬菜变软。 | 出锅前撒上印度葛拉姆马萨拉粉和新鲜香菜。"],
                correctAnswer: "将土豆和花花菜清洗干净并切成均匀的小块。 | 锅中热油，放入孜然，然后将土豆和花菜连同调料一起翻炒。 | 盖上锅盖，用小火焖煮至蔬菜变软。 | 出锅前撒上印度葛拉姆马萨拉粉和新鲜香菜。",
                explanation: "Sautéing, steaming, and finishing vegetables."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作手工烙饼（Roti/Chapati）的步骤按正确顺序排列：",
                options: ["加热平底锅，将擀好的面饼两面各煎至微熟。 | 在面粉中加水揉成面团，静置15分钟。 | 取一小块面团揉圆，用擀面杖擀成薄圆饼。 | 将煎过的面饼直接放在火上烤至膨胀，抹上酥油。"],
                correctAnswer: "在面粉中加水揉成面团，静置15分钟。 | 取一小块面团揉圆，用擀面杖擀成薄圆饼。 | 加热平底锅，将擀好的面饼两面各煎至微熟。 | 将煎过的面饼直接放在火上烤至膨胀，抹上酥油。",
                explanation: "Kneading, rolling, dry griddle frying, and puffing over fire."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作甜粗麦糊（Suji Halwa）的步骤按正确顺序排列：",
                options: ["向粗麦中缓缓倒入白糖和热水混合的糖水。 | 在锅中加热酥油，将粗麦炒至金黄色并散发香气。 | 持续搅拌麦糊，直到其变得浓稠并不再粘锅。 | 撒上切碎的坚果和豆蔻粉，装盘趁热食用。"],
                correctAnswer: "在锅中加热酥油，将粗麦炒至金黄色并散发香气。 | 向粗麦中缓缓倒入白糖和热水混合的糖水。 | 持续搅拌麦糊，直到其变得浓稠并不再粘锅。 | 撒上切碎的坚果和豆蔻粉，装盘趁热食用。",
                explanation: "Browning wheat grains, boiling with sweet liquid, thickening, and serving."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作印度大米牛奶布丁（Kheer）的步骤按正确顺序排列：",
                options: ["在牛奶中放入泡好的巴马香米，用小火慢熬。 | 将全脂牛奶倒入厚底大锅中烧开。 | 煮至米粒软烂、牛奶蒸发减少一半，然后加入白糖。 | 撒上豆蔻粉和切碎的开心果、杏仁，冷藏后食用。"],
                correctAnswer: "将全脂牛奶倒入厚底大锅中烧开。 | 在牛奶中放入泡好的巴马香米，用小火慢熬。 | 煮至米粒软烂、牛奶蒸发减少一半，然后加入白糖。 | 撒上豆蔻粉和切碎的开心果、杏仁，冷藏后食用。",
                explanation: "Milk heating, rice adding, cooking to reduce, sweetening, and garnishing."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作蔬菜酸奶（Raita）的步骤按正确顺序排列：",
                options: ["将原味酸奶在一只大碗中搅拌至柔滑状态。 | 加入黄瓜丝、少许盐和烤孜然粉。 | 充分搅拌均匀，放入冰箱冷藏。 | 饮用前在表面点缀几片新鲜薄荷叶。"],
                correctAnswer: "将原味酸奶在一只大碗中搅拌至柔滑状态。 | 加入黄瓜丝、少许盐和烤孜然粉。 | 充分搅拌均匀，放入冰箱冷藏。 | 饮用前在表面点缀几片新鲜薄荷叶。",
                explanation: "Plain yogurt prep, veggie infusion, cooling, and serving."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作柠檬苏打水（Shikanji）的步骤按正确顺序排列：",
                options: ["在杯中倒入冷水，挤入新鲜柠檬汁。 | 加入白糖、黑盐（Black Salt）和烤孜然粉。 | 搅拌均匀直到白糖完全溶解。 | 加入冰块，用薄荷叶装饰。"],
                correctAnswer: "在杯中倒入冷水，挤入新鲜柠檬汁。 | 加入白糖、黑盐（Black Salt）和烤孜然粉。 | 搅拌均匀直到白糖完全溶解。 | 加入冰块，用薄荷叶装饰。",
                explanation: "Drink prep logic: mix ingredients, stir, add ice."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作燕麦粥（Oats Porridge）的步骤按正确顺序排列：",
                options: ["在小锅中加热牛奶，然后倒入生燕麦片。 | 用小火煮5-7分钟，直到燕麦完全变软。 | 关火关炉子，调入蜂蜜或白糖。 | 撒上苹果丁和烤扁桃体碎，装碗食用。"],
                correctAnswer: "在小锅中加热牛奶，然后倒入生燕麦片。 | 用小火煮5-7分钟，直到燕麦完全变软。 | 关火关炉子，调入蜂蜜或白糖。 | 撒上苹果丁和烤扁桃体碎，装碗食用。",
                explanation: "Porridge base prep, boiling, sweetening, and topping."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作印度炒扁米（Poha）的步骤按正确顺序排列：",
                options: ["将扁米用水冲洗并沥干，放在一旁备用。 | 在炒锅中热油，爆香芥末籽、咖喱叶、花生米和洋葱。 | 倒入扁米、姜黄粉和盐，盖上锅盖焖2分钟。 | 挤入柠檬汁，撒上香菜叶，装盘即可。"],
                correctAnswer: "将扁米用水冲洗并沥干，放在一旁备用。 | 在炒锅中热油，爆香芥末籽、咖喱叶、花生米和洋葱。 | 倒入扁米、姜黄粉和盐，盖上锅盖焖2分钟。 | 挤入柠檬汁，撒上香菜叶，装盘即可。",
                explanation: "Traditional Poha recipe progression."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请将制作水煮蛋（Boiled Egg）的步骤按正确顺序排列：",
                options: ["将鸡蛋放入冷水锅中，水面需高出鸡蛋1英寸。 | 水烧开后关火，盖上锅盖让鸡蛋在热水中浸泡10分钟。 | 将鸡蛋捞出立即放入冰水中冷却2分钟。 | 剥去蛋壳，将鸡蛋对半切开。"],
                correctAnswer: "将鸡蛋放入冷水锅中，水面需高出鸡蛋1英寸。 | 水烧开后关火，盖上锅盖让鸡蛋在热水中浸泡10分钟。 | 将鸡蛋捞出立即放入冰水中冷却2分钟. | 剥去蛋壳，将鸡蛋对半切开。",
                explanation: "Boiling eggs safely using the boil-and-cover method."
            )
        
        ]
    )

    // MARK: - 日常生活技能
    private static let dailyLifeSkills = Exercise(
        id: UUID(),
        title: "日常生活技能",
        instructions: "针对每项任务，描述：你需要什么用品、关键步骤以及可能出现什么问题。轻按“显示答案”查看参考回答。",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "请描述您在加州如何乘坐公共汽车去超市。需要准备什么？怎么知道坐哪路车？怎么付车费？",
                options: [],
                correctAnswer: "查看谷歌地图或公交App找到路线和车次。准备零钱或交通卡。在站牌处等车、上车投币或刷卡付费，通常单程$1.50至$2.50。注意到站广播或显示屏，提前按铃准备下车。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在美国用微信给中国家人汇款，或者如何通过银行电汇。需要哪些信息？大约需要多长时间？",
                options: [],
                correctAnswer: "微信汇款需要绑定美国银行卡、输入对方微信账号和金额，注意汇率和手续费。银行电汇需要对方的银行名称、账号、路由号码（SWIFT码）。通常需要三到五个工作日到账，手续费约$15至$45。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在加州续签驾照。需要带哪些证件？去哪里办理？大概需要多长时间？",
                options: [],
                correctAnswer: "前往DMV办理，建议提前网上预约节省等待时间。携带现有驾照、身份证明文件、居住地址证明。需要通过视力测试，可能需要笔试。费用约$36至$38。建议驾照到期前六十天办理。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在加州申请低收入家庭医疗保险Medi-Cal。谁有资格申请？需要哪些文件？去哪里申请？",
                options: [],
                correctAnswer: "收入低于一定标准的加州居民可申请。需要准备身份证件、收入证明、居住证明。可登录coveredca.com网上申请，或前往当地社会服务机构协助办理。也可拨打1-800-300-1506咨询。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在美国看家庭医生。第一次去需要做什么准备？看诊时如何与医生沟通？看完病后需要做什么？",
                options: [],
                correctAnswer: "提前预约并确认保险是否在网络内。携带保险卡、身份证件和药物清单。如有语言困难可要求提供翻译服务（免费）。看诊时清楚描述症状、询问用药说明。之后按时取药、遵医嘱复诊。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在加州办理图书馆借书证。需要什么条件？可以借哪些东西？图书馆还提供哪些免费服务？",
                options: [],
                correctAnswer: "携带有效身份证件和居住地址证明前往当地公共图书馆免费办理。可借书籍、DVD、有声书等。许多图书馆还提供免费网络、电脑使用、英语课程、儿童活动和社区活动等服务。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在美国处理收到的英文账单。如何看懂账单内容？如何确认金额正确？有哪些付款方式？",
                options: [],
                correctAnswer: "仔细阅读账单日期、到期日、账单金额和明细。核实服务内容是否正确，如有疑问致电客服。付款方式包括网上银行转账、支票邮寄、电话付款或亲自到营业点付款。保留付款记录至少一年。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在加州注册成为选民并参加投票。谁有资格？如何注册？如何参加投票？",
                options: [],
                correctAnswer: "美国公民、年满十八岁、加州居民可注册投票。登录registertovote.ca.gov网上注册，或前往DMV、图书馆领取表格。收到选票后可邮寄或亲自投票。每次选举前都会收到选民指南，可了解候选人和议案信息。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在美国申请社会安全退休金福利。什么时候可以申请？需要哪些条件？如何申请？",
                options: [],
                correctAnswer: "最早六十二岁可申请，但全额退休年龄是六十七岁（1960年以后出生者）。需要有足够的工作积分（约四十积分）。可登录ssa.gov网上申请，或拨打1-800-772-1213，或前往当地社会安全局办公室申请。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何妥善保管重要证件。哪些证件最重要？应该如何存放？如果丢失应该怎么办？",
                options: [],
                correctAnswer: "重要证件包括护照、绿卡、社会安全卡、驾照、出生证明、保险卡。应存放在防火保险箱中，并扫描备份存在安全的电子设备或云端。如丢失护照联系中国领事馆，绿卡丢失申请I-90表格补办，社会安全卡丢失前往社会安全局补办。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在加州找到可靠的中文社区资源和服务。有哪些地方可以获得帮助？如何联系这些机构？",
                options: [],
                correctAnswer: "可联系当地华人服务中心、唐人街社区机构、图书馆、社区中心。许多机构提供免费或低价的语言协助、法律咨询、健康服务、移民帮助。可通过211服务热线（拨打211）查询当地社区资源，许多机构提供中文服务。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何准备应对加州的自然灾害，例如地震或山火。家中应该准备什么？发生紧急情况时应该怎么做？",
                options: [],
                correctAnswer: "准备紧急物资包括：三天的食物和饮水、急救药品、手电筒、电池、收音机、重要证件复印件、现金和急救药物。地震时蹲下抓紧掩护。山火疏散立即离开不要等待，走指定疏散路线前往避难所。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在美国照顾好自己的心理健康。有哪些免费或低价的心理健康资源？如何克服语言障碍寻求帮助？",
                options: [],
                correctAnswer: "可联系家庭医生转介心理咨询。许多社区提供免费中文心理健康服务。可拨打988心理健康危机热线（有中文服务）。加强与家人朋友的联系、参加社区活动和宗教团体也很重要。不要把心理问题视为耻辱，及时寻求帮助。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何在美国建立良好的信用记录。信用记录为什么重要？如何开始建立信用？应该避免哪些错误？",
                options: [],
                correctAnswer: "信用记录影响租房、贷款、某些工作申请。可从申请一张信用卡开始，每月按时全额还款。不要超过信用额度的30%。避免同时申请多张信用卡。定期在annualcreditreport.com免费查看信用报告，发现错误及时纠正。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请描述如何帮助年迈的父母或亲属适应美国生活。有哪些特别的挑战？有哪些资源可以帮助老年移民？",
                options: [],
                correctAnswer: "主要挑战包括语言障碍、文化差异、社交孤立和医疗问题。可寻找华人老年中心、提供中文服务的日托中心。帮助父母注册Medicare和Medi-Cal。联系当地老龄化服务机构（Area Agency on Aging）获取送餐、交通和居家护理等服务。鼓励参加社区太极拳班等活动扩大社交圈。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你如何为去华人超市（如大华超级市场）采购列一份购物清单？",
                options: [],
                correctAnswer: "准备工具：纸笔或手机。步骤：检查厨房。看看大米、面条、常用酱油、陈醋、调料或常喝的茶叶是否快用完了。在清单上记下来。列出需要买的新鲜蔬菜和肉类。",
                explanation: "Creating a localized grocery shopping list."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在传统节日（如中秋节），你如何准备家庭聚餐或简单的庆祝？",
                options: [],
                correctAnswer: "准备工具：茶水、月饼、水果。步骤：清理客厅和餐桌。摆放好月饼和洗干净的应季水果。泡一壶热茶。准备好聚餐所需的餐具。",
                explanation: "Localized traditional festival preparation."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你如何使用智能手机上的银行App（应用程序）查询你的银行账户余额？",
                options: [],
                correctAnswer: "准备工具：智能手机、银行App、登录密码。步骤：打开手机上的银行客户端。输入你的用户ID和密码（或使用指纹）。点击账户总览或“查询余额”。查看完金额后安全退出App。",
                explanation: "Accessing bank account balance on a mobile app."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在春节或生日时，你如何通过微信向亲友发送一条文字祝福？",
                options: [],
                correctAnswer: "准备工具：智能手机、微信App。步骤：打开微信。在联系人列表或聊天记录里找到该亲友。点击聊天框，输入祝福语（如“祝您春节快乐，身体健康”）。点击发送按钮。",
                explanation: "Sending localized festival greetings via WeChat."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你如何联系药房，要求重新补充（Refill）你快吃完的处方药？",
                options: [],
                correctAnswer: "准备工具：电话、药瓶。步骤：拨打药瓶标签上的药房电话。提供你的姓名、出生日期以及药瓶上的处方号（Rx Number）。确认你需要重新配药并询问何时可以取药。",
                explanation: "Requesting medication refills over the phone."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "明华找不到他的车钥匙了，但他必须在10分钟内出门去上班。他该怎么办？",
                options: [],
                correctAnswer: "保持冷静，系统地检查经常放钥匙的地方（如餐桌、玄关柜、包包或昨天的衣服口袋）。如果找不到，先用备用钥匙，下班后再找。",
                explanation: "Systematic lost keys resolution."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟强觉得他新车保险的保费太贵了。他可以怎么做来降低保费？",
                options: [],
                correctAnswer: "他可以向不同的保险公司咨询报价、提高自付额（deductible）或向当前的保险公司询问安全驾驶员折扣。",
                explanation: "Ways to reduce auto insurance costs."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "小梅想用谷歌地图导航去朋友家，但她手机的移动流量已经用完了。她该怎么办？",
                options: [],
                correctAnswer: "她可以在家利用无线网络（Wi-Fi）提前下载好离线地图，或者连上附近的公共无线网，或者打电话让朋友口头指路。",
                explanation: "Navigating without cellular data."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "杰克需要帮外婆订购降压药的续药（refill），但药房柜台马上就要关门了。他该怎么办？",
                options: [],
                correctAnswer: "他可以使用药房的自动电话系统下单，或者通过药房的官方网页或手机应用在线订购续药，也可以等第二天早上再打电话。",
                explanation: "Options for ordering refills after pharmacy counter hours."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "家里后院的浇水软管破裂漏水，这会导致水费上升。您应该怎么做？",
                options: [],
                correctAnswer: "先关闭通往后院的主水阀（shut-off valve）以阻止漏水，然后再去购买新的软管更换或请管道工维修。",
                explanation: "Stopping water waste at the source."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "俊杰收到一封自称来自大通银行（Chase）的邮件，称他的账户发现可疑活动，需要重置密码。俊杰该怎么办？",
                options: [],
                correctAnswer: "不要点击邮件中的任何链接。他应该直接在浏览器输入银行网址登录，或者打开手机网银APP检查安全消息。",
                explanation: "Protecting online banking credentials from phishing links."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您有一张很久不用的旧信用卡，为了安全起见，您想把它注销。您应该怎么做？",
                options: [],
                correctAnswer: "拨打卡片背面的银行客服电话，正式申请注销该账户。随后用剪刀将卡片剪碎销毁。",
                explanation: "Correct process for canceling and disposing of a credit card."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "丽华需要去学校参加孩子的家长会，但她的汽车今天突然发动不起来了。她该怎么办？",
                options: [],
                correctAnswer: "她可以使用打车软件（如Uber或Lyft）叫车，或者打电话给邻居或朋友搭便车，也可以致电学校老师说明情况改期。",
                explanation: "Transit contingency planning."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的邮箱里收到了一封写着陌生人名字的信件，但是地址确实是您家。您应该怎么做？",
                options: [],
                correctAnswer: "不要拆开信件。在信封上写上“Return to Sender（退回寄件人）”或“Not at this Address（查无此人）”，然后放回邮筒。",
                explanation: "Correct handling of misdelivered mail."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "晓东公寓的客厅天花板突然开始往下滴水，沙发已经被淋湿了。他该怎么办？",
                options: [],
                correctAnswer: "立即把沙发推开，在漏水处放一个水桶接水，然后迅速联系楼上住户或公寓的物业管理处（maintenance）进行维修。",
                explanation: "Managing an active apartment water leak."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "淑珍的膝盖很痛，需要去诊所看医生，但她今天无法自己开车。她该怎么办？",
                options: [],
                correctAnswer: "她可以联系家人或朋友开车送她，或者预约专门的医疗护送接送服务，也可以使用打车软件。",
                explanation: "Patient transportation workarounds."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "建国发现他的电费账单上多了一笔不寻常的额外收费，金额很高。他该怎么办？",
                options: [],
                correctAnswer: "拨打电力公司账单上的客服电话，向客服人员详细询问这笔具体费用的明细和收费原因。",
                explanation: "Resolution of bill discrepancies."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "佳莹要参加婚礼，她把礼服送去干洗，但当她去取衣服时发现干洗店今天休息。她该怎么办？",
                options: [],
                correctAnswer: "她应该回到家里，从衣柜中挑选另一套合适且体面的正式服装穿去参加婚礼。",
                explanation: "Sourcing backup attire."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您家厨房水槽的排水管完全被堵住了，积水无法排下去。您应该怎么做？",
                options: [],
                correctAnswer: "停止使用水槽。使用管道皮搋子（plunger）尝试疏通，或者倒入小苏打和醋后用热水冲洗。如果不行则联系管道工。",
                explanation: "Unclogging a kitchen sink drain."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟民需要更新他的护照，但他不知道需要哪些申请材料。他该怎么办？",
                options: [],
                correctAnswer: "他应该登录政府的官方护照申请网站（如travel.state.gov）查询护照更新所需的材料清单和申请步骤。",
                explanation: "Checking government requirements online."
            )
        
        ]
    )

    // MARK: - 空间感知
    private static let spatialAwareness = Exercise(
        id: UUID(),
        title: "空间感知",
        instructions: "回答关于方向和空间位置的问题。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "你在厨房里。如果酱油瓶在调料架上放在盐罐的正上方，你应该在哪里寻找酱油瓶？",
                options: ["在盐罐的下方", "在盐罐的上方", "在盐罐的后面", "在冰箱里"],
                correctAnswer: "在盐罐的上方",
                explanation: "“正上方” corresponds to directly above."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你正在开车，GPS导航语音播报：“在下一个路口向右转。”你应该往哪个方向转向？",
                options: ["向左", "向右", "直行", "掉头"],
                correctAnswer: "向右",
                explanation: "Navigational command is to turn right (向右)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你的药箱里，感冒药放在止痛药的右边。那么，止痛药在什么位置？",
                options: ["在感冒药的左边", "在感冒药的下方", "在感冒药的上方", "在药箱外面"],
                correctAnswer: "在感冒药的左边",
                explanation: "If cold medicine is to the right of pain medicine, pain medicine is to the left."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "坐在沙发上时，电视遥控器在你的右侧茶几上。用哪只手去拿它最方便自然？",
                options: ["左手", "右手", "双手", "脚"],
                correctAnswer: "右手",
                explanation: "Objects on your right side are easiest to reach with your right hand."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你把家门钥匙放进了玄关鞋柜上的小盒子里。钥匙现在在哪里？",
                options: ["在盒子的下方", "在盒子的旁边", "在盒子的里面", "在鞋柜后面"],
                correctAnswer: "在盒子的里面",
                explanation: "“放进...里面” means inside."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你的床头上方挂着一幅画。那么床位于画的什么方向？",
                options: ["在画的上方", "在画的下方", "在画的旁边", "在客厅里"],
                correctAnswer: "在画的下方",
                explanation: "If picture is above the bed, bed is below (下方) the picture."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你把重物放在衣柜最底层的一格里，以防倾倒。你应该在衣柜的哪里找它？",
                options: ["在最上面的隔板上", "在最底下的网格/层上", "在中间一格", "在衣柜后面"],
                correctAnswer: "在最底下的网格/层上",
                explanation: "“最底层” corresponds to the bottom shelf."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在银行排队办理业务时，地上有一条黄线。告示牌写着：“请在黄色安全线后排队。”你应该站在哪里？",
                options: ["踩在黄色安全线上", "跨过黄色安全线", "在黄色安全线之前", "在柜台旁边"],
                correctAnswer: "在黄色安全线之前",
                explanation: "Standing behind a line means staying before it."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果你面向正东方向站立，然后做了一个180度的转身，现在你面向什么方向？",
                options: ["正北", "正南", "正东", "正西"],
                correctAnswer: "正西",
                explanation: "180-degree turn reverses direction. Opposite of East is West."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你在门口外面铺了一块防尘地垫。在开门进屋之前，你应该踩在哪里？",
                options: ["踩在地垫上", "直接踩在客厅地板上", "踩在花园草坪上", "踩在厨房地板上"],
                correctAnswer: "踩在地垫上",
                explanation: "The doormat is placed outside in front of the door."
            )
        ]
    )

    // MARK: - 时间感知
    private static let temporalAwareness = Exercise(
        id: UUID(),
        title: "时间感知",
        instructions: "选择关于时间、时长和日期的最佳答案。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "如果今天是星期三，那么昨天是星期几？",
                options: ["星期一", "星期二", "星期四", "星期五"],
                correctAnswer: "星期二",
                explanation: "Tuesday (星期二) precedes Wednesday."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果今天是星期五，你的医生预约是在后天，那么预约是在星期几？",
                options: ["星期六", "星期日", "星期一", "星期二"],
                correctAnswer: "星期日",
                explanation: "Friday + 2 days = Sunday (星期日)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据公历，一年中的第一个月是哪一个月？",
                options: ["一月", "二月", "十二月", "三月"],
                correctAnswer: "一月",
                explanation: "January (一月) is the first month."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果你的闹钟设定在早上7:00响起，而你在早上6:45自然醒来，那么你是在闹钟响起前还是醒来后？",
                options: ["响铃前", "响铃后", "准时", "下午"],
                correctAnswer: "响铃前",
                explanation: "6:45 AM is before 7:00 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果现在是下午2:50，而你的公交车在下午3:00出发，你还有多少分钟准备乘车？",
                options: ["5分钟", "10分钟", "15分钟", "20分钟"],
                correctAnswer: "10分钟",
                explanation: "From 2:50 to 3:00 is 10 minutes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "一年四季中，春季过完之后是什么季节？",
                options: ["秋季", "夏季", "冬季", "雨季"],
                correctAnswer: "夏季",
                explanation: "Summer (夏季) follows Spring."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果医生嘱咐你某款药必须每12小时服用一次，你每天应该服用几次？",
                options: ["1次", "2次", "3次", "4次"],
                correctAnswer: "2次",
                explanation: "24 divided by 12 is 2."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你喜欢的电视专题节目在晚上8:00开始，时长为30分钟。它在什么时间结束？",
                options: ["晚上8:15", "晚上8:30", "晚上8:45", "晚上9:00"],
                correctAnswer: "晚上8:30",
                explanation: "8:00 PM + 30 minutes = 8:30 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果今年是2026年，明年是哪一年？",
                options: ["2025年", "2026年", "2027年", "2028年"],
                correctAnswer: "2027年",
                explanation: "2026 + 1 = 2027."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果你在上午9:00服用了一次药，并且必须间隔4小时才能吃下一次，你应该在什么时间吃药？",
                options: ["中午12:00", "下午1:00", "下午2:00", "下午3:00"],
                correctAnswer: "下午1:00",
                explanation: "9:00 AM + 4 hours = 1:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在日历中，九月份紧接在哪个月份之后？",
                options: ["七月", "八月", "十月", "十一月"],
                correctAnswer: "八月",
                explanation: "August (八月) precedes September."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果今天是本月15号，你的电费账单截止日期是30号，你大概还有多少天时间？",
                options: ["大约1周", "大约2周", "大约3周", "大约4周"],
                correctAnswer: "大约2周",
                explanation: "15 days is approximately 2 weeks."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你预约了上午11:30看医生。如果开车去诊所需要45分钟，你最迟应该在什么时间出门？",
                options: ["上午10:30", "上午10:45", "上午11:00", "上午11:15"],
                correctAnswer: "上午10:45",
                explanation: "11:30 AM minus 45 minutes is 10:45 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "公历一年的最后一个月是哪个月？",
                options: ["一月", "十一月", "十二月", "十月"],
                correctAnswer: "十二月",
                explanation: "December (十二月) is the final month."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果今天是星期日，三天后是星期几？",
                options: ["星期二", "星期三", "星期四", "星期五"],
                correctAnswer: "星期三",
                explanation: "Sunday + 3 days (Monday, Tuesday, Wednesday)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果你在下午4:15将米饭下锅，需要煮20分钟，米饭会在什么时间做好？",
                options: ["下午4:30", "下午4:35", "下午4:40", "下午4:45"],
                correctAnswer: "下午4:35",
                explanation: "4:15 + 20 minutes = 4:35 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "今天是星期三。如果丽华预约了下周一去看牙医，那么从今天算起，还有几天是她的预约日？",
                options: ["5天", "6天", "4天", "7天"],
                correctAnswer: "5天",
                explanation: "Counting from Wednesday: Thursday (1), Friday (2), Saturday (3), Sunday (4), Monday (5)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟强的火车预计在下午2:15出发。如果他必须提前45分钟到达车站，他最晚要在下午几点到达？",
                options: ["下午1:30", "下午1:45", "下午1:15", "下午2:00"],
                correctAnswer: "下午1:30",
                explanation: "45 minutes before 2:15 PM is 1:30 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果一年有12个月，那么半个自然年（Half a Year）一共有几个月？",
                options: ["6个月", "5个月", "8个月", "4个月"],
                correctAnswer: "6个月",
                explanation: "12 divided by 2 is 6."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "加州在实行夏令时（DST）结束时，需要将时钟往回拨慢1小时。如果当时是凌晨2:00，调整后时钟应该显示几点？",
                options: ["凌晨1:00", "凌晨3:00", "凌晨12:00", "早上4:00"],
                correctAnswer: "凌晨1:00",
                explanation: "Set back 1 hour from 2:00 AM becomes 1:00 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "淑珍每年的12月都会去探望儿子。如果现在是8月份，距离她出发去探望儿子还有几个月？",
                options: ["4个月", "5个月", "3个月", "6个月"],
                correctAnswer: "4个月",
                explanation: "August to December is 4 months (Sept, Oct, Nov, Dec)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "一个重要会议原定于上午10:30开始，但因为设备故障推迟了15分钟才开始。会议实际在什么时候开始的？",
                options: ["上午10:45", "上午11:00", "上午10:15", "上午10:30"],
                correctAnswer: "上午10:45",
                explanation: "10:30 AM + 15 minutes = 10:45 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果今天是6月28日，那么上周的今天是几月几日？",
                options: ["6月21日", "6月20日", "6月22日", "6月23日"],
                correctAnswer: "6月21日",
                explanation: "28 minus 7 is 21."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "小陈在晚上7:00服用了他的第一剂药。他必须在整整12小时后服用第二剂药。他应该在什么时候服药？",
                options: ["第二天早上7:00", "第二天中午12:00", "第二天下午2:00", "当天半夜12:00"],
                correctAnswer: "第二天早上7:00",
                explanation: "12 hours after 7:00 PM is 7:00 AM the next day."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "小梅的机票行程单上写着起飞时间是18:30。如果转换成普通12小时制时间，这是下午几点？",
                options: ["下午6:30", "早上6:30", "晚上8:30", "凌晨12:30"],
                correctAnswer: "下午6:30",
                explanation: "18:30 in 12-hour format is 6:30 PM (18 - 12 = 6)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "棒球比赛一共打了3个小时，在下午5:30结束。比赛是在下午几点开始的？",
                options: ["下午2:30", "下午3:30", "下午1:30", "下午4:30"],
                correctAnswer: "下午2:30",
                explanation: "5:30 PM minus 3 hours is 2:30 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟民每3个月需要去看一次眼科医生。如果他上一次看眼科是在1月份，下一次预约是在几月份？",
                options: ["4月份", "3月份", "5月份", "2月份"],
                correctAnswer: "4月份",
                explanation: "3 months after January is April."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果今天是星期五，而昨天是伟强的生日，那么伟强的生日是星期几？",
                options: ["星期四", "星期三", "星期六", "星期二"],
                correctAnswer: "星期四",
                explanation: "Yesterday relative to Friday is Thursday."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "淑珍预约了9月15日上午9:00去诊所洗牙。今天是9月1日。距离洗牙还有几天？",
                options: ["14天", "15天", "13天", "16天"],
                correctAnswer: "14天",
                explanation: "15 - 1 = 14 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "烤箱烤面包需要40分钟。如果佳莹在下午1:15把面包放进烤箱，她应该在下午几点拿出来？",
                options: ["下午1:55", "下午2:00", "下午1:45", "下午1:50"],
                correctAnswer: "下午1:55",
                explanation: "1:15 PM + 40 minutes = 1:55 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果明年是闰年（Leap Year），那么明年二月份一共有多少天？",
                options: ["29天", "28天", "30天", "31天"],
                correctAnswer: "29天",
                explanation: "February in leap years has 29 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "建国在晚上10:15入睡，第二天早上6:15醒来。他一共睡了几个小时？",
                options: ["8个小时", "7个小时", "9个小时", "6个小时"],
                correctAnswer: "8个小时",
                explanation: "10:15 PM to 6:15 AM is exactly 8 hours."
            )
        
        ]
    )

    // MARK: - 购物比价
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "购物比价",
        instructions: "对于每件商品，选择性价比更高的一项。",
        section: .functionalSkills,
        type: .comparison,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "大米（您需要买大米）",
                options: ["茉莉香米 5磅装 $5.99", "茉莉香米 25磅装 $18.99"],
                correctAnswer: "茉莉香米 25磅装 $18.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "鸡蛋（您需要买鸡蛋）",
                options: ["散养鸡蛋 6个装 $4.99", "普通鸡蛋 18个装 $5.49"],
                correctAnswer: "普通鸡蛋 18个装 $5.49",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "豆腐（您需要买豆腐）",
                options: ["有机嫩豆腐 14盎司 $2.99", "普通嫩豆腐 2块装 $3.49"],
                correctAnswer: "普通嫩豆腐 2块装 $3.49",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "食用油（您需要买食用油）",
                options: ["花生油 16盎司 $4.99", "花生油 64盎司 $10.99"],
                correctAnswer: "花生油 64盎司 $10.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "酱油（您需要买酱油）",
                options: ["生抽酱油 10盎司 $2.49", "生抽酱油 33盎司 $4.99"],
                correctAnswer: "生抽酱油 33盎司 $4.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "青菜（您需要买蔬菜）",
                options: ["有机菠菜 5盎司袋装 $3.99", "新鲜菠菜散装 每磅$1.99 买两磅"],
                correctAnswer: "新鲜菠菜散装 每磅$1.99 买两磅",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "猪肉（您需要买猪肉）",
                options: ["猪五花肉 每磅$4.99 买两磅", "猪肩肉 5磅家庭装 $12.99"],
                correctAnswer: "猪肩肉 5磅家庭装 $12.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "面条（您需要买面条）",
                options: ["新鲜拉面 1磅 $2.49", "干面条 5磅装 $5.99"],
                correctAnswer: "干面条 5磅装 $5.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "橙子（您需要买橙子）",
                options: ["脐橙 单个 $0.99", "脐橙 5磅袋装 $3.99"],
                correctAnswer: "脐橙 5磅袋装 $3.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "绿茶（您需要买绿茶）",
                options: ["绿茶 20包装 $3.49", "绿茶 100包装 $8.99"],
                correctAnswer: "绿茶 100包装 $8.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "洗洁精（您需要买洗洁精）",
                options: ["品牌洗洁精 16盎司 $3.99", "超市自有品牌洗洁精 32盎司 $3.49"],
                correctAnswer: "超市自有品牌洗洁精 32盎司 $3.49",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "鸡肉（您需要买鸡肉）",
                options: ["鸡胸肉 每磅$3.99 买两磅", "全鸡 约4磅 每磅$1.99"],
                correctAnswer: "全鸡 约4磅 每磅$1.99",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "卫生纸（您需要买卫生纸）",
                options: ["卫生纸 4卷装 $3.99", "卫生纸 12卷装 $8.99"],
                correctAnswer: "卫生纸 12卷装 $8.99",
                explanation: ""
            )
        ]
    )

    // MARK: - 时间和数学
    private static let timeAndMath = Exercise(
        id: UUID(),
        title: "时间和数学",
        instructions: "为每个问题选择正确的答案。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "现在是下午两点十五分，再过一个半小时是几点？",
                options: ["下午三点四十五分", "下午三点十五分", "下午四点", "下午三点三十分"],
                correctAnswer: "下午三点四十五分",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的医生预约在上午十点三十分，您需要提前二十分钟到达填写表格。您最晚几点出门，如果开车需要三十五分钟？",
                options: ["上午九点三十五分", "上午九点五十分", "上午十点", "上午九点十五分"],
                correctAnswer: "上午九点三十五分",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您买了三样东西分别是$15.99、$8.50和$3.75，付了$30，应该找回多少钱？",
                options: ["$1.76", "$2.76", "$0.76", "$3.76"],
                correctAnswer: "$1.76",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的租金每月$1,350，房东要求您付第一个月和最后一个月的租金加上$500押金。您需要准备多少钱？",
                options: ["$3,200", "$2,700", "$2,200", "$3,700"],
                correctAnswer: "$3,200",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "药瓶说明每六小时服用一次，早上八点服了第一次，下一次应该几点服？",
                options: ["下午两点", "下午三点", "中午十二点", "下午一点"],
                correctAnswer: "下午两点",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您从旧金山飞往北京，飞行时间约十一小时。旧金山时间早上九点出发，到达北京时旧金山是几点？",
                options: ["晚上八点", "晚上十点", "晚上九点", "次日早上七点"],
                correctAnswer: "晚上八点",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "超市的鸡腿每磅$2.49，您买了三磅半，大约需要多少钱？",
                options: ["约$8.72", "约$7.47", "约$9.97", "约$6.22"],
                correctAnswer: "约$8.72",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您每周工作三十二小时，时薪$17.50，税前每周收入是多少？",
                options: ["$560", "$490", "$630", "$525"],
                correctAnswer: "$560",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您在餐厅吃饭，账单是$67.80，想给18%的小费，总共应该付多少？",
                options: ["约$80", "约$75", "约$85", "约$70"],
                correctAnswer: "约$80",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的汽车保险每半年付一次，每次$486。平均每个月的保险费是多少？",
                options: ["$81", "$97", "$243", "$162"],
                correctAnswer: "$81",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "今天是三月十五日，您的绿卡将在九十天后到期。到期日是哪天？",
                options: ["六月十三日", "六月十五日", "六月三十日", "七月一日"],
                correctAnswer: "六月十三日",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您汇款给中国家人，手续费是汇款金额的3%，您想汇$500，实际需要付多少？",
                options: ["$515", "$503", "$530", "$510"],
                correctAnswer: "$515",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "超市苹果原价每磅$2.99，现在打八折，现价是多少？",
                options: ["$2.39", "$2.49", "$2.19", "$2.59"],
                correctAnswer: "$2.39",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您乘坐公共汽车，单程票价$2.50，一个月工作日来回乘车（按二十二个工作日计算），一个月交通费是多少？",
                options: ["$110", "$55", "$100", "$88"],
                correctAnswer: "$110",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的电话套餐每月$45，网络套餐每月$65，有线电视每月$89，每月通讯总费用是多少？",
                options: ["$199", "$189", "$209", "$179"],
                correctAnswer: "$199",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "北京时间比洛杉矶时间快十六小时。洛杉矶是周一早上八点，北京现在是什么时间？",
                options: ["周二零点", "周一晚上十一点", "周二早上八点", "周一下午四点"],
                correctAnswer: "周二零点",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的处方药每瓶三十片，每天服两片，医生给您开了九十天的药量，您需要几瓶药？",
                options: ["6瓶", "3瓶", "9瓶", "4瓶"],
                correctAnswer: "6瓶",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您买了一张$50的超市礼品卡送给朋友，买了三张，一共花了多少钱？",
                options: ["$150", "$100", "$200", "$175"],
                correctAnswer: "$150",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您的体重是68公斤，换算成磅大约是多少（1公斤约等于2.2磅）？",
                options: ["约150磅", "约136磅", "约160磅", "约145磅"],
                correctAnswer: "约150磅",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "您准备在加州申报收入税，您去年的总收入是$42,000，标准扣除额是$13,850，应税收入是多少？",
                options: ["$28,150", "$30,000", "$35,000", "$25,000"],
                correctAnswer: "$28,150",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你买了一袋面粉花去$3.50，一瓶酱油花去$1.50。如果你付给收银员一张$10.00的纸币，应该找回多少钱？",
                options: ["$4.00", "$5.00", "$6.00", "$7.00"],
                correctAnswer: "$5.00",
                explanation: "Total is $5.00. Change is $10.00 - $5.00 = $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在餐馆消费了$20.00，你打算付15%的小费。小费的金额是多少？",
                options: ["$2.00", "$2.50", "$3.00", "$4.00"],
                correctAnswer: "$3.00",
                explanation: "15% of $20 is $3.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你的电话费每月固定为$45.00。如果你付了$50.00的支票，你的账户会多出多少余额结余？",
                options: ["$5.00", "$10.00", "$15.00", "没有结余"],
                correctAnswer: "$5.00",
                explanation: "$50 - $45 = $5."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "有一款处方药经医保报销后一盒自付费用为$12.00。如果你一次买3盒，总共需要付多少钱？",
                options: ["$24.00", "$30.00", "$36.00", "$48.00"],
                correctAnswer: "$36.00",
                explanation: "3 * $12 = $36."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "公交单程票为$1.75。如果你买一张包含10次乘车次数的通票需要付$15.00，比起买单程票，你一共省了多少钱？",
                options: ["$1.50", "$2.50", "$3.00", "$5.00"],
                correctAnswer: "$2.50",
                explanation: "10 single trips cost $17.50. Pass is $15.00, saving $2.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你在大华超市买了3磅苹果，单价是$0.60一磅。总价是多少？",
                options: ["$1.20", "$1.50", "$1.80", "$2.00"],
                correctAnswer: "$1.80",
                explanation: "3 * 0.60 = 1.80."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "一盒茶叶的原价是$8.00，现在贴着“立减$2.00”的降价标签。结账时你需要付多少钱？",
                options: ["$5.00", "$6.00", "$7.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "$8 - $2 = $6."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "如果你买了一个肉包子花去$2.75，一杯豆浆花去$1.25，你的总账单是多少？",
                options: ["$3.50", "$3.75", "$4.00", "$4.25"],
                correctAnswer: "$4.00",
                explanation: "$2.75 + $1.25 = $4.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "你买了一张价值$25.00的华人超市礼品卡，并支付了一张$50.00面额的纸币。收银员应该找回多少钱？",
                options: ["$15.00", "$20.00", "$25.00", "$30.00"],
                correctAnswer: "$25.00",
                explanation: "$50 - $25 = $25."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "在洛杉矶中国城路边停车费用是每小时$2.00。如果你停了3小时，你需要支付多少停车费？",
                options: ["$4.00", "$5.00", "$6.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "3 * $2 = $6."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟强的PG&E电费账单总额为120美元。如果他在截止日期前付款，可以获得5%的折扣。折扣后他需要支付多少美元？",
                options: ["$114", "$115", "$110", "$108"],
                correctAnswer: "$114",
                explanation: "5% of 120 is 6. 120 - 6 = $114."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "小梅在圣何塞的一家印度餐馆吃饭，消费了40美元。她想给15%的小费。她应该给多少小费？",
                options: ["$6", "$5", "$8", "$4"],
                correctAnswer: "$6",
                explanation: "15% of 40 is 6."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "仔细阅读以下水费账单详情：",
                options: ["$40", "$50", "$35", "$45"],
                correctAnswer: "$40",
                explanation: "Usage = 5300 - 4500 = 800 gallons. Cost = 800 * 0.05 = $40."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "俊杰的健身房会员费是每月45美元。他想一次性付清全年（12个月）的费用。他需要付多少钱？",
                options: ["$540", "$480", "$600", "$500"],
                correctAnswer: "$540",
                explanation: "45 * 12 = $540."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "一袋价值15美元的巴马香米正在进行20%折扣的促销。折扣后这袋米的价格是多少？",
                options: ["$12", "$13", "$11", "$10"],
                correctAnswer: "$12",
                explanation: "20% of 15 is 3. 15 - 3 = $12."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "查看以下电视账单明细：",
                options: ["$80", "$75", "$85", "$70"],
                correctAnswer: "$80",
                explanation: "65 + 10 + 5 = $80."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "佳莹买了一件120美元的连衣裙。加州的销售税（Sales Tax）为8.25%。这件衣服的预计税费是多少（四舍五入到个位数）？",
                options: ["$10", "$8", "$12", "$6"],
                correctAnswer: "$10",
                explanation: "120 * 0.0825 = 9.90, which rounds to $10."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟民的宽带账单上个月欠费25美元，本月新消费55美元。他本月共付了60美元。现在他的账户余额还欠多少钱？",
                options: ["$20", "$15", "$25", "$30"],
                correctAnswer: "$20",
                explanation: "Total due = 25 + 55 = 80. Remaining due after $60 payment = 80 - 60 = $20."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "超市里一袋价值6美元的苹果正在参加“买一送一”（BOGO）的活动。如果小陈想要买4袋苹果，他一共需要支付多少美元？",
                options: ["$12", "$24", "$18", "$16"],
                correctAnswer: "$12",
                explanation: "4 bags equals 2 purchases under BOGO. 2 * 6 = $12."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "查看以下燃气账单：",
                options: ["$55", "$45", "$50", "$60"],
                correctAnswer: "$55",
                explanation: "Gas charge = 30 * 1.50 = 45. Total = 45 + 10 = $55."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "丽华在服装店购买了一件50美元的外套。商家给她提供了10%的“长者折扣”。她实际付了多少钱？",
                options: ["$45", "$40", "$48", "$42"],
                correctAnswer: "$45",
                explanation: "10% of 50 is 5. 50 - 5 = $45."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "建国去车行换一次汽车机油（Oil Change）花了60美元。如果他每4个月换一次机油，一年（12个月）换机油的总花费是多少？",
                options: ["$180", "$240", "$120", "$160"],
                correctAnswer: "$180",
                explanation: "3 times a year. 3 * 60 = $180."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下季度垃圾清理账单：",
                options: ["$105", "$95", "$100", "$110"],
                correctAnswer: "$105",
                explanation: "90 + 15 = $105."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "丽华购买了一些处方药，总价为25美元。根据她的医疗保险政策，她个人只需支付20%的自付额（Co-pay）。丽华实际上支付了多少美元？",
                options: ["$5", "$10", "$8", "$15"],
                correctAnswer: "$5",
                explanation: "Co-pay = 25 * 0.20 = $5."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "超市里面一袋5公斤装的面粉售价为8美元。如果您一次性购买15公斤该面粉，总价是多少？",
                options: ["$24", "$16", "$32", "$20"],
                correctAnswer: "$24",
                explanation: "15kg is 3 bags. 3 * 8 = $24."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "伟民拥有一张面值20美元的星巴克礼品卡。他买了三杯单价6美元的红茶拿铁。礼品卡上还剩多少美元余额？",
                options: ["$2", "$4", "$6", "$0"],
                correctAnswer: "$2",
                explanation: "Tea costs 3 * 6 = 18. Balance = 20 - 18 = $2."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "一个包含4条线路的手机家庭套餐（Family Plan）月费为80美元。平均每条线路的月费是多少？",
                options: ["$20", "$15", "$25", "$30"],
                correctAnswer: "$20",
                explanation: "80 / 4 = $20."
            )
        
        ]
    )

    // MARK: - 实用写作
    private static let functionalWriting = Exercise(
        id: UUID(),
        title: "实用写作",
        instructions: "针对每个情景写下一段回复。轻按“显示答案”查看参考回答。",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "请给您的房东写一张便条，告诉他您家浴室的水龙头漏水已经三天了，需要尽快维修。请写明您方便接受维修的时间。",
                options: [],
                correctAnswer: "尊敬的房东、您好。我想通知您，我家浴室的水龙头已经漏水三天了，情况越来越严重，需要尽快安排维修。我在工作日下午两点到五点或周末全天都方便，请尽快与我联系安排维修时间。谢谢您的关注。您的租户敬上。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请给您孩子的学校老师写一张请假条，说明您的孩子因为有医生预约，需要在周三下午两点早退。",
                options: [],
                correctAnswer: "尊敬的老师、您好。我想告知您，我的孩子本周三下午两点有医生预约，需要提前离校。我会在下午一点五十分到学校接他/她。如有任何问题请联系我。谢谢您的理解与配合。家长敬上。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请用英文给您的家庭医生诊所写一封简短的邮件，要求预约下个月的年度体检。请写出您方便的时间和联系方式。",
                options: [],
                correctAnswer: "Dear Dr. [Name]‘s Office, I would like to schedule my annual physical exam for next month. I am available on weekday mornings or Saturday afternoons. Please contact me at [phone number] or [email] to confirm the appointment. Thank you very much. Sincerely, [Your Name]",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请给在中国的父母写一张微信留言，告诉他们您在美国一切安好，最近的生活情况，并询问他们的身体健康。",
                options: [],
                correctAnswer: "爸爸妈妈，你们好！我在这边一切都好，请放心。最近天气不错，我每天都坚持散步锻炼身体。工作和生活都很顺利，孩子们也都很好。你们那边天气怎么样？身体都好吗？记得按时吃药，有空多出去走走。我们很快会打视频电话的，到时候详细聊。爱你们的[名字]。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请写一张便条给您的邻居，感谢他们上周在您生病时帮您取快递和买了药，表达您的感激之情。",
                options: [],
                correctAnswer: "亲爱的邻居、您好。我想借此机会真诚地感谢您上周在我生病期间帮我取快递和买药。您的善意让我非常感动，在异乡能有您这样热心的邻居真是我的幸运。等我完全康复后，我想邀请您来家里吃顿饭，略表心意。再次感谢您的帮助。您的邻居敬上。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请用英文填写一张简单的社区中心活动报名表，包括您的姓名、年龄、联系电话、您想参加的活动（太极拳班）以及您的紧急联系人信息。",
                options: [],
                correctAnswer: "Name: [Your Name] Age: [Your Age] Phone: [Your Phone Number] Activity: Tai Chi Class Emergency Contact: [Name and Phone Number] I am interested in joining the Tai Chi class at the community center. Please contact me with more information about class schedules and fees. Thank you.",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请给您的孙子写一张生日卡，用中文表达您对他的祝福和爱，并给他一些人生建议。",
                options: [],
                correctAnswer: "亲爱的[孙子名字]，生日快乐！今天是你的生日，爷爷奶奶/外公外婆非常想念你。希望你健康成长、学习进步、每天都开开心心。记住无论走到哪里，家人永远是你最坚强的后盾。要努力学习，善待他人，不忘自己的中国文化根源。爱你的爷爷奶奶/外公外婆。",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "请写一张便条给您的看护或家庭助手，说明您今天外出就医，列出您的午餐在冰箱里，并说明您大约几点回来，以及紧急情况下如何联系您。",
                options: [],
                correctAnswer: "亲爱的[助手姓名]，您好。我今天上午十点有医生预约，大约下午一点回来。您的午餐在冰箱里，是昨晚剩下的炒饭，微波炉加热两分钟即可。如果有任何紧急情况，请拨打我的手机[电话号码]，或联系我的女儿[姓名]，她的电话是[电话号码]。谢谢您的照顾。[您的名字]。",
                explanation: ""
            )
        ]
    )
    // MARK: - Reading Menus
    private static let readingMenus = Exercise(
        id: UUID(),
        title: "菜单阅读",
        instructions: "阅读菜单并选择正确的答案。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "阅读“中华小馆”（Chinatown Eatery）的午餐菜单：",
                options: ["$18.00", "$16.00", "$20.00", "$14.00"],
                correctAnswer: "$18.00",
                explanation: "14.00 + 4.00 = $18.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据该菜单，如果小梅只想点一份虾饺烧卖组合和一份扬州炒饭，她一共需要花多少钱？",
                options: ["$17.00", "$15.00", "$19.00", "$12.00"],
                correctAnswer: "$17.00",
                explanation: "5.00 + 12.00 = $17.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "查看“老四川”（Sichuan House）的菜单：",
                options: ["$19.00", "$16.50", "$23.50", "$15.50"],
                correctAnswer: "$19.00",
                explanation: "12.00 (Congee) + 2 * 3.50 (Pancake) = 12.00 + 7.00 = $19.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据以上两个菜单，哪一道主菜（Main Dish）的价格最贵？",
                options: ["水煮鱼", "麻婆豆腐", "扬州炒饭", "皮蛋瘦肉粥"],
                correctAnswer: "水煮鱼",
                explanation: "水煮鱼（$15.00）的价格高于麻婆豆腐（$14.00）、扬州炒饭（$12.00）和皮蛋瘦肉粥（$12.00）。"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“广式点心皇”（Dim Sum King）菜单：",
                options: ["$7.00", "$6.00", "$8.00", "$5.00"],
                correctAnswer: "$7.00",
                explanation: "Cost = 10.00 + 3.00 = 13.00. Change = 20 - 13 = $7.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据上面的菜单，最便宜的单品是什么？",
                options: ["人参乌龙茶", "叉烧包", "干炒牛河", "招牌虾饺"],
                correctAnswer: "人参乌龙茶",
                explanation: "Tea costs $3.00, which is the lowest."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“喜茶点”（Joy Bakery）菜单：",
                options: ["$17.00", "$15.00", "$16.00", "$14.00"],
                correctAnswer: "$17.00",
                explanation: "2 * 4.50 (Slush) + 2 * 4.00 (Bun) = 9.00 + 8.00 = $17.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "喜茶点菜单中哪种面包（Bun）的价格最贵？",
                options: ["咸蛋黄肉松包", "菠萝包", "蛋挞", "红豆冰沙"],
                correctAnswer: "咸蛋黄肉松包",
                explanation: "咸蛋黄肉松包售价 $5.00，高于菠萝包（$4.00）。"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“面面聚到”（Noodle House）菜单：",
                options: ["$19.00", "$18.00", "$20.00", "$17.00"],
                correctAnswer: "$19.00",
                explanation: "16.00 (Noodle) + 3.00 (Cucumber) = $19.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "面面聚到菜单中甜点的价格是多少？",
                options: ["$4.00", "$3.00", "$15.00", "$16.00"],
                correctAnswer: "$4.00",
                explanation: "The dessert is Sesame Balls, priced at $4.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“江南味道”（Jiangnan Flavors）菜单：",
                options: ["$9.00", "$8.00", "$10.00", "$11.00"],
                correctAnswer: "$9.00",
                explanation: "6.00 + 3.00 = $9.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据“江南味道”的菜单，一份葱油拌面和一份糯米烧麦的总价是多少？",
                options: ["$16.00", "$15.00", "$17.00", "$18.00"],
                correctAnswer: "$16.00",
                explanation: "9.00 (Noodle) + 7.00 (Shumai) = $16.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“家乡早点”（Hometown Breakfast）菜单：",
                options: ["$11.50", "$9.50", "$10.50", "$12.00"],
                correctAnswer: "$11.50",
                explanation: "5.00 (Rice ball) + 3.50 (Soy milk) + 3.00 (You tiao) = $11.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "家乡早点菜单中，甜豆浆和咸豆浆哪个更贵？",
                options: ["咸豆浆", "甜豆浆", "价格一样", "免费"],
                correctAnswer: "咸豆浆",
                explanation: "咸豆浆售价 $3.50，甜豆浆售价 $3.00。"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“泰式面馆”（Thai Noodle）菜单：",
                options: ["$28.00", "$25.00", "$30.00", "$22.00"],
                correctAnswer: "$28.00",
                explanation: "10.00 (Pad Thai) + 12.00 (Tom Yum) + 2 * 3.00 (Tea) = 22.00 + 6.00 = $28.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "泰式面馆菜单中，招牌甜点的价格是多少？",
                options: ["$5.00", "$3.00", "$10.00", "$12.00"],
                correctAnswer: "$5.00",
                explanation: "The dessert is Mango Sticky Rice, priced at $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“西关美食”（Xiguan Delicacies）菜单：",
                options: ["$17.00", "$15.00", "$16.00", "$18.00"],
                correctAnswer: "$17.00",
                explanation: "8.00 + 7.00 + 2.00 = $17.00."
            )
        ]
    )

    // MARK: - Reading Prescriptions
    private static let readingPrescriptions = Exercise(
        id: UUID(),
        title: "药瓶标签阅读",
        instructions: "阅读药瓶标签上的指示并选择正确的答案。",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "仔细阅读以下处方药标签：",
                options: ["每天吃两次，吃东西时服用", "每天吃一次，空腹服用", "仅在睡前吃一次", "每四小时吃一次，不用水"],
                correctAnswer: "每天吃两次，吃东西时服用",
                explanation: "Directions say \"Take twice daily with meals\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据该标签，建国还可以去药房续药（Refill）多少次？",
                options: ["3次", "2次", "4次", "0次"],
                correctAnswer: "3次",
                explanation: "Refills listed is 3."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下药物说明：",
                options: ["每天睡觉前", "早上刚起床时", "吃午饭的时候", "刚运动完以后"],
                correctAnswer: "每天睡觉前",
                explanation: "\"Take 1 tablet daily at bedtime\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "服用此药时，不建议饮用哪种果汁？",
                options: ["葡萄柚汁（西柚汁）", "牛奶", "橙汁", "温水"],
                correctAnswer: "葡萄柚汁（西柚汁）",
                explanation: "Warning labels warn against taking the drug with grapefruit juice."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "查看以下处方详情：",
                options: ["高血压", "糖尿病", "关节炎", "哮喘"],
                correctAnswer: "高血压",
                explanation: "Lisinopril treats high blood pressure."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "根据说明，患者每天需要服用几片药？",
                options: ["1片", "2片", "半片", "根据需要服用"],
                correctAnswer: "1片",
                explanation: "\"Take 1 tablet daily\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下眼药水的使用说明：",
                options: ["每次1滴，每天两次", "每次2滴，每天三次", "每天睡觉前滴4滴", "每小时滴1滴"],
                correctAnswer: "每次1滴，每天两次",
                explanation: "\"Instill 1 drop in affected eye twice daily\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "使用该滴眼液时，应该注意什么卫生问题？",
                options: ["手指不要接触滴管前端", "把药瓶放在热水里加热", "每次使用后不要盖盖子", "放在阳光直射处保存"],
                correctAnswer: "手指不要接触滴管前端",
                explanation: "\"Do not touch the tip of the dropper\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下止痛药标签说明：",
                options: ["4片", "6片", "3片", "8片"],
                correctAnswer: "4片",
                explanation: "Do not exceed 4 tablets in 24 hours."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "两次服药之间，最少需要间隔多少小时？",
                options: ["6小时", "4小时", "12小时", "8小时"],
                correctAnswer: "6小时",
                explanation: "\"every 6 hours as needed\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下止咳糖浆说明：",
                options: ["开车或操作重型机器", "睡觉", "喝热水", "看书"],
                correctAnswer: "开车或操作重型机器",
                explanation: "Warning states \"Do not operate machinery or drive\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "针对成年人，每次推荐服用的剂量是多少？",
                options: ["10毫升", "5毫升", "15毫升", "20毫升"],
                correctAnswer: "10毫升",
                explanation: "Adult dosage is 10ml."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下消炎抗菌素处方：",
                options: ["7天", "5天", "10天", "14天"],
                correctAnswer: "7天",
                explanation: "Directions say \"daily for 7 days\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "服用抗菌素类药物时，最重要的一条原则是什么？",
                options: ["一定要坚持吃完整个疗程", "一旦感觉病好了就立刻停药", "只能用热牛奶送服", "不能用凉开水送服"],
                correctAnswer: "一定要坚持吃完整个疗程",
                explanation: "Finishing the full course is critical for antibiotic efficacy."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读以下胰岛素注射笔的说明：",
                options: ["餐前15分钟", "餐前30分钟", "吃完饭立刻注射", "餐前1小时"],
                correctAnswer: "餐前15分钟",
                explanation: "Inject 15 minutes before meals."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "说明中推荐的注射部位是人体的哪里？",
                options: ["腹部", "手臂", "大腿", "背部"],
                correctAnswer: "腹部",
                explanation: "Inject \"into the abdomen (腹部)\"."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "阅读抗过敏药说明：",
                options: ["早晨空腹", "中午饭后", "晚上睡前不喝水", "下午喝茶时"],
                correctAnswer: "早晨空腹",
                explanation: "\"Take 1 tablet daily in the morning on an empty stomach\"."
            )
        ]
    )

}
