//
//  AnswerLabelsTests.swift
//  CogniLinkTests
//
//  Yes/No and Fact/Opinion labels are display-only: stored values never change.
//

import Testing
@testable import CogniLink

struct AnswerLabelsTests {

  @Test func storedValuesAreTheEnglishConstants() {
    #expect(AnswerLabels.yes == "Yes" && AnswerLabels.no == "No")
    #expect(AnswerLabels.fact == "Fact" && AnswerLabels.opinion == "Opinion")
  }

  @Test func germanAndItalianLabels() {
    #expect(AnswerLabels.yesNo("Yes", in: .german) == "Ja")
    #expect(AnswerLabels.yesNo("No", in: .german) == "Nein")
    #expect(AnswerLabels.yesNo("Yes", in: .italian) == "Sì")
    #expect(AnswerLabels.yesNo("No", in: .italian) == "No")
    #expect(AnswerLabels.factOrOpinion("Fact", in: .german) == "Tatsache")
    #expect(AnswerLabels.factOrOpinion("Opinion", in: .german) == "Meinung")
    #expect(AnswerLabels.factOrOpinion("Fact", in: .italian) == "Fatto")
    #expect(AnswerLabels.factOrOpinion("Opinion", in: .italian) == "Opinione")
  }

  @Test func englishAndUnlocalizedLanguagesKeepTheirExistingLabels() {
    #expect(AnswerLabels.yesNo("Yes", in: .english) == "Yes")
    #expect(AnswerLabels.yesNo("No", in: .english) == "No")
    #if !os(tvOS)
    #expect(AnswerLabels.yesNo("Yes", in: .spanish) == "Sí")          // iOS legacy label, unchanged
    #expect(AnswerLabels.yesNo("Yes", in: .hindi) == "Sí")
    #endif
    for language in AppLanguage.allCases where !AnswerLabels.localizedLanguages.contains(language) {
      #expect(AnswerLabels.factOrOpinion("Fact", in: language) == "Fact", "\(language)")
      #expect(AnswerLabels.factOrOpinion("Opinion", in: language) == "Opinion", "\(language)")
    }
  }

  @Test func labelsAreDistinctPerLanguageSoButtonsCannotCollide() {
    for language in AppLanguage.allCases {
      #expect(AnswerLabels.yesNo("Yes", in: language) != AnswerLabels.yesNo("No", in: language), "\(language)")
      #expect(AnswerLabels.factOrOpinion("Fact", in: language) != AnswerLabels.factOrOpinion("Opinion", in: language), "\(language)")
    }
  }
}
