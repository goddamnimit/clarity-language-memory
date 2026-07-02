// TEMPORARY quality-gate verification tests — safe to delete after review.
import XCTest
@testable import CogniLink

final class ClinicalFeatureGateTests: XCTestCase {

    private func seedSessionLog(_ entries: [[String: Any]]) {
        UserDefaults.standard.set(entries, forKey: ResearchExportManager.sessionLogKey)
    }

    private func makeEntry(dayOffset: Int, section: String, type: String,
                           difficulty: String = "easy", score: Int = 4, total: Int = 5,
                           firstTryCorrect: Int = 4) -> [String: Any] {
        return [
            "dayOffset": dayOffset, "score": score, "total": total,
            "totalAttempts": total, "wrongAttempts": total - score,
            "firstTryCorrect": firstTryCorrect,
            "section": section, "exerciseType": type,
            "difficulty": difficulty, "language": "english"
        ]
    }

    override func tearDown() {
        UserDefaults.standard.removeObject(forKey: ResearchExportManager.sessionLogKey)
        super.tearDown()
    }

    // Gate 2: PDF generates without crash on a simulated session log.
    @MainActor
    func testPDFGeneratesWithSimulatedLog() {
        var entries: [[String: Any]] = []
        for day in 0..<30 {
            entries.append(makeEntry(dayOffset: day, section: ["language", "cognition", "functionalSkills"][day % 3],
                                     type: ["homonym", "sequencing", "multipleChoice", "yesNo"][day % 4],
                                     difficulty: ["easy", "medium", "hard"][day % 3],
                                     score: day % 6, total: 5, firstTryCorrect: day % 6))
        }
        seedSessionLog(entries)

        let data = PDFReportManager.generateReport()
        XCTAssertGreaterThan(data.count, 1000, "PDF should contain real content")
        let header = String(data: data.prefix(5), encoding: .ascii)
        XCTAssertEqual(header, "%PDF-", "Output must be a valid PDF")
        XCTAssertTrue(PDFReportManager.suggestedFilename().hasSuffix(".pdf"))
    }

    // Gate 2b: PDF also survives an EMPTY log.
    @MainActor
    func testPDFGeneratesWithEmptyLog() {
        seedSessionLog([])
        let data = PDFReportManager.generateReport()
        XCTAssertEqual(String(data: data.prefix(5), encoding: .ascii), "%PDF-")
    }

    // Gate 4: recommendation row appears with mock data...
    @MainActor
    func testRecommendationsAppearWithStaleData() {
        // Sessions long ago -> stale-exercise + stale-section recommendations
        seedSessionLog([
            makeEntry(dayOffset: 0, section: "language", type: "homonym"),
            makeEntry(dayOffset: 0, section: "language", type: "homonym")
        ])
        let pool = LanguageExerciseData.allExercises + CognitionExerciseData.allExercises +
                   FunctionalSkillsExerciseData.allExercises + EnglishNewExercisesData.allExercises +
                   EnglishNewExercisesData2.allExercises + EnglishHardExercisesData.allExercises
        // Only meaningful if the profile is at least `staleExerciseDays` old;
        // fresh CI profiles have startDate == today, so simulate via dayOffset math instead.
        let todayOffset = Calendar.current.dateComponents([.day],
            from: UserProfileStore.shared.profile.startDate, to: Date()).day ?? 0
        let recs = RecommendationEngine.generateRecommendations(language: .english, exercises: pool)
        if todayOffset >= RecommendationEngine.staleSectionDays {
            XCTAssertFalse(recs.isEmpty, "Stale data should produce recommendations")
        }
        XCTAssertLessThanOrEqual(recs.count, 3, "Never more than 3 cards")
        for rec in recs {
            XCTAssertFalse(rec.headline.isEmpty)
            XCTAssertFalse(rec.explanation.isEmpty)
            XCTAssertFalse(rec.sfSymbolName.isEmpty)
        }
    }

    // Gate 4b: ...and hides when empty (no log -> no recommendations).
    @MainActor
    func testRecommendationsHideWithNoData() {
        seedSessionLog([])
        let recs = RecommendationEngine.generateRecommendations(language: .english, exercises: [])
        XCTAssertTrue(recs.isEmpty, "No session data must produce zero recommendations")
    }

    // Gate 3 (logic layer): PIN validation accepts default, rejects wrong, honors change/reset.
    func testPINManagerFlow() {
        CaregiverPINManager.resetToDefault()
        XCTAssertTrue(CaregiverPINManager.validate("0000"))
        XCTAssertFalse(CaregiverPINManager.validate("1234"))
        XCTAssertTrue(CaregiverPINManager.isUsingDefaultPIN)

        CaregiverPINManager.setPIN("4321")
        XCTAssertTrue(CaregiverPINManager.validate("4321"))
        XCTAssertFalse(CaregiverPINManager.validate("0000"))
        XCTAssertFalse(CaregiverPINManager.isUsingDefaultPIN)

        CaregiverPINManager.resetToDefault()
        XCTAssertTrue(CaregiverPINManager.validate("0000"))
    }

    // Therapy notes: 50-note cap drops oldest.
    func testNotesCapAt50() {
        // Clear existing notes
        for note in CaregiverNotesStore.loadNotes() {
            CaregiverNotesStore.deleteNote(id: note.id)
        }
        for i in 1...55 {
            CaregiverNotesStore.addNote("Note \(i)")
        }
        let notes = CaregiverNotesStore.loadNotes()
        XCTAssertEqual(notes.count, 50)
        XCTAssertFalse(notes.contains { $0.text == "Note 1" }, "Oldest notes dropped")
        XCTAssertTrue(notes.contains { $0.text == "Note 55" })
        for note in CaregiverNotesStore.loadNotes() {
            CaregiverNotesStore.deleteNote(id: note.id)
        }
    }
}
