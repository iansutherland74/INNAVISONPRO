import XCTest
@testable import VisionIINA

final class Wave502Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave502.value(), 502)
    XCTAssertEqual(UtilityWave502.label(), "wave-502")
  }
}
