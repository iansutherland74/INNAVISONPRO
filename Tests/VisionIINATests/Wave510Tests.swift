import XCTest
@testable import VisionIINA

final class Wave510Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave510.value(), 510)
    XCTAssertEqual(UtilityWave510.label(), "wave-510")
  }
}
