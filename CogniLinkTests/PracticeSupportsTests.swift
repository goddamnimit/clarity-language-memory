//
//  PracticeSupportsTests.swift
//  CogniLinkTests
//

import Foundation
import Testing
@testable import CogniLink

@Suite(.serialized)
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

// MARK: - F9 second reminder

extension PracticeSupportsTests {
  @MainActor
  @Test func secondReminderDefaultsOffAtTwoPM() {
    let d = UserDefaults.standard
    for key in [NotificationManager.secondEnabledKey, NotificationManager.secondHourKey, NotificationManager.secondMinuteKey] {
      d.removeObject(forKey: key)
    }
    let nm = NotificationManager.shared
    #expect(nm.secondReminderEnabled == false)
    #expect(nm.secondReminderHour == 14)
    #expect(nm.secondReminderMinute == 0)
  }
}

// MARK: - F4 number skills

extension PracticeSupportsTests {

  @Test func numberQuestionsAreWellFormedInEveryLanguage() {
    var rng = SplitMix64(seed: 42)
    for language in AppLanguage.allCases {
      let locale = Locale(identifier: language.localeIdentifier.replacingOccurrences(of: "_", with: "-"))
      for category in NumberCategory.allCases {
        for _ in 0..<25 {
          let q = NumberDrillGenerator.make(category, locale: locale, using: &rng)
          #expect(!q.text.isEmpty && !q.spoken.isEmpty, "\(language) \(category)")
          #expect(!q.digits.isEmpty, "\(language) \(category) \(q.text)")
          #expect(q.distractors.count == 3, "\(language) \(category) \(q.text)")
          #expect(!q.distractors.contains(q.text))
          #expect(Set(q.distractors).count == q.distractors.count)
          // The digits of the displayed answer (any numeral system) are what typing is checked against.
          if category != .phone { #expect(NumberDrillGenerator.asciiDigits(q.text) == q.digits) }
        }
      }
    }
  }

  @Test func asciiDigitsHandlesNonLatinNumerals() {
    #expect(NumberDrillGenerator.asciiDigits("٣:٤٥") == "345")
    #expect(NumberDrillGenerator.asciiDigits("१२:३०") == "1230")
    #expect(NumberDrillGenerator.asciiDigits("૧૨") == "12")
    #expect(NumberDrillGenerator.asciiDigits("$12.50") == "1250")
    #expect(NumberDrillGenerator.asciiDigits("３:４５") == "345")
    #expect(NumberDrillGenerator.asciiDigits("3:45 PM") == "345")
  }

  @Test func personalPhoneIsUsedAndFictionalOtherwise() {
    var rng = SplitMix64(seed: 7)
    let en = Locale(identifier: "en-US")
    let mine = NumberDrillGenerator.make(.phone, locale: en, personalPhone: "(415) 555-0123", using: &rng)
    #expect(mine.digits == "4155550123")
    #expect(mine.text == "(415) 555-0123")
    for _ in 0..<50 {
      let q = NumberDrillGenerator.make(.phone, locale: en, using: &rng)
      #expect(q.digits.count == 10)
      #expect(q.digits.dropFirst(3).hasPrefix("55501"), "fictional range: \(q.digits)")
    }
    // Invalid personal numbers fall back to the fictional generator.
    let bad = NumberDrillGenerator.make(.phone, locale: en, personalPhone: "12345", using: &rng)
    #expect(bad.digits.count == 10)
  }

  @Test func optionsAlwaysIncludeAnswerAndRespectCount() {
    var rng = SplitMix64(seed: 99)
    let q = NumberDrillGenerator.make(.price, locale: Locale(identifier: "en-US"), using: &rng)
    for n in [2, 3, 4] {
      let opts = NumberDrillGenerator.options(for: q, count: n, using: &rng)
      #expect(opts.count == n)
      #expect(opts.contains(q.text))
      #expect(Set(opts).count == n)
    }
  }

  @Test func timeUsesLocaleClock() {
    var rng = SplitMix64(seed: 5)
    let us = NumberDrillGenerator.make(.time, locale: Locale(identifier: "en-US"), using: &rng)
    let fr = NumberDrillGenerator.make(.time, locale: Locale(identifier: "fr-FR"), using: &rng)
    #expect(us.text.contains("AM") || us.text.contains("PM"))
    #expect(!fr.text.contains("AM") && !fr.text.contains("PM"))
  }
}

extension PracticeSupportsTests {
  @MainActor
  @Test func personalPhoneNeverReachesResearchExport() throws {
    NumberSkillsStore.personalPhone = "415 555 0123"
    defer { NumberSkillsStore.personalPhone = nil }
    let data = try #require(ResearchExportManager.generateExport())
    let text = String(decoding: data, as: UTF8.self)
    #expect(!text.contains("4155550123"))
    #expect(!text.contains("415 555 0123"))
    #expect(!text.contains("555"))
  }

  @Test func typedAnswersIgnoreLeadingZerosAndNumerals() {
    var rng = SplitMix64(seed: 11)
    let q = NumberDrillGenerator.make(.time, locale: Locale(identifier: "fr-FR"), using: &rng)
    let digits = q.digits
    #expect(NumberDrillGenerator.matches(typed: digits, answer: q))
    #expect(NumberDrillGenerator.matches(typed: String(digits.drop(while: { $0 == "0" })), answer: q))
    #expect(!NumberDrillGenerator.matches(typed: "", answer: q))
    #expect(!NumberDrillGenerator.matches(typed: "99999", answer: q))
  }
}

// MARK: - F5 spaced retrieval

extension PracticeSupportsTests {

  @Test func schedulerExpandsThroughAllIntervals() {
    var s = SpacedRetrievalScheduler()
    #expect(s.nextWaitSeconds == 0)
    var waits: [Int] = []
    var outcome = s.recordPass()
    while case .waitThenAsk(let seconds) = outcome {
      waits.append(seconds)
      outcome = s.recordPass()
    }
    #expect(waits == [30, 60, 120, 240, 480])
    #expect(outcome == .finished)
    #expect(s.bestPassedSeconds == 480)
    #expect(s.misses == 0)
  }

  @Test func missDropsBackToLastSuccessfulInterval() {
    var s = SpacedRetrievalScheduler()
    _ = s.recordPass()          // passed immediate -> next 30 s
    _ = s.recordPass()          // passed 30 s -> next 60 s
    #expect(s.nextWaitSeconds == 60)
    let afterMiss = s.recordMiss()
    #expect(afterMiss == .waitThenAsk(seconds: 30))  // last success = 30 s
    #expect(s.misses == 1)
    #expect(s.bestPassedSeconds == 30)
    // Recovering from the drop-back expands again.
    #expect(s.recordPass() == .waitThenAsk(seconds: 60))
  }

  @Test func missBeforeAnySuccessRetriesImmediately() {
    var s = SpacedRetrievalScheduler()
    #expect(s.recordMiss() == .waitThenAsk(seconds: 0))
    #expect(s.bestPassedSeconds == 0)
    #expect(s.misses == 1)
  }

  @Test func targetsAreCappedAndLogHoldsNoText() throws {
    let saved = SpacedRetrievalStore.targets
    defer { SpacedRetrievalStore.targets = saved }
    SpacedRetrievalStore.targets = (0..<5).map { MemoryTarget(question: "Q\($0)", answer: "SECRETANSWER\($0)") }
    #expect(SpacedRetrievalStore.targets.count == 3)
    #expect(SpacedRetrievalStore.usableTargets.count == 3)

    let id = try #require(SpacedRetrievalStore.targets.first?.id, "Keychain round-trip failed in the test host")
    SpacedRetrievalStore.append(SRTLogEntry(targetID: id, date: Date(), bestIntervalSeconds: 120, misses: 1, completed: false))
    let raw = UserDefaults.standard.data(forKey: "clarity_srt_log") ?? Data()
    let text = String(decoding: raw, as: UTF8.self)
    #expect(!text.contains("SECRETANSWER"))
    #expect(SpacedRetrievalStore.summary(for: id).bestSeconds >= 120)
  }

  @MainActor
  @Test func spacedRetrievalTargetsNeverReachResearchExport() throws {
    let saved = SpacedRetrievalStore.targets
    defer { SpacedRetrievalStore.targets = saved }
    SpacedRetrievalStore.targets = [MemoryTarget(question: "Where are keys kept?", answer: "ZEBRAHOOK")]
    let data = try #require(ResearchExportManager.generateExport())
    let text = String(decoding: data, as: UTF8.self)
    #expect(!text.contains("ZEBRAHOOK"))
    #expect(!text.contains("Where are keys kept?"))
  }
}

// MARK: - F6 visual scanning

extension PracticeSupportsTests {

  @Test func scanGridsHaveTwelveTargetsSpreadAcrossQuadrants() {
    var rng = SplitMix64(seed: 2026)
    for level in 1...3 {
      for _ in 0..<30 {
        let grid = ScanGridGenerator.make(level: level, using: &rng)
        #expect(grid.cells.count == ScanGridGenerator.columns * ScanGridGenerator.rows)
        #expect(grid.targetsInReadingOrder.count == 12)
        for q in ScanQuadrant.allCases {
          let n = grid.targetsInReadingOrder.filter { grid.quadrant(of: $0) == q }.count
          #expect(n >= 3, "quadrant \(q) has \(n)")
        }
        // Targets are exactly the target glyph; distractors never are.
        for cell in grid.cells {
          #expect((cell.glyph == grid.target) == cell.isTarget)
        }
      }
    }
  }

  @Test func readingOrderIsRowMajor() {
    var rng = SplitMix64(seed: 1)
    let grid = ScanGridGenerator.make(level: 1, using: &rng)
    #expect(grid.targetsInReadingOrder == grid.targetsInReadingOrder.sorted())
  }

  @Test func quadrantsCoverTheGridEvenly() {
    let g = ScanGrid(columns: 6, rows: 8, cells: [], target: .text("6"))
    #expect(g.quadrant(of: 0) == .topLeft)
    #expect(g.quadrant(of: 5) == .topRight)
    #expect(g.quadrant(of: 6 * 4) == .bottomLeft)
    #expect(g.quadrant(of: 6 * 8 - 1) == .bottomRight)
    let counts = Dictionary(grouping: 0..<48, by: { g.quadrant(of: $0) }).mapValues(\.count)
    #expect(counts.values.allSatisfy { $0 == 12 })
  }

  @Test func resultCountsFoundPerQuadrant() {
    var rng = SplitMix64(seed: 3)
    let grid = ScanGridGenerator.make(level: 1, using: &rng)
    let all = Set(grid.targetsInReadingOrder)
    let full = ScanResult.compute(grid: grid, foundIndexes: all, extraTaps: 2, seconds: 40)
    #expect(full.found == 12 && full.total == 12 && full.extraTaps == 2 && full.seconds == 40)
    // Miss everything on the left side: left quadrants show 0 found.
    let rightOnly = all.filter { [.topRight, .bottomRight].contains(grid.quadrant(of: $0)) }
    let partial = ScanResult.compute(grid: grid, foundIndexes: Set(rightOnly), extraTaps: 0, seconds: 10)
    #expect(partial.perQuadrant[.topLeft]?.found == 0)
    #expect(partial.perQuadrant[.bottomLeft]?.found == 0)
    #expect(partial.perQuadrant[.topRight]?.found == partial.perQuadrant[.topRight]?.total)
  }
}

// MARK: - F8 reading passages

extension PracticeSupportsTests {

  @Test func readingPassagesAreWellFormed() {
    var ids = Set<String>()
    for p in ReadingPassageData.all {
      #expect(ids.insert(p.id).inserted, "duplicate id \(p.id)")
      #expect((1...3).contains(p.level))
      #expect(p.sentences.count >= 4 && p.sentences.allSatisfy { !$0.trimmingCharacters(in: .whitespaces).isEmpty })
      #expect(p.questions.count >= 3)
      for q in p.questions {
        #expect(q.options.count == 3)
        #expect(Set(q.options).count == 3, "\(p.id): duplicate options")
        #expect(q.options.indices.contains(q.correctIndex))
        #expect(!q.evidence.isEmpty && q.evidence.allSatisfy { p.sentences.indices.contains($0) })
        #expect(!q.prompt.isEmpty)
      }
    }
    for level in 1...3 {
      #expect(ReadingPassageData.all.filter { $0.level == level }.count >= 3)
    }
  }

  @Test func readingFeatureHidesInEveryLanguageButEnglish() {
    for language in AppLanguage.allCases {
      #expect(ReadingPassage.isAvailable(for: language) == (language == .english))
    }
  }

  @Test func shuffledOptionsKeepExactlyOneCorrect() {
    for p in ReadingPassageData.all {
      for q in p.questions {
        let shuffled = ReadingPassageData.shuffledOptions(for: q)
        #expect(shuffled.count == 3)
        #expect(shuffled.filter(\.isCorrect).count == 1)
        #expect(shuffled.first(where: \.isCorrect)?.text == q.options[q.correctIndex])
      }
    }
  }
}

// MARK: - F7 conversation starters

extension PracticeSupportsTests {

  @Test func conversationTopicsAreComplete() {
    var ids = Set<String>()
    for t in ConversationTopicData.all {
      #expect(ids.insert(t.id).inserted)
      #expect(t.questions.count == ConversationKind.allCases.count)
      #expect(t.questions.allSatisfy { !$0.trimmingCharacters(in: .whitespaces).isEmpty })
      #expect(Set(t.questions).count == t.questions.count)
    }
    #expect(ConversationTopicData.all.count >= 10)
    #expect(ConversationKind.allCases.filter(\.isHarder).count == 4)
    #expect(ConversationKind.allCases.allSatisfy { !$0.targetBehavior.isEmpty })
    #expect(ConversationTopic.isAvailable(for: .english))
    #expect(!ConversationTopic.isAvailable(for: .spanish))
  }

  @Test func deckUsesRequestedKindsAndSpreadsTopics() {
    let easy = ConversationKind.allCases.filter { !$0.isHarder }
    let deck = ConversationStartersView.makeDeck(kinds: easy, count: 8)
    #expect(deck.count == 8)
    #expect(deck.allSatisfy { easy.contains($0.kind) })
    #expect(Set(deck.map(\.topic.id)).count == 8)
  }
}
