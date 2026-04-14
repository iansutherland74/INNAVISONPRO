import XCTest
@testable import VisionIINA

final class Wave275Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave275.value(), 275)
    XCTAssertEqual(UtilityWave275.label(), "wave-275")
  }
}
