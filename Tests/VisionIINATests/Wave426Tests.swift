import XCTest
@testable import VisionIINA

final class Wave426Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave426.value(), 426)
    XCTAssertEqual(UtilityWave426.label(), "wave-426")
  }
}
