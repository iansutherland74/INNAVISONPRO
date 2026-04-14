import XCTest
@testable import VisionIINA

final class Wave233Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave233.value(), 233)
    XCTAssertEqual(UtilityWave233.label(), "wave-233")
  }
}
