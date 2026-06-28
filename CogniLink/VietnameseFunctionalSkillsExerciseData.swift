import Foundation

struct VietnameseFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        cookingSteps,
        readingAPrescription,
        readingAMenu
    ]

    // MARK: - Exercise 31: Cooking Steps
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "Các bước nấu ăn",
        instructions: "Các bước được liệt kê theo thứ tự SAI. Đánh số 1, 2, 3 để sắp xếp theo đúng thứ tự.",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Nấu cơm trắng",
                options: ["Để lửa nhỏ 15 phút rồi ủ 5 phút", "Vo gạo cho sạch", "Đong gạo vào nồi", "Đổ nước vừa đủ và bắc lên bếp", "Bật lửa lớn cho đến khi sôi"],
                correctAnswer: "Đong gạo vào nồi | Vo gạo cho sạch | Đổ nước vừa đủ và bắc lên bếp | Bật lửa lớn cho đến khi sôi | Để lửa nhỏ 15 phút rồi ủ 5 phút",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pha trà đá",
                options: ["Thêm đường và khuấy tan", "Cho đá vào ly", "Pha túi trà vào nước sôi 3 phút", "Rót trà vào ly đá", "Vắt thêm chanh nếu thích"],
                correctAnswer: "Pha túi trà vào nước sôi 3 phút | Thêm đường và khuấy tan | Cho đá vào ly | Rót trà vào ly đá | Vắt thêm chanh nếu thích",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Làm trứng chiên",
                options: ["Rắc muối và tiêu vừa ăn", "Đợi lòng trắng đông lại thì tắt bếp", "Đập trứng vào chảo", "Đun chảo với một ít dầu ở lửa vừa"],
                correctAnswer: "Đun chảo với một ít dầu ở lửa vừa | Đập trứng vào chảo | Rắc muối và tiêu vừa ăn | Đợi lòng trắng đông lại thì tắt bếp",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Luộc trứng",
                options: ["Bóc vỏ và ăn", "Cho trứng vào nồi nước lạnh", "Bắc lên bếp và đun sôi", "Hạ lửa nhỏ, đun thêm 10 phút", "Vớt ra ngâm vào nước lạnh"],
                correctAnswer: "Cho trứng vào nồi nước lạnh | Bắc lên bếp và đun sôi | Hạ lửa nhỏ, đun thêm 10 phút | Vớt ra ngâm vào nước lạnh | Bóc vỏ và ăn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nấu mì gói",
                options: ["Đổ gói gia vị vào, khuấy đều", "Đun sôi 500ml nước", "Cho mì vào nồi nước sôi", "Đun thêm 3 phút cho mì chín", "Múc ra bát và dùng nóng"],
                correctAnswer: "Đun sôi 500ml nước | Cho mì vào nồi nước sôi | Đổ gói gia vị vào, khuấy đều | Đun thêm 3 phút cho mì chín | Múc ra bát và dùng nóng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pha cà phê sữa đá",
                options: ["Cho đá vào ly", "Đổ sữa đặc vào phin", "Đặt phin lên ly và đổ nước sôi", "Đợi cà phê chảy hết", "Khuấy đều và thêm đá"],
                correctAnswer: "Đổ sữa đặc vào phin | Đặt phin lên ly và đổ nước sôi | Đợi cà phê chảy hết | Cho đá vào ly | Khuấy đều và thêm đá",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Làm bánh mì trứng",
                options: ["Phết bơ hoặc sốt mayonnaise lên bánh", "Kẹp trứng vào giữa bánh mì", "Thêm rau sống và dưa chuột", "Chiên trứng ốp la", "Cắt bánh mì dọc làm đôi"],
                correctAnswer: "Cắt bánh mì dọc làm đôi | Phết bơ hoặc sốt mayonnaise lên bánh | Chiên trứng ốp la | Kẹp trứng vào giữa bánh mì | Thêm rau sống và dưa chuột",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Làm sinh tố xoài",
                options: ["Đổ vào cốc và thêm đá", "Cho xoài vào máy xay sinh tố", "Xay nhuyễn", "Thêm sữa tươi hoặc sữa đặc", "Gọt vỏ và cắt xoài thành miếng nhỏ"],
                correctAnswer: "Gọt vỏ và cắt xoài thành miếng nhỏ | Cho xoài vào máy xay sinh tố | Thêm sữa tươi hoặc sữa đặc | Xay nhuyễn | Đổ vào cốc và thêm đá",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nấu cháo trắng",
                options: ["Thêm muối và hành lá cho thơm", "Vo gạo sạch", "Đổ nhiều nước hơn bình thường vào nồi", "Đun sôi rồi hạ lửa nhỏ", "Khuấy đều và nấu 30 phút"],
                correctAnswer: "Vo gạo sạch | Đổ nhiều nước hơn bình thường vào nồi | Đun sôi rồi hạ lửa nhỏ | Khuấy đều và nấu 30 phút | Thêm muối và hành lá cho thơm",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Làm salad rau trộn",
                options: ["Rưới sốt và trộn đều", "Rửa sạch rau xà lách và rau thơm", "Lau khô bằng khăn giấy", "Cắt cà chua và dưa leo thành miếng nhỏ", "Cho tất cả vào tô"],
                correctAnswer: "Rửa sạch rau xà lách và rau thơm | Lau khô bằng khăn giấy | Cắt cà chua và dưa leo thành miếng nhỏ | Cho tất cả vào tô | Rưới sốt và trộn đều",
                explanation: ""
            )
        ]
    )

    // MARK: - Exercise 43: Reading a Prescription
    private static let readingAPrescription = Exercise(
        id: UUID(),
        title: "Sự thật hoặc ý kiến",
        instructions: "Quyết định: tuyên bố này là SỰ THẬT hay Ý KIẾN?",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
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

    // MARK: - Exercise 44: Reading a Menu
    private static let readingAMenu = Exercise(
        id: UUID(),
        title: "Trình tự các bước",
        instructions: "Các bước được hiển thị theo thứ tự SAI. Đánh số 1, 2, 3... để xếp chúng theo đúng thứ tự.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "làm bánh mì nướng",
                options: ["Bơ bánh mì nướng", "Cho bánh mì vào lò nướng", "Loại bỏ khỏi máy nướng bánh mì", "ăn"],
                correctAnswer: "Bơ bánh mì nướng",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rửa tay",
                options: ["Lau khô tay bằng khăn", "Thoa xà phòng lên tay", "Bật nước", "Chà trong 20 giây", "Xả sạch xà phòng", "Làm ướt tay bạn"],
                correctAnswer: "Lau khô tay bằng khăn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pha cà phê",
                options: ["Đổ cà phê vào cốc của bạn", "Thêm bã cà phê vào bộ lọc", "Nhấn nút pha", "Đổ đầy hồ chứa nước"],
                correctAnswer: "Đổ cà phê vào cốc của bạn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Thực hiện cuộc gọi điện thoại",
                options: ["Nói xin chào", "Cúp máy", "Nhấc điện thoại lên", "Quay số", "Có cuộc trò chuyện của bạn"],
                correctAnswer: "Nói xin chào",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mặc quần áo",
                options: ["Mang giày vào", "Mặc áo vào", "Mặc đồ lót", "Mang tất vào", "Mặc quần vào"],
                correctAnswer: "Mang giày vào",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Quét sàn",
                options: ["Vứt vào thùng rác", "Lấy chổi ra", "Đổ rác vào thùng rác", "Quét các mảnh vụn thành một đống"],
                correctAnswer: "Vứt vào thùng rác",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Đặt hàng tại nhà hàng",
                options: ["Ăn bữa ăn của bạn", "Báo cho máy chủ biết đơn đặt hàng của bạn", "ngồi xuống", "Đợi đồ ăn của bạn", "Xem lại thực đơn"],
                correctAnswer: "Ăn bữa ăn của bạn",
                explanation: ""
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "bánh nướng",
                options: ["Để bánh nguội", "Nướng trong lò", "Làm nóng lò trước", "Trộn các thành phần", "Múc bột lên khay nướng"],
                correctAnswer: "Để bánh nguội",
                explanation: ""
            )
        ]
    )

}
