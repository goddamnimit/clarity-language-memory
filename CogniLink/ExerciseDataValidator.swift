import Foundation

/// A single validation failure for one exercise item.
struct ExerciseValidationIssue: Equatable, CustomStringConvertible {
    let sourceName: String
    let exerciseTitle: String
    let itemIndex: Int
    let message: String

    var description: String {
        "\(sourceName) / \"\(exerciseTitle)\" item \(itemIndex + 1): \(message)"
    }
}

/// Validates static exercise content against consistency rules.
enum ExerciseDataValidator {

  private static let yesNoOptions = ["Yes", "No"]
  private static let factOrOpinionOptions = ["Fact", "Opinion"]

  /// All bundled exercise catalogs (9 data files).
  static let catalogs: [(name: String, exercises: () -> [Exercise])] = [
    ("LanguageExerciseData", { LanguageExerciseData.allExercises }),
    ("CognitionExerciseData", { CognitionExerciseData.allExercises }),
    ("FunctionalSkillsExerciseData", { FunctionalSkillsExerciseData.allExercises }),
    ("SpanishLanguageExerciseData", { SpanishLanguageExerciseData.allExercises }),
    ("SpanishCognitionExerciseData", { SpanishCognitionExerciseData.allExercises }),
    ("SpanishFunctionalSkillsExerciseData", { SpanishFunctionalSkillsExerciseData.allExercises }),
    ("HindiLanguageExerciseData", { HindiLanguageExerciseData.allExercises }),
    ("HindiCognitionExerciseData", { HindiCognitionExerciseData.allExercises }),
    ("HindiFunctionalSkillsExerciseData", { HindiFunctionalSkillsExerciseData.allExercises }),
  ]

  /// Validates every exercise in every catalog.
  static func validateAllCatalogs() -> [ExerciseValidationIssue] {
    catalogs.flatMap { catalog in
      validateCatalog(named: catalog.name, exercises: catalog.exercises())
    }
  }

  static func validateCatalog(named sourceName: String, exercises: [Exercise]) -> [ExerciseValidationIssue] {
    exercises.flatMap { exercise in
      validate(exercise: exercise, sourceName: sourceName)
    }
  }

  static func validate(exercise: Exercise, sourceName: String) -> [ExerciseValidationIssue] {
    exercise.items.enumerated().flatMap { index, item in
      validate(item: item, exerciseType: exercise.type).map { message in
        ExerciseValidationIssue(
          sourceName: sourceName,
          exerciseTitle: exercise.title,
          itemIndex: index,
          message: message
        )
      }
    }
  }

  /// Returns human-readable failure messages; empty when valid.
  static func validate(item: ExerciseItem, exerciseType: ExerciseType) -> [String] {
    var issues: [String] = []

    if item.prompt.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
      issues.append("prompt must be non-empty")
    }

    if exerciseType != .openEnded {
      if item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
        issues.append("correctAnswer must be non-empty for type \(exerciseType)")
      }
    }

  issues.append(contentsOf: validateOptions(item: item, exerciseType: exerciseType))

    if exerciseType != .openEnded && exerciseType != .sequencing {
      if !item.options.isEmpty && !item.options.contains(item.correctAnswer) {
        issues.append("correctAnswer must appear in options")
      }
    }

    if exerciseType == .sequencing {
      issues.append(contentsOf: validateSequencingAnswer(item: item))
    }

    return issues
  }

  private static func validateOptions(item: ExerciseItem, exerciseType: ExerciseType) -> [String] {
    switch exerciseType {
    case .multipleChoice:
      if item.options.count != 4 {
        return ["multipleChoice requires exactly 4 options (found \(item.options.count))"]
      }
    case .yesNo:
      if item.options != yesNoOptions {
        return ["yesNo requires options [\"Yes\", \"No\"] (found \(formatOptions(item.options)))"]
      }
    case .factOrOpinion:
      if item.options != factOrOpinionOptions {
        return ["factOrOpinion requires options [\"Fact\", \"Opinion\"] (found \(formatOptions(item.options)))"]
      }
    case .openEnded:
      if !item.options.isEmpty {
        return ["openEnded requires an empty options array"]
      }
    case .sequencing:
      if item.options.count < 3 {
        return ["sequencing requires at least 3 options (found \(item.options.count))"]
      }
    case .categoryCrossOut:
      if item.options.count != 4 {
        return ["categoryCrossOut requires exactly 4 options (found \(item.options.count))"]
      }
    case .sentenceCompletion, .homonym, .matching, .analogyChoice:
      break
    }

    return []
  }

  private static func validateSequencingAnswer(item: ExerciseItem) -> [String] {
    let steps = item.correctAnswer
      .split(separator: "|")
      .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
      .filter { !$0.isEmpty }

    guard !steps.isEmpty else {
      return ["sequencing correctAnswer must list ordered steps separated by \"|\""]
    }

    var issues: [String] = []
    for step in steps where !item.options.contains(step) {
      issues.append("sequencing step \"\(step)\" is not in options")
    }
    return issues
  }

  private static func formatOptions(_ options: [String]) -> String {
    options.map { "\"\($0)\"" }.joined(separator: ", ")
  }
}
