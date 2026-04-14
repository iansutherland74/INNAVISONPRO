import XCTest
@testable import VisionIINA

final class Wave329Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave329.value(), 329)
    XCTAssertEqual(UtilityWave329.label(), "wave-329")
  }
}
