import Foundation

struct KoreanCognitionExerciseData {

    static let allExercises: [Exercise] = [
        figurativeLanguageIdioms,
        storyRecall,
        numberSequences,
        causeAndEffect,
        whatEmotionIsThis,
        whatsWrongHere
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
            ExerciseItem(
                id: UUID(),
                prompt: "최수진은 우유와 빵을 사러 H마트에 갔습니다. 그녀는 부엌 카운터에 지갑을 잊어버렸습니다. 최수진이 집에 두고 온 것은?",
                options: ["그녀의 지갑", "그녀의 열쇠", "그녀의 쇼핑리스트", "그녀의 전화"],
                correctAnswer: "그녀의 지갑",
                explanation: "이야기에 따르면 그녀는 부엌 카운터에 지갑을 잊어버렸다고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "박지호는 낚시를 하러 토요일에 일찍 일어났다. 그는 큰 송어를 잡았지만 너무 작아서 다시 던져야 했습니다. 박지호는 어떤 물고기를 잡았나요?",
                options: ["송어", "연어", "베이스", "메기"],
                correctAnswer: "송어",
                explanation: "이야기에 따르면 그는 큰 송어를 잡았습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 그늘진 참나무 아래에 파란색 차를 주차했습니다. 그가 돌아왔을 때, 그는 차가 노란 나뭇잎으로 덮여 있는 것을 보았습니다. 김민준의 차는 무슨 색인가요?",
                options: ["블루", "노란색", "빨간색", "녹색"],
                correctAnswer: "블루",
                explanation: "김민준이 파란 차를 주차했다는 이야기가 나온다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 딸의 생일 파티를 위해 초콜릿 케이크를 구웠습니다. 그녀는 케이크 위에 빨간 양초 10개를 올려 놓았습니다. 이서연이 케이크에 촛불을 몇 개 켰나요?",
                options: ["10", "5개", "여덟", "12"],
                correctAnswer: "10",
                explanation: "이야기에는 그녀가 케이크 위에 빨간 양초 10개를 놓았다고 나와 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 부서에 있는 동생에게 소포를 보내기 위해 우체국으로 갔습니다. 점원은 화요일에 도착할 것이라고 말했습니다. 김민준 형은 어디에 살아요?",
                options: ["뭐", "뉴욕", "보스턴", "마이애미"],
                correctAnswer: "뭐",
                explanation: "이야기에 따르면 그가 연구소에 있는 그의 형에게 소포를 보냈다고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 어제 새 운동화를 샀습니다. 흰색 줄무늬가 있는 밝은 녹색입니다. 이서연의 새 운동화는 무슨 색인가요?",
                options: ["밝은 녹색", "블루", "빨간색", "블랙"],
                correctAnswer: "밝은 녹색",
                explanation: "이야기에 따르면 신발은 흰색 줄무늬가 있는 밝은 녹색입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "비가 내리기 시작했을 때 박지호는 공원을 산책하고 있었다. 그는 젖지 않으려고 노란 우산을 펴었습니다. 박지호는 어떤 색깔의 우산을 사용했나요?",
                options: ["노란색", "빨간색", "블루", "블랙"],
                correctAnswer: "노란색",
                explanation: "이야기에 따르면 그는 노란 우산을 열었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "현지 빵집은 수리를 위해 월요일에 문을 닫았습니다. 화요일 아침 6시에 다시 문을 열 계획이었습니다. 빵집은 무슨 요일에 문을 닫았나요?",
                options: ["월요일", "화요일", "수요일", "일요일"],
                correctAnswer: "월요일",
                explanation: "그 빵집은 월요일에 문을 닫았다고 하더군요."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "최수진은 부엌 싱크대가 물이 새서 배관공을 불렀습니다. 배관공은 한 시간 후에 도착하여 파이프를 고쳤습니다. 최수진은 왜 배관공을 불렀나요?",
                options: ["그녀의 싱크대가 새고 있었어요", "그녀의 난로가 고장났어요", "그녀의 불은 꺼졌어", "그녀의 문은 잠겨 있었어요"],
                correctAnswer: "그녀의 싱크대가 새고 있었어요",
                explanation: "이야기에 따르면 그녀는 부엌 싱크대에서 물이 새기 때문에 배관공을 불렀습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 자신의 개 맥스를 산책시켰습니다. 맥스는 다람쥐를 보고 큰 소리로 짖었습니다. 김민준의 개 이름은 무엇입니까?",
                options: ["맥스", "버디", "찰리", "록키"],
                correctAnswer: "맥스",
                explanation: "김민준이 자신의 반려견 맥스를 산책시켰다는 이야기다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 저녁으로 야채 수프를 만들고 있었습니다. 그녀는 당근이 부족하다는 것을 깨닫고 대신 감자를 사용했습니다. 이서연은 무슨 재료가 떨어졌나요?",
                options: ["당근", "감자", "양파", "셀러리"],
                correctAnswer: "당근",
                explanation: "이야기는 그녀가 당근이 부족하다는 것을 깨달았다고 말합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "박지호는 점심으로 페퍼로니 피자와 탄산음료 한 병을 주문했다. 총 비용은 15달러였습니다. 박지호의 점심값은 얼마였나요?",
                options: ["15달러", "10달러", "20달러", "12달러"],
                correctAnswer: "15달러",
                explanation: "이야기에 따르면 총 비용은 15달러였습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "최수진은 정원 가꾸기에 관한 책을 빌리러 도서관에 갔다. 그녀는 또한 역사에 관한 DVD를 빌렸습니다. 최수진이 빌린 책은 어떤 주제였나요?",
                options: ["원예", "역사", "요리", "여행"],
                correctAnswer: "원예",
                explanation: "이야기에 따르면 그녀는 정원 가꾸기에 관한 책을 빌렸다고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김민준은 면접을 위해 아침 기차를 타고 시내로 갔다. 그의 열차는 선로 유지보수로 인해 15분 지연되었습니다. 기차가 왜 연착되었나요?",
                options: ["트랙 유지보수", "심한 폭풍", "정전", "실종된 승무원"],
                correctAnswer: "트랙 유지보수",
                explanation: "선로 유지 보수로 인해 열차가 지연되었다는 이야기가 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이서연은 빨간 장미를 사러 가든 센터에 갔습니다. 품절이라 대신 핑크색 카네이션을 샀다. 이서연은 어떤 꽃을 샀나요?",
                options: ["핑크 카네이션", "빨간 장미", "노란 튤립", "흰 백합"],
                correctAnswer: "핑크 카네이션",
                explanation: "이야기에 따르면 그녀는 대신 분홍색 카네이션을 샀습니다."
            )
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
            )
        ]
    )

}
