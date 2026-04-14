import XCTest
@testable import VisionIINA

final class Wave866Tests: XCTestCase {
    func testPauseWhenOpenKeyIsConsistentAcrossStartAndOpenDecisions() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [IINAPreferenceKeyGeneral.pauseWhenOpen: true],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.start.startPaused, true)
        XCTAssertEqual(snapshot.open.shouldStartPaused, true)
    }

    func testPauseWhenOpenDefaultIsConsistentAcrossStartAndOpenDecisions() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [:],
            defaultPreferences: [IINAPreferenceKeyGeneral.pauseWhenOpen: true],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.start.startPaused, true)
        XCTAssertEqual(snapshot.open.shouldStartPaused, true)
    }

    func testProxyEmptyStringIsPreservedWhenProvided() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [IINAPreferenceKeyNetwork.httpProxy: ""],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.network.proxyURL, "")
    }
}
