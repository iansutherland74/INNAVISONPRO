import XCTest
@testable import VisionIINA

final class Wave470Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave470.value(), 470)
    XCTAssertEqual(UtilityWave470.label(), "wave-470")
  }
}
