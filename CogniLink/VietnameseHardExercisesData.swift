import Foundation


struct VietnameseHardExercisesData {

    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5,
        exercise6,
        exercise7,
        exercise8,
        easyHomonyms,
        easyAnalogies,
        easyCauseEffect,
        easyWhatsWrong,
        easySequencing,
        mediumWordAssociation,
        mediumHomonyms,
        easyCompleteSaying,
        hardCompleteSaying
    ]

    // MARK: - Exercise 1: Từ đồng âm nâng cao
    private static let exercise1 = Exercise(
        title: "Từ đồng âm nâng cao",
        instructions: "Chọn cặp từ đồng âm đúng để hoàn thành các câu sau.",
        section: .language,
        type: .homonym,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "[đồng / đồng] Chiếc lư hương này được đúc bằng ___. Trẻ em đang chăn trâu trên cánh ___.", options: ["đồng...đồng", "đồng...chì", "chì...đồng", "đồng...sắt"], correctAnswer: "đồng...đồng", explanation: "'Đồng' (kim loại) và 'đồng' (cánh đồng) là hai từ đồng âm khác nghĩa."),
            ExerciseItem(prompt: "[bác / bác] Người ___ ruột của tôi rất hiền lành. Hội đồng khoa học đã ___ bỏ đề án này.", options: ["bác...bác", "bác...phủ", "phủ...bác", "bác...đồng"], correctAnswer: "bác...bác", explanation: "'Bác' (quan hệ gia đình) và 'bác' (bác bỏ, phủ nhận) là cặp từ đồng âm."),
            ExerciseItem(prompt: "[đông / đông] Mùa ___ Hà Nội rất lạnh. Đường phố chiều nay rất ___ đúc.", options: ["đông...đông", "đông...tây", "tây...đông", "đông...nam"], correctAnswer: "đông...đông", explanation: "'Đông' (mùa đông) và 'đông' (đông đúc) là từ đồng âm."),
            ExerciseItem(prompt: "[keo / keo] Anh ấy dán gỗ bằng ___ sữa. Tính cách của ông ta rất ___ kiệt.", options: ["keo...keo", "keo...bẩn", "bẩn...keo", "keo...sáp"], correctAnswer: "keo...keo", explanation: "'Keo' (chất kết dính) và 'keo' (keo kiệt, ích kỷ) là hai từ đồng âm."),
            ExerciseItem(prompt: "[kinh / kinh] Hà Nội là ___ đô ngàn năm văn hiến. Sư thầy đang tụng ___ trong chùa.", options: ["kinh...kinh", "kinh...sách", "sách...kinh", "kinh...đô"], correctAnswer: "kinh...kinh", explanation: "'Kinh' (kinh đô, thủ đô) và 'kinh' (kinh sách) là hai từ đồng âm."),
            ExerciseItem(prompt: "[mai / mai] Hoa ___ nở rộ đón xuân về. Ngày ___ chúng ta sẽ gặp lại nhau.", options: ["mai...mai", "mai...kia", "kia...mai", "mai...đào"], correctAnswer: "mai...mai", explanation: "'Mai' (hoa mai) và 'mai' (ngày mai) là cặp từ đồng âm."),
            ExerciseItem(prompt: "[nam / nam] Bạn ấy là một học sinh ___. Phía ___ nước ta có khí hậu nhiệt đới.", options: ["nam...nam", "nam...bắc", "bắc...nam", "nam...nữ"], correctAnswer: "nam...nam", explanation: "'Nam' (giới tính nam) và 'nam' (phương nam) là từ đồng âm."),
            ExerciseItem(prompt: "[phong / phong] Bức thư đã được bỏ vào ___ bì. Cơn bão lớn mang theo cuồng ___ quét qua.", options: ["phong...phong", "phong...thư", "thư...phong", "phong...vũ"], correctAnswer: "phong...phong", explanation: "'Phong' (niêm phong/phong bì) và 'phong' (gió) là cặp từ đồng âm Hán Việt."),
            ExerciseItem(prompt: "[quán / quán] Anh ấy đạt ngôi ___ quân giải cờ vua. Chúng tôi ghé vào một ___ nước ven đường.", options: ["quán...quán", "quán...tiệm", "tiệm...quán", "quán...khách"], correctAnswer: "quán...quán", explanation: "'Quán' (quán quân, đứng đầu) và 'quán' (cửa hàng, quán nước) là từ đồng âm."),
            ExerciseItem(prompt: "[sâu / sâu] Con mương này rất ___ và nguy hiểm. Chim sâu đang bắt con ___ trên lá.", options: ["sâu...sâu", "sâu...bọ", "bọ...sâu", "sâu...cạn"], correctAnswer: "sâu...sâu", explanation: "'Sâu' (độ sâu) và 'sâu' (con sâu, côn trùng) là từ đồng âm."),
            ExerciseItem(prompt: "[thương / thương] Giới ___ nhân đang họp bàn xuất khẩu. Mẹ rất ___ yêu con cái.", options: ["thương...thương", "thương...ghét", "ghét...thương", "thương...buôn"], correctAnswer: "thương...thương", explanation: "'Thương' (thương nhân, buôn bán) và 'thương' (thương yêu) là cặp từ đồng âm."),
            ExerciseItem(prompt: "[tinh / tinh] Cậu bé này rất thông ___ và nhanh nhẹn. Trên bầu trời có muôn vàn ngôi ___ sáng.", options: ["tinh...tinh", "tinh...sáng", "sáng...tinh", "tinh...nhuệ"], correctAnswer: "tinh...tinh", explanation: "'Tinh' (thông tinh, tinh khôn) và 'tinh' (ngôi tinh/ngôi sao) là cặp từ đồng âm."),
            ExerciseItem(prompt: "[vạn / vạn] Ngôi chùa này có lịch sử cả ___ năm. Tàu thuyền neo đậu đông đúc ở ___ chài.", options: ["vạn...vạn", "vạn...ngàn", "ngàn...vạn", "vạn...biển"], correctAnswer: "vạn...vạn", explanation: "'Vạn' (mười ngàn) và 'vạn' (vạn chài, làng chài) là từ đồng âm."),
            ExerciseItem(prompt: "[văn / văn] Mẹ mua chiếc áo có ___ hoa rất đẹp. Em rất thích học môn Ngữ ___.", options: ["văn...văn", "văn...vẽ", "vẽ...văn", "văn...thơ"], correctAnswer: "văn...văn", explanation: "'Văn' (hoa văn, họa tiết) và 'văn' (văn học, ngôn ngữ) là từ đồng âm."),
            ExerciseItem(prompt: "[viên / viên] Bác sĩ kê cho tôi vài ___ thuốc. Anh ấy là nhân ___ của công ty này.", options: ["viên...viên", "viên...sĩ", "sĩ...viên", "viên...thuốc"], correctAnswer: "viên...viên", explanation: "'Viên' (viên thuốc, hình tròn nhỏ) và 'viên' (thành viên, nhân viên) là từ đồng âm.")
        ]
    )

    // MARK: - Exercise 2: Ẩn dụ và từ tương đồng nâng cao
    private static let exercise2 = Exercise(
        title: "Ẩn dụ và từ tương đồng nâng cao",
        instructions: "Chọn từ phù hợp nhất để hoàn thành phép ẩn dụ/tương đồng dưới đây.",
        section: .language,
        type: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "ĐỘC THOẠI đối với DIỄN VIÊN cũng như BÀI GIẢNG ĐẠO đối với ___", options: ["Mục sư", "Tín đồ", "Ca đoàn", "Nhà thờ"], correctAnswer: "Mục sư", explanation: "Độc thoại là hành động nói đặc trưng của diễn viên; bài giảng đạo là hành động nói đặc trưng của mục sư/linh mục."),
            ExerciseItem(prompt: "TRANG SÁCH đối với CUỐN SÁCH cũng như PHÍM ĐÀN đối với ___", options: ["Đàn piano", "Âm nhạc", "Âm thanh", "Giấy trắng"], correctAnswer: "Đàn piano", explanation: "Trang sách là bộ phận của cuốn sách; phím đàn là bộ phận của đàn piano."),
            ExerciseItem(prompt: "LÔNG VŨ đối với CHIM cũng như VẢY đối với ___", options: ["Cá", "Ếch", "Tóc", "Nước"], correctAnswer: "Cá", explanation: "Chim được bao phủ bởi lông vũ; cá được bao phủ bởi vảy."),
            ExerciseItem(prompt: "TIM đối với NHỊP ĐẬP cũng như PHỔI đối với ___", options: ["Hô hấp", "Máu", "Oxy", "Mạch máu"], correctAnswer: "Hô hấp", explanation: "Chức năng của tim là đập; chức năng của phổi là hô hấp (thở)."),
            ExerciseItem(prompt: "BÁNH LÁI đối với Ô TÔ cũng như BÁNH LÁI TÀU đối với ___", options: ["Tàu thủy", "Đường đi", "Gió", "Bánh xe"], correctAnswer: "Tàu thủy", explanation: "Bánh lái điều khiển hướng đi của ô tô; bánh lái tàu (vô lăng tàu) điều khiển tàu thủy."),
            ExerciseItem(prompt: "VÀNG đối với TRANG SỨC cũng như GỖ đối với ___", options: ["Đồ nội thất", "Rừng", "Cây", "Than đá"], correctAnswer: "Đồ nội thất", explanation: "Vàng là nguyên liệu làm trang sức; gỗ là nguyên liệu làm đồ nội thất (bàn, ghế)."),
            ExerciseItem(prompt: "BÁC SĨ đối với ỐNG NGHE cũng như NHÀ THIÊN VĂN đối với ___", options: ["Kính viễn vọng", "Sách", "Máy tính", "Bản đồ"], correctAnswer: "Kính viễn vọng", explanation: "Ống nghe là công cụ đặc trưng của bác sĩ; kính viễn vọng là công cụ của nhà thiên văn."),
            ExerciseItem(prompt: "ĐÊM đối với MẶT TRĂNG cũng như NGÀY đối với ___", options: ["Mặt trời", "Ngôi sao", "Mây", "Gió nhẹ"], correctAnswer: "Mặt trời", explanation: "Vật thể sáng nổi bật ban đêm là mặt trăng; ban ngày là mặt trời."),
            ExerciseItem(prompt: "ONG đối với TỔ ONG cũng như NHỆN đối với ___", options: ["Mạng nhện", "Hang động", "Ao nước", "Cành cây"], correctAnswer: "Mạng nhện", explanation: "Ong xây tổ ong; nhện giăng mạng nhện."),
            ExerciseItem(prompt: "MẮT đối với THỊ GIÁC cũng như TAI đối với ___", options: ["Thính giác", "Âm thanh", "Âm nhạc", "Tiếng vang"], correctAnswer: "Thính giác", explanation: "Mắt chịu trách nhiệm về thị giác; tai chịu trách nhiệm về thính giác (nghe)."),
            ExerciseItem(prompt: "SẮT đối với THỢ RÈN cũng như ĐẤT SÉT đối với ___", options: ["Thợ gốm", "Thợ kim hoàn", "Thợ may", "Nông dân"], correctAnswer: "Thợ gốm", explanation: "Thợ rèn rèn sắt để làm công cụ; thợ gốm nhào nặn đất sét để làm đồ gốm."),
            ExerciseItem(prompt: "LÁ CÂY đối với CÂY cũng như CÁNH HOA đối với ___", options: ["Bông hoa", "Gai", "Quả", "Rễ cây"], correctAnswer: "Bông hoa", explanation: "Lá là bộ phận của cây; cánh hoa là bộ phận của bông hoa."),
            ExerciseItem(prompt: "TRẮNG đối với ĐEN cũng như TRÊN đối với ___", options: ["Dưới", "Phải", "Trái", "Trong"], correctAnswer: "Dưới", explanation: "Trắng và đen là hai từ trái nghĩa; trên và dưới cũng trái nghĩa."),
            ExerciseItem(prompt: "NHIỆT KẾ đối với NHIỆT ĐỘ cũng như ÁP KẾ đối với ___", options: ["Áp suất khí quyển", "Thời gian", "Khoảng cách", "Chiều cao"], correctAnswer: "Áp suất khí quyển", explanation: "Nhiệt kế đo nhiệt độ; áp kế đo áp suất khí quyển."),
            ExerciseItem(prompt: "SEN đối với BÙN LẦY cũng như HỒNG đối với ___", options: ["Gai góc", "Hương thơm", "Màu đỏ", "Cánh hoa"], correctAnswer: "Gai góc", explanation: "Sen nở trong bùn lầy; hoa hồng nở giữa bụi gai góc.")
        ]
    )

    // MARK: - Exercise 3: Liên tưởng từ ngữ nâng cao
    private static let exercise3 = Exercise(
        title: "Liên tưởng từ ngữ nâng cao",
        instructions: "Chọn từ có liên tưởng chặt chẽ nhất với từ được cho trước.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "LÒNG VỊ THA", options: ["Không vụ lợi", "Lòng tham", "Sự tức giận", "Lòng đố kỵ"], correctAnswer: "Không vụ lợi", explanation: "Lòng vị tha (altruism) có đặc trưng cốt lõi là sự không vụ lợi, hy sinh vì người khác."),
            ExerciseItem(prompt: "BÁNH CHƯNG", options: ["Tết Nguyên Đán", "Tết Trung Thu", "Tết Đoan Ngọ", "Lễ Vu Lan"], correctAnswer: "Tết Nguyên Đán", explanation: "Bánh chưng là món ăn truyền thống đặc trưng nhất của ngày Tết Nguyên Đán Việt Nam."),
            ExerciseItem(prompt: "VỊNH HẠ LONG", options: ["Quảng Ninh", "Hải Phòng", "Đà Nẵng", "Nha Trang"], correctAnswer: "Quảng Ninh", explanation: "Vịnh Hạ Long, kỳ quan thiên nhiên thế giới, nằm ở tỉnh Quảng Ninh."),
            ExerciseItem(prompt: "NƯỚC MẮM", options: ["Cá cơm", "Tôm", "Cua", "Rau"], correctAnswer: "Cá cơm", explanation: "Nước mắm truyền thống ngon nhất được làm từ cá cơm lên men."),
            ExerciseItem(prompt: "ÁO DÀI", options: ["Quốc phục", "Đầm", "Váy", "Âu phục"], correctAnswer: "Quốc phục", explanation: "Áo dài là quốc phục truyền thống tôn vinh vẻ đẹp của người phụ nữ Việt Nam."),
            ExerciseItem(prompt: "PHỞ", options: ["Bánh phở", "Bún", "Mì", "Miến"], correctAnswer: "Bánh phở", explanation: "Bánh phở làm từ gạo là thành phần cốt lõi tạo nên bát phở truyền thống."),
            ExerciseItem(prompt: "ĐÀ LẠT", options: ["Thành phố sương mù", "Thành phố biển", "Thành phố cảng", "Thành phố công nghiệp"], correctAnswer: "Thành phố sương mù", explanation: "Đà Lạt nổi tiếng với tên gọi lãng mạn là 'Thành phố sương mù' hay xứ sở hoa."),
            ExerciseItem(prompt: "NÓN LÁ", options: ["Lá cọ", "Lá chuối", "Lá sen", "Lá khoai"], correctAnswer: "Lá cọ", explanation: "Nón lá truyền thống thường được lợp bằng lá cọ (lá nón) phơi khô."),
            ExerciseItem(prompt: "CỒNG CHIÊNG", options: ["Tây Nguyên", "Tây Bắc", "Đồng bằng sông Hồng", "Nam Bộ"], correctAnswer: "Tây Nguyên", explanation: "Không gian văn hóa Cồng chiêng là di sản nổi tiếng của vùng đất Tây Nguyên."),
            ExerciseItem(prompt: "ĐỒNG BẰNG SÔNG CỬU LONG", options: ["Lúa gạo", "Cà phê", "Chè", "Cao su"], correctAnswer: "Lúa gạo", explanation: "Đồng bằng sông Cửu Long là vựa lúa gạo lớn nhất của Việt Nam."),
            ExerciseItem(prompt: "TẾT TRUNG THU", options: ["Rước đèn", "Gói bánh", "Tảo mộ", "Xông đất"], correctAnswer: "Rước đèn", explanation: "Hoạt động truyền thống của trẻ em vào đêm Trung Thu là rước đèn ông sao."),
            ExerciseItem(prompt: "CÀ PHÊ SỮA ĐÁ", options: ["Sữa đặc", "Sữa tươi", "Đường cát", "Mật ong"], correctAnswer: "Sữa đặc", explanation: "Cà phê sữa đá Việt Nam nổi tiếng thế giới nhờ sự kết hợp độc đáo với sữa đặc có đường."),
            ExerciseItem(prompt: "TRỐNG ĐỒNG", options: ["Đông Sơn", "Sa Huỳnh", "Óc Eo", "Hòa Bình"], correctAnswer: "Đông Sơn", explanation: "Trống đồng tiêu biểu cho đỉnh cao của văn hóa Đông Sơn thời cổ đại."),
            ExerciseItem(prompt: "BÁNH MÌ", options: ["Pate", "Phô mai", "Mứt", "Bơ"], correctAnswer: "Pate", explanation: "Pate là thành phần nhân truyền thống mang lại hương vị béo ngậy cho bánh mì Việt Nam."),
            ExerciseItem(prompt: "SEN", options: ["Quốc hoa", "Đào", "Mai", "Cúc"], correctAnswer: "Quốc hoa", explanation: "Hoa sen được đông đảo người dân chọn làm biểu tượng Quốc hoa của Việt Nam.")
        ]
    )

    // MARK: - Exercise 4: Hoàn thành câu nâng cao
    private static let exercise4 = Exercise(
        title: "Hoàn thành câu nâng cao",
        instructions: "Chọn từ thích hợp nhất để điền vào chỗ trống.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Cơn mưa lớn kéo dài đã giúp ___ tình trạng hạn hán nghiêm trọng tại miền Trung.", options: ["giảm bớt", "tăng thêm", "duy trì", "kéo dài"], correctAnswer: "giảm bớt", explanation: "Mưa cung cấp nước trực tiếp giúp giảm bớt hoặc xóa bỏ hạn hán."),
            ExerciseItem(prompt: "Bài phát biểu của giáo sư rất logic và chặt chẽ, nhận được sự tán thưởng ___ từ người nghe.", options: ["rộng rãi", "hạn chế", "hoài nghi", "thờ ơ"], correctAnswer: "rộng rãi", explanation: "Một bài phát biểu xuất sắc sẽ nhận được sự tán thưởng rộng rãi của đông đảo công chúng."),
            ExerciseItem(prompt: "Dù đối mặt với nhiều nghịch cảnh, anh ấy vẫn giữ vững tinh thần ___ chiến đấu.", options: ["bất khuất", "yếu đuối", "sợ hãi", "lưỡng lự"], correctAnswer: "bất khuất", explanation: "'Bất khuất' chỉ tinh thần kiên cường, không chịu đầu hàng trước khó khăn."),
            ExerciseItem(prompt: "Bức tranh sơn mài này có màu sắc hài hòa và tinh tế, xứng đáng là một ___ nghệ thuật.", options: ["kiệt tác", "tác phẩm tồi", "bản sao", "sản phẩm thường"], correctAnswer: "kiệt tác", explanation: "Tác phẩm nghệ thuật xuất sắc có giá trị cao được tôn vinh là kiệt tác."),
            ExerciseItem(prompt: "Các nhà khảo cổ học thông qua nghiên cứu cổ vật đã từng bước ___ lại lịch sử cổ đại.", options: ["tái hiện", "bóp méo", "che giấu", "lãng quên"], correctAnswer: "tái hiện", explanation: "Nghiên cứu khảo cổ giúp khôi phục và tái hiện lại diện mạo chân thực của lịch sử."),
            ExerciseItem(prompt: "Việc phát triển nguyên liệu thân thiện với môi trường giúp công nghiệp ___ chi phí sản xuất.", options: ["tiết giảm", "tăng cao", "giữ nguyên", "bỏ qua"], correctAnswer: "tiết giảm", explanation: "Cải tiến công nghệ và nguyên liệu mới giúp tối ưu hóa và tiết giảm chi phí."),
            ExerciseItem(prompt: "Do quyết định sai lầm của ban quản trị, công ty rơi vào cuộc khủng hoảng ___ nghiêm trọng.", options: ["tài chính", "phát triển", "tăng trưởng", "ổn định"], correctAnswer: "tài chính", explanation: "Sai lầm quản trị doanh nghiệp dẫn đến hậu quả trực tiếp là khủng hoảng tài chính."),
            ExerciseItem(prompt: "Tác phẩm của nhà văn có tính phê phán sâu sắc, vạch trần nhiều ___ của xã hội.", options: ["thói hư tật xấu", "thành tựu", "thỏa hiệp", "giá trị"], correctAnswer: "thói hư tật xấu", explanation: "Văn học phê phán tập trung vạch trần các thói hư tật xấu và bất công xã hội."),
            ExerciseItem(prompt: "Để cải thiện tình trạng giao thông đô thị, thành phố đã xây dựng đường vành đai ___.", options: ["tránh", "ngõ cụt", "hẹp", "tạm thời"], correctAnswer: "tránh", explanation: "Đường vành đai tránh (hoặc đường gom) giúp phân luồng và giảm tải giao thông nội đô."),
            ExerciseItem(prompt: "Kết quả nghiên cứu khoa học này đã tạo nên một tiếng vang rất ___ trên quốc tế.", options: ["lớn", "nhỏ", "tiêu cực", "ngắn"], correctAnswer: "lớn", explanation: "Nghiên cứu có giá trị đột phá sẽ tạo nên tiếng vang lớn trong giới khoa học quốc tế."),
            ExerciseItem(prompt: "Hai công ty trên tinh thần hợp tác đôi bên cùng có lợi đã ký kết thỏa thuận ___ chiến lược.", options: ["liên kết", "cạnh tranh", "sáp nhập", "tranh chấp"], correctAnswer: "liên kết", explanation: "Thỏa thuận liên kết (hoặc hợp tác) thể hiện tinh thần đồng hành đôi bên cùng có lợi."),
            ExerciseItem(prompt: "Bộ phim tài liệu đã tái hiện lại một cách sinh động đời sống của các loài chim ___.", options: ["di cư", "nuôi nhà", "tuyệt chủng", "thuần hóa"], correctAnswer: "di cư", explanation: "Phim tài liệu thiên nhiên thường ghi lại hành trình sống động của chim di cư."),
            ExerciseItem(prompt: "Sau nhiều giờ sửa chữa, mạng lưới thông tin liên lạc đã hoạt động ___ trở lại.", options: ["bình thường", "trì hoãn", "gián đoạn", "suy giảm"], correctAnswer: "bình thường", explanation: "Sửa chữa sự cố giúp hệ thống phục hồi và hoạt động bình thường."),
            ExerciseItem(prompt: "Vịnh Hạ Long là di sản thiên nhiên thế giới và là ___ của du lịch Việt Nam.", options: ["biểu tượng", "cớ", "điểm yếu", "gánh nặng"], correctAnswer: "biểu tượng", explanation: "Địa danh nổi tiếng đại diện cho hình ảnh du lịch quốc gia được gọi là biểu tượng."),
            ExerciseItem(prompt: "Trong công việc, ông ấy luôn làm việc nghiêm túc và không chấp nhận bất kỳ sự ___ nào.", options: ["cẩu thả", "kỷ luật", "kiên trì", "cẩn thận"], correctAnswer: "cẩu thả", explanation: "Người nghiêm túc làm việc kỹ lưỡng và không chấp nhận sự cẩu thả, tắc trách.")
        ]
    )

    // MARK: - Exercise 5: Trình tự hoạt động hàng ngày
    private static let exercise5 = Exercise(
        title: "Trình tự hoạt động hàng ngày",
        instructions: "Sắp xếp các bước thực hiện hoạt động theo thứ tự hợp lý.",
        section: .language,
        type: .sequencing,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Pha trà ấm kiểu Việt", options: ["Rót nước sôi vào ấm trà có chứa trà khô", "Đặt ấm trà lên trên miệng ấm nước sôi để ủ ấm", "Tráng nóng ấm chén bằng nước sôi", "Đợi vài phút cho trà ngấm rồi rót ra chén thưởng thức"], correctAnswer: "Tráng nóng ấm chén bằng nước sôi | Rót nước sôi vào ấm trà có chứa trà khô | Đặt ấm trà lên trên miệng ấm nước sôi để ủ ấm | Đợi vài phút cho trà ngấm rồi rót ra chén thưởng thức", explanation: "Trình tự pha trà truyền thống: Tráng ấm chén, tráng trà và rót nước sôi, ủ nóng trên hơi nước, rót thưởng thức."),
            ExerciseItem(prompt: "Nấu canh chua cá lóc", options: ["Xào sơ cà chua và dứa thái lát", "Cho nước vào đun sôi rồi thả cá lóc vào nấu chín", "Thêm nước cốt me, dọc mùng, đậu bắp và nêm gia vị", "Thả rau ngổ, hành lá vào canh rồi múc ra bát"], correctAnswer: "Xào sơ cà chua và dứa thái lát | Cho nước vào đun sôi rồi thả cá lóc vào nấu chín | Thêm nước cốt me, dọc mùng, đậu bắp và nêm gia vị | Thả rau ngổ, hành lá vào canh rồi múc ra bát", explanation: "Cách nấu canh chua: Xào rau quả tạo màu, đun sôi nước nấu chín cá, thêm rau phụ và gia vị chua, cuối cùng thêm rau thơm."),
            ExerciseItem(prompt: "Tưới nước cho cây cảnh", options: ["Kiểm tra độ ẩm đất của chậu cây bằng tay", "Đổ nước lã sạch vào đầy bình tưới", "Tưới nước từ từ vào phần gốc của cây", "Cất bình tưới nước về lại chỗ cũ"], correctAnswer: "Kiểm tra độ ẩm đất của chậu cây bằng tay | Đổ nước lã sạch vào đầy bình tưới | Tưới nước từ từ vào phần gốc của cây | Cất bình tưới nước về lại chỗ cũ", explanation: "Tưới cây: Kiểm tra đất trước, lấy nước vào bình, tưới gốc cây, cất dọn bình."),
            ExerciseItem(prompt: "Rửa tay sạch bằng xà phòng", options: ["Thoa xà phòng và xoa đều tạo bọt giữa các ngón tay", "Làm ướt cả hai bàn tay dưới vòi nước", "Rửa sạch bọt xà phòng dưới dòng nước chảy", "Lau khô tay bằng khăn sạch hoặc máy sấy"], correctAnswer: "Làm ướt cả hai bàn tay dưới vòi nước | Thoa xà phòng và xoa đều tạo bọt giữa các ngón tay | Rửa sạch bọt xà phòng dưới dòng nước chảy | Lau khô tay bằng khăn sạch hoặc máy sấy", explanation: "Quy trình rửa tay chuẩn: Làm ướt tay, xoa xà phòng tạo bọt, rửa sạch bọt, lau khô tay."),
            ExerciseItem(prompt: "Nấu cơm bằng nồi cơm điện", options: ["Đong gạo vào xoong và vo sạch bằng nước", "Cho nước vào xoong theo tỷ lệ phù hợp", "Lau khô đáy xoong rồi đặt vào nồi cơm, cắm điện", "Ấn nút nấu (Cook) và đợi cơm chín chuyển sang nút ấm (Warm)"], correctAnswer: "Đong gạo vào xoong và vo sạch bằng nước | Cho nước vào xoong theo tỷ lệ phù hợp | Lau khô đáy xoong rồi đặt vào nồi cơm, cắm điện | Ấn nút nấu (Cook) và đợi cơm chín chuyển sang nút ấm (Warm)", explanation: "Các bước nấu cơm điện: Vo gạo, đong nước, lau khô xoong bỏ vào nồi cắm điện, ấn nút Cook nấu chín."),
            ExerciseItem(prompt: "Đi siêu thị mua hàng", options: ["Lập danh sách các món đồ cần mua", "Đến siêu thị lấy xe đẩy và chọn hàng hóa vào xe", "Đến quầy thu ngân xếp hàng và thanh toán tiền", "Đóng gói hàng hóa và mang về nhà"], correctAnswer: "Lập danh sách các món đồ cần mua | Đến siêu thị lấy xe đẩy và chọn hàng hóa vào xe | Đến quầy thu ngân xếp hàng và thanh toán tiền | Đóng gói hàng hóa và mang về nhà", explanation: "Đi mua sắm: Lập danh sách, đi lựa đồ bỏ vào giỏ, thanh toán tại quầy, gói đồ mang về."),
            ExerciseItem(prompt: "Thanh toán hóa đơn điện online", options: ["Mở ứng dụng ngân hàng hoặc ví điện tử", "Nhập mã khách hàng (mã danh bộ) ghi trên hóa đơn", "Kiểm tra số tiền điện cần thanh toán", "Nhập mã OTP để xác nhận hoàn tất giao dịch"], correctAnswer: "Mở ứng dụng ngân hàng hoặc ví điện tử | Nhập mã khách hàng (mã danh bộ) ghi trên hóa đơn | Kiểm tra số tiền điện cần thanh toán | Nhập mã OTP để xác nhận hoàn tất giao dịch", explanation: "Thanh toán hóa đơn: Mở app, điền mã khách hàng, đối chiếu số tiền, nhập OTP để hoàn thành thanh toán."),
            ExerciseItem(prompt: "Dọn dẹp phòng ngủ", options: ["Gấp chăn màn và sắp xếp đồ đạc gọn gàng", "Lau bụi trên mặt bàn ghế và tủ kệ", "Quét sạch rác và bụi trên sàn nhà bằng chổi", "Lau sạch sàn nhà bằng cây lau nhà ẩm"], correctAnswer: "Gấp chăn màn và sắp xếp đồ đạc gọn gàng | Lau bụi trên mặt bàn ghế và tủ kệ | Quét sạch rác và bụi trên sàn nhà bằng chổi | Lau sạch sàn nhà bằng cây lau nhà ẩm", explanation: "Quy tắc dọn dẹp: Sắp xếp gọn đồ đạc trước, phủi bụi cao, quét rác sàn nhà, lau ướt sàn nhà cuối cùng."),
            ExerciseItem(prompt: "Gửi bưu kiện qua bưu điện", options: ["Đóng gói đồ vật cần gửi vào hộp các-tông chắc chắn", "Viết rõ địa chỉ người gửi và người nhận lên hộp", "Mang đến bưu cục cân trọng lượng và tính cước", "Thanh toán tiền cước và nhận biên lai kèm mã vận đơn"], correctAnswer: "Đóng gói đồ vật cần gửi vào hộp các-tông chắc chắn | Viết rõ địa chỉ người gửi và người nhận lên hộp | Mang đến bưu cục cân trọng lượng và tính cước | Thanh toán tiền cước và nhận biên lai kèm mã vận đơn", explanation: "Gửi bưu phẩm: Đóng thùng gỗ/giấy, viết địa chỉ rõ ràng, cân đo cước phí ở bưu điện, trả tiền lấy biên lai."),
            ExerciseItem(prompt: "Rán trứng ốp la", options: ["Bật bếp và cho dầu ăn vào chảo đun nóng", "Đập vỏ trứng thả trứng vào chảo dầu", "Rắc muối tiêu lên trứng và rán chín lòng đỏ vừa ý", "Dùng xẻng xúc trứng ra đĩa"], correctAnswer: "Bật bếp và cho dầu ăn vào chảo đun nóng | Đập vỏ trứng thả trứng vào chảo dầu | Rắc muối tiêu lên trứng và rán chín lòng đỏ vừa ý | Dùng xẻng xúc trứng ra đĩa", explanation: "Rán trứng ốp la: Làm nóng dầu, đập trứng vào chảo, nêm muối tiêu rán chín vừa, dùng xẻng vớt ra đĩa."),
            ExerciseItem(prompt: "Rút tiền tại cây ATM", options: ["Đút thẻ ngân hàng vào khe và nhập mật khẩu PIN", "Chọn dịch vụ rút tiền và nhập số tiền cần rút", "Nhận tiền mặt chảy ra từ khe máy và đếm lại", "Nhận lại thẻ và cất cẩn thận vào ví"], correctAnswer: "Đút thẻ ngân hàng vào khe và nhập mật khẩu PIN | Chọn dịch vụ rút tiền và nhập số tiền cần rút | Nhận tiền mặt chảy ra từ khe máy và đếm lại | Nhận lại thẻ và cất cẩn thận vào ví", explanation: "Rút tiền thẻ: Đút thẻ và gõ pin, nhập số tiền cần rút, nhận tiền mặt đếm lại, nhận lại thẻ cất ví."),
            ExerciseItem(prompt: "Giặt quần áo bằng máy giặt", options: ["Phân loại và bỏ quần áo bẩn vào lồng giặt", "Đổ nước giặt và nước xả vào khay chứa của máy", "Chọn chế độ giặt thích hợp và bấm nút khởi động", "Khi máy giặt xong, lấy quần áo ra phơi lên dây"], correctAnswer: "Phân loại và bỏ quần áo bẩn vào lồng giặt | Đổ nước giặt và nước xả vào khay chứa của máy | Chọn chế độ giặt thích hợp và bấm nút khởi động | Khi máy giặt xong, lấy quần áo ra phơi lên dây", explanation: "Giặt máy: Bỏ đồ bẩn vào máy, châm nước giặt, chọn chương trình giặt, giặt xong phơi lên dây phơi."),
            ExerciseItem(prompt: "Đi khám bệnh tại bệnh viện", options: ["Đến quầy đăng ký nộp thẻ bảo hiểm và lấy số thứ tự", "Gặp bác sĩ tại phòng khám để trình bày triệu chứng và khám", "Đến quầy thanh toán viện phí và nhận đơn thuốc", "Mang đơn thuốc sang nhà thuốc bệnh viện để lấy thuốc"], correctAnswer: "Đến quầy đăng ký nộp thẻ bảo hiểm và lấy số thứ tự | Gặp bác sĩ tại phòng khám để trình bày triệu chứng và khám | Đến quầy thanh toán viện phí và nhận đơn thuốc | Mang đơn thuốc sang nhà thuốc bệnh viện để lấy thuốc", explanation: "Quy trình khám bệnh: Đăng ký khám, bác sĩ khám bệnh, đóng tiền viện phí đơn thuốc, lấy thuốc mang về."),
            ExerciseItem(prompt: "Uống thuốc viên", options: ["Kiểm tra hạn sử dụng in trên vỏ hộp thuốc", "Lấy đúng liều lượng viên thuốc được chỉ định", "Nuốt viên thuốc cùng với một ly nước ấm", "Cất vỉ thuốc còn lại vào tủ thuốc gia đình"], correctAnswer: "Kiểm tra hạn sử dụng in trên vỏ hộp thuốc | Lấy đúng liều lượng viên thuốc được chỉ định | Nuốt viên thuốc cùng với một ly nước ấm | Cất vỉ thuốc còn lại vào tủ thuốc gia đình", explanation: "Cách dùng thuốc: Xem date hạn dùng, lấy đúng liều, nuốt với nước ấm, cất phần thuốc thừa vào tủ thuốc."),
            ExerciseItem(prompt: "Sạc pin điện thoại di động", options: ["Tìm củ sạc và ổ cắm điện gần nhất", "Cắm củ sạc vào ổ cắm điện trên tường", "Cắm đầu cáp sạc vào cổng sạc của điện thoại", "Khi pin đầy, rút cáp sạc ra khỏi điện thoại trước"], correctAnswer: "Tìm củ sạc và ổ cắm điện gần nhất | Cắm củ sạc vào ổ cắm điện trên tường | Cắm đầu cáp sạc vào cổng sạc của điện thoại | Khi pin đầy, rút cáp sạc ra khỏi điện thoại trước", explanation: "Sạc điện thoại: Chuẩn bị sạc, cắm củ sạc vào nguồn, cắm cáp vào máy, sạc đầy thì rút cáp ra trước.")
        ]
    )

    // MARK: - Exercise 6: Nguyên nhân và kết quả nâng cao
    private static let exercise6 = Exercise(
        title: "Nguyên nhân và kết quả nâng cao",
        instructions: "Chọn câu trả lời thể hiện nguyên nhân hoặc kết quả hợp lý nhất.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Nguyên nhân: Nhiệt độ mùa hè ở miền Bắc vượt quá 40 độ C.", options: ["Lượng điện tiêu thụ tăng vọt do người dân mở điều hòa liên tục", "Người dân đổ xô ra đường đi dạo đông đúc hơn", "Nhu cầu mua áo khoác phao mùa đông tăng mạnh", "Nhà máy điện công bố sản lượng than tiêu thụ giảm mạnh"], correctAnswer: "Lượng điện tiêu thụ tăng vọt do người dân mở điều hòa liên tục", explanation: "Thời tiết nắng nóng gay gắt khiến nhu cầu làm mát bằng máy lạnh/điều hòa tăng cao gây quá tải điện."),
            ExerciseItem(prompt: "Nguyên nhân: Tài xế vượt đèn đỏ và chạy quá tốc độ tại ngã tư.", options: ["Cảnh sát giao thông đã dừng xe và xử phạt hành chính nặng", "Anh ấy nhận được bằng khen lái xe an toàn từ thành phố", "Các xe khác tự động dạt ra nhường đường hoàn toàn", "Đèn giao thông lập tức tự động chuyển sang màu xanh"], correctAnswer: "Cảnh sát giao thông đã dừng xe và xử phạt hành chính nặng", explanation: "Vượt đèn đỏ và quá tốc độ là vi phạm nghiêm trọng luật giao thông đường bộ sẽ bị xử phạt."),
            ExerciseItem(prompt: "Nguyên nhân: Hệ thống thoát nước đô thị bị tắc nghẽn nghiêm trọng do rác thải.", options: ["Đường phố bị ngập lụt sâu sau trận mưa lớn", "Nước mưa lập tức thoát nhanh ra các sông hồ lân cận", "Các con phố vẫn khô ráo và sạch sẽ hoàn toàn", "Giá nước uống đóng chai tăng đột biến"], correctAnswer: "Đường phố bị ngập lụt sâu sau trận mưa lớn", explanation: "Hạ tầng thoát nước bị tắc khiến lượng nước mưa không thể tiêu thoát nhanh gây ngập úng đô thị."),
            ExerciseItem(prompt: "Kết quả: Sau khi xem điểm thi đại học, Nam rất vui mừng và reo hò.", options: ["Nguyên nhân: Nam đỗ thủ khoa vào ngành học mơ ước với số điểm rất cao", "Nguyên nhân: Nam đã bỏ thi vì bị ốm nặng vào ngày thi", "Nguyên nhân: Nam làm bài sai hết và bị điểm liệt tất cả các môn", "Nguyên nhân: Bộ Giáo dục thông báo hoãn kỳ thi vô thời hạn"], correctAnswer: "Nguyên nhân: Nam đỗ thủ khoa vào ngành học mơ ước với số điểm rất cao", explanation: "Đạt điểm số xuất sắc đỗ thủ khoa là nguyên nhân trực tiếp mang lại niềm vui lớn cho học sinh."),
            ExerciseItem(prompt: "Kết quả: Vụ mùa năm nay bội thu giúp đời sống nông dân cải thiện.", options: ["Nguyên nhân: Thời tiết mưa thuận gió hòa suốt mùa xuân hè", "Nguyên nhân: Hạn hán nghiêm trọng xảy ra trên toàn tỉnh", "Nguyên nhân: Nông dân bón phân giả mua ở cửa hàng không uy tín", "Nguyên nhân: Đàn lợn rừng phá hủy hầu hết diện tích hoa màu"], correctAnswer: "Nguyên nhân: Thời tiết mưa thuận gió hòa suốt mùa xuân hè", explanation: "Thời tiết mưa thuận gió hòa là điều kiện tiên quyết giúp cây trồng phát triển tốt mang lại mùa màng bội thu."),
            ExerciseItem(prompt: "Nguyên nhân: Các bạn nhỏ thức khuya học bài đến tận đêm muộn.", options: ["Sáng hôm sau các bạn cảm thấy mệt mỏi và khó thức dậy", "Sáng hôm sau các bạn dậy rất sớm và tràn đầy năng lượng", "Nhà trường đột ngột thông báo hoãn buổi thi hôm đó", "Các bạn cảm thấy tinh thần vô cùng minh mẫn sảng khoái"], correctAnswer: "Sáng hôm sau các bạn cảm thấy mệt mỏi và khó thức dậy", explanation: "Thức khuya làm thiếu hụt thời gian ngủ dẫn đến cơ thể mệt mỏi vào sáng hôm sau."),
            ExerciseItem(prompt: "Nguyên nhân: Lượng cung cà chua trên thị trường tăng vọt.", options: ["Giá bán lẻ cà chua ngoài chợ giảm mạnh", "Không ai có thể tìm mua được cà chua nữa", "Giá cà chua lập tức tăng cao kỷ lục", "Giá khoai tây tăng mạnh ăn theo"], correctAnswer: "Giá bán lẻ cà chua ngoài chợ giảm mạnh", explanation: "Theo quy luật cung cầu, khi nguồn cung của một mặt hàng nông sản tăng mạnh thì giá cả có xu hướng giảm xuống."),
            ExerciseItem(prompt: "Kết quả: Toàn bộ khu phố đột ngột tối đen và thang máy chung cư ngừng chạy.", options: ["Nguyên nhân: Trạm biến áp điện chính của khu phố bị chập cháy", "Nguyên nhân: Đúng lúc giữa trưa mặt trời chiếu sáng gay gắt", "Nguyên nhân: Các hộ gia đình đồng loạt đổi sang dùng bóng đèn LED tiết kiệm", "Nguyên nhân: Ban quản lý tòa nhà miễn phí tiền dịch vụ tháng này"], correctAnswer: "Nguyên nhân: Trạm biến áp điện chính của khu phố bị chập cháy", explanation: "Chập cháy trạm biến áp gây mất điện đột ngột trên diện rộng làm thiết bị điện ngừng hoạt động."),
            ExerciseItem(prompt: "Nguyên nhân: Bác Nam kiên trì chạy bộ và tập dưỡng sinh mỗi buổi sáng.", options: ["Sức khỏe thể chất và tinh thần của bác cải thiện rõ rệt", "Cơ thể bác ngày càng suy yếu và hay ốm vặt hơn", "Bác tăng liền 20 cân chỉ trong vòng một tháng ngắn ngủi", "Bác mất hoàn toàn khả năng ngủ ngon vào ban đêm"], correctAnswer: "Sức khỏe thể chất và tinh thần của bác cải thiện rõ rệt", explanation: "Thể dục thể thao đều đặn giúp tăng cường sức đề kháng và cải thiện tinh thần lành mạnh."),
            ExerciseItem(prompt: "Nguyên nhân: Chính phủ áp dụng lệnh cấm sử dụng túi nilon dùng một lần.", options: ["Người dân chuyển sang dùng túi vải, túi giấy thân thiện môi trường", "Lượng rác thải túi nilon trên đường phố ngày một nhiều hơn", "Các nhà máy tăng gấp đôi sản lượng bao bì nilon", "Cửa hàng phát miễn phí túi nilon cho khách hàng nhiều hơn"], correctAnswer: "Người dân chuyển sang dùng túi vải, túi giấy thân thiện môi trường", explanation: "Lệnh cấm thúc đẩy ý thức bảo vệ môi trường, hướng người dân dùng các sản phẩm thay thế bền vững."),
            ExerciseItem(prompt: "Kết quả: Hộp sữa tươi để ngoài bàn sau một ngày bị chua và hỏng.", options: ["Nguyên nhân: Sữa không được cất vào tủ lạnh mà để ở nhiệt độ phòng nắng nóng", "Nguyên nhân: Sữa được bảo quản cẩn thận trong ngăn mát tủ lạnh", "Nguyên nhân: Người uống đã khuấy một thìa đường cát vào ly sữa", "Nguyên nhân: Sữa mới được vắt tươi từ trang trại vào sáng sớm nay"], correctAnswer: "Nguyên nhân: Sữa không được cất vào tủ lạnh mà để ở nhiệt độ phòng nắng nóng", explanation: "Sữa tươi rất dễ nhiễm khuẩn và lên men chua nếu để ngoài môi trường nhiệt độ thường quá lâu."),
            ExerciseItem(prompt: "Nguyên nhân: Trận bão lớn năm ngoái làm đổ rạp nhiều diện tích lúa ở miền Tây.", options: ["Giá gạo trên thị trường trong nước tăng cao đáng kể", "Gạo dư thừa nhiều khiến nhà nước giảm giá thu mua thóc", "Sản lượng lúa tăng giúp nhà máy xay xát xuất khẩu nhiều hơn", "Người dân thành phố chuyển sang ăn mì tôm thay cơm hoàn toàn"], correctAnswer: "Giá gạo trên thị trường trong nước tăng cao đáng kể", explanation: "Bão làm hư hại diện tích trồng lúa làm sụt giảm nguồn cung gạo dẫn đến tăng giá thị trường."),
            ExerciseItem(prompt: "Kết quả: Điện thoại di động đột ngột sập nguồn và tắt lịm.", options: ["Nguyên nhân: Người dùng xem phim liên tục cả ngày mà không cắm sạc", "Nguyên nhân: Máy được cắm sạc liên tục bằng bộ sạc chính hãng cả đêm", "Nguyên nhân: Điện thoại được cất kỹ trong ngăn kéo và không sử dụng đến", "Nguyên nhân: Người dùng đã tắt hết ứng dụng chạy ngầm và bật tiết kiệm pin"], correctAnswer: "Nguyên nhân: Người dùng xem phim liên tục cả ngày mà không cắm sạc", explanation: "Xem video độ phân giải cao tiêu hao năng lượng pin nhanh chóng dẫn đến sập nguồn nếu không sạc kịp thời."),
            ExerciseItem(prompt: "Nguyên nhân: Thí sinh cố tình mang tài liệu vào phòng thi đại học để gian lận.", options: ["Giám thị phát hiện và lập biên bản đình chỉ thi ngay lập tức", "Thí sinh được bổ nhiệm làm lớp trưởng và nhận học bổng", "Hội đồng thi khen thưởng thí sinh vì sự sáng tạo", "Tất cả các bạn cùng phòng thi vỗ tay chúc mừng"], correctAnswer: "Giám thị phát hiện và lập biên bản đình chỉ thi ngay lập tức", explanation: "Gian lận thi cử vi phạm nghiêm trọng quy chế thi sẽ bị kỷ luật lập biên bản đình chỉ thi."),
            ExerciseItem(prompt: "Kết quả: Hai chiếc xe ô tô đâm trực diện làm đầu xe nát bấy.", options: ["Nguyên nhân: Sương mù dày đặc buổi sớm làm tầm nhìn lái xe giảm xuống tối thiểu", "Nguyên nhân: Cả hai phương tiện đang tắt máy đỗ an toàn trong gara gia đình", "Nguyên nhân: Thời tiết ban ngày khô ráo, nắng đẹp và tầm nhìn thoáng đạt", "Nguyên nhân: Cả hai tài xế đều đi đúng tốc độ và giữ khoảng cách an toàn"], correctAnswer: "Nguyên nhân: Sương mù dày đặc buổi sớm làm tầm nhìn lái xe giảm xuống tối thiểu", explanation: "Tầm nhìn bị hạn chế do sương mù là nguyên nhân chính dẫn đến tai nạn đâm va trực diện trên đường.")
        ]
    )

    // MARK: - Exercise 7: Điểm phi lý trong câu
    private static let exercise7 = Exercise(
        title: "Điểm phi lý trong câu",
        instructions: "Tìm điểm phi lý hoặc không thể xảy ra trong các tình huống dưới đây.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Anh Nam không bật bếp gas, đặt chiếc nồi lạnh ngắt chứa đầy nước và sữa lên đun sôi sùng sục trong 10 phút.", options: ["Không có nhiệt lượng truyền vào thì nước không thể nóng lên hay sôi được", "Nồi sữa không nên bỏ thêm trà khô vào", "Nước sôi sẽ lập tức biến thành băng đá ở nhiệt độ thường", "Muốn đun sôi nước phải sử dụng vỏ chai nhựa"], correctAnswer: "Không có nhiệt lượng truyền vào thì nước không thể nóng lên hay sôi được", explanation: "Sự sôi yêu cầu nhiệt độ đạt tới điểm sôi thông qua nguồn cung cấp nhiệt, không có lửa thì không thể sôi."),
            ExerciseItem(prompt: "Sau khi mặt trời lặn vào đêm tối đen như mực, không có đèn, chị Lan vẫn chọn chính xác những bông hồng đỏ để hái.", options: ["Trong bóng tối hoàn toàn, mắt người không thể nhận biết màu sắc của vật thể", "Bông hồng ban đêm sẽ tự động chuyển sang màu trắng sáng", "Hái hoa hồng ban đêm bắt buộc phải dùng kéo cắt chuyên dụng", "Hoa hái ban đêm không có mùi thơm"], correctAnswer: "Trong bóng tối hoàn toàn, mắt người không thể nhận biết màu sắc của vật thể", explanation: "Mắt nhận biết màu sắc nhờ ánh sáng phản xạ, không có ánh sáng thì không phân biệt được màu đỏ."),
            ExerciseItem(prompt: "Người thợ gốm dùng cát khô để nặn thành chiếc bình trà xinh xắn rồi đem ngâm vào bể nước để phơi khô.", options: ["Cát khô không có độ kết dính để tạo hình và không thể phơi khô đồ vật khi ngâm nước", "Đồ gốm chỉ có thể do thợ kim hoàn chế tác", "Cát ngâm nước lâu ngày sẽ biến thành vàng ròng", "Muốn làm khô gốm phải dùng lò vi sóng"], correctAnswer: "Cát khô không có độ kết dính để tạo hình và không thể phơi khô đồ vật khi ngâm nước", explanation: "Cát không dính như đất sét để nặn hình, và ngâm trong nước thì đất gốm bị rã ra chứ không thể khô."),
            ExerciseItem(prompt: "Dưới cái nắng gắt 40 độ C ngoài trời, anh ấy mặc áo phao dày sụ ngồi trên tảng băng để tắm nắng tránh nóng.", options: ["Mặc áo ấm và ngồi trên băng tắm nắng tránh nóng là hành động hoàn toàn mâu thuẫn", "Băng đá ở nhiệt độ cao sẽ không bao giờ tan chảy", "Áo phao lông vũ chỉ dùng để bơi lặn dưới nước", "Tránh nóng bắt buộc phải uống nước muối pha cực loãng"], correctAnswer: "Mặc áo ấm và ngồi trên băng tắm nắng tránh nóng là hành động hoàn toàn mâu thuẫn", explanation: "Mặc áo phao giữ nhiệt dưới trời nóng làm tăng thân nhiệt gây sốc nhiệt, ngồi trên băng lạnh đột ngột gây hại cơ thể."),
            ExerciseItem(prompt: "Người nông dân gieo hạt giống lúa lên mặt đường nhựa đại lộ và chờ đợi gặt hái vụ mùa bội thu vào mùa thu.", options: ["Đường nhựa cứng không có đất, nước để hạt lúa nảy mầm và bám rễ sinh trưởng", "Trên đại lộ chỉ được phép trồng cây ăn quả như táo", "Gieo lúa chỉ được thực hiện trên băng tuyết mùa đông", "Mặt đường bê tông cung cấp nhiều phân bón hữu cơ tốt"], correctAnswer: "Đường nhựa cứng không có đất, nước để hạt lúa nảy mầm và bám rễ sinh trưởng", explanation: "Hạt giống cần đất tơi xốp, ẩm và dinh dưỡng để phát triển rễ; đường nhựa không đáp ứng được."),
            ExerciseItem(prompt: "Con cá nhảy ra khỏi bể nước, dùng đôi chân khỏe mạnh chạy vào rừng leo lên cây cổ thụ tránh mèo đuổi bắt.", options: ["Cá không có chân để chạy, leo trèo và không thở được bằng phổi trên cạn", "Mèo rất sợ trèo lên cây cao trong rừng", "Cá chỉ sống và bay lượn được trên bầu trời", "Vảy cá ma sát lớn làm thân cá tự bốc cháy trên cỏ"], correctAnswer: "Cá không có chân để chạy, leo trèo và không thở được bằng phổi trên cạn", explanation: "Cá thở bằng mang dưới nước và di chuyển bằng vây, không có chân để chạy nhảy hay leo cây trên cạn."),
            ExerciseItem(prompt: "Minh tắt nguồn điện thoại di động, sau đó lập tức bấm số gọi cho mẹ nói chuyện suốt cả tiếng đồng hồ.", options: ["Điện thoại tắt nguồn không có điện và sóng để kết nối cuộc gọi", "Gọi điện cho mẹ bắt buộc phải dùng máy điện thoại bàn", "Điện thoại tắt nguồn sẽ tự động gửi tin nhắn văn bản", "Cuộc gọi chỉ thực hiện được khi cắm tai nghe có dây"], correctAnswer: "Điện thoại tắt nguồn không có điện và sóng để kết nối cuộc gọi", explanation: "Điện thoại phải mở nguồn để mạch điện và chip thu phát sóng hoạt động kết nối mạng viễn thông."),
            ExerciseItem(prompt: "Bà mua chậu nước lớn đem ngâm quần áo ướt vào đó để chúng mau khô ráo.", options: ["Ngâm quần áo vào nước làm chúng ướt thêm chứ không thể làm bốc hơi nước để khô", "Quần áo ướt chỉ có thể treo trong tủ kín để tự khô", "Nước lạnh làm mục nát hoàn toàn sợi vải nilon", "Muốn làm khô quần áo phải dùng bột hút nước nano"], correctAnswer: "Ngâm quần áo vào nước làm chúng ướt thêm chứ không thể làm bốc hơi nước để khô", explanation: "Phơi khô yêu cầu nước bay hơi ra ngoài không khí; ngâm vào nước làm sợi vải ngậm thêm nước."),
            ExerciseItem(prompt: "Tài xế muốn xe khách đang chạy trên dốc tăng tốc nhanh hơn liền đạp mạnh chân phanh đến sát sàn xe.", options: ["Đạp phanh tạo ma sát làm giảm tốc độ hoặc dừng xe chứ không làm xe chạy nhanh lên", "Xe khách chỉ tăng tốc khi xoay vô lăng liên tục", "Phanh xe khách chỉ được lắp đặt bên ghế phụ", "Đạp phanh mạnh làm xăng trong bình tự bốc hơi biến mất"], correctAnswer: "Đạp phanh tạo ma sát làm giảm tốc độ hoặc dừng xe chứ không làm xe chạy nhanh lên", explanation: "Phanh dùng để giảm tốc và dừng xe; muốn tăng tốc phải dùng chân ga."),
            ExerciseItem(prompt: "Đàn hải âu lặn xuống độ sâu hàng trăm mét dưới đáy biển, dùng cành cây khô xây tổ ấm để đẻ trứng.", options: ["Hải âu là loài chim thở bằng phổi và cành cây khô không thể dùng xây tổ dưới nước", "Hải âu chỉ xây tổ trên mây để ấp trứng", "Nước dưới đáy biển sâu luôn sôi ở nhiệt độ trên 100 độ C", "Lông vũ của chim dưới nước sẽ tự động bốc cháy tiêu hủy"], correctAnswer: "Hải âu là loài chim thở bằng phổi và cành cây khô không thể dùng xây tổ dưới nước", explanation: "Chim hải âu không có mang để thở dưới nước, và lực cản dòng nước làm cành cây trôi đi, tổ bị ướt không ấp trứng được."),
            ExerciseItem(prompt: "Anh ấy nếm thử bát canh cá đang sôi sùng sục trên bếp rồi khen canh mát lạnh như nước đá.", options: ["Canh đang sôi có nhiệt độ rất cao gây bỏng chứ không thể mát lạnh", "Canh cá chỉ được ăn bằng thìa gỗ mới cảm nhận đúng nhiệt độ", "Canh nóng ăn vào miệng sẽ làm tê liệt hoàn toàn vị giác", "Canh sôi để nguội sẽ tự động biến thành đá lạnh tức thì"], correctAnswer: "Canh đang sôi có nhiệt độ rất cao gây bỏng chứ không thể mát lạnh", explanation: "Canh sôi trên bếp có nhiệt độ khoảng 100 độ C, cực kỳ nóng và gây bỏng lưỡi nếu nếm trực tiếp."),
            ExerciseItem(prompt: "Để khóa cổng nhà, bố ném chiếc chìa khóa qua khe cửa ra ngoài sân.", options: ["Khóa cửa cần tra chìa vào ổ và vặn trục khóa chứ không phải ném chìa đi", "Khe cửa hẹp không bao giờ cho chìa khóa lọt qua được", "Cửa gỗ lớn bắt buộc phải dùng then cài bằng tre để khóa", "Cửa cuốn sắt chỉ có thể khóa bằng vân tay hoặc mật mã"], correctAnswer: "Khóa cửa cần tra chìa vào ổ và vặn trục khóa chứ không phải ném chìa đi", explanation: "Mở hay khóa ổ khóa cơ vật lý yêu cầu cắm chìa khóa tương thích xoay các chốt khóa bên trong ổ khóa."),
            ExerciseItem(prompt: "Người mù cầm kính viễn vọng lên ngắm nhìn và mô tả những bông hoa đỏ nở trên sườn đồi xa xa.", options: ["Người mù không có thị lực nên không dùng được kính viễn vọng để nhìn", "Kính viễn vọng chỉ dành cho nhà du hành vũ trụ quan sát thiên hà", "Trên đồi xa chỉ có cây xương rồng sinh sống", "Kính viễn vọng ban ngày không có tác dụng phóng to ảnh"], correctAnswer: "Người mù không có thị lực nên không dùng được kính viễn vọng để nhìn", explanation: "Kính viễn vọng hỗ trợ thị giác của người mắt sáng quan sát vật thể xa; người mù không thể thu nhận tín hiệu hình ảnh."),
            ExerciseItem(prompt: "Kim giây của chiếc đồng hồ treo tường quay ngược làm cho thời gian thực tế quay về ngày hôm qua.", options: ["Đồng hồ chỉ là công cụ đo đạc và quay ngược kim không làm thay đổi dòng chảy thời gian", "Kim giây quay ngược làm nổ pin đồng hồ ngay lập tức", "Thời gian chỉ trôi nhanh hơn khi phi thuyền bay vào không gian", "Kim đồng hồ chạy bằng sóng điện từ không tự quay ngược được"], correctAnswer: "Đồng hồ chỉ là công cụ đo đạc và quay ngược kim không làm thay đổi dòng chảy thời gian", explanation: "Thời gian trôi một chiều theo quy luật vật lý vũ trụ; đồng hồ chỉ là công cụ đo, kim chạy ngược không làm thay đổi thời gian thực."),
            ExerciseItem(prompt: "Cô ấy viết chữ bằng bút bi khô trên tờ giấy nháp ướt sũng và có được nét chữ rất ngay ngắn, rõ ràng.", options: ["Giấy ướt rất dễ rách và mực bút bi gặp nước sẽ bị nhòe loang lổ", "Giấy ướt chỉ viết được bằng bút lông dưới nước", "Bút bi chỉ viết được chữ trên giấy bằng vàng", "Nước trên giấy ướt sẽ bay hơi khô ngay lập tức khi bút chạm vào"], correctAnswer: "Giấy ướt rất dễ rách và mực bút bi gặp nước sẽ bị nhòe loang lổ", explanation: "Giấy thấm nước bị rã kết cấu xơ sợi nên viết bút bi đầu bi nhọn sẽ làm rách giấy, đồng thời mực không bám được mà loang ra.")
        ]
    )

    // MARK: - Exercise 8: Tục ngữ ca dao Việt Nam
    private static let exercise8 = Exercise(
        title: "Tục ngữ ca dao Việt Nam",
        instructions: "Chọn từ thích hợp để hoàn thành câu tục ngữ dân gian.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Gần mực thì đen, gần đèn thì ___.", options: ["sáng", "tối", "rõ", "mờ"], correctAnswer: "sáng", explanation: "Câu tục ngữ đầy đủ là 'Gần mực thì đen, gần đèn thì sáng', nói về ảnh hưởng của môi trường sống xung quanh."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Ăn quả nhớ kẻ trồng ___.", options: ["cây", "hoa", "rau", "quả"], correctAnswer: "cây", explanation: "Tục ngữ 'Ăn quả nhớ kẻ trồng cây' khuyên nhủ lòng biết ơn đối với những người đi trước."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Có công mài sắt, có ngày nên ___.", options: ["kim", "xẻng", "dao", "búa"], correctAnswer: "kim", explanation: "Tục ngữ 'Có công mài sắt, có ngày nên kim' răn dạy tính kiên trì, nhẫn nại sẽ dẫn đến thành công."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi ___.", options: ["cao", "to", "dài", "rộng"], correctAnswer: "cao", explanation: "Tục ngữ 'Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi cao' ca ngợi sức mạnh của sự đoàn kết tập thể."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Uống nước nhớ ___.", options: ["nguồn", "sông", "biển", "suối"], correctAnswer: "nguồn", explanation: "Tục ngữ 'Uống nước nhớ nguồn' khuyên người ta luôn nhớ về tổ tiên, nguồn cội."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Lá lành đùm lá ___.", options: ["rách", "hỏng", "úa", "khô"], correctAnswer: "rách", explanation: "Tục ngữ 'Lá lành đùm lá rách' thể hiện tinh thần tương thân tương ái, lá lành giúp đỡ lá rách."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Tránh vỏ dưa, gặp vỏ ___.", options: ["dừa", "bí", "bầu", "cam"], correctAnswer: "dừa", explanation: "Tục ngữ 'Tránh vỏ dưa, gặp vỏ dừa' nói về việc cố tránh một khó khăn này lại gặp phải khó khăn khác tương đương."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Có chí thì ___.", options: ["nên", "làm", "thành", "bại"], correctAnswer: "nên", explanation: "Tục ngữ 'Có chí thì nên' khẳng định có ý chí quyết tâm thì việc gì cũng thành công."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Đi một ngày đàng, học một sàng ___.", options: ["khôn", "chữ", "sách", "học"], correctAnswer: "khôn", explanation: "Tục ngữ 'Đi một ngày đàng, học một sàng khôn' khuyên con người nên đi đây đi đó để học hỏi mở mang trí tuệ."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Bán anh em xa, mua láng giềng ___.", options: ["gần", "bên", "sau", "trước"], correctAnswer: "gần", explanation: "Tục ngữ 'Bán anh em xa, mua láng giềng gần' đề cao tầm quan trọng của mối quan hệ hàng xóm láng giềng sát vách."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Tốt gỗ hơn tốt nước ___.", options: ["sơn", "vôi", "sáp", "dầu"], correctAnswer: "sơn", explanation: "Tục ngữ 'Tốt gỗ hơn tốt nước sơn' khuyên đánh giá giá trị phẩm chất bên trong hơn vẻ bề ngoài hào nhoáng."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Có thực mới vực được ___.", options: ["đạo", "đời", "chữ", "người"], correctAnswer: "đạo", explanation: "Tục ngữ 'Có thực mới vực được đạo' ý nói phải có cái ăn nuôi sống cơ thể trước rồi mới bàn đến lý tưởng đạo lý."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Môi hở răng ___.", options: ["lạnh", "đau", "rụng", "buốt"], correctAnswer: "lạnh", explanation: "Tục ngữ 'Môi hở răng lạnh' chỉ mối quan hệ ruột thịt gắn bó, người này hoạn nạn người kia cũng chịu ảnh hưởng."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Con trâu là đầu cơ ___.", options: ["nghiệp", "đồ", "vị", "sự"], correctAnswer: "nghiệp", explanation: "Tục ngữ 'Con trâu là đầu cơ nghiệp' nhấn mạnh tầm quan trọng của con trâu trong nông nghiệp lúa nước thuở xưa."),
            ExerciseItem(prompt: "Hoàn thành câu tục ngữ: Bất chiến tự ___.", options: ["bại", "nhiên", "sinh", "diệt"], correctAnswer: "bại", explanation: "Thành ngữ 'Bất chiến tự bại' nói về việc chưa đánh đã tự thua do thiếu tinh thần và sự chuẩn bị.")
        ]
    )

    // MARK: - Easy Homonyms
    private static let easyHomonyms = Exercise(
        title: "Từ đồng âm dễ",
        instructions: "Chọn từ thích hợp để hoàn thành các câu sau.",
        section: .language,
        type: .homonym,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "[đường / đường] Con ___ này dẫn ra chợ huyện. Mẹ cho thêm ___ vào cốc nước cam cho ngọt.", options: ["đường...đường", "đường...muối", "muối...đường", "đường...sữa"], correctAnswer: "đường...đường", explanation: "'Đường' (lộ trình/nơi đi lại) và 'đường' (gia vị tạo độ ngọt) là hai từ đồng âm."),
            ExerciseItem(prompt: "[bò / bò] Con ___ đang gặm cỏ trên đồi. Đứa bé đang tập ___ trên sàn nhà.", options: ["bò...bò", "bò...đi", "đi...bò", "trâu...bò"], correctAnswer: "bò...bò", explanation: "'Bò' (động vật ăn cỏ) và 'bò' (hành động di chuyển bằng bốn chi) là từ đồng âm."),
            ExerciseItem(prompt: "[ca / ca] Người ca sĩ đang cất tiếng ___ ngọt ngào. Anh ấy làm việc ở ___ sáng.", options: ["ca...ca", "hát...ca", "ca...kíp", "ca...đêm"], correctAnswer: "ca...ca", explanation: "'Ca' (hát) và 'ca' (phân chia thời gian làm việc) là cặp từ đồng âm."),
            ExerciseItem(prompt: "[bán / bàn] Mẹ mua chiếc ___ ăn bằng gỗ mới. Cửa hàng này ___ đồ chơi trẻ em.", options: ["bàn...bán", "bán...bàn", "bàn...bàn", "bán...bán"], correctAnswer: "bàn...bán", explanation: "'Bàn' (đồ nội thất) và 'bán' (trao đổi lấy tiền) là cặp từ đồng âm khác thanh điệu nhẹ."),
            ExerciseItem(prompt: "[lá / lạ] Cây bàng rụng những chiếc ___ vàng. Tôi gặp một người ___ ngoài đường.", options: ["lá...lạ", "lạ...lá", "lá...lá", "lạ...lạ"], correctAnswer: "lá...lạ", explanation: "'Lá' (bộ phận của cây) và 'lạ' (không quen biết) có âm thanh gần giống nhau."),
            ExerciseItem(prompt: "[sách / sạch] Em xếp những quyển ___ lên kệ. Căn phòng được dọn dẹp rất ___ sẽ.", options: ["sách...sạch", "sạch...sách", "sách...sách", "sạch...sạch"], correctAnswer: "sách...sạch", explanation: "'Sách' (tập tài liệu để đọc) và 'sạch' (không bẩn) là cặp từ đồng âm khác dấu."),
            ExerciseItem(prompt: "[cá / cà] Bố thả con ___ vàng vào bể nước. Mẹ muối một hũ ___ pháo giòn.", options: ["cá...cà", "cà...cá", "cá...cá", "cà...cà"], correctAnswer: "cá...cà", explanation: "'Cá' (động vật dưới nước) và 'cà' (loại quả làm thức ăn) có âm giống nhau khác dấu."),
            ExerciseItem(prompt: "[hoa / hòa] Bông ___ hồng nở rộ trong vườn. Hai đội bóng đá có tỷ số ___ nhau.", options: ["hoa...hòa", "hòa...hoa", "hoa...hoa", "hòa...hòa"], correctAnswer: "hoa...hòa", explanation: "'Hoa' (đóa hoa) và 'hòa' (không phân thắng bại) là cặp từ gần âm."),
            ExerciseItem(prompt: "[áo / ao] Bà mặc chiếc ___ ấm màu đỏ. Đàn vịt đang bơi dưới ___ nước.", options: ["áo...ao", "ao...áo", "áo...áo", "ao...ao"], correctAnswer: "áo...ao", explanation: "'Áo' (trang phục mặc) và 'ao' (khoảng nước nhỏ) là cặp từ đồng âm gần giống."),
            ExerciseItem(prompt: "[kem / kèm] Bé thích ăn cốc ___ vani mát lạnh. Tài liệu này được gửi ___ một bức thư.", options: ["kem...kèm", "kèm...kem", "kem...kem", "kèm...kèm"], correctAnswer: "kem...kèm", explanation: "'Kem' (món ăn đông lạnh) và 'kèm' (đi cùng với nhau) là cặp từ đồng âm khác dấu."),
            ExerciseItem(prompt: "[tay / tây] Anh ấy dùng bàn ___ để viết bài. Mặt trời lặn ở hướng ___.", options: ["tay...tây", "tây...tay", "tay...tay", "tây...tây"], correctAnswer: "tay...tây", explanation: "'Tay' (bộ phận cơ thể) và 'tây' (hướng tây) có âm thanh rất gần nhau."),
            ExerciseItem(prompt: "[xe / xé] Bố mua một chiếc ___ máy mới. Em bé nghịch làm ___ tờ giấy nháp.", options: ["xe...xé", "xé...xe", "xe...xe", "xé...xé"], correctAnswer: "xe...xé", explanation: "'Xe' (phương tiện giao thông) và 'xé' (làm rách bằng tay) là từ gần âm."),
            ExerciseItem(prompt: "[mắt / mật] Đôi ___ của bé sáng lấp lánh. Con ong chăm chỉ hút ___ hoa ngọt.", options: ["mắt...mật", "mật...mắt", "mắt...mắt", "mật...mật"], correctAnswer: "mắt...mật", explanation: "'Mắt' (cơ quan thị giác) và 'mật' (chất ngọt từ hoa) là cặp từ đồng âm khác thanh."),
            ExerciseItem(prompt: "[dừa / dứa] Quả ___ có nhiều nước ngọt mát. Quả ___ có nhiều mắt và thơm ngọt.", options: ["dừa...dứa", "dứa...dừa", "dừa...dừa", "dứa...dứa"], correctAnswer: "dừa...dứa", explanation: "'Dừa' (quả dừa ở Bến Tre) và 'dứa' (quả thơm/khóm) là từ gần âm phổ biến."),
            ExerciseItem(prompt: "[bạn / bàn] Nam là người ___ thân nhất của tôi. Em lau sạch mặt ___ học tập.", options: ["bạn...bàn", "bàn...bạn", "bạn...bạn", "bàn...bàn"], correctAnswer: "bạn...bàn", explanation: "'Bạn' (người chơi cùng thân thiết) và 'bàn' (mặt gỗ có chân để học) là từ gần âm khác dấu.")
        ]
    )

    // MARK: - Easy Analogies
    private static let easyAnalogies = Exercise(
        title: "Ẩn dụ Đơn giản",
        instructions: "Chọn từ hoàn thành tốt nhất phép tương đồng.",
        section: .language,
        type: .analogyChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "TRÊN đối với DƯỚI giống như NÓNG đối với gì?", options: ["LẠNH", "ẤM", "SÔI", "ƯỚT"], correctAnswer: "LẠNH", explanation: "Trên và dưới là hai từ trái nghĩa, tương tự nóng trái nghĩa với lạnh."),
            ExerciseItem(prompt: "CHIM đối với BAY giống như CÁ đối với gì?", options: ["BƠI", "CHẠY", "ĐI", "NHẢY"], correctAnswer: "BƠI", explanation: "Chim di chuyển bằng cách bay, cá di chuyển bằng cách bơi."),
            ExerciseItem(prompt: "MÈO đối với MÈO CON giống như CHÓ đối với gì?", options: ["CHÓ CON", "MÈO CON", "BÊ", "NGỰA CON"], correctAnswer: "CHÓ CON", explanation: "Mèo con là con của mèo, chó con là con của chó."),
            ExerciseItem(prompt: "BAN NGÀY đối với MẶT TRỜI giống như BAN ĐÊM đối với gì?", options: ["MẶT TRĂNG", "MƯA", "GIÓ", "MÂY"], correctAnswer: "MẶT TRĂNG", explanation: "Mặt trời xuất hiện vào ban ngày, mặt trăng xuất hiện vào ban đêm."),
            ExerciseItem(prompt: "BĂNG đối với LẠNH giống như LỬA đối với gì?", options: ["NÓNG", "ƯỚT", "TỐI", "MỀM"], correctAnswer: "NÓNG", explanation: "Băng lạnh khi chạm vào, trong khi lửa thì nóng."),
            ExerciseItem(prompt: "BÚT đối với VIẾT giống như KÉO đối với gì?", options: ["CẮT", "DÁN", "VẼ", "TÔ MÀU"], correctAnswer: "CẮT", explanation: "Bút được dùng để viết, kéo được dùng để cắt."),
            ExerciseItem(prompt: "CÂY đối với LÁ giống như HOA đối với gì?", options: ["CÁNH HOA", "GAI", "RỄ", "THÂN"], correctAnswer: "CÁNH HOA", explanation: "Lá là một phần của cây, cánh hoa là một phần của hoa."),
            ExerciseItem(prompt: "Ô TÔ đối với ĐƯỜNG BỘ giống như THUYỀN đối với gì?", options: ["NƯỚC", "KHÔNG KHÍ", "ĐẤT LIỀN", "ĐƯỜNG RAY"], correctAnswer: "NƯỚC", explanation: "Ô tô di chuyển trên đường bộ, thuyền di chuyển dưới nước."),
            ExerciseItem(prompt: "VỚ đối với BÀN CHÂN giống như GĂNG TAY đối với gì?", options: ["BÀN TAY", "ĐẦU", "CỔ", "CÁNH TAY"], correctAnswer: "BÀN TAY", explanation: "Vớ đeo vào chân, găng tay đeo vào tay."),
            ExerciseItem(prompt: "ĐÓI đối với THỨC ĂN giống như KHÁT đối với gì?", options: ["NƯỚC", "BÁNH MÌ", "TRÁI CÂY", "MUỐI"], correctAnswer: "NƯỚC", explanation: "Khi đói cần thức ăn, khi khát cần nước uống."),
            ExerciseItem(prompt: "GIÀY đối với BÀN CHÂN giống như MŨ đối với gì?", options: ["ĐẦU", "BÀN TAY", "CHÂN", "CỔ"], correctAnswer: "ĐẦU", explanation: "Giày đi dưới chân, mũ đội trên đầu."),
            ExerciseItem(prompt: "TÁO đối với TRÁI CÂY giống như CÀ RỐT đối với gì?", options: ["RAU CỦ", "THỊT", "NGŨ CỐC", "SỮA"], correctAnswer: "RAU CỦ", explanation: "Táo là một loại trái cây, cà rốt là một loại rau củ."),
            ExerciseItem(prompt: "BÒ đối với SỮA giống như ONG đối với gì?", options: ["MẬT ONG", "SÁP", "PHẤN HOA", "NƯỚC"], correctAnswer: "MẬT ONG", explanation: "Bò sản xuất ra sữa, ong sản xuất ra mật ong."),
            ExerciseItem(prompt: "RĂNG đối với BÀN CHẢI giống như TÓC đối với gì?", options: ["LƯỢC", "GỘI", "CẮT", "SẤY"], correctAnswer: "LƯỢC", explanation: "Răng được làm sạch bằng bàn chải, tóc được chải bằng lược."),
            ExerciseItem(prompt: "MƯA đối với ƯỚT giống như MẶT TRỜI đối với gì?", options: ["KHÔ", "LẠNH", "TỐI", "GIÓ"], correctAnswer: "KHÔ", explanation: "Mưa làm mọi thứ ướt nhẹp, trong khi mặt trời làm khô ráo.")
        ]
    )

    // MARK: - Easy Cause and Effect
    private static let easyCauseEffect = Exercise(
        title: "Nguyên nhân và Kết quả",
        instructions: "Chọn phương án thể hiện nguyên nhân hoặc kết quả hợp lý nhất.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Nguyên nhân: Bạn làm rơi chiếc cốc thủy tinh xuống sàn bê tông.", options: ["Cốc bị vỡ", "Cốc nổi lên", "Cốc mềm đi", "Cốc biến thành màu xanh"], correctAnswer: "Cốc bị vỡ", explanation: "Thủy tinh giòn, va chạm với sàn cứng sẽ bị rạn nứt hoặc vỡ tan."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn quên tưới nước cho cây cảnh trong nhà suốt một tuần.", options: ["Cây bị héo và khô héo", "Cây ra hoa", "Cây chuyển sang màu tím", "Cây ra quả"], correctAnswer: "Cây bị héo và khô héo", explanation: "Cây cối cần nước để duy trì sự sống; không có nước chúng sẽ khô héo."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn để một viên đá lạnh trên bàn bếp vào mùa hè.", options: ["Đá tan chảy thành nước", "Đá to ra", "Đá biến thành gỗ", "Đá vẫn đông cứng"], correctAnswer: "Đá tan chảy thành nước", explanation: "Nhiệt độ phòng ấm áp làm đá chuyển sang trạng thái nước lỏng."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn thổi quá nhiều không khí vào bong bóng xà phòng.", options: ["Bong bóng bị vỡ", "Bong bóng biến thành đá", "Bong bóng nặng hơn", "Bong bóng nóng lên"], correctAnswer: "Bong bóng bị vỡ", explanation: "Thổi quá nhiều hơi vượt giới hạn co giãn của bong bóng xà phòng sẽ làm nó nổ."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn nhấn công tắc đèn trên tường.", options: ["Đèn sáng lên", "Phòng lạnh đi", "Cửa tự khóa", "Đồng hồ dừng lại"], correctAnswer: "Đèn sáng lên", explanation: "Nhấn công tắc giúp khép kín mạch điện, làm đèn phát sáng."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn thức suốt đêm không ngủ.", options: ["Bạn cảm thấy rất mệt mỏi vào ngày hôm sau", "Bạn thấy tràn đầy năng lượng", "Tóc bạn bạc trắng", "Bạn cao lên"], correctAnswer: "Bạn cảm thấy rất mệt mỏi vào ngày hôm sau", explanation: "Thiếu ngủ làm cơ thể không thể hồi phục năng lượng, gây mệt mỏi rã rời."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn đứng ngoài trời mưa lớn mà không có ô (dù).", options: ["Bạn bị ướt", "Bạn hoàn toàn khô ráo", "Bạn bay lên", "Bạn bị bốc cháy"], correctAnswer: "Bạn bị ướt", explanation: "Mưa là nước rơi từ trên cao; đứng trong mưa không che chắn sẽ bị ướt."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn bỏ bánh mì vào máy nướng và ấn cần gạt xuống.", options: ["Bánh mì được nướng giòn", "Bánh mì biến thành bột", "Bánh mì tan chảy", "Bánh mì bị sũng nước"], correctAnswer: "Bánh mì được nướng giòn", explanation: "Máy nướng tỏa nhiệt làm nóng và làm giòn bề mặt lát bánh mì."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn để sữa tươi ngoài tủ lạnh suốt ba ngày nắng nóng.", options: ["Sữa bị chua và hỏng", "Sữa ngọt hơn", "Sữa đông đá", "Sữa biến thành mật ong"], correctAnswer: "Sữa bị chua và hỏng", explanation: "Nhiệt độ ấm khiến vi khuẩn sinh sôi nhanh chóng, làm hỏng sữa."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn thổi mạnh vào ngọn nến đang cháy.", options: ["Ngọn nến tắt", "Ngọn lửa to hơn", "Nến tan chảy ngay lập tức", "Nến chuyển màu xanh"], correctAnswer: "Ngọn nến tắt", explanation: "Luồng hơi thổi mạnh làm phân tán nhiệt lượng và dập tắt lửa nến."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn đặt một nồi nước lên bếp ga đang cháy.", options: ["Nước bắt đầu sôi", "Nước đông đá", "Nước biến mất ngay lập tức", "Nồi nước to ra"], correctAnswer: "Nước bắt đầu sôi", explanation: "Nhiệt từ bếp ga truyền sang làm tăng nhiệt độ nước đến mức sôi trào."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn giẫm chân trần lên một chiếc đinh gỉ sắc nhọn.", options: ["Chân bạn bị thương", "Giày bạn bị bẩn", "Bạn nhảy cao hơn", "Chân bạn hóa xanh"], correctAnswer: "Chân bạn bị thương", explanation: "Đinh sắc nhọn đâm xuyên qua da nhạy cảm gây đau và nhiễm trùng."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn thêm đường vào một tách cà phê đen đắng.", options: ["Cà phê ngọt hơn", "Cà phê lạnh đi", "Cà phê biến mất", "Cà phê mặn hơn"], correctAnswer: "Cà phê ngọt hơn", explanation: "Đường là chất tạo ngọt, giúp làm dịu và lấn át vị đắng của cà phê."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn ném quả bóng tennis vào bức tường bê tông.", options: ["Bóng nảy ngược lại", "Bóng xuyên qua tường", "Tường bị sập", "Bóng bị hòa tan"], correctAnswer: "Bóng nảy ngược lại", explanation: "Bóng tennis có tính đàn hồi; va chạm vào bề mặt cứng giúp bóng nảy trở lại."),
            ExerciseItem(prompt: "Nguyên nhân: Bạn không học bài hay ôn tập cho kỳ thi quan trọng.", options: ["Bạn nhận điểm kém", "Bạn đạt điểm tuyệt đối", "Trường học đóng cửa", "Bạn tốt nghiệp sớm"], correctAnswer: "Bạn nhận điểm kém", explanation: "Không chuẩn bị kiến thức trước kỳ thi thường dẫn đến kết quả bài làm kém.")
        ]
    )

    // MARK: - Easy What's Wrong Here
    private static let easyWhatsWrong = Exercise(
        title: "Nhận biết Điểm phi lý",
        instructions: "Xác định lỗi logic hoặc điều không thể xảy ra trong câu.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Phi lý: Nam đi giày vào chân trước khi đi tất (vớ).", options: ["Tất phải được đi trước khi đi giày", "Giày phải đeo vào tay", "Tất phải đội trên đầu", "Giày dùng để ăn"], correctAnswer: "Tất phải được đi trước khi đi giày", explanation: "Tất giúp bảo vệ chân bên trong giày, vì vậy cần đi tất trước."),
            ExerciseItem(prompt: "Phi lý: Cô ấy dùng một chiếc dĩa để ăn bát canh gà nóng hổi.", options: ["Canh là nước lỏng và cần thìa", "Canh nên ăn bằng ngón tay", "Dĩa dùng để cắt thịt bò", "Canh nên nấu trong cốc"], correctAnswer: "Canh là nước lỏng và cần thìa", explanation: "Nước canh lỏng sẽ chảy qua các kẽ dĩa; cần sử dụng thìa để xúc canh."),
            ExerciseItem(prompt: "Phi lý: Con cá trèo lên cây cổ thụ để làm tổ.", options: ["Cá sống dưới nước và không thể leo cây", "Cây xanh không có cành lá", "Cá chỉ làm tổ trên mái nhà", "Cá bay lượn trên trời"], correctAnswer: "Cá sống dưới nước và không thể leo cây", explanation: "Cá hô hấp bằng mang và bơi bằng vây; chúng không sống trên cạn và không biết leo cây."),
            ExerciseItem(prompt: "Phi lý: Trời nóng nực và anh ấy mặc áo khoác len dày đi bơi.", options: ["Bơi lội cần mặc đồ bơi, không mặc áo khoác", "Áo khoác len giúp bơi nhanh hơn", "Bể bơi nên chứa đầy nước đá", "Áo khoác len chỉ mặc vào mùa hè"], correctAnswer: "Bơi lội cần mặc đồ bơi, không mặc áo khoác", explanation: "Áo len dày hút nước cực kỳ nặng và gây nguy hiểm khi ở dưới nước."),
            ExerciseItem(prompt: "Phi lý: Họ nấu một quả trứng sống chín trong ngăn đông tủ lạnh.", options: ["Ngăn đông làm lạnh; bếp ga mới nấu chín", "Trứng chỉ nên ăn sống", "Ngăn đông dùng để đun nước", "Trứng chín ngon hơn trong lò vi sóng"], correctAnswer: "Ngăn đông làm lạnh; bếp ga mới nấu chín", explanation: "Nấu chín cần nguồn nhiệt; ngăn đông dùng để làm lạnh và bảo quản thực phẩm."),
            ExerciseItem(prompt: "Phi lý: Con chó mở cuốn sách ra và bắt đầu đọc to thành tiếng.", options: ["Chó không thể đọc hay nói tiếng người", "Chó chỉ đọc báo giấy", "Sách nên được đọc thầm", "Chó thích tự viết sách"], correctAnswer: "Chó không thể đọc hay nói tiếng người", explanation: "Động vật không có tư duy ngôn ngữ và cơ quan phát âm để đọc sách."),
            ExerciseItem(prompt: "Phi lý: Cô ấy cắt chiếc bánh sinh nhật bằng một chiếc thìa ăn canh.", options: ["Cắt bánh cần dùng dao chứ không dùng thìa", "Bánh nên ăn bốc bằng tay", "Thìa chỉ dùng để ăn canh", "Bánh nên cắt bằng kéo"], correctAnswer: "Cắt bánh cần dùng dao chứ không dùng thìa", explanation: "Thìa tròn để xúc canh; để cắt bánh sinh nhật thành lát đẹp cần dao có cạnh sắc."),
            ExerciseItem(prompt: "Phi lý: Anh ấy dùng bút chì gỗ để nhắn tin trên màn hình điện thoại.", options: ["Màn hình cảm ứng dùng ngón tay hoặc bút chuyên dụng", "Bút chì chỉ dùng trên kính", "Điện thoại chỉ nhận lệnh giọng nói", "Bút chì quá ngắn để viết tin nhắn"], correctAnswer: "Màn hình cảm ứng dùng ngón tay hoặc bút chuyên dụng", explanation: "Màn hình cảm ứng điện thoại hoạt động nhờ cảm ứng điện dung từ ngón tay người."),
            ExerciseItem(prompt: "Phi lý: Chiếc máy bay lướt sóng đi lại trên mặt biển xanh thẳm.", options: ["Máy bay bay trên trời; tàu thủy đi dưới nước", "Nước biển luôn có màu xanh lá", "Máy bay chỉ chạy trên đất liền", "Tàu thủy bay trên trời"], correctAnswer: "Máy bay bay trên trời; tàu thủy đi dưới nước", explanation: "Máy bay di chuyển trong không trung; tàu thuyền mới là phương tiện đi trên mặt nước."),
            ExerciseItem(prompt: "Phi lý: Cô ấy mở ô (dù) che mưa ngay trong phòng khách khô ráo.", options: ["Ô dùng che nắng mưa ngoài trời", "Phòng khách nên có vũng nước mưa", "Ô chỉ dùng vào mùa đông", "Cô ấy nên mặc áo mưa trong nhà"], correctAnswer: "Ô dùng che nắng mưa ngoài trời", explanation: "Ô che mưa ngoài trời; trong nhà có mái che khô ráo nên không cần dùng ô."),
            ExerciseItem(prompt: "Phi lý: Con mèo sủa gâu gâu inh ỏi vào mặt người bưu tá.", options: ["Mèo kêu meo meo; chó mới sủa gâu gâu", "Mèo chỉ sủa gâu gâu với chuột", "Người bưu tá sợ loài mèo", "Mèo chỉ sủa gâu gâu vào buổi sáng"], correctAnswer: "Mèo kêu meo meo; chó mới sủa gâu gâu", explanation: "Sủa là tiếng của chó; tiếng kêu đặc trưng của loài mèo là meo meo."),
            ExerciseItem(prompt: "Phi lý: Anh ấy đổ xăng vào chiếc xe đạp để đạp ra chợ.", options: ["Xe đạp chạy bằng sức chân, không chạy bằng xăng", "Xe đạp chạy bằng dầu diesel", "Xe đạp chỉ chạy bằng pin", "Xe đạp không cần bánh xe"], correctAnswer: "Xe đạp chạy bằng sức chân, không chạy bằng xăng", explanation: "Xe đạp thông thường là phương tiện thô sơ dùng sức đạp của người."),
            ExerciseItem(prompt: "Phi lý: Tuyết rơi dày đặc giữa một trưa hè nóng nực.", options: ["Tuyết rơi vào mùa đông lạnh giá", "Ngày hè luôn tối tăm", "Mùa hè chỉ có vào tháng mười hai", "Tuyết sờ vào thấy nóng"], correctAnswer: "Tuyết rơi vào mùa đông lạnh giá", explanation: "Tuyết cần nhiệt độ khí quyển đóng băng để hình thành; mùa hè nóng nực không thể có tuyết."),
            ExerciseItem(prompt: "Phi lý: Cô ấy rửa đống bát đĩa bẩn trong thùng rác.", options: ["Bát đĩa rửa trong bồn rửa, không phải thùng rác", "Thùng rác để đựng quần áo sạch", "Bát đĩa nên rửa ngoài vườn", "Thùng rác chứa đầy nước sạch"], correctAnswer: "Bát đĩa rửa trong bồn rửa, không phải thùng rác", explanation: "Thùng rác chứa chất thải bẩn; bát đĩa cần được rửa sạch bằng nước trong bồn rửa bát."),
            ExerciseItem(prompt: "Phi lý: Anh ấy tưới hoa bằng một xô cát khô.", options: ["Cây cần nước để sống chứ không cần cát", "Cát làm đất quá ẩm ướt", "Vườn hoa nên đổ đầy đá", "Cát chỉ dành cho cây nhựa"], correctAnswer: "Cây cần nước để sống chứ không cần cát", explanation: "Nước giúp cây cối duy trì sự sống; cát khô không thể cung cấp độ ẩm cần thiết cho cây.")
        ]
    )

    // MARK: - Easy Sequencing
    private static let easySequencing = Exercise(
        title: "Thứ tự Hoạt động",
        instructions: "Sắp xếp các bước thực hiện hoạt động theo trình tự logic.",
        section: .language,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Nướng bánh mì", options: ["Đặt lát bánh mì vào lò nướng", "Ấn cần gạt xuống để bắt đầu nướng", "Đợi lát bánh mì nướng tự động nảy lên", "Phết bơ lên lát bánh mì nướng nóng hổi"], correctAnswer: "Đặt lát bánh mì vào lò nướng | Ấn cần gạt xuống để bắt đầu nướng | Đợi lát bánh mì nướng tự động nảy lên | Phết bơ lên lát bánh mì nướng nóng hổi", explanation: "Bánh mì được đưa vào lò, bật nhiệt nướng, nảy lên và phết bơ."),
            ExerciseItem(prompt: "Rửa tay sạch sẽ", options: ["Làm ướt bàn tay bằng nước", "Thoa xà phòng và xoa đều hai lòng bàn tay", "Rửa sạch xà phòng dưới vòi nước chảy", "Lau khô tay bằng khăn sạch"], correctAnswer: "Làm ướt bàn tay bằng nước | Thoa xà phòng và xoa đều hai lòng bàn tay | Rửa sạch xà phòng dưới vòi nước chảy | Lau khô tay bằng khăn sạch", explanation: "Quy trình rửa tay: làm ướt, xoa xà phòng, xả nước sạch, lau khô."),
            ExerciseItem(prompt: "Gửi thư tay", options: ["Viết nội dung thư lên giấy", "Gấp thư lại và bỏ vào phong bì", "Viết địa chỉ người nhận lên phong bì", "Dán tem và bỏ thư vào hòm thư"], correctAnswer: "Viết nội dung thư lên giấy | Gấp thư lại và bỏ vào phong bì | Viết địa chỉ người nhận lên phong bì | Dán tem và bỏ thư vào hòm thư", explanation: "Các bước gửi thư: viết thư, đóng phong bì, ghi địa chỉ, dán tem gửi đi."),
            ExerciseItem(prompt: "Đánh răng", options: ["Bóp kem đánh răng lên bàn chải", "Chải kỹ các mặt của răng", "Súc miệng sạch bằng nước", "Rửa sạch bàn chải và cất đúng nơi quy định"], correctAnswer: "Bóp kem đánh răng lên bàn chải | Chải kỹ các mặt của răng | Súc miệng sạch bằng nước | Rửa sạch bàn chải và cất đúng nơi quy định", explanation: "Trình tự đánh răng: bôi kem, chải răng, súc miệng, cất bàn chải."),
            ExerciseItem(prompt: "Pha trà nóng", options: ["Đun sôi nước trong ấm", "Đặt túi trà vào tách", "Rót nước sôi vào tách trà", "Đợi trà ngấm vài phút và thưởng thức"], correctAnswer: "Đun sôi nước trong ấm | Đặt túi trà vào tách | Rót nước sôi vào tách trà | Đợi trà ngấm vài phút và thưởng thức", explanation: "Pha trà ấm: đun nước, cho trà vào tách, rót nước sôi, ủ trà thưởng thức.")
        ]
    )

    // MARK: - Medium Word Association
    private static let mediumWordAssociation = Exercise(
        title: "Liên kết Từ vựng",
        instructions: "Chọn từ có mối quan hệ gần gũi nhất với từ gợi ý.",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "THƯ VIỆN", options: ["Im lặng", "Tiếng ồn", "Đám đông", "Trò chơi"], correctAnswer: "Im lặng", explanation: "Thư viện là không gian đọc sách học tập yêu cầu giữ im lặng."),
            ExerciseItem(prompt: "BỆNH VIỆN", options: ["Chữa bệnh", "Kỳ nghỉ", "Mua sắm", "Nấu ăn"], correctAnswer: "Chữa bệnh", explanation: "Bệnh viện là cơ sở y tế phục vụ công tác khám và chữa bệnh."),
            ExerciseItem(prompt: "SÂN BAY", options: ["Khởi hành", "Ngủ", "Làm vườn", "Hội họa"], correctAnswer: "Khởi hành", explanation: "Sân bay là nơi làm thủ tục lên máy bay cất cánh khởi hành chuyến bay."),
            ExerciseItem(prompt: "SA MẠC", options: ["Hạn hán", "Mưa bão", "Rừng rậm", "Đại dương"], correctAnswer: "Hạn hán", explanation: "Sa mạc có lượng mưa cực thấp nên thường xuyên xảy ra hạn hán khô cằn."),
            ExerciseItem(prompt: "ĐÁM CƯỚI", options: ["Nhẫn", "Kỳ thi", "Văn phòng", "Chìa khóa"], correctAnswer: "Nhẫn", explanation: "Nhẫn cưới là tín vật truyền thống trao nhau làm giao ước hôn nhân."),
            ExerciseItem(prompt: "TRANG TRẠI", options: ["Thu hoạch", "Thành phố", "Văn phòng", "Nhà máy"], correctAnswer: "Thu hoạch", explanation: "Trang trại trồng trọt nông sản, thu về thành quả là vụ thu hoạch."),
            ExerciseItem(prompt: "NHÀ BẾP", options: ["Công thức", "Giường", "Ô tô", "Vòi hoa sen"], correctAnswer: "Công thức", explanation: "Nấu ăn tại nhà bếp đòi hỏi tuân theo công thức chế biến."),
            ExerciseItem(prompt: "NÚI CAO", options: ["Đỉnh núi", "Tầng hầm", "Đường phố", "Sa mạc"], correctAnswer: "Đỉnh núi", explanation: "Đỉnh núi là điểm cao nhất hoặc chóp của ngọn núi."),
            ExerciseItem(prompt: "TÒA ÁN", options: ["Công lý", "Nhà hát", "Nhà bếp", "Chợ búa"], correctAnswer: "Công lý", explanation: "Tòa án là cơ quan tư pháp nhân danh nhà nước thực thi công lý."),
            ExerciseItem(prompt: "VĂN PHÒNG", options: ["Hạn chót", "Bãi biển", "Giường ngủ", "Dã ngoại"], correctAnswer: "Hạn chót", explanation: "Công việc văn phòng thường xoay quanh thời hạn hoàn thành công việc (deadline)."),
            ExerciseItem(prompt: "NHÀ HÁT", options: ["Sân khấu", "Nhà bếp", "Đường cao tốc", "Rừng rậm"], correctAnswer: "Sân khấu", explanation: "Sân khấu là nơi diễn viên thực hiện các buổi biểu diễn nghệ thuật."),
            ExerciseItem(prompt: "RỪNG RẬM", options: ["Thiên nhiên", "Thành phố", "Sa mạc", "Đường nhựa"], correctAnswer: "Thiên nhiên", explanation: "Rừng xanh bao phủ nhiều cây cối, là biểu tượng của thiên nhiên hoang dã."),
            ExerciseItem(prompt: "PHÒNG THÍ NGHIỆM", options: ["Thí nghiệm", "Nấu ăn", "Nhảy múa", "Mua sắm"], correctAnswer: "Thí nghiệm", explanation: "Phòng thí nghiệm phục vụ thực hiện các thử nghiệm khoa học."),
            ExerciseItem(prompt: "BẢO TÀNG", options: ["Triển lãm", "Phim ảnh", "Thể thao", "Nấu ăn"], correctAnswer: "Triển lãm", explanation: "Bảo tàng lưu giữ hiện vật lịch sử văn hóa để trưng bày triển lãm."),
            ExerciseItem(prompt: "NHA SĨ", options: ["Sâu răng", "Cắt tóc", "Vé tàu", "Nấu ăn"], correctAnswer: "Sâu răng", explanation: "Nha sĩ là bác sĩ chuyên chữa các bệnh về răng miệng như sâu răng.")
        ]
    )

    // MARK: - Medium Homonyms
    private static let mediumHomonyms = Exercise(
        title: "Từ Đồng âm Trung bình",
        instructions: "Chọn cặp từ đồng âm chính xác để hoàn thành các câu sau.",
        section: .language,
        type: .homonym,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "[chín / chín] Quả xoài trên cây đã ___ vàng. Số ___ là số đứng trước số mười.", options: ["chín...chín", "chín...chín", "chín...chín", "chín...chín"], correctAnswer: "chín...chín", explanation: "Từ 'chín' thứ nhất chỉ trạng thái trái cây chín; 'chín' thứ hai là số chín."),
            ExerciseItem(prompt: "[đường / đường] Vị của hạt ___ rất ngọt. Con ___ trước nhà rất đông xe cộ.", options: ["đường...đường", "đường...đường", "đường...đường", "đường...đường"], correctAnswer: "đường...đường", explanation: "Từ 'đường' thứ nhất chỉ chất ngọt; 'đường' thứ hai chỉ lối đi."),
            ExerciseItem(prompt: "[keo / keo] Lọ ___ dán giấy rất chắc. Người bủn xỉn hay bị nói là ___ kiệt.", options: ["keo...keo", "keo...keo", "keo...keo", "keo...keo"], correctAnswer: "keo...keo", explanation: "Từ 'keo' thứ nhất chỉ chất dính; 'keo' thứ hai chỉ tính tiết kiệm cực đoan."),
            ExerciseItem(prompt: "[kho / kho] Cá chép ___ tiêu rất ngon. Nhà ___ chứa đầy hàng hóa cũ.", options: ["kho...kho", "kho...kho", "kho...kho", "kho...kho"], correctAnswer: "kho...kho", explanation: "Từ 'kho' thứ nhất là phương pháp chế biến; 'kho' thứ hai chỉ nơi lưu trữ."),
            ExerciseItem(prompt: "[bàn / bàn] Mọi người đang họp để ___ bạc công việc. Chiếc ___ gỗ đặt ở giữa phòng.", options: ["bàn...bàn", "bàn...bàn", "bàn...bàn", "bàn...bàn"], correctAnswer: "bàn...bàn", explanation: "Từ 'bàn' thứ nhất là động từ thảo luận; 'bàn' thứ hai chỉ đồ nội thất.")
        ]
    )

    // MARK: - Easy Complete the Saying
    private static let easyCompleteSaying = Exercise(
        title: "Tục ngữ Đơn giản",
        instructions: "Chọn từ chính xác để hoàn thành câu tục ngữ phổ biến.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Có công mài sắt, có ngày nên ___", options: ["kim", "xà", "đinh", "đồng"], correctAnswer: "kim", explanation: "Câu tục ngữ khuyên chúng ta kiên trì chịu khó ắt sẽ thành công."),
            ExerciseItem(prompt: "Lá lành đùm lá ___", options: ["rách", "héo", "rụng", "xanh"], correctAnswer: "rách", explanation: "Thể hiện tinh thần tương thân tương ái, đùm bọc người hoạn nạn."),
            ExerciseItem(prompt: "Uống nước nhớ ___", options: ["nguồn", "sông", "biển", "mưa"], correctAnswer: "nguồn", explanation: "Nhắc nhở lòng biết ơn đối với người đi trước."),
            ExerciseItem(prompt: "Gần mực thì đen, gần đèn thì ___", options: ["sáng", "tối", "đỏ", "trắng"], correctAnswer: "sáng", explanation: "Môi trường sống xung quanh ảnh hưởng trực tiếp đến nhân cách."),
            ExerciseItem(prompt: "Ăn quả nhớ kẻ trồng ___", options: ["cây", "hoa", "quả", "vườn"], correctAnswer: "cây", explanation: "Khuyên bảo con người luôn ghi nhớ công ơn người tạo ra thành quả."),
            ExerciseItem(prompt: "Có chí thì ___", options: ["nên", "làm", "học", "chơi"], correctAnswer: "nên", explanation: "Có ý chí quyết tâm cao sẽ làm nên nghiệp lớn."),
            ExerciseItem(prompt: "Đói cho sạch, rách cho ___", options: ["thơm", "ấm", "đẹp", "sạch"], correctAnswer: "thơm", explanation: "Dù hoàn cảnh nghèo khó vẫn phải giữ gìn phẩm hạnh trong sạch."),
            ExerciseItem(prompt: "Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi ___", options: ["cao", "to", "lớn", "dài"], correctAnswer: "cao", explanation: "Ca ngợi sức mạnh của sự đoàn kết tập thể."),
            ExerciseItem(prompt: "Có thực mới vực được ___", options: ["đạo", "người", "bụng", "sức"], correctAnswer: "đạo", explanation: "Cần đáp ứng nhu cầu vật chất tối thiểu trước khi làm việc lớn."),
            ExerciseItem(prompt: "Tốt gỗ hơn tốt nước ___", options: ["sơn", "vôi", "bóng", "màu"], correctAnswer: "sơn", explanation: "Đề cao giá trị phẩm chất bên trong hơn vẻ bề ngoài hào nhoáng."),
            ExerciseItem(prompt: "Thương người như thể thương ___", options: ["thân", "nhà", "bạn", "dân"], correctAnswer: "thân", explanation: "Yêu thương giúp đỡ đồng bào như chính bản thân mình."),
            ExerciseItem(prompt: "Bán anh em xa, mua láng giềng ___", options: ["gần", "tốt", "thân", "quanh"], correctAnswer: "gần", explanation: "Hàng xóm gần gũi hỗ trợ nhau nhanh hơn người thân ở xa."),
            ExerciseItem(prompt: "Mất bò mới lo làm ___", options: ["chuồng", "nhà", "cửa", "rào"], correctAnswer: "chuồng", explanation: "Để xảy ra hậu quả nghiêm trọng rồi mới lo sửa chữa là quá muộn."),
            ExerciseItem(prompt: "Đoàn kết là sống, chia rẽ là ___", options: ["chết", "hết", "bại", "nghèo"], correctAnswer: "chết", explanation: "Đoàn kết tạo sức mạnh tồn tại, chia rẽ dẫn đến diệt vong."),
            ExerciseItem(prompt: "Nói lời phải giữ lấy ___", options: ["lời", "chữ", "tiếng", "danh"], correctAnswer: "lời", explanation: "Giữ chữ tín trong lời nói, không nuốt lời thất hứa.")
        ]
    )

    // MARK: - Hard Complete the Saying
    private static let hardCompleteSaying = Exercise(
        title: "Tục ngữ Nâng cao",
        instructions: "Chọn từ chính xác để hoàn thành câu tục ngữ dân gian.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Lửa thử vàng, gian nan thử ___", options: ["sức", "lòng", "người", "trí"], correctAnswer: "sức", explanation: "Khó khăn thử thách là thước đo sức lực và bản lĩnh con người."),
            ExerciseItem(prompt: "Nực cười châu chấu đá xe, tưởng rằng chấu ngã ai dè xe ___", options: ["nghiêng", "đổ", "hỏng", "lật"], correctAnswer: "nghiêng", explanation: "Nói về ý chí nhỏ bé chiến thắng thế lực bạo tàn tưởng như vô địch."),
            ExerciseItem(prompt: "Tránh vỏ dưa, gặp vỏ ___", options: ["dừa", "bí", "bầu", "mướp"], correctAnswer: "dừa", explanation: "Tránh được khó khăn này lại vấp phải khó khăn tương tự khác."),
            ExerciseItem(prompt: "Tre già măng ___", options: ["mọc", "lên", "trồi", "non"], correctAnswer: "mọc", explanation: "Thế hệ sau kế thừa và tiếp bước thế hệ trước."),
            ExerciseItem(prompt: "Khôn ngoan đối đáp người ngoài, gà cùng một mẹ chớ hoài đá ___", options: ["nhau", "lộn", "đùa", "nhường"], correctAnswer: "nhau", explanation: "Anh em ruột thịt trong một gia đình phải biết yêu thương nhường nhịn nhau."),
            ExerciseItem(prompt: "Sai một ly, đi một ___", options: ["dặm", "thước", "mét", "sải"], correctAnswer: "dặm", explanation: "Lỗi lầm nhỏ ban đầu dẫn đến hậu quả sai lệch rất xa về sau."),
            ExerciseItem(prompt: "Vải thưa che mắt ___", options: ["thánh", "người", "đời", "trần"], correctAnswer: "thánh", explanation: "Thủ đoạn giả dối vụng về không thể lừa gạt được người thông thái."),
            ExerciseItem(prompt: "Gieo gió gặt ___", options: ["bão", "mưa", "nước", "lửa"], correctAnswer: "bão", explanation: "Làm điều xấu hại người sẽ nhận lại quả báo nặng nề hơn."),
            ExerciseItem(prompt: "Nước chảy đá ___", options: ["mòn", "vỡ", "trôi", "cứng"], correctAnswer: "mòn", explanation: "Kiên trì nỗ lực lâu dài sẽ làm được điều tưởng chừng không thể."),
            ExerciseItem(prompt: "Trâu buộc ghét trâu ___", options: ["ăn", "đi", "chạy", "nằm"], correctAnswer: "ăn", explanation: "Thói đố kỵ ganh ghét của kẻ thất bại trước người thành công."),
            ExerciseItem(prompt: "Thả con săn sắt, bắt con cá ___", options: ["rô", "quả", "diếc", "trắm"], correctAnswer: "rô", explanation: "Chấp nhận bỏ ra cái nhỏ để thu về lợi ích lớn hơn."),
            ExerciseItem(prompt: "Mật ngọt chết ___", options: ["ruồi", "ong", "kiến", "muỗi"], correctAnswer: "ruồi", explanation: "Những lời nói nịnh hót ngọt ngào dễ làm người ta mất cảnh giác sa bẫy."),
            ExerciseItem(prompt: "Chuồn chuồn bay thấp thì mưa, bay cao thì nắng, bay vừa thì ___", options: ["râm", "mát", "ẩm", "khô"], correctAnswer: "râm", explanation: "Kinh nghiệm thời tiết dân gian dựa vào cách bay của chuồn chuồn."),
            ExerciseItem(prompt: "Ếch ngồi đáy giếng coi trời bằng ___", options: ["vung", "mâm", "nong", "nia"], correctAnswer: "vung", explanation: "Kẻ hiểu biết nông cạn nhưng lại huênh hoang coi thường mọi sự."),
            ExerciseItem(prompt: "Học đi đôi với ___", options: ["hành", "chơi", "nghĩ", "làm"], correctAnswer: "hành", explanation: "Kiến thức lý thuyết học được cần áp dụng thực hành vào thực tế.")
        ]
    )
}
