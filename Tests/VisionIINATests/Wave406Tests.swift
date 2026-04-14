import XCTest
@testable import VisionIINA

final class Wave406Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave406.value(), 406)
    XCTAssertEqual(UtilityWave406.label(), "wave-406")
  }
}
