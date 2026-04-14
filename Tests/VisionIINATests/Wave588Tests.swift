import XCTest
@testable import VisionIINA

final class Wave588Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave588.value(), 588)
    XCTAssertEqual(UtilityWave588.label(), "wave-588")
  }
}
