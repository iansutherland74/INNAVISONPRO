import XCTest
@testable import VisionIINA

final class Wave320Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave320.value(), 320)
    XCTAssertEqual(UtilityWave320.label(), "wave-320")
  }
}
