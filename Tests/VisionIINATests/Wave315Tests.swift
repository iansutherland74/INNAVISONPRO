import XCTest
@testable import VisionIINA

final class Wave315Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave315.value(), 315)
    XCTAssertEqual(UtilityWave315.label(), "wave-315")
  }
}
