import XCTest
@testable import VisionIINA

final class Wave421Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave421.value(), 421)
    XCTAssertEqual(UtilityWave421.label(), "wave-421")
  }
}
