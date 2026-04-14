import XCTest
@testable import VisionIINA

final class Wave855Tests: XCTestCase {
    func testBootstrapComposesAllPolicySlices() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: true,
                IINAPreferenceKeyGeneral.pauseWhenOpen: false,
                IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
                IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: true,
                IINAPreferenceKeyGeneral.alwaysFloatOnTop: false,
                IINAPreferenceKeyGeneral.autoRepeat: false,
                IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true,
                IINAPreferenceKeyGeneral.pauseWhenInactive: true,
                IINAPreferenceKeyGeneral.pauseWhenMinimized: false,
                IINAPreferenceKeyGeneral.pauseWhenGoesToSleep: true,
                IINAPreferenceKeyGeneral.screenshotSaveToFile: true,
                IINAPreferenceKeyGeneral.screenshotCopyToClipboard: false,
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.webp.rawValue,
                IINAPreferenceKeyNetwork.enableCache: true,
                IINAPreferenceKeyNetwork.defaultCacheSize: 2048,
                IINAPreferenceKeyNetwork.cacheBufferSize: 512,
                IINAPreferenceKeyNetwork.httpProxy: "http://proxy.local:8080",
                IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.autoCopy.rawValue,
            ],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.start.shouldResumeFromLastPosition, true)
        XCTAssertEqual(snapshot.open.shouldEnterFullScreen, true)
        XCTAssertEqual(snapshot.window.openInNewWindow, true)
        XCTAssertEqual(snapshot.end, .stopAndKeepOpen)
        XCTAssertEqual(snapshot.pause.onInactive, true)
        XCTAssertEqual(snapshot.pause.onMinimized, false)
        XCTAssertEqual(snapshot.pause.onSystemSleep, true)
        XCTAssertEqual(snapshot.screenshot.format, .webp)
        XCTAssertEqual(snapshot.network.hardwareDecoder, .autoCopy)
    }

    func testBridgeStoresLatestBootstrapSnapshot() {
        let bridge = PlaybackCoreBridge()

        let snapshot = bridge.bootstrap(
            preferences: [
                IINAPreferenceKeyGeneral.autoRepeat: true,
                IINAPreferenceKeyNetwork.enableCache: false,
            ],
            defaultPreferences: [:],
            hasNextItem: true
        )

        XCTAssertEqual(snapshot.end, .replayCurrent)
        XCTAssertEqual(snapshot.network.enableCache, false)
        XCTAssertEqual(bridge.latestBootstrapSnapshot, snapshot)
    }

    func testBootstrapFallbacksWhenInputsInvalid() {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: [
                IINAPreferenceKeyGeneral.resumeLastPosition: "bad",
                IINAPreferenceKeyGeneral.pauseWhenOpen: "bad",
                IINAPreferenceKeyGeneral.screenshotFormat: "bad",
                IINAPreferenceKeyNetwork.enableCache: "bad",
                IINAPreferenceKeyUI.hardwareDecoder: "bad",
            ],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(snapshot.start.shouldResumeFromLastPosition, false)
        XCTAssertEqual(snapshot.start.startPaused, false)
        XCTAssertEqual(snapshot.screenshot.format, .png)
        XCTAssertEqual(snapshot.network.enableCache, true)
        XCTAssertEqual(snapshot.network.hardwareDecoder, .auto)
    }
}
