import XCTest
@testable import VisionIINA

final class Wave851Tests: XCTestCase {
    func testPersistedOverridesDefaults() {
        let behavior = PlaybackWindowBehaviorPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: true,
                IINAPreferenceKeyGeneral.alwaysFloatOnTop: false,
            ],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: false,
                IINAPreferenceKeyGeneral.alwaysFloatOnTop: true,
            ]
        )

        XCTAssertEqual(behavior.openInNewWindow, true)
        XCTAssertEqual(behavior.floatOnTop, false)
    }

    func testDefaultsUsedWhenMissing() {
        let behavior = PlaybackWindowBehaviorPolicy.decide(
            preferences: [:],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: true,
                IINAPreferenceKeyGeneral.alwaysFloatOnTop: true,
            ]
        )

        XCTAssertEqual(behavior.openInNewWindow, true)
        XCTAssertEqual(behavior.floatOnTop, true)
    }

    func testFallbackWhenMissingEverywhere() {
        let behavior = PlaybackWindowBehaviorPolicy.decide(preferences: [:], defaultPreferences: [:])

        XCTAssertEqual(behavior.openInNewWindow, false)
        XCTAssertEqual(behavior.floatOnTop, false)
    }

    func testInvalidTypesFallBackSafely() {
        let behavior = PlaybackWindowBehaviorPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: "bad",
                IINAPreferenceKeyGeneral.alwaysFloatOnTop: "bad",
            ],
            defaultPreferences: [:]
        )

        XCTAssertEqual(behavior.openInNewWindow, false)
        XCTAssertEqual(behavior.floatOnTop, false)
    }
}
