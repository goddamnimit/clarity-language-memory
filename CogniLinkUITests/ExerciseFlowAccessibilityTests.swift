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

    /// Pins the app's language for the launch via the UserDefaults argument
    /// domain, which takes precedence over the persisted "selected_language"
    /// value and is transient — so each test starts from a known language
    /// regardless of what a prior run left behind, and no test needs to
    /// change the language through the UI or undo it in teardown.
    ///
    /// `language` must be an `AppLanguage` **rawValue** (AppLanguage.swift:5),
    /// because `LanguageManager.init` resolves it with
    /// `AppLanguage(rawValue:)` — i.e. "فارسی", not "Farsi". Passing an
    /// English-language name for a non-Latin case silently falls back to the
    /// system-locale default instead of failing.
    ///
    /// (This approach was unusable when this file was first written:
    /// AppLanguage's Farsi rawValue was corrupted then — 2 of its 5
    /// characters were Thai-script lookalikes — so no correctly-spelled
    /// Farsi string could ever match it. Fixed in 6ad2563.)
    private func launchApp(language: String = "English") -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-clarity_onboarding_complete", "YES"]
        app.launchArguments += ["-selected_language", language]
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

    // POSSIBLY FLAKY — observed failing exactly once, on 2026-07-24, in run 3
    // of a 4-run full-suite session (runs 1, 2 and 4 were all green). It then
    // passed both in isolation and in the very next full-suite run, so it is
    // not reliably reproducible and was not investigated.
    //
    // The actual failure reason was NOT captured: the run's output was piped
    // through grep and the assertion message was lost with it. If this recurs,
    // capture the FULL output to a log file first
    // (`xcodebuild test-without-building ... > /tmp/run.log 2>&1`, then read
    // the log) — do not diagnose from a grepped stream, and do not assume it
    // is the same cause as the (now-fixed) Farsi language-switch flake.
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
        let app = launchApp(language: "فارسی")
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

    @MainActor
    func testFarsiCategoryCrossOutExposesCorrectnessAndRendersRTL() throws {
        let app = launchApp(language: "فارسی")
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
