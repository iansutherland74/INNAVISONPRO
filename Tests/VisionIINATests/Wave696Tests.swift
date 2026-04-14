import XCTest
@testable import VisionIINA

final class Wave696Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave696.value(), 696)
    XCTAssertEqual(UtilityWave696.label(), "wave-696")
  }
}
