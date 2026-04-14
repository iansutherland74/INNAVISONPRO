import XCTest
@testable import VisionIINA

final class Wave852Tests: XCTestCase {
    func testPersistedOverridesDefaultsForAppInactive() {
        let shouldPause = PlaybackPauseConditionPolicy.shouldPause(
            trigger: .appInactive,
            preferences: [IINAPreferenceKeyGeneral.pauseWhenInactive: true],
            defaultPreferences: [IINAPreferenceKeyGeneral.pauseWhenInactive: false]
        )

        XCTAssertTrue(shouldPause)
    }

    func testDefaultsUsedForWindowMinimizedWhenMissingPersisted() {
        let shouldPause = PlaybackPauseConditionPolicy.shouldPause(
            trigger: .windowMinimized,
            preferences: [:],
            defaultPreferences: [IINAPreferenceKeyGeneral.pauseWhenMinimized: true]
        )

        XCTAssertTrue(shouldPause)
    }

    func testFallbackUsedForSystemSleepWhenMissingEverywhere() {
        let shouldPause = PlaybackPauseConditionPolicy.shouldPause(
            trigger: .systemSleep,
            preferences: [:],
            defaultPreferences: [:]
        )

        XCTAssertFalse(shouldPause)
    }

    func testInvalidTypesFallBackSafely() {
        let shouldPause = PlaybackPauseConditionPolicy.shouldPause(
            trigger: .appInactive,
            preferences: [IINAPreferenceKeyGeneral.pauseWhenInactive: "bad"],
            defaultPreferences: [:]
        )

        XCTAssertFalse(shouldPause)
    }
}
