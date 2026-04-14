import XCTest
@testable import VisionIINA

final class Wave160Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave160.value(), 160)
    XCTAssertEqual(UtilityWave160.label(), "wave-160")
  }
}
