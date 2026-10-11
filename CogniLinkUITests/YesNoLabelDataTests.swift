//
//  YesNoLabelDataTests.swift
//  CogniLinkUITests
//
//  Regression test: Yes/No and Fact/Opinion buttons show a localized label, but the stored
//  answer values are always exactly "Yes"/"No" and "Fact"/"Opinion". Before the fix,
//  YesNoView compared the *label* ("Sí" in every non-English language) with the stored
//  value "Yes", so a correct "Yes" answer was marked incorrect in every non-English language.
//  (FactOrOpinionView never had the mismatch: its labels equalled the stored values.)
//

import XCTest

final class YesNoLabelDataTests: XCTestCase {

    override func setUpWithError() throws { continueAfterFailure = false }

    private func launchApp(language: String) -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-clarity_onboarding_complete", "YES"]
        app.launchArguments += ["-selected_language", language]   // AppLanguage rawValue
        app.launch()
        return app
    }

    private func openExercise(_ app: XCUIApplication, titled title: String) {
        app.tabBars.buttons.element(boundBy: 1).tap() // Activities
        let row = app.descendants(matching: .any).matching(NSPredicate(format: "label CONTAINS %@", title)).firstMatch
        // The list is lazy: scroll down in small steps, then back up, until the row is on screen.
        for _ in 0..<40 where !(row.exists && row.isHittable) { app.swipeUp(velocity: .slow); Thread.sleep(forTimeInterval: 0.2) }
        for _ in 0..<40 where !(row.exists && row.isHittable) { app.swipeDown(velocity: .slow); Thread.sleep(forTimeInterval: 0.2) }
        XCTAssertTrue(row.exists && row.isHittable, "\(title) exercise row not found")
        row.tap()
    }

    /// Taps the "yes" button on up to 5 questions. Whenever the item's true answer is Yes
    /// (the "no" button is NOT announced as the correct answer), the "yes" button must be
    /// announced as selected AND correct.
    private func assertYesIsMarkedCorrect(language: String, exerciseTitle: String, yesLabel: String, noLabel: String) {
        let app = launchApp(language: language)
        // Opening the row occasionally lands before the list has settled; retry the navigation once.
        for attempt in 0..<2 {
            openExercise(app, titled: exerciseTitle)
            if app.buttons[yesLabel].waitForExistence(timeout: 6) { break }
            if attempt == 0, app.buttons["BackButton"].exists { app.buttons["BackButton"].tap() }
        }

        var yesItemsSeen = 0
        for question in 1...5 {
            let yes = app.buttons[yesLabel]
            XCTAssertTrue(yes.waitForExistence(timeout: 5), "question \(question): '\(yesLabel)' button not found")
            yes.tap()
            Thread.sleep(forTimeInterval: 0.4)
            let noIsCorrectAnswer = app.buttons["\(noLabel), correct answer"].exists
            if !noIsCorrectAnswer {
                yesItemsSeen += 1
                XCTAssertTrue(app.buttons["\(yesLabel), selected, correct"].exists,
                              "question \(question): the true answer is Yes but '\(yesLabel)' was not marked correct")
            }
            // after a correct answer the footer button reads "Next Question →", otherwise "Skip question"
            let next = app.buttons["NextQuestionButton"]
            let skip = app.buttons["Skip question"]
            if next.exists { next.tap() } else if skip.exists { skip.tap() }
            Thread.sleep(forTimeInterval: 0.6)
        }
        XCTAssertGreaterThan(yesItemsSeen, 0, "no item with the answer Yes appeared in 5 questions; rerun")
    }

    @MainActor
    func testYesAnswerIsMarkedCorrectInSpanish() {
        assertYesIsMarkedCorrect(language: "Español", exerciseTitle: "Preguntas de Sí o No", yesLabel: "Sí", noLabel: "No")
    }

    // Fact/Opinion uses the same first-label / other-label logic: tapping the first label is
    // correct exactly when the other label is not announced as the correct answer.
    @MainActor
    func testFactAnswerIsMarkedCorrectInEnglish() {
        assertYesIsMarkedCorrect(language: "English", exerciseTitle: "Fact or Opinion", yesLabel: "Fact", noLabel: "Opinion")
    }
}
