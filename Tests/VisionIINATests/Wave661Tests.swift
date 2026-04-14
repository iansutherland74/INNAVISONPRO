import XCTest
@testable import VisionIINA

final class Wave661Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave661.value(), 661)
    XCTAssertEqual(UtilityWave661.label(), "wave-661")
  }
}
