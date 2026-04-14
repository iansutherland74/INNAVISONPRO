import XCTest
@testable import VisionIINA

final class Wave566Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave566.value(), 566)
    XCTAssertEqual(UtilityWave566.label(), "wave-566")
  }
}
