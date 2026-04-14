import XCTest
@testable import VisionIINA

final class Wave387Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave387.value(), 387)
    XCTAssertEqual(UtilityWave387.label(), "wave-387")
  }
}
