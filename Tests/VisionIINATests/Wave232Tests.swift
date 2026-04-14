import XCTest
@testable import VisionIINA

final class Wave232Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave232.value(), 232)
    XCTAssertEqual(UtilityWave232.label(), "wave-232")
  }
}
