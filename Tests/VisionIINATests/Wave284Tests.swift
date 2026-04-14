import XCTest
@testable import VisionIINA

final class Wave284Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave284.value(), 284)
    XCTAssertEqual(UtilityWave284.label(), "wave-284")
  }
}
