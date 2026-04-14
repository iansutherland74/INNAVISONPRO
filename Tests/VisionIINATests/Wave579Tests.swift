import XCTest
@testable import VisionIINA

final class Wave579Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave579.value(), 579)
    XCTAssertEqual(UtilityWave579.label(), "wave-579")
  }
}
