import XCTest
@testable import VisionIINA

final class Wave476Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave476.value(), 476)
    XCTAssertEqual(UtilityWave476.label(), "wave-476")
  }
}
