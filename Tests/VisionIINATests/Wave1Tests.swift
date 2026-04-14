import XCTest
@testable import VisionIINA

final class Wave1Tests: XCTestCase {
  func testWave1Bootstrap() {
    XCTAssertEqual(Wave1Bootstrap.stage, 1)
    XCTAssertEqual(Wave1Bootstrap.label(), "wave-1")
  }
}
