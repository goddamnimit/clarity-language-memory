#if os(iOS)
import SwiftUI

/// Full session history for caregivers: filterable list, accuracy trend line
/// (plain SwiftUI Path — no Charts dependency), and PDF export.
struct CaregiverProgressView: View {
    @ObservedObject private var languageManager = LanguageManager.shared

    private enum DateRangeFilter: String, CaseIterable, Identifiable {
        case allTime, last30, last7
        var id: String { rawValue }
    }

    @State private var sessionLog: [[String: Any]] = []
    @State private var sectionFilter: String = "all"
    @State private var typeFilter: String = "all"
    @State private var dateFilter: DateRangeFilter = .allTime
    @State private var showShareSheet = false
    @State private var exportURL: URL? = nil

    // MARK: - Filtering

    private var todayOffset: Int {
        Calendar.current.dateComponents([.day],
            from: UserProfileStore.shared.profile.startDate, to: Date()).day ?? 0
    }

    private var availableTypes: [String] {
        Array(Set(sessionLog.compactMap { $0["exerciseType"] as? String })).sorted()
    }

    private var filteredLog: [[String: Any]] {
        sessionLog.filter { entry in
            if sectionFilter != "all", (entry["section"] as? String) != sectionFilter { return false }
            if typeFilter != "all", (entry["exerciseType"] as? String) != typeFilter { return false }
            let dayOffset = entry["dayOffset"] as? Int ?? 0
            switch dateFilter {
            case .allTime: return true
            case .last30:  return todayOffset - dayOffset <= 30
            case .last7:   return todayOffset - dayOffset <= 7
            }
        }
    }

    private var accuracyPoints: [Double] {
        filteredLog.compactMap { entry in
            guard let total = entry["total"] as? Int, total > 0,
                  let score = entry["score"] as? Int else { return nil }
            return Double(score) / Double(total)
        }
    }

    /// Spoken equivalent of the trend line's shape, for VoiceOver users who
    /// get nothing at all from the drawn Path.
    private var trendAccessibilityValue: String {
        guard let first = accuracyPoints.first, let last = accuracyPoints.last else {
            return languageManager.currentLanguage.cgNoData
        }
        let firstPct = Int((first * 100).rounded())
        let lastPct  = Int((last * 100).rounded())
        let direction: String
        if lastPct > firstPct { direction = "rising" }
        else if lastPct < firstPct { direction = "falling" }
        else { direction = "flat" }
        return "Started at \(firstPct) percent, now \(lastPct) percent, \(direction), across \(accuracyPoints.count) sessions"
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                // Filters
                VStack(spacing: 10) {
                    Picker(languageManager.currentLanguage.cgAll, selection: $sectionFilter) {
                        Text(languageManager.currentLanguage.cgAll).tag("all")
                        Text(PDFReportManager.sectionDisplayName("language")).tag("language")
                        Text(PDFReportManager.sectionDisplayName("cognition")).tag("cognition")
                        Text(PDFReportManager.sectionDisplayName("functionalSkills")).tag("functionalSkills")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .accessibilityLabel("Section filter")

                    HStack {
                        Picker("", selection: $typeFilter) {
                            Text(languageManager.currentLanguage.cgAll).tag("all")
                            ForEach(availableTypes, id: \.self) { type in
                                Text(PDFReportManager.exerciseTypeDisplayName(type)).tag(type)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .labelsHidden()
                        .accessibilityLabel("Exercise type filter")

                        Spacer()

                        Picker("", selection: $dateFilter) {
                            Text(languageManager.currentLanguage.cgAll).tag(DateRangeFilter.allTime)
                            Text(languageManager.currentLanguage.cgLast30Days).tag(DateRangeFilter.last30)
                            Text(languageManager.currentLanguage.cgLast7Days).tag(DateRangeFilter.last7)
                        }
                        .pickerStyle(MenuPickerStyle())
                        .labelsHidden()
                        .accessibilityLabel("Date range filter")
                    }
                }
                .padding(.horizontal)

                // Accuracy trend line
                VStack(alignment: .leading, spacing: 8) {
                    Text(languageManager.currentLanguage.cgAccuracyTrend)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    if accuracyPoints.count >= 2 {
                        trendLine
                            .frame(height: 120)
                            // Hand-rolled Path/Circle chart — entirely silent
                            // to VoiceOver, so the whole trend card conveyed
                            // nothing. Collapse it to one element carrying a
                            // spoken summary (direction stated as words, not
                            // implied by slope).
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel(languageManager.currentLanguage.cgAccuracyTrend)
                            .accessibilityValue(trendAccessibilityValue)
                    } else {
                        Text(languageManager.currentLanguage.cgNoData)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, minHeight: 80)
                    }
                }
                .padding()
                .background(Color.secondaryGroupedBackground)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                .padding(.horizontal)

                // Export PDF
                Button(action: exportPDF) {
                    HStack {
                        Image(systemName: "doc.richtext")
                            .foregroundColor(.blue)
                            .accessibilityHidden(true)
                        Text(languageManager.currentLanguage.cgExportPDF)
                            .foregroundColor(.blue)
                        Spacer()
                    }
                    .padding()
                    .frame(minHeight: 50)
                    .background(Color.secondaryGroupedBackground)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                }
                .buttonStyle(PlainButtonStyle())
                .accessibilityLabel(languageManager.currentLanguage.cgExportPDF)
                .accessibilityHint("Creates a PDF progress report to share")
                .padding(.horizontal)

                // Session history list
                VStack(alignment: .leading, spacing: 12) {
                    Text(languageManager.currentLanguage.cgSessionHistory)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)

                    if filteredLog.isEmpty {
                        Text(languageManager.currentLanguage.cgNoData)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.horizontal)
                    } else {
                        VStack(spacing: 0) {
                            let rows = Array(filteredLog.reversed().enumerated())
                            ForEach(rows, id: \.offset) { pair in
                                sessionRow(pair.element)
                                if pair.offset != rows.count - 1 {
                                    Divider().padding(.leading, 16)
                                }
                            }
                        }
                        .background(Color.secondaryGroupedBackground)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.04), radius: 3, x: 0, y: 1)
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
        .navigationTitle(languageManager.currentLanguage.cgProgressDetail)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.groupedBackground.ignoresSafeArea())
        .onAppear { loadLog() }
        .sheet(isPresented: $showShareSheet) {
            if let url = exportURL {
                ShareSheet(items: [url])
            }
        }
    }

    // MARK: - Trend Line (plain Path, dots connected)

    private var trendLine: some View {
        GeometryReader { geo in
            let points = accuracyPoints
            let stepX = geo.size.width / CGFloat(max(points.count - 1, 1))

            ZStack {
                // Gridlines at 0%, 50%, 100%
                ForEach([0.0, 0.5, 1.0], id: \.self) { level in
                    Path { path in
                        let y = geo.size.height * CGFloat(1 - level)
                        path.move(to: CGPoint(x: 0, y: y))
                        path.addLine(to: CGPoint(x: geo.size.width, y: y))
                    }
                    .stroke(Color.secondary.opacity(0.2), style: StrokeStyle(lineWidth: 0.5, dash: [3]))
                }

                Path { path in
                    for (index, value) in points.enumerated() {
                        let point = CGPoint(
                            x: CGFloat(index) * stepX,
                            y: geo.size.height * CGFloat(1 - value))
                        if index == 0 {
                            path.move(to: point)
                        } else {
                            path.addLine(to: point)
                        }
                    }
                }
                .stroke(Color.accentColor, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))

                ForEach(Array(points.enumerated()), id: \.offset) { index, value in
                    Circle()
                        .fill(Color.accentColor)
                        .frame(width: 5, height: 5)
                        .position(
                            x: CGFloat(index) * stepX,
                            y: geo.size.height * CGFloat(1 - value))
                }
            }
        }
    }

    // MARK: - Session Row

    @ViewBuilder
    private func sessionRow(_ entry: [String: Any]) -> some View {
        let score = entry["score"] as? Int ?? 0
        let total = entry["total"] as? Int ?? 0
        let accuracy = total > 0 ? Int(Double(score) / Double(total) * 100) : 0
        let dayOffset = entry["dayOffset"] as? Int ?? 0
        let date = Calendar.current.date(byAdding: .day, value: dayOffset,
                                         to: UserProfileStore.shared.profile.startDate)

        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 3) {
                Text(PDFReportManager.exerciseTypeDisplayName((entry["exerciseType"] as? String) ?? ""))
                    .font(.subheadline)
                    .fontWeight(.medium)
                HStack(spacing: 6) {
                    if let date {
                        Text(date, style: .date)
                    }
                    Text("· \(PDFReportManager.sectionDisplayName((entry["section"] as? String) ?? ""))")
                    Text("· \(((entry["difficulty"] as? String) ?? "").capitalized)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 3) {
                Text("\(score)/\(total)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("\(accuracy)%")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        // Otherwise ~6 fragments per row, including the "·" separators read
        // aloud as "middle dot" and "8/10" read as "8 slash 10".
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(
            "\(PDFReportManager.exerciseTypeDisplayName((entry["exerciseType"] as? String) ?? "")), "
            + "\(PDFReportManager.sectionDisplayName((entry["section"] as? String) ?? "")), "
            + "\(((entry["difficulty"] as? String) ?? "").capitalized)"
        )
        .accessibilityValue("Score \(score) of \(total), \(accuracy) percent")
    }

    // MARK: - Data

    private func loadLog() {
        let raw = UserDefaults.standard.array(forKey: ResearchExportManager.sessionLogKey) ?? []
        if let data = try? JSONSerialization.data(withJSONObject: raw),
           let cleaned = try? JSONSerialization.jsonObject(with: data) as? [[String: Any]] {
            sessionLog = cleaned
        } else {
            sessionLog = []
        }
    }

    private func exportPDF() {
        let data = PDFReportManager.generateReport()
        let url = FileManager.default.temporaryDirectory
            .appendingPathComponent(PDFReportManager.suggestedFilename())
        do {
            try data.write(to: url, options: .atomic)
            exportURL = url
            showShareSheet = true
        } catch {
            print("[CaregiverProgress] ERROR: PDF write failed: \(error)")
        }
    }
}
#endif
