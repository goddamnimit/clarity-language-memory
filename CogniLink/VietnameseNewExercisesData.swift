import Foundation

/// Holds the 14 new Vietnamese exercises translated and adapted from EnglishNewExercisesData.swift.
struct VietnameseNewExercisesData {

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

    // MARK: - Exercise 1: Rhyming Pairs (Cặp từ hiệp vần)
    private static let exercise1 = Exercise(
        title: "Cặp từ hiệp vần",
        instructions: "Chọn từ có vần giống hoặc gần giống nhất với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “BÀN”?", options: ["Ghế", "Làn", "Sách", "Hoa"], correctAnswer: "Làn", explanation: "Bàn và Làn đều có chung vần “an”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “MƯA”?", options: ["Nắng", "Trưa", "Gió", "Lạnh"], correctAnswer: "Trưa", explanation: "Mưa và Trưa đều có chung vần “ưa”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “CÁ”?", options: ["Lá", "Nước", "Cua", "Tôm"], correctAnswer: "Lá", explanation: "Cá và Lá đều có chung vần “a”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “HOA”?", options: ["Quả", "Nhà", "Qua", "Đất"], correctAnswer: "Qua", explanation: "Hoa và Qua đều có chung vần “oa”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “ĐỒNG”?", options: ["Sông", "Ruộng", "Hồng", "Lúa"], correctAnswer: "Hồng", explanation: "Đồng và Hồng đều có chung vần “ông”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “XANH”?", options: ["Đỏ", "Nhanh", "Cây", "Lá"], correctAnswer: "Nhanh", explanation: "Xanh và Nhanh đều có chung vần “anh”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “TAY”?", options: ["Chân", "Bay", "Mắt", "Tai"], correctAnswer: "Bay", explanation: "Tay và Bay đều có chung vần “ay”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “BÉ”?", options: ["Lớn", "Nghé", "Ngoan", "Vui"], correctAnswer: "Nghé", explanation: "Bé và Nghé đều có chung vần “e”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “KEM”?", options: ["Bánh", "Xem", "Kẹo", "Sữa"], correctAnswer: "Xem", explanation: "Kem và Xem đều có chung vần “em”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “ĐÊM”?", options: ["Ngày", "Mềm", "Tối", "Sáng"], correctAnswer: "Mềm", explanation: "Đêm và Mềm đều có chung vần “êm”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “HỌC”?", options: ["Đọc", "Sách", "Trường", "Viết"], correctAnswer: "Đọc", explanation: "Học và Đọc đều có chung vần “ọc”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “CHIM”?", options: ["Bay", "Tìm", "Cá", "Sâu"], correctAnswer: "Tìm", explanation: "Chim và Tìm đều có chung vần “im”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “NƯỚC”?", options: ["Trước", "Uống", "Sông", "Mưa"], correctAnswer: "Trước", explanation: "Nước và Trước đều có chung vần “ước”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “MẮT”?", options: ["Tai", "Cắt", "Tay", "Chân"], correctAnswer: "Cắt", explanation: "Mắt và Cắt đều có chung vần “ắt”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “SÁCH”?", options: ["Vở", "Mách", "Bút", "Học"], correctAnswer: "Mách", explanation: "Sách và Mách đều có chung vần “ách”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “TRỜI”?", options: ["Đất", "Đời", "Mây", "Sao"], correctAnswer: "Đời", explanation: "Trời và Đời đều có chung vần “ơi”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “CƠM”?", options: ["Nước", "Thơm", "Rau", "Cá"], correctAnswer: "Thơm", explanation: "Cơm và Thơm đều có chung vần “ơm”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “CHÂN”?", options: ["Tay", "Gần", "Đầu", "Tóc"], correctAnswer: "Gần", explanation: "Chân và Gần đều có chung vần “ân”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “MÈO”?", options: ["Chuột", "Trèo", "Chó", "Gà"], correctAnswer: "Trèo", explanation: "Mèo và Trèo đều có chung vần “èo”."),
            ExerciseItem(prompt: "Từ nào hiệp vần với từ “LỬA”?", options: ["Nước", "Cửa", "Khói", "Than"], correctAnswer: "Cửa", explanation: "Lửa và Cửa đều có chung vần “ửa”.")
        ]
    )

    // MARK: - Exercise 2: Word Association (Liên kết từ)
    private static let exercise2 = Exercise(
        title: "Liên kết từ",
        instructions: "Chọn từ có mối liên hệ mật thiết nhất với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "BÁC SĨ", options: ["Bệnh viện", "Sân bay", "Thư viện", "Trang trại"], correctAnswer: "Bệnh viện", explanation: "Bác sĩ làm việc tại bệnh viện để chăm sóc bệnh nhân."),
            ExerciseItem(prompt: "BÁNH MÌ", options: ["Bơ", "Búa", "Xà phòng", "Bút chì"], correctAnswer: "Bơ", explanation: "Bơ thường được quết lên bánh mì."),
            ExerciseItem(prompt: "BẾP", options: ["Bếp ga", "Giường", "Vòi hoa sen", "Xe hơi"], correctAnswer: "Bếp ga", explanation: "Bếp ga là thiết bị nấu nướng chính trong nhà bếp."),
            ExerciseItem(prompt: "THƯ VIỆN", options: ["Sách", "Quần áo", "Công cụ", "Thực phẩm"], correctAnswer: "Sách", explanation: "Thư viện là nơi lưu trữ và cho mượn sách."),
            ExerciseItem(prompt: "GIÀY", options: ["Tất", "Mũ", "Găng tay", "Thắt lưng"], correctAnswer: "Tất", explanation: "Tất (vớ) thường được mang bên trong giày."),
            ExerciseItem(prompt: "PHI HÀNH GIA", options: ["Vũ trụ", "Đại dương", "Rừng rậm", "Sa mạc"], correctAnswer: "Vũ trụ", explanation: "Phi hành gia là người du hành vào vũ trụ."),
            ExerciseItem(prompt: "GIÁO VIÊN", options: ["Trường học", "Nhà máy", "Nhà hát", "Phòng tập"], correctAnswer: "Trường học", explanation: "Giáo viên dạy học sinh ở trường học."),
            ExerciseItem(prompt: "ĐẠI DƯƠNG", options: ["Cá", "Chim", "Bò", "Nhện"], correctAnswer: "Cá", explanation: "Cá sống dưới đại dương."),
            ExerciseItem(prompt: "XE HƠI", options: ["Lốp xe", "Cánh", "Yên ngựa", "Cánh buồm"], correctAnswer: "Lốp xe", explanation: "Lốp xe là bộ phận thiết yếu để xe hơi di chuyển."),
            ExerciseItem(prompt: "MƯA", options: ["Dù", "Kính râm", "Găng tay", "Khăn len"], correctAnswer: "Dù", explanation: "Dù (ô) che chắn cho bạn khỏi bị ướt khi trời mưa."),
            ExerciseItem(prompt: "LỬA", options: ["Khói", "Băng", "Lá cây", "Đồng xu"], correctAnswer: "Khói", explanation: "Lửa tạo ra khói."),
            ExerciseItem(prompt: "NHA SĨ", options: ["Răng", "Tóc", "Mắt", "Chân"], correctAnswer: "Răng", explanation: "Nha sĩ chuyên chăm sóc sức khỏe răng miệng."),
            ExerciseItem(prompt: "CÀ PHÊ", options: ["Ly", "Bát", "Đĩa", "Thìa"], correctAnswer: "Ly", explanation: "Cà phê thường được phục vụ trong ly hoặc tách."),
            ExerciseItem(prompt: "VƯỜN", options: ["Hoa", "Máy tính", "Bếp ga", "Áo khoác"], correctAnswer: "Hoa", explanation: "Hoa được trồng và khoe sắc trong vườn."),
            ExerciseItem(prompt: "CHÌA KHÓA", options: ["Ổ khóa", "Cửa sổ", "Mái nhà", "Sàn nhà"], correctAnswer: "Ổ khóa", explanation: "Chìa khóa được dùng để mở ổ khóa."),
            ExerciseItem(prompt: "BƯU ĐIỆN", options: ["Thư", "Bánh mì", "Thuốc", "Vé"], correctAnswer: "Thư", explanation: "Thư từ được gửi và nhận thông qua bưu điện."),
            ExerciseItem(prompt: "ĐÀN PIANO", options: ["Âm nhạc", "Hội họa", "Đất sét", "Gỗ"], correctAnswer: "Âm nhạc", explanation: "Đàn piano là một loại nhạc cụ để chơi nhạc."),
            ExerciseItem(prompt: "ONG", options: ["Mật ong", "Sữa", "Len", "Tơ tằm"], correctAnswer: "Mật ong", explanation: "Ong mật làm ra mật ong."),
            ExerciseItem(prompt: "NHỆN", options: ["Mạng nhện", "Tổ chim", "Tổ ong", "Hang"], correctAnswer: "Mạng nhện", explanation: "Nhện giăng tơ tạo thành mạng nhện."),
            ExerciseItem(prompt: "NÔNG DÂN", options: ["Máy cày", "Máy bay", "Tàu ngầm", "Tàu hỏa"], correctAnswer: "Máy cày", explanation: "Nông dân dùng máy cày để làm việc trên đồng ruộng.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying (Hoàn thành câu tục ngữ)
    private static let exercise3 = Exercise(
        title: "Hoàn thành câu tục ngữ",
        instructions: "Chọn từ đúng để hoàn thành câu tục ngữ hoặc thành ngữ quen thuộc.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Ăn quả nhớ kẻ ___ cây.", options: ["trồng", "phá", "mua", "bán"], correctAnswer: "trồng", explanation: "Tục ngữ đầy đủ là “Ăn quả nhớ kẻ trồng cây”, khuyên chúng ta biết ơn người đi trước."),
            ExerciseItem(prompt: "Gần mực thì đen, gần đèn thì ___.", options: ["sáng", "tối", "đỏ", "khóc"], correctAnswer: "sáng", explanation: "Thành ngữ chỉ sự ảnh hưởng của môi trường sống xung quanh đối với nhân cách con người."),
            ExerciseItem(prompt: "Có công mài sắt, có ngày nên ___.", options: ["kim", "búa", "dao", "kéo"], correctAnswer: "kim", explanation: "Lời khuyên về lòng kiên trì, kiên nhẫn trong mọi công việc."),
            ExerciseItem(prompt: "Uống nước nhớ ___.", options: ["nguồn", "sông", "biển", "ao"], correctAnswer: "nguồn", explanation: "Nhắc nhở về đạo lý uống nước nhớ nguồn, lòng biết ơn quê hương, tổ tiên."),
            ExerciseItem(prompt: "Lá lành đùm lá ___.", options: ["rách", "đỏ", "xanh", "vàng"], correctAnswer: "rách", explanation: "Tinh thần tương thân tương ái, giúp đỡ lẫn nhau khi gặp khó khăn."),
            ExerciseItem(prompt: "Bầu ơi thương lấy bí cùng, tuy rằng khác giống nhưng chung một ___.", options: ["giàn", "nhà", "vườn", "ruộng"], correctAnswer: "giàn", explanation: "Lời khuyên nhân dân cùng một nước phải biết thương yêu đùm bọc nhau."),
            ExerciseItem(prompt: "Tốt gỗ hơn tốt nước ___.", options: ["sơn", "vôi", "biển", "mưa"], correctAnswer: "sơn", explanation: "Khuyên ta coi trọng giá trị phẩm chất bên trong hơn vẻ bề ngoài hào nhoáng."),
            ExerciseItem(prompt: "Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi ___.", options: ["cao", "to", "dốc", "đá"], correctAnswer: "cao", explanation: "Đề cao sức mạnh của sự đoàn kết tập thể."),
            ExerciseItem(prompt: "Chớ thấy sóng cả mà ngã tay ___.", options: ["chèo", "lái", "vịn", "vẫy"], correctAnswer: "chèo", explanation: "Khuyên ta không nên nản lòng, chùn bước trước những khó khăn lớn."),
            ExerciseItem(prompt: "Khéo ăn thì no, khéo co thì ___.", options: ["ấm", "mát", "đẹp", "vui"], correctAnswer: "ấm", explanation: "Lời khuyên về cách chi tiêu, sinh hoạt tiết kiệm, hợp lý với hoàn cảnh."),
            ExerciseItem(prompt: "Trâu buộc ghét trâu ___.", options: ["ăn", "đi", "ngủ", "cày"], correctAnswer: "ăn", explanation: "Thành ngữ phê phán thói ích kỷ, ghen ăn ghét ở."),
            ExerciseItem(prompt: "Đi một ngày đàng, học một sàng ___.", options: ["khôn", "chữ", "vàng", "đá"], correctAnswer: "khôn", explanation: "Đi ra ngoài trải nghiệm giúp ta tiếp thu thêm nhiều kiến thức bổ ích."),
            ExerciseItem(prompt: "Không thầy đố mày làm ___.", options: ["nên", "xong", "được", "hoài"], correctAnswer: "nên", explanation: "Khẳng định vai trò dẫn dắt, dạy dỗ vô cùng quan trọng của người thầy."),
            ExerciseItem(prompt: "Chị ngã em ___.", options: ["nâng", "đỡ", "cười", "khóc"], correctAnswer: "nâng", explanation: "Tình cảm anh chị em trong nhà phải biết giúp đỡ, đỡ đần nhau khi vấp ngã."),
            ExerciseItem(prompt: "Có chí thì ___.", options: ["nên", "làm", "thắng", "bại"], correctAnswer: "nên", explanation: "Có ý chí quyết tâm thì việc gì cũng sẽ thành công."),
            ExerciseItem(prompt: "Đói cho sạch, rách cho ___.", options: ["thơm", "đẹp", "mát", "sang"], correctAnswer: "thơm", explanation: "Dù nghèo khổ, khó khăn vẫn phải giữ gìn phẩm hạnh, danh dự trong sạch."),
            ExerciseItem(prompt: "Lời nói chẳng mất tiền mua, lựa lời mà nói cho vừa lòng ___.", options: ["nhau", "ai", "mình", "người"], correctAnswer: "nhau", explanation: "Khuyên răn mọi người nên giao tiếp lịch sự, hòa nhã để tránh xung đột."),
            ExerciseItem(prompt: "Giặc đến nhà, đàn bà cũng ___.", options: ["đánh", "chạy", "khóc", "hát"], correctAnswer: "đánh", explanation: "Thể hiện tinh thần yêu nước quật cường của mọi tầng lớp nhân dân Việt Nam."),
            ExerciseItem(prompt: "Mật ngọt chết ___.", options: ["ruồi", "ong", "kiến", "muỗi"], correctAnswer: "ruồi", explanation: "Những lời nói đường mật, nịnh hót dễ làm người ta mất cảnh giác và chuốc họa."),
            ExerciseItem(prompt: "Kiến tha lâu đầy ___.", options: ["tổ", "hộp", "nhà", "bao"], correctAnswer: "tổ", explanation: "Sự chăm chỉ tích lũy từng chút một theo thời gian sẽ gặt hái kết quả lớn.")
        ]
    )

    // MARK: - Exercise 4: Compound Words (Ghép từ thành nghĩa)
    private static let exercise4 = Exercise(
        title: "Ghép từ thành nghĩa",
        instructions: "Chọn từ thích hợp để hoàn thành một từ ghép có nghĩa trong tiếng Việt.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "BÚT + ___", options: ["chì", "vở", "mực", "tẩy"], correctAnswer: "chì", explanation: "Bút + chì = Bút chì (một loại bút dùng ngòi than chì)."),
            ExerciseItem(prompt: "XE + ___", options: ["đạp", "chạy", "lăn", "đi"], correctAnswer: "đạp", explanation: "Xe + đạp = Xe đạp."),
            ExerciseItem(prompt: "NHÀ + ___", options: ["sách", "đọc", "học", "mua"], correctAnswer: "sách", explanation: "Nhà + sách = Nhà sách."),
            ExerciseItem(prompt: "ĐIỆN + ___", options: ["thoại", "nghe", "nói", "bấm"], correctAnswer: "thoại", explanation: "Điện + thoại = Điện thoại."),
            ExerciseItem(prompt: "MÁY + ___", options: ["tính", "đếm", "viết", "học"], correctAnswer: "tính", explanation: "Máy + tính = Máy tính."),
            ExerciseItem(prompt: "ÁO + ___", options: ["mưa", "ướt", "khô", "gió"], correctAnswer: "mưa", explanation: "Áo + mưa = Áo mưa."),
            ExerciseItem(prompt: "NƯỚC + ___", options: ["mắt", "mũi", "tai", "miệng"], correctAnswer: "mắt", explanation: "Nước + mắt = Nước mắt."),
            ExerciseItem(prompt: "BÁNH + ___", options: ["mì", "cơm", "khoai", "sắn"], correctAnswer: "mì", explanation: "Bánh + mì = Bánh mì."),
            ExerciseItem(prompt: "CỬA + ___", options: ["sổ", "nhìn", "gỗ", "kính"], correctAnswer: "sổ", explanation: "Cửa + sổ = Cửa sổ."),
            ExerciseItem(prompt: "BÀN + ___", options: ["ăn", "uống", "ngồi", "đứng"], correctAnswer: "ăn", explanation: "Bàn + ăn = Bàn ăn."),
            ExerciseItem(prompt: "HOA + ___", options: ["hồng", "đỏ", "xanh", "vàng"], correctAnswer: "hồng", explanation: "Hoa + hồng = Hoa hồng."),
            ExerciseItem(prompt: "ĐỒNG + ___", options: ["hồ", "ao", "sông", "suối"], correctAnswer: "hồ", explanation: "Đồng + hồ = Đồng hồ."),
            ExerciseItem(prompt: "SÁCH + ___", options: ["vở", "bút", "thước", "mực"], correctAnswer: "vở", explanation: "Sách + vở = Sách vở."),
            ExerciseItem(prompt: "BÀN + ___", options: ["ghế", "tủ", "giường", "nhà"], correctAnswer: "ghế", explanation: "Bàn + ghế = Bàn ghế."),
            ExerciseItem(prompt: "HẢI + ___", options: ["sản", "vật", "đồ", "dương"], correctAnswer: "sản", explanation: "Hải + sản = Hải sản."),
            ExerciseItem(prompt: "DƯA + ___", options: ["hấu", "gang", "chuột", "lưới"], correctAnswer: "hấu", explanation: "Dưa + hấu = Dưa hấu."),
            ExerciseItem(prompt: "KÍNH + ___", options: ["mắt", "mũi", "tai", "miệng"], correctAnswer: "mắt", explanation: "Kính + mắt = Kính mắt (mắt kính)."),
            ExerciseItem(prompt: "BÁNH + ___", options: ["quy", "kem", "ngọt", "mặn"], correctAnswer: "quy", explanation: "Bánh + quy = Bánh quy."),
            ExerciseItem(prompt: "CÀ + ___", options: ["phê", "pháo", "tím", "chua"], correctAnswer: "phê", explanation: "Cà + phê = Cà phê."),
            ExerciseItem(prompt: "MƯA + ___", options: ["rào", "ướt", "to", "nhỏ"], correctAnswer: "rào", explanation: "Mưa + rào = Mưa rào.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix (Tiền tố và Hậu tố)
    private static let exercise5 = Exercise(
        title: "Tiền tố và Hậu tố",
        instructions: "Chọn thành tố từ vựng (tiền tố/hậu tố) đúng dựa theo nghĩa được mô tả.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Tiền tố nào biểu thị ý nghĩa “không” trong từ “VÔ GIA CƯ”?", options: ["vô-", "bất-", "siêu-", "tái-"], correctAnswer: "vô-", explanation: "Tiền tố “vô-” gốc Hán có nghĩa là không, vô gia cư là không có nhà ở."),
            ExerciseItem(prompt: "Hậu tố nào chỉ người có chuyên môn cao hoặc học vị trong từ “BÁC SĨ”?", options: ["-sĩ", "-giả", "-viên", "-học"], correctAnswer: "-sĩ", explanation: "Hậu tố “-sĩ” chỉ người có trình độ chuyên môn hoặc học vấn cao."),
            ExerciseItem(prompt: "Từ nào chứa tiền tố “tái-” biểu thị hành động thực hiện lại một lần nữa?", options: ["tái bản", "bán kết", "siêu âm", "vô lý"], correctAnswer: "tái bản", explanation: "Tiền tố “tái-” nghĩa là lặp lại, tái bản là in ấn lại tác phẩm."),
            ExerciseItem(prompt: "Tiền tố nào biểu thị tính chất “rất lớn” hoặc vượt trội trong từ “SIÊU THỊ”?", options: ["siêu-", "vô-", "tiền-", "bất-"], correctAnswer: "siêu-", explanation: "Tiền tố “siêu-” mang ý nghĩa vượt trên mức bình thường, cực kỳ to lớn."),
            ExerciseItem(prompt: "Tiền tố nào chỉ hành động tự bản thân mình thực hiện trong từ “TỰ HỌC”?", options: ["tự-", "đồng-", "phản-", "đa-"], correctAnswer: "tự-", explanation: "Tiền tố “tự-” biểu thị việc bản thân tự vận động, làm việc đó."),
            ExerciseItem(prompt: "Hậu tố nào chỉ người sáng tạo ra tác phẩm hoặc viết lách trong từ “TÁC GIẢ”?", options: ["-giả", "-sĩ", "-viên", "-học"], correctAnswer: "-giả", explanation: "Hậu tố “-giả” gốc Hán chỉ người thực hiện hành vi, ở đây là người viết."),
            ExerciseItem(prompt: "Tiền tố nào biểu thị thời gian “trước” trong từ “TIỀN SẢN”?", options: ["tiền-", "hậu-", "tân-", "đồng-"], correctAnswer: "tiền-", explanation: "Tiền tố “tiền-” chỉ thời điểm trước, chuẩn bị diễn ra."),
            ExerciseItem(prompt: "Tiền tố nào biểu thị thời gian “sau” trong từ “HẬU SẢN”?", options: ["hậu-", "tiền-", "tân-", "phản-"], correctAnswer: "hậu-", explanation: "Tiền tố “hậu-” mang ý nghĩa sau, diễn ra phía sau."),
            ExerciseItem(prompt: "Tiền tố nào biểu thị số lượng “nhiều” trong từ “ĐA DẠNG”?", options: ["đa-", "bán-", "vô-", "tân-"], correctAnswer: "đa-", explanation: "Tiền tố “đa-” có nghĩa là nhiều, phong phú."),
            ExerciseItem(prompt: "Hậu tố nào chỉ một ngành học, lĩnh vực nghiên cứu trong từ “TOÁN HỌC”?", options: ["-học", "-viên", "-giả", "-sĩ"], correctAnswer: "-học", explanation: "Hậu tố “-học” chỉ một bộ môn khoa học hoặc nghiên cứu."),
            ExerciseItem(prompt: "Hậu tố nào chỉ người làm việc, thành viên trong một tổ chức như “NHÂN VIÊN”?", options: ["-viên", "-giả", "-sĩ", "-học"], correctAnswer: "-viên", explanation: "Hậu tố “-viên” chỉ người làm một công việc nhất định hoặc là thành viên."),
            ExerciseItem(prompt: "Tiền tố nào chỉ sự “không” hoặc trái quy luật trong từ “BẤT HẠNH”?", options: ["bất-", "vô-", "siêu-", "tái-"], correctAnswer: "bất-", explanation: "Tiền tố “bất-” có nghĩa là không, bất hạnh là không được may mắn hạnh phúc."),
            ExerciseItem(prompt: "Tiền tố nào chỉ tính chất “một nửa” trong từ “BÁN KẾT”?", options: ["bán-", "đa-", "tân-", "siêu-"], correctAnswer: "bán-", explanation: "Tiền tố “bán-” có nghĩa là một nửa."),
            ExerciseItem(prompt: "Hậu tố nào chỉ quá trình chuyển đổi hoặc làm cho trở thành trong từ “CÔNG NGHIỆP HÓA”?", options: ["-hóa", "-học", "-viên", "-sĩ"], correctAnswer: "-hóa", explanation: "Hậu tố “-hóa” chỉ quá trình làm cho có tính chất hay trạng thái nhất định."),
            ExerciseItem(prompt: "Tiền tố nào chỉ sự “mới” trong từ “TÂN BINH”?", options: ["tân-", "cựu-", "đồng-", "phản-"], correctAnswer: "tân-", explanation: "Tiền tố “tân-” nghĩa là mới, tân binh là người lính mới nhập ngũ."),
            ExerciseItem(prompt: "Hậu tố nào chỉ người hoạt động nghệ thuật nói chung trong từ “NGHỆ SĨ”?", options: ["-sĩ", "-giả", "-viên", "-học"], correctAnswer: "-sĩ", explanation: "Hậu tố “-sĩ” dùng để chỉ người hoạt động chuyên môn cao trong nghệ thuật."),
            ExerciseItem(prompt: "Tiền tố nào chỉ sự “đối kháng, ngược lại” trong từ “PHẢN ĐỐI”?", options: ["phản-", "đồng-", "tự-", "tái-"], correctAnswer: "phản-", explanation: "Tiền tố “phản-” chỉ xu hướng đi ngược lại với cái ban đầu."),
            ExerciseItem(prompt: "Hậu tố nào chỉ người đọc, người thưởng thức sách báo trong từ “ĐỘC GIẢ”?", options: ["-giả", "-viên", "-sĩ", "-học"], correctAnswer: "-giả", explanation: "Hậu tố “-giả” gốc Hán chỉ người, độc giả là người đọc."),
            ExerciseItem(prompt: "Tiền tố nào chỉ sự “cùng chung, hợp tác” trong từ “ĐỒNG NGHIỆP”?", options: ["đồng-", "phản-", "tự-", "vô-"], correctAnswer: "đồng-", explanation: "Tiền tố “đồng-” chỉ sự cùng chung hoàn cảnh, công việc."),
            ExerciseItem(prompt: "Hậu tố nào chỉ người có học vị học vấn cao nhất trong hệ đào tạo đại học ở từ “TIẾN SĨ”?", options: ["-sĩ", "-giả", "-viên", "-học"], correctAnswer: "-sĩ", explanation: "Hậu tố “-sĩ” thể hiện người có chuyên môn học vấn đỉnh cao.")
        ]
    )

    // MARK: - Exercise 6: Story Recall (Nhớ lại câu chuyện)
    private static let exercise6 = Exercise(
        title: "Nhớ lại câu chuyện",
        instructions: "Đọc kỹ câu chuyện ngắn sau đây rồi trả lời câu hỏi trắc nghiệm.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Maria đi đến cửa hàng bách hóa để mua sữa và bánh mì. Cô ấy đã bỏ quên ví tiền của mình trên bàn bếp. Maria đã để quên gì ở nhà?", options: ["Ví tiền", "Chìa khóa", "Danh sách mua sắm", "Điện thoại"], correctAnswer: "Ví tiền", explanation: "Câu chuyện cho biết cô đã quên ví tiền trên bàn bếp."),
            ExerciseItem(prompt: "Thomas thức dậy sớm vào thứ Bảy để đi câu cá. Anh ấy câu được một con cá hồi lớn nhưng phải thả lại vì nó quá nhỏ so với quy định. Thomas câu được loại cá gì?", options: ["Cá hồi", "Cá chép", "Cá vược", "Cá trê"], correctAnswer: "Cá hồi", explanation: "Câu chuyện ghi rõ anh ấy câu được một con cá hồi."),
            ExerciseItem(prompt: "Arthur đỗ chiếc xe hơi màu xanh dương dưới tán cây sồi mát mẻ. Khi quay lại, anh thấy xe bị phủ đầy lá vàng. Xe của Arthur có màu gì?", options: ["Màu xanh dương", "Màu vàng", "Màu đỏ", "Màu xanh lá"], correctAnswer: "Màu xanh dương", explanation: "Câu chuyện đề cập Arthur đỗ chiếc xe màu xanh dương."),
            ExerciseItem(prompt: "Linda nướng một chiếc bánh kem sô-cô-la cho tiệc sinh nhật của con gái cô ấy. Cô ấy cắm mười cây nến màu đỏ lên bánh. Linda đã cắm bao nhiêu cây nến?", options: ["Mười", "Năm", "Tám", "Mười hai"], correctAnswer: "Mười", explanation: "Câu chuyện nói rằng cô cắm mười cây nến màu đỏ trên chiếc bánh."),
            ExerciseItem(prompt: "Robert đến bưu điện để gửi một kiện hàng cho em trai mình ở Chicago. Nhân viên bưu điện báo kiện hàng sẽ đến vào thứ Ba. Em trai Robert sống ở đâu?", options: ["Chicago", "New York", "Boston", "Miami"], correctAnswer: "Chicago", explanation: "Câu chuyện cho biết em trai của Robert sống ở Chicago."),
            ExerciseItem(prompt: "Sarah đã mua một đôi giày chạy bộ mới vào hôm qua. Chúng có màu xanh lá cây sáng với các sọc trắng. Đôi giày mới của Sarah có màu gì?", options: ["Xanh lá cây sáng", "Xanh dương", "Đỏ", "Đen"], correctAnswer: "Xanh lá cây sáng", explanation: "Câu chuyện nói rằng đôi giày có màu xanh lá sáng với các sọc trắng."),
            ExerciseItem(prompt: "James đang đi bộ trong công viên thì trời đổ mưa. Anh ấy mở chiếc ô màu vàng của mình để tránh bị ướt. Chiếc ô của James có màu gì?", options: ["Màu vàng", "Màu đỏ", "Màu xanh dương", "Màu đen"], correctAnswer: "Màu vàng", explanation: "Câu chuyện nói anh ấy đã mở chiếc ô màu vàng."),
            ExerciseItem(prompt: "Tiệm bánh địa phương đóng cửa vào thứ Hai để sửa chữa. Họ dự kiến mở cửa lại vào lúc sáu giờ sáng thứ Ba. Tiệm bánh đã đóng cửa vào ngày nào?", options: ["Thứ Hai", "Thứ Ba", "Thứ Tư", "Chủ Nhật"], correctAnswer: "Thứ Hai", explanation: "Câu chuyện nói rằng tiệm bánh đóng cửa vào thứ Hai."),
            ExerciseItem(prompt: "Anna gọi thợ sửa ống nước vì bồn rửa bát trong bếp bị rò rỉ nước. Người thợ đến sau một tiếng và sửa xong đường ống. Tại sao Anna gọi thợ sửa ống nước?", options: ["Bồn rửa bát bị rò rỉ", "Bếp ga bị hỏng", "Đèn bị tắt", "Cửa bị khóa"], correctAnswer: "Bồn rửa bát bị rò rỉ", explanation: "Câu chuyện nói cô gọi thợ vì bồn rửa bát bị rò rỉ nước."),
            ExerciseItem(prompt: "David dẫn chú chó của mình, tên là Max, đi dạo quanh khu phố. Max nhìn thấy một con sóc và sủa ầm ĩ. Tên chú chó của David là gì?", options: ["Max", "Buddy", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "Câu chuyện cho biết chú chó của David tên là Max."),
            ExerciseItem(prompt: "Helen định nấu súp rau củ cho bữa tối. Cô ấy nhận ra nhà đã hết cà rốt nên đã dùng khoai tây để thay thế. Helen đã hết nguyên liệu nào?", options: ["Cà rốt", "Khoai tây", "Hành tây", "Cần tây"], correctAnswer: "Cà rốt", explanation: "Câu chuyện nói cô ấy nhận ra nhà đã hết cà rốt."),
            ExerciseItem(prompt: "Peter đặt một chiếc pizza xúc xích và một chai nước ngọt cho bữa trưa. Tổng chi phí là mười lăm đô-la. Bữa trưa của Peter trị giá bao nhiêu?", options: ["Mười lăm đô-la", "Mười đô-la", "Hai mươi đô-la", "Mười hai đô-la"], correctAnswer: "Mười lăm đô-la", explanation: "Câu chuyện nêu rõ tổng chi phí là mười lăm đô-la."),
            ExerciseItem(prompt: "Alice đến thư viện để mượn một cuốn sách về làm vườn. Cô ấy cũng mượn thêm một đĩa DVD lịch sử. Cuốn sách Alice mượn viết về chủ đề gì?", options: ["Làm vườn", "Lịch sử", "Nấu ăn", "Du lịch"], correctAnswer: "Làm vườn", explanation: "Câu chuyện nói cô mượn sách về làm vườn."),
            ExerciseItem(prompt: "George bắt chuyến tàu sáng sớm vào thành phố để phỏng vấn xin việc. Chuyến tàu bị trễ mười lăm phút do bảo trì đường ray. Tại sao tàu bị trễ?", options: ["Bảo trì đường ray", "Bão lớn", "Mất điện", "Thiếu nhân viên"], correctAnswer: "Bảo trì đường ray", explanation: "Câu chuyện nêu rõ tàu bị trễ vì bảo trì đường ray."),
            ExerciseItem(prompt: "Nancy đến cửa hàng hoa để mua hoa hồng đỏ. Cửa hàng hết hàng nên cô đã mua hoa cẩm chướng hồng. Nancy cuối cùng đã mua loại hoa nào?", options: ["Hoa cẩm chướng hồng", "Hoa hồng đỏ", "Hoa tulip vàng", "Hoa ly trắng"], correctAnswer: "Hoa cẩm chướng hồng", explanation: "Câu chuyện cho biết cô đã mua hoa cẩm chướng hồng thay thế.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences (Dãy số logic)
    private static let exercise7 = Exercise(
        title: "Dãy số logic",
        instructions: "Số tiếp theo trong dãy số dưới đây là số nào?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "Quy luật là cộng thêm 2 vào số trước đó."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "Quy luật là cộng thêm 5 vào số trước đó."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "Quy luật là cộng thêm 10 vào số trước đó."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "Quy luật là cộng thêm 3 vào số trước đó."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "Quy luật là trừ đi 1 so với số trước đó."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "Quy luật là trừ đi 2 so với số trước đó."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "Dãy số lẻ tăng dần bằng cách cộng thêm 2 đơn vị."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "Quy luật là cộng thêm 4 vào số trước đó."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "Quy luật là trừ đi 5 so với số trước đó."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "Quy luật là trừ đi 10 so với số trước đó."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "Quy luật là cộng thêm 11 vào số trước đó."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "Quy luật là cộng thêm 2 vào số trước đó."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "Quy luật là cộng thêm 3 vào số trước đó."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "Quy luật là trừ đi 3 so với số trước đó."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "Quy luật là cộng thêm 7 vào số trước đó."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "Quy luật là trừ đi 4 so với số trước đó."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "Quy luật là cộng thêm 6 vào số trước đó."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "Quy luật là cộng thêm 5 vào số trước đó."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "Quy luật là trừ đi 10 so với số trước đó."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "Quy luật là cộng thêm 2 vào số trước đó.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect (Nguyên nhân và Kết quả)
    private static let exercise8 = Exercise(
        title: "Nguyên nhân và Kết quả",
        instructions: "Chọn kết quả hợp lý nhất cho tình huống được mô tả.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Bạn để kem trên bàn bếp suốt hai tiếng vào một ngày ấm áp. Điều gì xảy ra?", options: ["Nó cứng hơn", "Nó tan chảy", "Nó đổi màu", "Nó biến mất"], correctAnswer: "Nó tan chảy", explanation: "Nhiệt độ nóng làm kem đông lạnh bị tan chảy."),
            ExerciseItem(prompt: "Bạn quên tưới nước cho cây cảnh trong nhà suốt ba tuần. Kết quả là gì?", options: ["Nó nở hoa", "Nó vẫn xanh tốt", "Nó bị héo và khô héo", "Nó chuyển màu xanh dương"], correctAnswer: "Nó bị héo và khô héo", explanation: "Cây xanh cần nước để sống; thiếu nước chúng sẽ héo úa rồi chết khô."),
            ExerciseItem(prompt: "Mây đen giông bão che khuất mặt trời và sấm sét vang rền. Điều gì sắp xảy ra tiếp theo?", options: ["Trời sẽ mưa", "Thời tiết nóng hơn", "Tuyết rơi ngay lập tức", "Các vì sao xuất hiện"], correctAnswer: "Trời sẽ mưa", explanation: "Mây đen giông bão và sấm sét là dấu hiệu báo trước trời sắp mưa."),
            ExerciseItem(prompt: "Bạn làm rơi một chiếc bát thủy tinh xuống sàn gạch cứng. Kết quả là gì?", options: ["Nó nảy ngược lên", "Nó đổi màu", "Nó vỡ thành nhiều mảnh", "Nó biến thành nước"], correctAnswer: "Nó vỡ thành nhiều mảnh", explanation: "Thủy tinh giòn nên khi va chạm mạnh với bề mặt cứng sẽ bị vỡ vụn."),
            ExerciseItem(prompt: "Bạn đặt một lát bánh mì vào máy nướng và đặt ở mức nhiệt cao nhất rồi bỏ quên. Điều gì xảy ra?", options: ["Nó trở nên sũng nước", "Nó cháy đen thui", "Nó vẫn mềm và trắng", "Nó biến mất"], correctAnswer: "Nó cháy đen thui", explanation: "Nhiệt độ quá cao trong máy nướng sẽ làm cháy bánh mì."),
            ExerciseItem(prompt: "Bạn để đèn pha xe hơi bật suốt cả đêm. Điều gì xảy ra vào buổi sáng?", options: ["Xe chạy nhanh hơn", "Bình ắc quy bị hết điện", "Xe đổi màu", "Động cơ nổ máy ngay lập tức"], correctAnswer: "Bình ắc quy bị hết điện", explanation: "Để đèn xe bật liên tục làm cạn kiệt năng lượng của bình ắc quy."),
            ExerciseItem(prompt: "Bão tuyết rơi dày đặc suốt cả đêm, tích tụ một lớp dày 15 cm. Điều gì xảy ra với đường phố?", options: ["Chúng vẫn khô ráo", "Chúng trở nên trơn trượt và đầy tuyết", "Chúng chuyển màu xanh", "Chúng bốc hơi"], correctAnswer: "Chúng trở nên trơn trượt và đầy tuyết", explanation: "Tuyết rơi nhiều tích tụ trên đường làm mặt đường trơn trượt và nguy hiểm cho xe cộ."),
            ExerciseItem(prompt: "Bạn đặt khay nước vào ngăn đá tủ lạnh. Điều gì xảy ra sau vài giờ?", options: ["Nước sôi lên", "Nước đông thành đá", "Nước bốc hơi", "Nước đổi màu"], correctAnswer: "Nước đông thành đá", explanation: "Nhiệt độ đóng băng sẽ chuyển nước lỏng thành nước đá rắn."),
            ExerciseItem(prompt: "Bạn đi tất len dày và mang bốt da nặng vào một ngày hè nóng bức. Chân bạn sẽ thế nào?", options: ["Chúng cảm thấy lạnh", "Chúng vẫn khô ráo", "Chúng bị nóng và đổ mồ hôi", "Chúng chuyển sang màu xanh"], correctAnswer: "Chúng bị nóng và đổ mồ hôi", explanation: "Lớp vải dày giữ nhiệt khiến chân bị hầm nóng và đổ nhiều mồ hôi."),
            ExerciseItem(prompt: "Một người không ngủ suốt 24 giờ liên tục. Họ sẽ cảm thấy như thế nào?", options: ["Cực kỳ sung mãn", "Mệt mỏi và buồn ngủ", "Đói bụng", "Rất hạnh phúc"], correctAnswer: "Mệt mỏi và buồn ngủ", explanation: "Thiếu ngủ dẫn đến cơ thể bị kiệt sức và buồn ngủ."),
            ExerciseItem(prompt: "Bạn thêm đường vào tách trà nóng rồi khuấy đều. Đường biến đi đâu?", options: ["Biến thành đá", "Biến mất khỏi tách", "Hòa tan vào trà", "Bị cháy"], correctAnswer: "Hòa tan vào trà", explanation: "Khuấy đường trong nước nóng giúp đường nhanh chóng hòa tan."),
            ExerciseItem(prompt: "Bạn bước ra ngoài khi trời đang mưa to mà không mang dù hay áo mưa. Kết quả là gì?", options: ["Bạn vẫn khô ráo", "Quần áo bạn bị ướt sũng", "Bạn chuyển màu xanh", "Bạn thấy ấm hơn"], correctAnswer: "Quần áo bạn bị ướt sũng", explanation: "Nước mưa rơi trực tiếp lên người khiến quần áo bị thấm nước."),
            ExerciseItem(prompt: "Bạn thổi hơi vào quả bóng bay cho đến khi nó quá căng. Điều gì xảy ra?", options: ["Nó bay lên mặt trăng", "Nó bị bể (nổ)", "Nó biến thành con chim", "Nó co lại"], correctAnswer: "Nó bị bể (nổ)", explanation: "Áp suất không khí quá cao vượt quá giới hạn co giãn của quả bóng làm nó nổ tung."),
            ExerciseItem(prompt: "Bạn tắt hết đèn trong một căn phòng kín không có cửa sổ vào ban đêm. Điều gì xảy ra?", options: ["Căn phòng sáng hơn", "Căn phòng trở nên tối đen như mực", "Căn phòng chuyển màu xanh", "Căn phòng tràn đầy ánh sáng"], correctAnswer: "Căn phòng trở nên tối đen như mực", explanation: "Không có nguồn sáng nào đồng nghĩa với việc không gian chìm vào bóng tối hoàn toàn."),
            ExerciseItem(prompt: "Bạn không ôn tập hay chuẩn bị gì trước một kỳ thi rất khó. Kết quả dễ xảy ra nhất là gì?", options: ["Bạn đạt điểm tuyệt đối", "Bạn làm bài rất kém", "Bạn quên mất tên mình", "Kỳ thi bị hủy bỏ"], correctAnswer: "Bạn làm bài rất kém", explanation: "Không có sự chuẩn bị chu đáo khiến việc thi đỗ những môn khó là bất khả thi.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This? (Đoán nhận cảm xúc)
    private static let exercise9 = Exercise(
        title: "Đoán nhận cảm xúc",
        instructions: "Đọc tình huống và chọn cảm xúc mà nhân vật có khả năng cao đang trải qua.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Sarah vừa biết tin mình đạt giải nhất trong cuộc thi. Cô ấy cảm thấy thế nào?", options: ["Buồn bã", "Tức giận", "Vui mừng", "Sợ hãi"], correctAnswer: "Vui mừng", explanation: "Đạt giải nhất cuộc thi là một sự kiện đáng mừng và đầy phấn khích."),
            ExerciseItem(prompt: "David nghe thấy tiếng động lớn, lạ lẫm dưới nhà vào lúc nửa đêm. Anh ấy cảm thấy thế nào?", options: ["Vui vẻ", "Sợ hãi", "Nhạt nhẽo", "Háo hức"], correctAnswer: "Sợ hãi", explanation: "Những tiếng động lạ giữa đêm tối thường kích hoạt sự sợ hãi, cảnh giác."),
            ExerciseItem(prompt: "Người bạn thân thiết nhất của Mary sắp chuyển đến sống ở một bang khác rất xa. Mary thấy thế nào?", options: ["Buồn bã", "Tức giận", "Háo hức", "Ghen tị"], correctAnswer: "Buồn bã", explanation: "Chia tay bạn bè thân thiết mang lại cảm giác buồn bã, tiếc nuối."),
            ExerciseItem(prompt: "Một người chen ngang lên trước John khi anh đang xếp hàng dài ở cửa hàng. John cảm thấy thế nào?", options: ["Vui vẻ", "Sợ hãi", "Bực mình", "Xấu hổ"], correctAnswer: "Bực mình", explanation: "Hành vi vô lịch sự của người khác thường gây ra sự bực bội, khó chịu."),
            ExerciseItem(prompt: "Emily chuẩn bị thuyết trình trước một lượng khán giả rất đông. Cô ấy cảm thấy thế nào?", options: ["Hồi hộp", "Chán nản", "Buồn bã", "Tức giận"], correctAnswer: "Hồi hộp", explanation: "Đứng nói trước đám đông thường gây tâm lý căng thẳng, lo lắng, hồi hộp."),
            ExerciseItem(prompt: "Chuyến bay của Robert bị hủy khiến kỳ nghỉ của anh bị lùi lại mất hai ngày. Anh ấy cảm thấy thế nào?", options: ["Hụt hẫng bực bội", "Vui vẻ", "Sợ hãi", "Tự hào"], correctAnswer: "Hụt hẫng bực bội", explanation: "Kế hoạch bị hủy đột ngột làm nảy sinh cảm giác hụt hẫng, bực bội."),
            ExerciseItem(prompt: "Con trai của Lisa tốt nghiệp đại học với tấm bằng danh dự xuất sắc. Lisa cảm thấy thế nào?", options: ["Tự hào", "Ghen tị", "Buồn bã", "Sợ hãi"], correctAnswer: "Tự hào", explanation: "Thành công lớn của con cái khiến cha mẹ vô cùng hãnh diện, tự hào."),
            ExerciseItem(prompt: "Nhân viên bưu điện đang giải thích một biểu mẫu phức tạp lần thứ tư nhưng Arthur vẫn chưa hiểu. Arthur cảm thấy thế nào?", options: ["Bối rối", "Vui vẻ", "Háo hức", "Tự hào"], correctAnswer: "Bối rối", explanation: "Không nắm bắt được thông tin sau nhiều lần giải thích tạo cảm giác bối rối, mù mờ."),
            ExerciseItem(prompt: "James đã ngồi chờ ở phòng chờ yên tĩnh suốt hai tiếng đồng hồ mà không có gì để đọc. Anh cảm thấy thế nào?", options: ["Chán chường", "Sợ hãi", "Tức giận", "Vui vẻ"], correctAnswer: "Chán chường", explanation: "Chờ đợi quá lâu trong trạng thái thiếu hoạt động kích thích gây ra sự chán chường."),
            ExerciseItem(prompt: "Gia đình của Ellen đã tổ chức cho cô một bữa tiệc sinh nhật bất ngờ với đầy đủ bạn bè. Cô cảm thấy thế nào?", options: ["Ngạc nhiên", "Tức giận", "Buồn bã", "Sợ hãi"], correctAnswer: "Ngạc nhiên", explanation: "Bữa tiệc bí mật bất ngờ mang lại cảm giác ngạc nhiên vô cùng thú vị."),
            ExerciseItem(prompt: "Một chú chó hoang lao ra sủa dữ dội vào Karen khi cô đang đi dạo. Cô thấy thế nào?", options: ["Kinh hãi", "Vui vẻ", "Nhạt nhẽo", "Tự hào"], correctAnswer: "Kinh hãi", explanation: "Động vật hung dữ bất thình lình tấn công làm người ta kinh hãi, hoảng sợ."),
            ExerciseItem(prompt: "William làm mất chiếc nhẫn cưới trong lúc làm vườn. Anh ấy cảm thấy thế nào?", options: ["Tiếc nuối đau lòng", "Háo hức", "Nhạt nhẽo", "Bình tĩnh"], correctAnswer: "Tiếc nuối đau lòng", explanation: "Mất đi kỷ vật thiêng liêng khiến người ta buồn bã, đau lòng."),
            ExerciseItem(prompt: "Patricia nhận được một tấm thiệp chúc mừng tuyệt đẹp cùng hoa từ các cháu của mình. Bà cảm thấy thế nào?", options: ["Được yêu thương", "Tức giận", "Sợ hãi", "Bối rối"], correctAnswer: "Được yêu thương", explanation: "Sự quan tâm ấm áp từ người thân mang lại cảm nhận được yêu thương, trân trọng."),
            ExerciseItem(prompt: "Cửa hàng tạp hóa hết loại bánh mì đặc biệt mà Richard thích nên anh phải chọn mua hiệu khác. Anh thấy thế nào?", options: ["Hơi hụt hẫng", "Khiếp sợ", "Giận dữ", "Cực kỳ vui"], correctAnswer: "Hơi hụt hẫng", explanation: "Không mua được món đồ ưa thích nhỏ nhặt gây ra cảm giác hơi hụt hẫng dở dang."),
            ExerciseItem(prompt: "Charles dành cả buổi chiều lắp ráp kệ sách và nó trông thật hoàn hảo. Anh thấy thế nào?", options: ["Mãn nguyện", "Buồn bã", "Sợ hãi", "Chán chường"], correctAnswer: "Mãn nguyện", explanation: "Hoàn thành tốt công việc khó nhọc mang lại cảm giác thỏa mãn, mãn nguyện."),
            ExerciseItem(prompt: "Linda vô tình làm rơi khay đựng đồ uống trong một nhà hàng yên tĩnh. Cô cảm thấy thế nào?", options: ["Xấu hổ", "Vui vẻ", "Tức giận", "Chán nản"], correctAnswer: "Xấu hổ", explanation: "Gây ra sự cố ồn ào ở nơi công cộng làm người ta cảm thấy ngượng ngùng, xấu hổ."),
            ExerciseItem(prompt: "Thomas chuẩn bị bay đi Hawaii cho chuyến du lịch đầu tiên vào sáng mai. Anh ấy cảm thấy thế nào?", options: ["Háo hức", "Buồn bã", "Tức giận", "Chán chường"], correctAnswer: "Háo hức", explanation: "Chuẩn bị đi nghỉ mát xa xôi tạo tâm trạng háo hức mong chờ."),
            ExerciseItem(prompt: "Chú mèo cưng của Susan trở về nhà an toàn sau ba ngày mất tích. Cô cảm thấy thế nào?", options: ["Nhẹ nhõm", "Tức giận", "Sợ hãi", "Bối rối"], correctAnswer: "Nhẹ nhõm", explanation: "Mối lo lớn được giải quyết êm đẹp mang lại cảm xúc nhẹ nhõm, trút bỏ gánh nặng."),
            ExerciseItem(prompt: "Đường truyền Internet cứ bị ngắt kết nối mỗi năm phút khi George đang cố gắng làm việc. Anh thấy thế nào?", options: ["Cực kỳ bực bội", "Sợ hãi", "Vui vẻ", "Chán chường"], correctAnswer: "Cực kỳ bực bội", explanation: "Công việc bị gián đoạn liên tục gây ức chế, bực mình."),
            ExerciseItem(prompt: "Helen ngâm mình trong bồn nước ấm thật lâu sau một ngày làm việc căng thẳng. Cô thấy thế nào?", options: ["Thư giãn", "Tức giận", "Sợ hãi", "Lo lắng"], correctAnswer: "Thư giãn", explanation: "Tắm nước ấm giúp cơ thể phục hồi, xua tan mệt mỏi và cảm thấy thư giãn.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here? (Có gì sai ở đây?)
    private static let exercise10 = Exercise(
        title: "Có gì sai ở đây?",
        instructions: "Tìm điểm bất hợp lý hoặc không thể xảy ra trong câu văn.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "John đã ăn bữa sáng vào lúc nửa đêm trước khi đi ngủ.", options: ["Mọi người không ăn đồ ăn", "Bữa sáng là bữa ăn buổi sáng chứ không phải nửa đêm", "John không nên ngủ", "Nửa đêm là vào buổi chiều"], correctAnswer: "Bữa sáng là bữa ăn buổi sáng chứ không phải nửa đêm", explanation: "Theo định nghĩa, bữa sáng là bữa ăn đầu ngày vào buổi sáng."),
            ExerciseItem(prompt: "Con chó sủa người đưa thư rồi bay qua mái nhà để bắt chim.", options: ["Chó không biết sủa", "Chó không thể bay", "Người đưa thư không đưa thư", "Chim không biết bay"], correctAnswer: "Chó không thể bay", explanation: "Chó không có cánh nên không thể bay được."),
            ExerciseItem(prompt: "Sarah mặc chiếc áo khoác mùa đông ấm áp và đeo găng tay để đi bơi ở hồ bơi ngoài trời vào tháng Bảy nắng nóng.", options: ["Mọi người không bơi vào tháng Bảy", "Không ai mặc áo khoác mùa đông và đeo găng tay để bơi", "Hồ bơi ngoài trời không tồn tại", "Áo khoác được mặc vào mùa hè"], correctAnswer: "Không ai mặc áo khoác mùa đông và đeo găng tay để bơi", explanation: "Đi bơi thì cần trang phục bơi, trang phục mùa đông cản trở việc bơi dưới nước."),
            ExerciseItem(prompt: "Chiếc đồng hồ trên tường điểm mười ba tiếng, thế là Arthur biết đã đến lúc uống cà phê sáng.", options: ["Đồng hồ không treo trên tường", "Đồng hồ thông thường chỉ hiển thị tối đa mười hai giờ", "Cà phê không phải thức uống buổi sáng", "Arthur không uống cà phê"], correctAnswer: "Đồng hồ thông thường chỉ hiển thị tối đa mười hai giờ", explanation: "Đồng hồ mặt số kim truyền thống chỉ có các mốc từ một đến mười hai."),
            ExerciseItem(prompt: "Paul đạp chiếc xe đạp băng qua hồ nước sâu để đi thăm bạn mình.", options: ["Xe đạp không thể di chuyển trên mặt nước", "Hồ nước không có cá", "Bạn bè không đến thăm nhau", "Xe đạp không có bàn đạp"], correctAnswer: "Xe đạp không thể di chuyển trên mặt nước", explanation: "Xe đạp là phương tiện đường bộ, sẽ chìm khi xuống nước."),
            ExerciseItem(prompt: "Linda luộc vài viên đá lạnh trong nồi để làm nước uống mát lạnh.", options: ["Viên đá lạnh không tồn tại", "Luộc đá lạnh sẽ tạo ra nước nóng chứ không phải nước mát", "Nồi không chứa được đá", "Nước uống không tốt cho sức khỏe"], correctAnswer: "Luộc đá lạnh sẽ tạo ra nước nóng chứ không phải nước mát", explanation: "Đun sôi sẽ làm nóng nước lên thay vì giữ nhiệt độ mát lạnh."),
            ExerciseItem(prompt: "Con cá trèo lên cây để trốn con mèo đang đói.", options: ["Cá không biết trèo cây", "Mèo không ăn cá", "Cây không có lá", "Cá sống trên cây"], correctAnswer: "Cá không biết trèo cây", explanation: "Cá sống dưới nước và không có chi để leo trèo trên cạn."),
            ExerciseItem(prompt: "Robert dùng nĩa để ăn món súp gà của mình.", options: ["Nĩa không múc được nước súp lỏng", "Súp không làm từ gà", "Robert nên dùng dao", "Súp không được ăn bằng dụng cụ"], correctAnswer: "Nĩa không múc được nước súp lỏng", explanation: "Nĩa có các kẽ hở khiến nước chảy ra hết, ăn súp cần dùng thìa."),
            ExerciseItem(prompt: "Vì trời đang mưa tầm tã, Nancy đem quần áo ướt phơi lên dây phơi ngoài trời để phơi khô.", options: ["Mưa không làm đồ ướt", "Quần áo không thể khô ngoài trời khi trời đang mưa", "Dây phơi đồ chỉ dùng trong nhà", "Nancy không mặc quần áo"], correctAnswer: "Quần áo không thể khô ngoài trời khi trời đang mưa", explanation: "Nước mưa rơi xuống liên tục sẽ làm đồ thêm ướt chứ không thể khô."),
            ExerciseItem(prompt: "Máy bay hạ cánh an toàn xuống sân bay, toàn bộ hành khách bước xuống đường ray xe lửa.", options: ["Máy bay không hạ cánh xuống sân bay", "Hành khách không đi máy bay", "Cửa sân bay không nằm trên đường ray xe lửa", "Tàu hỏa không chạy trên đường ray"], correctAnswer: "Cửa sân bay không nằm trên đường ray xe lửa", explanation: "Hành khách xuống máy bay tại nhà ga sân bay chứ không phải đường ray tàu hỏa."),
            ExerciseItem(prompt: "Helen bật máy điều hòa nhiệt độ lên để làm phòng khách ấm áp hơn.", options: ["Máy điều hòa làm mát phòng chứ không làm ấm", "Phòng khách không có tường", "Helen không có nhà", "Máy điều hòa không dùng điện"], correctAnswer: "Máy điều hòa làm mát phòng chứ không làm ấm", explanation: "Điều hòa thông thường (loại một chiều) chỉ có chức năng hạ nhiệt độ làm mát."),
            ExerciseItem(prompt: "Con thỏ rượt đuổi con sói xám to lớn chạy khắp khu rừng.", options: ["Thỏ không sống ở rừng", "Sói không biết chạy", "Thỏ không bao giờ đuổi bắt sói", "Sói không có màu xám"], correctAnswer: "Thỏ không bao giờ đuổi bắt sói", explanation: "Sói là loài ăn thịt còn thỏ là con mồi, thỏ luôn tìm cách chạy trốn sói."),
            ExerciseItem(prompt: "James mua một đôi giày da cho đôi tay để giữ ấm vào mùa đông.", options: ["Giày được mang vào chân chứ không phải tay", "Da không được dùng làm giày", "Tay không bị lạnh", "Mùa đông không lạnh"], correctAnswer: "Giày được mang vào chân chứ không phải tay", explanation: "Để giữ ấm tay cần đeo găng tay, giày dành cho bàn chân."),
            ExerciseItem(prompt: "Mặt trời mọc vào lúc nửa đêm, chiếu sáng bầu trời buổi sáng.", options: ["Mặt trời mọc vào buổi sáng chứ không phải nửa đêm", "Nửa đêm là vào buổi chiều", "Mặt trời không sáng", "Buổi sáng trời tối"], correctAnswer: "Mặt trời mọc vào buổi sáng chứ không phải nửa đêm", explanation: "Nửa đêm là thời khắc đêm muộn, mặt trời chỉ xuất hiện vào ban ngày."),
            ExerciseItem(prompt: "Alice bật tivi lên để nghe đài phát thanh yêu thích của mình.", options: ["Tivi hiển thị hình ảnh chứ không phải đài phát thanh", "Đài phát thanh không phát nhạc", "Alice ghét âm nhạc", "Tivi không có loa"], correctAnswer: "Tivi hiển thị hình ảnh chứ không phải đài phát thanh", explanation: "Đài phát thanh (radio) chỉ phát âm thanh và được nghe bằng máy thu thanh.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription (Đọc nhãn thuốc)
    private static let exercise11 = Exercise(
        title: "Đọc nhãn thuốc",
        instructions: "Đọc thông tin trên nhãn thuốc và trả lời câu hỏi trắc nghiệm.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Nhãn: Uống 1 viên, ngày 2 lần cùng thức ăn. Tổng số viên thuốc bạn cần uống mỗi ngày là bao nhiêu?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Uống 1 viên x 2 lần một ngày tức là uống 1 + 1 = 2 viên."),
            ExerciseItem(prompt: "Nhãn: Uống 2 viên trước khi đi ngủ. Bạn nên uống thuốc này vào thời điểm nào?", options: ["Vào buổi sáng", "Cùng bữa trưa", "Trước khi đi ngủ", "Trước khi tập thể dục"], correctAnswer: "Trước khi đi ngủ", explanation: "Nhãn thuốc ghi rõ thời điểm uống là “Trước khi đi ngủ”."),
            ExerciseItem(prompt: "Nhãn: Uống 1 viên mỗi 8 giờ khi cần thiết để giảm đau. Bạn được uống tối đa bao nhiêu lần trong vòng 24 giờ?", options: ["2 lần", "3-4 lần", "3 lần", "6 lần"], correctAnswer: "3 lần", explanation: "Một ngày có 24 giờ, uống cách 8 giờ một lần: 24 chia 8 bằng 3 lần."),
            ExerciseItem(prompt: "Nhãn: Amoxicillin 250mg. Uống 1 viên ba lần mỗi ngày. Bảo quản lạnh. Bạn nên bảo quản thuốc này thế nào?", options: ["Trong ngăn đá", "Trong ngăn mát tủ lạnh", "Trong tủ ấm", "Dưới ánh nắng trực tiếp"], correctAnswer: "Trong ngăn mát tủ lạnh", explanation: "Nhãn ghi “Bảo quản lạnh” tức là để trong ngăn mát tủ lạnh."),
            ExerciseItem(prompt: "Nhãn: Không uống rượu bia khi dùng thuốc. Có thể gây buồn ngủ. Tác dụng phụ được cảnh báo của thuốc này là gì?", options: ["Buồn ngủ", "Tăng sinh lực", "Tăng huyết áp", "Hắt hơi"], correctAnswer: "Buồn ngủ", explanation: "Nhãn ghi rõ thuốc “Có thể gây buồn ngủ”."),
            ExerciseItem(prompt: "Nhãn: Uống 1 viên mỗi ngày vào buổi sáng khi bụng đói. Bạn nên ăn sáng khi nào?", options: ["Trước khi uống thuốc", "Sau khi uống thuốc", "Trong khi uống thuốc", "Không ăn sáng"], correctAnswer: "Sau khi uống thuốc", explanation: "Uống khi bụng đói tức là uống trước khi ăn sáng, vì vậy cần ăn sáng sau khi uống thuốc."),
            ExerciseItem(prompt: "Nhãn: Uống 1 viên bằng đường uống mỗi ngày. Số lượng: 30 viên. Số lần mua thêm (Refills): 2. Bạn được phép mua thêm thuốc này bao nhiêu lần?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "Nhãn ghi “Refills: 2” nghĩa là được mua thêm 2 lần."),
            ExerciseItem(prompt: "Nhãn: Thoa một lớp mỏng lên vùng da bị tổn thương hai lần mỗi ngày. Không nuốt. Thuốc này được dùng như thế nào?", options: ["Nuốt viên thuốc", "Thoa lên da", "Xịt vào mũi", "Hòa tan vào nước"], correctAnswer: "Thoa lên da", explanation: "Nhãn hướng dẫn “Thoa một lớp mỏng lên vùng da”."),
            ExerciseItem(prompt: "Nhãn: Hạn dùng đến 15/10/2026. Hôm nay là ngày 01/11/2026. Bạn có thể uống thuốc này an toàn không?", options: ["Có", "Không", "Chỉ uống cùng đồ ăn", "Chỉ uống ban đêm"], correctAnswer: "Không", explanation: "Thuốc đã hết hạn sử dụng từ ngày 15/10/2026 nên không còn an toàn."),
            ExerciseItem(prompt: "Nhãn: Uống 1 viên hai lần mỗi ngày. Không dùng chung với các sản phẩm từ sữa. Loại thức uống nào bạn cần tránh khi uống thuốc này?", options: ["Nước lọc", "Sữa", "Nước ép táo", "Cà phê đen"], correctAnswer: "Sữa", explanation: "Sữa là sản phẩm từ sữa cần tránh theo chỉ dẫn."),
            ExerciseItem(prompt: "Nhãn: Uống 2 viên trước chuyến bay 1 tiếng. Tại sao bạn cần uống loại thuốc này?", options: ["Để ngừa say tàu xe khi đi lại", "Để ngủ ngon hơn ở nhà", "Để trị đau đầu", "Để trị phát ban ngoài da"], correctAnswer: "Để ngừa say tàu xe khi đi lại", explanation: "Uống thuốc trước khi bay thường nhằm mục đích ngừa say máy bay/tàu xe."),
            ExerciseItem(prompt: "Nhãn: Thuốc nhỏ mắt. Nhỏ 1 giọt vào mỗi mắt hai lần mỗi ngày. Bạn nhỏ thuốc này ở đâu?", options: ["Vào miệng", "Vào tai", "Vào mắt", "Lên da"], correctAnswer: "Vào mắt", explanation: "Đây là thuốc nhỏ mắt nên phải nhỏ vào mắt."),
            ExerciseItem(prompt: "Nhãn: Uống 1 viên mỗi 4 đến 6 giờ khi cần trị đau đầu. Tối đa 4 viên một ngày. Số lượng thuốc nhiều nhất bạn có thể uống trong ngày là bao nhiêu?", options: ["1 viên", "2 viên", "4 viên", "6 viên"], correctAnswer: "4 viên", explanation: "Nhãn thuốc giới hạn rõ ràng “Tối đa 4 viên một ngày”."),
            ExerciseItem(prompt: "Nhãn: Uống với một ly nước đầy. Tại sao cần uống nước khi dùng thuốc?", options: ["Để thuốc hòa tan trên da", "Để dễ nuốt và tránh kích ứng dạ dày", "Để thuốc đổi màu", "Để thuốc ngon hơn"], correctAnswer: "Để dễ nuốt và tránh kích ứng dạ dày", explanation: "Một ly nước đầy giúp thuốc trôi xuống dễ dàng và tránh làm tổn thương dạ dày."),
            ExerciseItem(prompt: "Nhãn: Uống 1 viên hàng ngày cùng bữa tối. Thời gian tốt nhất để uống thuốc này là khi nào?", options: ["Bữa sáng", "Bữa trưa", "Bữa tối", "Giữa đêm"], correctAnswer: "Bữa tối", explanation: "Nhãn chỉ định dùng thuốc cùng bữa tối.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu (Đọc thực đơn)
    private static let exercise12 = Exercise(
        title: "Đọc thực đơn",
        instructions: "Sử dụng thông tin thực đơn được cung cấp để trả lời câu hỏi.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Thực đơn: Hamburger phô mai 8.00 đô-la, Khoai tây chiên 3.00 đô-la, Nước ngọt 2.00 đô-la. Hamburger phô mai giá bao nhiêu?", options: ["8.00 đô-la", "3.00 đô-la", "2.00 đô-la", "11.00 đô-la"], correctAnswer: "8.00 đô-la", explanation: "Thực đơn liệt kê Hamburger phô mai có giá 8.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Cà phê 2.50 đô-la, Trà 2.00 đô-la, Bánh Muffin 3.00 đô-la. Món nào rẻ nhất?", options: ["Cà phê", "Trà", "Bánh Muffin", "Giá bằng nhau"], correctAnswer: "Trà", explanation: "2.00 đô-la là mức giá thấp nhất trong ba món."),
            ExerciseItem(prompt: "Thực đơn: Súp cà chua 5.00 đô-la, Sa-lát rau xanh 6.00 đô-la, Sa-lát gà Caesar 9.00 đô-la. Súp cà chua có giá bao nhiêu?", options: ["5.00 đô-la", "6.00 đô-la", "9.00 đô-la", "14.00 đô-la"], correctAnswer: "5.00 đô-la", explanation: "Súp cà chua được niêm yết giá 5.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Bữa sáng bánh kếp 10.00 đô-la, Bánh mì nướng Pháp 9.00 đô-la, Thịt xông khói thêm 4.00 đô-la. Giá của Bánh mì nướng Pháp là bao nhiêu?", options: ["10.00 đô-la", "9.00 đô-la", "4.00 đô-la", "13.00 đô-la"], correctAnswer: "9.00 đô-la", explanation: "Bánh mì nướng Pháp có giá 9.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Bánh pizza phô mai 4.00 đô-la/lát, Pizza xúc xích 4.50 đô-la/lát. Một lát pizza xúc xích đắt hơn pizza phô mai bao nhiêu?", options: ["0.50 đô-la", "1.00 đô-la", "4.50 đô-la", "8.50 đô-la"], correctAnswer: "0.50 đô-la", explanation: "Lấy 4.50 trừ đi 4.00 là 0.50 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Sandwich gà 7.00 đô-la, Cá tẩm bột chiên 11.00 đô-la. Bạn có 10.00 đô-la. Bạn mua được món nào?", options: ["Sandwich gà", "Cá tẩm bột chiên", "Cả hai món", "Không món nào"], correctAnswer: "Sandwich gà", explanation: "7.00 đô-la ít hơn 10.00 đô-la nên bạn mua được, còn 11.00 đô-la thì quá tiền."),
            ExerciseItem(prompt: "Thực đơn: Suất trẻ em (dưới 12 tuổi) 6.00 đô-la, Burger người lớn 12.00 đô-la. Bữa ăn của em bé 8 tuổi giá bao nhiêu?", options: ["6.00 đô-la", "12.00 đô-la", "8.00 đô-la", "18.00 đô-la"], correctAnswer: "6.00 đô-la", explanation: "Bé 8 tuổi thuộc đối tượng dưới 12 tuổi nên giá suất ăn trẻ em là 6.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Kem sô-cô-la 4.00 đô-la, Bánh táo 5.00 đô-la, Thêm kem vani vào bánh 1.50 đô-la. Giá bánh táo kèm kem vani là bao nhiêu?", options: ["5.00 đô-la", "6.50 đô-la", "9.00 đô-la", "4.00 đô-la"], correctAnswer: "6.50 đô-la", explanation: "Cộng 5.00 (bánh táo) và 1.50 (thêm kem) bằng 6.50 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Gà cuộn 8.50 đô-la, Khoai tây chiên gói 1.50 đô-la, Nước ép quả 2.00 đô-la. Tổng giá tiền một phần Gà cuộn và một ly Nước ép là bao nhiêu?", options: ["8.50 đô-la", "10.00 đô-la", "10.50 đô-la", "12.00 đô-la"], correctAnswer: "10.50 đô-la", explanation: "8.50 cộng 2.00 bằng 10.50 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Suất ăn trưa đặc biệt (phục vụ từ 11:00 sáng đến 3:00 chiều) 9.00 đô-la. Thực đơn tối thường 15.00 đô-la. Bây giờ là 1:00 trưa. Suất trưa giá bao nhiêu?", options: ["9.00 đô-la", "15.00 đô-la", "11.00 đô-la", "3.00 đô-la"], correctAnswer: "9.00 đô-la", explanation: "1:00 trưa nằm trong khung giờ vàng 11:00 - 3:00 nên giá suất trưa đặc biệt là 9.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Cà phê 2.00 đô-la (Miễn phí rót thêm), Trà nóng 2.50 đô-la. Nếu bạn uống ba ly cà phê, bạn trả tổng cộng bao nhiêu?", options: ["2.00 đô-la", "6.00 đô-la", "2.50 đô-la", "7.50 đô-la"], correctAnswer: "2.00 đô-la", explanation: "Cà phê được miễn phí rót thêm nên bạn chỉ cần trả tiền ly đầu tiên là 2.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Súp rau củ 4.00 đô-la, Thịt bò hầm 7.00 đô-la. Món ăn nào có chứa thịt?", options: ["Súp rau củ", "Thịt bò hầm", "Cả hai", "Không món nào"], correctAnswer: "Thịt bò hầm", explanation: "Thịt bò là một loại thịt; rau củ thì không phải."),
            ExerciseItem(prompt: "Thực đơn: Bánh Taco 3.00 đô-la, Bánh Quesadilla 6.00 đô-la, Nước ngọt 2.00 đô-la. Bánh Quesadilla giá bao nhiêu?", options: ["3.00 đô-la", "6.00 đô-la", "2.00 đô-la", "8.00 đô-la"], correctAnswer: "6.00 đô-la", explanation: "Bánh Quesadilla được niêm yết giá 6.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Mì Ý 12.00 đô-la, Bánh Lasagna 14.00 đô-la, Bánh mì bơ tỏi 3.00 đô-la. Món bánh mì bơ tỏi ăn kèm giá bao nhiêu?", options: ["12.00 đô-la", "14.00 đô-la", "3.00 đô-la", "15.00 đô-la"], correctAnswer: "3.00 đô-la", explanation: "Bánh mì bơ tỏi có giá 3.00 đô-la."),
            ExerciseItem(prompt: "Thực đơn: Trứng Benedict 11.00 đô-la, Yến mạch 6.00 đô-la, Tô trái cây 5.00 đô-la. Món ăn sáng nào đắt nhất?", options: ["Trứng Benedict", "Yến mạch", "Tô trái cây", "Giá bằng nhau"], correctAnswer: "Trứng Benedict", explanation: "11.00 đô-la là mức giá cao nhất trong thực đơn sáng này.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills (Hiểu hóa đơn thanh toán)
    private static let exercise13 = Exercise(
        title: "Hiểu hóa đơn thanh toán",
        instructions: "Đọc thông tin hóa đơn và trả lời câu hỏi trắc nghiệm.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Hóa đơn điện: Tổng số tiền phải trả: 45.00 đô-la. Hạn chót: Ngày 15 tháng 7. Bạn cần đóng bao nhiêu tiền?", options: ["15.00 đô-la", "45.00 đô-la", "Ngày 15 tháng 7", "Miễn phí"], correctAnswer: "45.00 đô-la", explanation: "Số tiền cần đóng được ghi rõ là 45.00 đô-la."),
            ExerciseItem(prompt: "Hóa đơn nước: Hạn chót: Ngày 10 tháng 10. Phí trễ hạn: 5.00 đô-la. Hôm nay là ngày 12 tháng 10. Điều gì xảy ra nếu bạn đóng tiền vào hôm nay?", options: ["Bạn trả số tiền bình thường", "Bạn phải trả thêm phí trễ hạn 5.00 đô-la", "Bạn được giảm giá", "Không có gì xảy ra"], correctAnswer: "Bạn phải trả thêm phí trễ hạn 5.00 đô-la", explanation: "Hôm nay là ngày 12, đã quá hạn chót ngày 10 nên bạn bị tính thêm phí trễ hạn."),
            ExerciseItem(prompt: "Hóa đơn Internet: Cước hàng tháng: 60.00 đô-la. Giảm giá thanh toán tự động: -5.00 đô-la. Giá cuối cùng nếu đăng ký thanh toán tự động là bao nhiêu?", options: ["60.00 đô-la", "65.00 đô-la", "55.00 đô-la", "5.00 đô-la"], correctAnswer: "55.00 đô-la", explanation: "Lấy 60.00 trừ đi khoản giảm giá 5.00 là 55.00 đô-la."),
            ExerciseItem(prompt: "Hóa đơn ga: Cước kỳ này: 30.00 đô-la. Nợ cũ chưa thanh toán: 10.00 đô-la. Tổng số nợ: 40.00 đô-la. Số tiền nợ cũ từ tháng trước chuyển sang là bao nhiêu?", options: ["30.00 đô-la", "10.00 đô-la", "40.00 đô-la", "0.00 đô-la"], correctAnswer: "10.00 đô-la", explanation: "Khoản nợ cũ chưa đóng từ tháng trước là 10.00 đô-la."),
            ExerciseItem(prompt: "Hóa đơn điện thoại: Hạn chót: Ngày 20 tháng 6. Hôm nay là ngày 15 tháng 6. Bạn còn lại bao nhiêu ngày để thanh toán đúng hạn?", options: ["5 ngày", "20 ngày", "15 ngày", "1 ngày"], correctAnswer: "5 ngày", explanation: "Lấy ngày hạn chót 20 trừ đi ngày hiện tại 15 bằng 5 ngày."),
            ExerciseItem(prompt: "Hóa đơn rác: Cước phí theo quý (3 tháng): 36.00 đô-la. Số tiền tương đương cho mỗi tháng là bao nhiêu?", options: ["36.00 đô-la", "12.00 đô-la", "18.00 đô-la", "6.00 đô-la"], correctAnswer: "12.00 đô-la", explanation: "Lấy 36.00 chia cho 3 tháng ra kết quả là 12.00 đô-la mỗi tháng."),
            ExerciseItem(prompt: "Hóa đơn truyền hình cáp: Tổng số tiền: 80.00 đô-la. Nơi nhận thanh toán: “XYZ Cable Co.” Bạn nên điền tên ai ở phần người nhận trên séc thanh toán?", options: ["80.00 đô-la", "XYZ Cable Co.", "Nhân viên truyền hình cáp", "Tiền mặt"], correctAnswer: "XYZ Cable Co.", explanation: "Hóa đơn yêu cầu trả tiền cho đơn vị “XYZ Cable Co.”."),
            ExerciseItem(prompt: "Hóa đơn dịch vụ công ích: Nước: 20.00 đô-la, Ga: 30.00 đô-la, Điện: 50.00 đô-la. Tổng cộng: 100.00 đô-la. Dịch vụ nào tốn nhiều chi phí nhất?", options: ["Nước", "Ga", "Điện", "Chi phí bằng nhau"], correctAnswer: "Điện", explanation: "Tiền điện là 50.00 đô-la, cao nhất trong các dịch vụ."),
            ExerciseItem(prompt: "Bảo hiểm xe hơi: Phí bảo hiểm định kỳ nửa năm: 600.00 đô-la. Bạn cần đóng hóa đơn này bao lâu một lần?", options: ["Mỗi tháng", "Mỗi 6 tháng (hai lần một năm)", "Mỗi năm một lần", "Mỗi tuần"], correctAnswer: "Mỗi 6 tháng (hai lần một năm)", explanation: "Bảo hiểm nửa năm tức là đóng phí mỗi 6 tháng."),
            ExerciseItem(prompt: "Hóa đơn truyền phát video: Trạng thái tài khoản: BỊ ĐÌNH CHỈ. Nợ quá hạn: 15.00 đô-la. Tại sao dịch vụ không hoạt động?", options: ["Mạng Internet bị hỏng", "Tivi bị hỏng", "Tài khoản bị tạm ngưng do chưa thanh toán tiền nợ", "Đang tải dữ liệu"], correctAnswer: "Tài khoản bị tạm ngưng do chưa thanh toán tiền nợ", explanation: "Tài khoản bị đình chỉ hoạt động vì lý do chưa thanh toán tiền cước còn nợ."),
            ExerciseItem(prompt: "Thẻ thành viên phòng tập: Phí thường niên: 120.00 đô-la. Phí hàng tháng: 10.00 đô-la. Phí đóng theo năm là bao nhiêu?", options: ["10.00 đô-la", "120.00 đô-la", "130.00 đô-la", "12.00 đô-la"], correctAnswer: "120.00 đô-la", explanation: "Phí thường niên (theo năm) là 120.00 đô-la."),
            ExerciseItem(prompt: "Hóa đơn sưởi ấm: Tháng 1: 110.00 đô-la. Tháng 7: 20.00 đô-la. Tại sao hóa đơn vào tháng 1 lại cao hơn nhiều?", options: ["Ga đắt hơn vào mùa hè", "Lò sưởi được sử dụng nhiều hơn vào tháng 1 mùa đông", "Nhà bị bỏ trống vào tháng 1", "Đồng hồ đo điện bị thay đổi"], correctAnswer: "Lò sưởi được sử dụng nhiều hơn vào tháng 1 mùa đông", explanation: "Tháng 1 là mùa đông lạnh giá nên các gia đình tăng cường bật lò sưởi, làm tăng lượng tiêu hao năng lượng."),
            ExerciseItem(prompt: "Hóa đơn thẻ tín dụng: Thanh toán tối thiểu: 25.00 đô-la. Tổng dư nợ: 500.00 đô-la. Số tiền ít nhất bạn có thể trả trong tháng này để tránh bị phạt trễ hạn là bao nhiêu?", options: ["25.00 đô-la", "500.00 đô-la", "0.00 đô-la", "475.00 đô-la"], correctAnswer: "25.00 đô-la", explanation: "Đóng mức “Thanh toán tối thiểu” 25.00 đô-la sẽ giúp bạn không bị tính phạt trả chậm."),
            ExerciseItem(prompt: "Hóa đơn y tế: Tổng chi phí: 150.00 đô-la. Bảo hiểm chi trả: 120.00 đô-la. Phần tự trả của bệnh nhân: 30.00 đô-la. Bạn phải tự đóng bao nhiêu tiền?", options: ["150.00 đô-la", "120.00 đô-la", "30.00 đô-la", "0.00 đô-la"], correctAnswer: "30.00 đô-la", explanation: "Phần tự trả của bệnh nhân chính là số tiền bạn có trách nhiệm phải nộp."),
            ExerciseItem(prompt: "Gói đăng ký báo giấy: Ngày gia hạn tiếp theo: Ngày 31 tháng 12 năm 2026. Nếu muốn hủy gói trước khi tự động gia hạn, bạn nên gọi điện lúc nào?", options: ["Trước ngày 31 tháng 12 năm 2026", "Sau ngày 31 tháng 12 năm 2026", "Trong tháng 1 năm 2027", "Không bao giờ"], correctAnswer: "Trước ngày 31 tháng 12 năm 2026", explanation: "Hủy trước ngày gia hạn kế tiếp giúp bạn không bị tính phí cho chu kỳ mới.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do? (Xử lý tình huống)
    private static let exercise14 = Exercise(
        title: "Xử lý tình huống",
        instructions: "Chọn cách giải quyết phù hợp và tối ưu nhất cho tình huống thực tế được đưa ra.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Bạn ngửi thấy mùi khói trong bếp nhưng không thấy có ngọn lửa nào. Bạn nên làm gì đầu tiên?", options: ["Bỏ qua nó", "Mở cửa sổ và kiểm tra bếp nấu", "Gọi điện buôn chuyện với bạn bè", "Đi ngủ tiếp"], correctAnswer: "Mở cửa sổ và kiểm tra bếp nấu", explanation: "Kiểm tra bếp là bước đầu tiên để xác định nguồn khói và xử lý kịp thời các sự cố nấu nướng nhỏ."),
            ExerciseItem(prompt: "Bạn đang ở cửa hàng tạp hóa và nhận ra mình để quên ví tiền ở nhà. Lựa chọn nào tốt nhất?", options: ["Cứ tự ý lấy đồ đi mà không trả tiền", "Nhờ thu ngân giữ giỏ hàng rồi chạy về nhà lấy ví", "Khóc lóc bỏ chạy khỏi cửa hàng", "Cãi nhau với quản lý cửa hàng"], correctAnswer: "Nhờ thu ngân giữ giỏ hàng rồi chạy về nhà lấy ví", explanation: "Nhờ nhân viên giữ hộ hàng hóa trong lúc quay về lấy tiền là cách xử lý lịch sự và phổ biến."),
            ExerciseItem(prompt: "Bạn lỡ tay làm rơi một quả trứng gà sống xuống sàn bếp và nó bị vỡ. Bạn nên làm gì?", options: ["Cứ để nguyên đó đến ngày mai", "Dùng khăn giấy lau sạch ngay lập tức với nước lau sàn", "Lấy một tấm thảm che lên trên", "Để mèo tự ăn hết"], correctAnswer: "Dùng khăn giấy lau sạch ngay lập tức với nước lau sàn", explanation: "Trứng sống rất trơn trượt và nhanh chóng thu hút vi khuẩn nên cần được dọn sạch ngay."),
            ExerciseItem(prompt: "Bạn của bạn kể rằng chú chó cưng của họ vừa qua đời hôm qua. Bạn nên nói gì với họ?", options: ["Thật là buồn cười", "Mình rất tiếc vì sự mất mát này của bạn", "Bạn nên mua một con mèo thay thế", "Cho mình xin đống đồ chơi của nó nhé?"], correctAnswer: "Mình rất tiếc vì sự mất mát này của bạn", explanation: "Bày tỏ sự chia buồn chân thành là cách phản hồi nhân văn trước nỗi đau mất mát của người khác."),
            ExerciseItem(prompt: "Bạn nhận được cuộc gọi từ số lạ bảo rằng bạn trúng số và yêu cầu cung cấp thông tin tài khoản ngân hàng. Bạn nên làm gì?", options: ["Cung cấp ngay lập tức", "Cúp máy và tuyệt đối không chia sẻ thông tin cá nhân", "Bảo họ gọi lại sau", "Gọi điện báo tin mừng cho gia đình"], correctAnswer: "Cúp máy và tuyệt đối không chia sẻ thông tin cá nhân", explanation: "Yêu cầu thông tin ngân hàng nhạy cảm qua điện thoại từ người lạ hầu hết là hành vi lừa đảo chiếm đoạt tài sản."),
            ExerciseItem(prompt: "Bạn cảm thấy chóng mặt và choáng váng khi đang đứng trong căn phòng nóng bức. Bạn nên làm gì?", options: ["Tiếp tục đứng và nhắm mắt lại", "Ngồi xuống ngay lập tức và uống chút nước", "Chạy nhanh vào nhà vệ sinh", "Quay vòng tròn"], correctAnswer: "Ngồi xuống ngay lập tức và uống chút nước", explanation: "Ngồi xuống giúp tránh bị ngã quỵ gây chấn thương, nước ấm hoặc mát giúp bù nước chống choáng."),
            ExerciseItem(prompt: "Bạn thấy nước bị rò rỉ chảy ra dưới bồn rửa chén trong bếp. Việc đầu tiên bạn nên làm là gì?", options: ["Gọi cho thợ sơn", "Đặt một chiếc xô dưới chỗ rò rỉ để hứng nước", "Lát nữa lau nhà sau", "Tắt bớt đèn đi"], correctAnswer: "Đặt một chiếc xô dưới chỗ rò rỉ để hứng nước", explanation: "Đặt xô hứng nước giúp ngăn ngừa nước tràn lan gây hư hại tủ bếp trong lúc chờ thợ sửa."),
            ExerciseItem(prompt: "Bạn được mời dự một bữa tiệc tối nhưng bạn không thể tham gia. Bạn nên làm gì?", options: ["Cứ âm thầm không đến", "Báo trước cho chủ nhà biết rằng bạn không thể tham dự", "Đến thật muộn mà không báo trước", "Gửi quà thay vì trả lời lời mời"], correctAnswer: "Báo trước cho chủ nhà biết rằng bạn không thể tham dự", explanation: "Thông báo sớm giúp chủ tiệc chủ động điều chỉnh lượng cước thực phẩm và số ghế ngồi."),
            ExerciseItem(prompt: "Bạn vô tình làm vỡ một chiếc bình hoa trang trí tại nhà một người bạn. Bạn nên ứng xử thế nào?", options: ["Giấu các mảnh vỡ dưới ghế sô-pha", "Xin lỗi chân thành và đề nghị đền bù hoặc mua chiếc mới thay thế", "Giả vờ như mình không làm việc đó", "Đổ lỗi cho chú chó của họ"], correctAnswer: "Xin lỗi chân thành và đề nghị đền bù hoặc mua chiếc mới thay thế", explanation: "Thành thật nhận lỗi và đề nghị khắc phục hậu quả là hành vi có trách nhiệm và tôn trọng tình bạn."),
            ExerciseItem(prompt: "Bạn không tìm thấy chìa khóa nhà và đang bị kẹt ở ngoài cửa. Bước xử lý tốt nhất là gì?", options: ["Đập vỡ cửa kính để leo vào trong", "Gọi điện cho người thân có giữ chìa khóa dự phòng hoặc gọi thợ khóa", "Ngồi ngoài hiên đợi mãi mãi", "Đá mạnh vào cửa"], correctAnswer: "Gọi điện cho người thân có giữ chìa khóa dự phòng hoặc gọi thợ khóa", explanation: "Tìm chìa dự phòng hoặc liên hệ thợ khóa chuyên nghiệp là giải pháp an toàn nhất để vào nhà."),
            ExerciseItem(prompt: "Bạn thấy đèn đường vẫn sáng nhưng riêng nhà mình lại bị mất điện hoàn toàn. Bạn nên làm gì?", options: ["Kiểm tra hộp cầu dao/cầu chì trong nhà", "Đi mua một chiếc tivi mới", "Đi ngủ ngay lập tức", "Gọi cảnh sát"], correctAnswer: "Kiểm tra hộp cầu dao/cầu chì trong nhà", explanation: "Kiểm tra hộp cầu dao giúp xác định xem đây là sự cố chập điện cục bộ trong nhà hay do mất điện lưới."),
            ExerciseItem(prompt: "Bạn thấy một người hàng xóm lớn tuổi đang khệ nệ xách những túi đồ tạp hóa rất nặng. Bạn nên làm gì?", options: ["Đi thật nhanh qua mặt họ", "Ngỏ ý giúp đỡ họ xách các túi đồ đó", "Chụp ảnh họ", "Bảo họ bước nhanh hơn đi"], correctAnswer: "Ngỏ ý giúp đỡ họ xách các túi đồ đó", explanation: "Giúp đỡ người lớn tuổi xách đồ nặng thể hiện sự lễ phép và tinh thần tương trợ hàng xóm."),
            ExerciseItem(prompt: "Bạn nhấp một ngụm cà phê và nhận ra nó quá nóng làm bỏng miệng bạn. Bạn nên làm gì?", options: ["Uống nhanh phần còn lại thật nhanh", "Cẩn thận nhổ ra và súc miệng bằng nước lạnh", "Hét lên thật to", "Ném chiếc ly đi"], correctAnswer: "Cẩn thận nhổ ra và súc miệng bằng nước lạnh", explanation: "Nước lạnh giúp hạ nhiệt vết bỏng tức thì và xoa dịu cảm giác đau rát trong miệng."),
            ExerciseItem(prompt: "Bác sĩ kê cho bạn một loại thuốc mới nhưng bạn chưa hiểu rõ cách uống thế nào. Bạn nên làm gì?", options: ["Tự đoán liều lượng để uống", "Hỏi dược sĩ hoặc bác sĩ để họ giải thích kỹ lại cho bạn", "Không thèm uống thuốc đó nữa", "Tìm kiếm thông tin trên mạng xã hội"], correctAnswer: "Hỏi dược sĩ hoặc bác sĩ để họ giải thích kỹ lại cho bạn", explanation: "Tham vấn ý kiến chuyên gia y tế là cách duy nhất đảm bảo bạn dùng thuốc đúng liều lượng và an toàn."),
            ExerciseItem(prompt: "Bạn vô tình làm đổ rượu vang đỏ lên tấm thảm trắng của bạn mình. Bạn nên làm gì?", options: ["Đặt một chiếc ghế đè lên vết bẩn để che đi", "Xin lỗi và chủ động giúp làm sạch vết bẩn ngay lập tức", "Lặng lẽ ra về sớm khỏi bữa tiệc", "Nói với họ đó chỉ là nước nho ép thôi"], correctAnswer: "Xin lỗi và chủ động giúp làm sạch vết bẩn ngay lập tức", explanation: "Xử lý vết bẩn rượu vang đỏ ngay lập tức giúp ngăn chặn chất bẩn bám chặt vào sợi thảm."),
            ExerciseItem(prompt: "Bạn nghe thấy thiết bị báo khói phát ra tiếng bíp ngắn (chíp) mỗi phút một lần. Điều này có nghĩa là gì?", options: ["Đang có hỏa hoạn xảy ra", "Pin của máy bị yếu và cần được thay thế", "Thiết bị đã bị hỏng hoàn toàn", "Không có ý nghĩa gì cả"], correctAnswer: "Pin của máy bị yếu và cần được thay thế", explanation: "Các tiếng bíp ngắn đều đặn là tín hiệu cảnh báo pin dự phòng của thiết bị báo khói sắp cạn."),
            ExerciseItem(prompt: "Bạn đang lái xe và nhìn thấy xe cứu thương bật đèn nháy khẩn cấp phía sau. Bạn nên làm gì?", options: ["Tăng tốc để chạy trước xe cứu thương", "Tấp xe sát vào lề đường bên phải và dừng lại an toàn", "Dừng đột ngột ngay giữa làn đường đang chạy", "Phớt lờ đi và cứ chạy bình thường"], correctAnswer: "Tấp xe sát vào lề đường bên phải và dừng lại an toàn", explanation: "Nhường đường cho xe ưu tiên bằng cách tấp lề và dừng lại là quy định bắt buộc khi tham gia giao thông."),
            ExerciseItem(prompt: "Bạn nhận được email từ ngân hàng yêu cầu bạn nhấp vào liên kết để xác minh mật khẩu. Bạn nên làm gì?", options: ["Nhấp vào liên kết và điền mật khẩu vào", "Xóa email hoặc liên hệ trực tiếp với ngân hàng qua số hotline chính thức", "Chuyển tiếp email đó cho bạn bè của bạn", "Trả lời lại email kèm mật khẩu của bạn"], correctAnswer: "Xóa email hoặc liên hệ trực tiếp với ngân hàng qua số hotline chính thức", explanation: "Ngân hàng không bao giờ thu thập thông tin mật khẩu qua email; đây chắc chắn là thư lừa đảo (phishing)."),
            ExerciseItem(prompt: "Bạn nhặt được một chiếc ví rơi trên vỉa hè chứa tiền mặt và một thẻ căn cước. Bạn nên làm gì?", options: ["Lấy tiền mặt rồi vứt chiếc ví đi", "Giao cho công an gần nhất hoặc tìm cách liên hệ người mất dựa trên căn cước", "Cứ để mặc chiếc ví nằm nguyên trên vỉa hè", "Đưa chiếc ví đó cho một người lạ bất kỳ"], correctAnswer: "Giao cho công an gần nhất hoặc tìm cách liên hệ người mất dựa trên căn cước", explanation: "Giao trả tài sản nhặt được cho cơ quan chức năng hoặc người bị mất là hành vi trung thực cần làm."),
            ExerciseItem(prompt: "Thiết bị báo khói kêu vang liên tục với âm thanh rất lớn. Bạn nên làm gì?", options: ["Lờ đi và đợi cho nó tự tắt", "Kiểm tra nguồn lửa và di tản ra khỏi tòa nhà an toàn nếu cần", "Tháo pin của máy ra ngay lập tức", "Đi ngủ tiếp"], correctAnswer: "Kiểm tra nguồn lửa và di tản ra khỏi tòa nhà an toàn nếu cần", explanation: "Âm thanh báo động liên tục cảnh báo nguy cơ hỏa hoạn khẩn cấp, cần nhanh chóng thoát thân an toàn.")
        ]
    )
}
