import XCTest
@testable import VisionIINA

final class Wave494Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave494.value(), 494)
    XCTAssertEqual(UtilityWave494.label(), "wave-494")
  }
}
