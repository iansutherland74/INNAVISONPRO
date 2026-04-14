import Foundation

enum PortCompatibility {
    enum UnavailableFeature: String, CaseIterable {
        case sparkleUpdates = "Sparkle updates"
        case touchBar = "Touch Bar"
        case appKitWindowing = "AppKit windowing"
        case appKitPluginWindows = "AppKit plugin windows"
    }

    static let isVisionOS = true

    static var unavailableFeatures: [UnavailableFeature] {
        UnavailableFeature.allCases
    }

    static func isEnabled(_ feature: UnavailableFeature) -> Bool {
        !unavailableFeatures.contains(feature)
    }
}
