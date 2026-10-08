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
