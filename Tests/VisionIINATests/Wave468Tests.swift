import XCTest
@testable import VisionIINA

final class Wave468Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave468.value(), 468)
    XCTAssertEqual(UtilityWave468.label(), "wave-468")
  }
}
