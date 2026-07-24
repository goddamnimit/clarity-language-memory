//
//  ExerciseFlowAccessibilityTests.swift
//  CogniLinkUITests
//
//  Verifies the broader VoiceOver labeling sweep across the exercise flow:
//  color-only correctness/selection state (YesNoView, MinimalPairsView, and
//  in Farsi, FactOrOpinionView/CategoryCrossOutView), icon-only button
//  labels (OpenEndedView, ExerciseContainerView, SequencingView), the
//  shared ProgressBarView's accessibility value, and ExerciseContainerView's
//  navigationTitle. None of these views have auto-advancing/timed behavior
//  (unlike MultipleChoiceView's memory-recall phases), so static
//  accessibility-tree assertions are sufficient here.
//

import XCTest

final class ExerciseFlowAccessibilityTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    private func launchApp() -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-clarity_onboarding_complete", "YES"]
        app.launch()
        return app
    }

    private func row(_ app: XCUIApplication, containing text: String) -> XCUIElement {
        app.descendants(matching: .any).matching(NSPredicate(format: "label CONTAINS %@", text)).firstMatch
    }

    private func openExercise(_ app: XCUIApplication, titled title: String) {
        app.tabBars.buttons.element(boundBy: 1).tap() // Activities
        let exerciseRow = row(app, containing: title)
        for _ in 0..<10 where !(exerciseRow.exists && exerciseRow.isHittable) {
            app.swipeUp()
        }
        XCTAssertTrue(exerciseRow.waitForExistence(timeout: 5), "\(title) exercise row not found")
        exerciseRow.tap()
    }

    private func scrollUntilVisible(_ app: XCUIApplication, _ element: XCUIElement, maxSwipes: Int = 15) {
        let scrollView = app.scrollViews.firstMatch
        for _ in 0..<maxSwipes where !(element.exists && element.isHittable) {
            scrollView.swipeUp()
        }
    }

    // Resolves the first real answer-option button by STRUCTURAL POSITION
    // rather than by excluding known non-option labels. Label-based
    // exclusion (via Swift array filtering and, separately, via NSPredicate
    // CONTAINS) was tried repeatedly and consistently still resolved to the
    // flag button despite its label reliably NOT containing any exclusion
    // substring under direct byte-for-byte inspection — a root cause never
    // fully isolated even after the flag button's own accessibility setup
    // was independently fixed (ExerciseContainerView.swift). A confirmed
    // debug dump of the live button array showed the flag button is
    // reliably element 0 within app.scrollViews.buttons (it's the only
    // interactive control in ExerciseContainerView's header, which is the
    // first thing in the ScrollView, ahead of any exercise-type content),
    // with every real answer option appearing after it — so skipping
    // exactly the first element is a structurally-grounded, verified fix.
    private func firstAnswerOption(_ app: XCUIApplication) -> XCUIElement {
        app.scrollViews.buttons.allElementsBoundByIndex.dropFirst().first ?? app.scrollViews.buttons.firstMatch
    }

    // Switches the app's language via the actual in-app picker (Profile tab
    // -> Language DisclosureGroup -> tap the "فارسی" row) rather than a
    // "-selected_language" launch argument. AppLanguage's Farsi rawValue
    // (AppLanguage.swift:11) is a corrupted string — 2 of its 5 characters
    // are Thai-script lookalikes instead of proper Arabic-script Persian —
    // so passing a correctly-spelled Farsi string via launch argument can
    // never match it and silently leaves the app in English. The in-app
    // picker binds directly to the AppLanguage enum case (ProfileView.swift
    // ~line 230: `languageManager.currentLanguage = language`), sidestepping
    // that corrupted rawValue entirely, matching the working pattern
    // already used by CaregiverDynamicTypeTests.switchToFarsi.
    private func switchToFarsi(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap() // Profile
        let languageDisclosure = row(app, containing: "English")
        scrollUntilVisible(app, languageDisclosure)
        if languageDisclosure.exists {
            languageDisclosure.tap()
        }
        let farsiOption = row(app, containing: "فارسی")
        scrollUntilVisible(app, farsiOption)
        XCTAssertTrue(farsiOption.waitForExistence(timeout: 5), "Farsi language option not found")
        farsiOption.tap()
        // A freshly-installed app's first language switch can take longer
        // to fully propagate/re-render than later switches (confirmed: this
        // test flaked once on a fresh install while the very next Farsi
        // test, run moments later, passed reliably) — settle generously.
        Thread.sleep(forTimeInterval: 1.5)
    }

    // Reverts the language switch made by switchToFarsi. The app persists
    // the language choice to real UserDefaults (not an ephemeral launch
    // argument), and that persists across separate app installs/launches
    // within the same simulator — without this, a Farsi test leaves every
    // later test (in this run or a future one) unable to find its
    // English-titled exercise rows. Called via addTeardownBlock so it still
    // runs even if the test fails before reaching its own end.
    private func switchToEnglish(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 2).tap() // Profile
        let languageDisclosure = row(app, containing: "فارسی")
        scrollUntilVisible(app, languageDisclosure)
        if languageDisclosure.exists {
            languageDisclosure.tap()
        }
        let englishOption = row(app, containing: "English")
        scrollUntilVisible(app, englishOption)
        if englishOption.waitForExistence(timeout: 5) {
            englishOption.tap()
            Thread.sleep(forTimeInterval: 0.5)
        }
    }

    // MARK: - ExerciseContainerView: navigationTitle + Previous/Skip labels + ProgressBarView

    @MainActor
    func testExerciseContainerNavigationTitleAndFooterLabels() throws {
        let app = launchApp()
        openExercise(app, titled: "Yes or No Questions")

        // navigationTitle(exercise.title) should now put the exercise title
        // in the nav bar (previously ExerciseContainerView had no title at all).
        let navBarTitle = app.navigationBars["Yes or No Questions"]
        XCTAssertTrue(navBarTitle.waitForExistence(timeout: 5), "ExerciseContainerView is missing its navigationTitle")

        let previousButton = app.buttons["Previous question"]
        XCTAssertTrue(previousButton.waitForExistence(timeout: 3), "Previous button missing clean accessibility label")

        let skipButton = app.buttons["Skip question"]
        XCTAssertTrue(skipButton.waitForExistence(timeout: 3), "Skip button missing clean accessibility label")

        // ProgressBarView should now expose a label + value instead of being silent.
        let progressElement = app.descendants(matching: .any)["Progress"]
        XCTAssertTrue(progressElement.waitForExistence(timeout: 3), "ProgressBarView has no accessibilityLabel")
        XCTAssertTrue(progressElement.value as? String == "Question 1 of 5" || (progressElement.value as? String)?.contains("Question 1 of") == true,
                      "ProgressBarView accessibilityValue doesn't convey position — got \(String(describing: progressElement.value))")
    }

    // MARK: - YesNoView: correctness/selection conveyed to accessibility, not just color

    @MainActor
    func testYesNoViewExposesCorrectnessToAccessibility() throws {
        let app = launchApp()
        openExercise(app, titled: "Yes or No Questions")

        let yesButton = app.buttons["Yes"]
        let noButton = app.buttons["No"]
        XCTAssertTrue(yesButton.waitForExistence(timeout: 5) || noButton.waitForExistence(timeout: 5), "Yes/No buttons not found")

        let tapped = yesButton.exists ? yesButton : noButton
        tapped.tap()
        Thread.sleep(forTimeInterval: 0.3)

        let outcomeElement = app.descendants(matching: .any)
            .matching(NSPredicate(format: "label CONTAINS 'correct' OR label CONTAINS 'incorrect'"))
            .firstMatch
        XCTAssertTrue(outcomeElement.waitForExistence(timeout: 3), "No Yes/No option carries outcome wording after answering")
    }

    // MARK: - MinimalPairsView: correctness/selection conveyed to accessibility

    @MainActor
    func testMinimalPairsViewExposesCorrectnessToAccessibility() throws {
        let app = launchApp()
        openExercise(app, titled: "Minimal Pairs")

        let optionButtons = app.scrollViews.buttons.allElementsBoundByIndex + app.buttons.allElementsBoundByIndex
        let firstOption = optionButtons.first { button in
            !["Skip question", "Previous question", "Flag"].contains(where: { button.label.contains($0) })
        }
        guard let tappedOption = firstOption else {
            XCTFail("No Minimal Pairs answer option found")
            return
        }
        let tappedLabel = tappedOption.label
        tappedOption.tap()
        Thread.sleep(forTimeInterval: 0.3)

        let outcomeElement = app.descendants(matching: .any)
            .matching(NSPredicate(format: "label CONTAINS %@ AND (label CONTAINS 'correct' OR label CONTAINS 'incorrect')", tappedLabel))
            .firstMatch
        XCTAssertTrue(outcomeElement.waitForExistence(timeout: 3), "MinimalPairsView option missing outcome wording after answering")
        XCTAssertTrue(outcomeElement.isSelected, "Tapped MinimalPairsView option is missing the .isSelected accessibility trait")
    }

    // MARK: - SequencingView: icon-only buttons now labeled

    @MainActor
    func testSequencingViewIconButtonsAreLabeled() throws {
        let app = launchApp()
        openExercise(app, titled: "Easy Sequencing")

        // Position selector buttons should read "Position N", not a bare digit.
        let positionOne = app.buttons["Position 1"]
        XCTAssertTrue(positionOne.waitForExistence(timeout: 5), "Sequencing position button missing 'Position N' label")
    }

    // MARK: - OpenEndedView: Clear/Show Answer icon+text buttons now labeled cleanly

    @MainActor
    func testOpenEndedViewButtonsAreLabeled() throws {
        let app = launchApp()
        openExercise(app, titled: "Memory — About Yourself")

        let clearButton = app.buttons["Clear"]
        XCTAssertTrue(clearButton.waitForExistence(timeout: 5), "OpenEndedView Clear button missing clean accessibility label")
    }

    // MARK: - Farsi (RTL): FactOrOpinionView + CategoryCrossOutView correctness/selection + RTL sanity

    @MainActor
    func testFarsiFactOrOpinionExposesCorrectnessAndRendersRTL() throws {
        let app = launchApp()
        addTeardownBlock { self.switchToEnglish(app) }
        switchToFarsi(app)
        openExercise(app, titled: "واقعیت یا نظر")

        // RTL sanity: the exercise screen loaded with Farsi content and the
        // footer/back navigation is still reachable — if RTL layout broke
        // navigation entirely, these wouldn't resolve at all.
        XCTAssertTrue(app.buttons["Previous question"].waitForExistence(timeout: 5), "RTL: Previous button not reachable in Farsi")
        // The flag button's label resolves asynchronously and can briefly
        // read as empty right after navigation, which made firstAnswerOption
        // intermittently accept it before its real label ever populated.
        // Give the screen a moment to fully settle before querying.
        Thread.sleep(forTimeInterval: 1.0)

        let tappedOption = firstAnswerOption(app)
        XCTAssertTrue(tappedOption.waitForExistence(timeout: 5), "No Fact/Opinion option found in Farsi")
        let tappedLabel = tappedOption.label
        tappedOption.tap()
        Thread.sleep(forTimeInterval: 0.3)

        let outcomeElement = app.descendants(matching: .any)
            .matching(NSPredicate(format: "label CONTAINS %@ AND (label CONTAINS 'correct' OR label CONTAINS 'incorrect')", tappedLabel))
            .firstMatch
        XCTAssertTrue(outcomeElement.waitForExistence(timeout: 3), "Farsi FactOrOpinionView option missing outcome wording after answering")
    }

    // KNOWN FLAKY (full-suite runs only — passes reliably in isolation).
    // Fails intermittently at `openExercise` above ("exercise row not
    // found"), i.e. before reaching any accessibility assertion, so the
    // flake reflects test-navigation timing rather than a defect in the
    // accessibility behavior under test. This is the first Farsi test
    // alphabetically, and the leading (not conclusively proven) theory is
    // that the very first in-run language switch needs longer to settle
    // than later ones — `switchToFarsi`'s 1.5s settle and the
    // `switchToEnglish` teardown both reduced but did not eliminate it.
    // Left enabled deliberately: it passes in isolation and its assertions
    // are still valuable. If it becomes disruptive in CI, investigate the
    // settle/scroll behavior in `switchToFarsi`/`openExercise` — do not
    // simply disable it.
    @MainActor
    func testFarsiCategoryCrossOutExposesCorrectnessAndRendersRTL() throws {
        let app = launchApp()
        addTeardownBlock { self.switchToEnglish(app) }
        switchToFarsi(app)
        openExercise(app, titled: "دسته‌بندی — ساده")

        // See matching comment in testFarsiFactOrOpinionExposesCorrectnessAndRendersRTL:
        // give the flag button's label time to resolve before querying.
        XCTAssertTrue(app.buttons["Previous question"].waitForExistence(timeout: 5), "RTL: Previous button not reachable in Farsi")
        Thread.sleep(forTimeInterval: 1.0)

        let tappedWord = firstAnswerOption(app)
        XCTAssertTrue(tappedWord.waitForExistence(timeout: 5), "No CategoryCrossOut word card found in Farsi")
        let tappedLabel = tappedWord.label
        tappedWord.tap()
        Thread.sleep(forTimeInterval: 0.3)

        let outcomeElement = app.descendants(matching: .any)
            .matching(NSPredicate(format: "label CONTAINS %@ AND (label CONTAINS 'correct' OR label CONTAINS 'incorrect')", tappedLabel))
            .firstMatch
        XCTAssertTrue(outcomeElement.waitForExistence(timeout: 3), "Farsi CategoryCrossOutView option missing outcome wording after answering")
        XCTAssertTrue(outcomeElement.isSelected, "Tapped Farsi CategoryCrossOutView option is missing the .isSelected accessibility trait")
    }
}
