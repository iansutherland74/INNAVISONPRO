import XCTest
@testable import VisionIINA

final class Wave348Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave348.value(), 348)
    XCTAssertEqual(UtilityWave348.label(), "wave-348")
  }
}
