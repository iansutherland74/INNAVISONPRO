import XCTest
@testable import VisionIINA

final class Wave490Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave490.value(), 490)
    XCTAssertEqual(UtilityWave490.label(), "wave-490")
  }
}
