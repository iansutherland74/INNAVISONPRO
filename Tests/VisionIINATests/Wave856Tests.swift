import XCTest
@testable import VisionIINA

final class Wave856Tests: XCTestCase {
    func testInitializePopulatesDefaultBootstrapSnapshot() {
        let bridge = PlaybackCoreBridge()

        bridge.initialize()

        let snapshot = bridge.latestBootstrapSnapshot
        XCTAssertNotNil(snapshot)
        XCTAssertEqual(snapshot?.start.shouldResumeFromLastPosition, false)
        XCTAssertEqual(snapshot?.open.shouldEnterFullScreen, false)
        XCTAssertEqual(snapshot?.window.openInNewWindow, false)
        XCTAssertEqual(snapshot?.end, .stopAndClose)
        XCTAssertEqual(snapshot?.network.enableCache, true)
        XCTAssertEqual(snapshot?.network.hardwareDecoder, .auto)
    }

    func testBootstrapUsesHasNextItemWhenNoAutoRepeat() {
        let bridge = PlaybackCoreBridge()

        let snapshot = bridge.bootstrap(
            preferences: [
                IINAPreferenceKeyGeneral.autoRepeat: false,
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: false,
            ],
            defaultPreferences: [:],
            hasNextItem: true
        )

        XCTAssertEqual(snapshot.end, .playNext)
    }

    func testBootstrapAutoRepeatBeatsHasNextItem() {
        let bridge = PlaybackCoreBridge()

        let snapshot = bridge.bootstrap(
            preferences: [IINAPreferenceKeyGeneral.autoRepeat: true],
            defaultPreferences: [:],
            hasNextItem: true
        )

        XCTAssertEqual(snapshot.end, .replayCurrent)
    }
}
