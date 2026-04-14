import XCTest
@testable import VisionIINA

final class Wave341Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave341.value(), 341)
    XCTAssertEqual(UtilityWave341.label(), "wave-341")
  }
}
