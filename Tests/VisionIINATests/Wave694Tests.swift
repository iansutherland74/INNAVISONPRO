import XCTest
@testable import VisionIINA

final class Wave694Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave694.value(), 694)
    XCTAssertEqual(UtilityWave694.label(), "wave-694")
  }
}
