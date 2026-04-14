import XCTest
@testable import VisionIINA

final class Wave472Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave472.value(), 472)
    XCTAssertEqual(UtilityWave472.label(), "wave-472")
  }
}
