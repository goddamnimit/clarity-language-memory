import Foundation
import Combine // FIXED: Added Combine framework for ObservableObject support

/// A lightweight, high-performance local store to track user therapy interactions.
class UserProgressStore: ObservableObject { // FIXED: Declared conformance to ObservableObject
    static let shared = UserProgressStore()
    
    private let attemptsKey = "CogniLink_AttemptedTasksCount"
    
    private init() {}
    
    /// Increments the count of attempted tasks on local memory disk.
    func markAttempted() {
        let currentCount = UserDefaults.standard.integer(forKey: attemptsKey)
        UserDefaults.standard.set(currentCount + 1, forKey: attemptsKey)
        
        // Notify any active observers that the state has changed
        DispatchQueue.main.async {
            self.objectWillChange.send()
        }
    }
    
    /// Fetches the total number of attempted tasks across the entire app.
    func getTotalAttempts() -> Int {
        return UserDefaults.standard.integer(forKey: attemptsKey)
    }
    
    /// Resets progress tracking count to zero.
    func resetAttempts() {
        UserDefaults.standard.set(0, forKey: attemptsKey)
        
        DispatchQueue.main.async {
            self.objectWillChange.send()
        }
    }
}
