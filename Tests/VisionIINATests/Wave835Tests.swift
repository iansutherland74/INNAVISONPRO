import XCTest
@testable import VisionIINA

final class Wave835Tests: XCTestCase {
    func testHitTestFunctionName() {
        XCTAssertEqual(IINAOverlayHitTest.jsFunctionName, "_hitTest")
    }
    func testClickableDataAttribute() {
        XCTAssertEqual(IINAOverlayHitTest.clickableDataset, "clickable")
        XCTAssertFalse(IINAOverlayHitTest.clickableDataset.isEmpty)
    }
    func testMessageHandlerName() {
        XCTAssertEqual(IINAOverlayHitTest.messageHandlerName, "iina")
    }
    func testFunctionNameIsInternal() {
        XCTAssertTrue(IINAOverlayHitTest.jsFunctionName.hasPrefix("_"))
    }
}
