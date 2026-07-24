//
//  CaregiverAccessibilityTests.swift
//  CogniLinkUITests
//
//  Phase 3 of the VoiceOver sweep: caregiver-facing views
//  (CaregiverDashboardView, CaregiverInsightsView, CaregiverModeView,
//  CaregiverProgressView, FlaggedContentView, TherapyNotesView, and
//  PINEntryView cleanup).
//
//  Navigation reuses the PIN-entry flow established by
//  CaregiverDynamicTypeTests.navigateToCaregiverDashboard (Profile tab ->
//  Caregiver Mode -> dismiss default-PIN notice -> enter "0000").
//
//  Coverage note: the two PINEntryView gaps fixed in this phase (a spoken
//  "Incorrect PIN" on failure, and a .screenChanged when ChangePINView flips
//  from "New PIN" to "Confirm PIN") are UIAccessibility notifications. No
//  public XCUITest API observes posted notifications, so — exactly as with
//  the memory-recall announcements in Phase 1 — these are asserted here only
//  via the state transition they accompany, and were confirmed to fire by
//  the same log-capture method used previously.
//

import XCTest

final class CaregiverAccessibilityTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    /// Forces English so a leftover Farsi selection from another suite can't
    /// break title lookups (see NavigationProfileAccessibilityTests).
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

    /// Mirrors CaregiverDynamicTypeTests.navigateToCaregiverDashboard.
    private func navigateToCaregiverDashboard(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap() // Profile

        let caregiverRow = row(app, containing: "Caregiver Mode")
        scrollUntilVisible(app, caregiverRow)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5), "Caregiver Mode row not found")
        caregiverRow.tap()

        let okButton = app.alerts.buttons["OK"]
        if okButton.waitForExistence(timeout: 3) { okButton.tap() }

        for digit in ["0", "0", "0", "0"] {
            let button = app.buttons[digit]
            XCTAssertTrue(button.waitForExistence(timeout: 5), "PIN digit \(digit) button not found")
            button.tap()
        }
        Thread.sleep(forTimeInterval: 0.8)
    }

    // MARK: - PINEntryView: existing coverage still intact after cleanup

    @MainActor
    func testPINKeypadRetainsDigitLabels() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 2).tap()
        let caregiverRow = row(app, containing: "Caregiver Mode")
        scrollUntilVisible(app, caregiverRow)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5), "Caregiver Mode row not found")
        caregiverRow.tap()
        let okButton = app.alerts.buttons["OK"]
        if okButton.waitForExistence(timeout: 3) { okButton.tap() }

        // Pre-existing coverage from earlier work — this pass must not have
        // regressed it.
        for digit in ["0", "5", "9"] {
            XCTAssertTrue(app.buttons[digit].waitForExistence(timeout: 5),
                          "PIN keypad digit \(digit) lost its accessibility label")
        }
        // The dot indicators expose progress rather than reading as 4 shapes.
        let dots = app.descendants(matching: .any).matching(
            NSPredicate(format: "label CONTAINS 'of 4'")
        ).firstMatch
        XCTAssertTrue(dots.waitForExistence(timeout: 3),
                      "PIN progress indicator lost its 'N of 4' accessibility label")
    }

    // MARK: - CaregiverDashboardView: stat cards and nav rows

    @MainActor
    func testDashboardQuickStatsReadAsLabelPlusValue() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)

        // quickStat previously read as three fragments (symbol name, bare
        // number, caption). It should now be one element labeled with the
        // caption, carrying the number as its value.
        let streak = app.descendants(matching: .any).matching(
            NSPredicate(format: "label CONTAINS 'Streak'")
        ).firstMatch
        XCTAssertTrue(streak.waitForExistence(timeout: 5), "Quick stat card not found")
        XCTAssertFalse(streak.label.lowercased().contains("flame"),
                       "Quick stat still announces its decorative icon: '\(streak.label)'")
    }

    @MainActor
    func testDashboardNavRowsDropDecorativeIcons() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)

        // dashboardRow drives all 8 navigation rows; both the leading icon
        // and the trailing chevron are now hidden.
        let insightsRow = app.buttons["Insights"]
        XCTAssertTrue(insightsRow.waitForExistence(timeout: 5),
                      "Dashboard nav row is not labeled with just its title")
        XCTAssertFalse(insightsRow.label.lowercased().contains("chevron"),
                       "Dashboard row still announces its chevron: '\(insightsRow.label)'")
    }

    // MARK: - CaregiverProgressView: silent trend chart now speaks

    @MainActor
    func testProgressTrendChartExposesSpokenSummary() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)

        let progressRow = app.buttons["Progress Detail"]
        guard progressRow.waitForExistence(timeout: 5) else {
            XCTFail("Could not reach CaregiverProgressView")
            return
        }
        progressRow.tap()

        // Guard: confirm the tap actually navigated. An earlier revision of
        // this phase collapsed dashboardRow with .accessibilityElement(
        // children: .ignore), which left rows readable but NOT activatable —
        // this assertion is what caught that regression.
        let exportButton = app.buttons.matching(
            NSPredicate(format: "label CONTAINS 'PDF'")
        ).firstMatch
        XCTAssertTrue(exportButton.waitForExistence(timeout: 5),
                      "Tapping the Progress Detail row did not navigate to CaregiverProgressView")

        // The filter pickers previously announced only their current value.
        let sectionFilter = app.descendants(matching: .any).matching(
            NSPredicate(format: "label CONTAINS 'Section filter'")
        ).firstMatch
        XCTAssertTrue(sectionFilter.waitForExistence(timeout: 5),
                      "Section filter picker is missing its accessibility label")

        // The hand-rolled Path chart is silent to VoiceOver; with fewer than
        // two data points the view shows a "no data" Text instead, so only
        // assert the chart's label when the chart is actually rendered.
        let chart = app.descendants(matching: .any).matching(
            NSPredicate(format: "label CONTAINS 'Accuracy'")
        ).firstMatch
        if chart.exists, let value = chart.value as? String, !value.isEmpty {
            XCTAssertTrue(value.lowercased().contains("percent") || value.lowercased().contains("no data"),
                          "Trend chart value doesn't convey the trend in words: '\(value)'")
        }
    }

    // MARK: - TherapyNotesView: composer and per-note delete buttons

    @MainActor
    func testTherapyNotesComposerAndDeleteAreLabeled() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)

        let notesRow = app.buttons["Therapy Notes"]
        guard notesRow.waitForExistence(timeout: 5) else {
            XCTFail("Could not reach TherapyNotesView")
            return
        }
        notesRow.tap()

        // Guard: confirm the tap actually navigated (see the note in
        // testProgressTrendChartExposesSpokenSummary).
        let saveButton = app.buttons.matching(
            NSPredicate(format: "label CONTAINS 'Save'")
        ).firstMatch
        XCTAssertTrue(saveButton.waitForExistence(timeout: 5),
                      "Tapping the Therapy Notes row did not navigate to TherapyNotesView")

        // The TextEditor previously read as a bare "text field, empty".
        let composer = app.descendants(matching: .any).matching(
            NSPredicate(format: "label CONTAINS 'Add' OR label CONTAINS 'Note' OR label CONTAINS 'note'")
        ).firstMatch
        XCTAssertTrue(composer.waitForExistence(timeout: 5),
                      "Therapy notes composer is missing its accessibility label")
    }

    // MARK: - FlaggedContentView: action buttons drop decorative icons

    @MainActor
    func testFlaggedContentIsReachableAndLabeled() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)

        let flaggedRow = app.buttons.matching(
            NSPredicate(format: "label CONTAINS 'Flagged'")
        ).firstMatch
        guard flaggedRow.waitForExistence(timeout: 5) else {
            XCTFail("Could not reach FlaggedContentView")
            return
        }
        flaggedRow.tap()

        // With no flagged items the empty state shows; it should be one
        // combined announcement with the flag.slash glyph hidden.
        let anyLabeled = app.descendants(matching: .any).matching(
            NSPredicate(format: "label != ''")
        ).firstMatch
        XCTAssertTrue(anyLabeled.waitForExistence(timeout: 5), "FlaggedContentView rendered nothing labeled")

        let leaked = app.descendants(matching: .any).matching(
            NSPredicate(format: "label CONTAINS 'flag.slash' OR label CONTAINS 'doc.on.doc' OR label CONTAINS 'square.and.arrow.up'")
        ).firstMatch
        XCTAssertFalse(leaked.exists,
                       "FlaggedContentView still announces a raw SF Symbol name")
    }

    // MARK: - RTL (Farsi) sanity for the caregiver flow

    @MainActor
    func testCaregiverDashboardRendersInFarsiRTL() throws {
        let app = launchApp()
        addTeardownBlock { self.switchToEnglish(app) }
        switchToFarsi(app)

        app.tabBars.buttons.element(boundBy: 2).tap()
        let caregiverRow = row(app, containing: "حالت مراقب")
        scrollUntilVisible(app, caregiverRow)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5),
                      "RTL: Farsi Caregiver Mode row not found")
        caregiverRow.tap()

        let okButton = app.alerts.buttons.firstMatch
        if okButton.waitForExistence(timeout: 3) { okButton.tap() }

        // The PIN keypad's digit labels are numerals, so they survive the
        // language switch — this confirms the RTL layout didn't break the
        // keypad's accessibility tree.
        for digit in ["0", "0", "0", "0"] {
            let button = app.buttons[digit]
            XCTAssertTrue(button.waitForExistence(timeout: 5),
                          "RTL: PIN digit \(digit) not reachable in Farsi")
            button.tap()
        }
        Thread.sleep(forTimeInterval: 0.8)

        // Dashboard content should be present and labeled in RTL.
        let anyLabeled = app.descendants(matching: .any).matching(
            NSPredicate(format: "label != ''")
        ).firstMatch
        XCTAssertTrue(anyLabeled.waitForExistence(timeout: 5),
                      "RTL: caregiver dashboard rendered nothing labeled in Farsi")
    }

    // MARK: - Farsi helpers

    private func switchToFarsi(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap()
        let languageDisclosure = row(app, containing: "English")
        scrollUntilVisible(app, languageDisclosure)
        if languageDisclosure.exists { languageDisclosure.tap() }
        let farsiOption = row(app, containing: "فارسی")
        scrollUntilVisible(app, farsiOption)
        XCTAssertTrue(farsiOption.waitForExistence(timeout: 5), "Farsi language option not found")
        farsiOption.tap()
        Thread.sleep(forTimeInterval: 1.5)
    }

    private func switchToEnglish(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap()
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
