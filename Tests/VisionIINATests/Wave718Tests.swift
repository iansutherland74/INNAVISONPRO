import XCTest
@testable import VisionIINA

final class Wave718Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave718.value(), 718)
    XCTAssertEqual(UtilityWave718.label(), "wave-718")
  }
}
