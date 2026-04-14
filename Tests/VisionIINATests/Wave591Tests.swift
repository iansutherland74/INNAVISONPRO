import XCTest
@testable import VisionIINA

final class Wave591Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave591.value(), 591)
    XCTAssertEqual(UtilityWave591.label(), "wave-591")
  }
}
