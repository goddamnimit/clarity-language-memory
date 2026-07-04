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
    
    func adaptiveIdentifier(for exercise: Exercise) -> String? {
        switch exercise.type {
        case .homonym:
            return "homonym"
        case .analogyChoice:
            return "analogyChoice"
        case .sequencing:
            return "sequencing"
        case .sentenceCompletion:
            let title = exercise.title.lowercased()
            let exclude = ["prefix", "suffix", "morphology", "sufix", "panlapi", "morfologia", "접두사", "어형", "형태소", "الصرف", "سوابق", "उपसर्ग", "ਅਗੇਤਰ", "ਪੂਰ੍ਹਵਪ੍ਰਤ੍ਯਯ", "词头", "նախածանց"]
            if exclude.contains(where: { title.contains($0) }) {
                return nil
            }
            return "sentencecompletion"
        case .multipleChoice:
            let title = exercise.title.lowercased()
            // Word Association
            let isWordAssoc = title.contains("association") || title.contains("asociación") ||
                              title.contains("संगति") || title.contains("જોડાણ") ||
                              title.contains("关联") || title.contains("연상") ||
                              title.contains("liên kết") || title.contains("ارتباط") ||
                              title.contains("pag-uugnay") || title.contains("բառերի")
            if isWordAssoc {
                return "wordassociation"
            }
            
            // Cause and Effect
            let isCauseEffect = title.contains("cause and effect") || title.contains("causa y efecto") ||
                                title.contains("प्रभाव") || title.contains("અસર") ||
                                title.contains("因果") || title.contains("원인과 결과") ||
                                title.contains("nguyên nhân") || title.contains("السبب") ||
                                title.contains("causa e efeito") || title.contains("sanhi") ||
                                title.contains("պատճառ") || title.contains("علت")
            if isCauseEffect {
                return "causeeffect"
            }
            
            // What's Wrong Here / Absurdities
            let isWhatsWrong = title.contains("wrong") || title.contains("absurd") ||
                               title.contains("mal aquí") || title.contains("गलत") ||
                               title.contains("खोટું") || title.contains("不对") ||
                               title.contains("잘못되었나요") || title.contains("sai ở đây") ||
                               title.contains("الخطأ") || title.contains("errado") ||
                               title.contains("mali dito") || title.contains("սխալ") ||
                               title.contains("اشتباه")
            if isWhatsWrong {
                return "whatswrong"
            }
            
            // Complete the Saying / Phrase Completion / Proverbs
            let isSaying = title.contains("saying") || title.contains("phrase completion") ||
                           title.contains("dicho") || title.contains("refrán") || title.contains("refran") ||
                           title.contains("कहावत") || title.contains("કહેવત") ||
                           title.contains("成语") || title.contains("속담 완성") || title.contains("câu nói") ||
                           title.contains("المثل") || title.contains("ditado") || title.contains("kumpletuhin") ||
                           title.contains("ਅਖਾਣ") || title.contains("ասացվածքը") || title.contains("ضرب‌المثل")
            if isSaying {
                return "completesaying"
            }
            
            return nil
        default:
            return nil
        }
    }
}
