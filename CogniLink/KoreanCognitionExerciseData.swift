import Foundation

struct KoreanCognitionExerciseData {

    static let allExercises: [Exercise] = [
        figurativeLanguageIdioms,
        storyRecall,
        numberSequences,
        causeAndEffect,
        whatEmotionIsThis,
        whatsWrongHere,
        yesNoGeneralKnowledge,
        wordAnalogies
    
    ]

    // MARK: - Exercise 23: Figurative Language — Idioms
    private static let figurativeLanguageIdioms = Exercise(
        id: UUID(),
        title: "관용구와 비유적 표현",
        instructions: "제시된 관용적 표현의 올바른 뜻을 고르세요.",
        section: .cognition,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “식은 죽 먹기”",
                options: ["매우 쉬운 일", "차가운 음식을 먹는 것", "귀찮은 일", "어려운 문제"],
                correctAnswer: "매우 쉬운 일",
                explanation: "‘식은 죽 먹기’는 아주 하기 쉬운 일을 비유적으로 나타냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “발이 넓다”",
                options: ["아는 사람이 많다", "신발 사이즈가 크다", "많이 걷다", "사교성이 부족하다"],
                correctAnswer: "아는 사람이 많다",
                explanation: "사교 범위가 넓어 아는 사람이 많음을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “귀가 얇다”",
                options: ["남의 말을 잘 믿는다", "귀가 작다", "남의 말을 잘 안 듣는다", "소리를 잘 듣는다"],
                correctAnswer: "남의 말을 잘 믿는다",
                explanation: "주관이 약해 다른 사람의 말에 쉽게 흔들림을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “피땀 흘리다”",
                options: ["몹시 노력하다", "몸이 아프다", "상처를 입다", "운동을 열심히 하다"],
                correctAnswer: "몹시 노력하다",
                explanation: "온 힘과 노력을 다해 애쓰는 것을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “눈을 감아주다”",
                options: ["허물을 덮어주다", "잠을 자다", "상대를 모른 척하다", "눈이 피로하다"],
                correctAnswer: "허물을 덮어주다",
                explanation: "상대의 과실이나 잘못을 보고도 모르는 체해 줌을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “간이 부었다”",
                options: ["매우 대담하다", "몸에 병이 생겼다", "소심하다", "성격이 급하다"],
                correctAnswer: "매우 대담하다",
                explanation: "겁이 없고 매우 대담해지거나 무모하게 행동함을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “가슴이 아프다”",
                options: ["슬프거나 안타깝다", "심장 질환이 있다", "화를 낸다", "걱정이 없다"],
                correctAnswer: "슬프거나 안타깝다",
                explanation: "마음이 슬프거나 안타까울 때 쓰는 비유적 표현입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “배가 아프다”",
                options: ["남이 잘되어 시기하다", "복통이 있다", "배가 고프다", "화를 내다"],
                correctAnswer: "남이 잘되어 시기하다",
                explanation: "사촌이 땅을 사면 배가 아프듯 남이 잘되는 것에 질투함을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “콧대가 높다”",
                options: ["거만하다", "코가 크다", "얼굴이 잘생겼다", "자존심이 없다"],
                correctAnswer: "거만하다",
                explanation: "뽐내고 거만한 태도를 취함을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “머리를 맞대다”",
                options: ["의논하다", "서로 싸우다", "잠을 자다", "생각을 안 하다"],
                correctAnswer: "의논하다",
                explanation: "어떤 일을 해결하기 위해 함께 머리를 맞대고 의논함을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “손을 씻다”",
                options: ["나쁜 일을 그만두다", "손의 위생을 챙기다", "일을 시작하다", "친구와 화해하다"],
                correctAnswer: "나쁜 일을 그만두다",
                explanation: "이전에 하던 부정적이거나 부정한 일을 그만두고 청산함을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “낯을 가리다”",
                options: ["낯선 사람을 부끄러워하다", "얼굴을 감추다", "친구를 피하다", "성격이 밝다"],
                correctAnswer: "낯선 사람을 부끄러워하다",
                explanation: "낯선 사람 대하기를 꺼리고 부끄러워함을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “발등에 불이 떨어지다”",
                options: ["일이 매우 급해지다", "화상을 입다", "장난을 치다", "준비를 미리 하다"],
                correctAnswer: "일이 매우 급해지다",
                explanation: "일이 눈앞에 닥쳐서 매우 다급하게 됨을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “입이 무겁다”",
                options: ["비밀을 잘 지킨다", "말이 느리다", "말수가 적다", "입이 무겁게 느껴진다"],
                correctAnswer: "비밀을 잘 지킨다",
                explanation: "비밀을 잘 지키고 다른 사람에게 전하지 않음을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “가시방석에 앉다”",
                options: ["마음이 매우 불안하다", "뾰족한 곳에 앉다", "벌을 받다", "편안하게 있다"],
                correctAnswer: "마음이 매우 불안하다",
                explanation: "불안하고 마음이 매우 거북한 자리에 처해 있음을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “등 밑이 어둡다”",
                options: ["가까운 곳의 일을 오히려 잘 모른다", "방 안에 불이 꺼져 어둡다", "멀리 있는 사람이 잘 안 보인다", "공부를 열심히 하지 않는다"],
                correctAnswer: "가까운 곳의 일을 오히려 잘 모른다",
                explanation: "'등 밑이 어둡다'는 등잔 밑이 어두운 것처럼 가까이 있는 것을 도리어 찾지 못하거나 잘 모름을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “우물 안 개구리”",
                options: ["넓은 세상의 형편을 모르는 사람", "우물 속을 청소하는 개구리", "수영을 아주 잘하는 사람", "욕심이 많고 심술궂은 사람"],
                correctAnswer: "넓은 세상의 형편을 모르는 사람",
                explanation: "'우물 안 개구리'는 소견이나 보고 들은 것이 좁아 넓은 세상의 형편을 잘 모르는 사람을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “누워서 떡 먹기”",
                options: ["매우 하기 쉬운 일", "식사 후 바로 눕는 습관", "불편한 자세로 떡을 먹는 일", "맛있는 음식을 아껴 먹는 것"],
                correctAnswer: "매우 하기 쉬운 일",
                explanation: "'누워서 떡 먹기'는 일이 매우 쉽고 수월함을 비유적으로 나타냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “쇠뿔도 단김에 빼라”",
                options: ["일은 기회가 왔을 때 바로 처리해야 한다", "소를 정성껏 돌봐야 한다", "동물 학대를 멈추어야 한다", "급할수록 천천히 해야 한다"],
                correctAnswer: "일은 기회가 왔을 때 바로 처리해야 한다",
                explanation: "'쇠뿔도 단김에 빼라'는 어떤 일을 하려고 마음먹었으면 미루지 말고 곧바로 해치워야 함을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “벼는 익을수록 고개를 숙인다”",
                options: ["교양과 덕이 쌓일수록 겸손해진다", "가을이 되면 허리가 아프다", "벼농사를 지을 때 수확을 늦게 한다", "나이가 들수록 피곤해진다"],
                correctAnswer: "교양과 덕이 쌓일수록 겸손해진다",
                explanation: "학식이나 덕망이 높은 사람일수록 자만하지 않고 겸손하게 행동함을 비유적으로 이르는 말입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “금강산도 식후경”",
                options: ["아무리 좋은 일이라도 배가 불러야 즐길 수 있다", "금강산에 가기 전에 맛집을 찾아본다", "여행을 가기 위해 돈을 아낀다", "식사를 하기 전에 경치를 구경한다"],
                correctAnswer: "아무리 좋은 일이라도 배가 불러야 즐길 수 있다",
                explanation: "아무리 재미있고 좋은 일이라도 배가 고프면 즐겁지 않으므로 먹는 것이 가장 중요함을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “원숭이도 나무에서 떨어진다”",
                options: ["아무리 잘하는 사람도 실수를 할 때가 있다", "동물원에서 원숭이를 잘 보호해야 한다", "나무가 썩어 부러지기 쉽다", "아무 준비 없이 일을 시작하면 안 된다"],
                correctAnswer: "아무리 잘하는 사람도 실수를 할 때가 있다",
                explanation: "아무리 재주가 있고 익숙한 사람이라도 실수할 때가 있음을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “가는 말이 고와야 오는 말이 곱다”",
                options: ["남에게 말을 다정하게 해야 상대방도 나에게 친절하다", "말을 할 때는 속도를 천천히 해야 한다", "외국어를 배울 때 예의를 갖춰야 한다", "친한 사이일수록 조심해서 말해야 한다"],
                correctAnswer: "남에게 말을 다정하게 해야 상대방도 나에게 친절하다",
                explanation: "자신이 남에게 친절하고 다정하게 대해야 남도 자신에게 그렇게 대한다는 말입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “티끌 모아 태산”",
                options: ["작은 것도 모이면 나중에 큰 것이 된다", "먼지가 쌓여 집이 더러워진다", "돈을 함부로 쓰면 가난해진다", "산에 올라갈 때는 조심해야 한다"],
                correctAnswer: "작은 것도 모이면 나중에 큰 것이 된다",
                explanation: "아무리 작은 것이라도 조금씩 계속 모으면 나중에 큰 덩어리가 됨을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “밑 빠진 독에 물 붓기”",
                options: ["아무리 노력해도 보람이 없고 헛수고가 되는 일", "밑이 터진 그릇을 깨끗이 씻는 일", "가뭄에 논에 물을 대는 일", "쓸데없는 일에 시간을 낭비하다"],
                correctAnswer: "아무리 노력해도 보람이 없고 헛수고가 되는 일",
                explanation: "아무리 쏟아부어도 채워지지 않는 깨진 항아리처럼, 밑천이나 노력을 들여도 보람이 없는 일을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “소 잃고 외양간 고친다”",
                options: ["이미 일을 그르친 뒤에 뉘우치고 대책을 세운다", "소를 팔고 남은 돈으로 집을 수리한다", "외양간을 미리 튼튼하게 보수한다", "소를 잘 키우기 위해 환경을 정비한다"],
                correctAnswer: "이미 일을 그르친 뒤에 뉘우치고 대책을 세운다",
                explanation: "소를 도둑맞은 후에야 헛간을 고친다는 뜻으로, 이미 실패한 뒤에 대책을 세우는 헛수고를 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “서당 개 삼 년이면 풍월을 읊는다”",
                options: ["어떤 분야에 오래 있으면 자연스럽게 지식을 얻는다", "서당에서 키우는 개가 노래를 부른다", "오랜 시간 공부하면 누구나 현명해진다", "시를 짓는 공부는 삼 년 동안 해야 한다"],
                correctAnswer: "어떤 분야에 오래 있으면 자연스럽게 지식을 얻는다",
                explanation: "어떤 분야에 아는 지식이 없더라도 그 환경에 오래 머물면 어깨너머로 자연스럽게 지식이나 능력을 습득하게 됨을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “돌다리도 두들겨 보고 건너라”",
                options: ["아무리 잘 아는 일이라도 꼼꼼히 확인하고 조심해라", "다리가 튼튼한지 돌로 쳐서 확인해라", "길을 갈 때는 주변 경치를 잘 살펴라", "어려운 길을 갈 때는 도움을 청해라"],
                correctAnswer: "아무리 잘 아는 일이라도 꼼꼼히 확인하고 조심해라",
                explanation: "아주 튼튼해 보이는 돌다리조차 안전한지 두드려 보듯이, 잘 아는 일이라도 실수 없이 신중을 기하라는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “발을 벗고 나서다”",
                options: ["적극적으로 성심성의껏 돕다", "신발을 벗고 맨발로 걸어가다", "하던 일을 중단하고 도망치다", "남의 일에 쓸데없이 참견하다"],
                correctAnswer: "적극적으로 성심성의껏 돕다",
                explanation: "신발과 양말을 벗고 나설 만큼 어떤 일을 해결하기 위해 적극적이고 열정적으로 나섬을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “귀가 가렵다”",
                options: ["남이 내 말을 하고 있는 것 같다", "귀에 물이 들어가서 가렵다", "칭찬을 들어 부끄럽다", "귀에 병이 생겨 가렵다"],
                correctAnswer: "남이 내 말을 하고 있는 것 같다",
                explanation: "다른 사람이 어딘가에서 내 이야기를 하고 있을 때 흔히 하는 비유적 표현입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “손이 크다”",
                options: ["씀씀이가 넉넉하고 인심이 좋다", "신체 부위 중 손의 크기가 아주 크다", "일처리가 서투르고 실수가 많다", "물건을 훔치는 버릇이 있다"],
                correctAnswer: "씀씀이가 넉넉하고 인심이 좋다",
                explanation: "음식을 장만하거나 물건을 살 때 규모가 크고 아끼지 않는 씀씀이를 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “눈독을 들이다”",
                options: ["욕심을 내어 유심히 보다", "눈에 해로운 물질이 들어가다", "질투심에 화를 내다", "어떤 물건을 유심히 관찰하다"],
                correctAnswer: "욕심을 내어 유심히 보다",
                explanation: "마음에 드는 물건이나 대상을 차지하고 싶어서 욕심을 내어 쏘아보는 것을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “콧노래를 부르다”",
                options: [],
                correctAnswer: "기분이 아주 좋고 만족스럽다",
                explanation: "일이 잘 풀리거나 마음에 여유가 있어 콧노래를 부를 정도로 기쁜 상태를 나타냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “머리를 굴리다”",
                options: [],
                correctAnswer: "해결책을 얻기 위해 머리를 써서 꾀를 내다",
                explanation: "어떤 문제를 해결하기 위해 머리를 써서 꼼수를 부리거나 아이디어를 짜내는 행동을 비유합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "관용구의 뜻을 설명하세요: “발목을 잡다”",
                options: [],
                correctAnswer: "어떤 일이 진행되지 못하도록 방해하다",
                explanation: "남의 약점이나 어떤 요인이 걸림돌이 되어 일의 진행을 방해하고 속박함을 비유적으로 이르는 말입니다."
            )
        
        ]
    )

    // MARK: - Exercise 38: Story Recall
    private static let storyRecall = Exercise(
        id: UUID(),
        title: "스토리 리콜",
        instructions: "짧은 이야기를 읽고 그에 대한 질문에 답해 보세요.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "최수진이 집에 두고 온 것은?", options: ["그녀의 지갑", "그녀의 열쇠", "그녀의 쇼핑리스트", "그녀의 전화"], correctAnswer: "그녀의 지갑", explanation: "이야기에 따르면 그녀는 부엌 카운터에 지갑을 잊어버렸다고 합니다.", passage: "최수진은 우유와 빵을 사러 H마트에 갔습니다. 그녀는 부엌 카운터에 지갑을 잊어버렸습니다."),
            ExerciseItem(id: UUID(), prompt: "박지호는 어떤 물고기를 잡았나요?", options: ["송어", "연어", "베이스", "메기"], correctAnswer: "송어", explanation: "이야기에 따르면 그는 큰 송어를 잡았습니다.", passage: "박지호는 낚시를 하러 토요일에 일찍 일어났다. 그는 큰 송어를 잡았지만 너무 작아서 다시 던져야 했습니다."),
            ExerciseItem(id: UUID(), prompt: "김민준의 차는 무슨 색인가요?", options: ["블루", "노란색", "빨간색", "녹색"], correctAnswer: "블루", explanation: "김민준이 파란 차를 주차했다는 이야기가 나온다.", passage: "김민준은 그늘진 참나무 아래에 파란색 차를 주차했습니다. 그가 돌아왔을 때, 그는 차가 노란 나뭇잎으로 덮여 있는 것을 보았습니다."),
            ExerciseItem(id: UUID(), prompt: "이서연이 케이크에 촛불을 몇 개 켰나요?", options: ["10", "5개", "여덟", "12"], correctAnswer: "10", explanation: "이야기에는 그녀가 케이크 위에 빨간 양초 10개를 놓았다고 나와 있습니다.", passage: "이서연은 딸의 생일 파티를 위해 초콜릿 케이크를 구웠습니다. 그녀는 케이크 위에 빨간 양초 10개를 올려 놓았습니다."),
            ExerciseItem(id: UUID(), prompt: "김민준 형은 어디에 살아요?", options: ["뭐", "뉴욕", "보스턴", "마이애미"], correctAnswer: "뭐", explanation: "이야기에 따르면 그가 연구소에 있는 그의 형에게 소포를 보냈다고 합니다.", passage: "김민준은 부서에 있는 동생에게 소포를 보내기 위해 우체국으로 갔습니다. 점원은 화요일에 도착할 것이라고 말했습니다."),
            ExerciseItem(id: UUID(), prompt: "이서연의 새 운동화는 무슨 색인가요?", options: ["밝은 녹색", "블루", "빨간색", "블랙"], correctAnswer: "밝은 녹색", explanation: "이야기에 따르면 신발은 흰색 줄무늬가 있는 밝은 녹색입니다.", passage: "이서연은 어제 새 운동화를 샀습니다. 흰색 줄무늬가 있는 밝은 녹색입니다."),
            ExerciseItem(id: UUID(), prompt: "박지호는 어떤 색깔의 우산을 사용했나요?", options: ["노란색", "빨간색", "블루", "블랙"], correctAnswer: "노란색", explanation: "이야기에 따르면 그는 노란 우산을 열었습니다.", passage: "비가 내리기 시작했을 때 박지호는 공원을 산책하고 있었다. 그는 젖지 않으려고 노란 우산을 펴었습니다."),
            ExerciseItem(id: UUID(), prompt: "빵집은 무슨 요일에 문을 닫았나요?", options: ["월요일", "화요일", "수요일", "일요일"], correctAnswer: "월요일", explanation: "그 빵집은 월요일에 문을 닫았다고 하더군요.", passage: "현지 빵집은 수리를 위해 월요일에 문을 닫았습니다. 화요일 아침 6시에 다시 문을 열 계획이었습니다."),
            ExerciseItem(id: UUID(), prompt: "최수진은 왜 배관공을 불렀나요?", options: ["그녀의 싱크대가 새고 있었어요", "그녀의 난로가 고장났어요", "그녀의 불은 꺼졌어", "그녀의 문은 잠겨 있었어요"], correctAnswer: "그녀의 싱크대가 새고 있었어요", explanation: "이야기에 따르면 그녀는 부엌 싱크대에서 물이 새기 때문에 배관공을 불렀습니다.", passage: "최수진은 부엌 싱크대가 물이 새서 배관공을 불렀습니다. 배관공은 한 시간 후에 도착하여 파이프를 고쳤습니다."),
            ExerciseItem(id: UUID(), prompt: "김민준의 개 이름은 무엇입니까?", options: ["맥스", "버디", "찰리", "록키"], correctAnswer: "맥스", explanation: "김민준이 자신의 반려견 맥스를 산책시켰다는 이야기다.", passage: "김민준은 자신의 개 맥스를 산책시켰습니다. 맥스는 다람쥐를 보고 큰 소리로 짖었습니다."),
            ExerciseItem(id: UUID(), prompt: "이서연은 무슨 재료가 떨어졌나요?", options: ["당근", "감자", "양파", "셀러리"], correctAnswer: "당근", explanation: "이야기는 그녀가 당근이 부족하다는 것을 깨달았다고 말합니다.", passage: "이서연은 저녁으로 야채 수프를 만들고 있었습니다. 그녀는 당근이 부족하다는 것을 깨닫고 대신 감자를 사용했습니다."),
            ExerciseItem(id: UUID(), prompt: "박지호의 점심값은 얼마였나요?", options: ["15달러", "10달러", "20달러", "12달러"], correctAnswer: "15달러", explanation: "이야기에 따르면 총 비용은 15달러였습니다.", passage: "박지호는 점심으로 페퍼로니 피자와 탄산음료 한 병을 주문했다. 총 비용은 15달러였습니다."),
            ExerciseItem(id: UUID(), prompt: "최수진이 빌린 책은 어떤 주제였나요?", options: ["원예", "역사", "요리", "여행"], correctAnswer: "원예", explanation: "이야기에 따르면 그녀는 정원 가꾸기에 관한 책을 빌렸다고 합니다.", passage: "최수진은 정원 가꾸기에 관한 책을 빌리러 도서관에 갔다. 그녀는 또한 역사에 관한 DVD를 빌렸습니다."),
            ExerciseItem(id: UUID(), prompt: "기차가 왜 연착되었나요?", options: ["트랙 유지보수", "심한 폭풍", "정전", "실종된 승무원"], correctAnswer: "트랙 유지보수", explanation: "선로 유지 보수로 인해 열차가 지연되었다는 이야기가 있습니다.", passage: "김민준은 면접을 위해 아침 기차를 타고 시내로 갔다. 그의 열차는 선로 유지보수로 인해 15분 지연되었습니다."),
            ExerciseItem(id: UUID(), prompt: "이서연은 어떤 꽃을 샀나요?", options: ["핑크 카네이션", "빨간 장미", "노란 튤립", "흰 백합"], correctAnswer: "핑크 카네이션", explanation: "이야기에 따르면 그녀는 대신 분홍색 카네이션을 샀습니다.", passage: "이서연은 빨간 장미를 사러 가든 센터에 갔습니다. 품절이라 대신 핑크색 카네이션을 샀다."),
            ExerciseItem(id: UUID(), prompt: "김영희 씨가 한남체인에서 산 고기는 어떤 종류인가요?", options: ["갈비용 소고기", "불고기용 돼지고기", "닭볶음탕용 닭고기", "국거리용 소고기"], correctAnswer: "갈비용 소고기", explanation: "이야기에서 김영희 씨는 한남체인에서 갈비용 소고기와 무를 샀다고 명시되어 있습니다.", passage: "김영희 씨는 LA 한인타운에 있는 한남체인에서 갈비용 소고기와 무를 샀습니다. 그녀는 계산을 하려다 바지 주머니에 지갑을 두고 차에 가방을 놔둔 것을 알았습니다."),
            ExerciseItem(id: UUID(), prompt: "박준서 할아버지는 친구와 공원에서 무엇을 두기로 했습니까?", options: ["바둑", "장기", "체스", "화투"], correctAnswer: "바둑", explanation: "이야기에서 두 사람은 공원에서 바둑을 두기로 약속했습니다.", passage: "박준서 할아버지는 토요일 아침 올림픽 경찰서 근처 공원에서 오랜 친구인 이철수 씨를 만나 바둑을 두기로 했습니다. 그러나 이철수 씨는 약속 시간을 착각해 30분 늦게 도착했습니다."),
            ExerciseItem(id: UUID(), prompt: "정민우 씨는 어떤 도시 근처에서 정비소에 들렀습니까?", options: ["베이커스필드", "로스앤젤레스", "샌프란시스코", "새크라멘토"], correctAnswer: "베이커스필드", explanation: "정민우 씨는 베이커스필드 근처 정비소에서 타이어를 교체했다고 이야기되어 있습니다.", passage: "정민우 씨는 로스앤젤레스에서 샌프란시스코로 가는 5번 고속도로를 달리고 있었습니다. 도중에 타이어에 못이 박혀 베이커스필드 근처 정비소에서 타이어를 교체해야 했습니다."),
            ExerciseItem(id: UUID(), prompt: "최은지 씨는 떡집에서 어떤 종류의 떡들을 주문했습니까?", options: ["시루떡과 무지개떡", "인절미와 송편", "백설기와 꿀떡", "찹쌀떡과 바람떡"], correctAnswer: "시루떡과 무지개떡", explanation: "이야기에서 최은지 씨가 주문한 떡은 시루떡과 무지개떡입니다.", passage: "최은지 씨는 아버님의 칠순 잔치를 위해 LA의 유명한 한국 떡집에서 시루떡과 무지개떡을 주문했습니다. 잔치는 일요일 오후 5시에 시작될 예정이었습니다."),
            ExerciseItem(id: UUID(), prompt: "지민이의 생일 선물은 무엇입니까?", options: ["은색 목걸이", "금반지", "인형 유모차", "그림책 세트"], correctAnswer: "은색 목걸이", explanation: "이영수 씨는 손녀 지민이의 선물로 은색 목걸이를 샀다고 언급되어 있습니다.", passage: "이영수 씨는 주말에 오렌지 카운티에 사는 손녀 지민이에게 줄 생일 선물로 은색 목걸이를 샀습니다. 지민이의 아홉 번째 생일을 축하하기 위한 선물이었습니다."),
            ExerciseItem(id: UUID(), prompt: "양복은 몇 시 이후에 찾을 수 있습니까?", options: ["목요일 오후 4시", "수요일 오전 8시", "목요일 오전 8시", "금요일 오후 4시"], correctAnswer: "목요일 오후 4시", explanation: "세탁소 사장님이 목요일 오후 4시 이후에 찾으러 오라고 안내하셨습니다.", passage: "김지수 씨는 아침 8시에 세탁소에 들러 남편의 양복과 겨울 코트를 맡겼습니다. 세탁소 사장님은 목요일 오후 4시 이후에 찾으러 오라고 하셨습니다."),
            ExerciseItem(id: UUID(), prompt: "원래 행사가 시작되기로 한 요일과 시간은 언제입니까?", options: ["금요일 밤 9시", "토요일 밤 9시", "금요일 저녁 7시", "일요일 밤 9시"], correctAnswer: "금요일 밤 9시", explanation: "원래 행사는 금요일 밤 9시에 시작하기로 예정되어 있었습니다.", passage: "박민재 군은 그리피스 천문대에서 열리는 천체 관측 행사에 참가하기로 했습니다. 금요일 밤 9시에 시작하는 행사였지만, 갑자기 안개가 짙어져 토요일로 연기되었습니다."),
            ExerciseItem(id: UUID(), prompt: "정경숙 할머니가 들으신 보도는 무엇에 관한 것이었습니까?", options: ["주말 높은 기온 예보", "폭우 대비 요령", "한인타운 도로 통제", "라디오 주파수 변경"], correctAnswer: "주말 높은 기온 예보", explanation: "뉴스에서 주말 LA 지역 기온이 평년보다 높을 것이라고 보도했습니다.", passage: "정경숙 할머니는 매일 아침 라디오 코리아의 뉴스 프로그램을 듣습니다. 오늘 아침 뉴스에서는 이번 주말 LA 지역에 평년보다 기온이 높을 것이라고 보도했습니다."),
            ExerciseItem(id: UUID(), prompt: "최성호 씨는 마당에 어떤 나무를 심었습니까?", options: ["대추나무", "감나무", "밤나무", "소나무"], correctAnswer: "대추나무", explanation: "최성호 씨가 마당에 심은 것은 대추나무 묘목입니다.", passage: "최성호 씨는 집 마당에 한국에서 가져온 대추나무 묘목을 심었습니다. 나무가 잘 자라도록 매주 화요일과 금요일 아침마다 물을 주었습니다."),
            ExerciseItem(id: UUID(), prompt: "강의를 듣기 위해 김혜원 씨가 준비해야 하는 도구는 무엇입니까?", options: ["붓, 벼루, 먹", "물감과 도화지", "연필과 스케치북", "서예용 모포와 먹물만"], correctAnswer: "붓, 벼루, 먹", explanation: "강의 준비물로 붓, 벼루, 먹이 명시되어 있습니다.", passage: "김혜원 씨는 한인 문화 센터에서 서예 교실을 신청했습니다. 매주 수요일 오후 2시부터 시작하는 강의였으며, 준비물은 붓과 벼루, 그리고 먹이었습니다."),
            ExerciseItem(id: UUID(), prompt: "이정훈 씨가 베이글을 사러 들른 가게에서 산 맛은 무엇입니까?", options: ["블루베리", "어니언", "시나몬 레이즌", "플레인"], correctAnswer: "블루베리", explanation: "이정훈 씨가 구입한 베이글은 블루베리 베이글입니다.", passage: "이정훈 씨는 사촌 형의 이사를 돕기 위해 글렌데일로 향했습니다. 그는 가는 길에 베이글 가게에 들러 블루베리 베이글 6개와 크림치즈를 샀습니다."),
            ExerciseItem(id: UUID(), prompt: "박소희 씨의 반려견 품종은 무엇입니까?", options: ["시츄", "푸들", "말티즈", "진돗개"], correctAnswer: "시츄", explanation: "박소희 씨의 반려견은 '시츄' 품종의 '초코'라고 나와 있습니다.", passage: "박소희 씨는 반려견인 시츄 '초코'의 예방접종을 위해 동물병원에 예약 전화를 했습니다. 수의사는 목요일 오전 10시 30분이 비어 있다고 안내했습니다."),
            ExerciseItem(id: UUID(), prompt: "결혼식의 원래 시작 시간은 언제였습니까?", options: ["토요일 오후 1시", "토요일 낮 12시", "일요일 오후 1시", "토요일 오후 1시 20분"], correctAnswer: "토요일 오후 1시", explanation: "결혼식은 원래 토요일 오후 1시 시작 예정이었습니다.", passage: "김도윤 씨는 직장 동료의 결혼식에 참석하기 위해 다운타운 LA의 호텔 예식장으로 출발했습니다. 결혼식은 토요일 오후 1시에 시작이었으나, 프리웨이 교통 체증으로 20분 늦게 도착했습니다."),
            ExerciseItem(id: UUID(), prompt: "정예진 씨가 점심으로 먹은 메뉴는 무엇입니까?", options: ["떡볶이와 김말이 튀김", "김밥과 라면", "순대와 튀김 세트", "돈가스와 우동"], correctAnswer: "떡볶이와 김말이 튀김", explanation: "정예진 씨가 분식집에서 떡볶이와 김말이 튀김을 먹었다고 되어 있습니다.", passage: "한미 은행에서 근무하는 정예진 씨는 점심시간에 은행 옆 분식집에서 떡볶이와 김말이 튀김을 먹었습니다. 점심값으로 총 12달러를 현금으로 지불했습니다."),
            ExerciseItem(id: UUID(), prompt: "스마트폰을 쉽게 찾을 수 있었던 이유는 무엇입니까?", options: ["빨간 스티커 덕분에", "벨소리가 울려서", "지나가던 행인이 알려줘서", "GPS 추적기를 사용해서"], correctAnswer: "빨간 스티커 덕분에", explanation: "스마트폰 뒷면에 붙여둔 빨간 스티커 덕분에 쉽게 찾을 수 있었다고 기술되어 있습니다.", passage: "최진우 씨는 아침 조깅 중에 스마트폰을 길가 잔디밭에 떨어뜨렸습니다. 다행히 액정은 깨지지 않았고, 스마트폰 뒷면에 붙여둔 빨간 스티커 덕분에 쉽게 찾을 수 있었습니다."),
            ExerciseItem(id: UUID(), prompt: "올해 송편 소로 새롭게 준비하라고 하신 재료는 무엇입니까?", options: ["밤과 팥", "설탕과 꿀", "대추와 녹두", "참깨와 콩"], correctAnswer: "밤과 팥", explanation: "시어머니께서 송편 소로 밤과 팥도 함께 준비하라고 지시하셨습니다.", passage: "임미숙 씨는 추석을 앞두고 가족들과 송편을 빚기 위해 쌀가루와 참깨를 준비했습니다. 그녀의 시어머니는 올해 송편 소로 밤과 팥도 준비하라고 하셨습니다."),
            ExerciseItem(id: UUID(), prompt: "백승현 씨가 차고에서 발견한 악기는 무엇입니까?", options: ["통기타", "바이올린", "플루트", "피아노"], correctAnswer: "통기타", explanation: "차고 정리를 하다가 발견한 악기는 오래된 통기타입니다.", passage: "백승현 씨는 차고 정리를 하다가 먼지가 쌓인 오래된 통기타를 발견했습니다. 고등학교 시절 밴드 동아리에서 연주하던 악기였으며, 조율을 새로 하니 여전히 좋은 소리가 났습니다."),
            ExerciseItem(id: UUID(), prompt: "황지영 씨가 금식을 시작한 시간은 언제입니까?", options: ["전날 밤 9시", "당일 아침 8시 30분", "전날 자정 12시", "당일 오전 6시"], correctAnswer: "전날 밤 9시", explanation: "황지영 씨는 전날 밤 9시부터 금식을 시작했다고 명시되어 있습니다.", passage: "황지영 씨는 건강검진을 위해 전날 밤 9시부터 물을 포함하여 일절 금식했습니다. 다음 날 아침 8시 30분에 병원에 도착해 채혈 검사부터 진행했습니다."),
            ExerciseItem(id: UUID(), prompt: "두 사람이 만나기로 한 시각은 몇 시입니까?", options: ["오후 3시 10분", "오후 4시 10분", "오후 3시", "오후 5시 10분"], correctAnswer: "오후 3시 10분", explanation: "경기 시작(오후 4시 10분) 1시간 전에 만나기로 했으므로 만나는 시각은 오후 3시 10분입니다.", passage: "신민재 씨는 이번 일요일에 로스앤젤레스 다저스 스타디움에서 열리는 야구 경기를 직관하러 가기로 했습니다. 경기는 오후 4시 10분에 시작될 예정이며, 그는 동생과 1시간 전에 입구에서 만나기로 했습니다."),
            ExerciseItem(id: UUID(), prompt: "돌잔치에 참석한 친척은 모두 몇 명입니까?", options: ["20명", "10명", "15명", "30명"], correctAnswer: "20명", explanation: "돌잔치는 친척 20명을 모시고 진행되었다고 나와 있습니다.", passage: "오현우 할아버지는 손자 시우의 첫 돌을 기념하여 금반지 한 돈을 선물했습니다. 돌잔치는 LA 한인타운의 한 한식당에서 친척 20명을 모시고 진행되었습니다.")
        
        ]
    )

    // MARK: - Exercise 39: Number Sequences
    private static let numberSequences = Exercise(
        id: UUID(),
        title: "번호 순서",
        instructions: "순서대로 다음에 오는 숫자는 무엇입니까?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "2, 4, 6, 8, ___",
                options: ["9", "10", "11", "12"],
                correctAnswer: "10",
                explanation: "매번 2씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "5, 10, 15, 20, ___",
                options: ["21", "22", "25", "30"],
                correctAnswer: "25",
                explanation: "매번 5씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "10, 20, 30, 40, ___",
                options: ["45", "50", "60", "70"],
                correctAnswer: "50",
                explanation: "매번 10을 더해 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "3, 6, 9, 12, ___",
                options: ["13", "14", "15", "16"],
                correctAnswer: "15",
                explanation: "매번 3씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "9, 8, 7, 6, ___",
                options: ["4", "5", "7", "8"],
                correctAnswer: "5",
                explanation: "매번 1씩 빼면서 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "20, 18, 16, 14, ___",
                options: ["12", "13", "10", "15"],
                correctAnswer: "12",
                explanation: "매번 2를 빼서 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1, 3, 5, 7, ___",
                options: ["8", "9", "10", "11"],
                correctAnswer: "9",
                explanation: "홀수의 수열은 매번 2씩 더해집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "4, 8, 12, 16, ___",
                options: ["18", "20", "22", "24"],
                correctAnswer: "20",
                explanation: "매번 4씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "50, 45, 40, 35, ___",
                options: ["25", "28", "30", "32"],
                correctAnswer: "30",
                explanation: "매번 5를 빼면 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "100, 90, 80, 70, ___",
                options: ["50", "60", "65", "75"],
                correctAnswer: "60",
                explanation: "매번 10씩 빼면서 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "11, 22, 33, 44, ___",
                options: ["50", "53", "55", "66"],
                correctAnswer: "55",
                explanation: "매번 11씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "8, 10, 12, 14, ___",
                options: ["15", "16", "17", "18"],
                correctAnswer: "16",
                explanation: "매번 2씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "12, 15, 18, 21, ___",
                options: ["22", "23", "24", "25"],
                correctAnswer: "24",
                explanation: "매번 3씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "30, 27, 24, 21, ___",
                options: ["18", "19", "20", "17"],
                correctAnswer: "18",
                explanation: "매번 3을 빼면 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "7, 14, 21, 28, ___",
                options: ["30", "32", "35", "42"],
                correctAnswer: "35",
                explanation: "매번 7을 추가하여 시퀀스가 ​​증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "40, 36, 32, 28, ___",
                options: ["20", "24", "26", "27"],
                correctAnswer: "24",
                explanation: "매번 4를 빼면 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "6, 12, 18, 24, ___",
                options: ["26", "28", "30", "32"],
                correctAnswer: "30",
                explanation: "매번 6을 추가하여 시퀀스가 ​​증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "15, 20, 25, 30, ___",
                options: ["31", "32", "35", "40"],
                correctAnswer: "35",
                explanation: "매번 5씩 더해지면서 시퀀스가 증가합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "90, 80, 70, 60, ___",
                options: ["40", "50", "55", "45"],
                correctAnswer: "50",
                explanation: "매번 10씩 빼면서 수열이 감소합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "13, 15, 17, 19, ___",
                options: ["20", "21", "22", "23"],
                correctAnswer: "21",
                explanation: "매번 2씩 더해지면서 시퀀스가 증가합니다."
            )
        ]
    )

    // MARK: - Exercise 40: Cause and Effect
    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "원인과 결과",
        instructions: "설명된 상황에 대해 가장 가능성이 높은 결과를 선택하세요.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "따뜻한 날 부엌 카운터에 아이스크림을 2시간 동안 놓아두세요. 무슨 일이 일어나나요?",
                options: ["점점 더 어려워진다", "녹는다", "색깔이 변해요", "사라진다"],
                correctAnswer: "녹는다",
                explanation: "열로 인해 냉동된 아이스크림이 녹습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 3주 동안 화초에 물을 주는 것을 잊어버렸습니다. 가장 가능성이 높은 결과는 무엇입니까?",
                options: ["꽃이 자라요", "녹색으로 유지됩니다", "시들고 말려요", "파란색으로 변해요"],
                correctAnswer: "시들고 말려요",
                explanation: "식물이 살기 위해서는 물이 필요합니다. 그것이 없으면 그들은 시들고 건조해진다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "어두운 폭풍우 구름이 태양을 가리고 천둥이 울립니다. 다음에 무슨 일이 일어날 것 같나요?",
                options: ["비가 올 것이다", "더 더워질 거에요", "즉시 눈이 내리겠습니다", "별들이 나올거야"],
                correctAnswer: "비가 올 것이다",
                explanation: "폭풍우 구름과 천둥은 비가 올 것이라는 신호입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단단한 타일 바닥에 유리 그릇을 떨어뜨렸습니다. 가장 가능성이 높은 결과는 무엇입니까?",
                options: ["다시 튕겨져 나오네요", "색깔이 변해요", "그것은 조각조각 부서진다", "물로 변해요"],
                correctAnswer: "그것은 조각조각 부서진다",
                explanation: "유리는 깨지기 쉬우며 딱딱한 표면에 떨어뜨리면 깨집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빵 한 조각을 토스터에 넣고 가장 높은 온도로 설정해 둡니다. 무슨 일이 일어나나요?",
                options: ["눅눅해진다", "타서 검게 변해요", "부드럽고 하얗게 남아있어요", "사라진다"],
                correctAnswer: "타서 검게 변해요",
                explanation: "토스터에 과도한 열을 가하면 빵이 탈 수 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "밤새 자동차 헤드라이트를 켜두었습니다. 아침에는 무슨 일이 일어날까요?",
                options: ["차가 더 빨리 갈 거예요", "배터리가 다 됐을 거예요", "차 색깔이 바뀔거에요", "엔진이 즉시 시동됩니다"],
                correctAnswer: "배터리가 다 됐을 거예요",
                explanation: "조명을 켜두면 배터리 전력이 소모됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "밤새 폭설이 내리며 6인치의 눈이 쌓였습니다. 도로는 어떻게 되나요?",
                options: ["그들은 건조한 상태를 유지합니다", "미끄러워지고 눈이 쌓여", "녹색으로 변해요", "그들은 증발한다"],
                correctAnswer: "미끄러워지고 눈이 쌓여",
                explanation: "눈이 내리면 도로에 쌓여 운전이 위험해집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "물이 담긴 쟁반을 냉동실에 넣습니다. 몇 시간 후에는 어떻게 되나요?",
                options: ["물이 끓는다", "물이 얼음으로 변해요", "물이 증발한다", "물 색깔이 변해요"],
                correctAnswer: "물이 얼음으로 변해요",
                explanation: "영하의 온도는 액체 물을 고체 얼음으로 바꿉니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "더운 여름날 두꺼운 모직 양말과 두꺼운 부츠를 신습니다. 발은 어떻게 되나요?",
                options: ["그들은 추위를 느낀다", "그들은 건조한 상태를 유지합니다", "그들은 더워지고 땀을 흘린다", "파란색으로 변해요"],
                correctAnswer: "그들은 더워지고 땀을 흘린다",
                explanation: "두꺼운 층은 열을 유지하여 따뜻한 날씨에 땀을 흘리게 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사람은 24시간 내내 잠을 자지 않습니다. 그들은 어떤 기분을 느낄 것 같나요?",
                options: ["매우 활력이 넘침", "피곤하고 졸리다", "배고프다", "매우 행복하다"],
                correctAnswer: "피곤하고 졸리다",
                explanation: "수면이 부족하면 피로와 졸음이 발생합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "뜨거운 차 한잔에 설탕을 넣고 저어주세요. 설탕은 어떻게 되나요?",
                options: ["얼음으로 변해", "컵에서 사라져요", "차에 녹는다", "타오른다"],
                correctAnswer: "차에 녹는다",
                explanation: "뜨거운 액체에 설탕을 저으면 설탕이 녹습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 우산이나 비옷도 없이 폭우가 쏟아지는 곳으로 밖으로 나갑니다. 결과는 무엇입니까?",
                options: ["당신은 건조한 상태를 유지합니다", "옷이 흠뻑 젖어", "당신은 파랗게 변합니다", "당신은 더 따뜻한 느낌"],
                correctAnswer: "옷이 흠뻑 젖어",
                explanation: "빗물이 몸에 직접 떨어지면 옷이 젖습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "풍선이 너무 꽉 찰 때까지 풍선에 공기를 불어 넣습니다. 무슨 일이 일어나나요?",
                options: ["달로 날아가네", "터진다", "새로 변해요", "줄어들어요"],
                correctAnswer: "터진다",
                explanation: "공기압이 너무 높으면 풍선의 용량을 초과하여 풍선이 터지게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "밤에는 창문도 없는 방의 불을 모두 끈다. 무슨 일이 일어나나요?",
                options: ["방이 더 밝아지네요", "방이 완전히 어두워진다", "방이 초록색으로 변해요", "방은 빛으로 가득 차있다"],
                correctAnswer: "방이 완전히 어두워진다",
                explanation: "광원이 없으면 완전한 암흑이 발생합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "어려운 시험을 공부하거나 준비하지 않습니다. 가장 가능성이 높은 결과는 무엇입니까?",
                options: ["만점을 받으시네요", "당신은 실적이 좋지 않습니다", "당신은 당신의 이름을 잊어 버렸습니다", "시험이 취소되었습니다"],
                correctAnswer: "당신은 실적이 좋지 않습니다",
                explanation: "준비가 부족하면 어려운 시험을 통과할 가능성이 거의 없습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지난밤 로스앤젤레스 일대에 강한 폭풍우가 몰아쳤습니다. 다음 중 발생할 수 있는 직접적인 결과는 무엇입니까?",
                options: ["마당의 나뭇가지들이 부러지고 도로가 침수되었다.", "한인타운 식당들의 메뉴 가격이 인하되었다.", "새크라멘토로 가는 프리웨이가 무료로 전환되었다.", "사람들이 두꺼운 패딩 대신 얇은 수영복을 샀다."],
                correctAnswer: "마당의 나뭇가지들이 부러지고 도로가 침수되었다.",
                explanation: "강한 폭풍우(원인)의 결과로 정원의 나무가 부러지거나 낮은 지대의 도로가 물에 잠기는 물리적 현상이 발생합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정수 씨는 새로 구입한 식물의 화분에 3주 동안 전혀 물을 주지 않았습니다. 식물은 어떻게 되었을까요?",
                options: ["식물이 마르고 시들어 잎이 떨어졌다.", "식물의 키가 평소보다 두 배로 빠르게 자랐다.", "꽃의 향기가 더 짙어지고 색깔이 붉어졌다.", "식물의 뿌리가 물이 가득 차 썩어버렸다."],
                correctAnswer: "식물이 마르고 시들어 잎이 떨어졌다.",
                explanation: "장기간 물 공급을 받지 못한 식물(원인)은 수분 부족으로 인해 당연히 시들어 말라 죽게 됩니다(결과)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "기온이 갑자기 화씨 30도(영하 1°C) 이하로 뚝 떨어졌습니다. 야외 수돗가에 어떤 현상이 발생할 수 있습니까?",
                options: ["수도관 내부의 물이 얼어 배관이 파열될 수 있다.", "수도꼭지에서 더 뜨거운 온수가 저절로 쏟아진다.", "물안개가 피어오르며 얼음이 바로 기화하여 사라진다.", "수도꼭지가 강철처럼 단단하게 굳어 영원히 열리지 않는다."],
                correctAnswer: "수도관 내부의 물이 얼어 배관이 파열될 수 있다.",
                explanation: "기온이 빙점 이하로 내려가면 수도관 속 물이 얼면서 부피가 팽창하여 배관이 동파되는 피해가 흔히 일어납니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "스마트폰 충전 케이블이 완전히 닳아 내부 전선이 끊어졌습니다. 전원에 연결하면 어떻게 될까요?",
                options: ["기기가 더 이상 충전되지 않는다.", "스마트폰의 화면이 저절로 켜지며 음악이 나온다.", "배터리가 평소보다 10배 더 빠르게 충전된다.", "화면 밝기가 최대 한도로 밝아진다."],
                correctAnswer: "기기가 더 이상 충전되지 않는다.",
                explanation: "단선된 충전 케이블(원인)은 전류를 전달하지 못하므로, 기기가 정상적으로 충전될 수 없습니다(결과)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "민아 씨는 요리를 하면서 가스레인지 불 위에 찌개 냄비를 올려두고 깜빡 잊은 채 한 시간 동안 거실에서 전화를 받았습니다. 어떤 일이 일어났을까요?",
                options: ["찌개 국물이 완전히 졸아들고 냄비 바닥이 타버렸다.", "찌개 양이 저절로 늘어나서 냄비 밖으로 넘쳐 흘렀다.", "냄비 내부의 찌개가 얼음처럼 차갑게 식어 있었다.", "가스 요금이 자동으로 전액 감면되어 청구되었다."],
                correctAnswer: "찌개 국물이 완전히 졸아들고 냄비 바닥이 타버렸다.",
                explanation: "냄비를 불 위에 오래 방치하면 액체가 증발하여 졸아들고, 결국에는 건더기와 냄비 바닥이 까맣게 타게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "준호 군은 매일 잠자기 전 밤늦게 맵고 짠 라면을 끓여 먹고 바로 누워 잤습니다. 어떤 신체 반응이 즉각 나타났을까요?",
                options: ["다음 날 아침 얼굴과 눈이 심하게 부었다.", "체중이 급격히 줄어들고 몸이 가벼워졌다.", "소화 능력이 눈에 띄게 개선되었다.", "피부가 윤택해지고 피로가 완전히 풀렸다."],
                correctAnswer: "다음 날 아침 얼굴과 눈이 심하게 부었다.",
                explanation: "염분이 많은 음식을 야식으로 먹고 곧바로 자면 몸속에 수분이 정체되어 아침에 붓는 현상이 발생합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아침 통근 시간대에 5번 프리웨이(I-5) 남쪽 방향에서 3중 추돌 사고가 발생하여 차선 2개가 통제되었습니다. 이로 인한 영향은 무엇입니까?",
                options: ["극심한 교통 체증이 발생하여 이동 시간이 대폭 늘어났다.", "도로의 주행 속도 제한이 저절로 상승하였다.", "한인타운으로 향하는 프리웨이의 모든 통행료가 취소되었다.", "사고가 난 구역 주변에 신호등이 새로 설치되었다."],
                correctAnswer: "극심한 교통 체증이 발생하여 이동 시간이 대폭 늘어났다.",
                explanation: "고속도로 교통사고와 차선 폐쇄(원인)는 병목 현상을 유발하여 뒤따르는 차량들의 흐름을 막고 지연을 초래합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "수진 씨는 세탁기를 돌릴 때 흰색 수건들과 빨간색 새 면 티셔츠를 함께 넣고 뜨거운 물로 세탁했습니다. 세탁이 끝난 후 어떤 결과가 나타났을까요?",
                options: ["흰색 수건들이 붉은색으로 이염되어 핑크빛이 되었다.", "빨간색 티셔츠가 눈이 부실 정도로 하얗게 탈색되었다.", "모든 수건과 옷감이 처음보다 부드럽게 복원되었다.", "세탁물이 건조기에서 건조된 것처럼 뽀송하게 나왔다."],
                correctAnswer: "흰색 수건들이 붉은색으로 이염되어 핑크빛이 되었다.",
                explanation: "물이 빠지기 쉬운 붉은색 의류를 흰 수건과 온수로 혼합 세탁하면 이염 현상이 발생하여 수건이 붉게 염색됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지민 씨는 컴퓨터에서 중요한 한글 보고서 작업을 마친 후, 저장(Save) 버튼을 누르지 않고 강제로 전원 플러그를 뽑아 컴퓨터를 껐습니다. 다시 켰을 때 어떻게 되었을까요?",
                options: ["방금 전까지 작업했던 수정 내용이 모두 소실되었다.", "보고서가 자동으로 이메일을 통해 교수님께 전송되었다.", "컴퓨터의 운영체제가 한글에서 영어로 강제 전환되었다.", "파일 용량이 자동으로 압축되어 바탕화면에 나타났다."],
                correctAnswer: "방금 전까지 작업했던 수정 내용이 모두 소실되었다.",
                explanation: "데이터를 영구 기억 장치에 기록(저장)하지 않고 전원을 차단하면 램(RAM)에 머물던 미저장 정보는 모두 지워집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "날씨가 아주 맑고 건조한 여름철에 산속에서 캠핑하던 사람들이 바비큐 모닥불의 잔불을 완전히 끄지 않고 텐트를 떠났습니다. 어떤 대형 재난이 우려됩니까?",
                options: ["남은 불씨가 바람에 날려 대형 산불이 발생할 수 있다.", "갑자기 폭우가 쏟아져 계곡물이 범람할 수 있다.", "산속 온도가 급격히 낮아져 주변이 얼어붙을 수 있다.", "캠핑장에 야생 곰들이 접근하지 못하게 차단된다."],
                correctAnswer: "남은 불씨가 바람에 날려 대형 산불이 발생할 수 있다.",
                explanation: "건조한 기후에서 캠핑 후 모닥불 잔불을 방치하는 것은 산불 발생의 주요 직접적인 원인이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "현우 군은 아침에 집을 나서면서 현관 열쇠를 챙기지 않고 문을 잠근 채 나와버렸습니다. 귀가했을 때 어떻게 되었을까요?",
                options: ["문이 잠겨 집 안으로 들어가지 못했다.", "집 앞에 새 현관 열쇠가 자동으로 배달되어 있었다.", "보안 업체가 원격으로 현관문을 자동으로 열어주었다.", "열쇠 없이도 지문 인식 장치로 쉽게 문이 열렸다."],
                correctAnswer: "문이 잠겨 집 안으로 들어가지 못했다.",
                explanation: "열쇠가 없는 상태에서 문을 잠그고 외부로 나가버리면, 열쇠공이나 예비 열쇠 없이는 집 안으로 복귀할 수 없습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빵을 토스터에 넣고 굽는 시간 타이머를 지나치게 길게 설정해 두었습니다. 작동이 끝났을 때 빵은 어떻게 되었을까요?",
                options: ["빵이 새까맣게 타서 연기가 나고 있었다.", "빵이 구워지지 않고 처음처럼 축축한 상태였다.", "빵의 크기가 식빵 한 덩이 크기로 커져 있었다.", "빵이 자동으로 조각나서 접시 위에 예쁘게 담겼다."],
                correctAnswer: "빵이 새까맣게 타서 연기가 나고 있었다.",
                explanation: "열이 계속 가해지는 토스터에 과도한 시간을 설정하면 수분이 다 날아가고 탄화 현상이 일어나 타버리게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "냉동실 문이 꽉 닫히지 않고 손가락 한 마디 정도 틈이 벌어진 채 하루 동안 방치되었습니다. 어떤 상태가 벌어졌을까요?",
                options: ["내부에 보관된 고기와 냉동 식품이 녹아 상했다.", "냉동실 내부의 온도가 평소보다 훨씬 영하로 내려갔다.", "에어컨 바람이 방 안을 가득 채워 집안 전체가 시원해졌다.", "성리가 전혀 생기지 않고 서리 방지 기능이 가동되었다."],
                correctAnswer: "내부에 보관된 고기와 냉동 식품이 녹아 상했다.",
                explanation: "냉동실 틈새로 외부의 더운 공기가 유입되면 내부 온도가 상승하여 냉동되었던 식품들이 해동되고 상하게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김 과장님은 안경을 벗어 소파 위 방석 밑에 놓아두었는데, 그것을 모르는 지수 씨가 그 자리에 무심코 털썩 앉았습니다. 안경은 어떻게 되었을까요?",
                options: ["안경테가 휘어지거나 렌즈가 깨져 파손되었다.", "안경의 도수가 지수 씨의 시력에 맞게 변경되었다.", "안경의 재질이 금속에서 티타늄으로 단단해졌다.", "안경이 방석 밑에서 튕겨 나가 테이블 위로 안착했다."],
                correctAnswer: "안경테가 휘어지거나 렌즈가 깨져 파손되었다.",
                explanation: "충격에 약한 유선형의 안경 구조 위에 사람의 하중이 직접 실리게 되면 프레임이 구부러지거나 렌즈가 파괴됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지민 씨는 신용카드 청구서 결제일이 지났음에도 2개월 동안 카드 대금을 입금하지 않고 연체했습니다. 이로 인해 어떤 결과가 발생합니까?",
                options: ["신용 점수가 하락하고 카드 사용이 일시 정지된다.", "카드사로부터 우수 고객 연말 선물이 배송된다.", "연체된 금액만큼 청구 총액이 감면되어 처리된다.", "카드 한도가 자동으로 기존의 두 배로 상향 조정된다."],
                correctAnswer: "신용 점수가 하락하고 카드 사용이 일시 정지된다.",
                explanation: "지속적인 대금 연체는 신용 하락을 유발하며, 카드 금융 거래가 정지되는 원인이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "매일 아침 양치질을 소홀히 하고 초콜릿과 콜라 같은 단 음식을 자주 섭취하며 스케일링을 받지 않았습니다. 치아 상태는 어떻게 될까요?",
                options: ["충치가 생기고 치석이 쌓여 잇몸 질환이 발생한다.", "잇몸이 튼튼해져 딱딱한 얼음도 쉽게 씹을 수 있다.", "치아의 미백 효과가 나타나 아주 하얗고 깨끗해진다.", "사랑니가 잇몸 안으로 다시 흡수되어 사라진다."],
                correctAnswer: "충치가 생기고 치석이 쌓여 잇몸 질환이 발생한다.",
                explanation: "단 음식을 먹은 뒤 세균막과 음식 찌꺼기를 세척(양치)하지 않으면 세균이 번식하여 우식증(충치)과 잇몸 염증을 일으킵니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "매일 밤 불을 끈 채 아주 어두운 방에서 스마트폰을 밝은 화면으로 설정하고 몇 시간씩 들여다보았습니다. 눈 건강에 어떤 영향을 미칩니까?",
                options: ["안구 건조증이 생기고 시력이 저하되며 피로도가 심해진다.", "눈의 조절 기능이 대폭 상승하여 어둠 속에서도 잘 보게 된다.", "망막의 노화 현상이 억제되고 눈물이 깨끗해진다.", "시신경이 자극을 받아 근시가 영구적으로 완치된다."],
                correctAnswer: "안구 건조증이 생기고 시력이 저하되며 피로도가 심해진다.",
                explanation: "야간 암실 환경에서 강한 백라이트 화면을 응시하면 눈에 무리한 피로가 축적되어 건조함과 시력 감퇴가 뒤따릅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "세탁용 액체 세제를 컵 눈금의 5배에 달하는 과도한 양을 세탁기에 들이붓고 빨래를 시작했습니다. 어떤 현상이 일어날까요?",
                options: ["거품이 과도하게 발생해 세탁기 밖으로 역류하고 헹굼이 덜 된다.", "세탁 시간이 평소의 5분의 1 수준으로 매우 빨라진다.", "옷감이 화학 반응을 일으켜 새 옷처럼 질겨진다.", "탈수 과정에서 옷들이 완전히 건조되어 배출된다."],
                correctAnswer: "거품이 과도하게 발생해 세탁기 밖으로 역류하고 헹굼이 덜 된다.",
                explanation: "과량의 세제 투입은 지나친 거품을 만들어 배수 계통에 장애를 일으키며 헹굼 주기가 끝나도 세제 찌꺼기가 잔류하게 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "현관문에 달린 도어락의 건전지가 방전되기 전 알림음이 여러 번 울렸음에도 배터리를 교체하지 않고 방치했습니다. 결과적으로 어떻게 될까요?",
                options: ["도어락의 전원이 꺼져 외부에서 비밀번호로 문을 열 수 없게 된다.", "도어락이 태양광 충전 모드로 변경되어 자동으로 작동한다.", "문이 영구적으로 잠기지 않고 열린 상태를 유지하게 된다.", "건전지가 저절로 회생하여 앞으로 1년 동안 무상 작동한다."],
                correctAnswer: "도어락의 전원이 꺼져 외부에서 비밀번호로 문을 열 수 없게 된다.",
                explanation: "전력원이 완전히 차단되면 도어록의 전자 회로가 차단되므로 수동 키나 비상 9V 건전지 접촉 없이는 제어 불가 상태가 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "뜨거운 한여름 낮 동안, 햇볕 아래 주차된 승용차 조수석 대시보드 위에 일회용 가스라이터를 올려 두었습니다. 어떤 위험이 있습니까?",
                options: ["라이터가 차량 내부 열기로 인해 팽창하여 폭발할 수 있다.", "라이터 기름이 서서히 얼어붙어 사용 불능이 된다.", "조수석 창문이 자동으로 개방되어 환기가 시작된다.", "라이터의 플라스틱이 녹아 대시보드와 한 몸으로 고착된다."],
                correctAnswer: "라이터가 차량 내부 열기로 인해 팽창하여 폭발할 수 있다.",
                explanation: "밀폐된 차 안의 온도는 급속도로 상승하며, 이때 라이터 내부의 가스압이 한계치를 초과하면 외관 플라스틱이 깨지면서 폭발할 수 있어 매우 위험합니다."
            )
        
        ]
    )

    // MARK: - Exercise 41: What Emotion Is This?
    private static let whatEmotionIsThis = Exercise(
        id: UUID(),
        title: "이것은 어떤 감정인가?",
        instructions: "상황을 읽고 그 사람이 느낄 가능성이 가장 높은 감정을 선택하십시오.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 자신이 대회에서 1등을 했다는 소식을 방금 알게 되었습니다. 그녀는 기분이 어때요?",
                options: ["슬픈", "화난", "행복하다", "무서워"],
                correctAnswer: "행복하다",
                explanation: "대회에서 우승하는 것은 흥미롭고 즐거운 일입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 한밤중에 아래층에서 이상하고 큰 소리를 듣습니다. 그 사람 기분이 어때요?",
                options: ["행복하다", "무서워", "지루하다", "흥분된다"],
                correctAnswer: "무서워",
                explanation: "어둠 속에서 예상치 못한 소음은 두려움이나 불안감을 유발합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mary의 가장 친한 친구가 멀리 있는 다른 주로 이사할 예정입니다. 메리의 기분은 어떤가요?",
                options: ["슬픈", "화난", "흥분된다", "질투하다"],
                correctAnswer: "슬픈",
                explanation: "친한 친구와 작별 인사를 하는 것은 슬픔을 야기합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "누군가가 가게에서 긴 줄을 서서 John 앞에 끼어들었습니다. 존은 기분이 어떤가요?",
                options: ["행복하다", "무서워", "짜증나", "당황하다"],
                correctAnswer: "짜증나",
                explanation: "다른 사람의 무례한 행동은 일반적으로 짜증이나 좌절감을 유발합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Emily는 매우 많은 청중 앞에서 연설을 하려고 합니다. 그녀는 기분이 어때요?",
                options: ["긴장하다", "지루하다", "슬픈", "화난"],
                correctAnswer: "긴장하다",
                explanation: "대중 연설은 일반적으로 초조함이나 불안감을 유발합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준의 비행기가 결항되어 휴가가 이틀 연기되었습니다. 그 사람 기분이 어때요?",
                options: ["좌절하다", "행복하다", "무서워", "자랑스럽다"],
                correctAnswer: "좌절하다",
                explanation: "계획을 방해하는 취소는 좌절감을 안겨줍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lisa의 아들은 최고의 성적으로 대학을 졸업했습니다. 리사는 기분이 어떤가요?",
                options: ["자랑스럽다", "질투하다", "슬픈", "무서워"],
                correctAnswer: "자랑스럽다",
                explanation: "가족이 성공하는 모습을 보면 뿌듯함을 느끼게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "점원이 복잡한 양식을 네 번째로 설명하고 있는데 김민준은 아직도 이해하지 못한다. 김민준 기분이 어때요?",
                options: ["혼란스럽다", "행복하다", "흥분된다", "자랑스럽다"],
                correctAnswer: "혼란스럽다",
                explanation: "정보를 파악하지 못하면 혼란을 느끼게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "박지호는 아무것도 읽지 못한 채 2시간 넘게 조용한 대기실에서 기다리고 있었습니다. 그 사람 기분이 어때요?",
                options: ["지루하다", "무서워", "화난", "행복하다"],
                correctAnswer: "지루하다",
                explanation: "아무런 자극도 없이 오랜 기다림은 지루함을 유발합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ellen의 가족은 친구들과 함께 깜짝 생일 파티를 열었습니다. 그녀는 기분이 어때요?",
                options: ["놀랐다", "화난", "슬픈", "무서워"],
                correctAnswer: "놀랐다",
                explanation: "예상치 못한 축하는 놀라움을 불러일으킵니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "길 잃은 개 한 마리가 달려와 카렌이 산책하는 동안 공격적으로 짖었습니다. 그녀는 기분이 어때요?",
                options: ["겁에 질린", "행복하다", "지루하다", "자랑스럽다"],
                correctAnswer: "겁에 질린",
                explanation: "공격적인 동물은 두려움이나 공포감을 유발합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "윌리엄은 정원을 가꾸는 동안 결혼반지를 잃어버렸습니다. 그 사람 기분이 어때요?",
                options: ["당황", "흥분된다", "지루하다", "진정"],
                correctAnswer: "당황",
                explanation: "감상적인 물건을 잃는 것은 고통스럽고 속상한 일입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Patricia는 손주들로부터 아름다운 카드와 꽃을 받았습니다. 그녀는 기분이 어때요?",
                options: ["사랑받는", "화난", "무서워", "혼란스럽다"],
                correctAnswer: "사랑받는",
                explanation: "가족의 친절한 행동은 사람이 사랑받고 인정받는다는 느낌을 갖게 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "H마트에는 박지호가 원하는 빵이 없어 다른 브랜드를 구매해야 했다. 그 사람 기분이 어때요?",
                options: ["약간 실망함", "겁에 질린", "퓨리어스", "황홀하다"],
                correctAnswer: "약간 실망함",
                explanation: "사소한 선호도를 얻지 못하면 약간의 실망으로 이어집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 오후 내내 책장을 만들었는데, 완벽하게 완성됐어요. 그 사람 기분이 어때요?",
                options: ["만족함", "슬픈", "무서워", "지루하다"],
                correctAnswer: "만족함",
                explanation: "작업을 성공적으로 완료하면 만족감을 느끼게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 조용한 식당에서 실수로 음료수 쟁반을 떨어뜨렸습니다. 그녀는 기분이 어때요?",
                options: ["당황하다", "행복하다", "화난", "지루하다"],
                correctAnswer: "당황하다",
                explanation: "실수에 대해 부정적인 대중의 관심을 끌면 당혹감을 느끼게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "박지호가 내일 오전에 첫 여행을 떠납니다. 그 사람 기분이 어때요?",
                options: ["흥분된다", "슬픈", "화난", "지루하다"],
                correctAnswer: "흥분된다",
                explanation: "즐거운 휴가를 기대하면 설렘이 생깁니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "수잔의 고양이는 실종 3일 만에 무사히 집으로 돌아왔습니다. 그녀는 기분이 어때요?",
                options: ["안심", "화난", "무서워", "혼란스럽다"],
                correctAnswer: "안심",
                explanation: "스트레스가 많은 상황에 대한 긍정적인 해결은 안도감을 가져옵니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준이 일을 하려는 동안 인터넷 연결이 5분마다 계속 끊어집니다. 그 사람 기분이 어때요?",
                options: ["짜증나다", "무서워", "행복하다", "지루하다"],
                correctAnswer: "짜증나다",
                explanation: "반복되는 사소한 중단은 짜증을 유발합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 스트레스가 많은 하루를 보낸 후 오랫동안 따뜻한 목욕을 했습니다. 그녀는 기분이 어때요?",
                options: ["편안한", "화난", "무서워", "긴장하다"],
                correctAnswer: "편안한",
                explanation: "따뜻한 목욕과 휴식 시간은 사람이 편안함을 느끼는 데 도움이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "준수 할아버지는 지난 수십 년 동안 매일 가꾸어 온 뒤뜰의 작은 무화과나무가 지난밤 강풍에 뿌리째 뽑혀 쓰러진 것을 보았습니다. 준수 할아버지의 마음은 어떨까요?",
                options: ["상실감과 슬픔", "홀가분함", "설렘", "지루함"],
                correctAnswer: "상실감과 슬픔",
                explanation: "오랫동안 애정을 담아 기른 식물이 파괴되었으므로 속상함과 상실의 고통을 겪게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은정 씨는 몇 주 동안 꼬박 공부하여 준비했던 캘리포니아 공인 부동산 중개인 자격시험에 최종 합격했다는 통지서를 이메일로 받았습니다. 그녀의 기분은 어떨까요?",
                options: ["성취감과 기쁨", "불안과 초조", "억울함", "피로와 짜증"],
                correctAnswer: "성취감과 기쁨",
                explanation: "목표를 달성하고 좋은 결실을 보았으므로 보람과 대단히 기쁜 감정을 느끼게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "영수 씨는 마트 주차장에서 주차 공간이 비기를 한참 기다렸다가 진입하려 했는데, 뒤에서 온 다른 차가 무례하게 쌩하니 먼저 끼어들어 자리를 가로챘습니다. 영수 씨의 기분은 어떨까요?",
                options: ["분노와 불쾌감", "안도감", "수치심", "외로움"],
                correctAnswer: "분노와 불쾌감",
                explanation: "무질서하고 몰지각한 타인의 행동으로 인해 권리를 침해당했으므로 강한 짜증과 분노가 발생합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지혜 씨는 낯선 도시로 출장을 가기 위해 밤늦게 공항에서 렌터카를 몰고 가던 중 내비게이션마저 꺼지고 휴대전화 신호도 잡히지 않아 길을 잃었습니다. 지혜 씨는 어떤 감정을 느낄까요?",
                options: ["공포와 불안", "안심", "짜증", "신이 난"],
                correctAnswer: "공포와 불안",
                explanation: "익숙지 않은 칠흑 같은 상황에서 통신 수단도 차단되었기에 두려움과 공포, 불안을 마주하게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "영희 할머니는 이번 추석 연휴에 한국에 있는 자녀들이 비행기 표가 매진되어 미국에 오지 못한다는 전화를 받았습니다. 할머니의 기분은 어떨까요?",
                options: ["쓸쓸함과 섭섭함", "평화로움", "통쾌함", "긴장감"],
                correctAnswer: "쓸쓸함과 섭섭함",
                explanation: "기대했던 가족들과의 명절 모임이 성사되지 못했으므로 쓸쓸하고 아쉬운 마음이 듭니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "민우 군은 부모님이 몰래 준비하신 서프라이즈 생일 파티를 위해 집에 들어섰을 때, 친구들이 폭죽을 터뜨리며 노래를 불러주었습니다. 민우의 기분은 어떨까요?",
                options: ["놀라움과 행복함", "짜증남", "억울함", "덤덤함"],
                correctAnswer: "놀라움과 행복함",
                explanation: "전혀 예상치 못한 긍정적인 서프라이즈와 축하를 동시에 받았기에 감동과 행복감을 느낍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "수진 씨는 회사에서 자신이 기획안을 열심히 작성하여 제출했으나, 동료인 최 대리가 그 아이디어를 가로채 부장님께 자신이 단독으로 한 것처럼 보고하는 것을 목격했습니다. 수진 씨는 어떨까요?",
                options: ["배신감과 억울함", "뿌듯함", "안심됨", "슬픔"],
                correctAnswer: "배신감과 억울함",
                explanation: "믿었던 직장 동료에게 공을 가로채기 당했으므로 억울하고 배반감을 느낍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정민 씨는 반려견 진돌이가 며칠 동안 아무것도 먹지 않고 구석에 웅크려 끙끙 앓는 모습을 안타깝게 지켜보고 있습니다. 정민 씨의 심정은 어떨까요?",
                options: ["걱정스럽고 안타까움", "지루함", "덤덤함", "유쾌함"],
                correctAnswer: "걱정스럽고 안타까움",
                explanation: "가족 같은 반려동물이 아파하는 모습을 보며 고통을 덜어주지 못해 근심과 애달픈 마음이 가득해집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "영수 할아버지는 주말 아침, 정원 의자에 앉아 따뜻한 햇살을 받으며 시원한 바람 소리와 새소리를 평화롭게 감상하고 있습니다. 할아버지의 마음 상태는 어떨까요?",
                options: ["평온하고 여유로움", "우울함", "조급함", "당황스러움"],
                correctAnswer: "평온하고 여유로움",
                explanation: "스트레스 요인이 없는 고요하고 따스한 자연환경 속에서 마음의 안정과 휴식을 느끼고 계십니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소희 씨는 대중교통 지하철 안에서 졸다가 깨어나 급하게 내리느라 회사 중요 기밀문서가 든 가방을 두고 내려 플랫폼에 홀로 남겨졌습니다. 소희 씨의 심정은 어떨까요?",
                options: ["절망감과 패닉", "신바람남", "평온함", "나른함"],
                correctAnswer: "절망감과 패닉",
                explanation: "직장 생활에 치명적인 가방 유실을 직면한 순간, 엄청난 공황과 어찌할 바를 모르는 상태가 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "도윤 군은 자신이 몇 달 동안 알바비를 모아 산 새 스마트폰을 주머니에 넣고 다니다가 시멘트 바닥에 떨어뜨려 액정이 완전히 산산조각이 났습니다. 그의 기분은 어떨까요?",
                options: ["속상하고 허탈함", "상쾌함", "부끄러움", "궁금함"],
                correctAnswer: "속상하고 허탈함",
                explanation: "노력을 들여 구한 값비싼 애장품이 망가졌으므로 매우 애석하고 허망함을 느끼게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "경숙 할머니는 평소 보고 싶어 하던 오랜 고향 친구로부터 미국에 여행을 와서 한인타운 호텔에 묵고 있으니 저녁 식사를 함께하자는 연락을 받았습니다. 할머니의 기분은 어떨까요?",
                options: ["반갑고 설렘", "무서움", "귀찮음", "서글픔"],
                correctAnswer: "반갑고 설렘",
                explanation: "오랜 세월 만나지 못한 그리운 친구의 깜짝 방문 연락은 큰 반가움과 기대감을 자아냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "혜원 씨는 직장에서 프레젠테이션 발표를 하는 도중, 마이크가 작동하지 않고 컴퓨터 화면에 엉뚱한 개인 사진이 나타나 동료들 앞에서 큰 웃음거리가 되었습니다. 그녀의 감정은 어떨까요?",
                options: ["당혹감과 수치심", "안도감", "통쾌함", "고마움"],
                correctAnswer: "당혹감과 수치심",
                explanation: "많은 대중 앞에서 돌발 사고와 의도치 않은 프라이버시 노출로 부끄럽고 무안함을 크게 느낍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정훈 씨는 숲길을 하이킹하던 도중, 나무 틈 사이에서 커다란 방울뱀이 쉿쉿 소리를 내며 자신을 향해 꼬리를 흔드는 모습을 정면으로 마주쳤습니다. 그의 감정은 어떨까요?",
                options: ["극심한 공포", "지루함", "즐거움", "피로감"],
                correctAnswer: "극심한 공포",
                explanation: "생명을 위협할 수 있는 맹독의 생물과 대면했으므로 생존 본능에 따른 극도의 겁과 공포가 엄습합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지영 씨는 오랫동안 소원했던 친누나로부터 먼저 화해를 청하는 장문의 진심 어린 편지와 함께 생일 축하 카드를 받았습니다. 카드를 읽는 지영 씨의 마음은 어떨까요?",
                options: ["뭉클하고 따뜻함", "의심스럽고 불쾌함", "짜증나고 피곤함", "무관심함"],
                correctAnswer: "뭉클하고 따뜻함",
                explanation: "오랫동안 닫혀 있던 가족 관계의 응어리가 진심 어린 사과로 녹아내리면서 감동과 정겨움을 느낍니다."
            )
        
        ]
    )

    // MARK: - Exercise 42: What’s Wrong Here?
    private static let whatsWrongHere = Exercise(
        id: UUID(),
        title: "여기서 무엇이 잘못되었나요?",
        instructions: "문장에서 틀린 점이나 불가능한 점을 선택하세요.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "존은 잠자리에 들기 전 자정에 아침을 먹었습니다.",
                options: ["사람들은 음식을 먹지 않는다", "아침 식사는 자정이 아닌 아침 식사입니다.", "존은 자면 안 돼", "자정은 오후에요"],
                correctAnswer: "아침 식사는 자정이 아닌 아침 식사입니다.",
                explanation: "아침 식사는 정의상 밤새 단식을 깨는 아침 식사입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "개는 우체부에게 짖다가 새를 잡으려고 지붕 위로 날아갔습니다.",
                options: ["개는 짖지 않는다", "개는 날 수 없다", "우체부는 우편물을 배달하지 않습니다", "새는 날지 않는다"],
                correctAnswer: "개는 날 수 없다",
                explanation: "개는 날개가 없어 날지 못합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 7월 야외수영장에 가기 위해 따뜻한 겨울 코트와 장갑을 착용했다.",
                options: ["사람들은 7월에 수영을 하지 않습니다", "수영하러 갈 때 겨울 코트와 장갑을 착용하지 않습니다.", "야외 수영장이 없습니다.", "코트는 여름에도 입는다"],
                correctAnswer: "수영하러 갈 때 겨울 코트와 장갑을 착용하지 않습니다.",
                explanation: "수영하려면 수영복이 필요하며 겨울 장비는 따뜻한 물에 적합하지 않습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "벽에 걸린 시계가 13시를 알리자 김민준은 모닝 커피를 마실 시간이라는 것을 알았습니다.",
                options: ["시계는 벽에 걸지 않는다", "표준 시계는 최대 12시간까지만 작동합니다.", "커피는 아침에 마시는 음료가 아니다", "김민준은 커피를 마시지 않는다"],
                correctAnswer: "표준 시계는 최대 12시간까지만 작동합니다.",
                explanation: "전통적인 시계는 1시부터 12시까지의 시간을 표시합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Paul은 친구를 방문하기 위해 자전거를 타고 깊은 호수를 건너갔습니다.",
                options: ["자전거는 물 위에서 탈 수 없다", "호수에는 물고기가 없다", "친구들은 서로 방문하지 않는다", "자전거에는 페달이 없습니다."],
                correctAnswer: "자전거는 물 위에서 탈 수 없다",
                explanation: "자전거는 육상 차량이며 물에 가라앉습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 냄비에 얼음을 몇 개 끓여 차가운 식수를 만들었습니다.",
                options: ["얼음 조각이 존재하지 않습니다.", "얼음을 끓이면 차가운 물이 아닌 뜨거운 물이 됩니다.", "냄비에는 얼음을 담을 수 없습니다", "마시는 물은 건강에 좋지 않다"],
                correctAnswer: "얼음을 끓이면 차가운 물이 아닌 뜨거운 물이 됩니다.",
                explanation: "끓이면 액체가 가열되어 차갑지 않고 뜨겁게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "물고기는 배고픈 고양이를 피해 나무 위로 올라갔습니다.",
                options: ["물고기는 나무에 오를 수 없다", "고양이는 생선을 먹지 않는다", "나무는 잎이 자라지 않는다", "물고기는 나무에 산다"],
                correctAnswer: "물고기는 나무에 오를 수 없다",
                explanation: "물고기는 물 속에 살며 나무에 오를 수 있는 팔다리가 없습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 포크를 이용해 닭칼국수를 마셨다.",
                options: ["포크에는 액체 수프를 담을 수 없습니다.", "수프는 닭고기로 만든 것이 아닙니다.", "김민준은 칼을 써야 해", "수프는 도구와 함께 먹지 않습니다"],
                correctAnswer: "포크에는 액체 수프를 담을 수 없습니다.",
                explanation: "포크에는 액체가 빠져나가도록 하는 타인이 있습니다. 수프에는 숟가락이 필요합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "비가 많이 왔기 때문에 이서연은 젖은 옷을 야외 빨래줄에 걸어 말렸다.",
                options: ["비는 물건을 젖게 하지 않습니다", "비오는 날 밖에서 옷이 마르지 않는다.", "빨랫줄은 실내에서만 사용합니다", "이서연은 옷을 입지 않는다"],
                correctAnswer: "비오는 날 밖에서 옷이 마르지 않는다.",
                explanation: "비는 옷을 젖게 하여 건조를 방해합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "비행기는 공항에 안전하게 착륙했고, 승객들은 모두 철로 위로 나섰습니다.",
                options: ["비행기는 공항에 착륙하지 않습니다", "승객은 비행기로 여행하지 않습니다", "공항에는 착륙 게이트에 기차 선로가 없습니다.", "기차는 선로를 달리지 않는다"],
                correctAnswer: "공항에는 착륙 게이트에 기차 선로가 없습니다.",
                explanation: "비행기는 철로가 아닌 활주로와 게이트에 착륙합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 거실을 더 따뜻하게 만들기 위해 에어컨의 온도를 높였습니다.",
                options: ["에어컨은 방을 시원하게 하고 난방을 하지 않습니다.", "거실에는 벽이 없습니다.", "이서연은 집이 없습니다", "에어컨은 전기를 사용하지 않습니다"],
                correctAnswer: "에어컨은 방을 시원하게 하고 난방을 하지 않습니다.",
                explanation: "에어컨은 온도를 높이는 것이 아니라 낮추도록 설계되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "토끼는 숲 속으로 커다란 회색 늑대를 쫓아갔습니다.",
                options: ["토끼는 숲에 살지 않아요", "늑대는 달리지 않는다", "토끼는 늑대를 쫓지 않아요", "늑대는 회색이 아니다"],
                correctAnswer: "토끼는 늑대를 쫓지 않아요",
                explanation: "늑대는 포식자이고 토끼는 먹이입니다. 토끼는 늑대를 피해 도망칩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "박지호는 손을 따뜻하게 유지하기 위해 가죽신을 한 켤레 샀습니다.",
                options: ["신발은 손이 아닌 발로 신는다", "신발에는 가죽을 사용하지 않습니다.", "손이 차갑지 않아요", "겨울은 춥지 않아요"],
                correctAnswer: "신발은 손이 아닌 발로 신는다",
                explanation: "장갑이나 벙어리 장갑을 손에 착용합니다. 신발은 발을 위한 것이다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "자정이 되자 태양이 떠올라 아침 하늘을 밝게 비췄습니다.",
                options: ["해는 한밤중이 아닌 아침에 뜬다", "자정은 오후에요", "태양이 밝지 않다", "아침은 어두워"],
                correctAnswer: "해는 한밤중이 아닌 아침에 뜬다",
                explanation: "자정은 태양이 보이지 않는 한밤중입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "최수진은 자신이 가장 좋아하는 라디오 방송을 듣기 위해 텔레비전을 켰습니다.",
                options: ["텔레비전은 비디오를 보여주지만 라디오는 아니다", "라디오에서는 음악이 재생되지 않습니다.", "최수진은 음악을 좋아하지 않는다", "텔레비전에는 스피커가 없습니다."],
                correctAnswer: "텔레비전은 비디오를 보여주지만 라디오는 아니다",
                explanation: "텔레비전은 디스플레이 장치입니다. 라디오 방송국은 라디오로 방송됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지수 씨는 마트에서 냉동 피자를 사 와서, 시원하게 녹이기 위해 꽁꽁 얼어 있는 냉동실에 바로 넣어두었습니다.",
                options: ["냉동실은 음식을 녹이지 않고 얼리는 곳이다.", "피자는 마트에서 판매하지 않는 음식이다.", "냉동 피자는 집에서 만들어서 먹어야 한다.", "피자를 보관할 때는 오븐에 넣어두어야 한다."],
                correctAnswer: "냉동실은 음식을 녹이지 않고 얼리는 곳이다.",
                explanation: "냉동실은 영하의 온도로 음식을 얼려 보관하는 장소이므로, 식품을 해동(녹임)하려면 냉장실에 두거나 해동기를 써야 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "현우 군은 아침 해가 서쪽에서 뉘엿뉘엿 지는 모습을 감상하며 갓 구운 토스트와 아침 커피를 즐겼습니다.",
                options: ["아침 해는 서쪽이 아니라 동쪽에서 떠오른다.", "토스트는 아침 식사용 빵이 아니다.", "커피는 아침 대신 밤에만 마시는 음료이다.", "해는 아침에 뜨지 않고 자정에만 뜬다."],
                correctAnswer: "아침 해는 서쪽이 아니라 동쪽에서 떠오른다.",
                explanation: "지구의 자전 방향으로 인해 해는 동쪽에서 떠올라 서쪽으로 집니다. 아침에는 서쪽으로 지는 해를 볼 수 없습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소희 씨는 밖에서 억수같이 퍼붓는 소나기를 피하기 위해 들고 있던 노란 우산을 깨끗이 접어 가방에 넣고 걸어갔습니다.",
                options: ["비를 피하기 위해서는 우산을 접지 말고 펼쳐서 써야 한다.", "비오는 날에는 노란색 우산을 사용하면 안 된다.", "소나기는 걸어 다닐 때 피하는 기상 현상이 아니다.", "우산은 접어서 보관할 수 없는 도구이다."],
                correctAnswer: "비를 피하기 위해서는 우산을 접지 말고 펼쳐서 써야 한다.",
                explanation: "쏟아지는 비로부터 몸이 젖는 것을 방어하려면 우산을 활짝 펼쳐 머리 위를 가려야 합니다. 접어서 가방에 넣으면 비를 다 맞게 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "영수 씨는 한여름 낮 기온이 화씨 100도(37.8°C)까지 치솟자, 몸을 따뜻하게 보호하려고 두꺼운 솜털 패딩 코트와 목도리를 착용했습니다.",
                options: ["더운 한여름 날씨에는 패딩과 목도리가 아닌 시원한 옷을 입어야 한다.", "화씨 100도는 눈이 내릴 정도로 매우 추운 겨울 기온이다.", "솜털 패딩은 야외에서만 입고 실내에서는 입지 못한다.", "한여름에는 외출을 할 수 없어 옷이 필요 없다."],
                correctAnswer: "더운 한여름 날씨에는 패딩과 목도리가 아닌 시원한 옷을 입어야 한다.",
                explanation: "혹서기의 날씨에는 땀 배출과 체온 조절을 위해 통풍이 잘되는 가벼운 옷을 입어야 합니다. 방한용 솜 패딩은 온열 질환을 유발할 수 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "민우는 우유팩 뒷면의 유통기한이 '2023년 5월 10일'로 적힌 것을 보고, 오늘이 '2026년 6월'이므로 아주 신선한 우유라고 생각하며 들이켰습니다.",
                options: ["유통기한이 3년 이상 지난 우유는 신선하지 않고 상한 우유이다.", "우유는 팩이 아닌 유리병에 든 것만 유통기한이 유효하다.", "2026년은 2023년보다 과거의 연도에 해당한다.", "우유는 유통기한과 상관없이 항상 상온에 두어야 신선하다."],
                correctAnswer: "유통기한이 3년 이상 지난 우유는 신선하지 않고 상한 우유이다.",
                explanation: "유통기한이 명시된 시점보다 오랜 시간이 지난 유제품은 세균이 번식하여 부패한 상태이므로 마시면 식중독의 위험이 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "경숙 할머니는 집 전화벨 소리가 요란하게 울리자, 전화를 받기 위해 부엌 찬장에 있는 전자레인지 문을 힘차게 열었습니다.",
                options: ["전화를 받으려면 수화기나 전화를 들어야지 전자레인지를 열면 안 된다.", "전자레인지는 항상 부엌 바닥에 놓고 쓰는 가전제품이다.", "집 전화벨은 불이 켜졌을 때만 소리를 내는 장치이다.", "부엌 찬장에는 전자제품을 절대 수납할 수 없다."],
                correctAnswer: "전화를 받으려면 수화기나 전화를 들어야지 전자레인지를 열면 안 된다.",
                explanation: "수신된 전화를 응대하는 도구는 스마트폰이나 전화기입니다. 음식물을 데우는 주방 기기인 전자레인지는 통신 기능이 없습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "도윤 군은 어두컴컴한 거실의 불을 밝히기 위해 벽에 있는 스위치를 아래로 내려 전등을 껐습니다.",
                options: ["불을 밝히기 위해서는 전등을 꺼야 하는 것이 아니라 켜야 한다.", "거실에는 불을 켜는 스위치를 벽에 설치할 수 없다.", "전등은 어두울 때 끄고 밝을 때 켜야 눈이 보호된다.", "전등 스위치는 발로 밟아 제어해야 작동한다."],
                correctAnswer: "불을 밝히기 위해서는 전등을 꺼야 하는 것이 아니라 켜야 한다.",
                explanation: "조도가 부족한 암실 상태를 밝게 전환하려면 조명 기구에 전류가 흐르도록 'On(켜기)' 상태로 전환해야 합니다. 'Off(끄기)' 하면 어두운 상태가 유지됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이정훈 씨는 자동차 연료 게이지의 바늘이 비어 있음(E)을 가리키자, 주유소에 들러 세차장에 차를 밀어 넣고 기름을 가득 채웠습니다.",
                options: ["기름을 넣으려면 주유기 앞에서 급유해야 하며 세차장에 들어가면 안 된다.", "연료 게이지의 E는 기름이 가득 차 있음을 나타내는 기호이다.", "자동차는 세차를 해야만 시동이 걸리고 기름이 채워진다.", "주유소에서는 세차 시설을 절대 운영하지 않는다."],
                correctAnswer: "기름을 넣으려면 주유기 앞에서 급유해야 하며 세차장에 들어가면 안 된다.",
                explanation: "차량의 연료 주입은 주유 펌프(주유기) 노즐을 차 연료구에 대고 실행해야 합니다. 터널식 세차 시설은 차 외부를 씻는 용도일 뿐입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은지 씨는 마당의 화초들이 잘 자라게 하려고 매일 아침 분무기에 락스 세제를 가득 담아 식물의 잎사귀마다 골고루 도포했습니다.",
                options: ["식물에게는 독성 세제가 아닌 깨끗한 물을 주어야 자란다.", "화초는 잎사귀가 아닌 흙 위에만 분무해야 살 수 있다.", "락스는 식물의 광합성을 촉진하는 액체 영양제이다.", "분무기는 물을 담을 수 없는 구조의 청소용 도구이다."],
                correctAnswer: "식물에게는 독성 세제가 아닌 깨끗한 물을 주어야 자란다.",
                explanation: "식물의 생장에는 유해 화학물질이 포함되지 않은 수분과 영양분이 필수적입니다. 살균 소독제인 락스는 식물의 조직을 파괴하여 고사시킵니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "최성호 씨는 집안에 쾌쾌한 냄새가 나자 공기 순환을 위해 거실의 넓은 유리창문을 콘크리트 벽돌로 꽉 막았습니다.",
                options: ["공기를 환기하려면 창문을 열어야 하며 벽돌로 막으면 통하지 않는다.", "냄새가 날 때는 창문을 닫고 선풍기를 틀어 가두어야 한다.", "유리창문은 공기가 투과하여 통과하므로 막아도 상관없다.", "거실에는 벽돌을 사용하여 인테리어를 할 수 없다."],
                correctAnswer: "공기를 환기하려면 창문을 열어야 하며 벽돌로 막으면 통하지 않는다.",
                explanation: "공기의 순환과 외부 바람의 유입을 유도하려면 창이나 문 같은 개구부를 활짝 개방해야 합니다. 벽돌 등으로 차단하면 환기가 불가능합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "영수 할아버지는 차고의 자동차 바퀴 공기압이 낮아지자, 타이어 벨브를 열어 정원용 호스로 수돗물을 가득 채워 팽팽하게 만들었습니다.",
                options: ["타이어에는 물이 아닌 압축 공기를 채워 넣어야 주행이 가능하다.", "정원용 호스는 수압이 낮아 타이어 벨브에 닿지 않는다.", "타이어 내부에는 원래 흙을 채워 단단함을 보존한다.", "자동차 바퀴는 물이 들어가야 고속 도로에서 미끄러지지 않는다."],
                correctAnswer: "타이어에는 물이 아닌 압축 공기를 채워 넣어야 주행이 가능하다.",
                explanation: "타이어는 도로의 충격을 흡수하고 구름 저항을 감당하기 위해 공기(기체)가 채워진 튜브 구조를 가집니다. 물을 넣으면 제동 및 완충 기능이 상실되고 타이어가 손상됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "박민재 군은 여름방학 동안 해변에서 태닝을 하기 위해 온몸에 자외선 차단 지수가 아주 높은 수분용 수분 선크림 대신 보습용 바셀린 연고와 겨울 장갑을 꼈습니다.",
                options: ["태닝을 하고 자외선을 차단하려면 선크림을 발라야 하며 겨울용 장갑은 적합하지 않다.", "바셀린 연고는 피부를 까맣게 태워주는 태닝 전용 오일이다.", "해변에서는 햇볕이 들지 않아 선크림을 바를 필요가 없다.", "태닝을 할 때는 옷을 물속에 입고 들어가 몸을 담가야 한다."],
                correctAnswer: "태닝을 하고 자외선을 차단하려면 선크림을 발라야 하며 겨울용 장갑은 적합하지 않다.",
                explanation: "해변의 강렬한 햇빛으로부터 화상을 방지하기 위해서는 선블록(선크림)을 발라야 합니다. 겨울 장갑은 열 방출을 막고 모래사장에서 불필요한 복장입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "혜원 씨는 구수한 된장찌개를 끓이기 위해 뚝배기에 수돗물과 된장을 풀고, 냉장고에서 갓 꺼낸 차가운 돌을 듬뿍 썰어 넣었습니다.",
                options: ["찌개에는 돌이 아닌 야채, 두부, 고기 같은 식자재를 넣어야 한다.", "된장찌개는 뚝배기에 끓이면 그릇이 깨져 끓일 수 없다.", "돌은 된장의 짠맛을 중화하기 위해 반드시 익혀서 넣어야 한다.", "수돗물은 된장찌개 베이스 육수로 절대 사용할 수 없다."],
                correctAnswer: "찌개에는 돌이 아닌 야채, 두부, 고기 같은 식자재를 넣어야 한다.",
                explanation: "찌개는 사람이 먹을 수 있는 음식물입니다. 소화 불가능하고 단단한 무기물인 돌을 넣어서는 안 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정훈 씨는 졸음을 쫓고 집중력을 향상하기 위해, 뜨겁고 진하게 내린 에스프레소 한 잔에 얼음 수면 안대를 얹고 바로 누워 단잠에 빠졌습니다.",
                options: ["잠을 자는 것은 졸음을 쫓는 행동이지 깨어있기 위한 방법이 아니다.", "에스프레소는 카페인이 없어 잠을 잘 오게 하는 차 종류이다.", "얼음 수면 안대는 머리를 차갑게 하여 커피의 열을 방출한다.", "커피를 마신 직후에는 뇌가 각성하여 깊은 잠을 바로 잘 수 없다."],
                correctAnswer: "잠을 자는 것은 졸음을 쫓는 행동이지 깨어있기 위한 방법이 아니다.",
                explanation: "잠을 청하는 것은 수면 욕구를 해소하는 직접적인 수단이며, 각성을 위한 카페인 음료 섭취 행동과 즉각적인 수면 취하기 행동은 모순됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은지 씨는 집안 청소를 하기 위해, 진공청소기 먼지 통을 비우고 플러그를 꽂은 뒤 청소기를 머리 위로 들어 올려 옷장 밑 좁은 틈에 물을 뿌렸습니다.",
                options: ["진공청소기는 먼지를 흡입하는 가전이며 옷장 틈에 물을 분사하는 기기가 아니다.", "진공청소기는 작동할 때 물을 뿌려 가며 써야 먼지가 날리지 않는다.", "옷장 밑 틈새는 너무 좁아 락스를 부어 소독해야 먼지가 제거된다.", "청소기는 항상 공중에 들어 올려 천장 위 먼지를 터는 방식으로 쓴다."],
                correctAnswer: "진공청소기는 먼지를 흡입하는 가전이며 옷장 틈에 물을 분사하는 기기가 아니다.",
                explanation: "진공청소기는 모터의 흡입력을 이용해 바닥의 먼지와 파편을 통 안으로 빨아들이는 장치입니다. 물을 역으로 내뿜는 분사 장치가 아니며, 전기 기기에 물이 들어가면 감전 및 쇼크 고장의 원인이 됩니다."
            )
        
        ]
    )

    // MARK: - Exercise 43: Yes/No General Knowledge
    private static let yesNoGeneralKnowledge = Exercise(
        id: UUID(),
        title: "예/아니오 일반 상식",
        instructions: "질문을 읽고 예 또는 아니오를 선택하세요.",
        section: .cognition,
        type: .yesNo,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "대한민국 서울의 상징적인 강은 한강입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "대한민국 서울을 동서로 가르는 대표적인 강은 한강이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한국의 전통 음식인 김치는 일반적으로 고춧가루를 사용하여 매콤하게 만듭니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "일반적인 배추김치 등 많은 종류의 김치는 고춧가루를 사용하여 매운맛을 냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지구는 태양계에서 가장 크기가 큰 행성입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "태양계에서 가장 큰 행성은 목성입니다. 지구가 아닙니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한국의 추석 명절은 음력 8월 15일입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "한국의 대표적 명절 중 하나인 추석(한가위)은 음력 8월 15일입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사과는 나무에서 자라는 과일입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "사과는 사과나무의 열매로 나무에서 자라는 과일입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "일반적인 자동차의 바퀴는 3개입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "일반적인 승용차의 바퀴는 4개입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "물이 끓는 온도는 화씨 기준 100도(100°F)입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "섭씨 기준으로는 100도(100°C)에 끓지만, 화씨 기준으로는 212도(212°F)에서 끓습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "미국의 수도는 뉴욕입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "미국의 수도는 워싱턴 D.C.입니다. 뉴욕은 가장 큰 도시 중 하나입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "세종대왕은 한글(훈민정음)을 창제하신 조선의 왕입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "세종대왕은 1443년에 훈민정음(한글)을 창제하셨습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "태양은 지구의 주위를 도는 위성입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "태양은 태양계 중심의 항성입니다. 지구 주위를 도는 위성은 달입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "호랑이는 식물을 주로 먹는 초식동물입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "호랑이는 고기를 먹고 사는 육식동물입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한국의 새해 명절인 설날에는 보통 떡국을 먹습니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "한국에서는 설날 아침에 나이를 한 살 더 먹는다는 의미로 떡국을 끓여 먹는 전통이 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1년은 보통 12개월로 이루어져 있습니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "1년은 1월부터 12월까지 총 12개월입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "나비는 곤충에 해당합니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "나비는 곤충류 나비목에 속하는 곤충이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "남극은 북극보다 기온이 높고 온난한 지역입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "남극은 거대한 대륙으로 이루어져 있어 바다로 된 북극보다 평균 기온이 훨씬 낮고 춥습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소금은 짠맛을 내는 조미료입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "소금은 나트륨 성분으로 음식에 짠맛을 더하는 대표적인 조미료입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "눈(Snow)은 물이 얼어서 내리는 기상 현상입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "구름 속의 수증기가 찬 공기를 만나 얼어서 떨어지는 것이 눈입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "꿀벌은 꿀을 만들기 위해 꽃에서 꽃가루와 꿀을 모읍니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "꿀벌은 꽃을 다니며 화분을 매개하고 꿀을 채집하여 벌집에 저장합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "거북이는 토끼보다 달리기 속도가 일반적으로 빠릅니다.",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "거북이는 신체 구조상 움직임과 달리기 속도가 느립니다. 토끼가 훨씬 빠릅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "피아노는 현을 두드려 소리를 내는 타현 악기입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "피아노는 건반을 누르면 내부의 해머가 현을 때려서 소리를 내는 구조를 가지고 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사람이 호흡할 때 주로 이산화탄소를 들이마시고 산소를 내뱉습니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "사람은 호흡할 때 산소를 흡입하고 대사 결과물인 이산화탄소를 배출합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "수박은 여름철에 주로 먹는 수분이 많은 과일입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "수박은 수분 함량이 90% 이상이며 대표적인 여름철 과채류 과일입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "닭은 알을 낳는 조류에 속합니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "닭은 조류에 속하며 달걀(알)을 낳아 번식합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "토마토는 채소(과채류)가 아닌 100% 완전한 나무 열매인 과일입니까?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "토마토는 풀에서 자라는 밭작물로, 식물학적으로 과채류(채소)에 가깝습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한국의 광복절은 8월 15일입니까?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "한국이 일본의 식민 통치로부터 벗어난 날을 기념하는 광복절은 8월 15일입니다."
            )
        ]
    )

    // MARK: - Exercise 44: Analogies
    private static let wordAnalogies = Exercise(
        id: UUID(),
        title: "단어 유추",
        instructions: "단어 사이의 관계를 파악하여 빈칸에 알맞은 단어를 선택하세요.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "낮 : 해 :: 밤 : ___",
                options: ["달", "구름", "안개", "빛"],
                correctAnswer: "달",
                explanation: "낮에 뜨는 대표적인 천체가 해라면, 밤에 뜨는 대표적인 천체는 달입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한국 : 서울 :: 미국 : ___",
                options: ["워싱턴 D.C.", "뉴욕", "로스앤젤레스", "시카고"],
                correctAnswer: "워싱턴 D.C.",
                explanation: "한국의 수도가 서울인 것과 같이, 미국의 수도는 워싱턴 D.C.입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "개 : 짖다 :: 고양이 : ___",
                options: ["야옹하다", "울부짖다", "짹짹거리다", "으르렁대다"],
                correctAnswer: "야옹하다",
                explanation: "개의 울음소리를 표현한 동사가 '짖다'라면, 고양이의 울음소리를 표현한 말은 '야옹하다'(야옹 소리를 내다)입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "책 : 읽다 :: 음악 : ___",
                options: ["듣다", "쓰다", "그리다", "만지다"],
                correctAnswer: "듣다",
                explanation: "책은 시각적으로 읽는 매체이고, 음악은 청각적으로 듣는 매체입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "봄 : 따뜻하다 :: 겨울 : ___",
                options: ["춥다", "덥다", "시원하다", "선선하다"],
                correctAnswer: "춥다",
                explanation: "봄의 대표적인 날씨 특징이 따뜻한 것이라면, 겨울의 특징은 추운 것입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "눈 : 보다 :: 귀 : ___",
                options: ["듣다", "냄새 맡다", "맛보다", "만지다"],
                correctAnswer: "듣다",
                explanation: "눈이 보는 감각 기관이라면, 귀는 소리를 듣는 감각 기관입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "비행기 : 하늘 :: 배 : ___",
                options: ["바다", "도로", "선로", "우주"],
                correctAnswer: "바다",
                explanation: "비행기가 하늘을 운항하는 교통수단이라면, 배는 바다(물)를 운항하는 교통수단입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "숟가락 : 국물 :: 포크 : ___",
                options: ["면", "물", "주스", "밥"],
                correctAnswer: "면",
                explanation: "숟가락은 액체류(국물)를 떠먹을 때 쓰고, 포크는 찌르는 음식이나 면류를 건져 먹을 때 씁니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "나무 : 잎 :: 사람 : ___",
                options: ["머리카락", "가지", "뿌리", "옷"],
                correctAnswer: "머리카락",
                explanation: "나무 몸체에 돋아나는 얇은 줄기가 잎이라면, 사람의 머리 피부에 자라는 털은 머리카락입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "의사 : 병원 :: 교사 : ___",
                options: ["학교", "소방서", "경찰서", "우체국"],
                correctAnswer: "학교",
                explanation: "의사가 근무하며 환자를 치료하는 장소가 병원이라면, 교사가 근무하며 학생을 가르치는 장소는 학교입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "축구 : 발 :: 농구 : ___",
                options: ["손", "머리", "어깨", "무릎"],
                correctAnswer: "손",
                explanation: "축구는 주로 발을 사용하여 공을 차는 경기이고, 농구는 주로 손을 사용하여 공을 패스하고 슛을 던지는 경기입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "얼음 : 차갑다 :: 불 : ___",
                options: ["뜨겁다", "어둡다", "무겁다", "단단하다"],
                correctAnswer: "뜨겁다",
                explanation: "얼음의 대표적 촉각 특성이 차가움이라면, 불의 특성은 뜨거운 것입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "쌀 : 밥 :: 밀가루 : ___",
                options: ["빵", "떡", "김치", "치즈"],
                correctAnswer: "빵",
                explanation: "쌀을 주원료로 가공해 밥을 짓는 것처럼, 밀가루를 주원료로 가공해 굽는 음식은 빵입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소 : 음매 :: 닭 : ___",
                options: ["꼬꼬댁", "개굴개굴", "꿀꿀", "야옹"],
                correctAnswer: "꼬꼬댁",
                explanation: "소의 울음소리가 '음매'라면, 닭의 울음소리는 '꼬꼬댁'입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "연필 : 쓰다 :: 지우개 : ___",
                options: ["지우다", "그리다", "깎다", "자르다"],
                correctAnswer: "지우다",
                explanation: "연필의 용도가 글을 쓰는 것이라면, 지우개의 용도는 쓴 글을 지우는 것입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "바늘 : 실 :: 빗자루 : ___",
                options: ["쓰레받기", "대걸레", "걸레", "먼지털이"],
                correctAnswer: "쓰레받기",
                explanation: "바늘을 사용할 때 실이 짝을 이루어 따르듯이, 빗자루로 쓸어 모을 때는 쓰레받기가 바늘과 실 같은 짝이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "머리 : 모자 :: 발 : ___",
                options: ["양말", "장갑", "목도리", "안경"],
                correctAnswer: "양말",
                explanation: "머리에 쓰는 착용 의류가 모자라면, 발에 신는 착용 의류는 양말(혹은 신발)입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "새 : 날개 :: 물고기 : ___",
                options: ["지느러미", "아가미", "비늘", "꼬리"],
                correctAnswer: "지느러미",
                explanation: "새가 하늘을 날기 위해 사용하는 추진 기관이 날개라면, 물고기가 헤엄칠 때 사용하는 기관은 지느러미입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "칼 : 베다 :: 가위 : ___",
                options: ["자르다", "찌르다", "풀칠하다", "접다"],
                correctAnswer: "자르다",
                explanation: "칼의 용도가 식자재나 대상을 베어 내는 것이라면, 가위의 대표적 용도는 자르는 것입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "기차 : 철로 :: 자동차 : ___",
                options: ["도로", "강", "하늘", "선로"],
                correctAnswer: "도로",
                explanation: "기차가 정해진 철로 위를 달리는 교통수단이라면, 자동차는 일반 도로 위를 달리는 교통수단입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "시계 : 시간 :: 온도계 : ___",
                options: ["온도", "속도", "무게", "부피"],
                correctAnswer: "온도",
                explanation: "시계가 시간을 측정하고 가리키는 도구인 것처럼, 온도계는 주위의 온도나 체온을 측정하는 도구입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "밤 : 어둡다 :: 낮 : ___",
                options: ["밝다", "춥다", "조용하다", "길다"],
                correctAnswer: "밝다",
                explanation: "밤의 시각적 특성이 어두움이라면, 낮의 시각적 특성은 밝은 것입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "화가 : 그림 :: 작가 : ___",
                options: ["글", "노래", "사진", "연극"],
                correctAnswer: "글",
                explanation: "화가가 예술 활동의 창작물로 그림을 그리는 것처럼, 작가는 창작물로 글을 집필합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사자 : 갈기 :: 사슴 : ___",
                options: ["뿔", "털", "발굽", "꼬리"],
                correctAnswer: "뿔",
                explanation: "사자의 머리 주변을 장식하는 대표적 털이 갈기라면, 사슴의 머리에 돋아나는 상징적 뼈대는 뿔입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "스마트폰 : 통화 :: 카메라 : ___",
                options: ["촬영", "인쇄", "스캔", "녹음"],
                correctAnswer: "촬영",
                explanation: "스마트폰의 가장 기본적인 쓰임새가 통화라면, 카메라의 대표적인 전용 기능은 사진이나 영상 촬영입니다."
            )
        ]
    )

}
