import XCTest
@testable import VisionIINA

final class Wave853Tests: XCTestCase {
    func testPersistedOverridesDefaults() {
        let decision = ScreenshotRoutingPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.screenshotSaveToFile: false,
                IINAPreferenceKeyGeneral.screenshotCopyToClipboard: true,
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.webp.rawValue,
            ],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.screenshotSaveToFile: true,
                IINAPreferenceKeyGeneral.screenshotCopyToClipboard: false,
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.png.rawValue,
            ]
        )

        XCTAssertFalse(decision.saveToFile)
        XCTAssertTrue(decision.copyToClipboard)
        XCTAssertEqual(decision.format, .webp)
    }

    func testDefaultsUsedWhenMissing() {
        let decision = ScreenshotRoutingPolicy.decide(
            preferences: [:],
            defaultPreferences: [
                IINAPreferenceKeyGeneral.screenshotSaveToFile: false,
                IINAPreferenceKeyGeneral.screenshotCopyToClipboard: true,
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.jpeg.rawValue,
            ]
        )

        XCTAssertFalse(decision.saveToFile)
        XCTAssertTrue(decision.copyToClipboard)
        XCTAssertEqual(decision.format, .jpeg)
    }

    func testFallbackUsedWhenMissingEverywhere() {
        let decision = ScreenshotRoutingPolicy.decide(preferences: [:], defaultPreferences: [:])

        XCTAssertTrue(decision.saveToFile)
        XCTAssertFalse(decision.copyToClipboard)
        XCTAssertEqual(decision.format, .png)
    }

    func testInvalidTypesFallBackSafely() {
        let decision = ScreenshotRoutingPolicy.decide(
            preferences: [
                IINAPreferenceKeyGeneral.screenshotSaveToFile: "bad",
                IINAPreferenceKeyGeneral.screenshotCopyToClipboard: "bad",
                IINAPreferenceKeyGeneral.screenshotFormat: "bad",
            ],
            defaultPreferences: [:]
        )

        XCTAssertTrue(decision.saveToFile)
        XCTAssertFalse(decision.copyToClipboard)
        XCTAssertEqual(decision.format, .png)
    }
}
