import XCTest
@testable import VisionIINA

final class Wave587Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave587.value(), 587)
    XCTAssertEqual(UtilityWave587.label(), "wave-587")
  }
}
