import XCTest
@testable import VisionIINA

final class Wave179Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave179.value(), 179)
    XCTAssertEqual(UtilityWave179.label(), "wave-179")
  }
}
