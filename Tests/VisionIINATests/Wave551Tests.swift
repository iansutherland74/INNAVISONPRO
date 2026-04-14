import XCTest
@testable import VisionIINA

final class Wave551Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave551.value(), 551)
    XCTAssertEqual(UtilityWave551.label(), "wave-551")
  }
}
