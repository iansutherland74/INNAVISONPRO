import XCTest
@testable import VisionIINA

final class Wave848Tests: XCTestCase {
    func testAutoRepeatHasHighestPriority() {
        let action = PlaybackEndActionPolicy.decide(
            hasNextItem: true,
            preferences: [IINAPreferenceKeyGeneral.autoRepeat: true],
            defaultPreferences: [IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true]
        )

        XCTAssertEqual(action, .replayCurrent)
    }

    func testPlayNextWhenNoRepeatAndHasNextItem() {
        let action = PlaybackEndActionPolicy.decide(
            hasNextItem: true,
            preferences: [IINAPreferenceKeyGeneral.autoRepeat: false],
            defaultPreferences: [:]
        )

        XCTAssertEqual(action, .playNext)
    }

    func testKeepOpenWhenNoRepeatNoNextAndKeepOpenEnabled() {
        let action = PlaybackEndActionPolicy.decide(
            hasNextItem: false,
            preferences: [IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true],
            defaultPreferences: [:]
        )

        XCTAssertEqual(action, .stopAndKeepOpen)
    }

    func testCloseWhenNoRepeatNoNextAndKeepOpenDisabled() {
        let action = PlaybackEndActionPolicy.decide(
            hasNextItem: false,
            preferences: [IINAPreferenceKeyGeneral.keepOpenOnFileEnd: false],
            defaultPreferences: [:]
        )

        XCTAssertEqual(action, .stopAndClose)
    }

    func testDefaultsUsedWhenPreferenceMissing() {
        let action = PlaybackEndActionPolicy.decide(
            hasNextItem: false,
            preferences: [:],
            defaultPreferences: [IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true]
        )

        XCTAssertEqual(action, .stopAndKeepOpen)
    }

    func testInvalidTypesFallBackSafely() {
        let action = PlaybackEndActionPolicy.decide(
            hasNextItem: false,
            preferences: [
                IINAPreferenceKeyGeneral.autoRepeat: "bad",
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: "bad",
            ],
            defaultPreferences: [:]
        )

        XCTAssertEqual(action, .stopAndClose)
    }
}
