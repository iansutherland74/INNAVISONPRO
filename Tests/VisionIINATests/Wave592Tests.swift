import XCTest
@testable import VisionIINA

final class Wave592Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave592.value(), 592)
    XCTAssertEqual(UtilityWave592.label(), "wave-592")
  }
}
