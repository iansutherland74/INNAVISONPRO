import XCTest
@testable import VisionIINA

final class Wave223Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave223.value(), 223)
    XCTAssertEqual(UtilityWave223.label(), "wave-223")
  }
}
