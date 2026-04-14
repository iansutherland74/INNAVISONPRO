import XCTest
@testable import VisionIINA

final class Wave218Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave218.value(), 218)
    XCTAssertEqual(UtilityWave218.label(), "wave-218")
  }
}
