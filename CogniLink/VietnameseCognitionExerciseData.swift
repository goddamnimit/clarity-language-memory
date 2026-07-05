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

    // MARK: - Từ trái nghĩa (Dễ dàng)
    private static let storyRecall = Exercise(
        id: UUID(),
        title: "Từ trái nghĩa (Dễ dàng)",
        instructions: "Chọn từ có nghĩa ĐỐI LẠI với từ đã cho.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
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
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì?",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 1)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 2)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 3)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 4)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 5)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 6)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 7)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 8)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 9)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 10)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 11)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 12)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 13)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 14)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 15)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 16)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 17)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 18)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 19)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 20)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 21)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 22)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 23)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 24)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 25)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 26)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 27)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 28)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 29)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 30)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 31)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 32)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 33)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 34)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 35)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 36)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 37)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 38)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 39)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh Nam đi chợ Bolsa mua 3 ký chôm chôm và 2 ký nhãn. Anh ấy đã mua gì? (Câu chuyện 40)",
                options: ["Chôm chôm và nhãn", "Xoài và măng cụt", "Sầu riêng và mít", "Cam và táo"],
                correctAnswer: "Chôm chôm và nhãn",
                explanation: "Recalling the fruits purchased by Nam at Bolsa market."
            )
        ]
    )

    // MARK: - Hoàn thành câu (Dễ)
    private static let numberSequences = Exercise(
        id: UUID(),
        title: "Hoàn thành câu (Dễ)",
        instructions: "Chọn từ hoàn thành câu tốt nhất.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .sentenceCompletion,
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

    // MARK: - Ngữ pháp và lượng từ
    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "Ngữ pháp và lượng từ",
        instructions: "Chọn từ loại hoặc lượng từ thích hợp để hoàn thành câu.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
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

    // MARK: - Tương tự
    private static let whatsWrongHere = Exercise(
        id: UUID(),
        title: "Tương tự",
        instructions: "Chọn từ phù hợp nhất với sự tương tự.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
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
