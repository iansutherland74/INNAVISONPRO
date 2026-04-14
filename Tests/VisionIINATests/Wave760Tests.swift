import XCTest
@testable import VisionIINA

final class Wave760Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave760.value(), 760)
    XCTAssertEqual(UtilityWave760.label(), "wave-760")
  }
}
