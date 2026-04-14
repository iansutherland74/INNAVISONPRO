import XCTest
@testable import VisionIINA

final class Wave865Tests: XCTestCase {
    func testComposedBootstrapUsesDefaultsWhenPersistedTypesAreInvalid() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [
                IINAPreferenceKeyGeneral.pauseWhenOpen: "bad",
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: "bad",
                IINAPreferenceKeyGeneral.autoRepeat: "bad",
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: "bad",
                IINAPreferenceKeyGeneral.screenshotFormat: "bad",
                IINAPreferenceKeyNetwork.enableCache: "bad",
                IINAPreferenceKeyNetwork.defaultCacheSize: "bad",
                IINAPreferenceKeyNetwork.cacheBufferSize: "bad",
                IINAPreferenceKeyUI.hardwareDecoder: "bad",
            ],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.pauseWhenOpen: true,
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
                IINAPreferenceKeyGeneral.autoRepeat: false,
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true,
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.jpeg.rawValue,
                IINAPreferenceKeyNetwork.enableCache: false,
                IINAPreferenceKeyNetwork.defaultCacheSize: 8192,
                IINAPreferenceKeyNetwork.cacheBufferSize: 256,
                IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.disabled.rawValue,
            ],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.start.startPaused, true)
        XCTAssertEqual(snapshot.open.shouldEnterFullScreen, true)
        XCTAssertEqual(snapshot.end, .stopAndKeepOpen)
        XCTAssertEqual(snapshot.screenshot.format, .jpeg)
        XCTAssertEqual(snapshot.network.enableCache, false)
        XCTAssertEqual(snapshot.network.cacheSizeMB, 8192)
        XCTAssertEqual(snapshot.network.bufferSizeKB, 256)
        XCTAssertEqual(snapshot.network.hardwareDecoder, .disabled)
    }
}
