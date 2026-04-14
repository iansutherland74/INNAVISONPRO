import XCTest
@testable import VisionIINA

final class Wave650Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave650.value(), 650)
    XCTAssertEqual(UtilityWave650.label(), "wave-650")
  }
}
