import XCTest
@testable import VisionIINA

final class Wave216Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave216.value(), 216)
    XCTAssertEqual(UtilityWave216.label(), "wave-216")
  }
}
