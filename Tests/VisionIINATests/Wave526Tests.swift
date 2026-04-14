import XCTest
@testable import VisionIINA

final class Wave526Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave526.value(), 526)
    XCTAssertEqual(UtilityWave526.label(), "wave-526")
  }
}
