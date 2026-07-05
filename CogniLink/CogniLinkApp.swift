#if os(iOS)
import SwiftUI

@main
struct CogniLinkApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserProfileStore.shared)
                .environmentObject(UserProgressStore.shared)
                .environmentObject(LanguageManager.shared)
        }
    }
}
#endif
