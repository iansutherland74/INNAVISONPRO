import XCTest
@testable import VisionIINA

final class Wave600Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave600.value(), 600)
    XCTAssertEqual(UtilityWave600.label(), "wave-600")
  }
}
