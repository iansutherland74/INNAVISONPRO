import XCTest
@testable import VisionIINA

final class Wave340Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave340.value(), 340)
    XCTAssertEqual(UtilityWave340.label(), "wave-340")
  }
}
