import XCTest
@testable import VisionIINA

final class Wave822Tests: XCTestCase {
    func testTagValues() {
        XCTAssertEqual(IINADevToolMenuItemTag.jsMenuItemInstance, 1)
        XCTAssertEqual(IINADevToolMenuItemTag.jsMenuItemWebView,  2)
    }
    func testIsKnown() {
        XCTAssertTrue(IINADevToolMenuItemTag.isKnown(1))
        XCTAssertTrue(IINADevToolMenuItemTag.isKnown(2))
        XCTAssertFalse(IINADevToolMenuItemTag.isKnown(0))
        XCTAssertFalse(IINADevToolMenuItemTag.isKnown(3))
    }
    func testTagsAreDistinct() {
        XCTAssertNotEqual(IINADevToolMenuItemTag.jsMenuItemInstance,
                          IINADevToolMenuItemTag.jsMenuItemWebView)
    }
}
