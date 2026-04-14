import XCTest
@testable import VisionIINA

final class Wave252Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave252.value(), 252)
    XCTAssertEqual(UtilityWave252.label(), "wave-252")
  }
}
