import XCTest
@testable import VisionIINA

final class Wave645Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave645.value(), 645)
    XCTAssertEqual(UtilityWave645.label(), "wave-645")
  }
}
