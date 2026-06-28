import Foundation

struct KoreanFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        cookingSteps,
        readingAPrescription,
        readingAMenu,
        understandingBills,
        whatWouldYouDo
    ]

    // MARK: - Exercise 31: Cooking Steps
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "요리 단계",
        instructions: "단계가 잘못된 순서로 나열되어 있습니다. 1, 2, 3으로 번호를 매겨 올바른 순서로 놓으세요.",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "라면 끓이기",
                options: ["물 550ml를 냄비에 붓는다", "수프와 건더기를 넣는다", "물이 끓으면 면과 스프를 넣는다", "면이 익으면 불을 끈다"],
                correctAnswer: "물 550ml를 냄비에 붓는다 | 물이 끓으면 면과 스프를 넣는다 | 수프와 건더기를 넣는다 | 면이 익으면 불을 끈다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "계란후라이 만들기",
                options: ["달걀을 깨서 올린다", "후라이팬에 기름을 두른다", "소금과 후추로 간한다", "바닥이 익으면 불을 끈다", "중불로 달군다"],
                correctAnswer: "후라이팬에 기름을 두른다 | 중불로 달군다 | 달걀을 깨서 올린다 | 소금과 후추로 간한다 | 바닥이 익으면 불을 끈다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "밥 짓기",
                options: ["물이 끓으면 약불로 줄인다", "쌀을 씻는다", "물을 붓고 강불에 올린다", "15분간 익힌 뒤 5분 뜸 들인다", "쌀을 냄비에 담는다"],
                correctAnswer: "쌀을 씻는다 | 쌀을 냄비에 담는다 | 물을 붓고 강불에 올린다 | 물이 끓으면 약불로 줄인다 | 15분간 익힌 뒤 5분 뜸 들인다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "된장국 끓이기",
                options: ["두부와 채소를 넣는다", "물을 냄비에 붓고 끓인다", "된장을 풀어 넣는다", "한 소끔 끓인 뒤 불을 끈다", "국물 재료로 육수를 낸다"],
                correctAnswer: "물을 냄비에 붓고 끓인다 | 국물 재료로 육수를 낸다 | 된장을 풀어 넣는다 | 두부와 채소를 넣는다 | 한 소끔 끓인 뒤 불을 끈다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김치볶음밥 만들기",
                options: ["달걀을 올려 마무리한다", "밥을 넣고 함께 볶는다", "간장으로 간을 맞춘다", "팬에 기름을 두른다", "김치를 넣고 볶는다"],
                correctAnswer: "팬에 기름을 두른다 | 김치를 넣고 볶는다 | 밥을 넣고 함께 볶는다 | 간장으로 간을 맞춘다 | 달걀을 올려 마무리한다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "녹차 우리기",
                options: ["뚜껑을 덮고 2분간 우린다", "컵에 찻잎 한 스푼을 넣는다", "80도 정도의 물을 붓는다", "찻잎을 걸러내고 마신다"],
                correctAnswer: "컵에 찻잎 한 스푼을 넣는다 | 80도 정도의 물을 붓는다 | 뚜껑을 덮고 2분간 우린다 | 찻잎을 걸러내고 마신다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "삶은 달걀 만들기",
                options: ["달걀을 찬물에 식힌다", "달걀을 냄비에 넣는다", "10분간 삶는다", "물을 붓고 강불에 올린다", "껍질을 벗긴다", "물이 끓으면 중불로 줄인다"],
                correctAnswer: "달걀을 냄비에 넣는다 | 물을 붓고 강불에 올린다 | 물이 끓으면 중불로 줄인다 | 10분간 삶는다 | 달걀을 찬물에 식힌다 | 껍질을 벗긴다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오트밀 만들기",
                options: ["뚜껑을 덮고 2분간 둔다", "물 또는 우유를 냄비에 붓고 끓인다", "그릇에 담고 과일이나 꿀을 올린다", "오트밀 반 컵을 넣는다", "저으면서 3분간 익힌다"],
                correctAnswer: "물 또는 우유를 냄비에 붓고 끓인다 | 오트밀 반 컵을 넣는다 | 저으면서 3분간 익힌다 | 뚜껑을 덮고 2분간 둔다 | 그릇에 담고 과일이나 꿀을 올린다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "간단한 샐러드 만들기",
                options: ["드레싱을 뿌린다", "야채를 씻는다", "먹기 좋게 썬다", "가볍게 버무린다", "그릇에 담는다"],
                correctAnswer: "야채를 씻는다 | 먹기 좋게 썬다 | 그릇에 담는다 | 드레싱을 뿌린다 | 가볍게 버무린다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "토스트 만들기",
                options: ["버터나 잼을 바른다", "빵을 토스터에 넣는다", "황금빛이 되면 꺼낸다", "먹기 좋게 자른다", "토스터를 켠다"],
                correctAnswer: "빵을 토스터에 넣는다 | 토스터를 켠다 | 황금빛이 되면 꺼낸다 | 버터나 잼을 바른다 | 먹기 좋게 자른다",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 43: Reading a Prescription
    private static let readingAPrescription = Exercise(
        id: UUID(),
        title: "처방전 읽기",
        instructions: "처방전 내용을 읽고 질문에 답해 보세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 하루 2회 1정을 음식과 함께 섭취하세요. 하루에 총 몇 알을 복용해야 하나요?",
                options: ["1", "2", "3", "4"],
                correctAnswer: "2",
                explanation: "1일 2회 1정씩 복용하면 1+1=2정이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 취침 시간에 2정을 섭취하세요. 이 약은 언제 복용해야 하나요?",
                options: ["아침에", "점심 포함", "취침 시간에", "운동 전"],
                correctAnswer: "취침 시간에",
                explanation: "라벨에는 취침 시간에 복용하라고 명시되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 통증이 있는 경우 필요에 따라 8시간마다 1캡슐을 복용하세요. 하루 24시간 동안 몇 번이나 복용할 수 있나요?",
                options: ["2회", "3회", "4회", "6회"],
                correctAnswer: "3회",
                explanation: "하루는 24시간입니다. 24를 8로 나누면 3이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 아목시실린 250mg. 1일 3회 1정을 섭취하세요. 냉장보관하세요. 이 약을 어떻게 보관해야 합니까?",
                options: ["냉동실에서", "냉장고에", "따뜻한 찬장 속에", "직사광선 아래서"],
                correctAnswer: "냉장고에",
                explanation: "라벨에는 \"냉장 보관\"이라고 적혀 있는데, 이는 냉장고에 보관하라는 의미입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 이 약을 복용하는 동안 술을 마시지 마십시오. 졸음을 유발할 수 있습니다. 이 약의 경고된 부작용은 무엇입니까?",
                options: ["졸음", "에너지 증가", "고혈압", "재채기"],
                correctAnswer: "졸음",
                explanation: "라벨에는 \"졸음을 유발할 수 있습니다\"라고 경고되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 매일 아침 공복에 1정을 섭취하세요. 아침은 언제 먹어야 할까요?",
                options: ["태블릿을 복용하기 전에", "태블릿을 복용한 후", "태블릿을 복용하는 동안", "아침을 먹지 마세요"],
                correctAnswer: "태블릿을 복용한 후",
                explanation: "공복에 복용하는 것은 아침 식사 전에 복용하는 것을 의미합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 매일 1정을 경구 복용하세요. 수량: 30. 리필: 2. 리필은 몇 개까지 허용됩니까?",
                options: ["1", "2", "3", "30"],
                correctAnswer: "2",
                explanation: "라벨에는 \"리필: 2\"라고 표시되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 하루에 두 번 영향을 받은 피부 부위에 얇은 층을 바르십시오. 삼키지 마십시오. 이 약은 어떻게 적용되나요?",
                options: ["삼키는 것으로", "피부에 문지르면서", "코에 분사해서", "물에 녹여서"],
                correctAnswer: "피부에 문지르면서",
                explanation: "라벨에는 \"해당 피부 부위에 얇은 층을 바르십시오\"라고 적혀 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 2026년 10월 15일 이후 폐기됩니다. 오늘은 2026년 11월 1일입니다. 이 약을 안전하게 복용할 수 있나요?",
                options: ["예", "아니요", "음식만으로", "밤에만"],
                correctAnswer: "아니요",
                explanation: "해당 약의 유효기간은 오늘 이전인 2026년 10월 15일에 만료되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 하루에 2회 1정을 섭취하세요. 유제품과 함께 복용하지 마세요. 이 약을 복용할 때 어떤 음료를 피해야 합니까?",
                options: ["물", "우유", "사과 주스", "블랙 커피"],
                correctAnswer: "우유",
                explanation: "우유는 유제품이므로 라벨에 따라 피해야 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 비행 1시간 전 2정을 복용하세요. 왜 이 약을 먹겠습니까?",
                options: ["여행 중 멀미를 예방하려면", "집에서 더 잘 자려면", "두통을 치료하려면", "피부 발진을 치료하려면"],
                correctAnswer: "여행 중 멀미를 예방하려면",
                explanation: "비행 전에 약을 복용하는 것은 일반적으로 멀미를 위한 것입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 점안액. 1일 2회 각 눈에 1방울씩 점안합니다. 이 약을 어디에 넣어야 하나요?",
                options: ["당신의 입에", "당신의 귀에", "당신의 눈에는", "당신의 피부에"],
                correctAnswer: "당신의 눈에는",
                explanation: "라벨에는 \"점안액\"과 \"각 눈에 주입\"이라고 적혀 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 두통이 있는 경우 필요에 따라 4~6시간마다 1정을 복용하세요. 하루 최대 4알. 하루에 최대 몇 알까지 복용할 수 있나요?",
                options: ["1", "2", "4", "6"],
                correctAnswer: "4",
                explanation: "라벨에는 \"1일 최대 4정\"이 명시되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 물 한 컵과 함께 섭취하세요. 이 알약에 왜 물이 필요한가요?",
                options: ["피부에 녹이려면", "삼키는 데 도움이 되고 배탈을 예방하기 위해", "색상을 변경하려면", "더 나은 맛을 내기 위해"],
                correctAnswer: "삼키는 데 도움이 되고 배탈을 예방하기 위해",
                explanation: "물 한 잔은 알약을 안전하게 삼키는 데 도움이 되고 위를 보호합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "라벨: 매일 저녁 식사와 함께 1정을 섭취하세요. 이것을 복용하는 가장 좋은 시간은 언제입니까?",
                options: ["아침 식사 시", "점심시간에", "저녁 식사 때", "한밤중에"],
                correctAnswer: "저녁 식사 때",
                explanation: "저녁은 저녁이에요."
            )
        ]
    )

    // MARK: - Exercise 44: Reading a Menu
    private static let readingAMenu = Exercise(
        id: UUID(),
        title: "메뉴 읽기",
        instructions: "메뉴 정보를 사용하여 질문에 답하세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 치즈버거 $8.00, 감자튀김 $3.00, 탄산음료 $2.00. 치즈버거 가격은 얼마인가요?",
                options: ["$8.00", "$3.00", "$2.00", "$11.00"],
                correctAnswer: "$8.00",
                explanation: "메뉴 목록에는 치즈버거가 $8.00라고 나와 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 커피 $2.50, 차 $2.00, 머핀 $3.00. 어떤 품목이 가장 저렴합니까?",
                options: ["커피", "차", "머핀", "비용은 똑같습니다"],
                correctAnswer: "차",
                explanation: "2.00달러가 최저가입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 토마토 수프 $5.00, 그린 샐러드 $6.00, 치킨 시저 $9.00. 토마토 수프 한 그릇은 얼마인가요?",
                options: ["$5.00", "$6.00", "$9.00", "$14.00"],
                correctAnswer: "$5.00",
                explanation: "토마토 수프의 가격은 $5.00입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 팬케이크 아침 $10.00, 프렌치 토스트 $9.00, 베이컨 사이드 $4.00. 프렌치 토스트의 가격은 얼마입니까?",
                options: ["$10.00", "$9.00", "$4.00", "$13.00"],
                correctAnswer: "$9.00",
                explanation: "프렌치 토스트의 가격은 $9.00입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 치즈 피자 슬라이스 $4.00, 페퍼로니 피자 슬라이스 $4.50. 페퍼로니 슬라이스는 치즈 슬라이스보다 가격이 얼마나 더 듭니까?",
                options: ["$0.50", "$1.00", "$4.50", "$8.50"],
                correctAnswer: "$0.50",
                explanation: "$4.50에서 $4.00를 빼면 $0.50입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 치킨 샌드위치 $7.00, 피시 앤 칩스 $11.00. $10.00가 있습니다. 어떤 식사를 감당할 수 있나요?",
                options: ["치킨 샌드위치", "피쉬 앤 칩스", "두 식사 모두", "식사도 아님"],
                correctAnswer: "치킨 샌드위치",
                explanation: "$7.00는 $10.00보다 적지만 $11.00는 그 이상입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 초콜릿 아이스크림 $4.00, 애플 파이 $5.00, 파이에 바닐라 아이스크림 추가 $1.50. 바닐라 아이스크림을 곁들인 애플파이는 얼마인가요?",
                options: ["$5.00", "$6.50", "$9.00", "$4.00"],
                correctAnswer: "$6.50",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 칠면조 랩 $8.50, 칩 $1.50, 주스 $2.00. 칠면조 랩과 주스의 총 비용은 얼마입니까?",
                options: ["$8.50", "$10.00", "$10.50", "$12.00"],
                correctAnswer: "$10.50",
                explanation: "$8.50 + $2.00 = $10.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 야채 수프 $4.00, 쇠고기 스튜 $7.00. 어떤 요리에 고기가 들어가나요?",
                options: ["야채 수프", "쇠고기 스튜", "둘 다", "둘 다"],
                correctAnswer: "쇠고기 스튜",
                explanation: "쇠고기는 고기의 일종입니다. 야채는 그렇지 않습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 타코 $3.00, 퀘사디야 $6.00, 소다 $2.00. 퀘사디아 가격은 얼마인가요?",
                options: ["$3.00", "$6.00", "$2.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "메뉴에는 Quesadilla가 $6.00로 표시되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 스파게티 $12.00, 라자냐 $14.00, 마늘빵 $3.00. 마늘빵 한 조각은 얼마인가요?",
                options: ["$12.00", "$14.00", "$3.00", "$15.00"],
                correctAnswer: "$3.00",
                explanation: "마늘빵 가격은 3,000원입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "메뉴: 에그 베니 $11.00, 오트밀 $6.00, 과일볼 $5.00. 가장 비싼 아침 식사 품목은 무엇입니까?",
                options: ["에그 베니", "오트밀", "과일 그릇", "가격은 똑같아"],
                correctAnswer: "에그 베니",
                explanation: "$11.00가 목록에서 가장 높은 가격입니다."
            )
        ]
    )

    // MARK: - Exercise 45: Understanding Bills
    private static let understandingBills = Exercise(
        id: UUID(),
        title: "청구서 이해",
        instructions: "청구서 정보를 읽고 질문에 답하세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "전기요금: 총 납부액: $45.00. 만기일: 7월 15일. 지불해야 할 금액은 얼마입니까?",
                options: ["$15.00", "$45.00", "7월 15일", "무료"],
                correctAnswer: "$45.00",
                explanation: "총 지불 금액은 $45.00입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "수도 요금: 마감일: 10월 10일. 연체료: $5.00. 오늘은 10월 12일입니다. 오늘 결제하면 어떻게 되나요?",
                options: ["당신은 정기적으로 금액을 지불", "You pay a $5.00 late fee", "할인을 받으세요", "아무것도"],
                correctAnswer: "You pay a $5.00 late fee",
                explanation: "오늘은 만기일 이후이므로 연체료가 부과됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "인터넷 요금: 월 요금: $60.00. 자동 결제 할인: -$5.00. Autopay의 최종 가격은 얼마인가요?",
                options: ["$60.00", "$65.00", "$55.00", "$5.00"],
                correctAnswer: "$55.00",
                explanation: "$60.00에서 $5.00를 빼면 $55.00가 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "가스 요금: 현재 요금: $30.00. 미지급 잔액: $10.00. 총 잔액: $40.00. 지난 달 미지급 금액이 이월된 금액은 얼마입니까?",
                options: ["$30.00", "$10.00", "$40.00", "$0.00"],
                correctAnswer: "$10.00",
                explanation: "'미지급 잔액'은 지난달 이월 금액인 $10.00를 나타냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "전화요금 청구서: 만기일: 6월 20일. 현재 날짜: 6월 15일. 이 청구서를 기한 내에 납부할 수 있는 날이 며칠 남았습니까?",
                options: ["5일", "20일", "15일", "1일"],
                correctAnswer: "5일",
                explanation: "6월 20일부터 6월 15일까지 5일입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "케이블 요금: 총 요금: $80.00. 지급 대상: “XYZ Cable Co.” 수표는 누구에게 보내야 합니까?",
                options: ["$80.00", "XYZ 케이블 주식회사", "케이블 가이", "현금"],
                correctAnswer: "XYZ 케이블 주식회사",
                explanation: "이 법안에는 \"XYZ Cable Co.\"에 대한 지불이 명시되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공과금: 수도: $20.00, 가스: $30.00, 전기: $50.00. 총액: $100.00. 어떤 유틸리티 서비스 비용이 가장 많이 드나요?",
                options: ["물", "가스", "전기", "비용은 똑같습니다"],
                correctAnswer: "전기",
                explanation: "전기 요금은 $50.00로 최고 금액입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "자동차 보험: 반연 보험료: $600.00. 이 청구서를 얼마나 자주 지불합니까?",
                options: [],
                correctAnswer: "",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "스트리밍 서비스 청구서: 계정 상태: 정지됨. 미결제 잔액: $15.00. 서비스가 작동하지 않는 이유는 무엇입니까?",
                options: ["인터넷이 다운됐어요", "TV가 고장났어요", "미지급 잔액으로 인해 계정이 정지되었습니다.", "스트림이 버퍼링 중입니다."],
                correctAnswer: "미지급 잔액으로 인해 계정이 정지되었습니다.",
                explanation: "청구서에는 계정 상태가 정지되었다고 명시되어 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "체육관 멤버십: 연회비: $120.00. 월 수수료: $10.00. 연간 비용은 얼마입니까?",
                options: ["$10.00", "$120.00", "$130.00", "$12.00"],
                correctAnswer: "$120.00",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "난방비: 1월: $110.00. 7월: $20.00. 1월에 청구서가 더 높은 이유는 무엇입니까?",
                options: ["여름엔 가스비가 더 비싸요", "1월 겨울에는 더 많은 열이 사용됩니다.", "1월에는 집이 비어 있다", "시계가 바뀌었어요"],
                correctAnswer: "1월 겨울에는 더 많은 열이 사용됩니다.",
                explanation: "겨울 날씨에는 집에 난방이 필요하므로 에너지 사용량이 늘어납니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "신용카드 청구서: 최소 지불액: $25.00. 총 잔액: $500.00. 연체료를 피하기 위해 이번 달에 지불할 수 있는 최저 금액은 얼마입니까?",
                options: ["$25.00", "$500.00", "$0.00", "$475.00"],
                correctAnswer: "$25.00",
                explanation: "$25.00의 \"최소 지불액\"은 허용되는 최저 금액입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "의료비: 총 비용: $150.00. 보장되는 보험: $120.00. 환자 책임: $30.00. 당신은 빚진 금액이 얼마입니까?",
                options: ["$150.00", "$120.00", "$30.00", "$0.00"],
                correctAnswer: "$30.00",
                explanation: "환자의 책임은 환자가 지불해야 하는 금액인 $30.00입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "신문 구독: 다음 갱신 날짜: 2026년 12월 31일. 갱신하기 전에 취소하려면 언제 전화해야 합니까?",
                options: ["2026년 12월 31일 이전", "2026년 12월 31일 이후", "2027년 1월", "절대로"],
                correctAnswer: "2026년 12월 31일 이전",
                explanation: "갱신 날짜 이전에 취소하면 다음 청구 주기가 중단됩니다."
            )
        ]
    )

    // MARK: - Exercise 46: What Would You Do?
    private static let whatWouldYouDo = Exercise(
        id: UUID(),
        title: "당신은 무엇을 하시겠습니까?",
        instructions: "설명된 상황에 가장 적합한 대응을 선택하세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "부엌에서 연기 냄새가 나지만 불은 보이지 않습니다. 먼저 무엇을 해야 할까요?",
                options: ["무시하세요", "창문을 열고 난로를 확인해 보세요", "친구에게 전화해서 채팅하세요", "다시 잠에 들기"],
                correctAnswer: "창문을 열고 난로를 확인해 보세요",
                explanation: "스토브를 점검하는 것은 일반적인 사소한 연기 문제를 안전하게 식별하고 해결하기 위한 첫 번째 단계입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 H-마트에 있는데 집에 지갑을 두고 왔다는 것을 깨달았습니다. 최선의 선택은 무엇입니까?",
                options: ["돈을 내지 않고 식료품을 가져가세요", "계산원에게 카트를 들고 집에 가서 가져오라고 요청하세요.", "울면서 가게를 떠나다", "매니저와 논쟁하다"],
                correctAnswer: "계산원에게 카트를 들고 집에 가서 가져오라고 요청하세요.",
                explanation: "점원에게 물건을 보관해 달라고 요청하는 것이 정중하고 표준적인 응답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "날계란을 부엌 바닥에 떨어뜨리면 깨집니다. 당신은 무엇을 해야 합니까?",
                options: ["내일까지 거기 놔둬", "즉시 종이 타월과 비누로 닦아주세요.", "러그로 덮어주세요", "고양이가 먹게 해주세요"],
                correctAnswer: "즉시 종이 타월과 비누로 닦아주세요.",
                explanation: "날계란은 미끄럽고 박테리아를 끌어들이기 때문에 빨리 치워야 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신의 친구가 자신의 개가 어제 세상을 떠났다고 말했습니다. 무슨 말을 해야 할까요?",
                options: ["그거 재밌어", "당신을 잃어서 너무 안타깝습니다.", "대신 고양이를 키워야 해", "장난감을 가질 수 있나요?"],
                correctAnswer: "당신을 잃어서 너무 안타깝습니다.",
                explanation: "애도를 표하는 것은 슬픔에 대한 공감적 반응입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 모르는 번호로부터 복권에 당첨됐다고 은행 계좌 정보를 묻는 전화를 받았습니다. 당신은 무엇을 해야 합니까?",
                options: ["즉시 그들에게 귀하의 세부 정보를 제공하십시오", "전화를 끊고 개인 정보를 공유하지 마세요.", "나중에 다시 전화해 달라고 요청하세요.", "가족들에게 전화해서 축하하세요"],
                correctAnswer: "전화를 끊고 개인 정보를 공유하지 마세요.",
                explanation: "알 수 없는 발신자가 민감한 은행 정보를 요청하는 것은 흔한 사기입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "따뜻한 방에 서 있으면 어지러움과 현기증을 느낍니다. 당신은 무엇을 해야 합니까?",
                options: ["계속 서서 눈을 감아", "얼른 자리에 앉아 물을 마셔보세요", "화장실로 달려가", "회전하다"],
                correctAnswer: "얼른 자리에 앉아 물을 마셔보세요",
                explanation: "앉으면 넘어지는 것을 방지하고, 물은 탈수 증상을 회복하는 데 도움이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "부엌 싱크대 아래에서 물이 새는 것을 봅니다. 가장 먼저 해야 할 일은 무엇입니까?",
                options: ["화가에게 전화하기", "물을 받기 위해 물이 새는 부분 아래에 양동이를 놓습니다.", "나중에 부엌 바닥을 청소하세요", "조명을 꺼주세요"],
                correctAnswer: "물을 받기 위해 물이 새는 부분 아래에 양동이를 놓습니다.",
                explanation: "양동이는 수리를 요청하는 동안 물로 인한 피해를 즉시 방지합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 만찬에 초대받았지만 갈 수 없습니다. 당신은 무엇을 해야 합니까?",
                options: ["그냥 나타나지마", "참석할 수 없음을 호스트에게 미리 알리십시오.", "예고도 없이 늦게 나타나", "답장 대신 선물 보내기"],
                correctAnswer: "참석할 수 없음을 호스트에게 미리 알리십시오.",
                explanation: "호스트에게 미리 알리는 것은 예의바르며 호스트가 계획을 조정할 수 있도록 돕습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 친구 집에서 실수로 장식용 꽃병을 깨뜨렸습니다. 올바른 응답은 무엇입니까?",
                options: ["소파 아래에 조각을 숨기세요", "사과하고 교체하자고 제안", "안 한 척 해", "개를 비난해라"],
                correctAnswer: "사과하고 교체하자고 제안",
                explanation: "정직하고 피해를 해결하겠다고 제안하는 것은 정중하고 책임감 있는 행동입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "집 열쇠를 찾을 수 없고 밖에 잠겨 있습니다. 가장 좋은 단계는 무엇입니까?",
                options: ["창문을 깨고 안으로 들어가세요", "예비 열쇠나 자물쇠 제조공을 가지고 가족에게 전화하세요.", "영원히 현관에서 기다려라", "문을 차다"],
                correctAnswer: "예비 열쇠나 자물쇠 제조공을 가지고 가족에게 전화하세요.",
                explanation: "예비 열쇠를 받거나 전문가에게 전화하는 것이 가장 안전한 출입 방법입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "가로등은 켜져 있지만 집에 전력이 공급되지 않는 것을 발견했습니다. 당신은 무엇을 해야 합니까?",
                options: ["회로 차단기 상자를 확인하세요.", "새 텔레비전을 구입하세요", "즉시 잠자리에 드세요", "경찰에 전화하세요"],
                correctAnswer: "회로 차단기 상자를 확인하세요.",
                explanation: "차단기를 확인하면 현지 여행인지 아니면 대규모 정전인지 판단하는 데 도움이 됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "무거운 식료품 가방을 들고 애쓰는 노인 이웃을 봅니다. 당신은 무엇을 해야 합니까?",
                options: ["빨리 지나쳐가", "가방 운반을 도와주겠다고 제안하다", "사진을 찍어보세요", "더 빨리 걸으라고 말해주세요"],
                correctAnswer: "가방 운반을 도와주겠다고 제안하다",
                explanation: "도움을 제공하는 것은 지역사회의 지원과 친절을 보여줍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 커피를 한 모금 마시고 그것이 너무 뜨겁고 입에 화상을 입는다는 것을 깨달았습니다. 당신은 무엇을 해야 합니까?",
                options: ["남은 건 빨리 마셔", "조심히 뱉어내고 찬물을 마신다", "큰 소리로 비명을 지르다", "머그잔을 던져라"],
                correctAnswer: "조심히 뱉어내고 찬물을 마신다",
                explanation: "찬물은 화상을 식히고 불편함을 완화시킵니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "의사가 새로운 약을 처방했지만 복용 방법을 이해하지 못하는 경우. 당신은 무엇을 해야 합니까?",
                options: ["복용량을 추측", "약사나 의사에게 설명을 요청하세요.", "약을 복용하지 마십시오", "소셜미디어에서 검색해 보세요"],
                correctAnswer: "약사나 의사에게 설명을 요청하세요.",
                explanation: "의료 전문가는 처방 지침에 대한 신뢰할 수 있는 유일한 출처입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "실수로 친구의 흰색 카펫에 레드 와인을 쏟았습니다. 당신은 무엇을 해야 합니까?",
                options: ["얼룩 위에 의자를 놓으십시오.", "즉시 사과하고 정리하도록 도와주세요.", "일찍 파티에서 나가세요", "포도 주스였다고 전해줘"],
                correctAnswer: "즉시 사과하고 정리하도록 도와주세요.",
                explanation: "유출물을 즉시 청소하면 영구적인 얼룩을 방지할 수 있습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1분마다 짧게 울리는 연기 경보음이 들립니다. 이것은 무엇을 의미합니까?",
                options: ["불이 났어요", "배터리가 부족해서 교체해야 합니다", "알람이 고장났어요", "아무것도"],
                correctAnswer: "배터리가 부족해서 교체해야 합니다",
                explanation: "짧은 소리가 한 번 울리면 백업 배터리가 부족하다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "운전을 하다가 뒤에서 불빛이 깜박이는 긴급 차량을 발견했습니다. 당신은 무엇을 해야 합니까?",
                options: ["속도를 높여 앞서 나가세요", "길가에 차를 대고 안전하게 정지하세요", "차선 중앙에서는 즉시 정지하세요.", "무시하세요"],
                correctAnswer: "길가에 차를 대고 안전하게 정지하세요",
                explanation: "차를 세우면 응급 구조대를 위한 경로가 확보됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은행으로부터 비밀번호 확인을 위해 링크를 클릭하라는 이메일을 받게 됩니다. 당신은 무엇을 해야 합니까?",
                options: ["링크를 클릭하고 비밀번호를 입력하세요", "이메일을 삭제하거나 은행 공식 전화번호를 사용하여 직접 은행에 문의하세요.", "친구에게 전달하세요.", "비밀번호를 알려주세요"],
                correctAnswer: "이메일을 삭제하거나 은행 공식 전화번호를 사용하여 직접 은행에 문의하세요.",
                explanation: "은행은 이메일 링크를 통해 비밀번호를 요구하지 않습니다. 이건 피싱 사기입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "당신은 길거리에서 돈과 신분증이 들어 있는 지갑을 발견합니다. 당신은 무엇을 해야 합니까?",
                options: ["돈은 갖고 지갑은 버리세요", "경찰에 제출하거나 신분증을 이용해 주인에게 연락해보세요", "길가에 놔두세요", "낯선 사람에게 줘"],
                correctAnswer: "경찰에 제출하거나 신분증을 이용해 주인에게 연락해보세요",
                explanation: "잃어버린 물건을 주인에게 돌려주는 것이 정직한 행동입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "크고 지속적인 경보음과 함께 연기 경보기가 울립니다. 당신은 무엇을 해야 합니까?",
                options: ["무시하고 멈출 때까지 기다리세요", "화재 여부를 확인하고 필요한 경우 안전하게 건물에서 나가세요.", "즉시 배터리를 교체하십시오.", "자러 가세요"],
                correctAnswer: "화재 여부를 확인하고 필요한 경우 안전하게 건물에서 나가세요.",
                explanation: "지속적인 경보는 연기나 화재를 알리므로 즉각적인 안전 점검과 대피가 필요합니다."
            )
        ]
    )

}
