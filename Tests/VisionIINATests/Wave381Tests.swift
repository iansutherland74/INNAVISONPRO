import XCTest
@testable import VisionIINA

final class Wave381Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave381.value(), 381)
    XCTAssertEqual(UtilityWave381.label(), "wave-381")
  }
}
