import XCTest
@testable import VisionIINA

final class Wave570Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave570.value(), 570)
    XCTAssertEqual(UtilityWave570.label(), "wave-570")
  }
}
