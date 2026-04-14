import XCTest
@testable import VisionIINA

final class Wave849Tests: XCTestCase {
    func testPersistedValuesOverrideDefaults() {
        let decision = PlaybackStartActionPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: true,
                IINAPreferenceKeyGeneral.pauseWhenOpen: false,
            ],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: false,
                IINAPreferenceKeyGeneral.pauseWhenOpen: true,
            ]
        )

        XCTAssertEqual(decision.shouldResumeFromLastPosition, true)
        XCTAssertEqual(decision.startPaused, false)
    }

    func testDefaultsUsedWhenMissingFromPersisted() {
        let decision = PlaybackStartActionPolicy.decide(
            preferences: [:],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: true,
                IINAPreferenceKeyGeneral.pauseWhenOpen: true,
            ]
        )

        XCTAssertEqual(decision.shouldResumeFromLastPosition, true)
        XCTAssertEqual(decision.startPaused, true)
    }

    func testFallbackUsedWhenMissingEverywhere() {
        let decision = PlaybackStartActionPolicy.decide(
            preferences: [:],
            defaultPreferences: [:]
        )

        XCTAssertEqual(decision.shouldResumeFromLastPosition, false)
        XCTAssertEqual(decision.startPaused, false)
    }

    func testInvalidTypesFallBackSafely() {
        let decision = PlaybackStartActionPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: "bad",
                IINAPreferenceKeyGeneral.pauseWhenOpen: "bad",
            ],
            defaultPreferences: [:]
        )

        XCTAssertEqual(decision.shouldResumeFromLastPosition, false)
        XCTAssertEqual(decision.startPaused, false)
    }
}
