import XCTest
@testable import VisionIINA

final class Wave861Tests: XCTestCase {
    func testNetworkStartupPolicyHandlesBoundaryIntegers() {
        let decision = PlaybackNetworkStartupPolicy.decide(
            preferences: [
                IINAPreferenceKeyNetwork.defaultCacheSize: Int.max,
                IINAPreferenceKeyNetwork.cacheBufferSize: Int.min,
            ],
            defaultPreferences: [:]
        )

        XCTAssertEqual(decision.cacheSizeMB, Int.max)
        XCTAssertEqual(decision.bufferSizeKB, Int.min)
        XCTAssertTrue(decision.enableCache)
        XCTAssertEqual(decision.hardwareDecoder, .auto)
    }

    func testNetworkStartupPolicyFallsBackWhenTypesMismatchOnBoundaries() {
        let decision = PlaybackNetworkStartupPolicy.decide(
            preferences: [
                IINAPreferenceKeyNetwork.defaultCacheSize: Double.greatestFiniteMagnitude,
                IINAPreferenceKeyNetwork.cacheBufferSize: "9223372036854775807",
            ],
            defaultPreferences: [:]
        )

        XCTAssertEqual(decision.cacheSizeMB, 153600)
        XCTAssertEqual(decision.bufferSizeKB, 15360)
    }
}
