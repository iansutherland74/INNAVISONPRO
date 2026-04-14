import XCTest
@testable import VisionIINA

final class Wave173Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave173.value(), 173)
    XCTAssertEqual(UtilityWave173.label(), "wave-173")
  }
}
