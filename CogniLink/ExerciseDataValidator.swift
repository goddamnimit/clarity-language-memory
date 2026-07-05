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

  /// All bundled exercise catalogs (54 data files).
  static let catalogs: [(name: String, exercises: () -> [Exercise])] = [
    // English (original)
    ("LanguageExerciseData", { LanguageExerciseData.allExercises }),
    ("CognitionExerciseData", { CognitionExerciseData.allExercises }),
    ("FunctionalSkillsExerciseData", { FunctionalSkillsExerciseData.allExercises }),
    ("EnglishNewExercisesData", { EnglishNewExercisesData.allExercises }),
    ("EnglishNewExercisesData2", { EnglishNewExercisesData2.allExercises }),
    ("EnglishHardExercisesData", { EnglishHardExercisesData.allExercises }),
    ("EnglishMinimalPairsData", { EnglishMinimalPairsData.allExercises }),
    // Spanish
    ("SpanishLanguageExerciseData", { SpanishLanguageExerciseData.allExercises }),
    ("SpanishCognitionExerciseData", { SpanishCognitionExerciseData.allExercises }),
    ("SpanishFunctionalSkillsExerciseData", { SpanishFunctionalSkillsExerciseData.allExercises }),
    ("SpanishNewExercisesData", { SpanishNewExercisesData.allExercises }),
    ("SpanishHardExercisesData", { SpanishHardExercisesData.allExercises }),
    // Hindi
    ("HindiLanguageExerciseData", { HindiLanguageExerciseData.allExercises }),
    ("HindiCognitionExerciseData", { HindiCognitionExerciseData.allExercises }),
    ("HindiFunctionalSkillsExerciseData", { HindiFunctionalSkillsExerciseData.allExercises }),
    ("HindiNewExercisesData", { HindiNewExercisesData.allExercises }),
    ("HindiHardExercisesData", { HindiHardExercisesData.allExercises }),
    // Gujarati
    ("GujaratiLanguageExerciseData", { GujaratiLanguageExerciseData.allExercises }),
    ("GujaratiCognitionExerciseData", { GujaratiCognitionExerciseData.allExercises }),
    ("GujaratiFunctionalSkillsExerciseData", { GujaratiFunctionalSkillsExerciseData.allExercises }),
    ("GujaratiNewExercisesData", { GujaratiNewExercisesData.allExercises }),
    ("GujaratiHardExercisesData", { GujaratiHardExercisesData.allExercises }),
    // Chinese
    ("ChineseLanguageExerciseData", { ChineseLanguageExerciseData.allExercises }),
    ("ChineseCognitionExerciseData", { ChineseCognitionExerciseData.allExercises }),
    ("ChineseFunctionalSkillsExerciseData", { ChineseFunctionalSkillsExerciseData.allExercises }),
    ("ChineseNewExercisesData", { ChineseNewExercisesData.allExercises }),
    ("ChineseHardExercisesData", { ChineseHardExercisesData.allExercises }),
    // Farsi
    ("FarsiLanguageExerciseData", { FarsiLanguageExerciseData.allExercises }),
    ("FarsiCognitionExerciseData", { FarsiCognitionExerciseData.allExercises }),
    ("FarsiFunctionalSkillsExerciseData", { FarsiFunctionalSkillsExerciseData.allExercises }),
    ("FarsiNewExercisesData", { FarsiNewExercisesData.allExercises }),
    ("FarsiHardExercisesData", { FarsiHardExercisesData.allExercises }),
    // Korean
    ("KoreanLanguageExerciseData", { KoreanLanguageExerciseData.allExercises }),
    ("KoreanCognitionExerciseData", { KoreanCognitionExerciseData.allExercises }),
    ("KoreanFunctionalSkillsExerciseData", { KoreanFunctionalSkillsExerciseData.allExercises }),
    ("KoreanNewExercisesData", { KoreanNewExercisesData.allExercises }),
    ("KoreanHardExercisesData", { KoreanHardExercisesData.allExercises }),
    // Vietnamese
    ("VietnameseLanguageExerciseData", { VietnameseLanguageExerciseData.allExercises }),
    ("VietnameseCognitionExerciseData", { VietnameseCognitionExerciseData.allExercises }),
    ("VietnameseFunctionalSkillsExerciseData", { VietnameseFunctionalSkillsExerciseData.allExercises }),
    ("VietnameseNewExercisesData", { VietnameseNewExercisesData.allExercises }),
    ("VietnameseHardExercisesData", { VietnameseHardExercisesData.allExercises }),
    // Arabic
    ("ArabicLanguageExerciseData", { ArabicLanguageExerciseData.allExercises }),
    ("ArabicCognitionExerciseData", { ArabicCognitionExerciseData.allExercises }),
    ("ArabicFunctionalSkillsExerciseData", { ArabicFunctionalSkillsExerciseData.allExercises }),
    ("ArabicNewExercisesData", { ArabicNewExercisesData.allExercises }),
    ("ArabicHardExercisesData", { ArabicHardExercisesData.allExercises }),
    // Portuguese
    ("PortugueseLanguageExerciseData", { PortugueseLanguageExerciseData.allExercises }),
    ("PortugueseCognitionExerciseData", { PortugueseCognitionExerciseData.allExercises }),
    ("PortugueseFunctionalSkillsExerciseData", { PortugueseFunctionalSkillsExerciseData.allExercises }),
    ("PortugueseNewExercisesData", { PortugueseNewExercisesData.allExercises }),
    ("PortugueseHardExercisesData", { PortugueseHardExercisesData.allExercises }),
    // Tagalog
    ("TagalogLanguageExerciseData", { TagalogLanguageExerciseData.allExercises }),
    ("TagalogCognitionExerciseData", { TagalogCognitionExerciseData.allExercises }),
    ("TagalogFunctionalSkillsExerciseData", { TagalogFunctionalSkillsExerciseData.allExercises }),
    ("TagalogNewExercisesData", { TagalogNewExercisesData.allExercises }),
    ("TagalogHardExercisesData", { TagalogHardExercisesData.allExercises }),
    // Punjabi
    ("PunjabiLanguageExerciseData", { PunjabiLanguageExerciseData.allExercises }),
    ("PunjabiCognitionExerciseData", { PunjabiCognitionExerciseData.allExercises }),
    ("PunjabiFunctionalSkillsExerciseData", { PunjabiFunctionalSkillsExerciseData.allExercises }),
    ("PunjabiNewExercisesData", { PunjabiNewExercisesData.allExercises }),
    ("PunjabiHardExercisesData", { PunjabiHardExercisesData.allExercises }),
    // Armenian
    ("ArmenianLanguageExerciseData", { ArmenianLanguageExerciseData.allExercises }),
    ("ArmenianCognitionExerciseData", { ArmenianCognitionExerciseData.allExercises }),
    ("ArmenianFunctionalSkillsExerciseData", { ArmenianFunctionalSkillsExerciseData.allExercises }),
    ("ArmenianNewExercisesData", { ArmenianNewExercisesData.allExercises }),
    ("ArmenianHardExercisesData", { ArmenianHardExercisesData.allExercises }),
    // Japanese
    ("JapaneseLanguageExerciseData", { JapaneseLanguageExerciseData.allExercises }),
    ("JapaneseCognitionExerciseData", { JapaneseCognitionExerciseData.allExercises }),
    ("JapaneseFunctionalSkillsExerciseData", { JapaneseFunctionalSkillsExerciseData.allExercises }),
    ("JapaneseNewExercisesData", { JapaneseNewExercisesData.allExercises }),
    ("JapaneseHardExercisesData", { JapaneseHardExercisesData.allExercises }),
    // French
    ("FrenchLanguageExerciseData", { FrenchLanguageExerciseData.allExercises }),
    ("FrenchCognitionExerciseData", { FrenchCognitionExerciseData.allExercises }),
    ("FrenchFunctionalSkillsExerciseData", { FrenchFunctionalSkillsExerciseData.allExercises }),
    ("FrenchNewExercisesData", { FrenchNewExercisesData.allExercises }),
    ("FrenchHardExercisesData", { FrenchHardExercisesData.allExercises }),
    // Amharic
    ("AmharicLanguageExerciseData", { AmharicLanguageExerciseData.allExercises }),
    ("AmharicCognitionExerciseData", { AmharicCognitionExerciseData.allExercises }),
    ("AmharicFunctionalSkillsExerciseData", { AmharicFunctionalSkillsExerciseData.allExercises }),
    ("AmharicNewExercisesData", { AmharicNewExercisesData.allExercises }),
    ("AmharicHardExercisesData", { AmharicHardExercisesData.allExercises })
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
    case .comparison:
      if item.options.count != 2 {
        return ["comparison requires exactly 2 options (found \(item.options.count))"]
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
    case .minimalPairs:
      if item.options.count != 4 {
        return ["minimalPairs requires exactly 4 options (found \(item.options.count))"]
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
