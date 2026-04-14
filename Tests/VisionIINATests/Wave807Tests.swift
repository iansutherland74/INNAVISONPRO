import XCTest
@testable import VisionIINA

final class Wave807Tests: XCTestCase {
  func testEventRawValues() {
    XCTAssertEqual(IINAPluginInputEvent.keyDown.rawValue, "keyDown")
    XCTAssertEqual(IINAPluginInputEvent.mouseDrag.rawValue, "mouseDrag")
  }
  func testEventClassification() {
    XCTAssertTrue(IINAPluginInputEvent.keyDown.isKeyEvent)
    XCTAssertFalse(IINAPluginInputEvent.keyDown.isMouseEvent)
    XCTAssertTrue(IINAPluginInputEvent.mouseDown.isMouseEvent)
    XCTAssertFalse(IINAPluginInputEvent.mouseDown.isKeyEvent)
  }
  func testPriorityRawValues() {
    XCTAssertEqual(IINAPluginInputPriority.low.rawValue, 0)
    XCTAssertEqual(IINAPluginInputPriority.high.rawValue, 100)
    XCTAssertEqual(IINAPluginInputPriority.default, .low)
  }
  func testAllCases() {
    XCTAssertEqual(IINAPluginInputEvent.allCases.count, 5)
    XCTAssertEqual(IINAPluginInputPriority.allCases.count, 2)
  }
}
