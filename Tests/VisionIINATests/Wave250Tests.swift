import XCTest
@testable import VisionIINA

final class Wave250Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave250.value(), 250)
    XCTAssertEqual(UtilityWave250.label(), "wave-250")
  }
}
