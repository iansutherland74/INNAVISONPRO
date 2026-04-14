import XCTest
@testable import VisionIINA

final class Wave633Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave633.value(), 633)
    XCTAssertEqual(UtilityWave633.label(), "wave-633")
  }
}
