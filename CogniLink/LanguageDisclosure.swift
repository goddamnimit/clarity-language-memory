import SwiftUI

/// In-language notice shown on the Home and Activities screens for languages whose content
/// was machine-translated and is still being reviewed by native speakers. The wording below
/// is pending native-reviewer confirmation (see the reviewer package).
enum LanguageDisclosure {
    static func text(for language: AppLanguage) -> String? {
        switch language {
        case .german:
            return "Diese Sprache wurde maschinell mit KI übersetzt und wird derzeit von Muttersprachlern geprüft. Wenn Sie einen Fehler sehen, nutzen Sie bitte die Flaggen-Schaltfläche."
        case .italian:
            return "Questa lingua è stata tradotta automaticamente con l'IA ed è in fase di revisione da parte di madrelingua. Se nota un errore, usi il pulsante con la bandierina."
        default:
            return nil
        }
    }
}

struct LanguageDisclosureBanner: View {
    @ObservedObject private var languageManager = LanguageManager.shared

    var body: some View {
        if let text = LanguageDisclosure.text(for: languageManager.currentLanguage) {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: "flag")
                    .accessibilityHidden(true)
                Text(text)
                    #if os(tvOS)
                    .font(.callout)   // title3 made the notice three lines tall on a TV and pushed the content down
                    #else
                    .font(.footnote)
                    #endif
                    .fixedSize(horizontal: false, vertical: true)
            }
            .foregroundStyle(.primary)
            .padding(14)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12))
            .accessibilityElement(children: .combine)
        }
    }
}
