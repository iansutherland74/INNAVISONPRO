import XCTest
@testable import VisionIINA

final class Wave538Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave538.value(), 538)
    XCTAssertEqual(UtilityWave538.label(), "wave-538")
  }
}
