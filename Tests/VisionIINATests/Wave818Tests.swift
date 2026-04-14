import XCTest
@testable import VisionIINA

final class Wave818Tests: XCTestCase {
    func testRawValues() {
        XCTAssertEqual(IINAWindowPropertyKey.title.rawValue,               "title")
        XCTAssertEqual(IINAWindowPropertyKey.resizable.rawValue,           "resizable")
        XCTAssertEqual(IINAWindowPropertyKey.fullSizeContentView.rawValue, "fullSizeContentView")
        XCTAssertEqual(IINAWindowPropertyKey.hideTitleBar.rawValue,        "hideTitleBar")
        XCTAssertEqual(IINAWindowPropertyKey.allCases.count, 4)
    }
    func testStyleMaskClassification() {
        XCTAssertTrue(IINAWindowPropertyKey.resizable.isStyleMaskKey)
        XCTAssertTrue(IINAWindowPropertyKey.fullSizeContentView.isStyleMaskKey)
        XCTAssertFalse(IINAWindowPropertyKey.title.isStyleMaskKey)
        XCTAssertFalse(IINAWindowPropertyKey.hideTitleBar.isStyleMaskKey)
    }
    func testStyleMaskCount() {
        let styleMaskKeys = IINAWindowPropertyKey.allCases.filter(\.isStyleMaskKey)
        XCTAssertEqual(styleMaskKeys.count, 2)
    }
}
