import XCTest
@testable import VisionIINA

final class Wave605Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave605.value(), 605)
    XCTAssertEqual(UtilityWave605.label(), "wave-605")
  }
}
