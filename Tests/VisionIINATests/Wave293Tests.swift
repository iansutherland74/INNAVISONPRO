import XCTest
@testable import VisionIINA

final class Wave293Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave293.value(), 293)
    XCTAssertEqual(UtilityWave293.label(), "wave-293")
  }
}
