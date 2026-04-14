import XCTest
@testable import VisionIINA

final class Wave828Tests: XCTestCase {
    func testPropertyNames() {
        XCTAssertEqual(IINASubtitleItemJSProperty.data, "data")
        XCTAssertEqual(IINASubtitleItemJSProperty.desc, "desc")
        XCTAssertEqual(IINASubtitleItemJSProperty.setDownloadCallback, "__setDownloadCallback")
    }
    func testCallbackIsInternal() {
        XCTAssertTrue(IINASubtitleItemJSProperty.setDownloadCallback.hasPrefix("__"))
    }
    func testPublicPropertiesDontStartUnderscore() {
        XCTAssertFalse(IINASubtitleItemJSProperty.data.hasPrefix("_"))
        XCTAssertFalse(IINASubtitleItemJSProperty.desc.hasPrefix("_"))
    }
}
