import XCTest
@testable import VisionIINA

final class Wave316Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave316.value(), 316)
    XCTAssertEqual(UtilityWave316.label(), "wave-316")
  }
}
