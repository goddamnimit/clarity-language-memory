//
//  PracticeSupportsTests.swift
//  CogniLinkTests
//

import Foundation
import Testing
@testable import CogniLink

struct PracticeSupportsTests {

  // MARK: - F1 Today card

  @Test func partOfDayBoundaries() {
    var cal = Calendar(identifier: .gregorian)
    cal.timeZone = TimeZone(identifier: "UTC")!
    func part(_ hour: Int) -> OrientationCardView.PartOfDay {
      let d = cal.date(from: DateComponents(year: 2026, month: 10, day: 8, hour: hour))!
      return OrientationCardView.partOfDay(for: d, calendar: cal)
    }
    #expect(part(4) == .night)
    #expect(part(5) == .morning)
    #expect(part(11) == .morning)
    #expect(part(12) == .afternoon)
    #expect(part(16) == .afternoon)
    #expect(part(17) == .evening)
    #expect(part(20) == .evening)
    #expect(part(21) == .night)
  }

  @Test func dateFormattingUsesGregorianInEveryLanguage() {
    let date = Date(timeIntervalSince1970: 1_791_000_000) // Oct 2026
    for language in AppLanguage.allCases {
      let locale = Locale(identifier: language.localeIdentifier.replacingOccurrences(of: "_", with: "-"))
      let text = OrientationCardView.format(date, template: "yMMMMd", locale: locale)
      #expect(!text.isEmpty, "empty date for \(language)")
    }
  }
}

// MARK: - F2 answer-choice count

extension PracticeSupportsTests {

  private func item(_ options: [String], answer: String) -> ExerciseItem {
    ExerciseItem(prompt: "Q?", options: options, correctAnswer: answer, explanation: "e")
  }

  @Test func reduceAlwaysKeepsCorrectAnswerAndRequestedCount() {
    let base = item(["a", "b", "c", "d"], answer: "c")
    for n in [2, 3] {
      let out = ChoiceCountFilter.reduce(base, type: .multipleChoice, to: n)
      #expect(out.options.count == n)
      #expect(out.options.contains("c"))
      #expect(out.correctAnswer == "c")
      #expect(Set(out.options).isSubset(of: Set(base.options)))
    }
    #expect(ChoiceCountFilter.reduce(base, type: .multipleChoice, to: 4).options == base.options)
  }

  @Test func reduceIsDeterministic() {
    let base = item(["w", "x", "y", "z"], answer: "x")
    let first = ChoiceCountFilter.reduce(base, type: .sentenceCompletion, to: 2)
    for _ in 0..<20 {
      #expect(ChoiceCountFilter.reduce(base, type: .sentenceCompletion, to: 2).options == first.options)
    }
  }

  @Test func excludedTypesAreUntouched() {
    let base = item(["a", "b", "c", "d"], answer: "a")
    for type in [ExerciseType.yesNo, .factOrOpinion, .comparison, .sequencing, .openEnded, .homonym, .minimalPairs, .matching] {
      #expect(ChoiceCountFilter.reduce(base, type: type, to: 2).options == base.options)
    }
    let yn = ExerciseItem(prompt: "Q", options: ["Yes", "No"], correctAnswer: "Yes", explanation: "")
    #expect(ChoiceCountFilter.reduce(yn, type: .yesNo, to: 2).options == ["Yes", "No"])
  }

  @Test func crossOutNeverGoesBelowThreeOptions() {
    let base = item(["cat", "dog", "bird", "car"], answer: "car")
    let out = ChoiceCountFilter.reduce(base, type: .categoryCrossOut, to: 2)
    #expect(out.options.count == 3)
    #expect(out.options.contains("car"))
  }

  @Test func reducedEverywhereInCatalogsKeepsAnswerAnswerable() {
    // Applies the filter to every bundled item of the affected types.
    for catalog in ExerciseDataValidator.catalogs {
      for exercise in catalog.exercises() where ChoiceCountFilter.appliesTo(exercise.type) {
        for original in exercise.items {
          let out = ChoiceCountFilter.reduce(original, type: exercise.type, to: 2)
          if original.options.contains(original.correctAnswer) {
            #expect(out.options.contains(original.correctAnswer))
          }
          #expect(out.options.count >= min(original.options.count, ChoiceCountFilter.minimumCount(for: exercise.type)))
        }
      }
    }
  }
}
