import XCTest
@testable import VisionIINA

final class Wave332Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave332.value(), 332)
    XCTAssertEqual(UtilityWave332.label(), "wave-332")
  }
}
