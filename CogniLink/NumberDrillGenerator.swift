import Foundation

/// F4 — Number skills. Questions are generated algorithmically (nothing to
/// translate) and rendered with locale-aware formatters, so the same logic
/// serves all 16 languages. The text shown is also the text that is spoken.

enum NumberCategory: String, CaseIterable, Identifiable {
    case time, price, phone, date, count
    var id: String { rawValue }
}

struct NumberQuestion: Equatable {
    let category: NumberCategory
    /// What is displayed and spoken, already locale-formatted.
    let text: String
    /// What the TTS voice should read (digit-by-digit for phone numbers).
    let spoken: String
    /// Digits of `text` as ASCII; the typed-answer check compares against this.
    let digits: String
    /// Wrong answers, already formatted, all different from `text`.
    let distractors: [String]
}

/// Small deterministic generator so tests are reproducible.
struct SplitMix64: RandomNumberGenerator {
    private var state: UInt64
    init(seed: UInt64) { state = seed }
    mutating func next() -> UInt64 {
        state &+= 0x9E3779B97F4A7C15
        var z = state
        z = (z ^ (z >> 30)) &* 0xBF58476D1CE4E5B9
        z = (z ^ (z >> 27)) &* 0x94D049BB133111EB
        return z ^ (z >> 31)
    }
}

enum NumberDrillGenerator {

    // MARK: - Public

    static func make<G: RandomNumberGenerator>(
        _ category: NumberCategory,
        locale: Locale,
        personalPhone: String? = nil,
        using rng: inout G
    ) -> NumberQuestion {
        switch category {
        case .time: return time(locale: locale, using: &rng)
        case .price: return price(locale: locale, using: &rng)
        case .phone: return phone(locale: locale, personal: personalPhone, using: &rng)
        case .date: return date(locale: locale, using: &rng)
        case .count: return count(locale: locale, using: &rng)
        }
    }

    /// ASCII digits of any string, including Arabic-Indic, Devanagari,
    /// Gujarati, Gurmukhi, fullwidth and other Unicode decimal digits.
    static func asciiDigits(_ text: String) -> String {
        String(text.compactMap { ch in
            guard ch.isNumber, let v = ch.wholeNumberValue, ch.unicodeScalars.allSatisfy({ $0.properties.numericType == .decimal }) else { return nil }
            return Character(String(v))
        })
    }

    /// Typed answers are compared as digit strings, ignoring leading zeros so
    /// "08:05" and "805" both match.
    static func matches(typed: String, answer: NumberQuestion) -> Bool {
        func norm(_ s: String) -> String {
            let d = asciiDigits(s)
            let t = d.drop(while: { $0 == "0" })
            return t.isEmpty ? (d.isEmpty ? "" : "0") : String(t)
        }
        let t = norm(typed)
        return !t.isEmpty && t == norm(answer.digits)
    }

    /// Answer options (correct + distractors) trimmed to `count`, deterministic
    /// order shuffled by `rng`.
    static func options<G: RandomNumberGenerator>(
        for q: NumberQuestion, count: Int, using rng: inout G
    ) -> [String] {
        let n = max(2, min(count, q.distractors.count + 1))
        var picked = Array(q.distractors.prefix(n - 1))
        picked.append(q.text)
        picked.shuffle(using: &rng)
        return picked
    }

    // MARK: - Categories

    private static let gregorian = Calendar(identifier: .gregorian)

    private static func formatter(_ locale: Locale, template: String) -> DateFormatter {
        let f = DateFormatter()
        f.locale = locale
        f.calendar = gregorian
        f.timeZone = TimeZone(identifier: "UTC")
        f.setLocalizedDateFormatFromTemplate(template)
        return f
    }

    private static func time<G: RandomNumberGenerator>(locale: Locale, using rng: inout G) -> NumberQuestion {
        let f = formatter(locale, template: "jm")
        func make(_ minutesOfDay: Int) -> String {
            let m = ((minutesOfDay % 1440) + 1440) % 1440
            var comps = DateComponents(year: 2026, month: 1, day: 5, hour: m / 60, minute: m % 60)
            comps.timeZone = TimeZone(identifier: "UTC")
            return f.string(from: gregorian.date(from: comps) ?? Date(timeIntervalSince1970: 0))
        }
        // Daytime waking hours, to the nearest 5 minutes.
        let base = Int.random(in: 6..<22, using: &rng) * 60 + Int.random(in: 0..<12, using: &rng) * 5
        let text = make(base)
        var distractors: [String] = []
        for delta in shuffled([5, -5, 10, -10, 15, -15, 60, -60, 30, -30], using: &rng) {
            let candidate = make(base + delta)
            if candidate != text && !distractors.contains(candidate) { distractors.append(candidate) }
            if distractors.count == 3 { break }
        }
        return NumberQuestion(category: .time, text: text, spoken: text,
                              digits: asciiDigits(text), distractors: distractors)
    }

    private static func currency(_ locale: Locale) -> NumberFormatter {
        let f = NumberFormatter()
        f.locale = locale
        f.numberStyle = .currency
        f.currencyCode = "USD"
        f.minimumFractionDigits = 2
        f.maximumFractionDigits = 2
        return f
    }

    private static func price<G: RandomNumberGenerator>(locale: Locale, using rng: inout G) -> NumberQuestion {
        let f = currency(locale)
        func fmt(_ cents: Int) -> String { f.string(from: NSNumber(value: Double(cents) / 100)) ?? "\(cents)" }
        let dollars = Int.random(in: 1..<100, using: &rng)
        let cents = [0, 25, 49, 50, 75, 95, 99].randomElement(using: &rng)!
        let total = dollars * 100 + cents
        let text = fmt(total)
        var distractors: [String] = []
        let candidates = [total + 100, total - 100, total + 50, total - 50, total + 10, total + 1000, total - 1000]
        for c in shuffled(candidates, using: &rng) where c > 0 {
            let s = fmt(c)
            if s != text && !distractors.contains(s) { distractors.append(s) }
            if distractors.count == 3 { break }
        }
        return NumberQuestion(category: .price, text: text, spoken: text,
                              digits: asciiDigits(text), distractors: distractors)
    }

    private static func count<G: RandomNumberGenerator>(locale: Locale, using rng: inout G) -> NumberQuestion {
        let f = NumberFormatter()
        f.locale = locale
        f.numberStyle = .decimal
        f.usesGroupingSeparator = false
        func fmt(_ n: Int) -> String { f.string(from: NSNumber(value: n)) ?? "\(n)" }
        let n = Int.random(in: 11..<100, using: &rng)
        let text = fmt(n)
        var cands = [n + 1, n - 1, n + 10, n - 10, swapDigits(n)]
        cands = shuffled(cands, using: &rng)
        var distractors: [String] = []
        for c in cands where c > 0 && c != n {
            let s = fmt(c)
            if !distractors.contains(s) { distractors.append(s) }
            if distractors.count == 3 { break }
        }
        return NumberQuestion(category: .count, text: text, spoken: text,
                              digits: asciiDigits(text), distractors: distractors)
    }

    private static func swapDigits(_ n: Int) -> Int {
        let s = Array(String(n))
        guard s.count == 2 else { return n + 2 }
        return Int(String([s[1], s[0]])) ?? n + 2
    }

    private static func date<G: RandomNumberGenerator>(locale: Locale, using rng: inout G) -> NumberQuestion {
        let f = formatter(locale, template: "MMMMd")
        let start = gregorian.date(from: DateComponents(timeZone: TimeZone(identifier: "UTC"), year: 2026, month: 1, day: 1))!
        func fmt(_ dayOffset: Int) -> String {
            f.string(from: gregorian.date(byAdding: .day, value: ((dayOffset % 365) + 365) % 365, to: start)!)
        }
        let base = Int.random(in: 0..<365, using: &rng)
        let text = fmt(base)
        var distractors: [String] = []
        for delta in shuffled([1, -1, 2, -2, 7, -7, 10, 30, -30], using: &rng) {
            let s = fmt(base + delta)
            if s != text && !distractors.contains(s) { distractors.append(s) }
            if distractors.count == 3 { break }
        }
        return NumberQuestion(category: .date, text: text, spoken: text,
                              digits: asciiDigits(text), distractors: distractors)
    }

    /// 10-digit US-style number formatted "(AAA) BBB-CCCC". With no personal
    /// number it uses 555-01xx, the range reserved for fictional use.
    private static func phone<G: RandomNumberGenerator>(locale: Locale, personal: String?, using rng: inout G) -> NumberQuestion {
        var digits: [Int]
        if let p = personal.map(asciiDigits), p.count == 10 || (p.count == 11 && p.hasPrefix("1")) {
            digits = p.suffix(10).compactMap { Int(String($0)) }
        } else {
            let areas = [213, 310, 415, 510, 619, 714, 818, 916]
            let a = Array(String(areas.randomElement(using: &rng)!)).compactMap { Int(String($0)) }
            let last2 = [Int.random(in: 0...9, using: &rng), Int.random(in: 0...9, using: &rng)]
            digits = a + [5, 5, 5] + [0, 1] + last2   // 555-01xx: reserved for fiction
        }
        let nf = NumberFormatter()
        nf.locale = locale
        nf.numberStyle = .none
        nf.usesGroupingSeparator = false
        func fmtDigit(_ d: Int) -> String { nf.string(from: NSNumber(value: d)) ?? "\(d)" }
        func format(_ d: [Int]) -> String {
            let s = d.map(fmtDigit)
            return "(" + s[0..<3].joined() + ") " + s[3..<6].joined() + "-" + s[6..<10].joined()
        }
        let text = format(digits)
        var distractors: [String] = []
        var attempts = 0
        while distractors.count < 3 && attempts < 40 {
            attempts += 1
            var d = digits
            switch Int.random(in: 0..<3, using: &rng) {
            case 0:   // transpose two neighbours in the last seven digits
                let i = Int.random(in: 3..<9, using: &rng)
                d.swapAt(i, i + 1)
            case 1:   // change the last digit
                d[9] = (d[9] + Int.random(in: 1...9, using: &rng)) % 10
            default:  // change one middle digit
                let i = Int.random(in: 3..<9, using: &rng)
                d[i] = (d[i] + Int.random(in: 1...9, using: &rng)) % 10
            }
            let s = format(d)
            if s != text && !distractors.contains(s) { distractors.append(s) }
        }
        // Read digit by digit with pauses between groups.
        let ds = digits.map(fmtDigit)
        let spoken = ds[0..<3].joined(separator: " ") + ", " + ds[3..<6].joined(separator: " ") + ", " + ds[6..<10].joined(separator: " ")
        return NumberQuestion(category: .phone, text: text, spoken: spoken,
                              digits: digits.map(String.init).joined(), distractors: distractors)
    }

    private static func shuffled<T, G: RandomNumberGenerator>(_ a: [T], using rng: inout G) -> [T] {
        var copy = a
        copy.shuffle(using: &rng)
        return copy
    }
}
