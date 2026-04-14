import XCTest
@testable import VisionIINA

final class Wave430Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave430.value(), 430)
    XCTAssertEqual(UtilityWave430.label(), "wave-430")
  }
}
