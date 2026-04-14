import XCTest
@testable import VisionIINA

final class Wave205Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave205.value(), 205)
    XCTAssertEqual(UtilityWave205.label(), "wave-205")
  }
}
