import XCTest
@testable import VisionIINA

final class Wave158Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave158.value(), 158)
    XCTAssertEqual(UtilityWave158.label(), "wave-158")
  }
}
