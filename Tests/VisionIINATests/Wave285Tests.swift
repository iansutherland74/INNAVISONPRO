import XCTest
@testable import VisionIINA

final class Wave285Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave285.value(), 285)
    XCTAssertEqual(UtilityWave285.label(), "wave-285")
  }
}
