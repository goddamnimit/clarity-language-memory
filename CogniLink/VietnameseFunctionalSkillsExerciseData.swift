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
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi:",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 1):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 2):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 3):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 4):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 5):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 6):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 7):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 8):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 9):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 10):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 11):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 12):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 13):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 14):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 15):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 16):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 17):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 18):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 19):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 20):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 21):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 22):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 23):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 24):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 25):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 26):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 27):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 28):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 29):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 30):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 31):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 32):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 33):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 34):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 35):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 36):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 37):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 38):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 39):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 40):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 41):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 42):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 43):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 44):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 45):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 46):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 47):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 48):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 49):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Các bước chuẩn bị một tô Phở bò nóng hổi (Bước 50):",
                options: ["Xếp bánh phở và thịt bò tái vào tô", "Chan nước dùng sôi sùng sục vào tô", "Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ"],
                correctAnswer: "Xếp bánh phở và thịt bò tái vào tô | Chan nước dùng sôi sùng sục vào tô | Rắc hành lá, ngò rí và thưởng thức với rau thơm, giá đỗ",
                explanation: "Steps to assemble a bowl of pho."
            )
        ]
    )

    // MARK: - Sự thật hoặc ý kiến
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

    // MARK: - Trình tự các bước
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

    // MARK: - Tình huống an toàn
    private static let safetyScenarios = Exercise(
        id: UUID(),
        title: "Tình huống an toàn",
        instructions: "Đọc tình huống và cho biết bạn sẽ làm gì.",
        section: .functionalSkills,
        type: .openEnded,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 1)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 2)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 3)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 4)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 5)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 6)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 7)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 8)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 9)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 10)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 11)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 12)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 13)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 14)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 15)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 16)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 17)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 18)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 19)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 20)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 21)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 22)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 23)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 24)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 25)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 26)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 27)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 28)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 29)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 30)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 31)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 32)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 33)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 34)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 35)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 36)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 37)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 38)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 39)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 40)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 41)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 42)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 43)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 44)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 45)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 46)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 47)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 48)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 49)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bạn ngửi thấy mùi ga rò rỉ trong bếp nhà mình ở Garden Grove. Bạn nên làm gì? (Tình huống 50)",
                options: [],
                correctAnswer: "Khóa van ga ngay lập tức, mở các cửa sổ để thông gió, tuyệt đối không bật lửa hay công tắc điện, và đi ra ngoài gọi cứu hộ hoặc công ty ga.",
                explanation: "Gas safety actions."
            )
        ]
    )

    // MARK: - Mua sắm nhu yếu phẩm
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "Mua sắm nhu yếu phẩm",
        instructions: "So sánh giá cả và chọn sản phẩm tiết kiệm nhất.",
        section: .functionalSkills,
        type: .comparison,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 1)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 2)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 3)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 4)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 5)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 6)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 7)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 8)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 9)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 10)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 11)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 12)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 13)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 14)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 15)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 16)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 17)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 18)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 19)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 20)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 21)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 22)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 23)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 24)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 25)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 26)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 27)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 28)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 29)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 30)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 31)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 32)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 33)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 34)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 35)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 36)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 37)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 38)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 39)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 40)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 41)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 42)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 43)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 44)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 45)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 46)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 47)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 48)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 49)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 50)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 51)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 52)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 53)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 54)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 55)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 56)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 57)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 58)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 59)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mua gạo thơm Jasmine tại chợ Thuận Phát: A) Bao 10 lbs giá $12 B) Bao 25 lbs giá $25. Lựa chọn nào tiết kiệm hơn? (Lựa chọn 60)",
                options: ["Bao 10 lbs giá $12", "Bao 25 lbs giá $25"],
                correctAnswer: "Bao 25 lbs giá $25",
                explanation: "$1 per lb is cheaper than $1.20 per lb."
            )
        ]
    )
}
