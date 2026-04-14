import XCTest
@testable import VisionIINA

final class Wave8Tests: XCTestCase {
  func testWave8Bootstrap() {
    XCTAssertEqual(Wave8Bootstrap.stage, 8)
    XCTAssertEqual(Wave8Bootstrap.label(), "wave-8")
  }
}
