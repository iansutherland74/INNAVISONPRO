import XCTest
@testable import VisionIINA

final class Wave186Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave186.value(), 186)
    XCTAssertEqual(UtilityWave186.label(), "wave-186")
  }
}
