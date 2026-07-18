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
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 1)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 2)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 3)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 4)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 5)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 6)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 7)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 8)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 9)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 10)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 11)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 12)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 13)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 14)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 15)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 16)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 17)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 18)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 19)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 20)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 21)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 22)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 23)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 24)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 25)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 26)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 27)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 28)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 29)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 30)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 31)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 32)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 33)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 34)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 35)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 36)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 37)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 38)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 39)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 40)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 41)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 42)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 43)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 44)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 45)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 46)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ."),
            ExerciseItem(id: UUID(), prompt: "Hôm qua ông Hùng lái xe trên đường Bolsa để mua phở. Ông ấy mua gì? (Câu chuyện 47)", options: ["Phở", "Hủ tiếu", "Cơm tấm", "Bánh mì"], correctAnswer: "Phở", explanation: "Ông Hùng đi mua phở."),
            ExerciseItem(id: UUID(), prompt: "Chị Hoa ghé qua thương xá Bolsa mua áo dài cưới lúc 3 giờ chiều. Chị Hoa mua gì? (Câu chuyện 48)", options: ["Áo dài cưới", "Váy cưới", "Áo sơ mi", "Áo thun"], correctAnswer: "Áo dài cưới", explanation: "Chị Hoa mua áo dài cưới."),
            ExerciseItem(id: UUID(), prompt: "Anh Nam ghé tiệm bánh mì ở Westminster mua 5 ổ bánh mì thịt. Anh ấy mua mấy ổ? (Câu chuyện 49)", options: ["5 ổ", "3 ổ", "10 ổ", "2 ổ"], correctAnswer: "5 ổ", explanation: "Anh Nam mua 5 ổ bánh mì."),
            ExerciseItem(id: UUID(), prompt: "Bà Mai ra chợ Thuận Phát mua rau muống và nước mắm. Bà Mai đi chợ nào? (Câu chuyện 50)", options: ["Chợ Thuận Phát", "Chợ Bolsa", "Chợ Hòa Bình", "Chợ Bến Thành"], correctAnswer: "Chợ Thuận Phát", explanation: "Bà Mai đi chợ Thuận Phát."),
            ExerciseItem(id: UUID(), prompt: "Bà Lan ở Westminster đi bộ đến Phước Lộc Thọ mua bánh tét. Bà ấy đi bằng gì? (Câu chuyện 51)", options: ["Đi bộ", "Đi xe buýt", "Đi xe hơi", "Đi xe đạp"], correctAnswer: "Đi bộ", explanation: "Bà Lan đi bộ đến Phước Lộc Thọ.")
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
            ExerciseItem(id: UUID(), prompt: "Bạn quên đổ xăng cho xe hơi. Kết quả là gì? (Tình huống 1)", options: ["Xe không thể chạy", "Xe chạy nhanh hơn", "Xe đổi màu", "Xe tự động rửa"], correctAnswer: "Xe không thể chạy", explanation: "Không có xăng xe không thể hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Trời mưa to và bạn không mang dù (ô). Kết quả là gì? (Tình huống 2)", options: ["Bạn bị ướt", "Bạn bị cháy nắng", "Bạn khô ráo", "Bạn đi nhanh hơn"], correctAnswer: "Bạn bị ướt", explanation: "Trời mưa không che dù sẽ bị ướt."),
            ExerciseItem(id: UUID(), prompt: "Bạn để kem ngoài nắng Bolsa lúc trưa. Kết quả là gì? (Tình huống 3)", options: ["Kem bị chảy ra", "Kem đông cứng hơn", "Kem đổi vị", "Kem biến mất"], correctAnswer: "Kem bị chảy ra", explanation: "Nhiệt độ cao làm kem chảy."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắm phích điện của quạt. Kết quả là gì? (Tình huống 4)", options: ["Quạt quay và thổi gió", "Quạt bị hỏng", "Quạt đổi màu", "Quạt phát ra tiếng nhạc"], correctAnswer: "Quạt quay và thổi gió", explanation: "Có điện quạt sẽ hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Bạn không tưới nước cho cây cảnh ở sân Westminster. Kết quả là gì? (Tình huống 5)", options: ["Cây bị héo và chết", "Cây phát triển nhanh", "Cây nở nhiều hoa", "Cây đổi màu xanh"], correctAnswer: "Cây bị héo và chết", explanation: "Thiếu nước cây sẽ héo."),
            ExerciseItem(id: UUID(), prompt: "Bạn quên đổ xăng cho xe hơi. Kết quả là gì? (Tình huống 6)", options: ["Xe không thể chạy", "Xe chạy nhanh hơn", "Xe đổi màu", "Xe tự động rửa"], correctAnswer: "Xe không thể chạy", explanation: "Không có xăng xe không thể hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Trời mưa to và bạn không mang dù (ô). Kết quả là gì? (Tình huống 7)", options: ["Bạn bị ướt", "Bạn bị cháy nắng", "Bạn khô ráo", "Bạn đi nhanh hơn"], correctAnswer: "Bạn bị ướt", explanation: "Trời mưa không che dù sẽ bị ướt."),
            ExerciseItem(id: UUID(), prompt: "Bạn để kem ngoài nắng Bolsa lúc trưa. Kết quả là gì? (Tình huống 8)", options: ["Kem bị chảy ra", "Kem đông cứng hơn", "Kem đổi vị", "Kem biến mất"], correctAnswer: "Kem bị chảy ra", explanation: "Nhiệt độ cao làm kem chảy."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắm phích điện của quạt. Kết quả là gì? (Tình huống 9)", options: ["Quạt quay và thổi gió", "Quạt bị hỏng", "Quạt đổi màu", "Quạt phát ra tiếng nhạc"], correctAnswer: "Quạt quay và thổi gió", explanation: "Có điện quạt sẽ hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Bạn không tưới nước cho cây cảnh ở sân Westminster. Kết quả là gì? (Tình huống 10)", options: ["Cây bị héo và chết", "Cây phát triển nhanh", "Cây nở nhiều hoa", "Cây đổi màu xanh"], correctAnswer: "Cây bị héo và chết", explanation: "Thiếu nước cây sẽ héo."),
            ExerciseItem(id: UUID(), prompt: "Bạn quên đổ xăng cho xe hơi. Kết quả là gì? (Tình huống 11)", options: ["Xe không thể chạy", "Xe chạy nhanh hơn", "Xe đổi màu", "Xe tự động rửa"], correctAnswer: "Xe không thể chạy", explanation: "Không có xăng xe không thể hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Trời mưa to và bạn không mang dù (ô). Kết quả là gì? (Tình huống 12)", options: ["Bạn bị ướt", "Bạn bị cháy nắng", "Bạn khô ráo", "Bạn đi nhanh hơn"], correctAnswer: "Bạn bị ướt", explanation: "Trời mưa không che dù sẽ bị ướt."),
            ExerciseItem(id: UUID(), prompt: "Bạn để kem ngoài nắng Bolsa lúc trưa. Kết quả là gì? (Tình huống 13)", options: ["Kem bị chảy ra", "Kem đông cứng hơn", "Kem đổi vị", "Kem biến mất"], correctAnswer: "Kem bị chảy ra", explanation: "Nhiệt độ cao làm kem chảy."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắm phích điện của quạt. Kết quả là gì? (Tình huống 14)", options: ["Quạt quay và thổi gió", "Quạt bị hỏng", "Quạt đổi màu", "Quạt phát ra tiếng nhạc"], correctAnswer: "Quạt quay và thổi gió", explanation: "Có điện quạt sẽ hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Bạn không tưới nước cho cây cảnh ở sân Westminster. Kết quả là gì? (Tình huống 15)", options: ["Cây bị héo và chết", "Cây phát triển nhanh", "Cây nở nhiều hoa", "Cây đổi màu xanh"], correctAnswer: "Cây bị héo và chết", explanation: "Thiếu nước cây sẽ héo."),
            ExerciseItem(id: UUID(), prompt: "Bạn quên đổ xăng cho xe hơi. Kết quả là gì? (Tình huống 16)", options: ["Xe không thể chạy", "Xe chạy nhanh hơn", "Xe đổi màu", "Xe tự động rửa"], correctAnswer: "Xe không thể chạy", explanation: "Không có xăng xe không thể hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Trời mưa to và bạn không mang dù (ô). Kết quả là gì? (Tình huống 17)", options: ["Bạn bị ướt", "Bạn bị cháy nắng", "Bạn khô ráo", "Bạn đi nhanh hơn"], correctAnswer: "Bạn bị ướt", explanation: "Trời mưa không che dù sẽ bị ướt."),
            ExerciseItem(id: UUID(), prompt: "Bạn để kem ngoài nắng Bolsa lúc trưa. Kết quả là gì? (Tình huống 18)", options: ["Kem bị chảy ra", "Kem đông cứng hơn", "Kem đổi vị", "Kem biến mất"], correctAnswer: "Kem bị chảy ra", explanation: "Nhiệt độ cao làm kem chảy."),
            ExerciseItem(id: UUID(), prompt: "Bạn cắm phích điện của quạt. Kết quả là gì? (Tình huống 19)", options: ["Quạt quay và thổi gió", "Quạt bị hỏng", "Quạt đổi màu", "Quạt phát ra tiếng nhạc"], correctAnswer: "Quạt quay và thổi gió", explanation: "Có điện quạt sẽ hoạt động."),
            ExerciseItem(id: UUID(), prompt: "Bạn không tưới nước cho cây cảnh ở sân Westminster. Kết quả là gì? (Tình huống 20)", options: ["Cây bị héo và chết", "Cây phát triển nhanh", "Cây nở nhiều hoa", "Cây đổi màu xanh"], correctAnswer: "Cây bị héo và chết", explanation: "Thiếu nước cây sẽ héo.")
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
            ExerciseItem(id: UUID(), prompt: "Cá voi xanh bay lượn trên bầu trời Westminster vào buổi trưa nắng ấm. (Phần 1)", options: ["Cá voi không biết bay", "Bầu trời không có nắng", "Không có buổi trưa", "Westminster không có bầu trời"], correctAnswer: "Cá voi không biết bay", explanation: "Cá voi sống dưới nước và không biết bay."),
            ExerciseItem(id: UUID(), prompt: "Ông nội đun nước sôi bằng một khay đá lạnh. (Phần 2)", options: ["Đá lạnh không thể đun sôi nước", "Nước sôi không nóng", "Ông nội không đun nước", "Khay đá không có hình chữ nhật"], correctAnswer: "Đá lạnh không thể đun sôi nước", explanation: "Đá lạnh tỏa nhiệt độ thấp, không thể đun sôi nước."),
            ExerciseItem(id: UUID(), prompt: "Chiếc xe hơi đang chạy bình thường mà không cần bánh xe. (Phần 3)", options: ["Xe hơi chạy cần bánh xe", "Xe hơi không cần xăng", "Xe chạy trên nước", "Xe không có kính chắn gió"], correctAnswer: "Xe hơi chạy cần bánh xe", explanation: "Bánh xe là bộ phận bắt buộc để xe hơi di chuyển."),
            ExerciseItem(id: UUID(), prompt: "Chị Lan viết thư bằng một quả chuối chín màu vàng. (Phần 4)", options: ["Quả chuối không thể viết chữ", "Quả chuối không có màu vàng", "Thư viết bằng tiếng Anh", "Chị Lan không biết viết"], correctAnswer: "Quả chuối không thể viết chữ", explanation: "Chuối không chứa mực hay ngòi viết để viết chữ."),
            ExerciseItem(id: UUID(), prompt: "Tôi nghe thấy tiếng còi tàu hỏa vang lên từ giữa lòng đại dương. (Phần 5)", options: ["Tàu hỏa chạy trên đường ray đất liền", "Đại dương không có nước", "Tàu hỏa chạy bằng nước biển", "Còi tàu hỏa không phát ra âm thanh"], correctAnswer: "Tàu hỏa chạy trên đường ray đất liền", explanation: "Tàu hỏa không hoạt động giữa đại dương."),
            ExerciseItem(id: UUID(), prompt: "Cá voi xanh bay lượn trên bầu trời Westminster vào buổi trưa nắng ấm. (Phần 6)", options: ["Cá voi không biết bay", "Bầu trời không có nắng", "Không có buổi trưa", "Westminster không có bầu trời"], correctAnswer: "Cá voi không biết bay", explanation: "Cá voi sống dưới nước và không biết bay."),
            ExerciseItem(id: UUID(), prompt: "Ông nội đun nước sôi bằng một khay đá lạnh. (Phần 7)", options: ["Đá lạnh không thể đun sôi nước", "Nước sôi không nóng", "Ông nội không đun nước", "Khay đá không có hình chữ nhật"], correctAnswer: "Đá lạnh không thể đun sôi nước", explanation: "Đá lạnh tỏa nhiệt độ thấp, không thể đun sôi nước."),
            ExerciseItem(id: UUID(), prompt: "Chiếc xe hơi đang chạy bình thường mà không cần bánh xe. (Phần 8)", options: ["Xe hơi chạy cần bánh xe", "Xe hơi không cần xăng", "Xe chạy trên nước", "Xe không có kính chắn gió"], correctAnswer: "Xe hơi chạy cần bánh xe", explanation: "Bánh xe là bộ phận bắt buộc để xe hơi di chuyển."),
            ExerciseItem(id: UUID(), prompt: "Chị Lan viết thư bằng một quả chuối chín màu vàng. (Phần 9)", options: ["Quả chuối không thể viết chữ", "Quả chuối không có màu vàng", "Thư viết bằng tiếng Anh", "Chị Lan không biết viết"], correctAnswer: "Quả chuối không thể viết chữ", explanation: "Chuối không chứa mực hay ngòi viết để viết chữ."),
            ExerciseItem(id: UUID(), prompt: "Tôi nghe thấy tiếng còi tàu hỏa vang lên từ giữa lòng đại dương. (Phần 10)", options: ["Tàu hỏa chạy trên đường ray đất liền", "Đại dương không có nước", "Tàu hỏa chạy bằng nước biển", "Còi tàu hỏa không phát ra âm thanh"], correctAnswer: "Tàu hỏa chạy trên đường ray đất liền", explanation: "Tàu hỏa không hoạt động giữa đại dương."),
            ExerciseItem(id: UUID(), prompt: "Cá voi xanh bay lượn trên bầu trời Westminster vào buổi trưa nắng ấm. (Phần 11)", options: ["Cá voi không biết bay", "Bầu trời không có nắng", "Không có buổi trưa", "Westminster không có bầu trời"], correctAnswer: "Cá voi không biết bay", explanation: "Cá voi sống dưới nước và không biết bay."),
            ExerciseItem(id: UUID(), prompt: "Ông nội đun nước sôi bằng một khay đá lạnh. (Phần 12)", options: ["Đá lạnh không thể đun sôi nước", "Nước sôi không nóng", "Ông nội không đun nước", "Khay đá không có hình chữ nhật"], correctAnswer: "Đá lạnh không thể đun sôi nước", explanation: "Đá lạnh tỏa nhiệt độ thấp, không thể đun sôi nước."),
            ExerciseItem(id: UUID(), prompt: "Chiếc xe hơi đang chạy bình thường mà không cần bánh xe. (Phần 13)", options: ["Xe hơi chạy cần bánh xe", "Xe hơi không cần xăng", "Xe chạy trên nước", "Xe không có kính chắn gió"], correctAnswer: "Xe hơi chạy cần bánh xe", explanation: "Bánh xe là bộ phận bắt buộc để xe hơi di chuyển."),
            ExerciseItem(id: UUID(), prompt: "Chị Lan viết thư bằng một quả chuối chín màu vàng. (Phần 14)", options: ["Quả chuối không thể viết chữ", "Quả chuối không có màu vàng", "Thư viết bằng tiếng Anh", "Chị Lan không biết viết"], correctAnswer: "Quả chuối không thể viết chữ", explanation: "Chuối không chứa mực hay ngòi viết để viết chữ."),
            ExerciseItem(id: UUID(), prompt: "Tôi nghe thấy tiếng còi tàu hỏa vang lên từ giữa lòng đại dương. (Phần 15)", options: ["Tàu hỏa chạy trên đường ray đất liền", "Đại dương không có nước", "Tàu hỏa chạy bằng nước biển", "Còi tàu hỏa không phát ra âm thanh"], correctAnswer: "Tàu hỏa chạy trên đường ray đất liền", explanation: "Tàu hỏa không hoạt động giữa đại dương.")
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
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 1)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 2)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 3)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 4)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 5)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 6)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 7)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 8)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 9)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 10)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 11)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 12)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 13)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 14)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 15)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 16)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 17)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 18)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 19)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 20)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 21)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 22)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 23)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 24)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 25)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 26)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 27)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 28)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 29)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có phải đường Bolsa ở Westminster là trung tâm của khu Little Saigon tại California không? (Câu hỏi 30)",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Bolsa Ave is the main street of Little Saigon in Orange County, CA."
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
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 1)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 2)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 3)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 4)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 5)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 6)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 7)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 8)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 9)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 10)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 11)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 12)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 13)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 14)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 15)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 16)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 17)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 18)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 19)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 20)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 21)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 22)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 23)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 24)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 25)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 26)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 27)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 28)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 29)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 30)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 31)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 32)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 33)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 34)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 35)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 36)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 37)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 38)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 39)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước mắm : Mặn :: Đường : ___ (Phép so sánh 40)",
                options: ["Ngọt", "Chua", "Cay", "Đắng"],
                correctAnswer: "Ngọt",
                explanation: "Fish sauce is salty, sugar is sweet."
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
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 1)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 2)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 3)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 4)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 5)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 6)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 7)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 8)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 9)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 10)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 11)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 12)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 13)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 14)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 15)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 16)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 17)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 18)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 19)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 20)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 21)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 22)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 23)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 24)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 25)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 26)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 27)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 28)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 29)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 30)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 31)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 32)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 33)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 34)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 35)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 36)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 37)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 38)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 39)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 40)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 41)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 42)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 43)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 44)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 45)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 46)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 47)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 48)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 49)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bà Lan cười rạng rỡ và ôm chầm lấy cháu ngoại khi cháu đi học về. Bà Lan cảm thấy thế nào? (Tình huống 50)",
                options: ["Vui vẻ", "Giận dữ", "Lo lắng", "Buồn bã"],
                correctAnswer: "Vui vẻ",
                explanation: "Joy/Happiness is shown by smiling and hugging."
            )
        ]
    )
}
