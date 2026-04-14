import XCTest
@testable import VisionIINA

final class Wave148Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave148.value(), 148)
    XCTAssertEqual(UtilityWave148.label(), "wave-148")
  }
}
