import Combine
import Foundation

/// Manages difficulty levels and rolling performance history per exercise type.
final class AdaptiveDifficultyStore: ObservableObject {
    static let shared = AdaptiveDifficultyStore()
    
    private let defaults = UserDefaults.standard
    
    // Keys
    private let masterToggleKey = "clarity_adaptive_master_toggle"
    private let overridesKey = "clarity_adaptive_overrides"
    private let prefixKey = "clarity_adaptive_"
    private let crossReferenceEnabledKey = "clarity_cross_reference_enabled"

    private init() {}

    // MARK: - Cross-Referenced Adaptive Difficulty

    /// Clusters of related tracked types that may share a conservative
    /// cross-reference signal. `.completeTheSaying` and `.sentenceCompletion`
    /// are deliberately absent: they are excluded from cross-referencing in
    /// both directions and always track independently.
    private static let crossReferenceClusters: [[TrackedExerciseType]] = [
        [.homonym, .wordAssociation],                                   // lexical/semantic retrieval
        [.analogyChoice, .causeAndEffect, .sequencing, .whatsWrongHere] // reasoning/executive
    ]

    private func clusterPeers(of type: TrackedExerciseType) -> [TrackedExerciseType] {
        Self.crossReferenceClusters.first { $0.contains(type) }?.filter { $0 != type } ?? []
    }

    /// Global kill switch for cross-referenced difficulty. Defaults to true.
    /// Toggling is itself an audited event.
    var isCrossReferenceEnabled: Bool {
        get {
            defaults.object(forKey: crossReferenceEnabledKey) as? Bool ?? true
        }
        set {
            let old = isCrossReferenceEnabled
            guard old != newValue else { return }
            defaults.set(newValue, forKey: crossReferenceEnabledKey)
            ResearchExportManager.appendCrossReferenceRecord([
                "event": "kill_switch_toggled",
                "timestamp": ISO8601DateFormatter().string(from: Date()),
                "from": old,
                "to": newValue
            ])
            objectWillChange.send()
        }
    }
    
    // MARK: - Master Toggle
    
    var isMasterToggleOn: Bool {
        get {
            defaults.object(forKey: masterToggleKey) as? Bool ?? true
        }
        set {
            defaults.set(newValue, forKey: masterToggleKey)
            objectWillChange.send()
        }
    }
    
    // MARK: - Manual Overrides
    
    private var manualOverrides: [String: String] {
        get {
            defaults.dictionary(forKey: overridesKey) as? [String: String] ?? [:]
        }
        set {
            defaults.set(newValue, forKey: overridesKey)
            objectWillChange.send()
        }
    }
    
    func setManualOverride(_ difficulty: Difficulty?, for exerciseIdentifier: String) {
        var overrides = manualOverrides
        if let diff = difficulty {
            overrides[exerciseIdentifier] = diff.rawValue
        } else {
            overrides.removeValue(forKey: exerciseIdentifier)
        }
        manualOverrides = overrides
    }
    
    func getManualOverride(for exerciseIdentifier: String) -> Difficulty? {
        guard let raw = manualOverrides[exerciseIdentifier] else { return nil }
        return Difficulty(rawValue: raw)
    }
    
    // MARK: - Difficulty State
    
    func currentDifficulty(for exerciseIdentifier: String) -> Difficulty {
        let key = "\(prefixKey)diff_\(exerciseIdentifier)"
        guard let raw = defaults.string(forKey: key) else { return .easy }
        return Difficulty(rawValue: raw) ?? .easy
    }
    
    private func saveDifficulty(_ difficulty: Difficulty, for exerciseIdentifier: String) {
        let key = "\(prefixKey)diff_\(exerciseIdentifier)"
        defaults.set(difficulty.rawValue, forKey: key)
    }

    /// Directly sets the stored difficulty (used by the baseline assessment
    /// to place a patient at their assessed starting level).
    func setDifficulty(_ difficulty: Difficulty, for exerciseIdentifier: String) {
        saveDifficulty(difficulty, for: exerciseIdentifier)
        objectWillChange.send()
    }
    
    // MARK: - History Tracking
    
    private func getHistory(for exerciseIdentifier: String) -> [Bool] {
        let key = "\(prefixKey)history_\(exerciseIdentifier)"
        return defaults.array(forKey: key) as? [Bool] ?? []
    }
    
    private func saveHistory(_ history: [Bool], for exerciseIdentifier: String) {
        let key = "\(prefixKey)history_\(exerciseIdentifier)"
        defaults.set(history, forKey: key)
    }
    
    // MARK: - Public API
    
    func recordAttempt(for exerciseIdentifier: String, correct: Bool) {
        var history = getHistory(for: exerciseIdentifier)
        history.append(correct)
        
        // Cap window at 20
        if history.count > 20 {
            history.removeFirst()
        }
        saveHistory(history, for: exerciseIdentifier)
        
        // Evaluate threshold logic ONLY when the window has exactly/at least 20 attempts.
        // Below 20 attempts the only possible action is the conservative
        // cross-reference early-promotion check (promotion only, never demotion).
        guard history.count >= 20 else {
            evaluateCrossReferenceEarlyPromotion(for: exerciseIdentifier, history: history)
            return
        }
        
        let correctCount = history.filter { $0 }.count
        let current = currentDifficulty(for: exerciseIdentifier)
        var next = current
        
        if correctCount >= 15 { // >= 75%
            if current == .easy {
                next = .medium
            } else if current == .medium {
                next = .hard
            }
        } else if correctCount <= 10 { // <= 50%
            if current == .hard {
                next = .medium
            } else if current == .medium {
                next = .easy
            }
        }
        
        if next != current {
            saveDifficulty(next, for: exerciseIdentifier)
            #if DEBUG
            print("[AdaptiveDifficulty] Exercise '\(exerciseIdentifier)' changed from \(current.rawValue) to \(next.rawValue) (Correct: \(correctCount)/20)")
            #endif
        }
    }
    
    /// Cross-Referenced Adaptive Difficulty: while a tracked type is
    /// under-practiced (8–19 attempts, i.e. its rolling window has never
    /// filled to 20), strong performance in a related, well-practiced type
    /// from the same cluster (15+ attempts at >= 85% in its own window) allows
    /// an early promotion check at a relaxed 70% bar. This is promotion-only:
    /// demotion is never evaluated here and remains exclusively in the full
    /// 20-attempt window at the 50% threshold. Baseline assessment is
    /// unaffected (it writes via setDifficulty, which never enters this path).
    private func evaluateCrossReferenceEarlyPromotion(for exerciseIdentifier: String, history: [Bool]) {
        // Kill switch: when off, skip everything — the code path is identical
        // to pre-feature behavior (recordAttempt below 20 attempts did nothing).
        guard isCrossReferenceEnabled else { return }

        // Only for under-practiced types: 8–19 attempts in their own window.
        // (Once a window reaches 20 it stays at 20 forever, so this path is
        // permanently inactive for the type from that point on.)
        guard (8...19).contains(history.count) else { return }

        // Must be a tracked type that belongs to a cluster.
        // .completeTheSaying and .sentenceCompletion have no cluster and can
        // never be a target (nor, being absent from clusters, a source).
        guard let targetType = TrackedExerciseType(rawValue: exerciseIdentifier),
              targetType != .completeTheSaying,
              targetType != .sentenceCompletion else { return }
        let peers = clusterPeers(of: targetType)
        guard !peers.isEmpty else { return }

        // Safeguard: at most one cross-reference promotion per type while its
        // window has never filled (flag is cleared by resetAll via prefixKey).
        let promotedFlagKey = "\(prefixKey)xrefpromoted_\(exerciseIdentifier)"
        guard !defaults.bool(forKey: promotedFlagKey) else { return }

        // Already at the top tier: no promotion is possible, nothing to evaluate.
        let current = currentDifficulty(for: exerciseIdentifier)
        guard current != .hard else { return }

        // Cluster evidence bar: at least one peer with 15+ attempts in its own
        // rolling window at >= 85% accuracy.
        var qualifyingSources: [[String: Any]] = []
        for peer in peers {
            let peerHistory = getHistory(for: peer.rawValue)
            guard peerHistory.count >= 15 else { continue }
            let peerAccuracy = Double(peerHistory.filter { $0 }.count) / Double(peerHistory.count)
            if peerAccuracy >= 0.85 {
                qualifyingSources.append([
                    "type": peer.rawValue,
                    "accuracy": peerAccuracy,
                    "attempts": peerHistory.count
                ])
            }
        }
        guard !qualifyingSources.isEmpty else { return }

        let targetAccuracy = Double(history.filter { $0 }.count) / Double(history.count)
        let timestamp = ISO8601DateFormatter().string(from: Date())

        guard targetAccuracy >= 0.70 else {
            ResearchExportManager.appendCrossReferenceRecord([
                "event": "concession_available_promotion_failed",
                "timestamp": timestamp,
                "targetType": exerciseIdentifier,
                "targetAccuracy": targetAccuracy,
                "targetAttempts": history.count,
                "sources": qualifyingSources
            ])
            return
        }

        let next: Difficulty = (current == .easy) ? .medium : .hard
        saveDifficulty(next, for: exerciseIdentifier)
        defaults.set(true, forKey: promotedFlagKey)
        ResearchExportManager.appendCrossReferenceRecord([
            "event": "concession_applied",
            "timestamp": timestamp,
            "targetType": exerciseIdentifier,
            "targetAccuracy": targetAccuracy,
            "targetAttempts": history.count,
            "fromDifficulty": current.rawValue,
            "toDifficulty": next.rawValue,
            "sources": qualifyingSources
        ])
        #if DEBUG
        print("[AdaptiveDifficulty] Cross-reference concession promoted '\(exerciseIdentifier)' from \(current.rawValue) to \(next.rawValue) (accuracy \(targetAccuracy) over \(history.count) attempts)")
        #endif
    }

    func effectiveDifficulty(for exerciseIdentifier: String) -> Difficulty {
        // If master toggle is off, enforce .easy globally
        guard isMasterToggleOn else { return .easy }
        
        // Check manual override
        if let manual = getManualOverride(for: exerciseIdentifier) {
            return manual
        }
        
        // Return computed adaptive difficulty
        return currentDifficulty(for: exerciseIdentifier)
    }
    
    func resetAll() {
        defaults.removeObject(forKey: masterToggleKey)
        defaults.removeObject(forKey: overridesKey)
        
        let allKeys = defaults.dictionaryRepresentation().keys
        allKeys.filter { $0.hasPrefix(prefixKey) }
               .forEach { defaults.removeObject(forKey: $0) }
        
        objectWillChange.send()
    }
    
    // MARK: - Helper: Normalization

    /// Returns the adaptive-difficulty bucket identifier for an exercise, read
    /// directly from its explicitly-authored `trackedType` field. No title or
    /// ExerciseType inspection — classification is a one-time authoring-time
    /// decision, not a runtime inference.
    func adaptiveIdentifier(for exercise: Exercise) -> String? {
        exercise.trackedType?.rawValue
    }
}
