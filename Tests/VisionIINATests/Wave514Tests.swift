import XCTest
@testable import VisionIINA

final class Wave514Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave514.value(), 514)
    XCTAssertEqual(UtilityWave514.label(), "wave-514")
  }
}
