import XCTest
@testable import VisionIINA

final class Wave572Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave572.value(), 572)
    XCTAssertEqual(UtilityWave572.label(), "wave-572")
  }
}
