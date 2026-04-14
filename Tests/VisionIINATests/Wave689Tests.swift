import XCTest
@testable import VisionIINA

final class Wave689Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave689.value(), 689)
    XCTAssertEqual(UtilityWave689.label(), "wave-689")
  }
}
