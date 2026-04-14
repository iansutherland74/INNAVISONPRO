import XCTest
@testable import VisionIINA

final class Wave596Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave596.value(), 596)
    XCTAssertEqual(UtilityWave596.label(), "wave-596")
  }
}
