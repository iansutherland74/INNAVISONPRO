import XCTest
@testable import VisionIINA

final class Wave463Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave463.value(), 463)
    XCTAssertEqual(UtilityWave463.label(), "wave-463")
  }
}
