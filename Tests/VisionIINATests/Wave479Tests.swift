import XCTest
@testable import VisionIINA

final class Wave479Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave479.value(), 479)
    XCTAssertEqual(UtilityWave479.label(), "wave-479")
  }
}
