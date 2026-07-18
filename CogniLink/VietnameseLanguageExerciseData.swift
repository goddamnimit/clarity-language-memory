import Foundation

struct VietnameseLanguageExerciseData {

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
        title: "Gạch bỏ danh mục (Dễ dàng)",
        instructions: "Nhấn vào từ KHÔNG thuộc nhóm.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TÁO, Lê, Cà rốt, Mận",
                options: ["TÁO", "Lê", "Cà rốt", "Mận"],
                correctAnswer: "Cà rốt",
                explanation: "Rau, không phải trái cây"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "XE Ô TÔ, XE BUÝT, THÌA, XE TẢI",
                options: ["XE", "xe buýt", "THÌA", "XE TẢI"],
                correctAnswer: "THÌA",
                explanation: "Không phải là một phương tiện"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "VÀNG, MÈO, CHÓ, CHIM",
                options: ["VÀNG", "MÈO", "CHÓ", "CHIM"],
                correctAnswer: "VÀNG",
                explanation: "Kim loại, không phải động vật"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ÁO, QUẦN, Nĩa, MŨ",
                options: ["ÁO Sơ Mi", "QUẦN", "cái nĩa", "MŨ"],
                correctAnswer: "cái nĩa",
                explanation: "Không phải quần áo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GHẾ, BÀN, TÁO, GIƯỜNG",
                options: ["GHẾ", "BẢNG", "TÁO", "GIƯỜNG"],
                correctAnswer: "TÁO",
                explanation: "Thực phẩm, không phải đồ nội thất"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BÚA, CỜ LÊ, GỐI, KHOAN",
                options: ["BÚA", "Cờ lê", "GỐI", "KHOAN"],
                correctAnswer: "GỐI",
                explanation: "Không phải là một công cụ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "THÁNG 1, THÁNG 3, THỨ SÁU, THÁNG 5",
                options: ["THÁNG 1", "THÁNG 3", "THỨ SÁU", "CÓ THỂ"],
                correctAnswer: "THỨ SÁU",
                explanation: "Ngày trong tuần, không phải một tháng"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "PARIS, LONDON, JUPITER, ROME",
                options: ["PARIS", "Luân Đôn", "Sao Mộc", "ROME"],
                correctAnswer: "Sao Mộc",
                explanation: "Một hành tinh, không phải một thành phố"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CHÓ, MÈO, CÂY, CHUỘT",
                options: ["CHÓ", "MÈO", "CÂY", "CHUỘT"],
                correctAnswer: "CÂY",
                explanation: "Không phải là động vật"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MẮT, MŨI, XE, TAI",
                options: ["MẮT", "MŨI", "XE", "TAI"],
                correctAnswer: "XE",
                explanation: "Không phải bộ phận cơ thể"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SỮA, NƯỚC TRÁI CÂY, BÁNH MÌ, NƯỚC",
                options: ["SỮA", "Nước trái cây", "BÁNH MÌ", "NƯỚC"],
                correctAnswer: "BÁNH MÌ",
                explanation: "Thức ăn, không phải đồ uống"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SOFA, GIƯỜNG, BẾP, GHẾ",
                options: ["SOFA", "GIƯỜNG", "BẾP", "GHẾ"],
                correctAnswer: "BẾP",
                explanation: "Thiết bị, không phải đồ nội thất chỗ ngồi hoặc giường ngủ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "HOA HỒNG, TULIP, DAISY, XE",
                options: ["hoa hồng", "TULIP", "DAISY", "XE"],
                correctAnswer: "XE",
                explanation: "Không phải một bông hoa"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BÚT, BÚT CHÌ, SÁP, Nĩa",
                options: ["BÚT", "BÚT CHÌ", "bút chì màu", "cái nĩa"],
                correctAnswer: "cái nĩa",
                explanation: "Không phải là công cụ viết"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GHẾ, THẢM, ĐÈN, GÀ",
                options: ["GHẾ", "THẢM", "ĐÈN", "GÀ"],
                correctAnswer: "GÀ",
                explanation: "Không phải đồ gia dụng"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "NẮNG, MƯA, GIÓ, ÁO",
                options: ["CN", "MƯA", "GIÓ", "ÁO Sơ Mi"],
                correctAnswer: "ÁO Sơ Mi",
                explanation: "Không phải một từ về thời tiết"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ĐĨA, BÁ, CÚP, XE",
                options: ["TẤM", "BÁT", "cốc", "XE"],
                correctAnswer: "XE",
                explanation: "Không phải là đĩa hay hộp đựng"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "XE BUÝT, TÀU TÀU, TÀU, CAT",
                options: ["xe buýt", "TÀU TÀU", "TÀU", "MÈO"],
                correctAnswer: "MÈO",
                explanation: "Không phải là một phương tiện"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MŨ, TẤT, GIÀY, NỒI",
                options: ["MŨ", "TẤT", "GIÀY", "NỒI"],
                correctAnswer: "NỒI",
                explanation: "Đồ nấu nướng, không phải quần áo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MÈO, CHÓ, CHIM, XE TẢI",
                options: ["MÈO", "CHÓ", "CHIM", "XE TẢI"],
                correctAnswer: "XE TẢI",
                explanation: "Không phải là động vật"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "THÁNG 3, THÁNG 4, THỨ BA, THÁNG 6",
                options: ["THÁNG 3", "THÁNG 4", "THỨ BA", "THÁNG 6"],
                correctAnswer: "THỨ BA",
                explanation: "Ngày trong tuần, không phải một tháng"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ĐỎ, XANH, BẢNG, XANH",
                options: ["ĐỎ", "XANH", "BẢNG", "XANH"],
                correctAnswer: "BẢNG",
                explanation: "Không phải một màu sắc"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "DAO, Nĩa, THÌA, GIƯỜNG",
                options: ["CON DAO", "ái nĩa", "THÌA", "GIƯỜNG"],
                correctAnswer: "GIƯỜNG",
                explanation: "Đồ nội thất, không phải dao kéo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ĐẠI BÀNG, HAWK, CÚ, CÁ",
                options: ["ĐẠI BÀNG", "HAWK", "Cú", "CÁ"],
                correctAnswer: "CÁ",
                explanation: "Không phải là một con chim"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "PENNY, NICKEL, DIME, ÁO KHOÁC",
                options: ["xu", "Niken", "DIME", "ÁO KHOÁC"],
                correctAnswer: "ÁO KHOÁC",
                explanation: "Không phải tiền tệ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SƯ TỬ, GẤU, HỔ, PIZZA",
                options: ["SƯ TỬ", "GẤU", "HỔ", "PIZZA"],
                correctAnswer: "PIZZA",
                explanation: "Không phải là động vật"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "TÁO, CHUỐI, CÀ RÊ, NHO",
                options: ["TÁO", "CHUỐI", "Cà rốt", "NHO"],
                correctAnswer: "Cà rốt",
                explanation: "Rau, không phải trái cây"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GHẾ, BÀN, BÀN, CÁ HEO",
                options: ["GHẾ", "BẢNG", "BÀN", "CÁ HEO"],
                correctAnswer: "CÁ HEO",
                explanation: "Động vật biển, không phải đồ nội thất"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ROBIN, ĐẠI BÀNG, CÁ HỒI, Vẹt",
                options: ["ROBIN", "ĐẠI BÀNG", "CÁ HỒI", "Vẹt"],
                correctAnswer: "CÁ HỒI",
                explanation: "Cá chứ không phải chim"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BÓNG CHÀY, TENNIS, CỜ VẬY, BÓNG ĐÁ",
                options: ["BÓNG CHÀY", "quần vợt", "Cờ vua", "BÓNG ĐÁ"],
                correctAnswer: "Cờ vua",
                explanation: "Trò chơi board game, không phải môn thể thao"
            )
        ]
    )

    // MARK: - Exercise 2: Category Cross-Out (Hard)
    private static let categoryCrossoutHard = Exercise(
        id: UUID(),
        title: "Hạng mục Gạch bỏ (Cứng)",
        instructions: "Nhấn vào từ KHÔNG thuộc nhóm.",
        section: .language,
        type: .categoryCrossOut,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TƯƠNG TỰ, ẩn dụ, cường điệu, đoạn",
                options: ["Tương tự", "ẩn dụ", "cường điệu", "đoạn"],
                correctAnswer: "đoạn",
                explanation: "Cấu trúc văn bản, không phải là hình thái lời nói"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "FEMUR, TIBIA, BÁN KÍNH, GIÁC GIÁC",
                options: ["FEMUR", "TIBIA", "BÁNH GIÁ", "giác mạc"],
                correctAnswer: "giác mạc",
                explanation: "Một phần của mắt, không phải xương"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BEETHOVEN, MOZART, PICASSO, CHOPIN",
                options: ["BEETHOVEN", "MOZART", "PICASSO", "CHOPIN"],
                correctAnswer: "PICASSO",
                explanation: "Một họa sĩ, không phải một nhà soạn nhạc"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CARDIGAN, BLAZER, CAO CẤP, ĐỆM",
                options: ["CARDIGAN", "áo khoác", "CỔ RỒNG", "ĐỆM"],
                correctAnswer: "ĐỆM",
                explanation: "Một chiếc giày, không phải quần áo trên cơ thể"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "THAMES, NILE, AMAZON, EVEREST",
                options: ["THAMES", "NILE", "AMAZON", "EVEREST"],
                correctAnswer: "EVEREST",
                explanation: "Một ngọn núi, không phải một dòng sông"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hồi ký, tiểu sử, tự truyện, SONNET",
                options: ["BỘ NHỚ", "TIỂU SỬ", "TỰ TIN", "SONNET"],
                correctAnswer: "SONNET",
                explanation: "Một bài thơ, không phải một câu chuyện cuộc đời"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "INSULIN, ADRENALINE, ESTROGEN, IBUPROFEN",
                options: ["INSULIN", "Adrenaline", "ESTROGEN", "IBUPROFEN"],
                correctAnswer: "IBUPROFEN",
                explanation: "Thuốc được sản xuất, không phải là hormone tự nhiên"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CELSIUS, FHRENHEIT, KELVIN, DECIBEL",
                options: ["độ C", "FAHRENHEIT", "KELVIN", "decibel"],
                correctAnswer: "decibel",
                explanation: "Đo âm thanh, không đo nhiệt độ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BỒI THẨM ĐOẠN, THẨM PHÁN, THÁNH PHÁP, NGUYÊN ĐƠN",
                options: ["BỒI THẦU", "THẨM PHÁN", "Thừa phát lại", "NGUYÊN ĐƠN"],
                correctAnswer: "NGUYÊN ĐƠN",
                explanation: "Một bên trong vụ án, không phải là viên chức tòa án"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SONNET, HAIKU, LIMERICK, VĂN VĂN",
                options: ["SONNET", "HAIKU", "LIMERICK", "văn xuôi"],
                correctAnswer: "văn xuôi",
                explanation: "Không phải là một dạng thơ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SOPRANO, ALTO, TENOR, DÂY DẪN",
                options: ["SOPRANO", "ALTO", "TENOR", "DÂY DẪN"],
                correctAnswer: "DÂY DẪN",
                explanation: "Chỉ huy dàn nhạc, không phải loại giọng hát"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ẤN TƯỢNG, SIÊU THỰC, CUBISM, JAZZ",
                options: ["trường phái ấn tượng", "chủ nghĩa siêu thực", "chủ nghĩa lập thể", "JAZZ"],
                correctAnswer: "JAZZ",
                explanation: "Một thể loại âm nhạc, không phải một phong trào nghệ thuật thị giác"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "STOCKHOLM, OSLO, HELSINKI, BRUSSELS",
                options: ["STOCKHOLM", "OSLO", "HELSINKI", "BRUSSELS"],
                correctAnswer: "BRUSSELS",
                explanation: "Bỉ, không phải thủ đô của Scandinavia"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "RUBY, SAPPHIRE, NGỌC NGỤC QUYỀN, GRANITE",
                options: ["hồng ngọc", "SAPPHIRE", "Ngọc lục bảo", "ĐÁ GRANITE"],
                correctAnswer: "ĐÁ GRANITE",
                explanation: "Đá chứ không phải đá quý"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "PHỤ LỤC, TÚI MẬT, TUYẾN, FEMUR",
                options: ["PHỤ LỤC", "TÚI MẬT", "TUYẾN", "FEMUR"],
                correctAnswer: "FEMUR",
                explanation: "Xương, không phải cơ quan"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CELLO, VIola, đàn hạc, OBOE",
                options: ["CELLO", "viola", "HARP", "OBOE"],
                correctAnswer: "OBOE",
                explanation: "Đàn hơi, không phải nhạc cụ dây"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "FRESCO, MOSAIC, LITHOGRAPH, SONATA",
                options: ["FRESCO", "khảm", "in thạch bản", "bản sonata"],
                correctAnswer: "bản sonata",
                explanation: "Âm nhạc, không phải một loại hình nghệ thuật thị giác"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "QUẦN ĐẢO, FJORD, PLATEAU, PHƯƠNG TIỆN",
                options: ["QUẦN ĐẢO", "FJORD", "TUYỆT VỜI", "NGÔN NGỮ"],
                correctAnswer: "NGÔN NGỮ",
                explanation: "Sự thay đổi ngôn ngữ, không phải là một đặc điểm địa lý"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MAGNESI, CANXI, KALI, DẦU KHÍ",
                options: ["MAGNESIUM", "CANXI", "KALI", "DẦU KHÍ"],
                correctAnswer: "DẦU KHÍ",
                explanation: "Nhiên liệu hóa thạch, không phải nguyên tố khoáng sản"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "FLAMENCO, TANGO, WALTZ, OPERA",
                options: ["FLAMENCO", "TANGO", "ĐẸP", "OPERA"],
                correctAnswer: "OPERA",
                explanation: "Nghệ thuật biểu diễn thanh nhạc, không phải khiêu vũ"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "ĐỘNG MẠCH, TĨNH MẠCH, MẠCH, GÂN",
                options: ["ĐỘNG MẠCH", "tĩnh mạch", "mao mạch", "GÂN"],
                correctAnswer: "GÂN",
                explanation: "Kết nối cơ với xương chứ không phải mạch máu"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lãnh Nguyên, TAIGA, SAVANNA, ĐỒNG BẰNG",
                options: ["vùng lãnh nguyên", "TAIGA", "SAVANNA", "ĐỒNG BẰNG"],
                correctAnswer: "ĐỒNG BẰNG",
                explanation: "Địa hình ở cửa sông, không phải quần xã"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BÃO, Lốc xoáy, gió mùa, chấn động",
                options: ["BÃO", "Lốc xoáy", "gió mùa", "RỦI RO"],
                correctAnswer: "RỦI RO",
                explanation: "Chuyển động địa chấn, không phải hiện tượng thời tiết"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sụn, dây chằng, gân, thần kinh",
                options: ["Sụn", "DÍNH DÍNH", "GÂN", "NEURON"],
                correctAnswer: "NEURON",
                explanation: "Tế bào thần kinh, không phải mô liên kết"
            )
        ]
    )

    // MARK: - Exercise 3: Phrase Completion
    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "Đoán cụm từ thông dụng",
        instructions: "Chọn từ thích hợp nhất để hoàn thành cụm từ thường dùng.",
        section: .language,
        type: .multipleChoice,
        trackedType: .completeTheSaying,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Ăn ___”",
                options: ["cơm", "nước", "áo", "xe"],
                correctAnswer: "cơm",
                explanation: "Trong tiếng Việt, hoạt động ăn uống thường dùng cụm từ ‘ăn cơm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Uống ___”",
                options: ["nước", "cơm", "nhà", "bút"],
                correctAnswer: "nước",
                explanation: "Hoạt động uống chất lỏng thường dùng cụm từ ‘uống nước’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["học", "cơm", "nước", "áo"],
                correctAnswer: "học",
                explanation: "Hoạt động đến trường để tiếp thu kiến thức gọi là ‘đi học’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Mặc ___”",
                options: ["áo", "giày", "mũ", "sách"],
                correctAnswer: "áo",
                explanation: "Hoạt động khoác quần áo lên người gọi là ‘mặc áo’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["giày", "áo", "mũ", "sách"],
                correctAnswer: "giày",
                explanation: "Hoạt động đeo giày vào chân gọi là ‘đi giày’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đội ___”",
                options: ["mũ", "áo", "giày", "í"],
                correctAnswer: "mũ",
                explanation: "Hoạt động đội nón mũ lên đầu gọi là ‘đội mũ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Rửa ___”",
                options: ["tay", "cơm", "nhà", "bút"],
                correctAnswer: "tay",
                explanation: "Hoạt động làm sạch bàn tay gọi là ‘rửa tay’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đọc ___”",
                options: ["sách", "cơm", "nước", "áo"],
                correctAnswer: "sách",
                explanation: "Hoạt động xem nội dung chữ gọi là ‘đọc sách’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Viết ___”",
                options: ["thư", "nước", "áo", "bút"],
                correctAnswer: "thư",
                explanation: "Hoạt động soạn thư để gửi cho người khác gọi là ‘viết thư’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Học ___”",
                options: ["bài", "cơm", "nước", "áo"],
                correctAnswer: "bài",
                explanation: "Hoạt động ôn luyện bài học gọi là ‘học bài’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Xem ___”",
                options: ["phim", "cơm", "nước", "áo"],
                correctAnswer: "phim",
                explanation: "Hoạt động giải trí xem hình ảnh động gọi là ‘xem phim’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Nghe ___”",
                options: ["nhạc", "cơm", "nước", "áo"],
                correctAnswer: "nhạc",
                explanation: "Hoạt động giải trí bằng âm thanh gọi là ‘nghe nhạc’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Lái ___”",
                options: ["xe", "cơm", "nước", "áo"],
                correctAnswer: "xe",
                explanation: "Hoạt động điều khiển phương tiện giao thông gọi là ‘lái xe’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Quét ___”",
                options: ["nhà", "cơm", "nước", "áo"],
                correctAnswer: "nhà",
                explanation: "Hoạt động dọn dẹp vệ sinh nền nhà gọi là ‘quét nhà’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Nấu ___”",
                options: ["cơm", "nước", "áo", "xe"],
                correctAnswer: "cơm",
                explanation: "Hoạt động chuẩn bị bữa ăn gọi là ‘nấu cơm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Chải ___”",
                options: ["tóc", "cơm", "nước", "áo"],
                correctAnswer: "tóc",
                explanation: "Hoạt động làm mượt tóc bằng lược gọi là ‘chải tóc’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đánh ___”",
                options: ["răng", "cơm", "nước", "áo"],
                correctAnswer: "răng",
                explanation: "Hoạt động vệ sinh răng miệng bằng bàn chải gọi là ‘đánh răng’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["ngủ", "cơm", "nước", "áo"],
                correctAnswer: "ngủ",
                explanation: "Hoạt động nằm nghỉ ngơi ban đêm gọi là ‘đi ngủ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Mua ___”",
                options: ["sắm", "cơm", "nước", "áo"],
                correctAnswer: "sắm",
                explanation: "Hoạt động đi chợ chọn mua đồ đạc gọi là ‘mua sắm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Treo ___”",
                options: ["tranh", "cơm", "nước", "áo"],
                correctAnswer: "tranh",
                explanation: "Hoạt động móc tranh ảnh lên tường gọi là ‘treo tranh’."
            )
        ]
    )

    // MARK: - Exercise 4: Synonyms (Easy)
    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "Từ đồng nghĩa (Dễ dàng)",
        instructions: "Chọn từ có nghĩa CÙNG với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: GIẬN",
                options: ["hạnh phúc", "giận dữ", "bình tĩnh", "buồn"],
                correctAnswer: "giận dữ",
                explanation: "'Giận' và 'giận dữ' là hai từ đồng nghĩa. 'Giận' là cảm xúc bực tức, trong khi 'giận dữ' là trạng thái thể hiện sự bực tức đó một cách mạnh mẽ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LẠNH",
                options: ["ấm áp", "đóng băng", "nóng bức", "nhẹ nhàng"],
                correctAnswer: "đóng băng",
                explanation: "'Lạnh' và 'đóng băng' đều miêu tả nhiệt độ thấp, là những từ đồng nghĩa. 'Đóng băng' là trạng thái lạnh đến mức đông cứng, thể hiện mức độ lạnh cực điểm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LỚN",
                options: ["nhỏ bé", "ớn", "ngắn", "ầy"],
                correctAnswer: "ớn",
                explanation: "'Lớn' và 'nhỏ bé' là cặp từ trái nghĩa miêu tả kích thước. Lớn có nghĩa là có kích thước to, còn nhỏ bé thì ngược lại."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: MỆT MỎI",
                options: ["xáo động", "thức dậy", "kiệt sức", "nghỉ ngơi"],
                correctAnswer: "kiệt sức",
                explanation: "'Mệt mỏi' và 'kiệt sức' là từ đồng nghĩa. 'Kiệt sức' là trạng thái mệt mỏi ở mức độ cao nhất, cạn kiệt năng lượng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SỢ",
                options: ["dũng cảm", "kinh hoàng", "bình tĩnh", "in đậm"],
                correctAnswer: "kinh hoàng",
                explanation: "'Sợ' và 'kinh hoàng' đều diễn tả cảm xúc lo lắng, hoảng sợ. 'Kinh hoàng' là đồng nghĩa chỉ mức độ sợ hãi tột độ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LOẠI",
                options: ["nghĩa là", "độc ác", "nhẹ nhàng", "thô lỗ"],
                correctAnswer: "nhẹ nhàng",
                explanation: "Từ gốc tiếng Anh là 'KIND', có thể dịch là 'loại' hoặc 'nhẹ nhàng, tử tế'. Ở đây từ 'loại' được gán nghĩa đồng nghĩa với 'nhẹ nhàng' do cách dịch từ đồng âm tiếng Anh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: NHANH CHÓNG",
                options: ["chậm", "nhanh chóng", "lười biếng", "đần độn"],
                correctAnswer: "nhanh chóng",
                explanation: "'Nhanh chóng' và 'chậm' là cặp từ trái nghĩa về mặt tốc độ. Một bên diễn ra với thời gian ngắn, bên kia mất nhiều thời gian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: CŨ",
                options: ["trẻ", "cổ xưa", "mới", "tươi"],
                correctAnswer: "cổ xưa",
                explanation: "'Cũ' và 'cổ xưa' đều chỉ những sự vật đã tồn tại từ lâu, thuộc về quá khứ và không còn mới, do đó chúng là từ đồng nghĩa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "từ: BẨN",
                options: ["sạch sẽ", "bẩn thỉu", "gọn gàng", "gọn gàng"],
                correctAnswer: "bẩn thỉu",
                explanation: "'Bẩn' và 'bẩn thỉu' là từ đồng nghĩa. Cả hai đều chỉ trạng thái dơ dáy, không sạch sẽ, bám nhiều bụi đất."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SÁNG",
                options: ["mờ", "tối", "rực rỡ", "đần độn"],
                correctAnswer: "rực rỡ",
                explanation: "'Sáng' và 'rực rỡ' là hai từ đồng nghĩa đều miêu tả ánh sáng tỏa ra mạnh mẽ và rất đẹp mắt."
            )
        ]
    )

    // MARK: - Exercise 5: Synonyms (Hard)
    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "Từ đồng nghĩa (Cứng)",
        instructions: "Chọn từ có nghĩa CÙNG với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: SUY NIỆM",
                options: ["vui vẻ", "buồn bã", "vui mừng", "nội dung"],
                correctAnswer: "buồn bã",
                explanation: "'Suy niệm' (thường liên quan đến suy nghĩ sâu xa, trầm ngâm) ở đây đồng nghĩa với 'buồn bã' vì cả hai đều thể hiện trạng thái nội tâm tĩnh lặng, mang nhiều tâm sự u buồn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TÌNH TRẠNG",
                options: ["ồn ào", "bị kích động", "yên bình", "điên cuồng"],
                correctAnswer: "yên bình",
                explanation: "Từ 'Tình trạng' có thể dịch từ tiếng Anh 'STATE' hoặc 'CONDITION', nhưng được liên kết đồng nghĩa với 'yên bình', ám chỉ trạng thái tĩnh lặng, không có sóng gió."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: CAN ĐẢM",
                options: ["rụt rè", "đáng sợ", "dũng cảm", "hèn nhát"],
                correctAnswer: "dũng cảm",
                explanation: "'Can đảm' và 'dũng cảm' là hai từ đồng nghĩa hoàn toàn, đều chỉ phẩm chất gan dạ, không sợ hãi trước khó khăn và nguy hiểm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: ĐẶC BIỆT",
                options: ["bình thường", "kỳ lạ", "bình thường", "điển hình"],
                correctAnswer: "kỳ lạ",
                explanation: "'Đặc biệt' và 'kỳ lạ' đều là từ đồng nghĩa miêu tả những sự vật, sự việc khác thường, không giống với đại đa số bình thường."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: Dồi dào",
                options: ["khan hiếm", "dồi dào", "hiếm", "hạn chế"],
                correctAnswer: "dồi dào",
                explanation: "'Dồi dào' mang ý nghĩa là số lượng rất nhiều, phong phú và đầy đủ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: FEEBLE",
                options: ["mạnh mẽ", "hùng mạnh", "yếu đuối", "khỏe mạnh"],
                correctAnswer: "yếu đuối",
                explanation: "Từ tiếng Anh 'FEEBLE' mang nghĩa yếu ớt. Đồng nghĩa của nó là 'yếu đuối', chỉ sự thiếu hụt về sức mạnh thể chất hoặc tinh thần."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SỐNG ĐỘNG",
                options: ["đần độn", "ngất xỉu", "đầy màu sắc", "nhợt nhạt"],
                correctAnswer: "đầy màu sắc",
                explanation: "'Sống động' và 'đầy màu sắc' đồng nghĩa với nhau vì cả hai từ đều gợi lên hình ảnh tươi tắn, đa dạng, phong phú và tràn đầy năng lượng tích cực."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TIẾT KIỆM",
                options: ["lãng phí", "tiết kiệm", "xa hoa", "hào phóng"],
                correctAnswer: "tiết kiệm",
                explanation: "Hai từ 'tiết kiệm' giống hệt nhau về chữ viết và ý nghĩa, đều chỉ việc sử dụng tài sản, tiền bạc một cách cẩn thận, không lãng phí."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: HIỆU QUẢ",
                options: ["lầm bầm", "nói rõ ràng", "yên tĩnh", "vụng về"],
                correctAnswer: "nói rõ ràng",
                explanation: "'Hiệu quả' trong giao tiếp (như từ gốc ARTICULATE) thường đồng nghĩa với việc 'nói rõ ràng', giúp truyền đạt thông điệp chính xác."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ ngữ: BỀN BỎ",
                options: ["yếu đuối", "bỏ cuộc", "kiên trì", "linh hoạt"],
                correctAnswer: "kiên trì",
                explanation: "'Bền bỏ' (lỗi đánh máy của 'bền bỉ') và 'kiên trì' là đồng nghĩa. Cả hai đều chỉ tính cách không chịu bỏ cuộc, cố gắng theo đuổi mục tiêu đến cùng."
            )
        ]
    )

    // MARK: - Exercise 6: Antonyms (Easy)
    private static let antonymsEasy = Exercise(
        id: UUID(),
        title: "Từ trái nghĩa (Dễ dàng)",
        instructions: "Chọn từ có nghĩa ĐỐI LẠI với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: HẤP DẪN",
                options: ["ấm áp", "lạnh", "mát mẻ", "ấm áp"],
                correctAnswer: "lạnh",
                explanation: "Từ gốc có thể là 'HOT' (được dịch là hấp dẫn) và trái nghĩa với nó là 'lạnh'. Chúng là từ trái nghĩa về nhiệt độ hoặc sắc thái."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: VUI VẺ",
                options: ["vui mừng", "vui vẻ", "buồn", "nội dung"],
                correctAnswer: "buồn",
                explanation: "'Vui vẻ' và 'buồn' là cặp từ trái nghĩa cơ bản. Vui vẻ miêu tả cảm xúc tích cực, hạnh phúc, trong khi buồn là cảm xúc tiêu cực, âu sầu."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LỚN",
                options: ["to lớn", "lớn", "nhỏ bé", "cao"],
                correctAnswer: "nhỏ bé",
                explanation: "'Lớn' và 'nhỏ bé' là cặp từ trái nghĩa miêu tả kích thước. Lớn có nghĩa là có kích thước to, còn nhỏ bé thì ngược lại."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: NHANH CHÓNG",
                options: ["nhanh chóng", "chậm", "nhanh chóng", "nhanh chóng"],
                correctAnswer: "chậm",
                explanation: "'Nhanh chóng' và 'chậm' là cặp từ trái nghĩa về mặt tốc độ. Một bên diễn ra với thời gian ngắn, bên kia mất nhiều thời gian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SẠCH",
                options: ["gọn gàng", "gọn gàng", "dơ bẩn", "tươi"],
                correctAnswer: "dơ bẩn",
                explanation: "'Sạch' và 'dơ bẩn' trái nghĩa nhau. Sạch là trạng thái không có tạp chất hay bụi bẩn, còn dơ bẩn là tình trạng bị vấy bẩn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TỨC THỨC",
                options: ["xáo động", "nhận thức được", "đang ngủ", "hoạt động"],
                correctAnswer: "đang ngủ",
                explanation: "'Tức thức' (lỗi dịch/đánh máy của thức giấc/tỉnh thức) và 'đang ngủ' là trạng thái sinh lý trái ngược nhau hoàn toàn của con người và động vật."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LOUD",
                options: ["ồn ào", "yên tĩnh", "đang bùng nổ", "mạnh mẽ"],
                correctAnswer: "yên tĩnh",
                explanation: "Từ tiếng Anh 'LOUD' (ồn ào, to tiếng) trái nghĩa với 'yên tĩnh', thể hiện sự đối lập tuyệt đối về mức độ âm thanh."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: MỞ",
                options: ["đóng cửa", "rộng", "rõ ràng", "miễn phí"],
                correctAnswer: "đóng cửa",
                explanation: "'Mở' và 'đóng cửa' là hai hành động có chiều hướng ngược nhau, thường dùng cho cửa, sách, hoặc không gian."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: ĐẦY ĐỦ",
                options: ["đóng gói", "trống rỗng", "đã nạp", "hoàn thành"],
                correctAnswer: "trống rỗng",
                explanation: "'Đầy đủ' và 'trống rỗng' trái nghĩa nhau về mặt không gian hoặc số lượng. Một bên chứa đầy dung lượng, bên kia hoàn toàn không có gì bên trong."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TÌNH YÊU",
                options: ["ngưỡng mộ", "thích", "ghét", "quan tâm"],
                correctAnswer: "ghét",
                explanation: "'Tình yêu' và 'ghét' là cảm xúc hoàn toàn trái ngược. Tình yêu là sự gắn bó, quý mến sâu sắc, trong khi ghét là cảm giác thù địch, ác cảm."
            )
        ]
    )

    // MARK: - Exercise 7: Sentence Completion (Easy)
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "Hoàn thành câu (Dễ)",
        instructions: "Chọn từ hoàn thành câu tốt nhất.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy tưới nước cho ___.",
                options: ["hoa", "ầng", "bột mì"],
                correctAnswer: "hoa",
                explanation: "Từ 'hoa' phù hợp với ngữ cảnh 'tưới nước', vì người ta thường tưới nước cho hoa để chúng phát triển."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy mặc ___ của mình.",
                options: ["áo khoác", "thuyền", "con dê"],
                correctAnswer: "áo khoác",
                explanation: "Từ 'áo khoác' chỉ một loại trang phục, phù hợp với động từ 'mặc' và thích hợp để giữ ấm."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tôi cần một ly ___.",
                options: ["nước", "bồi bàn", "người lội nước"],
                correctAnswer: "nước",
                explanation: "Từ 'nước' đi cùng với lượng từ 'một ly' tạo thành cụm từ chỉ thức uống thường dùng để giải khát."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy gọi cô ấy là ___.",
                options: ["mẹ", "làm phiền", "bọt"],
                correctAnswer: "mẹ",
                explanation: "Từ 'mẹ' (trong đáp án là 'ẹ') chỉ người sinh ra mình, phù hợp trong ngữ cảnh xưng hô hoặc gọi tên người thân trong gia đình."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con chó vẫy ___ của nó.",
                options: ["câu chuyện", "đuôi", "cao"],
                correctAnswer: "đuôi",
                explanation: "Hành động 'vẫy đuôi' là đặc trưng của loài chó khi chúng cảm thấy vui vẻ hoặc háo hức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã tắt ___.",
                options: ["chiến đấu", "ánh sáng", "đêm"],
                correctAnswer: "ánh sáng",
                explanation: "Động từ 'tắt' thường đi liền với các thiết bị phát sáng như đèn hoặc 'ánh sáng' khi không cần sử dụng nữa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy nướng một ___.",
                options: ["giả mạo", "ồ", "bánh ngọt"],
                correctAnswer: "bánh ngọt",
                explanation: "Động từ 'nướng' phù hợp với các loại bánh, đặc biệt là 'bánh ngọt', một món tráng miệng phổ biến."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con chim đã xây dựng một ___.",
                options: ["tổ", "nghỉ ngơi", "kiểm tra"],
                correctAnswer: "tổ",
                explanation: "Loài chim có tập tính tự nhiên là xây dựng 'tổ' (trong đáp án là 'ổ') để đẻ trứng và nuôi con."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã đọc ___.",
                options: ["tờ báo", "giấy vụn", "giấy nhám"],
                correctAnswer: "tờ báo",
                explanation: "Động từ 'đọc' kết hợp với 'tờ báo' tạo thành một hoạt động cập nhật tin tức thường ngày."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bọn trẻ chơi trong ___.",
                options: ["công viên", "cỏ cây", "ối"],
                correctAnswer: "công viên",
                explanation: "Từ 'công viên' là không gian rộng rãi, an toàn và lý tưởng cho các hoạt động vui chơi của trẻ em."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã sửa ___.",
                options: ["bồn rửa", "liên kết", "nháy mắt"],
                correctAnswer: "bồn rửa",
                explanation: "'Bồn rửa' là một thiết bị gia dụng có thể bị hỏng và cần được 'sửa' chữa để tiếp tục sử dụng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Món súp quá ___.",
                options: ["nóng bức", "rất nhiều", "dấu chấm"],
                correctAnswer: "nóng bức",
                explanation: "Món súp khi mới nấu xong thường có nhiệt độ cao, nên tính từ mô tả trạng thái 'nóng bức' là hoàn toàn phù hợp."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy đã mở ___.",
                options: ["ô", "hương vani", "khỉ đột"],
                correctAnswer: "ô",
                explanation: "Động từ 'mở' kết hợp với 'ô' (hay dù) mô tả hành động thường làm khi trời mưa hoặc nắng gắt để che chắn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã trả ___.",
                options: ["hóa đơn", "điền vào", "cối xay"],
                correctAnswer: "hóa đơn",
                explanation: "Tương tự như trên, 'trả hoá đơn' là một hành động thanh toán chi phí phổ biến trong đời sống hàng ngày."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Con mèo ngồi trên ___.",
                options: ["chiếu", "ơi", "chuột"],
                correctAnswer: "chiếu",
                explanation: "Từ 'chiếu' chỉ một vật dụng lót trên sàn, là một vị trí êm ái mà loài mèo thường thích nằm hoặc ngồi lên."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy mặc một chiếc ___ ấm áp.",
                options: ["áo len", "ỉ đập", "rải rác"],
                correctAnswer: "áo len",
                explanation: "Từ 'áo len' là loại trang phục có khả năng giữ nhiệt tốt, rất phù hợp với tính từ 'ấm áp' trong câu."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy đã trồng một ___.",
                options: ["vườn", "tha thứ", "cai ngục"],
                correctAnswer: "vườn",
                explanation: "Động từ 'trồng' thường đi liền với cây cối hoặc cả một khu 'vườn', thể hiện hoạt động làm vườn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cô ấy đã viết trong ___ của mình.",
                options: ["nhật ký", "sữa", "hoa cúc"],
                correctAnswer: "nhật ký",
                explanation: "'Nhật ký' là nơi mang tính cá nhân để ghi lại cảm xúc và sự kiện hàng ngày, phù hợp với hành động 'viết'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Anh ấy đã trả ___.",
                options: ["hoá đơn", "điền vào", "cối xay"],
                correctAnswer: "hoá đơn",
                explanation: "Tương tự như trên, 'trả hoá đơn' là một hành động thanh toán chi phí phổ biến trong đời sống hàng ngày."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đứa bé là ___.",
                options: ["đang ngủ", "quét dọn", "ỉ ra"],
                correctAnswer: "đang ngủ",
                explanation: "Cụm từ 'đang ngủ' mô tả trạng thái yên bình và tự nhiên thường thấy ở một đứa bé."
            )
        ]
    )

    // MARK: - Exercise 8: Morphology
    private static let morphology = Exercise(
        id: UUID(),
        title: "Ngữ pháp và lượng từ",
        instructions: "Chọn từ loại hoặc lượng từ thích hợp để hoàn thành câu.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Tôi nhìn thấy một ___ mèo trên sân thượng.”",
                options: ["con", "cái", "chiếc", "bức"],
                correctAnswer: "con",
                explanation: "‘con’ là lượng từ dùng cho động vật."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Mẹ mới mua cho tôi một ___ sách rất hay.”",
                options: ["quyển", "cái", "chiếc", "ấm"],
                correctAnswer: "quyển",
                explanation: "‘quyển’ hoặc ‘cuốn’ là lượng từ dùng cho sách vở."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Ngôi nhà này có một ___ cửa sổ rất lớn.”",
                options: ["cái", "con", "ức", "ngôi"],
                correctAnswer: "cái",
                explanation: "‘cái’ là lượng từ dùng cho đồ vật thông thường."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Bố tôi sở hữu một ___ xe máy màu đỏ.”",
                options: ["chiếc", "con", "cái", "ấm"],
                correctAnswer: "chiếc",
                explanation: "‘chiếc’ hoặc ‘cái’ là lượng từ dùng cho phương tiện giao thông."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Bức ___ vẽ phong cảnh treo ở phòng khách.”",
                options: ["tranh", "ảnh", "vẽ", "màu"],
                correctAnswer: "tranh",
                explanation: "‘bức tranh’ là danh từ chỉ tác phẩm hội họa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Hôm qua, chúng tôi đã ___ một bộ phim rất xúc động.”",
                options: ["xem", "nghe", "đọc", "nói"],
                correctAnswer: "xem",
                explanation: "Động từ dùng cho phim ảnh là ‘xem’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Anh ấy đang ___ xe đạp trên đường công viên.”",
                options: ["đạp", "cái", "chạy", "đi"],
                correctAnswer: "đạp",
                explanation: "Động từ dùng cho xe đạp là ‘đạp xe’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Cô giáo đang ___ bài giảng trên bảng đen.”",
                options: ["viết", "đọc", "nói", "nghe"],
                correctAnswer: "viết",
                explanation: "Hoạt động ghi chữ lên bảng là ‘viết’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Trời hôm nay ___ mưa to tầm tã.”",
                options: ["đang", "đã", "sẽ", "vừa"],
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
                options: ["chăm", "lười", "ngoan", "giỏi"],
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
                options: ["tốt", "xấu", "nhanh", "chậm"],
                correctAnswer: "tốt",
                explanation: "Tính từ chỉ chất lượng hoạt động của thiết bị."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Bầu trời đêm đầy ___ sáng lấp lánh.”",
                options: ["sao", "mây", "trăng", "ắng"],
                correctAnswer: "sao",
                explanation: "Thiên thể phát sáng ban đêm là ‘ngôi sao’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Một ___ nhà cao tầng mới xây ở góc phố.”",
                options: ["ngôi", "ái", "chiếc", "bức"],
                correctAnswer: "ngôi",
                explanation: "‘ngôi’ là lượng từ dùng cho nhà cửa, công trình."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Chị tôi đeo một ___ kính cận màu đen.”",
                options: ["cặp", "cái", "chiếc", "ấm"],
                correctAnswer: "cặp",
                explanation: "‘cặp kính’ hoặc ‘chiếc kính’ là cách gọi thông dụng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Họ vừa hoàn thành xong ___ học kỳ đầu tiên.”",
                options: ["một", "những", "các", "mọi"],
                correctAnswer: "một",
                explanation: "Chỉ số lượng một học kỳ cụ thể."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Hãy uống nước ___ trước khi đi ngủ.”",
                options: ["ấm", "lạnh", "nóng", "đá"],
                correctAnswer: "ấm",
                explanation: "Lời khuyên sức khỏe uống nước ấm tốt cho cơ thể."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chọn từ thích hợp điền vào chỗ trống: “Người nghệ sĩ đang kéo đàn ___ rất hay.”",
                options: ["vĩ cầm", "tranh", "bầu", "guitar"],
                correctAnswer: "vĩ cầm",
                explanation: "Nhạc cụ kéo bằng vĩ là ‘đàn vĩ cầm’ (violin)."
            )
        ]
    )

    // MARK: - Exercise 10: Analogies
    private static let analogies = Exercise(
        id: UUID(),
        title: "Tương tự",
        instructions: "Chọn từ phù hợp nhất với sự tương tự.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "PUPPY đối với CHÓ cũng như KITTEN đối với ___",
                options: ["con mèo", "con chó", "chim", "Cá"],
                correctAnswer: "con mèo",
                explanation: "Đây là mối quan hệ giữa con non và con trưởng thành. Puppy là chó con, tương tự Kitten là mèo con, nên đáp án là 'con mèo'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "LẠNH là MÙA ĐÔNG cũng như HẤP DẪN là ___",
                options: ["Mùa xuân", "Mùa thu", "Mùa hè", "Mưa"],
                correctAnswer: "Mùa hè",
                explanation: "Đây là mối quan hệ giữa đặc trưng nhiệt độ và mùa. Lạnh là đặc trưng của mùa đông, tương tự như nhiệt độ nóng (từ gốc 'HOT' bị dịch nhầm thành 'HẤP DẪN') là đặc trưng của 'Mùa hè'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "MẮT là để XEM cũng như TAI là để ___",
                options: ["Chạm vào", "Nghe", "Mùi", "Hương vị"],
                correctAnswer: "Nghe",
                explanation: "Đây là mối quan hệ giữa cơ quan cảm giác và chức năng của chúng. Mắt dùng để nhìn (xem), tương tự tai dùng để 'Nghe'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CHEF đối với BẾP cũng như BÁC SĨ đối với ___",
                options: ["Thư viện", "bệnh viện", "trường học", "cửa hàng"],
                correctAnswer: "bệnh viện",
                explanation: "Đây là mối quan hệ giữa nghề nghiệp và nơi làm việc. Đầu bếp (chef) làm việc trong bếp, tương tự bác sĩ làm việc tại 'bệnh viện'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GĂNG TAY là TAY cũng như TẤT là ___",
                options: ["cánh tay", "Đầu gối", "chân", "cái đầu"],
                correctAnswer: "chân",
                explanation: "Đây là mối quan hệ giữa trang phục và bộ phận cơ thể tương ứng. Găng tay dùng để đeo ở tay, tương tự tất dùng để mang ở 'chân'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "VUI là CƯỜI cũng như Buồn là ___",
                options: ["Mỉm cười", "Ngủ", "Khóc", "Chạy"],
                correctAnswer: "Khóc",
                explanation: "Đây là mối quan hệ giữa cảm xúc và biểu hiện thể chất. Vui vẻ dẫn đến tiếng cười, tương tự nỗi buồn thường dẫn đến việc 'Khóc'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BIRD là NEST cũng như BEAR là ___",
                options: ["Cây", "Hang động", "đại dương", "trường"],
                correctAnswer: "Hang động",
                explanation: "Đây là mối quan hệ giữa loài vật và nơi trú ẩn tự nhiên. Chim (bird) sống trong tổ (nest), tương tự gấu (bear) sống trong 'Hang động'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "BÚT CHÌ dùng để VIẾT cũng như BRUSH dùng để ___",
                options: ["Cắt", "Sơn", "Quét", "Khuấy"],
                correctAnswer: "Sơn",
                explanation: "Đây là mối quan hệ giữa dụng cụ và công dụng của nó. Bút chì dùng để viết, tương tự cọ (brush) dùng để 'Sơn' hoặc vẽ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "NGÀY là ĐÊM và ĐEN là ___",
                options: ["Tối", "Màu xám", "trắng", "Màu xanh"],
                correctAnswer: "trắng",
                explanation: "Đây là mối quan hệ đối lập (trái nghĩa). Ngày đối lập với đêm, tương tự như màu đen đối lập với màu 'trắng'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "SOLDIER đối với ARMY cũng như Sailor đối với ___",
                options: ["Không quân", "Thủy quân lục chiến", "hải quân", "bảo vệ"],
                correctAnswer: "hải quân",
                explanation: "Đây là mối quan hệ giữa cá nhân và lực lượng quân sự mà họ phục vụ. Người lính (soldier) thuộc quân đội (army), tương tự lính thủy (sailor) thuộc về 'hải quân'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "WHEEL là XE còn WING là ___",
                options: ["Thuyền", "Máy bay", "Tàu hỏa", "xe buýt"],
                correctAnswer: "Máy bay",
                explanation: "Đây là mối quan hệ giữa bộ phận và tổng thể di chuyển. Bánh xe (wheel) là bộ phận giúp xe di chuyển, tương tự cánh (wing) là bộ phận của 'Máy bay'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "GIÁO VIÊN đối với TRƯỜNG cũng như THẨM PHÁN đối với ___",
                options: ["văn phòng", "bệnh viện", "phòng xử án", "cửa hàng"],
                correctAnswer: "phòng xử án",
                explanation: "Đây là mối quan hệ giữa nghề nghiệp và nơi làm việc đặc trưng. Giáo viên làm việc tại trường học, tương tự thẩm phán làm việc tại 'phòng xử án' (tòa án)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "CATERPILLAR là BƯỚM cũng như Nòng Nòng là ___",
                options: ["Cá", "Rùa", "Ếch", "thằn lằn"],
                correctAnswer: "Ếch",
                explanation: "Đây là mối quan hệ giữa giai đoạn ấu trùng và con trưởng thành. Sâu bướm (caterpillar) lớn lên thành bướm, tương tự nòng nọc (viết sai thành nòng nòng) lớn lên thành 'Ếch'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "THỰC PHẨM là ĐÓI cũng như NƯỚC là ___",
                options: ["Ướt", "Khát nước", "Lạnh", "Đầy đủ"],
                correctAnswer: "Khát nước",
                explanation: "Đây là mối quan hệ giữa nhu cầu thể chất và thứ để giải quyết nó. Thực phẩm giải quyết cơn đói, tương tự nước giải quyết cơn 'Khát nước'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "LEN dành cho CỪU cũng như LỤA dành cho ___",
                options: ["nhện", "Tằm", "Bông", "vải lanh"],
                correctAnswer: "Tằm",
                explanation: "Đây là mối quan hệ giữa chất liệu và loài vật tạo ra nó. Len được lấy từ lông cừu, tương tự lụa được dệt từ tơ của con 'Tằm'."
            )
        ]
    )

    // MARK: - Exercise 11: Fact or Opinion
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "Sự thật hoặc ý kiến",
        instructions: "Quyết định: tuyên bố này là SỰ THẬT hay Ý KIẾN?",
        section: .language,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Có 7 ngày trong một tuần.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật khách quan và có thể được chứng minh dựa trên hệ thống lịch tiêu chuẩn được toàn cầu công nhận."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vani là hương vị ngon nhất của kem.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến chủ quan vì sở thích về hương vị kem là khác nhau tùy thuộc vào cảm nhận cá nhân của mỗi người."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước đóng băng ở nhiệt độ 32 độ F.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật khoa học đã được đo lường và chứng minh chính xác theo thang đo nhiệt độ Fahrenheit."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chó là vật nuôi tốt nhất.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến cá nhân vì khái niệm 'tốt nhất' phụ thuộc vào sở thích và điều kiện sống của từng người đối với các loài vật nuôi khác nhau."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Một hình tam giác có ba cạnh.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật mang tính định nghĩa cơ bản trong hình học toán học không thể bác bỏ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chương trình truyền hình đó thật buồn cười.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một quan điểm chủ quan bởi vì khiếu hài hước là tùy thuộc vào gu thưởng thức của từng cá nhân."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Abraham Lincoln là một Tổng thống Hoa Kỳ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự kiện lịch sử có thật và được ghi nhận chính thức trong các tài liệu lịch sử của nước Mỹ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Trái đất là hành tinh tốt nhất.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một đánh giá mang tính chủ quan vì không có tiêu chuẩn khoa học tuyệt đối nào để định nghĩa thế nào là một hành tinh 'tốt nhất'."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có 60 phút trong một giờ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật về quy ước đo lường thời gian đã được chuẩn hóa và áp dụng trên toàn thế giới."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hoa tulip đẹp hơn hoa hồng.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến cá nhân vì tiêu chuẩn về vẻ đẹp của các loài hoa phụ thuộc hoàn toàn vào thẩm mỹ của từng người."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Washington D.C. là thủ đô của Hoa Kỳ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một thực tế địa lý và chính trị khách quan có thể xác minh được qua các tài liệu chính thức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Thật thô lỗ khi nói chuyện với cái miệng đầy thức ăn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Dù được nhiều người đồng tình, đây vẫn là một quan điểm về phép lịch sự xã hội và có thể khác biệt giữa các nền văn hóa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có 12 tháng trong một năm.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật khách quan dựa trên hệ thống lịch Gregorian được sử dụng phổ biến nhất hiện nay."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dậy sớm là tốt cho bạn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến đánh giá vì 'tốt' hay không còn phụ thuộc vào nhịp sinh học và lối sống của từng cá nhân."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "2 + 2 = 4.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một định lý toán học cơ bản, đúng tuyệt đối và có thể chứng minh một cách logic."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đại dương được làm từ nước mặn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật khoa học về thành phần của các đại dương trên Trái đất đã được kiểm chứng."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Làm vườn là một sở thích tuyệt vời.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một nhận định chủ quan vì sự hứng thú với việc làm vườn khác nhau ở mỗi người."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đá nặng hơn lông có cùng kích thước.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật khoa học dựa trên tính chất vật lý về mật độ, vì đá có khối lượng riêng lớn hơn nhiều so với lông."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hoa Kỳ có 50 tiểu bang.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật chính trị và địa lý khách quan được ghi nhận chính thức bởi chính phủ Mỹ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pizza là món ăn ngon nhất.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến chủ quan hoàn toàn phụ thuộc vào sở thích ẩm thực cá nhân."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tập thể dục có lợi cho sức khỏe của bạn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật y khoa đã được nhiều nghiên cứu khoa học chứng minh là mang lại các lợi ích sinh lý."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nhạc cổ điển chán quá.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến cá nhân đánh giá về cảm thụ âm nhạc, điều mà mỗi người sẽ có cảm nhận khác nhau."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Táo và cam đều là trái cây.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật hiển nhiên dựa trên phân loại thực vật học cơ bản."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mèo dễ nuôi hơn chó.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: "Đây là một ý kiến đánh giá chủ quan vì mức độ 'dễ nuôi' phụ thuộc vào kinh nghiệm và hoàn cảnh của người nuôi."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có 24 giờ trong một ngày.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: "Đây là một sự thật được xác lập dựa trên chu kỳ tự quay của Trái đất và quy ước thời gian quốc tế."
            )
        ]
    )

    // MARK: - Exercise 12: Sequencing Steps
    private static let sequencingSteps = Exercise(
        id: UUID(),
        title: "Trình tự các bước",
        instructions: "Các bước được hiển thị theo thứ tự SAI. Đánh số 1, 2, 3... để xếp chúng theo đúng thứ tự.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "làm bánh mì nướng",
                options: ["Bơ bánh mì nướng", "Cho bánh mì vào lò nướng", "Loại bỏ khỏi máy nướng bánh mì", "ăn"],
                correctAnswer: "Cho bánh mì vào lò nướng | Loại bỏ khỏi máy nướng bánh mì | Bơ bánh mì nướng | ăn",
                explanation: "Đây là trình tự logic các bước để làm món bánh mì nướng: đầu tiên nướng bánh, sau đó lấy ra, phết bơ lên bề mặt và cuối cùng là thưởng thức."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rửa tay",
                options: ["Lau khô tay bằng khăn", "Thoa xà phòng lên tay", "Bật nước", "Chà trong 20 giây", "Xả sạch xà phòng", "Làm ướt tay bạn"],
                correctAnswer: "Bật nước | Làm ướt tay bạn | Thoa xà phòng lên tay | Chà trong 20 giây | Xả sạch xà phòng | Lau khô tay bằng khăn",
                explanation: "Đây là trình tự chuẩn theo hướng dẫn vệ sinh: bắt đầu bằng việc làm ướt tay với nước, dùng xà phòng chà sát đủ lâu để diệt khuẩn, rửa sạch lại rồi lau khô."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pha cà phê",
                options: ["Đổ cà phê vào cốc của bạn", "Thêm bã cà phê vào bộ lọc", "Nhấn nút pha", "Đổ đầy hồ chứa nước"],
                correctAnswer: "Đổ đầy hồ chứa nước | Thêm bã cà phê vào bộ lọc | Nhấn nút pha | Đổ cà phê vào cốc của bạn",
                explanation: "Đây là quy trình thao tác máy pha cà phê cơ bản: chuẩn bị nước và bột cà phê, sau đó kích hoạt quá trình pha rồi mới rót thành phẩm ra cốc."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Thực hiện cuộc gọi điện thoại",
                options: ["Nói xin chào", "Cúp máy", "Nhấc điện thoại lên", "Quay số", "Có cuộc trò chuyện của bạn"],
                correctAnswer: "Nhấc điện thoại lên | Quay số | Nói xin chào | Có cuộc trò chuyện của bạn | Cúp máy",
                explanation: "Đây là chuỗi hành động hợp lý theo thứ tự thời gian của một cuộc gọi: chuẩn bị thiết bị, kết nối (quay số), chào hỏi, trò chuyện và kết thúc bằng việc cúp máy."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mặc quần áo",
                options: ["Mang giày vào", "Mặc áo vào", "Mặc đồ lót", "Mang tất vào", "Mặc quần vào"],
                correctAnswer: "Mặc đồ lót | Mặc áo vào | Mặc quần vào | Mang tất vào | Mang giày vào",
                explanation: "Trình tự ăn mặc đi từ các lớp quần áo bên trong ra bên ngoài, từ thân trên xuống thân dưới rồi mới đến các phụ kiện đi lại như giày tất."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Quét sàn",
                options: ["Vứt vào thùng rác", "Lấy chổi ra", "Đổ rác vào thùng rác", "Quét các mảnh vụn thành một đống"],
                correctAnswer: "Lấy chổi ra | Quét các mảnh vụn thành một đống | Đổ rác vào thùng rác | Vứt vào thùng rác",
                explanation: "Trình tự dọn dẹp logic: lấy dụng cụ, gom rác lại một chỗ bằng chổi, thu gom lại và cuối cùng đem vứt bỏ."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đặt hàng tại nhà hàng",
                options: ["Ăn bữa ăn của bạn", "Báo cho máy chủ biết đơn đặt hàng của bạn", "ngồi xuống", "Đợi đồ ăn của bạn", "Xem lại thực đơn"],
                correctAnswer: "ngồi xuống | Xem lại thực đơn | Báo cho máy chủ biết đơn đặt hàng của bạn | Đợi đồ ăn của bạn | Ăn bữa ăn của bạn",
                explanation: "Quy trình ăn uống tại nhà hàng thông thường đi từ việc ổn định chỗ ngồi, chọn món, gọi món với nhân viên, chờ phục vụ và thưởng thức bữa ăn."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "bánh nướng",
                options: ["Để bánh nguội", "Nướng trong lò", "Làm nóng lò trước", "Trộn các thành phần", "Múc bột lên khay nướng"],
                correctAnswer: "Làm nóng lò trước | Trộn các thành phần | Múc bột lên khay nướng | Nướng trong lò | Để bánh nguội",
                explanation: "Trình tự làm bánh chuẩn xác đòi hỏi lò phải nóng trước, song song với việc chuẩn bị bột, sau đó tiến hành nướng và phải chờ bánh nguội bớt trước khi lấy hoặc thưởng thức."
            )
        ]
    )

    // MARK: - Exercise 33: Rhyming Pairs
    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "Cặp từ hiệp vần",
        instructions: "Chọn từ hiệp vần với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "cát", options: ["mát", "bàn", "chén", "ghế"], correctAnswer: "mát", explanation: "Cát và mát hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "hoa", options: ["qua", "quả", "lá", "cành"], correctAnswer: "qua", explanation: "Hoa và qua hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "chén", options: ["nén", "bát", "đĩa", "thìa"], correctAnswer: "nén", explanation: "Chén và nén hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "bàn", options: ["màn", "ghế", "tủ", "giường"], correctAnswer: "màn", explanation: "Bàn và màn hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "mây", options: ["cây", "gió", "nước", "đất"], correctAnswer: "cây", explanation: "Mây và cây hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "trăng", options: ["măng", "sao", "nắng", "mưa"], correctAnswer: "măng", explanation: "Trăng và măng hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "thuyền", options: ["quyền", "biển", "sông", "bến"], correctAnswer: "quyền", explanation: "Thuyền và quyền hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "sách", options: ["nách", "vở", "bút", "thước"], correctAnswer: "nách", explanation: "Sách và nách hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "chuông", options: ["gương", "trống", "đèn", "đường"], correctAnswer: "gương", explanation: "Chuông và gương hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "nắng", options: ["trắng", "mưa", "gió", "lạnh"], correctAnswer: "trắng", explanation: "Nắng và trắng hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "sông", options: ["đồng", "núi", "biển", "đất"], correctAnswer: "đồng", explanation: "Sông và đồng hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "đèn", options: ["phèn", "nến", "lửa", "khói"], correctAnswer: "phèn", explanation: "Đèn và phèn hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "chim", options: ["tìm", "cá", "mèo", "thú"], correctAnswer: "tìm", explanation: "Chim và tìm hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "vườn", options: ["đường", "cây", "hoa", "nhà"], correctAnswer: "đường", explanation: "Vườn và đường hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "lá", options: ["đá", "cành", "rễ", "thân"], correctAnswer: "đá", explanation: "Lá và đá hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "trà", options: ["nhà", "nước", "ly", "chén"], correctAnswer: "nhà", explanation: "Trà và nhà hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "bút", options: ["hút", "mực", "thước", "sách"], correctAnswer: "hút", explanation: "Bút và hút hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "cá", options: ["má", "sông", "biển", "hồ"], correctAnswer: "má", explanation: "Cá và má hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "mưa", options: ["trưa", "nắng", "gió", "lạnh"], correctAnswer: "trưa", explanation: "Mưa và trưa hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "gió", options: ["chó", "mây", "trời", "nắng"], correctAnswer: "chó", explanation: "Gió và chó hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "đất", options: ["nhất", "cát", "đá", "nước"], correctAnswer: "nhất", explanation: "Đất và nhất hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "nước", options: ["trước", "sau", "trong", "đục"], correctAnswer: "trước", explanation: "Nước và trước hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "lửa", options: ["nửa", "khói", "than", "bếp"], correctAnswer: "nửa", explanation: "Lửa và nửa hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "cơm", options: ["thơm", "canh", "rau", "cá"], correctAnswer: "thơm", explanation: "Cơm và thơm hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "áo", options: ["cháo", "quần", "mũ", "giày"], correctAnswer: "cháo", explanation: "Áo và cháo hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "tóc", options: ["khóc", "tai", "mắt", "mũi"], correctAnswer: "khóc", explanation: "Tóc và khóc hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "đầu", options: ["cầu", "tay", "chân", "mắt"], correctAnswer: "cầu", explanation: "Đầu và cầu hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "canh", options: ["xanh", "rau", "thịt", "muối"], correctAnswer: "xanh", explanation: "Canh và xanh hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "khoai", options: ["tài", "sắn", "ngô", "lúa"], correctAnswer: "tài", explanation: "Khoai và tài hiệp vần."),
            ExerciseItem(id: UUID(), prompt: "chuối", options: ["muối", "cam", "quýt", "bưởi"], correctAnswer: "muối", explanation: "Chuối và muối hiệp vần.")
        ]
    )

    // MARK: - Exercise 34: Word Association
    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "Liên kết từ",
        instructions: "Chọn từ có mối liên hệ mật thiết nhất với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bác sĩ", options: ["Bệnh viện", "Trường học", "Nhà bếp", "Khu vườn"], correctAnswer: "Bệnh viện", explanation: "Bác sĩ làm việc tại bệnh viện."),
            ExerciseItem(id: UUID(), prompt: "Bút chì", options: ["Giấy", "Cốc", "Dao", "Muỗng"], correctAnswer: "Giấy", explanation: "Bút chì dùng để viết trên giấy."),
            ExerciseItem(id: UUID(), prompt: "Bánh mì", options: ["Lò nướng", "Tủ lạnh", "Xe đạp", "Tivi"], correctAnswer: "Lò nướng", explanation: "Bánh mì được nướng trong lò."),
            ExerciseItem(id: UUID(), prompt: "Mưa", options: ["Ô (dù)", "Kính", "Bản đồ", "Búa"], correctAnswer: "Ô (dù)", explanation: "Dùng ô khi đi trời mưa."),
            ExerciseItem(id: UUID(), prompt: "Đầu bếp", options: ["Dao bếp", "Thước kẻ", "Vở", "Phấn"], correctAnswer: "Dao bếp", explanation: "Đầu bếp sử dụng dao bếp."),
            ExerciseItem(id: UUID(), prompt: "Điện thoại", options: ["Tin nhắn", "Xe hơi", "Bàn ăn", "Cửa sổ"], correctAnswer: "Tin nhắn", explanation: "Điện thoại dùng để gửi tin nhắn."),
            ExerciseItem(id: UUID(), prompt: "Thư viện", options: ["Sách", "Ghế sofa", "Xe máy", "Quần áo"], correctAnswer: "Sách", explanation: "Thư viện là nơi chứa sách."),
            ExerciseItem(id: UUID(), prompt: "Học sinh", options: ["Trường học", "Công trường", "Bệnh viện", "Nhà ga"], correctAnswer: "Trường học", explanation: "Học sinh đi học ở trường."),
            ExerciseItem(id: UUID(), prompt: "Chìa khóa", options: ["Ổ khóa", "Bàn ghế", "Cây xanh", "Quyển vở"], correctAnswer: "Ổ khóa", explanation: "Chìa khóa dùng mở ổ khóa."),
            ExerciseItem(id: UUID(), prompt: "Gạo", options: ["Cơm", "Canh", "Nước sôi", "Bánh ngọt"], correctAnswer: "Cơm", explanation: "Gạo được nấu thành cơm."),
            ExerciseItem(id: UUID(), prompt: "Nha sĩ", options: ["Răng", "Mắt", "Tai", "Mũi"], correctAnswer: "Răng", explanation: "Nha sĩ chăm sóc răng miệng."),
            ExerciseItem(id: UUID(), prompt: "Cảnh sát", options: ["Trộm", "Giáo viên", "Bác sĩ", "Học sinh"], correctAnswer: "Trộm", explanation: "Cảnh sát bắt trộm."),
            ExerciseItem(id: UUID(), prompt: "Cá", options: ["Nước", "Đất", "Không khí", "Cát"], correctAnswer: "Nước", explanation: "Cá sống dưới nước."),
            ExerciseItem(id: UUID(), prompt: "Bóng đá", options: ["Sân cỏ", "Phòng học", "Nhà bếp", "Bệnh viện"], correctAnswer: "Sân cỏ", explanation: "Bóng đá chơi trên sân cỏ."),
            ExerciseItem(id: UUID(), prompt: "Tàu hỏa", options: ["Đường ray", "Đường bộ", "Đường hàng không", "Sông"], correctAnswer: "Đường ray", explanation: "Tàu hỏa chạy trên đường ray."),
            ExerciseItem(id: UUID(), prompt: "Nông dân", options: ["Cánh đồng", "Văn phòng", "Lớp học", "Bệnh viện"], correctAnswer: "Cánh đồng", explanation: "Nông dân làm việc trên cánh đồng."),
            ExerciseItem(id: UUID(), prompt: "Ca sĩ", options: ["Micro", "Búa", "Cưa", "Kìm"], correctAnswer: "Micro", explanation: "Ca sĩ hát bằng micro."),
            ExerciseItem(id: UUID(), prompt: "Phi hành gia", options: ["Vũ trụ", "Đại dương", "Rừng rậm", "Sa mạc"], correctAnswer: "Vũ trụ", explanation: "Phi hành gia bay vào vũ trụ."),
            ExerciseItem(id: UUID(), prompt: "Họa sĩ", options: ["Cọ vẽ", "Thước kẻ", "Búa", "Dao"], correctAnswer: "Cọ vẽ", explanation: "Họa sĩ dùng cọ để vẽ tranh."),
            ExerciseItem(id: UUID(), prompt: "Luật sư", options: ["Tòa án", "Bệnh viện", "Nhà bếp", "Khu vườn"], correctAnswer: "Tòa án", explanation: "Luật sư bào chữa tại tòa án."),
            ExerciseItem(id: UUID(), prompt: "Lái xe", options: ["Vô lăng", "Thước kẻ", "Bút chì", "Chén bát"], correctAnswer: "Vô lăng", explanation: "Lái xe sử dụng vô lăng."),
            ExerciseItem(id: UUID(), prompt: "Thợ may", options: ["Kim chỉ", "Dao kéo", "Thước kẻ", "Búa đinh"], correctAnswer: "Kim chỉ", explanation: "Thợ may dùng kim chỉ để may vá."),
            ExerciseItem(id: UUID(), prompt: "Nhà văn", options: ["Trang sách", "Cốc nước", "Chiếc bàn", "Bức tranh"], correctAnswer: "Trang sách", explanation: "Nhà văn viết những trang sách."),
            ExerciseItem(id: UUID(), prompt: "Kỹ sư", options: ["Bản vẽ", "Nhà bếp", "Khu vườn", "Sân cỏ"], correctAnswer: "Bản vẽ", explanation: "Kỹ sư thiết kế bản vẽ kỹ thuật.")
        ]
    )

    // MARK: - Exercise 35: Complete the Saying
    private static let completeTheSaying = Exercise(
        id: UUID(),
        title: "Đoán cụm từ thông dụng",
        instructions: "Chọn từ thích hợp nhất để hoàn thành cụm từ thường dùng.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ăn quả nhớ kẻ trồng ___.", options: ["cây", "hoa", "quả", "lá"], correctAnswer: "cây", explanation: "Ăn quả nhớ kẻ trồng cây."),
            ExerciseItem(id: UUID(), prompt: "Gần mực thì đen, gần đèn thì ___.", options: ["sáng", "tối", "mờ", "đỏ"], correctAnswer: "sáng", explanation: "Gần mực thì đen, gần đèn thì sáng."),
            ExerciseItem(id: UUID(), prompt: "Lá lành đùm lá ___.", options: ["rách", "hỏng", "nát", "úa"], correctAnswer: "rách", explanation: "Lá lành đùm lá rách."),
            ExerciseItem(id: UUID(), prompt: "Có công mài sắt, có ngày nên ___.", options: ["kim", "búa", "đinh", "xà"], correctAnswer: "kim", explanation: "Có công mài sắt, có ngày nên kim."),
            ExerciseItem(id: UUID(), prompt: "Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi ___.", options: ["cao", "thấp", "nhỏ", "dài"], correctAnswer: "cao", explanation: "Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi cao."),
            ExerciseItem(id: UUID(), prompt: "Uống nước nhớ ___.", options: ["nguồn", "sông", "biển", "suối"], correctAnswer: "nguồn", explanation: "Uống nước nhớ nguồn."),
            ExerciseItem(id: UUID(), prompt: "Không thầy đố mày làm ___.", options: ["nên", "được", "xong", "hoàn"], correctAnswer: "nên", explanation: "Không thầy đố mày làm nên."),
            ExerciseItem(id: UUID(), prompt: "Đi một ngày đàng, học một sàng ___.", options: ["khôn", "chữ", "sách", "học"], correctAnswer: "khôn", explanation: "Đi một ngày đàng, học một sàng khôn."),
            ExerciseItem(id: UUID(), prompt: "Đói cho sạch, rách cho ___.", options: ["thơm", "đẹp", "ngoan", "sạch"], correctAnswer: "thơm", explanation: "Đói cho sạch, rách cho thơm."),
            ExerciseItem(id: UUID(), prompt: "Thương người như thể thương ___.", options: ["thân", "nhà", "nước", "mình"], correctAnswer: "thân", explanation: "Thương người như thể thương thân."),
            ExerciseItem(id: UUID(), prompt: "Tốt gỗ hơn tốt nước ___.", options: ["sơn", "vôi", "bạc", "vàng"], correctAnswer: "sơn", explanation: "Tốt gỗ hơn tốt nước sơn."),
            ExerciseItem(id: UUID(), prompt: "Bầu ơi thương lấy bí cùng, tuy rằng khác giống nhưng chung một ___.", options: ["giàn", "nhà", "vườn", "ruộng"], correctAnswer: "giàn", explanation: "Bầu ơi thương lấy bí cùng, tuy rằng khác giống nhưng chung một giàn."),
            ExerciseItem(id: UUID(), prompt: "Chị ngã em ___.", options: ["nâng", "đỡ", "cười", "khóc"], correctAnswer: "nâng", explanation: "Chị ngã em nâng."),
            ExerciseItem(id: UUID(), prompt: "Ăn trông nồi, ngồi trông ___.", options: ["hướng", "chỗ", "người", "nhà"], correctAnswer: "hướng", explanation: "Ăn trông nồi, ngồi trông hướng."),
            ExerciseItem(id: UUID(), prompt: "Có chí thì ___.", options: ["nên", "được", "thành", "bại"], correctAnswer: "nên", explanation: "Có chí thì nên."),
            ExerciseItem(id: UUID(), prompt: "Cha mẹ sinh con, trời sinh ___.", options: ["tính", "tâm", "đức", "tài"], correctAnswer: "tính", explanation: "Cha mẹ sinh con, trời sinh tính."),
            ExerciseItem(id: UUID(), prompt: "Nực cười châu chấu đá xe, tưởng rằng chấu ngã, ai dè xe ___.", options: ["nghiêng", "đổ", "chạy", "hỏng"], correctAnswer: "nghiêng", explanation: "Nực cười châu chấu đá xe, tưởng rằng chấu ngã, ai dè xe nghiêng."),
            ExerciseItem(id: UUID(), prompt: "Nước chảy đá ___.", options: ["mòn", "vỡ", "nứt", "chảy"], correctAnswer: "mòn", explanation: "Nước chảy đá mòn."),
            ExerciseItem(id: UUID(), prompt: "Gieo gió gặt ___.", options: ["bão", "mưa", "nắng", "gió"], correctAnswer: "bão", explanation: "Gieo gió gặt bão."),
            ExerciseItem(id: UUID(), prompt: "Lửa gần rơm lâu ngày cũng ___.", options: ["bén", "cháy", "tắt", "hỏng"], correctAnswer: "bén", explanation: "Lửa gần rơm lâu ngày cũng bén.")
        ]
    )

    // MARK: - Exercise 36: Compound Words
    private static let compoundWords = Exercise(
        id: UUID(),
        title: "Ghép từ thành nghĩa",
        instructions: "Chọn từ thích hợp để hoàn thành một từ ghép có nghĩa trong tiếng Việt.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "bàn + ___", options: ["ghế", "áo", "quần", "mũ"], correctAnswer: "ghế", explanation: "bàn + ghế = bàn ghế."),
            ExerciseItem(id: UUID(), prompt: "sách + ___", options: ["vở", "mực", "bút", "thước"], correctAnswer: "vở", explanation: "sách + vở = sách vở."),
            ExerciseItem(id: UUID(), prompt: "quần + ___", options: ["áo", "mũ", "giày", "dép"], correctAnswer: "áo", explanation: "quần + áo = quần áo."),
            ExerciseItem(id: UUID(), prompt: "học + ___", options: ["sinh", "chơi", "ngủ", "nghỉ"], correctAnswer: "sinh", explanation: "học + sinh = học sinh."),
            ExerciseItem(id: UUID(), prompt: "nhà + ___", options: ["cửa", "cây", "sân", "vườn"], correctAnswer: "cửa", explanation: "nhà + cửa = nhà cửa."),
            ExerciseItem(id: UUID(), prompt: "xe + ___", options: ["đạp", "đi", "chạy", "nhảy"], correctAnswer: "đạp", explanation: "xe + đạp = xe đạp."),
            ExerciseItem(id: UUID(), prompt: "hoa + ___", options: ["quả", "cành", "lá", "rễ"], correctAnswer: "quả", explanation: "hoa + quả = hoa quả."),
            ExerciseItem(id: UUID(), prompt: "cá + ___", options: ["ngựa", "chim", "thú", "mèo"], correctAnswer: "ngựa", explanation: "cá + ngựa = cá ngựa."),
            ExerciseItem(id: UUID(), prompt: "bút + ___", options: ["chì", "mực", "thước", "giấy"], correctAnswer: "chì", explanation: "bút + chì = bút chì."),
            ExerciseItem(id: UUID(), prompt: "chợ + ___", options: ["búa", "đường", "trường", "lớp"], correctAnswer: "búa", explanation: "chợ + búa = chợ búa.")
        ]
    )

    // MARK: - Exercise 37: Prefix and Suffix
    private static let prefixAndSuffix = Exercise(
        id: UUID(),
        title: "Tiền tố và Hậu tố",
        instructions: "Chọn thành tố từ vựng (tiền tố/hậu tố) đúng dựa theo nghĩa được mô tả.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Tiền tố phủ định 'vô' + 'dụng' = ___", options: ["vô dụng", "hữu dụng", "sử dụng", "lạm dụng"], correctAnswer: "vô dụng", explanation: "vô + dụng = vô dụng."),
            ExerciseItem(id: UUID(), prompt: "Tiền tố chỉ sự bắt đầu 'khai' + 'mạc' = ___", options: ["khai mạc", "bế mạc", "chấm dứt", "giải tán"], correctAnswer: "khai mạc", explanation: "khai + mạc = khai mạc."),
            ExerciseItem(id: UUID(), prompt: "Hậu tố chỉ nghề nghiệp 'gia' trong từ 'dịch thuật' hoặc 'khoa học' =", options: ["khoa học gia", "khoa học sĩ", "khoa học viên", "khoa học nhân"], correctAnswer: "khoa học gia", explanation: "khoa học + gia = khoa học gia."),
            ExerciseItem(id: UUID(), prompt: "Tiền tố phủ định 'bất' + 'đồng' = ___", options: ["bất đồng", "đồng lòng", "đồng thuận", "nhất trí"], correctAnswer: "bất đồng", explanation: "bất + đồng = bất đồng."),
            ExerciseItem(id: UUID(), prompt: "Hậu tố chỉ người thực hiện 'viên' + 'nhân' hoặc 'nhân viên' =", options: ["nhân viên", "nhân gia", "nhân sĩ", "nhân giả"], correctAnswer: "nhân viên", explanation: "nhân + viên = nhân viên."),
            ExerciseItem(id: UUID(), prompt: "Tiền tố chỉ sự phản đối 'kháng' + 'cự' = ___", options: ["kháng cự", "hòa giải", "đồng thuận", "nhất trí"], correctAnswer: "kháng cự", explanation: "kháng + cự = kháng cự."),
            ExerciseItem(id: UUID(), prompt: "Hậu tố chỉ học thuyết 'thuyết' + 'tiến hóa' = ___", options: ["thuyết tiến hóa", "tiến hóa gia", "tiến hóa học", "tiến hóa sĩ"], correctAnswer: "thuyết tiến hóa", explanation: "thuyết + tiến hóa = thuyết tiến hóa."),
            ExerciseItem(id: UUID(), prompt: "Tiền tố 'tiền' (phía trước) + 'đề' = ___", options: ["tiền đề", "hậu đề", "trung đề", "ngoại đề"], correctAnswer: "tiền đề", explanation: "tiền + đề = tiền đề."),
            ExerciseItem(id: UUID(), prompt: "Hậu tố 'hóa' biểu thị quá trình: 'công nghiệp' + 'hóa' =", options: ["công nghiệp hóa", "công nghiệp gia", "công nghiệp viên", "công nghiệp sĩ"], correctAnswer: "công nghiệp hóa", explanation: "công nghiệp + hóa = công nghiệp hóa."),
            ExerciseItem(id: UUID(), prompt: "Tiền tố 'hậu' (phía sau) + 'quả' = ___", options: ["hậu quả", "tiền quả", "trung quả", "ngoại quả"], correctAnswer: "hậu quả", explanation: "hậu + quả = hậu quả.")
        ]
    )

}
