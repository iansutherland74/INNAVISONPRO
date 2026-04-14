import XCTest
@testable import VisionIINA

final class Wave854Tests: XCTestCase {
    func testPersistedOverridesDefaults() {
        let decision = PlaybackNetworkStartupPolicy.decide(
            preferences: [
                IINAPreferenceKeyNetwork.enableCache: false,
                IINAPreferenceKeyNetwork.defaultCacheSize: 2048,
                IINAPreferenceKeyNetwork.cacheBufferSize: 512,
                IINAPreferenceKeyNetwork.httpProxy: "http://proxy:8080",
                IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.autoCopy.rawValue,
            ],
            defaultPreferences: [
                IINAPreferenceKeyNetwork.enableCache: true,
                IINAPreferenceKeyNetwork.defaultCacheSize: 9999,
                IINAPreferenceKeyNetwork.cacheBufferSize: 999,
                IINAPreferenceKeyNetwork.httpProxy: "http://default:8080",
                IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.disabled.rawValue,
            ]
        )

        XCTAssertFalse(decision.enableCache)
        XCTAssertEqual(decision.cacheSizeMB, 2048)
        XCTAssertEqual(decision.bufferSizeKB, 512)
        XCTAssertEqual(decision.proxyURL, "http://proxy:8080")
        XCTAssertEqual(decision.hardwareDecoder, .autoCopy)
    }

    func testDefaultsUsedWhenMissing() {
        let decision = PlaybackNetworkStartupPolicy.decide(
            preferences: [:],
            defaultPreferences: [
                IINAPreferenceKeyNetwork.enableCache: false,
                IINAPreferenceKeyNetwork.defaultCacheSize: 1024,
                IINAPreferenceKeyNetwork.cacheBufferSize: 256,
                IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.disabled.rawValue,
            ]
        )

        XCTAssertFalse(decision.enableCache)
        XCTAssertEqual(decision.cacheSizeMB, 1024)
        XCTAssertEqual(decision.bufferSizeKB, 256)
        XCTAssertNil(decision.proxyURL)
        XCTAssertEqual(decision.hardwareDecoder, .disabled)
    }

    func testFallbackUsedWhenMissingEverywhere() {
        let decision = PlaybackNetworkStartupPolicy.decide(preferences: [:], defaultPreferences: [:])

        XCTAssertTrue(decision.enableCache)
        XCTAssertEqual(decision.cacheSizeMB, 153600)
        XCTAssertEqual(decision.bufferSizeKB, 15360)
        XCTAssertNil(decision.proxyURL)
        XCTAssertEqual(decision.hardwareDecoder, .auto)
    }

    func testInvalidTypesFallBackSafely() {
        let decision = PlaybackNetworkStartupPolicy.decide(
            preferences: [
                IINAPreferenceKeyNetwork.enableCache: "bad",
                IINAPreferenceKeyNetwork.defaultCacheSize: "bad",
                IINAPreferenceKeyNetwork.cacheBufferSize: "bad",
                IINAPreferenceKeyNetwork.httpProxy: 123,
                IINAPreferenceKeyUI.hardwareDecoder: "bad",
            ],
            defaultPreferences: [:]
        )

        XCTAssertTrue(decision.enableCache)
        XCTAssertEqual(decision.cacheSizeMB, 153600)
        XCTAssertEqual(decision.bufferSizeKB, 15360)
        XCTAssertNil(decision.proxyURL)
        XCTAssertEqual(decision.hardwareDecoder, .auto)
    }
}
