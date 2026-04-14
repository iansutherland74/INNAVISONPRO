import XCTest
@testable import VisionIINA

final class Wave391Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave391.value(), 391)
    XCTAssertEqual(UtilityWave391.label(), "wave-391")
  }
}
