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
    
    private init() {}
    
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
        
        // Evaluate threshold logic ONLY when the window has exactly/at least 20 attempts
        guard history.count >= 20 else { return }
        
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
