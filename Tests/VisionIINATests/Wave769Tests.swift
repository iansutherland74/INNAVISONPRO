import XCTest
@testable import VisionIINA

final class Wave769Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave769.value(), 769)
    XCTAssertEqual(UtilityWave769.label(), "wave-769")
  }
}
