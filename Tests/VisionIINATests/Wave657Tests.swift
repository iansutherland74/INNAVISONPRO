import XCTest
@testable import VisionIINA

final class Wave657Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave657.value(), 657)
    XCTAssertEqual(UtilityWave657.label(), "wave-657")
  }
}
