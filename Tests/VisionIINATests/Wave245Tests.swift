import XCTest
@testable import VisionIINA

final class Wave245Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave245.value(), 245)
    XCTAssertEqual(UtilityWave245.label(), "wave-245")
  }
}
