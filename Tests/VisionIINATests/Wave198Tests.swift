import XCTest
@testable import VisionIINA

final class Wave198Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave198.value(), 198)
    XCTAssertEqual(UtilityWave198.label(), "wave-198")
  }
}
