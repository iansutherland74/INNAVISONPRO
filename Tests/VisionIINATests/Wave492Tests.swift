import XCTest
@testable import VisionIINA

final class Wave492Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave492.value(), 492)
    XCTAssertEqual(UtilityWave492.label(), "wave-492")
  }
}
