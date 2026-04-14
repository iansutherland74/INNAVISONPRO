import XCTest
@testable import VisionIINA

final class Wave215Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave215.value(), 215)
    XCTAssertEqual(UtilityWave215.label(), "wave-215")
  }
}
