import Foundation

struct VietnameseFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        cookingSteps,
        readingAPrescription,
        readingAMenu,
        safetyScenarios,
        groceryShopping
    ]

    // MARK: - Các bước nấu ăn
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "Các bước nấu ăn",
        instructions: "Các bước được liệt kê theo thứ tự SAI. Đánh số 1, 2, 3 để sắp xếp theo đúng thứ tự.",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa:", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu | Vo gạo sạch | Cho nước vừa đủ | Đại nắp đun nhỏ lửa", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
        ]
    )

    // MARK: - Sự thật hoặc ý kiến
    private static let readingAPrescription = Exercise(
        id: UUID(),
        title: "Sự thật hoặc ý kiến",
        instructions: "Quyết định: tuyên bố này là SỰ THẬT hay Ý KIẾN?",
        section: .functionalSkills,
        type: .factOrOpinion,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Có 7 ngày trong một tuần.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Vani là hương vị ngon nhất của kem.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Nước đóng băng ở nhiệt độ 32 độ F.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Chó là vật nuôi tốt nhất.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Một hình tam giác có ba cạnh.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Chương trình truyền hình đó thật buồn cười.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Abraham Lincoln là một Tổng thống Hoa Kỳ.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Trái đất là hành tinh tốt nhất.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Có 60 phút trong một giờ.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Hoa tulip đẹp hơn hoa hồng.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Washington D.C. là thủ đô của Hoa Kỳ.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Thật thô lỗ khi nói chuyện với cái miệng đầy thức ăn.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Có 12 tháng trong một năm.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Dậy sớm là tốt cho bạn.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "2 + 2 = 4.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Đại dương được làm từ nước mặn.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Làm vườn là một sở thích tuyệt vời.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Đá nặng hơn lông có cùng kích thước.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Hoa Kỳ có 50 tiểu bang.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Pizza là món ăn ngon nhất.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Tập thể dục có lợi cho sức khỏe của bạn.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Nhạc cổ điển chán quá.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Táo và cam đều là trái cây.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Mèo dễ nuôi hơn chó.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "\"Opinion\" là câu trả lời đúng."),
            ExerciseItem(id: UUID(), prompt: "Có 24 giờ trong một ngày.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "\"Fact\" là câu trả lời đúng."),
        ]
    )

    // MARK: - Trình tự các bước
    private static let readingAMenu = Exercise(
        id: UUID(),
        title: "Trình tự các bước",
        instructions: "Các bước được hiển thị theo thứ tự SAI. Đánh số 1, 2, 3... để xếp chúng theo đúng thứ tự.",
        section: .functionalSkills,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "làm bánh mì nướng", options: ["Bơ bánh mì nướng", "Cho bánh mì vào lò nướng", "Loại bỏ khỏi máy nướng bánh mì", "ăn"], correctAnswer: "Cho bánh mì vào lò nướng | Loại bỏ khỏi máy nướng bánh mì | Bơ bánh mì nướng | ăn", explanation: "Thứ tự đúng: Cho bánh mì vào lò nướng → Loại bỏ khỏi máy nướng bánh mì → Bơ bánh mì nướng → ăn."),
            ExerciseItem(id: UUID(), prompt: "Rửa tay", options: ["Lau khô tay bằng khăn", "Thoa xà phòng lên tay", "Bật nước", "Chà trong 20 giây", "Xả sạch xà phòng", "Làm ướt tay bạn"], correctAnswer: "Bật nước | Làm ướt tay bạn | Thoa xà phòng lên tay | Chà trong 20 giây | Xả sạch xà phòng | Lau khô tay bằng khăn", explanation: "Thứ tự đúng: Bật nước → Làm ướt tay bạn → Thoa xà phòng lên tay → Chà trong 20 giây → Xả sạch xà phòng → Lau khô tay bằng khăn."),
            ExerciseItem(id: UUID(), prompt: "Pha cà phê", options: ["Đổ cà phê vào cốc của bạn", "Thêm bã cà phê vào bộ lọc", "Nhấn nút pha", "Đổ đầy hồ chứa nước"], correctAnswer: "Đổ đầy hồ chứa nước | Thêm bã cà phê vào bộ lọc | Nhấn nút pha | Đổ cà phê vào cốc của bạn", explanation: "Thứ tự đúng: Đổ đầy hồ chứa nước → Thêm bã cà phê vào bộ lọc → Nhấn nút pha → Đổ cà phê vào cốc của bạn."),
            ExerciseItem(id: UUID(), prompt: "Thực hiện cuộc gọi điện thoại", options: ["Nói xin chào", "Cúp máy", "Nhấc điện thoại lên", "Quay số", "Có cuộc trò chuyện của bạn"], correctAnswer: "Nhấc điện thoại lên | Quay số | Nói xin chào | Có cuộc trò chuyện của bạn | Cúp máy", explanation: "Thứ tự đúng: Nhấc điện thoại lên → Quay số → Nói xin chào → Có cuộc trò chuyện của bạn → Cúp máy."),
            ExerciseItem(id: UUID(), prompt: "Mặc quần áo", options: ["Mang giày vào", "Mặc áo vào", "Mặc đồ lót", "Mang tất vào", "Mặc quần vào"], correctAnswer: "Mặc đồ lót | Mặc áo vào | Mặc quần vào | Mang tất vào | Mang giày vào", explanation: "Thứ tự đúng: Mặc đồ lót → Mặc áo vào → Mặc quần vào → Mang tất vào → Mang giày vào."),
            ExerciseItem(id: UUID(), prompt: "Quét sàn", options: ["Vứt vào thùng rác", "Lấy chổi ra", "Đổ rác vào thùng rác", "Quét các mảnh vụn thành một đống"], correctAnswer: "Lấy chổi ra | Quét các mảnh vụn thành một đống | Đổ rác vào thùng rác | Vứt vào thùng rác", explanation: "Thứ tự đúng: Lấy chổi ra → Quét các mảnh vụn thành một đống → Đổ rác vào thùng rác → Vứt vào thùng rác."),
            ExerciseItem(id: UUID(), prompt: "Đặt hàng tại nhà hàng", options: ["Ăn bữa ăn của bạn", "Báo cho máy chủ biết đơn đặt hàng của bạn", "ngồi xuống", "Đợi đồ ăn của bạn", "Xem lại thực đơn"], correctAnswer: "ngồi xuống | Xem lại thực đơn | Báo cho máy chủ biết đơn đặt hàng của bạn | Đợi đồ ăn của bạn | Ăn bữa ăn của bạn", explanation: "Thứ tự đúng: ngồi xuống → Xem lại thực đơn → Báo cho máy chủ biết đơn đặt hàng của bạn → Đợi đồ ăn của bạn → Ăn bữa ăn của bạn."),
            ExerciseItem(id: UUID(), prompt: "bánh nướng", options: ["Để bánh nguội", "Nướng trong lò", "Làm nóng lò trước", "Trộn các thành phần", "Múc bột lên khay nướng"], correctAnswer: "Làm nóng lò trước | Trộn các thành phần | Múc bột lên khay nướng | Nướng trong lò | Để bánh nguội", explanation: "Thứ tự đúng: Làm nóng lò trước → Trộn các thành phần → Múc bột lên khay nướng → Nướng trong lò → Để bánh nguội."),
        ]
    )

    // MARK: - Tình huống an toàn
    private static let safetyScenarios = Exercise(
        id: UUID(),
        title: "Tình huống an toàn",
        instructions: "Đọc tình huống và cho biết bạn sẽ làm gì.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster:", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
        ]
    )

    // MARK: - Mua sắm nhu yếu phẩm
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "Mua sắm nhu yếu phẩm",
        instructions: "So sánh giá cả và chọn sản phẩm tiết kiệm nhất.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa: A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
        ]
    )
}


