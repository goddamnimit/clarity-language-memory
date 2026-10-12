import XCTest
final class ZZTVPass: XCTestCase {
    override func setUpWithError() throws { continueAfterFailure = true }
    func launch(_ lang: String) -> XCUIApplication {
        let app = XCUIApplication()
        app.launchArguments += ["-clarity_tv_onboarding_complete", "YES", "-selected_language", lang]
        app.launch(); return app
    }
    func note(_ s: String) { let a = XCTAttachment(string: s); a.lifetime = .keepAlways; add(a) }
    @MainActor func testDump() {
        let app = launch("Deutsch"); Thread.sleep(forTimeInterval: 3)
        note("HOME\n" + app.debugDescription)
        XCUIRemote.shared.press(.right); XCUIRemote.shared.press(.right); Thread.sleep(forTimeInterval: 1)
        note("AFTER2RIGHT\n" + app.debugDescription)
    }
}
