import XCTest
@testable import VisionIINA

final class Wave577Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave577.value(), 577)
    XCTAssertEqual(UtilityWave577.label(), "wave-577")
  }
}
