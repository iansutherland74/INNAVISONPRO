import XCTest
@testable import VisionIINA

final class Wave763Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave763.value(), 763)
    XCTAssertEqual(UtilityWave763.label(), "wave-763")
  }
}
