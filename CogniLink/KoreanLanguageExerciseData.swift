import Foundation

struct KoreanLanguageExerciseData {

    static let allExercises: [Exercise] = [
        categoryCrossoutEasy,
        categoryCrossoutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonymsEasy,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencingSteps,
        rhymingPairs,
        wordAssociation,
        completeTheSaying,
        compoundWords,
        prefixAndSuffix
    ]

    // MARK: - Exercise 1: Category Cross-Out (Easy)
    private static let categoryCrossoutEasy = Exercise(
        id: UUID(),
        title: "카테고리 크로스아웃(쉬움)",
        instructions: "그룹에 속하지 않는 단어를 탭하세요.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "사과, 배, 당근, 자두",
                options: ["사과", "배", "당근", "자두"],
                correctAnswer: "당근",
                explanation: "과일이 아닌 야채"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "자동차, 버스, 숟가락, 트럭",
                options: ["자동차", "버스", "숟가락", "트럭"],
                correctAnswer: "숟가락",
                explanation: "차량이 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "금, 고양이, 개, 새",
                options: ["골드", "고양이", "개", "새"],
                correctAnswer: "골드",
                explanation: "동물이 아닌 금속"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "셔츠, 바지, 포크, 모자",
                options: ["셔츠", "바지", "포크", "모자"],
                correctAnswer: "포크",
                explanation: "의류 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "의자, 테이블, 사과, 침대",
                options: ["의자", "표", "사과", "침대"],
                correctAnswer: "사과",
                explanation: "가구가 아닌 음식"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "망치, 렌치, 베개, 드릴",
                options: ["해머", "렌치", "베개", "드릴"],
                correctAnswer: "베개",
                explanation: "도구가 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1월, 3월, 금요일, 5월",
                options: ["1월", "3월", "금요일", "5월"],
                correctAnswer: "금요일",
                explanation: "한 달이 아닌 요일"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "파리, 런던, 주피터, 로마",
                options: ["파리", "런던", "목성", "로마"],
                correctAnswer: "목성",
                explanation: "도시가 아닌 행성"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "개, 고양이, 나무, 쥐",
                options: ["개", "고양이", "나무", "마우스"],
                correctAnswer: "나무",
                explanation: "동물이 아니다"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "눈, 코, 자동차, 귀",
                options: ["눈", "코", "자동차", "귀"],
                correctAnswer: "자동차",
                explanation: "신체 일부가 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "우유, 주스, 빵, 물",
                options: ["우유", "주스", "빵", "물"],
                correctAnswer: "빵",
                explanation: "음료가 아닌 음식"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소파, 침대, 스토브, 의자",
                options: ["소파", "침대", "스토브", "의자"],
                correctAnswer: "스토브",
                explanation: "앉거나 자는 가구가 아닌 가전제품"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "장미, 튤립, 데이지, 자동차",
                options: ["로즈", "튤립", "데이지", "자동차"],
                correctAnswer: "자동차",
                explanation: "꽃이 아니다"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "펜, 연필, 크레용, 포크",
                options: ["펜", "연필", "크레용", "포크"],
                correctAnswer: "포크",
                explanation: "글쓰기 도구가 아닌"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소파, 러그, 램프, 치킨",
                options: ["소파", "러그", "램프", "치킨"],
                correctAnswer: "치킨",
                explanation: "생활용품이 아닌"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "태양, 비, 바람, 셔츠",
                options: ["태양", "비", "바람", "셔츠"],
                correctAnswer: "셔츠",
                explanation: "날씨 관련 단어가 아닙니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "접시, 그릇, 컵, 자동차",
                options: ["플레이트", "그릇", "컵", "자동차"],
                correctAnswer: "자동차",
                explanation: "접시나 용기가 아닌"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "버스, 기차, 보트, 고양이",
                options: ["버스", "기차", "보트", "고양이"],
                correctAnswer: "고양이",
                explanation: "차량이 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "모자, 양말, 신발, 냄비",
                options: ["모자", "양말", "신발", "냄비"],
                correctAnswer: "냄비",
                explanation: "의류가 아닌 조리기구"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "고양이, 개, 새, 트럭",
                options: ["고양이", "개", "새", "트럭"],
                correctAnswer: "트럭",
                explanation: "동물이 아니다"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "3월, 4월, 화요일, 6월",
                options: ["3월", "4월", "화요일", "6월"],
                correctAnswer: "화요일",
                explanation: "한 달이 아닌 요일"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빨간색, 파란색, 테이블, 녹색",
                options: ["빨간색", "블루", "표", "녹색"],
                correctAnswer: "표",
                explanation: "색상이 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "칼, 포크, 숟가락, 침대",
                options: ["칼", "포크", "숟가락", "침대"],
                correctAnswer: "침대",
                explanation: "식기가 아닌 가구"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "독수리, 매, 올빼미, 물고기",
                options: ["이글", "호크", "올빼미", "물고기"],
                correctAnswer: "물고기",
                explanation: "새가 아니다"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "페니, 니켈, 다임, 재킷",
                options: ["페니", "니켈", "다임", "재킷"],
                correctAnswer: "재킷",
                explanation: "통화가 아님"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사자, 곰, 호랑이, 피자",
                options: ["라이온", "곰", "타이거", "피자"],
                correctAnswer: "피자",
                explanation: "동물이 아니다"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사과, 바나나, 당근, 포도",
                options: ["사과", "바나나", "당근", "포도"],
                correctAnswer: "당근",
                explanation: "과일이 아닌 야채"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "의자, 테이블, 책상, 돌고래",
                options: ["의자", "표", "책상", "돌고래"],
                correctAnswer: "돌고래",
                explanation: "가구가 아닌 바다 동물"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "로빈, 독수리, 연어, 앵무새",
                options: ["로빈", "이글", "연어", "앵무새"],
                correctAnswer: "연어",
                explanation: "새가 아니라 물고기"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "야구, 테니스, 체스, 축구",
                options: ["야구", "테니스", "체스", "축구"],
                correctAnswer: "체스",
                explanation: "보드게임은 육체적 스포츠가 아니다"
            )
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out (Hard)
    private static let categoryCrossoutHard = Exercise(
        id: UUID(),
        title: "카테고리 크로스아웃(하드)",
        instructions: "그룹에 속하지 않는 단어를 탭하세요.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "비유, 은유, 과장법, 문단",
                options: ["비슷한", "은유", "과장법", "단락"],
                correctAnswer: "단락",
                explanation: "비유적 표현이 아닌 텍스트 구조"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "대퇴골, 경골, 요골, 각막",
                options: ["대퇴골", "경골", "반경", "각막"],
                correctAnswer: "각막",
                explanation: "뼈가 아닌 눈의 일부"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "베토벤, 모차르트, 피카소, 쇼팽",
                options: ["베토벤", "모차르트", "피카소", "쇼팽"],
                correctAnswer: "피카소",
                explanation: "작곡가가 아닌 화가"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "카디건, 블레이저, 터틀넥, 스틸레토",
                options: ["카디건", "블레이저", "터틀넥", "스틸레토"],
                correctAnswer: "스틸레토",
                explanation: "상의가 아닌 신발"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "템스, 나일강, 아마존, 에베레스트",
                options: ["템스", "나일강", "아마존", "에베레스트"],
                correctAnswer: "에베레스트",
                explanation: "강이 아닌 산"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "회고록, 전기, 자서전, 소네트",
                options: ["회고록", "약력", "자서전", "소네트"],
                correctAnswer: "소네트",
                explanation: "인생 이야기가 아닌 시"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "인슐린, 아드레날린, 에스트로겐, 이부프로펜",
                options: ["인슐린", "아드레날린", "에스트로겐", "이부프로펜"],
                correctAnswer: "이부프로펜",
                explanation: "자연적으로 발생하는 호르몬이 아닌 제조된 약물"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "섭씨, 화씨, 켈빈, 데시벨",
                options: ["섭씨", "화씨", "켈빈", "데시벨"],
                correctAnswer: "데시벨",
                explanation: "온도가 아닌 소리를 측정합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "배심원, 판사, 집행관, 원고",
                options: ["심사위원단", "판사", "집행관", "원고"],
                correctAnswer: "원고",
                explanation: "법원 직원이 아닌 사건 당사자"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소네트, 하이쿠, 리머릭, 산문",
                options: ["소네트", "하이쿠", "리머릭", "산문"],
                correctAnswer: "산문",
                explanation: "시 형식이 아닌"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소프라노, 알토, 테너, 지휘자",
                options: ["소프라노", "알토", "테너", "지휘자"],
                correctAnswer: "지휘자",
                explanation: "오케스트라를 이끄는 가창형이 아닌"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "인상주의, 초현실주의, 입체주의, 재즈",
                options: ["인상주의", "초현실주의", "입체파", "재즈"],
                correctAnswer: "재즈",
                explanation: "시각 예술 운동이 아닌 음악 장르"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "스톡홀름, 오슬로, 헬싱키, 브뤼셀",
                options: ["스톡홀름", "오슬로", "헬싱키", "브뤼셀"],
                correctAnswer: "브뤼셀",
                explanation: "스칸디나비아의 수도가 아닌 벨기에"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "루비, 사파이어, 에메랄드, 화강암",
                options: ["루비", "사파이어", "에메랄드", "화강암"],
                correctAnswer: "화강암",
                explanation: "보석이 아닌 바위"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "맹장, 담낭, 췌장, 대퇴골",
                options: ["부록", "담낭", "췌장", "대퇴골"],
                correctAnswer: "대퇴골",
                explanation: "장기가 아니라 뼈다"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "첼로, 비올라, 하프, 오보에",
                options: ["첼로", "비올라", "하프", "오보에"],
                correctAnswer: "오보에",
                explanation: "현악기가 아닌 목관악기"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "프레스코, 모자이크, 석판화, 소나타",
                options: ["프레스코", "모자이크", "석판화", "쏘나타"],
                correctAnswer: "쏘나타",
                explanation: "시각 예술 형식이 아닌 음악"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "군도, 피요르드, 고원, 방언",
                options: ["군도", "피요르드", "고원", "방언"],
                correctAnswer: "방언",
                explanation: "지리적 특징이 아닌 언어 변화"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "마그네슘, 칼슘, 칼륨, 석유",
                options: ["마그네슘", "칼슘", "칼륨", "석유"],
                correctAnswer: "석유",
                explanation: "광물이 아닌 화석연료"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "플라멩코, 탱고, 왈츠, 오페라",
                options: ["플라멩코", "탱고", "왈츠", "오페라"],
                correctAnswer: "오페라",
                explanation: "댄스가 아닌 성악 퍼포먼스"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "동맥, 정맥, 모세혈관, 힘줄",
                options: ["동맥", "정맥", "모세혈관", "힘줄"],
                correctAnswer: "힘줄",
                explanation: "혈관이 아닌 근육을 뼈에 연결합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "툰드라, 타이가, 사바나, 델타",
                options: ["툰드라", "타이가", "사바나", "델타"],
                correctAnswer: "델타",
                explanation: "생물군계가 아닌 강 하구의 지형"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "태풍, 사이클론, 몬순, 진전",
                options: ["태풍", "사이클론", "몬순", "떨림"],
                correctAnswer: "떨림",
                explanation: "기상 현상이 아닌 지진 운동"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "연골, 인대, 힘줄, 뉴런",
                options: ["연골", "인대", "힘줄", "뉴런"],
                correctAnswer: "뉴런",
                explanation: "결합조직이 아닌 신경세포"
            )
        ]
    )

    // MARK: - Exercise 3: Phrase Completion
    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "공통 표현 완성하기",
        instructions: "빈칸에 공통으로 들어갈 가장 알맞은 단어를 고르세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “밥을 ___”",
                options: ["먹다", "가다", "오다", "사다"],
                correctAnswer: "먹다",
                explanation: "한국어에서 식사를 하는 행위는 ‘밥을 먹다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “옷을 ___”",
                options: ["입다", "쓰다", "차다", "신다"],
                correctAnswer: "입다",
                explanation: "몸에 의복을 걸치는 행위는 ‘옷을 입다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “신발을 ___”",
                options: ["신다", "입다", "쓰다", "차다"],
                correctAnswer: "신다",
                explanation: "발에 신을 신는 행위는 ‘신발을 신다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “모자를 ___”",
                options: ["쓰다", "신다", "입다", "차다"],
                correctAnswer: "쓰다",
                explanation: "머리에 모자를 얹는 행위는 ‘모자를 쓰다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “차를 ___”",
                options: ["타다", "입다", "쓰다", "신다"],
                correctAnswer: "타다",
                explanation: "교통 수단에 탑승하는 행위는 ‘차를 타다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “길을 ___”",
                options: ["건너다", "타다", "신다", "쓰다"],
                correctAnswer: "건너다",
                explanation: "도로를 횡단하는 행위는 ‘길을 건너다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “손을 ___”",
                options: ["씻다", "먹다", "가다", "자다"],
                correctAnswer: "씻다",
                explanation: "손의 위생을 챙기는 행위는 ‘손을 씻다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “물을 ___”",
                options: ["마시다", "먹다", "쓰다", "신다"],
                correctAnswer: "마시다",
                explanation: "액체를 삼키는 행위는 ‘물을 마시다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “잠을 ___”",
                options: ["자다", "먹다", "가다", "쓰다"],
                correctAnswer: "자다",
                explanation: "수면을 취하는 행위는 ‘잠을 자다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “책을 ___”",
                options: ["읽다", "쓰다", "신다", "입다"],
                correctAnswer: "읽다",
                explanation: "책의 내용을 보는 행위는 ‘책을 읽다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “집을 ___”",
                options: ["짓다", "신다", "입다", "타다"],
                correctAnswer: "짓다",
                explanation: "건축물을 건설하는 행위는 ‘집을 짓다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “편지를 ___”",
                options: ["쓰다", "신다", "입다", "마시다"],
                correctAnswer: "쓰다",
                explanation: "글을 작성하는 행위는 ‘편지를 쓰다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “전화를 ___”",
                options: ["걸다", "신다", "입다", "쓰다"],
                correctAnswer: "걸다",
                explanation: "통화를 시도하는 행위는 ‘전화를 걸다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “꽃을 ___”",
                options: ["심다", "신다", "입다", "쓰다"],
                correctAnswer: "심다",
                explanation: "화초를 땅에 묻어 기르는 행위는 ‘꽃을 심다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “문을 ___”",
                options: ["열다", "신다", "입다", "마시다"],
                correctAnswer: "열다",
                explanation: "출입구를 개방하는 행위는 ‘문을 열다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “안경을 ___”",
                options: ["쓰다", "신다", "입다", "타다"],
                correctAnswer: "쓰다",
                explanation: "안경을 착용하는 행위는 ‘안경을 쓰다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “노래를 ___”",
                options: ["부르다", "신다", "입다", "쓰다"],
                correctAnswer: "부르다",
                explanation: "가창을 하는 행위는 ‘노래를 부르다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “시험을 ___”",
                options: ["보다", "신다", "입다", "쓰다"],
                correctAnswer: "보다",
                explanation: "평가를 치르는 행위는 ‘시험을 보다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “약을 ___”",
                options: ["먹다", "입다", "신다", "쓰다"],
                correctAnswer: "먹다",
                explanation: "의약품을 복용하는 행위는 ‘약을 먹다’라고 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "공통 표현을 완성하세요: “시계를 ___”",
                options: ["차다", "입다", "신다", "쓰다"],
                correctAnswer: "차다",
                explanation: "손목 등에 시계를 착용하는 행위는 ‘시계를 차다’라고 합니다."
            )
        ]
    )

    // MARK: - Exercise 4: Synonyms (Easy)
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "동의어 (쉬움)",
        instructions: "주어진 단어와 같은 의미를 갖는 단어를 선택하세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 분노",
                options: ["행복하다", "맹렬한", "진정", "슬픈"],
                correctAnswer: "맹렬한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 춥다",
                options: ["따뜻한", "냉동", "뜨거운", "온화한"],
                correctAnswer: "냉동",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 빅",
                options: ["작은", "큰", "짧은", "얇은"],
                correctAnswer: "큰",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 피곤하다",
                options: ["경고", "깨어", "지쳐", "쉬었다"],
                correctAnswer: "지쳐",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 겁이 났다",
                options: ["용감한", "겁에 질린", "진정", "대담한"],
                correctAnswer: "겁에 질린",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 종류",
                options: ["뜻", "잔인한", "온화한", "무례한"],
                correctAnswer: "온화한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 빠르다",
                options: ["천천히", "빨리", "게으른", "둔한"],
                correctAnswer: "빨리",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: OLD",
                options: ["젊은", "고대의", "새로운", "신선한"],
                correctAnswer: "고대의",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 더러운",
                options: ["깨끗한", "더러운", "깔끔한", "깔끔한"],
                correctAnswer: "더러운",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 밝다",
                options: ["희미한", "어두운", "빛나는", "둔한"],
                correctAnswer: "빛나는",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 5: Synonyms (Hard)
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "동의어(어려움)",
        instructions: "주어진 단어와 같은 의미를 갖는 단어를 선택하세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 우울함",
                options: ["즐거운", "슬픈", "흥분하다", "내용"],
                correctAnswer: "슬픈",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 고요함",
                options: ["시끄러운", "동요된", "평화로운", "광적인"],
                correctAnswer: "평화로운",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 용기 있는",
                options: ["소심한", "두려운", "용감한", "비겁한"],
                correctAnswer: "용감한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 특별하다",
                options: ["평범한", "이상한", "정상", "전형적인"],
                correctAnswer: "이상한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 풍부함",
                options: ["부족한", "풍부한", "드문", "제한된"],
                correctAnswer: "풍부한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 미약하다",
                options: ["강한", "강력한", "약한", "견고한"],
                correctAnswer: "약한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 생생한",
                options: ["둔한", "희미하다", "화려한", "창백한"],
                correctAnswer: "화려한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 검소하다",
                options: ["낭비적인", "검소한", "호화로운", "관대한"],
                correctAnswer: "검소한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: ELOQUENT",
                options: ["중얼거리는", "명확하게 표현하다", "조용한", "서투른"],
                correctAnswer: "명확하게 표현하다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 강인함",
                options: ["약한", "그만두다", "끈질긴", "유연한"],
                correctAnswer: "끈질긴",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 6: Antonyms (Easy)
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "반대말 (쉬움)",
        instructions: "주어진 단어의 반대말을 의미하는 단어를 선택하세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 뜨거워요",
                options: ["따뜻한", "감기", "멋지다", "미지근한"],
                correctAnswer: "감기",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 행복하다",
                options: ["기쁘다", "즐거운", "슬픈", "내용"],
                correctAnswer: "슬픈",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 빅",
                options: ["거대한", "큰", "작은", "키가 큰"],
                correctAnswer: "작은",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 빠르다",
                options: ["빨리", "천천히", "빠른", "빠른"],
                correctAnswer: "천천히",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 깨끗하다",
                options: ["깔끔한", "깔끔한", "더러운", "신선한"],
                correctAnswer: "더러운",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 깨어나다",
                options: ["경고", "알고 있다", "자고", "활성"],
                correctAnswer: "자고",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 시끄러운",
                options: ["시끄러운", "조용한", "호황을 누리고 있는", "강한"],
                correctAnswer: "조용한",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 열려있다",
                options: ["폐쇄", "넓은", "명확한", "무료"],
                correctAnswer: "폐쇄",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 전체",
                options: ["포장된", "비어 있음", "로드됨", "완료"],
                correctAnswer: "비어 있음",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어: 사랑",
                options: ["좋아하다", "같은", "증오", "배려"],
                correctAnswer: "증오",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 7: Sentence Completion (Easy)
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "문장 완성 (쉬움)",
        instructions: "문장을 가장 잘 완성하는 단어를 선택하세요.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 ___에 물을 주었다.",
                options: ["꽃", "바닥", "밀가루"],
                correctAnswer: "꽃",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그는 ___을 입었습니다.",
                options: ["코트", "보트", "염소"],
                correctAnswer: "코트",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "___ 한 잔이 필요해요.",
                options: ["물", "웨이터", "방수 바지"],
                correctAnswer: "물",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 그녀에게 ___라고 전화했습니다.",
                options: ["어머니", "귀찮게 하다", "거품을 내다"],
                correctAnswer: "어머니",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "개는 ___을 흔들었다.",
                options: ["이야기", "꼬리", "키가 큰"],
                correctAnswer: "꼬리",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그는 ___을 껐습니다.",
                options: ["싸움", "빛", "밤"],
                correctAnswer: "빛",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 ___을 구웠어요.",
                options: ["가짜", "호수", "케이크"],
                correctAnswer: "케이크",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "새는 ___을(를) 만들었습니다.",
                options: ["둥지", "휴식", "테스트"],
                correctAnswer: "둥지",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그는 ___을 읽었습니다.",
                options: ["신문", "폐지", "사포"],
                correctAnswer: "신문",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아이들은 ___에서 놀았습니다.",
                options: ["공원", "나무껍질", "어두운"],
                correctAnswer: "공원",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그는 ___을(를) 고쳤습니다.",
                options: ["싱크대", "링크", "윙크"],
                correctAnswer: "싱크대",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "국물이 너무 ___.",
                options: ["뜨거운", "많이", "점"],
                correctAnswer: "뜨거운",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 ___을 열었습니다.",
                options: ["우산", "바닐라", "고릴라"],
                correctAnswer: "우산",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그는 ___을(를) 지불했습니다.",
                options: ["계산서", "채우다", "밀"],
                correctAnswer: "계산서",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "고양이는 ___에 앉았습니다.",
                options: ["매트", "박쥐", "쥐"],
                correctAnswer: "매트",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 따뜻한 ___을 입었습니다.",
                options: ["스웨터", "찰싹 때리다", "흩어지다"],
                correctAnswer: "스웨터",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 ___을 심었습니다.",
                options: ["정원", "용서하다", "소장"],
                correctAnswer: "정원",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그녀는 ___에 썼습니다.",
                options: ["일기", "유제품", "데이지"],
                correctAnswer: "일기",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그는 ___을(를) 지불했습니다.",
                options: ["계산서", "채우다", "밀"],
                correctAnswer: "계산서",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아기는 ___입니다.",
                options: ["자고", "청소", "스며드는"],
                correctAnswer: "자고",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 8: Morphology
    private static let morphology = Exercise(
        id: UUID(),
        title: "어형과 형태소 문법",
        instructions: "문장의 흐름에 맞는 올바른 어형을 고르세요.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “아이들이 방에서 ___ 놀고 있다.”",
                options: ["신나게", "신난", "신나며", "신나지"],
                correctAnswer: "신나게",
                explanation: "부사적으로 동사를 수식하므로 ‘신나게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그녀는 반에서 가장 ___ 학생이다.”",
                options: ["똑똑한", "똑똑하게", "똑똑히", "똑똑하다"],
                correctAnswer: "똑똑한",
                explanation: "명사 ‘학생’을 수식하는 관형사형인 ‘똑똑한’이 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그는 에세이를 ___ 작성했다.”",
                options: ["빠르게", "빠른", "빠르다", "빨리"],
                correctAnswer: "빠르게",
                explanation: "동사 ‘작성했다’를 수식하므로 부사형인 ‘빠르게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “강아지가 꼬리를 ___ 흔든다.”",
                options: ["반갑게", "반가운", "반갑다", "반가이"],
                correctAnswer: "반갑게",
                explanation: "동사를 수식하는 부사형 ‘반갑게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그는 밥을 ___ 먹었다.”",
                options: ["맛있게", "맛있는", "맛있다", "맛이"],
                correctAnswer: "맛있게",
                explanation: "동사를 수식하는 부사형 ‘맛있게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “이 꽃은 정말 ___ 피었다.”",
                options: ["아름답게", "아름다운", "아름다움", "아름답다"],
                correctAnswer: "아름답게",
                explanation: "동사를 수식하는 부사형 ‘아름답게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “바람이 ___ 분다.”",
                options: ["세게", "센", "세다", "세며"],
                correctAnswer: "세게",
                explanation: "동사를 수식하는 부사형 ‘세게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “책을 ___ 읽으세요.”",
                options: ["조용히", "조용한", "조용하다", "고요하게"],
                correctAnswer: "조용히",
                explanation: "부사 ‘조용히’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그는 시험을 ___ 마쳤다.”",
                options: ["성공적으로", "성공적인", "성공하다", "성공"],
                correctAnswer: "성공적으로",
                explanation: "동사를 수식하는 부사구 ‘성공적으로’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “날씨가 ___ 더워졌다.”",
                options: ["갑작스럽게", "갑작스러운", "갑자기", "갑작스레"],
                correctAnswer: "갑자기",
                explanation: "부사 ‘갑자기’가 더 자연스럽게 어울립니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그녀는 목소리가 ___ 노래를 불렀다.”",
                options: ["예쁘게", "예쁜", "예쁘다", "예쁨"],
                correctAnswer: "예쁜",
                explanation: "명사 ‘목소리’를 수식하는 형용사형 ‘예쁜’이 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “문제를 ___ 해결했습니다.”",
                options: ["쉽게", "쉬운", "쉽다", "쉬이"],
                correctAnswer: "쉽게",
                explanation: "동사를 수식하는 부사형 ‘쉽게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그는 문을 ___ 닫았다.”",
                options: ["세게", "센", "세다", "세며"],
                correctAnswer: "세게",
                explanation: "동사를 수식하는 부사형 ‘세게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “우리는 공원을 ___ 걸었다.”",
                options: ["천천히", "천천한", "천천하다", "속도로"],
                correctAnswer: "천천히",
                explanation: "동사를 수식하는 부사 ‘천천히’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “어제 비가 ___ 내렸다.”",
                options: ["많이", "많은", "많다", "많음"],
                correctAnswer: "많이",
                explanation: "동사를 수식하는 부사 ‘많이’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그는 친구의 생일을 ___ 축하했다.”",
                options: ["진심으로", "진심인", "진심", "진심하다"],
                correctAnswer: "진심으로",
                explanation: "부사구 ‘진심으로’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “아이가 ___ 잠들었다.”",
                options: ["곤히", "곤한", "곤하다", "깊게"],
                correctAnswer: "곤히",
                explanation: "잠든 상태를 수식하는 부사 ‘곤히’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “그는 숙제를 ___ 끝냈다.”",
                options: ["빠르게", "빠른", "빠르다", "빨리"],
                correctAnswer: "빨리",
                explanation: "동사를 수식하는 부사 ‘빨리’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “이 약은 식사 후에 ___ 복용하세요.”",
                options: ["안전하게", "안전한", "안전", "안전함"],
                correctAnswer: "안전하게",
                explanation: "동사를 수식하는 부사형 ‘안전하게’가 적절합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빈칸에 알맞은 말을 고르세요: “방을 ___ 정리해라.”",
                options: ["깨끗하게", "깨끗한", "깨끗하다", "깨끗이"],
                correctAnswer: "깨끗이",
                explanation: "정리하는 동사를 수식하는 부사 ‘깨끗이’가 적절합니다."
            )
        ]
    )

    // MARK: - Exercise 10: Analogies
    private static let analogies = Exercise(
        id: UUID(),
        title: "비유",
        instructions: "비유를 가장 잘 완성하는 단어를 선택하세요.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "PUPPY는 DOG에게, KITTEN은 ___에게",
                options: ["고양이", "개", "새", "물고기"],
                correctAnswer: "고양이",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "COLD는 WINTER에, HOT는 ___에 해당합니다.",
                options: ["봄", "가을", "여름", "비"],
                correctAnswer: "여름",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "눈은 보는 것입니다. 귀는 ___하는 것입니다.",
                options: ["터치", "듣기", "냄새", "맛"],
                correctAnswer: "듣기",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CHEF는 KITCHEN에, DOCTOR는 ___에 속합니다.",
                options: ["도서관", "병원", "학교", "매장"],
                correctAnswer: "병원",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GLOVE는 HAND이고 SOCK은 ___입니다.",
                options: ["팔", "무릎", "발", "머리"],
                correctAnswer: "발",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "행복한 것은 웃는 것이고, 슬픈 것은 ___이다.",
                options: ["미소", "수면", "울다", "실행"],
                correctAnswer: "울다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BIRD는 BEAR가 ___인 것처럼 NEST입니다.",
                options: ["나무", "동굴", "바다", "필드"],
                correctAnswer: "동굴",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "PENCIL은 WRITE이고 BRUSH는 ___입니다.",
                options: ["컷", "페인트", "스윕", "저어"],
                correctAnswer: "페인트",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "DAY는 NIGHT에, BLACK은 ___에 해당합니다.",
                options: ["어둠", "그레이", "화이트", "블루"],
                correctAnswer: "화이트",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SOLDIER는 ARMY에게, SAILOR는 ___에게",
                options: ["공군", "해병대", "해군", "가드"],
                correctAnswer: "해군",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "WHEEL은 CAR에, WING은 ___에 속합니다.",
                options: ["보트", "비행기", "기차", "버스"],
                correctAnswer: "비행기",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "교사는 학교에 있고 판사는 ___에 있습니다.",
                options: ["사무실", "병원", "법정", "매장"],
                correctAnswer: "법정",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CATERPILLAR는 BUTTERFLY를 하고, TADPOLE은 ___을(를) 합니다.",
                options: ["물고기", "거북이", "개구리", "도마뱀"],
                correctAnswer: "개구리",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "음식은 배고프고 물은 ___입니다.",
                options: ["젖은", "목마름", "감기", "전체"],
                correctAnswer: "목마름",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "WOOL은 양에게, 실크는 ___에 해당합니다.",
                options: ["거미", "누에", "면", "리넨"],
                correctAnswer: "누에",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 11: Fact or Opinion
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "사실 또는 의견",
        instructions: "결정하십시오: 이 진술은 사실입니까 아니면 의견입니까?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "일주일은 7일입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "바닐라는 아이스크림 중 가장 맛이 좋습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "물은 화씨 32도에서 언다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "개는 최고의 애완동물이다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "삼각형에는 세 개의 변이 있습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "그 TV 쇼는 재미있어요.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "에이브러햄 링컨은 미국 대통령이었습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "지구는 최고의 행성이다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한 시간은 60분입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "튤립은 장미보다 더 아름답습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "워싱턴 D.C.는 미국의 수도입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "입에 가득 채우고 말하는 것은 실례입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1년은 12개월입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "일찍 일어나는 것이 당신에게 좋습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "2 + 2 = 4.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "바다는 바닷물로 이루어져 있습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정원 가꾸기는 훌륭한 취미입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "돌은 같은 크기의 깃털보다 무겁습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "미국에는 50개의 주가 있습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "피자는 최고의 음식이다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "운동은 건강에 유익합니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "클래식 음악은 지루해요.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사과와 오렌지는 모두 과일입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "고양이는 개보다 돌보기가 더 쉽습니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "하루는 24시간입니다.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 12: Sequencing Steps
    private static let sequencingSteps = Exercise(
        id: UUID(),
        title: "시퀀싱 단계",
        instructions: "단계가 잘못된 순서로 표시됩니다. 1, 2, 3... 번호를 매겨 올바른 순서로 배열하세요.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "토스트 만들기",
                options: ["토스트에 버터를 바르세요", "토스터에 빵을 넣어주세요", "토스터에서 제거", "먹다"],
                correctAnswer: "토스터에 빵을 넣어주세요 | 토스터에서 제거 | 토스트에 버터를 바르세요 | 먹다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "손 씻기",
                options: ["수건으로 손을 말리세요", "손에 비누를 바르세요", "물을 켜세요", "20초간 문지르기", "비누를 헹구세요", "손을 적셔라"],
                correctAnswer: "물을 켜세요 | 손을 적셔라 | 손에 비누를 바르세요 | 20초간 문지르기 | 비누를 헹구세요 | 수건으로 손을 말리세요",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "커피 만들기",
                options: ["컵에 커피를 부어주세요", "필터에 커피가루를 넣어주세요", "추출 버튼을 누르세요", "물통을 채우세요"],
                correctAnswer: "물통을 채우세요 | 필터에 커피가루를 넣어주세요 | 추출 버튼을 누르세요 | 컵에 커피를 부어주세요",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "전화 걸기",
                options: ["인사해", "끊으세요", "전화를 받아", "전화번호를 누르세요", "대화를 나누세요"],
                correctAnswer: "전화를 받아 | 전화번호를 누르세요 | 인사해 | 대화를 나누세요 | 끊으세요",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "옷 입기",
                options: ["신발을 신다", "셔츠를 입으세요", "속옷을 입으세요", "양말을 신으세요", "바지를 입으세요"],
                correctAnswer: "속옷을 입으세요 | 셔츠를 입으세요 | 바지를 입으세요 | 양말을 신으세요 | 신발을 신다",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "바닥 청소",
                options: ["쓰레기통에 버리세요", "빗자루를 꺼내라", "잔해물을 쓰레받기에 담으세요.", "잔해물을 쓸어 모아 더미로 만든다"],
                correctAnswer: "빗자루를 꺼내라 | 잔해물을 쓸어 모아 더미로 만든다 | 잔해물을 쓰레받기에 담으세요. | 쓰레기통에 버리세요",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "레스토랑에서 주문하기",
                options: ["식사하세요", "서버에게 주문을 말해주세요", "앉아", "음식을 기다려라", "메뉴 검토"],
                correctAnswer: "앉아 | 메뉴 검토 | 서버에게 주문을 말해주세요 | 음식을 기다려라 | 식사하세요",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "쿠키 굽기",
                options: ["쿠키를 식혀주세요", "오븐에 굽는다", "오븐을 예열하세요", "재료를 섞는다", "베이킹 시트에 반죽을 떠서 올려주세요"],
                correctAnswer: "오븐을 예열하세요 | 재료를 섞는다 | 베이킹 시트에 반죽을 떠서 올려주세요 | 오븐에 굽는다 | 쿠키를 식혀주세요",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 33: Rhyming Pairs
    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "운이 맞는 단어 찾기",
        instructions: "제시된 단어와 운(모음과 받침 소리)이 같은 단어를 고르세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "“노래”와 운이 맞는 단어는 무엇입니까?",
                options: ["바람", "모래", "구름", "나무"],
                correctAnswer: "모래",
                explanation: "‘노래’와 ‘모래’는 ‘래’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“구름”와 운이 맞는 단어는 무엇입니까?",
                options: ["주름", "하늘", "바다", "산길"],
                correctAnswer: "주름",
                explanation: "‘구름’과 ‘주름’은 ‘름’으로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“가방”와 운이 맞는 단어는 무엇입니까?",
                options: ["책상", "소방", "의자", "연필"],
                correctAnswer: "소방",
                explanation: "‘가방’과 ‘소방’은 ‘방’으로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“다리”와 운이 맞는 단어는 무엇입니까?",
                options: ["나무", "머리", "손길", "발가락"],
                correctAnswer: "머리",
                explanation: "‘다리’와 ‘머리’는 ‘리’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“하늘”와 운이 맞는 단어는 무엇입니까?",
                options: ["바늘", "바람", "구름", "햇살"],
                correctAnswer: "바늘",
                explanation: "‘하늘’과 ‘바늘’은 ‘늘’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“나무”와 운이 맞는 단어는 무엇입니까?",
                options: ["아무", "바람", "하늘", "노래"],
                correctAnswer: "아무",
                explanation: "‘나무’와 ‘아무’는 ‘무’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“바지”와 운이 맞는 단어는 무엇입니까?",
                options: ["신발", "가지", "모자", "장갑"],
                correctAnswer: "가지",
                explanation: "‘바지’와 ‘가지’는 ‘지’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“사과”와 운이 맞는 단어는 무엇입니까?",
                options: ["포도", "교과", "바나나", "수박"],
                correctAnswer: "교과",
                explanation: "‘사과’와 ‘교과’는 ‘과’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“나라”와 운이 맞는 단어는 무엇입니까?",
                options: ["도시", "따라", "하늘", "바다"],
                correctAnswer: "따라",
                explanation: "‘나라’와 ‘따라’는 ‘라’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“바람”와 운이 맞는 단어는 무엇입니까?",
                options: ["구름", "사람", "나무", "노래"],
                correctAnswer: "사람",
                explanation: "‘바람’과 ‘사람’은 ‘람’으로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“고기”와 운이 맞는 단어는 무엇입니까?",
                options: ["생선", "모기", "과일", "채소"],
                correctAnswer: "모기",
                explanation: "‘고기’와 ‘모기’는 ‘기’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“나비”와 운이 맞는 단어는 무엇입니까?",
                options: ["벌레", "갈비", "하늘", "꽃밭"],
                correctAnswer: "갈비",
                explanation: "‘나비’와 ‘갈비’는 ‘비’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“모자”와 운이 맞는 단어는 무엇입니까?",
                options: ["신발", "사자", "안경", "가방"],
                correctAnswer: "사자",
                explanation: "‘모자’와 ‘사자’는 ‘자’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“조개”와 운이 맞는 단어는 무엇입니까?",
                options: ["바다", "베개", "물고기", "모래"],
                correctAnswer: "베개",
                explanation: "‘조개’와 ‘베개’는 ‘개’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“지팡이”와 운이 맞는 단어는 무엇입니까?",
                options: ["할아버지", "호랑이", "안경", "나무"],
                correctAnswer: "호랑이",
                explanation: "‘지팡이’와 ‘호랑이’는 ‘이’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“토끼”와 운이 맞는 단어는 무엇입니까?",
                options: ["거북이", "도끼", "당근", "사자"],
                correctAnswer: "도끼",
                explanation: "‘토끼’와 ‘도끼’는 ‘끼’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“구두”와 운이 맞는 단어는 무엇입니까?",
                options: ["바지", "호두", "양말", "치마"],
                correctAnswer: "호두",
                explanation: "‘구두’와 ‘호두’는 ‘두’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“치마”와 운이 맞는 단어는 무엇입니까?",
                options: ["바지", "이마", "저고리", "구두"],
                correctAnswer: "이마",
                explanation: "‘치마’와 ‘이마’는 ‘마’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“시계”와 운이 맞는 단어는 무엇입니까?",
                options: ["시간", "세계", "거울", "사진"],
                correctAnswer: "세계",
                explanation: "‘시계’와 ‘세계’는 ‘계’로 운이 맞습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "“과자”와 운이 맞는 단어는 무엇입니까?",
                options: ["음료수", "사자", "빵", "사탕"],
                correctAnswer: "사자",
                explanation: "‘과자’와 ‘사자’는 ‘자’로 운이 맞습니다."
            )
        ]
    )

    // MARK: - Exercise 34: Word Association
    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "단어 연관",
        instructions: "주어진 단어와 가장 밀접하게 연관된 단어를 선택하십시오.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "의사",
                options: ["병원", "공항", "도서관", "농장"],
                correctAnswer: "병원",
                explanation: "의사는 병원에서 환자를 돌보기 위해 일합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "빵",
                options: ["버터", "망치", "비누", "연필"],
                correctAnswer: "버터",
                explanation: "버터는 일반적으로 빵에 발라집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "주방",
                options: ["스토브", "침대", "샤워", "자동차"],
                correctAnswer: "스토브",
                explanation: "스토브는 주방의 주요 가전제품입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "도서관",
                options: ["책", "옷", "도구", "식료품"],
                correctAnswer: "책",
                explanation: "도서관은 책을 보관하고 대출합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "신발",
                options: ["양말", "모자", "장갑", "벨트"],
                correctAnswer: "양말",
                explanation: "양말은 신발 안에 신습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "우주 비행사",
                options: ["공간", "바다", "정글", "사막"],
                correctAnswer: "공간",
                explanation: "우주 비행사는 우주로 여행합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "선생님",
                options: ["학교", "공장", "극장", "체육관"],
                correctAnswer: "학교",
                explanation: "교사는 학교에서 학생들을 가르칩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "바다",
                options: ["물고기", "새", "소", "거미"],
                correctAnswer: "물고기",
                explanation: "물고기는 바다에 산다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "자동차",
                options: ["타이어", "윙", "안장", "항해"],
                correctAnswer: "타이어",
                explanation: "타이어는 자동차의 필수 부품입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "비",
                options: ["우산", "선글라스", "장갑", "스카프"],
                correctAnswer: "우산",
                explanation: "우산은 비로부터 당신을 보호해 줍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "불",
                options: ["연기", "얼음", "잎", "코인"],
                correctAnswer: "연기",
                explanation: "불은 연기를 만들어냅니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "치과의사",
                options: ["치아", "머리카락", "눈", "발"],
                correctAnswer: "치아",
                explanation: "치과의사는 구강 건강과 치아를 전문으로 합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "커피",
                options: ["머그", "그릇", "플레이트", "포크"],
                correctAnswer: "머그",
                explanation: "커피는 일반적으로 머그잔에 제공됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정원",
                options: ["꽃", "컴퓨터", "스토브", "코트"],
                correctAnswer: "꽃",
                explanation: "꽃은 정원에서 자랍니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "키",
                options: ["잠금", "창", "지붕", "바닥"],
                correctAnswer: "잠금",
                explanation: "열쇠는 자물쇠를 여는 데 사용됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "우체국",
                options: ["편지", "빵", "의학", "티켓"],
                correctAnswer: "편지",
                explanation: "편지는 우체국으로 발송됩니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "피아노",
                options: ["음악", "페인트", "점토", "목재"],
                correctAnswer: "음악",
                explanation: "피아노는 음악을 연주하는 데 사용되는 악기입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "꿀벌",
                options: ["여보", "우유", "양모", "실크"],
                correctAnswer: "여보",
                explanation: "꿀벌은 꿀을 생산합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "스파이더",
                options: ["웹", "둥지", "하이브", "덴"],
                correctAnswer: "웹",
                explanation: "거미는 웹을 회전시킵니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "농부",
                options: ["트랙터", "비행기", "잠수함", "기차"],
                correctAnswer: "트랙터",
                explanation: "농부들은 트랙터를 이용해 땅을 경작합니다."
            )
        ]
    )

    // MARK: - Exercise 35: Complete the Saying
    private static let completeTheSaying = Exercise(
        id: UUID(),
        title: "속담 완성하기",
        instructions: "문장의 빈칸에 들어갈 알맞은 속담 단어를 고르세요.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “소 잃고 ___ 고친다”",
                options: ["외양간", "마구간", "지붕", "울타리"],
                correctAnswer: "외양간",
                explanation: "일을 그르친 뒤에 뉘우쳐도 소용없다는 뜻의 속담입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “우물 안 ___”",
                options: ["개구리", "뱀", "물고기", "거북이"],
                correctAnswer: "개구리",
                explanation: "넓은 세상을 모르고 좁은 식견에 갇힌 사람을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “백지장도 맞들면 ___”",
                options: ["낫다", "가볍다", "찢어진다", "무겁다"],
                correctAnswer: "낫다",
                explanation: "쉬운 일이라도 협력하면 훨씬 수월하다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “금강산도 ___”",
                options: ["식후경", "경치경", "등산행", "구경행"],
                correctAnswer: "식후경",
                explanation: "아무리 좋은 구경이라도 배가 불러야 즐겁다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “시작이 ___이다”",
                options: ["반", "전부", "성공", "어려움"],
                correctAnswer: "반",
                explanation: "무슨 일이든 시작하기가 어렵지 일단 시작하면 끝마치기 쉽다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “아는 길도 ___ 가라”",
                options: ["물어", "돌아", "뛰어", "살펴"],
                correctAnswer: "물어",
                explanation: "쉬운 일이라도 신중하게 확인하고 행동해야 한다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “꿩 대신 ___”",
                options: ["닭", "오리", "새", "비둘기"],
                correctAnswer: "닭",
                explanation: "적당한 것이 없을 때 그와 비슷한 것으로 대신함을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “돌다리도 두들겨 보고 ___”",
                options: ["건너라", "건너자", "피해라", "가라"],
                correctAnswer: "건너라",
                explanation: "잘 아는 일이라도 세심하게 확인하여 실수를 방지하라는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “고래 싸움에 ___ 등 터진다”",
                options: ["새우", "물고기", "게", "조개"],
                correctAnswer: "새우",
                explanation: "강자들의 싸움에 약자가 무고하게 피해를 입음을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “티끌 모아 ___”",
                options: ["태산", "바다", "모래", "먼지"],
                correctAnswer: "태산",
                explanation: "작은 것도 꾸준히 모으면 큰 것이 된다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “서당 개 삼 년에 ___을 읊는다”",
                options: ["풍월", "노래", "시", "글자"],
                correctAnswer: "풍월",
                explanation: "어떤 분야에 오래 있으면 자연스럽게 지식을 습득하게 됨을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “쇠뿔도 단김에 ___”",
                options: ["빼라", "잘라라", "잡아라", "꺾어라"],
                correctAnswer: "빼라",
                explanation: "일이 시작되었을 때 기회를 놓치지 말고 해치워야 한다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “원숭이도 나무에서 ___”",
                options: ["떨어진다", "잔다", "논다", "웃는다"],
                correctAnswer: "떨어진다",
                explanation: "아무리 재주가 뛰어난 사람도 실수할 때가 있다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “등잔 밑이 ___”",
                options: ["어둡다", "밝다", "뜨겁다", "멀다"],
                correctAnswer: "어둡다",
                explanation: "가까운 곳에서 일어나는 일을 오히려 모를 수 있음을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “가는 말이 고와야 ___ 말이 곱다”",
                options: ["오는", "듣는", "하는", "가는"],
                correctAnswer: "오는",
                explanation: "내가 남에게 친절하게 대해야 남도 나에게 친절하다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “호랑이도 제 말 하면 ___”",
                options: ["온다", "웃는다", "화낸다", "도망친다"],
                correctAnswer: "온다",
                explanation: "마침 그 자리에 없는 사람 이야기를 하는데 그 사람이 나타났을 때 쓰는 말입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “세 살 버릇 ___까지 간다”",
                options: ["여든", "백세", "아흔", "쉰"],
                correctAnswer: "여든",
                explanation: "어릴 때 몸에 밴 습관은 고치기 어렵다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “벼는 익을수록 고개를 ___”",
                options: ["숙인다", "든다", "흔든다", "돌린다"],
                correctAnswer: "숙인다",
                explanation: "교양이 있고 훌륭한 사람일수록 겸손하다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “매도 먼저 맞는 매가 ___”",
                options: ["낫다", "아프다", "무섭다", "좋다"],
                correctAnswer: "낫다",
                explanation: "어차py 겪어야 할 어려움이라면 일찍 겪는 편이 마음 편하다는 뜻입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "속담을 완성하세요: “천 리 길도 한 걸음 ___”",
                options: ["부터", "시작", "도착", "이후"],
                correctAnswer: "부터",
                explanation: "아무리 큰 일이라도 시작이 중요하다는 뜻입니다."
            )
        ]
    )

    // MARK: - Exercise 36: Compound Words
    private static let compoundWords = Exercise(
        id: UUID(),
        title: "합성어 만들기",
        instructions: "두 단어가 합쳐져서 만들어지는 올바른 합성어를 고르세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 눈 + 물 = ___",
                options: ["눈물", "빗물", "콧물", "약물"],
                correctAnswer: "눈물",
                explanation: "눈에서 흐르는 물은 ‘눈물’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 손 + 가락 = ___",
                options: ["손목", "손가락", "발가락", "손등"],
                correctAnswer: "손가락",
                explanation: "손의 끝부분에 달린 다섯 개의 가닥은 ‘손가락’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 밤 + 하늘 = ___",
                options: ["낮하늘", "밤하늘", "구름하늘", "별하늘"],
                correctAnswer: "밤하늘",
                explanation: "어두운 밤의 하늘은 ‘밤하늘’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 꽃 + 병 = ___",
                options: ["꽃병", "물병", "술병", "유리병"],
                correctAnswer: "꽃병",
                explanation: "꽃을 꽂아 두는 병은 ‘꽃병’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 발 + 바닥 = ___",
                options: ["발등", "발목", "발가락", "발바닥"],
                correctAnswer: "발바닥",
                explanation: "발의 밑바닥 부분은 ‘발바닥’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 불 + 꽃 = ___",
                options: ["물꽃", "불꽃", "나무꽃", "풀꽃"],
                correctAnswer: "불꽃",
                explanation: "불이 타오를 때 일어나는 빛의 줄기는 ‘불꽃’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 책 + 상 = ___",
                options: ["책상", "식탁", "소파", "침대"],
                correctAnswer: "책상",
                explanation: "글을 읽거나 쓸 때 쓰는 상은 ‘책상’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 길 + 가 = ___",
                options: ["길가", "길목", "길잡이", "길거리"],
                correctAnswer: "길가",
                explanation: "길의 가장자리는 ‘길가’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 물 + 고기 = ___",
                options: ["쇠고기", "물고기", "닭고기", "돼지고기"],
                correctAnswer: "물고기",
                explanation: "물에 사는 척추동물은 ‘물고기’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 봄 + 바람 = ___",
                options: ["가을바람", "봄바람", "겨울바람", "샛바람"],
                correctAnswer: "봄바람",
                explanation: "봄철에 부는 따뜻한 바람은 ‘봄바람’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 눈 + 사람 = ___",
                options: ["눈사람", "흙사람", "돌사람", "나무사람"],
                correctAnswer: "눈사람",
                explanation: "눈을 뭉쳐서 사람 모양으로 만든 것은 ‘눈사람’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 소 + 고기 = ___",
                options: ["돼지고기", "소고기", "닭고기", "양고기"],
                correctAnswer: "소고기",
                explanation: "소의 고기는 ‘소고기’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 맛 + 집 = ___",
                options: ["맛집", "찻집", "빵집", "꽃집"],
                correctAnswer: "맛집",
                explanation: "음식이 맛있기로 유명한 식당은 ‘맛집’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 낮 + 잠 = ___",
                options: ["낮잠", "밤잠", "늦잠", "단잠"],
                correctAnswer: "낮잠",
                explanation: "낮에 잠깐 자는 잠은 ‘낮잠’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 돌 + 다리 = ___",
                options: ["돌다리", "나무다리", "쇠다리", "흙다리"],
                correctAnswer: "돌다리",
                explanation: "돌로 만든 다리는 ‘돌다리’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 해 + 빛 = ___",
                options: ["햇빛", "달빛", "별빛", "불빛"],
                correctAnswer: "햇빛",
                explanation: "해가 비치는 빛은 ‘햇빛’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 비 + 옷 = ___",
                options: ["비옷", "바람막이", "겨울옷", "코트"],
                correctAnswer: "비옷",
                explanation: "비를 막기 위해 입는 옷은 ‘비옷’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 손 + 수건 = ___",
                options: ["손수건", "행주", "걸레", "이불"],
                correctAnswer: "손수건",
                explanation: "손이나 얼굴을 닦기 위해 가지고 다니는 작은 수건은 ‘손수건’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 발 + 목 = ___",
                options: ["발목", "손목", "목덜미", "발등"],
                correctAnswer: "발목",
                explanation: "다리와 발이 만나는 뼈 마디 부위는 ‘발목’입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "합성어를 만드세요: 비 + 방울 = ___",
                options: ["물방울", "빗방울", "눈방울", "이슬방울"],
                correctAnswer: "빗방울",
                explanation: "떨어지는 비의 방울은 ‘빗방울’입니다."
            )
        ]
    )

    // MARK: - Exercise 37: Prefix and Suffix
    private static let prefixAndSuffix = Exercise(
        id: UUID(),
        title: "접두사와 접미사",
        instructions: "접두사나 접미사의 올바른 뜻이나 쓰임을 고르세요.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “맨발”에서 접사 “맨-”의 뜻은 무엇입니까?",
                options: ["아무것도 신지 않은", "가장 먼저의", "거짓의", "큰"],
                correctAnswer: "아무것도 신지 않은",
                explanation: "접두사 ‘맨-’은 다른 것을 걸치지 않은 상태를 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “나무꾼”에서 접사 “-꾼”의 뜻은 무엇입니까?",
                options: ["도구", "사람", "나무", "장소"],
                correctAnswer: "사람",
                explanation: "접미사 ‘-꾼’은 특정 행동이나 일을 전문적으로 하는 사람을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “가위질”에서 접사 “-질”의 뜻은 무엇입니까?",
                options: ["가위 자체", "도구", "행위나 짓", "장소"],
                correctAnswer: "행위나 짓",
                explanation: "접미사 ‘-질’은 도구를 사용하는 행위나 몸짓을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “햇곡식”에서 접사 “햇-”의 뜻은 무엇입니까?",
                options: ["햇곡식", "참곡식", "맏곡식", "알곡식"],
                correctAnswer: "햇곡식",
                explanation: "그 해에 새로 나온 농산물에는 접두사 ‘햇-’을 붙집니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “울보”에서 접사 “-보”의 뜻은 무엇입니까?",
                options: ["그 행위를 많이 하는 사람", "상자", "우는 소리", "거짓말"],
                correctAnswer: "그 행위를 많이 하는 사람",
                explanation: "접미사 ‘-보’는 그러한 특성을 많이 가진 사람을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “역사적”에서 접사 “-적”의 뜻은 무엇입니까?",
                options: ["역사 자체", "성질을 가진 것", "적대적인", "과거"],
                correctAnswer: "성질을 가진 것",
                explanation: "접미사 ‘-적(的)’은 그러한 성질을 띠거나 관계된 것을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “가능성”에서 접사 “-성”의 뜻은 무엇입니까?",
                options: ["성격이나 성질", "이름", "성공", "성벽"],
                correctAnswer: "성격이나 성질",
                explanation: "접미사 ‘-성(性)’은 성질이나 상태를 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “세계화”에서 접사 “-화”의 뜻은 무엇입니까?",
                options: ["그렇게 됨", "화가 남", "그림", "평화"],
                correctAnswer: "그렇게 됨",
                explanation: "접미사 ‘-화(化)’는 그렇게 되거나 그렇게 만드는 것을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “맏아들”에서 접사 “맏-”의 뜻은 무엇입니까?",
                options: ["맏아들", "첫아들", "큰아들", "참아들"],
                correctAnswer: "맏아들",
                explanation: "여러 자식 중 첫째를 뜻할 때 접두사 ‘맏-’을 씁니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “참사랑”에서 접사 “참-”의 뜻은 무엇입니까?",
                options: ["참사랑", "헛사랑", "겉사랑", "돌사랑"],
                correctAnswer: "참사랑",
                explanation: "진실하고 참된 뜻을 나타낼 때 접두사 ‘참-’을 씁니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “헛소문”에서 접사 “헛-”의 뜻은 무엇입니까?",
                options: ["헛소문", "참소문", "돌소문", "맏소문"],
                correctAnswer: "헛소문",
                explanation: "이유나 보람이 없는 상태를 뜻할 때 접두사 ‘헛-’을 씁니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “선생님”에서 접사 “-님”의 뜻은 무엇입니까?",
                options: ["선생님", "선생가", "선생자", "선생꾼"],
                correctAnswer: "선생님",
                explanation: "높임의 뜻을 더할 때 접미사 ‘-님’을 붙입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “선수”에서 접사 “-수”의 뜻은 무엇입니까?",
                options: ["선수", "선가", "선자", "선꾼"],
                correctAnswer: "선수",
                explanation: "접미사 ‘-수(手)’는 전문적으로 운동 등을 하는 사람을 뜻합니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “평화롭다”에서 접사 “-롭”의 뜻은 무엇입니까?",
                options: ["평화롭다", "평화하다", "평화스럽다", "평화지다"],
                correctAnswer: "평화롭다",
                explanation: "형용사를 만드는 접미사 ‘-롭다’가 사용되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “학생답다”에서 접사 “-답”의 뜻은 무엇입니까?",
                options: ["학생답다", "학생스럽다", "학생하다", "학생지다"],
                correctAnswer: "학생답다",
                explanation: "형용사를 만드는 접미사 ‘-답다’가 사용되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “젊은이”에서 접사 “-이”의 뜻은 무엇입니까?",
                options: ["젊은이", "젊다", "젊음", "젊게"],
                correctAnswer: "젊은이",
                explanation: "사람을 뜻하게 만드는 접미사 ‘-이’가 사용되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “달리기”에서 접사 “-기”의 뜻은 무엇입니까?",
                options: ["달리기", "달리다", "달려라", "달리게"],
                correctAnswer: "달리기",
                explanation: "명사형을 만드는 접미사 ‘-기’가 사용되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “아름다움”에서 접사 “-움”의 뜻은 무엇입니까?",
                options: ["아름다움", "아름답다", "아름답게", "아름다운"],
                correctAnswer: "아름다움",
                explanation: "명사를 만드는 접미사 ‘-움’이 사용되었습니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “돌배”에서 접사 “돌-”의 뜻은 무엇입니까?",
                options: ["돌배", "참배", "첫배", "맏배"],
                correctAnswer: "돌배",
                explanation: "야생의 것을 뜻할 때 접두사 ‘돌-’을 씁니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "단어 “자랑스럽다”에서 접사 “-스레”의 뜻은 무엇입니까?",
                options: ["자랑스럽다", "자랑하다", "자랑스레", "자랑스럽게"],
                correctAnswer: "자랑스럽다",
                explanation: "형용사를 만드는 접미사 ‘-스럽다’가 사용되었습니다."
            )
        ]
    )

}
