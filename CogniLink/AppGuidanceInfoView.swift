#if os(iOS)
import SwiftUI

/// Explains the app's trajectory-aware guidance (Recovery/Maintenance mode,
/// Expect Day-to-Day Fluctuation) and its current review status. Reachable
/// from both ProfileView and the Caregiver Dashboard — both link to this
/// exact view; there is no forked copy.
struct AppGuidanceInfoView: View {
    @ObservedObject private var store = UserProfileStore.shared

    /// Single source of truth for the feature-maturity notice, shared
    /// between this screen and CaregiverDashboardView's persistent Therapy
    /// Settings notice so the wording never drifts between the two sites.
    static func featureMaturityNoticeText(patientName: String) -> String {
        "The wording used in Recovery and Maintenance mode is still being reviewed by a licensed clinician. If anything here reads as confusing or concerning, please treat it as informational only and raise it directly with \(patientName)'s care team."
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                section(title: "Recovery vs. Maintenance Mode") {
                    Text("Recovery mode frames progress around improvement — insights call out when accuracy is trending up or down over time. Maintenance mode frames progress around consistency instead: steady performance is treated as a positive outcome on its own, not just the absence of improvement.")
                        .font(.body)
                        .foregroundColor(.primary)
                }

                section(title: "Expect Day-to-Day Fluctuation") {
                    Text("When this is on, a change in performance has to show up consistently across two separate practice windows before it's flagged. A single unusual day won't trigger an insight by itself.")
                        .font(.body)
                        .foregroundColor(.primary)
                }

                section(title: "A Note on Wording") {
                    DisclaimerText(text: Self.featureMaturityNoticeText(patientName: store.profile.displayName), style: .inline)
                }

                section(title: "Clinical Disclaimer") {
                    DisclaimerText(text: InsightEngine.maintenanceDisclaimer(patientName: store.profile.displayName), style: .inline)
                }
            }
            .padding()
        }
        .background(Color.groupedBackground.ignoresSafeArea())
        .navigationTitle("About this app's guidance")
        .navigationBarTitleDisplayMode(.inline)
    }

    @ViewBuilder
    private func section<Content: View>(title: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
            content()
        }
    }
}
#endif
