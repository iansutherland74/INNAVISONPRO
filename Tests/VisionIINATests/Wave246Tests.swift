import XCTest
@testable import VisionIINA

final class Wave246Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave246.value(), 246)
    XCTAssertEqual(UtilityWave246.label(), "wave-246")
  }
}
