import XCTest
@testable import VisionIINA

final class Wave359Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave359.value(), 359)
    XCTAssertEqual(UtilityWave359.label(), "wave-359")
  }
}
