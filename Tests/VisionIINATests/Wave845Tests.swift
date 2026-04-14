import XCTest
@testable import VisionIINA

final class Wave845Tests: XCTestCase {
    func testUsesFallbackDefaultsWhenMissing() {
        let snapshot = PreferenceRuntimeBridge.snapshot(persisted: [:], defaults: [:])

        XCTAssertEqual(snapshot.screenshotFormat, .png)
        XCTAssertEqual(snapshot.oscPosition, .floating)
        XCTAssertEqual(snapshot.enableOSD, true)
        XCTAssertEqual(snapshot.subtitleOverrideLevel, .yes)
    }

    func testPersistedValuesOverrideDefaults() {
        let snapshot = PreferenceRuntimeBridge.snapshot(
            persisted: [
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.webp.rawValue,
                IINAPreferenceKeyUI.oscPosition: IINAPreferenceOSCPosition.bottom.rawValue,
                IINAPreferenceKeyUI.enableOSD: false,
                IINAPreferenceKeySubtitle.subOverrideLevel: IINAPreferenceSubOverrideLevel.scale.rawValue,
            ],
            defaults: [
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.jpg.rawValue,
                IINAPreferenceKeyUI.oscPosition: IINAPreferenceOSCPosition.top.rawValue,
                IINAPreferenceKeyUI.enableOSD: true,
                IINAPreferenceKeySubtitle.subOverrideLevel: IINAPreferenceSubOverrideLevel.force.rawValue,
            ]
        )

        XCTAssertEqual(snapshot.screenshotFormat, .webp)
        XCTAssertEqual(snapshot.oscPosition, .bottom)
        XCTAssertEqual(snapshot.enableOSD, false)
        XCTAssertEqual(snapshot.subtitleOverrideLevel, .scale)
    }

    func testInvalidPersistedTypesFallBackToDefaults() {
        let snapshot = PreferenceRuntimeBridge.snapshot(
            persisted: [
                IINAPreferenceKeyGeneral.screenshotFormat: "invalid",
                IINAPreferenceKeyUI.oscPosition: "bad",
                IINAPreferenceKeyUI.enableOSD: "nope",
                IINAPreferenceKeySubtitle.subOverrideLevel: "oops",
            ],
            defaults: [
                IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.jpeg.rawValue,
                IINAPreferenceKeyUI.oscPosition: IINAPreferenceOSCPosition.top.rawValue,
                IINAPreferenceKeyUI.enableOSD: true,
                IINAPreferenceKeySubtitle.subOverrideLevel: IINAPreferenceSubOverrideLevel.strip.rawValue,
            ]
        )

        XCTAssertEqual(snapshot.screenshotFormat, .jpeg)
        XCTAssertEqual(snapshot.oscPosition, .top)
        XCTAssertEqual(snapshot.enableOSD, true)
        XCTAssertEqual(snapshot.subtitleOverrideLevel, .strip)
    }

    func testInvalidPersistedAndDefaultsUseHardFallback() {
        let snapshot = PreferenceRuntimeBridge.snapshot(
            persisted: [
                IINAPreferenceKeyGeneral.screenshotFormat: -123,
                IINAPreferenceKeyUI.oscPosition: 999,
                IINAPreferenceKeySubtitle.subOverrideLevel: 999,
            ],
            defaults: [
                IINAPreferenceKeyGeneral.screenshotFormat: -1,
                IINAPreferenceKeyUI.oscPosition: -1,
                IINAPreferenceKeySubtitle.subOverrideLevel: -1,
            ]
        )

        XCTAssertEqual(snapshot.screenshotFormat, .png)
        XCTAssertEqual(snapshot.oscPosition, .floating)
        XCTAssertEqual(snapshot.subtitleOverrideLevel, .yes)
    }
}
