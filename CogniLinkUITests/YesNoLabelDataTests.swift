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
        // Activities tab: a tap can be dropped on a slow machine, so retry the tap (only the tap)
        // until the tab reports Selected.
        let activitiesTab = app.tabBars.buttons.element(boundBy: 1)
        for _ in 0..<3 {
            activitiesTab.tap()
            let selected = NSPredicate(format: "isSelected == true")
            if XCTWaiter().wait(for: [expectation(for: selected, evaluatedWith: activitiesTab)], timeout: 5) == .completed { break }
        }
        XCTAssertTrue(activitiesTab.isSelected, "Activities tab never reported Selected")
        let row = app.descendants(matching: .any).matching(NSPredicate(format: "label CONTAINS %@", title)).firstMatch
        // The list is lazy and load-sensitive: give the row time to exist, then sweep down and
        // back up against a deadline (not a fixed swipe count) until it is on screen.
        _ = row.waitForExistence(timeout: 10)
        let deadline = Date().addingTimeInterval(120)
        var swipeDown = false
        var swipesInDirection = 0
        while !(row.exists && row.isHittable) && Date() < deadline {
            if swipeDown { app.swipeDown(velocity: .slow) } else { app.swipeUp(velocity: .slow) }
            _ = row.waitForExistence(timeout: 0.5)
            swipesInDirection += 1
            if swipesInDirection >= 40 { swipeDown.toggle(); swipesInDirection = 0 }
        }
        XCTAssertTrue(row.exists && row.isHittable, "\(title) exercise row not found")
        row.tap()
    }

    /// Waits for the progress header ("Question N of 5" and its localized equivalents) of question `n`.
    private func waitForQuestionHeader(_ app: XCUIApplication, _ n: Int) -> Bool {
        let header = app.staticTexts.matching(NSPredicate(format: "label MATCHES %@", "^\\D*\\b\(n)\\b\\D+\\d+$")).firstMatch
        return header.waitForExistence(timeout: 10)
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
            XCTAssertTrue(waitForQuestionHeader(app, question), "question \(question): progress header not shown")
            let yes = app.buttons[yesLabel]
            XCTAssertTrue(yes.waitForExistence(timeout: 5), "question \(question): '\(yesLabel)' button not found")
            yes.tap()
            // Wait for the answer feedback ("... correct answer", "..., selected, correct" or
            // "..., incorrect"). If the UI is still unanswered, the tap was dropped: tap once more.
            // Only the tap is retried, never the assertions below.
            let feedback = app.buttons.matching(NSPredicate(format: "label CONTAINS %@", "correct")).firstMatch
            if !feedback.waitForExistence(timeout: 5), yes.exists {
                yes.tap()
                _ = feedback.waitForExistence(timeout: 5)
            }
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
        }
        XCTAssertGreaterThan(yesItemsSeen, 0, "no item with the answer Yes appeared in 5 questions; rerun")
    }

    @MainActor
    func testYesAnswerIsMarkedCorrectInSpanish() {
        assertYesIsMarkedCorrect(language: "Español", exerciseTitle: "Preguntas de Sí o No", yesLabel: "Sí", noLabel: "No")
    }

    @MainActor
    func testYesAnswerIsMarkedCorrectInGerman() {
        assertYesIsMarkedCorrect(language: "Deutsch", exerciseTitle: "Ja oder Nein", yesLabel: "Ja", noLabel: "Nein")
    }

    @MainActor
    func testYesAnswerIsMarkedCorrectInItalian() {
        assertYesIsMarkedCorrect(language: "Italiano", exerciseTitle: "Sì o No", yesLabel: "Sì", noLabel: "No")
    }

    // Fact/Opinion uses the same first-label / other-label logic: tapping the first label is
    // correct exactly when the other label is not announced as the correct answer.
    @MainActor
    func testFactAnswerIsMarkedCorrectInGerman() {
        assertYesIsMarkedCorrect(language: "Deutsch", exerciseTitle: "Tatsache oder Meinung?", yesLabel: "Tatsache", noLabel: "Meinung")
    }

    @MainActor
    func testFactAnswerIsMarkedCorrectInItalian() {
        assertYesIsMarkedCorrect(language: "Italiano", exerciseTitle: "Fatto o opinione", yesLabel: "Fatto", noLabel: "Opinione")
    }

    @MainActor
    func testFactAnswerIsMarkedCorrectInEnglish() {
        assertYesIsMarkedCorrect(language: "English", exerciseTitle: "Fact or Opinion", yesLabel: "Fact", noLabel: "Opinion")
    }
}
