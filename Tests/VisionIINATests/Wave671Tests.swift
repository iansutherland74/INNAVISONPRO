import XCTest
@testable import VisionIINA

final class Wave671Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave671.value(), 671)
    XCTAssertEqual(UtilityWave671.label(), "wave-671")
  }
}
