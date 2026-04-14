import XCTest
@testable import VisionIINA

final class Wave242Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave242.value(), 242)
    XCTAssertEqual(UtilityWave242.label(), "wave-242")
  }
}
