import XCTest
@testable import VisionIINA

final class Wave857Tests: XCTestCase {
    func testMalformedPayloadFallsBackAcrossComposedSnapshot() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: "true",
                IINAPreferenceKeyGeneral.pauseWhenOpen: "false",
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: NSNull(),
                IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: ["x"],
                IINAPreferenceKeyGeneral.alwaysFloatOnTop: ["y": 1],
                IINAPreferenceKeyGeneral.autoRepeat: "yes",
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: NSNull(),
                IINAPreferenceKeyGeneral.pauseWhenInactive: "bad",
                IINAPreferenceKeyGeneral.pauseWhenMinimized: NSNull(),
                IINAPreferenceKeyGeneral.pauseWhenGoesToSleep: [1, 2, 3],
                IINAPreferenceKeyGeneral.screenshotSaveToFile: "bad",
                IINAPreferenceKeyGeneral.screenshotCopyToClipboard: "bad",
                IINAPreferenceKeyGeneral.screenshotFormat: "webp",
                IINAPreferenceKeyNetwork.enableCache: "bad",
                IINAPreferenceKeyNetwork.defaultCacheSize: "bad",
                IINAPreferenceKeyNetwork.cacheBufferSize: "bad",
                IINAPreferenceKeyNetwork.httpProxy: 8080,
                IINAPreferenceKeyUI.hardwareDecoder: "bad",
            ],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.start.shouldResumeFromLastPosition, false)
        XCTAssertEqual(snapshot.start.startPaused, false)
        XCTAssertEqual(snapshot.open.shouldEnterFullScreen, false)
        XCTAssertEqual(snapshot.window.openInNewWindow, false)
        XCTAssertEqual(snapshot.end, .stopAndClose)
        XCTAssertEqual(snapshot.pause.onInactive, false)
        XCTAssertEqual(snapshot.pause.onMinimized, false)
        XCTAssertEqual(snapshot.pause.onSystemSleep, false)
        XCTAssertEqual(snapshot.screenshot.saveToFile, true)
        XCTAssertEqual(snapshot.screenshot.copyToClipboard, false)
        XCTAssertEqual(snapshot.screenshot.format, .png)
        XCTAssertEqual(snapshot.network.enableCache, true)
        XCTAssertEqual(snapshot.network.cacheSizeMB, 153600)
        XCTAssertEqual(snapshot.network.bufferSizeKB, 15360)
        XCTAssertNil(snapshot.network.proxyURL)
        XCTAssertEqual(snapshot.network.hardwareDecoder, .auto)
    }
}
