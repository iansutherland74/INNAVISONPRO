import XCTest
@testable import VisionIINA

final class Wave313Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave313.value(), 313)
    XCTAssertEqual(UtilityWave313.label(), "wave-313")
  }
}
