import XCTest
@testable import VisionIINA

final class Wave405Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave405.value(), 405)
    XCTAssertEqual(UtilityWave405.label(), "wave-405")
  }
}
