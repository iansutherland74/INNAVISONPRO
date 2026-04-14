import XCTest
@testable import VisionIINA

final class Wave448Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave448.value(), 448)
    XCTAssertEqual(UtilityWave448.label(), "wave-448")
  }
}
