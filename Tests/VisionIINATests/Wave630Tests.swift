import XCTest
@testable import VisionIINA

final class Wave630Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave630.value(), 630)
    XCTAssertEqual(UtilityWave630.label(), "wave-630")
  }
}
