import XCTest
@testable import VisionIINA

final class Wave655Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave655.value(), 655)
    XCTAssertEqual(UtilityWave655.label(), "wave-655")
  }
}
