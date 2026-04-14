import XCTest
@testable import VisionIINA

final class Wave392Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave392.value(), 392)
    XCTAssertEqual(UtilityWave392.label(), "wave-392")
  }
}
