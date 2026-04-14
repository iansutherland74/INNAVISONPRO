import XCTest
@testable import VisionIINA

final class Wave555Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave555.value(), 555)
    XCTAssertEqual(UtilityWave555.label(), "wave-555")
  }
}
