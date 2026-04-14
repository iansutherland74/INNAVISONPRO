import XCTest
@testable import VisionIINA

final class Wave195Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave195.value(), 195)
    XCTAssertEqual(UtilityWave195.label(), "wave-195")
  }
}
