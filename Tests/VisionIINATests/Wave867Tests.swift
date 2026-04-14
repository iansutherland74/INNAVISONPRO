import XCTest
@testable import VisionIINA

final class Wave867Tests: XCTestCase {
    func testBridgeLatestSnapshotReplacedOnEachBootstrapCall() {
        let bridge = PlaybackCoreBridge()

        let first = bridge.bootstrap(
            preferences: [IINAPreferenceKeyGeneral.autoRepeat: true],
            defaultPreferences: [:],
            hasNextItem: true
        )

        let second = bridge.bootstrap(
            preferences: [
                IINAPreferenceKeyGeneral.autoRepeat: false,
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true,
                IINAPreferenceKeyNetwork.enableCache: false,
            ],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(first.end, .replayCurrent)
        XCTAssertEqual(second.end, .stopAndKeepOpen)
        XCTAssertEqual(second.network.enableCache, false)
        XCTAssertEqual(bridge.latestBootstrapSnapshot, second)
        XCTAssertNotEqual(first, second)
    }

    func testInitializeThenBootstrapProducesUpdatedSnapshot() {
        let bridge = PlaybackCoreBridge()
        bridge.initialize()
        let initialized = bridge.latestBootstrapSnapshot

        let bootstrapped = bridge.bootstrap(
            preferences: [IINAPreferenceKeyGeneral.resumeLastPosition: true],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertNotEqual(initialized, bootstrapped)
        XCTAssertEqual(bridge.latestBootstrapSnapshot, bootstrapped)
    }
}
