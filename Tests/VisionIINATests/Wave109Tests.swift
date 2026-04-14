import XCTest
@testable import VisionIINA

final class Wave109Tests: XCTestCase {
  func testHasher() {
    XCTAssertEqual(UtilityWatchLaterHasher.mpvWatchLaterID(for: "abc"), "900150983cd24fb0d6963f7d28e17f72")
  }
}