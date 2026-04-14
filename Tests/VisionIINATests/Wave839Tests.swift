import XCTest
@testable import VisionIINA

final class Wave839Tests: XCTestCase {
    func testKeyValues() {
        XCTAssertEqual(IINAPreferenceKeyGeneral.actionAfterLaunch,          "actionAfterLaunch")
        XCTAssertEqual(IINAPreferenceKeyGeneral.alwaysOpenInNewWindow,      "alwaysOpenInNewWindow")
        XCTAssertEqual(IINAPreferenceKeyGeneral.pauseWhenOpen,              "pauseWhenOpen")
        XCTAssertEqual(IINAPreferenceKeyGeneral.screenshotFormat,           "screenShotFormat")
        XCTAssertEqual(IINAPreferenceKeyGeneral.screenshotFolder,           "screenShotFolder")
    }
    func testAllKeysNonEmpty() {
        XCTAssertEqual(IINAPreferenceKeyGeneral.all.count, 20)
        for key in IINAPreferenceKeyGeneral.all {
            XCTAssertFalse(key.isEmpty, "Key should not be empty")
        }
    }
    func testAllKeysAreUnique() {
        let set = Set(IINAPreferenceKeyGeneral.all)
        XCTAssertEqual(set.count, IINAPreferenceKeyGeneral.all.count)
    }
}
