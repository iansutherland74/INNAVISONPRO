import XCTest
@testable import VisionIINA

final class Wave530Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave530.value(), 530)
    XCTAssertEqual(UtilityWave530.label(), "wave-530")
  }
}
