import XCTest
@testable import VisionIINA

final class Wave860Tests: XCTestCase {
    func testBootstrapIsDeterministicForSameInputs() {
        let preferences: [String: Any] = [
            IINAPreferenceKeyGeneral.resumeLastPosition: true,
            IINAPreferenceKeyGeneral.pauseWhenOpen: false,
            IINAPreferenceKeyGeneral.fullScreenWhenOpen: true,
            IINAPreferenceKeyGeneral.alwaysOpenInNewWindow: true,
            IINAPreferenceKeyGeneral.autoRepeat: false,
            IINAPreferenceKeyGeneral.keepOpenOnFileEnd: true,
            IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.webp.rawValue,
            IINAPreferenceKeyNetwork.enableCache: true,
            IINAPreferenceKeyUI.hardwareDecoder: IINAPreferenceHardwareDecoder.autoCopy.rawValue,
        ]

        let first = PlaybackSessionBootstrap.build(
            preferences: preferences,
            defaultPreferences: [:],
            hasNextItem: false
        )

        let second = PlaybackSessionBootstrap.build(
            preferences: preferences,
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(first, second)
    }

    func testUnknownAndLegacyLikeKeysDoNotAffectBootstrap() {
        let clean = PlaybackSessionBootstrap.build(
            preferences: [:],
            defaultPreferences: [:],
            hasNextItem: false
        )

        let noisy = PlaybackSessionBootstrap.build(
            preferences: [
                "legacy_pauseWhenOpen": true,
                "legacy_resumeLastPosition": true,
                "legacy_httpProxy": "http://old:8080",
                "random_unknown_key": 1234,
            ],
            defaultPreferences: [:],
            hasNextItem: false
        )

        XCTAssertEqual(noisy, clean)
    }
}
