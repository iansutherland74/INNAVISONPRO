import XCTest
@testable import VisionIINA

final class Wave712Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave712.value(), 712)
    XCTAssertEqual(UtilityWave712.label(), "wave-712")
  }
}
