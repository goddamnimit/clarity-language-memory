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
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 1):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 2):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 3):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 4):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 5):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 6):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 7):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 8):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 9):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 10):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 11):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 12):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 13):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 14):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 15):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 16):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 17):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 18):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 19):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 20):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 21):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 22):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 23):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 24):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 25):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 26):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 27):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 28):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 29):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 30):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 31):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 32):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 33):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 34):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 35):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 36):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 37):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 38):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 39):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 40):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 41):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 42):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 43):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 44):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 45):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 46):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 47):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 48):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 49):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 50):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 51):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 52):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 53):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 54):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 55):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 56):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 57):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 58):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 59):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 60):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa."),
            ExerciseItem(id: UUID(), prompt: "Các bước nấu cơm niêu đất ở tiệm Bolsa (Bước 61):", options: ["Đong gạo vào niêu", "Vo gạo sạch", "Cho nước vừa đủ", "Đại nắp đun nhỏ lửa"], correctAnswer: "Đong gạo vào niêu", explanation: "Đong gạo là bước đầu tiên trong trình tự nấu cơm niêu đất ở tiệm Bolsa.")
        ]
    )

    // MARK: - Sự thật hoặc ý kiến
    private static let readingAPrescription = Exercise(
        id: UUID(),
        title: "Sự thật hoặc ý kiến",
        instructions: "Quyết định: tuyên bố này là SỰ THẬT hay Ý KIẾN?",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
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
        trackedType: nil,
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
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 1):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 2):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 3):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 4):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 5):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 6):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 7):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 8):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 9):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 10):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 11):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 12):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 13):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 14):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 15):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 16):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 17):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 18):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 19):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 20):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 21):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 22):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 23):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 24):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 25):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 26):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 27):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 28):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 29):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 30):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 31):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 32):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 33):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 34):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 35):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 36):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 37):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 38):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 39):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 40):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 41):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 42):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 43):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 44):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 45):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 46):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 47):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 48):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 49):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật."),
            ExerciseItem(id: UUID(), prompt: "Bạn thấy khói bốc lên từ ổ cắm điện trong nhà ở Westminster (Tình huống 50):", options: ["Ngắt cầu dao điện tổng ngay lập tức", "Tạt nước vào ổ cắm", "Cắm thêm thiết bị khác", "Dùng tay không rút phích cắm"], correctAnswer: "Ngắt cầu dao điện tổng ngay lập tức", explanation: "Ngắt cầu dao tổng là cách an toàn nhất để tránh hỏa hoạn và điện giật.")
        ]
    )

    // MARK: - Mua sắm nhu yếu phẩm
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "Mua sắm nhu yếu phẩm",
        instructions: "So sánh giá cả và chọn sản phẩm tiết kiệm nhất.",
        section: .functionalSkills,
        type: .comparison,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 1): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 2): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 3): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 4): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 5): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 6): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 7): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 8): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 9): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 10): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 11): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 12): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 13): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 14): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 15): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 16): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 17): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 18): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 19): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 20): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 21): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 22): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 23): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 24): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 25): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 26): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 27): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 28): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 29): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 30): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 31): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 32): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 33): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 34): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 35): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 36): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 37): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 38): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 39): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 40): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 41): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 42): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 43): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 44): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 45): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 46): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 47): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 48): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 49): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 50): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 51): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 52): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 53): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 54): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 55): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 56): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 57): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 58): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 59): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml."),
            ExerciseItem(id: UUID(), prompt: "Mua nước mắm tại chợ Bolsa (Lựa chọn 60): A) Chai 500ml giá $6 B) Chai 750ml giá $8. Lựa chọn nào rẻ hơn trên mỗi ml?", options: ["Chai 750ml rẻ hơn", "Chai 500ml rẻ hơn", "Cả hai bằng nhau", "Không thể tính được"], correctAnswer: "Chai 750ml rẻ hơn", explanation: "Chai 750ml có đơn giá rẻ hơn trên mỗi ml so với chai 500ml.")
        ]
    )
}
