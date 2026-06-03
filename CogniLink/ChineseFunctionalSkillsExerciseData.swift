import Foundation

struct ChineseFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        safetyScenarios,
        timeAndMath,
        groceryShopping,
        functionalWriting,
        cookingSteps,
        dailyLifeSkills
    ]

    // MARK: - Exercise 1: Safety Scenarios (安全情景) — 25 items
    private static let safetyScenarios = Exercise(
        id: UUID(),
        title: "安全情景",
        instructions: "请阅读每个情景，说明您应该怎么做。点击\u{201C}显示答案\u{201D}查看最佳回应。",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "您接到一个陌生电话，对方说是美国国税局（IRS）的工作人员，要求您立即用礼品卡付款，否则会被逮捕。您应该怎么办？", options: [], correctAnswer: "立即挂断电话。美国国税局不会打电话要求用礼品卡付款。这是常见的电话诈骗，专门针对华人移民。可以拨打IRS官方电话1-800-829-1040核实。"),
            ExerciseItem(id: UUID(), prompt: "您收到一封电子邮件，说您的银行账户有问题，需要点击链接输入账号和密码。您应该怎么办？", options: [], correctAnswer: "不要点击链接。直接打电话给银行官方客服，或亲自去银行网点核实。这很可能是钓鱼诈骗邮件。"),
            ExerciseItem(id: UUID(), prompt: "您在家突然感到胸口疼痛、呼吸困难、左臂发麻。您应该怎么办？", options: [], correctAnswer: "立即拨打911。这可能是心脏病发作的症状，需要立即就医。不要自己开车去医院，等待救护车。"),
            ExerciseItem(id: UUID(), prompt: "有人打电话说您的孙子在外地出了车祸，需要您立即汇款帮忙。您应该怎么办？", options: [], correctAnswer: "不要立即汇款。先直接联系孙子本人或其父母核实情况。这是专门针对老年人和华人的\u{201C}祖父母诈骗\u{201D}。"),
            ExerciseItem(id: UUID(), prompt: "您在超市停车场发现有人跌倒在地无法起来。您应该怎么办？", options: [], correctAnswer: "立即拨打911报警求助。不要随意移动伤者以免加重伤情。保持在旁边陪伴安慰，等待救援人员到来。"),
            ExerciseItem(id: UUID(), prompt: "您收到短信说您赢得了一万美元的奖金，需要您先付$200的手续费才能领取。您应该怎么办？", options: [], correctAnswer: "不要付钱。这是典型的诈骗短信。真正的抽奖不需要提前付款。直接删除短信并忽略。"),
            ExerciseItem(id: UUID(), prompt: "您家厨房突然起火，火势越来越大。您应该怎么办？", options: [], correctAnswer: "立即离开房屋，不要试图扑灭大火。拨打911。在门外等候消防人员。不要回去拿贵重物品。"),
            ExerciseItem(id: UUID(), prompt: "有人自称是社会安全局工作人员，说您的社会安全号码涉及犯罪，需要您提供个人信息配合调查。您应该怎么办？", options: [], correctAnswer: "立即挂断电话。社会安全局不会打电话威胁您。这是专门针对移民的电话诈骗。可拨打社会安全局官方电话1-800-772-1213核实。"),
            ExerciseItem(id: UUID(), prompt: "您发现家中有煤气泄漏的气味。您应该怎么办？", options: [], correctAnswer: "不要开关任何电器或电灯。立即打开门窗通风，带所有人离开房屋。在室外拨打煤气公司紧急电话或911。"),
            ExerciseItem(id: UUID(), prompt: "您在网上看到一个招工广告，工资很高，但要求您先付$500的培训费。您应该怎么办？", options: [], correctAnswer: "不要付钱。正规雇主不会要求求职者先付培训费。这很可能是求职诈骗。可向美国联邦贸易委员会（FTC）举报。"),
            ExerciseItem(id: UUID(), prompt: "您走在街上，有人靠近说可以帮您办理绿卡或公民身份，只需付一定费用。您应该怎么办？", options: [], correctAnswer: "不要理会。移民申请必须通过官方渠道或持牌移民律师办理。可向美国移民局官网uscis.gov查询正规流程。"),
            ExerciseItem(id: UUID(), prompt: "您家中的烟雾报警器深夜响起。您应该怎么办？", options: [], correctAnswer: "立即叫醒家人，摸门把手如果不烫则打开门离开。不要乘坐电梯。在室外拨打911。事先约好家人集合地点。"),
            ExerciseItem(id: UUID(), prompt: "有人敲门自称是电力公司员工，要进入您家检查电表。您应该怎么办？", options: [], correctAnswer: "要求对方出示工作证件，并致电力公司官方号码核实是否有预约上门服务。不要让身份不明的人进入家中。"),
            ExerciseItem(id: UUID(), prompt: "您在开车时突然感到头晕眼花、视线模糊。您应该怎么办？", options: [], correctAnswer: "立即安全靠边停车，打开双闪警示灯。如果症状持续，拨打911。不要继续开车，这可能是中风或低血糖的症状。"),
            ExerciseItem(id: UUID(), prompt: "您收到一条微信消息，朋友说他在国外遇到紧急情况，需要您帮忙转账。您应该怎么办？", options: [], correctAnswer: "不要立即转账。通过电话直接联系朋友本人确认真实情况。朋友的账号可能被盗，这是常见的社交媒体诈骗。"),
            ExerciseItem(id: UUID(), prompt: "您在家中滑倒，感觉脚踝疼痛无法站立。您应该怎么办？", options: [], correctAnswer: "不要强行站立以免加重伤情。拨打911或请家人帮忙。用冰袋敷在受伤部位减轻肿胀，等待医疗帮助。"),
            ExerciseItem(id: UUID(), prompt: "您收到一封信，说您有一笔遗产需要领取，但需要提供您的银行账户信息。您应该怎么办？", options: [], correctAnswer: "不要提供任何银行信息。这是常见的遗产诈骗信件。真正的遗产事务需要通过律师和法院处理，不会要求提供银行账号。"),
            ExerciseItem(id: UUID(), prompt: "您在服药后感到头晕、恶心，症状越来越严重。您应该怎么办？", options: [], correctAnswer: "立即拨打911或让家人送您去急诊室。带上药瓶告诉医生您服用了什么药物及剂量。可拨打毒物控制中心1-800-222-1222。"),
            ExerciseItem(id: UUID(), prompt: "有人打电话说您的医疗保险即将到期，需要提供社会安全号码和银行信息来续保。您应该怎么办？", options: [], correctAnswer: "挂断电话，直接致电保险公司官方客服号码查询保险状态。任何要求在电话中提供社会安全号码和银行信息的都要高度警惕。"),
            ExerciseItem(id: UUID(), prompt: "您发现家中有蜘蛛网和水渍，怀疑家中有漏水。您应该怎么办？", options: [], correctAnswer: "联系房东或物业管理公司报告问题。如果是自有房屋则联系持牌水管工检查维修。长期漏水可能导致霉菌生长影响健康。"),
            ExerciseItem(id: UUID(), prompt: "您在公共场所感到有人跟踪您。您应该怎么办？", options: [], correctAnswer: "不要回家，以免暴露住址。进入附近人多的商店或公共场所。拨打911报警。保持镇定，避免与跟踪者正面冲突。"),
            ExerciseItem(id: UUID(), prompt: "您的孙子在玩耍时吞下了一些不明物品。您应该怎么办？", options: [], correctAnswer: "立即拨打毒物控制中心1-800-222-1222或911。不要让孩子呕吐除非医疗人员指示。带上孩子吞下的物品或包装去医院。"),
            ExerciseItem(id: UUID(), prompt: "您在网上购物后发现信用卡出现了不认识的消费记录。您应该怎么办？", options: [], correctAnswer: "立即致电信用卡公司报告可疑消费并申请冻结卡片。申请更换新卡号。检查其他账户是否也有异常。向联邦贸易委员会ftc.gov报告身份盗窃。"),
            ExerciseItem(id: UUID(), prompt: "天气预报说附近有山火，您所在区域收到疏散警告。您应该怎么办？", options: [], correctAnswer: "立即按疏散指示离开，不要等待观望。带上重要证件、药物、手机充电器和换洗衣物。关闭家中电源煤气。前往指定避难所或联系家人。"),
            ExerciseItem(id: UUID(), prompt: "您独自在家时突然感到一侧身体无力，说话困难，脸部一侧下垂。您应该怎么办？", options: [], correctAnswer: "立即拨打911。这是中风的典型症状（FAST：脸部下垂、手臂无力、说话困难、立即拨打911）。中风需要在几小时内治疗，每分钟都很关键。")
        ]
    )

    // MARK: - Exercise 2: Time and Math (时间和数学) — 20 items
    private static let timeAndMath = Exercise(
        id: UUID(),
        title: "时间和数学",
        instructions: "请选择每道题的正确答案。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "现在是下午两点十五分，再过一个半小时是几点？", options: ["下午三点四十五分", "下午三点十五分", "下午四点", "下午三点三十分"], correctAnswer: "下午三点四十五分"),
            ExerciseItem(id: UUID(), prompt: "您的医生预约在上午十点三十分，您需要提前二十分钟到达填写表格。您最晚几点出门，如果开车需要三十五分钟？", options: ["上午九点三十五分", "上午九点五十分", "上午十点", "上午九点十五分"], correctAnswer: "上午九点三十五分"),
            ExerciseItem(id: UUID(), prompt: "您买了三样东西分别是$15.99、$8.50和$3.75，付了$30，应该找回多少钱？", options: ["$1.76", "$2.76", "$0.76", "$3.76"], correctAnswer: "$1.76"),
            ExerciseItem(id: UUID(), prompt: "您的租金每月$1,350，房东要求您付第一个月和最后一个月的租金加上$500押金。您需要准备多少钱？", options: ["$3,200", "$2,700", "$2,200", "$3,700"], correctAnswer: "$3,200"),
            ExerciseItem(id: UUID(), prompt: "药瓶说明每六小时服用一次，早上八点服了第一次，下一次应该几点服？", options: ["下午两点", "下午三点", "中午十二点", "下午一点"], correctAnswer: "下午两点"),
            ExerciseItem(id: UUID(), prompt: "您从旧金山飞往北京，飞行时间约十一小时。旧金山时间早上九点出发，到达北京时旧金山是几点？", options: ["晚上八点", "晚上十点", "晚上九点", "次日早上七点"], correctAnswer: "晚上八点"),
            ExerciseItem(id: UUID(), prompt: "超市的鸡腿每磅$2.49，您买了三磅半，大约需要多少钱？", options: ["约$8.72", "约$7.47", "约$9.97", "约$6.22"], correctAnswer: "约$8.72"),
            ExerciseItem(id: UUID(), prompt: "您每周工作三十二小时，时薪$17.50，税前每周收入是多少？", options: ["$560", "$490", "$630", "$525"], correctAnswer: "$560"),
            ExerciseItem(id: UUID(), prompt: "您在餐厅吃饭，账单是$67.80，想给18%的小费，总共应该付多少？", options: ["约$80", "约$75", "约$85", "约$70"], correctAnswer: "约$80"),
            ExerciseItem(id: UUID(), prompt: "您的汽车保险每半年付一次，每次$486。平均每个月的保险费是多少？", options: ["$81", "$97", "$243", "$162"], correctAnswer: "$81"),
            ExerciseItem(id: UUID(), prompt: "今天是三月十五日，您的绿卡将在九十天后到期。到期日是哪天？", options: ["六月十三日", "六月十五日", "六月三十日", "七月一日"], correctAnswer: "六月十三日"),
            ExerciseItem(id: UUID(), prompt: "您汇款给中国家人，手续费是汇款金额的3%，您想汇$500，实际需要付多少？", options: ["$515", "$503", "$530", "$510"], correctAnswer: "$515"),
            ExerciseItem(id: UUID(), prompt: "超市苹果原价每磅$2.99，现在打八折，现价是多少？", options: ["$2.39", "$2.49", "$2.19", "$2.59"], correctAnswer: "$2.39"),
            ExerciseItem(id: UUID(), prompt: "您乘坐公共汽车，单程票价$2.50，一个月工作日来回乘车（按二十二个工作日计算），一个月交通费是多少？", options: ["$110", "$55", "$100", "$88"], correctAnswer: "$110"),
            ExerciseItem(id: UUID(), prompt: "您的电话套餐每月$45，网络套餐每月$65，有线电视每月$89，每月通讯总费用是多少？", options: ["$199", "$189", "$209", "$179"], correctAnswer: "$199"),
            ExerciseItem(id: UUID(), prompt: "北京时间比洛杉矶时间快十六小时。洛杉矶是周一早上八点，北京现在是什么时间？", options: ["周二零点", "周一晚上十一点", "周二早上八点", "周一下午四点"], correctAnswer: "周二零点"),
            ExerciseItem(id: UUID(), prompt: "您的处方药每瓶三十片，每天服两片，医生给您开了九十天的药量，您需要几瓶药？", options: ["6瓶", "3瓶", "9瓶", "4瓶"], correctAnswer: "6瓶"),
            ExerciseItem(id: UUID(), prompt: "您买了一张$50的超市礼品卡送给朋友，买了三张，一共花了多少钱？", options: ["$150", "$100", "$200", "$175"], correctAnswer: "$150"),
            ExerciseItem(id: UUID(), prompt: "您的体重是68公斤，换算成磅大约是多少（1公斤约等于2.2磅）？", options: ["约150磅", "约136磅", "约160磅", "约145磅"], correctAnswer: "约150磅"),
            ExerciseItem(id: UUID(), prompt: "您准备在加州申报收入税，您去年的总收入是$42,000，标准扣除额是$13,850，应税收入是多少？", options: ["$28,150", "$30,000", "$35,000", "$25,000"], correctAnswer: "$28,150")
        ]
    )

    // MARK: - Exercise 3: Grocery Shopping Best Value (购物比价) — 13 items
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "购物比价",
        instructions: "您在加州太平洋牧场超市购物，预算$60。请为清单上的每件商品选择最划算的选项。",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "大米（您需要买大米）", options: ["茉莉香米 5磅装 $5.99", "茉莉香米 25磅装 $18.99"], correctAnswer: "茉莉香米 25磅装 $18.99"),
            ExerciseItem(id: UUID(), prompt: "鸡蛋（您需要买鸡蛋）", options: ["散养鸡蛋 6个装 $4.99", "普通鸡蛋 18个装 $5.49"], correctAnswer: "普通鸡蛋 18个装 $5.49"),
            ExerciseItem(id: UUID(), prompt: "豆腐（您需要买豆腐）", options: ["有机嫩豆腐 14盎司 $2.99", "普通嫩豆腐 2块装 $3.49"], correctAnswer: "普通嫩豆腐 2块装 $3.49"),
            ExerciseItem(id: UUID(), prompt: "食用油（您需要买食用油）", options: ["花生油 16盎司 $4.99", "花生油 64盎司 $10.99"], correctAnswer: "花生油 64盎司 $10.99"),
            ExerciseItem(id: UUID(), prompt: "酱油（您需要买酱油）", options: ["生抽酱油 10盎司 $2.49", "生抽酱油 33盎司 $4.99"], correctAnswer: "生抽酱油 33盎司 $4.99"),
            ExerciseItem(id: UUID(), prompt: "青菜（您需要买蔬菜）", options: ["有机菠菜 5盎司袋装 $3.99", "新鲜菠菜散装 每磅$1.99 买两磅"], correctAnswer: "新鲜菠菜散装 每磅$1.99 买两磅"),
            ExerciseItem(id: UUID(), prompt: "猪肉（您需要买猪肉）", options: ["猪五花肉 每磅$4.99 买两磅", "猪肩肉 5磅家庭装 $12.99"], correctAnswer: "猪肩肉 5磅家庭装 $12.99"),
            ExerciseItem(id: UUID(), prompt: "面条（您需要买面条）", options: ["新鲜拉面 1磅 $2.49", "干面条 5磅装 $5.99"], correctAnswer: "干面条 5磅装 $5.99"),
            ExerciseItem(id: UUID(), prompt: "橙子（您需要买橙子）", options: ["脐橙 单个 $0.99", "脐橙 5磅袋装 $3.99"], correctAnswer: "脐橙 5磅袋装 $3.99"),
            ExerciseItem(id: UUID(), prompt: "绿茶（您需要买绿茶）", options: ["绿茶 20包装 $3.49", "绿茶 100包装 $8.99"], correctAnswer: "绿茶 100包装 $8.99"),
            ExerciseItem(id: UUID(), prompt: "洗洁精（您需要买洗洁精）", options: ["品牌洗洁精 16盎司 $3.99", "超市自有品牌洗洁精 32盎司 $3.49"], correctAnswer: "超市自有品牌洗洁精 32盎司 $3.49"),
            ExerciseItem(id: UUID(), prompt: "鸡肉（您需要买鸡肉）", options: ["鸡胸肉 每磅$3.99 买两磅", "全鸡 约4磅 每磅$1.99"], correctAnswer: "全鸡 约4磅 每磅$1.99"),
            ExerciseItem(id: UUID(), prompt: "卫生纸（您需要买卫生纸）", options: ["卫生纸 4卷装 $3.99", "卫生纸 12卷装 $8.99"], correctAnswer: "卫生纸 12卷装 $8.99")
        ]
    )

    // MARK: - Exercise 4: Functional Writing (实用写作) — 8 items
    private static let functionalWriting = Exercise(
        id: UUID(),
        title: "实用写作",
        instructions: "请根据每个提示写出您的回应。点击\u{201C}显示答案\u{201D}查看示例答案。",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "请给您的房东写一张便条，告诉他您家浴室的水龙头漏水已经三天了，需要尽快维修。请写明您方便接受维修的时间。", options: [], correctAnswer: "尊敬的房东、您好。我想通知您，我家浴室的水龙头已经漏水三天了，情况越来越严重，需要尽快安排维修。我在工作日下午两点到五点或周末全天都方便，请尽快与我联系安排维修时间。谢谢您的关注。您的租户敬上。"),
            ExerciseItem(id: UUID(), prompt: "请给您孩子的学校老师写一张请假条，说明您的孩子因为有医生预约，需要在周三下午两点早退。", options: [], correctAnswer: "尊敬的老师、您好。我想告知您，我的孩子本周三下午两点有医生预约，需要提前离校。我会在下午一点五十分到学校接他/她。如有任何问题请联系我。谢谢您的理解与配合。家长敬上。"),
            ExerciseItem(id: UUID(), prompt: "请用英文给您的家庭医生诊所写一封简短的邮件，要求预约下个月的年度体检。请写出您方便的时间和联系方式。", options: [], correctAnswer: "Dear Dr. [Name]'s Office, I would like to schedule my annual physical exam for next month. I am available on weekday mornings or Saturday afternoons. Please contact me at [phone number] or [email] to confirm the appointment. Thank you very much. Sincerely, [Your Name]"),
            ExerciseItem(id: UUID(), prompt: "请给在中国的父母写一张微信留言，告诉他们您在美国一切安好，最近的生活情况，并询问他们的身体健康。", options: [], correctAnswer: "爸爸妈妈，你们好！我在这边一切都好，请放心。最近天气不错，我每天都坚持散步锻炼身体。工作和生活都很顺利，孩子们也都很好。你们那边天气怎么样？身体都好吗？记得按时吃药，有空多出去走走。我们很快会打视频电话的，到时候详细聊。爱你们的[名字]。"),
            ExerciseItem(id: UUID(), prompt: "请写一张便条给您的邻居，感谢他们上周在您生病时帮您取快递和买了药，表达您的感激之情。", options: [], correctAnswer: "亲爱的邻居、您好。我想借此机会真诚地感谢您上周在我生病期间帮我取快递和买药。您的善意让我非常感动，在异乡能有您这样热心的邻居真是我的幸运。等我完全康复后，我想邀请您来家里吃顿饭，略表心意。再次感谢您的帮助。您的邻居敬上。"),
            ExerciseItem(id: UUID(), prompt: "请用英文填写一张简单的社区中心活动报名表，包括您的姓名、年龄、联系电话、您想参加的活动（太极拳班）以及您的紧急联系人信息。", options: [], correctAnswer: "Name: [Your Name] Age: [Your Age] Phone: [Your Phone Number] Activity: Tai Chi Class Emergency Contact: [Name and Phone Number] I am interested in joining the Tai Chi class at the community center. Please contact me with more information about class schedules and fees. Thank you."),
            ExerciseItem(id: UUID(), prompt: "请给您的孙子写一张生日卡，用中文表达您对他的祝福和爱，并给他一些人生建议。", options: [], correctAnswer: "亲爱的[孙子名字]，生日快乐！今天是你的生日，爷爷奶奶/外公外婆非常想念你。希望你健康成长、学习进步、每天都开开心心。记住无论走到哪里，家人永远是你最坚强的后盾。要努力学习，善待他人，不忘自己的中国文化根源。爱你的爷爷奶奶/外公外婆。"),
            ExerciseItem(id: UUID(), prompt: "请写一张便条给您的看护或家庭助手，说明您今天外出就医，列出您的午餐在冰箱里，并说明您大约几点回来，以及紧急情况下如何联系您。", options: [], correctAnswer: "亲爱的[助手姓名]，您好。我今天上午十点有医生预约，大约下午一点回来。您的午餐在冰箱里，是昨晚剩下的炒饭，微波炉加热两分钟即可。如果有任何紧急情况，请拨打我的手机[电话号码]，或联系我的女儿[姓名]，她的电话是[电话号码]。谢谢您的照顾。[您的名字]。")
        ]
    )

    // MARK: - Exercise 5: Cooking Steps (烹饪步骤) — 10 items
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "烹饪步骤",
        instructions: "这些步骤顺序已打乱。请将它们排列成正确的顺序。",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "炒蛋炒饭的步骤",
                options: ["准备隔夜米饭、鸡蛋和葱", "锅中加油烧热", "打散鸡蛋倒入锅中快速翻炒", "加入米饭大火翻炒均匀", "加入葱花、酱油和盐调味", "翻炒均匀后装盘享用"],
                correctAnswer: "准备隔夜米饭、鸡蛋和葱 | 锅中加油烧热 | 打散鸡蛋倒入锅中快速翻炒 | 加入米饭大火翻炒均匀 | 加入葱花、酱油和盐调味 | 翻炒均匀后装盘享用"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "包猪肉白菜饺子的步骤",
                options: ["准备猪肉馅、白菜、面粉和调料", "白菜切碎加盐腌出水分后挤干", "猪肉白菜混合加调料拌成馅料", "和面揉成面团静置三十分钟", "擀皮包入馅料捏紧成饺子形状", "沸水下饺子煮熟后捞出蘸醋享用"],
                correctAnswer: "准备猪肉馅、白菜、面粉和调料 | 白菜切碎加盐腌出水分后挤干 | 猪肉白菜混合加调料拌成馅料 | 和面揉成面团静置三十分钟 | 擀皮包入馅料捏紧成饺子形状 | 沸水下饺子煮熟后捞出蘸醋享用"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮皮蛋瘦肉粥的步骤",
                options: ["准备大米、猪瘦肉、皮蛋和姜片", "大米洗净加水浸泡三十分钟", "猪肉切丝加盐和淀粉腌制", "锅中加足量水烧开后下米", "小火慢煮三十分钟至米烂粥稠", "加入肉丝皮蛋姜片煮熟调味装碗"],
                correctAnswer: "准备大米、猪瘦肉、皮蛋和姜片 | 大米洗净加水浸泡三十分钟 | 猪肉切丝加盐和淀粉腌制 | 锅中加足量水烧开后下米 | 小火慢煮三十分钟至米烂粥稠 | 加入肉丝皮蛋姜片煮熟调味装碗"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做红烧肉的步骤",
                options: ["准备五花肉、酱油、糖、料酒和香料", "五花肉切块冷水下锅焯水去腥", "锅中炒糖色至焦糖色", "放入肉块翻炒上色", "加入调料和热水大火烧开", "转小火慢炖四十分钟至肉软收汁"],
                correctAnswer: "准备五花肉、酱油、糖、料酒和香料 | 五花肉切块冷水下锅焯水去腥 | 锅中炒糖色至焦糖色 | 放入肉块翻炒上色 | 加入调料和热水大火烧开 | 转小火慢炖四十分钟至肉软收汁"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "泡一壶中国绿茶的步骤",
                options: ["准备绿茶叶、茶壶和茶杯", "烧水至约八十度不要沸腾", "用热水温壶温杯后倒掉", "将适量茶叶放入茶壶中", "倒入热水第一泡静置三十秒后倒掉", "再次注水静置一分钟后倒入杯中饮用"],
                correctAnswer: "准备绿茶叶、茶壶和茶杯 | 烧水至约八十度不要沸腾 | 用热水温壶温杯后倒掉 | 将适量茶叶放入茶壶中 | 倒入热水第一泡静置三十秒后倒掉 | 再次注水静置一分钟后倒入杯中饮用"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做凉拌黄瓜的步骤",
                options: ["准备黄瓜、大蒜、醋、酱油、辣椒油和盐", "黄瓜洗净用刀拍碎后切段", "大蒜切末备用", "将黄瓜放入碗中加盐腌十分钟", "倒掉多余水分加入蒜末", "加入醋酱油辣椒油和麻油拌匀装盘"],
                correctAnswer: "准备黄瓜、大蒜、醋、酱油、辣椒油和盐 | 黄瓜洗净用刀拍碎后切段 | 大蒜切末备用 | 将黄瓜放入碗中加盐腌十分钟 | 倒掉多余水分加入蒜末 | 加入醋酱油辣椒油和麻油拌匀装盘"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做番茄炒鸡蛋的步骤",
                options: ["准备番茄、鸡蛋、葱、盐和糖", "鸡蛋打散加少许盐搅匀", "番茄切块葱切段备用", "锅中热油先炒鸡蛋至半熟盛出", "原锅加油爆香葱段后加番茄翻炒", "加入鸡蛋一起翻炒加盐糖调味装盘"],
                correctAnswer: "准备番茄、鸡蛋、葱、盐和糖 | 鸡蛋打散加少许盐搅匀 | 番茄切块葱切段备用 | 锅中热油先炒鸡蛋至半熟盛出 | 原锅加油爆香葱段后加番茄翻炒 | 加入鸡蛋一起翻炒加盐糖调味装盘"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "煮一锅简单的蔬菜汤的步骤",
                options: ["准备土豆、胡萝卜、洋葱和鸡汤块", "蔬菜洗净切成小块备用", "锅中加油炒香洋葱", "加入土豆和胡萝卜翻炒两分钟", "加入适量清水和鸡汤块烧开", "小火煮二十分钟至蔬菜熟透加盐调味"],
                correctAnswer: "准备土豆、胡萝卜、洋葱和鸡汤块 | 蔬菜洗净切成小块备用 | 锅中加油炒香洋葱 | 加入土豆和胡萝卜翻炒两分钟 | 加入适量清水和鸡汤块烧开 | 小火煮二十分钟至蔬菜熟透加盐调味"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做简单煎鸡胸肉的步骤",
                options: ["准备鸡胸肉、大蒜、迷迭香、盐和胡椒", "鸡胸肉洗净用纸巾擦干", "两面均匀撒上盐胡椒和香料腌十五分钟", "平底锅加少量油中火烧热", "放入鸡胸肉每面煎五到六分钟", "静置五分钟后切片装盘"],
                correctAnswer: "准备鸡胸肉、大蒜、迷迭香、盐和胡椒 | 鸡胸肉洗净用纸巾擦干 | 两面均匀撒上盐胡椒和香料腌十五分钟 | 平底锅加少量油中火烧热 | 放入鸡胸肉每面煎五到六分钟 | 静置五分钟后切片装盘"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "做汤圆的步骤",
                options: ["准备糯米粉、芝麻馅和温水", "糯米粉加温水揉成软硬适中的面团", "将面团搓成长条分成小剂子", "取一个剂子压扁包入芝麻馅收口搓圆", "锅中烧开水后下汤圆", "汤圆浮起后再煮两分钟捞出装碗"],
                correctAnswer: "准备糯米粉、芝麻馅和温水 | 糯米粉加温水揉成软硬适中的面团 | 将面团搓成长条分成小剂子 | 取一个剂子压扁包入芝麻馅收口搓圆 | 锅中烧开水后下汤圆 | 汤圆浮起后再煮两分钟捞出装碗"
            )
        ]
    )

    // MARK: - Exercise 6: Daily Life Skills (日常生活技能) — 15 items
    private static let dailyLifeSkills = Exercise(
        id: UUID(),
        title: "日常生活技能",
        instructions: "请描述如何完成每项任务：需要准备什么、主要步骤是什么，以及需要注意什么。",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "请描述您在加州如何乘坐公共汽车去超市。需要准备什么？怎么知道坐哪路车？怎么付车费？", options: [], correctAnswer: "查看谷歌地图或公交App找到路线和车次。准备零钱或交通卡。在站牌处等车、上车投币或刷卡付费，通常单程$1.50至$2.50。注意到站广播或显示屏，提前按铃准备下车。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在美国用微信给中国家人汇款，或者如何通过银行电汇。需要哪些信息？大约需要多长时间？", options: [], correctAnswer: "微信汇款需要绑定美国银行卡、输入对方微信账号和金额，注意汇率和手续费。银行电汇需要对方的银行名称、账号、路由号码（SWIFT码）。通常需要三到五个工作日到账，手续费约$15至$45。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在加州续签驾照。需要带哪些证件？去哪里办理？大概需要多长时间？", options: [], correctAnswer: "前往DMV办理，建议提前网上预约节省等待时间。携带现有驾照、身份证明文件、居住地址证明。需要通过视力测试，可能需要笔试。费用约$36至$38。建议驾照到期前六十天办理。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在加州申请低收入家庭医疗保险Medi-Cal。谁有资格申请？需要哪些文件？去哪里申请？", options: [], correctAnswer: "收入低于一定标准的加州居民可申请。需要准备身份证件、收入证明、居住证明。可登录coveredca.com网上申请，或前往当地社会服务机构协助办理。也可拨打1-800-300-1506咨询。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在美国看家庭医生。第一次去需要做什么准备？看诊时如何与医生沟通？看完病后需要做什么？", options: [], correctAnswer: "提前预约并确认保险是否在网络内。携带保险卡、身份证件和药物清单。如有语言困难可要求提供翻译服务（免费）。看诊时清楚描述症状、询问用药说明。之后按时取药、遵医嘱复诊。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在加州办理图书馆借书证。需要什么条件？可以借哪些东西？图书馆还提供哪些免费服务？", options: [], correctAnswer: "携带有效身份证件和居住地址证明前往当地公共图书馆免费办理。可借书籍、DVD、有声书等。许多图书馆还提供免费网络、电脑使用、英语课程、儿童活动和社区活动等服务。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在美国处理收到的英文账单。如何看懂账单内容？如何确认金额正确？有哪些付款方式？", options: [], correctAnswer: "仔细阅读账单日期、到期日、账单金额和明细。核实服务内容是否正确，如有疑问致电客服。付款方式包括网上银行转账、支票邮寄、电话付款或亲自到营业点付款。保留付款记录至少一年。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在加州注册成为选民并参加投票。谁有资格？如何注册？如何参加投票？", options: [], correctAnswer: "美国公民、年满十八岁、加州居民可注册投票。登录registertovote.ca.gov网上注册，或前往DMV、图书馆领取表格。收到选票后可邮寄或亲自投票。每次选举前都会收到选民指南，可了解候选人和议案信息。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在美国申请社会安全退休金福利。什么时候可以申请？需要哪些条件？如何申请？", options: [], correctAnswer: "最早六十二岁可申请，但全额退休年龄是六十七岁（1960年以后出生者）。需要有足够的工作积分（约四十积分）。可登录ssa.gov网上申请，或拨打1-800-772-1213，或前往当地社会安全局办公室申请。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何妥善保管重要证件。哪些证件最重要？应该如何存放？如果丢失应该怎么办？", options: [], correctAnswer: "重要证件包括护照、绿卡、社会安全卡、驾照、出生证明、保险卡。应存放在防火保险箱中，并扫描备份存在安全的电子设备或云端。如丢失护照联系中国领事馆，绿卡丢失申请I-90表格补办，社会安全卡丢失前往社会安全局补办。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在加州找到可靠的中文社区资源和服务。有哪些地方可以获得帮助？如何联系这些机构？", options: [], correctAnswer: "可联系当地华人服务中心、唐人街社区机构、图书馆、社区中心。许多机构提供免费或低价的语言协助、法律咨询、健康服务、移民帮助。可通过211服务热线（拨打211）查询当地社区资源，许多机构提供中文服务。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何准备应对加州的自然灾害，例如地震或山火。家中应该准备什么？发生紧急情况时应该怎么做？", options: [], correctAnswer: "准备紧急物资包括：三天的食物和饮水、急救药品、手电筒、电池、收音机、重要证件复印件、现金和急救药物。地震时蹲下抓紧掩护。山火疏散立即离开不要等待，走指定疏散路线前往避难所。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在美国照顾好自己的心理健康。有哪些免费或低价的心理健康资源？如何克服语言障碍寻求帮助？", options: [], correctAnswer: "可联系家庭医生转介心理咨询。许多社区提供免费中文心理健康服务。可拨打988心理健康危机热线（有中文服务）。加强与家人朋友的联系、参加社区活动和宗教团体也很重要。不要把心理问题视为耻辱，及时寻求帮助。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何在美国建立良好的信用记录。信用记录为什么重要？如何开始建立信用？应该避免哪些错误？", options: [], correctAnswer: "信用记录影响租房、贷款、某些工作申请。可从申请一张信用卡开始，每月按时全额还款。不要超过信用额度的30%。避免同时申请多张信用卡。定期在annualcreditreport.com免费查看信用报告，发现错误及时纠正。"),
            ExerciseItem(id: UUID(), prompt: "请描述如何帮助年迈的父母或亲属适应美国生活。有哪些特别的挑战？有哪些资源可以帮助老年移民？", options: [], correctAnswer: "主要挑战包括语言障碍、文化差异、社交孤立和医疗问题。可寻找华人老年中心、提供中文服务的日托中心。帮助父母注册Medicare和Medi-Cal。联系当地老龄化服务机构（Area Agency on Aging）获取送餐、交通和居家护理等服务。鼓励参加社区太极拳班等活动扩大社交圈。")
        ]
    )
}
