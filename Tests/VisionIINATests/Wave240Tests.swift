import XCTest
@testable import VisionIINA

final class Wave240Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave240.value(), 240)
    XCTAssertEqual(UtilityWave240.label(), "wave-240")
  }
}
