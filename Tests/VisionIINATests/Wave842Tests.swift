import XCTest
@testable import VisionIINA

final class Wave842Tests: XCTestCase {
    func testKeyValues() {
        XCTAssertEqual(IINAPreferenceKeyNetwork.enableCache,      "enableCache")
        XCTAssertEqual(IINAPreferenceKeyNetwork.ytdlEnabled,      "ytdlEnabled")
        XCTAssertEqual(IINAPreferenceKeyNetwork.httpProxy,        "httpProxy")
        XCTAssertEqual(IINAPreferenceKeyNetwork.spdifAC3,         "spdifAC3")
        XCTAssertEqual(IINAPreferenceKeyNetwork.userAgent,        "userAgent")
    }
    func testAllKeysNonEmpty() {
        XCTAssertEqual(IINAPreferenceKeyNetwork.all.count, 15)
        for key in IINAPreferenceKeyNetwork.all {
            XCTAssertFalse(key.isEmpty)
        }
    }
    func testAllKeysAreUnique() {
        XCTAssertEqual(Set(IINAPreferenceKeyNetwork.all).count,
                       IINAPreferenceKeyNetwork.all.count)
    }
}
