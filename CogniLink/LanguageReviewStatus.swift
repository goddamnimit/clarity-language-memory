import Foundation

/// Release state of a language's content, stated explicitly rather than implied
/// by `AppLanguage.isPreview` alone. Only `.nativeReviewed` content is considered cleared.
enum ReviewStatus: String, CaseIterable {
    case pendingNativeReview
    case nativeReviewedWithFixes
    case nativeReviewed
}

/// Per-language release controls for languages added with a native-review gate.
/// Every switch lives here, one constant per language.
enum LanguageReviewStatus {

    /// SAFETY VALVE: set true to hide the language entirely (picker + auto-detect).

    /// RELEASE SWITCH: set true once native review clears the held-back groups.

    /// Whether groups flagged `isHeldForReview` may be shown for `language`.
    /// Every language without a review gate has nothing held, so the answer is true.
    static func heldGroupsReleased(for language: AppLanguage) -> Bool {
        return true
    }
}
