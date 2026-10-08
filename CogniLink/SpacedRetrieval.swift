import Foundation

/// F5 — Spaced retrieval practice (expanding-interval recall of a personal
/// fact). The target text (question + answer) is personal data: it lives in the
/// Keychain like caregiver notes and is never exported. The per-target log
/// holds only an id, a date and interval numbers — no text.

struct MemoryTarget: Codable, Identifiable, Equatable {
    var id: UUID = UUID()
    var question: String = ""
    var answer: String = ""
    var isUsable: Bool {
        !question.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        !answer.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

struct SRTLogEntry: Codable, Equatable {
    let targetID: UUID
    let date: Date
    /// Longest recall interval passed in this session, in seconds (0 = immediate).
    let bestIntervalSeconds: Int
    let misses: Int
    let completed: Bool
}

enum SpacedRetrievalStore {
    static let maxTargets = 3
    private static let targetsKey = "clarity_srt_targets"
    private static let logKey = "clarity_srt_log"
    private static let maxLog = 300

    static var targets: [MemoryTarget] {
        get {
            guard let json = KeychainHelper.load(key: targetsKey),
                  let data = json.data(using: .utf8),
                  let decoded = try? JSONDecoder().decode([MemoryTarget].self, from: data) else { return [] }
            return Array(decoded.prefix(maxTargets))
        }
        set {
            let trimmed = Array(newValue.prefix(maxTargets))
            guard let data = try? JSONEncoder().encode(trimmed),
                  let json = String(data: data, encoding: .utf8) else { return }
            KeychainHelper.save(json, key: targetsKey)
        }
    }

    static var usableTargets: [MemoryTarget] { targets.filter(\.isUsable) }

    static var log: [SRTLogEntry] {
        guard let data = UserDefaults.standard.data(forKey: logKey),
              let decoded = try? JSONDecoder().decode([SRTLogEntry].self, from: data) else { return [] }
        return decoded
    }

    static func append(_ entry: SRTLogEntry) {
        var all = log
        all.append(entry)
        if all.count > maxLog { all.removeFirst(all.count - maxLog) }
        if let data = try? JSONEncoder().encode(all) {
            UserDefaults.standard.set(data, forKey: logKey)
        }
    }

    static func summary(for id: UUID) -> (sessions: Int, bestSeconds: Int, lastDate: Date?) {
        let mine = log.filter { $0.targetID == id }
        return (mine.count, mine.map(\.bestIntervalSeconds).max() ?? 0, mine.map(\.date).max())
    }
}

/// Pure state machine for one practice run on one target.
/// Intervals: immediate, 30 s, 1 min, 2 min, 4 min, 8 min.
struct SpacedRetrievalScheduler: Equatable {
    static let intervals = [0, 30, 60, 120, 240, 480]

    enum Outcome: Equatable { case waitThenAsk(seconds: Int), finished }

    /// Index into `intervals` of the next recall.
    private(set) var level = 0
    /// Highest interval index recalled successfully this run (-1 = none yet).
    private(set) var bestPassed = -1
    private(set) var misses = 0

    var nextWaitSeconds: Int { Self.intervals[level] }
    var bestPassedSeconds: Int { bestPassed >= 0 ? Self.intervals[bestPassed] : 0 }

    /// Successful recall at the current interval: expand, or finish after the last.
    mutating func recordPass() -> Outcome {
        bestPassed = max(bestPassed, level)
        if level == Self.intervals.count - 1 { return .finished }
        level += 1
        return .waitThenAsk(seconds: Self.intervals[level])
    }

    /// Missed recall: the answer is given and repeated, then retry at the last
    /// successful interval (or immediately when nothing has succeeded yet).
    mutating func recordMiss() -> Outcome {
        misses += 1
        level = max(bestPassed, 0)
        return .waitThenAsk(seconds: Self.intervals[level])
    }
}
