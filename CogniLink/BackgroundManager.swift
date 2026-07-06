import Foundation
import UIKit

enum BackgroundPlatform {
    case iOS
    case tvOS
}

class BackgroundManager {
    static let shared = BackgroundManager()
    
    private let imageNames: [String] = {
        var names: [String] = []
        for i in 1...51 {
            names.append(String(format: "bg_met_%03d", i))
        }
        for i in 1...24 {
            names.append(String(format: "bg_nasa_%03d", i))
        }
        return names
    }()
    
    func dailyImageName(for platform: BackgroundPlatform) -> String {
        // Ordinality of the day in the year (1-366)
        let seed = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1
        
        // Select deterministic index
        let index = (seed - 1) % imageNames.count
        
        switch platform {
        case .iOS:
            #if os(iOS)
            return imageNames[index]
            #else
            return ""
            #endif
        case .tvOS:
            #if os(tvOS)
            return "tv_" + imageNames[index]
            #else
            return ""
            #endif
        }
    }

    func imageExists(named name: String) -> Bool {
        !name.isEmpty && UIImage(named: name) != nil
    }
}
