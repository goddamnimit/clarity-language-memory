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

// MARK: - F3 cueing ladder

extension PracticeSupportsTests {

  @Test func firstLetterCueHandlesScripts() {
    #expect(CueLadder.firstLetterCue(for: "umbrella") == "U")
    #expect(CueLadder.firstLetterCue(for: "  éclair") == "É")
    #expect(CueLadder.firstLetterCue(for: "ماء") == "م")
    #expect(CueLadder.firstLetterCue(for: "पानी") == "पा")  // grapheme cluster (aksara)
    #expect(CueLadder.firstLetterCue(for: "水") == "水")
    #expect(CueLadder.firstLetterCue(for: "42") == nil)
    #expect(CueLadder.firstLetterCue(for: "$6.50") == nil)
    #expect(CueLadder.firstLetterCue(for: "") == nil)
  }

  @Test func ladderSkipsLetterHintWhenNoLetter() {
    #expect(CueLadder.nextLevel(after: 0, answer: "cat") == 1)
    #expect(CueLadder.nextLevel(after: 1, answer: "cat") == 2)
    #expect(CueLadder.nextLevel(after: 1, answer: "42") == 3)
    #expect(CueLadder.nextLevel(after: 2, answer: "cat") == 3)
    #expect(CueLadder.nextLevel(after: 3, answer: "cat") == nil)
  }

  @Test func eligibilityIsWordFindingOnly() {
    func ex(_ type: ExerciseType, _ tracked: TrackedExerciseType?) -> Exercise {
      Exercise(title: "t", instructions: "i", section: .language, type: type, trackedType: tracked, difficulty: .easy, items: [])
    }
    #expect(CueLadder.isEligible(ex(.sentenceCompletion, nil)))
    #expect(CueLadder.isEligible(ex(.multipleChoice, .completeTheSaying)))
    #expect(CueLadder.isEligible(ex(.multipleChoice, .wordAssociation)))
    #expect(!CueLadder.isEligible(ex(.multipleChoice, nil)))
    #expect(!CueLadder.isEligible(ex(.yesNo, nil)))
    #expect(!CueLadder.isEligible(ex(.sequencing, .sequencing)))
    #expect(!CueLadder.isEligible(ex(.multipleChoice, .causeAndEffect)))
  }

  @Test func catalogsContainEligibleExercises() {
    let count = ExerciseDataValidator.catalogs.reduce(0) { acc, c in
      acc + c.exercises().filter { CueLadder.isEligible($0) }.count
    }
    #expect(count > 0)
  }
}

extension PracticeSupportsTests {
  @Test func meaningCueMasksAnswerOrFallsBackToCategory() {
    let masked = ExerciseItem(prompt: "She locked the ___.", options: ["door", "more", "core"],
                              correctAnswer: "door", explanation: "A door can be locked for safety.")
    let cue = CueLadder.meaningCue(for: masked, fallbackCategory: "Sentence Completion (Easy)")
    #expect(cue == "A … can be locked for safety.")
    #expect(!cue.lowercased().contains("door"))

    let noExplanation = ExerciseItem(prompt: "p", options: ["a", "b"], correctAnswer: "door", explanation: "")
    #expect(CueLadder.meaningCue(for: noExplanation, fallbackCategory: "Sentence Completion (Easy)") == "Sentence Completion")

    let shortAnswer = ExerciseItem(prompt: "p", options: ["a", "b"], correctAnswer: "on", explanation: "Use on for surfaces.")
    #expect(CueLadder.meaningCue(for: shortAnswer, fallbackCategory: "Prepositions") == "Prepositions")
  }

  @Test func stripQualifierHandlesBothParenStyles() {
    #expect(CueLadder.stripQualifier("Synonyms (Hard)") == "Synonyms")
    #expect(CueLadder.stripQualifier("文の完成（やさしい）") == "文の完成")
    #expect(CueLadder.stripQualifier("(Only)") == "(Only)")
  }

  @Test func meaningCueNeverLeaksAnswerAcrossCatalogs() {
    for catalog in ExerciseDataValidator.catalogs {
      for exercise in catalog.exercises() where CueLadder.isEligible(exercise) {
        for item in exercise.items {
          let cue = CueLadder.meaningCue(for: item, fallbackCategory: exercise.title)
          let answer = item.correctAnswer.trimmingCharacters(in: .whitespacesAndNewlines)
          if answer.count >= 3 && cue != CueLadder.stripQualifier(exercise.title) {
            #expect(cue.range(of: answer, options: [.caseInsensitive, .diacriticInsensitive]) == nil)
          }
        }
      }
    }
  }
}
