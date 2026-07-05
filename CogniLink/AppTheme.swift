import SwiftUI

// MARK: - Platform-adaptive Color helpers

extension Color {
    /// UIColor.secondarySystemGroupedBackground on iOS, dark gray on tvOS/other.
    static var secondaryGroupedBackground: Color {
        #if os(iOS)
        Color(UIColor.secondarySystemGroupedBackground)
        #else
        Color(UIColor.darkGray)
        #endif
    }

    /// UIColor.systemGroupedBackground on iOS, dark gray on tvOS/other.
    static var groupedBackground: Color {
        #if os(iOS)
        Color(UIColor.systemGroupedBackground)
        #else
        Color(UIColor.darkGray)
        #endif
    }

    /// UIColor.tertiarySystemGroupedBackground on iOS, gray on tvOS/other.
    static var tertiaryGroupedBackground: Color {
        #if os(iOS)
        Color(UIColor.tertiarySystemGroupedBackground)
        #else
        Color(UIColor.gray)
        #endif
    }

    /// UIColor.systemGray5 on iOS, systemGray on tvOS/other.
    static var systemGray5Adaptive: Color {
        #if os(iOS)
        Color(UIColor.systemGray5)
        #else
        Color(UIColor.systemGray)
        #endif
    }

    /// UIColor.systemBackground on iOS, black on tvOS/other.
    static var systemBackground: Color {
        #if os(iOS)
        Color(UIColor.systemBackground)
        #else
        Color.black
        #endif
    }
}

/// A collection of styling properties and modifiers used across the CogniLink app.
struct AppTheme {
    // Standard color definitions
    static let languageColor = Color.blue
    static let cognitionColor = Color.green
    static let functionalColor = Color.orange

    /// A visual modifier that formats a view to look like an accessible card.
    struct CardModifier: ViewModifier {
        let backgroundColor: Color

        func body(content: Content) -> some View {
            content
                .padding(24) // Generous padding inside the card
                .frame(maxWidth: .infinity, minHeight: 120, alignment: .leading)
                .background(backgroundColor.opacity(0.12)) // Subtle background tint for readability
                .cornerRadius(16) // Rounded corners
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(backgroundColor, lineWidth: 2.5) // High-contrast border
                )
                .contentShape(RoundedRectangle(cornerRadius: 16)) // Makes the entire card surface interactive
        }
    }
}

// An extension to make using the card style simpler in other files
extension View {
    func cardStyle(color: Color) -> some View {
        self.modifier(AppTheme.CardModifier(backgroundColor: color))
    }
}

// MARK: - tvOS Focus Button Style

struct AppButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            #if os(tvOS)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .brightness(configuration.isPressed ? 0.1 : 0.0)
            #endif
    }
}

// MARK: - tvOS Focus Ring Modifier

struct TVFocusModifier: ViewModifier {
    @Environment(\.isFocused) var isFocused
    func body(content: Content) -> some View {
        content
            #if os(tvOS)
            .scaleEffect(isFocused ? 1.05 : 1.0)
            .shadow(
                color: isFocused ? .accentColor.opacity(0.6) : .clear,
                radius: isFocused ? 12 : 0
            )
            .animation(.easeInOut(duration: 0.15), value: isFocused)
            #endif
    }
}

extension View {
    func tvFocusEffect() -> some View {
        modifier(TVFocusModifier())
    }
}

/// A beautiful, calm, daily-rotating gradient background designed for low-contrast readability.
struct AppBackgroundView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let index = dayOfYear % 5
        
        Group {
            if colorScheme == .dark {
                darkGradients[index]
            } else {
                lightGradients[index]
            }
        }
        .ignoresSafeArea()
    }
    
    private let lightGradients = [
        LinearGradient(colors: [Color(red: 0.98, green: 0.96, blue: 0.95), Color(red: 0.94, green: 0.91, blue: 0.96)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.94, green: 0.97, blue: 0.98), Color(red: 0.91, green: 0.93, blue: 0.96)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.95, green: 0.97, blue: 0.95), Color(red: 0.91, green: 0.93, blue: 0.92)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.96, green: 0.95, blue: 0.98), Color(red: 0.92, green: 0.91, blue: 0.96)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.98, green: 0.97, blue: 0.94), Color(red: 0.94, green: 0.93, blue: 0.90)], startPoint: .topLeading, endPoint: .bottomTrailing)
    ]
    
    private let darkGradients = [
        LinearGradient(colors: [Color(red: 0.12, green: 0.10, blue: 0.12), Color(red: 0.08, green: 0.08, blue: 0.10)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.08, green: 0.12, blue: 0.14), Color(red: 0.06, green: 0.08, blue: 0.10)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.08, green: 0.12, blue: 0.10), Color(red: 0.06, green: 0.08, blue: 0.08)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.10, green: 0.08, blue: 0.14), Color(red: 0.06, green: 0.06, blue: 0.10)], startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(colors: [Color(red: 0.12, green: 0.11, blue: 0.08), Color(red: 0.08, green: 0.08, blue: 0.06)], startPoint: .topLeading, endPoint: .bottomTrailing)
    ]
}

extension View {
    /// Applies a premium, daily rotating gradient background with full safe area ignore.
    func appBackground() -> some View {
        self.background(AppBackgroundView())
    }
}
