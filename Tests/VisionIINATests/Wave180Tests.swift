import XCTest
@testable import VisionIINA

final class Wave180Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave180.value(), 180)
    XCTAssertEqual(UtilityWave180.label(), "wave-180")
  }
}
