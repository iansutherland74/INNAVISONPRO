import XCTest
@testable import VisionIINA

final class Wave117Tests: XCTestCase {
  func testExpandTilde() {
    XCTAssertTrue(UtilityPathExpander.expandTilde(in: "~/tmp").hasPrefix("/"))
  }
}