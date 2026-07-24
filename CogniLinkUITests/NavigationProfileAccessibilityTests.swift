//
//  NavigationProfileAccessibilityTests.swift
//  CogniLinkUITests
//
//  Phase 2 of the VoiceOver sweep: navigation + profile/progress views
//  (ContentView, ProfileView, AllActivitiesView, ExerciseListView,
//  GoalSettingView, OnboardingView, AppProgressView).
//
//  Coverage note — three of the seven views in this phase are not covered by
//  assertions here, deliberately:
//    * AppProgressView and ExerciseListView are both currently UNREACHABLE
//      from the running app: neither is referenced anywhere in the codebase
//      outside its own definition file (and this test file). Their fixes —
//      including AppProgressView's three-state statusIcon labels, the most
//      severe color-only finding in this phase — are therefore verified by
//      source inspection only, and cannot be driven by a UI test until the
//      views are wired up or removed.
//    * OnboardingView only appears on a genuinely fresh install (it is gated
//      on the "clarity_onboarding_complete" default, which every other test
//      sets to skip it), and re-triggering it would fight the shared
//      simulator state the rest of this suite depends on.
//

import XCTest

final class NavigationProfileAccessibilityTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    /// Forces English on every launch. The app persists its language choice
    /// to real UserDefaults, which survives app reinstalls on the same
    /// simulator — so without this a leftover Farsi selection (e.g. from a
    /// previous run whose teardown didn't complete) silently breaks every
    /// test that looks for an English title.
    ///
    /// `-selected_language English` lands in UserDefaults' argument domain,
    /// which takes precedence over the persisted value and is transient, so
    /// each test starts from a known language regardless of prior state.
    /// (This approach was unusable during Phase 1b — AppLanguage's Farsi
    /// rawValue was corrupted then, so language launch args couldn't be
    /// trusted; that corruption has since been fixed.)
    private func launchApp() -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-clarity_onboarding_complete", "YES"]
        app.launchArguments += ["-selected_language", "English"]
        app.launch()
        return app
    }

    private func row(_ app: XCUIApplication, containing text: String) -> XCUIElement {
        app.descendants(matching: .any).matching(NSPredicate(format: "label CONTAINS %@", text)).firstMatch
    }

    private func scrollUntilVisible(_ app: XCUIApplication, _ element: XCUIElement, maxSwipes: Int = 15) {
        let scrollView = app.scrollViews.firstMatch
        for _ in 0..<maxSwipes where !(element.exists && element.isHittable) {
            scrollView.swipeUp()
        }
    }

    /// Opens Profile tab -> expands the Language DisclosureGroup.
    private func openLanguagePicker(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap() // Profile
        let disclosure = row(app, containing: "English")
        scrollUntilVisible(app, disclosure)
        XCTAssertTrue(disclosure.waitForExistence(timeout: 5), "Language disclosure not found")
        disclosure.tap()
        Thread.sleep(forTimeInterval: 0.5)
    }

    // MARK: - ContentView: glyph-only toolbar button is labeled

    @MainActor
    func testHomeToolbarProfileButtonIsLabeled() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 0).tap() // Home

        // Previously this control's only content was the flag emoji, which
        // VoiceOver read as e.g. "flag of United States". It should now carry
        // the localized word for "Profile" (English default here).
        let profileButton = app.buttons["Profile"]
        XCTAssertTrue(profileButton.waitForExistence(timeout: 5),
                      "Home toolbar flag button is missing its accessibility label")
    }

    // MARK: - ProfileView: language selection exposed as a trait, not just color

    @MainActor
    func testLanguageRowExposesSelectedTrait() throws {
        let app = launchApp()
        openLanguagePicker(app)

        // The active language row should carry .isSelected. Before this fix
        // selection was conveyed only by an accent-color background plus a
        // checkmark glyph (announced as the literal word "checkmark").
        let englishRow = app.buttons["English"]
        XCTAssertTrue(englishRow.waitForExistence(timeout: 5), "English language row not found")
        XCTAssertTrue(englishRow.isSelected,
                      "Current language row is missing the .isSelected accessibility trait")

        // A non-selected row must NOT claim the trait.
        let spanishRow = app.buttons["Español"]
        if spanishRow.exists {
            XCTAssertFalse(spanishRow.isSelected,
                           "Non-selected language row incorrectly carries .isSelected")
        }
    }

    @MainActor
    func testLanguageRowFlagEmojiIsNotAnnounced() throws {
        let app = launchApp()
        openLanguagePicker(app)

        // The flag emoji is hidden from accessibility, so the row's label
        // should be exactly the language name with no emoji prefix.
        let englishRow = app.buttons["English"]
        XCTAssertTrue(englishRow.waitForExistence(timeout: 5), "English language row not found")
        XCTAssertEqual(englishRow.label, "English",
                       "Language row label should be just the language name, got '\(englishRow.label)'")
    }

    // MARK: - AllActivitiesView: rows expose title as label, instructions as hint

    @MainActor
    func testActivityRowsUseTitleAsLabel() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 1).tap() // Activities

        // Row label should be the bare exercise title (fast list scanning),
        // with the long instructions demoted to a hint rather than being
        // concatenated into the label.
        // Queried by EXACT label: a match proves the row announces only its
        // title, with the (long, visually-truncated) instructions demoted to
        // a hint rather than concatenated in. Uses a row from the first
        // visible screenful — `waitForExistence` does not scroll.
        let row = app.buttons["Category Cross-Out (Easy)"]
        XCTAssertTrue(row.waitForExistence(timeout: 5),
                      "Activity row is not labeled with just its exercise title")
    }

    // MARK: - AllActivitiesView: Surprise Me button doesn't announce "sparkles"

    @MainActor
    func testSurpriseMeButtonHidesDecorativeIcon() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 1).tap() // Activities

        let surprise = app.buttons.matching(
            NSPredicate(format: "label CONTAINS 'Surprise'")
        ).firstMatch
        XCTAssertTrue(surprise.waitForExistence(timeout: 5), "Surprise Me button not found")
        XCTAssertFalse(surprise.label.lowercased().contains("sparkle"),
                       "Surprise Me button still announces its decorative icon: '\(surprise.label)'")
    }

    // NOTE: ExerciseListView's difficulty-badge fix is intentionally NOT
    // covered here. Like AppProgressView, that view turns out to be
    // unreachable from the running app — its only references in the entire
    // codebase are in this test file. An earlier version of this test tried
    // Home -> section card, but those cards are "Tap for a random activity"
    // shortcuts that launch an exercise directly, never the list. Verified
    // by source inspection only; see the coverage note at the top.

    // MARK: - ContentView: home section cards combine into one announcement

    @MainActor
    func testHomeSectionCardsCombineIntoOneAnnouncement() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 0).tap() // Home

        // The card previously read as up to four stops (leading symbol name,
        // title, subtitle, "chevron right"). Both icons are now hidden and
        // the card is combined, so the label should carry title + subtitle
        // and no raw SF Symbol names.
        let card = app.buttons.matching(
            NSPredicate(format: "label CONTAINS 'Language'")
        ).firstMatch
        XCTAssertTrue(card.waitForExistence(timeout: 5), "Home section card not found")
        XCTAssertFalse(card.label.lowercased().contains("chevron"),
                       "Section card still announces its chevron: '\(card.label)'")
        XCTAssertFalse(card.label.lowercased().contains("bubble"),
                       "Section card still announces its leading symbol name: '\(card.label)'")
    }

    // MARK: - RTL (Farsi) sanity for this phase's navigation surfaces

    @MainActor
    func testProfileAndActivitiesRenderInFarsiRTL() throws {
        let app = launchApp()
        addTeardownBlock { self.switchToEnglish(app) }
        switchToFarsi(app)

        // Profile tab still reachable and its language rows still expose the
        // selected trait after switching to an RTL language.
        app.tabBars.buttons.element(boundBy: 2).tap()
        let disclosure = row(app, containing: "فارسی")
        scrollUntilVisible(app, disclosure)
        XCTAssertTrue(disclosure.waitForExistence(timeout: 5), "RTL: language disclosure not reachable in Farsi")
        disclosure.tap()
        Thread.sleep(forTimeInterval: 0.5)

        let farsiRow = app.buttons["فارسی"]
        XCTAssertTrue(farsiRow.waitForExistence(timeout: 5), "RTL: Farsi language row not found")
        XCTAssertTrue(farsiRow.isSelected, "RTL: selected Farsi row is missing the .isSelected trait")

        // Activities tab still lists rows with real labels in RTL.
        app.tabBars.buttons.element(boundBy: 1).tap()
        let anyActivityRow = app.buttons.matching(
            NSPredicate(format: "label != '' AND NOT (label CONTAINS 'Surprise')")
        ).firstMatch
        XCTAssertTrue(anyActivityRow.waitForExistence(timeout: 5),
                      "RTL: no labeled activity rows found in Farsi")
    }

    // MARK: - Farsi helpers (mirrors ExerciseFlowAccessibilityTests)

    private func switchToFarsi(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap() // Profile
        let languageDisclosure = row(app, containing: "English")
        scrollUntilVisible(app, languageDisclosure)
        if languageDisclosure.exists { languageDisclosure.tap() }
        let farsiOption = row(app, containing: "فارسی")
        scrollUntilVisible(app, farsiOption)
        XCTAssertTrue(farsiOption.waitForExistence(timeout: 5), "Farsi language option not found")
        farsiOption.tap()
        Thread.sleep(forTimeInterval: 1.5)
    }

    /// The language choice persists to real UserDefaults across installs, so
    /// without this every later test would look for English rows in a Farsi UI.
    private func switchToEnglish(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap() // Profile
        let languageDisclosure = row(app, containing: "فارسی")
        scrollUntilVisible(app, languageDisclosure)
        if languageDisclosure.exists { languageDisclosure.tap() }
        let englishOption = row(app, containing: "English")
        scrollUntilVisible(app, englishOption)
        if englishOption.waitForExistence(timeout: 5) {
            englishOption.tap()
            Thread.sleep(forTimeInterval: 0.5)
        }
    }
}
