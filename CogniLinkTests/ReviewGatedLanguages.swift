//
//  ReviewGatedLanguages.swift
//  CogniLinkTests
//
//  The languages shipped with a native-review gate. ReviewGateTests runs every gate test
//  once per entry. Add an entry when a language gets a gate; nothing else changes.
//

import Foundation
import Testing
@testable import CogniLink

struct GatedLanguage: CustomTestStringConvertible {
  let language: AppLanguage
  /// Every authored group, including held ones (raw, ungated data).
  let rawCatalog: () -> [Exercise]
  /// Auto-detection tags that must resolve to this language when it is visible.
  let detectionTags: [String]
  let expectedHeldKeys: Set<String>
  let expectedHeldItemCount: Int
  let hiddenConstant: Bool
  let heldReleasedConstant: Bool
  let reviewStatus: ReviewStatus
  var testDescription: String { "\(language)" }
}

enum ReviewGatedLanguages {
  static let heldKeys: Set<String> = ["safetyScenarios", "timeAndMath", "readingPrescription", "readingMenu",
                                      "understandingBills", "phoneAndEmergencyInfo", "whatWouldYouDo", "signsAndLabels"]

  static let all: [GatedLanguage] = [
    GatedLanguage(
      language: .german,
      rawCatalog: {
        GermanLanguageExerciseData.allExercises + GermanCognitionExerciseData.allExercises
          + GermanFunctionalSkillsExerciseData.allExercises + GermanNewExercisesData.allExercises
          + GermanHardExercisesData.allExercises
      },
      detectionTags: ["de", "de-DE", "de-AT", "de-CH", "DE-de"],
      expectedHeldKeys: heldKeys, expectedHeldItemCount: 150,
      hiddenConstant: LanguageReviewStatus.germanHidden,
      heldReleasedConstant: LanguageReviewStatus.germanHeldGroupsReleased,
      reviewStatus: LanguageReviewStatus.german)
  ]
}
