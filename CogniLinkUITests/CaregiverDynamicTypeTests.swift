//
//  CaregiverDynamicTypeTests.swift
//  CogniLinkUITests
//
//  Verifies Dynamic Type / accessibility text-size handling in the
//  Caregiver Mode flow (CaregiverDashboardView, CaregiverInsightsView,
//  FlaggedContentView, PINEntryView) and the AppProgressView follow-up fix.
//
//  Each test launches fresh and drives straight to its target screen
//  (no back-navigation) to avoid ambiguity between nested NavigationStacks'
//  overlapping NavigationBar elements in the accessibility tree.
//

import XCTest

final class CaregiverDynamicTypeTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    /// Passes `-clarity_onboarding_complete YES`, which iOS populates into
    /// `UserDefaults`' argument domain, so `ContentView` skips the onboarding
    /// flow entirely and starts directly on the tab bar (see
    /// `ContentView.swift:6` / `OnboardingView.swift:418`).
    private func launchApp() -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-clarity_onboarding_complete", "YES"]
        app.launch()
        return app
    }

    /// Rows built as `NavigationLink { HStack { Image; Text; ... } }` merge
    /// their children into a single accessibility element whose label
    /// concatenates the icon + text, so they must be queried as buttons
    /// containing the label text, not as standalone staticTexts.
    private func row(_ app: XCUIApplication, containing text: String) -> XCUIElement {
        app.descendants(matching: .any).matching(NSPredicate(format: "label CONTAINS %@", text)).firstMatch
    }

    /// Scrolls until `element` is not just present in the accessibility tree
    /// but actually on screen. At large Dynamic Type sizes rows can exist
    /// off-screen (SwiftUI keeps ScrollView children instantiated), so
    /// checking `.exists` alone under-scrolls and leaves it non-hittable.
    private func scrollUntilVisible(_ app: XCUIApplication, _ element: XCUIElement, maxSwipes: Int = 15) {
        let scrollView = app.scrollViews.firstMatch
        for _ in 0..<maxSwipes where !(element.exists && element.isHittable) {
            scrollView.swipeUp()
        }
    }

    /// Navigates Profile tab -> Caregiver Mode -> dismisses the default-PIN
    /// notice if shown -> enters the default PIN "0000" -> lands on
    /// CaregiverDashboardView.
    private func navigateToCaregiverDashboard(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap()

        let caregiverRow = row(app, containing: "Caregiver Mode")
        scrollUntilVisible(app, caregiverRow)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5), "Caregiver Mode row not found")
        caregiverRow.tap()

        // Dismiss the one-time default-PIN alert if it appears.
        let okButton = app.alerts.buttons["OK"]
        if okButton.waitForExistence(timeout: 3) {
            okButton.tap()
        }

        for digit in ["0", "0", "0", "0"] {
            let button = app.buttons[digit]
            XCTAssertTrue(button.waitForExistence(timeout: 5), "PIN digit \(digit) button not found")
            button.tap()
        }

        // Let the unlock cross-fade settle before the caller queries content.
        Thread.sleep(forTimeInterval: 0.5)
    }

    private func attach(_ app: XCUIApplication, name: String) {
        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = name
        attachment.lifetime = .keepAlways
        add(attachment)
    }

    // MARK: - Default text size

    @MainActor
    func testPINEntryAtDefaultTextSize() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 2).tap()
        let caregiverRow = row(app, containing: "Caregiver Mode")
        scrollUntilVisible(app, caregiverRow)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5))
        caregiverRow.tap()
        let okButton = app.alerts.buttons["OK"]
        if okButton.waitForExistence(timeout: 3) { okButton.tap() }
        XCTAssertTrue(app.buttons["0"].waitForExistence(timeout: 5))
        attach(app, name: "PINEntry-Default")
    }

    @MainActor
    func testCaregiverDashboardAtDefaultTextSize() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)
        XCTAssertTrue(row(app, containing: "Insights").waitForExistence(timeout: 5), "Dashboard did not load")
        attach(app, name: "CaregiverDashboard-Default")
    }

    @MainActor
    func testCaregiverInsightsAtDefaultTextSize() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)
        let insightsRow = row(app, containing: "Insights")
        XCTAssertTrue(insightsRow.waitForExistence(timeout: 5))
        insightsRow.tap()
        Thread.sleep(forTimeInterval: 0.5)
        attach(app, name: "CaregiverInsights-Default")
    }

    @MainActor
    func testFlaggedContentAtDefaultTextSize() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)
        let flaggedRow = row(app, containing: "Flagged Content")
        scrollUntilVisible(app, flaggedRow)
        XCTAssertTrue(flaggedRow.waitForExistence(timeout: 5), "Flagged Content row not found")
        flaggedRow.tap()
        Thread.sleep(forTimeInterval: 0.5)
        attach(app, name: "FlaggedContent-Default")
    }

    // MARK: - Accessibility XXXL
    //
    // Requires the simulator-wide accessibility content size to be set
    // out-of-band beforehand:
    //   xcrun simctl ui <device> content_size accessibility-extra-extra-extra-large

    @MainActor
    func testPINEntryAtAccessibilityXXXL() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 2).tap()
        let caregiverRow = row(app, containing: "Caregiver Mode")
        scrollUntilVisible(app, caregiverRow)
        Thread.sleep(forTimeInterval: 0.3)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5))
        caregiverRow.tap()
        let okButton = app.alerts.buttons["OK"]
        if okButton.waitForExistence(timeout: 3) {
            okButton.tap()
        }
        let digitButton = app.buttons["0"]
        XCTAssertTrue(digitButton.waitForExistence(timeout: 5))
        XCTAssertTrue(digitButton.isHittable, "PIN digit button not hittable at XXXL")
        let cancelButton = app.buttons["Cancel"]
        XCTAssertTrue(cancelButton.exists, "Cancel button not found at XXXL")
        scrollUntilVisible(app, cancelButton)
        XCTAssertTrue(cancelButton.isHittable, "Cancel button not reachable by scrolling at XXXL")
        attach(app, name: "PINEntry-XXXL")
    }

    @MainActor
    func testCaregiverDashboardAtAccessibilityXXXL() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)
        let insightsRow = row(app, containing: "Insights")
        scrollUntilVisible(app, insightsRow)
        XCTAssertTrue(insightsRow.waitForExistence(timeout: 5), "Dashboard did not load")
        XCTAssertTrue(insightsRow.isHittable, "Insights row not hittable at XXXL")
        attach(app, name: "CaregiverDashboard-XXXL")
    }

    @MainActor
    func testCaregiverInsightsAtAccessibilityXXXL() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)
        let insightsRow = row(app, containing: "Insights")
        scrollUntilVisible(app, insightsRow)
        XCTAssertTrue(insightsRow.waitForExistence(timeout: 5))
        XCTAssertTrue(insightsRow.isHittable, "Insights row not hittable at XXXL")
        insightsRow.tap()
        Thread.sleep(forTimeInterval: 0.5)
        attach(app, name: "CaregiverInsights-XXXL")
    }

    @MainActor
    func testFlaggedContentAtAccessibilityXXXL() throws {
        let app = launchApp()
        navigateToCaregiverDashboard(app)
        let flaggedRow = row(app, containing: "Flagged Content")
        scrollUntilVisible(app, flaggedRow)
        Thread.sleep(forTimeInterval: 0.3)
        XCTAssertTrue(flaggedRow.waitForExistence(timeout: 5), "Flagged Content row not found at XXXL")
        XCTAssertTrue(flaggedRow.isHittable, "Flagged Content row not hittable at XXXL")
        flaggedRow.tap()
        Thread.sleep(forTimeInterval: 0.5)
        attach(app, name: "FlaggedContent-XXXL")
    }

    // MARK: - RTL (Farsi)

    private func switchToFarsi(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap()
        let languageDisclosure = row(app, containing: "English")
        if languageDisclosure.exists {
            languageDisclosure.tap()
        }
        let farsiOption = row(app, containing: "فارسی")
        scrollUntilVisible(app, farsiOption)
        XCTAssertTrue(farsiOption.waitForExistence(timeout: 5), "Farsi language option not found")
        farsiOption.tap()
        Thread.sleep(forTimeInterval: 0.5)
    }

    @MainActor
    func testCaregiverDashboardRTLFarsi() throws {
        let app = launchApp()
        switchToFarsi(app)
        app.tabBars.buttons.element(boundBy: 2).tap()
        let caregiverRow = row(app, containing: "حالت مراقب")
        scrollUntilVisible(app, caregiverRow)
        XCTAssertTrue(caregiverRow.waitForExistence(timeout: 5), "Farsi Caregiver Mode row not found")
        caregiverRow.tap()
        let okButton = app.alerts.buttons.firstMatch
        if okButton.waitForExistence(timeout: 3) { okButton.tap() }
        for digit in ["0", "0", "0", "0"] {
            let button = app.buttons[digit]
            XCTAssertTrue(button.waitForExistence(timeout: 5), "PIN digit \(digit) button not found")
            button.tap()
        }
        Thread.sleep(forTimeInterval: 0.5)
        attach(app, name: "CaregiverDashboard-RTL-Farsi")
    }

    @MainActor
    func testPINEntryRTLFarsi() throws {
        let app = launchApp()
        switchToFarsi(app)
        app.tabBars.buttons.element(boundBy: 2).tap()
        let caregiverRow = row(app, containing: "حالت مراقب")
        scrollUntilVisible(app, caregiverRow)
        if !caregiverRow.exists {
            // Fall back to English label in case Farsi caregiver-mode copy differs.
            let fallback = row(app, containing: "Caregiver")
            scrollUntilVisible(app, fallback)
            fallback.tap()
        } else {
            caregiverRow.tap()
        }
        attach(app, name: "PINEntry-RTL-Farsi")
    }
}
