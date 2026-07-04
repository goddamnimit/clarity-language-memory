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
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TÁO, Lê, Cà rốt, Mận",
                options: ["TÁO", "ê", "à rốt", "Mận"],
                correctAnswer: "à rốt",
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
                options: ["ÁO Sơ Mi", "QUẦN", "ái nĩa", "MŨ"],
                correctAnswer: "ái nĩa",
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
                options: ["BÚA", "ờ lê", "GỐI", "KHOAN"],
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
                options: ["SỮA", "ước trái cây", "BÁNH MÌ", "NƯỚC"],
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
                options: ["BÚT", "BÚT CHÌ", "út chì màu", "ái nĩa"],
                correctAnswer: "ái nĩa",
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
                options: ["TẤM", "BÁT", "ốc", "XE"],
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
                options: ["ĐẠI BÀNG", "HAWK", "ú", "CÁ"],
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
                options: ["TÁO", "CHUỐI", "à rốt", "NHO"],
                correctAnswer: "à rốt",
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
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TƯƠNG TỰ, ẩn dụ, cường điệu, đoạn",
                options: ["Tương tự", "ẩn dụ", "ường điệu", "đoạn"],
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
                options: ["SONNET", "HAIKU", "LIMERICK", "ăn xuôi"],
                correctAnswer: "ăn xuôi",
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
                options: ["ồng ngọc", "SAPPHIRE", "Ngọc lục bảo", "ĐÁ GRANITE"],
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
                options: ["FRESCO", "khảm", "in thạch bản", "ản sonata"],
                correctAnswer: "ản sonata",
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
                options: ["ĐỘNG MẠCH", "ĩnh mạch", "mao mạch", "GÂN"],
                correctAnswer: "GÂN",
                explanation: "Kết nối cơ với xương chứ không phải mạch máu"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lãnh Nguyên, TAIGA, SAVANNA, ĐỒNG BẰNG",
                options: ["ùng lãnh nguyên", "TAIGA", "SAVANNA", "ĐỒNG BẰNG"],
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
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Ăn ___”",
                options: ["ơm", "ước", "áo", "xe"],
                correctAnswer: "ơm",
                explanation: "Trong tiếng Việt, hoạt động ăn uống thường dùng cụm từ ‘ăn cơm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Uống ___”",
                options: ["ước", "ơm", "nhà", "út"],
                correctAnswer: "ước",
                explanation: "Hoạt động uống chất lỏng thường dùng cụm từ ‘uống nước’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["ọc", "ơm", "ước", "áo"],
                correctAnswer: "ọc",
                explanation: "Hoạt động đến trường để tiếp thu kiến thức gọi là ‘đi học’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Mặc ___”",
                options: ["áo", "giày", "ũ", "ách"],
                correctAnswer: "áo",
                explanation: "Hoạt động khoác quần áo lên người gọi là ‘mặc áo’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["giày", "áo", "ũ", "ách"],
                correctAnswer: "giày",
                explanation: "Hoạt động đeo giày vào chân gọi là ‘đi giày’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đội ___”",
                options: ["ũ", "áo", "giày", "í"],
                correctAnswer: "ũ",
                explanation: "Hoạt động đội nón mũ lên đầu gọi là ‘đội mũ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Rửa ___”",
                options: ["tay", "ơm", "nhà", "út"],
                correctAnswer: "tay",
                explanation: "Hoạt động làm sạch bàn tay gọi là ‘rửa tay’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đọc ___”",
                options: ["ách", "ơm", "ước", "áo"],
                correctAnswer: "ách",
                explanation: "Hoạt động xem nội dung chữ gọi là ‘đọc sách’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Viết ___”",
                options: ["thư", "ước", "áo", "út"],
                correctAnswer: "thư",
                explanation: "Hoạt động soạn thư để gửi cho người khác gọi là ‘viết thư’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Học ___”",
                options: ["ài", "ơm", "ước", "áo"],
                correctAnswer: "ài",
                explanation: "Hoạt động ôn luyện bài học gọi là ‘học bài’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Xem ___”",
                options: ["phim", "ơm", "ước", "áo"],
                correctAnswer: "phim",
                explanation: "Hoạt động giải trí xem hình ảnh động gọi là ‘xem phim’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Nghe ___”",
                options: ["nhạc", "ơm", "ước", "áo"],
                correctAnswer: "nhạc",
                explanation: "Hoạt động giải trí bằng âm thanh gọi là ‘nghe nhạc’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Lái ___”",
                options: ["xe", "ơm", "ước", "áo"],
                correctAnswer: "xe",
                explanation: "Hoạt động điều khiển phương tiện giao thông gọi là ‘lái xe’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Quét ___”",
                options: ["nhà", "ơm", "ước", "áo"],
                correctAnswer: "nhà",
                explanation: "Hoạt động dọn dẹp vệ sinh nền nhà gọi là ‘quét nhà’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Nấu ___”",
                options: ["ơm", "ước", "áo", "xe"],
                correctAnswer: "ơm",
                explanation: "Hoạt động chuẩn bị bữa ăn gọi là ‘nấu cơm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Chải ___”",
                options: ["óc", "ơm", "ước", "áo"],
                correctAnswer: "óc",
                explanation: "Hoạt động làm mượt tóc bằng lược gọi là ‘chải tóc’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đánh ___”",
                options: ["ăng", "ơm", "ước", "áo"],
                correctAnswer: "ăng",
                explanation: "Hoạt động vệ sinh răng miệng bằng bàn chải gọi là ‘đánh răng’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["ngủ", "ơm", "ước", "áo"],
                correctAnswer: "ngủ",
                explanation: "Hoạt động nằm nghỉ ngơi ban đêm gọi là ‘đi ngủ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Mua ___”",
                options: ["ắm", "ơm", "ước", "áo"],
                correctAnswer: "ắm",
                explanation: "Hoạt động đi chợ chọn mua đồ đạc gọi là ‘mua sắm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Treo ___”",
                options: ["tranh", "ơm", "ước", "áo"],
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
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: GIẬN",
                options: ["ạnh phúc", "giận dữ", "ình tĩnh", "buồn"],
                correctAnswer: "giận dữ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LẠNH",
                options: ["ấm áp", "đóng băng", "óng bức", "nhẹ nhàng"],
                correctAnswer: "đóng băng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LỚN",
                options: ["nhỏ bé", "ớn", "ngắn", "ầy"],
                correctAnswer: "ớn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: MỆT MỎI",
                options: ["áo động", "thức dậy", "kiệt sức", "nghỉ ngơi"],
                correctAnswer: "kiệt sức",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SỢ",
                options: ["ũng cảm", "kinh hoàng", "ình tĩnh", "in đậm"],
                correctAnswer: "kinh hoàng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LOẠI",
                options: ["nghĩa là", "độc ác", "nhẹ nhàng", "thô lỗ"],
                correctAnswer: "nhẹ nhàng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: NHANH CHÓNG",
                options: ["chậm", "nhanh chóng", "ười biếng", "đần độn"],
                correctAnswer: "nhanh chóng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: CŨ",
                options: ["trẻ", "ổ xưa", "ới", "ươi"],
                correctAnswer: "ổ xưa",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "từ: BẨN",
                options: ["ạch sẽ", "ẩn thỉu", "ọn gàng", "ọn gàng"],
                correctAnswer: "ẩn thỉu",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SÁNG",
                options: ["ờ", "ối", "ực rỡ", "đần độn"],
                correctAnswer: "ực rỡ",
                explanation: ""
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
        difficulty: .hard,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: SUY NIỆM",
                options: ["vui vẻ", "buồn bã", "vui mừng", "ội dung"],
                correctAnswer: "buồn bã",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TÌNH TRẠNG",
                options: ["ồn ào", "ị kích động", "ên bình", "điên cuồng"],
                correctAnswer: "ên bình",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: CAN ĐẢM",
                options: ["ụt rè", "đáng sợ", "ũng cảm", "èn nhát"],
                correctAnswer: "ũng cảm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: ĐẶC BIỆT",
                options: ["ình thường", "ỳ lạ", "ình thường", "điển hình"],
                correctAnswer: "ỳ lạ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: Dồi dào",
                options: ["khan hiếm", "ồi dào", "hiếm", "ạn chế"],
                correctAnswer: "ồi dào",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: FEEBLE",
                options: ["ạnh mẽ", "ùng mạnh", "ếu đuối", "khỏe mạnh"],
                correctAnswer: "ếu đuối",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SỐNG ĐỘNG",
                options: ["đần độn", "ngất xỉu", "đầy màu sắc", "nhợt nhạt"],
                correctAnswer: "đầy màu sắc",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TIẾT KIỆM",
                options: ["ãng phí", "tiết kiệm", "xa hoa", "ào phóng"],
                correctAnswer: "tiết kiệm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: HIỆU QUẢ",
                options: ["ầm bầm", "ói rõ ràng", "ên tĩnh", "ụng về"],
                correctAnswer: "ói rõ ràng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ ngữ: BỀN BỎ",
                options: ["ếu đuối", "ỏ cuộc", "kiên trì", "linh hoạt"],
                correctAnswer: "kiên trì",
                explanation: ""
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
        difficulty: .easy,
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

    // MARK: - Exercise 7: Sentence Completion (Easy)
    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "Hoàn thành câu (Dễ)",
        instructions: "Chọn từ hoàn thành câu tốt nhất.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
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
                options: ["óa đơn", "điền vào", "ối xay"],
                correctAnswer: "óa đơn",
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
                options: ["hoá đơn", "điền vào", "ối xay"],
                correctAnswer: "hoá đơn",
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

    // MARK: - Exercise 8: Morphology
    private static let morphology = Exercise(
        id: UUID(),
        title: "Ngữ pháp và lượng từ",
        instructions: "Chọn từ loại hoặc lượng từ thích hợp để hoàn thành câu.",
        section: .language,
        type: .sentenceCompletion,
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

    // MARK: - Exercise 10: Analogies
    private static let analogies = Exercise(
        id: UUID(),
        title: "Tương tự",
        instructions: "Chọn từ phù hợp nhất với sự tương tự.",
        section: .language,
        type: .analogyChoice,
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

    // MARK: - Exercise 11: Fact or Opinion
    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "Sự thật hoặc ý kiến",
        instructions: "Quyết định: tuyên bố này là SỰ THẬT hay Ý KIẾN?",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Có 7 ngày trong một tuần.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vani là hương vị ngon nhất của kem.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nước đóng băng ở nhiệt độ 32 độ F.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chó là vật nuôi tốt nhất.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Một hình tam giác có ba cạnh.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chương trình truyền hình đó thật buồn cười.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Abraham Lincoln là một Tổng thống Hoa Kỳ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Trái đất là hành tinh tốt nhất.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có 60 phút trong một giờ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hoa tulip đẹp hơn hoa hồng.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Washington D.C. là thủ đô của Hoa Kỳ.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Thật thô lỗ khi nói chuyện với cái miệng đầy thức ăn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có 12 tháng trong một năm.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dậy sớm là tốt cho bạn.",
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
                prompt: "Đại dương được làm từ nước mặn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Làm vườn là một sở thích tuyệt vời.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đá nặng hơn lông có cùng kích thước.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Hoa Kỳ có 50 tiểu bang.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pizza là món ăn ngon nhất.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tập thể dục có lợi cho sức khỏe của bạn.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nhạc cổ điển chán quá.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Táo và cam đều là trái cây.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mèo dễ nuôi hơn chó.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Opinion",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Có 24 giờ trong một ngày.",
                options: ["Fact", "Opinion"],
                correctAnswer: "Fact",
                explanation: ""
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
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "làm bánh mì nướng",
                options: ["Bơ bánh mì nướng", "Cho bánh mì vào lò nướng", "Loại bỏ khỏi máy nướng bánh mì", "ăn"],
                correctAnswer: "Cho bánh mì vào lò nướng | Loại bỏ khỏi máy nướng bánh mì | Bơ bánh mì nướng | ăn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rửa tay",
                options: ["Lau khô tay bằng khăn", "Thoa xà phòng lên tay", "Bật nước", "Chà trong 20 giây", "Xả sạch xà phòng", "Làm ướt tay bạn"],
                correctAnswer: "Bật nước | Làm ướt tay bạn | Thoa xà phòng lên tay | Chà trong 20 giây | Xả sạch xà phòng | Lau khô tay bằng khăn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pha cà phê",
                options: ["Đổ cà phê vào cốc của bạn", "Thêm bã cà phê vào bộ lọc", "Nhấn nút pha", "Đổ đầy hồ chứa nước"],
                correctAnswer: "Đổ đầy hồ chứa nước | Thêm bã cà phê vào bộ lọc | Nhấn nút pha | Đổ cà phê vào cốc của bạn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Thực hiện cuộc gọi điện thoại",
                options: ["Nói xin chào", "Cúp máy", "Nhấc điện thoại lên", "Quay số", "Có cuộc trò chuyện của bạn"],
                correctAnswer: "Nhấc điện thoại lên | Quay số | Nói xin chào | Có cuộc trò chuyện của bạn | Cúp máy",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mặc quần áo",
                options: ["Mang giày vào", "Mặc áo vào", "Mặc đồ lót", "Mang tất vào", "Mặc quần vào"],
                correctAnswer: "Mặc đồ lót | Mặc áo vào | Mặc quần vào | Mang tất vào | Mang giày vào",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Quét sàn",
                options: ["Vứt vào thùng rác", "Lấy chổi ra", "Đổ rác vào thùng rác", "Quét các mảnh vụn thành một đống"],
                correctAnswer: "Lấy chổi ra | Quét các mảnh vụn thành một đống | Đổ rác vào thùng rác | Vứt vào thùng rác",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đặt hàng tại nhà hàng",
                options: ["Ăn bữa ăn của bạn", "Báo cho máy chủ biết đơn đặt hàng của bạn", "ngồi xuống", "Đợi đồ ăn của bạn", "Xem lại thực đơn"],
                correctAnswer: "ngồi xuống | Xem lại thực đơn | Báo cho máy chủ biết đơn đặt hàng của bạn | Đợi đồ ăn của bạn | Ăn bữa ăn của bạn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "bánh nướng",
                options: ["Để bánh nguội", "Nướng trong lò", "Làm nóng lò trước", "Trộn các thành phần", "Múc bột lên khay nướng"],
                correctAnswer: "Làm nóng lò trước | Trộn các thành phần | Múc bột lên khay nướng | Nướng trong lò | Để bánh nguội",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 33: Rhyming Pairs
    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "Gạch bỏ danh mục (Dễ dàng)",
        instructions: "Nhấn vào từ KHÔNG thuộc nhóm.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TÁO, Lê, Cà rốt, Mận",
                options: ["TÁO", "ê", "à rốt", "Mận"],
                correctAnswer: "à rốt",
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
                options: ["ÁO Sơ Mi", "QUẦN", "ái nĩa", "MŨ"],
                correctAnswer: "ái nĩa",
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
                options: ["BÚA", "ờ lê", "GỐI", "KHOAN"],
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
                options: ["SỮA", "ước trái cây", "BÁNH MÌ", "NƯỚC"],
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
                options: ["BÚT", "BÚT CHÌ", "út chì màu", "ái nĩa"],
                correctAnswer: "ái nĩa",
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
                options: ["TẤM", "BÁT", "ốc", "XE"],
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
                options: ["ĐẠI BÀNG", "HAWK", "ú", "CÁ"],
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
                options: ["TÁO", "CHUỐI", "à rốt", "NHO"],
                correctAnswer: "à rốt",
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

    // MARK: - Exercise 34: Word Association
    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "Hạng mục Gạch bỏ (Cứng)",
        instructions: "Nhấn vào từ KHÔNG thuộc nhóm.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "TƯƠNG TỰ, ẩn dụ, cường điệu, đoạn",
                options: ["Tương tự", "ẩn dụ", "ường điệu", "đoạn"],
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
                options: ["SONNET", "HAIKU", "LIMERICK", "ăn xuôi"],
                correctAnswer: "ăn xuôi",
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
                options: ["ồng ngọc", "SAPPHIRE", "Ngọc lục bảo", "ĐÁ GRANITE"],
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
                options: ["FRESCO", "khảm", "in thạch bản", "ản sonata"],
                correctAnswer: "ản sonata",
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
                options: ["ĐỘNG MẠCH", "ĩnh mạch", "mao mạch", "GÂN"],
                correctAnswer: "GÂN",
                explanation: "Kết nối cơ với xương chứ không phải mạch máu"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lãnh Nguyên, TAIGA, SAVANNA, ĐỒNG BẰNG",
                options: ["ùng lãnh nguyên", "TAIGA", "SAVANNA", "ĐỒNG BẰNG"],
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

    // MARK: - Exercise 35: Complete the Saying
    private static let completeTheSaying = Exercise(
        id: UUID(),
        title: "Đoán cụm từ thông dụng",
        instructions: "Chọn từ thích hợp nhất để hoàn thành cụm từ thường dùng.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Ăn ___”",
                options: ["ơm", "ước", "áo", "xe"],
                correctAnswer: "ơm",
                explanation: "Trong tiếng Việt, hoạt động ăn uống thường dùng cụm từ ‘ăn cơm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Uống ___”",
                options: ["ước", "ơm", "nhà", "út"],
                correctAnswer: "ước",
                explanation: "Hoạt động uống chất lỏng thường dùng cụm từ ‘uống nước’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["ọc", "ơm", "ước", "áo"],
                correctAnswer: "ọc",
                explanation: "Hoạt động đến trường để tiếp thu kiến thức gọi là ‘đi học’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Mặc ___”",
                options: ["áo", "giày", "ũ", "ách"],
                correctAnswer: "áo",
                explanation: "Hoạt động khoác quần áo lên người gọi là ‘mặc áo’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["giày", "áo", "ũ", "ách"],
                correctAnswer: "giày",
                explanation: "Hoạt động đeo giày vào chân gọi là ‘đi giày’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đội ___”",
                options: ["ũ", "áo", "giày", "í"],
                correctAnswer: "ũ",
                explanation: "Hoạt động đội nón mũ lên đầu gọi là ‘đội mũ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Rửa ___”",
                options: ["tay", "ơm", "nhà", "út"],
                correctAnswer: "tay",
                explanation: "Hoạt động làm sạch bàn tay gọi là ‘rửa tay’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đọc ___”",
                options: ["ách", "ơm", "ước", "áo"],
                correctAnswer: "ách",
                explanation: "Hoạt động xem nội dung chữ gọi là ‘đọc sách’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Viết ___”",
                options: ["thư", "ước", "áo", "út"],
                correctAnswer: "thư",
                explanation: "Hoạt động soạn thư để gửi cho người khác gọi là ‘viết thư’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Học ___”",
                options: ["ài", "ơm", "ước", "áo"],
                correctAnswer: "ài",
                explanation: "Hoạt động ôn luyện bài học gọi là ‘học bài’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Xem ___”",
                options: ["phim", "ơm", "ước", "áo"],
                correctAnswer: "phim",
                explanation: "Hoạt động giải trí xem hình ảnh động gọi là ‘xem phim’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Nghe ___”",
                options: ["nhạc", "ơm", "ước", "áo"],
                correctAnswer: "nhạc",
                explanation: "Hoạt động giải trí bằng âm thanh gọi là ‘nghe nhạc’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Lái ___”",
                options: ["xe", "ơm", "ước", "áo"],
                correctAnswer: "xe",
                explanation: "Hoạt động điều khiển phương tiện giao thông gọi là ‘lái xe’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Quét ___”",
                options: ["nhà", "ơm", "ước", "áo"],
                correctAnswer: "nhà",
                explanation: "Hoạt động dọn dẹp vệ sinh nền nhà gọi là ‘quét nhà’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Nấu ___”",
                options: ["ơm", "ước", "áo", "xe"],
                correctAnswer: "ơm",
                explanation: "Hoạt động chuẩn bị bữa ăn gọi là ‘nấu cơm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Chải ___”",
                options: ["óc", "ơm", "ước", "áo"],
                correctAnswer: "óc",
                explanation: "Hoạt động làm mượt tóc bằng lược gọi là ‘chải tóc’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đánh ___”",
                options: ["ăng", "ơm", "ước", "áo"],
                correctAnswer: "ăng",
                explanation: "Hoạt động vệ sinh răng miệng bằng bàn chải gọi là ‘đánh răng’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Đi ___”",
                options: ["ngủ", "ơm", "ước", "áo"],
                correctAnswer: "ngủ",
                explanation: "Hoạt động nằm nghỉ ngơi ban đêm gọi là ‘đi ngủ’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Mua ___”",
                options: ["ắm", "ơm", "ước", "áo"],
                correctAnswer: "ắm",
                explanation: "Hoạt động đi chợ chọn mua đồ đạc gọi là ‘mua sắm’."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cụm từ thông dụng: “Treo ___”",
                options: ["tranh", "ơm", "ước", "áo"],
                correctAnswer: "tranh",
                explanation: "Hoạt động móc tranh ảnh lên tường gọi là ‘treo tranh’."
            )
        ]
    )

    // MARK: - Exercise 36: Compound Words
    private static let compoundWords = Exercise(
        id: UUID(),
        title: "Từ đồng nghĩa (Dễ dàng)",
        instructions: "Chọn từ có nghĩa CÙNG với từ đã cho.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: GIẬN",
                options: ["ạnh phúc", "giận dữ", "ình tĩnh", "buồn"],
                correctAnswer: "giận dữ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LẠNH",
                options: ["ấm áp", "đóng băng", "óng bức", "nhẹ nhàng"],
                correctAnswer: "đóng băng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LỚN",
                options: ["nhỏ bé", "ớn", "ngắn", "ầy"],
                correctAnswer: "ớn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: MỆT MỎI",
                options: ["áo động", "thức dậy", "kiệt sức", "nghỉ ngơi"],
                correctAnswer: "kiệt sức",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SỢ",
                options: ["ũng cảm", "kinh hoàng", "ình tĩnh", "in đậm"],
                correctAnswer: "kinh hoàng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: LOẠI",
                options: ["nghĩa là", "độc ác", "nhẹ nhàng", "thô lỗ"],
                correctAnswer: "nhẹ nhàng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: NHANH CHÓNG",
                options: ["chậm", "nhanh chóng", "ười biếng", "đần độn"],
                correctAnswer: "nhanh chóng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: CŨ",
                options: ["trẻ", "ổ xưa", "ới", "ươi"],
                correctAnswer: "ổ xưa",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "từ: BẨN",
                options: ["ạch sẽ", "ẩn thỉu", "ọn gàng", "ọn gàng"],
                correctAnswer: "ẩn thỉu",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SÁNG",
                options: ["ờ", "ối", "ực rỡ", "đần độn"],
                correctAnswer: "ực rỡ",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 37: Prefix and Suffix
    private static let prefixAndSuffix = Exercise(
        id: UUID(),
        title: "Từ đồng nghĩa (Cứng)",
        instructions: "Chọn từ có nghĩa CÙNG với từ đã cho.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: SUY NIỆM",
                options: ["vui vẻ", "buồn bã", "vui mừng", "ội dung"],
                correctAnswer: "buồn bã",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TÌNH TRẠNG",
                options: ["ồn ào", "ị kích động", "ên bình", "điên cuồng"],
                correctAnswer: "ên bình",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: CAN ĐẢM",
                options: ["ụt rè", "đáng sợ", "ũng cảm", "èn nhát"],
                correctAnswer: "ũng cảm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: ĐẶC BIỆT",
                options: ["ình thường", "ỳ lạ", "ình thường", "điển hình"],
                correctAnswer: "ỳ lạ",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: Dồi dào",
                options: ["khan hiếm", "ồi dào", "hiếm", "ạn chế"],
                correctAnswer: "ồi dào",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: FEEBLE",
                options: ["ạnh mẽ", "ùng mạnh", "ếu đuối", "khỏe mạnh"],
                correctAnswer: "ếu đuối",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: SỐNG ĐỘNG",
                options: ["đần độn", "ngất xỉu", "đầy màu sắc", "nhợt nhạt"],
                correctAnswer: "đầy màu sắc",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lời: TIẾT KIỆM",
                options: ["ãng phí", "tiết kiệm", "xa hoa", "ào phóng"],
                correctAnswer: "tiết kiệm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ: HIỆU QUẢ",
                options: ["ầm bầm", "ói rõ ràng", "ên tĩnh", "ụng về"],
                correctAnswer: "ói rõ ràng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Từ ngữ: BỀN BỎ",
                options: ["ếu đuối", "ỏ cuộc", "kiên trì", "linh hoạt"],
                correctAnswer: "kiên trì",
                explanation: ""
            )
        ]
    )

}
