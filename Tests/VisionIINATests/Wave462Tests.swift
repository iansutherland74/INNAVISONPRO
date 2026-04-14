import XCTest
@testable import VisionIINA

final class Wave462Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave462.value(), 462)
    XCTAssertEqual(UtilityWave462.label(), "wave-462")
  }
}
