import Foundation

/// F6 — visual scanning / cancellation task. Language-light: shapes and digits.
/// Pure model + generator so quadrant maths and reading order are unit-tested.

enum ScanGlyph: Hashable {
    case symbol(String)   // SF Symbol name
    case text(String)     // a digit
}

enum ScanQuadrant: Int, CaseIterable {
    case topLeft, topRight, bottomLeft, bottomRight
}

struct ScanCell: Equatable {
    let glyph: ScanGlyph
    let isTarget: Bool
}

struct ScanGrid: Equatable {
    let columns: Int
    let rows: Int
    let cells: [ScanCell]
    let target: ScanGlyph

    func quadrant(of index: Int) -> ScanQuadrant {
        let row = index / columns, col = index % columns
        let top = row < (rows + 1) / 2
        let left = col < (columns + 1) / 2
        switch (top, left) {
        case (true, true): return .topLeft
        case (true, false): return .topRight
        case (false, true): return .bottomLeft
        case (false, false): return .bottomRight
        }
    }

    /// Target indexes in reading order (left to right, top to bottom).
    var targetsInReadingOrder: [Int] {
        cells.indices.filter { cells[$0].isTarget }
    }
}

enum ScanGridGenerator {
    static let columns = 6
    static let rows = 8

    /// Level 1: clearly different shapes. Level 2: similar circles. Level 3:
    /// look-alike digits.
    static func glyphs(level: Int) -> (target: ScanGlyph, distractors: [ScanGlyph]) {
        switch level {
        case 1:
            return (.symbol("star.fill"),
                    [.symbol("circle.fill"), .symbol("square.fill"), .symbol("triangle.fill"), .symbol("diamond.fill")])
        case 2:
            return (.symbol("circle.inset.filled"),
                    [.symbol("circle"), .symbol("circle.fill"), .symbol("circle.dashed"), .symbol("circle.dotted")])
        default:
            return (.text("6"), [.text("9"), .text("8"), .text("0"), .text("5"), .text("3")])
        }
    }

    /// 12 targets, at least 2 in every quadrant, the rest distractors.
    static func make<G: RandomNumberGenerator>(level: Int, using rng: inout G) -> ScanGrid {
        let g = glyphs(level: level)
        let total = columns * rows
        let template = ScanGrid(columns: columns, rows: rows,
                                cells: Array(repeating: ScanCell(glyph: g.target, isTarget: false), count: total),
                                target: g.target)
        var chosen = Set<Int>()
        for q in ScanQuadrant.allCases {
            let inQuadrant = (0..<total).filter { template.quadrant(of: $0) == q }.shuffled(using: &rng)
            chosen.formUnion(inQuadrant.prefix(3))
        }
        let rest = (0..<total).filter { !chosen.contains($0) }.shuffled(using: &rng)
        chosen.formUnion(rest.prefix(12 - chosen.count))
        let cells = (0..<total).map { i -> ScanCell in
            chosen.contains(i)
                ? ScanCell(glyph: g.target, isTarget: true)
                : ScanCell(glyph: g.distractors.randomElement(using: &rng)!, isTarget: false)
        }
        return ScanGrid(columns: columns, rows: rows, cells: cells, target: g.target)
    }
}

struct ScanResult: Equatable {
    struct QuadrantStat: Equatable { let found: Int; let total: Int }
    let perQuadrant: [ScanQuadrant: QuadrantStat]
    let extraTaps: Int
    let seconds: Int

    var found: Int { perQuadrant.values.reduce(0) { $0 + $1.found } }
    var total: Int { perQuadrant.values.reduce(0) { $0 + $1.total } }

    static func compute(grid: ScanGrid, foundIndexes: Set<Int>, extraTaps: Int, seconds: Int) -> ScanResult {
        var stats: [ScanQuadrant: QuadrantStat] = [:]
        for q in ScanQuadrant.allCases {
            let targets = grid.targetsInReadingOrder.filter { grid.quadrant(of: $0) == q }
            stats[q] = QuadrantStat(found: targets.filter(foundIndexes.contains).count, total: targets.count)
        }
        return ScanResult(perQuadrant: stats, extraTaps: extraTaps, seconds: seconds)
    }
}
