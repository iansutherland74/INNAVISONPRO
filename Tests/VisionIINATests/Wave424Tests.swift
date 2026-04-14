import XCTest
@testable import VisionIINA

final class Wave424Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave424.value(), 424)
    XCTAssertEqual(UtilityWave424.label(), "wave-424")
  }
}
