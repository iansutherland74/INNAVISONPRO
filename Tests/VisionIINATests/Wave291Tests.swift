import XCTest
@testable import VisionIINA

final class Wave291Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave291.value(), 291)
    XCTAssertEqual(UtilityWave291.label(), "wave-291")
  }
}
