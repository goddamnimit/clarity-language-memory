//
//  ReviewGateTests.swift
//  CogniLinkTests
//
//  Release gates for languages shipped with a native-review hold (see ReviewGatedLanguages):
//  1. held groups never reach any user-facing path while the release constant is false,
//  2. a hidden language is absent from the picker and from system-language auto-detection,
//  3. nothing outside the gate enumerates raw exercise catalogs (leak guard),
//  4. flag records carry a stable item key.
//

import Foundation
import Testing
@testable import CogniLink

@MainActor
@Suite(.serialized)
struct ReviewGateTests {

  private func withLanguage<T>(_ language: AppLanguage, _ body: () -> T) -> T {
    let manager = LanguageManager.shared
    let saved = manager.currentLanguage
    manager.currentLanguage = language
    defer { manager.currentLanguage = saved }
    return body()
  }

  private func held(_ g: GatedLanguage) -> [Exercise] { g.rawCatalog().filter(\.isHeldForReview) }

  // MARK: - The held set is exactly what was agreed

  @Test(arguments: ReviewGatedLanguages.all)
  func heldGroupsAreTheAgreedEight(_ g: GatedLanguage) {
    let groups = held(g)
    #expect(Set(groups.map(\.groupKey)) == g.expectedHeldKeys)
    #expect(groups.count == g.expectedHeldKeys.count)
    #expect(groups.reduce(0) { $0 + $1.items.count } == g.expectedHeldItemCount)
    #expect(groups.allSatisfy { $0.trackedType == nil }, "held groups must not carry an adaptive-tracked type")
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func everyGroupHasAStableUniqueGroupKey(_ g: GatedLanguage) {
    let all = g.rawCatalog()
    #expect(all.allSatisfy { !$0.groupKey.isEmpty })
    #expect(Set(all.map(\.groupKey)).count == all.count)
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func shipsPendingReviewWithHeldGroupsUnreleased(_ g: GatedLanguage) {
    #expect(g.reviewStatus == .pendingNativeReview)
    #expect(g.heldReleasedConstant == false)
    #expect(LanguageReviewStatus.heldGroupsReleased(for: g.language) == false)
  }

  // MARK: - 1. Held groups are absent everywhere while the release constant is false

  @Test(arguments: ReviewGatedLanguages.all)
  func heldGroupsAbsentFromAllExercises(_ g: GatedLanguage) {
    let heldTitles = Set(held(g).map(\.title))
    let visible = LanguageManager.shared.allExercises[g.language] ?? []
    #expect(!visible.isEmpty)
    #expect(visible.allSatisfy { !$0.isHeldForReview && !heldTitles.contains($0.title) })
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func heldGroupsAbsentFromExercisesForSection(_ g: GatedLanguage) {
    let heldTitles = Set(held(g).map(\.title))
    withLanguage(g.language) {
      for section in [AppSection.language, .cognition, .functionalSkills] {
        let list = LanguageManager.shared.exercisesForSection(section)
        #expect(list.allSatisfy { !$0.isHeldForReview && !heldTitles.contains($0.title) }, "section \(section)")
      }
    }
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func heldGroupsAbsentFromPracticePoolWidgetAndRecommendations(_ g: GatedLanguage) {
    // practicePool() is the pool WidgetSnapshotWriter.refresh() and the baseline assessment draw from.
    let heldTitles = Set(held(g).map(\.title))
    withLanguage(g.language) {
      let pool = LanguageManager.shared.practicePool()
      #expect(!pool.isEmpty)
      #expect(pool.allSatisfy { !heldTitles.contains($0.title) })
      let recs = RecommendationEngine.generateRecommendations(language: g.language, exercises: pool)
      #expect(recs.allSatisfy { !heldTitles.contains($0.targetExerciseTitle ?? "") })
    }
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func heldItemsAbsentFromBaselineSampling(_ g: GatedLanguage) {
    // Held groups are untracked, so baseline never samples them either way; this guards the day
    // someone adds a tracked held group.
    let heldIDs = Set(held(g).flatMap(\.items).map(\.id))
    let heldTitles = Set(held(g).map(\.title))
    withLanguage(g.language) {
      let questions = BaselineAssessmentEngine.buildAssessment(from: LanguageManager.shared.practicePool())
      #expect(!questions.isEmpty)
      #expect(questions.allSatisfy { !heldIDs.contains($0.item.id) && !heldTitles.contains($0.exerciseTitle) })
    }
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func heldTitlesAreDroppedFromResearchExport(_ g: GatedLanguage) throws {
    let defaults = UserDefaults.standard
    let playsKey = "CogniLink_ExercisePlays"
    let doneKey = "CogniLink_CompletedExercises"
    let savedPlays = defaults.object(forKey: playsKey)
    let savedDone = defaults.object(forKey: doneKey)
    defer {
      if let savedPlays { defaults.set(savedPlays, forKey: playsKey) } else { defaults.removeObject(forKey: playsKey) }
      if let savedDone { defaults.set(savedDone, forKey: doneKey) } else { defaults.removeObject(forKey: doneKey) }
    }
    let heldTitle = try #require(held(g).first?.title)
    let visibleTitle = try #require((LanguageManager.shared.allExercises[g.language] ?? []).first?.title)
    defaults.set([heldTitle: 3, visibleTitle: 2], forKey: playsKey)
    ProgressTracker.resetAllProgress()
    ProgressTracker.markAsCompleted(exerciseTitle: heldTitle)
    ProgressTracker.markAsCompleted(exerciseTitle: visibleTitle)

    let data = try #require(ResearchExportManager.generateExport())
    let json = try #require(try JSONSerialization.jsonObject(with: data) as? [String: Any])
    let activity = try #require(json["exerciseActivity"] as? [String: Any])
    let completed = try #require(activity["exercisesEverCompleted"] as? [String])
    let plays = try #require(activity["playCountByExercise"] as? [String: Int])
    #expect(!completed.contains(heldTitle))
    #expect(!plays.keys.contains(heldTitle))
    #expect(completed.contains(visibleTitle))
    #expect(plays[visibleTitle] == 2)
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func gateOpensOnlyWhenReleased(_ g: GatedLanguage) throws {
    let heldGroup = try #require(held(g).first)
    #expect(!LanguageManager.passesGate(heldGroup, heldReleased: false))
    #expect(LanguageManager.passesGate(heldGroup, heldReleased: true))
    let normal = try #require(g.rawCatalog().first { !$0.isHeldForReview })
    #expect(LanguageManager.passesGate(normal, heldReleased: false))
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func heldGroupsStayInRawCatalogsSoTheValidatorStillChecksThem(_ g: GatedLanguage) {
    let prefix = "\(g.language)".prefix(1).uppercased() + "\(g.language)".dropFirst()
    let validated = ExerciseDataValidator.catalogs.filter { $0.name.hasPrefix(prefix) }.flatMap { $0.exercises() }
    #expect(validated.filter(\.isHeldForReview).count == g.expectedHeldKeys.count)
  }

  @Test func ungatedLanguagesHaveNothingHeld() {
    let gated = Set(ReviewGatedLanguages.all.map(\.language))
    for (language, list) in LanguageManager.shared.allExercises where !gated.contains(language) {
      #expect(list.allSatisfy { !$0.isHeldForReview }, "\(language)")
    }
  }

  // MARK: - 2. A hidden language is absent from the picker and from auto-detect

  @Test(arguments: ReviewGatedLanguages.all)
  func visibleByDefaultAndAutoDetected(_ g: GatedLanguage) {
    #expect(g.hiddenConstant == false)
    #expect(AppLanguage.visibleCases.contains(g.language) == !g.language.isPreview)
    #expect(!g.language.isPreview)
    for tag in g.detectionTags {
      #expect(AppLanguage.detect(preferred: [tag]) == g.language, "\(tag)")
    }
  }

  @Test(arguments: ReviewGatedLanguages.all)
  func hiddenLanguageIsAbsentFromPickerAndAutoDetect(_ g: GatedLanguage) {
    let hide: (AppLanguage) -> Bool = { $0 == g.language || $0.isPreview }
    #expect(!AppLanguage.visible(isHidden: hide).contains(g.language))
    #expect(AppLanguage.visible(isHidden: hide).count == AppLanguage.visibleCases.count - 1)
    for tag in g.detectionTags {
      #expect(AppLanguage.detect(preferred: [tag], isHidden: hide) == .english, "\(tag)")
    }
    #expect(AppLanguage.detect(preferred: ["fr-FR"], isHidden: hide) == .french)
  }

  @Test func previewLanguagesAreNeverAutoDetected() {
    #expect(AppLanguage.detect(preferred: ["ru-RU"]) == .english)
    #expect(AppLanguage.detect(preferred: ["uk-UA"]) == .english)
  }

  @Test func pickerAndPreviewFlagAgree() {
    for language in AppLanguage.allCases {
      #expect(AppLanguage.visibleCases.contains(language) == !language.isPreview)
    }
  }

  // MARK: - 3. Leak guard: nothing outside the gate enumerates raw catalogs

  @Test func noSourceFileEnumeratesRawCatalogsOutsideTheGate() throws {
    let root = URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent()
    let dirs = ["CogniLink", "ClarityTV", "ClarityWidget"].map { root.appendingPathComponent($0) }
    let allowed: Set<String> = ["AppLanguage.swift", "ExerciseDataValidator.swift", "BadgeManager.swift"]
    let catalogRef = try NSRegularExpression(
      pattern: #"\b[A-Z][A-Za-z]*(Language|Cognition|FunctionalSkills|NewExercises|HardExercises|MinimalPairs)[A-Za-z0-9]*Data\.allExercises\b"#)
    var offenders: [String] = []
    var scanned = 0
    for dir in dirs {
      guard let files = FileManager.default.enumerator(at: dir, includingPropertiesForKeys: nil) else { continue }
      for case let url as URL in files where url.pathExtension == "swift" {
        let name = url.lastPathComponent
        // data files define `allExercises`; they do not read other catalogs
        if name.hasSuffix("Data.swift") || name.hasSuffix("Data2.swift") || allowed.contains(name) { continue }
        let text = try String(contentsOf: url, encoding: .utf8)
        scanned += 1
        if catalogRef.firstMatch(in: text, range: NSRange(text.startIndex..., in: text)) != nil
            || text.contains("rawExercises") {
          offenders.append(name)
        }
      }
    }
    #expect(scanned > 50, "scan found too few files; the path to the sources is wrong")
    #expect(offenders.isEmpty, "Files reading raw catalogs outside LanguageManager's gate: \(offenders)")
  }

  @Test func badgeManagerOnlyReadsEnglishCatalogs() throws {
    let root = URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent()
    let text = try String(contentsOf: root.appendingPathComponent("CogniLink/BadgeManager.swift"), encoding: .utf8)
    for g in ReviewGatedLanguages.all { #expect(!text.contains("\(g.language)".capitalized), "\(g.language)") }
  }

  // MARK: - 4. Stable flag key

  @Test func itemKeyIsGroupKeyAndIndexAndSurvivesRelaunch() {
    let items = (0..<3).map { ExerciseItem(prompt: "p\($0)", options: ["a", "b"], correctAnswer: "a", explanation: "x") }
    let keyed = Exercise(title: "Titel", instructions: "i", section: .language, type: .multipleChoice,
                         difficulty: .easy, groupKey: "synonymsEasy", items: items)
    #expect(keyed.itemKey(for: items[2]) == "synonymsEasy|2")
    // a second instance (new UUIDs, as after a relaunch) yields the same keys
    let again = Exercise(title: "Titel", instructions: "i", section: .language, type: .multipleChoice,
                         difficulty: .easy, groupKey: "synonymsEasy",
                         items: (0..<3).map { ExerciseItem(prompt: "p\($0)", options: ["a", "b"], correctAnswer: "a", explanation: "x") })
    #expect(again.itemKey(for: again.items[2]) == "synonymsEasy|2")
    // legacy groups without a key fall back to the title
    let legacy = Exercise(title: "Legacy", instructions: "i", section: .language, type: .multipleChoice, difficulty: .easy, items: items)
    #expect(legacy.itemKey(for: items[1]) == "Legacy|1")
    #expect(keyed.itemKey(for: ExerciseItem(prompt: "x", options: [], correctAnswer: "", explanation: "")) == "synonymsEasy|-1")
  }
}
