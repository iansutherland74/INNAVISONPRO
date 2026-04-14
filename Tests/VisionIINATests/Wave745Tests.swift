import XCTest
@testable import VisionIINA

final class Wave745Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave745.value(), 745)
    XCTAssertEqual(UtilityWave745.label(), "wave-745")
  }
}
