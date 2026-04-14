import XCTest
@testable import VisionIINA

final class Wave711Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave711.value(), 711)
    XCTAssertEqual(UtilityWave711.label(), "wave-711")
  }
}
