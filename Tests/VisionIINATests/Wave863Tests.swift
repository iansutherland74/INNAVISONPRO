import XCTest
@testable import VisionIINA

final class Wave863Tests: XCTestCase {
    func testBridgeBootstrapSoakStability() {
        let bridge = PlaybackCoreBridge()

        for i in 0..<20_000 {
            let hasNext = (i % 2 == 0)
            let snapshot = bridge.bootstrap(
                preferences: [
                    IINAPreferenceKeyGeneral.autoRepeat: (i % 11 == 0),
                    IINAPreferenceKeyGeneral.keepOpenOnFileEnd: (i % 7 == 0),
                    IINAPreferenceKeyNetwork.enableCache: (i % 3 != 0),
                    IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.webp.rawValue,
                ],
                defaultPreferences: [:],
                hasNextItem: hasNext
            )
            XCTAssertEqual(snapshot.screenshot.format, .webp)
        }

        XCTAssertNotNil(bridge.latestBootstrapSnapshot)
    }

    func testInitializeIsIdempotentForBootstrapDefaults() {
        let bridge = PlaybackCoreBridge()

        for _ in 0..<50 {
            bridge.initialize()
        }

        let snapshot = bridge.latestBootstrapSnapshot
        XCTAssertEqual(snapshot?.start.shouldResumeFromLastPosition, false)
        XCTAssertEqual(snapshot?.network.enableCache, true)
        XCTAssertEqual(snapshot?.end, .stopAndClose)
    }
}
