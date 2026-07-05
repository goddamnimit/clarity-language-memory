import SwiftUI

@main
struct ClarityTVApp: App {
    @State private var showOnboarding = !UserDefaults.standard.bool(forKey: "clarity_tv_onboarding_complete")

    var body: some Scene {
        WindowGroup {
            TVTabView()
                .fullScreenCover(isPresented: $showOnboarding) {
                    TVOnboardingView(isPresented: $showOnboarding)
                }
        }
    }
}

