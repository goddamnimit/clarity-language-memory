import Foundation

struct VietnameseCognitionExerciseData {

    static let allExercises: [Exercise] = [
        figurativeLanguageIdioms,
        storyRecall,
        numberSequences,
        causeAndEffect,
        whatsWrongHere,
        yesNoQuestions,
        analogies,
        emotions
    ]

    // MARK: - Thành ngữ và tục ngữ
    private static let figurativeLanguageIdioms = Exercise(
        id: UUID(),
        title: "Thành ngữ và tục ngữ",
        instructions: "Chọn ý nghĩa chính xác nhất của thành ngữ đã cho.",
        section: .cognition,
        type: .openEnded,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Ruột để ngoài da” là gì?",
                options: [],
                correctAnswer: "Ruột để ngoài da là người bộc trực, không giữ bí mật",
                explanation: "Bộc trực, có gì nói nấy, não nếp nhăn ít."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Trứng chọi với đá” là gì?",
                options: [],
                correctAnswer: "Kẻ yếu đối đầu với kẻ mạnh quá chênh lệch",
                explanation: "Hành động vô vọng của kẻ yếu khi đối mặt với thế lực quá mạnh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Thượng lộ bình an” là gì?",
                options: [],
                correctAnswer: "Chúc chuyến đi đi lại an toàn, suôn sẻ",
                explanation: "Lời chúc an lành dành cho người sắp đi xa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Nhẹ như lông hồng” là gì?",
                options: [],
                correctAnswer: "Rất nhẹ nhàng, không đáng kể hoặc coi thường cái chết",
                explanation: "Xem nhẹ khó khăn hoặc cái chết vì nghĩa lớn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Như nước với lửa” là gì?",
                options: [],
                correctAnswer: "Khắc khẩu, không thể hòa hợp",
                explanation: "Sự mâu thuẫn sâu sắc, xung khắc không thể dung hòa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Nuôi ong tay áo” là gì?",
                options: [],
                correctAnswer: "Nuôi dưỡng kẻ phản bội mình sau này",
                explanation: "Chăm sóc, giúp đỡ kẻ vong ơn bội nghĩa để rồi bị hại."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Khẩu phật tâm xà” là gì?",
                options: [],
                correctAnswer: "Lời nói từ bi nhưng lòng dạ hiểm độc",
                explanation: "Miệng nói lời tốt đẹp nhân từ nhưng lòng dạ ác độc nham hiểm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Chọn mặt gửi vàng” là gì?",
                options: [],
                correctAnswer: "Tin tưởng giao phó việc quan trọng cho người uy tín",
                explanation: "Lựa chọn người có đủ độ tin cậy để nhờ vả, giao phó trách nhiệm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Kiến bò miệng chén” là gì?",
                options: [],
                correctAnswer: "Luẩn quẩn không có lối thoát",
                explanation: "Trạng thái bế tắc, luẩn quẩn trong khó khăn không tìm thấy lối ra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Đắt như tôm tươi” là gì?",
                options: [],
                correctAnswer: "Bán rất chạy, được nhiều người mua nhanh chóng",
                explanation: "Hàng hóa bán rất nhanh và được ưa chuộng nhiệt tình."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Đi guốc trong bụng” là gì?",
                options: [],
                correctAnswer: "Hiểu rõ suy nghĩ, ý đồ của người khác",
                explanation: "Biết tỏng suy nghĩ, âm mưu của đối phương trước khi họ nói ra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Nước đổ đầu vịt” là gì?",
                options: [],
                correctAnswer: "Không chịu tiếp thu lời khuyên bảo",
                explanation: "Sự bướng bỉnh, khuyên răn mãi nhưng không chịu nghe hoặc không đọng lại được gì."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Bắt cá hai tay” là gì?",
                options: [],
                correctAnswer: "Cố gắng làm hai việc hoặc yêu hai người cùng lúc để trục lợi",
                explanation: "Tham lam, muốn ôm đồm lợi ích từ nhiều phía cùng một lúc."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Mèo khen mèo dài đuôi” là gì?",
                options: [],
                correctAnswer: "Tự khen ngợi bản thân hoặc người thân của mình",
                explanation: "Tự cao tự đại, tự tâng bốc bản thân hoặc người nhà mình quá mức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Vắt cổ chày ra nước” là gì?",
                options: [],
                correctAnswer: "Cực kỳ keo kiệt, bủn xỉn",
                explanation: "Tính cách hà tiện, keo kiệt tới mức phi lý."
            )
        ]
    )

    // MARK: - Nhớ lại câu chuyện
    private static let storyRecall = Exercise(
        id: UUID(),
        title: "Nhớ lại câu chuyện",
        instructions: "Đọc kỹ câu chuyện ngắn sau đây rồi trả lời câu hỏi.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì?", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì?", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì?", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ?", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào?", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bác Tư ra vườn sau nhà hái mồng tơi để nấu canh tôm cho bữa tối. Bác Tư hái rau gì?", options: ["Mồng tơi", "Rau đắng", "Cải bẹ xanh", "Rau muống"], correctAnswer: "Mồng tơi", explanation: "Bác Tư hái rau mồng tơi để nấu canh."),
            ExerciseItem(id: UUID(), prompt: "Anh Tuấn lái xe trên xa lộ 405 đến chỗ làm nhưng bị kẹt xe hơn một tiếng đồng hồ. Anh Tuấn đi trên xa lộ nào?", options: ["Xa lộ 405", "Xa lộ 22", "Xa lộ 5", "Xa lộ 55"], correctAnswer: "Xa lộ 405", explanation: "Anh Tuấn lái xe trên xa lộ 405."),
            ExerciseItem(id: UUID(), prompt: "Cô Liên ghé quán Lee's Sandwiches mua một ly cà phê sữa đá trước khi đi làm. Cô Liên mua thức uống gì?", options: ["Cà phê sữa đá", "Nước cam", "Trà sữa", "Sữa đậu nành"], correctAnswer: "Cà phê sữa đá", explanation: "Cô Liên mua cà phê sữa đá."),
            ExerciseItem(id: UUID(), prompt: "Ông Thành đưa cháu nội đi bác sĩ ở bệnh viện Fountain Valley để chích ngừa. Ông Thành đưa cháu đi đâu?", options: ["Bệnh viện Fountain Valley", "Bệnh viện Chợ Rẫy", "Khu thương xá", "Trường học"], correctAnswer: "Bệnh viện Fountain Valley", explanation: "Ông Thành đưa cháu đi bệnh viện Fountain Valley."),
            ExerciseItem(id: UUID(), prompt: "Chị Trâm rủ bạn bè đi ăn lẩu dê ở Garden Grove vào tối Chủ Nhật. Chị Trâm đi ăn món gì?", options: ["Lẩu dê", "Phở bò", "Bún chả", "Cơm tấm"], correctAnswer: "Lẩu dê", explanation: "Chị Trâm đi ăn lẩu dê."),
            ExerciseItem(id: UUID(), prompt: "Bác gái đang xem chương trình Paris By Night trên tivi trong phòng khách. Bác gái đang xem gì?", options: ["Paris By Night", "Tin tức", "Phim bộ Hàn Quốc", "Cải lương"], correctAnswer: "Paris By Night", explanation: "Bác gái đang xem chương trình Paris By Night."),
            ExerciseItem(id: UUID(), prompt: "Vào ngày Tết, gia đình anh Minh đi chùa Huệ Quang để hái lộc đầu năm. Gia đình anh Minh đi đâu?", options: ["Chùa Huệ Quang", "Nhà thờ Thánh Linh", "Chùa Diệu Pháp", "Siêu thị"], correctAnswer: "Chùa Huệ Quang", explanation: "Gia đình anh Minh đi chùa Huệ Quang."),
            ExerciseItem(id: UUID(), prompt: "Cậu Tuấn chạy bộ mỗi buổi sáng ở công viên Mile Square Park để tập thể dục. Cậu Tuấn chạy bộ ở đâu?", options: ["Mile Square Park", "Bãi biển Huntington", "Công viên Disney", "Quanh xóm"], correctAnswer: "Mile Square Park", explanation: "Cậu Tuấn chạy bộ ở công viên Mile Square Park."),
            ExerciseItem(id: UUID(), prompt: "Dì Ba làm bánh xèo miền Tây đãi cả nhà vào dịp cuối tuần. Dì Ba làm món gì?", options: ["Bánh xèo", "Bánh cuốn", "Bánh chưng", "Bánh bèo"], correctAnswer: "Bánh xèo", explanation: "Dì Ba làm bánh xèo."),
            ExerciseItem(id: UUID(), prompt: "Ông Hùng ra tiệm thuốc tây CVS mua thuốc giảm đau lưng. Ông Hùng mua gì?", options: ["Thuốc giảm đau", "Thuốc nhỏ mắt", "Băng cá nhân", "Vitamin C"], correctAnswer: "Thuốc giảm đau", explanation: "Ông Hùng mua thuốc giảm đau lưng."),
            ExerciseItem(id: UUID(), prompt: "Bé Nga đi học tại trường tiểu học Susan B. Anthony ở thành phố Westminster. Bé Nga đi học ở đâu?", options: ["Trường tiểu học", "Trường trung học", "Nhà trẻ", "Trường đại học"], correctAnswer: "Trường tiểu học", explanation: "Bé Nga đi học trường tiểu học."),
            ExerciseItem(id: UUID(), prompt: "Chị Thủy đi siêu thị Costco mua hai chai nước mắm hiệu Ba Con Cua. Chị Thủy mua hiệu nước mắm nào?", options: ["Ba Con Cua", "Phú Quốc", "Việt Hương", "Hồng Hạnh"], correctAnswer: "Ba Con Cua", explanation: "Chị Thủy mua nước mắm hiệu Ba Con Cua."),
            ExerciseItem(id: UUID(), prompt: "Anh Tín gọi thợ đến sửa máy lạnh vì trời California đang quá nóng. Anh Tín sửa cái gì?", options: ["Máy lạnh", "Máy giặt", "Tủ lạnh", "Quạt trần"], correctAnswer: "Máy lạnh", explanation: "Anh Tín gọi thợ sửa máy lạnh."),
            ExerciseItem(id: UUID(), prompt: "Bà Nội đang ngồi ngoài hiên lặt rau muống để xào tỏi. Bà Nội đang làm gì?", options: ["Lặt rau", "Rửa chén", "Quét nhà", "Tưới cây"], correctAnswer: "Lặt rau", explanation: "Bà Nội đang lặt rau muống."),
            ExerciseItem(id: UUID(), prompt: "Cả nhà chú Bình đi dự đám cưới ở nhà hàng Seafood World vào tối thứ Bảy. Cả nhà đi dự tiệc gì?", options: ["Đám cưới", "Sinh nhật", "Đầy tháng", "Tân gia"], correctAnswer: "Đám cưới", explanation: "Nhà chú Bình đi dự tiệc đám cưới."),
            ExerciseItem(id: UUID(), prompt: "Cô Hạnh lái xe xuống San Diego thăm con gái đang học đại học. Cô Hạnh đi thăm ai?", options: ["Con gái", "Con trai", "Bạn thân", "Em gái"], correctAnswer: "Con gái", explanation: "Cô Hạnh đi thăm con gái."),
            ExerciseItem(id: UUID(), prompt: "Anh Dũng mang xe ra tiệm sửa xe trên đường Brookhurst để thay nhớt. Anh Dũng làm gì cho xe?", options: ["Thay nhớt", "Bơm bánh xe", "Rửa xe", "Thay kính"], correctAnswer: "Thay nhớt", explanation: "Anh Dũng mang xe đi thay nhớt."),
            ExerciseItem(id: UUID(), prompt: "Bác Tám gửi hai thùng quà về Việt Nam cho bà con ăn Tết. Bác Tám gửi bao nhiêu thùng quà?", options: ["Hai thùng", "Một thùng", "Ba thùng", "Năm thùng"], correctAnswer: "Hai thùng", explanation: "Bác Tám gửi hai thùng quà."),
            ExerciseItem(id: UUID(), prompt: "Chị Oanh mua vé máy bay để đi du lịch Hawaii vào tháng sau. Chị Oanh sắp đi du lịch ở đâu?", options: ["Hawaii", "Las Vegas", "Châu Âu", "Nhật Bản"], correctAnswer: "Hawaii", explanation: "Chị Oanh mua vé đi du lịch Hawaii."),
            ExerciseItem(id: UUID(), prompt: "Chú Cường ra ngân hàng Bank of America rút tiền mặt để lì xì năm mới. Chú Cường rút tiền để làm gì?", options: ["Lì xì", "Trả tiền nhà", "Đi chợ", "Đổ xăng"], correctAnswer: "Lì xì", explanation: "Chú Cường rút tiền để lì xì năm mới."),
            ExerciseItem(id: UUID(), prompt: "Bà ngoại hầm nồi canh khổ qua nhồi thịt ăn cho mát người. Bà ngoại nấu món gì?", options: ["Canh khổ qua", "Canh chua", "Canh bí đỏ", "Canh cải"], correctAnswer: "Canh khổ qua", explanation: "Bà ngoại nấu canh khổ qua nhồi thịt."),
            ExerciseItem(id: UUID(), prompt: "Cô Loan nhờ con trai chở ra tiệm vàng trên đường Bolsa để mua dây chuyền. Cô Loan đi mua gì?", options: ["Dây chuyền", "Đồng hồ", "Lắc tay", "Nhẫn kim cương"], correctAnswer: "Dây chuyền", explanation: "Cô Loan đi mua dây chuyền."),
            ExerciseItem(id: UUID(), prompt: "Anh Khoa dắt chó đi dạo dọc theo bãi biển Huntington lúc hoàng hôn. Anh Khoa dắt chó đi đâu?", options: ["Bãi biển", "Công viên", "Xung quanh xóm", "Khu mua sắm"], correctAnswer: "Bãi biển", explanation: "Anh Khoa dắt chó đi dạo bãi biển."),
            ExerciseItem(id: UUID(), prompt: "Chị Dung mở tiệm làm móng tay (nail) ở thành phố Santa Ana. Tiệm của chị Dung làm về dịch vụ gì?", options: ["Móng tay", "Cắt tóc", "Bán quần áo", "Spa mát xa"], correctAnswer: "Móng tay", explanation: "Chị Dung mở tiệm làm móng tay (nail)."),
            ExerciseItem(id: UUID(), prompt: "Bác Lâm đeo kính lão để đọc báo Người Việt buổi sáng. Bác Lâm đọc tờ báo nào?", options: ["Người Việt", "Viễn Đông", "Tuổi Trẻ", "Thanh Niên"], correctAnswer: "Người Việt", explanation: "Bác Lâm đọc báo Người Việt."),
            ExerciseItem(id: UUID(), prompt: "Cô Thảo rang đậu phộng để rắc lên món gỏi ngó sen. Cô Thảo rang cái gì?", options: ["Đậu phộng", "Mè trắng", "Hạt điều", "Hạnh nhân"], correctAnswer: "Đậu phộng", explanation: "Cô Thảo rang đậu phộng."),
            ExerciseItem(id: UUID(), prompt: "Anh Tài ra bưu điện gửi lá thư bằng thư bảo đảm (certified mail) cho luật sư. Anh Tài gửi thư bằng cách nào?", options: ["Thư bảo đảm", "Thư thường", "Gửi hỏa tốc", "Gửi qua email"], correctAnswer: "Thư bảo đảm", explanation: "Anh Tài gửi thư bảo đảm."),
            ExerciseItem(id: UUID(), prompt: "Bà Phượng luộc hột vịt lộn và ăn kèm với rau răm và muối tiêu. Bà Phượng ăn trứng với rau gì?", options: ["Rau răm", "Húng quế", "Ngò gai", "Hành lá"], correctAnswer: "Rau răm", explanation: "Bà Phượng ăn hột vịt lộn với rau răm."),
            ExerciseItem(id: UUID(), prompt: "Chú Hoàng dùng xẻng đào đất để trồng cây bơ mỡ sau vườn. Chú Hoàng trồng cây gì?", options: ["Cây bơ mỡ", "Cây xoài", "Cây chanh", "Cây cam"], correctAnswer: "Cây bơ mỡ", explanation: "Chú Hoàng trồng cây bơ mỡ."),
            ExerciseItem(id: UUID(), prompt: "Em Trí đang ngồi làm bài tập toán ở thư viện thành phố. Em Trí làm bài tập môn gì?", options: ["Môn toán", "Môn tiếng Việt", "Môn lịch sử", "Môn hóa học"], correctAnswer: "Môn toán", explanation: "Em Trí đang làm bài tập toán.")
        ]
    )

    // MARK: - Hoàn thành câu (Dễ)
    private static let numberSequences = Exercise(
        id: UUID(),
        title: "Dãy số logic",
        instructions: "Tìm số tiếp theo trong dãy số logic sau.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "10, 20, 30, 40, ___", options: ["50", "60", "70", "80"], correctAnswer: "50", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "20, 30, 40, 50, ___", options: ["60", "70", "80", "90"], correctAnswer: "60", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "30, 40, 50, 60, ___", options: ["70", "80", "90", "100"], correctAnswer: "70", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "40, 50, 60, 70, ___", options: ["80", "90", "100", "110"], correctAnswer: "80", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "50, 60, 70, 80, ___", options: ["90", "100", "110", "120"], correctAnswer: "90", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "60, 70, 80, 90, ___", options: ["100", "110", "120", "130"], correctAnswer: "100", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "70, 80, 90, 100, ___", options: ["110", "120", "130", "140"], correctAnswer: "110", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "80, 90, 100, 110, ___", options: ["120", "130", "140", "150"], correctAnswer: "120", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "90, 100, 110, 120, ___", options: ["130", "140", "150", "160"], correctAnswer: "130", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "100, 110, 120, 130, ___", options: ["140", "150", "160", "170"], correctAnswer: "140", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "110, 120, 130, 140, ___", options: ["150", "160", "170", "180"], correctAnswer: "150", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "120, 130, 140, 150, ___", options: ["160", "170", "180", "190"], correctAnswer: "160", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "130, 140, 150, 160, ___", options: ["170", "180", "190", "200"], correctAnswer: "170", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "140, 150, 160, 170, ___", options: ["180", "190", "200", "210"], correctAnswer: "180", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "150, 160, 170, 180, ___", options: ["190", "200", "210", "220"], correctAnswer: "190", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "160, 170, 180, 190, ___", options: ["200", "210", "220", "230"], correctAnswer: "200", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "170, 180, 190, 200, ___", options: ["210", "220", "230", "240"], correctAnswer: "210", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "180, 190, 200, 210, ___", options: ["220", "230", "240", "250"], correctAnswer: "220", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "190, 200, 210, 220, ___", options: ["230", "240", "250", "260"], correctAnswer: "230", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp."),
            ExerciseItem(id: UUID(), prompt: "200, 210, 220, 230, ___", options: ["240", "250", "260", "270"], correctAnswer: "240", explanation: "Quy luật cộng thêm 10 vào mỗi số kế tiếp.")
        ]
    )

    // MARK: - Nguyên nhân và Kết quả
    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "Nguyên nhân và Kết quả",
        instructions: "Chọn kết quả hợp lý nhất cho tình huống được mô tả.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bạn quên đổ xăng cho xe hơi. Kết quả là gì?", options: ["Xe không thể chạy", "Xe chạy nhanh hơn", "Xe đổi màu", "Xe tự động rửa"], correctAnswer: "Xe không thể chạy", explanation: "Không có xăng xe không thể hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Trời mưa to và bạn không mang dù (ô). Kết quả là gì?", options: ["Bạn bị ướt", "Bạn bị cháy nắng", "Bạn khô ráo", "Bạn đi nhanh hơn"], correctAnswer: "Bạn bị ướt", explanation: "Trời mưa không che dù sẽ bị ướt."),
            ExerciseItem(id: UUID(), prompt: "Bạn để kem ngoài nắng Bolsa lúc trưa. Kết quả là gì?", options: ["Kem bị chảy ra", "Kem đông cứng hơn", "Kem đổi vị", "Kem biến mất"], correctAnswer: "Kem bị chảy ra", explanation: "Nhiệt độ cao làm kem chảy."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắm phích điện của quạt. Kết quả là gì?", options: ["Quạt quay và thổi gió", "Quạt bị hỏng", "Quạt đổi màu", "Quạt phát ra tiếng nhạc"], correctAnswer: "Quạt quay và thổi gió", explanation: "Có điện quạt sẽ hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Bạn không tưới nước cho cây cảnh ở sân Westminster. Kết quả là gì?", options: ["Cây bị héo và chết", "Cây phát triển nhanh", "Cây nở nhiều hoa", "Cây đổi màu xanh"], correctAnswer: "Cây bị héo và chết", explanation: "Thiếu nước cây sẽ héo."),
            ExerciseItem(id: UUID(), prompt: "Bạn để quên nồi nước đang sôi trên bếp và đi ngủ. Kết quả là gì?", options: ["Nước cạn và nồi bị cháy", "Nước biến thành đá", "Bếp tự động tắt lửa", "Nồi tự động đầy nước"], correctAnswer: "Nước cạn và nồi bị cháy", explanation: "Nước sôi liên tục sẽ bốc hơi hết và làm cháy nồi."),
            ExerciseItem(id: UUID(), prompt: "Bạn làm rớt chiếc điện thoại iPhone từ trên cao xuống nền gạch cứng. Kết quả là gì?", options: ["Màn hình có thể bị vỡ", "Điện thoại sạc đầy pin", "Điện thoại bay lên", "Điện thoại thu nhỏ lại"], correctAnswer: "Màn hình có thể bị vỡ", explanation: "Rơi mạnh xuống nền cứng sẽ làm vỡ màn hình điện thoại."),
            ExerciseItem(id: UUID(), prompt: "Bạn cúp cầu dao điện trong nhà để sửa ổ cắm. Kết quả là gì?", options: ["Trong nhà bị mất điện", "Đèn sáng rực hơn", "Tivi tự bật lên", "Máy lạnh chạy mạnh hơn"], correctAnswer: "Trong nhà bị mất điện", explanation: "Cúp cầu dao sẽ ngắt dòng điện trong nhà."),
            ExerciseItem(id: UUID(), prompt: "Bạn thức khuya uống ba ly cà phê đen. Kết quả là gì?", options: ["Bạn sẽ khó ngủ", "Bạn buồn ngủ ngay lập tức", "Bạn thấy lạnh", "Bạn đói bụng"], correctAnswer: "Bạn sẽ khó ngủ", explanation: "Caffein trong cà phê làm mất ngủ."),
            ExerciseItem(id: UUID(), prompt: "Bạn bóp thắng (phanh) xe thật mạnh khi đang lái nhanh. Kết quả là gì?", options: ["Xe dừng lại gấp", "Xe bay lên không trung", "Xe chạy nhanh hơn", "Xe đổi màu sơn"], correctAnswer: "Xe dừng lại gấp", explanation: "Thắng xe có tác dụng giảm tốc độ hoặc dừng xe."),
            ExerciseItem(id: UUID(), prompt: "Bạn quên bỏ muối vào nồi canh khi đang nấu ăn. Kết quả là gì?", options: ["Canh sẽ bị nhạt", "Canh sẽ rất mặn", "Canh sẽ có vị đắng", "Canh sẽ đặc lại"], correctAnswer: "Canh sẽ bị nhạt", explanation: "Thiếu muối thì thức ăn sẽ không mặn đặm đà."),
            ExerciseItem(id: UUID(), prompt: "Bạn bước ra đường giữa trưa nắng gắt mà không đội nón. Kết quả là gì?", options: ["Bạn có thể bị say nắng", "Bạn sẽ bị cảm lạnh", "Tóc bạn sẽ ướt sũng", "Bạn sẽ đi nhanh hơn"], correctAnswer: "Bạn có thể bị say nắng", explanation: "Nắng gắt chiếu vào đầu lâu có thể gây say nắng."),
            ExerciseItem(id: UUID(), prompt: "Bạn để ly nước đá trên bàn trong phòng khách nhiệt độ bình thường. Kết quả là gì?", options: ["Đá trong ly tan ra", "Nước trong ly sôi lên", "Ly tự động bể", "Đá đông cứng thêm"], correctAnswer: "Đá trong ly tan ra", explanation: "Đá lạnh sẽ tan khi ở nhiệt độ phòng."),
            ExerciseItem(id: UUID(), prompt: "Bạn bấm nhầm nút xóa (delete) tập tin quan trọng trên máy tính. Kết quả là gì?", options: ["Tập tin biến mất", "Máy tính phát nhạc", "Máy tính tự động in", "Tập tin nhân đôi"], correctAnswer: "Tập tin biến mất", explanation: "Lệnh xóa sẽ làm mất đi dữ liệu."),
            ExerciseItem(id: UUID(), prompt: "Trời gió bão rất mạnh và bạn không đóng cửa sổ. Kết quả là gì?", options: ["Gió thổi đồ đạc bay tung tóe", "Phòng trở nên ấm áp", "Nhà cửa yên tĩnh", "Trời hửng nắng"], correctAnswer: "Gió thổi đồ đạc bay tung tóe", explanation: "Gió mạnh thổi vào phòng sẽ làm bay đồ đạc."),
            ExerciseItem(id: UUID(), prompt: "Bạn bỏ xà phòng giặt vào máy giặt và bấm nút khởi động. Kết quả là gì?", options: ["Máy giặt xả nước và quay", "Máy phát ra tiếng nhạc pop", "Máy làm đông đá quần áo", "Máy tự động nấu ăn"], correctAnswer: "Máy giặt xả nước và quay", explanation: "Khởi động máy giặt sẽ làm máy bắt đầu chu trình giặt."),
            ExerciseItem(id: UUID(), prompt: "Bạn không sạc pin điện thoại trong hai ngày liền. Kết quả là gì?", options: ["Điện thoại hết pin và tắt nguồn", "Điện thoại tự động đầy pin", "Điện thoại chụp hình đẹp hơn", "Điện thoại biến thành máy tính"], correctAnswer: "Điện thoại hết pin và tắt nguồn", explanation: "Điện thoại cần sạc pin để duy trì hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắt hành tây mà đưa mắt sát vào củ hành. Kết quả là gì?", options: ["Mắt bạn sẽ bị cay và chảy nước", "Mắt bạn nhìn sáng hơn", "Mũi bạn bị điếc", "Bạn sẽ buồn cười"], correctAnswer: "Mắt bạn sẽ bị cay và chảy nước", explanation: "Tinh dầu hành tây làm cay mắt."),
            ExerciseItem(id: UUID(), prompt: "Bạn quên đổ rác trong bếp suốt một tuần lễ. Kết quả là gì?", options: ["Rác bốc mùi hôi thối", "Rác biến thành hoa thơm", "Rác tự biến mất", "Nhà bếp sạch sẽ hơn"], correctAnswer: "Rác bốc mùi hôi thối", explanation: "Rác để lâu ngày sẽ phân hủy và bốc mùi."),
            ExerciseItem(id: UUID(), prompt: "Bạn ăn quá nhiều ớt cay trong tô bún bò. Kết quả là gì?", options: ["Miệng bị cay xé và phồng rộp", "Bạn thấy lạnh cóng", "Bạn ngủ ngon hơn", "Bạn hết đói ngay"], correctAnswer: "Miệng bị cay xé và phồng rộp", explanation: "Ớt có tính nóng và cay."),
            ExerciseItem(id: UUID(), prompt: "Bạn mang giày cao gót đi bộ leo núi đất đá lởm chởm. Kết quả là gì?", options: ["Bạn dễ bị trật chân và đau gót", "Bạn leo núi nhanh hơn", "Giày tự biến thành bốt", "Chân bạn thoải mái hơn"], correctAnswer: "Bạn dễ bị trật chân và đau gót", explanation: "Giày cao gót không thích hợp để đi địa hình gồ ghề."),
            ExerciseItem(id: UUID(), prompt: "Trời đổ tuyết dày đặc và đường bị đóng băng. Kết quả là gì?", options: ["Đường rất trơn trượt", "Đường dễ lái xe hơn", "Đường bốc hơi nóng", "Hoa nở rộ trên đường"], correctAnswer: "Đường rất trơn trượt", explanation: "Băng tuyết làm mất độ ma sát của mặt đường."),
            ExerciseItem(id: UUID(), prompt: "Bạn kéo rèm che kín cửa sổ vào ban ngày. Kết quả là gì?", options: ["Trong phòng tối hơn", "Trời bên ngoài mưa", "Trong phòng sáng rực", "Nhiệt độ giảm xuống 0 độ"], correctAnswer: "Trong phòng tối hơn", explanation: "Rèm che ánh sáng mặt trời chiếu vào phòng."),
            ExerciseItem(id: UUID(), prompt: "Bạn quẹt một que diêm và ném vào đống giấy vụn khô. Kết quả là gì?", options: ["Giấy bắt lửa và bốc cháy", "Giấy bị ướt sũng", "Giấy đóng băng", "Que diêm nở hoa"], correctAnswer: "Giấy bắt lửa và bốc cháy", explanation: "Giấy khô rất dễ bắt lửa từ diêm."),
            ExerciseItem(id: UUID(), prompt: "Bạn để chậu cây lan ngoài trời sương giá âm độ C. Kết quả là gì?", options: ["Cây bị cóng và chết héo", "Cây nở hoa to hơn", "Cây mọc trái cây", "Cây chuyển sang màu vàng kim"], correctAnswer: "Cây bị cóng và chết héo", explanation: "Cây lan không chịu được nhiệt độ băng giá."),
            ExerciseItem(id: UUID(), prompt: "Bạn mở vòi nước tắm sang bên màu đỏ (bên nóng) hết cỡ. Kết quả là gì?", options: ["Nước chảy ra rất nóng", "Nước chảy ra đóng băng", "Vòi nước phát sáng", "Nước có vị ngọt"], correctAnswer: "Nước chảy ra rất nóng", explanation: "Bên vòi đỏ là đường dẫn nước nóng."),
            ExerciseItem(id: UUID(), prompt: "Bạn quên đóng cửa tủ lạnh từ đêm qua tới sáng. Kết quả là gì?", options: ["Thức ăn bị hư hỏng và tốn điện", "Tủ lạnh tạo ra nhiều đá hơn", "Tủ lạnh biến thành tủ quần áo", "Tủ lạnh tự nấu ăn"], correctAnswer: "Thức ăn bị hư hỏng và tốn điện", explanation: "Khí lạnh thoát ra ngoài làm mất nhiệt độ bảo quản thức ăn."),
            ExerciseItem(id: UUID(), prompt: "Bạn thổi một luồng hơi mạnh vào ngọn nến đang cháy. Kết quả là gì?", options: ["Ngọn nến bị tắt", "Ngọn nến cháy to hơn", "Ngọn nến đổi màu xanh", "Cây nến bay lên"], correctAnswer: "Ngọn nến bị tắt", explanation: "Luồng gió mạnh thổi tắt ngọn lửa."),
            ExerciseItem(id: UUID(), prompt: "Bạn giẫm phải một vũng bùn lầy bằng đôi giày trắng mới mua. Kết quả là gì?", options: ["Đôi giày bị lấm lem bùn đất", "Đôi giày tự giặt sạch", "Bùn lầy biến mất", "Đôi giày chuyển thành màu đỏ"], correctAnswer: "Đôi giày bị lấm lem bùn đất", explanation: "Bùn bám vào làm dơ bề mặt đôi giày."),
            ExerciseItem(id: UUID(), prompt: "Bạn đổ nước sôi vào một chiếc ly thủy tinh mỏng đang lạnh. Kết quả là gì?", options: ["Ly có thể bị nứt vỡ", "Ly tự động to ra", "Nước lập tức đóng băng", "Ly đổi màu"], correctAnswer: "Ly có thể bị nứt vỡ", explanation: "Thay đổi nhiệt độ đột ngột làm thủy tinh giãn nở không đều và nứt vỡ."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắm chìa khóa sai vào ổ khóa nhà và cố vặn mạnh. Kết quả là gì?", options: ["Chìa khóa có thể bị gãy", "Cửa tự động mở", "Ổ khóa phát nhạc", "Cửa nhà biến mất"], correctAnswer: "Chìa khóa có thể bị gãy", explanation: "Lực vặn mạnh với chìa sai khớp sẽ làm gãy chìa."),
            ExerciseItem(id: UUID(), prompt: "Bạn bôi kem chống nắng bảo vệ da trước khi đi biển. Kết quả là gì?", options: ["Da ít bị cháy nắng hơn", "Da đen nhẻm ngay lập tức", "Da phát sáng trong đêm", "Trời bỗng nhiên đổ mưa"], correctAnswer: "Da ít bị cháy nắng hơn", explanation: "Kem chống nắng bảo vệ da khỏi tia UV."),
            ExerciseItem(id: UUID(), prompt: "Bạn uống nhiều nước ngọt có ga và ăn kẹo mỗi tối mà không đánh răng. Kết quả là gì?", options: ["Răng dễ bị sâu", "Răng mọc dài ra", "Răng trở nên trắng sáng", "Răng tự rụng sạch trong một đêm"], correctAnswer: "Răng dễ bị sâu", explanation: "Đường trong bánh kẹo tạo môi trường cho vi khuẩn gây sâu răng."),
            ExerciseItem(id: UUID(), prompt: "Bạn xịt thuốc diệt muỗi quanh phòng đóng kín cửa. Kết quả là gì?", options: ["Muỗi trong phòng sẽ chết", "Muỗi bay nhanh hơn", "Muỗi lớn gấp đôi", "Hoa trong phòng nở rộ"], correctAnswer: "Muỗi trong phòng sẽ chết", explanation: "Thuốc trừ sâu độc hại đối với côn trùng."),
            ExerciseItem(id: UUID(), prompt: "Bạn dùng kéo cắt đứt dây điện của tivi khi nó đang cắm vào ổ. Kết quả là gì?", options: ["Bạn có thể bị điện giật", "Tivi nét hơn", "Kéo trở nên sắc bén", "Dây điện tự nối lại"], correctAnswer: "Bạn có thể bị điện giật", explanation: "Cắt vào dòng điện đang chạy qua kim loại có thể gây giật điện.")
        ]
    )

    // MARK: - Có gì sai ở đây?
    private static let whatsWrongHere = Exercise(
        id: UUID(),
        title: "Có gì sai ở đây?",
        instructions: "Tìm điểm bất hợp lý hoặc không thể xảy ra trong câu văn.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Cá voi xanh bay lượn trên bầu trời Westminster vào buổi trưa nắng ấm.", options: ["Cá voi không biết bay", "Bầu trời không có nắng", "Không có buổi trưa", "Westminster không có bầu trời"], correctAnswer: "Cá voi không biết bay", explanation: "Cá voi sống dưới nước và không biết bay."),
            ExerciseItem(id: UUID(), prompt: "Ông nội đun nước sôi bằng một khay đá lạnh.", options: ["Đá lạnh không thể đun sôi nước", "Nước sôi không nóng", "Ông nội không đun nước", "Khay đá không có hình chữ nhật"], correctAnswer: "Đá lạnh không thể đun sôi nước", explanation: "Đá lạnh tỏa nhiệt độ thấp, không thể đun sôi nước."),
            ExerciseItem(id: UUID(), prompt: "Chiếc xe hơi đang chạy bình thường mà không cần bánh xe.", options: ["Xe hơi chạy cần bánh xe", "Xe hơi không cần xăng", "Xe chạy trên nước", "Xe không có kính chắn gió"], correctAnswer: "Xe hơi chạy cần bánh xe", explanation: "Bánh xe là bộ phận bắt buộc để xe hơi di chuyển."),
            ExerciseItem(id: UUID(), prompt: "Chị Lan viết thư bằng một quả chuối chín màu vàng.", options: ["Quả chuối không thể viết chữ", "Quả chuối không có màu vàng", "Thư viết bằng tiếng Anh", "Chị Lan không biết viết"], correctAnswer: "Quả chuối không thể viết chữ", explanation: "Chuối không chứa mực hay ngòi viết để viết chữ."),
            ExerciseItem(id: UUID(), prompt: "Tôi nghe thấy tiếng còi tàu hỏa vang lên từ giữa lòng đại dương.", options: ["Tàu hỏa chạy trên đường ray đất liền", "Đại dương không có nước", "Tàu hỏa chạy bằng nước biển", "Còi tàu hỏa không phát ra âm thanh"], correctAnswer: "Tàu hỏa chạy trên đường ray đất liền", explanation: "Tàu hỏa không hoạt động giữa đại dương."),
            ExerciseItem(id: UUID(), prompt: "Con chó hàng xóm bay lượn trên ngọn cây cao để bắt chim.", options: ["Chó không biết bay", "Hàng xóm không có chó", "Cây cao không có ngọn", "Chim không bay"], correctAnswer: "Chó không biết bay", explanation: "Chó là động vật trên cạn, không có cánh để bay lượn."),
            ExerciseItem(id: UUID(), prompt: "Tôi dùng một chiếc đũa gỗ để gọi điện thoại cho mẹ tôi ở Việt Nam.", options: ["Đũa gỗ không phải là điện thoại", "Việt Nam không có điện thoại", "Mẹ tôi không biết nghe máy", "Đũa gỗ có phím bấm"], correctAnswer: "Đũa gỗ không phải là điện thoại", explanation: "Đũa gỗ chỉ dùng để gắp thức ăn, không dùng để liên lạc."),
            ExerciseItem(id: UUID(), prompt: "Bác Minh lái chiếc thuyền nan chạy băng băng trên xa lộ đông đúc xe hơi.", options: ["Thuyền nan di chuyển trên nước, không phải trên xa lộ", "Thuyền nan chạy bằng xăng", "Xa lộ không có xe hơi", "Thuyền nan có bốn bánh"], correctAnswer: "Thuyền nan di chuyển trên nước, không phải trên xa lộ", explanation: "Thuyền là phương tiện giao thông đường thủy."),
            ExerciseItem(id: UUID(), prompt: "Trời đang đổ mưa to nên chị Lan cầm một cái rây bột để che cho khỏi ướt đầu.", options: ["Rây bột có lỗ thủng không thể che mưa", "Trời mưa không làm ướt đầu", "Rây bột làm bằng nhựa", "Chị Lan không sợ mưa"], correctAnswer: "Rây bột có lỗ thủng không thể che mưa", explanation: "Rây bột có nhiều lỗ lưới nhỏ sẽ để nước chảy qua."),
            ExerciseItem(id: UUID(), prompt: "Ông Tư múc nước mắm đổ vào bình xăng để chiếc xe máy nổ máy.", options: ["Nước mắm không dùng làm nhiên liệu cho động cơ", "Xe máy không có bình xăng", "Ông Tư không có xe", "Nước mắm có màu đen"], correctAnswer: "Nước mắm không dùng làm nhiên liệu cho động cơ", explanation: "Xe máy chạy bằng xăng, đổ nước mắm vào sẽ làm hỏng động cơ."),
            ExerciseItem(id: UUID(), prompt: "Để làm mát căn phòng trong mùa hè nắng nóng, anh Tài đốt một đống lửa lớn ở giữa nhà.", options: ["Lửa tỏa nhiệt nóng, không làm mát", "Phòng không có mùa hè", "Lửa có màu xanh", "Anh Tài không biết đốt lửa"], correctAnswer: "Lửa tỏa nhiệt nóng, không làm mát", explanation: "Lửa tạo ra sức nóng, làm căn phòng nóng thêm."),
            ExerciseItem(id: UUID(), prompt: "Bé Nga cắt miếng thịt bò dai bằng một tờ giấy báo mỏng manh.", options: ["Giấy báo không sắc bén để cắt thịt", "Thịt bò không thể ăn", "Bé Nga không thích thịt", "Tờ giấy báo làm bằng sắt"], correctAnswer: "Giấy báo không sắc bén để cắt thịt", explanation: "Cần dao bằng kim loại để cắt thực phẩm dai."),
            ExerciseItem(id: UUID(), prompt: "Chú Cường trồng một cái ghế nhựa xuống đất và tưới nước chờ nó ra trái.", options: ["Ghế nhựa là đồ vật vô tri, không thể mọc trái", "Chú Cường tưới nước sai cách", "Đất không có chất dinh dưỡng", "Ghế nhựa mọc ra lá"], correctAnswer: "Ghế nhựa là đồ vật vô tri, không thể mọc trái", explanation: "Chỉ có thực vật sinh học mới có thể trồng và ra trái."),
            ExerciseItem(id: UUID(), prompt: "Tôi bỏ con cá vàng vào lồng chim và ném một nắm hạt dưa cho nó ăn.", options: ["Cá sống dưới nước, không sống trong lồng chim", "Cá vàng thích ăn kẹo", "Lồng chim chứa nước", "Hạt dưa làm bằng nhựa"], correctAnswer: "Cá sống dưới nước, không sống trong lồng chim", explanation: "Cá sẽ chết nếu không ở trong môi trường nước."),
            ExerciseItem(id: UUID(), prompt: "Bà ngoại dùng búa tạ để nhẹ nhàng chải mái tóc bạc mỗi sáng.", options: ["Búa tạ dùng để đóng đinh, không để chải tóc", "Bà ngoại không có tóc bạc", "Búa tạ làm bằng nhựa", "Chải tóc vào buổi tối"], correctAnswer: "Búa tạ dùng để đóng đinh, không để chải tóc", explanation: "Lược mới là công cụ dùng để chải tóc."),
            ExerciseItem(id: UUID(), prompt: "Anh Thành đeo một cặp kính râm đen tuyền để nhìn rõ hơn trong căn hầm tối không có ánh đèn.", options: ["Kính râm làm giảm ánh sáng, khiến khó nhìn hơn trong bóng tối", "Căn hầm có ánh sáng mặt trời", "Anh Thành bị mù", "Kính râm có đèn pin"], correctAnswer: "Kính râm làm giảm ánh sáng, khiến khó nhìn hơn trong bóng tối", explanation: "Kính râm chỉ dùng để che ánh nắng chói ban ngày."),
            ExerciseItem(id: UUID(), prompt: "Bác Hai xây bức tường gạch bằng cách dùng bọt xà phòng thay cho xi măng.", options: ["Bọt xà phòng không kết dính được gạch", "Bức tường không cần xi măng", "Gạch làm bằng giấy", "Bác Hai xây bằng gỗ"], correctAnswer: "Bọt xà phòng không kết dính được gạch", explanation: "Xà phòng chỉ là bọt bong bóng, không có tác dụng kết dính như hồ vữa."),
            ExerciseItem(id: UUID(), prompt: "Vào ban đêm, mặt trời chiếu sáng chói chang làm chúng tôi phải nheo mắt.", options: ["Mặt trời không xuất hiện vào ban đêm", "Chúng tôi không có mắt", "Mặt trời chiếu sáng màu xanh", "Ban đêm có nhiệt độ nóng"], correctAnswer: "Mặt trời không xuất hiện vào ban đêm", explanation: "Ban đêm là lúc mặt trời lặn."),
            ExerciseItem(id: UUID(), prompt: "Cô giáo viết bảng đen bằng một cục nước đá đang tan chảy.", options: ["Nước đá không phải phấn, không tạo ra nét chữ trắng trên bảng", "Bảng đen làm bằng kính", "Nước đá không bao giờ tan", "Cô giáo không biết viết"], correctAnswer: "Nước đá không phải phấn, không tạo ra nét chữ trắng trên bảng", explanation: "Nước đá chỉ làm ướt bảng chứ không viết được chữ."),
            ExerciseItem(id: UUID(), prompt: "Người thợ may may áo dài cưới bằng cách dùng đinh sắt đóng các mảnh vải lại với nhau.", options: ["Đinh sắt dùng trong mộc, không dùng để may vải", "Áo dài cưới bằng gỗ", "Thợ may làm việc bằng búa", "Vải không thể đứt"], correctAnswer: "Đinh sắt dùng trong mộc, không dùng để may vải", explanation: "Quần áo được may bằng kim và chỉ."),
            ExerciseItem(id: UUID(), prompt: "Con gà trống lặn sâu xuống đáy biển để đẻ một quả trứng.", options: ["Gà trống không biết đẻ trứng và không sống dưới đáy biển", "Trứng gà to bằng trứng đà điểu", "Đáy biển không có nước", "Gà trống có vây"], correctAnswer: "Gà trống không biết đẻ trứng và không sống dưới đáy biển", explanation: "Gà mái đẻ trứng trên cạn, không sống dưới nước."),
            ExerciseItem(id: UUID(), prompt: "Cậu bé dùng ngọn lửa của chiếc bật lửa để làm đông đá ly nước cam.", options: ["Lửa làm nóng, không thể làm đông đá", "Nước cam có vị mặn", "Bật lửa làm bằng đá", "Lửa có nhiệt độ lạnh"], correctAnswer: "Lửa làm nóng, không thể làm đông đá", explanation: "Lửa cung cấp nhiệt lượng, tủ lạnh mới làm đông đá."),
            ExerciseItem(id: UUID(), prompt: "Tấm gương kính trong phòng tắm vỡ tan tành khi có một cọng lông chim rớt nhẹ lên đó.", options: ["Cọng lông chim rất nhẹ, không đủ lực làm vỡ kính", "Gương kính làm bằng sắt", "Lông chim cứng như đá", "Phòng tắm không có kính"], correctAnswer: "Cọng lông chim rất nhẹ, không đủ lực làm vỡ kính", explanation: "Kính chỉ vỡ khi bị va đập bởi vật nặng hoặc cứng."),
            ExerciseItem(id: UUID(), prompt: "Bác tài xế đạp mạnh chân ga để chiếc xe hơi đứng yên tại chỗ.", options: ["Đạp chân ga làm xe chạy tới, không làm xe đứng yên", "Xe hơi không có chân ga", "Xe hơi chạy bằng điện", "Tài xế ngồi trên nóc xe"], correctAnswer: "Đạp chân ga làm xe chạy tới, không làm xe đứng yên", explanation: "Chân phanh (thắng) mới có tác dụng làm xe dừng lại."),
            ExerciseItem(id: UUID(), prompt: "Chú voi to lớn đậu cẩn thận trên một nhánh cây mỏng manh để nghỉ ngơi.", options: ["Nhánh cây mỏng không thể chịu được sức nặng của voi", "Voi có kích thước nhỏ", "Cây làm bằng bê tông", "Voi có thể bay"], correctAnswer: "Nhánh cây mỏng không thể chịu được sức nặng của voi", explanation: "Voi rất nặng sẽ làm gãy nhánh cây."),
            ExerciseItem(id: UUID(), prompt: "Tôi nhét toàn bộ chiếc ô tô bốn chỗ vào trong ngăn kéo bàn làm việc.", options: ["Ô tô quá to không thể chui lọt ngăn kéo", "Ngăn kéo lớn bằng cái nhà", "Bàn làm việc làm bằng giấy", "Ô tô có thể gấp lại"], correctAnswer: "Ô tô quá to không thể chui lọt ngăn kéo", explanation: "Ngăn kéo bàn rất nhỏ so với kích thước thật của xe ô tô."),
            ExerciseItem(id: UUID(), prompt: "Bà nội sạc pin chiếc điện thoại thông minh bằng cách ngâm nó vào chậu nước xà phòng.", options: ["Nước sẽ làm hỏng đồ điện tử, không thể sạc pin", "Điện thoại không cần sạc", "Xà phòng dẫn điện", "Chậu nước làm bằng vàng"], correctAnswer: "Nước sẽ làm hỏng đồ điện tử, không thể sạc pin", explanation: "Điện thoại cần cắm dây sạc vào nguồn điện."),
            ExerciseItem(id: UUID(), prompt: "Anh Tín quét sạch rác trên sàn nhà bằng một chiếc nĩa ăn cơm.", options: ["Nĩa nhỏ và có răng, không dùng để quét nhà", "Rác tự biến mất", "Sàn nhà làm bằng cỏ", "Nĩa làm bằng chổi"], correctAnswer: "Nĩa nhỏ và có răng, không dùng để quét nhà", explanation: "Phải dùng chổi để quét dọn rác trên sàn."),
            ExerciseItem(id: UUID(), prompt: "Người họa sĩ vẽ một bức tranh phong cảnh bằng cách xịt dầu thơm lên toan vải.", options: ["Dầu thơm không có màu sắc để tạo thành hình vẽ", "Họa sĩ bị mù", "Vải không ăn mực", "Dầu thơm làm bằng sơn"], correctAnswer: "Dầu thơm không có màu sắc để tạo thành hình vẽ", explanation: "Họa sĩ cần dùng màu vẽ (sơn dầu, màu nước) để vẽ tranh."),
            ExerciseItem(id: UUID(), prompt: "Chị Thảo đút em bé ăn cháo bằng một cái cuốc làm vườn.", options: ["Cái cuốc đất quá to và dơ, không dùng để đút cháo", "Em bé ăn cháo bằng tay", "Cháo làm bằng sỏi", "Cuốc làm bằng nhựa an toàn"], correctAnswer: "Cái cuốc đất quá to và dơ, không dùng để đút cháo", explanation: "Phải dùng muỗng (thìa) sạch để đút thức ăn.")
        ]
    )

    // MARK: - Câu hỏi Có/Không
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "Câu hỏi Có/Không",
        instructions: "Chọn Có hoặc Không cho mỗi câu hỏi.",
        section: .cognition,
        type: .yesNo,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Đường Bolsa là con đường chính của khu Little Saigon ở Quận Cam, California."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải tiểu bang California nằm ở nước Mỹ (Hoa Kỳ) không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "California là một tiểu bang của Hoa Kỳ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải mặt trời mọc ở hướng Tây và lặn ở hướng Đông không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Mặt trời mọc ở hướng Đông và lặn ở hướng Tây."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải món 'Phở' là một món ăn truyền thống của người Việt Nam không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Phở là món ăn đặc trưng của ẩm thực Việt Nam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải một tuần lễ bao gồm 7 ngày không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Một tuần lễ luôn có 7 ngày."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải con mèo biết sủa gâu gâu như con chó không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Mèo kêu meo meo, chó mới sủa gâu gâu."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải mùa đông ở nơi có tuyết thì nhiệt độ rất lạnh không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Tuyết rơi khi nhiệt độ đóng băng rất lạnh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải người ta dùng tủ lạnh để nấu chín thức ăn không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Tủ lạnh dùng để bảo quản đồ ăn lạnh, bếp mới dùng nấu chín."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải trái cam và trái chanh đều chứa nhiều Vitamin C không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Các loại trái cây họ cam quýt rất giàu Vitamin C."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải xe hơi có thể chạy bình thường trên đường bằng hai bánh xe không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Xe hơi tiêu chuẩn cần có đủ bốn bánh xe để di chuyển an toàn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải tháng Mười Hai là tháng cuối cùng trong một năm dương lịch không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Tháng 12 là tháng cuối năm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải nước biển có vị ngọt như đường không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Nước biển chứa muối nên có vị mặn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải con người hít thở khí oxy (oxygen) để duy trì sự sống không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Oxy rất cần thiết cho hô hấp của con người."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải bạn nên dùng búa tạ để gõ bàn phím máy tính không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Búa sẽ đập vỡ bàn phím máy tính."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải áo mưa là trang phục dùng để mặc khi đi dưới trời mưa không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Áo mưa làm bằng vật liệu chống thấm nước."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải một ngày luôn có đủ 24 tiếng đồng hồ không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Thời gian xoay của Trái Đất tạo ra 24 giờ một ngày."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải chúng ta dùng mắt để nghe âm thanh không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Chúng ta dùng tai để nghe âm thanh, mắt để nhìn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải lá của cây xanh thường có màu đỏ hoặc tím quanh năm không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Đa số lá cây có màu xanh lục nhờ chất diệp lục."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải Tết Nguyên Đán là dịp lễ quan trọng nhất của người Việt không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Tết là dịp lễ truyền thống lớn nhất của người Việt Nam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải nước đá được tạo ra khi đun sôi nước nóng không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Nước đá được tạo ra khi làm đông lạnh nước."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải cái giường là đồ nội thất được thiết kế để nằm ngủ không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Giường có nệm dùng làm nơi nghỉ ngơi, ngủ nghỉ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải cá voi sống và hít thở trên cạn giống như con ngựa không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Cá voi là động vật có vú sống hoàn toàn dưới đại dương."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải bác sĩ là người làm việc tại bệnh viện và phòng khám để chữa bệnh không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bác sĩ có chuyên môn y khoa để khám chữa bệnh cho bệnh nhân."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải khi tham gia giao thông đèn đỏ nghĩa là được phép chạy tiếp không?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Đèn đỏ là tín hiệu yêu cầu dừng xe lại."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải tiếng Việt sử dụng các dấu thanh như huyền, sắc, hỏi, ngã, nặng không?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Tiếng Việt là ngôn ngữ có thanh điệu để phân biệt nghĩa của từ."
            )
        ]
    )

    // MARK: - Tương tự
    private static let analogies = Exercise(
        id: UUID(),
        title: "Tương tự",
        instructions: "Chọn từ đúng để hoàn thành phép tương tự.",
        section: .cognition,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Nước mắm có vị mặn, đường có vị ngọt."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ngày : Nắng :: Đêm : ___",
                options: ["Mưa", "Trăng", "Mây", "Gió"],
                correctAnswer: "Trăng",
                explanation: "Ban ngày có ánh nắng mặt trời, ban đêm có ánh trăng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con chó : Sủa gâu gâu :: Con mèo : ___",
                options: ["Hót líu lo", "Kêu meo meo", "Rống", "Gáy ó o"],
                correctAnswer: "Kêu meo meo",
                explanation: "Chó phát ra tiếng sủa, mèo phát ra tiếng kêu meo meo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con mắt : Nhìn :: Lỗ tai : ___",
                options: ["Ngửi", "Nếm", "Nghe", "Cầm"],
                correctAnswer: "Nghe",
                explanation: "Mắt là giác quan thị giác (nhìn), tai là thính giác (nghe)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cây bút : Viết chữ :: Chiếc kéo : ___",
                options: ["Đóng đinh", "Cắt giấy", "Nấu ăn", "Quét nhà"],
                correctAnswer: "Cắt giấy",
                explanation: "Bút có chức năng viết, kéo có chức năng cắt."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Xe hơi : Xa lộ :: Xe lửa : ___",
                options: ["Đường ray", "Bầu trời", "Dưới biển", "Bãi cỏ"],
                correctAnswer: "Đường ray",
                explanation: "Xe hơi chạy trên đường nhựa/xa lộ, xe lửa chạy trên đường ray."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lửa : Nóng :: Nước đá : ___",
                options: ["Ấm", "Sôi", "Lạnh", "Cháy"],
                correctAnswer: "Lạnh",
                explanation: "Đặc tính của lửa là tỏa nhiệt nóng, đặc tính của đá là lạnh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Màu trắng : Đen :: Ánh sáng : ___",
                options: ["Bóng tối", "Cầu vồng", "Mặt trời", "Màu xanh"],
                correctAnswer: "Bóng tối",
                explanation: "Trắng đối lập với đen, ánh sáng đối lập với bóng tối."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Trái cam : Trái cây :: Củ cà rốt : ___",
                options: ["Động vật", "Rau củ", "Đồ uống", "Bánh kẹo"],
                correctAnswer: "Rau củ",
                explanation: "Cam thuộc nhóm trái cây, cà rốt thuộc nhóm rau củ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bác sĩ : Bệnh viện :: Giáo viên : ___",
                options: ["Nhà hàng", "Trường học", "Siêu thị", "Sân bay"],
                correctAnswer: "Trường học",
                explanation: "Bác sĩ làm việc ở bệnh viện, giáo viên làm việc ở trường học."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mưa : Áo mưa :: Nắng gắt : ___",
                options: ["Áo len", "Khăn choàng", "Nón (mũ)", "Ủng cao su"],
                correctAnswer: "Nón (mũ)",
                explanation: "Đi mưa đội/mặc áo mưa, đi nắng đội nón để che nắng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Thứ Hai : Thứ Ba :: Tháng Giêng : ___",
                options: ["Tháng Hai", "Tháng Chạp", "Mùa Xuân", "Năm Mới"],
                correctAnswer: "Tháng Hai",
                explanation: "Sau Thứ Hai là Thứ Ba, sau tháng Giêng (tháng 1) là tháng Hai."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nhà bếp : Nấu ăn :: Phòng ngủ : ___",
                options: ["Tắm rửa", "Xem tivi", "Ngủ nghỉ", "Tiếp khách"],
                correctAnswer: "Ngủ nghỉ",
                explanation: "Nhà bếp dùng để nấu ăn, phòng ngủ dùng để nghỉ ngơi/ngủ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đường phố : Nhựa đường :: Bãi biển : ___",
                options: ["Cát vàng", "Cây cối", "Xe cộ", "Tòa nhà"],
                correctAnswer: "Cát vàng",
                explanation: "Đường phố được phủ bằng nhựa đường, bãi biển được phủ bằng cát."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ngón tay : Bàn tay :: Ngón chân : ___",
                options: ["Cánh tay", "Đầu gối", "Bàn chân", "Bắp đùi"],
                correctAnswer: "Bàn chân",
                explanation: "Ngón tay là bộ phận của bàn tay, ngón chân là bộ phận của bàn chân."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tiền mặt : Cái ví (bóp) :: Quần áo : ___",
                options: ["Tủ đồ", "Hộp bút", "Tủ lạnh", "Két sắt"],
                correctAnswer: "Tủ đồ",
                explanation: "Tiền được cất trong ví, quần áo được cất trong tủ đồ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con chim : Lông vũ :: Con cá : ___",
                options: ["Vảy", "Chân", "Sừng", "Móng vuốt"],
                correctAnswer: "Vảy",
                explanation: "Chim được bao phủ bởi lông vũ, cá được bao phủ bởi vảy."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mùa đông : Lạnh giá :: Mùa hè : ___",
                options: ["Tuyệt đẹp", "Mát mẻ", "Nóng bức", "Đóng băng"],
                correctAnswer: "Nóng bức",
                explanation: "Đặc điểm của mùa đông là lạnh, đặc điểm mùa hè là nóng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gà trống : Gà mái :: Đàn ông : ___",
                options: ["Đứa bé", "Phụ nữ", "Ông nội", "Thanh niên"],
                correctAnswer: "Phụ nữ",
                explanation: "Gà trống và gà mái là hai giới tính, đàn ông và phụ nữ cũng vậy."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chổi : Quét nhà :: Bàn chải : ___",
                options: ["Rửa bát", "Chải tóc", "Đánh răng", "Cắt cỏ"],
                correctAnswer: "Đánh răng",
                explanation: "Chổi dùng để quét, bàn chải (răng) dùng để đánh răng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hạt giống : Cây :: Trứng : ___",
                options: ["Gà con", "Vỏ trứng", "Nước", "Tổ chim"],
                correctAnswer: "Gà con",
                explanation: "Hạt giống nở thành cây, quả trứng nở thành con gà/chim non."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Máy bay : Bầu trời :: Chiếc tàu : ___",
                options: ["Mặt đất", "Đường ray", "Mặt biển", "Bãi đậu"],
                correctAnswer: "Mặt biển",
                explanation: "Máy bay di chuyển trên không, tàu thủy di chuyển trên mặt nước."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Trẻ sơ sinh : Khóc :: Người trưởng thành : ___",
                options: ["Bò", "Nói chuyện", "Ngậm ty giả", "Mặc tã"],
                correctAnswer: "Nói chuyện",
                explanation: "Trẻ nhỏ giao tiếp bằng tiếng khóc, người lớn giao tiếp bằng tiếng nói."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con kiến : Nhỏ bé :: Con voi : ___",
                options: ["To lớn", "Chậm chạp", "Mỏng manh", "Nhẹ nhàng"],
                correctAnswer: "To lớn",
                explanation: "Kiến có kích thước siêu nhỏ, voi có kích thước khổng lồ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nhiếp ảnh gia : Máy ảnh :: Thợ mộc : ___",
                options: ["Cái cưa", "Bảng đen", "Ống nghe", "Máy vi tính"],
                correctAnswer: "Cái cưa",
                explanation: "Nhiếp ảnh gia dùng máy ảnh làm việc, thợ mộc dùng cưa (và búa)."
            )
        ]
    )

    // MARK: - Nhận biết cảm xúc
    private static let emotions = Exercise(
        id: UUID(),
        title: "Nhận biết cảm xúc",
        instructions: "Chọn cảm xúc đúng cho mỗi tình huống.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào?",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Nụ cười rạng rỡ và cái ôm thể hiện niềm vui, hạnh phúc."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bác Lâm tìm khắp nhà cả buổi sáng nhưng vẫn không thấy chùm chìa khóa xe và sắp trễ giờ làm. Bác Lâm cảm thấy thế nào?",
                options: ["Lo lắng", "Vui mừng", "Hãnh diện", "Bình thản"],
                correctAnswer: "Lo lắng",
                explanation: "Việc không tìm thấy đồ quan trọng và sợ trễ giờ gây ra cảm giác lo lắng, sốt ruột."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con trai của chú Hùng vừa tốt nghiệp thủ khoa đại học với bằng xuất sắc. Chú Hùng cảm thấy thế nào?",
                options: ["Tự hào", "Sợ hãi", "Buồn bã", "Tức giận"],
                correctAnswer: "Tự hào",
                explanation: "Thành tích học tập xuất sắc của con cái mang lại sự tự hào cho cha mẹ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô Lan đang xếp hàng chờ tính tiền ở siêu thị thì có một người chen ngang vào ngay trước mặt cô. Cô Lan cảm thấy thế nào?",
                options: ["Tức giận", "Hạnh phúc", "Biết ơn", "Vui vẻ"],
                correctAnswer: "Tức giận",
                explanation: "Hành động chen lấn thiếu lịch sự của người khác gây ra sự bực bội, khó chịu."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Khoa vô tình làm đổ tô phở nước lèo vấy bẩn lên chiếc áo sơ mi trắng giữa nhà hàng đông người. Anh Khoa cảm thấy thế nào?",
                options: ["Xấu hổ", "Sung sướng", "Tự hào", "Tức giận"],
                correctAnswer: "Xấu hổ",
                explanation: "Bị dơ quần áo trước đám đông thường gây ra cảm giác ngại ngùng, xấu hổ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sau ba ngày nằm viện vì cảm nặng, bà Phượng cuối cùng cũng được bác sĩ cho xuất viện về nhà. Bà Phượng cảm thấy thế nào?",
                options: ["Nhẹ nhõm", "Sợ hãi", "Tức giận", "Hoảng hốt"],
                correctAnswer: "Nhẹ nhõm",
                explanation: "Được khỏi bệnh và về nhà mang lại cảm giác thoải mái và nhẹ nhõm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chị Thảo đi dạo ban đêm qua một con hẻm tối không có đèn đường và nghe thấy tiếng bước chân ngay sau lưng. Chị Thảo cảm thấy thế nào?",
                options: ["Sợ hãi", "Vui sướng", "Tự hào", "Thư giãn"],
                correctAnswer: "Sợ hãi",
                explanation: "Không gian tối tăm và tiếng động lạ mang lại cảm giác bất an, sợ hãi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bé Tâm được ba mẹ mua tặng đúng món đồ chơi mà bé đã ao ước suốt mấy tháng qua. Bé Tâm cảm thấy thế nào?",
                options: ["Vui sướng", "Chán nản", "Tức giận", "Lo âu"],
                correctAnswer: "Vui sướng",
                explanation: "Được nhận món quà yêu thích mang lại niềm hạnh phúc to lớn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chú Tài cố gắng lắp ráp cái tủ gỗ mua từ IKEA suốt bốn tiếng đồng hồ nhưng vẫn không khớp. Chú Tài cảm thấy thế nào?",
                options: ["Nản lòng", "Vui vẻ", "Xấu hổ", "Sợ hãi"],
                correctAnswer: "Nản lòng",
                explanation: "Làm một việc lâu mà không có kết quả dễ gây ra sự nản chí và bực tức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chiếc xe của anh Minh bị xẹp lốp giữa đường cao tốc và có một người lạ dừng lại giúp anh thay bánh xe. Anh Minh cảm thấy thế nào?",
                options: ["Biết ơn", "Tức giận", "Hối hận", "Ghen tị"],
                correctAnswer: "Biết ơn",
                explanation: "Nhận được sự giúp đỡ lúc hoạn nạn sẽ khiến chúng ta cảm thấy trân trọng và biết ơn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dì Bảy bỏ lỡ chuyến bay về Việt Nam ăn Tết vì kẹt xe trên đường ra sân bay. Dì Bảy cảm thấy thế nào?",
                options: ["Thất vọng", "Hãnh diện", "Vui mừng", "Hạnh phúc"],
                correctAnswer: "Thất vọng",
                explanation: "Trễ chuyến bay quan trọng gây ra sự buồn bã và thất vọng tột độ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đứa cháu nhỏ vô tình làm vỡ chiếc bình gốm cổ quý giá mà ông nội rất yêu thích. Ông nội cảm thấy thế nào?",
                options: ["Tiếc nuối", "Vui mừng", "Thư giãn", "Hãnh diện"],
                correctAnswer: "Tiếc nuối",
                explanation: "Mất đi đồ vật quý giá thường gây ra cảm giác đau lòng và tiếc nuối."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô Oanh đi làm về thấy nhà cửa đã được chồng con dọn dẹp sạch sẽ và nấu sẵn bữa tối. Cô Oanh cảm thấy thế nào?",
                options: ["Cảm động", "Tức giận", "Lo sợ", "Chán chường"],
                correctAnswer: "Cảm động",
                explanation: "Sự bất ngờ tốt đẹp từ gia đình mang lại cảm giác vui sướng và ấm áp."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Dũng vừa thuyết trình xong dự án quan trọng trước ban giám đốc và nhận được tràng pháo tay tán thưởng. Anh Dũng cảm thấy thế nào?",
                options: ["Hãnh diện", "Xấu hổ", "Hoảng sợ", "Thất vọng"],
                correctAnswer: "Hãnh diện",
                explanation: "Sự công nhận và khen ngợi mang lại cảm giác tự hào về bản thân."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bác Tám để quên chiếc điện thoại trong phòng vệ sinh công cộng, khi quay lại thì không thấy đâu nữa. Bác Tám cảm thấy thế nào?",
                options: ["Hoảng hốt", "Vui vẻ", "Tự hào", "Bình tĩnh"],
                correctAnswer: "Hoảng hốt",
                explanation: "Mất tài sản cá nhân thường dẫn đến trạng thái hoảng loạn và lo sợ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chị Thủy gọi tên chào lớn tiếng một người trên đường vì tưởng là người quen, nhưng khi họ quay mặt lại thì hóa ra là người lạ. Chị Thủy cảm thấy thế nào?",
                options: ["Ngượng ngùng", "Giận dữ", "Tự hào", "Hạnh phúc"],
                correctAnswer: "Ngượng ngùng",
                explanation: "Nhận nhầm người ở nơi công cộng gây ra cảm giác quê độ, ngượng ngùng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Em Trí thức trắng đêm học bài môn Toán nhưng kết quả bài thi cuối kỳ vẫn bị điểm kém. Em Trí cảm thấy thế nào?",
                options: ["Chán nản", "Hạnh phúc", "Tự hào", "Biết ơn"],
                correctAnswer: "Chán nản",
                explanation: "Cố gắng nhiều nhưng kết quả không tốt sẽ dẫn đến sự hụt hẫng, buồn bã."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chú Hoàng nhận được thông báo từ sở thuế (IRS) rằng chú đã khai thuế sai và bị phạt tiền. Chú Hoàng cảm thấy thế nào?",
                options: ["Lo âu", "Vui sướng", "Tự hào", "Biết ơn"],
                correctAnswer: "Lo âu",
                explanation: "Bị phạt tiền hoặc rắc rối luật pháp mang lại nhiều sự căng thẳng và lo lắng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà ngoại ngồi đan áo len và nhìn các cháu đang cười đùa vui vẻ quanh phòng khách. Bà ngoại cảm thấy thế nào?",
                options: ["Bình yên", "Sợ hãi", "Tức giận", "Thất vọng"],
                correctAnswer: "Bình yên",
                explanation: "Khung cảnh gia đình sum vầy mang lại cảm giác an bình và mãn nguyện."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Tín lỡ lớn tiếng quát mắng con trai vì một lỗi lầm nhỏ, sau khi bình tĩnh lại anh nhận ra mình đã quá lời. Anh Tín cảm thấy thế nào?",
                options: ["Hối hận", "Vui vẻ", "Hãnh diện", "Bình thản"],
                correctAnswer: "Hối hận",
                explanation: "Làm tổn thương người thân vì nóng giận thường dẫn đến cảm giác ăn năn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cả xóm bị cúp điện giữa mùa hè nóng bức, mọi người phải chịu nóng suốt ba tiếng đồng hồ, cuối cùng đèn cũng sáng lại. Mọi người cảm thấy thế nào?",
                options: ["Nhẹ nhõm", "Thất vọng", "Sợ hãi", "Ngượng ngùng"],
                correctAnswer: "Nhẹ nhõm",
                explanation: "Sự cố khó chịu kết thúc mang lại cảm giác trút được gánh nặng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô Hạnh bước vào tiệm tóc quen thuộc và thợ cắt tóc lỡ tay cắt quá ngắn khiến mái tóc cô bị hỏng. Cô Hạnh cảm thấy thế nào?",
                options: ["Tức giận", "Hạnh phúc", "Tự hào", "Biết ơn"],
                correctAnswer: "Tức giận",
                explanation: "Bị làm hỏng ngoại hình ngoài ý muốn thường gây ra sự bực bội."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Một người đồng nghiệp của anh Tuấn liên tục cướp công và nhận là ý tưởng của mình trong cuộc họp. Anh Tuấn cảm thấy thế nào?",
                options: ["Bất bình", "Vui vẻ", "Biết ơn", "Ngượng ngùng"],
                correctAnswer: "Bất bình",
                explanation: "Bị cướp công lao công sức mang lại cảm giác oan ức và giận dữ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chị Ngọc nhìn thấy bạn bè của mình đều đã có sự nghiệp ổn định và mua nhà, trong khi mình vẫn đang chật vật tìm việc. Chị Ngọc cảm thấy thế nào?",
                options: ["Chạnh lòng", "Hạnh phúc", "Hãnh diện", "Giận dữ"],
                correctAnswer: "Chạnh lòng",
                explanation: "So sánh bản thân với thành công của người khác dễ gây ra sự tự ti và buồn bã."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bác Tư đang tưới cây trước nhà thì thấy một con rắn độc trườn qua ngay dưới chân mình. Bác Tư cảm thấy thế nào?",
                options: ["Hoảng sợ", "Vui mừng", "Bình tĩnh", "Tự hào"],
                correctAnswer: "Hoảng sợ",
                explanation: "Gặp loài động vật nguy hiểm gây ra phản xạ kinh sợ tức thì."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn thân của cô Loan từ tiểu bang khác bất ngờ gọi báo tin ngày mai sẽ bay qua California thăm cô. Cô Loan cảm thấy thế nào?",
                options: ["Phấn khởi", "Chán nản", "Lo lắng", "Tức giận"],
                correctAnswer: "Phấn khởi",
                explanation: "Tin tức tốt đẹp bất ngờ từ người thân mang lại sự vui mừng, mong đợi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Tín đi làm về mệt mỏi, vừa mở cửa bước vào nhà thì chú chó cưng chạy ra quẫy đuôi mừng rỡ. Anh Tín cảm thấy thế nào?",
                options: ["Thư giãn", "Tức giận", "Sợ hãi", "Hoảng hốt"],
                correctAnswer: "Thư giãn",
                explanation: "Sự chào đón nhiệt tình của thú cưng giúp xua tan mệt mỏi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chị Trâm chuẩn bị một bữa tiệc sinh nhật rất lớn cho chồng, nhưng đến phút chót anh ấy gọi điện nói phải tăng ca không về kịp. Chị Trâm cảm thấy thế nào?",
                options: ["Hụt hẫng", "Vui sướng", "Tự hào", "Biết ơn"],
                correctAnswer: "Hụt hẫng",
                explanation: "Sự chờ đợi công sức bị uổng phí dẫn đến cảm giác tủi thân, thất vọng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chú Bình kiểm tra lại biên lai mua hàng và phát hiện nhân viên thu ngân thối lại thiếu 50 đô la cho mình. Chú Bình cảm thấy thế nào?",
                options: ["Bực bội", "Vui vẻ", "Hãnh diện", "Xấu hổ"],
                correctAnswer: "Bực bội",
                explanation: "Bị tính sai tiền làm thâm hụt tài chính sẽ gây bực tức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con gái của bác Mai được trường đại học y khoa danh tiếng gửi thư báo trúng tuyển nhập học. Bác Mai cảm thấy thế nào?",
                options: ["Sung sướng", "Sợ hãi", "Ghen tị", "Thất vọng"],
                correctAnswer: "Sung sướng",
                explanation: "Thành công lớn của con cái là niềm hạnh phúc và hãnh diện cho phụ huynh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cậu Tuấn chạy xe quá tốc độ trên đường vắng thì bất ngờ bị xe cảnh sát chớp đèn yêu cầu tấp vào lề. Cậu Tuấn cảm thấy thế nào?",
                options: ["Hồi hộp", "Hạnh phúc", "Tự hào", "Biết ơn"],
                correctAnswer: "Hồi hộp",
                explanation: "Bị cảnh sát gọi do vi phạm luật giao thông sẽ gây ra cảm giác căng thẳng, sợ bị phạt."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà nội đang tập xài điện thoại thông minh và lỡ tay bấm gọi video cho toàn bộ nhóm chat của gia đình. Bà nội cảm thấy thế nào?",
                options: ["Lúng túng", "Vui mừng", "Hãnh diện", "Tức giận"],
                correctAnswer: "Lúng túng",
                explanation: "Thao tác sai đồ công nghệ gây ra sự việc ngoài ý muốn làm người già bối rối."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô Liên vừa bước ra khỏi xe ô tô thì trời bỗng nhiên đổ cơn mưa rào lớn khiến cô ướt sũng. Cô Liên cảm thấy thế nào?",
                options: ["Bực mình", "Hạnh phúc", "Tự hào", "Biết ơn"],
                correctAnswer: "Bực mình",
                explanation: "Bị mắc mưa bất chợt làm hư quần áo và tóc tai thường gây khó chịu."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Khoa đứng nhìn căn nhà của mình bị cháy rụi sau một trận hỏa hoạn lớn ở khu vực. Anh Khoa cảm thấy thế nào?",
                options: ["Tuyệt vọng", "Vui sướng", "Bình yên", "Hãnh diện"],
                correctAnswer: "Tuyệt vọng",
                explanation: "Mất mát tài sản lớn lao mang lại sự đau khổ tột cùng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sau nhiều năm tiết kiệm và làm việc vất vả, vợ chồng chị Ngọc cuối cùng cũng cầm được chiếc chìa khóa căn nhà đầu tiên của mình. Vợ chồng chị cảm thấy thế nào?",
                options: ["Hạnh phúc", "Sợ hãi", "Tức giận", "Xấu hổ"],
                correctAnswer: "Hạnh phúc",
                explanation: "Hoàn thành được mục tiêu lớn của cuộc đời mang lại cảm giác thỏa mãn tuyệt đối."
            )
        ]
    )
}
