import XCTest
@testable import VisionIINA

final class Wave486Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave486.value(), 486)
    XCTAssertEqual(UtilityWave486.label(), "wave-486")
  }
}
