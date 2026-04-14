import XCTest
@testable import VisionIINA

final class Wave814Tests: XCTestCase {
    func testOverlayModeRawValues() {
        XCTAssertEqual(IINAOverlayMode.file.rawValue,   "file")
        XCTAssertEqual(IINAOverlayMode.simple.rawValue, "simple")
        XCTAssertEqual(IINAOverlayMode.allCases.count, 2)
    }
    func testSimpleModeConstants() {
        XCTAssertTrue(IINAOverlaySimpleMode.systemFont.contains("-apple-system"))
        XCTAssertEqual(IINAOverlaySimpleMode.defaultFontSize, "13px")
        XCTAssertEqual(IINAOverlaySimpleMode.contentDivID, "content")
        XCTAssertEqual(IINAOverlaySimpleMode.styleDivID,   "style")
        XCTAssertEqual(IINAOverlaySimpleMode.bodyColor,    "white")
    }
}
