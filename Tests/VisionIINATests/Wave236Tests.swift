import XCTest
@testable import VisionIINA

final class Wave236Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave236.value(), 236)
    XCTAssertEqual(UtilityWave236.label(), "wave-236")
  }
}
