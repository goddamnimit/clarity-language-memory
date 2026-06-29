import Foundation
@main struct TestRunner {
    static func main() {
        let issues = ExerciseDataValidator.validateAllCatalogs()
        if issues.isEmpty {
            print("VALIDATION SUCCESS")
        } else {
            print("VALIDATION FAILED:")
            for issue in issues {
                print(issue)
            }
        }
    }
}
