import XCTest
@testable import VisionIINA

final class Wave110Tests: XCTestCase {
  func testProgressParser() {
    XCTAssertEqual(UtilityWatchLaterProgressParser.parseSeconds(from: "start=12.5"), 12.5)
    XCTAssertNil(UtilityWatchLaterProgressParser.parseSeconds(from: "foo=12.5"))
  }
}