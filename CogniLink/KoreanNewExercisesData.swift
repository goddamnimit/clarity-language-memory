import Foundation

/// Holds the 14 new Korean exercises translated and adapted from EnglishNewExercisesData.swift.
struct KoreanNewExercisesData {

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

    // MARK: - Exercise 1: Rhyming Pairs (끝소리가 같은 단어)
    private static let exercise1 = Exercise(
        title: "끝소리가 같은 단어",
        instructions: "제시된 단어와 끝소리(운율)가 같은 단어를 고르세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "“가방”과 끝소리가 같은 단어는 무엇인가요?", options: ["강물", "신발", "가방", "책방"], correctAnswer: "책방", explanation: "“가방”과 “책방”은 끝 글자가 “방”으로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“바람”과 끝소리가 같은 단어는 무엇인가요?", options: ["구름", "사람", "하늘", "바다"], correctAnswer: "사람", explanation: "“바람”과 “사람”은 끝 글자가 “람”으로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“하늘”과 끝소리가 같은 단어는 무엇인가요?", options: ["바늘", "구름", "태양", "나무"], correctAnswer: "바늘", explanation: "“하늘”과 “바늘”은 끝 글자가 “늘”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“수박”과 끝소리가 같은 단어는 무엇인가요?", options: ["사과", "호박", "오이", "포도"], correctAnswer: "호박", explanation: "“수박”과 “호박”은 끝 글자가 “박”으로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“노래”와 끝소리가 같은 단어는 무엇인가요?", options: ["모래", "소리", "사랑", "친구"], correctAnswer: "모래", explanation: "“노래”와 “모래”는 끝 글자가 “래”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“나비”와 끝소리가 같은 단어는 무엇인가요?", options: ["제비", "꽃잎", "나비", "나무"], correctAnswer: "제비", explanation: "“나비”와 “제비”는 끝 글자가 “비”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“사랑”과 끝소리가 같은 단어는 무엇인가요?", options: ["자랑", "마음", "행복", "사람"], correctAnswer: "자랑", explanation: "“사랑”과 “자랑”은 끝 글자가 “랑”으로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“사자”와 끝소리가 같은 단어는 무엇인가요?", options: ["호랑이", "과자", "토끼", "여우"], correctAnswer: "과자", explanation: "“사자”와 “과자”는 끝 글자가 “자”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“가지”와 끝소리가 같은 단어는 무엇인가요?", options: ["오이", "바지", "감자", "당근"], correctAnswer: "바지", explanation: "“가지”와 “바지”는 끝 글자가 “지”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“구름”과 끝소리가 같은 단어", options: ["이름", "하늘", "바람", "바다"], correctAnswer: "이름", explanation: "“구름”과 “이름”은 끝 글자가 “름”으로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“강아지”와 끝소리가 같은 단어는 무엇인가요?", options: ["송아지", "고양이", "송새", "토끼"], correctAnswer: "송아지", explanation: "“강아지”와 “송아지”는 끝 글자가 “아지”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“대구”와 끝소리가 같은 단어는 무엇인가요?", options: ["친구", "부산", "서울", "광주"], correctAnswer: "친구", explanation: "“대구”와 “친구”는 끝 글자가 “구”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“시계”와 끝소리가 같은 단어는 무엇인가요?", options: ["세계", "안경", "모자", "반지"], correctAnswer: "세계", explanation: "“시계”와 “세계”는 끝 글자가 “계”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“가위”와 끝소리가 같은 단어는 무엇인가요?", options: ["바위", "종이", "풀", "연필"], correctAnswer: "바위", explanation: "“가위”와 “바위”는 끝 글자가 “위”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“소리”와 끝소리가 같은 단어는 무엇인가요?", options: ["노래", "요리", "음악", "악기"], correctAnswer: "요리", explanation: "“소리”와 “요리”는 끝 글자가 “리”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“바다”와 끝소리가 같은 단어는 무엇인가요?", options: ["산골", "마다", "강물", "구름"], correctAnswer: "마다", explanation: "“바다”와 “마다”는 끝 글자가 “다”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“사과”와 끝소리가 같은 단어는 무엇인가요?", options: ["배", "결과", "수박", "참외"], correctAnswer: "결과", explanation: "“사과”와 “결과”는 끝 글자가 “과”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“나무”와 끝소리가 같은 단어는 무엇인가요?", options: ["구두", "아무", "모자", "바지"], correctAnswer: "아무", explanation: "“나무”와 “아무”는 끝 글자가 “무”로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“마음”과 끝소리가 같은 단어는 무엇인가요?", options: ["싸움", "기쁨", "사랑", "눈물"], correctAnswer: "싸움", explanation: "“마음”과 “싸움”은 끝 글자가 “움”으로 같은 소리가 납니다."),
            ExerciseItem(prompt: "“꽃밭”과 끝소리가 같은 단어는 무엇인가요?", options: ["들판", "텃밭", "하늘", "나무"], correctAnswer: "텃밭", explanation: "“꽃밭”과 “텃밭”은 끝 글자가 “밭”으로 같은 소리가 납니다.")
        ]
    )

    // MARK: - Exercise 2: Word Association (단어 연상)
    private static let exercise2 = Exercise(
        title: "단어 연상",
        instructions: "제시된 단어와 가장 밀접하게 연관된 단어를 고르세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "의사", options: ["병원", "공항", "도서관", "농장"], correctAnswer: "병원", explanation: "의사는 병원에서 환자를 돌봅니다."),
            ExerciseItem(prompt: "빵", options: ["버터", "망치", "비누", "연필"], correctAnswer: "버터", explanation: "버터는 보통 빵에 발라 먹습니다."),
            ExerciseItem(prompt: "부엌", options: ["가스레인지", "침대", "샤워기", "자동차"], correctAnswer: "가스레인지", explanation: "가스레인지는 부엌의 주요 조리 기구입니다."),
            ExerciseItem(prompt: "도서관", options: ["책", "옷", "도구", "식료품"], correctAnswer: "책", explanation: "도서관은 책을 보관하고 빌려주는 곳입니다."),
            ExerciseItem(prompt: "구두", options: ["양말", "모자", "장갑", "벨트"], correctAnswer: "양말", explanation: "양말은 구두 안에 신는 것입니다."),
            ExerciseItem(prompt: "우주비행사", options: ["우주", "바다", "정글", "사막"], correctAnswer: "우주", explanation: "우주비행사는 우주로 여행하는 사람입니다."),
            ExerciseItem(prompt: "교사", options: ["학교", "공장", "극장", "체육관"], correctAnswer: "학교", explanation: "교사는 학교에서 학생들을 가르칩니다."),
            ExerciseItem(prompt: "바다", options: ["물고기", "새", "소", "거미"], correctAnswer: "물고기", explanation: "물고기는 바다에서 삽니다."),
            ExerciseItem(prompt: "자동차", options: ["타이어", "날개", "안장", "돛"], correctAnswer: "타이어", explanation: "타이어는 자동차의 필수 부품입니다."),
            ExerciseItem(prompt: "비", options: ["우산", "선글라스", "장갑", "목도리"], correctAnswer: "우산", explanation: "우산은 비를 막아줍니다."),
            ExerciseItem(prompt: "불", options: ["연기", "얼음", "나뭇잎", "동전"], correctAnswer: "연기", explanation: "불이 나면 연기가 발생합니다."),
            ExerciseItem(prompt: "치과의사", options: ["치아", "머리카락", "눈", "발"], correctAnswer: "치아", explanation: "치과의사는 구강 건강과 치아를 전문적으로 치료합니다."),
            ExerciseItem(prompt: "커피", options: ["머그잔", "대접", "접시", "포크"], correctAnswer: "머그잔", explanation: "커피는 주로 머그잔에 담아 마십니다."),
            ExerciseItem(prompt: "정원", options: ["꽃", "컴퓨터", "가스레인지", "코트"], correctAnswer: "꽃", explanation: "꽃은 정원에서 자랍니다."),
            ExerciseItem(prompt: "열쇠", options: ["자물쇠", "창문", "지붕", "바닥"], correctAnswer: "자물쇠", explanation: "열쇠는 자물쇠를 열 때 사용합니다."),
            ExerciseItem(prompt: "우체국", options: ["편지", "빵", "약", "표"], correctAnswer: "편지", explanation: "편지는 우체국에서 보냅니다."),
            ExerciseItem(prompt: "피아노", options: ["음악", "그림", "점토", "나무"], correctAnswer: "음악", explanation: "피아노는 음악을 연주하는 악기입니다."),
            ExerciseItem(prompt: "꿀벌", options: ["꿀", "우유", "양모", "실크"], correctAnswer: "꿀", explanation: "꿀벌은 꿀을 만듭니다."),
            ExerciseItem(prompt: "거미", options: ["거미줄", "둥지", "벌집", "굴"], correctAnswer: "거미줄", explanation: "거미는 거미줄을 칩니다."),
            ExerciseItem(prompt: "농부", options: ["트랙터", "비행기", "잠수함", "기차"], correctAnswer: "트랙터", explanation: "농부는 트랙터를 사용하여 밭을 굽니다.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying (속담 완성하기)
    private static let exercise3 = Exercise(
        title: "속담 완성하기",
        instructions: "널리 알려진 속담이나 격언을 완성하세요.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "가는 말이 고와야 ___ 말이 곱다.", options: ["오는", "가는", "하는", "듣는"], correctAnswer: "오는", explanation: "내가 남에게 말을 좋게 해야 남도 나에게 좋은 말을 해준다는 뜻입니다."),
            ExerciseItem(prompt: "세 살 버릇 ___ 까지 간다.", options: ["여든", "아흔", "평생", "내일"], correctAnswer: "여든", explanation: "어릴 때 몸에 밴 나쁜 버릇은 늙어서도 고치기 어렵다는 뜻입니다."),
            ExerciseItem(prompt: "꿩 대신 ___", options: ["닭", "오리", "참새", "비둘기"], correctAnswer: "닭", explanation: "적당한 것이 없을 때 그와 비슷한 것으로 대신함을 이르는 말입니다."),
            ExerciseItem(prompt: "원숭이도 ___에서 떨어진다.", options: ["나무", "지붕", "바위", "하늘"], correctAnswer: "나무", explanation: "아무리 일을 잘하는 사람이라도 실수할 때가 있다는 뜻입니다."),
            ExerciseItem(prompt: "소 잃고 ___ 고친다.", options: ["외양간", "지붕", "울타리", "대문"], correctAnswer: "외양간", explanation: "이미 일을 그르친 뒤에 뉘우치고 대책을 세워야 소용없다는 뜻입니다."),
            ExerciseItem(prompt: "금강산도 ___경", options: ["식후", "사전", "풍경", "인생"], correctAnswer: "식후", explanation: "아무리 좋은 구경이라도 배가 불러야 흥미가 생긴다는 뜻입니다."),
            ExerciseItem(prompt: "등잔 밑이 ___", options: ["어둡다", "밝다", "멀다", "가깝다"], correctAnswer: "어둡다", explanation: "가까운 곳에서 일어난 일을 오히려 잘 모른다는 뜻입니다."),
            ExerciseItem(prompt: "티끌 모아 ___", options: ["태산", "바다", "동산", "강물"], correctAnswer: "태산", explanation: "아무리 작은 것이라도 모이면 큰 것이 된다는 뜻입니다."),
            ExerciseItem(prompt: "시작이 ___이다.", options: ["반", "전부", "성공", "기쁨"], correctAnswer: "반", explanation: "일단 시작하면 끝마치기가 그리 어렵지 않다는 뜻입니다."),
            ExerciseItem(prompt: "백지장도 맞들면 ___", options: ["낫다", "무겁다", "찢어진다", "어렵다"], correctAnswer: "낫다", explanation: "아무리 쉬운 일이라도 서로 힘을 합치면 훨씬 쉽다는 뜻입니다."),
            ExerciseItem(prompt: "누워서 ___ 떡 먹기", options: ["식은", "더운", "굳은", "찰"], correctAnswer: "식은", explanation: "일이 매우 쉽다는 뜻입니다."),
            ExerciseItem(prompt: "발 없는 말이 ___ 간다.", options: ["천리", "백리", "만리", "십리"], correctAnswer: "천리", explanation: "말은 소문이 매우 빨리 퍼지므로 말조심해야 한다는 뜻입니다."),
            ExerciseItem(prompt: "호랑이도 제 말 하면 ___", options: ["온다", "간다", "웃는다", "운다"], correctAnswer: "온다", explanation: "그 자리에 없는 사람 이야기를 하면 마침 그 사람이 나타난다는 뜻입니다."),
            ExerciseItem(prompt: "아는 길도 ___ 가라.", options: ["물어서", "뛰어서", "보지 말고", "돌아서"], correctAnswer: "물어서", explanation: "아무리 잘 아는 일이라도 확인하며 조심해야 한다는 뜻입니다."),
            ExerciseItem(prompt: "돌다리도 ___ 건너라.", options: ["두들겨 보고", "그냥", "뛰어서", "조심히"], correctAnswer: "두들겨 보고", explanation: "매사에 신중을 기해야 한다는 뜻입니다."),
            ExerciseItem(prompt: "우물 안 ___", options: ["개구리", "뱀", "붕어", "가재"], correctAnswer: "개구리", explanation: "세상 형편을 모르는 좁은 생각의 소유자를 이르는 말입니다."),
            ExerciseItem(prompt: "보기 좋은 떡이 ___도 좋다.", options: ["먹기", "사기", "선물하기", "굽기"], correctAnswer: "먹기", explanation: "겉모양이 좋으면 속내용도 좋게 느껴진다는 뜻입니다."),
            ExerciseItem(prompt: "가랑비에 ___ 젖는 줄 모른다.", options: ["옷", "몸", "신발", "머리"], correctAnswer: "옷", explanation: "사소한 일이라도 거듭되면 무시할 수 없을 만큼 커진다는 뜻입니다."),
            ExerciseItem(prompt: "쥐구멍에도 ___ 들 날 있다.", options: ["볕", "바람", "물", "돌"], correctAnswer: "볕", explanation: "아무리 힘든 삶이라도 좋은 때가 온다는 뜻입니다."),
            ExerciseItem(prompt: "쇠뿔도 단김에 ___", options: ["빼라", "달구어라", "부러뜨려라", "버려라"], correctAnswer: "빼라", explanation: "기회가 왔을 때 지체 없이 일을 처리해야 한다는 뜻입니다.")
        ]
    )

    // MARK: - Exercise 4: Compound Words (합성어 완성하기)
    private static let exercise4 = Exercise(
        title: "합성어 완성하기",
        instructions: "두 단어가 합쳐져 만들어진 단어를 완성하기 위해 알맞은 단어를 고르세요.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "눈 + ___", options: ["사람", "하늘", "구름", "바람"], correctAnswer: "사람", explanation: "눈 + 사람 = 눈사람."),
            ExerciseItem(prompt: "돌 + ___", options: ["잔치", "나이", "생일", "선물"], correctAnswer: "잔치", explanation: "돌 + 잔치 = 돌잔치."),
            ExerciseItem(prompt: "밤 + ___", options: ["하늘", "구름", "안개", "노을"], correctAnswer: "하늘", explanation: "밤 + 하늘 = 밤하늘."),
            ExerciseItem(prompt: "손 + ___", options: ["수건", "비누", "물", "장갑"], correctAnswer: "수건", explanation: "손 + 수건 = 손수건."),
            ExerciseItem(prompt: "빗 + ___", options: ["방울", "바람", "구름", "소리"], correctAnswer: "방울", explanation: "비 + 방울 = 빗방울 (표기는 빗방울)."),
            ExerciseItem(prompt: "발 + ___", options: ["자국", "걸음", "소리", "가락"], correctAnswer: "자국", explanation: "발 + 자국 = 발자국."),
            ExerciseItem(prompt: "책 + ___", options: ["상", "의자", "장", "필통"], correctAnswer: "상", explanation: "책 + 상 = 책상."),
            ExerciseItem(prompt: "길 + ___", options: ["가", "속", "밑", "위"], correctAnswer: "가", explanation: "길 + 가 = 길가."),
            ExerciseItem(prompt: "봄 + ___", options: ["바람", "비", "햇살", "나물"], correctAnswer: "바람", explanation: "봄 + 바람 = 봄바람."),
            ExerciseItem(prompt: "쇠 + ___", options: ["사슬", "망치", "못", "줄"], correctAnswer: "사슬", explanation: "쇠 + 사슬 = 쇠사슬."),
            ExerciseItem(prompt: "흙 + ___", options: ["먼지", "모래", "바람", "길"], correctAnswer: "먼지", explanation: "흙 + 먼지 = 흙먼지."),
            ExerciseItem(prompt: "물 + ___", options: ["가", "안", "위", "밑"], correctAnswer: "가", explanation: "물 + 가 = 물가."),
            ExerciseItem(prompt: "집 + ___", options: ["안", "밖", "뜰", "대문"], correctAnswer: "안", explanation: "집 + 안 = 집안."),
            ExerciseItem(prompt: "바닷 + ___", options: ["가", "물", "바람", "길"], correctAnswer: "가", explanation: "바다 + 가 = 바닷가."),
            ExerciseItem(prompt: "꽃 + ___", options: ["밭", "병", "잎", "나무"], correctAnswer: "밭", explanation: "꽃 + 밭 = 꽃밭."),
            ExerciseItem(prompt: "산 + ___", options: ["길", "정상", "바람", "골짜기"], correctAnswer: "길", explanation: "산 + 길 = 산길."),
            ExerciseItem(prompt: "돌 + ___", options: ["담", "다리", "문", "집"], correctAnswer: "담", explanation: "돌 + 담 = 돌담."),
            ExerciseItem(prompt: "하늘 + ___", options: ["길", "별", "땅", "구름"], correctAnswer: "길", explanation: "하늘 + 길 = 하늘길."),
            ExerciseItem(prompt: "바람 + ___", options: ["개비", "소리", "자루", "막이"], correctAnswer: "개비", explanation: "바람 + 개비 = 바람개비."),
            ExerciseItem(prompt: "참 + ___", options: ["기름", "깨", "나무", "나물"], correctAnswer: "기름", explanation: "참 + 기름 = 참기름.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix (접두사와 접미사)
    private static let exercise5 = Exercise(
        title: "접두사와 접미사",
        instructions: "제시된 뜻에 알맞은 접두사 또는 접미사를 고르세요.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "단어 “맨손”에서 아무것도 없는 상태를 나타내는 접두사는?", options: ["맨-", "참-", "풋-", "날-"], correctAnswer: "맨-", explanation: "접두사 “맨-”은 아무것도 입지 않거나 가지지 않은 상태를 뜻합니다."),
            ExerciseItem(prompt: "단어 “지우개”에서 도구를 뜻하는 접미사는?", options: ["-개", "-보", "-꾼", "-이"], correctAnswer: "-개", explanation: "접미사 “-개”는 도구를 뜻합니다."),
            ExerciseItem(prompt: "진짜라는 뜻을 가진 접두사 “참-”이 붙어 만들어진 단어는?", options: ["참사랑", "풋사랑", "맨사랑", "첫사랑"], correctAnswer: "참사랑", explanation: "접두사 “참-”은 진짜를 나타냅니다."),
            ExerciseItem(prompt: "덜 익은 상태를 뜻하는 접두사 “풋-”이 들어간 단어는?", options: ["풋사과", "군사과", "날사과", "참사과"], correctAnswer: "풋사과", explanation: "“풋-”은 덜 익은 것을 나타냅니다."),
            ExerciseItem(prompt: "서투른 상태를 나타내는 접두사 “선-”이 쓰인 단어는?", options: ["선무당", "선생님", "선물", "선수"], correctAnswer: "선무당", explanation: "접두사 “선-”은 서투른 것을 이릅니다."),
            ExerciseItem(prompt: "야생의 뜻을 가진 접두사 “개-”가 들어간 단어는?", options: ["개나리", "개구리", "개미", "개성"], correctAnswer: "개나리", explanation: "접두사 “개-”는 야생 혹은 원래보다 떨어지는 성질을 가진 것에 붙습니다."),
            ExerciseItem(prompt: "전문적으로 일을 하는 사람을 뜻하는 접미사 “-꾼”이 들어간 단어는?", options: ["사냥꾼", "장사꾼", "지우개", "잠보"], correctAnswer: "사냥꾼", explanation: "“-꾼”은 특정 일을 전문으로 하거나 좋아하는 사람을 뜻합니다."),
            ExerciseItem(prompt: "높임을 뜻하는 대표적인 접미사는?", options: ["-님", "-이", "-꾼", "-보"], correctAnswer: "-님", explanation: "“-님”은 대상을 존칭하거나 높일 때 씁니다."),
            ExerciseItem(prompt: "먹는 것을 유난히 좋아하는 사람을 일컫는 단어 “먹보”에서 접미사는?", options: ["-보", "-이", "-꾼", "-개"], correctAnswer: "-보", explanation: "“-보”는 그 특성을 가진 사람을 의미하는 접미사입니다."),
            ExerciseItem(prompt: "나무를 베어 파는 일을 업으로 하는 사람은 나무___이다.", options: ["꾼", "보", "쟁이", "질"], correctAnswer: "꾼", explanation: "나무 + 꾼 = 나무꾼."),
            ExerciseItem(prompt: "야생의 거친 사과나 배를 뜻할 때 쓰는 접두사는?", options: ["돌-", "풋-", "민-", "맨-"], correctAnswer: "돌-", explanation: "접두사 “돌-”은 야생의 혹은 성질이 떨어지는 것을 뜻합니다."),
            ExerciseItem(prompt: "성질이 있음을 나타내며 형용사를 만드는 접미사는?", options: ["-답다", "-보", "-꾼", "-질"], correctAnswer: "-답다", explanation: "“-답다”는 그러한 자격이나 성질이 있음을 나타냅니다."),
            ExerciseItem(prompt: "억지스럽거나 어색하게 웃는 웃음을 일컫는 단어는 ___웃음이다.", options: ["선", "비", "헛", "참"], correctAnswer: "선", explanation: "접두사 “선-”은 서투르거나 어색한 상태를 뜻합니다."),
            ExerciseItem(prompt: "남편의 가족을 이르는 호칭에 붙는 접두사는?", options: ["시-", "처-", "친-", "외-"], correctAnswer: "시-", explanation: "접두사 “시-”는 남편 쪽 가계를 뜻합니다."),
            ExerciseItem(prompt: "잠이 유난히 많은 사람을 일컫는 단어는 잠___이다.", options: ["보", "쟁이", "이", "꾼"], correctAnswer: "보", explanation: "잠 + 보 = 잠보."),
            ExerciseItem(prompt: "심술이 아주 심한 사람을 낮잡아 일컫는 단어는 심술___이다.", options: ["쟁이", "보", "꾼", "이"], correctAnswer: "쟁이", explanation: "“-쟁이”는 어떤 특성이 심한 사람을 나타냅니다."),
            ExerciseItem(prompt: "익히거나 말리지 않은 상태를 뜻하는 접두사는?", options: ["날-", "풋-", "돌-", "생-"], correctAnswer: "날-", explanation: "“날-”은 가공하지 않은 생것의 상태를 뜻합니다."),
            ExerciseItem(prompt: "더해지거나 쓸데없는 식구를 뜻할 때 앞에 붙는 접두사는?", options: ["군-", "덧-", "헛-", "생-"], correctAnswer: "군-", explanation: "“군-”은 쓸데없는 것 혹은 덧붙은 것을 뜻합니다."),
            ExerciseItem(prompt: "아무런 보람이 없는 헛된 수고를 일컫는 단어는 ___수고이다.", options: ["헛", "참", "날", "잔"], correctAnswer: "헛", explanation: "접두사 “헛-”은 보람 없거나 가짜인 뜻을 더합니다."),
            ExerciseItem(prompt: "매우 까맣다는 뜻을 강조하기 위해 앞에 붙는 접두사는?", options: ["새-", "참-", "맨-", "한-"], correctAnswer: "새-", explanation: "접두사 “새-”는 어떤 색상이 매우 짙음을 뜻하는 강조용입니다.")
        ]
    )

    // MARK: - Exercise 6: Story Recall (이야기 회상)
    private static let exercise6 = Exercise(
        title: "이야기 회상",
        instructions: "짧은 이야기를 읽고 질문에 답하세요.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "마리아가 집에 두고 온 것은 무엇인가요?", options: ["지갑", "열쇠", "장보기 목록", "휴대전화"], correctAnswer: "지갑", explanation: "이야기에서 마리아는 지갑을 부엌 조리대 위에 두고 나왔다고 했습니다.", passage: "마리아는 우유와 식빵을 사러 식료품점에 갔습니다. 그런데 부엌 조리대 위에 지갑을 두고 나왔습니다."),
            ExerciseItem(prompt: "토마스가 잡은 물고기는 무엇인가요?", options: ["송어", "연어", "농어", "메기"], correctAnswer: "송어", explanation: "이야기에서 잡은 물고기는 송어였습니다.", passage: "토마스는 토요일 아침 일찍 낚시를 하러 갔습니다. 커다란 송어를 한 마리 잡았지만 너무 작아서 풀어주어야 했습니다."),
            ExerciseItem(prompt: "아더의 차는 무슨 색인가요?", options: ["파란색", "노란색", "빨간색", "초록색"], correctAnswer: "파란색", explanation: "아더는 파란색 차를 주차했다고 이야기했습니다.", passage: "아더는 그늘진 떡갈나무 아래에 자신의 파란색 차를 주차했습니다. 나중에 돌아와 보니 차가 노란 나뭇잎으로 뒤덮여 있었습니다."),
            ExerciseItem(prompt: "케이크 위에 꽂힌 초는 몇 개인가요?", options: ["10개", "5개", "8개", "12개"], correctAnswer: "10개", explanation: "케이크 위에 빨간 초 10개를 꽂았다고 했습니다.", passage: "린다는 딸의 생일 파티를 위해 초콜릿 케이크를 만들었습니다. 그리고 케이크 위에 빨간 초 10개를 꽂았습니다."),
            ExerciseItem(prompt: "로버트의 형은 어디에 사나요?", options: ["시카고", "뉴욕", "보스턴", "마이애미"], correctAnswer: "시카고", explanation: "형이 시카고에 산다고 했습니다.", passage: "로버트는 시카고에 사는 형에게 소포를 보내기 위해 우체국에 갔습니다. 직원은 화요일에 도착할 것이라고 말했습니다."),
            ExerciseItem(prompt: "사라의 새 러닝화는 무슨 색인가요?", options: ["밝은 초록색", "파란색", "빨간색", "검은색"], correctAnswer: "밝은 초록색", explanation: "신발이 하얀 줄무늬가 있는 밝은 초록색이라고 언급되었습니다.", passage: "사라는 어제 새 러닝화를 샀습니다. 그 신발은 밝은 초록색 바탕에 하얀 줄무늬가 있습니다."),
            ExerciseItem(prompt: "제임스가 사용한 우산은 무슨 색이었나요?", options: ["노란색", "빨간색", "파란색", "검은색"], correctAnswer: "노란색", explanation: "노란 우산을 폈다고 이야기했습니다.", passage: "제임스는 공원을 걷다가 비를 만났습니다. 그는 비를 피하기 위해 노란 우산을 폈습니다."),
            ExerciseItem(prompt: "빵집이 문을 닫은 요일은 언제인가요?", options: ["월요일", "화요일", "수요일", "일요일"], correctAnswer: "월요일", explanation: "빵집은 월요일에 문을 닫았습니다.", passage: "동네 빵집이 수리를 위해 월요일에 문을 닫았습니다. 그들은 화요일 아침 6시에 다시 문을 열 예정입니다."),
            ExerciseItem(prompt: "안나가 배관공을 부른 이유는 무엇인가요?", options: ["싱크대 물이 새서", "가스레인지가 고장 나서", "전등이 꺼져서", "문이 잠겨서"], correctAnswer: "싱크대 물이 새서", explanation: "부엌 싱크대에서 물이 새서 배관공을 불렀다고 했습니다.", passage: "안나는 부엌 싱크대에서 물이 새어 배관공을 불렀습니다. 배관공은 한 시간 뒤에 도착하여 파이프를 고쳤습니다."),
            ExerciseItem(prompt: "데이비드의 반려견 이름은 무엇인가요?", options: ["맥스", "버디", "찰리", "록키"], correctAnswer: "맥스", explanation: "반려견의 이름은 맥스입니다.", passage: "데이비드는 반려견 맥스와 동네 한 바퀴를 돌며 산책했습니다. 맥스는 다람쥐를 보고 크게 짖었습니다."),
            ExerciseItem(prompt: "헬렌에게 부족했던 재료는 무엇인가요?", options: ["당근", "감자", "양파", "셀러리"], correctAnswer: "당근", explanation: "당근이 다 떨어져서 감자를 사용했다고 언급되었습니다.", passage: "헬렌은 저녁으로 야채수프를 만들고 있었습니다. 당근이 떨어진 것을 알고 대신 감자를 넣었습니다."),
            ExerciseItem(prompt: "피터의 점심 식사 비용은 얼마였나요?", options: ["15달러", "10달러", "20달러", "12달러"], correctAnswer: "15달러", explanation: "점심 식사의 총 비용은 15달러였습니다.", passage: "피터는 점심으로 페퍼로니 피자 한 판과 탄산음료 한 병을 주문했습니다. 총 금액은 15달러였습니다."),
            ExerciseItem(prompt: "앨리스가 빌린 책의 주제는 무엇인가요?", options: ["정원 가꾸기", "역사", "요리", "여행"], correctAnswer: "정원 가꾸기", explanation: "정원 가꾸기에 관한 책을 빌렸다고 했습니다.", passage: "앨리스는 정원 가꾸기에 관한 책을 빌리러 도서관에 갔습니다. 역사에 관한 DVD도 함께 빌렸습니다."),
            ExerciseItem(prompt: "기차가 지연된 원인은 무엇인가요?", options: ["철로 보수 작업", "폭설", "정전", "승무원 결원"], correctAnswer: "철로 보수 작업", explanation: "철로 보수 작업으로 인해 기차가 지연되었다고 언급되었습니다.", passage: "조지는 아침 기차를 타고 면접을 보러 도심으로 향했습니다. 그의 기차는 철로 보수 작업으로 인해 15분 지연되었습니다."),
            ExerciseItem(prompt: "낸시가 결국 산 꽃은 무엇인가요?", options: ["분홍색 카네이션", "빨간 장미", "노란 튤립", "백합"], correctAnswer: "분홍색 카네이션", explanation: "장미 대신 분홍색 카네이션을 샀다고 했습니다.", passage: "낸시는 정원 센터에 가서 빨간 장미를 사려고 했습니다. 장미가 품절되어 대신 분홍색 카네이션을 샀습니다.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences (숫자 순서 패턴)
    private static let exercise7 = Exercise(
        title: "숫자 순서 패턴",
        instructions: "다음에 올 숫자는 무엇인가요?",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "숫자가 매번 2씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "숫자가 매번 5씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "숫자가 매번 10씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "숫자가 매번 3씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "숫자가 매번 1씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "숫자가 매번 2씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "홀수들이 2씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "숫자가 매번 4씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "숫자가 매번 5씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "숫자가 매번 10씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "숫자가 매번 11씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "숫자가 매번 2씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "숫자가 매번 3씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "숫자가 매번 3씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "숫자가 매번 7씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "숫자가 매번 4씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "숫자가 매번 6씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "숫자가 매번 5씩 늘어나는 패턴입니다."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "숫자가 매번 10씩 줄어드는 패턴입니다."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "숫자가 매번 2씩 늘어나는 패턴입니다.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect (원인과 결과)
    private static let exercise8 = Exercise(
        title: "원인과 결과",
        instructions: "주어진 상황의 결과로 가장 적절한 것을 고르세요.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "더운 날 아이스크림을 부엌 조리대에 2시간 동안 두었습니다. 어떻게 될까요?", options: ["단단해진다", "녹는다", "색이 변한다", "사라진다"], correctAnswer: "녹는다", explanation: "온도가 오르면 아이스크림이 녹습니다."),
            ExerciseItem(prompt: "집 안의 화분에 3주 동안 물을 주지 않았습니다. 어떤 결과가 나타날까요?", options: ["꽃이 핀다", "초록색을 유지한다", "시들고 마른다", "파란색으로 변한다"], correctAnswer: "시들고 마른다", explanation: "식물은 물 없이 살 수 없으므로 시들고 말라 죽습니다."),
            ExerciseItem(prompt: "먹구름이 해를 가리고 번개가 칩니다. 조만간 어떤 일이 일어날까요?", options: ["비가 올 것이다", "더 더워질 것이다", "바로 눈이 내릴 것이다", "별이 뜰 것이다"], correctAnswer: "비가 올 것이다", explanation: "먹구름과 번개는 비가 온다는 징후입니다."),
            ExerciseItem(prompt: "유리 대접을 딱딱한 타일 바닥에 떨어뜨렸습니다. 어떻게 될까요?", options: ["다시 튀어 오른다", "색이 변한다", "산산조각이 난다", "물로 변한다"], correctAnswer: "산산조각이 난다", explanation: "유리는 깨지기 쉬우므로 단단한 바닥에 떨어지면 깨집니다."),
            ExerciseItem(prompt: "토스터에 식빵을 넣고 가장 강한 세기로 설정해 둔 채 잊어버렸습니다. 어떻게 될까요?", options: ["눅눅해진다", "타서 검게 변한다", "계속 부드럽고 하얗다", "사라진다"], correctAnswer: "타서 검게 변한다", explanation: "토스터의 과도한 열은 빵을 태우게 만듭니다."),
            ExerciseItem(prompt: "밤새도록 자동차 헤드라이트를 켜 두었습니다. 아침에 어떤 일이 발생할까요?", options: ["차가 더 빨리 달린다", "배터리가 방전된다", "차의 색이 변한다", "엔진이 즉시 켜진다"], correctAnswer: "배터리가 방전된다", explanation: "라이트를 오래 켜 두면 전력이 소비되어 배터리가 방전됩니다."),
            ExerciseItem(prompt: "밤새 폭설이 내려 눈이 15센티미터 쌓였습니다. 도로 상황은 어떻게 될까요?", options: ["말라 있는 상태다", "눈으로 덮여 미끄러워진다", "초록색으로 변한다", "증발한다"], correctAnswer: "눈으로 덮여 미끄러워진다", explanation: "쌓인 눈으로 인해 도로는 미끄럽고 위험해집니다."),
            ExerciseItem(prompt: "물이 담긴 쟁반을 냉동실에 넣었습니다. 몇 시간 후에 어떻게 될까요?", options: ["물이 끓는다", "물이 얼음이 된다", "물이 증발한다", "물이 색을 바꾼다"], correctAnswer: "물이 얼음이 된다", explanation: "영하의 온도에서는 액체 상태의 물이 고체인 얼음으로 변합니다."),
            ExerciseItem(prompt: "더운 여름날 두꺼운 울 양말과 무거운 부츠를 신었습니다. 발이 어떻게 될까요?", options: ["춥게 느껴진다", "송풍이 잘된다", "덥고 땀이 난다", "파랗게 변한다"], correctAnswer: "덥고 땀이 난다", explanation: "두꺼운 의류는 열을 모으기 때문에 땀이 나게 합니다."),
            ExerciseItem(prompt: "어떤 사람이 24시간 동안 잠을 자지 못했습니다. 기분이 어떨까요?", options: ["매우 활기차다", "피곤하고 졸리다", "배가 고프다", "매우 행복하다"], correctAnswer: "피곤하고 졸리다", explanation: "수면 부족은 심한 피로와 졸음을 유발합니다."),
            ExerciseItem(prompt: "뜨거운 차에 설탕을 넣고 저었습니다. 설탕은 어떻게 될까요?", options: ["얼음이 된다", "잔에서 사라진다", "차에 녹아든다", "탄다"], correctAnswer: "차에 녹아든다", explanation: "설탕을 저으면 뜨거운 액체에 녹아 섞이게 됩니다."),
            ExerciseItem(prompt: "우산이나 우비 없이 폭우 속으로 걸어 들어갔습니다. 결과는 어떨까요?", options: ["뽀송하게 유지된다", "옷이 흠뻑 젖는다", "파랗게 변한다", "더 따뜻해진다"], correctAnswer: "옷이 흠뻑 젖는다", explanation: "비를 직접 맞으므로 옷이 젖습니다."),
            ExerciseItem(prompt: "풍선에 바람을 너무 많이 불어 넣었습니다. 풍선이 어떻게 될까요?", options: ["달나라로 날아간다", "터진다", "새가 된다", "줄어든다"], correctAnswer: "터진다", explanation: "풍선 내부의 공기 압력이 한계를 넘으면 터집니다."),
            ExerciseItem(prompt: "창문이 없는 어두운 방에 밤에 전등을 모두 껐습니다. 어떻게 될까요?", options: ["방이 더 밝아진다", "방이 완전히 어두워진다", "방이 초록색이 된다", "방이 빛으로 가득 찬다"], correctAnswer: "방이 완전히 어두워진다", explanation: "빛 소스가 차단되면 어두워집니다."),
            ExerciseItem(prompt: "어려운 시험을 앞두고 전혀 공부하지 않았습니다. 어떤 결과를 예상할 수 있을까요?", options: ["만점을 받는다", "성적이 매우 저조할 것이다", "이름을 잊어버린다", "시험이 취소된다"], correctAnswer: "성적이 매우 저조할 것이다", explanation: "준비가 없는 상황에서 어려운 시험을 치르면 좋은 결과를 얻기 어렵습니다.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This? (이 감정은 무엇일까요?)
    private static let exercise9 = Exercise(
        title: "이 감정은 무엇일까요?",
        instructions: "상황을 읽고 당사자가 느낄 기분을 고르세요.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "사라는 자신이 대회에서 1등을 했다는 사실을 알게 되었습니다. 사라는 어떤 기분일까요?", options: ["슬픔", "분노", "기쁨", "공포"], correctAnswer: "기쁨", explanation: "대회 우승은 기쁘고 자랑스러운 일입니다."),
            ExerciseItem(prompt: "데이비드는 한밤중에 아래층에서 크고 낯선 소리가 나는 것을 들었습니다. 어떤 기분일까요?", options: ["행복", "공포", "지루함", "흥분"], correctAnswer: "공포", explanation: "어둠 속에서 나는 예상치 못한 큰 소음은 공포를 느끼게 합니다."),
            ExerciseItem(prompt: "메리의 가장 친한 친구가 멀리 다른 주로 이사를 갑니다. 메리의 기분은 어떨까요?", options: ["슬픔", "분노", "흥분", "질투"], correctAnswer: "슬픔", explanation: "친한 친구와의 이별은 슬픈 감정을 자아냅니다."),
            ExerciseItem(prompt: "상점의 긴 대기 줄에서 누군가 존의 앞으로 새치기를 했습니다. 존의 기분은 어떨까요?", options: ["행복", "무서움", "짜증", "당황"], correctAnswer: "짜증", explanation: "무례한 행동은 짜증과 불쾌감을 유발합니다."),
            ExerciseItem(prompt: "에밀리는 수많은 청중 앞에서 발표를 해야 합니다. 에밀리의 기분은 어떨까요?", options: ["긴장됨", "지루함", "슬픔", "분노"], correctAnswer: "긴장됨", explanation: "많은 사람들 앞에서의 발표는 긴장감과 불안감을 가져옵니다."),
            ExerciseItem(prompt: "로버트의 비행기가 취소되어 휴가 일정이 이틀 미뤄졌습니다. 로버트의 기분은 어떨까요?", options: ["좌절감", "행복", "무서움", "자랑스러움"], correctAnswer: "좌절감", explanation: "계획이 꼬이거나 취소되면 좌절감을 느끼게 됩니다."),
            ExerciseItem(prompt: "리사의 아들이 수석으로 대학교를 졸업했습니다. 리사의 기분은 어떨까요?", options: ["자랑스러움", "질투", "슬픔", "무서움"], correctAnswer: "자랑스러움", explanation: "가족의 큰 성취는 자랑스러운 감정을 일으킵니다."),
            ExerciseItem(prompt: "직원이 네 번째로 복잡한 서류를 설명하고 있지만, 아더는 여전히 이해가 가지 않습니다. 아더의 기분은 어떨까요?", options: ["혼란스러움", "행복", "흥분", "자랑스러움"], correctAnswer: "혼란스러움", explanation: "내용이 이해가 되지 않을 때는 혼란스러움을 느낍니다."),
            ExerciseItem(prompt: "제임스는 대기실에서 읽을 것도 없이 2시간째 조용히 기다리고 있습니다. 제임스의 기분은 어떨까요?", options: ["지루함", "무서움", "분노", "행복"], correctAnswer: "지루함", explanation: "아무 할 일 없이 대기하는 상황은 지루함을 유발합니다."),
            ExerciseItem(prompt: "엘렌의 가족들은 친구들을 모두 초대하여 깜짝 생일 파티를 열어주었습니다. 엘렌의 기분은 어떨까요?", options: ["놀람", "분노", "슬픔", "무서움"], correctAnswer: "놀람", explanation: "예상치 못한 깜짝 파티는 큰 놀라움과 기쁨을 줍니다."),
            ExerciseItem(prompt: "산책 중 길을 잃은 유기견이 카렌에게 달려들며 위협적으로 짖었습니다. 카렌의 기분은 어떨까요?", options: ["겁에 질림", "행복", "지루함", "자랑스러움"], correctAnswer: "겁에 질림", explanation: "사나운 동물이 다가오면 겁에 질립니다."),
            ExerciseItem(prompt: "윌리엄은 마당 일을 하다가 결혼반지를 잃어버렸습니다. 윌리엄의 기분은 어떨까요?", options: ["속상함", "흥분", "지루함", "차분함"], correctAnswer: "속상함", explanation: "추억이 깃든 물건을 분실하면 속상합니다."),
            ExerciseItem(prompt: "패트리샤는 손주들로부터 아름다운 카드와 꽃 선물을 받았습니다. 패트리샤의 기분은 어떨까요?", options: ["사랑받음", "분노", "무서움", "혼란"], correctAnswer: "사랑받음", explanation: "가족의 따뜻한 선물은 사랑받고 있다는 느낌을 줍니다."),
            ExerciseItem(prompt: "식료품점에 리차드가 원하는 특정 브랜드의 빵이 없어서 다른 브랜드를 사야 했습니다. 그의 기분은 어떨까요?", options: ["약간 실망함", "겁에 질림", "매우 격분함", "매우 기쁨"], correctAnswer: "약간 실망함", explanation: "사소한 계획의 불일치는 약간의 아쉬움(실망)을 줍니다."),
            ExerciseItem(prompt: "찰스는 오후 내내 책장을 조립했고 아주 만족스럽게 완성되었습니다. 찰스의 기분은 어떨까요?", options: ["뿌듯함", "슬픔", "무서움", "지루함"], correctAnswer: "뿌듯함", explanation: "무언가를 성공적으로 완성하면 성취감과 뿌듯함을 느낍니다."),
            ExerciseItem(prompt: "린다는 조용한 식당에서 실수로 쟁반을 떨어뜨려 음료를 쏟았습니다. 린다의 기분은 어떨까요?", options: ["당황스러움", "행복", "분노", "지루함"], correctAnswer: "당황스러움", explanation: "공공장소에서 눈에 띄는 실수를 하면 당황스럽고 부끄럽습니다."),
            ExerciseItem(prompt: "토마스는 내일 아침 하와이로 첫 여행을 떠납니다. 토마스의 기분은 어떨까요?", options: ["설렘", "슬픔", "분노", "지루함"], correctAnswer: "설렘", explanation: "좋은 곳으로 떠나는 여행 전날에는 마음이 설렙니다."),
            ExerciseItem(prompt: "수잔의 고양이가 가출한 지 3일 만에 무사히 집으로 돌아왔습니다. 수잔의 기분은 어떨까요?", options: ["안도감", "분노", "무서움", "혼란"], correctAnswer: "안도감", explanation: "걱정하던 일이나 위기가 해결되면 안도감을 느낍니다."),
            ExerciseItem(prompt: "조지가 업무를 보려고 하는데 인터넷 연결이 5분마다 끊깁니다. 조지의 기분은 어떨까요?", options: ["짜증 남", "무서움", "행복", "지루함"], correctAnswer: "짜증 남", explanation: "일하는 도중 반복되는 방해는 짜증을 자아냅니다."),
            ExerciseItem(prompt: "하루의 업무 스트레스를 겪은 뒤, 헬렌은 따뜻한 물로 긴 목욕을 마쳤습니다. 기분이 어떨까요?", options: ["편안함", "분노", "무서움", "불안"], correctAnswer: "편안함", explanation: "따뜻한 목욕은 몸과 마음을 편안하게 해줍니다.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here? (무엇이 어색할까요?)
    private static let exercise10 = Exercise(
        title: "무엇이 어색할까요?",
        instructions: "제시된 문장에서 논리적으로 어색하거나 불가능한 부분을 고르세요.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "존은 밤 12시에 아침 식사를 하고 잠자리에 들었다.", options: ["사람들은 음식을 먹지 않는다", "아침 식사는 아침에 먹는 밥이다", "존은 자면 안 된다", "자정은 오후 시간대이다"], correctAnswer: "아침 식사는 아침에 먹는 밥이다", explanation: "아침 식사는 단어 뜻 그대로 아침에 하루를 시작하며 먹는 식사입니다."),
            ExerciseItem(prompt: "개가 우체부에게 짖더니 하늘을 날아 지붕 위로 가서 새를 잡았다.", options: ["개는 짖지 않는다", "개는 하늘을 날 수 없다", "우체부는 편지를 배달하지 않는다", "새는 날지 않는다"], correctAnswer: "개는 하늘을 날 수 없다", explanation: "개는 날개가 없어 하늘을 나는 것이 불가능합니다."),
            ExerciseItem(prompt: "사라는 겨울용 털 코트와 장갑을 낀 채, 7월 한여름 야외 수영장에서 수영을 즐겼다.", options: ["사람들은 7월에 수영하지 않는다", "겨울 코트와 장갑을 입고 수영하지 않는다", "야외 수영장은 존재하지 않는다", "코트는 여름 의류이다"], correctAnswer: "겨울 코트와 장갑을 입고 수영하지 않는다", explanation: "수영을 할 때는 수영복을 입어야 하며 겨울 옷은 물속 활동에 맞지 않습니다."),
            ExerciseItem(prompt: "벽시계의 종이 13번 울리자, 아더는 아침 커피를 마실 때가 왔음을 알았다.", options: ["시계는 벽에 걸 수 없다", "일반적인 시계는 12시까지만 표시된다", "커피는 아침 음료가 아니다", "아더는 커피를 싫어한다"], correctAnswer: "일반적인 시계는 12시까지만 표시된다", explanation: "전통적인 벽시계 시반은 12시간 체계입니다."),
            ExerciseItem(prompt: "폴은 자전거를 타고 깊은 호수를 건너가 친구를 만났다.", options: ["자전거는 물 위를 달릴 수 없다", "호수에는 물고기가 없다", "친구끼리는 만나지 않는다", "자전거에는 페달이 없다"], correctAnswer: "자전거는 물 위를 달릴 수 없다", explanation: "자전거는 육상 이동 수단이며 물에서는 가라앉습니다."),
            ExerciseItem(prompt: "린다는 차가운 식수를 만들기 위해 냄비에 얼음 조각을 넣어 끓였다.", options: ["얼음 조각은 존재하지 않는다", "얼음을 끓이면 차가운 물이 아니라 뜨거운 물이 된다", "냄비에는 얼음을 담을 수 없다", "식수는 건강에 해롭다"], correctAnswer: "얼음을 끓이면 차가운 물이 아니라 뜨거운 물이 된다", explanation: "끓이는 가열 과정은 물을 뜨겁게 만듭니다."),
            ExerciseItem(prompt: "물고기가 배고픈 고양이로부터 도망치기 위해 나무 위로 올라갔다.", options: ["물고기는 나무에 올라갈 수 없다", "고양이는 물고기를 안 먹는다", "나무에는 잎이 나지 않는다", "물고기는 나무에 산다"], correctAnswer: "물고기는 나무에 올라갈 수 없다", explanation: "물고기는 물속에서 살아가며 나무에 오를 사지가 없습니다."),
            ExerciseItem(prompt: "로버트는 포크를 사용하여 닭고기 국물 수프를 떠먹었다.", options: ["포크로는 국물 수프를 담을 수 없다", "수프에는 닭고기가 안 들어간다", "로버트는 칼을 썼어야 했다", "수프는 도구 없이 마셔야 한다"], correctAnswer: "포크로는 국물 수프를 담을 수 없다", explanation: "포크는 틈새로 국물이 다 흘러내리므로 수프는 숟가락으로 먹어야 합니다."),
            ExerciseItem(prompt: "비가 억수같이 쏟아지자, 낸시는 젖은 빨래들을 빨리 말리기 위해 마당의 빨랫줄에 널었다.", options: ["비는 옷을 적시지 않는다", "비가 오는 날 야외에서는 옷이 마르지 않는다", "빨랫줄은 실내에서만 쓴다", "낸시는 옷이 없다"], correctAnswer: "비가 오는 날 야외에서는 옷이 마르지 않는다", explanation: "비 내리는 환경에서는 빨래가 마를 수 없습니다."),
            ExerciseItem(prompt: "비행기가 활주로에 안전하게 내린 뒤, 모든 승객들은 기차 철로 위로 하차했다.", options: ["비행기는 공항에 내리지 않는다", "승객들은 비행기를 타지 않는다", "공항 게이트에는 기차 철로가 없다", "기차는 철로로 다니지 않는다"], correctAnswer: "공항 게이트에는 기차 철로가 없다", explanation: "비행기 하차 구역이나 활주로는 기차 철로가 아닙니다."),
            ExerciseItem(prompt: "헬렌은 거실 온도를 더 따뜻하게 하기 위해 에어컨 온도를 낮췄다.", options: ["에어컨은 방을 시원하게 하는 기기이다", "거실에는 벽이 없다", "헬렌은 집이 없다", "에어컨은 전기를 쓰지 않는다"], correctAnswer: "에어컨은 방을 시원하게 하는 기기이다", explanation: "에어컨은 온도를 내리는 냉방 기기입니다."),
            ExerciseItem(prompt: "토끼는 숲속에서 커다란 회색 늑대를 쫓아가며 위협했다.", options: ["토끼는 숲에 살지 않는다", "늑대는 달릴 수 없다", "토끼는 포식자인 늑대를 쫓지 않는다", "늑대는 회색이 아니다"], correctAnswer: "토끼는 포식자인 늑대를 쫓지 않는다", explanation: "토끼는 피식자이며 늑대 같은 맹수로부터 도망치는 것이 정상입니다."),
            ExerciseItem(prompt: "제임스는 겨울에 손을 따뜻하게 하려고 손용 가죽 구두 한 켤레를 샀다.", options: ["구두는 손이 아니라 발에 신는 것이다", "가죽은 신발 제작에 안 쓰인다", "손은 추위를 타지 않는다", "겨울은 춥지 않다"], correctAnswer: "구두는 손이 아니라 발에 신는 것이다", explanation: "손에는 장갑을 껴야 하며 구두는 발에 착용하는 것입니다."),
            ExerciseItem(prompt: "태양이 자정에 떠올라 아침 하늘을 밝혀 주었다.", options: ["태양은 자정이 아닌 아침에 뜬다", "자정은 오후 시간이다", "태양은 밝지 않다", "아침은 어둡다"], correctAnswer: "태양은 자정이 아닌 아침에 뜬다", explanation: "자정은 해가 진 밤의 한가운데 시간대입니다."),
            ExerciseItem(prompt: "앨리스는 좋아하는 라디오 방송을 들으려고 텔레비전을 켰다.", options: ["텔레비전은 화면을 보는 기기이며 라디오가 아니다", "라디오는 음악을 틀지 않는다", "앨리스는 음악을 싫어한다", "텔레비전에는 스피커가 없다"], correctAnswer: "텔레비전은 화면을 보는 기기이며 라디오가 아니다", explanation: "라디오 방송은 라디오 수신기로 수신하여 들어야 합니다.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription (처방전 읽기)
    private static let exercise11 = Exercise(
        title: "처방전 읽기",
        instructions: "처방전 및 라벨 정보를 읽고 질문에 답하세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "라벨: 1일 2회, 1회 1정씩 식사와 함께 복용하십시오. 하루에 총 몇 알을 먹어야 합니까?", options: ["1알", "2알", "3알", "4알"], correctAnswer: "2알", explanation: "하루에 2번씩 1알을 먹으므로 1 + 1 = 2알입니다."),
            ExerciseItem(prompt: "라벨: 취침 전 2정을 복용하십시오. 이 약은 언제 복용해야 하나요?", options: ["아침에", "점심 식사 시", "취침 전에", "운동하기 전"], correctAnswer: "취침 전에", explanation: "라벨에 명확히 “취침 전”으로 기재되어 있습니다."),
            ExerciseItem(prompt: "라벨: 통증이 있을 시 8시간마다 1캡슐씩 복용하십시오. 24시간 동안 최대 몇 번 복용할 수 있습니까?", options: ["2번", "3번", "4번", "6번"], correctAnswer: "3번", explanation: "하루는 24시간이므로 24 나누기 8은 3번입니다."),
            ExerciseItem(prompt: "라벨: 아목시실린 250mg. 1일 3회 1정씩 복용. 냉장 보관하십시오. 이 약은 어떻게 보관해야 하나요?", options: ["냉동실에 보관", "냉장고에 보관", "따뜻한 찬장에 보관", "직사광선에 노출"], correctAnswer: "냉장고에 보관", explanation: "라벨에 “냉장 보관”이라고 표시되어 있습니다."),
            ExerciseItem(prompt: "라벨: 약 복용 중 음주 금지. 졸음을 유발할 수 있음. 이 약의 부작용 경고는 무엇인가요?", options: ["졸음", "활력 증가", "고혈압", "재채기"], correctAnswer: "졸음", explanation: "라벨에서 “졸음을 유발할 수 있음”을 경고하고 있습니다."),
            ExerciseItem(prompt: "라벨: 매일 아침 공복에 1정 복용하십시오. 아침 식사는 언제 해야 하나요?", options: ["약 복용 전에", "약 복용 후에", "약 복용과 동시에", "아침 식사를 하지 않는다"], correctAnswer: "약 복용 후에", explanation: "공복 상태에서 복용해야 하므로 약을 먼저 복용한 뒤 아침 식사를 해야 합니다."),
            ExerciseItem(prompt: "라벨: 매일 1정씩 경구 복용. 수량: 30정. 리필 가능 횟수: 2회. 처방전을 다시 쓸 수 있는 리필 횟수는?", options: ["1회", "2회", "3회", "30회"], correctAnswer: "2회", explanation: "라벨에 리필 횟수가 2회로 나와 있습니다."),
            ExerciseItem(prompt: "라벨: 해당 피부 부위에 하루 2번 얇게 펴 바르십시오. 삼키지 마십시오. 이 약은 어떻게 사용하나요?", options: ["삼켜서 복용", "피부에 발라서 사용", "코에 분사", "물에 타서 마심"], correctAnswer: "피부에 발라서 사용", explanation: "“피부 부위에 얇게 펴 바르십시오”라고 적혀 있습니다."),
            ExerciseItem(prompt: "라벨: 2026년 10월 15일 이후 폐기하십시오. 오늘은 2026년 11월 1일입니다. 이 약을 복용해도 안전한가요?", options: ["예", "아니요", "음식과 함께만 가능", "밤에만 가능"], correctAnswer: "아니요", explanation: "유통기한인 2026년 10월 15일이 지났기 때문에 안전하지 않습니다."),
            ExerciseItem(prompt: "라벨: 1일 2회 1정 복용. 유제품과 함께 복용하지 마십시오. 이 약을 먹을 때 피해야 할 음료는?", options: ["물", "우유", "사과 주스", "블랙커피"], correctAnswer: "우유", explanation: "우유는 유제품이므로 피해 마셔야 합니다."),
            ExerciseItem(prompt: "라벨: 비행 1시간 전 2정 복용. 이 약은 보통 어떤 목적으로 먹을까요?", options: ["비행 중 멀미 예방", "숙면 유도", "두통 치료", "피부 발진 치료"], correctAnswer: "비행 중 멀미 예방", explanation: "비행기 타기 전에 복용하는 것은 대개 멀미 예방약입니다."),
            ExerciseItem(prompt: "라벨: 안약. 양안에 하루 2번 1방울씩 넣으십시오. 이 약은 어디에 사용하나요?", options: ["입안에", "귀에", "눈에", "피부에"], correctAnswer: "눈에", explanation: "안약이므로 눈에 넣어야 합니다."),
            ExerciseItem(prompt: "라벨: 두통 발생 시 4~6시간마다 1정 복용. 하루 최대 4정. 하루에 복용할 수 있는 가장 많은 약의 개수는?", options: ["1정", "2정", "4정", "6정"], correctAnswer: "4정", explanation: "라벨에 “하루 최대 4정”이라고 나와 있습니다."),
            ExerciseItem(prompt: "라벨: 충분한 물과 함께 복용하십시오. 물이 왜 필요한가요?", options: ["피부에 녹이기 위해", "삼키기 쉽게 돕고 위장 장애를 예방하기 위해", "약의 색을 바꾸기 위해", "맛을 더 좋게 하기 위해"], correctAnswer: "삼키기 쉽게 돕고 위장 장애를 예방하기 위해", explanation: "충분한 물은 약의 흡수를 돕고 식도와 위장을 보호해 줍니다."),
            ExerciseItem(prompt: "라벨: 저녁 식사와 함께 매일 1정 복용하십시오. 복용하기 가장 좋은 때는 언제인가요?", options: ["아침 식사 때", "점심 식사 때", "저녁 식사 때", "한밤중에"], correctAnswer: "저녁 식사 때", explanation: "저녁 식사 때와 동시 복용이 권장됩니다.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu (메뉴판 읽기)
    private static let exercise12 = Exercise(
        title: "메뉴판 읽기",
        instructions: "메뉴 정보를 보고 질문에 답하세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "메뉴: 치즈버거 8,000원, 감자튀김 3,000원, 탄산음료 2,000원. 치즈버거의 가격은 얼마인가요?", options: ["8,000원", "3,000원", "2,000원", "11,000원"], correctAnswer: "8,000원", explanation: "메뉴판에 치즈버거는 8,000원이라고 나와 있습니다."),
            ExerciseItem(prompt: "메뉴: 커피 2,500원, 홍차 2,000원, 머핀 3,000원. 가장 저렴한 메뉴는 무엇인가요?", options: ["커피", "홍차", "머핀", "모두 동일하다"], correctAnswer: "홍차", explanation: "2,000원이 가장 낮은 금액입니다."),
            ExerciseItem(prompt: "메뉴: 토마토 수프 5,000원, 그린 샐러드 6,000원, 치킨 시저 샐러드 9,000원. 토마토 수프 한 그릇은 얼마인가요?", options: ["5,000원", "6,000원", "9,000원", "14,000원"], correctAnswer: "5,000원", explanation: "토마토 수프는 5,000원입니다."),
            ExerciseItem(prompt: "메뉴: 팬케이크 세트 10,000원, 프렌치토스트 9,000원, 베이컨 추가 4,000원. 프렌치토스트의 가격은?", options: ["10,000원", "9,000원", "4,000원", "13,000원"], correctAnswer: "9,000원", explanation: "프렌치토스트는 9,000원입니다."),
            ExerciseItem(prompt: "메뉴: 치즈 피자 조각 4,000원, 페퍼로니 피자 조각 4,500원. 페퍼로니 피자는 치즈 피자보다 얼마 더 비싼가요?", options: ["500원", "1,000원", "4,500원", "8,500원"], correctAnswer: "500원", explanation: "4,500원 - 4,000원 = 500원 차이입니다."),
            ExerciseItem(prompt: "메뉴: 치킨 샌드위치 7,000원, 피시앤칩스 11,000원. 수중에 10,000원이 있습니다. 살 수 있는 메뉴는?", options: ["치킨 샌드위치", "피시앤칩스", "둘 다 가능", "둘 다 불가능"], correctAnswer: "치킨 샌드위치", explanation: "7,000원은 10,000원 이하이므로 구매 가능하지만, 피시앤칩스는 예산을 초과합니다."),
            ExerciseItem(prompt: "메뉴: 어린이 세트(12세 미만) 6,000원, 성인용 버거 12,000원. 8세 아이의 식사 비용은 얼마인가요?", options: ["6,000원", "12,000원", "8,000원", "18,000원"], correctAnswer: "6,000원", explanation: "8세는 12세 미만이므로 어린이 세트 가격인 6,000원이 적용됩니다."),
            ExerciseItem(prompt: "메뉴: 초콜릿 아이스크림 4,000원, 애플 파이 5,000원, 파이에 바닐라 아이스크림 추가 1,500원. 바닐라 아이스크림을 올린 애플 파이의 가격은?", options: ["5,000원", "6,500원", "9,000원", "4,000원"], correctAnswer: "6,500원", explanation: "5,000원(파이) + 1,500원(추가 아이스크림) = 6,500원입니다."),
            ExerciseItem(prompt: "메뉴: 터키 랩 8,500원, 감자칩 1,500원, 주스 2,000원. 터키 랩과 주스의 총가격은 얼마인가요?", options: ["8,500원", "10,000원", "10,500원", "12,000원"], correctAnswer: "10,500원", explanation: "8,500원 + 2,000원 = 10,500원입니다."),
            ExerciseItem(prompt: "메뉴: 점심 특선 (오전 11시 - 오후 3시 제공) 9,000원. 일반 저녁 메뉴 15,000원. 현재 시각은 오후 1시입니다. 가격은 얼마인가요?", options: ["9,000원", "15,000원", "11,000원", "3,000원"], correctAnswer: "9,000원", explanation: "오후 1시는 11시에서 3시 사이이므로 점심 특선 가격인 9,000원이 적용됩니다."),
            ExerciseItem(prompt: "메뉴: 커피 2,000원 (리필 무료), 홍차 2,500원. 커피를 세 잔 마시면 총 얼마를 내야 하나요?", options: ["2,000원", "6,000원", "2,500원", "7,500원"], correctAnswer: "2,000원", explanation: "리필이 무료이므로 첫 잔 가격인 2,000원만 내면 됩니다."),
            ExerciseItem(prompt: "메뉴: 야채수프 4,000원, 소고기 스튜 7,000원. 고기가 들어간 요리는 무엇인가요?", options: ["야채수프", "소고기 스튜", "둘 다", "둘 다 아님"], correctAnswer: "소고기 스튜", explanation: "소고기는 육류에 해당합니다."),
            ExerciseItem(prompt: "메뉴: 타코 3,000원, 퀘사디아 6,000원, 음료 2,000원. 퀘사디아의 가격은 얼마인가요?", options: ["3,000원", "6,000원", "2,000원", "8,000원"], correctAnswer: "6,000원", explanation: "퀘사디아는 6,000원입니다."),
            ExerciseItem(prompt: "메뉴: 스파게티 12,000원, 라자냐 14,000원, 마늘빵 3,000원. 사이드 메뉴인 마늘빵의 가격은?", options: ["12,000원", "14,000원", "3,000원", "15,000원"], correctAnswer: "3,000원", explanation: "마늘빵은 3,000원입니다."),
            ExerciseItem(prompt: "메뉴: 에그 베네딕트 11,000원, 오트밀 6,000원, 과일 볼 5,000원. 가장 비싼 아침 메뉴는?", options: ["에그 베네딕트", "오트밀", "과일 볼", "모두 같다"], correctAnswer: "에그 베네딕트", explanation: "11,000원이 가장 비쌉니다.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills (고지서 이해하기)
    private static let exercise13 = Exercise(
        title: "고지서 이해하기",
        instructions: "고지서 정보를 읽고 질문에 답하세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "전기 요금 고지서: 납부 금액: 45달러. 납기일: 7월 15일. 납부해야 하는 총금액은 얼마인가요?", options: ["15달러", "45달러", "7월 15일", "무료"], correctAnswer: "45달러", explanation: "납부해야 하는 총금액은 45달러입니다."),
            ExerciseItem(prompt: "수도 요금 고지서: 납기일: 10월 10일. 연체료: 5달러. 오늘은 10월 12일입니다. 오늘 요금을 내면 어떻게 되나요?", options: ["기본 요금만 낸다", "연체료 5달러를 추가로 낸다", "할인을 받는다", "아무 일도 없다"], correctAnswer: "연체료 5달러를 추가로 낸다", explanation: "납기일이 지났으므로 연체료 5달러가 추가로 청구됩니다."),
            ExerciseItem(prompt: "인터넷 요금 고지서: 월 청구액: 60달러. 자동이체 할인: -5달러. 자동이체 시 최종 요금은 얼마인가요?", options: ["60달러", "65달러", "55달러", "5달러"], correctAnswer: "55달러", explanation: "60달러 - 5달러 = 55달러입니다."),
            ExerciseItem(prompt: "가스 요금 고지서: 이번 달 요금: 30달러. 미납 금액: 10달러. 총 청구액: 40달러. 지난달로부터 이월된 미납금은 얼마인가요?", options: ["30달러", "10달러", "40달러", "0달러"], correctAnswer: "10달러", explanation: "미납 금액 10달러가 이월된 금액입니다."),
            ExerciseItem(prompt: "휴대전화 요금: 납기일: 6월 20일. 현재 날짜: 6월 15일. 요금을 기한 내에 내려면 며칠이 남았나요?", options: ["5일", "20일", "15일", "1일"], correctAnswer: "5일", explanation: "6월 20일 - 6월 15일 = 5일 남았습니다."),
            ExerciseItem(prompt: "쓰레기 수거비 고지서: 분기별 요금 (3달러 기준): 36달러. 한 달 기준으로 환산하면 얼마인가요?", options: ["36달러", "12달러", "18달러", "6달러"], correctAnswer: "12달러", explanation: "36달러 나누기 3달(분기)은 월 12달러입니다."),
            ExerciseItem(prompt: "케이블 TV 고지서: 청구 금액: 80달러. 수취인: “XYZ Cable Co.” 수표를 발행할 때 수취인은 누구로 적어야 합니까?", options: ["80달러", "XYZ Cable Co.", "설치 기사", "현금"], correctAnswer: "XYZ Cable Co.", explanation: "고지서에 수취인은 “XYZ Cable Co.”로 명시되어 있습니다."),
            ExerciseItem(prompt: "공공요금 종합: 수도: 20달러, 가스: 30달러, 전기: 50달러. 합계: 100달러. 가장 비용이 많이 든 항목은?", options: ["수도", "가스", "전기", "비용이 다 같다"], correctAnswer: "전기", explanation: "전기가 50달러로 가장 높습니다."),
            ExerciseItem(prompt: "자동차 보험: 반기(6개월) 보험료: 600달러. 이 요금은 몇 달에 한 번씩 납부합니까?", options: ["매달", "6개월마다 (연 2회)", "1년에 한 번", "매주"], correctAnswer: "6개월마다 (연 2회)", explanation: "반기는 6개월(1년의 절반)을 의미합니다."),
            ExerciseItem(prompt: "스트리밍 서비스 고지서: 계정 상태: 정지됨. 납부 금액: 15달러. 서비스가 작동하지 않는 이유는 무엇인가요?", options: ["인터넷 연결 끊김", "TV 고장", "미납 요금으로 인한 계정 정지", "버퍼링 중"], correctAnswer: "미납 요금으로 인한 계정 정지", explanation: "미납 요금으로 인해 계정 상태가 정지되었습니다."),
            ExerciseItem(prompt: "헬스장 회원권: 연간 요금: 120달러. 월 요금: 10달러. 1년 회원권 요금은 얼마인가요?", options: ["10달러", "120달러", "130달러", "12달러"], correctAnswer: "120달러", explanation: "연간 요금은 120달러입니다."),
            ExerciseItem(prompt: "난방비 고지서: 1월 청구액: 110달러. 7월 청구액: 20달러. 1월 요금이 훨씬 비싼 이유는 무엇인가요?", options: ["여름에 가스비가 더 비싸다", "겨울철인 1월에 난방을 더 많이 사용했다", "1월에 집이 비어 있었다", "시간이 변경되었다"], correctAnswer: "겨울철인 1월에 난방을 더 많이 사용했다", explanation: "겨울 날씨에는 실내 온도 유지를 위해 난방을 많이 가동하므로 요금이 올라갑니다."),
            ExerciseItem(prompt: "신용카드 고지서: 최소 결제액: 25달러. 총 사용 금액: 500달러. 연체를 막기 위해 이번 달에 내야 할 최소 금액은?", options: ["25달러", "500달러", "0달러", "475달러"], correctAnswer: "25달러", explanation: "최소 결제 금액을 내면 일단 연체를 방지할 수 있습니다."),
            ExerciseItem(prompt: "병원 고지서: 총 청구액: 150달러. 보험 적용액: 120달러. 환자 본인 부담금: 30달러. 본인이 납부해야 할 돈은?", options: ["150달러", "120달러", "30달러", "0달러"], correctAnswer: "30달러", explanation: "환자 본인 부담금이 본인이 내야 하는 실 납부 금액입니다."),
            ExerciseItem(prompt: "신문 구독: 다음 갱신일: 2026년 12월 31일. 갱신 전에 구독을 취소하려면 언제 연락해야 합니까?", options: ["2026년 12월 31일 이전에", "2026년 12월 31일 이후에", "2027년 1월 중에", "취소할 필요가 없다"], correctAnswer: "2026년 12월 31일 이전에", explanation: "갱신일 전에 취소 처리를 완료해야 추가 결제가 발생하지 않습니다.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do? (어떻게 하시겠습니까?)
    private static let exercise14 = Exercise(
        title: "어떻게 하시겠습니까?",
        instructions: "주어진 대처 상황에서 가장 올바른 행동을 고르세요.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "부엌에서 탄내가 나지만 불꽃은 보이지 않습니다. 가장 먼저 무엇을 해야 하나요?", options: ["모른 척한다", "창문을 열고 가스레인지를 확인한다", "친구에게 전화를 걸어 수다를 떤다", "다시 자러 간다"], correctAnswer: "창문을 열고 가스레인지를 확인한다", explanation: "가스레인지를 신속하게 점검하여 잠재적 화재나 과열 요인을 확인하는 것이 안전한 대처법입니다."),
            ExerciseItem(prompt: "식료품점에서 계산하려는데 집에 지갑을 두고 온 것을 깨달았습니다. 가장 좋은 방법은?", options: ["돈을 내지 않고 그냥 가져간다", "점원에게 사정을 얘기하고 장바구니 보관을 부탁한 뒤 집에 다녀온다", "소리를 지르며 그냥 울며 나간다", "지점장과 싸운다"], correctAnswer: "점원에게 사정을 얘기하고 장바구니 보관을 부탁한 뒤 집에 다녀온다", explanation: "점원에게 양해를 구하고 짐을 맡겨 두는 것이 상식적이고 정중한 행동입니다."),
            ExerciseItem(prompt: "부엌 바닥에 날달걀을 떨어뜨려 깨졌습니다. 어떻게 해야 할까요?", options: ["내일까지 그대로 둔다", "즉시 종이 타월과 세제로 닦아낸다", "카펫으로 덮어 가린다", "키우는 고양이가 먹게 둔다"], correctAnswer: "즉시 종이 타월과 세제로 닦아낸다", explanation: "날달걀은 미끄럽고 박테리아 번식 우려가 있으므로 즉시 깨끗이 치워야 합니다."),
            ExerciseItem(prompt: "친구가 키우던 강아지가 어제 세상을 떠났다고 합니다. 친구에게 해줄 말로 알맞은 것은?", options: ["재밌는 일이다", "상심이 크겠구나. 삼가 조의를 표해", "그냥 고양이를 새로 키워봐", "나한테 강아지 장난감 다 줄 수 있어?"], correctAnswer: "상심이 크겠구나. 삼가 조의를 표해", explanation: "상실의 슬픔을 겪는 이에게 위로의 마음을 전하는 것이 올바른 도리입니다."),
            ExerciseItem(prompt: "모르는 번호로부터 전화가 와서 복권에 당첨되었으니 은행 계좌 정보를 알려달라고 합니다. 어떻게 해야 하나요?", options: ["즉시 계좌 정보를 입력하거나 말해준다", "전화를 끊고 개인 정보를 절대 공유하지 않는다", "나중에 다시 전화해 달라고 한다", "가족들에게 파티를 열자고 전화를 한다"], correctAnswer: "전화를 끊고 개인 정보를 절대 공유하지 않는다", explanation: "의심스러운 전화로 금융 정보를 유도하는 행동은 보이스피싱 사기일 확률이 높습니다."),
            ExerciseItem(prompt: "덥고 밀폐된 방에 서 있다가 갑자기 어지럽고 현기증이 납니다. 어떻게 해야 하나요?", options: ["그대로 서서 눈을 감는다", "즉시 자리에 앉아서 물을 마신다", "화장실로 뛰어가려고 한다", "제자리에서 뱅뱅 돈다"], correctAnswer: "즉시 자리에 앉아서 물을 마신다", explanation: "앉아야 쓰러져 다치는 낙상 사고를 예방할 수 있고 수분 섭취가 회복에 도움을 줍니다."),
            ExerciseItem(prompt: "부엌 싱크대 밑에서 물이 새고 있는 것을 발견했습니다. 가장 먼저 해야 할 일은 무엇인가요?", options: ["도배업자에게 전화를 건다", "양동이를 대서 새는 물을 받는다", "나중에 바닥 청소를 계획한다", "불을 끈다"], correctAnswer: "양동이를 대서 새는 물을 받는다", explanation: "바닥에 물이 퍼져 2차 피해가 생기는 것을 즉시 방지하기 위해 물을 받는 도구를 설치해야 합니다."),
            ExerciseItem(prompt: "저녁 식사 파티에 초대받았으나 불가피하게 갈 수 없게 되었습니다. 어떻게 해야 하나요?", options: ["말없이 불참한다", "미리 주최자에게 연락해 참석하기 어렵다고 전달한다", "아무 말 없이 늦게 도착한다", "대답 대신 대리 선물만 보낸다"], correctAnswer: "미리 주최자에게 연락해 참석하기 어렵다고 전달한다", explanation: "행사 진행과 인원 준비를 위해 주최 측에 불참 사실을 미리 예의 있게 알리는 것이 좋습니다."),
            ExerciseItem(prompt: "친구의 집에서 실수로 장식용 꽃병을 깨뜨렸습니다. 올바른 대처 방식은?", options: ["파편을 소파 밑으로 밀어 숨긴다", "사과하고 보상하거나 변상하겠다고 제안한다", "내가 깨뜨리지 않은 척 시치미를 뗀다", "친구가 키우는 개가 그랬다고 탓한다"], correctAnswer: "사과하고 보상하거나 변상하겠다고 제안한다", explanation: "정직하게 실수를 인정하고 피해를 복구하려 노력하는 것이 신뢰를 지키는 태도입니다."),
            ExerciseItem(prompt: "집 열쇠가 없어서 문이 잠겨 집에 들어갈 수 없습니다. 가장 적절한 대처는?", options: ["유리창을 깨고 들어간다", "여분의 열쇠를 가진 가족이나 열쇠 수리공에게 연락한다", "현관 앞에 앉아 하염없이 기다린다", "문을 발로 찬다"], correctAnswer: "여분의 열쇠를 가진 가족이나 열쇠 수리공에게 연락한다", explanation: "전문가의 도움을 받거나 예비 열쇠를 찾는 것이 물리적 파손 없는 안전한 입장 방법입니다."),
            ExerciseItem(prompt: "가로등은 다 켜져 있는데 우리 집만 전기가 들어오지 않습니다. 어떻게 해야 할까요?", options: ["집 안의 차단기(배전반) 박스를 확인한다", "새 텔레비전을 구매한다", "즉시 잠을 자러 간다", "경찰에 긴급 신고한다"], correctAnswer: "집 안의 차단기(배전반) 박스를 확인한다", explanation: "단전 원인이 개별 가구 내부의 누전차단기 작동 때문인지 파악해야 합니다."),
            ExerciseItem(prompt: "이웃 어르신이 무거운 식료품 가방들을 들고 힘겹게 걸어가는 모습을 봅니다. 어떻게 해야 하나요?", options: ["못 본 척 빠르게 앞질러 간다", "가방을 대신 들어드리겠다고 돕는다", "어르신 사진을 찍는다", "어르신께 더 빨리 가시라고 재촉한다"], correctAnswer: "가방을 대신 들어드리겠다고 돕는다", explanation: "어려운 이웃을 돕는 봉사 정신과 배려가 돋보이는 모범적인 행동입니다."),
            ExerciseItem(prompt: "커피를 한 모금 마셨는데 너무 뜨거워서 입안을 뎄습니다. 어떻게 대처해야 하나요?", options: ["식기 전에 남은 커피를 한꺼번에 다 마신다", "조심스럽게 입안의 뜨거운 액체를 뱉어내고 차가운 물로 헹군다", "큰 소리로 비명을 지른다", "머그잔을 던진다"], correctAnswer: "조심스럽게 입안의 뜨거운 액체를 뱉어내고 차가운 물로 헹군다", explanation: "입속 화상 부위 온도를 낮추기 위해 찬물로 식히는 즉각적인 완화 조치가 유익합니다."),
            ExerciseItem(prompt: "의사가 새 약을 처방해 주었지만 복용 방법을 잘 모르겠습니다. 어떻게 해야 할까요?", options: ["스스로 용량을 어림짐작해 먹는다", "약사나 담당 의사에게 전화를 걸어 물어본다", "약 먹기를 그냥 아예 포기한다", "인터넷에 검색해 본다"], correctAnswer: "약사나 담당 의사에게 전화를 걸어 물어본다", explanation: "의약품 오남용 방지를 위해 신뢰할 수 있는 의료 전문가에게 문의해야 합니다."),
            ExerciseItem(prompt: "친구의 하얀 카펫에 실수로 레드와인을 쏟았습니다. 어떻게 대처해야 합니까?", options: ["그 위에 의자를 놓아 ل케를 가린다", "사과하고 즉시 오염 부위 세척을 돕는다", "아무 말 없이 파티에서 몰래 일찍 퇴장한다", "포도 주스였다고 거짓말을 한다"], correctAnswer: "사과하고 즉시 오염 부위 세척을 돕는다", explanation: "액체가 섬유에 고착되기 전에 즉시 닦아내는 대처가 얼룩을 방지하는 최선입니다."),
            ExerciseItem(prompt: "화재경보기에서 매분 짧은 경고음이 한 번씩 납니다. 이것은 무엇을 의미하나요?", options: ["실내에 불이 난 상태이다", "배터리 수명이 다하여 교체가 필요하다", "기기가 완전히 고장 났다", "아무 의미도 없다"], correctAnswer: "배터리 수명이 다하여 교체가 필요하다", explanation: "주기적으로 울리는 짧은 소리는 대개 배터리 전원 경고 알림입니다."),
            ExerciseItem(prompt: "운전 중에 경광등을 켠 긴급차량(구급차, 소방차 등)이 뒤에 오는 것을 보았습니다. 어떻게 대처해야 하나요?", options: ["길을 막기 위해 가속해서 앞질러 간다", "도로 우측(가장자리)으로 비켜서서 차량을 멈춰 양보한다", "차도 중앙에 급정거한다", "무시하고 주행한다"], correctAnswer: "도로 우측(가장자리)으로 비켜서서 차량을 멈춰 양보한다", explanation: "긴급 수송 경로 확보를 위해 서행 및 가장자리 양보 운전을 하는 것이 교통 법규에 부합합니다."),
            ExerciseItem(prompt: "거래 은행에서 비밀번호 확인을 유도하며 링크 클릭을 지시하는 이메일을 보냈습니다. 어떻게 대처해야 합니까?", options: ["링크를 누르고 들어가 비밀번호를 입력한다", "메일을 즉시 삭제하거나 은행 공식 전화번호로 확인 전화를 한다", "이메일을 주위 지인들에게 전달한다", "답장으로 비밀번호를 적어 보낸다"], correctAnswer: "메일을 즉시 삭제하거나 은행 공식 전화번호로 확인 전화를 한다", explanation: "금융사에서 개인의 비번을 링크 형식으로 수집하지 않으므로 피싱을 의심해 대응해야 합니다."),
            ExerciseItem(prompt: "길거리에서 현금과 신분증이 들어 있는 지갑을 발견했습니다. 어떻게 해야 할까요?", options: ["현금만 꺼내고 지갑은 버린다", "가까운 경찰서에 가져가거나 신분증 연락처로 직접 연락한다", "길바닥에 그대로 두고 지나간다", "지나가는 행인에게 준다"], correctAnswer: "가까운 경찰서에 가져가거나 신분증 연락처로 직접 연락한다", explanation: "유실물 습득 시 관계 기관에 전달해 주인을 찾아주는 행동이 올바른 처신입니다."),
            ExerciseItem(prompt: "화재경보기가 크고 지속적인 소리를 뿜어내고 있습니다. 어떻게 행동해야 하나요?", options: ["조용해질 때까지 조용히 참는다", "화재 발생 여부를 점검하고 비상시 통로를 통해 대피한다", "경보기의 건전지를 그 즉시 다 빼버린다", "이불을 뒤집어쓰고 잔다"], correctAnswer: "화재 발생 여부를 점검하고 비상시 통로를 통해 대피한다", explanation: "경보 상태에서는 신속한 피난 및 구조 체크가 안전 확보의 지름길입니다.")
        ]
    )
}
