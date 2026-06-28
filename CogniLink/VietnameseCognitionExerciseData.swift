import Foundation

struct VietnameseCognitionExerciseData {

    static let allExercises: [Exercise] = [
        figurativeLanguageIdioms,
        storyRecall,
        numberSequences,
        causeAndEffect,
        whatsWrongHere
    ]

    // MARK: - Exercise 23: Figurative Language — Idioms
    private static let figurativeLanguageIdioms = Exercise(
        id: UUID(),
        title: "Thành ngữ và tục ngữ",
        instructions: "Chọn ý nghĩa chính xác nhất của thành ngữ đã cho.",
        section: .cognition,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Ruột để ngoài da” là gì?",
                options: ["Ruột để ngoài da là người bộc trực, không giữ bí mật", "Người bị bệnh đau dạ dày", "Người hay lo lắng xa xôi", "Người ích kỷ chỉ nghĩ cho mình"],
                correctAnswer: "Ruột để ngoài da là người bộc trực, không giữ bí mật",
                explanation: "Bộc trực, có gì nói nấy, não nếp nhăn ít."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Trứng chọi với đá” là gì?",
                options: ["Kẻ yếu đối đầu với kẻ mạnh quá chênh lệch", "Nấu ăn bằng trứng và đá", "Sự hợp tác bền vững", "Hành động khôn ngoan"],
                correctAnswer: "Kẻ yếu đối đầu với kẻ mạnh quá chênh lệch",
                explanation: "Hành động vô vọng của kẻ yếu khi đối mặt với thế lực quá mạnh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Thượng lộ bình an” là gì?",
                options: ["Chúc chuyến đi đi lại an toàn, suôn sẻ", "Chúc mừng năm mới phát tài", "Chúc thi cử đỗ đạt cao", "Chúc sức khỏe dồi dào"],
                correctAnswer: "Chúc chuyến đi đi lại an toàn, suôn sẻ",
                explanation: "Lời chúc an lành dành cho người sắp đi xa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Nhẹ như lông hồng” là gì?",
                options: ["Rất nhẹ nhàng, không đáng kể hoặc coi thường cái chết", "Trọng lượng của lông chim hồng hạc", "Việc làm vô ích", "Sự giàu sang phú quý"],
                correctAnswer: "Rất nhẹ nhàng, không đáng kể hoặc coi thường cái chết",
                explanation: "Xem nhẹ khó khăn hoặc cái chết vì nghĩa lớn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Như nước với lửa” là gì?",
                options: ["Khắc khẩu, không thể hòa hợp", "Hai yếu tố cần thiết cho cuộc sống", "Mối quan hệ hỗ trợ lẫn nhau", "Sự sáng tạo vô hạn"],
                correctAnswer: "Khắc khẩu, không thể hòa hợp",
                explanation: "Sự mâu thuẫn sâu sắc, xung khắc không thể dung hòa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Nuôi ong tay áo” là gì?",
                options: ["Nuôi dưỡng kẻ phản bội mình sau này", "Nuôi ong mật trong vườn", "Mặc quần áo ấm áp", "Làm việc thiện tích đức"],
                correctAnswer: "Nuôi dưỡng kẻ phản bội mình sau này",
                explanation: "Chăm sóc, giúp đỡ kẻ vong ơn bội nghĩa để rồi bị hại."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Khẩu phật tâm xà” là gì?",
                options: ["Lời nói từ bi nhưng lòng dạ hiểm độc", "Người thường xuyên đi chùa", "Người có tấm lòng nhân ái", "Lời nói sắc bén răn đe"],
                correctAnswer: "Lời nói từ bi nhưng lòng dạ hiểm độc",
                explanation: "Miệng nói lời tốt đẹp nhân từ nhưng lòng dạ ác độc nham hiểm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Chọn mặt gửi vàng” là gì?",
                options: ["Tin tưởng giao phó việc quan trọng cho người uy tín", "Mua bán vàng bạc đá quý", "Sự lựa chọn ngẫu nhiên", "Gặp gỡ bạn bè thân thiết"],
                correctAnswer: "Tin tưởng giao phó việc quan trọng cho người uy tín",
                explanation: "Lựa chọn người có đủ độ tin cậy để nhờ vả, giao phó trách nhiệm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Kiến bò miệng chén” là gì?",
                options: ["Luẩn quẩn không có lối thoát", "Ăn uống không vệ sinh", "Kiên trì làm việc nhỏ", "Sự may mắn bất ngờ"],
                correctAnswer: "Luẩn quẩn không có lối thoát",
                explanation: "Trạng thái bế tắc, luẩn quẩn trong khó khăn không tìm thấy lối ra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Đắt như tôm tươi” là gì?",
                options: ["Bán rất chạy, được nhiều người mua nhanh chóng", "Giá hải sản tăng cao", "Hàng hóa kém chất lượng", "Sự khan hiếm lương thực"],
                correctAnswer: "Bán rất chạy, được nhiều người mua nhanh chóng",
                explanation: "Hàng hóa bán rất nhanh và được ưa chuộng nhiệt tình."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Đi guốc trong bụng” là gì?",
                options: ["Hiểu rõ suy nghĩ, ý đồ của người khác", "Đau bụng khi đi giày cao gót", "Hành động thiếu lịch sự", "Giúp đỡ người nghèo khổ"],
                correctAnswer: "Hiểu rõ suy nghĩ, ý đồ của người khác",
                explanation: "Biết tỏng suy nghĩ, âm mưu của đối phương trước khi họ nói ra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Nước đổ đầu vịt” là gì?",
                options: ["Không chịu tiếp thu lời khuyên bảo", "Tưới nước cho động vật", "Lời nói có sức thuyết phục", "Sự kiên trì học hỏi"],
                correctAnswer: "Không chịu tiếp thu lời khuyên bảo",
                explanation: "Sự bướng bỉnh, khuyên răn mãi nhưng không chịu nghe hoặc không đọng lại được gì."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Bắt cá hai tay” là gì?",
                options: ["Cố gắng làm hai việc hoặc yêu hai người cùng lúc để trục lợi", "Kỹ năng đánh bắt cá điêu luyện", "Sự giúp đỡ nhiệt tình", "Hành động công bằng chính trực"],
                correctAnswer: "Cố gắng làm hai việc hoặc yêu hai người cùng lúc để trục lợi",
                explanation: "Tham lam, muốn ôm đồm lợi ích từ nhiều phía cùng một lúc."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Mèo khen mèo dài đuôi” là gì?",
                options: ["Tự khen ngợi bản thân hoặc người thân của mình", "Mèo có chiếc đuôi dài đẹp", "Người khiêm tốn nhã nhặn", "Sự khách quan trung thực"],
                correctAnswer: "Tự khen ngợi bản thân hoặc người thân của mình",
                explanation: "Tự cao tự đại, tự tâng bốc bản thân hoặc người nhà mình quá mức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ý nghĩa của thành ngữ “Vắt cổ chày ra nước” là gì?",
                options: ["Cực kỳ keo kiệt, bủn xỉn", "Ép nước thủ công", "Sự nghèo đói cùng cực", "Người tiết kiệm thông minh"],
                correctAnswer: "Cực kỳ keo kiệt, bủn xỉn",
                explanation: "Tính cách hà tiện, keo kiệt tới mức phi lý."
            )
        ]
    )

    // MARK: - Exercise 38: Story Recall
    private static let storyRecall = Exercise(
        id: UUID(),
        title: "Từ trái nghĩa (Dễ dàng)",
        instructions: "Chọn từ có nghĩa ĐỐI LẠI với từ đã cho.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: HẤP DẪN",
                options: ["ấm áp", "ạnh", "át mẻ", "ấm áp"],
                correctAnswer: "ạnh",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: VUI VẺ",
                options: ["vui mừng", "vui vẻ", "buồn", "ội dung"],
                correctAnswer: "buồn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LỚN",
                options: ["to lớn", "ớn", "nhỏ bé", "cao"],
                correctAnswer: "nhỏ bé",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: NHANH CHÓNG",
                options: ["nhanh chóng", "chậm", "nhanh chóng", "nhanh chóng"],
                correctAnswer: "chậm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SẠCH",
                options: ["ọn gàng", "ọn gàng", "ơ bẩn", "ươi"],
                correctAnswer: "ơ bẩn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TỨC THỨC",
                options: ["áo động", "nhận thức được", "đang ngủ", "hoạt động"],
                correctAnswer: "đang ngủ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LOUD",
                options: ["ồn ào", "ên tĩnh", "đang bùng nổ", "ạnh mẽ"],
                correctAnswer: "ên tĩnh",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: MỞ",
                options: ["đóng cửa", "ộng", "õ ràng", "miễn phí"],
                correctAnswer: "đóng cửa",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: ĐẦY ĐỦ",
                options: ["đóng gói", "trống rỗng", "đã nạp", "hoàn thành"],
                correctAnswer: "trống rỗng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TÌNH YÊU",
                options: ["ngưỡng mộ", "thích", "ghét", "quan tâm"],
                correctAnswer: "ghét",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 39: Number Sequences
    private static let numberSequences = Exercise(
        id: UUID(),
        title: "Hoàn thành câu (Dễ)",
        instructions: "Chọn từ hoàn thành câu tốt nhất.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy tưới nước cho ___.",
                options: ["hoa", "ầng", "ột mì"],
                correctAnswer: "hoa",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy mặc ___ của mình.",
                options: ["áo khoác", "thuyền", "con dê"],
                correctAnswer: "áo khoác",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tôi cần một ly ___.",
                options: ["ước", "ồi bàn", "người lội nước"],
                correctAnswer: "ước",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy gọi cô ấy là ___.",
                options: ["ẹ", "àm phiền", "ọt"],
                correctAnswer: "ẹ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con chó vẫy ___ của nó.",
                options: ["âu chuyện", "đuôi", "cao"],
                correctAnswer: "đuôi",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã tắt ___.",
                options: ["chiến đấu", "ánh sáng", "đêm"],
                correctAnswer: "ánh sáng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy nướng một ___.",
                options: ["giả mạo", "ồ", "ánh ngọt"],
                correctAnswer: "ánh ngọt",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con chim đã xây dựng một ___.",
                options: ["ổ", "nghỉ ngơi", "kiểm tra"],
                correctAnswer: "ổ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã đọc ___.",
                options: ["ờ báo", "giấy vụn", "giấy nhám"],
                correctAnswer: "ờ báo",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bọn trẻ chơi trong ___.",
                options: ["ông viên", "ỏ cây", "ối"],
                correctAnswer: "ông viên",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã sửa ___.",
                options: ["ồn rửa", "liên kết", "nháy mắt"],
                correctAnswer: "ồn rửa",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Món súp quá ___.",
                options: ["óng bức", "ất nhiều", "ấu chấm"],
                correctAnswer: "óng bức",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy đã mở ___.",
                options: ["ô", "ương vani", "khỉ đột"],
                correctAnswer: "ô",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã trả ___.",
                options: ["hoá đơn", "điền vào", "ối xay"],
                correctAnswer: "hoá đơn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con mèo ngồi trên ___.",
                options: ["chiếu", "ơi", "chuột"],
                correctAnswer: "chiếu",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy mặc một chiếc ___ ấm áp.",
                options: ["áo len", "ỉ đập", "ải rác"],
                correctAnswer: "áo len",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy đã trồng một ___.",
                options: ["ườn", "tha thứ", "cai ngục"],
                correctAnswer: "ườn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy đã viết trong ___ của mình.",
                options: ["nhật ký", "ữa", "hoa cúc"],
                correctAnswer: "nhật ký",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã trả ___.",
                options: ["óa đơn", "điền vào", "ối xay"],
                correctAnswer: "óa đơn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đứa bé là ___.",
                options: ["đang ngủ", "quét dọn", "ỉ ra"],
                correctAnswer: "đang ngủ",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 40: Cause and Effect
    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "Ngữ pháp và lượng từ",
        instructions: "Chọn từ loại hoặc lượng từ thích hợp để hoàn thành câu.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Tôi nhìn thấy một ___ mèo trên sân thượng.”",
                options: ["con", "ái", "chiếc", "ức"],
                correctAnswer: "con",
                explanation: "‘con’ là lượng từ dùng cho động vật."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Mẹ mới mua cho tôi một ___ sách rất hay.”",
                options: ["quyển", "ái", "chiếc", "ấm"],
                correctAnswer: "quyển",
                explanation: "‘quyển’ hoặc ‘cuốn’ là lượng từ dùng cho sách vở."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Ngôi nhà này có một ___ cửa sổ rất lớn.”",
                options: ["ái", "con", "ức", "ngôi"],
                correctAnswer: "ái",
                explanation: "‘cái’ là lượng từ dùng cho đồ vật thông thường."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Bố tôi sở hữu một ___ xe máy màu đỏ.”",
                options: ["chiếc", "con", "ái", "ấm"],
                correctAnswer: "chiếc",
                explanation: "‘chiếc’ hoặc ‘cái’ là lượng từ dùng cho phương tiện giao thông."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Bức ___ vẽ phong cảnh treo ở phòng khách.”",
                options: ["tranh", "ảnh", "ẽ", "àu"],
                correctAnswer: "tranh",
                explanation: "‘bức tranh’ là danh từ chỉ tác phẩm hội họa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Hôm qua, chúng tôi đã ___ một bộ phim rất xúc động.”",
                options: ["xem", "nghe", "đọc", "ói"],
                correctAnswer: "xem",
                explanation: "Động từ dùng cho phim ảnh là ‘xem’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Anh ấy đang ___ xe đạp trên đường công viên.”",
                options: ["đạp", "ái", "chạy", "đi"],
                correctAnswer: "đạp",
                explanation: "Động từ dùng cho xe đạp là ‘đạp xe’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Cô giáo đang ___ bài giảng trên bảng đen.”",
                options: ["viết", "đọc", "ói", "nghe"],
                correctAnswer: "viết",
                explanation: "Hoạt động ghi chữ lên bảng là ‘viết’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Trời hôm nay ___ mưa to tầm tã.”",
                options: ["đang", "đã", "ẽ", "ừa"],
                correctAnswer: "đang",
                explanation: "Chỉ trạng thái thời tiết đang xảy ra."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Chúng tôi sẽ ___ du lịch vào tuần sau.”",
                options: ["đi", "đến", "chạy", "bay"],
                correctAnswer: "đi",
                explanation: "Cụm từ diễn đạt việc di chuyển đi chơi là ‘đi du lịch’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Món ăn này vị của nó rất ___ miệng.”",
                options: ["ngon", "đẹp", "thơm", "ngọt"],
                correctAnswer: "ngon",
                explanation: "Tính từ chỉ chất lượng món ăn ngon miệng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Anh ấy học hành vô cùng ___ chỉ.”",
                options: ["chăm", "ười", "ngoan", "giỏi"],
                correctAnswer: "chăm",
                explanation: "Cụm từ ghép chỉ sự nỗ lực học tập là ‘chăm chỉ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Em bé khóc rất ___ vì bị đói.”",
                options: ["to", "nhỏ", "khẽ", "nhanh"],
                correctAnswer: "to",
                explanation: "Trạng từ chỉ mức độ tiếng khóc."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Chiếc điện thoại này dùng rất ___.”",
                options: ["ốt", "ấu", "nhanh", "chậm"],
                correctAnswer: "ốt",
                explanation: "Tính từ chỉ chất lượng hoạt động của thiết bị."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Bầu trời đêm đầy ___ sáng lấp lánh.”",
                options: ["sao", "ây", "trăng", "ắng"],
                correctAnswer: "sao",
                explanation: "Thiên thể phát sáng ban đêm là ‘ngôi sao’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Một ___ nhà cao tầng mới xây ở góc phố.”",
                options: ["ngôi", "ái", "chiếc", "ức"],
                correctAnswer: "ngôi",
                explanation: "‘ngôi’ là lượng từ dùng cho nhà cửa, công trình."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Chị tôi đeo một ___ kính cận màu đen.”",
                options: ["ặp", "ái", "chiếc", "ấm"],
                correctAnswer: "ặp",
                explanation: "‘cặp kính’ hoặc ‘chiếc kính’ là cách gọi thông dụng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Họ vừa hoàn thành xong ___ học kỳ đầu tiên.”",
                options: ["ột", "những", "ác", "ọi"],
                correctAnswer: "ột",
                explanation: "Chỉ số lượng một học kỳ cụ thể."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Hãy uống nước ___ trước khi đi ngủ.”",
                options: ["ấm", "ạnh", "óng", "đá"],
                correctAnswer: "ấm",
                explanation: "Lời khuyên sức khỏe uống nước ấm tốt cho cơ thể."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Người nghệ sĩ đang kéo đàn ___ rất hay.”",
                options: ["ĩ cầm", "tranh", "ầu", "guitar"],
                correctAnswer: "ĩ cầm",
                explanation: "Nhạc cụ kéo bằng vĩ là ‘đàn vĩ cầm’ (violin)."
            )
        ]
    )

    // MARK: - Exercise 42: What’s Wrong Here?
    private static let whatsWrongHere = Exercise(
        id: UUID(),
        title: "Tương tự",
        instructions: "Chọn từ phù hợp nhất với sự tương tự.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "PUPPY đối với CHÓ cũng như KITTEN đối với ___",
                options: ["con mèo", "con chó", "chim", "á"],
                correctAnswer: "con mèo",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "LẠNH là MÙA ĐÔNG cũng như HẤP DẪN là ___",
                options: ["ùa xuân", "ùa thu", "Mùa hè", "Mưa"],
                correctAnswer: "Mùa hè",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MẮT là để XEM cũng như TAI là để ___",
                options: ["Chạm vào", "Nghe", "Mùi", "Hương vị"],
                correctAnswer: "Nghe",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CHEF đối với BẾP cũng như BÁC SĨ đối với ___",
                options: ["Thư viện", "ệnh viện", "trường học", "ửa hàng"],
                correctAnswer: "ệnh viện",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GĂNG TAY là TAY cũng như TẤT là ___",
                options: ["ánh tay", "Đầu gối", "chân", "ái đầu"],
                correctAnswer: "chân",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "VUI là CƯỜI cũng như Buồn là ___",
                options: ["Mỉm cười", "Ngủ", "Khóc", "Chạy"],
                correctAnswer: "Khóc",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BIRD là NEST cũng như BEAR là ___",
                options: ["Cây", "Hang động", "đại dương", "trường"],
                correctAnswer: "Hang động",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BÚT CHÌ dùng để VIẾT cũng như BRUSH dùng để ___",
                options: ["Cắt", "Sơn", "Quét", "Khuấy"],
                correctAnswer: "Sơn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "NGÀY là ĐÊM và ĐEN là ___",
                options: ["Tối", "Màu xám", "trắng", "Màu xanh"],
                correctAnswer: "trắng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SOLDIER đối với ARMY cũng như Sailor đối với ___",
                options: ["Không quân", "Thủy quân lục chiến", "ải quân", "ảo vệ"],
                correctAnswer: "ải quân",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "WHEEL là XE còn WING là ___",
                options: ["Thuyền", "Máy bay", "àu hỏa", "xe buýt"],
                correctAnswer: "Máy bay",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GIÁO VIÊN đối với TRƯỜNG cũng như THẨM PHÁN đối với ___",
                options: ["ăn phòng", "ệnh viện", "phòng xử án", "ửa hàng"],
                correctAnswer: "phòng xử án",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CATERPILLAR là BƯỚM cũng như Nòng Nòng là ___",
                options: ["á", "Rùa", "Ếch", "thằn lằn"],
                correctAnswer: "Ếch",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "THỰC PHẨM là ĐÓI cũng như NƯỚC là ___",
                options: ["Ướt", "Khát nước", "Lạnh", "Đầy đủ"],
                correctAnswer: "Khát nước",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "LEN dành cho CỪU cũng như LỤA dành cho ___",
                options: ["nhện", "Tằm", "Bông", "ải lanh"],
                correctAnswer: "Tằm",
                explanation: ""
            )
        ]
    )

}
