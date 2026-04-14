import XCTest
@testable import VisionIINA

final class Wave370Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave370.value(), 370)
    XCTAssertEqual(UtilityWave370.label(), "wave-370")
  }
}
