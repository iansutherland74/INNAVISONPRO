import XCTest
@testable import VisionIINA

final class Wave449Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave449.value(), 449)
    XCTAssertEqual(UtilityWave449.label(), "wave-449")
  }
}
