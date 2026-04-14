import XCTest
@testable import VisionIINA

final class Wave574Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave574.value(), 574)
    XCTAssertEqual(UtilityWave574.label(), "wave-574")
  }
}
