import XCTest
@testable import VisionIINA

final class Wave206Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave206.value(), 206)
    XCTAssertEqual(UtilityWave206.label(), "wave-206")
  }
}
