#if os(iOS)
import SwiftUI

/// F6 — cancellation task for visual scanning / left-neglect practice.
/// Test: tap targets in any order, timed. Practice: targets must be tapped in
/// reading order (left to right, top to bottom) with an optional pulsing marker
/// on the left edge as an anchor.
struct VisualScanningView: View {
    private enum Phase { case setup, playing, results }
    private enum Mode: Hashable { case test, practice }

    @ObservedObject private var languageManager = LanguageManager.shared
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    @State private var phase: Phase = .setup
    @State private var mode: Mode = .practice
    @State private var level = 1
    @State private var anchorOn = true

    @State private var grid: ScanGrid?
    @State private var found = Set<Int>()
    @State private var extraTaps = 0
    @State private var nextOrderIndex = 0
    @State private var shakeIndex: Int?
    @State private var startedAt = Date()
    @State private var result: ScanResult?
    @State private var pulse = false

    private var locale: Locale { Locale(identifier: SpeechOutput.bcp47(for: languageManager.currentLanguage)) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                switch phase {
                case .setup: setupView
                case .playing: if let grid { playView(grid) }
                case .results: if let result { resultsView(result) }
                }
            }
            .padding()
        }
        .navigationTitle(FS.scanTitle)
        .navigationBarTitleDisplayMode(.inline)
        .appBackground()
    }

    // MARK: - Setup

    private var setupView: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text(FS.scanSubtitle)
                .font(.headline)
                .foregroundColor(.secondary)

            Picker(FS.scanTitle, selection: $mode) {
                Text(FS.scanModePractice).tag(Mode.practice)
                Text(FS.scanModeTest).tag(Mode.test)
            }
            .pickerStyle(SegmentedPickerStyle())

            Picker(FS.scanTitle, selection: $level) {
                ForEach(1...3, id: \.self) { n in
                    Text(FS.scanLevel(Self.numeral(n, locale: locale))).tag(n)
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            if mode == .practice {
                Toggle(isOn: $anchorOn) {
                    Text(FS.scanAnchor).font(.body)
                }
            }

            Button(action: start) {
                Text(FS.startPractice)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 54)
                    .background(Color.accentColor)
                    .cornerRadius(14)
            }
        }
    }

    static func numeral(_ n: Int, locale: Locale) -> String {
        let f = NumberFormatter()
        f.locale = locale
        return f.string(from: NSNumber(value: n)) ?? "\(n)"
    }

    // MARK: - Play

    private func playView(_ grid: ScanGrid) -> some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 10) {
                Text(FS.scanFindThis).font(.headline)
                glyphView(grid.target, size: 30)
                    .accessibilityHidden(true)
                Spacer()
                if mode == .test {
                    Text(startedAt, style: .timer)
                        .font(.headline.monospacedDigit())
                        .accessibilityLabel(FS.scanTime)
                }
            }

            gridView(grid)

            HStack {
                Text(FS.scanFound(found.count, grid.targetsInReadingOrder.count))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Button(FS.done) { finish() }
                    .font(.headline)
                    .frame(minHeight: 44)
            }
        }
    }

    private func gridView(_ grid: ScanGrid) -> some View {
        // Reading order is fixed left→right even in right-to-left languages:
        // the task trains scanning from the left edge.
        let spacing: CGFloat = 6
        return HStack(spacing: 8) {
            if mode == .practice && anchorOn {
                Capsule()
                    .fill(Color.orange)
                    .frame(width: 8)
                    .opacity(reduceMotion ? 1 : (pulse ? 1 : 0.15))
                    .overlay(alignment: .top) {
                        Image(systemName: "arrow.right")
                            .font(.caption.bold())
                            .foregroundColor(.orange)
                            .offset(y: -18)
                            .accessibilityHidden(true)
                    }
                    .onAppear {
                        guard !reduceMotion else { return }
                        withAnimation(.easeInOut(duration: 0.7).repeatForever(autoreverses: true)) { pulse = true }
                    }
                    .accessibilityHidden(true)
            }
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(minimum: 36), spacing: spacing), count: grid.columns),
                      spacing: spacing) {
                ForEach(grid.cells.indices, id: \.self) { i in
                    cellView(grid, i)
                }
            }
            .frame(maxWidth: .infinity)
            .environment(\.layoutDirection, .leftToRight)
        }
    }

    private func cellView(_ grid: ScanGrid, _ i: Int) -> some View {
        let cell = grid.cells[i]
        let isFound = found.contains(i)
        return Button { tap(i, in: grid) } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(isFound ? Color.green.opacity(0.18) : Color.secondaryGroupedBackground)
                glyphView(cell.glyph, size: 26)
                    .opacity(isFound ? 0.35 : 1)
                if isFound {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .font(.title3)
                }
            }
            .frame(minHeight: 44)
            .aspectRatio(1, contentMode: .fit)
            .offset(x: shakeIndex == i ? 6 : 0)
            .animation(.default.repeatCount(3, autoreverses: true).speed(6), value: shakeIndex)
        }
        .buttonStyle(.plain)
        .accessibilityLabel(isFound ? "✓" : "\(i / grid.columns + 1), \(i % grid.columns + 1)")
        .disabled(isFound)
    }

    @ViewBuilder
    private func glyphView(_ glyph: ScanGlyph, size: CGFloat) -> some View {
        switch glyph {
        case .symbol(let name):
            Image(systemName: name).font(.system(size: size)).foregroundColor(.primary)
        case .text(let t):
            Text(t).font(.system(size: size, weight: .bold, design: .rounded)).foregroundColor(.primary)
        }
    }

    // MARK: - Results

    private func resultsView(_ r: ScanResult) -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(FS.scanFound(r.found, r.total))
                .font(.title2.weight(.bold))

            // Laid out like the screen: top row, bottom row; left, right.
            Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                GridRow {
                    quadrantCard(.topLeft, r)
                    quadrantCard(.topRight, r)
                }
                GridRow {
                    quadrantCard(.bottomLeft, r)
                    quadrantCard(.bottomRight, r)
                }
            }
            .environment(\.layoutDirection, .leftToRight)

            HStack {
                if mode == .test {
                    Label("\(FS.scanTime): \(Self.clock(r.seconds, locale: locale))", systemImage: "stopwatch")
                }
                Spacer()
                Label(FS.scanExtraTaps(Self.numeral(r.extraTaps, locale: locale)), systemImage: "hand.tap")
            }
            .font(.subheadline)

            Button(action: { phase = .setup }) {
                Text(FS.startPractice)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 54)
                    .background(Color.accentColor)
                    .cornerRadius(14)
            }
        }
    }

    private func quadrantCard(_ q: ScanQuadrant, _ r: ScanResult) -> some View {
        let stat = r.perQuadrant[q] ?? .init(found: 0, total: 0)
        let name: String
        switch q {
        case .topLeft: name = FS.scanTopLeft
        case .topRight: name = FS.scanTopRight
        case .bottomLeft: name = FS.scanBottomLeft
        case .bottomRight: name = FS.scanBottomRight
        }
        let pct = stat.total == 0 ? 0 : Double(stat.found) / Double(stat.total)
        let pf = NumberFormatter()
        pf.locale = locale
        pf.numberStyle = .percent
        return VStack(spacing: 6) {
            Text(name).font(.caption).foregroundColor(.secondary)
            Text(pf.string(from: NSNumber(value: pct)) ?? "")
                .font(.system(.title, design: .rounded).weight(.bold))
            Text(FS.scanFound(stat.found, stat.total)).font(.caption)
        }
        .frame(maxWidth: .infinity, minHeight: 90)
        .background(Color.secondaryGroupedBackground)
        .cornerRadius(12)
        .accessibilityElement(children: .combine)
    }

    static func clock(_ seconds: Int, locale: Locale) -> String {
        let two = NumberFormatter()
        two.locale = locale
        two.minimumIntegerDigits = 2
        let one = NumberFormatter()
        one.locale = locale
        return "\(one.string(from: NSNumber(value: seconds / 60)) ?? "0"):\(two.string(from: NSNumber(value: seconds % 60)) ?? "00")"
    }

    // MARK: - Logic

    private func start() {
        var rng = SystemRandomNumberGenerator()
        grid = ScanGridGenerator.make(level: level, using: &rng)
        found = []
        extraTaps = 0
        nextOrderIndex = 0
        startedAt = Date()
        pulse = false
        phase = .playing
    }

    private func tap(_ i: Int, in grid: ScanGrid) {
        let cell = grid.cells[i]
        guard cell.isTarget else {
            extraTaps += 1
            UINotificationFeedbackGenerator().notificationOccurred(.warning)
            return
        }
        let order = grid.targetsInReadingOrder
        if mode == .practice, i != order[nextOrderIndex] {
            // Out of order: gentle nudge, no penalty.
            shakeIndex = i
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { shakeIndex = nil }
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
            return
        }
        found.insert(i)
        nextOrderIndex += 1
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
        if found.count == order.count { finish() }
    }

    private func finish() {
        guard let grid else { return }
        let seconds = Int(Date().timeIntervalSince(startedAt))
        result = ScanResult.compute(grid: grid, foundIndexes: found, extraTaps: extraTaps, seconds: seconds)
        UserProfileStore.shared.recordCompletion(on: Date())
        NotificationManager.shared.rescheduleAll()
        WidgetSnapshotWriter.refresh()
        phase = .results
    }
}
#endif
