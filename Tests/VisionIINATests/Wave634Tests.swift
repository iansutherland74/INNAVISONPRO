import XCTest
@testable import VisionIINA

final class Wave634Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave634.value(), 634)
    XCTAssertEqual(UtilityWave634.label(), "wave-634")
  }
}
