import XCTest
@testable import VisionIINA

final class Wave692Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave692.value(), 692)
    XCTAssertEqual(UtilityWave692.label(), "wave-692")
  }
}
