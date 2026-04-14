import XCTest
@testable import VisionIINA

final class Wave571Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave571.value(), 571)
    XCTAssertEqual(UtilityWave571.label(), "wave-571")
  }
}
