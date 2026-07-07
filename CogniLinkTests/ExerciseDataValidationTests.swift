//
//  ExerciseDataValidationTests.swift
//  CogniLinkTests
//

import Testing
@testable import CogniLink

struct ExerciseDataValidationTests {

  @Test(arguments: ExerciseDataValidator.catalogs.map(\.name))
  func exerciseCatalogPassesValidation(sourceName: String) {
    guard let catalog = ExerciseDataValidator.catalogs.first(where: { $0.name == sourceName }) else {
      Issue.record("Unknown catalog: \(sourceName)")
      return
    }

    let issues = ExerciseDataValidator.validateCatalog(
      named: catalog.name,
      exercises: catalog.exercises()
    )

    #expect(
      issues.isEmpty,
      Comment(rawValue: "Found \(issues.count) validation issue(s) in \(sourceName):\n"
        + issues.map(\.description).joined(separator: "\n"))
    )
  }

  @Test func allCatalogsPassValidation() {
    let issues = ExerciseDataValidator.validateAllCatalogs()
    #expect(
      issues.isEmpty,
      Comment(rawValue: "Found \(issues.count) validation issue(s) across all catalogs:\n"
        + issues.prefix(50).map(\.description).joined(separator: "\n")
        + (issues.count > 50 ? "\n... and \(issues.count - 50) more" : ""))
    )
  }

  @Test func validatorDetectsInvalidMultipleChoiceOptions() {
    let item = ExerciseItem(
      prompt: "Test?",
      options: ["A", "B"],
      correctAnswer: "A"
    )
    let issues = ExerciseDataValidator.validate(item: item, exerciseType: .multipleChoice)
    #expect(issues.contains { $0.contains("exactly 4 options") })
  }

  @Test func validatorAllowsEmptyCorrectAnswerForOpenEnded() {
    let item = ExerciseItem(
      prompt: "Tell me about your day.",
      options: [],
      correctAnswer: ""
    )
    let issues = ExerciseDataValidator.validate(item: item, exerciseType: .openEnded)
    #expect(issues.isEmpty)
  }
}
