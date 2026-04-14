import XCTest
@testable import VisionIINA

final class Wave560Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave560.value(), 560)
    XCTAssertEqual(UtilityWave560.label(), "wave-560")
  }
}
