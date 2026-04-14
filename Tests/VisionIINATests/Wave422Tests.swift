import XCTest
@testable import VisionIINA

final class Wave422Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave422.value(), 422)
    XCTAssertEqual(UtilityWave422.label(), "wave-422")
  }
}
