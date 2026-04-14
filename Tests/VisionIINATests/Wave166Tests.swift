import XCTest
@testable import VisionIINA

final class Wave166Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave166.value(), 166)
    XCTAssertEqual(UtilityWave166.label(), "wave-166")
  }
}
