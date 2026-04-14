import XCTest
@testable import VisionIINA

final class Wave199Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave199.value(), 199)
    XCTAssertEqual(UtilityWave199.label(), "wave-199")
  }
}
