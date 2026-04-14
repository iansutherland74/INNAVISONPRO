import XCTest
@testable import VisionIINA

final class Wave850Tests: XCTestCase {
    func testPersistedValuesOverrideDefaults() {
        let behavior = PlaybackOpenBehaviorPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
                IINAPreferenceKeyGeneral.pauseWhenOpen: false,
            ],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: false,
                IINAPreferenceKeyGeneral.pauseWhenOpen: true,
            ]
        )

        XCTAssertEqual(behavior.shouldEnterFullScreen, true)
        XCTAssertEqual(behavior.shouldStartPaused, false)
    }

    func testDefaultsAreUsedWhenMissing() {
        let behavior = PlaybackOpenBehaviorPolicy.decide(
            preferences: [:],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
                IINAPreferenceKeyGeneral.pauseWhenOpen: true,
            ]
        )

        XCTAssertEqual(behavior.shouldEnterFullScreen, true)
        XCTAssertEqual(behavior.shouldStartPaused, true)
    }

    func testFallbackWhenMissingEverywhere() {
        let behavior = PlaybackOpenBehaviorPolicy.decide(preferences: [:], defaultPreferences: [:])
        XCTAssertEqual(behavior.shouldEnterFullScreen, false)
        XCTAssertEqual(behavior.shouldStartPaused, false)
    }

    func testInvalidTypesFallBackSafely() {
        let behavior = PlaybackOpenBehaviorPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: "invalid",
                IINAPreferenceKeyGeneral.pauseWhenOpen: "invalid",
            ],
            defaultPreferences: [:]
        )

        XCTAssertEqual(behavior.shouldEnterFullScreen, false)
        XCTAssertEqual(behavior.shouldStartPaused, false)
    }
}
