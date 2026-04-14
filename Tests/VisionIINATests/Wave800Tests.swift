import XCTest
@testable import VisionIINA

final class Wave800Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave800.value(), 800)
    XCTAssertEqual(UtilityWave800.label(), "wave-800")
  }
}
