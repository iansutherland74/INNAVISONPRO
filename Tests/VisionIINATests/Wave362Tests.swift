import XCTest
@testable import VisionIINA

final class Wave362Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave362.value(), 362)
    XCTAssertEqual(UtilityWave362.label(), "wave-362")
  }
}
