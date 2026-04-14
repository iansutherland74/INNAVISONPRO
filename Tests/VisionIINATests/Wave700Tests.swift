import XCTest
@testable import VisionIINA

final class Wave700Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave700.value(), 700)
    XCTAssertEqual(UtilityWave700.label(), "wave-700")
  }
}
