import XCTest
@testable import VisionIINA

final class Wave191Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave191.value(), 191)
    XCTAssertEqual(UtilityWave191.label(), "wave-191")
  }
}
