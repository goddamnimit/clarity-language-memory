//
//  ExerciseStringsTests.swift
//  CogniLinkTests
//
//  The exercise-screen strings (XS) must exist for every language and must not leak the old
//  hard-coded English into the German and Italian UI.
//

import Foundation
import Testing
@testable import CogniLink

struct ExerciseStringsTests {

  @Test func everyEntryIsNonEmptyInEveryLanguage() {
    #expect(XS.allEntries.count >= 44)
    for (name, entry) in XS.allEntries {
      for language in AppLanguage.allCases {
        let text = entry.text(in: language).trimmingCharacters(in: .whitespacesAndNewlines)
        #expect(!text.isEmpty, "\(name) is empty in \(language)")
      }
    }
  }

  @Test func germanAndItalianContainNoEnglishWordsFromTheOldLiterals() {
    // Words that are also valid German/Italian, the product name, and the linguistic term
    // "Homonym" (identical in German) and "App" (the standard German/Italian term) are not leaks.
    let allowed: Set<String> = ["a", "in", "or", "no", "to", "the", "your", "clarity", "homonym", "app"]
    for (name, entry) in XS.allEntries {
      let english = entry.text(in: .english)
      let englishWords = Set(Self.words(english)).subtracting(allowed)
      for language in [AppLanguage.german, .italian] {
        let localized = Set(Self.words(entry.text(in: language)))
        let leaked = englishWords.intersection(localized)
        #expect(leaked.isEmpty, "\(name) in \(language) still contains English \(leaked)")
      }
    }
  }

  @Test func nonEnglishLanguagesDifferFromEnglishForEveryUserFacingString() {
    // Homonym/Minimal Pairs/Tagalog loanwords legitimately match in a few languages; the
    // reviewed-in-full languages must never fall back to the English source.
    for (name, entry) in XS.allEntries where !name.hasPrefix("type.") {
      for language in [AppLanguage.german, .italian, .spanish, .french, .portuguese] {
        #expect(entry.text(in: language) != entry.text(in: .english), "\(name) is English in \(language)")
      }
    }
  }

  @Test func scoreAndPluralStringsFillTheirPlaceholders() {
    for language in AppLanguage.allCases {
      #expect(XS.scoreFormat.text(in: language).contains("{n}") && XS.scoreFormat.text(in: language).contains("{m}"), "\(language)")
    }
    let saved = LanguageManager.shared.currentLanguage
    defer { LanguageManager.shared.currentLanguage = saved }
    LanguageManager.shared.currentLanguage = .german
    #expect(XS.score(3, of: 10) == "Punkte: 3/10")
    #expect(XS.daysInARow(1) == "Tag in Folge")
    #expect(XS.daysInARow(5) == "Tage in Folge")
    #expect(XS.personalBestDays(1) == "Persönlicher Bestwert: 1 Tag")
    #expect(XS.personalBestDays(7) == "Persönlicher Bestwert: 7 Tage")
    LanguageManager.shared.currentLanguage = .italian
    #expect(XS.daysInARow(1) == "giorno consecutivo")
    #expect(XS.personalBestDays(1) == "Record personale: 1 giorno")
    #expect(XS.personalBestDays(2) == "Record personale: 2 giorni")
    LanguageManager.shared.currentLanguage = .english
    #expect(XS.personalBestDays(1) == "Personal Best: 1 day")
    #expect(!XS.personalBestDays(2).contains("{n}"))
  }

  private static func words(_ s: String) -> [String] {
    s.replacingOccurrences(of: "{n}", with: " ").replacingOccurrences(of: "{m}", with: " ")
      .lowercased().components(separatedBy: CharacterSet.letters.inverted).filter { !$0.isEmpty }
  }
}
