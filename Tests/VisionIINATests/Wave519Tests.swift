import XCTest
@testable import VisionIINA

final class Wave519Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave519.value(), 519)
    XCTAssertEqual(UtilityWave519.label(), "wave-519")
  }
}
