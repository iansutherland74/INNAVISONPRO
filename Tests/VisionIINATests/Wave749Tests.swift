import XCTest
@testable import VisionIINA

final class Wave749Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave749.value(), 749)
    XCTAssertEqual(UtilityWave749.label(), "wave-749")
  }
}
