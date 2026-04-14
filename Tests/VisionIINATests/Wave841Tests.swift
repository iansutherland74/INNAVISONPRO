import XCTest
@testable import VisionIINA

final class Wave841Tests: XCTestCase {
    func testKeyValues() {
        XCTAssertEqual(IINAPreferenceKeySubtitle.subAutoLoadIINA,     "subAutoLoadIINA")
        XCTAssertEqual(IINAPreferenceKeySubtitle.subTextFont,         "subTextFont")
        XCTAssertEqual(IINAPreferenceKeySubtitle.subPos,              "subPos")
        XCTAssertEqual(IINAPreferenceKeySubtitle.onlineSubProvider,   "onlineSubProvider")
        XCTAssertEqual(IINAPreferenceKeySubtitle.ignoreAssStyles,     "ignoreAssStyles")
    }
    func testAllKeysNonEmpty() {
        XCTAssertEqual(IINAPreferenceKeySubtitle.all.count, 22)
        for key in IINAPreferenceKeySubtitle.all {
            XCTAssertFalse(key.isEmpty)
        }
    }
    func testAllKeysAreUnique() {
        XCTAssertEqual(Set(IINAPreferenceKeySubtitle.all).count,
                       IINAPreferenceKeySubtitle.all.count)
    }
}
