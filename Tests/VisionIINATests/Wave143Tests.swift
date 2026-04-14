import XCTest
@testable import VisionIINA

final class Wave143Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave143.value(), 143)
    XCTAssertEqual(UtilityWave143.label(), "wave-143")
  }
}
