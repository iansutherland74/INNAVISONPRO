import XCTest
@testable import VisionIINA

final class Wave261Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave261.value(), 261)
    XCTAssertEqual(UtilityWave261.label(), "wave-261")
  }
}
