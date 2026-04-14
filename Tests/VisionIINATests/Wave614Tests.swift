import XCTest
@testable import VisionIINA

final class Wave614Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave614.value(), 614)
    XCTAssertEqual(UtilityWave614.label(), "wave-614")
  }
}
