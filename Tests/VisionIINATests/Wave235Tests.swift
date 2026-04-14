import XCTest
@testable import VisionIINA

final class Wave235Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave235.value(), 235)
    XCTAssertEqual(UtilityWave235.label(), "wave-235")
  }
}
