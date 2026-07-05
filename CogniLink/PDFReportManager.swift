#if os(iOS)
import Foundation
import UIKit
import PDFKit

/// Builds a clinical-grade PDF progress report entirely on-device.
/// All methods are static; no instance is ever created.
struct PDFReportManager {

    // US Letter, 1" ≈ 72pt
    private static let pageRect = CGRect(x: 0, y: 0, width: 612, height: 792)
    private static let margin: CGFloat = 54
    private static let contentWidth: CGFloat = 612 - 54 * 2
    private static let footerY: CGFloat = 792 - 40

    // MARK: - Fonts

    private static let titleFont    = UIFont.systemFont(ofSize: 26, weight: .bold)
    private static let headingFont  = UIFont.systemFont(ofSize: 15, weight: .semibold)
    private static let bodyFont     = UIFont.systemFont(ofSize: 11, weight: .regular)
    private static let bodyBoldFont = UIFont.systemFont(ofSize: 11, weight: .semibold)
    private static let smallFont    = UIFont.systemFont(ofSize: 9, weight: .regular)

    // MARK: - Public API

    /// Suggested filename: Clarity_Report_[FirstName]_[Date].pdf, or Clarity_Report_[Date].pdf if no name.
    @MainActor
    static func suggestedFilename() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dateString = formatter.string(from: Date())
        let name = UserProfileStore.shared.profile.name.trimmingCharacters(in: .whitespacesAndNewlines)
        if let first = name.split(separator: " ").first, !first.isEmpty {
            let safe = first.filter { $0.isLetter || $0.isNumber }
            if !safe.isEmpty {
                return "Clarity_Report_\(safe)_\(dateString).pdf"
            }
        }
        return "Clarity_Report_\(dateString).pdf"
    }

    /// Generates the full report and returns it as PDF Data.
    @MainActor
    static func generateReport() -> Data {
        let profile = UserProfileStore.shared.profile
        let sessionLog = loadSessionLog()
        let plays = UserDefaults.standard.dictionary(forKey: "CogniLink_ExercisePlays") as? [String: Int] ?? [:]

        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = [
            kCGPDFContextTitle as String: "Clarity: Language & Memory — Progress Report",
            kCGPDFContextCreator as String: "Clarity: Language & Memory"
        ]
        let renderer = UIGraphicsPDFRenderer(bounds: pageRect, format: format)

        var pageNumber = 0
        var cursorY: CGFloat = margin

        let data = renderer.pdfData { context in

            func beginPage() {
                context.beginPage()
                pageNumber += 1
                drawFooter(pageNumber: pageNumber)
                cursorY = margin
            }

            func ensureSpace(_ needed: CGFloat) {
                if cursorY + needed > footerY - 12 {
                    beginPage()
                }
            }

            func drawText(_ string: String, font: UIFont, color: UIColor = .black, indent: CGFloat = 0, spacingAfter: CGFloat = 4) {
                let attrs: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: color]
                let maxWidth = contentWidth - indent
                let bounds = (string as NSString).boundingRect(
                    with: CGSize(width: maxWidth, height: .greatestFiniteMagnitude),
                    options: [.usesLineFragmentOrigin, .usesFontLeading],
                    attributes: attrs, context: nil)
                ensureSpace(bounds.height + spacingAfter)
                (string as NSString).draw(
                    with: CGRect(x: margin + indent, y: cursorY, width: maxWidth, height: ceil(bounds.height)),
                    options: [.usesLineFragmentOrigin, .usesFontLeading],
                    attributes: attrs, context: nil)
                cursorY += ceil(bounds.height) + spacingAfter
            }

            func drawHeading(_ string: String) {
                ensureSpace(40)
                cursorY += 10
                drawText(string, font: headingFont, spacingAfter: 2)
                let line = UIBezierPath()
                line.move(to: CGPoint(x: margin, y: cursorY))
                line.addLine(to: CGPoint(x: margin + contentWidth, y: cursorY))
                UIColor.black.setStroke()
                line.lineWidth = 0.8
                line.stroke()
                cursorY += 8
            }

            func drawKeyValue(_ key: String, _ value: String) {
                ensureSpace(16)
                let keyAttrs: [NSAttributedString.Key: Any] = [.font: bodyBoldFont, .foregroundColor: UIColor.black]
                let valAttrs: [NSAttributedString.Key: Any] = [.font: bodyFont, .foregroundColor: UIColor.black]
                (key as NSString).draw(at: CGPoint(x: margin, y: cursorY), withAttributes: keyAttrs)
                (value as NSString).draw(at: CGPoint(x: margin + 200, y: cursorY), withAttributes: valAttrs)
                cursorY += 16
            }

            /// Accuracy bar drawn with plain filled rectangles.
            func drawAccuracyBar(fraction: Double, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
                let track = UIBezierPath(rect: CGRect(x: x, y: y, width: width, height: height))
                UIColor(white: 0.88, alpha: 1).setFill()
                track.fill()
                let clamped = max(0, min(1, fraction))
                let fill = UIBezierPath(rect: CGRect(x: x, y: y, width: width * CGFloat(clamped), height: height))
                UIColor(white: 0.25, alpha: 1).setFill()
                fill.fill()
            }

            // ═══════════ Cover Page ═══════════
            beginPage()
            cursorY = 180

            drawText("Clarity: Language & Memory", font: titleFont, spacingAfter: 6)
            drawText("Progress Report", font: UIFont.systemFont(ofSize: 18, weight: .medium), spacingAfter: 30)

            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            let today = Date()

            let patientName = profile.name.trimmingCharacters(in: .whitespacesAndNewlines)
            drawKeyValue("Patient", patientName.isEmpty ? "Patient" : patientName)
            if let diagnosis = profile.diagnosisType {
                drawKeyValue("Diagnosis", diagnosis.rawValue)
            }
            drawKeyValue("Report generated", dateFormatter.string(from: today))

            let dayOffsets = sessionLog.compactMap { $0["dayOffset"] as? Int }
            let calendar = Calendar.current
            if let firstOffset = dayOffsets.min(), let lastOffset = dayOffsets.max(),
               let firstDate = calendar.date(byAdding: .day, value: firstOffset, to: profile.startDate),
               let lastDate = calendar.date(byAdding: .day, value: lastOffset, to: profile.startDate) {
                drawKeyValue("Date range covered", "\(dateFormatter.string(from: firstDate)) – \(dateFormatter.string(from: lastDate))")
            } else {
                drawKeyValue("Date range covered", "No sessions recorded yet")
            }

            let daysUsing = (calendar.dateComponents([.day], from: profile.startDate, to: today).day ?? 0) + 1
            drawKeyValue("Total days using app", "\(daysUsing)")

            // ═══════════ Summary ═══════════
            beginPage()
            drawHeading("Summary")

            let totalSessions = plays.values.reduce(0, +)
            let totalItems = sessionLog.compactMap { $0["total"] as? Int }.reduce(0, +)
            let firstTryCorrect = sessionLog.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
            let scoreSum = sessionLog.compactMap { $0["score"] as? Int }.reduce(0, +)

            drawKeyValue("Total sessions completed", "\(totalSessions)")
            drawKeyValue("Overall accuracy (all time)", totalItems > 0 ? "\(Int(Double(scoreSum) / Double(totalItems) * 100))%" : "No data")
            drawKeyValue("Current streak", "\(profile.currentStreak) day\(profile.currentStreak == 1 ? "" : "s")")
            drawKeyValue("Longest streak", "\(profile.longestStreak) day\(profile.longestStreak == 1 ? "" : "s")")
            drawKeyValue("First-try accuracy rate", totalItems > 0 ? "\(Int(Double(firstTryCorrect) / Double(totalItems) * 100))%" : "No data")
            drawKeyValue("Total exercises attempted", "\(UserProgressStore.shared.getTotalAttempts())")

            // Most practiced section
            let sectionCounts = Dictionary(grouping: sessionLog, by: { ($0["section"] as? String) ?? "unknown" })
                .mapValues { $0.count }
            if let topSection = sectionCounts.max(by: { $0.value < $1.value }) {
                drawKeyValue("Most practiced section", sectionDisplayName(topSection.key))
            }

            // Strongest / weakest exercise type (require at least 2 sessions of a type)
            let typeGroups = Dictionary(grouping: sessionLog, by: { ($0["exerciseType"] as? String) ?? "unknown" })
            var typeAccuracies: [(type: String, accuracy: Double)] = []
            for (type, entries) in typeGroups where entries.count >= 2 {
                let correct = entries.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
                let total = entries.compactMap { $0["total"] as? Int }.reduce(0, +)
                if total > 0 {
                    typeAccuracies.append((type, Double(correct) / Double(total)))
                }
            }
            if let strongest = typeAccuracies.max(by: { $0.accuracy < $1.accuracy }) {
                drawKeyValue("Strongest exercise type", "\(exerciseTypeDisplayName(strongest.type)) (\(Int(strongest.accuracy * 100))%)")
            }
            if let weakest = typeAccuracies.min(by: { $0.accuracy < $1.accuracy }) {
                drawKeyValue("Area needing most practice", "\(exerciseTypeDisplayName(weakest.type)) (\(Int(weakest.accuracy * 100))%)")
            }

            // ═══════════ Per-Section Breakdown ═══════════
            drawHeading("Per-Section Breakdown")
            for sectionKey in ["language", "cognition", "functionalSkills"] {
                let entries = sessionLog.filter { ($0["section"] as? String) == sectionKey }
                let correct = entries.compactMap { $0["firstTryCorrect"] as? Int }.reduce(0, +)
                let total = entries.compactMap { $0["total"] as? Int }.reduce(0, +)
                let accuracy: Double? = total > 0 ? Double(correct) / Double(total) : nil

                ensureSpace(24)
                let name = sectionDisplayName(sectionKey)
                (name as NSString).draw(at: CGPoint(x: margin, y: cursorY), withAttributes: [.font: bodyBoldFont, .foregroundColor: UIColor.black])
                let sessionsText = "\(entries.count) session\(entries.count == 1 ? "" : "s")"
                (sessionsText as NSString).draw(at: CGPoint(x: margin + 130, y: cursorY), withAttributes: [.font: bodyFont, .foregroundColor: UIColor.black])
                let pctText = accuracy.map { "\(Int($0 * 100))%" } ?? "—"
                (pctText as NSString).draw(at: CGPoint(x: margin + 230, y: cursorY), withAttributes: [.font: bodyFont, .foregroundColor: UIColor.black])
                drawAccuracyBar(fraction: accuracy ?? 0, x: margin + 280, y: cursorY + 2, width: 200, height: 9)
                cursorY += 22
            }

            // ═══════════ Difficulty Progression ═══════════
            drawHeading("Difficulty Progression")
            let trackedExercises: [(id: String, name: String)] = [
                ("homonym", "Homonyms"),
                ("analogyChoice", "Analogies"),
                ("wordassociation", "Word Association"),
                ("sentencecompletion", "Sentence Completion"),
                ("sequencing", "Sequencing"),
                ("causeeffect", "Cause and Effect"),
                ("whatswrong", "What's Wrong Here?"),
                ("completesaying", "Complete the Saying")
            ]
            for tracked in trackedExercises {
                let current = AdaptiveDifficultyStore.shared.currentDifficulty(for: tracked.id)
                let movement: String
                switch current {
                case .easy:   movement = "Stayed the same"
                case .medium: movement = "Moved up"
                case .hard:   movement = "Moved up"
                }
                ensureSpace(16)
                (tracked.name as NSString).draw(at: CGPoint(x: margin, y: cursorY), withAttributes: [.font: bodyBoldFont, .foregroundColor: UIColor.black])
                (current.rawValue.capitalized as NSString).draw(at: CGPoint(x: margin + 200, y: cursorY), withAttributes: [.font: bodyFont, .foregroundColor: UIColor.black])
                (movement as NSString).draw(at: CGPoint(x: margin + 300, y: cursorY), withAttributes: [.font: bodyFont, .foregroundColor: UIColor.black])
                cursorY += 16
            }
            drawText("Note: all exercises begin at Easy difficulty. \"Moved up\" reflects the current level relative to that starting point.",
                     font: smallFont, color: .darkGray, spacingAfter: 4)

            // ═══════════ Recent Session History ═══════════
            drawHeading("Recent Session History (last 20 sessions)")
            let columns: [(title: String, x: CGFloat)] = [
                ("Day", 0), ("Section", 45), ("Exercise Type", 140), ("Score", 275), ("Accuracy", 330), ("Difficulty", 400)
            ]
            ensureSpace(18)
            for col in columns {
                (col.title as NSString).draw(at: CGPoint(x: margin + col.x, y: cursorY), withAttributes: [.font: bodyBoldFont, .foregroundColor: UIColor.black])
            }
            cursorY += 16

            let recent = sessionLog.suffix(20).reversed()
            if recent.isEmpty {
                drawText("No sessions recorded yet.", font: bodyFont)
            }
            for entry in recent {
                ensureSpace(14)
                let day = (entry["dayOffset"] as? Int).map { "\($0)" } ?? "—"
                let section = sectionDisplayName((entry["section"] as? String) ?? "")
                let type = exerciseTypeDisplayName((entry["exerciseType"] as? String) ?? "")
                let score = entry["score"] as? Int ?? 0
                let total = entry["total"] as? Int ?? 0
                let scoreText = "\(score)/\(total)"
                let accText = total > 0 ? "\(Int(Double(score) / Double(total) * 100))%" : "—"
                let diff = ((entry["difficulty"] as? String) ?? "—").capitalized

                let values = [day, section, type, scoreText, accText, diff]
                for (i, col) in columns.enumerated() {
                    (values[i] as NSString).draw(at: CGPoint(x: margin + col.x, y: cursorY), withAttributes: [.font: bodyFont, .foregroundColor: UIColor.black])
                }
                cursorY += 14
            }

            // ═══════════ Therapy Notes ═══════════
            let notes = CaregiverNotesStore.loadNotes()
            if !notes.isEmpty {
                drawHeading("Therapy Notes")
                let noteFormatter = DateFormatter()
                noteFormatter.dateStyle = .medium
                noteFormatter.timeStyle = .short
                for note in notes.sorted(by: { $0.date > $1.date }) {
                    drawText(noteFormatter.string(from: note.date), font: bodyBoldFont, spacingAfter: 2)
                    drawText(note.text, font: bodyFont, spacingAfter: 10)
                }
            }
        }
        return data
    }

    // MARK: - Footer

    private static func drawFooter(pageNumber: Int) {
        let attrs: [NSAttributedString.Key: Any] = [.font: smallFont, .foregroundColor: UIColor.darkGray]
        ("Generated by Clarity: Language & Memory" as NSString)
            .draw(at: CGPoint(x: margin, y: footerY), withAttributes: attrs)
        let pageText = "Page \(pageNumber)" as NSString
        let pageSize = pageText.size(withAttributes: attrs)
        pageText.draw(at: CGPoint(x: pageRect.width - margin - pageSize.width, y: footerY), withAttributes: attrs)
        ("All data is stored locally on this device" as NSString)
            .draw(at: CGPoint(x: margin, y: footerY + 11), withAttributes: attrs)
    }

    // MARK: - Helpers

    private static func loadSessionLog() -> [[String: Any]] {
        let raw = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) ?? []
        if let data = try? JSONSerialization.data(withJSONObject: raw),
           let cleaned = try? JSONSerialization.jsonObject(with: data) as? [[String: Any]] {
            return cleaned
        }
        return []
    }

    static func sectionDisplayName(_ key: String) -> String {
        switch key {
        case "language":         return "Language"
        case "cognition":        return "Cognition"
        case "functionalSkills": return "Functional Skills"
        default:                 return key
        }
    }

    static func exerciseTypeDisplayName(_ key: String) -> String {
        switch key {
        case "categoryCrossOut":   return "Category Cross-Out"
        case "multipleChoice":     return "Multiple Choice"
        case "comparison":         return "Comparison"
        case "yesNo":              return "Yes / No"
        case "factOrOpinion":      return "Fact or Opinion"
        case "openEnded":          return "Open Ended"
        case "sentenceCompletion": return "Sentence Completion"
        case "homonym":            return "Homonyms"
        case "matching":           return "Matching"
        case "sequencing":         return "Sequencing"
        case "analogyChoice":      return "Analogies"
        case "minimalPairs":       return "Minimal Pairs"
        default:                   return key
        }
    }
}
#endif
