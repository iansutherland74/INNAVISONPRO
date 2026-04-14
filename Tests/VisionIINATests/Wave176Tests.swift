import XCTest
@testable import VisionIINA

final class Wave176Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave176.value(), 176)
    XCTAssertEqual(UtilityWave176.label(), "wave-176")
  }
}
