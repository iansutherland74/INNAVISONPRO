import XCTest
@testable import VisionIINA

final class Wave642Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave642.value(), 642)
    XCTAssertEqual(UtilityWave642.label(), "wave-642")
  }
}
