import XCTest
@testable import VisionIINA

final class Wave809Tests: XCTestCase {
  func testConstants() {
    XCTAssertEqual(IINAStringConstants.degree, "°")
    XCTAssertEqual(IINAStringConstants.mpvDefaultFont, "sans-serif")
    XCTAssertEqual(IINAStringConstants.videoTimePlaceholder, "--:--:--")
    XCTAssertEqual(IINAStringConstants.chapter, "Chapter")
  }
  func testSymbols() {
    XCTAssertFalse(IINAStringConstants.dot.isEmpty)
    XCTAssertFalse(IINAStringConstants.blackRightPointingTriangle.isEmpty)
    XCTAssertFalse(IINAStringConstants.blackLeftPointingTriangle.isEmpty)
  }
}
