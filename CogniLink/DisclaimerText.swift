import SwiftUI

/// Presentation style for `DisclaimerText`. `.inline` is the short,
/// low-emphasis in-context notice used today (caption-sized, secondary
/// color). `.prominent` is reserved for a future more visible presentation
/// (e.g. a bordered callout) and is not used anywhere yet — it currently
/// renders identically to `.inline`.
enum DisclaimerStyle {
    case inline
    case prominent
}

/// Shared renderer for the app's short disclaimer-style notices (clinical
/// disclaimers, feature-maturity notices, etc.). Callers own the wording;
/// this view only owns presentation, so every disclaimer looks and behaves
/// the same everywhere it appears.
struct DisclaimerText: View {
    let text: String
    var style: DisclaimerStyle = .inline

    var body: some View {
        switch style {
        case .inline, .prominent:
            Text(text)
                .font(.caption)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}
