import Foundation

struct KoreanFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        safety,
        televisionSchedule,
        monthlyCalendarPlanning,
        cookingSteps,
        dailySkills,
        spatialAwareness,
        temporalAwareness,
        functionalMathGroceryShopping,
        functionalMathAndWriting,
        functionalWritingTasks
    ]

    // MARK: - 안전
    private static let safety = Exercise(
        id: UUID(),
        title: "안전",
        instructions: "각 시나리오를 읽고 어떻게 할 것인지 설명하세요. '정답 보기'를 누르면 모범 답안이 표시됩니다.",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "지하실에서 넘어졌는데 발목을 삔 것 같습니다. 안전을 위해 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "움직이지 마세요. 발을 디디지 말고 도움을 요청해 소리를 지르세요. 혼자라면 911을 부르거나 전화를 사용하세요. 안전하게 움직일 수 있을 때만 천천히 움직이십시오.",
                explanation: "Fall safety first aid."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "요리를 하던 중 부엌에서 가스레인지 불이 프라이팬의 기름으로 옮겨붙었습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "절대로 기름 화재에 물을 붓지 마십시오. 화재가 더 커집니다. 가스 밸브를 즉시 잠그고 냄비 뚜껑이나 철제 쟁반으로 팬을 덮어 산소를 차단해 불을 끕니다. 불이 번지면 대피하고 911에 신고하십시오.",
                explanation: "Stove grease fire safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은행 업무 오류를 해결하는 데 도움을 주면 보상금을 주겠다는 이메일을 받았습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "이메일에 답장하지 말고 어떤 링크도 클릭하지 마십시오. 이것은 피싱 사기입니다. 이메일을 즉시 삭제하십시오.",
                explanation: "Phishing scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한밤중에 자다가 갑자기 가슴에 심한 통증을 느끼며 깨어났습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "즉시 911에 전화하십시오. 통증이 지나가는지 기다리지 마십시오. 가슴 통증은 심장마비의 징후일 수 있습니다. 복용 가능한 아스피린이 있다면 씹어서 삼키십시오.",
                explanation: "Heart attack response."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "누군가 전화를 걸어 컴퓨터에 바이러스가 있다며 원격으로 무료 점검을 해주겠다고 제안합니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "전화를 끊으십시오. 기술 지원 사기입니다. 신뢰할 수 없는 전화 통화에서 타인에게 컴퓨터 원격 제어 권한을 주어서는 절대 안 됩니다.",
                explanation: "Remote access scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "집에 돌아왔는데 현관문이나 창문이 강제로 열려 있는 것을 발견했습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "집 안으로 들어가지 마십시오. 즉시 그 자리에서 벗어나 안전한 곳으로 대피한 뒤 911에 전화하십시오. 경찰이 와서 집 안의 안전을 확인할 때까지 밖에서 기다려야 합니다.",
                explanation: "Home break-in safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은행 계좌가 정지되었으니 즉시 링크를 클릭해 본인 인증을 하라는 문자 메시지(SMS)를 받았습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "문자 메시지에 포함된 링크를 절대 클릭하지 마십시오. 이것은 피싱 사기입니다. 은행 카드 뒷면에 적힌 공식 고객센터 번호로 직접 전화를 걸어 확인하십시오.",
                explanation: "SMS phishing safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "운전을 하던 중 갑자기 어지럽고 정신이 혼미해지는 것을 느꼈습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "가능한 한 빨리 안전한 곳에 차를 세우십시오. 비상등을 켜고 운전을 중단한 뒤, 가족에게 연락하거나 911에 전화를 걸어 도움을 요청하십시오.",
                explanation: "Sudden medical impairment while driving."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "낯선 사람이 수도공사 직원이라며 문을 두드렸으나 신분증을 보여주지 못합니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "문을 열어주지 마십시오. 창문을 통해 신분증을 보여달라고 요청하십시오. 문을 열기 전에 수도 공사 공식 번호로 직접 전화하여 직원이 파견되었는지 확인하십시오.",
                explanation: "Imposter worker home safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "욕실 바닥에서 정체불명의 알약을 발견했습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "알약을 복용하지 마십시오. 정체를 알 수 없는 약은 약국이나 안전한 약물 수거함에 버려 폐기해야 합니다. 함부로 변기에 내리지 마십시오.",
                explanation: "Unidentified pill disposal."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "화재 경보기가 30초에서 60초마다 한 번씩 짧게 삑 소리를 냅니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "이는 배터리가 부족하다는 신호입니다. 즉시 배터리를 새것으로 교체하십시오. 경보기를 배터리 없이 전원이 꺼진 상태로 방치하지 마십시오.",
                explanation: "Smoke alarm low battery."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "실수로 처방약 복용량을 두 배로 복용했습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "즉시 독극물 통제 센터(1-800-222-1222)나 911에 전화하십시오. 증상이 나타날 때까지 기다리지 말고 복용한 약병을 소지한 채 전화를 하십시오.",
                explanation: "Accidental double dose."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "손자 지훈이가 LA 카운티 감옥에 수감되었다며 합의금을 즉시 송금하라는 전화를 받았습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "이것은 보이스피싱(조부모 사기)입니다. 전화를 끊고 손자 지훈이 혹은 자녀에게 직접 기존 연락처로 전화를 걸어 사실을 확인하십시오. 돈을 먼저 송금하지 마십시오.",
                explanation: "Grandparent scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "부엌에서 가스 냄새가 강하게 납니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "모든 가족과 반려동물을 데리고 즉시 집 밖으로 대피하십시오. 집 안에서는 불을 켜거나 전화를 사용하지 말고, 밖으로 나온 뒤 안전한 거리에서 911이나 가스 회사에 전화하십시오.",
                explanation: "Gas leak emergency."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "LA 한인타운 한남체인 주차장에서 내 차로 걸어가는데 누군가 뒤에서 바짝 따라오는 것을 느꼈습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "혼자 차로 가지 마십시오. 마트로 다시 들어가거나 보안 요원에게 도움을 요청하십시오. 위협을 느낀다면 즉시 911에 전화하십시오.",
                explanation: "Personal safety in parking lot."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "면허가 없고 계약서도 작성하지 않는 업자가 지붕 수리를 저렴한 가격에 현금으로 해 주겠다고 찾아왔습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "계약을 거절하십시오. 이는 일반적인 무면허 사기 유형입니다. 항상 공인된 서면 견적서를 받고 면허를 확인하며 선금을 전액 지불하지 마십시오.",
                explanation: "Contractor scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소셜 시큐리티 번호(SSN)가 의심스러운 활동으로 인해 정지되었다는 자동 전화를 받았습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "전화를 즉시 끊으십시오. 소셜 시큐리티 사무국은 전화를 걸어 번호를 정지시키거나 송금을 요구하지 않습니다. 사기 전화입니다.",
                explanation: "Social security scam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "거실에 촛불을 켜 둔 채 깜빡 잊고 침실로 자러 가려던 참이었습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "즉시 거실로 가서 촛불을 끄십시오. 촛불을 켠 채 잠을 자면 화재 위험이 매우 큽니다.",
                explanation: "Candle fire safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "일산화탄소(CO) 감지기 경보가 연속으로 계속 울리기 시작합니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "즉시 모든 사람과 함께 밖으로 대피하십시오. 집 안의 물건을 챙기느라 시간을 지체하지 마십시오. 밖으로 나온 뒤 911에 신고하십시오.",
                explanation: "Carbon monoxide hazard."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "길에서 다쳐서 고통스러워하는 길고양이나 강아지를 발견했습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "동물을 함부로 만지거나 가까이 가지 마십시오. 다친 동물은 통증 때문에 물 수 있습니다. 지역 동물 통제소(Animal Control)에 연락해 도움을 청하십시오.",
                explanation: "Hurt animal safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "국세청(IRS) 직원이라며 밀린 세금을 기프트 카드로 즉시 지불하지 않으면 체포하겠다는 전화를 받았습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "전화를 끊으십시오. IRS는 전화를 통해 즉각적인 기프트 카드 결제를 요구하지 않습니다. 이것은 국세청 사칭 사기입니다.",
                explanation: "IRS scam prevention."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "부엌에서 칼을 쓰다가 손가락을 베었는데 깨끗한 천으로 10분 동안 압박해도 피가 멈추지 않습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "상처 부위를 계속 강하게 압박하면서 응급 클리닉(Urgent Care)에 가거나 피가 멈추지 않으면 911에 전화하십시오.",
                explanation: "Severe bleeding first aid."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "욕실 청소를 하던 중 락스와 암모니아 제품을 섞어서 강력한 세제를 만들려고 합니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "절대 락스와 암모니아를 섞지 마십시오. 두 화학 물질이 만나면 호흡기에 매우 해로운 유독 가스가 발생합니다.",
                explanation: "Chemical cleaning safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오후에 산책을 나갔다가 길을 잃어 자신이 어디에 있는지 모르겠고 집에 가는 길도 기억나지 않습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "침착함을 유지하십시오. 근처 상점이나 은행 같은 안전한 건물로 들어가십시오. 휴대전화가 있다면 911이나 가족에게 전화해 현재 위치를 알리십시오.",
                explanation: "Disorientation safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "만두를 굽던 프라이팬에서 연기가 심하게 나고 타는 냄새가 나기 시작합니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "즉시 가스레인지 불을 끄고 팬에 맞는 금속 뚜껑을 덮어 화재를 예방하십시오. 기름이 튀거나 불이 붙은 뜨거운 팬을 함부로 옮기지 마십시오.",
                explanation: "Kitchen smoke safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "정전이 8시간 이상 지속된 후 냉장고의 전원이 다시 켜졌으나 안에 있던 음식이 미지근해져 있습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "고기, 유제품, 계란 등 상하기 쉬운 음식은 모두 버리십시오. 실온에 오랫동안 방치된 음식은 세균이 번식하여 식중독을 유발할 수 있습니다.",
                explanation: "Food safety after power outage."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "욕조에 물을 받아둔 상태에서 전원에 연결된 드라이기가 물속으로 떨어졌습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "전원이 연결된 상태의 드라이기를 절대 손으로 건져내려 하지 마십시오. 욕조에서 나와 메인 두꺼비집(차단기)의 전원을 내린 후 플러그를 뽑으십시오.",
                explanation: "Electrical safety in bathroom."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "거실에 있는데 갑자기 땅이 크게 흔들리며 지진이 일어났습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "튼튼한 식탁이나 테이블 밑으로 들어가 머리를 보호하고 다리를 꽉 잡으십시오. 창문이나 넘어지기 쉬운 높은 가구에서 멀리 떨어지십시오.",
                explanation: "Earthquake safety."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "낯선 사람이 문을 두드리며 교통사고가 났으니 전화를 빌려 쓰기 위해 집 안으로 들어오겠다고 요청합니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "문을 열어주지 마십시오. 잠긴 문을 사이에 두고 문 밖의 사람을 위해 대신 911이나 견인차 서비스를 전화를 걸어주겠다고 제안하십시오.",
                explanation: "Home security."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "폭풍우가 지나간 후 동네 인도에 끊어진 전선이 떨어져 있는 것을 보았습니다. 어떻게 하시겠습니까?",
                options: [],
                correctAnswer: "전선에서 최소 30피트 이상 멀리 떨어지십시오. 절대 만지거나 가까이 가지 말고 즉시 911에 전화를 걸어 신고하십시오.",
                explanation: "Downed power line safety."
            )
        ]
    )

    // MARK: - TV 편성표
    private static let televisionSchedule = Exercise(
        id: UUID(),
        title: "TV 편성표",
        instructions: "편성표 내용을 바탕으로 올바른 정답을 선택하십시오.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 6:00 - 로컬 뉴스\n오후 7:00 - 일일드라마\n오후 8:00 - 야구 중계: 다저스 경기\n일일드라마는 몇 시에 시작합니까?",
                options: ["오후 6:00", "오후 7:00", "오후 8:00", "오후 9:00"],
                correctAnswer: "오후 7:00",
                explanation: "The schedule lists the drama starting at 7:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 6:00 - 로컬 뉴스\n오후 7:00 - 일일드라마\n오후 8:00 - 야구 중계: 다저스 경기\n야구 중계를 처음부터 보려면 몇 시에 TV를 켜야 합니까?",
                options: ["오후 6:00", "오후 7:00", "오후 8:00", "오후 8:30"],
                correctAnswer: "오후 8:00",
                explanation: "The baseball game starts at 8:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 5:00 - 요리 맛집 방송\n오후 5:30 - 가요 무대\n오후 6:00 - 저녁 뉴스\n저녁 뉴스 바로 전에 방송되는 프로그램은 무엇입니까?",
                options: ["요리 맛집 방송", "가요 무대", "야구 중계", "뉴스"],
                correctAnswer: "가요 무대",
                explanation: "Gayo Stage is at 5:30 PM, right before the 6:00 PM news."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 4:00 - 시니어 요가\n오후 5:00 - 역사 다큐멘터리\n오후 6:00 - 저녁 뉴스\n“역사 다큐멘터리”의 방영 시간은 총 몇 시간입니까?",
                options: ["30분", "1시간", "1시간 30분", "2시간"],
                correctAnswer: "1시간",
                explanation: "From 5:00 PM to 6:00 PM is exactly 1 hour."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 1:00 - 건강 밥상\n오후 1:30 - 코미디 극장\n오후 2:30 - 오후의 명화\n“코미디 극장”은 몇 시에 종료됩니까?",
                options: ["오후 1:00", "오후 1:30", "오후 2:30", "오후 3:00"],
                correctAnswer: "오후 2:30",
                explanation: "The program after Comedy Theater starts at 2:30 PM, indicating it ends then."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 7:00 - 한국 가요제 (상영시간: 2시간)\n오후 9:00 - 뉴스 데스크\n“한국 가요제”는 몇 시에 끝납니다? -> 끝납니까?",
                options: ["오후 8:00", "오후 8:30", "오후 9:00", "오후 10:00"],
                correctAnswer: "오후 9:00",
                explanation: "7:00 PM + 2 hours = 9:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오전 8:00 - 아침 마당\n오전 11:00 - 드라마 스페셜\n“아침 마당”의 방영 시간은 총 몇 시간입니까?",
                options: ["1시간", "2시간", "3시간", "4시간"],
                correctAnswer: "3시간",
                explanation: "From 8:00 AM to 11:00 AM is 3 hours."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 5:30 - 바둑 명국\n오후 6:30 - 데일리 뉴스\n만약 오후 6:00에 집을 나서야 한다면, 1시간짜리 방송인 “바둑 명국”을 끝까지 볼 수 있습니까?",
                options: ["네, 끝까지 볼 수 있습니다", "아니요, 후반부를 볼 수 없습니다", "네, 15분짜리 방송입니다", "아니요, 오후 6:00에 시작합니다"],
                correctAnswer: "아니요, 후반부를 볼 수 없습니다",
                explanation: "Show is 1 hour (5:30 to 6:30). Leaving at 6:00 PM means missing 30 minutes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오전 10:00 - 무엇이든 물어보세요\n오전 10:30 - 요리 비결\n오전 11:00 - 가요 무대\n편성표에 따르면 오전의 두 번째 프로그램은 무엇입니까?",
                options: ["무엇이든 물어보세요", "요리 비결", "가요 무대", "로컬 뉴스"],
                correctAnswer: "요리 비결",
                explanation: "“요리 비결” is scheduled second (10:30 AM)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TV 편성표:\n오후 8:00 - 주말 버라이어티\n오후 10:00 - 마감 뉴스\n현재 시간이 오후 9:30이라면, 방영 중인 프로그램은 무엇입니까?",
                options: ["마감 뉴스", "주말 버라이어티", "가요 무대", "없음"],
                correctAnswer: "주말 버라이어티",
                explanation: "Variety show runs from 8:00 PM to 10:00 PM, so it is active at 9:30 PM."
            )
        ]
    )

    // MARK: - 월간 일정 계획
    private static let monthlyCalendarPlanning = Exercise(
        id: UUID(),
        title: "월간 일정 계획",
        instructions: "달력을 사용해 물음에 알맞은 답을 고르십시오.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "달력에 따르면, 김 선생님의 정기 검진일은 6월의 두 번째 화요일입니다. 6월 1일이 월요일이라면, 검진일은 며칠입니까?",
                options: ["6월 2일", "6월 9일", "6월 16일", "6월 23일"],
                correctAnswer: "6월 9일",
                explanation: "First Tuesday is June 2. Second Tuesday is June 9."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한 병당 30일 복용할 수 있는 약이 있습니다. 5월 1일에 첫 번째 약을 복용하기 시작했다면, 약이 끊기지 않기 위해 늦어도 며칠까지 다음 약을 구매해야 합니까?",
                options: ["5월 15일", "5월 30일", "5월 31일", "6월 1일"],
                correctAnswer: "5월 30일",
                explanation: "Reordering by Day 30 (May 30) prevents running out."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "손녀 지수의 생일은 10월 18일입니다. 오늘이 10월 10일이라면, 생일까지 며칠이 남았습니까?",
                options: ["6일", "7일", "8일", "9일"],
                correctAnswer: "8일",
                explanation: "18 minus 10 is 8 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "노인 복지 센터의 서예 교실은 매주 목요일에 열립니다. 오늘이 8월 5일 수요일이라면, 다음 수업은 언제입니까?",
                options: ["8월 6일 목요일", "8월 12일 목요일", "8월 4일 목요일", "8월 7일 금요일"],
                correctAnswer: "8월 6일 목요일",
                explanation: "The day after Wednesday the 5th is Thursday the 6th."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "매달 5일에 집세를 내야 합니다. 오늘이 9월 28일이라면 집세를 내기까지 며칠이 남았습니까?",
                options: ["5일", "7일", "10일", "12일"],
                correctAnswer: "7일",
                explanation: "September has 30 days. Sept 29, 30 (2 days) + 5 days of October = 7 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "치과 진료가 11월 24일로 예약되어 있습니다. 오늘이 11월 20일 금요일이라면, 치과 예약일은 무슨 요일입니까?",
                options: ["월요일", "화요일", "수요일", "목요일"],
                correctAnswer: "화요일",
                explanation: "Friday is 20th. Sat 21, Sun 22, Mon 23, Tue 24."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "거주하시는 콘도의 쓰레기 수거차는 매주 월요일과 목요일 오전에 옵니다. 오늘이 화요일이라면, 다음 수거차는 며칠 뒤에 옵니까?",
                options: ["1일 뒤", "2일 뒤", "3일 뒤", "4일 뒤"],
                correctAnswer: "2일 뒤",
                explanation: "Tuesday to Thursday is 2 days."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "토요일인 7월 12일부터 일주일(7일) 동안 여행을 갈 계획입니다. 돌아와야 하는 날짜는 며칠입니까?",
                options: ["7월 19일 토요일", "7월 20일 일요일", "7월 18일 금요일", "7월 21일 월요일"],
                correctAnswer: "7월 19일 토요일",
                explanation: "12 + 7 = 19."
            )
        ]
    )

    // MARK: - 요리 단계
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "요리 단계",
        instructions: "단계가 잘못된 순서로 나열되어 있습니다. 1, 2, 3으로 번호를 매겨 올바른 순서로 놓으세요.",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "라면 끓이기",
                options: ["물 550ml를 냄비에 붓는다", "수프와 건더기를 넣는다", "물이 끓으면 면과 스프를 넣는다", "면이 익으면 불을 끈다"],
                correctAnswer: "물 550ml를 냄비에 붓는다 | 물이 끓으면 면과 스프를 넣는다 | 수프와 건더기를 넣는다 | 면이 익으면 불을 끈다",
                explanation: "\"물 550ml를 냄비에 붓는다 | 물이 끓으면 면과 스프를 넣는다 | 수프와 건더기를 넣는다 | 면이 익으면 불을 끈다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "계란후라이 만들기",
                options: ["달걀을 깨서 올린다", "후라이팬에 기름을 두른다", "소금과 후추로 간한다", "바닥이 익으면 불을 끈다", "중불로 달군다"],
                correctAnswer: "후라이팬에 기름을 두른다 | 중불로 달군다 | 달걀을 깨서 올린다 | 소금과 후추로 간한다 | 바닥이 익으면 불을 끈다",
                explanation: "\"후라이팬에 기름을 두른다 | 중불로 달군다 | 달걀을 깨서 올린다 | 소금과 후추로 간한다 | 바닥이 익으면 불을 끈다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "밥 짓기",
                options: ["물이 끓으면 약불로 줄인다", "쌀을 씻는다", "물을 붓고 강불에 올린다", "15분간 익힌 뒤 5분 뜸 들인다", "쌀을 냄비에 담는다"],
                correctAnswer: "쌀을 씻는다 | 쌀을 냄비에 담는다 | 물을 붓고 강불에 올린다 | 물이 끓으면 약불로 줄인다 | 15분간 익힌 뒤 5분 뜸 들인다",
                explanation: "\"쌀을 씻는다 | 쌀을 냄비에 담는다 | 물을 붓고 강불에 올린다 | 물이 끓으면 약불로 줄인다 | 15분간 익힌 뒤 5분 뜸 들인다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "된장국 끓이기",
                options: ["두부와 채소를 넣는다", "물을 냄비에 붓고 끓인다", "된장을 풀어 넣는다", "한 소끔 끓인 뒤 불을 끈다", "국물 재료로 육수를 낸다"],
                correctAnswer: "물을 냄비에 붓고 끓인다 | 국물 재료로 육수를 낸다 | 된장을 풀어 넣는다 | 두부와 채소를 넣는다 | 한 소끔 끓인 뒤 불을 끈다",
                explanation: "\"물을 냄비에 붓고 끓인다 | 국물 재료로 육수를 낸다 | 된장을 풀어 넣는다 | 두부와 채소를 넣는다 | 한 소끔 끓인 뒤 불을 끈다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "김치볶음밥 만들기",
                options: ["달걀을 올려 마무리한다", "밥을 넣고 함께 볶는다", "간장으로 간을 맞춘다", "팬에 기름을 두른다", "김치를 넣고 볶는다"],
                correctAnswer: "팬에 기름을 두른다 | 김치를 넣고 볶는다 | 밥을 넣고 함께 볶는다 | 간장으로 간을 맞춘다 | 달걀을 올려 마무리한다",
                explanation: "\"팬에 기름을 두른다 | 김치를 넣고 볶는다 | 밥을 넣고 함께 볶는다 | 간장으로 간을 맞춘다 | 달걀을 올려 마무리한다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "녹차 우리기",
                options: ["뚜껑을 덮고 2분간 우린다", "컵에 찻잎 한 스푼을 넣는다", "80도 정도의 물을 붓는다", "찻잎을 걸러내고 마신다"],
                correctAnswer: "컵에 찻잎 한 스푼을 넣는다 | 80도 정도의 물을 붓는다 | 뚜껑을 덮고 2분간 우린다 | 찻잎을 걸러내고 마신다",
                explanation: "\"컵에 찻잎 한 스푼을 넣는다 | 80도 정도의 물을 붓는다 | 뚜껑을 덮고 2분간 우린다 | 찻잎을 걸러내고 마신다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "삶은 달걀 만들기",
                options: ["달걀을 찬물에 식힌다", "달걀을 냄비에 넣는다", "10분간 삶는다", "물을 붓고 강불에 올린다", "껍질을 벗긴다", "물이 끓으면 중불로 줄인다"],
                correctAnswer: "달걀을 냄비에 넣는다 | 물을 붓고 강불에 올린다 | 물이 끓으면 중불로 줄인다 | 10분간 삶는다 | 달걀을 찬물에 식힌다 | 껍질을 벗긴다",
                explanation: "\"달걀을 냄비에 넣는다 | 물을 붓고 강불에 올린다 | 물이 끓으면 중불로 줄인다 | 10분간 삶는다 | 달걀을 찬물에 식힌다 | 껍질을 벗긴다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오트밀 만들기",
                options: ["뚜껑을 덮고 2분간 둔다", "물 또는 우유를 냄비에 붓고 끓인다", "그릇에 담고 과일이나 꿀을 올린다", "오트밀 반 컵을 넣는다", "저으면서 3분간 익힌다"],
                correctAnswer: "물 또는 우유를 냄비에 붓고 끓인다 | 오트밀 반 컵을 넣는다 | 저으면서 3분간 익힌다 | 뚜껑을 덮고 2분간 둔다 | 그릇에 담고 과일이나 꿀을 올린다",
                explanation: "\"물 또는 우유를 냄비에 붓고 끓인다 | 오트밀 반 컵을 넣는다 | 저으면서 3분간 익힌다 | 뚜껑을 덮고 2분간 둔다 | 그릇에 담고 과일이나 꿀을 올린다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "간단한 샐러드 만들기",
                options: ["드레싱을 뿌린다", "야채를 씻는다", "먹기 좋게 썬다", "가볍게 버무린다", "그릇에 담는다"],
                correctAnswer: "야채를 씻는다 | 먹기 좋게 썬다 | 그릇에 담는다 | 드레싱을 뿌린다 | 가볍게 버무린다",
                explanation: "\"야채를 씻는다 | 먹기 좋게 썬다 | 그릇에 담는다 | 드레싱을 뿌린다 | 가볍게 버무린다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "토스트 만들기",
                options: ["버터나 잼을 바른다", "빵을 토스터에 넣는다", "황금빛이 되면 꺼낸다", "먹기 좋게 자른다", "토스터를 켠다"],
                correctAnswer: "빵을 토스터에 넣는다 | 토스터를 켠다 | 황금빛이 되면 꺼낸다 | 버터나 잼을 바른다 | 먹기 좋게 자른다",
                explanation: "\"빵을 토스터에 넣는다 | 토스터를 켠다 | 황금빛이 되면 꺼낸다 | 버터나 잼을 바른다 | 먹기 좋게 자른다\"이(가) 정답입니다."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "보리차 끓이기",
                options: ["주전자에 물을 가득 채웁니다", "물이 펄펄 끓을 때까지 강불로 데웁니다", "물이 끓으면 티백 보리차나 볶은 보리를 넣습니다", "약불로 줄여 10분간 더 끓여 우려냅니다", "불을 끄고 식힌 뒤 냉장고에 보관합니다"],
                correctAnswer: "주전자에 물을 가득 채웁니다 | 물이 펄펄 끓을 때까지 강불로 데웁니다 | 물이 끓으면 티백 보리차나 볶은 보리를 넣습니다 | 약불로 줄여 10분간 더 끓여 우려냅니다 | 불을 끄고 식힌 뒤 냉장고에 보관합니다",
                explanation: "Brewing barley tea."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "계란 프라이 만들기",
                options: ["프라이팬을 가스레인지에 올리고 식용유를 두릅니다", "팬이 달궈지면 계란을 깨서 조심스럽게 넣습니다", "약간의 소금을 뿌려 간을 맞춥니다", "흰자가 하얗게 굳을 때까지 익힙니다", "뒤집개로 접시에 옮겨 담습니다"],
                correctAnswer: "프라이팬을 가스레인지에 올리고 식용유를 두릅니다 | 팬이 달궈지면 계란을 깨서 조심스럽게 넣습니다 | 약간의 소금을 뿌려 간을 맞춥니다 | 흰자가 하얗게 굳을 때까지 익힙니다 | 뒤집개로 접시에 옮겨 담습니다",
                explanation: "Frying an egg."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "즉석 밥(햇반) 전자레인지에 데우기",
                options: ["즉석 밥의 비닐 포장을 표시된 선까지만 뜯습니다", "전자레인지 문을 열고 밥을 중앙에 넣습니다", "전자레인지 작동 시간을 2분으로 설정합니다", "시작 버튼을 눌러 데웁니다", "뜨거우므로 조심스럽게 꺼내 비닐을 모두 벗깁니다"],
                correctAnswer: "즉석 밥의 비닐 포장을 표시된 선까지만 뜯습니다 | 전자레인지 문을 열고 밥을 중앙에 넣습니다 | 전자레인지 작동 시간을 2분으로 설정합니다 | 시작 버튼을 눌러 데웁니다 | 뜨거우므로 조심스럽게 꺼내 비닐을 모두 벗깁니다",
                explanation: "Heating instant rice."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "컵라면 끓이기",
                options: ["컵라면 뚜껑을 표시선까지 엽니다", "분말 스프와 건더기 스프를 뜯어서 면 위에 뿌립니다", "뜨거운 물을 용기 안쪽 표시선까지 붓습니다", "뚜껑을 닫고 책 등으로 눌러 3분간 기다립니다", "뚜껑을 완전히 열고 젓가락으로 잘 섞어 먹습니다"],
                correctAnswer: "컵라면 뚜껑을 표시선까지 엽니다 | 분말 스프와 건더기 스프를 뜯어서 면 위에 뿌립니다 | 뜨거운 물을 용기 안쪽 표시선까지 붓습니다 | 뚜껑을 닫고 책 등으로 눌러 3분간 기다립니다 | 뚜껑을 완전히 열고 젓가락으로 잘 섞어 먹습니다",
                explanation: "Making instant cup ramen."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오이무침 만들기",
                options: ["오이를 깨끗이 씻어서 얇고 둥글게 썹니다", "볼에 썬 오이를 넣고 소금을 약간 뿌려 절입니다", "5분 뒤 물기를 손으로 꼭 짭니다", "고춧가루, 식초, 설탕, 다진 마늘을 넣고 버무립니다", "참기름과 통깨를 뿌려 마무리합니다"],
                correctAnswer: "오이를 깨끗이 씻어서 얇고 둥글게 썹니다 | 볼에 썬 오이를 넣고 소금을 약간 뿌려 절입니다 | 5분 뒤 물기를 손으로 꼭 짭니다 | 고춧가루, 식초, 설탕, 다진 마늘을 넣고 버무립니다 | 참기름과 통깨를 뿌려 마무리합니다",
                explanation: "Cucumber salad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "흰쌀밥 짓기 (전기밥솥)",
                options: ["쌀을 계량컵으로 퍼서 볼에 담습니다", "물로 쌀을 3~4번 깨끗이 씻어냅니다", "내솥의 눈금에 맞춰 물 높이를 맞춥니다", "밥솥에 내솥을 넣고 뚜껑을 닫습니다", "취사 버튼을 누르고 완료될 때까지 기다립니다"],
                correctAnswer: "쌀을 계량컵으로 퍼서 볼에 담습니다 | 물로 쌀을 3~4번 깨끗이 씻어냅니다 | 내솥의 눈금에 맞춰 물 높이를 맞춥니다 | 밥솥에 내솥을 넣고 뚜껑을 닫습니다 | 취사 버튼을 누르고 완료될 때까지 기다립니다",
                explanation: "Steaming white rice in electric cooker."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "두부김치 만들기",
                options: ["김치를 한입 크기로 썰어 팬에 들기름을 두르고 볶습니다", "두부를 끓는 물에 넣어 따뜻하게 데웁니다", "데운 두부를 먹기 좋은 크기로 썰어 접시 가장자리에 담습니다", "볶은 김치를 접시 중앙에 소복이 담아냅니다", "두부 위에 통깨를 뿌려 같이 곁들여 먹습니다"],
                correctAnswer: "김치를 한입 크기로 썰어 팬에 들기름을 두르고 볶습니다 | 두부를 끓는 물에 넣어 따뜻하게 데웁니다 | 데운 두부를 먹기 좋은 크기로 썰어 접시 가장자리에 담습니다 | 볶은 김치를 접시 중앙에 소복이 담아냅니다 | 두부 위에 통깨를 뿌려 같이 곁들여 먹습니다",
                explanation: "Making Tofu Kimchi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "미역국 끓이기",
                options: ["마른 미역을 물에 담가 20분간 불려 씻은 뒤 자릅니다", "냄비에 참기름을 두르고 소고기와 불린 미역을 볶습니다", "국간장을 넣고 고기가 익을 때까지 볶다가 물을 붓습니다", "강불로 끓이다가 끓어오르면 약불로 줄여 푹 끓입니다", "다진 마늘과 소금으로 마지막 간을 합니다"],
                correctAnswer: "마른 미역을 물에 담가 20분간 불려 씻은 뒤 자릅니다 | 냄비에 참기름을 두르고 소고기와 불린 미역을 볶습니다 | 국간장을 넣고 고기가 익을 때까지 볶다가 물을 붓습니다 | 강불로 끓이다가 끓어오르면 약불로 줄여 푹 끓입니다 | 다진 마늘과 소금으로 마지막 간을 합니다",
                explanation: "Cooking seaweed soup (Miyeok-guk)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "과일 샐러드 만들기",
                options: ["사과, 배, 바나나를 깨끗이 씻어 껍질을 벗깁니다", "과일을 한입 크기로 네모나게 썹니다", "큰 믹싱볼에 썬 과일들을 모아 담습니다", "마요네즈나 요거트 소스를 넣습니다", "숟가락으로 소스가 골고루 묻게 섞어 완성합니다"],
                correctAnswer: "사과, 배, 바나나를 깨끗이 씻어 껍질을 벗깁니다 | 과일을 한입 크기로 네모나게 썹니다 | 큰 믹싱볼에 썬 과일들을 모아 담습니다 | 마요네즈나 요거트 소스를 넣습니다 | 숟가락으로 소스가 골고루 묻게 섞어 완성합니다",
                explanation: "Mixing a fruit salad."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "믹스커피 타기",
                options: ["커피포트에 물을 넣고 끓입니다", "종이컵에 커피 믹스 봉지를 뜯어 넣습니다", "끓는 물을 종이컵의 반 정도만 붓습니다", "숟가락이나 믹스 봉지 뒤쪽으로 잘 저어 녹입니다", "뜨거울 때 천천히 마십니다"],
                correctAnswer: "커피포트에 물을 넣고 끓입니다 | 종이컵에 커피 믹스 봉지를 뜯어 넣습니다 | 끓는 물을 종이컵의 반 정도만 붓습니다 | 숟가락이나 믹스 봉지 뒤쪽으로 잘 저어 녹입니다 | 뜨거울 때 천천히 마십니다",
                explanation: "Preparing instant coffee."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "떡볶이 만들기",
                options: ["떡국 떡이나 떡볶이 떡을 물에 헹구어 건져둡니다", "냄비에 물, 고추장, 설탕, 간장을 넣고 끓입니다", "양념이 끓으면 준비한 떡과 어묵, 대파를 넣습니다", "떡에 양념이 밸 때까지 저어가며 졸입니다", "접시에 담고 깨를 뿌려 냅니다"],
                correctAnswer: "떡국 떡이나 떡볶이 떡을 물에 헹구어 건져둡니다 | 냄비에 물, 고추장, 설탕, 간장을 넣고 끓입니다 | 양념이 끓으면 준비한 떡과 어묵, 대파를 넣습니다 | 떡에 양념이 밸 때까지 저어가며 졸입니다 | 접시에 담고 깨를 뿌려 냅니다",
                explanation: "Cooking Tteokbokki."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "감자 삶기",
                options: ["감자를 흐르는 물에 깨끗이 씻어 흙을 없앱니다", "감자 필러로 껍질을 깎아냅니다", "냄비에 감자가 잠길 만큼 물을 붓고 소금과 설탕을 넣습니다", "뚜껑을 덮고 센 불로 끓이다가 약 불로 25분간 익힙니다", "젓가락으로 찔러 부드럽게 들어가면 불을 끄고 건져냅니다"],
                correctAnswer: "감자를 흐르는 물에 깨끗이 씻어 흙을 없앱니다 | 감자 필러로 껍질을 깎아냅니다 | 냄비에 감자가 잠길 만큼 물을 붓고 소금과 설탕을 넣습니다 | 뚜껑을 덮고 센 불로 끓이다가 약 불로 25분간 익힙니다 | 젓가락으로 찔러 부드럽게 들어가면 불을 끄고 건져냅니다",
                explanation: "Boiling potatoes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "냉만두국 끓이기 -> 떡만두국 끓이기",
                options: ["냄비에 사골 육수를 넣고 끓입니다", "육수가 끓으면 떡국 떡과 만두를 넣습니다", "국간장과 다진 마늘을 소량 넣어 간을 맞춥니다", "떡과 만두가 위로 떠오를 때까지 끓입니다", "그릇에 담아 계란 지단과 김가루를 올려 냅니다"],
                correctAnswer: "냄비에 사골 육수를 넣고 끓입니다 | 육수가 끓으면 떡국 떡과 만두를 넣습니다 | 국간장과 다진 마늘을 소량 넣어 간을 맞춥니다 | 떡과 만두가 위로 떠오를 때까지 끓입니다 | 그릇에 담아 계란 지단과 김가루를 올려 냅니다",
                explanation: "Cooking dumpling rice cake soup."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "군만두 굽기",
                options: ["프라이팬에 식용유를 한 큰술 두르고 약불로 예열합니다", "냉동 만두를 프라이팬 위에 겹치지 않게 올려놓습니다", "만두 바닥면이 노릇해질 때까지 2분간 구워줍니다", "물을 3큰술 붓고 바로 뚜껑을 덮어 찐 듯이 익힙니다", "수분이 완전히 날아가면 만두를 꺼내 접시에 담습니다"],
                correctAnswer: "프라이팬에 식용유를 한 큰술 두르고 약불로 예열합니다 | 냉동 만두를 프라이팬 위에 겹치지 않게 올려놓습니다 | 만두 바닥면이 노릇해질 때까지 2분간 구워줍니다 | 물을 3큰술 붓고 바로 뚜껑을 덮어 찐 듯이 익힙니다 | 수분이 완전히 날아가면 만두를 꺼내 접시에 담습니다",
                explanation: "Cooking pan-fried dumplings."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "시금치나물 무치기",
                options: ["시금치를 다듬어서 끓는 물에 소금을 넣고 30초간 데칩니다", "데친 시금치를 즉시 찬물에 헹궈 뜨거운 기운을 뺍니다", "양손으로 시금치의 물기를 꽉 짜냅니다", "볼에 시금치를 넣고 국간장, 다진 마늘, 참기름을 넣습니다", "조물조물 무친 후 접시에 담고 통깨를 뿌립니다"],
                correctAnswer: "시금치를 다듬어서 끓는 물에 소금을 넣고 30초간 데칩니다 | 데친 시금치를 즉시 찬물에 헹궈 뜨거운 기운을 뺍니다 | 양손으로 시금치의 물기를 꽉 짜냅니다 | 볼에 시금치를 넣고 국간장, 다진 마늘, 참기름을 넣습니다 | 조물조물 무친 후 접시에 담고 통깨를 뿌립니다",
                explanation: "Preparing seasoned spinach side dish."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "부추전 부치기",
                options: ["부추를 5cm 길이로 썰고 당근과 양파도 채 썹니다", "부침가루와 찬물을 1대 1 비율로 섞어 반죽을 만듭니다", "반죽에 준비한 채소를 넣고 잘 섞습니다", "달군 팬에 기름을 넉넉히 두르고 반죽을 얇게 폅니다", "앞뒤로 노릇하고 바삭하게 구워 간장과 함께 냅니다"],
                correctAnswer: "부추를 5cm 길이로 썰고 당근과 양파도 채 썹니다 | 부침가루와 찬물을 1대 1 비율로 섞어 반죽을 만듭니다 | 반죽에 준비한 채소를 넣고 잘 섞습니다 | 달군 팬에 기름을 넉넉히 두르고 반죽을 얇게 폅니다 | 앞뒤로 노릇하고 바삭하게 구워 간장과 함께 냅니다",
                explanation: "Frying a chive pancake."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "멸치볶음 만들기",
                options: ["마른 팬에 잔멸치를 넣고 약불에서 수분을 날리며 볶습니다", "볶은 멸치를 체에 쳐서 부스러기를 걸러냅니다", "팬에 식용유와 간장, 미림을 넣고 소스를 끓입니다", "불을 끄고 멸치와 올리고당을 넣어 빠르게 버무립니다", "통깨와 슬라이스 아몬드를 섞어 식혀줍니다"],
                correctAnswer: "마른 팬에 잔멸치를 넣고 약불에서 수분을 날리며 볶습니다 | 볶은 멸치를 체에 쳐서 부스러기를 걸러냅니다 | 팬에 식용유와 간장, 미림을 넣고 소스를 끓입니다 | 불을 끄고 멸치와 올리고당을 넣어 빠르게 버무립니다 | 통깨와 슬라이스 아몬드를 섞어 식혀줍니다",
                explanation: "Stir-frying anchovies."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "계란말이 만들기",
                options: ["그릇에 계란 4개를 깨 넣고 알끈을 풀어 섞습니다", "잘게 썬 파와 소금 한 꼬집을 넣고 잘 섞습니다", "예열한 사각 팬에 계란물을 얇게 깔아줍니다", "가장자리가 익으면 한쪽 방향으로 돌돌 말아줍니다", "남은 계란물을 이어 부어가며 두툼하게 만 뒤 썰어 냅니다"],
                correctAnswer: "그릇에 계란 4개를 깨 넣고 알끈을 풀어 섞습니다 | 잘게 썬 파와 소금 한 꼬집을 넣고 잘 섞습니다 | 예열한 사각 팬에 계란물을 얇게 깔아줍니다 | 가장자리가 익으면 한쪽 방향으로 돌돌 말아줍니다 | 남은 계란물을 이어 부어가며 두툼하게 만 뒤 썰어 냅니다",
                explanation: "Cooking rolled omelet."
            )
        ]
    )

    // MARK: - 일상생활 기술
    private static let dailySkills = Exercise(
        id: UUID(),
        title: "일상생활 기술",
        instructions: "각 작업에 대해 필요한 도구, 주요 과정, 발생할 수 있는 문제를 설명하십시오. '정답 보기'를 눌러 모범 답안을 확인하세요.",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "세탁기는 어떻게 작동합니까?",
                options: [],
                correctAnswer: "준비물: 세탁할 옷, 세탁 세제, 섬유유연제. 단계: 세탁물을 흰옷과 색깔 옷으로 분류합니다. 주머니를 확인합니다. 세탁기에 옷을 넣고 세제를 적당량 넣습니다. 물 온도를 설정하고 작동 버튼을 누릅니다. 종료 후 세탁물을 즉시 건조기에 넣거나 널어 말립니다.",
                explanation: "Laundry instructions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "병원 예약은 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 전화기, 보험 카드, 달력, 적을 메모지. 단계: 진료 시간 중에 병원에 전화를 겁니다. 본인의 이름, 생년월일, 보험 정보를 제공합니다. 진료를 원하는 이유(증상)를 설명합니다. 예약 날짜와 시간, 주소를 받아 적습니다. 주의: 보험 카드를 미리 준비하고 진료 전 주의사항이 있는지 물어보십시오.",
                explanation: "Medical appointment scheduling."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "이메일은 어떻게 보냅니까?",
                options: [],
                correctAnswer: "준비물: 컴퓨터나 스마트폰, 상대방 이메일 주소. 단계: 메일 앱을 엽니다. ‘편지 쓰기’를 탭합니다. 받는 사람의 주소를 입력합니다. 제목과 본문 메시지를 입력합니다. 검토 후 ‘전송’ 버튼을 누릅니다. 주의: ‘전체 회신’을 실수로 누르거나 본문에서 언급한 첨부파일을 누락하지 않도록 조심하십시오.",
                explanation: "Sending an email."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "약병에 붙은 라벨은 어떻게 읽습니까?",
                options: [],
                correctAnswer: "확인 사항: 약 이름, 복용량(한 번에 몇 알), 하루 복용 횟수, 식사 전후 등 특별 지침, 만료일. 경고 문구를 주의 깊게 읽습니다. 주의: 밀리그램(mg)과 밀리리터(ml) 단위를 혼동하지 마십시오.",
                explanation: "Reading medication labels."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "편지를 우편으로 보내려면 어떻게 준비합니까?",
                options: [],
                correctAnswer: "준비물: 편지지, 봉투, 우표. 단계: 편지를 삼등분으로 접어 봉투에 넣고 풀로 붙입니다. 봉투 중앙에 받는 사람 주소를 적고, 왼쪽 위에 보낸 사람 주소를 적습니다. 오른쪽 위에 우표를 붙이고 우체통에 넣습니다. 주의: 주소 적는 위치를 바꾸거나 우표를 누락하지 않도록 하십시오.",
                explanation: "Mailing a letter."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "부엌 쓰레기통을 비우고 새 봉투로 교체하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 새 쓰레기봉투. 단계: 꽉 찬 쓰레기봉투 입구를 단단히 묶습니다. 봉투를 꺼내 차고나 야외에 있는 큰 쓰레기 수거통으로 가져갑니다. 부엌 쓰레기통 내부를 확인한 후 새 봉투를 넣고 모서리를 고정합니다.",
                explanation: "Replacing trash bags."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한식당에 전화로 음식을 투고(테이크아웃) 주문하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 식당 메뉴판, 전화기, 결제 카드. 단계: 전화하기 전 메뉴를 결정합니다. 식당 번호를 누르고 음식을 픽업 주문하겠다고 말합니다. 메뉴와 수량을 명확히 말합니다. 이름과 전화번호를 제공하고, 음식 준비 시간과 총 금액을 확인합니다.",
                explanation: "Ordering takeout over phone."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "설거지를 손으로 하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 수세미, 식기세제, 따뜻한 물, 식기 건조대. 단계: 음식 찌꺼기를 쓰레기통에 비웁니다. 그릇을 물로 가볍게 헹굽니다. 젖은 수세미에 세제를 짜서 거품을 낸 뒤 그릇을 닦습니다. 흐르는 깨끗한 물로 헹구어 건조대에 얹습니다.",
                explanation: "Handwashing dishes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "카페트에 쏟은 액체 얼룩을 청소하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 종이 타월(키친타월) 또는 깨끗한 마른 천, 따뜻한 물, 카페트 세제. 단계: 액체가 넓게 번지지 않도록 문지르지 말고 꾹꾹 눌러 액체를 흡수시킵니다. 세제를 살짝 뿌리고 다시 천으로 두드려 닦아냅니다. 완전히 말립니다.",
                explanation: "Cleaning carpet spills."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아침에 일어나 침대를 정리하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "단계: 베개를 치워둡니다. 침대 매트리스 커버를 팽팽하게 늘여 정리합니다. 이불을 위로 쭉 끌어올려 대칭이 맞도록 평평하게 폅니다. 먼지를 턴 베개를 이불 머리맡 쪽에 정돈하여 올립니다.",
                explanation: "Making a bed."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "대중교통 카드를 기계에서 충전하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 교통 카드, 현금 또는 신용카드. 단계: 지하철역 충전기 앞으로 갑니다. 교통 카드를 지정된 리더기 위에 올려놓습니다. 화면에서 충전(Top-up) 금액을 선택합니다. 카드나 현금을 투입구에 넣습니다. 화면에 충전 완료가 뜰 때까지 기다린 후 카드를 회수합니다.",
                explanation: "Recharging transit card."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "실내 화초에 물을 올바르게 주려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 물뿌리개, 실온의 물. 단계: 손가락으로 흙을 1인치 깊이로 만져보아 말랐는지 확인합니다. 마른 상태라면 흙 위에 천천히 물을 부어줍니다. 화분 받침대로 흘러나온 고인 물은 버려 뿌리가 썩지 않게 합니다.",
                explanation: "Watering house plants."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "올바른 칫솔질은 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 칫솔, 치약, 물, 치실. 단계: 칫솔모에 치약을 완두콩 크기만큼 짭니다. 이 안쪽, 바깥쪽, 씹는 면을 빗질하듯 원을 그리며 2분 동안 구석구석 닦습니다. 물로 입안을 깨끗이 헹궈냅니다.",
                explanation: "Brushing teeth."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "집안의 거울과 창문을 깨끗이 청소하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 유리 세정제(Windex), 극세사 천 또는 신문지. 단계: 거울이나 유리창 표면에 세정제를 골고루 분사합니다. 극세사 천으로 위에서 아래로 원을 그리거나 S자 모양으로 닦아 물기를 없앱니다.",
                explanation: "Cleaning windows."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "캘리포니아 DMV 웹사이트에서 운전면허 갱신 예약을 하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 인터넷 연결 스마트폰/컴퓨터, 개인 정보. 단계: DMV 웹사이트에 접속합니다. 예약(Appointments) 섹션으로 이동합니다. 갱신 업무를 선택하고 개인정보를 입력합니다. 장소와 날짜, 시간대를 고르고 예약 번호를 캡처하거나 메모합니다.",
                explanation: "Scheduling a DMV appointment."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한인 마트(H 마트 등)에 장을 보러 가기 전에 쇼핑 리스트를 어떻게 작성합니까?",
                options: [],
                correctAnswer: "준비물: 메모지나 휴대폰 메모장. 단계: 냉장고와 펜트리를 열어 확인합니다. 쌀, 고추장, 간장, 김치, 라면 등 기본 식재료 중 바닥을 보이는 것을 적습니다. 이번 주 반찬에 필요한 두부, 콩나물, 파 등 신선 재료를 추가합니다.",
                explanation: "Making a grocery shopping list."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "설날이나 추석 같은 전통 명절을 맞이하여 집안에 손님 맞이 준비를 하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "단계: 거실과 다이닝룸을 깨끗이 청소합니다. 손님들이 신을 실내화를 현관에 정돈합니다. 떡국이나 갈비찜 같은 명절 음식을 미리 준비합니다. 식후에 대접할 과일과 수정과, 혹은 따뜻한 차를 마련해 둡니다.",
                explanation: "Preparing for guests."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아파트 분리수거를 하려면 어떻게 해야 합니까?",
                options: [],
                correctAnswer: "단계: 집안에서 쓰레기를 일반 쓰레기, 재활용품(종이, 플라스틱, 캔)으로 나눕니다. 플라스틱 병이나 캔은 내용물을 씻고 라벨을 떼어 압착합니다. 아파트 분리수거장에 가서 지정된 재활용 빈(Bin)에 각각 넣습니다.",
                explanation: "Apartment recycling."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "전등이 수명을 다해 불이 켜지지 않을 때 새 전구로 교체하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "준비물: 새 전구, 사다리나 의자. 단계: 가장 먼저 방의 전등 스위치를 끕니다. 전구가 식을 때까지 몇 분 기다립니다. 낡은 전구를 시계 반대 방향으로 돌려 빼냅니다. 새 전구를 소켓에 넣고 시계 방향으로 돌려 고정합니다. 스위치를 켜서 확인합니다.",
                explanation: "Replacing a light bulb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "우편함에 쌓인 우편물들을 매일 정리하려면 어떻게 합니까?",
                options: [],
                correctAnswer: "단계: 우편함 열쇠로 우편물을 수거합니다. 중요한 우편물(전기세 고지서, 세금 문서, 병원 안내장)과 광고지를 분류합니다. 중요 우편물은 즉시 뜯어서 마감일을 달력에 적고 보관합니다. 쓸모없는 광고지는 재활용 통에 버립니다.",
                explanation: "Sorting daily mail."
            )
        ]
    )

    // MARK: - 공간 지각력
    private static let spatialAwareness = Exercise(
        id: UUID(),
        title: "공간 지각력",
        instructions: "방향 및 공간적 위치와 관련된 물음에 답하십시오.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "식료품점에서 고추장 통이 된장 통 바로 위에 놓여 있습니다. 고추장 통을 찾으려면 어디를 보아야 합니까?",
                options: ["된장 통 아래", "된장 통 위", "된장 통 뒤", "냉장고 안"],
                correctAnswer: "된장 통 위",
                explanation: "“바로 위” means directly above."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "운전 중에 내비게이션에서 “다음 교차로에서 우회전하십시오”라는 음성이 나옵니다. 어느 방향으로 핸들을 꺾어야 합니까?",
                options: ["왼쪽 (좌회전)", "오른쪽 (우회전)", "직진", "유턴"],
                correctAnswer: "오른쪽 (우회전)",
                explanation: "GPS command is to turn right (우회전)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "찬장에서 컵들이 접시들의 오른쪽에 놓여 있습니다. 그렇다면 접시들은 컵들의 어느 쪽에 있습니까?",
                options: ["컵들의 왼쪽", "컵들의 아래쪽", "컵들의 위쪽", "찬장 바깥쪽"],
                correctAnswer: "컵들의 왼쪽",
                explanation: "If cups are to the right of plates, plates are to the left of cups."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "소파에 앉아 있을 때 TV 리모컨이 오른쪽에 놓인 탁자 위에 있습니다. 어느 손으로 집는 것이 가장 편합니까?",
                options: ["왼손", "오른손", "양손", "발"],
                correctAnswer: "오른손",
                explanation: "Objects on your right side are easiest to reach with your right hand."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "자동차 열쇠를 현관 앞 콘솔 위에 놓인 바구니 안에 넣었습니다. 열쇠는 지금 어디에 있습니까?",
                options: ["바구니 아래", "바구니 옆", "바구니 안", "문 뒤"],
                correctAnswer: "바구니 안",
                explanation: "“바구니 안” means inside the basket."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "침대 머리맡 바로 벽 위에 액자가 걸려 있습니다. 침대는 액자를 기준으로 어디에 있습니까?",
                options: ["액자 위", "액자 아래", "액자 옆", "거실"],
                correctAnswer: "액자 아래",
                explanation: "If picture is above bed, bed is below the picture."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "옷장 서랍장에서 무거운 겨울 이불은 쏠림 방지를 위해 맨 아래 서랍에 넣어둡니다. 이불을 찾으려면 어디를 열어야 합니까?",
                options: ["맨 위 서랍", "맨 아래 서랍", "가운데 서랍", "옷장 뒤"],
                correctAnswer: "맨 아래 서랍",
                explanation: "Lowest drawer corresponds to the bottom drawer."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "은행이나 우체국 바닥에 노란색 선이 있고, 표지판에 “노란 선 뒤에서 대기해 주십시오”라고 적혀 있습니다. 어디에 서 있어야 합니까?",
                options: ["노란 선 위", "노란 선 앞(창구 쪽)", "노란 선 뒤(창구 반대 방향)", "출입구 밖"],
                correctAnswer: "노란 선 뒤(창구 반대 방향)",
                explanation: "Standing behind a line means staying behind it, not crossing it."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "동쪽을 바라보고 서 있는 상태에서 180도 몸을 돌려 회전했습니다. 이제 어느 방향을 바라보고 있습니까?",
                options: ["북쪽", "남쪽", "동쪽", "서쪽"],
                correctAnswer: "서쪽",
                explanation: "Rotating 180 degrees turns you to the opposite direction (West/서쪽)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "현관문 바로 바깥에 발판(도어매트)을 깔아 두었습니다. 집 안으로 발을 들이기 직전에 밟아야 하는 곳은 어디입니까?",
                options: ["발판 위", "거실 맨바닥", "마당 잔디밭", "부엌 타일"],
                correctAnswer: "발판 위",
                explanation: "You step on the doormat outside."
            )
        ]
    )

    // MARK: - 시간 지각력
    private static let temporalAwareness = Exercise(
        id: UUID(),
        title: "시간 지각력",
        instructions: "시간, 기간, 날짜와 관련된 질문에 알맞은 답을 선택하십시오.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "오늘이 수요일이라면, 어제는 무슨 요일이었습니까?",
                options: ["월요일", "화요일", "목요일", "금요일"],
                correctAnswer: "화요일",
                explanation: "Tuesday (화요일) precedes Wednesday."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오늘이 금요일이고, 의사 예약이 모레라면 예약일은 무슨 요일입니까?",
                options: ["토요일", "일요일", "월요일", "화요일"],
                correctAnswer: "일요일",
                explanation: "Friday + 2 days = Sunday (일요일)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "달력의 한 해 중에서 가장 첫 번째 달은 몇 월입니까?",
                options: ["1월", "2월", "12월", "3월"],
                correctAnswer: "1월",
                explanation: "January (1월) is the first month."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아침 알람이 7:00 AM에 울리도록 설정되어 있는데, 당신이 6:45 AM에 눈을 떴습니다. 알람이 울리기 전입니까, 후입니까?",
                options: ["알람 울리기 전", "알람 울린 후", "정각", "오후"],
                correctAnswer: "알람 울리기 전",
                explanation: "6:45 AM is before 7:00 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "현재 시간이 오후 2:50이고, 버스가 오후 3:00에 출발한다면 버스를 타기까지 남은 시간은 몇 분입니까?",
                options: ["5분", "10분", "15분", "20분"],
                correctAnswer: "10분",
                explanation: "2:50 to 3:00 is 10 minutes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사계절 중 봄이 지난 후 찾아오는 계절은 무엇입니까?",
                options: ["가을", "여름", "겨울", "우기"],
                correctAnswer: "여름",
                explanation: "Summer (여름) follows Spring."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "약을 12시간마다 복용하라는 지시를 받았습니다. 하루에 총 몇 번 복용해야 합니까?",
                options: ["1번", "2번", "3번", "4번"],
                correctAnswer: "2번",
                explanation: "24 divided by 12 is 2."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "시청하는 드라마가 오후 8:00에 시작하여 30분간 방영됩니다. 끝나는 시간은 몇 시입니까?",
                options: ["오후 8:15", "오후 8:30", "오후 8:45", "오후 9:00"],
                correctAnswer: "오후 8:30",
                explanation: "8:00 PM + 30 minutes = 8:30 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "올해가 2026년이라면, 내년은 몇 년도입니까?",
                options: ["2025년", "2026년", "2027년", "2028년"],
                correctAnswer: "2027년",
                explanation: "2026 + 1 = 2027."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오전 9:00에 약을 복용했고 다음 약은 4시간 뒤에 먹어야 합니다. 다음 복용 시간은 몇 시입니까?",
                options: ["오후 12:00 (정오)", "오후 1:00", "오후 2:00", "오후 3:00"],
                correctAnswer: "오후 1:00",
                explanation: "9:00 AM + 4 hours = 1:00 PM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "9월 바로 이전에 오는 달은 몇 월입니까?",
                options: ["7월", "8월", "10월", "11월"],
                correctAnswer: "8월",
                explanation: "August (8월) precedes September."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오늘이 이번 달 15일이고, 아파트 렌트비 납부 마감일이 30일입니다. 렌트비를 내기까지 대략 몇 주가 남았습니까?",
                options: ["약 1주일", "약 2주일", "약 3주일", "약 4주일"],
                correctAnswer: "약 2주일",
                explanation: "15 days is approximately 2 weeks."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "병원 예약 시간이 오전 11:30입니다. 차로 병원까지 가는 데 45분이 걸린다면, 늦어도 몇 시에는 집에서 출발해야 합니까?",
                options: ["오전 10:30", "오전 10:45", "오전 11:00", "오전 11:15"],
                correctAnswer: "오전 10:45",
                explanation: "11:30 AM minus 45 minutes is 10:45 AM."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한 해의 가장 마지막 달은 몇 월입니까?",
                options: ["1월", "11월", "12월", "10월"],
                correctAnswer: "12월",
                explanation: "December is the final month."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "오늘이 일요일이라면, 3일 뒤는 무슨 요일입니까?",
                options: ["화요일", "수요일", "목요일", "금요일"],
                correctAnswer: "수요일",
                explanation: "Sunday + 3 days (Monday, Tuesday, Wednesday)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "국을 끓이기 시작한 시간이 오후 4:15이고 완전히 익히는 데 20분이 필요하다면, 몇 시에 국을 가스레인지에서 내려야 합니까?",
                options: ["오후 4:30", "오후 4:35", "오후 4:40", "오후 4:45"],
                correctAnswer: "오후 4:35",
                explanation: "4:15 + 20 minutes = 4:35 PM."
            )
        ]
    )

    // MARK: - 식료품 쇼핑 - 최상의 가치
    private static let functionalMathGroceryShopping = Exercise(
        id: UUID(),
        title: "식료품 쇼핑 - 최상의 가치",
        instructions: "각 항목마다 돈의 가격 가치 측면에서 가장 유리한 옵션을 선택하십시오.",
        section: .functionalSkills,
        type: .comparison,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "화장지 가격 비교: A) 4롤에 $2.00 (롤당 $0.50) B) 6롤에 $2.70 (롤당 $0.45). 어느 쪽이 더 저렴합니까?",
                options: ["옵션 A — 4롤에 $2.00", "옵션 B — 6롤에 $2.70"],
                correctAnswer: "옵션 B — 6롤에 $2.70",
                explanation: "$0.45 per roll is cheaper than $0.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "달걀 가격 비교: A) 6개들이 $2.50 (개당 $0.42) B) 12개들이 $4.00 (개당 $0.33). 어느 쪽이 가성비가 좋습니까?",
                options: ["옵션 A — 6개들이 $2.50", "옵션 B — 12개들이 $4.00"],
                correctAnswer: "옵션 B — 12개들이 $4.00",
                explanation: "$0.33 per egg is cheaper than $0.42."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "식빵 가격 비교: A) 유명 대기업 식빵 $3.50 B) 마트 자체 브랜드(Store Brand) 식빵 $1.99. 성분이 같을 때 저렴한 식빵은 무엇입니까?",
                options: ["옵션 A — 유명 브랜드 $3.50", "옵션 B — 자체 브랜드 $1.99"],
                correctAnswer: "옵션 B — 자체 브랜드 $1.99",
                explanation: "Lower cost for a comparable product."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "우유 가격 비교: A) 하프 갤런(Half-gallon) $2.00 B) 1 갤런(Full Gallon) $2.50. 유통기한 내에 다 마실 수 있을 때 가성비가 좋은 쪽은 어디입니까?",
                options: ["옵션 A — 하프 갤런 $2.00", "옵션 B — 1 갤런 $2.50"],
                correctAnswer: "옵션 B — 1 갤런 $2.50",
                explanation: "Buying a full gallon for $2.50 is much cheaper per ounce than two half gallons (which would cost $4.00)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "사과 가격 비교: A) 낱개 사과 파운드당 $1.89 B) 3파운드 묶음 봉지당 $4.50 (파운드당 $1.50). 어느 쪽이 파운드당 가격이 저렴합니까?",
                options: ["옵션 A — 낱개 파운드당 $1.89", "옵션 B — 3파운드 봉지 $4.50"],
                correctAnswer: "옵션 B — 3파운드 봉지 $4.50",
                explanation: "$1.50 per lb is cheaper than $1.89 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "파스타 면 가격 비교: A) 1파운드 상자당 $2.00 B) 2파운드 대용량 봉지당 $3.00 (파운드당 $1.50). 어느 쪽이 더 저렴합니까?",
                options: ["옵션 A — 1파운드 상자 $2.00", "옵션 B — 2파운드 봉지 $3.00"],
                correctAnswer: "옵션 B — 2파운드 봉지 $3.00",
                explanation: "$1.50 per lb is cheaper than $2.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "닭고기 가격 비교: A) 냉동 2파운드 봉지 $5.00 (파운드당 $2.50) B) 생닭 1파운드당 $3.99. 파운드당 단가가 저렴한 쪽은 어디입니까?",
                options: ["옵션 A — 냉동 2파운드 $5.00", "옵션 B — 생닭 1파운드 $3.99"],
                correctAnswer: "옵션 A — 냉동 2파운드 $5.00",
                explanation: "$2.50 per lb is cheaper than $3.99."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "쌀 가격 비교: A) 2파운드 소형 봉지 $2.40 (파운드당 $1.20) B) 10파운드 포대 쌀 $9.00 (파운드당 $0.90). 어느 쪽이 더 가성비가 좋습니까?",
                options: ["옵션 A — 2파운드 봉지 $2.40", "옵션 B — 10파운드 포대 $9.00"],
                correctAnswer: "옵션 B — 10파운드 포대 $9.00",
                explanation: "$0.90 per pound is cheaper than $1.20."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한인 마트에서 두부 가격 비교: A) 1모 개별 구매 시 $1.50 B) 4모 패키지 묶음 구매 시 $4.80 (모당 $1.20). 가성비가 높은 쪽은 어디입니까?",
                options: ["옵션 A — 1모 개별 $1.50", "옵션 B — 4모 패키지 $4.80"],
                correctAnswer: "옵션 B — 4모 패키지 $4.80",
                explanation: "$1.20 per tub of tofu is cheaper than $1.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "인스턴트 라면 멀티팩 가격 비교: A) 낱개 라면 1봉지 $1.20 B) 5봉지 들이 멀티팩 $5.00 (봉지당 $1.00). 어느 쪽이 더 저렴합니까?",
                options: ["옵션 A — 낱개 라면 $1.20", "옵션 B — 5봉지 멀티팩 $5.00"],
                correctAnswer: "옵션 B — 5봉지 멀티팩 $5.00",
                explanation: "$1.00 per pack in the multipack is cheaper than $1.20."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "생수 가격 비교: A) 500ml 낱개 생수 $1.00 B) 24개 묶음 팩 $4.80 (병당 $0.20). 어느 쪽이 병당 가격이 저렴합니까?",
                options: ["옵션 A — 낱개 생수 $1.00", "옵션 B — 24개 묶음 팩 $4.80"],
                correctAnswer: "옵션 B — 24개 묶음 팩 $4.80",
                explanation: "$0.20 per bottle is much cheaper than $1.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "세탁 세제 가격 비교: A) 소형 세제 $4.99 B) 대용량 패밀리 사이즈 $12.99 (용량이 소형의 3배). 대용량을 다 쓸 수 있을 때 가성비가 좋은 쪽은 무엇입니까?",
                options: ["옵션 A — 소형 세제 $4.99", "옵션 B — 패밀리 사이즈 $12.99"],
                correctAnswer: "옵션 B — 패밀리 사이즈 $12.99",
                explanation: "The family size is $12.99 but provides three times the volume of the $4.99 bottle (which would cost $14.97)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "요거트 가격 비교: A) 4개 세트 $3.00 (개당 $0.75) B) 8개 세트 $5.60 (개당 $0.70). 어느 쪽이 개당 가격이 더 저렴합니까?",
                options: ["옵션 A — 4개 세트 $3.00", "옵션 B — 8개 세트 $5.60"],
                correctAnswer: "옵션 B — 8개 세트 $5.60",
                explanation: "$0.70 per cup is cheaper than $0.75."
            )
        ]
    )

    // MARK: - 실용 수학 및 쓰기
    private static let functionalMathAndWriting = Exercise(
        id: UUID(),
        title: "실용 수학 및 쓰기",
        instructions: "각 질문에 알맞은 답을 고르십시오.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "우유 한 팩을 $3.50에, 단팥빵 하나를 $1.50에 샀습니다. $10.00 지폐로 계산을 했다면 얼마의 거스름돈을 받아야 합니까?",
                options: ["$4.00", "$5.00", "$6.00", "$7.00"],
                correctAnswer: "$5.00",
                explanation: "Total is $3.50 + $1.50 = $5.00. Change is $10.00 - $5.00 = $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "한식당에서 설렁탕을 먹고 나온 총금액 $20.00에 대해 15%의 팁을 현금으로 주려고 합니다. 팁은 얼마입니까?",
                options: ["$2.00", "$2.50", "$3.00", "$4.00"],
                correctAnswer: "$3.00",
                explanation: "15% of $20 is $3.00 (0.15 * 20 = 3)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "매달 내야 하는 스마트폰 요금이 $45.00입니다. 체크(수표)로 $50.00를 보냈다면, 통장에 얼마의 초과 크레딧이 적립됩니까?",
                options: ["$5.00", "$10.00", "$15.00", "없음"],
                correctAnswer: "$5.00",
                explanation: "$50.00 - $45.00 = $5.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "처방약을 조제하는데 보험 처리를 받아 한 달 치에 $12.00를 내야 합니다. 총 3달 치를 한 번에 결제한다면 얼마를 내야 합니까?",
                options: ["$24.00", "$30.00", "$36.00", "$48.00"],
                correctAnswer: "$36.00",
                explanation: "3 * $12.00 = $36.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "버스 1회 이용권은 $1.75입니다. 10회 승차권을 묶어서 $15.00에 구매한다면, 개별로 10번 사는 것보다 총 얼마를 절약할 수 있습니까?",
                options: ["$1.50", "$2.50", "$3.00", "$5.00"],
                correctAnswer: "$2.50",
                explanation: "10 individual trips cost $17.50. The pass is $15.00, saving $2.50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "마트에서 파운드당 $0.60인 양파를 3파운드 샀습니다. 계산할 금액은 총 얼마입니까?",
                options: ["$1.20", "$1.50", "$1.80", "$2.00"],
                correctAnswer: "$1.80",
                explanation: "3 * $0.60 = $1.80."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "고추장 한 통의 정가는 $8.00이지만 계산 시 “$2.00 즉시 할인” 쿠폰이 적용됩니다. 결제할 최종 가격은 얼마입니까?",
                options: ["$5.00", "$6.00", "$7.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "$8.00 minus $2.00 is $6.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "붕어빵 한 개 $2.75와 식혜 한 잔 $1.25를 샀습니다. 총 결제 금액은 얼마입니까?",
                options: ["$3.50", "$3.75", "$4.00", "$4.25"],
                correctAnswer: "$4.00",
                explanation: "$2.75 + $1.25 = $4.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "손녀 지수의 대학교 입학 선물로 줄 $25.00 상당의 스타벅스 기프트 카드를 구매하고 $50.00 지폐를 냈습니다. 거스름돈은 얼마입니까?",
                options: ["$15.00", "$20.00", "$25.00", "$30.00"],
                correctAnswer: "$25.00",
                explanation: "$50.00 - $25.00 = $25.00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "LA 한인타운 코리아타운 플라자 공영주차장 주차 요금은 시간당 $2.00입니다. 3시간 동안 주차했다면 총 주차 요금은 얼마입니까?",
                options: ["$4.00", "$5.00", "$6.00", "$8.00"],
                correctAnswer: "$6.00",
                explanation: "3 hours * $2.00 = $6.00."
            )
        ]
    )

    // MARK: - 실용적인 쓰기 과제
    private static let functionalWritingTasks = Exercise(
        id: UUID(),
        title: "실용적인 쓰기 과제",
        instructions: "각 상황에 맞는 글을 작성해 보세요. '정답 보기'를 눌러 모범 답안을 확인하십시오.",
        section: .functionalSkills,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "부재중인 4일 동안 나의 반려견 순돌이를 돌봐줄 이웃집 도현 씨에게 식사와 산책 규칙을 설명하는 메모를 한글로 간단히 작성하십시오.",
                options: [],
                correctAnswer: "도현 씨, 순돌이를 돌봐주셔서 정말 감사합니다. 사료는 매일 아침과 저녁에 각각 한 컵씩 밥그릇에 주시면 됩니다. 물은 매일 깨끗한 물로 갈아주세요. 산책은 오후에 동네 한 바퀴만 돌려주시면 됩니다. 무슨 일이 생기면 바로 제 휴대폰으로 연락 주세요. 감사합니다. — [본인 이름]",
                explanation: "Writing a functional pet-sitting instruction note."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "아파트 관리인 스미스 씨에게 내 욕실 천장에 물이 새고 있음을 알리고 수리를 요청하는 서면 노트를 작성하십시오.",
                options: [],
                correctAnswer: "스미스 씨께, 제 아파트 302호 욕실 천장에서 이틀 전부터 물이 조금씩 새고 있습니다. 위층 물이 새어 나오는 것 같고 천장에 얼룩이 생기고 있습니다. 빠른 수리를 부탁드립니다. 제 연락처는 555-987-6543입니다. 감사합니다. — [본인 이름]",
                explanation: "Standard request note to landlord for apartment repairs."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "친구에게 몸이 안 좋아서 내일 저녁 약속을 취소하고 일정을 미뤄야 한다는 양해를 구하는 짧은 문자 메시지를 작성하십시오.",
                options: [],
                correctAnswer: "미안해, 내가 오늘부터 감기 몸살 기운이 심해서 내일 약속은 아무래도 무리일 것 같아. 너한테 감기 옮길까 봐 걱정되기도 하네. 미안하지만 우리 약속 다음 주로 미룰 수 있을까? 몸 나아지면 다시 연락할게!",
                explanation: "Polite rescheduling text message."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "외출하면서 집에 남아 있는 가족에게 내가 어디에 가고 몇 시까지 올 것인지를 알려주는 쪽지를 식탁에 남겨 두십시오.",
                options: [],
                correctAnswer: "엄마, 저 장 보러 한남체인에 다녀올게요. 필요한 물건들 사서 오후 2시 전에는 돌아올게요. 식탁 위에 간식 있으니 출출하시면 먼저 드세요. 금방 올게요!",
                explanation: "Quick message for family members before leaving."
            )
        ]
    )
}


