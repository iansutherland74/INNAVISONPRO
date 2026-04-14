import XCTest
@testable import VisionIINA

final class Wave247Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave247.value(), 247)
    XCTAssertEqual(UtilityWave247.label(), "wave-247")
  }
}
