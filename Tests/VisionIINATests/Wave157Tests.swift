import XCTest
@testable import VisionIINA

final class Wave157Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave157.value(), 157)
    XCTAssertEqual(UtilityWave157.label(), "wave-157")
  }
}
