import XCTest
@testable import VisionIINA

final class Wave858Tests: XCTestCase {
    func testBootstrapCompositionPerformance() {
        let preferences: [String: Any] = [
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
        ]

        measure {
            for _ in 0..<1000 {
                _ = PlaybackSessionBootstrap.build(
                    preferences: preferences,
                    defaultPreferences: [:],
                    hasNextItem: true
                )
            }
        }
    }
}
