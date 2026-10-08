import Foundation

/// F4 — optional personal phone number for practice. Stored in the Keychain
/// (device-only) like caregiver notes, and deliberately never read by
/// ResearchExportManager.
enum NumberSkillsStore {
    private static let phoneKey = "clarity_numberskills_personal_phone"

    static var personalPhone: String? {
        get {
            guard let v = KeychainHelper.load(key: phoneKey), !v.isEmpty else { return nil }
            return v
        }
        set {
            if let v = newValue?.trimmingCharacters(in: .whitespacesAndNewlines), !v.isEmpty {
                KeychainHelper.save(v, key: phoneKey)
            } else {
                KeychainHelper.delete(key: phoneKey)
            }
        }
    }
}
