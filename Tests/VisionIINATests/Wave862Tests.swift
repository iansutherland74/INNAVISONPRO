import XCTest
@testable import VisionIINA

final class Wave862Tests: XCTestCase {
    func testBootstrapThroughputThreshold() {
        let preferences: [String: Any] = [
            IINAPreferenceKeyGeneral.resumeLastPosition: true,
            IINAPreferenceKeyGeneral.pauseWhenOpen: false,
            IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
            IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: true,
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
        ]

        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<10_000 {
            _ = PlaybackSessionBootstrap.build(preferences: preferences, defaultPreferences: [:], hasNextItem: true)
        }
        let elapsed = CFAbsoluteTimeGetCurrent() - start

        // Conservative threshold to avoid CI flakiness while still catching major regressions.
        XCTAssertLessThan(elapsed, 1.5)
    }
}
