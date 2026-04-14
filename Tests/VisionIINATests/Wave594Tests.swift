import XCTest
@testable import VisionIINA

final class Wave594Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave594.value(), 594)
    XCTAssertEqual(UtilityWave594.label(), "wave-594")
  }
}
