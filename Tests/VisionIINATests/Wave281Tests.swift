import XCTest
@testable import VisionIINA

final class Wave281Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave281.value(), 281)
    XCTAssertEqual(UtilityWave281.label(), "wave-281")
  }
}
