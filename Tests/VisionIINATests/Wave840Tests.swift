import XCTest
@testable import VisionIINA

final class Wave840Tests: XCTestCase {
    func testKeyValues() {
        XCTAssertEqual(IINAPreferenceKeyUI.themeMaterial,    "themeMaterial")
        XCTAssertEqual(IINAPreferenceKeyUI.enableOSD,        "enableOSD")
        XCTAssertEqual(IINAPreferenceKeyUI.oscPosition,      "oscPosition")
        XCTAssertEqual(IINAPreferenceKeyUI.softVolume,       "softVolume")
        XCTAssertEqual(IINAPreferenceKeyUI.hardwareDecoder,  "hardwareDecoder")
    }
    func testAllKeysNonEmpty() {
        XCTAssertEqual(IINAPreferenceKeyUI.all.count, 19)
        for key in IINAPreferenceKeyUI.all {
            XCTAssertFalse(key.isEmpty)
        }
    }
    func testAllKeysAreUnique() {
        XCTAssertEqual(Set(IINAPreferenceKeyUI.all).count, IINAPreferenceKeyUI.all.count)
    }
}
