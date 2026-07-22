//
//  MultipleChoiceAccessibilityTests.swift
//  CogniLinkUITests
//
//  Verifies that MultipleChoiceView conveys answer selection/correctness
//  to VoiceOver via accessibility label + .isSelected trait (not just
//  color + a bare icon), and that the memory-recall exercise's
//  auto-advancing phases don't silently strand VoiceOver focus.
//

import XCTest

final class MultipleChoiceAccessibilityTests: XCTestCase {

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

    // MARK: - Option correctness/selection is conveyed via accessibility, not just color

    @MainActor
    func testAnsweredOptionsExposeCorrectnessToAccessibility() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 1).tap() // Activities

        let exerciseRow = row(app, containing: "Proverb Meaning")
        for _ in 0..<8 where !(exerciseRow.exists && exerciseRow.isHittable) {
            app.swipeUp()
        }
        XCTAssertTrue(exerciseRow.waitForExistence(timeout: 5), "Proverb Meaning exercise row not found")
        exerciseRow.tap()

        // Tap the first answer option button found in the exercise card.
        // Options are plain Buttons, so their accessibility label is
        // exactly what MultipleChoiceView.accessibilityLabel(for:) sets.
        let optionButtons = app.scrollViews.buttons.allElementsBoundByIndex
            + app.buttons.allElementsBoundByIndex
        let firstOption = optionButtons.first { button in
            !["Skip", "Flag", "Previous", "Next Question"].contains(where: { button.label.contains($0) })
        }
        guard let tappedOption = firstOption else {
            XCTFail("No answer option button found")
            return
        }
        let tappedLabel = tappedOption.label
        tappedOption.tap()
        Thread.sleep(forTimeInterval: 0.5)

        // After answering, the tapped option's accessibility label must
        // include an explicit outcome word ("correct"/"incorrect") — this
        // is the actual fix under test. It must NOT just be the bare
        // option text (which is what VoiceOver got before this fix, aside
        // from an unlabeled icon).
        let postAnswerElement = app.buttons[tappedLabel].exists
            ? app.buttons[tappedLabel]
            : row(app, containing: tappedLabel)
        // The original bare label should no longer be the exact full
        // label of any option once answered — find whichever button now
        // carries the outcome wording derived from the tapped option text.
        let outcomeButton = app.descendants(matching: .any)
            .matching(NSPredicate(format: "label CONTAINS %@ AND (label CONTAINS 'correct' OR label CONTAINS 'incorrect')", tappedLabel))
            .firstMatch
        XCTAssertTrue(outcomeButton.waitForExistence(timeout: 3),
                      "No element found whose accessibility label combines '\(tappedLabel)' with an outcome word — VoiceOver would not announce correctness")

        // The tapped option must carry the .isSelected accessibility trait,
        // matching BaselineAssessmentView's existing pattern. XCUIElement
        // surfaces this via `.isSelected`.
        XCTAssertTrue(outcomeButton.isSelected, "Tapped option is missing the .isSelected accessibility trait")
        _ = postAnswerElement // silence unused-warning if the fallback path isn't hit
    }

    // MARK: - Memory-recall auto-advance doesn't strand VoiceOver

    @MainActor
    func testMemoryExerciseAutoAdvancesThroughAllThreePhases() throws {
        let app = launchApp()
        app.tabBars.buttons.element(boundBy: 1).tap() // Activities

        let exerciseRow = row(app, containing: "Memory: Repeat the List")
        for _ in 0..<8 where !(exerciseRow.exists && exerciseRow.isHittable) {
            app.swipeUp()
        }
        XCTAssertTrue(exerciseRow.waitForExistence(timeout: 5), "Memory exercise row not found")
        exerciseRow.tap()

        // Phase 1 (words): "Remember these words:" should be visible.
        let wordsPrompt = app.staticTexts["Remember these words:"]
        XCTAssertTrue(wordsPrompt.waitForExistence(timeout: 3), "Words phase did not appear")

        // Phase 2 (ready): fires ~5s after appear per startMemoryTimer().
        // This is also the moment MultipleChoiceView posts a .screenChanged
        // accessibility notification ("Words hidden. Get ready.") — the
        // exact spoken announcement isn't observable via XCUITest (no
        // public API surfaces posted UIAccessibility notifications), so
        // this test instead confirms the underlying state transition the
        // announcement is tied to actually happens on schedule, which is
        // the precondition for the announcement firing at all.
        let readyPrompt = app.staticTexts["Ready?"]
        XCTAssertTrue(readyPrompt.waitForExistence(timeout: 7), "Ready phase did not appear after words phase")
        XCTAssertFalse(wordsPrompt.exists, "Words phase content should be gone once Ready phase appears")

        // Phase 3 (choices): fires ~1s after Ready. The prompt text (used
        // as the second .screenChanged argument in source) should now be
        // on screen, and answer option buttons should be interactive.
        Thread.sleep(forTimeInterval: 1.5)
        XCTAssertFalse(readyPrompt.exists, "Ready phase content should be gone once choices phase appears")
        XCTAssertTrue(app.buttons.count > 0, "Choice buttons did not appear after auto-advance")
    }
}
