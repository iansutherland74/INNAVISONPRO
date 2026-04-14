import XCTest
@testable import VisionIINA

final class Wave357Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave357.value(), 357)
    XCTAssertEqual(UtilityWave357.label(), "wave-357")
  }
}
